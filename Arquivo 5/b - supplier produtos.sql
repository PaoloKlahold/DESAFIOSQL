use treinamento

SELECT s.NMSUPPLIER, count(p.CDPRODUCT) as 'numprodutos'
		FROM SUPPLIER as s left join PRODUCT as p ON s.CDSUPPLIER = p.CDSUPPLIER
		group by s.NMSUPPLIER
