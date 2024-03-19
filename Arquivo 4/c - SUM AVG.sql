use treinamento

SELECT s.NMSUPPLIER, sum(p.QTSTOCK) as 'Quantidade estoque', AVG(p.VLPRICE) as 'media de pre�o' 
		FROM SUPPLIER as s INNER JOIN PRODUCT as p ON s.CDSUPPLIER = p.CDSUPPLIER
		GROUP BY s.NMSUPPLIER