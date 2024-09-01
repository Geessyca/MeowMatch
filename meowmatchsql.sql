CREATE DATABASE MeowMatch;
USE MeowMatch;

-- Tabela Jogador
CREATE TABLE Jogador (
    username VARCHAR(50) PRIMARY KEY,
    senha VARCHAR(100) NOT NULL
);

-- Tabela Dificuldade
CREATE TABLE Dificuldade (
    id_dificuldade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    num_cartas INT NOT NULL
);

-- Tabela Cartas
CREATE TABLE Cartas (
    id_carta INT AUTO_INCREMENT PRIMARY KEY,
    imagem LONGBLOB NOT NULL
);

-- Tabela Partida
CREATE TABLE Partida (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    tempo_total TIME,
    id_jogador_cria VARCHAR(50),
    id_dificuldade INT,
    FOREIGN KEY (id_jogador_cria) REFERENCES Jogador(username),
    FOREIGN KEY (id_dificuldade) REFERENCES Dificuldade(id_dificuldade)
);

-- Tabela Jogador_Partida
CREATE TABLE Jogador_Partida (
    id_jogador VARCHAR(50),
    id_partida INT,
    tempo_jogo TIME,
    num_cartas_encontradas INT,
    PRIMARY KEY (id_jogador, id_partida),
    FOREIGN KEY (id_jogador) REFERENCES Jogador(username),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida)
);

-- Tabela Partida_Carta
CREATE TABLE Partida_Carta (
    id_partida INT,
    id_carta INT,
    PRIMARY KEY (id_partida, id_carta),
    FOREIGN KEY (id_partida) REFERENCES Partida(id_partida),
    FOREIGN KEY (id_carta) REFERENCES Cartas(id_carta)
);
