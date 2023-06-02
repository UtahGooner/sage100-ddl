CREATE TABLE SO_ARInvoiceHistoryLink
(
    SalesOrderNo              varchar(7)  NOT NULL,
    SequenceNo                varchar(14) NOT NULL,
    InvoiceNo                 varchar(7)  NOT NULL,
    InvoiceHistoryHeaderSeqNo varchar(6)  NOT NULL,
    InvoiceHistoryDetailSeqNo varchar(6)  NOT NULL,
    InvoiceDate               date           DEFAULT NULL,
    UnitOfMeasure             varchar(4)     DEFAULT NULL,
    QuantityShipped           decimal(15, 6) DEFAULT NULL,
    UnitPrice                 decimal(15, 6) DEFAULT NULL,
    PRIMARY KEY (`SalesOrderNo`, `SequenceNo`, `InvoiceNo`, `InvoiceHistoryHeaderSeqNo`, `InvoiceHistoryDetailSeqNo`)
);
CREATE INDEX KEY0 on SO_ARInvoiceHistoryLink (SalesOrderNo, SequenceNo, InvoiceNo, InvoiceHistoryHeaderSeqNo,
                                              InvoiceHistoryDetailSeqNo);
