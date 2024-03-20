use treinamento
SET DATEFORMAT dmy;

SELECT c.NMCUSTOMER, COUNT(r.CDREQUEST) as 'Quantidade de solicita��es', cast((SUM(r.VLTOTAL)) as numeric(7,2)) as 'Valor j� gasto'
		FROM CUSTOMER as c INNER JOIN REQUEST as r ON c.CDCUSTOMER = r.CDCUSTOMER
		where r.DTREQUEST BETWEEN '01/01/2003' AND '31/12/2003' AND r.DTDELIVER BETWEEN '01/01/2003' AND '31/12/2003'
		group by c.NMCUSTOMER