@interface TSTPivotOwner
+ (id)enclosingGroupNameForGroupCellValue:(id)value;
- (BOOL)groupingColumnUidExists:(TSKUIDStruct)exists;
- (BOOL)p_commitSort;
- (BOOL)p_commitSortAsync;
- (BOOL)requiresUnwrapping:(TSUCellCoord)unwrapping;
- (TSCECellTractRef)pivotSourceBodyTract;
- (TSCECellTractRef)pivotSourceHeaderTract;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)ownerUID;
- (TSKUIDStruct)pivotAggregateRuleChangeUID;
- (TSKUIDStruct)pivotDataRefreshUID;
- (TSKUIDStruct)pivotRowColumnRuleChangeUID;
- (TSKUIDStruct)pivotSourceTableUID;
- (TSKUIDStructTract)pivotSourceBodyUidTract;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)p_sortColumnsInMode:(SEL)mode sortDirection:(unint64_t)direction rowIndex:(int)index level:(unsigned int)level aggregateIndex:(unsigned __int8)aggregateIndex resetLabels:(unint64_t)labels;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)p_sortRowsInMode:(SEL)mode sortDirection:(unint64_t)direction columnIndex:(int)index level:(unsigned int)level aggregateIndex:(unsigned __int8)aggregateIndex resetLabels:(unint64_t)labels;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)pivotColumnUIDs;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)pivotRowUIDs;
- (TSTFormula)pivotSourceBodyReferenceEmbeddedInFormula;
- (TSTPivotGroupingColumnOptionsMap)groupingColumnOptionsMapCopy;
- (TSTPivotOwner)initWithTableModel:(id)model;
- (TSUModelColumnIndex)baseColumnIndexForGroupingAtColumnIndex:(unsigned __int16)index;
- (TSUModelColumnIndex)baseColumnIndexForGroupingAtRowIndex:(unsigned int)index;
- (id).cxx_construct;
- (id)enclosingGroupNameForColumnIndex:(unsigned __int16)index level:(unsigned __int8)level;
- (id)enclosingGroupNameForRowIndex:(unsigned int)index level:(unsigned __int8)level;
- (id)filterSetForPivotDataTable:(id)table;
- (id)hiddenStatesForPivotDataTable:(id)table;
- (id)indexesForLeadingColumns;
- (id)indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForLeadingRows;
- (id)indexesForLeadingRowsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)level;
- (id)indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)level;
- (id)lowestCategoryLevelAsLeadingColumnGroupName:(unsigned __int16)name;
- (id)lowestCategoryLevelAsLeadingRowGroupName:(unsigned int)name;
- (id)p_formulaForCellCoord:(TSKUIDStructCoord *)x2_0 runningTotalContext:(id)context;
- (id)p_referenceNodeFromTractRef:(id)ref;
- (id)pivotOptionsForColumnGroupsAtLevel:(unsigned __int8)level;
- (id)pivotOptionsForGroupingColumn:(id)column;
- (id)pivotOptionsForRowGroupsAtLevel:(unsigned __int8)level;
- (id)pivotSourceRangeName;
- (int)linkToCalcEngine:(id)engine forTableModel:(id)model;
- (int)registerWithCalcEngine:(id)engine forTableModel:(id)model baseOwnerUID:(const TSKUIDStruct *)d;
- (unsigned)columnGroupLevelForHeaderRow:(TSUViewRowIndex)row;
- (unsigned)rowGroupLevelForHeaderColumn:(TSUViewColumnIndex)column;
- (void)clearAllPivotHiddenAndFiltered:(BOOL)filtered;
- (void)collapseExpandChanged:(id)changed forState:(id)state;
- (void)didChangeTableName:(id)name fromTableName:(id)tableName forTableUID:(TSKUIDStruct)d;
- (void)documentLocaleDidChange;
- (void)filterSetUpdated;
- (void)handlePivotSorting:(BOOL)sorting;
- (void)invalidateForCalcEngine:(id)engine;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_ensureHiddenStatesExistsWithPivotDataTable:(id)table;
- (void)p_resetAllHiddenTotals;
- (void)p_resetHiddenGrandTotals;
- (void)p_resetHiddenTotalsForGroupingColumnUid:(const TSKUIDStruct *)uid hideTotals:(BOOL)totals;
- (void)p_resetSortingStructures;
- (void)p_resetSummaryFormulasForRunningTotalsOnly:(BOOL)only preservingStyles:(BOOL)styles;
- (void)p_setEmptyPivotTableLabels;
- (void)p_setPivotHeaderCellsResettingPivotHidden:(BOOL)hidden preservingStyles:(BOOL)styles;
- (void)p_sortFullTable:(unint64_t)table;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)resetBaseOwnerUID;
- (void)resetCellsForNewPivotOrder;
- (void)resetCellsForNewPivotRules;
- (void)rewriteForPaste;
- (void)saveToArchiver:(id)archiver;
- (void)setFilterSet:(id)set forPivotDataTable:(id)table;
- (void)setHidingGrandTotalColumns:(BOOL)columns;
- (void)setHidingGrandTotalRows:(BOOL)rows;
- (void)setPivotSourceBodyTract:(id)tract;
- (void)setPivotSourceBodyUidTract:(TSKUIDStructTract *)tract;
- (void)setPivotSourceHeaderTract:(id)tract;
- (void)setPivotSourceTableName:(id)name;
- (void)setPivotSourceTableUID:(TSKUIDStruct)d;
- (void)setupAfterUnarchiveForPivotTable:(const TSKUIDStruct *)table pivotDataTable:(id)dataTable;
- (void)sortColumnsByRowIndex:(unsigned int)index level:(unsigned __int8)level aggregateIndex:(unint64_t)aggregateIndex sortDirection:(int)direction;
- (void)sortRowsByColumnIndex:(unsigned int)index level:(unsigned __int8)level aggregateIndex:(unint64_t)aggregateIndex sortDirection:(int)direction;
- (void)unregisterFromCalcEngine;
- (void)upgradeSourceTractsForAbsoluteRefs;
- (void)upgradeSourceTractsForHostCellChange;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSTPivotOwner

- (TSTPivotOwner)initWithTableModel:(id)model
{
  modelCopy = model;
  v8 = objc_msgSend_context(modelCopy, v5, v6, v7);
  v52.receiver = self;
  v52.super_class = TSTPivotOwner;
  v9 = [(TSTPivotOwner *)&v52 initWithContext:v8];

  if (v9)
  {
    v9->_tableModel = modelCopy;
    *&v51 = objc_msgSend_tableUID(modelCopy, v10, v11, v12);
    *(&v51 + 1) = v13;
    v9->_ownerUID._lower = sub_2212C4930(&v51, 0x11, v14, v15);
    v9->_ownerUID._upper = v16;
    v17 = [TSTFormulaStore alloc];
    v19 = objc_msgSend_initWithOwnerUID_(v17, v18, v9->_ownerUID._lower, v9->_ownerUID._upper);
    formulaStore = v9->_formulaStore;
    v9->_formulaStore = v19;

    objc_msgSend_setUsesOnlyFixedCoords_(v9->_formulaStore, v21, 1, v22);
    v23 = [TSTGroupBySet alloc];
    *&v51 = objc_msgSend_tableUID(modelCopy, v24, v25, v26);
    *(&v51 + 1) = v27;
    v29 = objc_msgSend_initWithPivotTableUID_(v23, v27, &v51, v28);
    groupBySet = v9->_groupBySet;
    v9->_groupBySet = v29;

    v31 = [TSTPivotGroupingColumnOptionsMap alloc];
    v35 = objc_msgSend_context(modelCopy, v32, v33, v34);
    v38 = objc_msgSend_initWithContext_(v31, v36, v35, v37);
    groupingColumnOptionsMap = v9->_groupingColumnOptionsMap;
    v9->_groupingColumnOptionsMap = v38;

    v43 = objc_msgSend_calcEngine(modelCopy, v40, v41, v42);
    v47 = objc_msgSend_tableNameChangeDistributor(v43, v44, v45, v46);
    objc_msgSend_addReceiver_(v47, v48, v9, v49);
  }

  return v9;
}

- (void)resetBaseOwnerUID
{
  tableModel = self->_tableModel;
  if (tableModel)
  {
    *&v15 = objc_msgSend_tableUID(tableModel, a2, v2, v3);
    *(&v15 + 1) = v6;
    self->_ownerUID._lower = sub_2212C4930(&v15, 0x11, v7, v8);
    self->_ownerUID._upper = v9;
    v12 = objc_msgSend_tableUID(self->_tableModel, v9, v10, v11);
    objc_msgSend_setPivotTableUID_(self->_groupBySet, v13, v12, v13);
    objc_msgSend_setFormulaOwnerUID_(self->_formulaStore, v14, self->_ownerUID._lower, self->_ownerUID._upper);
  }
}

- (int)registerWithCalcEngine:(id)engine forTableModel:(id)model baseOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  modelCopy = model;
  if (self->_calcEngine)
  {
    v13 = 1;
  }

  else
  {
    self->_calcEngine = engineCopy;
    tableModel = self->_tableModel;
    if (!tableModel)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotOwner registerWithCalcEngine:forTableModel:baseOwnerUID:]", v11);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 156, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
      tableModel = self->_tableModel;
    }

    v24 = objc_msgSend_tableInfo(tableModel, v9, v10, v11);
    v28 = objc_msgSend_translator(v24, v25, v26, v27);
    objc_msgSend_flushCachedIndexSets(v28, v29, v30, v31);

    objc_msgSend_resetBaseOwnerUID(self, v32, v33, v34);
    objc_msgSend_registerWithCalcEngine_baseOwnerUID_(self->_groupBySet, v35, engineCopy, d);
    objc_msgSend_setCalcEngine_(self->_formulaStore, v36, engineCopy, v37);
    LOWORD(v63) = 17;
    v13 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(self->_calcEngine, v38, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, d->_lower, d->_upper, v63);
    if (!v13)
    {
      v42 = objc_msgSend_tableInfo(self->_tableModel, v39, v40, v41);
      isAPivotTable = objc_msgSend_isAPivotTable(v42, v43, v44, v45);

      if (isAPivotTable)
      {
        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v66, 0, 1);
        v66.var1 = 1;
        v50 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v47, v48, v49);
        objc_msgSend_summaryModelIsCleanForSortPrecedentForTableUID_(TSCEHauntedOwner, v51, d, v52);
        objc_msgSend_insertCellRef_(v50, v53, v65, v54);
        v65[0] = 0x300000000;
        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v64, &v66);
        objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(engineCopy, v55, v65, &self->_ownerUID, v50, &v64);

        objc_msgSend_registerAllFormulaToCalculationEngine(self->_formulaStore, v56, v57, v58);
      }
    }

    v59 = objc_msgSend_tableNameChangeDistributor(self->_calcEngine, v39, v40, v41);
    objc_msgSend_addReceiverIfMissing_(v59, v60, self, v61);
  }

  return v13;
}

- (int)linkToCalcEngine:(id)engine forTableModel:(id)model
{
  engineCopy = engine;
  modelCopy = model;
  if (self->_calcEngine)
  {
    v10 = 0;
  }

  else
  {
    self->_calcEngine = engineCopy;
    if (!self->_tableModel)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTPivotOwner linkToCalcEngine:forTableModel:]", v8);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 192, 0, "invalid nil value for '%{public}s'", "_tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    objc_msgSend_setCalcEngine_(self->_formulaStore, v7, engineCopy, v8);
    v23 = objc_msgSend_tableInfo(self->_tableModel, v20, v21, v22);
    v27 = objc_msgSend_translator(v23, v24, v25, v26);
    objc_msgSend_flushCachedIndexSets(v27, v28, v29, v30);

    calcEngine = self->_calcEngine;
    lower = self->_ownerUID._lower;
    upper = self->_ownerUID._upper;
    v37 = objc_msgSend_tableUID(self->_tableModel, v34, v35, v36);
    LOWORD(v55) = 17;
    v10 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(calcEngine, v38, lower, upper, self, 0, v37, v38, v55);
    v42 = objc_msgSend_tableInfo(modelCopy, v39, v40, v41);
    isAPivotTable = objc_msgSend_isAPivotTable(v42, v43, v44, v45);
    if (v10)
    {
      v47 = 0;
    }

    else
    {
      v47 = isAPivotTable;
    }

    if (v47 == 1)
    {
      v10 = objc_msgSend_linkToCalcEngine_(self->_groupBySet, v48, engineCopy, v50);
    }

    v51 = objc_msgSend_tableNameChangeDistributor(self->_calcEngine, v48, v49, v50);
    objc_msgSend_addReceiverIfMissing_(v51, v52, self, v53);
  }

  return v10;
}

- (void)unregisterFromCalcEngine
{
  v5 = objc_msgSend_tableNameChangeDistributor(self->_calcEngine, a2, v2, v3);
  objc_msgSend_removeReceiver_(v5, v6, self, v7);

  objc_msgSend_unregisterFromCalcEngine(self->_groupBySet, v8, v9, v10);
  objc_msgSend_unregisterOwner_(self->_calcEngine, v11, self->_ownerUID._lower, self->_ownerUID._upper);
  objc_msgSend_setCalcEngine_(self->_formulaStore, v12, 0, v13);
  self->_calcEngine = 0;
}

- (TSCECellTractRef)pivotSourceBodyTract
{
  v7 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a2, 1, v2);
  if (!v7)
  {
    v20 = 0;
    goto LABEL_14;
  }

  calcEngine = self->_calcEngine;
  v33.coordinate = 0;
  v33._tableUID._lower = objc_msgSend_ownerUID(self, v4, v5, v6);
  v33._tableUID._upper = v9;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v41, calcEngine, &v33);
  v13 = objc_msgSend_const_astNodeArray(v7, v10, v11, v12);
  sub_2212BB9E8(&v33, v13, &v41, 0);
  TSCEASTStreamIterator::rewrite(&v33, v14, v15, v16);
  if (v34 != 1)
  {
    v21 = [TSCECellTractRef alloc];
    v23 = objc_msgSend_initWithTopLeft_bottomRight_tableUID_(v21, v22, &unk_2217E14BC, &unk_2217E14BC, &self->_pivotSourceTableUID);
LABEL_8:
    v20 = v23;
    goto LABEL_9;
  }

  v17 = v35;
  v20 = v17;
  if (!v17)
  {
    TSUCellRectFromTSCERangeCoordinate();
    v31.origin = v24;
    v31.size = v25;
    TSCERangeRef::TSCERangeRef(&v32, &v31, &self->_pivotSourceTableUID);
    LOBYTE(v31.origin.row) = 15;
    TSCERangeRef::setPreserveFlags(&v32, &v31);
    v26 = [TSCECellTractRef alloc];
    v23 = objc_msgSend_initWithRangeRef_(v26, v27, &v32, v28);
    goto LABEL_8;
  }

  objc_msgSend_setPreserveFlags_(v17, v18, 15, v19);
LABEL_9:
  v33.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v33, v29);
LABEL_14:

  return v20;
}

- (void)setPivotSourceBodyTract:(id)tract
{
  tractCopy = tract;
  if (tractCopy)
  {
    v7 = [TSCEFormulaObject alloc];
    TSCEFormulaCreationMagic::absColonTractRef(tractCopy, &unk_2217E14B4, &v12);
    TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v12, v14, &v13);
    v10 = objc_msgSend_initWithCreator_(v7, v8, &v13, v9);

    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v11, v10, 1);
  }

  else
  {
    objc_msgSend_clearFormulaAtIndex_(self->_formulaStore, v4, 1, v5);
  }
}

- (id)p_referenceNodeFromTractRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (refCopy)
  {
    v29 = objc_msgSend_tableUID(refCopy, v5, v6, v7);
    v30 = v9;
    v10 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v9, &v29, self->_calcEngine);
    v14 = objc_msgSend_columnRowUIDMap(v10, v11, v12, v13);
    v17 = objc_msgSend_uidRectRefForCellTractRef_(v14, v15, v8, v16);

    objc_msgSend_setCalcEngine_(v17, v18, self->_calcEngine, v19);
    v20 = [TSTReferenceNode alloc];
    v24 = objc_msgSend_context(self, v21, v22, v23);
    calcEngine = self->_calcEngine;
    v30 = 0;
    v31 = 0;
    v29 = 0x7FFF7FFFFFFFLL;
    v27 = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v20, v26, v24, calcEngine, v17, &v29, 0, 0);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (TSTFormula)pivotSourceBodyReferenceEmbeddedInFormula
{
  v5 = objc_msgSend_pivotSourceBodyTract(self, a2, v2, v3);
  if (v5)
  {
    v6 = [TSTFormula alloc];
    calcEngine = self->_calcEngine;
    v10 = objc_msgSend_p_referenceNodeFromTractRef_(self, v8, v5, v9);
    v14 = objc_msgSend_tableInfo(self->_tableModel, v11, v12, v13);
    v16 = objc_msgSend_initWithCalculationEngine_expressionTree_baseHostCell_hostTable_(v6, v15, calcEngine, v10, 0x7FFF7FFFFFFFLL, v14);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)pivotSourceRangeName
{
  v5 = objc_msgSend_pivotSourceBodyTract(self, a2, v2, v3);
  v8 = objc_msgSend_pivotSourceRangeNameWithTractRef_(self, v6, v5, v7);

  return v8;
}

- (TSCECellTractRef)pivotSourceHeaderTract
{
  v7 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a2, 2, v2);
  if (!v7)
  {
    goto LABEL_9;
  }

  calcEngine = self->_calcEngine;
  v27.coordinate = 0;
  v27._tableUID._lower = objc_msgSend_ownerUID(self, v4, v5, v6);
  v27._tableUID._upper = v9;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v35, calcEngine, &v27);
  v13 = objc_msgSend_const_astNodeArray(v7, v10, v11, v12);
  sub_2212BB9E8(&v27, v13, &v35, 1);
  TSCEASTStreamIterator::rewrite(&v27, v14, v15, v16);
  v17 = v28;
  if (v28 == 1)
  {
    TSUCellRectFromTSCERangeCoordinate();
    v25.origin = v18;
    v25.size = v19;
    TSCERangeRef::TSCERangeRef(&v26, &v25, &self->_pivotSourceTableUID);
    LOBYTE(v25.origin.row) = 15;
    TSCERangeRef::setPreserveFlags(&v26, &v25);
    v20 = [TSCECellTractRef alloc];
    calcEngine = objc_msgSend_initWithRangeRef_(v20, v21, &v26, v22);
  }

  v27.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v27, v23);
  if ((v17 & 1) == 0)
  {
LABEL_9:
    calcEngine = 0;
  }

  return calcEngine;
}

- (void)setPivotSourceHeaderTract:(id)tract
{
  tractCopy = tract;
  v8 = tractCopy;
  if (tractCopy)
  {
    if ((objc_msgSend_spansAllColumns(tractCopy, v5, v6, v7) & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTPivotOwner setPivotSourceHeaderTract:]", v11);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 346, 0, "pivot source header range expected to span all columns");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    }

    if ((objc_msgSend_spansAllColumns(v8, v9, v10, v11) & 1) == 0)
    {
      objc_msgSend_setSpansAllColumns_(v8, v21, 1, v22);
    }

    v23 = [TSCEFormulaObject alloc];
    TSCEFormulaCreationMagic::absColonTractRef(v8, &unk_2217E14B4, &v28);
    TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v28, v30, &v29);
    v26 = objc_msgSend_initWithCreator_(v23, v24, &v29, v25);

    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v27, v26, 2);
  }

  else
  {
    objc_msgSend_clearFormulaAtIndex_(self->_formulaStore, v5, 2, v7);
  }
}

- (TSKUIDStructTract)pivotSourceBodyUidTract
{
  *&retstr->_colIdList.__cap_ = 0u;
  *&retstr->_rowIdList.__end_ = 0u;
  *&retstr->_colIdList.__begin_ = 0u;
  v9 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a3, 1, v3);
  if (v9)
  {
    calcEngine = self->_calcEngine;
    v55.coordinate = 0;
    v55._tableUID._lower = objc_msgSend_ownerUID(self, v6, v7, v8);
    v55._tableUID._upper = v11;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v63, calcEngine, &v55);
    v15 = objc_msgSend_const_astNodeArray(v9, v12, v13, v14);
    sub_2212BB9E8(&v55, v15, &v63, 0);
    TSCEASTStreamIterator::rewrite(&v55, v16, v17, v18);
    if (v56 == 1)
    {
      v19 = v57;
      if (v19)
      {
        v22 = v19;
        objc_msgSend_setPreserveFlags_(v19, v20, 15, v21);
      }

      else
      {
        TSUCellRectFromTSCERangeCoordinate();
        v52.origin = v28;
        v52.size = v29;
        TSCERangeRef::TSCERangeRef(v54, &v52, &self->_pivotSourceTableUID);
        LOBYTE(v52.origin.row) = 15;
        TSCERangeRef::setPreserveFlags(v54, &v52);
        v30 = [TSCECellTractRef alloc];
        v22 = objc_msgSend_initWithRangeRef_(v30, v31, v54, v32);
      }

      v33 = objc_msgSend_tableModel(self, v23, v24, v25);
      v37 = objc_msgSend_calcEngine(v33, v34, v35, v36);
      v52.origin = objc_msgSend_tableUID(v22, v38, v39, v40);
      v52.size = v41;
      if (v22)
      {
        objc_msgSend_uidTractWithCalcEngine_hostTableUID_(v22, v41, v37, &v52);
      }

      else
      {
        memset(v54, 0, sizeof(v54));
      }

      v42 = *v54;
      retstr->_colIdList.__begin_ = *v54;
      v48 = *&v54[8];
      *&retstr->_colIdList.__end_ = *&v54[8];
      *v54 = 0;
      *&v54[8] = 0;
      v43 = *&v54[40];
      *&retstr->_rowIdList.__begin_ = *&v54[24];
      retstr->_rowIdList.__cap_ = v43;
      memset(&v54[16], 0, 32);

      if (v60 != v61 || v58 != v59)
      {
        v52.origin = 0;
        v52.size = 0;
        v53 = 0;
        sub_221086EBC(&v52, v42, v48, (v48 - v42) >> 4);
        __p = 0;
        v50 = 0;
        v51 = 0;
        begin = retstr->_rowIdList.__begin_;
        sub_221086EBC(&__p, begin, retstr->_rowIdList.__end_, retstr->_rowIdList.__end_ - begin);
        sub_2210F0C88(&v52, *&v52.size, v60, v61, (v61 - v60) >> 4);
        sub_2210F0C88(&__p, v50, v58, v59, (v59 - v58) >> 4);
        sub_2210BBBE8(v54, &v52, &__p);
        if (retstr->_colIdList.__begin_)
        {
          operator delete(retstr->_colIdList.__begin_);
          retstr->_colIdList.__begin_ = 0;
          retstr->_colIdList.__end_ = 0;
          retstr->_colIdList.__cap_ = 0;
        }

        *&retstr->_colIdList.__begin_ = *v54;
        retstr->_colIdList.__cap_ = *&v54[16];
        memset(v54, 0, 24);
        if (begin)
        {
          retstr->_rowIdList.__end_ = begin;
          operator delete(begin);
          v45 = *v54;
        }

        else
        {
          v45 = 0;
        }

        *&retstr->_rowIdList.__begin_ = *&v54[24];
        retstr->_rowIdList.__cap_ = *&v54[40];
        memset(&v54[24], 0, 24);
        if (v45)
        {
          *&v54[8] = v45;
          operator delete(v45);
        }

        if (__p)
        {
          v50 = __p;
          operator delete(__p);
        }

        if (v52.origin)
        {
          v52.size = v52.origin;
          operator delete(*&v52.origin);
        }
      }
    }

    else
    {
      sub_2210BBBE8(v54, &v60, &v58);
      v26 = *&v54[16];
      *&retstr->_colIdList.__begin_ = *v54;
      retstr->_colIdList.__cap_ = v26;
      v27 = *&v54[40];
      *&retstr->_rowIdList.__begin_ = *&v54[24];
      retstr->_rowIdList.__cap_ = v27;
    }

    v55.coordinate = &unk_2834A3EA8;

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v55, v46);
  }

  return result;
}

- (void)setPivotSourceBodyUidTract:(TSKUIDStructTract *)tract
{
  if (tract->_colIdList.__begin_ == tract->_colIdList.__end_ && tract->_rowIdList.__begin_ == tract->_rowIdList.__end_)
  {

    objc_msgSend_setPivotSourceBodyTract_(self, a2, 0, v3);
  }

  else
  {
    v18.var0 = objc_msgSend_pivotSourceTableUID(self, a2, tract, v3);
    v18.var1 = v6;
    v7 = objc_msgSend_createFormulaForUIDTract_tableUID_(TSTFormulaStore, v6, tract, &v18);
    calcEngine = self->_calcEngine;
    v17.coordinate = 0;
    v17._tableUID._lower = objc_msgSend_ownerUID(self, v9, v10, v11);
    v17._tableUID._upper = v12;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v18, calcEngine, &v17);
    v15 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v7, v13, &v18, v14);

    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v16, v15, 1);
  }
}

- (void)upgradeSourceTractsForHostCellChange
{
  v7 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a2, 2, v2);
  if (v7)
  {
    objc_msgSend_willModifyForUpgrade(self, v4, v5, v6);
    calcEngine = self->_calcEngine;
    v61.coordinate = 0;
    v61._tableUID._lower = objc_msgSend_ownerUID(self, v9, v10, v11);
    v61._tableUID._upper = v12;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v69, calcEngine, &v61);
    v16 = objc_msgSend_const_astNodeArray(v7, v13, v14, v15);
    sub_2212BB9E8(&v61, v16, &v69, 1);
    TSCEASTStreamIterator::rewrite(&v61, v17, v18, v19);
    if (v62 == 1)
    {
      TSUCellRectFromTSCERangeCoordinate();
      v59.origin = v20;
      v59.size = v21;
      TSCERangeRef::TSCERangeRef(&v60, &v59, &self->_pivotSourceTableUID);
      LOBYTE(v59.origin.row) = 15;
      TSCERangeRef::setPreserveFlags(&v60, &v59);
      v22 = [TSCECellTractRef alloc];
      v25 = objc_msgSend_initWithRangeRef_(v22, v23, &v60, v24);
      objc_msgSend_setPreserveFlags_(v25, v26, 15, v27);
      objc_msgSend_setPivotSourceHeaderTract_(self, v28, v25, v29);
    }

    v61.coordinate = &unk_2834A3EA8;

    if (__p)
    {
      v67 = __p;
      operator delete(__p);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v61, v30);
  }

  v34 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, v4, 1, v6);
  if (v34)
  {
    objc_msgSend_willModifyForUpgrade(self, v31, v32, v33);
    v35 = self->_calcEngine;
    v39 = objc_msgSend_ownerUID(self, v36, v37, v38);
    v61.coordinate = 0;
    v61._tableUID._lower = v39;
    v61._tableUID._upper = v40;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v69, v35, &v61);
    v44 = objc_msgSend_const_astNodeArray(v34, v41, v42, v43);
    sub_2212BB9E8(&v61, v44, &v69, 1);
    TSCEASTStreamIterator::rewrite(&v61, v45, v46, v47);
    if (v62 == 1)
    {
      TSUCellRectFromTSCERangeCoordinate();
      v59.origin = v48;
      v59.size = v49;
      TSCERangeRef::TSCERangeRef(&v60, &v59, &self->_pivotSourceTableUID);
      LOBYTE(v59.origin.row) = 15;
      TSCERangeRef::setPreserveFlags(&v60, &v59);
      v50 = [TSCECellTractRef alloc];
      v53 = objc_msgSend_initWithRangeRef_(v50, v51, &v60, v52);
      objc_msgSend_setPreserveFlags_(v53, v54, 15, v55);
      objc_msgSend_setPivotSourceBodyTract_(self, v56, v53, v57);
    }

    v61.coordinate = &unk_2834A3EA8;

    if (__p)
    {
      v67 = __p;
      operator delete(__p);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v61, v58);
  }
}

- (void)upgradeSourceTractsForAbsoluteRefs
{
  v7 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, a2, 2, v2);
  if (v7)
  {
    objc_msgSend_willModifyForUpgrade(self, v4, v5, v6);
    v10 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v8, 2, v9);
    calcEngine = self->_calcEngine;
    v67.coordinate = v10;
    v67._tableUID._lower = objc_msgSend_ownerUID(self, v12, v13, v14);
    v67._tableUID._upper = v15;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v75, calcEngine, &v67);
    v19 = objc_msgSend_const_astNodeArray(v7, v16, v17, v18);
    sub_2212BB9E8(&v67, v19, &v75, 1);
    TSCEASTStreamIterator::rewrite(&v67, v20, v21, v22);
    if (v68 == 1)
    {
      TSUCellRectFromTSCERangeCoordinate();
      v65.origin = v23;
      v65.size = v24;
      TSCERangeRef::TSCERangeRef(&v66, &v65, &self->_pivotSourceTableUID);
      LOBYTE(v65.origin.row) = 15;
      TSCERangeRef::setPreserveFlags(&v66, &v65);
      v25 = [TSCECellTractRef alloc];
      v28 = objc_msgSend_initWithRangeRef_(v25, v26, &v66, v27);
      objc_msgSend_setPreserveFlags_(v28, v29, 15, v30);
      objc_msgSend_setPivotSourceHeaderTract_(self, v31, v28, v32);
    }

    v67.coordinate = &unk_2834A3EA8;

    if (__p)
    {
      v73 = __p;
      operator delete(__p);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v67, v33);
  }

  v37 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, v4, 1, v6);
  if (v37)
  {
    objc_msgSend_willModifyForUpgrade(self, v34, v35, v36);
    v40 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v38, 1, v39);
    v41 = self->_calcEngine;
    v45 = objc_msgSend_ownerUID(self, v42, v43, v44);
    v67.coordinate = v40;
    v67._tableUID._lower = v45;
    v67._tableUID._upper = v46;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v75, v41, &v67);
    v50 = objc_msgSend_const_astNodeArray(v37, v47, v48, v49);
    sub_2212BB9E8(&v67, v50, &v75, 0);
    TSCEASTStreamIterator::rewrite(&v67, v51, v52, v53);
    if (v68 == 1)
    {
      TSUCellRectFromTSCERangeCoordinate();
      v65.origin = v54;
      v65.size = v55;
      TSCERangeRef::TSCERangeRef(&v66, &v65, &self->_pivotSourceTableUID);
      LOBYTE(v65.origin.row) = 15;
      TSCERangeRef::setPreserveFlags(&v66, &v65);
      v56 = [TSCECellTractRef alloc];
      v59 = objc_msgSend_initWithRangeRef_(v56, v57, &v66, v58);
      objc_msgSend_setPreserveFlags_(v59, v60, 15, v61);
      objc_msgSend_setPivotSourceBodyTract_(self, v62, v59, v63);
    }

    v67.coordinate = &unk_2834A3EA8;

    if (__p)
    {
      v73 = __p;
      operator delete(__p);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v67, v64);
  }
}

- (void)p_ensureHiddenStatesExistsWithPivotDataTable:(id)table
{
  tableCopy = table;
  v7 = objc_msgSend_hiddenStates(self->_groupBySet, v4, v5, v6);

  if (!v7)
  {
    v11 = objc_msgSend_hiddenStatesOwner(tableCopy, v8, v9, v10);
    v15 = objc_msgSend_hiddenStates(v11, v12, v13, v14);
    objc_msgSend_setHiddenStates_(self->_groupBySet, v16, v15, v17);

    v21 = objc_msgSend_hiddenStates(self->_groupBySet, v18, v19, v20);

    if (!v21)
    {
      v22 = [TSTHiddenStates alloc];
      v26 = objc_msgSend_hiddenStatesOwner(tableCopy, v23, v24, v25);
      v29 = objc_msgSend_initWithHiddenStatesOwner_(v22, v27, v26, v28);
      objc_msgSend_setHiddenStates_(self->_groupBySet, v30, v29, v31);
    }
  }
}

- (id)hiddenStatesForPivotDataTable:(id)table
{
  tableCopy = table;
  objc_msgSend_p_ensureHiddenStatesExistsWithPivotDataTable_(self, v5, tableCopy, v6);
  v10 = objc_msgSend_hiddenStates(self->_groupBySet, v7, v8, v9);

  return v10;
}

- (id)filterSetForPivotDataTable:(id)table
{
  tableCopy = table;
  objc_msgSend_p_ensureHiddenStatesExistsWithPivotDataTable_(self, v5, tableCopy, v6);
  v10 = objc_msgSend_hiddenStates(self->_groupBySet, v7, v8, v9);
  v14 = objc_msgSend_filterSetForRows(v10, v11, v12, v13);

  return v14;
}

- (void)setFilterSet:(id)set forPivotDataTable:(id)table
{
  setCopy = set;
  tableCopy = table;
  objc_msgSend_p_ensureHiddenStatesExistsWithPivotDataTable_(self, v7, tableCopy, v8);
  v12 = objc_msgSend_hiddenStates(self->_groupBySet, v9, v10, v11);
  objc_msgSend_setFilterSetForRows_(v12, v13, setCopy, v14);

  v18 = objc_msgSend_hiddenStates(self->_groupBySet, v15, v16, v17);
  objc_msgSend_filterSetUpdated(v18, v19, v20, v21);

  if (!setCopy || !objc_msgSend_ruleCount(setCopy, v22, v23, v24) || (objc_msgSend_isEnabled(setCopy, v22, v23, v24) & 1) == 0)
  {
    v25 = objc_msgSend_hiddenStates(self->_groupBySet, v22, v23, v24);
    objc_msgSend_clearAllFiltered(v25, v26, v27, v28);
  }
}

- (void)filterSetUpdated
{
  v7 = objc_msgSend_hiddenStates(self->_groupBySet, a2, v2, v3);
  objc_msgSend_filterSetUpdated(v7, v4, v5, v6);
}

- (void)setPivotSourceTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  objc_msgSend_willModify(self, a2, d._lower, d._upper);
  self->_pivotSourceTableUID._lower = lower;
  self->_pivotSourceTableUID._upper = upper;
  formulaStore = self->_formulaStore;
  if (lower | upper)
  {
    v10 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(formulaStore, v6, 0, 0x100000001, 0);
    objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v9, v10, 0);
  }

  else
  {

    objc_msgSend_clearFormulaAtIndex_(formulaStore, v6, 0, v7);
  }
}

- (void)setPivotSourceTableName:(id)name
{
  nameCopy = name;
  objc_msgSend_willModify(self, v4, v5, v6);
  v10 = objc_msgSend_copy(nameCopy, v7, v8, v9);
  pivotSourceTableName = self->_pivotSourceTableName;
  self->_pivotSourceTableName = v10;
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  engineCopy = engine;
  v44 = 0;
  v45 = 0;
  v42.var0 = objc_msgSend_pivotSourceTableUID(self, v7, v8, v9);
  v42.var1 = v10;
  v11 = sub_221119F90(map, &v42);
  if (v11)
  {
    v13 = v11[4];
    v14 = v11[5];
    v44 = v13;
    v45 = v14;
    if (v13 | v14)
    {
      objc_msgSend_setPivotSourceTableUID_(self, v12, v13, v14);
      v16 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v15, &v44, engineCopy);
      v20 = v16;
      if (v16)
      {
        v21 = objc_msgSend_tableName(v16, v17, v18, v19);
        objc_msgSend_setPivotSourceTableName_(self, v22, v21, v23);
      }

      v43 = 0;
      v27 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, v17, 1, v19);
      if (v27)
      {
        v41.coordinate = 0;
        v41._tableUID._lower = objc_msgSend_ownerUID(self, v24, v25, v26);
        v41._tableUID._upper = v28;
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v42, engineCopy, &v41);
        v31 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v27, v29, map, &v42, &v43);
        if ((v43 & 1) == 0)
        {
          objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v30, v31, 1);
        }
      }

      v43 = 0;
      v32 = objc_msgSend_formulaObjectAtIndex_(self->_formulaStore, v24, 2, v26);

      if (v32)
      {
        v36 = objc_msgSend_ownerUID(self, v33, v34, v35);
        v41.coordinate = 0;
        v41._tableUID._lower = v36;
        v41._tableUID._upper = v37;
        TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v42, engineCopy, &v41);
        v40 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(v32, v38, map, &v42, &v43);
        if ((v43 & 1) == 0)
        {
          objc_msgSend_setFormulaObject_atIndex_(self->_formulaStore, v39, v40, 2);
        }
      }
    }
  }
}

- (TSTPivotGroupingColumnOptionsMap)groupingColumnOptionsMapCopy
{
  v4 = objc_msgSend_copy(self->_groupingColumnOptionsMap, a2, v2, v3);

  return v4;
}

- (id)pivotOptionsForGroupingColumn:(id)column
{
  columnCopy = column;
  groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
  v9 = objc_msgSend_groupingColumnUid(columnCopy, v6, v7, v8);
  v11 = objc_msgSend_pivotOptionsForUID_(groupingColumnOptionsMap, v10, v9, v10);

  return v11;
}

- (id)pivotOptionsForColumnGroupsAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_columnGroupings(self, a2, level, v3);
  v10 = objc_msgSend_count(v6, v7, v8, v9);
  v11 = levelCopy - 1;

  if (v11 >= v10)
  {
    v21 = objc_msgSend_emptyOptions(TSTPivotGroupingColumnOptions, v12, v13, v14);
  }

  else
  {
    groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
    v16 = objc_msgSend_columnGroupings(self, v12, v13, v14);
    objc_msgSend_groupingColumnUidList(v16, v17, v18, v19);
    v21 = objc_msgSend_pivotOptionsForUID_(groupingColumnOptionsMap, v20, __p[2 * v11], __p[2 * v11 + 1]);
    if (__p)
    {
      operator delete(__p);
    }
  }

  return v21;
}

- (id)pivotOptionsForRowGroupsAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_rowGroupings(self, a2, level, v3);
  v10 = objc_msgSend_count(v6, v7, v8, v9);
  v11 = levelCopy - 1;

  if (v11 >= v10)
  {
    v21 = objc_msgSend_emptyOptions(TSTPivotGroupingColumnOptions, v12, v13, v14);
  }

  else
  {
    groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
    v16 = objc_msgSend_rowGroupings(self, v12, v13, v14);
    objc_msgSend_groupingColumnUidList(v16, v17, v18, v19);
    v21 = objc_msgSend_pivotOptionsForUID_(groupingColumnOptionsMap, v20, __p[2 * v11], __p[2 * v11 + 1]);
    if (__p)
    {
      operator delete(__p);
    }
  }

  return v21;
}

- (BOOL)groupingColumnUidExists:(TSKUIDStruct)exists
{
  upper = exists._upper;
  lower = exists._lower;
  columnGroupings = self->_columnGroupings;
  if (columnGroupings)
  {
    objc_msgSend_groupingColumnUidList(columnGroupings, a2, exists._lower, exists._upper);
    if (v15 != v16)
    {
      v7 = v15;
      do
      {
        v8 = *v7 == lower && v7[1] == upper;
        v9 = v8;
        if (v8)
        {
          break;
        }

        v7 += 2;
      }

      while (v7 != v16);
      if (v15)
      {
        v16 = v15;
        operator delete(v15);
        if ((v9 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }

      return 1;
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }

LABEL_19:
  rowGroupings = self->_rowGroupings;
  if (!rowGroupings)
  {
    return 0;
  }

  objc_msgSend_groupingColumnUidList(rowGroupings, a2, exists._lower, exists._upper);
  if (v15 == v16)
  {
    v10 = 0;
    if (!v15)
    {
      return v10;
    }

LABEL_34:
    operator delete(v15);
    return v10;
  }

  v12 = v15;
  do
  {
    v13 = *v12 == lower && v12[1] == upper;
    v10 = v13;
    if (v13)
    {
      break;
    }

    v12 += 2;
  }

  while (v12 != v16);
  if (v15)
  {
    goto LABEL_34;
  }

  return v10;
}

- (void)setHidingGrandTotalColumns:(BOOL)columns
{
  if (self->_isHidingGrandTotalColumns != columns)
  {
    objc_msgSend_willModify(self, a2, columns, v3);
    self->_isHidingGrandTotalColumns = columns;

    objc_msgSend_p_resetHiddenGrandTotals(self, v6, v7, v8);
  }
}

- (void)setHidingGrandTotalRows:(BOOL)rows
{
  if (self->_isHidingGrandTotalRows != rows)
  {
    objc_msgSend_willModify(self, a2, rows, v3);
    self->_isHidingGrandTotalRows = rows;

    objc_msgSend_p_resetHiddenGrandTotals(self, v6, v7, v8);
  }
}

- (void)p_resetSummaryFormulasForRunningTotalsOnly:(BOOL)only preservingStyles:(BOOL)styles
{
  stylesCopy = styles;
  onlyCopy = only;
  hasRunningTotalAggregates = objc_msgSend_hasRunningTotalAggregates(self->_groupBySet, a2, only, styles);
  v11 = hasRunningTotalAggregates;
  if (!onlyCopy || hasRunningTotalAggregates)
  {
    v132 = objc_msgSend_tableInfo(self->_tableModel, v8, v9, v10);
    v15 = objc_msgSend_pivotDataModel(v132, v12, v13, v14);
    v19 = objc_msgSend_categoryOwner(v15, v16, v17, v18);
    v131 = objc_msgSend_minion(v19, v20, v21, v22);

    v26 = objc_msgSend_rowUIDs(v132, v23, v24, v25);
    v30 = objc_msgSend_columnUIDs(v132, v27, v28, v29);
    v128 = objc_msgSend_numberOfHeaderRows(v132, v31, v32, v33);
    v127 = v26;
    v37 = objc_msgSend_numberOfHeaderColumns(v132, v34, v35, v36);
    v38 = [TSTRunningTotalContext alloc];
    v42 = objc_msgSend_groupBySet(self, v39, v40, v41);
    v126 = v30;
    v130 = onlyCopy;
    v129 = objc_msgSend_initWithGroupBySet_(v38, v43, v42, v44);

    v48 = objc_msgSend_count(self->_aggregates, v45, v46, v47);
    memset(v149, 0, 24);
    sub_22132D398(v149, 0x64uLL, 0);
    v54 = objc_msgSend_groupByForColumnGroups(self->_groupBySet, v49, v50, v51);
    v125 = __PAIR64__(v11, v37);
    v55 = 0;
    if (v48)
    {
      for (i = 0; i != v48; ++i)
      {
        *(v149[0] + 8 * (i >> 6)) &= ~(1 << i);
        v57 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v52, i, v53, v125);
        if ((objc_msgSend_showAsType(v57, v58, v59, v60) & 0xFE) == 6)
        {
          v64 = objc_msgSend_runningTotalGroupingColumnUid(v57, v61, v62, v63);
          if (v64 | v65)
          {
            v145[0] = objc_msgSend_runningTotalGroupingColumnUid(v57, v65, v66, v67);
            v145[1] = v68;
            if (v54)
            {
              objc_msgSend_groupingColumnLevelsForColumn_(v54, v68, v145, v69);
              v70 = v146;
              v71 = v147;
            }

            else
            {
              v71 = 0;
              v70 = 0;
              v146 = 0;
              v147 = 0;
              v148 = 0;
            }

            if ((v71 - v70) >= 2)
            {
              *(v149[0] + 8 * (i >> 6)) |= 1 << i;
              v55 = 1;
            }

            if (v70)
            {
              v147 = v70;
              operator delete(v70);
            }
          }
        }
      }
    }

    v72 = v132;
    v73 = [TSTPivotCellSetter alloc];
    v75 = objc_msgSend_initWithPivotTable_minion_preservingStyles_(v73, v74, v132, v131, stylesCopy);
    v76 = ((v127[1] - *v127) >> 4) - 1;
    v77 = ((v127[1] - *v127) >> 4) - v128;
    v78 = v77 >> 8;
    if (((v127[1] - *v127) >> 4) != v128)
    {
      ++v78;
    }

    if (v77 <= 0x100)
    {
      v79 = 1;
    }

    else
    {
      v79 = v78;
    }

    if ((v125 & 0x100000000) != 0)
    {
      v80 = 1;
    }

    else
    {
      v80 = v79;
    }

    v81 = v75;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = sub_22132D504;
    block[3] = &unk_2834A5288;
    v140 = v128;
    v141 = v76;
    v142 = v125;
    v137 = v127;
    v138 = v126;
    v136 = v80;
    block[4] = self;
    v143 = v55 & 1;
    sub_2213355A8(__p, v149);
    __p[3] = v48;
    v82 = v129;
    v134 = v82;
    v83 = v130;
    v144 = v130;
    v84 = v81;
    v135 = v84;
    dispatch_apply(v80, 0, block);
    objc_msgSend_blockUntilCompleted(v84, v85, v86, v87);
    v91 = objc_msgSend_madeChange(v84, v88, v89, v90);
    v95 = objc_msgSend_filterSet(v132, v92, v93, v94);
    isEnabled = objc_msgSend_isEnabled(v95, v96, v97, v98);

    if (isEnabled)
    {
      v103 = objc_msgSend_hiddenStates(v132, v100, v101, v102);
      v104 = [TSTTableFilterSet alloc];
      v108 = objc_msgSend_context(v132, v105, v106, v107);
      v110 = objc_msgSend_initWithNotBlankRowGroupsWithContext_withPivotTable_(v104, v109, v108, v132);

      objc_msgSend_setFilterSetForRows_(v103, v111, v110, v112);
      v113 = [TSTTableFilterSet alloc];
      v117 = objc_msgSend_context(v132, v114, v115, v116);
      v119 = objc_msgSend_initWithNotBlankColumnGroupsWithContext_withPivotTable_(v113, v118, v117, v132);

      objc_msgSend_setFilterSetForColumns_(v103, v120, v119, v121);
      objc_msgSend_filterSetUpdated(v132, v122, v123, v124);

      v72 = v132;
      v83 = v130;
    }

    if ((v91 & v83) == 1)
    {
      self->_shouldSkipNextAsyncSort = 1;
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v149[0])
    {
      operator delete(v149[0]);
    }
  }
}

- (void)p_setEmptyPivotTableLabels
{
  if (objc_msgSend_isEmptyPivot(self, a2, v2, v3))
  {
    v44 = objc_msgSend_newCell(self->_tableModel, v5, v6, v7);
    v11 = objc_msgSend_tableInfo(self->_tableModel, v8, v9, v10);
    v15 = objc_msgSend_documentRoot(v11, v12, v13, v14);
    v19 = objc_msgSend_documentLocale(v15, v16, v17, v18);

    v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"Columns", &stru_2834BADA0, @"TSTables");
    objc_msgSend_setStringValue_(v44, v22, v21, v23);

    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self->_tableModel, v24, v44, 0x100000000, 0, 1);
    v26 = objc_msgSend_localizedStringForKey_value_table_(v19, v25, @"Rows", &stru_2834BADA0, @"TSTables");
    objc_msgSend_setStringValue_(v44, v27, v26, v28);

    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self->_tableModel, v29, v44, 1, 0, 1);
    v31 = objc_msgSend_localizedStringForKey_value_table_(v19, v30, @"Values", &stru_2834BADA0, @"TSTables");
    objc_msgSend_setStringValue_(v44, v32, v31, v33);

    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(self->_tableModel, v34, v44, 0x100000001, 0, 1);
  }

  else
  {
    v35 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTPivotOwner p_setEmptyPivotTableLabels]", v7);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v45, v38, 1066, 0, "These labels are only for empty pivots");

    v43 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v43, v40, v41, v42);
  }
}

- (void)resetCellsForNewPivotRules
{
  if (objc_msgSend_isEmptyPivot(self, a2, v2, v3))
  {

    MEMORY[0x2821F9670](self, sel_p_setEmptyPivotTableLabels, v6, v7);
  }

  else
  {
    objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(self, v5, 1, 0);

    objc_msgSend_p_resetSummaryFormulasForRunningTotalsOnly_preservingStyles_(self, v8, 0, 0);
  }
}

- (void)resetCellsForNewPivotOrder
{
  objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(self, a2, 1, 1);

  objc_msgSend_p_resetSummaryFormulasForRunningTotalsOnly_preservingStyles_(self, v3, 1, 1);
}

- (void)documentLocaleDidChange
{
  if (objc_msgSend_isEmptyPivot(self, a2, v2, v3))
  {

    MEMORY[0x2821F9670](self, sel_p_setEmptyPivotTableLabels, v6, v7);
  }

  else
  {

    objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(self, v5, 0, 1);
  }
}

- (void)rewriteForPaste
{
  if ((objc_msgSend_isEmptyPivot(self, a2, v2, v3) & 1) == 0)
  {

    objc_msgSend_p_resetSummaryFormulasForRunningTotalsOnly_preservingStyles_(self, v5, 0, 1);
  }
}

- (void)clearAllPivotHiddenAndFiltered:(BOOL)filtered
{
  filteredCopy = filtered;
  v5 = objc_msgSend_tableInfo(self->_tableModel, a2, filtered, v3);
  v15 = objc_msgSend_hiddenStates(v5, v6, v7, v8);

  if (filteredCopy)
  {
    objc_msgSend_clearAllFiltered(v15, v9, v10, v11);
  }

  objc_msgSend_clearAllPivotHiddenAndInvalidate_(v15, v9, 1, v11);
  objc_msgSend_invalidateAllCollapsed(v15, v12, v13, v14);
}

- (void)p_resetHiddenGrandTotals
{
  if (self->_isHidingGrandTotalColumns)
  {
    v30 = objc_msgSend_columnGroupings(self, a2, v2, v3);
    v8 = objc_msgSend_count(v30, v5, v6, v7) != 0;
  }

  else
  {
    v8 = 0;
  }

  if (self->_isHidingGrandTotalRows)
  {
    v31 = objc_msgSend_rowGroupings(self, a2, v2, v3);
    v12 = objc_msgSend_count(v31, v9, v10, v11) != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3);
  v32 = objc_msgSend_hiddenStates(v13, v14, v15, v16);

  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v22 = objc_msgSend_groupBySet(self, v19, v20, v21);
  v26 = objc_msgSend_tableInfo(self->_tableModel, v23, v24, v25);
  objc_msgSend_getHidingIndexesForGrandTotalsForPivotTable_columns_rows_(v22, v27, v26, v18, v17);

  if (v8)
  {
    objc_msgSend_hideColumnsAtIndexes_forAction_invalidate_(v32, v28, v18, 16, 1);
  }

  else
  {
    objc_msgSend_showColumnsAtIndexes_forAction_invalidate_(v32, v28, v18, 16, 1);
  }

  if (v12)
  {
    objc_msgSend_hideRowsAtIndexes_forAction_invalidate_(v32, v29, v17, 16, 1);
  }

  else
  {
    objc_msgSend_showRowsAtIndexes_forAction_invalidate_(v32, v29, v17, 16, 1);
  }
}

- (void)p_resetHiddenTotalsForGroupingColumnUid:(const TSKUIDStruct *)uid hideTotals:(BOOL)totals
{
  totalsCopy = totals;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, uid, totals);
  v25 = objc_msgSend_hiddenStates(v7, v8, v9, v10);

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v16 = objc_msgSend_groupBySet(self, v13, v14, v15);
  v20 = objc_msgSend_tableInfo(self->_tableModel, v17, v18, v19);
  objc_msgSend_getPivotHidingIndexesForGroupingColumn_columns_rows_forHiding_forPivotTable_(v16, v21, uid, v12, v11, totalsCopy, v20);

  if (totalsCopy)
  {
    objc_msgSend_hideRowsAtIndexes_forAction_invalidate_(v25, v22, v11, 16, 1);
    objc_msgSend_hideColumnsAtIndexes_forAction_invalidate_(v25, v23, v12, 16, 1);
  }

  else
  {
    objc_msgSend_showRowsAtIndexes_forAction_invalidate_(v25, v22, v11, 16, 1);
    objc_msgSend_showColumnsAtIndexes_forAction_invalidate_(v25, v24, v12, 16, 1);
  }
}

+ (id)enclosingGroupNameForGroupCellValue:(id)value
{
  valueCopy = value;
  if (objc_msgSend_valueType(valueCopy, v4, v5, v6))
  {
    v10 = objc_msgSend_displayString(valueCopy, v7, v8, v9);
  }

  else
  {
    v11 = objc_msgSend_locale(valueCopy, v7, v8, v9);
    v10 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v12, v11, v13);
  }

  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = &stru_2834BADA0;
  }

  v15 = v14;

  return v14;
}

- (id)enclosingGroupNameForColumnIndex:(unsigned __int16)index level:(unsigned __int8)level
{
  levelCopy = level;
  indexCopy = index;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, index, level);
  v27 = objc_msgSend_columnUIDForColumnIndex_(v7, v8, indexCopy, v9);
  v28 = v10;

  v12 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self->_groupBySet, v11, &v27, 0);
  v14 = v13;
  v17 = objc_msgSend_groupByForColumnGroups(self->_groupBySet, v13, v15, v16, v27, v28);
  v19 = objc_msgSend_groupNodeForGroupUid_(v17, v18, v12, v14);

  v22 = objc_msgSend_groupValueAtLevel_(v19, v20, levelCopy, v21);
  v25 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v23, v22, v24);

  return v25;
}

- (id)enclosingGroupNameForRowIndex:(unsigned int)index level:(unsigned __int8)level
{
  levelCopy = level;
  v5 = *&index;
  v7 = objc_msgSend_tableInfo(self->_tableModel, a2, *&index, level);
  v27 = objc_msgSend_rowUIDForRowIndex_(v7, v8, v5, v9);
  v28 = v10;

  v12 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self->_groupBySet, v11, &v27, 0);
  v14 = v13;
  v17 = objc_msgSend_groupByForRowGroups(self->_groupBySet, v13, v15, v16, v27, v28);
  v19 = objc_msgSend_groupNodeForGroupUid_(v17, v18, v12, v14);

  v22 = objc_msgSend_groupValueAtLevel_(v19, v20, levelCopy, v21);
  v25 = objc_msgSend_enclosingGroupNameForGroupCellValue_(TSTPivotOwner, v23, v22, v24);

  return v25;
}

- (BOOL)requiresUnwrapping:(TSUCellCoord)unwrapping
{
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, *&unwrapping, v3);
  v10 = objc_msgSend_numberOfHeaderRows(v6, v7, v8, v9);

  v14 = objc_msgSend_tableInfo(self->_tableModel, v11, v12, v13);
  v18 = objc_msgSend_numberOfHeaderColumns(v14, v15, v16, v17);

  v22 = v10 - 1 == unwrapping.row && unwrapping.column >= v18;
  if (!v22 || objc_msgSend_count(self->_aggregates, v19, v20, v21) != 1 || !objc_msgSend_count(self->_columnGroupings, v23, v24, v25))
  {
    return 0;
  }

  return objc_msgSend_hasHeaderRowForAggregateNames(self, v26, v27, v28);
}

- (unsigned)columnGroupLevelForHeaderRow:(TSUViewRowIndex)row
{
  v5 = objc_msgSend_tableInfo(self->_tableModel, a2, *&row.var0, v3);
  if (objc_msgSend_numberOfHeaderRows(v5, v6, v7, v8) > row.var0)
  {
    v9 = LOBYTE(row.var0) + 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (unsigned)rowGroupLevelForHeaderColumn:(TSUViewColumnIndex)column
{
  v5 = objc_msgSend_tableInfo(self->_tableModel, a2, *&column.var0, v3);
  if (objc_msgSend_numberOfHeaderColumns(v5, v6, v7, v8) > column.var0)
  {
    v9 = LOBYTE(column.var0) + 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)p_setPivotHeaderCellsResettingPivotHidden:(BOOL)hidden preservingStyles:(BOOL)styles
{
  stylesCopy = styles;
  hiddenCopy = hidden;
  v295 = objc_msgSend_tableInfo(self->_tableModel, a2, hidden, styles);
  v305 = objc_msgSend_translator(v295, v5, v6, v7);
  v309 = objc_msgSend_count(self->_columnGroupings, v8, v9, v10);
  v14 = objc_msgSend_count(self->_rowGroupings, v11, v12, v13);
  v18 = objc_msgSend_count(self->_aggregates, v15, v16, v17);
  active = objc_msgSend_activeFlatteningDimension(self->_groupBySet, v19, v20, v21);
  v313 = objc_msgSend_activeFlatteningDimension(self->_groupBySet, v22, v23, v24);
  v298 = objc_msgSend_hasHeaderColumnForAggregateNames(self, v25, v26, v27) && (!active || (objc_msgSend_hasHeaderRowForAggregateNames(self, v28, v29, v30) & 1) == 0) && v18 != 0;
  v286 = v18 != 0;
  v294 = objc_msgSend_numberOfHeaderRows(v295, v28, v29, v30);
  v301 = objc_msgSend_numberOfHeaderColumns(v295, v31, v32, v33);
  v37 = objc_msgSend_documentRoot(v295, v34, v35, v36);
  v41 = objc_msgSend_documentLocale(v37, v38, v39, v40);

  v296 = v41;
  v308 = objc_msgSend_localizedStringForKey_value_table_(v41, v42, @"Grand Total", &stru_2834BADA0, @"TSTables");
  v43 = [TSTPivotCellSetter alloc];
  v325 = objc_msgSend_initWithPivotTable_minion_preservingStyles_(v43, v44, v295, 0, stylesCopy);
  v310 = objc_opt_new();
  v321 = v18;
  if (v18)
  {
    v48 = 0;
    do
    {
      v49 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v45, v48, v47);
      v53 = objc_msgSend_aggregateType(v49, v50, v51, v52);
      v56 = objc_msgSend_localizedShortLabelForAggType_(v296, v54, v53, v55);
      v60 = objc_msgSend_pivotDataModel(v295, v57, v58, v59);
      v64 = objc_msgSend_columnUid(v49, v61, v62, v63);
      v66 = objc_msgSend_columnIndexForColumnUID_(v60, v65, v64, v65);

      v69 = objc_msgSend_pivotDataLocalizedColumnNameAtDataColumnIndex_(v295, v67, v66, v68);
      v71 = sub_221131094(v296, v70);
      v74 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, v71, v73, v69, v56);
      objc_msgSend_addObject_(v310, v75, v74, v76);

      ++v48;
    }

    while (v321 != v48);
  }

  v77 = objc_msgSend_columnRowUIDMap(v295, v45, v46, v47);
  v323 = objc_msgSend_columnUIDs(v77, v78, v79, v80);

  v84 = objc_msgSend_columnRowUIDMap(v295, v81, v82, v83);
  v324 = objc_msgSend_rowUIDs(v84, v85, v86, v87);

  if (v301)
  {
    for (i = 0; i != v301; ++i)
    {
      if (v294)
      {
        v92 = 0;
        do
        {
          v329 = 0u;
          v330 = 0u;
          TSKMakeUIDStructCoord();
          v327 = v329;
          v328 = v330;
          objc_msgSend_setStringValue_atUidCoord_(v325, v93, 0, &v327);
          v92 += 16;
        }

        while (16 * v294 != v92);
      }
    }
  }

  selfCopy = self;
  v293 = objc_msgSend_groupByForRowGroups(self->_groupBySet, v88, v89, v90);
  if (v14)
  {
    v97 = 0;
    v98 = 0;
    do
    {
      v329 = 0u;
      v330 = 0u;
      TSKMakeUIDStructCoord();
      v102 = objc_msgSend_tableModel(selfCopy, v99, v100, v101);
      v106 = objc_msgSend_tableInfo(v102, v103, v104, v105);
      v109 = objc_msgSend_pivotHeaderColumnDisplayNameAtIndex_(v106, v107, v98, v108);

      v112 = objc_msgSend_groupingColumnAtCategoryLevel_(v293, v110, ++v98, v111);
      v116 = objc_msgSend_groupingType(v112, v113, v114, v115);

      if (objc_msgSend_groupingTypeIsAnyDateType_(TSTGroupingColumn, v117, v116, v118))
      {
        v120 = sub_221131094(v296, v119);
        v121 = MEMORY[0x277CCACA8];
        v123 = objc_msgSend_shortStringForGroupingType_locale_(TSTGroupingColumn, v122, v116, v296);
        v126 = objc_msgSend_stringWithFormat_(v121, v124, v120, v125, v109, v123);

        v109 = v126;
      }

      v327 = v329;
      v328 = v330;
      objc_msgSend_setStringValue_atUidCoord_(v325, v119, v109, &v327);

      v97 += 16;
    }

    while (v14 != v98);
  }

  v292 = objc_msgSend_groupByForColumnGroups(selfCopy->_groupBySet, v94, v95, v96);
  v130 = v321;
  if (v309)
  {
    v131 = 0;
    v132 = 0;
    do
    {
      v329 = 0u;
      v330 = 0u;
      TSKMakeUIDStructCoord();
      v136 = objc_msgSend_tableModel(selfCopy, v133, v134, v135);
      v140 = objc_msgSend_tableInfo(v136, v137, v138, v139);
      v143 = objc_msgSend_pivotHeaderRowDisplayNameAtIndex_(v140, v141, v132, v142);

      v146 = objc_msgSend_groupingColumnAtCategoryLevel_(v292, v144, ++v132, v145);
      v150 = objc_msgSend_groupingType(v146, v147, v148, v149);

      if (objc_msgSend_groupingTypeIsAnyDateType_(TSTGroupingColumn, v151, v150, v152))
      {
        v154 = sub_221131094(v296, v153);
        v155 = MEMORY[0x277CCACA8];
        v157 = objc_msgSend_shortStringForGroupingType_locale_(TSTGroupingColumn, v156, v150, v296);
        v160 = objc_msgSend_stringWithFormat_(v155, v158, v154, v159, v143, v157);

        v143 = v160;
        v130 = v321;
      }

      v327 = v329;
      v328 = v330;
      objc_msgSend_setStringValue_atUidCoord_(v325, v153, v143, &v327);

      v131 += 16;
    }

    while (v309 != v132);
  }

  v161 = selfCopy;
  if (objc_msgSend_hasHeaderColumnForAggregateNames(selfCopy, v127, v128, v129))
  {
    hasHeaderRowForAggregateNames = objc_msgSend_hasHeaderRowForAggregateNames(selfCopy, v162, v163, v164);
    v166 = active ? 0 : hasHeaderRowForAggregateNames;
    if (v166 == 1)
    {
      v329 = 0u;
      v330 = 0u;
      TSKMakeUIDStructCoord();
      v168 = objc_msgSend_localizedStringForKey_value_table_(v296, v167, @"Values", &stru_2834BADA0, @"TSTables");
      v327 = v329;
      v328 = v330;
      objc_msgSend_setStringValue_atUidCoord_(v325, v169, v168, &v327);
    }
  }

  if (active)
  {
    v170 = 1;
  }

  else
  {
    v170 = v130;
  }

  v290 = v170;
  v297 = objc_msgSend_columnIndexForColumnUID_(v295, v162, *"aggre names col", *"mes col");
  v285 = objc_msgSend_rowIndexForRowUID_(v295, v171, *"aggre names row", *"mes row");
  v288 = (v324[1] - *v324) >> 4;
  if (v294 < v288)
  {
    v175 = v14;
    v176 = v294;
    while (1)
    {
      v326 = *(*v324 + 16 * v176);
      v177 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(v161->_groupBySet, v172, &v326, 0);
      v182 = objc_msgSend_groupNodeForGroupUid_(v293, v178, v177, v178);
      if (!v182)
      {
        v183 = MEMORY[0x277D81150];
        v184 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v179, "[TSTPivotOwner p_setPivotHeaderCellsResettingPivotHidden:preservingStyles:]", v181);
        v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v186);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v183, v188, v184, v187, 1354, 0, "Row group not found");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v189, v190, v191);
      }

      v302 = objc_msgSend_groupLevel(v182, v179, v180, v181);
      v194 = v176;
      if (v301)
      {
        break;
      }

LABEL_79:

      v176 = v194 + v290;
      v161 = selfCopy;
      v130 = v321;
      if (v194 + v290 >= v288)
      {
        goto LABEL_80;
      }
    }

    v195 = 0;
    v196 = v290 + v176;
    v317 = v182;
    while (1)
    {
      v311 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(v305, v192, (v195 + 1), v193);
      groupingColumnOptionsMap = selfCopy->_groupingColumnOptionsMap;
      v200 = objc_msgSend_ruleAtIndex_(selfCopy->_rowGroupings, v198, v195, v199);
      v204 = objc_msgSend_groupingColumnUid(v200, v201, v202, v203);
      v206 = objc_msgSend_pivotOptionsForUID_(groupingColumnOptionsMap, v205, v204, v205);

      v307 = v206;
      v210 = objc_msgSend_repeatLabels(v206, v207, v208, v209);
      if (v196 > v194)
      {
        break;
      }

LABEL_78:

      v195 = (v195 + 1);
      v182 = v317;
      if (v195 >= v301)
      {
        goto LABEL_79;
      }
    }

    v211 = 0;
    v212 = v298;
    if (v195 != v297)
    {
      v212 = 0;
    }

    v319 = v212;
    if (v175 == v302)
    {
      v213 = v210;
    }

    else
    {
      v213 = 0;
    }

    while (1)
    {
      v329 = 0u;
      v330 = 0u;
      TSKMakeUIDStructCoord();
      if (v175 <= v195)
      {
        if (v319)
        {
          v218 = !v211 || active == 0;
          v219 = v218;
          if (v321 > v211 && v219)
          {
            v220 = objc_msgSend_objectAtIndex_(v310, v214, v211, v215);
            goto LABEL_68;
          }
        }
      }

      else if ((v213 & 1) != 0 || !v211 && objc_msgSend_containsIndex_(v311, v214, v194, v215))
      {
        v216 = objc_msgSend_groupValueAtLevel_(v317, v214, (v195 + 1), v215);
        v217 = 0;
        goto LABEL_70;
      }

      if (!v211)
      {
        if (v195 | v302)
        {
          if (v195 == (v302 - 1))
          {
            objc_msgSend_groupValueAtLevel_(v317, v214, v302, v215);
            v216 = v217 = 0;
            v221 = v175 != v302;
            if (v216)
            {
              goto LABEL_75;
            }

LABEL_71:
            if (v221)
            {
              goto LABEL_75;
            }

            v327 = v329;
            v328 = v330;
            objc_msgSend_setStringValue_atUidCoord_(v325, v214, v217, &v327);
LABEL_76:

            goto LABEL_77;
          }
        }

        else if (v175)
        {
          v220 = v308;
LABEL_68:
          v217 = v220;
LABEL_69:
          v216 = 0;
LABEL_70:
          v221 = 0;
          if (!v216)
          {
            goto LABEL_71;
          }

LABEL_75:
          v327 = v329;
          v328 = v330;
          objc_msgSend_applyCellValue_atUidCoord_appendTotalForPivotsFlag_(v325, v214, v216, &v327, v221);

          goto LABEL_76;
        }
      }

      if (stylesCopy)
      {
        v217 = 0;
        goto LABEL_69;
      }

      v327 = v329;
      v328 = v330;
      objc_msgSend_setStringValue_atUidCoord_(v325, v214, 0, &v327);
LABEL_77:
      if (v196 <= ++v211 + v194)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_80:
  if (v313 == 1)
  {
    v222 = v130;
  }

  else
  {
    v222 = 1;
  }

  v291 = v222;
  v223 = objc_msgSend_hiddenStates(v295, v172, v173, v174);
  v300 = objc_msgSend_hiddenColumnIndexes(v223, v224, v225, v226);
  v227 = v301;

  v289 = ((v323[2] - *v323) >> 4);
  if (v289 > v301)
  {
    v299 = v286 & ~v298;
    v315 = 0x7FFF;
    while (1)
    {
      v326 = *(*v323 + 16 * v227);
      v231 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(v161->_groupBySet, v228, &v326, 0);
      v318 = objc_msgSend_groupNodeForGroupUid_(v292, v232, v231, v232);
      if (!v318)
      {
        v236 = MEMORY[0x277D81150];
        v237 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v233, "[TSTPivotOwner p_setPivotHeaderCellsResettingPivotHidden:preservingStyles:]", v235);
        v240 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v238, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v239);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v236, v241, v237, v240, 1443, 0, "Column group not found");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v242, v243, v244);
      }

      v303 = objc_msgSend_groupLevel(v318, v233, v234, v235);
      v247 = v227;
      if (v294)
      {
        break;
      }

LABEL_143:

      v227 += v291;
      if (v289 <= v227)
      {
        goto LABEL_144;
      }
    }

    v248 = 0;
    v249 = v291 + v227;
    while (1)
    {
      v250 = v248 + 1;
      v312 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(v305, v245, (v248 + 1), v246);
      v251 = v161->_groupingColumnOptionsMap;
      v254 = objc_msgSend_ruleAtIndex_(v161->_columnGroupings, v252, v248, v253);
      v258 = objc_msgSend_groupingColumnUid(v254, v255, v256, v257);
      v260 = objc_msgSend_pivotOptionsForUID_(v251, v259, v258, v259);

      v304 = v260;
      v264 = objc_msgSend_repeatLabels(v260, v261, v262, v263);
      if (v249 > v247)
      {
        break;
      }

LABEL_142:

      ++v248;
      v161 = selfCopy;
      v247 = v227;
      if (v250 == v294)
      {
        goto LABEL_143;
      }
    }

    v265 = v299;
    if (v248 != v285)
    {
      v265 = 0;
    }

    v320 = v265;
    if (v303 == v309)
    {
      v266 = v264;
    }

    else
    {
      v266 = 0;
    }

    if (v303)
    {
      v267 = 0;
    }

    else
    {
      v267 = v248 == 0;
    }

    v268 = v267;
    v316 = v268;
    v269 = v227;
    while (1)
    {
      v329 = 0u;
      v330 = 0u;
      TSKMakeUIDStructCoord();
      if (v248 >= v309)
      {
        if (v320)
        {
          v274 = v269 == v227 || v313 == 1;
          v275 = v274;
          if (v321 > (v269 - v227) && v275)
          {
            if (v315 == 0x7FFF && v321 <= 1)
            {
              if (objc_msgSend_containsIndex_(v300, v270, v227, v271))
              {
                v276 = 0x7FFF;
              }

              else
              {
                v276 = v227;
              }

              v315 = v276;
            }

            if (v321 > 1 || v227 == v315)
            {
              v277 = objc_msgSend_objectAtIndex_(v310, v270, (v269 - v227), v271);
              goto LABEL_129;
            }
          }
        }
      }

      else if ((v266 & 1) != 0 || v269 == v227 && objc_msgSend_containsIndex_(v312, v270, v227, v271))
      {
        v272 = objc_msgSend_groupValueAtLevel_(v318, v270, (v248 + 1), v271);
        v273 = 0;
        goto LABEL_134;
      }

      if (v269 == v227)
      {
        if (v316)
        {
          if (v309)
          {
            v277 = v308;
LABEL_129:
            v278 = v277;
            v273 = 0;
            v272 = 0;
            goto LABEL_135;
          }
        }

        else if (v248 == v303 - 1)
        {
          v278 = 0;
          v279 = objc_msgSend_groupValueAtLevel_(v318, v270, v303, v271);
          v273 = v303 != v309;
          v272 = v279;
          goto LABEL_135;
        }
      }

      if (stylesCopy)
      {
        v273 = 0;
        v272 = 0;
LABEL_134:
        v278 = 0;
LABEL_135:
        if (v272 || v273)
        {
          v327 = v329;
          v328 = v330;
          objc_msgSend_applyCellValue_atUidCoord_appendTotalForPivotsFlag_(v325, v270, v272, &v327, v273);
        }

        else
        {
          v327 = v329;
          v328 = v330;
          objc_msgSend_setStringValue_atUidCoord_(v325, v270, v278, &v327);
        }

        goto LABEL_141;
      }

      v327 = v329;
      v328 = v330;
      objc_msgSend_setStringValue_atUidCoord_(v325, v270, 0, &v327);
LABEL_141:
      if (v249 <= ++v269)
      {
        goto LABEL_142;
      }
    }
  }

LABEL_144:
  objc_msgSend_blockUntilCompleted(v325, v228, v229, v230);
  if (hiddenCopy)
  {
    objc_msgSend_clearAllPivotHiddenAndFiltered_(v161, v280, 0, v281);
    objc_msgSend_p_resetAllHiddenTotals(v161, v282, v283, v284);
  }
}

- (void)p_resetAllHiddenTotals
{
  objc_msgSend_p_resetHiddenGrandTotals(self, a2, v2, v3);
  groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22132F798;
  v8[3] = &unk_278462DC8;
  v8[4] = self;
  objc_msgSend_enumerateOptionsUsingBlock_(groupingColumnOptionsMap, v6, v8, v7);
}

- (id)lowestCategoryLevelAsLeadingRowGroupName:(unsigned int)name
{
  v4 = *&name;
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, *&name, v3);
  v10 = objc_msgSend_translator(v6, v7, v8, v9);
  v14 = objc_msgSend_groupByForRowGroups(self->_groupBySet, v11, v12, v13);
  v39[0] = objc_msgSend_rowUIDForRowIndex_(v6, v15, v4, v16);
  v39[1] = v17;
  v18 = objc_msgSend_rowGroupUidForRowUid_outAggregateIndex_(self->_groupBySet, v17, v39, 0);
  v20 = objc_msgSend_groupNodeForGroupUid_(v14, v19, v18, v19);
  v26 = objc_msgSend_groupLevel(v20, v21, v22, v23);
  v27 = v26 - 1;
  if (v26 == 1)
  {
    goto LABEL_7;
  }

  v37 = v14;
  v38 = v6;
  v28 = -1;
  while (1)
  {
    v29 = v27;
    v30 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(v10, v24, v27, v25, v37, v38);
    v33 = objc_msgSend_containsIndex_(v30, v31, v4, v32);

    if ((v33 & 1) == 0)
    {
      break;
    }

    v27 = v29 - 1;
    v28 = v29;
    if (v29 == 1)
    {
      v14 = v37;
      v6 = v38;
      objc_msgSend_enclosingGroupNameForRowIndex_level_(self, v24, v4, 1);
      goto LABEL_10;
    }
  }

  v14 = v37;
  v6 = v38;
  if (v28 == 0xFF)
  {
LABEL_7:
    v28 = v26;
  }

  if (v28)
  {
    objc_msgSend_enclosingGroupNameForRowIndex_level_(self, v24, v4, v28);
    v34 = LABEL_10:;
  }

  else
  {
    v34 = objc_msgSend_rowNameForCellID_restrictToBodyRange_(v6, v24, v4, 1);
  }

  v35 = v34;

  return v35;
}

- (id)lowestCategoryLevelAsLeadingColumnGroupName:(unsigned __int16)name
{
  nameCopy = name;
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, name, v3);
  v10 = objc_msgSend_translator(v6, v7, v8, v9);
  v14 = objc_msgSend_groupByForColumnGroups(self->_groupBySet, v11, v12, v13);
  v39[0] = objc_msgSend_columnUIDForColumnIndex_(v6, v15, nameCopy, v16);
  v39[1] = v17;
  v18 = objc_msgSend_columnGroupUidForColumnUid_outAggregateIndex_(self->_groupBySet, v17, v39, 0);
  v20 = objc_msgSend_groupNodeForGroupUid_(v14, v19, v18, v19);
  v26 = objc_msgSend_groupLevel(v20, v21, v22, v23);
  v27 = v26 - 1;
  if (v26 == 1)
  {
    goto LABEL_7;
  }

  v37 = v14;
  v38 = v6;
  v28 = -1;
  while (1)
  {
    v29 = v27;
    v30 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(v10, v24, v27, v25, v37, v38);
    v33 = objc_msgSend_containsIndex_(v30, v31, nameCopy, v32);

    if ((v33 & 1) == 0)
    {
      break;
    }

    v27 = v29 - 1;
    v28 = v29;
    if (v29 == 1)
    {
      v14 = v37;
      v6 = v38;
      objc_msgSend_enclosingGroupNameForColumnIndex_level_(self, v24, nameCopy, 1);
      goto LABEL_10;
    }
  }

  v14 = v37;
  v6 = v38;
  if (v28 == 0xFF)
  {
LABEL_7:
    v28 = v26;
  }

  if (v28)
  {
    objc_msgSend_enclosingGroupNameForColumnIndex_level_(self, v24, nameCopy, v28);
    v34 = LABEL_10:;
  }

  else
  {
    v34 = objc_msgSend_columnNameForColumnIndex_(v6, v24, nameCopy, v25);
  }

  v35 = v34;

  return v35;
}

- (TSUModelColumnIndex)baseColumnIndexForGroupingAtColumnIndex:(unsigned __int16)index
{
  indexCopy = index;
  v6 = objc_msgSend_rowGroupings(self, a2, index, v3);
  v9 = objc_msgSend_ruleAtIndex_(v6, v7, indexCopy, v8);

  v13 = objc_msgSend_tableInfo(self->_tableModel, v10, v11, v12);
  v17 = objc_msgSend_pivotDataModel(v13, v14, v15, v16);

  v21 = objc_msgSend_columnUid(v9, v18, v19, v20);
  LOWORD(v13) = objc_msgSend_columnIndexForColumnUID_(v17, v22, v21, v22);

  return v13;
}

- (TSUModelColumnIndex)baseColumnIndexForGroupingAtRowIndex:(unsigned int)index
{
  v6 = objc_msgSend_columnGroupings(self, a2, *&index, v3);
  v9 = objc_msgSend_ruleAtIndex_(v6, v7, index, v8);

  v13 = objc_msgSend_tableInfo(self->_tableModel, v10, v11, v12);
  v17 = objc_msgSend_pivotDataModel(v13, v14, v15, v16);

  v21 = objc_msgSend_columnUid(v9, v18, v19, v20);
  LOWORD(v13) = objc_msgSend_columnIndexForColumnUID_(v17, v22, v21, v22);

  return v13;
}

- (id)p_formulaForCellCoord:(TSKUIDStructCoord *)x2_0 runningTotalContext:(id)context
{
  contextCopy = context;
  v187[0] = 0;
  v8 = objc_msgSend_categoryRefForUidCoord_outShowAsType_(self->_groupBySet, v7, x2_0, v187);
  v11 = objc_msgSend_aggregateForUidCoord_(self->_groupBySet, v9, x2_0, v10);
  v142 = objc_msgSend_tableInfo(self->_tableModel, v12, v13, v14);
  if (objc_msgSend_isValid(v8, v15, v16, v17))
  {
    v21 = 0;
    if (v187[0] <= 5u)
    {
      if (v187[0] > 2u)
      {
        v22 = v142;
        if (v187[0] - 4 >= 2)
        {
          if (v187[0] != 3)
          {
            goto LABEL_42;
          }

          v23 = objc_msgSend_grandTotalCategoryRefForRow_forAggregate_(self->_groupBySet, v18, &x2_0->_row, v11);
          v101 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v8, &v178);
          TSCEFormulaCreationMagic::categoryRef(v23, &v177);
          TSCEFormulaCreationMagic::operator/(&v178, &v177, &v179);
          v21 = objc_msgSend_initWithCreator_(v101, v102, &v179, v103);

          v27 = v178;
        }

        else
        {
          v23 = objc_msgSend_groupByForUuidCoord_(self->_groupBySet, v18, x2_0, v20);
          v27 = objc_msgSend_groupNodeForUuidCoord_(self->_groupBySet, v50, x2_0, v51);
          v55 = objc_msgSend_groupBySet(self, v52, v53, v54);
          v57 = objc_msgSend_percentParentDenominatorCategoryRefFor_inGroupBy_forAggregate_forShowAsType_(v55, v56, v27, v23, v11, v187[0]);

          if ((objc_msgSend_isValid(v57, v58, v59, v60) & 1) == 0)
          {
            v61 = v8;

            v57 = v61;
          }

          v62 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v8, &v175);
          TSCEFormulaCreationMagic::categoryRef(v57, &v174);
          TSCEFormulaCreationMagic::operator/(&v175, &v174, &v176);
          v21 = objc_msgSend_initWithCreator_(v62, v63, &v176, v64);
        }
      }

      else
      {
        v22 = v142;
        if (!v187[0])
        {
          v104 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v8, &v186);
          v21 = objc_msgSend_initWithCreator_(v104, v105, &v186, v106);

          goto LABEL_42;
        }

        if (v187[0] == 1)
        {
          v23 = objc_msgSend_grandGrandTotalCategoryRefForAggregate_(self->_groupBySet, v18, v11, v20);
          v107 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v8, &v184);
          TSCEFormulaCreationMagic::categoryRef(v23, &v183);
          TSCEFormulaCreationMagic::operator/(&v184, &v183, &v185);
          v21 = objc_msgSend_initWithCreator_(v107, v108, &v185, v109);

          v27 = v184;
        }

        else
        {
          v23 = objc_msgSend_grandTotalCategoryRefForColumn_forAggregate_(self->_groupBySet, v18, x2_0, v11);
          v24 = [TSCEFormulaObject alloc];
          TSCEFormulaCreationMagic::categoryRef(v8, &v181);
          TSCEFormulaCreationMagic::categoryRef(v23, &v180);
          TSCEFormulaCreationMagic::operator/(&v181, &v180, &v182);
          v21 = objc_msgSend_initWithCreator_(v24, v25, &v182, v26);

          v27 = v181;
        }
      }

      goto LABEL_41;
    }

    if (v187[0] - 6 >= 2)
    {
      if (v187[0] != 8)
      {
        v22 = v142;
        if (v187[0] != 255)
        {
          goto LABEL_42;
        }

        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTPivotOwner p_formulaForCellCoord:runningTotalContext:]", v20);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 1743, 0, "Invalid ShowAs Type");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
        goto LABEL_18;
      }

      v22 = v142;
      v115 = objc_msgSend_grandTotalCategoryRefForColumn_forAggregate_(self->_groupBySet, v18, x2_0, v11);
      v117 = objc_msgSend_grandTotalCategoryRefForRow_forAggregate_(self->_groupBySet, v116, &x2_0->_row, v11);
      v120 = objc_msgSend_grandGrandTotalCategoryRefForAggregate_(self->_groupBySet, v118, v11, v119);
      v121 = [TSCEFormulaObject alloc];
      TSCEFormulaCreationMagic::categoryRef(v8, &v149);
      TSCEFormulaCreationMagic::categoryRef(v120, &v148);
      TSCEFormulaCreationMagic::operator*(&v149, &v148, &v150);
      TSCEFormulaCreationMagic::parens(&v150, v189, &v151);
      TSCEFormulaCreationMagic::categoryRef(v117, &v145);
      TSCEFormulaCreationMagic::categoryRef(v115, &v144);
      TSCEFormulaCreationMagic::operator*(&v145, &v144, &v146);
      TSCEFormulaCreationMagic::parens(&v146, v190, &v147);
      TSCEFormulaCreationMagic::operator/(&v151, &v147, &v152);
      v21 = objc_msgSend_initWithCreator_(v121, v122, &v152, v123);

      goto LABEL_42;
    }

    v173[0] = objc_msgSend_runningTotalGroupingColumnUid(v11, v18, v19, v20);
    v173[1] = v65;
    v67 = objc_msgSend_aggregateIndexForUidCoord_(self->_groupBySet, v65, x2_0, v66);
    if (objc_msgSend_isMissingRunningTotalFieldForAggIndex_(contextCopy, v68, v67, v69))
    {
      objc_msgSend_setType_(v8, v70, 240, v71);
    }

    v74 = v8;
    v141 = v74;
    if (v187[0] == 7)
    {
      v140 = objc_msgSend_groupByForUuidCoord_(self->_groupBySet, v72, x2_0, v73);
      v77 = objc_msgSend_groupNodeForUuidCoord_(self->_groupBySet, v75, x2_0, v76);
      v81 = objc_msgSend_groupBySet(self, v78, v79, v80);
      v83 = objc_msgSend_percentRunningDenominatorCategoryRefFor_inGroupBy_runningOnColumnUid_forAggregate_(v81, v82, v77, v140, v173, v11);

      v141 = v74;
      if (objc_msgSend_isValid(v83, v84, v85, v86))
      {
        v141 = v83;
      }
    }

    v171 = 0u;
    v172 = 0u;
    v22 = v142;
    if (!contextCopy || (objc_msgSend_getPreviousUidCoordForAggIndex_fromNewUidCoord_addNewUidCoordEvenIfNotFound_(contextCopy, v72, v67, x2_0, 1), v171 == 0) || v172 == 0)
    {
      if (v187[0] == 6)
      {
        v98 = [TSCEFormulaObject alloc];
        TSCEFormulaCreationMagic::categoryRef(v74, &v158);
        v95 = &v158;
        v21 = objc_msgSend_initWithCreator_(v98, v99, &v158, v100);
        goto LABEL_48;
      }

      v124 = [TSCEFormulaObject alloc];
      TSCEFormulaCreationMagic::categoryRef(v74, &v155);
      TSCEFormulaCreationMagic::categoryRef(v141, &v154);
      TSCEFormulaCreationMagic::operator/(&v155, &v154, &v156);
      TSUDecimal::operator=();
      v193._decimal.w[0] = v161;
      TSCEFormulaCreationMagic::number(v160, v193, &v153, v125);
      v126.var0 = &v153;
      TSCEFormulaCreationMagic::IFERROR(&v156, v126, v191, &v157);
      v21 = objc_msgSend_initWithCreator_(v124, v127, &v157, v128);

      v95 = &v155;
      v96 = &v154;
      v97 = v156;
    }

    else if (v187[0] == 6)
    {
      v87 = [TSCEFormulaObject alloc];
      TSCEFormulaCreationMagic::categoryRef(v74, &v169);
      v91 = objc_msgSend_tableUID(v142, v88, v89, v90);
      TSCEFormulaCreationMagic::viewCellRef(v91, v92, v171, *(&v171 + 1), v172, *(&v172 + 1), 255, 255, &v168, 0xFFFF);
      TSCEFormulaCreationMagic::operator+(&v169, &v168, &v170);
      v21 = objc_msgSend_initWithCreator_(v87, v93, &v170, v94);
      v95 = &v169;
      v96 = &v168;
      v97 = v170;
    }

    else
    {
      v130 = [TSCEFormulaObject alloc];
      TSCEFormulaCreationMagic::categoryRef(v74, &v164);
      TSCEFormulaCreationMagic::categoryRef(v141, &v163);
      TSCEFormulaCreationMagic::operator/(&v164, &v163, &v165);
      TSUDecimal::operator=();
      v194._decimal.w[0] = v161;
      TSCEFormulaCreationMagic::number(v160, v194, &v162, v131);
      v132.var0 = &v162;
      TSCEFormulaCreationMagic::IFERROR(&v165, v132, v192, &v166);
      v136 = objc_msgSend_tableUID(v142, v133, v134, v135);
      TSCEFormulaCreationMagic::viewCellRef(v136, v137, v171, *(&v171 + 1), v172, *(&v172 + 1), 255, 255, &v159, 0xFFFF);
      TSCEFormulaCreationMagic::operator+(&v166, &v159, &v167);
      v21 = objc_msgSend_initWithCreator_(v130, v138, &v167, v139);

      v95 = &v164;
      v96 = &v163;
      v97 = v165;
    }

LABEL_48:
    v129 = v187[0];

    if (v129 != 7)
    {
      goto LABEL_42;
    }

LABEL_41:
    v110 = objc_msgSend_translationFlags(v21, v38, v39, v40);
    v113 = objc_msgSend_copyBySettingTranslationFlags_(v21, v111, v110 | 8u, v112);

    v21 = v113;
    goto LABEL_42;
  }

  if ((v187[0] & 0xFE) != 6)
  {
    v21 = 0;
    v22 = v142;
    goto LABEL_42;
  }

  v28 = objc_msgSend_aggregateIndexForUidCoord_(self->_groupBySet, v18, x2_0, v20);
  v171 = 0u;
  v172 = 0u;
  v22 = v142;
  if (!contextCopy || (objc_msgSend_getPreviousUidCoordForAggIndex_fromNewUidCoord_addNewUidCoordEvenIfNotFound_(contextCopy, v29, v28, x2_0, 0), v171 == 0) || v172 == 0)
  {
LABEL_18:
    v21 = 0;
    goto LABEL_42;
  }

  v30 = [TSCEFormulaObject alloc];
  v34 = objc_msgSend_tableUID(v142, v31, v32, v33);
  TSCEFormulaCreationMagic::viewCellRef(v34, v35, v171, *(&v171 + 1), v172, *(&v172 + 1), 255, 255, &v143, 0xFFFF);
  v21 = objc_msgSend_initWithCreator_(v30, v36, &v143, v37);

  if (v187[0] == 7)
  {
    goto LABEL_41;
  }

LABEL_42:

  return v21;
}

- (void)p_resetSortingStructures
{
  self->_sortedRowUids.__end_ = self->_sortedRowUids.__begin_;
  self->_sortedColumnUids.__end_ = self->_sortedColumnUids.__begin_;
  self->_resetHeaderLabelsAfterSort = 0;
}

- (void)sortRowsByColumnIndex:(unsigned int)index level:(unsigned __int8)level aggregateIndex:(unint64_t)aggregateIndex sortDirection:(int)direction
{
  v6 = *&direction;
  levelCopy = level;
  v9 = *&index;
  self->_autoImplicitSort = 0;
  self->_shouldSkipNextAsyncSort = 0;
  objc_msgSend_p_resetSortingStructures(self, a2, *&index, level);
  v17 = 0;
  if (levelCopy == 252)
  {
    objc_msgSend_p_sortRowsInMode_sortDirection_columnIndex_level_aggregateIndex_resetLabels_(self, v11, 4, v6, v9, levelCopy, aggregateIndex, &v17);
  }

  else
  {
    objc_msgSend_p_sortRowsInMode_sortDirection_columnIndex_level_aggregateIndex_resetLabels_(self, v11, 3, v6, v9, levelCopy, aggregateIndex, &v17);
  }

  v13 = __p;
  v14 = v16;
  if (__p == v16)
  {
    objc_msgSend_p_resetSortingStructures(self, __p, v16, v12);
  }

  else
  {
    if (&self->_sortedRowUids != &__p)
    {
      sub_2210BD068(&self->_sortedRowUids, __p, v16, (v16 - __p) >> 4);
    }

    self->_resetHeaderLabelsAfterSort = 1;
    objc_msgSend_p_commitSort(self, v13, v14, v12);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

- (void)sortColumnsByRowIndex:(unsigned int)index level:(unsigned __int8)level aggregateIndex:(unint64_t)aggregateIndex sortDirection:(int)direction
{
  v6 = *&direction;
  levelCopy = level;
  v9 = *&index;
  self->_autoImplicitSort = 0;
  self->_shouldSkipNextAsyncSort = 0;
  objc_msgSend_p_resetSortingStructures(self, a2, *&index, level);
  v17 = 0;
  if (levelCopy == 252)
  {
    objc_msgSend_p_sortColumnsInMode_sortDirection_rowIndex_level_aggregateIndex_resetLabels_(self, v11, 4, v6, v9, levelCopy, aggregateIndex, &v17);
  }

  else
  {
    objc_msgSend_p_sortColumnsInMode_sortDirection_rowIndex_level_aggregateIndex_resetLabels_(self, v11, 3, v6, v9, levelCopy, aggregateIndex, &v17);
  }

  v13 = __p;
  v14 = v16;
  if (__p == v16)
  {
    objc_msgSend_p_resetSortingStructures(self, __p, v16, v12);
  }

  else
  {
    if (&self->_sortedColumnUids != &__p)
    {
      sub_2210BD068(&self->_sortedColumnUids, __p, v16, (v16 - __p) >> 4);
    }

    self->_resetHeaderLabelsAfterSort = 1;
    objc_msgSend_p_commitSort(self, v13, v14, v12);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

- (void)handlePivotSorting:(BOOL)sorting
{
  self->_autoImplicitSort = sorting;
  self->_shouldSkipNextAsyncSort = 0;
  if (self->_autoImplicitSort)
  {
    objc_msgSend_p_sortFullTable_(self, a2, 0, v3);

    objc_msgSend_p_commitSort(self, v6, v7, v8);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)p_sortRowsInMode:(SEL)mode sortDirection:(unint64_t)direction columnIndex:(int)index level:(unsigned int)level aggregateIndex:(unsigned __int8)aggregateIndex resetLabels:(unint64_t)labels
{
  v112[6] = *MEMORY[0x277D85DE8];
  v104 = 0;
  v105 = &v104;
  v106 = 0x4812000000;
  v107 = sub_2213313E8;
  v108 = sub_22133140C;
  v109 = 0u;
  v110 = 0u;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v17 = direction < 3;
  v75 = objc_msgSend_tableInfo(self->_tableModel, mode, direction, *&index);
  levelCopy = level;
  indexCopy = index;
  v70 = a9;
  directionCopy = direction;
  aggregateIndexCopy = aggregateIndex;
  v23 = objc_msgSend_count(self->_aggregates, v18, v19, v20);
  v99[0] = 0;
  v99[1] = 0;
  v98 = v99;
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v25 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v21, i, v22);
      v89.origin = objc_msgSend_columnAggregateUid(v25, v26, v27, v28);
      v89.size = v29;
      v111 = &v89;
      *(sub_221335730(&v98, &v89.origin, &unk_2217E14C4, &v111) + 48) = i;
    }
  }

  v30 = objc_opt_new();
  v112[0] = v30;
  v31 = objc_opt_new();
  v112[1] = v31;
  v32 = objc_opt_new();
  v112[2] = v32;
  v33 = objc_opt_new();
  v112[3] = v33;
  v34 = objc_opt_new();
  v112[4] = v34;
  v35 = objc_opt_new();
  v112[5] = v35;
  v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v112, 6);

  v37 = MEMORY[0x277CCAA78];
  v89.origin = objc_msgSend_bodyRowRange(v75, v38, v39, v40);
  v89.size = v41;
  v42 = TSUCellRect::rows(&v89);
  v44 = objc_msgSend_indexSetWithIndexesInRange_(v37, v43, v42, v43);
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3321888768;
  v92[2] = sub_221331424;
  v92[3] = &unk_2834A52C0;
  v45 = v75;
  v93 = v45;
  selfCopy = self;
  v97 = v17;
  sub_2213357CC(v96, &v98);
  v96[3] = labels;
  v46 = v69;
  v95 = v46;
  objc_msgSend_enumerateIndexesUsingBlock_(v44, v47, v92, v48);
  v89.origin = 0;
  v89.size = &v89;
  v90 = 0x2020000000;
  v91 = 0;
  v52 = objc_msgSend_groupingColumns(self->_rowGroupings, v49, v50, v51);
  v56 = objc_msgSend_groupBySet(self, v53, v54, v55);
  v60 = objc_msgSend_groupByForRowGroups(v56, v57, v58, v59);

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3321888768;
  v76[2] = sub_221331648;
  v76[3] = &unk_2834A5330;
  v85 = levelCopy;
  v86 = indexCopy;
  v76[4] = self;
  labelsCopy = labels;
  v87 = v17;
  sub_2213357CC(v84, &v98);
  v61 = v45;
  v77 = v61;
  v84[3] = directionCopy;
  v88 = aggregateIndexCopy;
  v62 = v46;
  v78 = v62;
  v80 = &v89;
  v63 = v60;
  v79 = v63;
  v81 = &v104;
  v82 = &v100;
  objc_msgSend_enumerateObjectsUsingBlock_(v52, v64, v76, v65);
  if (*(*&v89.size + 24) == 1)
  {
    v66 = v105[6];
    v67 = v105[7];
  }

  else
  {
    v67 = v105[6];
    v105[7] = v67;
    v66 = v67;
  }

  *v70 = *(v101 + 24);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v66, v67, (v67 - v66) >> 4);

  sub_2210BC9F8(v84, v84[1]);
  _Block_object_dispose(&v89, 8);

  sub_2210BC9F8(v96, v96[1]);
  sub_2210BC9F8(&v98, v99[0]);

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  result = *(&v109 + 1);
  if (*(&v109 + 1))
  {
    *&v110 = *(&v109 + 1);
    operator delete(*(&v109 + 1));
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)p_sortColumnsInMode:(SEL)mode sortDirection:(unint64_t)direction rowIndex:(int)index level:(unsigned int)level aggregateIndex:(unsigned __int8)aggregateIndex resetLabels:(unint64_t)labels
{
  v112[6] = *MEMORY[0x277D85DE8];
  v104 = 0;
  v105 = &v104;
  v106 = 0x4812000000;
  v107 = sub_2213313E8;
  v108 = sub_22133140C;
  v109 = 0u;
  v110 = 0u;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v17 = direction < 3;
  v75 = objc_msgSend_tableInfo(self->_tableModel, mode, direction, *&index);
  levelCopy = level;
  indexCopy = index;
  v70 = a9;
  directionCopy = direction;
  aggregateIndexCopy = aggregateIndex;
  v23 = objc_msgSend_count(self->_aggregates, v18, v19, v20);
  v99[0] = 0;
  v99[1] = 0;
  v98 = v99;
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v25 = objc_msgSend_aggregateAtIndex_(self->_aggregates, v21, i, v22);
      v89.origin = objc_msgSend_columnAggregateUid(v25, v26, v27, v28);
      v89.size = v29;
      v111 = &v89;
      *(sub_221335730(&v98, &v89.origin, &unk_2217E14C4, &v111) + 48) = i;
    }
  }

  v30 = objc_opt_new();
  v112[0] = v30;
  v31 = objc_opt_new();
  v112[1] = v31;
  v32 = objc_opt_new();
  v112[2] = v32;
  v33 = objc_opt_new();
  v112[3] = v33;
  v34 = objc_opt_new();
  v112[4] = v34;
  v35 = objc_opt_new();
  v112[5] = v35;
  v69 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v112, 6);

  v37 = MEMORY[0x277CCAA78];
  v89.origin = objc_msgSend_bodyColumnRange(v75, v38, v39, v40);
  v89.size = v41;
  v42 = TSUCellRect::columns(&v89);
  v44 = objc_msgSend_indexSetWithIndexesInRange_(v37, v43, v42, v43);
  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3321888768;
  v92[2] = sub_2213322BC;
  v92[3] = &unk_2834A52C0;
  v45 = v75;
  v93 = v45;
  selfCopy = self;
  v97 = v17;
  sub_2213357CC(v96, &v98);
  v96[3] = labels;
  v46 = v69;
  v95 = v46;
  objc_msgSend_enumerateIndexesUsingBlock_(v44, v47, v92, v48);
  v89.origin = 0;
  v89.size = &v89;
  v90 = 0x2020000000;
  v91 = 0;
  v52 = objc_msgSend_groupingColumns(self->_columnGroupings, v49, v50, v51);
  v56 = objc_msgSend_groupBySet(self, v53, v54, v55);
  v60 = objc_msgSend_groupByForColumnGroups(v56, v57, v58, v59);

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3321888768;
  v76[2] = sub_2213324CC;
  v76[3] = &unk_2834A5330;
  v85 = levelCopy;
  v86 = indexCopy;
  v76[4] = self;
  labelsCopy = labels;
  v87 = v17;
  sub_2213357CC(v84, &v98);
  v61 = v45;
  v77 = v61;
  v84[3] = directionCopy;
  v88 = aggregateIndexCopy;
  v62 = v46;
  v78 = v62;
  v80 = &v89;
  v63 = v60;
  v79 = v63;
  v81 = &v104;
  v82 = &v100;
  objc_msgSend_enumerateObjectsUsingBlock_(v52, v64, v76, v65);
  if (*(*&v89.size + 24) == 1)
  {
    v66 = v105[6];
    v67 = v105[7];
  }

  else
  {
    v67 = v105[6];
    v105[7] = v67;
    v66 = v67;
  }

  *v70 = *(v101 + 24);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v66, v67, (v67 - v66) >> 4);

  sub_2210BC9F8(v84, v84[1]);
  _Block_object_dispose(&v89, 8);

  sub_2210BC9F8(v96, v96[1]);
  sub_2210BC9F8(&v98, v99[0]);

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  result = *(&v109 + 1);
  if (*(&v109 + 1))
  {
    *&v110 = *(&v109 + 1);
    operator delete(*(&v109 + 1));
  }

  return result;
}

- (void)p_sortFullTable:(unint64_t)table
{
  if (table >= 3)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTPivotOwner p_sortFullTable:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 2172, 0, "Full table sort is only appropriate for implicit sort modes.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v31 = objc_msgSend_tableInfo(self->_tableModel, a2, table, v3);
  if (objc_msgSend_isAPivotTable(v31, v15, v16, v17) && (objc_msgSend_isEmptyPivot(v31, v18, v19, v20) & 1) == 0)
  {
    v35 = 0;
    objc_msgSend_p_sortRowsInMode_sortDirection_columnIndex_level_aggregateIndex_resetLabels_(self, v21, table, 0, 0x7FFFLL, 255, 0, &v35);
    v22 = v33;
    v23 = v34;
    v32 = 0;
    objc_msgSend_p_sortColumnsInMode_sortDirection_rowIndex_level_aggregateIndex_resetLabels_(self, v24, table, 0, 0x7FFFLL, 255, 0, &v32);
    v25 = v33;
    v26 = v34;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_msgSend_p_resetSortingStructures(selfCopy, v28, v29, v30);
    selfCopy->_resetHeaderLabelsAfterSort = (v35 | v32) & 1;
    sub_2210BD068(&selfCopy->_sortedRowUids, v22, v23, (v23 - v22) >> 4);
    sub_2210BD068(&selfCopy->_sortedColumnUids, v25, v26, (v26 - v25) >> 4);
    objc_sync_exit(selfCopy);

    if (v22)
    {
      operator delete(v22);
    }

    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
  }
}

- (BOOL)p_commitSortAsync
{
  if (self->_autoImplicitSort)
  {

    return objc_msgSend_p_commitSort(self, a2, v2, v3);
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_msgSend_p_resetSortingStructures(selfCopy, v6, v7, v8);
    objc_sync_exit(selfCopy);

    return 0;
  }
}

- (BOOL)p_commitSort
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_msgSend_tableInfo(selfCopy->_tableModel, v3, v4, v5);
  v10 = objc_msgSend_pivotOrder(v6, v7, v8, v9);
  v13 = v10;
  p_sortedRowUids = &selfCopy->_sortedRowUids;
  begin = selfCopy->_sortedRowUids.__begin_;
  end = selfCopy->_sortedRowUids.__end_;
  v17 = selfCopy->_sortedColumnUids.__begin_;
  v18 = selfCopy->_sortedColumnUids.__end_;
  v19 = begin == end && v17 == v18;
  v20 = !v19;
  if (v19)
  {
    objc_msgSend_setOrderUsingViewOrderForDimension_(v10, v11, 0, v12);
    objc_msgSend_setOrderUsingViewOrderForDimension_(v13, v54, 1, v55);
  }

  else
  {
    if (begin != end)
    {
      objc_msgSend_setTemporaryOrder_forDimension_(v10, v11, p_sortedRowUids, 0);
    }

    if (v17 != v18)
    {
      objc_msgSend_setTemporaryOrder_forDimension_(v13, v11, &selfCopy->_sortedColumnUids, 1);
    }

    v21 = objc_msgSend_translator(v6, v11, p_sortedRowUids, v12);
    objc_msgSend_resetViewMap(v21, v22, v23, v24);

    if (selfCopy->_resetHeaderLabelsAfterSort)
    {
      objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(selfCopy, v25, 0, 1);
    }

    objc_msgSend_p_resetSummaryFormulasForRunningTotalsOnly_preservingStyles_(selfCopy, v25, 1, 1);
    objc_msgSend_setOrderUsingViewOrderForDimension_(v13, v26, 0, v27);
    objc_msgSend_setOrderUsingViewOrderForDimension_(v13, v28, 1, v29);
    objc_msgSend_filterSetUpdated(v6, v30, v31, v32);
    v36 = objc_msgSend_translator(v6, v33, v34, v35);
    objc_msgSend_resetViewMapAndNotify(v36, v37, v38, v39);

    v43 = objc_msgSend_calcEngine(selfCopy->_tableModel, v40, v41, v42);
    v57[0] = objc_msgSend_tableUID(selfCopy->_tableModel, v44, v45, v46);
    v57[1] = v47;
    objc_msgSend_pivotSortChangedPrecedentForTableUID_(TSCEHauntedOwner, v47, v57, v48);
    objc_msgSend_markCellRefAsDirty_(v43, v49, v58, v50);
  }

  objc_msgSend_p_resetSortingStructures(selfCopy, v51, v52, v53);

  objc_sync_exit(selfCopy);
  return v20;
}

- (id)indexesForLeadingRows
{
  v5 = objc_msgSend_count(self->_rowGroupings, a2, v2, v3);
  v8 = objc_opt_new();
  if (v5)
  {
    v9 = 0;
    do
    {
      v10 = objc_msgSend_indexesForLeadingRowsAtGroupLevel_(self, v6, v9, v7);
      objc_msgSend_addIndexes_(v8, v11, v10, v12);

      ++v9;
    }

    while (v9 < v5);
  }

  return v8;
}

- (id)indexesForLeadingRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, level, v3);
  v10 = objc_msgSend_groupByForRows(v6, v7, v8, v9);

  v14 = objc_msgSend_count(self->_rowGroupings, v11, v12, v13);
  v60 = 0;
  v61 = &v60;
  v62 = 0x4812000000;
  v63 = sub_2213313E8;
  v64 = sub_22133140C;
  *__p = 0u;
  v66 = 0u;
  v18 = objc_msgSend_tableInfo(self->_tableModel, v15, v16, v17);
  v22 = objc_msgSend_hiddenStates(v18, v19, v20, v21);

  v26 = objc_msgSend_tableInfo(self->_tableModel, v23, v24, v25);
  v30 = objc_msgSend_translator(v26, v27, v28, v29);
  v34 = objc_msgSend_viewMap(v30, v31, v32, v33);

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_22133333C;
  v55[3] = &unk_278462DF0;
  v35 = v34;
  v56 = v35;
  v59 = v14;
  v36 = v22;
  v57 = v36;
  v58 = &v60;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v10, v37, levelCopy, v55);
  v41 = objc_msgSend_tableInfo(self->_tableModel, v38, v39, v40);
  v45 = objc_msgSend_translator(v41, v42, v43, v44);
  v48 = objc_msgSend_viewRowIndexesForUIDs_(v45, v46, (v61 + 6), v47);

  if (v48)
  {
    v52 = v48;
  }

  else
  {
    v52 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v49, v50, v51);
  }

  v53 = v52;

  _Block_object_dispose(&v60, 8);
  if (__p[1])
  {
    *&v66 = __p[1];
    operator delete(__p[1]);
  }

  return v53;
}

- (id)indexesForLeadingSummaryRowsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, level, v3);
  v10 = objc_msgSend_groupByForRows(v6, v7, v8, v9);

  v30 = 0;
  v31 = &v30;
  v32 = 0x4812000000;
  v33 = sub_2213313E8;
  v34 = sub_22133140C;
  *__p = 0u;
  v36 = 0u;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2213335E8;
  v29[3] = &unk_278462E18;
  v29[4] = &v30;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v10, v11, levelCopy, v29);
  v15 = objc_msgSend_tableInfo(self->_tableModel, v12, v13, v14);
  v19 = objc_msgSend_translator(v15, v16, v17, v18);
  v22 = objc_msgSend_viewRowIndexesForUIDs_(v19, v20, (v31 + 6), v21);

  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v23, v24, v25);
  }

  v27 = v26;

  _Block_object_dispose(&v30, 8);
  if (__p[1])
  {
    *&v36 = __p[1];
    operator delete(__p[1]);
  }

  return v27;
}

- (id)indexesForLeadingColumns
{
  v5 = objc_msgSend_count(self->_columnGroupings, a2, v2, v3);
  v8 = objc_opt_new();
  if (v5)
  {
    v9 = 0;
    do
    {
      v10 = objc_msgSend_indexesForLeadingColumnsAtGroupLevel_(self, v6, v9, v7);
      objc_msgSend_addIndexes_(v8, v11, v10, v12);

      ++v9;
    }

    while (v9 < v5);
  }

  return v8;
}

- (id)indexesForLeadingColumnsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, level, v3);
  v10 = objc_msgSend_groupByForColumns(v6, v7, v8, v9);

  v14 = objc_msgSend_count(self->_columnGroupings, v11, v12, v13);
  v60 = 0;
  v61 = &v60;
  v62 = 0x4812000000;
  v63 = sub_2213313E8;
  v64 = sub_22133140C;
  *__p = 0u;
  v66 = 0u;
  v18 = objc_msgSend_tableInfo(self->_tableModel, v15, v16, v17);
  v22 = objc_msgSend_hiddenStates(v18, v19, v20, v21);

  v26 = objc_msgSend_tableInfo(self->_tableModel, v23, v24, v25);
  v30 = objc_msgSend_translator(v26, v27, v28, v29);
  v34 = objc_msgSend_viewMap(v30, v31, v32, v33);

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_2213339FC;
  v55[3] = &unk_278462DF0;
  v35 = v34;
  v56 = v35;
  v59 = v14;
  v36 = v22;
  v57 = v36;
  v58 = &v60;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v10, v37, levelCopy, v55);
  v41 = objc_msgSend_tableInfo(self->_tableModel, v38, v39, v40);
  v45 = objc_msgSend_translator(v41, v42, v43, v44);
  v48 = objc_msgSend_viewColumnIndexesForUIDs_(v45, v46, (v61 + 6), v47);

  if (v48)
  {
    v52 = v48;
  }

  else
  {
    v52 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v49, v50, v51);
  }

  v53 = v52;

  _Block_object_dispose(&v60, 8);
  if (__p[1])
  {
    *&v66 = __p[1];
    operator delete(__p[1]);
  }

  return v53;
}

- (id)indexesForLeadingSummaryColumnsAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, level, v3);
  v10 = objc_msgSend_groupByForColumns(v6, v7, v8, v9);

  v30 = 0;
  v31 = &v30;
  v32 = 0x4812000000;
  v33 = sub_2213313E8;
  v34 = sub_22133140C;
  *__p = 0u;
  v36 = 0u;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_221333CA8;
  v29[3] = &unk_278462E18;
  v29[4] = &v30;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v10, v11, levelCopy, v29);
  v15 = objc_msgSend_tableInfo(self->_tableModel, v12, v13, v14);
  v19 = objc_msgSend_translator(v15, v16, v17, v18);
  v22 = objc_msgSend_viewColumnIndexesForUIDs_(v19, v20, (v31 + 6), v21);

  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v23, v24, v25);
  }

  v27 = v26;

  _Block_object_dispose(&v30, 8);
  if (__p[1])
  {
    *&v36 = __p[1];
    operator delete(__p[1]);
  }

  return v27;
}

- (void)collapseExpandChanged:(id)changed forState:(id)state
{
  changedCopy = changed;
  if (objc_msgSend_count(changedCopy, v5, v6, v7))
  {
    objc_msgSend_willModify(self, v8, v9, v10);
    v14 = objc_msgSend_tableInfo(self->_tableModel, v11, v12, v13);
    v18 = objc_msgSend_translator(v14, v15, v16, v17);
    objc_msgSend_flushCachedIndexSets(v18, v19, v20, v21);

    objc_msgSend_p_setPivotHeaderCellsResettingPivotHidden_preservingStyles_(self, v22, 1, 1);
  }

  else
  {
    v23 = objc_msgSend_tableInfo(self->_tableModel, v8, v9, v10);
    v27 = objc_msgSend_translator(v23, v24, v25, v26);
    objc_msgSend_flushCachedIndexSets(v27, v28, v29, v30);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[282], v6);

  v8 = [TSTGroupingColumnList alloc];
  if (*(v7 + 40))
  {
    v11 = objc_msgSend_initWithArchive_(v8, v9, *(v7 + 40), v10);
  }

  else
  {
    v11 = objc_msgSend_initWithArchive_(v8, v9, &TST::_GroupColumnListArchive_default_instance_, v10);
  }

  rowGroupings = self->_rowGroupings;
  self->_rowGroupings = v11;

  v13 = [TSTGroupingColumnList alloc];
  if (*(v7 + 48))
  {
    v16 = objc_msgSend_initWithArchive_(v13, v14, *(v7 + 48), v15);
  }

  else
  {
    v16 = objc_msgSend_initWithArchive_(v13, v14, &TST::_GroupColumnListArchive_default_instance_, v15);
  }

  columnGroupings = self->_columnGroupings;
  self->_columnGroupings = v16;

  v18 = [TSTColumnAggregateList alloc];
  if (*(v7 + 56))
  {
    v21 = objc_msgSend_initWithArchive_(v18, v19, *(v7 + 56), v20);
  }

  else
  {
    v21 = objc_msgSend_initWithArchive_(v18, v19, &TST::_ColumnAggregateListArchive_default_instance_, v20);
  }

  aggregates = self->_aggregates;
  self->_aggregates = v21;

  self->_flatteningDimension = *(v7 + 120);
  v26 = *(v7 + 16);
  if ((v26 & 2) != 0)
  {
    self->_ownerUID._lower = TSKUIDStruct::loadFromMessage(*(v7 + 32), v23);
    self->_ownerUID._upper = v23;
    v26 = *(v7 + 16);
  }

  if ((v26 & 0x2000) != 0)
  {
    v27 = *(v7 + 124);
  }

  else
  {
    v27 = 0;
  }

  self->_isEmptyPivot = v27;
  if ((v26 & 0x20) != 0)
  {
    self->_pivotSourceTableUID._lower = TSKUIDStruct::loadFromMessage(*(v7 + 64), v23);
    self->_pivotSourceTableUID._upper = v23;
    v26 = *(v7 + 16);
  }

  if (v26)
  {
    v28 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v23, *(v7 + 24) & 0xFFFFFFFFFFFFFFFELL, v25);
    pivotSourceTableName = self->_pivotSourceTableName;
    self->_pivotSourceTableName = v28;

    v26 = *(v7 + 16);
  }

  if ((v26 & 0x100) != 0)
  {
    self->_pivotDataRefreshUID._lower = TSKUIDStruct::loadFromMessage(*(v7 + 88), v23);
    self->_pivotDataRefreshUID._upper = v23;
    v26 = *(v7 + 16);
  }

  if ((v26 & 0x800) != 0)
  {
    self->_pivotDataRefreshTimestamp = *(v7 + 112);
  }

  if ((v26 & 0x200) != 0)
  {
    self->_pivotRowColumnRuleChangeUID._lower = TSKUIDStruct::loadFromMessage(*(v7 + 96), v23);
    self->_pivotRowColumnRuleChangeUID._upper = v23;
    v26 = *(v7 + 16);
  }

  if ((v26 & 0x400) != 0)
  {
    self->_pivotAggregateRuleChangeUID._lower = TSKUIDStruct::loadFromMessage(*(v7 + 104), v23);
    self->_pivotAggregateRuleChangeUID._upper = v23;
    v26 = *(v7 + 16);
  }

  if ((v26 & 0x40) != 0)
  {
    v39 = *(v7 + 72);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_2213341FC;
    v50[3] = &unk_278462E40;
    v50[4] = self;
    v40 = unarchiverCopy;
    v41 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v40, v42, v39, v41, 0, v50);
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v23, v24, v25);
    v30 = [TSTPivotGroupingColumnOptionsMap alloc];
    v34 = objc_msgSend_context(self, v31, v32, v33);
    v37 = objc_msgSend_initWithContext_(v30, v35, v34, v36);
    groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
    self->_groupingColumnOptionsMap = v37;
  }

  v43 = *(v7 + 16);
  if ((v43 & 0x8000) == 0)
  {
    if ((v43 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    self->_isHidingGrandTotalRows = *(v7 + 125);
    if ((v43 & 0x80) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  self->_isHidingGrandTotalColumns = *(v7 + 126);
  if ((v43 & 0x4000) != 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  if ((v43 & 0x80) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v44 = [TSTFormulaStore alloc];
  if (*(v7 + 80))
  {
    v46 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v44, v45, &self->_ownerUID, *(v7 + 80), unarchiverCopy);
  }

  else
  {
    v46 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v44, v45, &self->_ownerUID, &TST::_FormulaStoreArchive_default_instance_, unarchiverCopy);
  }

  formulaStore = self->_formulaStore;
  self->_formulaStore = v46;

  objc_msgSend_setUsesOnlyFixedCoords_(self->_formulaStore, v48, 1, v49);
LABEL_40:
}

- (void)setupAfterUnarchiveForPivotTable:(const TSKUIDStruct *)table pivotDataTable:(id)dataTable
{
  dataTableCopy = dataTable;
  if (dataTableCopy)
  {
    v6 = [TSTGroupBySet alloc];
    v9 = objc_msgSend_initWithPivotTableUID_(v6, v7, table, v8);
    groupBySet = self->_groupBySet;
    self->_groupBySet = v9;

    objc_msgSend_restoreFromPivotDataTable_columnGroupings_rowGroupings_aggregates_flatteningDimension_(self->_groupBySet, v11, dataTableCopy, self->_columnGroupings, self->_rowGroupings, self->_aggregates, self->_flatteningDimension);
    v15 = objc_msgSend_hiddenStatesOwner(dataTableCopy, v12, v13, v14);
    v19 = objc_msgSend_hiddenStates(v15, v16, v17, v18);
    v23 = objc_msgSend_filterSetForRows(v19, v20, v21, v22);

    if (v23)
    {
      objc_msgSend_setFilterSet_forPivotDataTable_(self, v24, v23, dataTableCopy);
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221335B78, off_2812E4498[282]);

  rowGroupings = self->_rowGroupings;
  *(v5 + 16) |= 4u;
  v8 = *(v5 + 40);
  if (!v8)
  {
    v9 = *(v5 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnListArchive>(v9);
    *(v5 + 40) = v8;
  }

  objc_msgSend_encodeToArchive_archiver_(rowGroupings, v6, v8, archiverCopy);
  columnGroupings = self->_columnGroupings;
  *(v5 + 16) |= 8u;
  v12 = *(v5 + 48);
  if (!v12)
  {
    v13 = *(v5 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnListArchive>(v13);
    *(v5 + 48) = v12;
  }

  objc_msgSend_encodeToArchive_archiver_(columnGroupings, v10, v12, archiverCopy);
  aggregates = self->_aggregates;
  *(v5 + 16) |= 0x10u;
  v16 = *(v5 + 56);
  if (!v16)
  {
    v17 = *(v5 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateListArchive>(v17);
    *(v5 + 56) = v16;
  }

  objc_msgSend_encodeToArchive_archiver_(aggregates, v14, v16, archiverCopy);
  if (objc_msgSend_count(self->_aggregates, v18, v19, v20) >= 0xB)
  {
    objc_msgSend_requiresDocumentVersion_(archiverCopy, v21, 0xD000000000002, v22);
  }

  v23 = *(v5 + 16);
  *(v5 + 120) = self->_flatteningDimension;
  *(v5 + 16) = v23 | 0x1002;
  v24 = *(v5 + 32);
  if (!v24)
  {
    v25 = *(v5 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x223DA0360](v25);
    *(v5 + 32) = v24;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v24);
  v26 = *(v5 + 16);
  *(v5 + 124) = self->_isEmptyPivot;
  *(v5 + 126) = self->_isHidingGrandTotalColumns;
  *(v5 + 125) = self->_isHidingGrandTotalRows;
  *(v5 + 16) = v26 | 0xE020;
  v27 = *(v5 + 64);
  if (!v27)
  {
    v28 = *(v5 + 8);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x223DA0360](v28);
    *(v5 + 64) = v27;
  }

  TSKUIDStruct::saveToMessage(&self->_pivotSourceTableUID, v27);
  v32 = objc_msgSend_tsp_protobufString(self->_pivotSourceTableName, v29, v30, v31);
  sub_22133476C(v5, v32);
  *(v5 + 16) |= 0x100u;
  v33 = *(v5 + 88);
  if (!v33)
  {
    v34 = *(v5 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x223DA0360](v34);
    *(v5 + 88) = v33;
  }

  TSKUIDStruct::saveToMessage(&self->_pivotDataRefreshUID, v33);
  v35 = *(v5 + 16);
  *(v5 + 112) = self->_pivotDataRefreshTimestamp;
  *(v5 + 16) = v35 | 0xA00;
  v36 = *(v5 + 96);
  if (!v36)
  {
    v37 = *(v5 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x223DA0360](v37);
    *(v5 + 96) = v36;
  }

  TSKUIDStruct::saveToMessage(&self->_pivotRowColumnRuleChangeUID, v36);
  *(v5 + 16) |= 0x400u;
  v38 = *(v5 + 104);
  if (!v38)
  {
    v39 = *(v5 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x223DA0360](v39);
    *(v5 + 104) = v38;
  }

  TSKUIDStruct::saveToMessage(&self->_pivotAggregateRuleChangeUID, v38);
  groupingColumnOptionsMap = self->_groupingColumnOptionsMap;
  *(v5 + 16) |= 0x40u;
  v42 = *(v5 + 72);
  if (!v42)
  {
    v43 = *(v5 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x223DA0390](v43);
    *(v5 + 72) = v42;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v40, groupingColumnOptionsMap, v42);
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {
    *(v5 + 16) |= 0x80u;
    v46 = *(v5 + 80);
    if (!v46)
    {
      v47 = *(v5 + 8);
      if (v47)
      {
        v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
      }

      v46 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v47);
      *(v5 + 80) = v46;
    }

    objc_msgSend_saveToArchive_archiver_(formulaStore, v44, v46, archiverCopy);
  }
}

- (void)invalidateForCalcEngine:(id)engine
{
  if (self->_invalidateAfterAsyncSort)
  {
    v20 = objc_msgSend_threadCollector(MEMORY[0x277D80630], a2, engine, v3);
    v8 = objc_msgSend_tableInfo(self->_tableModel, v5, v6, v7);
    v12 = objc_msgSend_range(v8, v9, v10, v11);
    v14 = objc_msgSend_changeDescriptorWithType_cellRange_(TSTChangeDescriptor, v13, 14, v12, v13);

    v18 = objc_msgSend_tableInfo(self->_tableModel, v15, v16, v17);
    objc_msgSend_registerChange_details_forChangeSource_(v20, v19, 1, v14, v18);

    self->_invalidateAfterAsyncSort = 0;
  }
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  atCopy = at;
  v8 = objc_msgSend_tableInfo(self->_tableModel, a2, *&at, engine);
  if (objc_msgSend_isAPivotTable(v8, v9, v10, v11))
  {
    isEmptyPivot = objc_msgSend_isEmptyPivot(self, v12, v13, v14);

    if ((isEmptyPivot & 1) == 0)
    {
      if ((*&at & 0x101FFFFFFFFFFFFLL) == 0x300000000)
      {
        if (self->_autoImplicitSort)
        {
          objc_msgSend_p_sortFullTable_(self, v16, 1, v17);
        }
      }

      else if (objc_msgSend_indexFromCoord_(TSTFormulaStore, v16, &atCopy, v17) >= 3)
      {
        v21 = MEMORY[0x277D81150];
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTPivotOwner evaluateFormulaAt:withCalcEngine:recalcOptions:]", v20);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotOwner.mm", v24);
        v26 = NSStringFromTSUCellCoord();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v25, 2560, 0, "Unexpected formulaCoord seen in TSTPivotOwner: %@", v26);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      }
    }
  }

  else
  {
  }

  return options;
}

- (void)writeResultsForCalcEngine:(id)engine
{
  v15 = objc_msgSend_tableInfo(self->_tableModel, a2, engine, v3);
  if (objc_msgSend_isAPivotTable(v15, v5, v6, v7))
  {
    isEmptyPivot = objc_msgSend_isEmptyPivot(self, v8, v9, v10);

    if ((isEmptyPivot & 1) == 0)
    {
      self->_invalidateAfterAsyncSort = objc_msgSend_p_commitSortAsync(self, v12, v13, v14);
    }
  }

  else
  {
  }
}

- (void)didChangeTableName:(id)name fromTableName:(id)tableName forTableUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  nameCopy = name;
  tableNameCopy = tableName;
  if (*&self->_pivotSourceTableUID == __PAIR128__(upper, lower))
  {
    objc_msgSend_setPivotSourceTableName_(self, v9, nameCopy, v10);
  }
}

- (TSKUIDStruct)ownerUID
{
  p_ownerUID = &self->_ownerUID;
  lower = self->_ownerUID._lower;
  upper = p_ownerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)pivotRowUIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_221086EBC(retstr, self->_pivotRowUIDs.__begin_, self->_pivotRowUIDs.__end_, self->_pivotRowUIDs.__end_ - self->_pivotRowUIDs.__begin_);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)pivotColumnUIDs
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  return sub_221086EBC(retstr, self->_pivotColumnUIDs.__begin_, self->_pivotColumnUIDs.__end_, self->_pivotColumnUIDs.__end_ - self->_pivotColumnUIDs.__begin_);
}

- (TSKUIDStruct)pivotSourceTableUID
{
  p_pivotSourceTableUID = &self->_pivotSourceTableUID;
  lower = self->_pivotSourceTableUID._lower;
  upper = p_pivotSourceTableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)pivotDataRefreshUID
{
  p_pivotDataRefreshUID = &self->_pivotDataRefreshUID;
  lower = self->_pivotDataRefreshUID._lower;
  upper = p_pivotDataRefreshUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)pivotRowColumnRuleChangeUID
{
  p_pivotRowColumnRuleChangeUID = &self->_pivotRowColumnRuleChangeUID;
  lower = self->_pivotRowColumnRuleChangeUID._lower;
  upper = p_pivotRowColumnRuleChangeUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)pivotAggregateRuleChangeUID
{
  p_pivotAggregateRuleChangeUID = &self->_pivotAggregateRuleChangeUID;
  lower = self->_pivotAggregateRuleChangeUID._lower;
  upper = p_pivotAggregateRuleChangeUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  *(self + 37) = 0;
  *(self + 38) = 0;
  *(self + 36) = 0;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  return self;
}

@end