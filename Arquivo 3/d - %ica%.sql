use treinamento
SELECT p.NMPRODUCT, CAST((p.VLPRICE) as decimal(6,2)) as 'price', s.NMSUPPLIER FROM PRODUCT as p INNER JOIN SUPPLIER as s 
											ON s.CDSUPPLIER = p.CDSUPPLIER AND s.NMSUPPLIER LIKE '%ica%' 
											ORDER BY s.NMSUPPLIER, p.VLPRICE