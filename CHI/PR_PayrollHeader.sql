CREATE TABLE PR_PayrollHeader
(
    EmployeeKey                varchar(32) NOT NULL,
    CheckEntryNo               varchar(1)  NOT NULL,
    DepartmentNo               varchar(2)     DEFAULT NULL,
    EmployeeNo                 varchar(7)     DEFAULT NULL,
    BatchNo                    varchar(5)     DEFAULT NULL,
    ManualTaxes                varchar(1)     DEFAULT NULL,
    CompleteReversal           varchar(1)     DEFAULT NULL,
    AutomaticDeductions        varchar(1)     DEFAULT NULL,
    PrintCheck                 varchar(1)     DEFAULT NULL,
    CheckNo                    varchar(10)    DEFAULT NULL,
    BankCode                   varchar(1)     DEFAULT NULL,
    CheckDate                  date           DEFAULT NULL,
    DirectDeposit              varchar(1)     DEFAULT NULL,
    DaysWorked                 decimal(4, 0)  DEFAULT NULL,
    WeeksWorked                decimal(3, 0)  DEFAULT NULL,
    TotalDeductions            decimal(12, 2) DEFAULT NULL,
    TotalEarningsHours         decimal(8, 2)  DEFAULT NULL,
    TotalRegularHours          decimal(8, 2)  DEFAULT NULL,
    TotalGrossEarnings         decimal(12, 2) DEFAULT NULL,
    TotalTaxes                 decimal(12, 2) DEFAULT NULL,
    TotalTips                  decimal(11, 2) DEFAULT NULL,
    TotalExemptTips            decimal(11, 2) DEFAULT NULL,
    TotalWagesExcludedFromTips decimal(12, 2) DEFAULT NULL,
    TotalHoursExcludedFromTips decimal(11, 2) DEFAULT NULL,
    TotalOvertimeHours         decimal(8, 2)  DEFAULT NULL,
    TotalRegularEarnings       decimal(12, 2) DEFAULT NULL,
    TotalNetDeductionLines     decimal(5, 0)  DEFAULT NULL,
    HoursAccruedTimeOff1       decimal(6, 2)  DEFAULT NULL,
    HoursAccruedTimeOff2       decimal(6, 2)  DEFAULT NULL,
    HoursAccruedTimeOff3       decimal(6, 2)  DEFAULT NULL,
    CheckAmt                   decimal(12, 2) DEFAULT NULL,
    DirectDepositAmt           decimal(12, 2) DEFAULT NULL,
    DateCreated                date           DEFAULT NULL,
    TimeCreated                varchar(8)     DEFAULT NULL,
    UserCreatedKey             varchar(10)    DEFAULT NULL,
    DateUpdated                date           DEFAULT NULL,
    TimeUpdated                varchar(8)     DEFAULT NULL,
    UserUpdatedKey             varchar(10)    DEFAULT NULL,
    FromLaborEntry             varchar(1)     DEFAULT NULL,
    PRIMARY KEY (`EmployeeKey`, `CheckEntryNo`)
);
CREATE INDEX KEY0 on PR_PayrollHeader (EmployeeKey, CheckEntryNo);
CREATE INDEX KEY1 on PR_PayrollHeader (BatchNo, DepartmentNo, EmployeeNo, CheckEntryNo);
CREATE INDEX KEY2 on PR_PayrollHeader (DepartmentNo, EmployeeNo, CheckEntryNo);
CREATE INDEX KEY3 on PR_PayrollHeader (BatchNo, BankCode, CheckNo, CheckEntryNo, EmployeeKey);
CREATE INDEX KEY4 on PR_PayrollHeader (BankCode, CheckNo, BatchNo, EmployeeKey, CheckEntryNo);
