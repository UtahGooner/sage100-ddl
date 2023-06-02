CREATE TABLE AR_CustomerDocuments (
    ARDivisionNo varchar(2) NOT NULL,
    CustomerNo varchar(20) NOT NULL,
    Document varchar(30) NOT NULL,
    PrintDocument varchar(1) DEFAULT NULL,
    EmailDocument varchar(1) DEFAULT NULL,
    FaxDocument varchar(1) DEFAULT NULL,
    DocumentPassword varchar(33) DEFAULT NULL,
    UseEmailAddressInDataEntry varchar(1) DEFAULT NULL,
    UseCustomerEmailAddress varchar(1) DEFAULT NULL,
    UseFaxNoInDataEntry varchar(1) DEFAULT NULL,
    UseCustomerFaxNo varchar(1) DEFAULT NULL,
    DateCreated date DEFAULT NULL,
    TimeCreated varchar(8) DEFAULT NULL,
    UserCreatedKey varchar(10) DEFAULT NULL,
    DateUpdated date DEFAULT NULL,
    TimeUpdated varchar(8) DEFAULT NULL,
    UserUpdatedKey varchar(10) DEFAULT NULL,
    PRIMARY KEY (`ARDivisionNo`,`CustomerNo`,`Document`)
)
