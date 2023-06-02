CREATE TABLE SO_SalesOrderTierDistribution
(
    SalesOrderNo            varchar(7)  NOT NULL,
    LineKey                 varchar(6)  NOT NULL,
    LotSerialNo             varchar(15) NOT NULL,
    TierType                varchar(1)     DEFAULT NULL,
    ItemCode                varchar(30)    DEFAULT NULL,
    WarehouseCode           varchar(3)     DEFAULT NULL,
    QuantityOrdered         decimal(15, 6) DEFAULT NULL,
    QuantityShipped         decimal(15, 6) DEFAULT NULL,
    UnitOfMeasureConvFactor decimal(11, 4) DEFAULT NULL,
    LotSerialExpirationDate date           DEFAULT NULL,
    PRIMARY KEY (`SalesOrderNo`, `LineKey`, `LotSerialNo`)
);
CREATE INDEX KEY0 on SO_SalesOrderTierDistribution (SalesOrderNo, LineKey, LotSerialNo);
CREATE INDEX KEY1 on SO_SalesOrderTierDistribution (LotSerialNo, TierType, SalesOrderNo, LineKey);
CREATE INDEX KEY2 on SO_SalesOrderTierDistribution (ItemCode, LotSerialNo, SalesOrderNo, LineKey);
CREATE INDEX KEY3 on SO_SalesOrderTierDistribution (ItemCode, WarehouseCode, LotSerialNo, SalesOrderNo, LineKey);
