
INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('Aventura', 'Nintendo Switch', 9.8, 'zelda.jpg', 'Explore Hyrule em mundo aberto.', 'Um jogo de ação e aventura em mundo aberto que redefine a franquia Zelda com liberdade total e jogabilidade inovadora.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('Ação', 'PlayStation 5', 9.6, 'gow_ragnarok.jpg', 'Kratos enfrenta o fim dos tempos.', 'Sequência épica que mistura mitologia nórdica e emoção, acompanhando Kratos e Atreus em uma jornada intensa.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('Ação/Aventura', 'PC', 9.7, 'rdr2.jpg', 'O Velho Oeste em sua melhor forma.', 'Uma obra-prima da Rockstar ambientada no fim do Velho Oeste, com narrativa profunda e mundo vivo.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('RPG', 'PC', 9.5, 'elden_ring.jpg', 'Um mundo sombrio e grandioso.', 'RPG de ação desenvolvido pela FromSoftware e George R. R. Martin, com vasto mapa e liberdade de exploração.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('Sandbox', 'Multiplataforma', 9.0, 'minecraft.jpg', 'Crie e explore mundos infinitos.', 'Jogo de construção em blocos que permite criar, explorar e sobreviver em um universo ilimitado.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('Metroidvania', 'PC', 9.3, 'hollow_knight.jpg', 'Explore o misterioso Hallownest.', 'Um jogo indie aclamado pela sua arte e jogabilidade desafiadora, em um mundo subterrâneo cheio de segredos.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('RPG', 'PC', 8.2, 'cyberpunk2077.jpg', 'O futuro é sombrio e neon.', 'RPG de mundo aberto ambientado em Night City, com narrativa rica e ambientação futurista impressionante.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('Plataforma', 'Nintendo Switch', 9.7, 'mario_odyssey.jpg', 'Mario em uma nova aventura global.', 'Um dos títulos mais criativos da franquia, com mundos variados e mecânicas inovadoras com o chapéu Cappy.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('RPG', 'PC', 9.9, 'witcher3.jpg', 'A jornada de Geralt de Rivia.', 'Um RPG de fantasia com enredo profundo, escolhas morais e vasto mundo aberto repleto de missões.');

INSERT INTO tb_game (genero, plataforma, pontuacao, foto, DESCRICAO_CURTA, DESCRICAO_LONGA) VALUES ('Terror', 'PlayStation 5', 9.4, 're4_remake.jpg', 'O terror clássico renasce.', 'Remake do clássico de 2005 com gráficos modernos, gameplay aprimorado e atmosfera intensa.');


INSERT INTO tb_game_list (nome) VALUES('Ação');
INSERT INTO tb_game_list (nome) VALUES('RPG');


INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (1, 1, 0);
INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (1, 2, 1);
INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (1, 3, 2);
INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (1, 4, 3);
INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (1, 5, 4);

INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (2, 6, 0)
INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (2, 7, 1)
INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (2, 8, 2)
INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (2, 9, 3)
INSERT INTO tb_pertencimento (game_list_id, game_id, posicao) VALUES (2, 10, 4)