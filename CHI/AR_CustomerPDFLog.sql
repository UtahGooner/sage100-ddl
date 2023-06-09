CREATE TABLE IF NOT EXISTS AR_CustomerPDFLog
(
    ARDivisionNo      varchar(2)  NOT NULL,
    CustomerNo        varchar(20) NOT NULL,
    Document          varchar(60) NOT NULL,
    ModuleCode        varchar(3)  NOT NULL,
    DocumentKey       varchar(9)  NOT NULL,
    DocumentDate      date        NOT NULL,
    Sequence          varchar(3)  NOT NULL,
    InvoiceNo         varchar(7)   DEFAULT NULL,
    InvoiceType       varchar(2)   DEFAULT NULL,
    SalesOrderNo      varchar(7)   DEFAULT NULL,
    OrderType         varchar(1)   DEFAULT NULL,
    JobNo             varchar(7)   DEFAULT NULL,
    AccountingDate    date         DEFAULT NULL,
    Directory         varchar(150) DEFAULT NULL,
    Filename          varchar(100) DEFAULT NULL,
    Sent              varchar(1)   DEFAULT NULL,
    Updated           varchar(1)   DEFAULT NULL,
    PasswordProtected varchar(1)   DEFAULT NULL,
    Password          varchar(33)  DEFAULT NULL,
    DateCreated       date         DEFAULT NULL,
    TimeCreated       varchar(8)   DEFAULT NULL,
    UserCreatedKey    varchar(10)  DEFAULT NULL,
    HeaderSeqNo       varchar(6)   DEFAULT NULL,
    InvoiceDueDate    date         DEFAULT NULL,
    ShipDate          date         DEFAULT NULL,
    CustomerPONo      TEXT         DEFAULT NULL,
    PRIMARY KEY (`ARDivisionNo`, `CustomerNo`, `Document`, `ModuleCode`, `DocumentKey`, `DocumentDate`, `Sequence`)
)
