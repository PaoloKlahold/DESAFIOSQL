USE treinamento

SELECT s.NMSUPPLIER, s.IDFONE, p.NMPRODUCT, CAST((p.VLPRICE) as decimal(6,2)), CAST((p.VLPRICE * p.QTSTOCK) as decimal(10,2)) as 'PreçoEstoque'
FROM SUPPLIER as s INNER JOIN PRODUCT as p ON s.CDSUPPLIER = p.CDSUPPLIER AND p.NMPRODUCT LIKE 'S%' AND p.VLPRICE > 50 ORDER BY s.NMSUPPLIER, p.VLPRICE

--não há produtos em estoque que iniciem com 'S' e custem mais de 50