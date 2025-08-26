select vendedores.nome, count(*) as totalvendas from relacional.vendas
inner join relacional.vendedores as vendedores on (relacional.vendas.idvendedor = vendedores.idvendedor)
group by vendedores.nome
order by totalvendas desc -- 5 melhores (5 piores se trocar para asc ou deixar por padrao)
limit 5;