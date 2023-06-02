CREATE TABLE IM_ItemCost
(
    ItemCode                varchar(30) NOT NULL,
    WarehouseCode           varchar(3)  NOT NULL,
    TierType                varchar(1)  NOT NULL,
    GroupSort               varchar(16) NOT NULL,
    ReceiptDate             date           DEFAULT NULL,
    ReceiptNo               varchar(8)     DEFAULT NULL,
    LotSerialNo             varchar(15)    DEFAULT NULL,
    UnitCost                decimal(15, 6) DEFAULT NULL,
    QuantityOnHand          decimal(15, 6) DEFAULT NULL,
    QuantityCommitted       decimal(15, 6) DEFAULT NULL,
    AllocatedCost           decimal(15, 6) DEFAULT NULL,
    TransactionDate         date           DEFAULT NULL,
    NegativeQty             varchar(1)     DEFAULT NULL,
    TierGroup               varchar(1)     DEFAULT NULL,
    ExtendedCost            decimal(11, 2) DEFAULT NULL,
    CostCalcQtyCommitted    decimal(15, 6) DEFAULT NULL,
    CostCalcCostCommitted   decimal(11, 2) DEFAULT NULL,
    DateCreated             date           DEFAULT NULL,
    TimeCreated             varchar(8)     DEFAULT NULL,
    UserCreatedKey          varchar(10)    DEFAULT NULL,
    DateUpdated             date           DEFAULT NULL,
    TimeUpdated             varchar(8)     DEFAULT NULL,
    UserUpdatedKey          varchar(10)    DEFAULT NULL,
    LotSerialExpirationDate date           DEFAULT NULL,
    PRIMARY KEY (`ItemCode`, `WarehouseCode`, `TierType`, `GroupSort`)
);
CREATE INDEX KEY0 on IM_ItemCost (ItemCode, WarehouseCode, TierType, GroupSort);
CREATE INDEX KEY1 on IM_ItemCost (ItemCode, WarehouseCode, TierType, ReceiptDate DESC, ReceiptNo, LotSerialNo,
                                  GroupSort);
CREATE INDEX KEY2 on IM_ItemCost (NegativeQty, TierGroup, ItemCode, WarehouseCode, TierType, GroupSort);
