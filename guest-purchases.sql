select clients.cliente, produtos.produto, itens.quantidade, itens.valortotal, vendas.data
from relacional.clientes as clients
inner join relacional.vendas as vendas on (clients.idcliente = vendas.idcliente)
inner join relacional.itensvenda as itens on (vendas.idvenda = itens.idvenda)
inner join relacional.produtos as produtos on (itens.idproduto = produtos.idproduto)
where clients.idcliente = 56;