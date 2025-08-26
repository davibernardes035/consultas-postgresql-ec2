select pros.produto, count(*) as totalvendas 
from relacional.itensvenda as itns
inner join relacional.produtos as pros on (itns.idproduto = pros.idproduto)
inner join relacional.vendas as vens on (itns.idvenda = vens.idvenda)
where extract(year from vens.data) = 2016
  and extract(month from vens.data) = 12
group by pros.produto;