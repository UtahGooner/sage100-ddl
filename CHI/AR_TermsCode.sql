CREATE TABLE AR_TermsCode
(
    TermsCode                 varchar(2) NOT NULL,
    TermsCodeDesc             varchar(30)   DEFAULT NULL,
    DueDateADayOfTheMonth     varchar(1)    DEFAULT NULL,
    DiscountDateADayOfTheMo   varchar(1)    DEFAULT NULL,
    DiscountCalculationMethod varchar(1)    DEFAULT NULL,
    DaysBeforeDue             decimal(3, 0) DEFAULT NULL,
    MinimumDaysAllowedInv     decimal(3, 0) DEFAULT NULL,
    DaysBeforeDiscountDue     decimal(3, 0) DEFAULT NULL,
    MinimumDaysAllowedDisc    decimal(3, 0) DEFAULT NULL,
    DiscountRate              decimal(8, 3) DEFAULT NULL,
    DateCreated               date          DEFAULT NULL,
    TimeCreated               varchar(8)    DEFAULT NULL,
    UserCreatedKey            varchar(10)   DEFAULT NULL,
    DateUpdated               date          DEFAULT NULL,
    TimeUpdated               varchar(8)    DEFAULT NULL,
    UserUpdatedKey            varchar(10)   DEFAULT NULL,
    D546_eBizConnect          varchar(1)    DEFAULT NULL,
    D546_EmailPay             varchar(1)    DEFAULT NULL,
    D546_EmailPayAddress      varchar(50)   DEFAULT NULL,
    D546_EmailPaySender       varchar(30)   DEFAULT NULL,
    PRIMARY KEY (`TermsCode`)
)
