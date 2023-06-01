CREATE TABLE AR_SalespersonCommission
(
    SalespersonDivisionNo   varchar(2)  NOT NULL,
    SalespersonNo           varchar(4)  NOT NULL,
    ARDivisionNo            varchar(2)  NOT NULL,
    CustomerNo              varchar(20) NOT NULL,
    InvoiceNo               varchar(7)  NOT NULL,
    InvoiceType             varchar(2)  NOT NULL,
    InvoiceDate             date           DEFAULT NULL,
    PayDate                 date           DEFAULT NULL,
    ApplyToNo               varchar(7)     DEFAULT NULL,
    HasCommRecordBeenEdited varchar(1)     DEFAULT NULL,
    LinkUpdated             varchar(1)     DEFAULT NULL,
    CommissionRate          decimal(8, 3)  DEFAULT NULL,
    InvoiceTotal            decimal(13, 2) DEFAULT NULL,
    SalesSubjectToComm      decimal(13, 2) DEFAULT NULL,
    CostSubjectToComm       decimal(13, 2) DEFAULT NULL,
    CommissionAmt           decimal(13, 2) DEFAULT NULL,
    InvoiceAmountPaid       decimal(13, 2) DEFAULT NULL,
    SplitCommPercent        decimal(6, 2)  DEFAULT NULL,
    DateUpdated             date           DEFAULT NULL,
    TimeUpdated             varchar(8)     DEFAULT NULL,
    UserUpdatedKey          varchar(10)    DEFAULT NULL,
    BillToDivisionNo        varchar(2)     DEFAULT NULL,
    BillToCustomerNo        varchar(20)    DEFAULT NULL,
    PRIMARY KEY (SalespersonDivisionNo, SalespersonNo, ARDivisionNo, CustomerNo, InvoiceNo,
                 InvoiceType)
);