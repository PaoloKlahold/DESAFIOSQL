use treinamento

SELECT p.NMPRODUCT, sum(pr.QTAMOUNT) as 'quantidade vendido'
	FROM PRODUCT as p left JOIN PRODUCTREQUEST as pr ON p.CDPRODUCT = pr.CDPRODUCT
	group by p.NMPRODUCT
--todos venderam algo

