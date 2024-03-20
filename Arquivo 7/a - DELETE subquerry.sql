use treinamento
SET DATEFORMAT dmy;


DELETE FROM REQUEST 
			WHERE REQUEST.VLTOTAL < 1000
			AND REQUEST.CDREQUEST = (SELECT r.CDREQUEST
									 FROM REQUEST as r left join PRODUCTREQUEST as pr ON r.CDREQUEST = pr.CDREQUEST
									 WHERE NOT r.CDREQUEST = pr.CDREQUEST)
			AND REQUEST.DTREQUEST BETWEEN '01/06/2003' AND '31/06/2003'
