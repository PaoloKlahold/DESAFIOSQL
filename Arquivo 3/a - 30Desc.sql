use treinamento

SELECT p.NMPRODUCT, 
		s.NMSUPPLIER, 
		CAST((p.VLPRICE) as decimal(5,2)) as preço, 
		CAST((p.VLPRICE * 0.9) as decimal(5,2)) as '10% desconto', 
		CAST((p.VLPRICE * 0.8) as decimal(5,2)) as '20% desconto',
		IIF((P.VLPRICE * 0.9) > 15, CAST((P.VLPRICE * 0.7) as decimal (5,2)), null) as '30% desconto'
FROM PRODUCT as p INNER JOIN SUPPLIER as s ON p.CDSUPPLIER = s.CDSUPPLIER order by p.VLPRICE DESC

-- ou

SELECT p.NMPRODUCT, 
		s.NMSUPPLIER, 
		CAST((p.VLPRICE) as decimal(5,2)) as preço, 
		CAST((p.VLPRICE * 0.9) as decimal(5,2)) as '10% desconto', 
		CAST((p.VLPRICE * 0.8) as decimal(5,2)) as '20% desconto',
		CASE WHEN (p.VLPRICE * 0.9) > 15 THEN  CAST((p.VLPRICE * 0.7) as decimal (5,2)) ELSE NULL END as '30% desconto'
FROM PRODUCT as p INNER JOIN SUPPLIER as s ON p.CDSUPPLIER = s.CDSUPPLIER order by p.VLPRICE DESC, p.NMPRODUCT
