use treinamento

SELECT p.NMPRODUCT, s.NMSUPPLIER,  CAST((p.VLPRICE) as decimal(10,2)) as 'Preço', CAST((p.QTSTOCK * p.VLPRICE) as decimal(10,2)) as 'PreçoEstoque', 
		CASE WHEN (p.QTSTOCK * p.VLPRICE) > 12000 THEN CAST( ((P.QTSTOCK * 2) * P.VLPRICE) as decimal(10,2)) ELSE NULL END as 'PreçoParaDobroDoEstoque'
FROM SUPPLIER as s INNER JOIN PRODUCT as p ON p.CDSUPPLIER = p.CDSUPPLIER ORDER BY s.NMSUPPLIER, p.NMPRODUCT