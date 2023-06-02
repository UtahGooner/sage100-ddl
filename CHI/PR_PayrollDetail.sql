CREATE TABLE PR_PayrollDetail
(
    EmployeeKey          varchar(32) NOT NULL,
    CheckEntryNo         varchar(1)  NOT NULL,
    LineKey              varchar(6)  NOT NULL,
    LineSeqNo            varchar(14)    DEFAULT NULL,
    LineType             varchar(1)     DEFAULT NULL,
    EarningsCode         varchar(6)     DEFAULT NULL,
    EarningsType         varchar(1)     DEFAULT NULL,
    EarningsDepartmentNo varchar(2)     DEFAULT NULL,
    DeductionCode        varchar(6)     DEFAULT NULL,
    DeductionType        varchar(1)     DEFAULT NULL,
    TaxStateCode         varchar(2)     DEFAULT NULL,
    TaxProfileCode       varchar(30)    DEFAULT NULL,
    LaborCode            varchar(7)     DEFAULT NULL,
    WorkersCompCode      varchar(7)     DEFAULT NULL,
    JobNo                varchar(7)     DEFAULT NULL,
    JobType              varchar(3)     DEFAULT NULL,
    CostCode             varchar(9)     DEFAULT NULL,
    EarningsDate         date           DEFAULT NULL,
    PayRateMultiplier    decimal(6, 3)  DEFAULT NULL,
    PayRate              decimal(12, 4) DEFAULT NULL,
    Hours                decimal(9, 2)  DEFAULT NULL,
    BasisAmt             decimal(11, 2) DEFAULT NULL,
    PayAmt               decimal(12, 2) DEFAULT NULL,
    PRIMARY KEY (`EmployeeKey`, `CheckEntryNo`, `LineKey`)
);
CREATE INDEX KEY0 on PR_PayrollDetail (EmployeeKey, CheckEntryNo, LineKey);
CREATE INDEX KEY1 on PR_PayrollDetail (EmployeeKey, CheckEntryNo, LineSeqNo, LineKey);
