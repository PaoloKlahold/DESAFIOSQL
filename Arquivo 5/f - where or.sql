use treinamento

SELECT s.NMSUPPLIER, s.IDFONE
		FROM SUPPLIER as s inner join PRODUCT as p ON s.CDSUPPLIER = p.CDPRODUCT
		WHERE p.NMPRODUCT = 'leite em po' OR p.NMPRODUCT = 'agua mineral'

select * from PRODUCT
-- não existem os produtos 'leite em po' ou 'agua mineral'
	