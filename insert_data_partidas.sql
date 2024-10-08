
-- Criar nova partida para StellarQuester com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('StellarQuester', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador StellarQuester na partida 1
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('StellarQuester', @partida_id, '00:18:00', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para AuroraRogue com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('AuroraRogue', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador AuroraRogue na partida 2
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('AuroraRogue', @partida_id, '00:20:49', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para QuantumPulse com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('QuantumPulse', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador QuantumPulse na partida 3
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('QuantumPulse', @partida_id, '00:17:10', 6)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicShade com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicShade', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador CosmicShade na partida 4
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicShade', @partida_id, '00:16:29', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NebulaStorm com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NebulaStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador NebulaStorm na partida 5
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NebulaStorm', @partida_id, '00:10:25', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para TitanGlimmer com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('TitanGlimmer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador TitanGlimmer na partida 6
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('TitanGlimmer', @partida_id, '00:19:29', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantNova com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantNova', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador RadiantNova na partida 7
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantNova', @partida_id, '00:12:30', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para EchoKnight com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('EchoKnight', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador EchoKnight na partida 8
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('EchoKnight', @partida_id, '00:05:19', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para EnigmaVoyager com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('EnigmaVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador EnigmaVoyager na partida 9
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('EnigmaVoyager', @partida_id, '00:15:22', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CelestialVoyager com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CelestialVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador CelestialVoyager na partida 10
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CelestialVoyager', @partida_id, '00:18:13', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para QuantumLunar com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('QuantumLunar', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador QuantumLunar na partida 11
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('QuantumLunar', @partida_id, '00:05:58', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para VortexVoyager com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('VortexVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador VortexVoyager na partida 12
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('VortexVoyager', @partida_id, '00:10:30', 4)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para StellarQuester com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('StellarQuester', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador StellarQuester na partida 13
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('StellarQuester', @partida_id, '00:18:24', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ShadowEclipse com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ShadowEclipse', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador ShadowEclipse na partida 14
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ShadowEclipse', @partida_id, '00:24:32', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NeonPhantom com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NeonPhantom', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador NeonPhantom na partida 15
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NeonPhantom', @partida_id, '00:08:37', 6)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para BlazeSpecter com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('BlazeSpecter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador BlazeSpecter na partida 16
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('BlazeSpecter', @partida_id, '00:08:56', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicPulse com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicPulse', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador CosmicPulse na partida 17
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicPulse', @partida_id, '00:09:25', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicFusion com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicFusion', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador CosmicFusion na partida 18
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicFusion', @partida_id, '00:05:21', 8)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ThunderEcho com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ThunderEcho', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador ThunderEcho na partida 19
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ThunderEcho', @partida_id, '00:12:42', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CelestialGlimmer com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CelestialGlimmer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador CelestialGlimmer na partida 20
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CelestialGlimmer', @partida_id, '00:24:52', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para AuroraRider com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('AuroraRider', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador AuroraRider na partida 21
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('AuroraRider', @partida_id, '00:11:40', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para InfernoSpecter com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('InfernoSpecter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador InfernoSpecter na partida 22
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('InfernoSpecter', @partida_id, '00:17:44', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para PhantomEcho com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('PhantomEcho', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador PhantomEcho na partida 23
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('PhantomEcho', @partida_id, '00:06:43', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicEchoes com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicEchoes', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador CosmicEchoes na partida 24
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicEchoes', @partida_id, '00:22:32', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicEchoes com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicEchoes', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador CosmicEchoes na partida 25
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicEchoes', @partida_id, '00:11:20', 6)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para PhantomVoyager com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('PhantomVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador PhantomVoyager na partida 26
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('PhantomVoyager', @partida_id, '00:23:35', 6)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicFusion com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicFusion', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador CosmicFusion na partida 27
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicFusion', @partida_id, '00:19:47', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CelestialVoyager com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CelestialVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador CelestialVoyager na partida 28
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CelestialVoyager', @partida_id, '00:08:31', 9)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para VortexKnight com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('VortexKnight', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador VortexKnight na partida 29
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('VortexKnight', @partida_id, '00:26:46', 7)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para HyperSpecter com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('HyperSpecter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador HyperSpecter na partida 30
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('HyperSpecter', @partida_id, '00:21:33', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ShadowNova com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ShadowNova', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador ShadowNova na partida 31
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ShadowNova', @partida_id, '00:30:23', 4)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para AstroStorm com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('AstroStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador AstroStorm na partida 32
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('AstroStorm', @partida_id, '00:17:26', 9)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantKnight com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantKnight', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador RadiantKnight na partida 33
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantKnight', @partida_id, '00:24:55', 9)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para AuroraKnight com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('AuroraKnight', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador AuroraKnight na partida 34
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('AuroraKnight', @partida_id, '00:25:49', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantBlaze com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantBlaze', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador RadiantBlaze na partida 35
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantBlaze', @partida_id, '00:28:59', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NeonPhantom com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NeonPhantom', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador NeonPhantom na partida 36
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NeonPhantom', @partida_id, '00:29:42', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NebulaStorm com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NebulaStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador NebulaStorm na partida 37
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NebulaStorm', @partida_id, '00:28:14', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NeonDreamer com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NeonDreamer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador NeonDreamer na partida 38
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NeonDreamer', @partida_id, '00:24:43', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NeonGlimmer com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NeonGlimmer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador NeonGlimmer na partida 39
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NeonGlimmer', @partida_id, '00:06:35', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para VortexRider com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('VortexRider', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador VortexRider na partida 40
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('VortexRider', @partida_id, '00:05:30', 8)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para VortexVoyager com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('VortexVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador VortexVoyager na partida 41
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('VortexVoyager', @partida_id, '00:30:57', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para LunarFusion com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('LunarFusion', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador LunarFusion na partida 42
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('LunarFusion', @partida_id, '00:25:51', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para SolarShifter com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('SolarShifter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador SolarShifter na partida 43
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('SolarShifter', @partida_id, '00:18:53', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para AuroraRogue com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('AuroraRogue', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador AuroraRogue na partida 44
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('AuroraRogue', @partida_id, '00:07:26', 6)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CelestialScribe com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CelestialScribe', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador CelestialScribe na partida 45
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CelestialScribe', @partida_id, '00:21:47', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para PhantomQuasar com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('PhantomQuasar', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador PhantomQuasar na partida 46
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('PhantomQuasar', @partida_id, '00:17:21', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ThunderPulseX com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ThunderPulseX', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador ThunderPulseX na partida 47
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ThunderPulseX', @partida_id, '00:08:51', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para BlazeVoyager com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('BlazeVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador BlazeVoyager na partida 48
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('BlazeVoyager', @partida_id, '00:08:42', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para TitanStorm com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('TitanStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador TitanStorm na partida 49
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('TitanStorm', @partida_id, '00:21:43', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para StellarEcho com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('StellarEcho', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador StellarEcho na partida 50
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('StellarEcho', @partida_id, '00:25:16', 6)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ShadowEclipse com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ShadowEclipse', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador ShadowEclipse na partida 51
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ShadowEclipse', @partida_id, '00:12:44', 4)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para HyperNovaX com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('HyperNovaX', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador HyperNovaX na partida 52
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('HyperNovaX', @partida_id, '00:18:37', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantSpecter com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantSpecter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador RadiantSpecter na partida 53
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantSpecter', @partida_id, '00:12:13', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicEchoes com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicEchoes', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador CosmicEchoes na partida 54
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicEchoes', @partida_id, '00:22:57', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para LunarFusion com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('LunarFusion', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador LunarFusion na partida 55
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('LunarFusion', @partida_id, '00:12:54', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NeonDreamer com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NeonDreamer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador NeonDreamer na partida 56
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NeonDreamer', @partida_id, '00:10:09', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantGlimmer com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantGlimmer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador RadiantGlimmer na partida 57
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantGlimmer', @partida_id, '00:06:41', 9)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ShadowPulse com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ShadowPulse', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador ShadowPulse na partida 58
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ShadowPulse', @partida_id, '00:24:34', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CelestialGlimmer com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CelestialGlimmer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador CelestialGlimmer na partida 59
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CelestialGlimmer', @partida_id, '00:08:18', 4)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para PhantomGlider com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('PhantomGlider', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador PhantomGlider na partida 60
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('PhantomGlider', @partida_id, '00:11:09', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ArcticShade com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ArcticShade', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador ArcticShade na partida 61
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ArcticShade', @partida_id, '00:26:03', 6)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para MysticVortex com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('MysticVortex', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador MysticVortex na partida 62
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('MysticVortex', @partida_id, '00:12:47', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para TitanGlimmer com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('TitanGlimmer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador TitanGlimmer na partida 63
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('TitanGlimmer', @partida_id, '00:14:04', 8)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para TitanEcho com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('TitanEcho', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador TitanEcho na partida 64
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('TitanEcho', @partida_id, '00:20:45', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para HyperStorm com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('HyperStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador HyperStorm na partida 65
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('HyperStorm', @partida_id, '00:17:57', 6)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para AuroraKnight com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('AuroraKnight', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador AuroraKnight na partida 66
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('AuroraKnight', @partida_id, '00:30:10', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para HyperStorm com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('HyperStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador HyperStorm na partida 67
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('HyperStorm', @partida_id, '00:16:31', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para SolarShifter com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('SolarShifter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador SolarShifter na partida 68
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('SolarShifter', @partida_id, '00:10:15', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantKnight com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantKnight', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador RadiantKnight na partida 69
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantKnight', @partida_id, '00:23:30', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para LunarWanderer com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('LunarWanderer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador LunarWanderer na partida 70
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('LunarWanderer', @partida_id, '00:10:52', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantNova com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantNova', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador RadiantNova na partida 71
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantNova', @partida_id, '00:21:41', 4)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NeonEclipse com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NeonEclipse', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador NeonEclipse na partida 72
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NeonEclipse', @partida_id, '00:24:21', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantKnight com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantKnight', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador RadiantKnight na partida 73
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantKnight', @partida_id, '00:10:31', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para NebulaStorm com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('NebulaStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador NebulaStorm na partida 74
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('NebulaStorm', @partida_id, '00:25:49', 9)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para BlazeFusion com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('BlazeFusion', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador BlazeFusion na partida 75
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('BlazeFusion', @partida_id, '00:11:33', 4)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para StarGlider com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('StarGlider', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador StarGlider na partida 76
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('StarGlider', @partida_id, '00:17:03', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ShadowGlimmer com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ShadowGlimmer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador ShadowGlimmer na partida 77
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ShadowGlimmer', @partida_id, '00:22:25', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para VortexWhisper com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('VortexWhisper', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador VortexWhisper na partida 78
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('VortexWhisper', @partida_id, '00:13:42', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para AuroraRider com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('AuroraRider', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador AuroraRider na partida 79
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('AuroraRider', @partida_id, '00:19:38', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para BlazeVoyager com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('BlazeVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador BlazeVoyager na partida 80
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('BlazeVoyager', @partida_id, '00:26:00', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantSpecter com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantSpecter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador RadiantSpecter na partida 81
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantSpecter', @partida_id, '00:19:43', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para LunarWanderer com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('LunarWanderer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador LunarWanderer na partida 82
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('LunarWanderer', @partida_id, '00:13:21', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para HyperStorm com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('HyperStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador HyperStorm na partida 83
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('HyperStorm', @partida_id, '00:16:40', 4)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ShadowEclipse com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ShadowEclipse', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador ShadowEclipse na partida 84
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ShadowEclipse', @partida_id, '00:17:40', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para QuantumLunar com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('QuantumLunar', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador QuantumLunar na partida 85
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('QuantumLunar', @partida_id, '00:13:09', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para QuantumPulseX com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('QuantumPulseX', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador QuantumPulseX na partida 86
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('QuantumPulseX', @partida_id, '00:07:51', 9)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicEchoes com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicEchoes', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador CosmicEchoes na partida 87
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicEchoes', @partida_id, '00:08:31', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para EnigmaVoyager com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('EnigmaVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador EnigmaVoyager na partida 88
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('EnigmaVoyager', @partida_id, '00:22:30', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para QuantumBlaze com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('QuantumBlaze', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador QuantumBlaze na partida 89
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('QuantumBlaze', @partida_id, '00:17:51', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para ShadowPulse com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('ShadowPulse', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador ShadowPulse na partida 90
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('ShadowPulse', @partida_id, '00:08:52', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para LunarFusion com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('LunarFusion', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador LunarFusion na partida 91
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('LunarFusion', @partida_id, '00:17:03', 5)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para PhantomEcho com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('PhantomEcho', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador PhantomEcho na partida 92
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('PhantomEcho', @partida_id, '00:22:35', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para BlazeVoyager com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('BlazeVoyager', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador BlazeVoyager na partida 93
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('BlazeVoyager', @partida_id, '00:27:17', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para GalacticWraith com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('GalacticWraith', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador GalacticWraith na partida 94
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('GalacticWraith', @partida_id, '00:23:10', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para QuantumShifter com dificuldade Dificil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('QuantumShifter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Dificil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 9;


-- Registrar desempenho do jogador QuantumShifter na partida 95
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('QuantumShifter', @partida_id, '00:24:24', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para CosmicRider com dificuldade Medio
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('CosmicRider', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Medio'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 6;


-- Registrar desempenho do jogador CosmicRider na partida 96
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('CosmicRider', @partida_id, '00:13:29', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para RadiantGlimmer com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('RadiantGlimmer', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador RadiantGlimmer na partida 97
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('RadiantGlimmer', @partida_id, '00:30:31', 3)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para MysticNova com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('MysticNova', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador MysticNova na partida 98
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('MysticNova', @partida_id, '00:25:55', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para HyperStorm com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('HyperStorm', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador HyperStorm na partida 99
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('HyperStorm', @partida_id, '00:05:29', 1)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);


-- Criar nova partida para SolarShifter com dificuldade Facil
INSERT INTO Partida (id_jogador_cria, id_dificuldade) 
VALUES ('SolarShifter', (SELECT id_dificuldade FROM Dificuldade WHERE nome = 'Facil'));

-- Obter o ID da partida criada
SET @partida_id = LAST_INSERT_ID();

-- Selecionar cartas aleat¾rias de acordo com o n·mero necessßrio pela dificuldade
INSERT INTO Partida_Carta (id_partida, id_carta)
SELECT @partida_id, id_carta 
FROM Cartas 
ORDER BY RAND() 
LIMIT 3;


-- Registrar desempenho do jogador SolarShifter na partida 100
INSERT INTO Jogador_Partida (id_jogador, id_partida, tempo_jogo, num_cartas_encontradas)
VALUES ('SolarShifter', @partida_id, '00:08:40', 2)
ON DUPLICATE KEY UPDATE 
tempo_jogo = VALUES(tempo_jogo), 
num_cartas_encontradas = VALUES(num_cartas_encontradas);

