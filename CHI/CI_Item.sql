CREATE TABLE CI_Item
(
    ItemCode                      varchar(30) NOT NULL,
    ItemType                      varchar(1)     DEFAULT NULL,
    ItemCodeDesc                  varchar(30)    DEFAULT NULL,
    ExtendedDescriptionKey        varchar(10)    DEFAULT NULL,
    UseInAR                       varchar(1)     DEFAULT NULL,
    UseInSO                       varchar(1)     DEFAULT NULL,
    UseInPO                       varchar(1)     DEFAULT NULL,
    UseInBM                       varchar(1)     DEFAULT NULL,
    CalculateCommission           varchar(1)     DEFAULT NULL,
    DropShip                      varchar(1)     DEFAULT NULL,
    EBMEnabled                    varchar(1)     DEFAULT NULL,
    PriceCode                     varchar(4)     DEFAULT NULL,
    PrintReceiptLabels            varchar(1)     DEFAULT NULL,
    AllocateLandedCost            varchar(1)     DEFAULT NULL,
    WarrantyCode                  varchar(10)    DEFAULT NULL,
    SalesUnitOfMeasure            varchar(4)     DEFAULT NULL,
    PurchaseUnitOfMeasure         varchar(4)     DEFAULT NULL,
    StandardUnitOfMeasure         varchar(4)     DEFAULT NULL,
    PostToGLByDivision            varchar(1)     DEFAULT NULL,
    SalesAcctKey                  varchar(9)     DEFAULT NULL,
    CostOfGoodsSoldAcctKey        varchar(9)     DEFAULT NULL,
    InventoryAcctKey              varchar(9)     DEFAULT NULL,
    PurchaseAcctKey               varchar(9)     DEFAULT NULL,
    ManufacturingCostAcctKey      varchar(9)     DEFAULT NULL,
    TaxClass                      varchar(2)     DEFAULT NULL,
    PurchasesTaxClass             varchar(2)     DEFAULT NULL,
    ProductLine                   varchar(4)     DEFAULT NULL,
    ProductType                   varchar(1)     DEFAULT NULL,
    Valuation                     varchar(1)     DEFAULT NULL,
    DefaultWarehouseCode          varchar(3)     DEFAULT NULL,
    PrimaryAPDivisionNo           varchar(2)     DEFAULT NULL,
    PrimaryVendorNo               varchar(7)     DEFAULT NULL,
    ImageFile                     varchar(30)    DEFAULT NULL,
    Category1                     varchar(10)    DEFAULT NULL,
    Category2                     varchar(10)    DEFAULT NULL,
    Category3                     varchar(10)    DEFAULT NULL,
    Category4                     varchar(10)    DEFAULT NULL,
    ExplodeKitItems               varchar(1)     DEFAULT NULL,
    ShipWeight                    varchar(10)    DEFAULT NULL,
    CommentText                   TEXT           DEFAULT NULL,
    RestockingMethod              varchar(1)     DEFAULT NULL,
    StandardUnitCost              decimal(15, 6) DEFAULT NULL,
    StandardUnitPrice             decimal(15, 6) DEFAULT NULL,
    CommissionRate                decimal(8, 3)  DEFAULT NULL,
    BaseCommAmt                   decimal(11, 2) DEFAULT NULL,
    PurchaseUMConvFctr            decimal(11, 4) DEFAULT NULL,
    SalesUMConvFctr               decimal(11, 4) DEFAULT NULL,
    Volume                        decimal(10, 4) DEFAULT NULL,
    RestockingCharge              decimal(10, 3) DEFAULT NULL,
    ProcurementType               varchar(1)     DEFAULT NULL,
    DateCreated                   date           DEFAULT NULL,
    TimeCreated                   varchar(8)     DEFAULT NULL,
    UserCreatedKey                varchar(10)    DEFAULT NULL,
    DateUpdated                   date           DEFAULT NULL,
    TimeUpdated                   varchar(8)     DEFAULT NULL,
    UserUpdatedKey                varchar(10)    DEFAULT NULL,
    AllowBackOrders               varchar(1)     DEFAULT NULL,
    AllowReturns                  varchar(1)     DEFAULT NULL,
    AllowTradeDiscount            varchar(1)     DEFAULT NULL,
    ConfirmCostIncrInRcptOfGoods  varchar(1)     DEFAULT NULL,
    LastSoldDate                  date           DEFAULT NULL,
    LastReceiptDate               date           DEFAULT NULL,
    SalesPromotionCode            varchar(10)    DEFAULT NULL,
    SaleStartingDate              date           DEFAULT NULL,
    SaleEndingDate                date           DEFAULT NULL,
    SaleMethod                    varchar(1)     DEFAULT NULL,
    NextLotSerialNo               varchar(15)    DEFAULT NULL,
    InventoryCycle                varchar(1)     DEFAULT NULL,
    RoutingNo                     varchar(20)    DEFAULT NULL,
    PlannerCode                   varchar(3)     DEFAULT NULL,
    BuyerCode                     varchar(3)     DEFAULT NULL,
    LowLevelCode                  varchar(2)     DEFAULT NULL,
    PlannedByMRP                  varchar(1)     DEFAULT NULL,
    VendorItemCode                varchar(30)    DEFAULT NULL,
    SetupCharge                   varchar(1)     DEFAULT NULL,
    AttachmentFileName            varchar(30)    DEFAULT NULL,
    ItemImageWidthInPixels        decimal(4, 0)  DEFAULT NULL,
    ItemImageHeightInPixels       decimal(4, 0)  DEFAULT NULL,
    LastTotalUnitCost             decimal(15, 6) DEFAULT NULL,
    AverageUnitCost               decimal(15, 6) DEFAULT NULL,
    SalesPromotionPrice           decimal(15, 6) DEFAULT NULL,
    SuggestedRetailPrice          decimal(15, 6) DEFAULT NULL,
    SalesPromotionDiscountPercent decimal(11, 3) DEFAULT NULL,
    TotalQuantityOnHand           decimal(15, 6) DEFAULT NULL,
    AverageBackOrderFillDays      decimal(5, 0)  DEFAULT NULL,
    LastAllocatedUnitCost         decimal(15, 6) DEFAULT NULL,
    TotalInventoryValue           decimal(14, 2) DEFAULT NULL,
    InactiveItem                  varchar(1)     DEFAULT NULL,
    UDF_DUTYPCT                   decimal(9, 2)  DEFAULT NULL,
    UDF_FREIGHTAIR                decimal(10, 3) DEFAULT NULL,
    UDF_HTSCODE                   varchar(30)    DEFAULT NULL,
    UDF_BASEFREIGHT               decimal(10, 3) DEFAULT NULL,
    UDF_CATALOG_DESCRIPTION       varchar(60)    DEFAULT NULL,
    UDF_UPC                       varchar(12)    DEFAULT NULL,
    UDF_UPC_BY_COLOR              varchar(12)    DEFAULT NULL,
    UDF_COUNTRY_ORIGIN            varchar(16)    DEFAULT NULL,
    LastPhysicalCountDate         date           DEFAULT NULL,
    CommodityCode                 varchar(12)    DEFAULT NULL,
    TrackLotSerialExpirationDates varchar(1)     DEFAULT NULL,
    RequireExpirationDate         varchar(1)     DEFAULT NULL,
    CalculateExpDateBasedOn       varchar(1)     DEFAULT NULL,
    NumberUntilExpiration         decimal(3, 0)  DEFAULT NULL,
    CalculateSellByBasedOn        varchar(1)     DEFAULT NULL,
    NumberToSellByBefore          decimal(3, 0)  DEFAULT NULL,
    NumberToSellByAfter           decimal(3, 0)  DEFAULT NULL,
    CalculateUseByBasedOn         varchar(1)     DEFAULT NULL,
    NumberToUseByBefore           decimal(3, 0)  DEFAULT NULL,
    NumberToUseByAfter            decimal(3, 0)  DEFAULT NULL,
    CalculateReturnsBasedOn       varchar(1)     DEFAULT NULL,
    NumberToReturnAfter           decimal(3, 0)  DEFAULT NULL,
    PRIMARY KEY (`ItemCode`)
);
CREATE INDEX KEY0 on CI_Item (ItemCode);
CREATE INDEX KEY1 on CI_Item (ItemType, ItemCode);
CREATE INDEX KEY2 on CI_Item (ExtendedDescriptionKey, ItemCode);
CREATE INDEX KEY3 on CI_Item (ProductLine, ItemCode);
CREATE INDEX KEY4 on CI_Item (SalesPromotionCode, ItemCode);
CREATE INDEX KEY5 on CI_Item (ItemCodeDesc, ItemCode, ItemType);
