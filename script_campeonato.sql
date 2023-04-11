CREATE database campeonato
GO

use campeonato


go


create TABLE campeonato(
nome VARCHAR(20) not null,
constraint PK_campeonato PRIMARY KEY (nome)

)

GO

create table [time](
nome varchar(20) not null,
apelido varchar(20) not null,
data_criacao DATE not null,
gols_pro int DEFAULT 0,
gols_contra INT DEFAULT 0,
pontuacao int not null,
CONSTRAINT PK_time PRIMARY KEY (nome),
CONSTRAINT UN_time UNIQUE (apelido)
)

GO

create table jogo(
id_partida int IDENTITY(1,1),
mandante varchar(20) not null,
visitante varchar(20) not null,
nome_campeonato varchar(20) not null,
data_partida DATETIME not null,
qtd_gol_mandante int not null,
qtd_gol_visitante int not null,
CONSTRAINT PK_jogo PRIMARY KEY (id_partida),
CONSTRAINT FK_jogo_mandante FOREIGN KEY (mandante) REFERENCES [time](nome),
CONSTRAINT FK_jogo_visitante FOREIGN KEY (visitante) REFERENCES [time](nome),
CONSTRAINT FK_jogo_nome_campeonato FOREIGN KEY (nome_campeonato) REFERENCES campeonato(nome),
CONSTRAINT UN_Jogo UNIQUE (mandante, visitante)


)


GO

