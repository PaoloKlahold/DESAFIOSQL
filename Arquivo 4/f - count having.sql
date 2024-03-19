use treinamento

SELECT  s.NMSUPPLIER as 'Nome do Fornecedor',
		count(p.NMPRODUCT) as 'Quantidade de produtos diferentes'
		  FROM SUPPLIER as s INNER JOIN PRODUCT as p ON s.CDSUPPLIER = p.CDSUPPLIER		  
		  GROUP BY s.NMSUPPLIER
		  HAVING count(p.NMPRODUCT) > 1