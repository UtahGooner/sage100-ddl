CREATE TABLE AR_InvoiceHistoryPayment
(
    InvoiceNo                     varchar(7) NOT NULL,
    HeaderSeqNo                   varchar(6) NOT NULL,
    PaymentSeqNo                  varchar(6) NOT NULL,
    PaymentType                   varchar(5)     DEFAULT NULL,
    PaymentTypeCategory           varchar(1)     DEFAULT NULL,
    CreditCardID                  varchar(10)    DEFAULT NULL,
    CardType                      varchar(1)     DEFAULT NULL,
    Last4UnencryptedCreditCardNos varchar(4)     DEFAULT NULL,
    Last4BankRoutingNos           varchar(4)     DEFAULT NULL,
    Last4BankAccountNos           varchar(4)     DEFAULT NULL,
    BankName                      varchar(30)    DEFAULT NULL,
    BankAccountType               varchar(1)     DEFAULT NULL,
    ExpirationDateYear            varchar(4)     DEFAULT NULL,
    ExpirationDateMonth           varchar(2)     DEFAULT NULL,
    CorporateCustIDPurchOrder     varchar(17)    DEFAULT NULL,
    CorporateTaxOverrd            varchar(1)     DEFAULT NULL,
    CardholderName                varchar(50)    DEFAULT NULL,
    CreditCardTransactionID       varchar(10)    DEFAULT NULL,
    CreditCardAuthorizationNo     varchar(16)    DEFAULT NULL,
    AuthorizationDate             date           DEFAULT NULL,
    AuthorizationTime             varchar(8)     DEFAULT NULL,
    AVSAddressLine1               varchar(40)    DEFAULT NULL,
    AVSAddressLine2               varchar(40)    DEFAULT NULL,
    AVSCity                       varchar(30)    DEFAULT NULL,
    AVSState                      varchar(2)     DEFAULT NULL,
    AVSZipCode                    varchar(10)    DEFAULT NULL,
    AVSCountryCode                varchar(3)     DEFAULT NULL,
    CreditCardEmailAddress        varchar(250)   DEFAULT NULL,
    CreditCardComment             varchar(30)    DEFAULT NULL,
    TransactionAmt                decimal(12, 2) DEFAULT NULL,
    CorporateSalesTax             decimal(11, 2) DEFAULT NULL,
    DateUpdated                   date           DEFAULT NULL,
    TimeUpdated                   varchar(8)     DEFAULT NULL,
    UserUpdatedKey                varchar(10)    DEFAULT NULL,
    ValueAddedTaxNo               varchar(13)    DEFAULT NULL,
    ValueAddedTaxInvoiceNo        varchar(15)    DEFAULT NULL,
    ValueAddedTaxTaxAmt           decimal(11, 2) DEFAULT NULL,
    ValueAddedTaxTaxRate          decimal(10, 6) DEFAULT NULL,
    DutyAmt                       decimal(11, 2) DEFAULT NULL,
    NationalTaxAmt                decimal(11, 2) DEFAULT NULL,
    SalesOrderNo                  varchar(7)     DEFAULT NULL,
    CheckNoForDeposit             varchar(10)    DEFAULT NULL,
    OtherPaymentTypeRefNo         varchar(24)    DEFAULT NULL,
    AVSAddressLine3               varchar(40)    DEFAULT NULL,
    EncryptedVals                 TEXT           DEFAULT NULL,
    PRIMARY KEY (`InvoiceNo`, `HeaderSeqNo`, `PaymentSeqNo`)
)
