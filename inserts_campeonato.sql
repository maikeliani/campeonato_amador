go
use campeonato


   -- OBS: EXECUTAR AS TRIGGERS E PROCEDURES ANTES DE INSERIR OS DADOS DOS TIMES E PARTIDAS!
go

insert into campeonato ( nome) values ('PAULISTÃO 2023');

GO

INSERT INTO [time](nome, apelido, data_criacao, gols_pro, gols_contra,pontuacao) values ('Palmeiras', 'verdão', '1914-08-26',0,0,0);
INSERT INTO [time](nome, apelido, data_criacao, gols_pro, gols_contra,pontuacao) values ('Corinthians', 'timão', '1910-09-01',0,0,0);
INSERT INTO [time](nome, apelido, data_criacao, gols_pro, gols_contra,pontuacao) values ('Sao Paulo', 'tricolor paulista', '1930-01-27',0,0,0);
INSERT INTO [time](nome, apelido, data_criacao, gols_pro, gols_contra,pontuacao) values ('Ferroviaria', 'locomotiva', '1950-04-12',0,0,0);
INSERT INTO [time](nome, apelido, data_criacao, gols_pro, gols_contra,pontuacao) values ('Santos', 'peixe', '1912-04-14',0,0,0);

GO



INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Palmeiras', 'Corinthians', 'PAULISTÃO 2023','2023-01-05 19:30:00 ',1,1 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Santos', 'Ferroviaria', 'PAULISTÃO 2023','2023-01-05 19:30:00',0,1);
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Sao Paulo', 'Palmeiras', 'PAULISTÃO 2023 ','2023-01-12 10:30:00',2,1 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Corinthians', 'Santos', 'PAULISTÃO 2023','2023-01-08 10:30:00',1,3);
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Palmeiras', 'Ferroviaria', 'PAULISTÃO 2023','2023-01-08 10:30:00',1,2 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Palmeiras', 'Santos', 'PAULISTÃO 2023','2023-01-08 10:30:00', 2, 2 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Palmeiras', 'Sao Paulo', 'PAULISTÃO 2023','2023-01-08 10:30:00', 1, 2 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Corinthians', 'Palmeiras', 'PAULISTÃO 2023','2023-01-05 19:30:00',3,3 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Corinthians', 'Sao Paulo', 'PAULISTÃO 2023','2023-01-12 19:30:00',0,1  );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Corinthians', 'Ferroviaria','PAULISTÃO 2023','2023-01-12 19:30:00',0,2 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Santos', 'Corinthians', 'PAULISTÃO 2023','2023-01-12 19:30:00',0,1 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Santos', 'Palmeiras', 'PAULISTÃO 2023','2023-01-12 19:30:00',2,1 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Santos', 'Sao Paulo', 'PAULISTÃO 2023','2023-02-05 16:30:00',3,1 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Sao Paulo', 'Corinthians', 'PAULISTÃO 2023','2023-01-12 19:30:00',4,3 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Sao Paulo', 'Ferroviaria', 'PAULISTÃO 2023','2023-02-08 10:30:00',1,2 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Sao Paulo', 'Santos','PAULISTÃO 2023','2023-02-08 10:30:00', 2, 2);
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Ferroviaria', 'Palmeiras', 'PAULISTÃO 2023','2023-02-08 10:30:00', 2, 1);
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Ferroviaria', 'Corinthians', 'PAULISTÃO 2023','2023-02-12 19:30:00',0,1);
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Ferroviaria', 'Santos', 'PAULISTÃO 2023','2023-02-12 19:30:00',1,2 );
INSERT into jogo (mandante, visitante, nome_campeonato, data_partida, qtd_gol_mandante, qtd_gol_visitante) values ('Ferroviaria', 'Sao Paulo', 'PAULISTÃO 2023','2023-02-12 19:30:00',3,2 );

GO

