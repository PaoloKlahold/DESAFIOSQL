use treinamento

UPDATE SUPPLIER SET dsstatus = 'inativo' WHERE SUPPLIER.CDSUPPLIER = (SELECT s.CDSUPPLIER
		FROM SUPPLIER as s left join PRODUCT as p ON s.CDSUPPLIER = p.CDSUPPLIER
		group by s.CDSUPPLIER
		having count(p.CDPRODUCT) = 0)