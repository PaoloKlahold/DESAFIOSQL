use treinamento

INSERT INTO PRODUCTREQUEST  
SELECT r.CDREQUEST, p.CDPRODUCT, 10, p.VLPRICE FROM REQUEST as r, PRODUCT as p ORDER BY r.CDREQUEST, p.CDPRODUCT

-- este script iria inserir, porém não permite pois já há.