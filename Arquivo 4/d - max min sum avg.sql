use treinamento
 
SELECT c.NMCUSTOMER, c.IDFONE, cast((MAX(r.VLTOTAL)) as decimal(10,2)) as 'Valor Maior compra', 
							   cast((MIN(r.VLTOTAL)) as decimal(10,2)) as 'Valor menor compra', 
							   cast((SUM(r.VLTOTAL)) as decimal(10,2)) as 'Soma compras', 
							   cast((AVG(r.VLTOTAL)) as decimal(10,2)) as 'Media compras'
		FROM CUSTOMER as c INNER JOIN REQUEST as r ON c.CDCUSTOMER = r.CDCUSTOMER
		GROUP BY c.NMCUSTOMER, c.IDFONE