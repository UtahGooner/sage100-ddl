CREATE TABLE SY_User
(
    UserKey                     varchar(10) NOT NULL,
    UserCode                    varchar(3)    DEFAULT NULL,
    UserLogon                   varchar(60)   DEFAULT NULL,
    SecurityKey                 varchar(10)   DEFAULT NULL,
    FirstName                   varchar(20)   DEFAULT NULL,
    LastName                    varchar(30)   DEFAULT NULL,
    CustomizationCode           varchar(3)    DEFAULT NULL,
    Password                    varchar(30)   DEFAULT NULL,
    Active                      varchar(1)    DEFAULT NULL,
    InactiveDate                date          DEFAULT NULL,
    LastCompany                 varchar(10)   DEFAULT NULL,
    LookupLimit                 varchar(6)    DEFAULT NULL,
    PartialLookup               varchar(1)    DEFAULT NULL,
    ImpliedDecimal              varchar(1)    DEFAULT NULL,
    AutoLogoff                  varchar(1)    DEFAULT NULL,
    InactivityTime              varchar(3)    DEFAULT NULL,
    EnterKeyLikeTab             varchar(1)    DEFAULT NULL,
    InPeriodEnd                 varchar(1)    DEFAULT NULL,
    PeriodEndPrinter            varchar(3)    DEFAULT NULL,
    CurrentPrinter              varchar(3)    DEFAULT NULL,
    LowSpeedConnect             varchar(1)    DEFAULT NULL,
    SystemDate                  date          DEFAULT NULL,
    Theme                       varchar(1)    DEFAULT NULL,
    GraphicReportFormat         varchar(1)    DEFAULT NULL,
    ReductionAmountsInRed       varchar(1)    DEFAULT NULL,
    PromptForCompanyCode        varchar(1)    DEFAULT NULL,
    UseCrystalWebReports        varchar(1)    DEFAULT NULL,
    Locked                      varchar(1)    DEFAULT NULL,
    ShowHiddenDialog            varchar(1)    DEFAULT NULL,
    External                    varchar(1)    DEFAULT NULL,
    LockedDate                  decimal(8, 0) DEFAULT NULL,
    LockedTime                  decimal(8, 0) DEFAULT NULL,
    PasswordDate                decimal(8, 0) DEFAULT NULL,
    EnableCSODBC                varchar(1)    DEFAULT NULL,
    AppServSpawn                varchar(1)    DEFAULT NULL,
    EnableWebServicesForUser    varchar(1)    DEFAULT NULL,
    ReportPreviewZoom           decimal(3, 0) DEFAULT NULL,
    SurveyVersion               decimal(2, 1) DEFAULT NULL,
    SurveyLaunchDate            decimal(8, 0) DEFAULT NULL,
    EmailAddress                varchar(250)  DEFAULT NULL,
    JobTitle                    varchar(1)    DEFAULT NULL,
    RetainModuleOnCompanyChange varchar(1)    DEFAULT NULL,
    ThemeCode                   varchar(20)   DEFAULT NULL,
    MapService                  varchar(1)    DEFAULT NULL,
    PRIMARY KEY (UserKey),
);

CREATE INDEX KEY1 ON SY_User (UserCode);
CREATE INDEX KEY2 ON SY_User (UserLogon);
CREATE INDEX KEY3 ON SY_User (SecurityKey);
CREATE INDEX KEY4 ON SY_User (LastName, FirstName);
CREATE INDEX KEY5 ON SY_User (CustomizationCode, UserKey);
CREATE INDEX KEY6 ON SY_User (Active, UserLogon);
CREATE INDEX KEY7 ON SY_User (External, Active, UserLogon);

