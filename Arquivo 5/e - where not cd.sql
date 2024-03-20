USE treinamento

SELECT c.IDFONE
	FROM CUSTOMER as c left join REQUEST as r ON c.CDCUSTOMER = r.CDCUSTOMER
	WHERE NOT C.CDCUSTOMER = R.CDCUSTOMER
	group by c.IDFONE
-- todos já fizeram algum pedido

