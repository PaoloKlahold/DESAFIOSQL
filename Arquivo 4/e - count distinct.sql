use treinamento
-- todos pediram 27 produtos distintos, mas alguns pediram mais do(s) mesmo(s) produto(s) que outros  
SELECT c.NMCUSTOMER, count(distinct pr.CDPRODUCT) as 'produtosDistintos', 
					cast((sum(pr.VLUNITARY * pr.QTAMOUNT)) as  decimal(10,2)) as 'SomaDosValores',
					cast((VAR(VLUNITARY * pr.QTAMOUNT)) as  decimal(10,2)) as 'MediaDosValores'
	FROM CUSTOMER as c INNER JOIN REQUEST as r ON c.CDCUSTOMER = r.CDCUSTOMER
					   INNER JOIN PRODUCTREQUEST as pr ON r.CDREQUEST = pr.CDREQUEST
					   group by c.NMCUSTOMER
					   order by count(pr.CDPRODUCT) DESC

