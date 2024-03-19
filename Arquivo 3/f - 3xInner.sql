use treinamento
SET DATEFORMAT dmy;

SELECT c.NMCUSTOMER, p.NMPRODUCT, r.DTREQUEST, r.DTDELIVER, pr.QTAMOUNT, pr.VLUNITARY, r.VLTOTAL
		FROM CUSTOMER as c INNER JOIN REQUEST as r ON c.CDCUSTOMER = r.CDCUSTOMER AND r.DTREQUEST BETWEEN '01/08/2003' AND '31/08/2003'
						   INNER JOIN PRODUCTREQUEST as pr ON r.CDREQUEST = pr.CDREQUEST
						   INNER JOIN PRODUCT as p ON pr.CDPRODUCT = p.CDPRODUCT
						   AND PR.QTAMOUNT < 600  AND P.NMPRODUCT LIKE 'M%'