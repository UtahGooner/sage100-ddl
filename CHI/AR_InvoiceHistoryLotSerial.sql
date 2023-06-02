CREATE TABLE AR_InvoiceHistoryLotSerial
(
    InvoiceNo               varchar(7)  NOT NULL,
    HeaderSeqNo             varchar(6)  NOT NULL,
    DetailSeqNo             varchar(6)  NOT NULL,
    LotSerialNo             varchar(15) NOT NULL,
    TierType                varchar(1)     DEFAULT NULL,
    QuantityShipped         decimal(15, 6) DEFAULT NULL,
    LotSerialExpirationDate date           DEFAULT NULL,
    PRIMARY KEY (`InvoiceNo`, `HeaderSeqNo`, `DetailSeqNo`, `LotSerialNo`)
);
CREATE INDEX KEY0 on AR_InvoiceHistoryLotSerial (InvoiceNo, HeaderSeqNo, DetailSeqNo, LotSerialNo);
CREATE INDEX KEY1 on AR_InvoiceHistoryLotSerial (LotSerialNo, InvoiceNo, HeaderSeqNo, DetailSeqNo);
