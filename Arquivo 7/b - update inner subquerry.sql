use treinamento

UPDATE PRODUCT SET VLPRICE = pr.newprice FROM PRODUCT as p inner join 
													  (SELECT pr.CDPRODUCT, sum(pr.VLUNITARY) as newprice FROM PRODUCTREQUEST as pr 
														group by pr.CDPRODUCT
														having sum(pr.QTAMOUNT) > 800) as pr ON p.CDPRODUCT = pr.CDPRODUCT


