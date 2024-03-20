use treinamento

SELECT CASE
        WHEN (GROUPING(s.NMSUPPLIER) = 1) THEN 'Total'
		ELSE ISNULL(s.NMSUPPLIER, '')
        END AS fornecedor,
		CASE
        WHEN (GROUPING(p.NMPRODUCT) = 1) THEN 'Total'
		ELSE ISNULL(p.NMPRODUCT, '')
        END AS prduto,
	sum(pr.QTAMOUNT) as 'Total'
	FROM SUPPLIER as s left join PRODUCT as p ON s.CDSUPPLIER = p.CDSUPPLIER
						inner join PRODUCTREQUEST as pr on p.CDPRODUCT = pr.CDPRODUCT
						group by s.NMSUPPLIER, p.NMPRODUCT WITH rollup