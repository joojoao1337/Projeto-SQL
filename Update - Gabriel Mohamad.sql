use alugadora;

-- GTA 5 de casual para premium --
update jogo 
set categoriajogo = 'Premium' 
where idjogo = 1;

-- troca de gerente --
insert into funcionario(idfuncionario, firstnome, lastnome, celular, email, tipo) 
values (16, 'Bigode', 'Grosso', '333', 'terrordasvitaminadeabacate@gmail.com', 'Gerente');

-- atualiza o gerente nas tabelas de funcionários --
update funcionario 
set idgerente = 16 
where tipo = 'Atendente' and idgerente = 11;

-- remoção do aluguel_jogo --
delete from aluguel_jogo 
where idaluguel = 1122;

-- remoção do aluguel --
delete from aluguel 
where idaluguel = 1122;

-- extensão do prazo do aluguel --
update aluguel 
set datadevolucao = '2025-07-04' 
where idaluguel = 1120;