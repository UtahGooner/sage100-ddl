CREATE TABLE WO2_WorkOrderMaterialDetail
(
    WorkOrder              varchar(7)     DEFAULT NULL,
    PreviousIndexNumber    decimal(11, 0) DEFAULT NULL,
    LinkToNextLine         decimal(11, 0) DEFAULT NULL,
    Revision               char(3)        DEFAULT NULL,
    StepNumber             char(4)        DEFAULT NULL,
    UM                     char(4)        DEFAULT NULL,
    ItemDescription        char(30)       DEFAULT NULL,
    Whse                   char(3)        DEFAULT NULL,
    ComponentItemNumber    varchar(30)    DEFAULT NULL,
    QtyParent              decimal(15, 4) DEFAULT NULL,
    UMconversion           decimal(15, 4) DEFAULT NULL,
    UnitCost               decimal(15, 4) DEFAULT NULL,
    ScrapPercent           decimal(15, 4) DEFAULT NULL,
    ExtdQtyRequired        decimal(15, 4) DEFAULT NULL,
    QtyIssued              decimal(15, 4) DEFAULT NULL,
    QtyCommitted           decimal(15, 4) DEFAULT NULL,
    DirectCosts            decimal(15, 4) DEFAULT NULL,
    FixedOvhdCosts         decimal(15, 4) DEFAULT NULL,
    VariableOvhdCosts      decimal(15, 4) DEFAULT NULL,
    StdFixedOverheadAmount decimal(15, 4) DEFAULT NULL,
    StdVarOverheadAmount   decimal(15, 4) DEFAULT NULL
);
