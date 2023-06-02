CREATE TABLE PR_EmployeeDeduction (
                                      EmployeeKey varchar(32) NOT NULL,
                                      DeductionCode varchar(6) NOT NULL,
                                      DeductionAnAutoDeduction varchar(1) DEFAULT NULL,
                                      DeductionRate decimal(9,4) DEFAULT NULL,
                                      DeductionAmt decimal(12,2) DEFAULT NULL,
                                      DeductionGoal decimal(12,2) DEFAULT NULL,
                                      Balance decimal(12,2) DEFAULT NULL,
                                      DateCreated date DEFAULT NULL,
                                      TimeCreated varchar(8) DEFAULT NULL,
                                      UserCreatedKey varchar(10) DEFAULT NULL,
                                      DateUpdated date DEFAULT NULL,
                                      TimeUpdated varchar(8) DEFAULT NULL,
                                      UserUpdatedKey varchar(10) DEFAULT NULL,
                                      PRIMARY KEY (`EmployeeKey`,`DeductionCode`)
);
CREATE INDEX KEY0 on PR_EmployeeDeduction (EmployeeKey, DeductionCode);
CREATE INDEX KEY1 on PR_EmployeeDeduction (DeductionCode, EmployeeKey);
