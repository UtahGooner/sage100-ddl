CREATE TABLE IF NOT EXISTS AR_TransactionPaymentHistory
(
    ARDivisionNo                  varchar(2)  NOT NULL,
    CustomerNo                    varchar(20) NOT NULL,
    InvoiceNo                     varchar(7)  NOT NULL,
    InvoiceType                   varchar(2)  NOT NULL,
    InvoiceHistoryHeaderSeqNo     varchar(6)     DEFAULT NULL,
    TransactionDate               date        NOT NULL,
    SequenceNo                    varchar(6)  NOT NULL,
    PaymentReference              varchar(14)    DEFAULT NULL,
    CheckNo                       varchar(10)    DEFAULT NULL,
    TransactionType               varchar(1)     DEFAULT NULL,
    PaymentDate                   date           DEFAULT NULL,
    PaymentType                   varchar(5)     DEFAULT NULL,
    OtherPaymentTypeRefNo         varchar(24)    DEFAULT NULL,
    CardholderName                varchar(50)    DEFAULT NULL,
    ExpirationDateYear            varchar(4)     DEFAULT NULL,
    ExpirationDateMonth           varchar(2)     DEFAULT NULL,
    CreditCardAuthorizationNo     varchar(16)    DEFAULT NULL,
    Last4UnencryptedCreditCardNos varchar(4)     DEFAULT NULL,
    CreditCardTransactionID       varchar(15)    DEFAULT NULL,
    RMANo                         varchar(7)     DEFAULT NULL,
    TransactionAmt                decimal(12, 2) DEFAULT NULL,
    DateUpdated                   date           DEFAULT NULL,
    TimeUpdated                   varchar(8)     DEFAULT NULL,
    UserUpdatedKey                varchar(10)    DEFAULT NULL,
    CreditCardID                  varchar(10)    DEFAULT NULL,
    CardType                      varchar(1)     DEFAULT NULL,
    BankAccountType               varchar(1)     DEFAULT NULL,
    BankName                      varchar(30)    DEFAULT NULL,
    CreditCardEntryNo             varchar(6)     DEFAULT NULL,
    Last4BankRoutingNos           varchar(4)     DEFAULT NULL,
    Last4BankAccountNos           varchar(4)     DEFAULT NULL,
    EInvoiceTransactionId         varchar(24)    DEFAULT NULL,
    EncryptedVals                 varchar(192)   DEFAULT NULL,
    PRIMARY KEY (`ARDivisionNo`, `CustomerNo`, `InvoiceNo`, `InvoiceType`, `TransactionDate`, `SequenceNo`)
)
