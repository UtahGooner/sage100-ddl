CREATE TABLE SY_Task
(
    ModuleNumber                varchar(2) NOT NULL,
    TaskOwner                   varchar(1) NOT NULL,
    DeveloperCode               varchar(3) NOT NULL,
    TaskID                      varchar(3) NOT NULL,
    TaskName                    varchar(40)  DEFAULT NULL,
    TaskDescription             varchar(100) DEFAULT NULL,
    ProgramName                 varchar(30)  DEFAULT NULL,
    TaskTypeKey                 varchar(2)   DEFAULT NULL,
    CodeCheckSum                varchar(16)  DEFAULT NULL,
    ModuleCode                  varchar(3)   DEFAULT NULL,
    Arguments                   TEXT         DEFAULT NULL,
    ExcludeFromRoles            varchar(1)   DEFAULT NULL,
    AvailableAtPeriodEnd        varchar(1)   DEFAULT NULL,
    DefaultAtPeriodEnd          varchar(1)   DEFAULT NULL,
    CanBeScheduled              varchar(1)   DEFAULT NULL,
    LegacyMenuPosition          varchar(8)   DEFAULT NULL,
    SecurityAlias               varchar(9)   DEFAULT NULL,
    AvailableForPaperlessOffice varchar(1)   DEFAULT NULL,
    ExcludeFromPlatforms        varchar(2)   DEFAULT NULL,
    SecurityOptionGroup         varchar(20)  DEFAULT NULL,
    SecurityOptionDesc          TEXT         DEFAULT NULL,
    PRIMARY KEY (`ModuleNumber`, `TaskOwner`, `DeveloperCode`, `TaskID`)
);
CREATE INDEX KEY0 on SY_Task (ModuleNumber, TaskOwner, DeveloperCode, TaskID);
CREATE INDEX KEY1 on SY_Task (ProgramName);
CREATE INDEX KEY2 on SY_Task (TaskName);
CREATE INDEX KEY3 on SY_Task (ModuleCode, TaskTypeKey, TaskOwner, DeveloperCode, TaskID);
CREATE INDEX KEY4 on SY_Task (ProgramName, ModuleNumber, TaskOwner, DeveloperCode, TaskID);
CREATE INDEX KEY5 on SY_Task (LegacyMenuPosition, ModuleNumber, TaskOwner, DeveloperCode, TaskID);
CREATE INDEX KEY6 on SY_Task (CanBeScheduled, ModuleNumber, TaskOwner, DeveloperCode, TaskID);
CREATE INDEX KEY7 on SY_Task (ModuleCode, ProgramName);
