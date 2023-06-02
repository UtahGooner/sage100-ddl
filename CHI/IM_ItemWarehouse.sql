CREATE TABLE IM_ItemWarehouse
(
    ItemCode                varchar(30) NOT NULL,
    WarehouseCode           varchar(3)  NOT NULL,
    BinLocation             varchar(10)    DEFAULT NULL,
    ReorderMethod           varchar(1)     DEFAULT NULL,
    QuantityOnHand          decimal(15, 6) DEFAULT NULL,
    QuantityOnPurchaseOrder decimal(15, 6) DEFAULT NULL,
    QuantityOnSalesOrder    decimal(15, 6) DEFAULT NULL,
    QuantityOnBackOrder     decimal(15, 6) DEFAULT NULL,
    AverageCost             decimal(15, 6) DEFAULT NULL,
    QuantityRequiredForWO   decimal(15, 6) DEFAULT NULL,
    EconomicOrderQty        decimal(15, 6) DEFAULT NULL,
    ReorderPointQty         decimal(15, 6) DEFAULT NULL,
    MinimumOrderQty         decimal(15, 6) DEFAULT NULL,
    MaximumOnHandQty        decimal(15, 6) DEFAULT NULL,
    QuantityOnWorkOrder     decimal(15, 6) DEFAULT NULL,
    QuantityInShipping      decimal(15, 6) DEFAULT NULL,
    TotalWarehouseValue     decimal(14, 2) DEFAULT NULL,
    CostCalcQtyCommitted    decimal(15, 6) DEFAULT NULL,
    CostCalcCostCommitted   decimal(15, 6) DEFAULT NULL,
    DateCreated             date           DEFAULT NULL,
    TimeCreated             varchar(8)     DEFAULT NULL,
    UserCreatedKey          varchar(10)    DEFAULT NULL,
    DateUpdated             date           DEFAULT NULL,
    TimeUpdated             varchar(8)     DEFAULT NULL,
    UserUpdatedKey          varchar(10)    DEFAULT NULL,
    LastPhysicalCountDate   date           DEFAULT NULL,
    PRIMARY KEY (`ItemCode`, `WarehouseCode`)
);
CREATE INDEX KEY0 on IM_ItemWarehouse (ItemCode, WarehouseCode);
CREATE INDEX KEY1 on IM_ItemWarehouse (WarehouseCode, BinLocation, ItemCode);
