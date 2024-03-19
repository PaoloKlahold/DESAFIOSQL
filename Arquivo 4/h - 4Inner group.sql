use treinamento

SELECT  c.NMCUSTOMER as 'NomeCliente', 
		p.NMPRODUCT as 'NomeProduto',
		cast((sum(pr.VLUNITARY) * sum(QTAMOUNT)) as decimal(10,2)) as 'ValorSoma',
		count(pr.CDPRODUCT) as 'ContVezesProduto',
		s.NMSUPPLIER as 'NomeFornecedor'
		FROM CUSTOMER as c INNER JOIN REQUEST as r ON c.CDCUSTOMER = r.CDCUSTOMER
						   INNER JOIN PRODUCTREQUEST as pr ON r.CDREQUEST = pr.CDREQUEST
						   INNER JOIN PRODUCT as p ON pr.CDPRODUCT = p.CDPRODUCT
						   INNER JOIN SUPPLIER as s ON p.CDSUPPLIER = s.CDSUPPLIER
						   GROUP BY c.NMCUSTOMER, p.NMPRODUCT, s.NMSUPPLIER
						   HAVING sum(pr.VLUNITARY) * sum(QTAMOUNT) >= 1000
						   order by c.NMCUSTOMER, p.NMPRODUCT