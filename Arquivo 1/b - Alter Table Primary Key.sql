USE DESAFIOSQL;

ALTER TABLE PRODUCTREQUEST ADD PRIMARY KEY (CDREQUEST, CDPRODUCT);
ALTER TABLE REQUEST ADD PRIMARY KEY (CDREQUEST);
ALTER TABLE CUSTOMER ADD PRIMARY KEY (CDCUSTOMER);
ALTER TABLE PRODUCT ADD PRIMARY KEY (CDPRODUCT);
ALTER TABLE SUPPLIER ADD PRIMARY KEY (CDSUPPLIER);