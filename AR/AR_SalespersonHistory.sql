CREATE TABLE AR_SalespersonHistory
(
    SalespersonDivisionNo varchar(2)  NOT NULL,
    SalespersonNo         varchar(4)  NOT NULL,
    FiscalYear            varchar(4)  NOT NULL,
    FiscalPeriod          varchar(2)  NOT NULL,
    CommissionDollarsSold decimal(14, 2) DEFAULT NULL,
    GrossProfitAmt        decimal(14, 2) DEFAULT NULL,
    CommissionAmt         decimal(14, 2) DEFAULT NULL,
    DateUpdated           date           DEFAULT NULL,
    TimeUpdated           varchar(8)     DEFAULT NULL,
    UserUpdatedKey        varchar(10)    DEFAULT NULL,
    PRIMARY KEY (SalespersonDivisionNo, SalespersonNo, FiscalYear, FiscalPeriod)
)
