from functools import wraps
import json
import bcrypt
from flask import Flask, jsonify, request
import mysql.connector
from flask_cors import CORS
import base64
from mysql.connector import Error

app = Flask(__name__)
CORS(app, resources={r"/*": {"origins": "http://localhost:3000"}})


def get_db_connection():
    connection = mysql.connector.connect(
        
        host="localhost",
        user="root",       
        password="asdasd",  
        database="MeowMatch",  
        port=3350             
    )
    return connection


@app.route('/cria_usuario', methods=['POST'])
def create_user():
    data = request.get_json()

    if not data or 'username' not in data or 'password' not in data:
        return jsonify({"error": "Username e password are required"}), 400

    username = data['username']
    password = data['password']

    hashed_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt())

    try:
        connection = get_db_connection()
        cursor = connection.cursor()

        cursor.execute(
            "SELECT username FROM Jogador WHERE username = %s", (username,))
        user_exists = cursor.fetchone()

        if user_exists:
            return jsonify({"error": "Username already exists"}), 409

        cursor.execute(
            "INSERT INTO Jogador (username, senha) VALUES (%s, %s)", (username, hashed_password))
        connection.commit()

        cursor.close()
        connection.close()

        return jsonify({"message": "User created successfully"}), 201

    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500


@app.route('/login', methods=['POST'])
def login():
    data = request.get_json()

    if not data or 'username' not in data or 'password' not in data:
        return jsonify({"error": "Username e password são obrigatórios"}), 400

    username = data['username']
    password = data['password']

    try:
        connection = get_db_connection()
        cursor = connection.cursor()

        cursor.execute(
            "SELECT senha FROM Jogador WHERE username = %s", (username,))
        user = cursor.fetchone()

        cursor.close()
        connection.close()

        if user and bcrypt.checkpw(password.encode('utf-8'), user[0].encode('utf-8')):
            return jsonify({"username": username, "senha": user[0]}), 200
        else:
            return jsonify({"error": "Credenciais inválidas"}), 401

    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500


def check_auth(username, encrypted_password):
    try:
        connection = get_db_connection()
        cursor = connection.cursor()

        
        cursor.execute(
            "SELECT senha FROM Jogador WHERE username = %s", (username,))
        result = cursor.fetchone()

        cursor.close()
        connection.close()
        
        if result and encrypted_password == result[0]:
            return True
        else:
            return False

    except mysql.connector.Error as err:
        return False


def authenticate():
    """Envia uma resposta 401 pedindo as credenciais"""
    return jsonify({"error": "Authentication required"}), 401


def requires_auth(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        auth = request.authorization
        if not auth or not check_auth(auth.username, auth.password):
            return authenticate()
        return f(auth.username, *args, **kwargs)
    return decorated


@app.route('/cria_partida', methods=['POST'])
@requires_auth
def create_partida(username):
    data = request.get_json()

    if not data or 'dificuldade' not in data:
        return jsonify({"error": "Dificuldade is required"}), 400

    dificuldade_nome = data['dificuldade']

    try:
        connection = get_db_connection()
        cursor = connection.cursor()

        
        cursor.execute(
            "SELECT id_dificuldade, num_cartas FROM Dificuldade WHERE nome = %s", (dificuldade_nome,))
        dificuldade = cursor.fetchone()

        if not dificuldade:
            return jsonify({"error": "Dificuldade not found"}), 404

        id_dificuldade, num_cartas_dificuldade = dificuldade

        
        cursor.execute(
            "INSERT INTO Partida (id_jogador_cria, id_dificuldade) VALUES (%s, %s)", (username, id_dificuldade))
        connection.commit()

        partida_id = cursor.lastrowid

        
        cursor.execute(
            "SELECT id_carta FROM Cartas ORDER BY RAND() LIMIT %s",
            (num_cartas_dificuldade,)
        )
        cartas_selecionadas = cursor.fetchall()

        if not cartas_selecionadas:
            return jsonify({"error": "No cards selected"}), 500

        
        for carta_id in cartas_selecionadas:
            cursor.execute(
                "INSERT INTO Partida_Carta (id_partida, id_carta) VALUES (%s, %s)", (partida_id, carta_id[0]))

        connection.commit()

        cursor.close()
        connection.close()

        return jsonify({"message": "Partida created successfully", "partida_id": partida_id}), 201

    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500


@app.route('/cartas_imagens/<int:id_partida>', methods=['GET'])
def get_cartas_imagens(id_partida):
    try:
        connection = get_db_connection()
        cursor = connection.cursor()

        
        cursor.execute("""
            SELECT Cartas.id_carta, Cartas.imagem
            FROM Partida_Carta
            JOIN Cartas ON Partida_Carta.id_carta = Cartas.id_carta
            WHERE Partida_Carta.id_partida = %s
        """, (id_partida,))
        cartas = cursor.fetchall()

        if not cartas:
            return jsonify({"error": "No cards found for this partida"}), 404

        
        imagens = []
        for carta_id, imagem_blob in cartas:
            base64Image = base64.b64encode(imagem_blob).decode('utf-8')
            dataUri = f"data:image/jpeg;base64,{base64Image}"

            imagens.append({
                "id_carta": carta_id,
                "imagem": dataUri  
            })

        cursor.close()
        connection.close()

        return jsonify({"cartas": imagens}), 200

    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500


@app.route('/remove_partida/<int:id_partida>', methods=['DELETE'])
@requires_auth
def remove_partida(username, id_partida):
    try:
        connection = get_db_connection()
        cursor = connection.cursor()

        
        cursor.execute("""
            SELECT id_jogador_cria
            FROM Partida
            WHERE id_partida = %s
        """, (id_partida,))
        partida = cursor.fetchone()

        if not partida:
            return jsonify({"error": "Partida not found"}), 404

        id_jogador_cria = partida[0]

        
        if id_jogador_cria != username:
            return jsonify({"error": "Unauthorized action"}), 403

        
        cursor.execute("""
            DELETE FROM Jogador_Partida
            WHERE id_partida = %s
        """, (id_partida,))
        
        cursor.execute("""
            DELETE FROM Partida_Carta
            WHERE id_partida = %s
        """, (id_partida,))

        
        cursor.execute("""
            DELETE FROM Partida
            WHERE id_partida = %s
        """, (id_partida,))
        connection.commit()

        cursor.close()
        connection.close()

        return jsonify({"message": "Partida removida com sucesso"}), 200

    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500

@app.route('/estatisticas', methods=['GET'])
@requires_auth
def estatisticas(username):
    try:
        connection = get_db_connection()
        cursor = connection.cursor()

        estatisticas = {}

        
        cursor.execute("""
            SELECT 
                SEC_TO_TIME(AVG(TIME_TO_SEC(Jogador_Partida.tempo_jogo))) AS media_tempo_jogo,
                COUNT(DISTINCT Jogador_Partida.id_partida) AS jogos_jogados,
                (SELECT COUNT(*) FROM Partida WHERE id_jogador_cria = %s) AS jogos_criados
            FROM Partida
            JOIN Jogador_Partida ON Partida.id_partida = Jogador_Partida.id_partida
            JOIN Jogador ON id_jogador = Jogador_Partida.id_jogador
            WHERE id_jogador = %s
            GROUP BY id_jogador
        """, (username, username))
        resultado = cursor.fetchone()

        if resultado:
            media_tempo_jogo, jogos_jogados, jogos_criados = resultado
            estatisticas = {
                "media_tempo_jogo": str(media_tempo_jogo),
                "jogos_jogados": jogos_jogados,
                "jogos_criados": jogos_criados
            }

        
        cursor.execute("""
            SELECT 
                Dificuldade.id_dificuldade,
                COUNT(DISTINCT Jogador_Partida.id_partida) AS jogos_jogados_dificuldade
            FROM Partida
            JOIN Jogador_Partida ON Partida.id_partida = Jogador_Partida.id_partida
            JOIN Dificuldade ON Partida.id_dificuldade = Dificuldade.id_dificuldade
            WHERE Jogador_Partida.id_jogador = %s
            GROUP BY Dificuldade.id_dificuldade
        """, (username,))
        jogos_jogados_por_dificuldade = cursor.fetchall()

        estatisticas['jogos_jogados_por_dificuldade'] = {
            dificuldade: jogos for dificuldade, jogos in jogos_jogados_por_dificuldade
        }

        
        cursor.execute("""
            SELECT 
                Dificuldade.id_dificuldade,
                COUNT(*) AS jogos_criados_dificuldade
            FROM Partida
            JOIN Dificuldade ON Partida.id_dificuldade = Dificuldade.id_dificuldade
            WHERE Partida.id_jogador_cria = %s
            GROUP BY Dificuldade.id_dificuldade
        """, (username,))
        jogos_criados_por_dificuldade = cursor.fetchall()

        estatisticas['jogos_criados_por_dificuldade'] = {
            dificuldade: jogos for dificuldade, jogos in jogos_criados_por_dificuldade
        }

        cursor.close()
        connection.close()

        return jsonify(estatisticas), 200

    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500


@app.route('/relatorio_partidas_usuario', methods=['GET'])
@requires_auth
def relatorio_partidas_usuario(username):
    try:
        connection = get_db_connection()
        cursor = connection.cursor()

        
        cursor.execute("""
            (
                SELECT P.id_partida, P.id_dificuldade, P.id_jogador_cria
                FROM Partida P
                JOIN Jogador_Partida JP ON P.id_partida = JP.id_partida
                WHERE JP.id_jogador = %s and not P.id_jogador_cria = %s
                ORDER BY P.id_partida DESC
                LIMIT 5
            )

            UNION ALL

            (
                SELECT P.id_partida, P.id_dificuldade, P.id_jogador_cria
                FROM Partida P
                WHERE P.id_jogador_cria = %s
                ORDER BY P.id_partida DESC
                LIMIT 5
            )
            ORDER BY id_partida DESC
            LIMIT 10;
        """, (username, username,username))
        partidas = cursor.fetchall()

        relatorio = []
        for partida in partidas:
            id_partida, id_dificuldade, criador = partida

            
            cursor.execute("""
                SELECT SEC_TO_TIME(SUM(TIME_TO_SEC(JP.tempo_jogo))) AS tempo_total
                FROM Jogador_Partida JP
                WHERE JP.id_partida = %s
            """, (id_partida,))
            tempo_total = cursor.fetchone()[0]

            
            cursor.execute("""
                SELECT JP.id_jogador, JP.tempo_jogo, JP.num_cartas_encontradas
                FROM Jogador_Partida JP
                WHERE JP.id_partida = %s
            """, (id_partida,))
            jogadores = cursor.fetchall()

            jogadores_info = [
                {
                    "username": jogador[0],
                    "tempo_jogo": str(jogador[1]),
                    "num_cartas_encontradas": jogador[2]
                }
                for jogador in jogadores
            ]

            relatorio.append({
                "id_partida": id_partida,
                "id_dificuldade": id_dificuldade,
                "criador": criador,
                "tempo_total": str(tempo_total) if tempo_total else "N/A",
                "jogadores": jogadores_info
            })

        cursor.close()
        connection.close()

        return jsonify({"partidas": relatorio}), 200

    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500


@app.route('/registro_partida/<int:id_partida>', methods=['POST'])
@requires_auth
def registrar_partida(username, id_partida):
    data = request.get_json()

    if not data or 'tempo_jogo' not in data or 'num_cartas_encontradas' not in data:
        return jsonify({"error": "tempo_jogo e num_cartas_encontradas são necessários"}), 400

    tempo_jogo = data['tempo_jogo']
    num_cartas_encontradas = data['num_cartas_encontradas']

    try:
        connection = get_db_connection()
        cursor = connection.cursor()
        
        cursor.execute("""
                INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
                VALUES (%s, %s, %s, %s)
                ON DUPLICATE KEY UPDATE tempo_jogo = VALUES(tempo_jogo), num_cartas_encontradas = VALUES(num_cartas_encontradas)
            """, (username, id_partida, tempo_jogo, num_cartas_encontradas))
        connection.commit()

        cursor.close()
        connection.close()

        return jsonify({"message": "Desempenho registrado com sucesso"}), 200

    except mysql.connector.Error as err:
        return jsonify({"error": str(err)}), 500

@app.route('/executar_sql', methods=['POST'])
@requires_auth
def executar_sql(username):
    try:
        data = request.get_json()

        if not data or 'sql' not in data:
            return jsonify({"error": "sql são necessários"}), 400

        sql = data['sql']
        
        try:
            connection = get_db_connection()
            cursor = connection.cursor(dictionary=True)
            
            cursor.execute(sql)
            
            if cursor.description:  
                results = cursor.fetchall()
                return jsonify(results), 200
            else:
                connection.commit()
                return jsonify({"message": "Comando SQL executado com sucesso"}), 200

        except Error as err:
            return jsonify({"error": str(err)}), 500

        finally:
            cursor.close()
            connection.close()

    except Exception as e:
        return jsonify({"error": f"Erro no processamento do JSON: {str(e)}"}), 400



if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
