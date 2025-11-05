use alugadora;

-- jogos --
insert into jogo(idjogo, nomejogo, categoriajogo, qtdcopias, valoraluguel) values(
	1,
    "GTA 5",    
    "Casual",
    50,
    25
);

insert into jogo(idjogo, nomejogo, categoriajogo, qtdcopias, valoraluguel) values(
	2,
    "EAFC 25",   
    "Casual",
    50,
    25
);

insert into jogo(idjogo, nomejogo, categoriajogo, qtdcopias, valoraluguel) values(
	3,
    "Street Fighter 6",    
    "Premium",
    25,
    50
);

insert into jogo(idjogo, nomejogo, categoriajogo, qtdcopias, valoraluguel) values(
	4,
	"Battlefield 6",    
	"Premium",
	25,
    50
);

insert into jogo(idjogo, nomejogo, categoriajogo, qtdcopias, valoraluguel) values(
	5,
    "Zelda ALTTP",    
    "Colecionador",
    5,
    100
);

insert into jogo(idjogo, nomejogo, categoriajogo, qtdcopias, valoraluguel) values(
	6,
    "Super Mario World",    
    "Colecionador",
    5,
    100
);

-- gerente --
insert into funcionario(idfuncionario, firstnome, lastnome, celular, email, tipo) values(
	11,
    "Gabriel",
    "Mohmad",
    "43998347803",
    "gabrielmohamad@alunos.utfpr.edu.br",
    "Gerente"
);

-- atendentes --
insert into funcionario(idfuncionario, firstnome, lastnome, celular, email, tipo, idgerente) values(
	12,
    "Fulano",
    "da Silva",
    "1337420",
    "yahoo?",
    "Atendente",
    11
);

insert into funcionario(idfuncionario, firstnome, lastnome, celular, email, tipo, idgerente) values(
	13,
    "Ciclano",
    "Costa",
    "244360",
    "hotmail?",
    "Atendente",
    11
);

insert into funcionario(idfuncionario, firstnome, lastnome, celular, email, tipo, idgerente) values(
	14,
    "Beutrano",
    "Cansado",
    "777666",
    "outlook?",
    "Atendente",
    11
);

insert into funcionario(idfuncionario, firstnome, lastnome, celular, email, tipo, idgerente) values(
	15,
    "Demiurgo",
    "do Pleroma",
    "9999999",
    "névoa?",
    "Atendente",
    11
);

-- jogadores --
insert into jogador(idjogador, firstnome, lastnome, celular, email) values(
	111,
    "groj",
    "glerg",
    "123213",
    "emailgroj"
);

insert into jogador(idjogador, firstnome, lastnome, celular, email) values(
	112,
    "glerson",
    "gliro",
    "11231233",
    "emailglerson"
);

insert into jogador(idjogador, firstnome, lastnome, celular, email) values(
	113,
    "grombus",
    "grimm",
    "666666",
    "emailgrimm"
);

insert into jogador(idjogador, firstnome, lastnome, celular, email) values(
	114,
    "grenade",
    "groom",
    "123456789",
    "emailgroom"
);

insert into jogador(idjogador, firstnome, lastnome, celular, email) values(
	115,
    "loucura",
    "mental",
    "11111111111111",
    "emailhospicio"
);

insert into jogador(idjogador, firstnome, lastnome, celular, email) values(
	116,
    "sexto",
    "seis",
    "6",
    "emailseis"
);

-- aluguel --
insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1111,
    '2025-06-17',
    '2025-06-18',
    3,
    0,
    111,
    12
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1112,
    '2025-05-17',
    '2025-05-18',
    3,
    0,
    111,
    13
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1113,
    '2024-07-04',
    '2024-07-05',
    3,
    0,
    112,
    12
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1114,
    '2024-12-01',
    '2024-12-02',
    3,
    0,
    112,
    14
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1115,
    '2024-02-11',
    '2024-02-12',
    3,
    0,
    113,
    12
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1116,
    '2025-01-15',
    '2025-01-16',
    3,
    0,
    113,
    12
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1117,
    '2025-03-10',
    '2025-03-11',
    2,
    1,
    114,
    13
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1118,
    '2025-04-22',
    '2025-04-23',
    1,
    2,
    115,
    14
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1119,
    '2025-02-14',
    '2025-02-15',
    4,
    0,
    116,
    13
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1120,
    '2025-07-01',
    '2025-07-02',
    2,
    0,
    111,
    12
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1121,
    '2025-08-15',
    '2025-08-16',
    3,
    1,
    112,
    13
);

insert into aluguel(idaluguel, dataretirada, datadevolucao, qtdjogadoresadulto, qtdjogadoresmenor, idjogador, idfuncionario) values(
	1122,
    '2025-09-20',
    '2025-09-21',
    2,
    0,
    113,
    14
);

-- aluguel_jogo --
insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (1, 1111, 1);
insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (2, 1111, 2);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (3, 1112, 3);
insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (4, 1112, 4);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (5, 1113, 1);
insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (6, 1113, 2);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (7, 1114, 3);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (8, 1115, 1);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (9, 1116, 4);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (10, 1117, 2);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (11, 1118, 3);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (12, 1119, 1);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (13, 1119, 2);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (14, 1120, 4);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (15, 1121, 1);

insert into aluguel_jogo(aluguel_jogoid, idaluguel, idjogo) values (16, 1122, 3);