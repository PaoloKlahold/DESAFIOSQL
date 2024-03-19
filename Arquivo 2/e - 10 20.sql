use treinamento

SELECT p.NMPRODUCT,  CAST((p.VLPRICE) AS decimal(5, 2)) FROM PRODUCT as p WHERE p.VLPRICE >= 10 AND p.VLPRICE <= 20