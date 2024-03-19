
SELECT p.NMPRODUCT,CAST((p.VLPRICE) AS decimal(5, 2)) as Valor, (SELECT sum(p.VLPRICE) FROM PRODUCT as p) as SomaTotal FROM PRODUCT as p WHERE p.VLPRICE > 50

--não há produtor mais caros que 50