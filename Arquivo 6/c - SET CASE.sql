use treinamento

BEGIN TRANSACTION
SELECT * FROM PRODUCT
UPDATE PRODUCT SET VLPRICE = CASE NMPRODUCT
							 WHEN 'Waffer 200g' THEN 20.00
							 WHEN 'Waffer 50g' THEN 9.50
							 -- Devo realizar isso com todos? ...
							 ELSE VLPRICE
							 END
SELECT * FROM PRODUCT
ROLLBACK