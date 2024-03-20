
SELECT CASE
        WHEN (GROUPING(c.NMCUSTOMER) = 1) THEN 'Total'
		ELSE ISNULL(c.NMCUSTOMER, '')
        END AS cliente,
		CASE
        WHEN (GROUPING(p.NMPRODUCT) = 1) THEN 'Total'
		ELSE ISNULL(p.NMPRODUCT, '')
        END AS produto,
	cast((sum(pr.QTAMOUNT * pr.VLUNITARY))as decimal(8,2)) as 'Total'
	FROM CUSTOMER as c left join REQUEST as r ON c.CDCUSTOMER = r.CDCUSTOMER
						inner join PRODUCTREQUEST as pr on r.CDREQUEST = pr.CDREQUEST
						inner join PRODUCT as p on pr.CDPRODUCT = p.CDPRODUCT
						group by c.NMCUSTOMER, p.NMPRODUCT WITH rollup