-- listar todos os atendentes que efetuaram ao menos um aluguel
select distinct 
    f.idfuncionario, 
    f.firstnome, 
    f.lastnome
from funcionario f
inner join aluguel a on f.idfuncionario = a.idfuncionario
where f.tipo = 'atendente';

-- listar todos os atendentes que não efetuaram nenhum aluguel
select 
    f.idfuncionario, 
    f.firstnome, 
    f.lastnome
from funcionario f
where f.tipo = 'atendente'
and f.idfuncionario not in (
    select distinct idfuncionario 
    from aluguel
);

-- listar jogadores com mais de um aluguel, com dados do jogo e atendente
select 
    jg.idjogador,
    jg.firstnome as nome_jogador,
    jg.lastnome as sobrenome_jogador,
    count(distinct a.idaluguel) as total_alugueis,
    j.nomejogo,
    f.firstnome as nome_atendente,
    f.lastnome as sobrenome_atendente
from jogador jg
inner join aluguel a on jg.idjogador = a.idjogador
inner join aluguel_jogo aj on a.idaluguel = aj.idaluguel
inner join jogo j on aj.idjogo = j.idjogo
inner join funcionario f on a.idfuncionario = f.idfuncionario
where jg.idjogador in (
    select idjogador 
    from aluguel 
    group by idjogador 
    having count(idaluguel) > 1
)
group by jg.idjogador, j.idjogo, f.idfuncionario;

-- listar o jogador com o maior número de aluguéis
select 
    jg.idjogador,
    jg.firstnome,
    jg.lastnome,
    count(a.idaluguel) as total_alugueis
from jogador jg
inner join aluguel a on jg.idjogador = a.idjogador
group by jg.idjogador
order by total_alugueis desc
limit 1;

-- listar o jogo que mais foi alugado
select 
    j.idjogo,
    j.nomejogo,
    count(aj.idjogo) as total_alugueis
from jogo j
inner join aluguel_jogo aj on j.idjogo = aj.idjogo
group by j.idjogo
order by total_alugueis desc
limit 1;

-- listar o maior valor total de um aluguel
select 
    a.idaluguel,
    a.dataretirada,
    a.datadevolucao,
    a.qtdjogadoresadulto,
    datediff(a.datadevolucao, a.dataretirada) as dias_aluguel,
    sum(j.valoraluguel) as valor_total_jogos,
    (sum(j.valoraluguel) * datediff(a.datadevolucao, a.dataretirada) * a.qtdjogadoresadulto) as valor_total_aluguel,
    jg.firstnome as nome_jogador,
    jg.lastnome as sobrenome_jogador
from aluguel a
inner join aluguel_jogo aj on a.idaluguel = aj.idaluguel
inner join jogo j on aj.idjogo = j.idjogo
inner join jogador jg on a.idjogador = jg.idjogador
group by a.idaluguel
order by valor_total_aluguel desc
limit 1;

-- listar os dados dos jogos com o maior número de cópias
select 
    idjogo,
    nomejogo,
    categoriajogo,
    qtdcopias,
    valoraluguel
from jogo
where qtdcopias = (select max(qtdcopias) from jogo);