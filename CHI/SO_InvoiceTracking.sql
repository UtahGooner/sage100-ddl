CREATE TABLE SO_InvoiceTracking
(
    InvoiceNo             varchar(7) NOT NULL,
    PackageNo             varchar(4) NOT NULL,
    TrackingID            varchar(30)    DEFAULT NULL,
    Comment               varchar(30)    DEFAULT NULL,
    StarshipShipVia       varchar(15)    DEFAULT NULL,
    UpdatedFromStarship   varchar(1)     DEFAULT NULL,
    SendPackageToStarship varchar(1)     DEFAULT NULL,
    Weight                decimal(12, 2) DEFAULT NULL,
    FreightAmt            decimal(11, 2) DEFAULT NULL,
    FreightAmtAddedToInv  decimal(11, 2) DEFAULT NULL,
    D254_WeightUM         varchar(4)     DEFAULT NULL,
    D565_WeightUM         varchar(4)     DEFAULT NULL,
    PRIMARY KEY (`InvoiceNo`, `PackageNo`)
);
CREATE INDEX KEY0 on SO_InvoiceTracking (InvoiceNo, PackageNo);
