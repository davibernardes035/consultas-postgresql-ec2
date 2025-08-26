select 	pro.produto, 
	string_agg(vendores.nome, ',') as vendedores, 
	sum(itns.desconto) as totaldesconto 
from relacional.vendas as vnds
inner join relacional.vendedores as vendores on (vnds.idvendedor = vendores.idvendedor)
inner join relacional.itensvenda as itns on (vnds.idvenda = itns.idvenda)
inner join relacional.produtos as pro on (itns.idproduto = pro.idproduto)
group by pro.produto;