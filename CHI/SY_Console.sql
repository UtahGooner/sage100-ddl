CREATE TABLE SY_Console
(
    WorkstationName  varchar(30) NOT NULL,
    SessionCounter   varchar(3)  NOT NULL,
    TaskKey          varchar(9)     DEFAULT NULL,
    UserKey          varchar(10)    DEFAULT NULL,
    ModuleCode       varchar(3)     DEFAULT NULL,
    ProgramName      varchar(30)    DEFAULT NULL,
    CompanyCode      varchar(3)     DEFAULT NULL,
    CompanyKey       varchar(10)    DEFAULT NULL,
    LauncherHwnd     decimal(10, 0) DEFAULT NULL,
    SessionHwnd      decimal(10, 0) DEFAULT NULL,
    ClientHwnd       decimal(10, 0) DEFAULT NULL,
    SessionPID       decimal(10, 0) DEFAULT NULL,
    SkipCheckForExit decimal(1, 0)  DEFAULT NULL,
    PRIMARY KEY (`WorkstationName`, `SessionCounter`)
);
CREATE INDEX KEY0 on SY_Console (WorkstationName, SessionCounter);
