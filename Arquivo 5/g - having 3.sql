use treinamento

SELECT p.NMPRODUCT, s.NMSUPPLIER, count(pr.CDPRODUCT) as 'quantidade de vezes pedido' 
	FROM SUPPLIER as s inner join PRODUCT as p ON s.CDSUPPLIER = p.CDPRODUCT
					   inner join PRODUCTREQUEST as pr ON p.CDPRODUCT = pr.CDPRODUCT
					   group by p.NMPRODUCT, s.NMSUPPLIER
					   having count(pr.CDPRODUCT) > 3