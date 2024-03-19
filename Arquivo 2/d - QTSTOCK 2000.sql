USE treinamento
SELECT P.NMPRODUCT AS Produto, P.QTSTOCK as Quantidade, CAST((P.VLPRICE * 0.9) AS decimal(5, 2)) as Valor_Com_Desconto FROM PRODUCT as P WHERE P.QTSTOCK > 2000