use treinamento

SELECT p.NMPRODUCT, 
		CASE WHEN (GROUPING(c.NMCUSTOMER) = 1) THEN 'Total'
		ELSE ISNULL(c.NMCUSTOMER, '') END AS 'Cliente',
		count(pr.CDPRODUCT) as 'Quantidade de vezes requisitado', 
		sum(pr.QTAMOUNT) as 'Quantidade de unidades vendidas',
		cast((sum(pr.VLUNITARY)) as decimal(8,2)) as 'Total já pago'
		FROM CUSTOMER as c INNER JOIN REQUEST as r ON c.CDCUSTOMER = r.CDCUSTOMER
						   INNER JOIN PRODUCTREQUEST as pr ON r.CDREQUEST = pr.CDREQUEST
						   INNER JOIN PRODUCT as p ON pr.CDPRODUCT = p.CDPRODUCT
						   group by p.NMPRODUCT, c.NMCUSTOMER  with rollup