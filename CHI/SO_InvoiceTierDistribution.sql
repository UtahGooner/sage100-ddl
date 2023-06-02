CREATE TABLE SO_InvoiceTierDistribution (
                                            InvoiceNo varchar(7) NOT NULL,
                                            LineKey varchar(6) NOT NULL,
                                            LotSerialNo varchar(15) NOT NULL,
                                            TierType varchar(1) DEFAULT NULL,
                                            QuantityShipped decimal(15,6) DEFAULT NULL,
                                            TierUnitCost decimal(15,6) DEFAULT NULL,
                                            ItemCode varchar(30) DEFAULT NULL,
                                            WarehouseCode varchar(3) DEFAULT NULL,
                                            UnitOfMeasureConvFactor decimal(11,4) DEFAULT NULL,
                                            SalesOrderNo varchar(7) DEFAULT NULL,
                                            OrderLineKey varchar(6) DEFAULT NULL,
                                            QuantityOrdered decimal(15,6) DEFAULT NULL,
                                            LotSerialExpirationDate date DEFAULT NULL,
                                            PRIMARY KEY (`InvoiceNo`,`LineKey`,`LotSerialNo`)
);
CREATE INDEX KEY0 on SO_InvoiceTierDistribution (InvoiceNo, LineKey, LotSerialNo);
CREATE INDEX KEY1 on SO_InvoiceTierDistribution (LotSerialNo, TierType, InvoiceNo, LineKey);
