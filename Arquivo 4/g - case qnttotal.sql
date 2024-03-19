use treinamento

-- Enunuciado "...quantidade total pedida para produtos ..."
SELECT p.NMPRODUCT, count(pr.CDPRODUCT) as 'quantidade de vezes pedido', 
		CASE WHEN count(pr.CDPRODUCT) >= 2 THEN sum(pr.QTAMOUNT)
		ELSE NULL END as 'quantidade de unidades'
		FROM PRODUCT as p INNER JOIN PRODUCTREQUEST as pr ON p.CDPRODUCT = pr.CDPRODUCT
		GROUP BY p.NMPRODUCT

-- Caso enunciado "...quantidade total pedida, para produtos ..."
SELECT	
		p.NMPRODUCT as 'Nome Produto', 
		count(pr.CDPRODUCT) as 'quantidade de vezes pedido', 
		sum(pr.QTAMOUNT) as 'quantidade de unidades'
		FROM PRODUCT as p INNER JOIN PRODUCTREQUEST as pr ON p.CDPRODUCT = pr.CDPRODUCT
		GROUP BY p.NMPRODUCT
		HAVING count(pr.CDPRODUCT) >= 2