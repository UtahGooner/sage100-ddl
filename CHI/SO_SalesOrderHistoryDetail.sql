CREATE TABLE SO_SalesOrderHistoryDetail
(
    SalesOrderNo              varchar(7)  NOT NULL,
    SequenceNo                varchar(14) NOT NULL,
    LineKey                   varchar(6)     DEFAULT NULL,
    OriginalLine              varchar(1)     DEFAULT NULL,
    CancelledLine             varchar(1)     DEFAULT NULL,
    CancelReasonCode          varchar(5)     DEFAULT NULL,
    ItemCode                  varchar(30)    DEFAULT NULL,
    ItemType                  varchar(1)     DEFAULT NULL,
    ItemCodeDesc              varchar(30)    DEFAULT NULL,
    ExtendedDescriptionKey    varchar(10)    DEFAULT NULL,
    Discount                  varchar(1)     DEFAULT NULL,
    Commissionable            varchar(1)     DEFAULT NULL,
    SubjectToExemption        varchar(1)     DEFAULT NULL,
    WarehouseCode             varchar(3)     DEFAULT NULL,
    PriceLevel                varchar(1)     DEFAULT NULL,
    DropShip                  varchar(1)     DEFAULT NULL,
    PrintDropShipment         varchar(1)     DEFAULT NULL,
    MasterOrderLineKey        varchar(6)     DEFAULT NULL,
    UnitOfMeasure             varchar(4)     DEFAULT NULL,
    SalesKitLineKey           varchar(6)     DEFAULT NULL,
    CostOfGoodsSoldAcctKey    varchar(9)     DEFAULT NULL,
    SalesAcctKey              varchar(9)     DEFAULT NULL,
    PriceOverridden           varchar(1)     DEFAULT NULL,
    ExplodedKitItem           varchar(1)     DEFAULT NULL,
    StandardKitBill           varchar(1)     DEFAULT NULL,
    Revision                  varchar(3)     DEFAULT NULL,
    BillOption1               varchar(2)     DEFAULT NULL,
    BillOption2               varchar(2)     DEFAULT NULL,
    BillOption3               varchar(2)     DEFAULT NULL,
    BillOption4               varchar(2)     DEFAULT NULL,
    BillOption5               varchar(2)     DEFAULT NULL,
    BillOption6               varchar(2)     DEFAULT NULL,
    BillOption7               varchar(2)     DEFAULT NULL,
    BillOption8               varchar(2)     DEFAULT NULL,
    BillOption9               varchar(2)     DEFAULT NULL,
    BackorderKitCompLine      varchar(1)     DEFAULT NULL,
    SkipPrintCompLine         varchar(1)     DEFAULT NULL,
    PromiseDate               date           DEFAULT NULL,
    AliasItemNo               varchar(30)    DEFAULT NULL,
    TaxClass                  varchar(2)     DEFAULT NULL,
    CustomerAction            varchar(1)     DEFAULT NULL,
    ItemAction                varchar(1)     DEFAULT NULL,
    WarrantyCode              varchar(10)    DEFAULT NULL,
    ExpirationDate            date           DEFAULT NULL,
    ExpirationOverridden      varchar(1)     DEFAULT NULL,
    CostOverridden            varchar(1)     DEFAULT NULL,
    CostCode                  varchar(9)     DEFAULT NULL,
    CostType                  varchar(1)     DEFAULT NULL,
    CommentText               TEXT           DEFAULT NULL,
    QuantityOrderedOriginal   decimal(15, 6) DEFAULT NULL,
    QuantityOrderedRevised    decimal(15, 6) DEFAULT NULL,
    QuantityShipped           decimal(15, 6) DEFAULT NULL,
    QuantityBackordered       decimal(15, 6) DEFAULT NULL,
    OriginalUnitPrice         decimal(15, 6) DEFAULT NULL,
    LastUnitPrice             decimal(15, 6) DEFAULT NULL,
    LastExtensionAmt          decimal(11, 2) DEFAULT NULL,
    UnitCost                  decimal(15, 6) DEFAULT NULL,
    UnitOfMeasureConvFactor   decimal(11, 4) DEFAULT NULL,
    QuantityPerBill           decimal(15, 6) DEFAULT NULL,
    LineDiscountPercent       decimal(8, 3)  DEFAULT NULL,
    UDF_EDI_SO                varchar(15)    DEFAULT NULL,
    UDF_SHIP_CODE             varchar(10)    DEFAULT NULL,
    UDF_SHIP_NAME             varchar(30)    DEFAULT NULL,
    LineWeight                decimal(11, 2) DEFAULT NULL,
    APDivisionNo              varchar(2)     DEFAULT NULL,
    VendorNo                  varchar(7)     DEFAULT NULL,
    PurchaseOrderNo           varchar(7)     DEFAULT NULL,
    PurchaseOrderRequiredDate date           DEFAULT NULL,
    CommodityCode             varchar(12)    DEFAULT NULL,
    AlternateTaxIdentifier    varchar(15)    DEFAULT NULL,
    TaxTypeApplied            varchar(4)     DEFAULT NULL,
    NetGrossIndicator         varchar(1)     DEFAULT NULL,
    DebitCreditIndicator      varchar(1)     DEFAULT NULL,
    TaxAmt                    decimal(11, 2) DEFAULT NULL,
    TaxRate                   decimal(10, 6) DEFAULT NULL,
    UDF_ACK01                 varchar(2)     DEFAULT NULL,
    UDF_BO                    varchar(30)    DEFAULT NULL,
    UDF_IN                    varchar(30)    DEFAULT NULL,
    UDF_IZ                    varchar(30)    DEFAULT NULL,
    UDF_ND                    varchar(30)    DEFAULT NULL,
    UDF_PO101                 varchar(20)    DEFAULT NULL,
    UDF_PO401                 decimal(9, 2)  DEFAULT NULL,
    UDF_PO402                 decimal(9, 2)  DEFAULT NULL,
    UDF_PO414                 decimal(9, 2)  DEFAULT NULL,
    UDF_RETAIL_PRICE          decimal(9, 2)  DEFAULT NULL,
    UDF_SKU                   varchar(30)    DEFAULT NULL,
    UDF_UA                    varchar(30)    DEFAULT NULL,
    UDF_UK                    varchar(30)    DEFAULT NULL,
    UDF_UM                    varchar(2)     DEFAULT NULL,
    UDF_UPC                   varchar(30)    DEFAULT NULL,
    UDF_VA                    varchar(30)    DEFAULT NULL,
    EncryptedVals             varchar(64)    DEFAULT NULL,
    PRIMARY KEY (`SalesOrderNo`, `SequenceNo`)
);
CREATE INDEX KEY0 on SO_SalesOrderHistoryDetail (SalesOrderNo, SequenceNo);
CREATE INDEX KEY1 on SO_SalesOrderHistoryDetail (ExtendedDescriptionKey, SalesOrderNo, SequenceNo);
CREATE INDEX KEY2 on SO_SalesOrderHistoryDetail (SalesOrderNo, SequenceNo, LineKey);
CREATE INDEX KEY3 on SO_SalesOrderHistoryDetail (APDivisionNo, VendorNo, SalesOrderNo, SequenceNo);
CREATE INDEX KEY4 on SO_SalesOrderHistoryDetail (CancelledLine, CancelReasonCode, SalesOrderNo, SequenceNo);
