@interface TSCEDependencyTracker
- ($85CD2974BE96D4886BB301820D1C36C2)spillSizeForCell:(const TSCECellRef *)cell;
- (BOOL)cellHasDeepPrecedentInRange:(const TSCECellRef *)range cellRange:(const TSCERangeRef *)cellRange;
- (BOOL)cellHasPrecedents:(const TSCECellRef *)precedents;
- (BOOL)cellHasThisCellPrecedent:(const TSCECellRef *)precedent precedent:(const TSCECellRef *)a4;
- (BOOL)cellIsClean:(const TSCECellRef *)clean;
- (BOOL)cellIsInACycle:(const TSCECellRef *)cycle;
- (BOOL)cellRefsReferringToGroupNodes:(const void *)nodes groupByUID:(const TSKUIDStruct *)d outCellRefs:(void *)refs;
- (BOOL)containsAnyTable;
- (BOOL)dgl_canDeleteOwnerDependencies:(unsigned __int16)dependencies;
- (BOOL)dgl_cellHasDeepPrecedentInRange:(const TSCEInternalCellReference *)range cellRange:(const TSCEInternalRangeReference *)cellRange;
- (BOOL)dgl_cellIsClean:(const TSCECellToEvaluate *)clean;
- (BOOL)dgl_cellIsInACycle:(const TSCEInternalCellReference *)cycle;
- (BOOL)dgl_cellIsReadyForEvaluation:(const TSCECellToEvaluate *)evaluation;
- (BOOL)dgl_cellRefsReferringToGroupNodes:(const void *)nodes groupByUID:(const TSKUIDStruct *)d outCellRefs:(void *)refs;
- (BOOL)dgl_hasDirtyCellsIgnoringNRM:(BOOL)m;
- (BOOL)dgl_hasFormulaAt:(const TSCEInternalCellReference *)at;
- (BOOL)dgl_intCellIsClean:(const TSCEInternalCellReference *)clean;
- (BOOL)dgl_ownerIDIsRegistered:(unsigned __int16)registered;
- (BOOL)dgl_rangeRefIsDirty:(const TSCERangeRef *)dirty;
- (BOOL)endBatchingGroupCellDirtying;
- (BOOL)hasCalculatedPrecedents:(const TSCECellRef *)precedents;
- (BOOL)hasCalculatedPrecedentsInternal:(const TSCEInternalCellReference *)internal;
- (BOOL)hasCellRecordsToPrune;
- (BOOL)hasDateTimeVolatileFunctions;
- (BOOL)hasDirtyCellsIgnoringNRM:(BOOL)m;
- (BOOL)hasEmbiggenedCoords;
- (BOOL)hasFormulaAt:(const TSCECellRef *)at;
- (BOOL)hasFormulaCellsUsingNowTodayRandom;
- (BOOL)hasHorizontalSpills:(const TSKUIDStruct *)spills;
- (BOOL)hasRemoteDataFunctions;
- (BOOL)hasSpillingCellsIntersectingRange:(const TSUCellRect *)range inTableUID:(const TSKUIDStruct *)d;
- (BOOL)hasSpillingErrorsForTable:(const TSKUIDStruct *)table;
- (BOOL)hasSpillsOverlappingRange:(const TSUCellRect *)range inTableUID:(const TSKUIDStruct *)d outSpillRects:(void *)rects;
- (BOOL)hasVerticalSpills:(const TSKUIDStruct *)spills;
- (BOOL)intCellContainsAFormula:(const TSCEInternalCellReference *)formula;
- (BOOL)intCellIsClean:(const TSCEInternalCellReference *)clean;
- (BOOL)isBatchingGroupCellDirtying;
- (BOOL)markIntCellRefDirtyIfCellContainsAFormula:(const TSCEInternalCellReference *)formula;
- (BOOL)ownerIDIsRegistered:(unsigned __int16)registered;
- (BOOL)ownerUIDIsRegistered:(const TSKUIDStruct *)registered;
- (BOOL)rangeRefIsDirtyOrCurrentlyBeingEvaluated:(const TSCERangeRef *)evaluated;
- (BOOL)setSpillSize:(id)size forCell:(const TSCECellRef *)cell withOverlaps:(void *)overlaps;
- (BOOL)verifyAllOwnersAreKnown;
- (BOOL)verifyTableAndBodyRangesForTable:(const TSKUIDStruct *)table;
- (TSCECellCoordSet)allFormulaCoordsInOwner:(SEL)owner;
- (TSCECellCoordSet)cellCoordinatesNeedingExcelImport:(SEL)import;
- (TSCECellCoordSet)cellCoordsWithError:(SEL)error inTable:(int64_t)table;
- (TSCECellCoordSet)cellsInACycleInOwner:(SEL)owner;
- (TSCECellCoordSet)spillOriginsInRange:(SEL)range;
- (TSCECellCoordSet)verticalSpillCells:(SEL)cells;
- (TSCECellRecord)dgl_findCellRecord:(const TSCECellRef *)record willModifyOnTile:(BOOL)tile;
- (TSCECellRecord)dgl_findCellRecordInternal:(const TSCEInternalCellReference *)internal willModifyOnTile:(BOOL)tile;
- (TSCECellRef)cellRefForInternalCellReference:(SEL)reference;
- (TSCECellRef)rootCauseForErrorInCell:(SEL)cell inOwner:(TSUCellCoord)owner outAtRootCell:(const TSKUIDStruct *)rootCell;
- (TSCECellRefSet)formulaCellsAffectedByRewrite:(SEL)rewrite postMove:(id)move;
- (TSCEDependencyTracker)initWithCalcEngine:(id)engine;
- (TSCEDependencyTracker)initWithCalcEngine:(id)engine archive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCEInternalCellRefSet)allCellRefsInOwner:(SEL)owner;
- (TSCEInternalCellRefSet)allDirtyCellRefs;
- (TSCEInternalCellRefSet)cellDependentsOfCell:(SEL)cell;
- (TSCEInternalCellRefSet)cellsInOwnerDependentOnBoth:(SEL)both precedent1:(const TSKUIDStruct *)precedent1 precedent2:(const TSCECellRef *)precedent2;
- (TSCEInternalCellRefSet)corruptCellRefs;
- (TSCEInternalCellReference)currentCellBeingModified;
- (TSCEInternalCellReference)internalCellReferenceForCellRef:(const TSCECellRef *)ref;
- (TSCEInternalRangeReference)internalRangeReferenceForRangeRef:(SEL)ref;
- (TSCERangeRef)rangeRefForInternalRangeReference:(SEL)reference;
- (TSCEReferenceSet)dgl_precedentsOfCell:(SEL)cell;
- (TSCEReferenceSet)precedentsOfCell:(SEL)cell;
- (TSKUIDStruct)formulaOwnerUIDForInternalFormulaOwnerID:(unsigned __int16)d;
- (id).cxx_construct;
- (id)dgl_cellDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_cellDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_errorsForOwnerID:(unsigned __int16)d;
- (id)dgl_errorsForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_ownerDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_ownerDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_ownerForOwnerID:(unsigned __int16)d;
- (id)dgl_rangeDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_rangeDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_spanningColumnDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_spanningColumnDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_spanningRowDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_spanningRowDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)dgl_wholeOwnerDependenciesForOwnerID:(unsigned __int16)d;
- (id)dgl_wholeOwnerDependenciesForOwnerUID:(const TSKUIDStruct *)d;
- (id)errorForCell:(const TSCECellRef *)cell;
- (id)evaluationInfoForCell:(TSCECellToEvaluate *)cell outHasDynamicPrecedents:(BOOL *)precedents outIsInCycle:(BOOL *)cycle;
- (id)ownerForOwnerID:(unsigned __int16)d;
- (id)ownerForOwnerUID:(const TSKUIDStruct *)d;
- (id)rangeDependenciesForOwnerID:(unsigned __int16)d;
- (id)spanningColumnDependenciesForOwnerID:(unsigned __int16)d;
- (id)spanningRowDependenciesForOwnerID:(unsigned __int16)d;
- (id)warningsForCell:(const TSCECellRef *)cell;
- (int)dgl_registerOwnerID:(unsigned __int16)d owner:(id)owner ownerIndex:(unsigned __int16)index;
- (int)dgl_registerOwnerUID:(const TSKUIDStruct *)d owner:(id)owner ownerIndex:(unsigned __int16)index;
- (int)registerOwnerID:(unsigned __int16)d owner:(id)owner ownerIndex:(unsigned __int16)index;
- (int)registerOwnerUID:(const TSKUIDStruct *)d owner:(id)owner ownerIndex:(unsigned __int16)index;
- (int64_t)countNumberOfFormulaCells;
- (int64_t)dgl_numDirtyCells;
- (int64_t)errorTypeForCell:(const TSCECellRef *)cell;
- (int64_t)numDirtyCells;
- (unint64_t)cellDependMemoryUseEstimate;
- (unint64_t)dgl_computedNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents;
- (unint64_t)dgl_popNextLeavesIfAvailable:(void *)available numLeaves:(unint64_t)leaves leafQueue:(id)queue;
- (unint64_t)dgl_updateNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents;
- (unint64_t)dgl_updateNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents cellDependencies:(id)dependencies cellRecord:(TSCECellRecord *)record;
- (unint64_t)errorCountForOwner:(const TSKUIDStruct *)owner;
- (unint64_t)numCellRecordsInOwnerUID:(const TSKUIDStruct *)d;
- (unint64_t)numDirtyCellsInOwnerID:(unsigned __int16)d;
- (unint64_t)numFormulaCellsInOwnerUID:(const TSKUIDStruct *)d;
- (unordered_set<unsigned)ownerIDsWithRecordsToPrune;
- (unsigned)dgl_ownerKindForOwnerID:(unsigned __int16)d;
- (unsigned)dgl_removePrecedentsFromOwnerInPhases:(unsigned __int16)phases startPhase:(unsigned int)phase startTime:(id)time timeout:(double)timeout;
- (unsigned)internalFormulaOwnerIDForFormulaOwnerUID:(const TSKUIDStruct *)d createIfMissing:(BOOL)missing;
- (unsigned)ownerKindForOwnerID:(unsigned __int16)d;
- (vector<TSCECellToEvaluate,)popNextLeaves:(TSCEDependencyTracker *)self;
- (vector<TSUCellCoord,)cellsReferencingRange:(TSCEDependencyTracker *)self fromOwner:(SEL)owner skipSpanning:(const TSCERangeRef *)spanning;
- (vector<TSUCellCoord,)dgl_cellsWithRecordsInRange:(TSCEDependencyTracker *)self formulaCellsOnly:(SEL)only;
- (vector<TSUCellCoord,)formulaCoordsInRange:(TSCEDependencyTracker *)self inOwnerUID:(SEL)d;
- (void)addSubOwnerAliasesForUpgrade:(id)upgrade;
- (void)assertDirtyPrecedentsCountConsistency;
- (void)assertForInconsistentDependGraph:(unsigned __int16)graph assertMessage:(id)message;
- (void)beginBatchingGroupCellDirtying;
- (void)beginSuppressingWillModifyCalls;
- (void)cellRefsReferringToGroupBy:(const TSKUIDStruct *)by outCellRefs:(void *)refs;
- (void)clearCellsCurrentlyBeingEvaluated;
- (void)clearErrorAndWarningsForCell:(TSUCellCoord)cell inOwner:(const TSKUIDStruct *)owner;
- (void)clearErrorAndWarningsForCells:(const void *)cells;
- (void)clearOwnerIDHavingRecordsToPrune:(unsigned __int16)prune;
- (void)clearSpillSizeForCell:(const TSCECellRef *)cell;
- (void)clearSpillSizesInRange:(const TSCERangeRef *)range;
- (void)dealloc;
- (void)detectAndRepairConsistencyViolations;
- (void)detectAndRepairDirtyCellsAreOnLeafQueue;
- (void)dgl_cellRefsForCycleCellsReferringToCell:(const TSCEInternalCellReference *)cell outCellRefs:(void *)refs;
- (void)dgl_clearCycleFlagsOnCellAndDependents:(TSCEInternalCellReference)dependents startCellRecord:(TSCECellRecord *)record;
- (void)dgl_deleteOwnerDependenciesIfPossible:(unsigned __int16)possible;
- (void)dgl_dirtyAllCellsInOwnerID:(unsigned __int16)d;
- (void)dgl_dirtyCellsInToDirtyQueue;
- (void)dgl_dirtyDateVolatileFunctions;
- (void)dgl_dirtyRandomVolatileFunctions;
- (void)dgl_dirtyTimeVolatileFunctions;
- (void)dgl_findAndRecordCyclesInDirtyCells;
- (void)dgl_formulaCellRefsReferringToOwnerUIDs:(const void *)ds outFormulaCells:(void *)cells;
- (void)dgl_formulaCellsAffectedByGeometryChangeToTable:(const TSKUIDStruct *)table outFormulaCells:(void *)cells;
- (void)dgl_formulaCellsReferencingUuidsInSpec:(id)spec outFormulaCells:(void *)cells;
- (void)dgl_loadCacheForCell:(TSCECellToEvaluate *)cell;
- (void)dgl_markCellDirty:(const TSCEInternalCellReference *)dirty;
- (void)dgl_markCellRefAsDirty:(const TSCEInternalCellReference *)dirty;
- (void)dgl_markCellRefAsDirty:(const TSCEInternalCellReference *)dirty cellDependencies:(id)dependencies cellRecord:(TSCECellRecord *)record;
- (void)dgl_markCellsDirtyTraversingDependents:(TSCEInternalCellReference)dependents startCellRecord:(TSCECellRecord *)record;
- (void)dgl_markDependentsDirty:(const TSCEInternalCellReference *)dirty;
- (void)dgl_markRandomVolatileFunctionsAsDirty;
- (void)dgl_pushReferenceForImmediateEvaluation:(const TSCEInternalCellReference *)evaluation pushOnFront:(BOOL)front;
- (void)dgl_removeCellRefFromAllUuidMaps:(const TSCEInternalCellReference *)maps;
- (void)dgl_removeFormulaForOwnerID:(unsigned __int16)d cellCoord:(TSUCellCoord)coord;
- (void)dgl_replaceCellWithFormulaForOwner:(unsigned __int16)owner formulaCoord:(TSUCellCoord)coord precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)dgl_setError:(id)error andWarnings:(id)warnings forCell:(TSUCellCoord)cell inOwnerID:(unsigned __int16)d;
- (void)dgl_unregisterOwner:(const TSKUIDStruct *)owner ownerID:(unsigned __int16)d;
- (void)dgl_updateGraphWithCleanReference:(TSCECellToEvaluate *)reference skipCycleCheck:(BOOL)check;
- (void)dgl_updateGraphWithCleanReference:(const TSCEInternalCellReference *)reference cellRecord:(TSCECellRecord *)record;
- (void)dirtyAllCellsInAllOwners;
- (void)dirtyAllCellsInOwnerID:(unsigned __int16)d;
- (void)dirtyAllCellsInOwnerUID:(const TSKUIDStruct *)d;
- (void)dirtyAllFunctions;
- (void)dirtyCellsWithErrors;
- (void)dirtyCellsWithSpillErrorsInTable:(const TSKUIDStruct *)table;
- (void)dirtyDateTimeVolatileFunctions;
- (void)dirtyDateVolatileFunctions;
- (void)dirtyForSpanningRowBug;
- (void)dirtyGeometryVolatileFunctions:(const TSKUIDStruct *)functions;
- (void)dirtyIndirectCalls;
- (void)dirtyRandomVolatileFunctions;
- (void)dirtyRemoteDataVolatileFunctions;
- (void)dirtyRemoteDataVolatileFunctionsForKeys:(id)keys;
- (void)dirtyTimeVolatileFunctions;
- (void)doneEvaluatingCell:(const TSCEInternalCellReference *)cell;
- (void)encodeToArchive:(void *)archive save31FormatAlso:(BOOL)also embiggenedFormatOnly:(BOOL)only archiver:(id)archiver;
- (void)endSuppressingWillModifyCalls;
- (void)enumerateFormulaOwnersUsingBlock:(id)block;
- (void)evaluationCompletedForCells:(void *)cells resultState:(TSCERecalculationState)state;
- (void)findAndRecordCyclesInDirtyCells;
- (void)flushInProgressDirtying;
- (void)formulaCellsForDeletedOwner:(id)owner outFormulaCells:(void *)cells;
- (void)formulaCellsForGroupNodeChanges:(id)changes outFormulaCells:(void *)cells;
- (void)formulaCellsForGroupNodeUIDReassignment:(id)reassignment outFormulaCells:(void *)cells;
- (void)formulaCellsForInsertRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsForInsertedOwner:(id)owner outFormulaCells:(void *)cells;
- (void)formulaCellsForMergeCells:(id)cells outFormulaCells:(void *)formulaCells;
- (void)formulaCellsForMergeOriginMove:(id)move outFormulaCells:(void *)cells;
- (void)formulaCellsForMoveRegion:(id)region outFormulaCells:(void *)cells;
- (void)formulaCellsForMoveRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsForPivotRuleChange:(id)change outFormulaCells:(void *)cells;
- (void)formulaCellsForRemoveRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsForSortRows:(id)rows outFormulaCells:(void *)cells;
- (void)formulaCellsForTableTranspose:(id)transpose outFormulaCells:(void *)cells;
- (void)formulaCellsForTableUIDReassignment:(id)reassignment outFormulaCells:(void *)cells;
- (void)headerStateOfTableChanged:(const TSKUIDStruct *)changed changedRows:(BOOL)rows;
- (void)incrementalMarkCellRefDirty:(id)dirty;
- (void)loadCacheForCell:(TSCECellToEvaluate *)cell;
- (void)markEverythingClean;
- (void)markIntRangeRefAsDirty:(const TSCEInternalRangeReference *)dirty;
- (void)markOnlyDependentsDirty:(TSCEInternalCellReference)dirty;
- (void)markOwnerIDHavingRecordsToPrune:(unsigned __int16)prune;
- (void)markRandomVolatileFunctionsAsDirty;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty;
- (void)noteCorruptCellRef:(const TSCEInternalCellReference *)ref;
- (void)processPruningOfCellRecords:(double)records;
- (void)processUnregisteringOwners:(double)owners;
- (void)pushCellsForImmediateEvaluation:(const void *)evaluation pushOnFront:(BOOL)front;
- (void)pushReferenceForImmediateEvaluation:(const TSCEInternalCellReference *)evaluation cellRecord:(TSCECellRecord *)record pushOnFront:(BOOL)front;
- (void)registerFormulaOwners;
- (void)removeAllPrecedentsFromOwner:(const TSKUIDStruct *)owner;
- (void)removeFormulaForOwner:(const TSKUIDStruct *)owner cellCoord:(TSUCellCoord)coord;
- (void)removeFormulasAt:(const void *)at;
- (void)removeFormulasFromRange:(TSCERangeRef *)range;
- (void)replaceCellWithFormulaForOwner:(const TSKUIDStruct *)owner formulaCoord:(TSUCellCoord)coord precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceRemoteDataKeysInterestedInForCell:(TSCECellRef *)cell specifierSet:(id)set;
- (void)resetAllExternalFormulasReferringToOwnerUIDs:(const void *)ds upgradeMinion:(id)minion;
- (void)resetCorruptCellRefs:(const void *)refs;
- (void)scheduleMarkCellRefAsDirty:(const TSCECellRef *)dirty;
- (void)scheduleMarkIntCellRefAsDirty:(TSCEInternalCellReference)dirty;
- (void)scheduleRepairingSpanningFormulasInOwner:(const TSKUIDStruct *)owner upgradeMinion:(id)minion;
- (void)setError:(id)error andWarnings:(id)warnings forCell:(TSUCellCoord)cell inOwner:(const TSKUIDStruct *)owner;
- (void)setHasCalculatedPrecedents:(const TSCECellRef *)precedents setting:(BOOL)setting;
- (void)setHasCalculatedPrecedentsInternal:(const TSCEInternalCellReference *)internal setting:(BOOL)setting;
- (void)setTableAndBodyRangesForTable:(const TSCERangeCoordinate *)table bodyRange:(const TSCERangeCoordinate *)range tableID:(unsigned __int16)d;
- (void)setTableAndBodyRangesForTable:(const TSCERangeCoordinate *)table bodyRange:(const TSCERangeCoordinate *)range tableUID:(const TSKUIDStruct *)d;
- (void)unregisterOwner:(const TSKUIDStruct *)owner;
- (void)updateNumberOfDirtyPrecedents:(const void *)precedents;
- (void)upgradeOneOwnerUID:(const TSKUIDStruct *)d updatedOwnerUID:(const TSKUIDStruct *)iD baseOwnerUID:(const TSKUIDStruct *)uID ownerKind:(unsigned __int16)kind;
- (void)upgradeToSubOwnerUIDForOwners:(id)owners;
- (void)willClose;
- (void)willModify;
- (void)wroteSpillingCells:(const void *)cells forTable:(const TSKUIDStruct *)table;
@end

@implementation TSCEDependencyTracker

- (TSCEDependencyTracker)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v18.receiver = self;
  v18.super_class = TSCEDependencyTracker;
  v5 = [(TSCEDependencyTracker *)&v18 init];
  v6 = v5;
  if (v5)
  {
    v5->_calcEngine = engineCopy;
    v5->_registeredOwnerIdCache = -1;
    atomic_store(0, &v5->_numberOfFormulas);
    v5->_batchingGroupCellDirtyingLevel = 0;
    v5->_suppressWillModifyCallsLevel = 0;
    v5->_dependencyGraphLock._os_unfair_lock_opaque = 0;
    v5->_evaluationInProgressLock._os_unfair_lock_opaque = 0;
    v5->_corruptedCellRefsMutex._os_unfair_lock_opaque = 0;
    v5->_ownerIDsWithRecordsToPruneLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v7 = objc_opt_new();
    leafQueue = v6->_leafQueue;
    v6->_leafQueue = v7;

    v9 = objc_opt_new();
    cycleCalculationLeafQueue = v6->_cycleCalculationLeafQueue;
    v6->_cycleCalculationLeafQueue = v9;

    v6->_currentCellBeingModified.coordinate = 0x7FFF7FFFFFFFLL;
    *&v6->_currentCellBeingModified.tableID = 0xFFFF;
    v11 = [TSCEReferenceSetWrapper alloc];
    inited = objc_msgSend_initAsEmptyReferenceSet(v11, v12, v13, v14);
    noPrecedents = v6->_noPrecedents;
    v6->_noPrecedents = inited;
  }

  return v6;
}

- (void)dealloc
{
  if (self->_batchingGroupCellDirtyingLevel)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDependencyTracker dealloc]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 188, 0, "dirty cell batching must not be left on when a command finishes!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  sub_2211A89A4(&self->_formulaOwnerDependencies);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  v16 = 0;
  noPrecedents = self->_noPrecedents;
  self->_noPrecedents = 0;

  sub_2212E22F0(&p_dependencyGraphLock);
  v14.receiver = self;
  v14.super_class = TSCEDependencyTracker;
  [(TSCEDependencyTracker *)&v14 dealloc];
}

- (unint64_t)cellDependMemoryUseEstimate
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v16) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v8 = 0;
    do
    {
      v9 = objc_msgSend_cellDependencies(next[3], v4, v5, v6, lock, v16);
      v13 = v9;
      if (v9)
      {
        v8 += objc_msgSend_memoryUseEstimate(v9, v10, v11, v12);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v16) = 0;
  sub_2212E22F0(&lock);
  return v8;
}

- (int)dgl_registerOwnerID:(unsigned __int16)d owner:(id)owner ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  dCopy = d;
  dCopy2 = d;
  ownerCopy = owner;
  v41 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v9, dCopy, v10);
  v42 = v11;
  if (dCopy != 0xFFFF)
  {
    if (sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy2))
    {
      v44 = &dCopy2;
      v12 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy2, &unk_2217E1838, &v44)[3];
      if (objc_msgSend_isRegisteredWithCalcEngine(v12, v13, v14, v15, v41, v42))
      {
        v19 = objc_msgSend_formulaOwner(v12, v16, v17, v18);

        if (v19)
        {
          if (__C != -1)
          {
            sub_2216F7744();
          }

          v20 = 1002;
          goto LABEL_17;
        }
      }

      objc_msgSend_setOwnerIndex_(v12, v16, indexCopy, v18);
      objc_msgSend_setFormulaOwner_(v12, v21, ownerCopy, v22);
      if (objc_msgSend_evaluationMode(ownerCopy, v23, v24, v25) == 1)
      {
        objc_msgSend_addMultiEvalOwnerID_(self->_leafQueue, v26, dCopy2, v27);
      }

      objc_msgSend_setIsRegisteredWithCalcEngine_(v12, v26, 1, v27);
      if (__C == -1)
      {
        v20 = 0;
LABEL_17:

        goto LABEL_18;
      }

      sub_2216F776C();
    }

    else
    {
      v28 = [TSCEFormulaOwnerDependencies alloc];
      v32 = objc_msgSend_context(self->_calcEngine, v29, v30, v31, v41, v42);
      v12 = objc_msgSend_initWithContext_dependencyTracker_ownerID_ownerUID_owner_ownerIndex_(v28, v33, v32, self, dCopy2, &v41, ownerCopy, indexCopy);

      v44 = &dCopy2;
      v34 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy2, &unk_2217E1838, &v44);
      objc_storeStrong(v34 + 3, v12);
      if (objc_msgSend_evaluationMode(ownerCopy, v35, v36, v37) == 1)
      {
        objc_msgSend_addMultiEvalOwnerID_(self->_leafQueue, v38, dCopy2, v39);
      }

      objc_msgSend_setIsRegisteredWithCalcEngine_(v12, v38, ownerCopy != 0, v39);
      if (__C == -1)
      {
        v20 = 0;
        goto LABEL_17;
      }

      sub_2216F7794();
    }

    v20 = 0;
    goto LABEL_17;
  }

  v20 = 1;
LABEL_18:

  return v20;
}

- (int)dgl_registerOwnerUID:(const TSKUIDStruct *)d owner:(id)owner ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  ownerCopy = owner;
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, v9, d, 1);
  LODWORD(indexCopy) = objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self, v11, IfMissing, ownerCopy, indexCopy);

  return indexCopy;
}

- (int)registerOwnerID:(unsigned __int16)d owner:(id)owner ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  dCopy = d;
  ownerCopy = owner;
  if (ownerCopy)
  {
    v9 = ownerCopy;
    v12 = TSUProtocolCast();
    if (!v12)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker registerOwnerID:owner:ownerIndex:]", v11, &unk_283517618);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v16);
      v18 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v17, 281, 0, "registerOwner() doesn't accept class: %@ (not id<TSCEFormulaOwning>)", v18);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    }
  }

  else
  {
    v12 = 0;
  }

  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v24 = objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self, v23, dCopy, v12, indexCopy);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  v27 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);

  return v24;
}

- (int)registerOwnerUID:(const TSKUIDStruct *)d owner:(id)owner ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  ownerCopy = owner;
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, v9, d, 1);
  LODWORD(indexCopy) = objc_msgSend_registerOwnerID_owner_ownerIndex_(self, v11, IfMissing, ownerCopy, indexCopy);

  return indexCopy;
}

- (BOOL)dgl_ownerIDIsRegistered:(unsigned __int16)registered
{
  if (registered == 0xFFFF)
  {
    return 0;
  }

  v4 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, registered, v3);
  if (!objc_msgSend_isRegisteredWithCalcEngine(v4, v5, v6, v7))
  {
    return 0;
  }

  v11 = objc_msgSend_formulaOwner(v4, v8, v9, v10);
  v12 = v11 != 0;

  return v12;
}

- (BOOL)ownerIDIsRegistered:(unsigned __int16)registered
{
  if (registered == 0xFFFF)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    registeredCopy = registered;
    LOBYTE(v5) = 1;
    if (self->_registeredOwnerIdCache != registered)
    {
      p_dependencyGraphLock = &self->_dependencyGraphLock;
      os_unfair_lock_lock(&self->_dependencyGraphLock);
      LOBYTE(v10) = 1;
      v5 = objc_msgSend_dgl_ownerIDIsRegistered_(self, v6, registeredCopy, v7, p_dependencyGraphLock, v10);
      os_unfair_lock_unlock(&self->_dependencyGraphLock);
      LOBYTE(v10) = 0;
      if (v5)
      {
        self->_registeredOwnerIdCache = registeredCopy;
      }

      sub_2212E22F0(&p_dependencyGraphLock);
    }
  }

  return v5;
}

- (BOOL)ownerUIDIsRegistered:(const TSKUIDStruct *)registered
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, registered, 0);

  return objc_msgSend_ownerIDIsRegistered_(self, v4, IfMissing, v6);
}

- (id)dgl_ownerForOwnerID:(unsigned __int16)d
{
  if (d == 0xFFFF)
  {
    v9 = 0;
  }

  else
  {
    v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3);
    v9 = objc_msgSend_formulaOwner(v5, v6, v7, v8);
  }

  return v9;
}

- (void)dgl_loadCacheForCell:(TSCECellToEvaluate *)cell
{
  if (cell->var2)
  {
    v4 = cell->var1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    tableID = cell->var0.tableID;
    if (tableID != 0xFFFF)
    {
      v7 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, tableID, v3);
      cell->var1 = v7;
      v11 = objc_msgSend_cellDependencies(v7, v8, v9, v10);
      if (v11)
      {
        v13 = v11;
        cell->var2 = objc_msgSend_findCellRecord_willModifyOnTile_(v11, v12, cell, 0);
        v11 = v13;
      }
    }
  }
}

- (void)loadCacheForCell:(TSCECellToEvaluate *)cell
{
  if (cell->var2)
  {
    v3 = cell->var1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    v9 = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v10) = 1;
    objc_msgSend_dgl_loadCacheForCell_(self, v7, cell, v8, v9, v10);
    os_unfair_lock_unlock(p_dependencyGraphLock);
    LOBYTE(v10) = 0;
    sub_2212E22F0(&v9);
  }
}

- (id)evaluationInfoForCell:(TSCECellToEvaluate *)cell outHasDynamicPrecedents:(BOOL *)precedents outIsInCycle:(BOOL *)cycle
{
  var2 = cell->var2;
  if (var2 || (objc_msgSend_loadCacheForCell_(self, a2, cell, precedents), var2 = cell->var2, *precedents = 0, *cycle = 0, var2))
  {
    var6 = var2->var6;
    *precedents = (var6 & 8) != 0;
    *cycle = (var6 & 2) != 0;
  }

  v10 = objc_msgSend_formulaOwner(cell->var1, a2, cell, precedents);

  return v10;
}

- (void)evaluationCompletedForCells:(void *)cells resultState:(TSCERecalculationState)state
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  v35 = 0;
  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  v8 = *(cells + 1);
  v9 = *(cells + 2);
  if (v8 != v9)
  {
    do
    {
      sub_2212DFDD0(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v8);
      v8 += 32;
    }

    while (v8 != v9);
    p_dependencyGraphLock = lock;
  }

  var0 = state.var0;
  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
  os_unfair_lock_lock(p_dependencyGraphLock);
  v35 = 1;
  v12 = *(cells + 1);
  v13 = *(cells + 2);
  v14 = v12 == v13;
  if ((var0 & 0x80) != 0)
  {
    while (!v14)
    {
      objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v11, v12, 0);
      v12 += 32;
      v14 = v12 == v13;
    }
  }

  else
  {
    for (; v12 != v13; v12 += 32)
    {
      nullsub_75();
      v32 = *v12;
      v33 = *(v12 + 8);
      objc_msgSend_dgl_loadCacheForCell_(self, v15, v12, v16);
      v18 = *(v12 + 24);
      if (!v18 || *(v18 + 16) <= 1uLL)
      {
        objc_msgSend_dgl_updateGraphWithCleanReference_skipCycleCheck_(self, v17, v12, 1);
        if (v18)
        {
          *(v18 + 38) = *(v18 + 38) & 0xFFF7 | (8 * (var0 > 0x3F));
        }

        if ((var0 & 0x20) != 0)
        {
          end = self->_modifiedCellsToDirtyQueue.__end_;
          cap = self->_modifiedCellsToDirtyQueue.__cap_;
          if (end >= cap)
          {
            begin = self->_modifiedCellsToDirtyQueue.__begin_;
            v23 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 2);
            v24 = v23 + 1;
            if (v23 + 1 > 0x1555555555555555)
            {
              sub_22107C148();
            }

            v25 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 2);
            if (2 * v25 > v24)
            {
              v24 = 2 * v25;
            }

            if (v25 >= 0xAAAAAAAAAAAAAAALL)
            {
              v26 = 0x1555555555555555;
            }

            else
            {
              v26 = v24;
            }

            if (v26)
            {
              sub_221122A3C(&self->_modifiedCellsToDirtyQueue, v26);
            }

            v27 = 12 * v23;
            *v27 = v32;
            *(v27 + 8) = v33;
            v21 = (12 * v23 + 12);
            v28 = self->_modifiedCellsToDirtyQueue.__begin_;
            v29 = (self->_modifiedCellsToDirtyQueue.__end_ - v28);
            v30 = (12 * v23 - v29);
            memcpy((v27 - v29), v28, v29);
            v31 = self->_modifiedCellsToDirtyQueue.__begin_;
            self->_modifiedCellsToDirtyQueue.__begin_ = v30;
            self->_modifiedCellsToDirtyQueue.__end_ = v21;
            self->_modifiedCellsToDirtyQueue.__cap_ = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            end->coordinate = v32;
            *&end->tableID = v33;
            v21 = end + 1;
          }

          self->_modifiedCellsToDirtyQueue.__end_ = v21;
        }
      }
    }
  }

  os_unfair_lock_unlock(lock);
  v35 = 0;
  sub_2212E22F0(&lock);
}

- (id)ownerForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v10 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  v8 = objc_msgSend_dgl_ownerForOwnerID_(self, v6, dCopy, v7, v10, v11);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);

  return v8;
}

- (id)ownerForOwnerUID:(const TSKUIDStruct *)d
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, d, 0);

  return MEMORY[0x2821F9670](self, sel_ownerForOwnerID_, IfMissing, v5);
}

- (BOOL)dgl_canDeleteOwnerDependencies:(unsigned __int16)dependencies
{
  if (self->_duringSubOwnerUIDUpgrade)
  {
    return 1;
  }

  v4 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, dependencies, v3);
  if (!v4)
  {
    return 1;
  }

  v8 = v4;
  v12 = objc_msgSend_formulaOwner(v4, v5, v6, v7);
  if (v12 || (objc_msgSend_isRegisteredWithCalcEngine(v8, v9, v10, v11) & 1) != 0)
  {
    isEmpty = 0;
  }

  else
  {
    v18 = objc_msgSend_cellDependencies(v8, v13, v14, v15);
    if (objc_msgSend_numCellRecords(v18, v19, v20, v21))
    {
      isEmpty = 0;
    }

    else
    {
      v25 = objc_msgSend_rangeDependencies(v8, v22, v23, v24);
      if (objc_msgSend_isEmpty(v25, v26, v27, v28))
      {
        v32 = objc_msgSend_spanningRowDependencies(v8, v29, v30, v31);
        if (objc_msgSend_isEmpty(v32, v33, v34, v35))
        {
          v39 = objc_msgSend_spanningColumnDependencies(v8, v36, v37, v38);
          if (objc_msgSend_isEmpty(v39, v40, v41, v42))
          {
            v46 = objc_msgSend_volatileDependencies(v8, v43, v44, v45);
            isEmpty = objc_msgSend_isEmpty(v46, v47, v48, v49);
          }

          else
          {
            isEmpty = 0;
          }
        }

        else
        {
          isEmpty = 0;
        }
      }

      else
      {
        isEmpty = 0;
      }
    }
  }

  return isEmpty;
}

- (void)dgl_deleteOwnerDependenciesIfPossible:(unsigned __int16)possible
{
  possibleCopy = possible;
  possibleCopy2 = possible;
  if (objc_msgSend_dgl_canDeleteOwnerDependencies_(self, a2, possible, v3))
  {
    objc_msgSend_removeMultiEvalOwnerID_(self->_leafQueue, v6, possibleCopy, v7);
    sub_221377038(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &possibleCopy2);
    sub_221260148(&self->_formulaOwnerIDMap, possibleCopy2);
    if (__C != -1)
    {
      sub_2216F77BC();
    }
  }
}

- (void)dgl_dirtyAllCellsInOwnerID:(unsigned __int16)d
{
  dCopy = d;
  if (d != 0xFFFF)
  {
    v4 = sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy);
    if (v4)
    {
      v8 = v4[3];
      v9 = objc_msgSend_cellDependencies(v8, v5, v6, v7);

      if (v9)
      {
        v13 = objc_msgSend_cellDependencies(v8, v10, v11, v12);
        objc_msgSend_dirtyAllCells(v13, v14, v15, v16);
      }

      v17 = objc_msgSend_rangeDependencies(v8, v10, v11, v12);

      if (v17)
      {
        v21 = objc_msgSend_rangeDependencies(v8, v18, v19, v20);
        objc_msgSend_dirtyAllReferencingFormulas(v21, v22, v23, v24);
      }

      v25 = objc_msgSend_spanningRowDependencies(v8, v18, v19, v20);

      if (v25)
      {
        v29 = objc_msgSend_spanningRowDependencies(v8, v26, v27, v28);
        objc_msgSend_dirtyAllReferencingFormulas(v29, v30, v31, v32);
      }

      v33 = objc_msgSend_spanningColumnDependencies(v8, v26, v27, v28);

      if (v33)
      {
        v37 = objc_msgSend_spanningColumnDependencies(v8, v34, v35, v36);
        objc_msgSend_dirtyAllReferencingFormulas(v37, v38, v39, v40);
      }

      if (objc_msgSend_ownerIndex(v8, v34, v35, v36) == 1)
      {
        v50 = objc_msgSend_formulaOwnerUid(v8, v41, v42, v43);
        v51 = v44;
        objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v44, &v50, v45);
        v50 = objc_msgSend_internalCellReferenceForCellRef_(self, v46, v52, v47);
        LODWORD(v51) = v48;
        objc_msgSend_dgl_markCellRefAsDirty_(self, v48, &v50, v49);
      }
    }
  }
}

- (void)dirtyAllCellsInOwnerID:(unsigned __int16)d
{
  if (d != 0xFFFF)
  {
    dCopy = d;
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    v8 = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v9) = 1;
    objc_msgSend_dgl_dirtyAllCellsInOwnerID_(self, v6, dCopy, v7, v8, v9);
    os_unfair_lock_unlock(p_dependencyGraphLock);
    LOBYTE(v9) = 0;
    sub_2212E22F0(&v8);
  }
}

- (void)dirtyAllCellsInOwnerUID:(const TSKUIDStruct *)d
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, d, 1);

  MEMORY[0x2821F9670](self, sel_dirtyAllCellsInOwnerID_, IfMissing, v5);
}

- (TSCEInternalCellRefSet)allCellRefsInOwner:(SEL)owner
{
  v23 = a4;
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  if (a4 != 0xFFFF)
  {
    selfCopy = self;
    lock = &self->_coordsForOwnerId.__table_.__bucket_list_.__deleter_;
    os_unfair_lock_lock(&self->_coordsForOwnerId.__table_.__bucket_list_.__deleter_);
    v22 = 1;
    if (sub_2210C3024(&selfCopy[6]._coordsForOwnerId.__table_.__size_, &v23))
    {
      *&v19[0] = &v23;
      v6 = sub_221376DD0(&selfCopy[6]._coordsForOwnerId.__table_.__size_, &v23, &unk_2217E1838, v19)[3];
      v10 = objc_msgSend_cellDependencies(v6, v7, v8, v9);

      if (v10)
      {
        v14 = objc_msgSend_cellDependencies(v6, v11, v12, v13);
        v18 = v14;
        if (v14)
        {
          objc_msgSend_allCellRefs(v14, v15, v16, v17);
        }

        else
        {
          v20 = 0;
          memset(v19, 0, sizeof(v19));
        }

        sub_2212DFCA0(retstr, v19);
        sub_221122744(v19);
      }
    }

    os_unfair_lock_unlock(lock);
    v22 = 0;
    return sub_2212E22F0(&lock);
  }

  return self;
}

- (TSCEInternalCellRefSet)allDirtyCellRefs
{
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v21 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v22 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v10 = objc_msgSend_cellDependencies(next[3], v6, v7, v8);
      v14 = v10;
      if (v10)
      {
        objc_msgSend_dirtyCells(v10, v11, v12, v13);
        v18 = objc_msgSend_internalOwnerID(v14, v15, v16, v17);
        sub_2212DFD38(retstr, v18, &v20);
        sub_22107C860(&v20._rowsPerColumn, v20._rowsPerColumn.__tree_.__end_node_.__left_);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v21;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v22 = 0;
  return sub_2212E22F0(&v21);
}

- (void)dirtyAllCellsInAllOwners
{
  v5 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v10) = 1;
  for (i = &self->_formulaOwnerDependencies.__table_.__first_node_; ; objc_msgSend_dirtyAllCellsInOwnerId_(v5, v6, LOWORD(i[2].__next_), v7, lock, v10))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_unlock(lock);
  LOBYTE(v10) = 0;
  sub_2212E22F0(&lock);
}

- (void)assertForInconsistentDependGraph:(unsigned __int16)graph assertMessage:(id)message
{
  graphCopy = graph;
  v17 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, graph, message);
  shouldCleanGraphForConsistencyViolation = objc_msgSend_shouldCleanGraphForConsistencyViolation(v17, v6, v7, v8);
  if (((shouldCleanGraphForConsistencyViolation | objc_msgSend_shouldPerformDetectAndRepairConsistencyViolations(v17, v10, v11, v12)) & 1) == 0 && (objc_msgSend_ownerIdIsUnregistering_(self, v13, graphCopy, v14) & 1) == 0)
  {
    objc_msgSend_setShouldPerformDetectAndRepairConsistencyViolations_(v17, v15, 1, v16);
  }
}

- (void)detectAndRepairConsistencyViolations
{
  v5 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  if ((objc_msgSend_shouldCleanGraphForConsistencyViolation(v5, v6, v7, v8) & 1) == 0)
  {
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v23) = 1;
    next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
    if (next)
    {
      while (1)
      {
        v13 = next[3];
        v14 = objc_msgSend_cellDependencies(v13, v9, v10, v11, lock, v23);

        if (v14)
        {
          v15 = objc_msgSend_cellDependencies(v13, v9, v10, v11);
          v18 = objc_msgSend_dirtyPrecedentCountsAreConsistent_(v15, v16, 0, v17);

          if ((v18 & 1) == 0)
          {
            break;
          }
        }

        next = *next;
        if (!next)
        {
          goto LABEL_8;
        }
      }

      objc_msgSend_setShouldCleanGraphForConsistencyViolation_(v5, v9, 1, v11);
      objc_msgSend_resetNumberOfFormulas(self, v19, v20, v21);
    }

LABEL_8:
    os_unfair_lock_unlock(lock);
    LOBYTE(v23) = 0;
    sub_2212E22F0(&lock);
  }
}

- (void)unregisterOwner:(const TSKUIDStruct *)owner
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, owner, 0);
  self->_registeredOwnerIdCache = -1;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v8) = 1;
  objc_msgSend_dgl_unregisterOwner_ownerID_(self, v6, owner, IfMissing, &self->_dependencyGraphLock, v8);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v8) = 0;
  sub_2212E22F0(&v7);
}

- (void)dgl_unregisterOwner:(const TSKUIDStruct *)owner ownerID:(unsigned __int16)d
{
  dCopy = d;
  v6 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, d);
  v10 = v6;
  if (v6 && objc_msgSend_isRegisteredWithCalcEngine(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_tableResolverForTableID_(self->_calcEngine, v11, dCopy, v12);
    v17 = v13;
    v54 = 0uLL;
    if (v13)
    {
      v54.i64[0] = objc_msgSend_tableRangeCoordinate(v13, v14, v15, v16);
      v54.i64[1] = v18;
      v53[0] = objc_msgSend_bodyRangeCoordinate(v17, v18, v19, v20);
    }

    else
    {
      v21 = 0x7FFF7FFFFFFFLL;
      v54 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v53[0] = 0x7FFF7FFFFFFFLL;
    }

    v53[1] = v21;
    v22 = objc_msgSend_spanningRowDependencies(v10, v21, v15, v16);

    if (v22)
    {
      v26 = objc_msgSend_spanningRowDependencies(v10, v23, v24, v25);
      objc_msgSend_setTableRangesForTable_bodyRange_(v26, v27, &v54, v53);
    }

    v28 = objc_msgSend_spanningColumnDependencies(v10, v23, v24, v25);

    if (v28)
    {
      v32 = objc_msgSend_spanningColumnDependencies(v10, v29, v30, v31);
      objc_msgSend_setTableRangesForTable_bodyRange_(v32, v33, &v54, v53);
    }

    v34 = objc_msgSend_referencesToDirty(self->_calcEngine, v29, v30, v31);
    v38 = objc_msgSend_formulaOwnerId(v10, v35, v36, v37);
    objc_msgSend_dirtyAllCellsInOwnerId_(v34, v39, v38, v40);

    v44 = objc_msgSend_formulaOwnerUid(v10, v41, v42, v43);
    v46 = sub_22125FECC(&self->_formulaOwnerIDMap._lock, v44, v45);
    self->_hasOwnerIdsToUnregister = 1;
    begin = self->_ownerIdsToUnregister.__begin_;
    LOWORD(v52) = v46;
    HIDWORD(v52) = 0;
    sub_221364720(&self->_ownerIdsToUnregister.__begin_, begin, &v52);
    objc_msgSend_setFormulaOwner_(v10, v48, 0, v49);
    objc_msgSend_setIsRegisteredWithCalcEngine_(v10, v50, 0, v51);
  }
}

- (void)willClose
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v9) = 1;
  for (i = &self->_formulaOwnerDependencies.__table_.__first_node_; ; objc_msgSend_willClose(i[3].__next_, v3, v4, v5, lock, v9))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  sub_2211A89A4(&self->_formulaOwnerDependencies);
  os_unfair_lock_unlock(lock);
  LOBYTE(v9) = 0;
  noPrecedents = self->_noPrecedents;
  self->_noPrecedents = 0;

  self->_calcEngine = 0;
  sub_2212E22F0(&lock);
}

- (unsigned)dgl_ownerKindForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  v5 = objc_msgSend_dgl_ownerIDIsRegistered_(self, a2, d, v3);
  if (v5)
  {
    v12 = &dCopy;
    v6 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy, &unk_2217E1838, &v12);
    LOWORD(v5) = objc_msgSend_ownerIndex(v6[3], v7, v8, v9);
  }

  return v5;
}

- (unsigned)ownerKindForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v9 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v10) = 1;
  LOWORD(dCopy) = objc_msgSend_dgl_ownerKindForOwnerID_(self, v6, dCopy, v7, v9, v10);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v10) = 0;
  sub_2212E22F0(&v9);
  return dCopy;
}

- (void)enumerateFormulaOwnersUsingBlock:(id)block
{
  blockCopy = block;
  v22 = 0;
  v19 = 0u;
  v20 = 0u;
  max_load_factor = 1.0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v17 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v18 = 1;
  if (&v19 != &self->_formulaOwnerDependencies)
  {
    max_load_factor = self->_formulaOwnerDependencies.__table_.__max_load_factor_;
    sub_2213771D4(&v19, self->_formulaOwnerDependencies.__table_.__first_node_.__next_, 0);
    p_dependencyGraphLock = v17;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v18 = 0;
  for (i = v20; i; i = *i)
  {
    v10 = i[3];
    v11 = objc_msgSend_formulaOwnerUid(v10, v6, v7, v8);
    v15 = objc_msgSend_formulaOwner(v10, v12, v13, v14, v11, v12);
    blockCopy[2](blockCopy, &v16, v15, &v22);

    if (v22)
    {
      break;
    }
  }

  sub_2212E22F0(&v17);
  sub_221087B80(&v19);
}

- (void)dgl_removeCellRefFromAllUuidMaps:(const TSCEInternalCellReference *)maps
{
  v6 = objc_msgSend_uuidReferenceMap(self->_calcEngine, a2, maps, v3);
  objc_msgSend_removeCellRef_(v6, v7, maps, v8);

  v12 = objc_msgSend_groupNodeReferenceMap(self->_calcEngine, v9, v10, v11);
  objc_msgSend_removeCellRef_(v12, v13, maps, v14);

  v17 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v15, maps->tableID, v16);
  if (v17)
  {
    v21 = objc_msgSend_uuidReferences(v17, v18, v19, v20);

    if (v21)
    {

      MEMORY[0x2821F9670](v21, sel_removeCellCoord_, maps, v22);
    }
  }
}

- (void)dgl_removeFormulaForOwnerID:(unsigned __int16)d cellCoord:(TSUCellCoord)coord
{
  dCopy = d;
  coordCopy = coord;
  v6 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, *&coord);
  v10 = objc_msgSend_cellDependencies(v6, v7, v8, v9);
  v12 = v10;
  if (v10)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v10, v11, &coordCopy, 1);
    if (CellRecord_willModifyOnTile && (*(CellRecord_willModifyOnTile + 38) & 4) != 0)
    {
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v55, 0, 1);
      v17 = coordCopy;
      noPrecedents = self->_noPrecedents;
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v54, &v55);
      objc_msgSend_dgl_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(self, v19, dCopy, v17, noPrecedents, &v54);

      atomic_fetch_add(&self->_numberOfFormulas, 0xFFFFFFFFFFFFFFFFLL);
      v22 = objc_msgSend_findCellRecord_willModifyOnTile_(v12, v20, &coordCopy, 1);
      if (v22)
      {
        objc_msgSend_setContainsFormula_containsFormula_(v12, v21, v22, 0);
        if ((sub_2215C5AB8(v22) & 1) == 0 && !sub_2215C5AF0(v22))
        {
          objc_msgSend_markCellRecordForPruning_(v12, v23, &coordCopy, v24);
        }
      }
    }

    v25 = objc_msgSend_errors(v6, v14, v15, v16);
    v29 = v25;
    if (v25)
    {
      objc_msgSend_clearErrorAndWarningsForCell_(v25, v26, &coordCopy, v28);
    }

    v30 = objc_msgSend_spillSizes(v6, v26, v27, v28);
    v33 = v30;
    if (v30)
    {
      objc_msgSend_clearSpillSizeForCell_(v30, v31, &coordCopy, v32);
    }

    v52 = *&coordCopy & 0xFFFFFFFFFFFFLL;
    v53 = dCopy;
    objc_msgSend_dgl_removeCellRefFromAllUuidMaps_(self, v31, &v52, v32);
    v37 = objc_msgSend_referencesToDirty(self->_calcEngine, v34, v35, v36);
    objc_msgSend_dirtyInternalCellRef_(v37, v38, &v52, v39);

    if (objc_msgSend_ownerIndex(v6, v40, v41, v42) == 1)
    {
      calcEngine = self->_calcEngine;
      v51[0] = objc_msgSend_formulaOwnerUid(v6, v43, v44, v45);
      v51[1] = v47;
      objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v47, v51, v48);
      objc_msgSend_markCellRefAsDirty_(calcEngine, v49, &v55, v50);
    }
  }
}

- (void)removeFormulaForOwner:(const TSKUIDStruct *)owner cellCoord:(TSUCellCoord)coord
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, owner, 1);
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v9) = 1;
  objc_msgSend_dgl_removeFormulaForOwnerID_cellCoord_(self, v7, IfMissing, *&coord, &self->_dependencyGraphLock, v9);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v9) = 0;
  sub_2212E22F0(&v8);
}

- (void)removeFormulasFromRange:(TSCERangeRef *)range
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v14 = 1;
  objc_msgSend_dgl_cellsWithRecordsInRange_formulaCellsOnly_(self, v5, range, 1);
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, v6, &range->_tableUID, 1);
  v9 = __p;
  if (__p != v12)
  {
    v10 = IfMissing;
    do
    {
      objc_msgSend_dgl_removeFormulaForOwnerID_cellCoord_(self, v8, v10, *v9++);
    }

    while (v9 != v12);
  }

  os_unfair_lock_unlock(lock);
  v14 = 0;
  if (__p)
  {
    operator delete(__p);
  }

  sub_2212E22F0(&lock);
}

- (void)removeFormulasAt:(const void *)at
{
  if ((TSCECellRefSet::isEmpty(at) & 1) == 0)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v14 = 1;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2050000000;
    v12[3] = 0;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_22136526C;
    v10[4] = sub_22136527C;
    v11 = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_22136526C;
    v8[4] = sub_22136527C;
    v9 = 0;
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x3032000000;
    v6[3] = sub_22136526C;
    v6[4] = sub_22136527C;
    v7 = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_221365284;
    v5[3] = &unk_278463190;
    v5[4] = self;
    v5[5] = v12;
    v5[6] = v10;
    v5[7] = v8;
    v5[8] = v6;
    TSCECellRefSet::enumerateOwnersUsingBlock(at, v5);
    _Block_object_dispose(v6, 8);

    _Block_object_dispose(v8, 8);
    _Block_object_dispose(v10, 8);

    _Block_object_dispose(v12, 8);
    os_unfair_lock_unlock(p_dependencyGraphLock);
    v14 = 0;
    sub_2212E22F0(&p_dependencyGraphLock);
  }
}

- (vector<TSUCellCoord,)formulaCoordsInRange:(TSCEDependencyTracker *)self inOwnerUID:(SEL)d
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x4812000000;
  v23 = sub_221365718;
  v24 = sub_22136573C;
  v25 = &unk_22188E88F;
  v27 = 0;
  v28 = 0;
  __p = 0;
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, d, a5, 1);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v18 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v19 = 1;
  v12 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v10, IfMissing, v11);
  v14 = v12;
  if (v12)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_221365754;
    v17[3] = &unk_27845F2B8;
    v17[4] = &v20;
    objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(v12, v13, a4, 1, 0, v17);
    p_dependencyGraphLock = v18;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v19 = 0;
  v15 = v21;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_2211230D4(retstr, v15[6], v15[7], (v15[7] - v15[6]) >> 3);

  sub_2212E22F0(&v18);
  _Block_object_dispose(&v20, 8);
  result = __p;
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return result;
}

- (void)scheduleRepairingSpanningFormulasInOwner:(const TSKUIDStruct *)owner upgradeMinion:(id)minion
{
  minionCopy = minion;
  if (minionCopy)
  {
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v18 = 1;
    v9 = objc_msgSend_dgl_spanningRowDependenciesForOwnerUID_(self, v7, owner, v8);
    v14 = objc_msgSend_dgl_spanningColumnDependenciesForOwnerUID_(self, v10, owner, v11);
    if (v9)
    {
      objc_msgSend_allFormulaCells_(v9, v12, &v19, v13);
    }

    if (v14)
    {
      objc_msgSend_allFormulaCells_(v14, v12, &v19, v13);
    }

    os_unfair_lock_unlock(lock);
    v18 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2213659B0;
    v15[3] = &unk_27845FBD8;
    v16 = minionCopy;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v19, v15);

    sub_2212E22F0(&lock);
    sub_22107C800(&v19, v20[0]);
  }
}

- (void)resetAllExternalFormulasReferringToOwnerUIDs:(const void *)ds upgradeMinion:(id)minion
{
  minionCopy = minion;
  if (minionCopy)
  {
    v24[0] = 0;
    v24[1] = 0;
    v23 = v24;
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    objc_msgSend_dgl_formulaCellRefsReferringToOwnerUIDs_outFormulaCells_(self, v9, ds, &v23);
    os_unfair_lock_unlock(&self->_dependencyGraphLock);
    v22 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_221365B84;
    v19[3] = &unk_27845FBD8;
    v20 = minionCopy;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v23, v19);

    sub_2212E22F0(&p_dependencyGraphLock);
    sub_22107C800(&v23, v24[0]);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEDependencyTracker resetAllExternalFormulasReferringToOwnerUIDs:upgradeMinion:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1006, 0, "Need upgradeMinion for resetAllExternalFormulasReferringToOwnerUIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }
}

- (TSCECellCoordSet)allFormulaCoordsInOwner:(SEL)owner
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x5812000000;
  v20 = sub_221365D30;
  v21 = sub_221365D3C;
  v22 = &unk_22188E88F;
  v26[0] = 0;
  v26[1] = 0;
  v23 = 0;
  v24 = 0;
  v25 = v26;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v15 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v16 = 1;
  v10 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v8, a4, v9);
  v12 = v10;
  if (v10)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_221365D48;
    v14[3] = &unk_27845F368;
    v14[4] = &v17;
    objc_msgSend_applyBlockToRecords_doWillModify_block_(v10, v11, 1, 0, v14);
    p_dependencyGraphLock = v15;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v16 = 0;
  TSCECellCoordSet::TSCECellCoordSet(retstr, (v18 + 6));

  sub_2212E22F0(&v15);
  _Block_object_dispose(&v17, 8);
  sub_22107C860(&v25, v26[0]);
  return result;
}

- (void)dgl_setError:(id)error andWarnings:(id)warnings forCell:(TSUCellCoord)cell inOwnerID:(unsigned __int16)d
{
  dCopy = d;
  cellCopy = cell;
  errorCopy = error;
  warningsCopy = warnings;
  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v11, dCopy, v12);
  v20 = objc_msgSend_errors(v13, v14, v15, v16);
  if (v20)
  {
    if (!errorCopy || (objc_msgSend_isAbortedError(errorCopy, v17, v18, v19) & 1) != 0)
    {
      goto LABEL_10;
    }

    v22 = objc_msgSend_errorType(errorCopy, v17, v21, v19);
    if (objc_msgSend_isErrorReferenceError(errorCopy, v23, v24, v25) || objc_msgSend_isUnsupportedFunctionError(errorCopy, v17, v26, v19))
    {
      objc_msgSend_rangeRef(errorCopy, v17, v26, v19);
      v27 = v35;
      objc_msgSend_rangeRef(errorCopy, v28, v29, v30);
      v37 = v27;
      v38 = v34;
      v35 = objc_msgSend_internalCellReferenceForCellRef_(self, v31, &v37, v32);
      v36 = v33;
      objc_msgSend_replaceErrorForCell_error_errDueToCellRef_(v20, v33, &cellCopy, errorCopy, &v35);
      if (!v22)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!v22)
      {
LABEL_10:
        objc_msgSend_clearErrorAndWarningsForCell_(v20, v17, &cellCopy, v19);
        goto LABEL_11;
      }

      v35 = 0x7FFF7FFFFFFFLL;
      v36 = 0xFFFF;
      objc_msgSend_replaceErrorForCell_error_errDueToCellRef_(v20, v17, &cellCopy, errorCopy, &v35);
    }

LABEL_11:
    objc_msgSend_setWarnings_forCell_(v20, v17, warningsCopy, &cellCopy);
  }
}

- (void)setError:(id)error andWarnings:(id)warnings forCell:(TSUCellCoord)cell inOwner:(const TSKUIDStruct *)owner
{
  errorCopy = error;
  warningsCopy = warnings;
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, v12, owner, 1);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  objc_msgSend_dgl_setError_andWarnings_forCell_inOwnerID_(self, v14, errorCopy, warningsCopy, cell, IfMissing);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  v20 = 0;
  calcEngine = self->_calcEngine;
  cellCopy = cell;
  v18 = *owner;
  objc_msgSend_replaceSpillError_ifCachedforSpillingOriginCellRef_(calcEngine, v16, errorCopy, &cellCopy);
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (int64_t)errorTypeForCell:(const TSCECellRef *)cell
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  tableUID = cell->_tableUID;
  v7 = objc_msgSend_dgl_errorsForOwnerUID_(self, v5, &tableUID, v6);
  v10 = v7;
  if (v7 && (tableUID._lower = cell->coordinate, (v11 = objc_msgSend_errorCellForCell_(v7, v8, &tableUID, v9)) != 0) && (v15 = *v11) != 0)
  {
    v16 = objc_msgSend_errorType(v15, v12, v13, v14);
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(lock);
  v20 = 0;

  sub_2212E22F0(&lock);
  return v16;
}

- (id)errorForCell:(const TSCECellRef *)cell
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v16 = 1;
  tableUID = cell->_tableUID;
  v7 = objc_msgSend_dgl_errorsForOwnerUID_(self, v5, &tableUID, v6);
  v10 = v7;
  if (v7 && (tableUID._lower = cell->coordinate, (v11 = objc_msgSend_errorCellForCell_(v7, v8, &tableUID, v9)) != 0))
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(lock);
  v16 = 0;

  sub_2212E22F0(&lock);

  return v12;
}

- (void)clearErrorAndWarningsForCell:(TSUCellCoord)cell inOwner:(const TSKUIDStruct *)owner
{
  IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, owner, 1);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  objc_msgSend_dgl_setError_andWarnings_forCell_inOwnerID_(self, v8, 0, 0, cell, IfMissing);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  v14 = 0;
  calcEngine = self->_calcEngine;
  cellCopy = cell;
  v12 = *owner;
  objc_msgSend_replaceSpillError_ifCachedforSpillingOriginCellRef_(calcEngine, v10, 0, &cellCopy);
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)clearErrorAndWarningsForCells:(const void *)cells
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v11 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v12 = 1;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = -1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x4012000000;
  v8[3] = sub_2213664A0;
  v8[4] = nullsub_55;
  v8[5] = &unk_22188E88F;
  v8[6] = 0;
  v8[7] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2213664B0;
  v7[3] = &unk_2784631B8;
  v7[5] = v8;
  v7[6] = v9;
  v7[4] = self;
  TSCECellRefSet::enumerateCellRefsUsingBlock(cells, v7);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221366548;
  v6[3] = &unk_27845FBD8;
  v6[4] = self;
  TSCECellRefSet::enumerateCellRefsUsingBlock(cells, v6);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
  sub_2212E22F0(&v11);
}

- (id)warningsForCell:(const TSCECellRef *)cell
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v16 = 1;
  tableUID = cell->_tableUID;
  v7 = objc_msgSend_dgl_errorsForOwnerUID_(self, v5, &tableUID, v6);
  v10 = v7;
  if (v7 && (tableUID._lower = cell->coordinate, (v11 = objc_msgSend_errorCellForCell_(v7, v8, &tableUID, v9)) != 0))
  {
    v12 = *(v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(lock);
  v16 = 0;

  sub_2212E22F0(&lock);

  return v12;
}

- (BOOL)setSpillSize:(id)size forCell:(const TSCECellRef *)cell withOverlaps:(void *)overlaps
{
  v33.origin = cell->coordinate;
  v33.size = size;
  if (TSUCellRect::isSingleCell(&v33))
  {
    objc_msgSend_clearSpillSizeForCell_(self, v9, cell, v10);
    return 1;
  }

  else
  {
    v30[0] = cell->_tableUID;
    v12 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, v9, v30, v10);
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v32 = 1;
    v15 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v13, v12, v14);
    v19 = objc_msgSend_spillSizes(v15, v16, v17, v18);
    v21 = v19;
    if (v19 && (objc_msgSend_hasSpillsOverlappingRange_outSpillRects_(v19, v20, &v33, overlaps) & 1) == 0)
    {
      *&v30[0] = cell->coordinate;
      objc_msgSend_replaceSpillSizeForCell_spillSize_(v21, v22, v30, *&size);
      os_unfair_lock_unlock(lock);
      v32 = 0;
      calcEngine = self->_calcEngine;
      tableUID = cell->_tableUID;
      coordinate = cell->coordinate;
      objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v24, &tableUID, &coordinate);
      objc_msgSend_markCellRefAsDirty_(calcEngine, v25, v30, v26);
      v11 = 1;
    }

    else
    {
      os_unfair_lock_unlock(lock);
      v11 = 0;
      v32 = 0;
    }

    sub_2212E22F0(&lock);
  }

  return v11;
}

- (BOOL)hasSpillsOverlappingRange:(const TSUCellRect *)range inTableUID:(const TSKUIDStruct *)d outSpillRects:(void *)rects
{
  v8 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, d);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v21 = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v9, v8, v10);
  v15 = objc_msgSend_spillSizes(v11, v12, v13, v14);
  v17 = v15;
  if (v15)
  {
    hasSpillsOverlappingRange_outSpillRects = objc_msgSend_hasSpillsOverlappingRange_outSpillRects_(v15, v16, range, rects, lock);
  }

  else
  {
    hasSpillsOverlappingRange_outSpillRects = 0;
  }

  os_unfair_lock_unlock(lock);
  v21 = 0;

  sub_2212E22F0(&lock);
  return hasSpillsOverlappingRange_outSpillRects;
}

- (BOOL)hasSpillingCellsIntersectingRange:(const TSUCellRect *)range inTableUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, d);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, v6, v8);
  v13 = objc_msgSend_spillSizes(v9, v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    hasSpillingCellsIntersectingRange = objc_msgSend_hasSpillingCellsIntersectingRange_(v13, v14, range, v15, lock);
  }

  else
  {
    hasSpillingCellsIntersectingRange = 0;
  }

  os_unfair_lock_unlock(lock);
  v20 = 0;

  sub_2212E22F0(&lock);
  return hasSpillingCellsIntersectingRange;
}

- (void)clearSpillSizeForCell:(const TSCECellRef *)cell
{
  *lock = cell->_tableUID;
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, lock, v3);
  lock[0] = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(lock[1]) = 1;
  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, v6, v8);
  v13 = objc_msgSend_spillSizes(v9, v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    coordinate = cell->coordinate;
    objc_msgSend_clearSpillSizeForCell_(v13, v14, &coordinate, v15);
  }

  os_unfair_lock_unlock(lock[0]);
  LOBYTE(lock[1]) = 0;

  sub_2212E22F0(lock);
}

- (void)clearSpillSizesInRange:(const TSCERangeRef *)range
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, &range->_tableUID, v3);
  TSCERangeCoordinate::asCellRect(&range->range);
  v21[0] = v7;
  v21[1] = v8;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v9, v6, v10);
  v15 = objc_msgSend_spillSizes(v11, v12, v13, v14);
  v18 = v15;
  if (v15)
  {
    objc_msgSend_clearSpillSizesInRange_(v15, v16, v21, v17, lock);
  }

  os_unfair_lock_unlock(lock);
  v20 = 0;

  sub_2212E22F0(&lock);
}

- (TSCECellCoordSet)spillOriginsInRange:(SEL)range
{
  v8 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, range, &a4->_tableUID, v4);
  TSCERangeCoordinate::asCellRect(&a4->range);
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  v25[0] = v9;
  v25[1] = v10;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v24 = 1;
  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v11, v8, v12);
  v17 = objc_msgSend_spillSizes(v13, v14, v15, v16);
  v20 = v17;
  if (v17)
  {
    objc_msgSend_cellCoordsWithSpillsInRange_(v17, v18, v25, v19);
    TSCECellCoordSet::addCellCoords(retstr, &v22);
    sub_22107C860(&v22._rowsPerColumn, v22._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  os_unfair_lock_unlock(lock);
  v24 = 0;

  return sub_2212E22F0(&lock);
}

- ($85CD2974BE96D4886BB301820D1C36C2)spillSizeForCell:(const TSCECellRef *)cell
{
  *lock = cell->_tableUID;
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, lock, v3);
  lock[0] = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(lock[1]) = 1;
  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, v6, v8);
  v13 = objc_msgSend_spillSizes(v9, v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    coordinate = cell->coordinate;
    v17 = objc_msgSend_spillSizeForCell_(v13, v14, &coordinate, v15);
  }

  else
  {
    v17 = 0x100000001;
  }

  os_unfair_lock_unlock(lock[0]);
  LOBYTE(lock[1]) = 0;

  sub_2212E22F0(lock);
  return v17;
}

- (BOOL)hasVerticalSpills:(const TSKUIDStruct *)spills
{
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, spills, v3);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  v8 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v6, v5, v7);
  v12 = objc_msgSend_spillSizes(v8, v9, v10, v11);
  v16 = v12;
  if (v12)
  {
    hasVerticalSpills = objc_msgSend_hasVerticalSpills(v12, v13, v14, v15, lock);
  }

  else
  {
    hasVerticalSpills = 0;
  }

  os_unfair_lock_unlock(lock);
  v20 = 0;

  sub_2212E22F0(&lock);
  return hasVerticalSpills;
}

- (TSCECellCoordSet)verticalSpillCells:(SEL)cells
{
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, cells, a4, v4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v23 = 1;
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  v10 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v8, v7, v9);
  v14 = objc_msgSend_spillSizes(v10, v11, v12, v13);
  v18 = v14;
  if (v14)
  {
    objc_msgSend_verticalSpillCells(v14, v15, v16, v17);
    TSCECellCoordSet::operator=(retstr, v20);
    sub_22107C860(v21, v21[1]);
  }

  os_unfair_lock_unlock(lock);
  v23 = 0;

  return sub_2212E22F0(&lock);
}

- (BOOL)hasHorizontalSpills:(const TSKUIDStruct *)spills
{
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, spills, v3);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  v8 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v6, v5, v7);
  v12 = objc_msgSend_spillSizes(v8, v9, v10, v11);
  v16 = v12;
  if (v12)
  {
    hasHorizontalSpills = objc_msgSend_hasHorizontalSpills(v12, v13, v14, v15, lock);
  }

  else
  {
    hasHorizontalSpills = 0;
  }

  os_unfair_lock_unlock(lock);
  v20 = 0;

  sub_2212E22F0(&lock);
  return hasHorizontalSpills;
}

- (TSCECellCoordSet)cellCoordsWithError:(SEL)error inTable:(int64_t)table
{
  v8 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, error, a5, a5);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v19 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  v12 = objc_msgSend_dgl_errorsForOwnerID_(self, v10, v8, v11);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_cellCoordsWithError_(v12, v13, table, v14);
    TSCECellCoordSet::operator=(retstr, v17);
    sub_22107C860(v18, v18[1]);
    p_dependencyGraphLock = v19;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v20 = 0;

  return sub_2212E22F0(&v19);
}

- (TSCECellRef)rootCauseForErrorInCell:(SEL)cell inOwner:(TSUCellCoord)owner outAtRootCell:(const TSKUIDStruct *)rootCell
{
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  v36.coordinate = owner;
  v36._tableUID = *rootCell;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v35 = 1;
  v33._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v33._coordsForOwnerUid.__tree_.__size_ = 0;
  v33._coordsForOwnerUid.__tree_.__begin_node_ = &v33._coordsForOwnerUid.__tree_.__end_node_;
  v9 = 10002;
  while (1)
  {
    if (TSCECellRefSet::containsCellRef(&v33, &v36))
    {
      v21 = 0;
      *retstr = v36;
      goto LABEL_15;
    }

    TSCECellRefSet::addCellRef(&v33, &v36);
    tableUID = v36._tableUID;
    v12 = objc_msgSend_dgl_errorsForOwnerUID_(self, v10, &tableUID, v11);
    v15 = v12;
    if (!v12)
    {
      v21 = 0;
      goto LABEL_14;
    }

    v16 = objc_msgSend_errorCellForCell_(v12, v13, &v36, v14);
    v20 = v16;
    v21 = v16 != 0;
    if (!v16)
    {
      goto LABEL_14;
    }

    v22 = *v16;
    if (*v20)
    {
      v23 = objc_msgSend_errorType(v22, v17, v18, v19);
      v26 = objc_msgSend_errorFlavorForErrorType_(TSCEError, v24, v23, v25);
    }

    else
    {
      v26 = objc_msgSend_errorFlavorForErrorType_(TSCEError, v17, 0, v19);
    }

    if (v26 != 2)
    {
      break;
    }

    v29 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v27, *(v20 + 12), v28);
    v36.coordinate = v20[2];
    v36._tableUID._lower = v29;
    v36._tableUID._upper = v30;

    if (!--v9)
    {
      v21 = 0;
      goto LABEL_15;
    }
  }

  v21 = 1;
LABEL_14:
  *retstr = v36;

LABEL_15:
  if (a6)
  {
    *a6 = v21;
  }

  os_unfair_lock_unlock(lock);
  v35 = 0;
  sub_22107C800(&v33, v33._coordsForOwnerUid.__tree_.__end_node_.__left_);
  return sub_2212E22F0(&lock);
}

- (unint64_t)errorCountForOwner:(const TSKUIDStruct *)owner
{
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, owner, v3);
  if (v5 == 0xFFFF)
  {
    return 0;
  }

  v6 = v5;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v21 = 1;
  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, v6, v8);
  v13 = objc_msgSend_errors(v9, v10, v11, v12);
  v17 = v13;
  if (v13)
  {
    v18 = objc_msgSend_countOfErrors(v13, v14, v15, v16, lock);
  }

  else
  {
    v18 = 0;
  }

  os_unfair_lock_unlock(lock);
  v21 = 0;

  sub_2212E22F0(&lock);
  return v18;
}

- (unsigned)dgl_removePrecedentsFromOwnerInPhases:(unsigned __int16)phases startPhase:(unsigned int)phase startTime:(id)time timeout:(double)timeout
{
  phasesCopy = phases;
  phasesCopy2 = phases;
  timeCopy = time;
  __p = 0;
  v93 = 0;
  v94 = 0;
  if (phasesCopy == 0xFFFF)
  {
    goto LABEL_8;
  }

  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v10, phasesCopy, v11);
  v15 = v13;
  if (!v13)
  {
    sub_221266D14(&__p, &phasesCopy2);
    goto LABEL_8;
  }

  if (phase <= 1)
  {
    v16 = objc_msgSend_uuidReferences(v13, v10, v14, v11);
    objc_msgSend_clear(v16, v17, v18, v19);

    v23 = objc_msgSend_rangeDependencies(v15, v20, v21, v22);
    objc_msgSend_deleteAllReferencesFromThisTable(v23, v24, v25, v26);

    if (timeCopy)
    {
      objc_msgSend_timeIntervalSinceNow(timeCopy, v10, v14, v11);
      if (-v27 > timeout)
      {
        phaseCopy = 2;
        goto LABEL_29;
      }
    }

LABEL_33:
    v40 = objc_msgSend_spanningRowDependencies(v15, v10, v14, v11);
    objc_msgSend_removeAllPrecedents(v40, v41, v42, v43);

    if (timeCopy && (objc_msgSend_timeIntervalSinceNow(timeCopy, v44, v45, v46), -v47 > timeout) || (objc_msgSend_shouldAbortRecalculation(self->_calcEngine, v44, v45, v46) & 1) != 0)
    {
      phaseCopy = 3;
      goto LABEL_29;
    }

LABEL_38:
    v48 = objc_msgSend_spanningColumnDependencies(v15, v10, v14, v11);
    objc_msgSend_removeAllPrecedents(v48, v49, v50, v51);

    if (timeCopy && (objc_msgSend_timeIntervalSinceNow(timeCopy, v52, v53, v54), -v55 > timeout) || (objc_msgSend_shouldAbortRecalculation(self->_calcEngine, v52, v53, v54) & 1) != 0)
    {
      phaseCopy = 4;
      goto LABEL_29;
    }

    goto LABEL_43;
  }

  if (phase == 2)
  {
    goto LABEL_33;
  }

  if (phase <= 3)
  {
    goto LABEL_38;
  }

  phaseCopy = phase;
  if (phase != 4)
  {
LABEL_58:
    if (phase > 5)
    {
      if (phase != 6)
      {
        if (phaseCopy != 100)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v65 = objc_msgSend_volatileDependencies(v15, v10, v14, v11);
      objc_msgSend_removeAllPrecedents(v65, v66, v67, v68);

      v72 = objc_msgSend_wholeOwnerDependencies(v15, v69, v70, v71);
      objc_msgSend_removeAllPrecedents(v72, v73, v74, v75);

      if (timeCopy && (objc_msgSend_timeIntervalSinceNow(timeCopy, v76, v77, v78), -v79 > timeout) || (objc_msgSend_shouldAbortRecalculation(self->_calcEngine, v76, v77, v78) & 1) != 0)
      {
        phaseCopy = 6;
        goto LABEL_29;
      }
    }

    v80 = objc_msgSend_uuidReferenceMap(self->_calcEngine, v10, v14, v11);
    objc_msgSend_removeAllCellRefsInOwner_(v80, v81, phasesCopy2, v82);

    v86 = objc_msgSend_groupNodeReferenceMap(self->_calcEngine, v83, v84, v85);
    objc_msgSend_removeAllCellRefsInOwner_(v86, v87, phasesCopy2, v88);

LABEL_8:
    for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
    {
      v90[0] = i[8];
      if (objc_msgSend_dgl_canDeleteOwnerDependencies_(self, v10, v90[0], v11))
      {
        sub_221266D14(&__p, v90);
        if ((v93 - __p) > 0x18E)
        {
          break;
        }
      }
    }

    sub_221260060(&self->_formulaOwnerIDMap._lock, v90);
    for (j = v91; j; j = *j)
    {
      v89 = *(j + 8);
      if (objc_msgSend_dgl_canDeleteOwnerDependencies_(self, v30, v89, v31))
      {
        sub_221266D14(&__p, &v89);
        if ((v93 - __p) > 0x190)
        {
          break;
        }
      }
    }

    v33 = __p;
    v34 = v93;
    if (__p != v93)
    {
      for (k = 1; ; ++k)
      {
        objc_msgSend_dgl_deleteOwnerDependenciesIfPossible_(self, v30, *v33, v31);
        if (!timeCopy || (k & 0xF) != 0)
        {
          if (++v33 == v34)
          {
            break;
          }
        }

        else
        {
          objc_msgSend_timeIntervalSinceNow(timeCopy, v30, v36, v31);
          ++v33;
          if (-v37 > timeout || v33 == v34)
          {
            break;
          }
        }
      }
    }

    sub_2210BDEC0(v90);
    phaseCopy = 100;
    goto LABEL_29;
  }

LABEL_43:
  v56 = objc_msgSend_cellDependencies(v15, v10, v14, v11);
  v60 = objc_msgSend_numCellRecords(v56, v57, v58, v59) != 0;

  do
  {
    if ((v60 & 1) == 0)
    {
      phaseCopy = 5;
      goto LABEL_52;
    }

    v61 = objc_msgSend_cellDependencies(v15, v10, v14, v11);
    v60 = objc_msgSend_removeSomePrecedents_markDependentsDirty_(v61, v62, 1000, 0);

    if (timeCopy)
    {
      objc_msgSend_timeIntervalSinceNow(timeCopy, v10, v14, v11);
      if (-v63 > timeout)
      {
        if (v60)
        {
          phaseCopy = 4;
        }

        else
        {
          phaseCopy = 5;
        }

        goto LABEL_57;
      }
    }
  }

  while (!objc_msgSend_shouldAbortRecalculation(self->_calcEngine, v10, v14, v11));
  if (v60)
  {
    phaseCopy = 4;
  }

  else
  {
    phaseCopy = 5;
  }

LABEL_52:
  if (!timeCopy)
  {
    goto LABEL_58;
  }

LABEL_57:
  objc_msgSend_timeIntervalSinceNow(timeCopy, v10, v14, v11);
  if (-v64 <= timeout)
  {
    goto LABEL_58;
  }

LABEL_29:
  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  return phaseCopy;
}

- (void)processUnregisteringOwners:(double)owners
{
  if (self->_hasOwnerIdsToUnregister)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    v19 = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v20) = 1;
    if (self->_ownerIdsToUnregister.__end_ == self->_ownerIdsToUnregister.__begin_)
    {
      self->_hasOwnerIdsToUnregister = 0;
    }

    else
    {
      v9 = objc_opt_new();
      if (self->_hasOwnerIdsToUnregister)
      {
        end = self->_ownerIdsToUnregister.__end_;
        do
        {
          v11 = *(end - 4);
          v12 = objc_msgSend_referencesToDirty(self->_calcEngine, v6, v7, v8, v19, v20);
          hasDirtyingToPerformForOwnerId = objc_msgSend_hasDirtyingToPerformForOwnerId_(v12, v13, v11, v14);

          if (hasDirtyingToPerformForOwnerId)
          {
            break;
          }

          v17 = objc_msgSend_dgl_removePrecedentsFromOwnerInPhases_startPhase_startTime_timeout_(self, v16, v11, *(end - 1), v9, owners);
          if (v17 != 100)
          {
            *(end - 1) = v17;
            break;
          }

          begin = self->_ownerIdsToUnregister.__begin_;
          end = (self->_ownerIdsToUnregister.__end_ - 8);
          self->_ownerIdsToUnregister.__end_ = end;
          self->_hasOwnerIdsToUnregister = begin != end;
        }

        while (begin != end);
      }

      p_dependencyGraphLock = v19;
    }

    os_unfair_lock_unlock(p_dependencyGraphLock);
    LOBYTE(v20) = 0;
    sub_2212E22F0(&v19);
  }
}

- (void)removeAllPrecedentsFromOwner:(const TSKUIDStruct *)owner
{
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, owner, v3);
  v74 = v5;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v73 = 1;
  if (objc_msgSend_dgl_ownerIDIsRegistered_(self, v6, v5, v7))
  {
    v75 = &v74;
    v8 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v74, &unk_2217E1838, &v75)[3];
    objc_msgSend_dgl_dirtyAllCellsInOwnerID_(self, v9, v74, v10, lock);
    v14 = objc_msgSend_rangeDependencies(v8, v11, v12, v13);
    objc_msgSend_deleteAllReferencesFromThisTable(v14, v15, v16, v17);

    v21 = objc_msgSend_spanningRowDependencies(v8, v18, v19, v20);
    objc_msgSend_removeAllPrecedents(v21, v22, v23, v24);

    v28 = objc_msgSend_spanningColumnDependencies(v8, v25, v26, v27);
    objc_msgSend_removeAllPrecedents(v28, v29, v30, v31);

    v35 = objc_msgSend_cellDependencies(v8, v32, v33, v34);
    objc_msgSend_removeAllPrecedents(v35, v36, v37, v38);

    v42 = objc_msgSend_volatileDependencies(v8, v39, v40, v41);
    objc_msgSend_removeAllPrecedents(v42, v43, v44, v45);

    v49 = objc_msgSend_wholeOwnerDependencies(v8, v46, v47, v48);
    objc_msgSend_removeAllPrecedents(v49, v50, v51, v52);

    v56 = objc_msgSend_uuidReferenceMap(self->_calcEngine, v53, v54, v55);
    objc_msgSend_removeAllCellRefsInOwner_(v56, v57, v74, v58);

    v62 = objc_msgSend_groupNodeReferenceMap(self->_calcEngine, v59, v60, v61);
    objc_msgSend_removeAllCellRefsInOwner_(v62, v63, v74, v64);

    v68 = objc_msgSend_uuidReferences(v8, v65, v66, v67);
    objc_msgSend_clear(v68, v69, v70, v71);
  }

  os_unfair_lock_unlock(lock);
  v73 = 0;
  sub_2212E22F0(&lock);
}

- (BOOL)dgl_hasFormulaAt:(const TSCEInternalCellReference *)at
{
  CellRecordInternal_willModifyOnTile = objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(self, a2, at, 0);
  if (CellRecordInternal_willModifyOnTile)
  {
    LODWORD(CellRecordInternal_willModifyOnTile) = (*(CellRecordInternal_willModifyOnTile + 38) >> 2) & 1;
  }

  return CellRecordInternal_willModifyOnTile;
}

- (void)dgl_replaceCellWithFormulaForOwner:(unsigned __int16)owner formulaCoord:(TSUCellCoord)coord precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  *v105 = owner;
  coordCopy = coord;
  precedentsCopy = precedents;
  optionsCopy = options;
  if (options->var2)
  {
    v109.coordinate = (*&coord & 0xFFFFFFFFFFFFLL);
    LODWORD(v109._tableUID._lower) = *v105;
    objc_msgSend_dgl_precedentsOfCell_(self, v9, &v109, v11);
    v16 = objc_msgSend_referenceSet(precedentsCopy, v13, v14, v15);
    if (TSCEReferenceSet::isEqualToDepTrackerPrecedents(v16, &v114, v17, v18))
    {
      if (!TSCEReferenceSet::isEmpty(&v114, v19, v20, v21))
      {
        TSCEReferenceSet::~TSCEReferenceSet(&v114);
        goto LABEL_43;
      }

      hasFormulaAt = objc_msgSend_dgl_hasFormulaAt_(self, v22, &v109, v23);
      TSCEReferenceSet::~TSCEReferenceSet(&v114);
      if (hasFormulaAt)
      {
        goto LABEL_43;
      }
    }

    else
    {
      TSCEReferenceSet::~TSCEReferenceSet(&v114);
    }
  }

  if (precedentsCopy)
  {
    v25 = objc_msgSend_isEmpty(precedentsCopy, v9, v10, v11) ^ 1;
  }

  else
  {
    v25 = 0;
  }

  if ((*&coordCopy & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEDependencyTracker dgl_replaceCellWithFormulaForOwner:formulaCoord:precedents:replaceOptions:]", v11);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v29);
    v31 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v30, 1830, 0, "Attempting to call dgl_replaceCellWithFormula with an invalid coord: %@", v31);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
  }

  else
  {
    v36 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v9, *v105, v11);
    v40 = v36;
    if (v36)
    {
      if (!optionsCopy->var3)
      {
        v41 = objc_msgSend_spillSizes(v36, v37, v38, v39);
        v44 = v41;
        if (v41)
        {
          objc_msgSend_clearSpillSizeForCell_(v41, v42, &coordCopy, v43);
        }
      }

      v108[0] = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v37, *v105, v39);
      v108[1] = v45;
      objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, v45, v108, v46);
      if (v25)
      {
        v50 = objc_msgSend_referenceSet(precedentsCopy, v47, v48, v49);
        v51 = TSCEReferenceSet::containsRef(v50, &v109);
      }

      else
      {
        v51 = 0;
      }

      v106 = *&coordCopy & 0xFFFFFFFFFFFFLL;
      LODWORD(v107) = *v105;
      objc_msgSend_dgl_precedentsOfCell_(self, v47, &v106, v49);
      if (TSCEReferenceSet::containsRef(&v114, &v109))
      {
        v113 = 0;
        v112 = 0;
        v54 = TSCEReferenceSet::firstCellRefForOwner(&v114, *v105, v52, v53);
        v112 = v54;
        v113 = v55;
        if (v55 != 0xFFFF && (v54 & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
        {
          if (!v51 || (v58 = objc_msgSend_referenceSet(precedentsCopy, v55, v56, v57), CellRefForOwner = TSCEReferenceSet::firstCellRefForOwner(v58, *v105, v59, v60), CellRefForOwner != v112) || ((v112 ^ CellRefForOwner) & 0x101FFFF00000000) != 0 || v113 != v55)
          {
            v62 = objc_msgSend_referencesToDirty(self->_calcEngine, v55, v56, v57);
            objc_msgSend_dirtyInternalCellRef_(v62, v63, &v112, v64);
          }
        }
      }

      TSCEReferenceSet::~TSCEReferenceSet(&v114);
      v112 = *&coordCopy & 0xFFFFFFFFFFFFLL;
      v113 = *v105;
      objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(self, v65, &v112, 1);
      v69 = objc_msgSend_rangeDependencies(v40, v66, v67, v68);

      if (v69)
      {
        v73 = objc_msgSend_rangeDependencies(v40, v70, v71, v72);
        objc_msgSend_deleteRangeReferencesForFromCell_(v73, v74, &coordCopy, v75);
      }

      v76 = objc_msgSend_spanningRowDependencies(v40, v70, v71, v72);

      if (v76)
      {
        v80 = objc_msgSend_spanningRowDependencies(v40, v77, v78, v79);
        objc_msgSend_deleteReferencesFromCell_(v80, v81, &coordCopy, v82);
      }

      v83 = objc_msgSend_spanningColumnDependencies(v40, v77, v78, v79);

      if (v83)
      {
        v87 = objc_msgSend_spanningColumnDependencies(v40, v84, v85, v86);
        objc_msgSend_deleteReferencesFromCell_(v87, v88, &coordCopy, v89);
      }

      v90 = objc_msgSend_volatileDependencies(v40, v84, v85, v86);

      if (v90)
      {
        v94 = objc_msgSend_volatileDependencies(v40, v91, v92, v93);
        objc_msgSend_deleteVolatileReferencesFromCell_(v94, v95, *&coordCopy, v96);
      }

      v97 = objc_msgSend_wholeOwnerDependencies(v40, v91, v92, v93);

      if (v97)
      {
        v101 = objc_msgSend_wholeOwnerDependencies(v40, v98, v99, v100);
        objc_msgSend_deleteOwnerReferencesFromCell_(v101, v102, *&coordCopy, v103);
      }

      v110 = *&coordCopy & 0xFFFFFFFFFFFFLL;
      v111 = *v105;
      if (!optionsCopy->var3)
      {
        objc_msgSend_dgl_removeCellRefFromAllUuidMaps_(self, v98, &v110, v100);
      }

      operator new();
    }
  }

LABEL_43:
}

- (void)replaceCellWithFormulaForOwner:(const TSKUIDStruct *)owner formulaCoord:(TSUCellCoord)coord precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  coordCopy = coord;
  precedentsCopy = precedents;
  v12 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, v10, owner, v11);
  if (!TSUCellCoord::verifyCoordIsSane(&coordCopy) || ((*&coordCopy & 0xFFFF00000000) == 0x7FFF00000000 ? (v15 = coordCopy.row == 0x7FFFFFFFLL) : (v15 = 1), !v15 || coordCopy.row == 0x7FFFFFFFLL && (*&coordCopy & 0xFFFF00000000) != 0x7FFF00000000))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCEDependencyTracker replaceCellWithFormulaForOwner:formulaCoord:precedents:replaceOptions:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 2331, 0, "Not expecting insane, or spanning coordinates here: (%lu,%lu)", coordCopy.column, coordCopy.row);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if (!options->var1 || (lock.coordinate = (*&coordCopy & 0xFFFFFFFFFFFFLL), LODWORD(lock._tableUID._lower) = v12, (objc_msgSend_markIntCellRefDirtyIfCellContainsAFormula_(self, v13, &lock, v14) & 1) == 0))
  {
    if (!options->var2)
    {
      objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, v13, owner, v14);
      v28 = objc_msgSend_referenceSet(precedentsCopy, v25, v26, v27);
      if (TSCEReferenceSet::containsRef(v28, &lock))
      {
        options->var2 = 1;
      }
    }

    lock.coordinate = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(lock._tableUID._lower) = 1;
    v29 = coordCopy;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v31, options);
    objc_msgSend_dgl_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(self, v30, v12, v29, precedentsCopy, &v31);

    os_unfair_lock_unlock(*&lock.coordinate);
    LOBYTE(lock._tableUID._lower) = 0;
    sub_2212E22F0(&lock);
  }
}

- (void)replaceRemoteDataKeysInterestedInForCell:(TSCECellRef *)cell specifierSet:(id)set
{
  setCopy = set;
  lock = &self->_dependencyGraphLock;
  v31 = 0;
  tableUID = cell->_tableUID;
  v9 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, v7, &tableUID, v8);
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v31 = 1;
  if (objc_msgSend_dgl_ownerIDIsRegistered_(self, v10, v9, v11))
  {
    v14 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v12, v9, v13);
    v18 = objc_msgSend_volatileDependencies(v14, v15, v16, v17);
    objc_msgSend_replaceRemoteDataKeyInterestedInForReference_specifierSet_(v18, v19, cell, setCopy);
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEDependencyTracker replaceRemoteDataKeysInterestedInForCell:specifierSet:]", v13);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 2371, 0, "Attempted to replace remote data key interest in a cell whose owner isn't registered.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  os_unfair_lock_unlock(lock);
  v31 = 0;
  sub_2212E22F0(&lock);
}

- (void)formulaCellsForDeletedOwner:(id)owner outFormulaCells:(void *)cells
{
  ownerCopy = owner;
  v45[0] = objc_msgSend_tableUID(ownerCopy, v7, v8, v9);
  v45[1] = v10;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v44 = 1;
  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v11, v45, v12);
  v17 = v13;
  if (v13)
  {
    v18 = objc_msgSend_cellDependencies(v13, v14, v15, v16, lock);

    if (v18)
    {
      v22 = objc_msgSend_cellDependencies(v17, v19, v20, v21);
      objc_msgSend_formulaCellsReferencingThisOwner_(v22, v23, cells, v24);
    }

    v25 = objc_msgSend_rangeDependencies(v17, v19, v20, v21);

    if (v25)
    {
      v29 = objc_msgSend_rangeDependencies(v17, v26, v27, v28);
      objc_msgSend_allFormulaCells_(v29, v30, cells, v31);
    }

    v32 = objc_msgSend_spanningColumnDependencies(v17, v26, v27, v28);

    if (v32)
    {
      v36 = objc_msgSend_spanningColumnDependencies(v17, v33, v34, v35);
      objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v36, v37, 0, 999, cells);
    }

    v38 = objc_msgSend_spanningRowDependencies(v17, v33, v34, v35);

    if (v38)
    {
      v41 = objc_msgSend_spanningRowDependencies(v17, v14, v39, v40);
      objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v41, v42, 0, 999999, cells);
    }
  }

  objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v14, ownerCopy, cells, lock);
  os_unfair_lock_unlock(lock);
  v44 = 0;
  sub_2212E22F0(&lock);
}

- (void)formulaCellsForInsertedOwner:(id)owner outFormulaCells:(void *)cells
{
  ownerCopy = owner;
  if (objc_msgSend_rewriteType(ownerCopy, v7, v8, v9))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker formulaCellsForInsertedOwner:outFormulaCells:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2407, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v23) = 1;
  objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v21, ownerCopy, cells, &self->_dependencyGraphLock, v23);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v23) = 0;
  sub_2212E22F0(&v22);
}

- (void)dgl_formulaCellsAffectedByGeometryChangeToTable:(const TSKUIDStruct *)table outFormulaCells:(void *)cells
{
  objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, a2, table, cells);
  v19 = v21;
  v8 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v6, &v19, v7);
  if (v8)
  {
    v12 = v8;
    v13 = objc_msgSend_cellDependencies(v8, v9, v10, v11);

    if (v13)
    {
      v17 = objc_msgSend_cellDependencies(v12, v14, v15, v16);
      *&v19 = v20;
      *(&v19 + 1) = v20;
      objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(v17, v18, &v19, cells);
    }
  }
}

- (void)formulaCellsForTableTranspose:(id)transpose outFormulaCells:(void *)cells
{
  transposeCopy = transpose;
  if (objc_msgSend_rewriteType(transposeCopy, v7, v8, v9) != 11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker formulaCellsForTableTranspose:outFormulaCells:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2431, 0, "wrong rewrite type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v67 = 1;
  v64 = objc_msgSend_tableUID(transposeCopy, v21, v22, v23);
  v65 = v24;
  v26 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v24, &v64, v25);
  v30 = v26;
  if (v26)
  {
    v31 = objc_msgSend_cellDependencies(v26, v27, v28, v29);

    if (v31)
    {
      v35 = objc_msgSend_cellDependencies(v30, v32, v33, v34);
      objc_msgSend_formulaCellsInThisOwner_(v35, v36, cells, v37);

      v41 = objc_msgSend_cellDependencies(v30, v38, v39, v40);
      objc_msgSend_formulaCellsReferencingThisOwner_(v41, v42, cells, v43);
    }

    v44 = objc_msgSend_rangeDependencies(v30, v32, v33, v34);

    if (v44)
    {
      v48 = objc_msgSend_rangeDependencies(v30, v45, v46, v47);
      objc_msgSend_allFormulaCells_(v48, v49, cells, v50);
    }

    v51 = objc_msgSend_spanningColumnDependencies(v30, v45, v46, v47);

    if (v51)
    {
      v55 = objc_msgSend_spanningColumnDependencies(v30, v52, v53, v54);
      objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v55, v56, 0, 999, cells);
    }

    v57 = objc_msgSend_spanningRowDependencies(v30, v52, v53, v54);

    if (v57)
    {
      v61 = objc_msgSend_spanningRowDependencies(v30, v58, v59, v60);
      objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v61, v62, 0, 999999, cells);
    }

    v64 = objc_msgSend_formulaOwnerUid(v30, v58, v59, v60);
    v65 = v63;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v63, &v64, cells);
  }

  os_unfair_lock_unlock(lock);
  v67 = 0;
  sub_2212E22F0(&lock);
}

- (void)formulaCellsForRemoveRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v10 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9);
  *&v79 = objc_msgSend_tableUID(rowsCopy, v11, v12, v13);
  *(&v79 + 1) = v14;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v78 = 1;
  v17 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v15, &v79, v16);
  v21 = v17;
  if (v17)
  {
    v22 = objc_msgSend_cellDependencies(v17, v18, v19, v20);
    objc_msgSend_formulaCellsReferencingCellsAffectedByRemoveRows_outFormulaCells_(v22, v23, rowsCopy, cells);

    v27 = objc_msgSend_cellDependencies(v21, v24, v25, v26);
    v68 = objc_msgSend_affectedRange(rowsCopy, v28, v29, v30);
    v69 = v31;
    objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v27, v31, &v68, rowsCopy, cells);

    v35 = objc_msgSend_rangeDependencies(v21, v32, v33, v34);
    objc_msgSend_formulaCellsReferencingRangesAffectedByRewriteSpec_outFormulaCells_(v35, v36, rowsCopy, cells);

    if (objc_msgSend_isRows(v10, v37, v38, v39))
    {
      v43 = objc_msgSend_spanningRowDependencies(v21, v40, v41, v42);
      objc_msgSend_formulaCellsReferencingRangesAffectedByRemoveRows_outFormulaCells_(v43, v44, rowsCopy, cells);

      objc_msgSend_spanningColumnDependencies(v21, v45, v46, v47);
    }

    else
    {
      v51 = objc_msgSend_spanningColumnDependencies(v21, v40, v41, v42);
      objc_msgSend_formulaCellsReferencingRangesAffectedByRemoveRows_outFormulaCells_(v51, v52, rowsCopy, cells);

      objc_msgSend_spanningRowDependencies(v21, v53, v54, v55);
    }
    v48 = ;
    objc_msgSend_allFormulaCells_(v48, v49, cells, v50);

    v68 = objc_msgSend_formulaOwnerUid(v21, v56, v57, v58);
    v69 = v59;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v59, &v68, cells);
    objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v60, rowsCopy, cells);
    if (objc_msgSend_forSpillFormulasOnly(rowsCopy, v61, v62, v63))
    {
      if ((TSCECellRefSet::isEmpty(cells) & 1) == 0)
      {
        v68 = 0;
        v69 = &v68;
        v70 = 0x4812000000;
        v71 = sub_22136A3D8;
        v72 = sub_22136A3FC;
        v73 = &unk_22188E88F;
        v75 = 0;
        v76 = 0;
        __p = 0;
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = sub_22136A414;
        v66[3] = &unk_2784632F0;
        v67 = v79;
        v66[4] = &v68;
        TSCECellRefSet::enumerateOwnersUsingBlock(cells, v66);
        v64 = v69[6];
        v65 = v69[7];
        while (v64 != v65)
        {
          TSCECellRefSet::removeAllCellRefsForOwner(cells, v64++);
        }

        _Block_object_dispose(&v68, 8);
        if (__p)
        {
          v75 = __p;
          operator delete(__p);
        }
      }
    }
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v78 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForInsertRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v10 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9);
  v87[0] = objc_msgSend_tableUID(rowsCopy, v11, v12, v13);
  v87[1] = v14;
  v15 = objc_msgSend_resolverForTableUID_(self->_calcEngine, v14, v87[0], v14);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v86 = 1;
  v18 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v16, v87, v17);
  v22 = v18;
  if (v18)
  {
    v23 = objc_msgSend_cellDependencies(v18, v19, v20, v21);
    objc_msgSend_formulaCellsReferencingCellsAffectedByInsertRows_outFormulaCells_(v23, v24, rowsCopy, cells);

    v28 = objc_msgSend_cellDependencies(v22, v25, v26, v27);
    v83 = objc_msgSend_affectedRange(rowsCopy, v29, v30, v31);
    v84 = v32;
    objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v28, v32, &v83, rowsCopy, cells);

    v36 = objc_msgSend_rangeDependencies(v22, v33, v34, v35);
    objc_msgSend_formulaCellsReferencingRangesAffectedByRewriteSpec_outFormulaCells_(v36, v37, rowsCopy, cells);

    v41 = objc_msgSend_insertAtUid(v10, v38, v39, v40);
    if (v41 | v42 && v15)
    {
      if (objc_msgSend_isRows(v10, v42, v43, v44))
      {
        v48 = objc_msgSend_insertAtUid(v10, v45, v46, v47);
        v50 = objc_msgSend_rowIndexForRowUID_(v15, v49, v48, v49);
        v55 = objc_msgSend_rangeDependencies(v22, v51, v52, v53);
        v83 = v50 | 0x7FFF00000000;
        v84 = v83;
      }

      else
      {
        v56 = objc_msgSend_insertAtUid(v10, v45, v46, v47);
        v58 = objc_msgSend_columnIndexForColumnUID_(v15, v57, v56, v57);
        v55 = objc_msgSend_rangeDependencies(v22, v59, v60, v61);
        v83 = (v58 << 32) | 0x7FFFFFFF;
        v84 = v83;
      }

      objc_msgSend_formulaCellsReferencingRange_outFormulaCells_(v55, v54, &v83, cells);
    }

    if (objc_msgSend_isRows(v10, v42, v43, v44))
    {
      v65 = objc_msgSend_spanningRowDependencies(v22, v62, v63, v64);
      objc_msgSend_formulaCellsReferencingRangesAffectedByInsertRows_outFormulaCells_(v65, v66, rowsCopy, cells);

      objc_msgSend_spanningColumnDependencies(v22, v67, v68, v69);
    }

    else
    {
      v73 = objc_msgSend_spanningColumnDependencies(v22, v62, v63, v64);
      objc_msgSend_formulaCellsReferencingRangesAffectedByInsertRows_outFormulaCells_(v73, v74, rowsCopy, cells);

      objc_msgSend_spanningRowDependencies(v22, v75, v76, v77);
    }
    v70 = ;
    objc_msgSend_allFormulaCells_(v70, v71, cells, v72);

    v83 = objc_msgSend_formulaOwnerUid(v22, v78, v79, v80);
    v84 = v81;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v81, &v83, cells);
    objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v82, rowsCopy, cells);
  }

  os_unfair_lock_unlock(lock);
  v86 = 0;
  sub_2212E22F0(&lock);
}

- (void)formulaCellsForMoveRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v10 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9);
  v68[0] = objc_msgSend_tableUID(rowsCopy, v11, v12, v13);
  v68[1] = v14;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v67 = 1;
  v17 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v15, v68, v16);
  v21 = v17;
  if (v17)
  {
    v22 = objc_msgSend_cellDependencies(v17, v18, v19, v20);
    objc_msgSend_formulaCellsReferencingCellsAffectedByMoveRows_outFormulaCells_(v22, v23, rowsCopy, cells);

    v27 = objc_msgSend_cellDependencies(v21, v24, v25, v26);
    v64 = objc_msgSend_affectedRange(rowsCopy, v28, v29, v30);
    v65 = v31;
    objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v27, v31, &v64, rowsCopy, cells);

    v35 = objc_msgSend_rangeDependencies(v21, v32, v33, v34);
    objc_msgSend_formulaCellsReferencingRangesAffectedByRewriteSpec_outFormulaCells_(v35, v36, rowsCopy, cells);

    if (objc_msgSend_isRows(v10, v37, v38, v39))
    {
      objc_msgSend_spanningRowDependencies(v21, v40, v41, v42);
    }

    else
    {
      objc_msgSend_spanningColumnDependencies(v21, v40, v41, v42);
    }
    v43 = ;
    objc_msgSend_formulaCellsReferencingRangesAffectedByMoveRows_outFormulaCells_(v43, v44, rowsCopy, cells);

    v64 = objc_msgSend_formulaOwnerUid(v21, v45, v46, v47);
    v65 = v48;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v48, &v64, cells);
    if (objc_msgSend_isRows(v10, v49, v50, v51))
    {
      v55 = objc_msgSend_rowOrColumnIndices(v10, v52, v53, v54);
      v56 = v63;
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = sub_22136AA6C;
      v63[3] = &unk_278463318;
      v63[5] = v21;
      v63[4] = rowsCopy;
      v63[6] = cells;
      objc_msgSend_enumerateRangesUsingBlock_(v55, v57, v63, v58);
    }

    else
    {
      v55 = objc_msgSend_rowOrColumnIndices(v10, v52, v53, v54);
      v56 = v62;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = sub_22136AAE0;
      v62[3] = &unk_278463318;
      v62[5] = v21;
      v62[4] = rowsCopy;
      v62[6] = cells;
      objc_msgSend_enumerateRangesUsingBlock_(v55, v59, v62, v60);
    }

    objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v61, rowsCopy, cells);
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v67 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForSortRows:(id)rows outFormulaCells:(void *)cells
{
  rowsCopy = rows;
  v10 = objc_msgSend_rowColumnInfo(rowsCopy, v7, v8, v9);
  v80[0] = objc_msgSend_affectedOwnerUID(rowsCopy, v11, v12, v13);
  v80[1] = v14;
  v16 = objc_msgSend_tableResolverForTableUID_(self->_calcEngine, v14, v80, v15);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v79 = 1;
  v19 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v17, v80, v18);
  if (v19)
  {
    v26 = objc_msgSend_cellDependencies(v19, v20, v21, v22);
    if (v26)
    {
      if (objc_msgSend_isRows(v10, v23, v24, v25))
      {
        v30 = objc_msgSend_rowOrColumnIndices(v10, v27, v28, v29);
        v31 = v77;
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = sub_22136B000;
        v77[3] = &unk_278463340;
        v77[4] = v26;
        v77[5] = rowsCopy;
        v77[6] = cells;
        objc_msgSend_enumerateRangesUsingBlock_(v30, v32, v77, v33);
      }

      else
      {
        v30 = objc_msgSend_rowOrColumnIndices(v10, v27, v28, v29);
        v31 = v76;
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = sub_22136B048;
        v76[3] = &unk_278463340;
        v76[4] = v26;
        v76[5] = rowsCopy;
        v76[6] = cells;
        objc_msgSend_enumerateRangesUsingBlock_(v30, v34, v76, v35);
      }
    }

    if (v16)
    {
      v75[0] = objc_msgSend_conditionalStyleFormulaOwnerUID(v16, v23, v24, v25);
      v75[1] = v36;
      v41 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v36, v75, v37);
      if (v41)
      {
        if (objc_msgSend_isRows(v10, v38, v39, v40))
        {
          v45 = objc_msgSend_rowOrColumnIndices(v10, v42, v43, v44);
          v46 = v74;
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = sub_22136B09C;
          v74[3] = &unk_278463340;
          v74[4] = v41;
          v74[5] = rowsCopy;
          v74[6] = cells;
          objc_msgSend_enumerateRangesUsingBlock_(v45, v47, v74, v48);
        }

        else
        {
          v45 = objc_msgSend_rowOrColumnIndices(v10, v42, v43, v44);
          v46 = v73;
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = sub_22136B0E4;
          v73[3] = &unk_278463340;
          v73[4] = v41;
          v73[5] = rowsCopy;
          v73[6] = cells;
          objc_msgSend_enumerateRangesUsingBlock_(v45, v49, v73, v50);
        }
      }

      v72[0] = objc_msgSend_mergeOwnerUID(v16, v38, v39, v40);
      v72[1] = v51;
      v53 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v51, v72, v52);
      v57 = v53;
      if (v53)
      {
        v58 = objc_msgSend_cellDependencies(v53, v54, v55, v56);

        if (v58)
        {
          v62 = objc_msgSend_cellDependencies(v57, v59, v60, v61);
          objc_msgSend_formulaCellsInThisOwner_(v62, v63, cells, v64);
        }

        v65 = objc_msgSend_rangeDependencies(v57, v59, v60, v61);

        if (v65)
        {
          v69 = objc_msgSend_rangeDependencies(v57, v66, v67, v68);
          objc_msgSend_allFormulaCells_(v69, v70, cells, v71);
        }
      }
    }
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v79 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForMoveRegion:(id)region outFormulaCells:(void *)cells
{
  regionCopy = region;
  v10 = objc_msgSend_regionMovedInfo(regionCopy, v7, v8, v9);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v214 = 1;
  __p = objc_msgSend_srcTableUID(v10, v11, v12, v13);
  v200 = v14;
  v16 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v14, &__p, v15);
  __p = objc_msgSend_dstTableUID(v10, v17, v18, v19);
  v200 = v20;
  v22 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v20, &__p, v21);
  if (!v16)
  {
    goto LABEL_17;
  }

  v26 = v22;
  if (!v22)
  {
    goto LABEL_17;
  }

  v195 = v10;
  v197 = objc_msgSend_cellDependencies(v16, v23, v24, v25);
  v194 = objc_msgSend_rangeDependencies(v16, v27, v28, v29);
  v33 = objc_msgSend_srcColumnUids(v10, v30, v31, v32);
  v37 = objc_msgSend_indexes(v33, v34, v35, v36);
  v41 = objc_msgSend_srcRowUids(v10, v38, v39, v40);
  v45 = objc_msgSend_indexes(v41, v42, v43, v44);
  v210[0] = MEMORY[0x277D85DD0];
  v210[1] = 3221225472;
  v210[2] = sub_22136BA1C;
  v210[3] = &unk_278463368;
  cellsCopy = cells;
  v46 = v195;
  v211 = v46;
  objc_msgSend_applyBlockToRecordsAtIndexes_rowIndexes_cellRestrictions_doWillModify_block_(v197, v47, v37, v45, 1, 0, v210);

  v209 = 0uLL;
  *&v209 = objc_msgSend_srcCondStyleOwnerUID(v46, v48, v49, v50);
  *(&v209 + 1) = v51;
  v192 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v51, &v209, v52);
  if (v192)
  {
    v56 = objc_msgSend_srcColumnUids(v46, v53, v54, v55);
    v60 = objc_msgSend_indexes(v56, v57, v58, v59);
    v64 = objc_msgSend_srcRowUids(v46, v61, v62, v63);
    v68 = objc_msgSend_indexes(v64, v65, v66, v67);
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = sub_22136BA68;
    v207[3] = &unk_278463388;
    v207[4] = cells;
    v208 = v209;
    objc_msgSend_applyBlockToRecordsAtIndexes_rowIndexes_cellRestrictions_doWillModify_block_(v192, v69, v60, v68, 1, 0, v207);
  }

  v70 = objc_msgSend_srcColumnUids(v46, v53, v54, v55);
  v196 = objc_msgSend_indexes(v70, v71, v72, v73);

  v77 = objc_msgSend_srcRowUids(v46, v74, v75, v76);
  v81 = objc_msgSend_indexes(v77, v78, v79, v80);

  v193 = v81;
  objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v197, v82, v196, v81, cells);
  objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v194, v83, v196, v81, cells);
  if (objc_msgSend_spanningRows(v46, v84, v85, v86))
  {
    v191 = regionCopy;
    v90 = objc_msgSend_spanningRowDependencies(v16, v87, v88, v89);
    v94 = objc_msgSend_srcRowUids(v46, v91, v92, v93);
    v98 = objc_msgSend_indexes(v94, v95, v96, v97);
    v205[0] = MEMORY[0x277D85DD0];
    v205[1] = 3221225472;
    v205[2] = sub_22136BAAC;
    v205[3] = &unk_2784633B0;
    v99 = v90;
    v206[0] = v99;
    v206[1] = cells;
    objc_msgSend_enumerateRangesUsingBlock_(v98, v100, v205, v101);
    v102 = v206;
  }

  else
  {
    if (!objc_msgSend_spanningColumns(v46, v87, v88, v89))
    {
      goto LABEL_10;
    }

    v191 = regionCopy;
    v106 = objc_msgSend_spanningColumnDependencies(v16, v103, v104, v105);
    v94 = objc_msgSend_srcColumnUids(v46, v107, v108, v109);
    v98 = objc_msgSend_indexes(v94, v110, v111, v112);
    v203[0] = MEMORY[0x277D85DD0];
    v203[1] = 3221225472;
    v203[2] = sub_22136BAC4;
    v203[3] = &unk_2784633B0;
    v99 = v106;
    v204[0] = v99;
    v204[1] = cells;
    objc_msgSend_enumerateRangesUsingBlock_(v98, v113, v203, v114);
    v102 = v204;
  }

  regionCopy = v191;
LABEL_10:
  __p = objc_msgSend_formulaOwnerUid(v16, v103, v104, v105);
  v200 = v115;
  objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v115, &__p, cells);
  v119 = objc_msgSend_cellDependencies(v26, v116, v117, v118);
  v123 = objc_msgSend_rangeDependencies(v26, v120, v121, v122);
  v127 = objc_msgSend_dstColumnUids(v46, v124, v125, v126);
  v131 = objc_msgSend_indexes(v127, v128, v129, v130);
  v135 = objc_msgSend_dstRowUids(v46, v132, v133, v134);
  v139 = objc_msgSend_indexes(v135, v136, v137, v138);
  objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v119, v140, v131, v139, cells);

  v144 = objc_msgSend_dstColumnUids(v46, v141, v142, v143);
  v148 = objc_msgSend_indexes(v144, v145, v146, v147);
  v152 = objc_msgSend_dstRowUids(v46, v149, v150, v151);
  v156 = objc_msgSend_indexes(v152, v153, v154, v155);
  objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v123, v157, v148, v156, cells);

  calcEngine = self->_calcEngine;
  v162 = objc_msgSend_srcRegion(v46, v159, v160, v161);
  v163 = v192;
  __p = objc_msgSend_tableUID(v162, v164, v165, v166);
  v200 = v167;
  v169 = objc_msgSend_tableResolverForTableUID_(calcEngine, v167, &__p, v168);

  v10 = v195;
  if (v169 && objc_msgSend_isCategorized(v169, v170, v171, v172))
  {
    v202[0] = objc_msgSend_groupByUUID(v169, v173, v174, v175);
    v202[1] = v176;
    v179 = objc_msgSend_srcRowUids(v46, v176, v177, v178);
    v183 = objc_msgSend_uids(v179, v180, v181, v182);
    v185 = objc_msgSend_dgl_cellRefsReferringToGroupNodes_groupByUID_outCellRefs_(self, v184, v183, v202, cells);

    v10 = v195;
    if (v185)
    {
      __p = 0;
      v200 = 0;
      v201 = 0;
      *&v198 = objc_msgSend_groupByRootUid(TSCECategoryRef, v186, v187, v188);
      *(&v198 + 1) = v189;
      sub_221083454(&__p, &v198);
      objc_msgSend_dgl_cellRefsReferringToGroupNodes_groupByUID_outCellRefs_(self, v190, &__p, v202, cells);
      if (__p)
      {
        v200 = __p;
        operator delete(__p);
      }
    }

    v163 = v192;
  }

LABEL_17:
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v214 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForMergeCells:(id)cells outFormulaCells:(void *)formulaCells
{
  cellsCopy = cells;
  if (objc_msgSend_rewriteType(cellsCopy, v6, v7, v8) != 7 && objc_msgSend_rewriteType(cellsCopy, v9, v10, v11) != 8 && objc_msgSend_rewriteType(cellsCopy, v9, v10, v11) != 17)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEDependencyTracker formulaCellsForMergeCells:outFormulaCells:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2841, 0, "wrong rewrite type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = cellsCopy;
  v22 = objc_msgSend_mergeInfo(cellsCopy, v9, v10, v11);
  v26 = objc_msgSend_mergeRegion(v22, v23, v24, v25);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v146 = 1;
  v131 = v26;
  v137.coordinate = objc_msgSend_affectedOwnerUID(cellsCopy, v27, v28, v29);
  v137._tableUID._lower = v30;
  v32 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v30, &v137, v31);
  v36 = v32;
  if (v32)
  {
    v130 = v22;
    v133 = objc_msgSend_cellDependencies(v32, v33, v34, v35);
    v132 = objc_msgSend_rangeDependencies(v36, v37, v38, v39);
    v135 = objc_msgSend_spanningColumnDependencies(v36, v40, v41, v42);
    v134 = objc_msgSend_spanningRowDependencies(v36, v43, v44, v45);
    v49 = objc_msgSend_columnUids(v26, v46, v47, v48);
    v53 = objc_msgSend_indexes(v49, v50, v51, v52);
    v57 = objc_msgSend_rowUids(v26, v54, v55, v56);
    v61 = objc_msgSend_indexes(v57, v58, v59, v60);
    objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v133, v62, v53, v61, formulaCells);

    v66 = objc_msgSend_columnUids(v26, v63, v64, v65);
    v70 = objc_msgSend_indexes(v66, v67, v68, v69);
    v74 = objc_msgSend_rowUids(v26, v71, v72, v73);
    v78 = objc_msgSend_indexes(v74, v75, v76, v77);
    objc_msgSend_formulaCellsReferencingIndexes_rowIndexes_outFormulaCells_(v132, v79, v70, v78, formulaCells);

    if (v135)
    {
      v83 = objc_msgSend_columnUids(v26, v80, v81, v82);
      v87 = objc_msgSend_indexes(v83, v84, v85, v86);
      v142[0] = MEMORY[0x277D85DD0];
      v142[1] = 3221225472;
      v142[2] = sub_22136C120;
      v142[3] = &unk_2784633B0;
      v143 = v135;
      formulaCellsCopy = formulaCells;
      objc_msgSend_enumerateRangesUsingBlock_(v87, v88, v142, v89);
    }

    if (v134)
    {
      v90 = objc_msgSend_rowUids(v26, v80, v81, v82);
      v94 = objc_msgSend_indexes(v90, v91, v92, v93);
      v139[0] = MEMORY[0x277D85DD0];
      v139[1] = 3221225472;
      v139[2] = sub_22136C138;
      v139[3] = &unk_2784633B0;
      v140 = v134;
      formulaCellsCopy2 = formulaCells;
      objc_msgSend_enumerateRangesUsingBlock_(v94, v95, v139, v96);
    }

    v137.coordinate = objc_msgSend_formulaOwnerUid(v36, v80, v81, v82);
    v137._tableUID._lower = v97;
    objc_msgSend_dgl_formulaCellsAffectedByGeometryChangeToTable_outFormulaCells_(self, v97, &v137, formulaCells);
    v101 = objc_msgSend_mergeSource(v22, v98, v99, v100);
    v105 = *v101;
    if (v101->row != 0x7FFFFFFF && (v105 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v137.coordinate = *v101;
      v137._tableUID._lower = v105;
      objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v133, v102, &v137, cellsCopy, formulaCells);
      v138[0] = objc_msgSend_affectedConditionalStyleOwnerUID(cellsCopy, v106, v107, v108);
      v138[1] = v109;
      v111 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v109, v138, v110);
      v113 = v111;
      if (v111)
      {
        objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v111, v112, &v137, cellsCopy, formulaCells);
      }
    }

    if (objc_msgSend_rewriteType(cellsCopy, v102, v103, v104) != 17 && (TSCECellRefSet::isEmpty(formulaCells) & 1) == 0)
    {
      v117 = objc_msgSend_mergingRange(v26, v114, v115, v116);
      v119 = v118;
      v122 = objc_msgSend_affectedOwnerUID(cellsCopy, v118, v120, v121);
      if (WORD2(v117) <= WORD2(v119))
      {
        v124 = v122;
        v125 = v123;
        v126 = HIDWORD(v117);
        do
        {
          if (v117 <= v119)
          {
            v127 = v126 << 32;
            if ((v105 & 0x1FFFF00000000) == v127)
            {
              v128 = HIBYTE(v105) & 1;
            }

            else
            {
              v128 = 1;
            }

            v129 = v117;
            do
            {
              if ((v105 != v129) | v128 & 1)
              {
                v137.coordinate = (v127 | v129);
                v137._tableUID._lower = v124;
                v137._tableUID._upper = v125;
                TSCECellRefSet::removeCellRef(formulaCells, &v137);
              }

              ++v129;
            }

            while (v129 <= v119);
          }

          LOWORD(v126) = v126 + 1;
        }

        while (v126 <= WORD2(v119));
      }
    }

    v21 = cellsCopy;
    v22 = v130;
    v26 = v131;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v146 = 0;
  sub_2212E22F0(&p_dependencyGraphLock);
}

- (void)formulaCellsForMergeOriginMove:(id)move outFormulaCells:(void *)cells
{
  moveCopy = move;
  if (objc_msgSend_rewriteType(moveCopy, v7, v8, v9) != 9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker formulaCellsForMergeOriginMove:outFormulaCells:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 2915, 0, "wrong rewrite type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_mergeOriginMovedInfo(moveCopy, v10, v11, v12);
  v54[0] = objc_msgSend_affectedOwnerUID(moveCopy, v23, v24, v25);
  v54[1] = v26;
  v53[0] = objc_msgSend_conditionalStyleOwnerUID(moveCopy, v26, v27, v28);
  v53[1] = v29;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v51 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v52 = 1;
  v36 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v31, v54, v32);
  if (v36)
  {
    for (i = *(objc_msgSend_mergeOriginsMap(v22, v33, v34, v35) + 16); i; i = *i)
    {
      v40 = i[3];
      v49 = i[2];
      v50 = v49;
      objc_msgSend_formulaCellsReferencingCellsInRange_outFormulaCells_(v36, v37, &v49, cells, v40, v40);
      objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v36, v41, &v48, moveCopy, cells);
    }

    v45 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v37, v53, v38);
    if (v45)
    {
      for (j = *(objc_msgSend_mergeOriginsMap(v22, v42, v43, v44) + 16); j; j = *j)
      {
        v49 = j[3];
        v50 = v49;
        objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v45, v46, &v49, moveCopy, cells);
      }
    }

    p_dependencyGraphLock = v51;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v52 = 0;

  sub_2212E22F0(&v51);
}

- (void)formulaCellsForTableUIDReassignment:(id)reassignment outFormulaCells:(void *)cells
{
  reassignmentCopy = reassignment;
  if (objc_msgSend_rewriteType(reassignmentCopy, v7, v8, v9) != 10)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker formulaCellsForTableUIDReassignment:outFormulaCells:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2953, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v23) = 1;
  objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v21, reassignmentCopy, cells, &self->_dependencyGraphLock, v23);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v23) = 0;
  sub_2212E22F0(&v22);
}

- (void)formulaCellsForGroupNodeChanges:(id)changes outFormulaCells:(void *)cells
{
  changesCopy = changes;
  if (objc_msgSend_rewriteType(changesCopy, v7, v8, v9) != 16)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker formulaCellsForGroupNodeChanges:outFormulaCells:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 2967, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_groupByChange(changesCopy, v10, v11, v12);
  v26 = v22;
  if (v22)
  {
    v28[0] = objc_msgSend_groupByUid(v22, v23, v24, v25);
    v28[1] = v27;
    objc_msgSend_cellRefsReferringToGroupBy_outCellRefs_(self, v27, v28, cells);
  }
}

- (void)formulaCellsForPivotRuleChange:(id)change outFormulaCells:(void *)cells
{
  changeCopy = change;
  if (objc_msgSend_rewriteType(changeCopy, v7, v8, v9) != 18)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker formulaCellsForPivotRuleChange:outFormulaCells:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2978, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v23) = 1;
  objc_msgSend_dgl_formulaCellsReferencingUuidsInSpec_outFormulaCells_(self, v21, changeCopy, cells, &self->_dependencyGraphLock, v23);
  os_unfair_lock_unlock(&self->_dependencyGraphLock);
  LOBYTE(v23) = 0;
  sub_2212E22F0(&v22);
}

- (void)formulaCellsForGroupNodeUIDReassignment:(id)reassignment outFormulaCells:(void *)cells
{
  reassignmentCopy = reassignment;
  if (objc_msgSend_rewriteType(reassignmentCopy, v7, v8, v9) != 13)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCEDependencyTracker formulaCellsForGroupNodeUIDReassignment:outFormulaCells:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 2991, 0, "wrong rewrite type received");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_groupNodeUIDInfo(reassignmentCopy, v10, v11, v12);
  v26 = v22;
  if (v22)
  {
    objc_msgSend_originalGroupNodeUIDs(v22, v23, v24, v25);
    v30 = objc_msgSend_groupByUid(v26, v27, v28, v29);
    objc_msgSend_cellRefsReferringToGroupNodes_groupByUID_outCellRefs_(self, v31, __p, v30, cells);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

- (void)dgl_formulaCellRefsReferringToOwnerUIDs:(const void *)ds outFormulaCells:(void *)cells
{
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = objc_msgSend_uuidReferences(i[3], a2, ds, cells);
    objc_msgSend_getCellRefs_referringToOwners_(v7, v8, cells, ds);
  }
}

- (BOOL)dgl_cellRefsReferringToGroupNodes:(const void *)nodes groupByUID:(const TSKUIDStruct *)d outCellRefs:(void *)refs
{
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v9 = 0;
    do
    {
      v10 = next[3];
      v11 = objc_msgSend_ownerIndex(v10, a2, nodes, d);
      if (v11 != 8 && (v11 - 1306) <= 0xFFFFFBB2)
      {
        v12 = objc_msgSend_uuidReferences(v10, a2, nodes, d);
        v9 |= objc_msgSend_getCellRefs_referringToOwnerUID_referringToUuids_(v12, v13, refs, d, nodes);
      }

      next = *next;
    }

    while (next);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (BOOL)cellRefsReferringToGroupNodes:(const void *)nodes groupByUID:(const TSKUIDStruct *)d outCellRefs:(void *)refs
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v12 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v13) = 1;
  LOBYTE(refs) = objc_msgSend_dgl_cellRefsReferringToGroupNodes_groupByUID_outCellRefs_(self, v10, nodes, d, refs, v12, v13);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v13) = 0;
  sub_2212E22F0(&v12);
  return refs;
}

- (void)cellRefsReferringToGroupBy:(const TSKUIDStruct *)by outCellRefs:(void *)refs
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v16 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v17) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v12 = next[3];
      v13 = objc_msgSend_ownerIndex(v12, v8, v9, v10, v16, v17);
      if (v13 != 8 && (v13 - 1306) <= 0xFBB2u)
      {
        v14 = objc_msgSend_uuidReferences(v12, v8, v9, v10);
        objc_msgSend_getAllCellRefs_referringToOwnerUID_(v14, v15, refs, by);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v16;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v17) = 0;
  sub_2212E22F0(&v16);
}

- (void)dgl_formulaCellsReferencingUuidsInSpec:(id)spec outFormulaCells:(void *)cells
{
  specCopy = spec;
  v10 = objc_msgSend_rewriteType(specCopy, v7, v8, v9);
  if (v10 < 2)
  {
    __p = 0;
    v78 = 0;
    v79 = 0;
    *&v75 = objc_msgSend_tableUID(specCopy, v11, v12, v13);
    *(&v75 + 1) = v16;
    sub_221083454(&__p, &v75);
    v20 = objc_msgSend_fromTableUID(specCopy, v17, v18, v19);
    if (v20 | v21)
    {
      *&v75 = objc_msgSend_fromTableUID(specCopy, v21, v22, v23);
      *(&v75 + 1) = v24;
      sub_221083454(&__p, &v75);
      v28 = objc_msgSend_tableUIDHistory(self->_calcEngine, v25, v26, v27);
      v32 = v28;
      if (v28)
      {
        v33 = objc_msgSend_tableUIDMap(v28, v29, v30, v31);
        *&v75 = objc_msgSend_fromTableUID(specCopy, v34, v35, v36);
        *(&v75 + 1) = v37;
        v38 = sub_221119F90(v33, &v75);
        if (v38)
        {
          sub_221083454(&__p, v38 + 2);
        }
      }
    }

    v39 = objc_msgSend_conditionalStyleOwnerUID(specCopy, v21, v22, v23);
    if (v39 | v40)
    {
      *&v75 = objc_msgSend_conditionalStyleOwnerUID(specCopy, v40, v41, v42);
      *(&v75 + 1) = v43;
      sub_221083454(&__p, &v75);
    }

    v44 = objc_msgSend_groupByUID(specCopy, v40, v41, v42);
    if (v44 | v45)
    {
      *&v75 = objc_msgSend_groupByUID(specCopy, v45, v46, v47);
      *(&v75 + 1) = v48;
      sub_221083454(&__p, &v75);
    }

    objc_msgSend_dgl_formulaCellRefsReferringToOwnerUIDs_outFormulaCells_(self, v45, &__p, cells);
  }

  else if (v10 == 10)
  {
    v49 = objc_msgSend_tableUIDInfo(specCopy, v11, v12, v13);
    v53 = v49;
    if (v49)
    {
      objc_msgSend_originalTableUIDs(v49, v50, v51, v52);
    }

    else
    {
      __p = 0;
      v78 = 0;
      v79 = 0;
    }

    v63 = objc_msgSend_tableUIDHistory(self->_calcEngine, v60, v61, v62);
    v67 = v63;
    if (v63)
    {
      v68 = objc_msgSend_tableUIDMap(v63, v64, v65, v66);
      v75 = 0uLL;
      v76 = 0;
      v69 = __p;
      v70 = v78;
      if (__p != v78)
      {
        v71 = v68;
        do
        {
          v72 = sub_221119F90(v71, v69);
          if (v72)
          {
            sub_221083454(&v75, v72 + 2);
          }

          v69 += 2;
        }

        while (v69 != v70);
        v74 = *(&v75 + 1);
        v73 = v75;
        if (v75 != *(&v75 + 1))
        {
          do
          {
            sub_221083454(&__p, v73++);
          }

          while (v73 != v74);
          v73 = v75;
        }

        if (v73)
        {
          *(&v75 + 1) = v73;
          operator delete(v73);
        }
      }
    }

    objc_msgSend_dgl_formulaCellRefsReferringToOwnerUIDs_outFormulaCells_(self, v64, &__p, cells, v75);
  }

  else if (v10 == 18)
  {
    __p = 0;
    v78 = 0;
    v79 = 0;
    *&v75 = objc_msgSend_tableUID(specCopy, v11, v12, v13);
    *(&v75 + 1) = v14;
    sub_221083454(&__p, &v75);
    objc_msgSend_dgl_formulaCellRefsReferringToOwnerUIDs_outFormulaCells_(self, v15, &__p, cells);
  }

  else
  {
    if (specCopy)
    {
      objc_msgSend_expandedRowColumnUuids(specCopy, v11, v12, v13);
    }

    else
    {
      __p = 0;
      v78 = 0;
      v79 = 0;
    }

    for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
    {
      v55 = objc_msgSend_uuidReferences(i[3], v11, v12, v13);
      *&v75 = objc_msgSend_tableUID(specCopy, v56, v57, v58);
      *(&v75 + 1) = v59;
      objc_msgSend_getCellRefs_referringToOwnerUID_referringToUuids_(v55, v59, cells, &v75, &__p);
    }
  }

  if (__p)
  {
    v78 = __p;
    operator delete(__p);
  }
}

- (TSCECellRefSet)formulaCellsAffectedByRewrite:(SEL)rewrite postMove:(id)move
{
  v5 = a5;
  moveCopy = move;
  retstr->_coordsForOwnerUid.__tree_.__size_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__begin_node_ = &retstr->_coordsForOwnerUid.__tree_.__end_node_;
  v27 = moveCopy;
  v12 = objc_msgSend_rewriteType(moveCopy, v9, v10, v11);
  if (objc_msgSend_rewriteTypeUsesAmendRewriteSpec_(TSCEDependencyTracker, v13, v12, v14) <= v5)
  {
    switch(v12)
    {
      case 0:
        objc_msgSend_formulaCellsForInsertedOwner_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 1:
        objc_msgSend_formulaCellsForDeletedOwner_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 2:
        objc_msgSend_formulaCellsForRemoveRows_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 3:
        objc_msgSend_formulaCellsForInsertRows_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 4:
      case 12:
        objc_msgSend_formulaCellsForMoveRows_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 5:
        objc_msgSend_formulaCellsForSortRows_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 6:
        objc_msgSend_formulaCellsForMoveRegion_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 7:
      case 8:
      case 17:
        objc_msgSend_formulaCellsForMergeCells_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 9:
        objc_msgSend_formulaCellsForMergeOriginMove_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 10:
        objc_msgSend_formulaCellsForTableUIDReassignment_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 11:
        objc_msgSend_formulaCellsForTableTranspose_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 13:
        objc_msgSend_formulaCellsForGroupNodeUIDReassignment_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 14:
      case 15:
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEDependencyTracker formulaCellsAffectedByRewrite:postMove:]", v16);
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v21);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 3199, 0, "Not implemented yet for this type");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
        break;
      case 16:
        objc_msgSend_formulaCellsForGroupNodeChanges_outFormulaCells_(self, v15, v27, retstr);
        break;
      case 18:
        objc_msgSend_formulaCellsForPivotRuleChange_outFormulaCells_(self, v15, v27, retstr);
        break;
      default:
        JUMPOUT(0);
    }
  }

  return result;
}

- (id)dgl_cellDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  if (*d == 0)
  {
    v9 = 0;
  }

  else
  {
    v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3);
    v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v7, v6, v8);
  }

  return v9;
}

- (id)dgl_cellDependenciesForOwnerID:(unsigned __int16)d
{
  v4 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3);
  if (v4)
  {
    v4 = objc_msgSend_cellDependencies(v4, v5, v6, v7);
  }

  return v4;
}

- (id)dgl_rangeDependenciesForOwnerID:(unsigned __int16)d
{
  v4 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3);
  if (v4)
  {
    v4 = objc_msgSend_rangeDependencies(v4, v5, v6, v7);
  }

  return v4;
}

- (id)dgl_rangeDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3);

  return objc_msgSend_dgl_rangeDependenciesForOwnerID_(self, v5, v6, v7);
}

- (id)rangeDependenciesForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v10 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  v8 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(self, v6, dCopy, v7, v10, v11);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);

  return v8;
}

- (id)dgl_spanningRowDependenciesForOwnerID:(unsigned __int16)d
{
  v4 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3);
  if (v4)
  {
    v4 = objc_msgSend_spanningRowDependencies(v4, v5, v6, v7);
  }

  return v4;
}

- (id)dgl_spanningRowDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3);

  return objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(self, v5, v6, v7);
}

- (id)spanningRowDependenciesForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v10 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  v8 = objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(self, v6, dCopy, v7, v10, v11);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);

  return v8;
}

- (id)dgl_spanningColumnDependenciesForOwnerID:(unsigned __int16)d
{
  v4 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3);
  if (v4)
  {
    v4 = objc_msgSend_spanningColumnDependencies(v4, v5, v6, v7);
  }

  return v4;
}

- (id)dgl_spanningColumnDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3);

  return objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(self, v5, v6, v7);
}

- (id)spanningColumnDependenciesForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v10 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  v8 = objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(self, v6, dCopy, v7, v10, v11);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);

  return v8;
}

- (id)dgl_wholeOwnerDependenciesForOwnerID:(unsigned __int16)d
{
  v4 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3);
  if (v4)
  {
    v4 = objc_msgSend_wholeOwnerDependencies(v4, v5, v6, v7);
  }

  return v4;
}

- (id)dgl_wholeOwnerDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3);

  return objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(self, v5, v6, v7);
}

- (id)dgl_errorsForOwnerID:(unsigned __int16)d
{
  v4 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, d, v3);
  if (v4)
  {
    v4 = objc_msgSend_errors(v4, v5, v6, v7);
  }

  return v4;
}

- (id)dgl_errorsForOwnerUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3);

  return objc_msgSend_dgl_errorsForOwnerID_(self, v5, v6, v7);
}

- (unsigned)internalFormulaOwnerIDForFormulaOwnerUID:(const TSKUIDStruct *)d createIfMissing:(BOOL)missing
{
  if (*d == 0)
  {
    return -1;
  }

  p_formulaOwnerIDMap = &self->_formulaOwnerIDMap;
  if (missing)
  {
    return sub_2212601C0(p_formulaOwnerIDMap, &d->_lower);
  }

  else
  {
    return sub_22125FA08(p_formulaOwnerIDMap, d->_lower, d->_upper);
  }
}

- (TSKUIDStruct)formulaOwnerUIDForInternalFormulaOwnerID:(unsigned __int16)d
{
  if (d == 0xFFFF)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = sub_22125FFE0(&self->_formulaOwnerIDMap, d);
  }

  result._upper = v4;
  result._lower = v3;
  return result;
}

- (TSCECellRecord)dgl_findCellRecord:(const TSCECellRef *)record willModifyOnTile:(BOOL)tile
{
  tileCopy = tile;
  tableUID = record->_tableUID;
  v6 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, a2, &tableUID, tile);
  v8 = v6;
  if (v6)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v6, v7, record, tileCopy);
  }

  else
  {
    CellRecord_willModifyOnTile = 0;
  }

  return CellRecord_willModifyOnTile;
}

- (TSCECellRecord)dgl_findCellRecordInternal:(const TSCEInternalCellReference *)internal willModifyOnTile:(BOOL)tile
{
  tileCopy = tile;
  v6 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, internal->tableID, tile);
  v8 = v6;
  if (v6)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v6, v7, internal, tileCopy);
  }

  else
  {
    CellRecord_willModifyOnTile = 0;
  }

  return CellRecord_willModifyOnTile;
}

- (void)dgl_clearCycleFlagsOnCellAndDependents:(TSCEInternalCellReference)dependents startCellRecord:(TSCECellRecord *)record
{
  dependentsCopy = dependents;
  v34 = 0;
  v35 = &v34;
  v36 = 0x5812000000;
  v37 = sub_22136DB60;
  v38 = sub_22136DB6C;
  v39 = &unk_22188E88F;
  memset(v40, 0, sizeof(v40));
  v41 = 1065353216;
  v26 = 0;
  v27 = &v26;
  v28 = 0x5812000000;
  v29 = sub_22136DB74;
  v30 = sub_22136DB80;
  v31 = &unk_22188E88F;
  memset(v32, 0, sizeof(v32));
  v33 = 1065353216;
  v24 = 0x7FFF7FFFFFFFLL;
  v25 = 0xFFFF;
  v4 = objc_opt_new();
  v23[0] = &v24;
  v5 = sub_2213773B0(v27 + 6, &v24, &unk_2217E1838, v23);
  v6 = v5[4];
  v5[4] = v4;

  v23[0] = &v24;
  v7 = sub_2213773B0(v27 + 6, &v24, &unk_2217E1838, v23);
  objc_msgSend_addCellRef_(v7[4], v8, &dependentsCopy, v9);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2050000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2050000000;
  v22[3] = 0;
  v10 = v27;
  if (v27[9])
  {
    v11 = 1;
    do
    {
      v43 = &v24;
      v12 = sub_2213773B0(v10 + 6, &v24, &unk_2217E1838, &v43)[4];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22136DB88;
      v19[3] = &unk_2784633D8;
      v19[5] = v23;
      v19[6] = v22;
      v19[4] = self;
      v21 = v11 & 1;
      v19[10] = v24;
      v20 = v25;
      v19[7] = &v26;
      v19[8] = &v34;
      v19[9] = record;
      objc_msgSend_enumerateCellRefsUsingBlock_(v12, v13, v19, v14);
      sub_221377650(v27 + 6, &v24);
      v15 = v27[8];
      if (v15)
      {
        v24 = *(v15 + 16);
        v25 = *(v15 + 24);
      }

      v11 = 0;
      v10 = v27;
    }

    while (v27[9]);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22136DE2C;
  v18[3] = &unk_27845F540;
  v18[4] = self;
  sub_2212DFEC0((v35 + 6), v18);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v26, 8);
  sub_221087AA4(v32);
  _Block_object_dispose(&v34, 8);
  sub_221122744(v40);
}

- (void)dgl_markCellsDirtyTraversingDependents:(TSCEInternalCellReference)dependents startCellRecord:(TSCECellRecord *)record
{
  dependentsCopy = dependents;
  v25 = 0;
  v26 = &v25;
  v27 = 0x5812000000;
  v28 = sub_22136DB74;
  v29 = sub_22136DB80;
  v30 = &unk_22188E88F;
  memset(v31, 0, sizeof(v31));
  v32 = 1065353216;
  v23 = 0x7FFF7FFFFFFFLL;
  v24 = 0xFFFF;
  v22[0] = &v23;
  if (!sub_2213773B0(v31, &v23, &unk_2217E1838, v22)[4])
  {
    v5 = objc_opt_new();
    v22[0] = &v23;
    v6 = sub_2213773B0(v26 + 6, &v23, &unk_2217E1838, v22);
    v7 = v6[4];
    v6[4] = v5;
  }

  v22[0] = &v23;
  v8 = sub_2213773B0(v26 + 6, &v23, &unk_2217E1838, v22);
  objc_msgSend_addCellRef_(v8[4], v9, &dependentsCopy, v10);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2050000000;
  v22[3] = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2050000000;
  v21[3] = 0;
  v11 = v26;
  if (v26[9])
  {
    v12 = 1;
    do
    {
      v34 = &v23;
      v13 = sub_2213773B0(v11 + 6, &v23, &unk_2217E1838, &v34)[4];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_22136E14C;
      v18[3] = &unk_278463400;
      v18[4] = self;
      v18[5] = v22;
      v20 = v12 & 1;
      v18[7] = &v25;
      v18[8] = record;
      v18[9] = v23;
      v19 = v24;
      v18[6] = v21;
      objc_msgSend_enumerateCellRefsUsingBlock_(v13, v14, v18, v15);
      sub_221377650(v26 + 6, &v23);
      v16 = v26[8];
      if (v16)
      {
        v23 = *(v16 + 16);
        v24 = *(v16 + 24);
      }

      v12 = 0;
      v11 = v26;
    }

    while (v26[9]);
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v25, 8);
  sub_221087AA4(v31);
}

- (void)noteCorruptCellRef:(const TSCEInternalCellReference *)ref
{
  if (ref->tableID != -1 && (*&ref->coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    os_unfair_lock_lock(&self->_corruptedCellRefsMutex);
    sub_2212E0198(&self->_corruptedCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, ref);
    sub_2212DFCE8(&self->_corruptedCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &ref->coordinate);

    os_unfair_lock_unlock(&self->_corruptedCellRefsMutex);
  }
}

- (TSCEInternalCellRefSet)corruptCellRefs
{
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  os_unfair_lock_lock(&self->_corruptedCellRefsMutex);
  sub_2212DFCA0(retstr, &self->_corruptedCellRefs);

  os_unfair_lock_unlock(&self->_corruptedCellRefsMutex);
  return result;
}

- (void)resetCorruptCellRefs:(const void *)refs
{
  if (!sub_2212E0280(refs))
  {
    os_unfair_lock_lock(&self->_corruptedCellRefsMutex);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22136E5D8;
    v5[3] = &unk_27845F540;
    v5[4] = self;
    sub_2212DFEC0(refs, v5);
    os_unfair_lock_unlock(&self->_corruptedCellRefsMutex);
  }
}

- (void)pushReferenceForImmediateEvaluation:(const TSCEInternalCellReference *)evaluation cellRecord:(TSCECellRecord *)record pushOnFront:(BOOL)front
{
  if (record && (record->var6 & 0x100) == 0 && objc_msgSend_addLeaf_withOptions_(self->_leafQueue, a2, evaluation, front) && (objc_msgSend_recalculationIsPaused(self->_calcEngine, v6, v7, v8) & 1) == 0)
  {
    objc_initWeak(&location, self->_calcEngine);
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22136E6C8;
    v10[3] = &unk_278463428;
    objc_copyWeak(&v11, &location);
    dispatch_async(v9, v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)dgl_pushReferenceForImmediateEvaluation:(const TSCEInternalCellReference *)evaluation pushOnFront:(BOOL)front
{
  frontCopy = front;
  CellRecordInternal_willModifyOnTile = objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(self, a2, evaluation, 0);
  if (CellRecordInternal_willModifyOnTile && *(CellRecordInternal_willModifyOnTile + 16) <= 1uLL)
  {

    objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(self, v8, evaluation, CellRecordInternal_willModifyOnTile, frontCopy);
  }
}

- (void)pushCellsForImmediateEvaluation:(const void *)evaluation pushOnFront:(BOOL)front
{
  frontCopy = front;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v11 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v12) = 1;
  v9 = *evaluation;
  v10 = *(evaluation + 1);
  if (v9 != v10)
  {
    do
    {
      objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v8, v9, frontCopy, v11, v12);
      v9 += 32;
    }

    while (v9 != v10);
    p_dependencyGraphLock = v11;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v12) = 0;
  sub_2212E22F0(&v11);
}

- (void)dgl_markCellDirty:(const TSCEInternalCellReference *)dirty
{
  objc_msgSend_dgl_markDependentsDirty_(self, a2, dirty, v3);

  objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v6, dirty, 0);
}

- (void)dgl_markDependentsDirty:(const TSCEInternalCellReference *)dirty
{
  if (objc_msgSend_dgl_intCellIsClean_(self, a2, dirty, v3))
  {
    coordinate = dirty->coordinate;
    v8 = *&dirty->tableID;
    CellRecordInternal_willModifyOnTile = objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(self, v6, dirty, 1);

    objc_msgSend_dgl_markCellsDirtyTraversingDependents_startCellRecord_(self, v9, coordinate, v8, CellRecordInternal_willModifyOnTile);
  }
}

- (void)markOnlyDependentsDirty:(TSCEInternalCellReference)dirty
{
  dirtyCopy = dirty;
  objc_msgSend_flushInProgressDirtying(self, a2, *&dirty.coordinate, *&dirty.tableID);
  v14 = 0;
  lock = &self->_dependencyGraphLock;
  coordinate = dirtyCopy.coordinate;
  LODWORD(v12) = *&dirtyCopy.tableID;
  v13 = 0;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v16 = 1;
  objc_msgSend_dgl_loadCacheForCell_(self, v4, &coordinate, v5);
  if (objc_msgSend_dgl_cellIsClean_(self, v6, &coordinate, v7))
  {
    objc_msgSend_dgl_markDependentsDirty_(self, v8, &dirtyCopy, v9, coordinate, v12, v13, v14, lock);
    objc_msgSend_dgl_updateGraphWithCleanReference_skipCycleCheck_(self, v10, &coordinate, 0);
  }

  os_unfair_lock_unlock(lock);
  v16 = 0;
  sub_2212E22F0(&lock);
}

- (void)wroteSpillingCells:(const void *)cells forTable:(const TSKUIDStruct *)table
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, table, table);
  if (v6 != 0xFFFF)
  {
    v10 = v6;
    objc_msgSend_flushInProgressDirtying(self, v7, v8, v9);
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v14 = 1;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22136EAB0;
    v11[3] = &unk_278462C88;
    v12 = v10;
    v11[4] = self;
    TSCECellCoordSet::enumerateCoordsUsingBlock(cells, v11);
    os_unfair_lock_unlock(&self->_dependencyGraphLock);
    v14 = 0;
    sub_2212E22F0(&p_dependencyGraphLock);
  }
}

- (void)incrementalMarkCellRefDirty:(id)dirty
{
  dirtyCopy = dirty;
  v8 = objc_msgSend_startCellRef(dirtyCopy, v5, v6, v7) & 0x101FFFFFFFFFFFFLL;
  if (v9 != -1 && v8 != 0x7FFF7FFFFFFFLL)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v68 = 1;
    if (objc_msgSend_isDoneDirtying(dirtyCopy, v11, v12, v13))
    {
      started = objc_msgSend_startCellRef(dirtyCopy, v14, v15, v16);
      LODWORD(p_started) = v17;
      if (objc_msgSend_dgl_intCellIsClean_(self, v17, &started, v18))
      {
        objc_msgSend_startDirtyingCellRef(dirtyCopy, v19, v20, v21);
      }

      else
      {
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v19, &started, 0);
        objc_msgSend_stopDirtyingCellRef(dirtyCopy, v22, v23, v24);
      }
    }

    if ((objc_msgSend_isDoneDirtying(dirtyCopy, v14, v15, v16) & 1) == 0)
    {
      v31 = objc_msgSend_dependentsToDirtyByFromRef(dirtyCopy, v25, v26, v27);
      v65 = 0x7FFF7FFFFFFFLL;
      v66 = 0xFFFF;
      v32 = v31[2];
      v33 = (!v32 || (v65 = *(v32 + 16), v66 = *(v32 + 24), (v65 & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)) && v66 == -1;
      v34 = objc_msgSend_startTime(dirtyCopy, v28, v29, v30);
      objc_msgSend_timeout(dirtyCopy, v35, v36, v37);
      v42 = v41;
      started = 0;
      p_started = &started;
      v63 = 0x2050000000;
      v64 = 0;
      v60[0] = 0;
      v60[1] = v60;
      v60[2] = 0x2050000000;
      v60[3] = 0;
      if (v31[3])
      {
        while (1)
        {
          v55 = &v65;
          v43 = sub_2213773B0(v31, &v65, &unk_2217E1838, &v55)[4];
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = sub_22136EE90;
          v57[3] = &unk_278463450;
          v57[4] = self;
          v57[5] = &started;
          v59 = v33;
          v57[8] = v65;
          v58 = v66;
          v57[6] = v60;
          v57[7] = v31;
          objc_msgSend_enumerateCellRefsUsingBlock_(v43, v44, v57, v45);
          sub_221377650(v31, &v65);
          v49 = v31[2];
          if (v49)
          {
            v65 = *(v49 + 16);
            v66 = *(v49 + 24);
          }

          if (v34)
          {
            objc_msgSend_timeIntervalSinceNow(v34, v46, v47, v48);
            if (v42 < -v50)
            {
              break;
            }
          }

          v33 = 0;
          if (!v31[3])
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        v55 = objc_msgSend_startCellRef(dirtyCopy, v38, v39, v40);
        v56 = v51;
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v51, &v55, 0);
        objc_msgSend_stopDirtyingCellRef(dirtyCopy, v52, v53, v54);
      }

      _Block_object_dispose(v60, 8);
      _Block_object_dispose(&started, 8);
    }

    os_unfair_lock_unlock(p_dependencyGraphLock);
    v68 = 0;
    sub_2212E22F0(&p_dependencyGraphLock);
  }
}

- (void)scheduleMarkCellRefAsDirty:(const TSCECellRef *)dirty
{
  v6 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, dirty, v3);

  objc_msgSend_scheduleMarkIntCellRefAsDirty_(self, v5, v6, v5);
}

- (void)scheduleMarkIntCellRefAsDirty:(TSCEInternalCellReference)dirty
{
  coordinate = dirty.coordinate;
  LODWORD(v8) = *&dirty.tableID;
  calcEngine = self->_calcEngine;
  if (calcEngine)
  {
    v4 = objc_msgSend_referencesToDirty(calcEngine, a2, *&dirty.coordinate, *&dirty.tableID, coordinate, v8);
    objc_msgSend_dirtyInternalCellRef_(v4, v5, &coordinate, v6);
  }
}

- (void)flushInProgressDirtying
{
  calcEngine = self->_calcEngine;
  if (calcEngine)
  {
    v8 = objc_msgSend_referencesToDirty(calcEngine, a2, v2, v3);
    objc_msgSend_flushCellDirtier(v8, v5, v6, v7);
  }
}

- (void)markIntRangeRefAsDirty:(const TSCEInternalRangeReference *)dirty
{
  var1 = dirty->var1;
  var0 = dirty->var0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v40 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v41 = 1;
  v8 = *&var0._topLeft & 0xFFFF00000000;
  v9 = *&var0._bottomRight & 0xFFFF00000000;
  if (var0._topLeft.row != 0x7FFFFFFFLL || v8 == 0x7FFF00000000 || v9 == 0x7FFF00000000)
  {
    if (var0._topLeft.row != 0x7FFFFFFFLL && v8 == 0x7FFF00000000 && v9 == 0x7FFF00000000 && var0._bottomRight.row != 0x7FFFFFFFLL)
    {
      var0._topLeft.column = 0;
      var0._bottomRight.column = 999;
    }
  }

  else if (var0._bottomRight.row == 0x7FFFFFFF)
  {
    var0._topLeft.row = 0;
    var0._bottomRight.row = 999999;
  }

  if (var0._topLeft.row != 0x7FFFFFFF && (*&var0._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && var0._bottomRight.row != 0x7FFFFFFF && (*&var0._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && var0._topLeft.column <= var0._bottomRight.column && var0._topLeft.row <= var0._bottomRight.row)
  {
    v15 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v6, var1, v7);
    v19 = objc_msgSend_cellDependencies(v15, v16, v17, v18);
    v23 = v19;
    if (v19)
    {
      objc_msgSend_cellsWithRecordsInRange_formulaCellsOnly_(v19, v20, &var0, 0);
      v24 = v37;
      if (v37 != v38)
      {
        v25 = v37;
        do
        {
          objc_msgSend_scheduleMarkIntCellRefAsDirty_(self, v20, *v25++ & 0xFFFFFFFFFFFFLL, var1);
        }

        while (v25 != v38);
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = objc_msgSend_rangeDependencies(v15, v20, v21, v22);
    v30 = v26;
    if (v26)
    {
      objc_msgSend_dirtyAllFormulasReferencingRange_(v26, v27, *&var0._topLeft, *&var0._bottomRight);
    }

    v31 = objc_msgSend_spanningRowDependencies(v15, v27, v28, v29);
    v36 = objc_msgSend_spanningColumnDependencies(v15, v32, v33, v34);
    if (v31)
    {
      objc_msgSend_dirtyAllFormulasReferencingRange_(v31, v35, *&var0._topLeft, *&var0._bottomRight);
    }

    if (v36)
    {
      objc_msgSend_dirtyAllFormulasReferencingRange_(v36, v35, *&var0._topLeft, *&var0._bottomRight);
    }

    if (v24)
    {
      operator delete(v24);
    }

    p_dependencyGraphLock = v40;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v41 = 0;
  sub_2212E22F0(&v40);
}

- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  objc_msgSend_internalRangeReferenceForRangeRef_(self, a2, dirty, v3);
  objc_msgSend_markIntRangeRefAsDirty_(self, v5, v7, v6);
}

- (void)willModify
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v16 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v17 = 1;
  sub_22136F718(&__p, self->_formulaOwnerDependencies.__table_.__size_);
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v5 = v19;
    do
    {
      if (v5 >= v20)
      {
        v6 = (v5 - __p) >> 3;
        if ((v6 + 1) >> 61)
        {
          sub_22107C148();
        }

        v7 = (v20 - __p) >> 2;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (v20 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v8 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        if (v8)
        {
          sub_22107C1F0(&__p, v8);
        }

        *(8 * v6) = next[3];
        v5 = (8 * v6 + 8);
        v9 = (8 * v6 - (v19 - __p));
        memcpy(v9, __p, v19 - __p);
        v10 = __p;
        __p = v9;
        v19 = v5;
        v20 = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      else
      {
        *v5 = next[3];
        v5 += 8;
      }

      v19 = v5;
      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v16;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v17 = 0;
  v14 = __p;
  v15 = v19;
  while (v14 != v15)
  {
    objc_msgSend_willModify(*v14++, v11, v12, v13);
  }

  objc_msgSend_superWillModify(self->_calcEngine, v11, v12, v13);
  sub_2212E22F0(&v16);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

- (void)beginSuppressingWillModifyCalls
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v4 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  ++self->_suppressWillModifyCallsLevel;
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v5 = 0;
  sub_2212E22F0(&v4);
}

- (void)endSuppressingWillModifyCalls
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v16) = 1;
  suppressWillModifyCallsLevel = self->_suppressWillModifyCallsLevel;
  if (suppressWillModifyCallsLevel || (v6 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCEDependencyTracker endSuppressingWillModifyCalls]", v4, lock, v16), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 4040, 0, "not suppressing willModify calls, so cannot end suppressing them"), v10, v7, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14), (suppressWillModifyCallsLevel = self->_suppressWillModifyCallsLevel) != 0))
  {
    self->_suppressWillModifyCallsLevel = suppressWillModifyCallsLevel - 1;
  }

  os_unfair_lock_unlock(lock);
  LOBYTE(v16) = 0;
  sub_2212E22F0(&lock);
}

- (void)dgl_markCellRefAsDirty:(const TSCEInternalCellReference *)dirty cellDependencies:(id)dependencies cellRecord:(TSCECellRecord *)record
{
  dependenciesCopy = dependencies;
  if (dependenciesCopy && (!record || !record->var2))
  {
    objc_msgSend_dgl_markCellsDirtyTraversingDependents_startCellRecord_(self, v8, *&dirty->coordinate, *&dirty->tableID, record);
    if (record && (record->var6 & 4) != 0)
    {
      if (record->var2 <= 1)
      {
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v9, dirty, 0);
      }
    }

    else
    {
      objc_msgSend_dgl_updateGraphWithCleanReference_cellRecord_(self, v9, dirty, record);
    }
  }
}

- (void)dgl_markCellRefAsDirty:(const TSCEInternalCellReference *)dirty
{
  v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, dirty->tableID, v3);
  if (v9)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v9, v6, dirty, 1);
    objc_msgSend_dgl_markCellRefAsDirty_cellDependencies_cellRecord_(self, v8, dirty, v9, CellRecord_willModifyOnTile);
  }
}

- (BOOL)hasDateTimeVolatileFunctions
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v23 = 1;
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = i[3];
    if (objc_msgSend_ownerIndex(v7, v3, v4, v5) == 35)
    {
      v8 = objc_msgSend_cellDependencies(v7, v3, v4, v5);
      v11 = v8;
      if (v8)
      {
        v12 = *(i + 8);
        v20 = 0x100000000;
        v21 = v12;
        if (objc_msgSend_hasDependentsOfCell_(v8, v9, &v20, v10) & 1) != 0 || (v15 = *(i + 8), v18 = 0x200000000, v19 = v15, (objc_msgSend_hasDependentsOfCell_(v11, v13, &v18, v14)))
        {

          v16 = 1;
          goto LABEL_10;
        }
      }
    }
  }

  v16 = 0;
LABEL_10:
  os_unfair_lock_unlock(lock);
  v23 = 0;
  sub_2212E22F0(&lock);
  return v16;
}

- (BOOL)hasRemoteDataFunctions
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v15) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v7 = objc_msgSend_volatileDependencies(next[3], v3, v4, v5, lock, v15);
      v11 = v7;
      if (v7)
      {
        if (objc_msgSend_hasRemoteDataCells(v7, v8, v9, v10))
        {
          break;
        }
      }

      next = *next;
      if (!next)
      {
        goto LABEL_5;
      }
    }

    v12 = 1;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  os_unfair_lock_unlock(lock);
  LOBYTE(v15) = 0;
  sub_2212E22F0(&lock);
  return v12;
}

- (void)dgl_dirtyTimeVolatileFunctions
{
  v5 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v10 = v5;
    do
    {
      if (objc_msgSend_ownerIndex(next[3], v6, v7, v8) == 35)
      {
        v11 = *(next + 8);
        v12 = 0x100000000;
        v13 = v11;
        objc_msgSend_dirtyInternalCellRef_(v10, v6, &v12, v8);
      }

      next = *next;
    }

    while (next);
  }
}

- (void)dirtyTimeVolatileFunctions
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v7 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v8) = 1;
  objc_msgSend_dgl_dirtyTimeVolatileFunctions(self, v4, v5, v6, v7, v8);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v8) = 0;
  sub_2212E22F0(&v7);
}

- (void)dgl_dirtyDateVolatileFunctions
{
  v5 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v10 = v5;
    do
    {
      if (objc_msgSend_ownerIndex(next[3], v6, v7, v8) == 35)
      {
        v11 = *(next + 8);
        v12 = 0x200000000;
        v13 = v11;
        objc_msgSend_dirtyInternalCellRef_(v10, v6, &v12, v8);
      }

      next = *next;
    }

    while (next);
  }
}

- (void)dirtyDateVolatileFunctions
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v7 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v8) = 1;
  objc_msgSend_dgl_dirtyDateVolatileFunctions(self, v4, v5, v6, v7, v8);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v8) = 0;
  sub_2212E22F0(&v7);
}

- (void)dirtyDateTimeVolatileFunctions
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  objc_msgSend_dgl_dirtyDateVolatileFunctions(self, v3, v4, v5);
  objc_msgSend_dgl_dirtyTimeVolatileFunctions(self, v6, v7, v8);
  os_unfair_lock_unlock(lock);
  v10 = 0;
  sub_2212E22F0(&lock);
}

- (void)beginBatchingGroupCellDirtying
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v4 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  ++self->_batchingGroupCellDirtyingLevel;
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v5 = 0;
  sub_2212E22F0(&v4);
}

- (BOOL)endBatchingGroupCellDirtying
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v20) = 1;
  batchingGroupCellDirtyingLevel = self->_batchingGroupCellDirtyingLevel;
  if (!batchingGroupCellDirtyingLevel)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCEDependencyTracker endBatchingGroupCellDirtying]", v5, lock, v20);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 4189, 0, "cannot end group cell dirtying batching if it is not already on.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    batchingGroupCellDirtyingLevel = self->_batchingGroupCellDirtyingLevel;
    if (!batchingGroupCellDirtyingLevel)
    {
      goto LABEL_7;
    }
  }

  v16 = batchingGroupCellDirtyingLevel - 1;
  self->_batchingGroupCellDirtyingLevel = v16;
  if (!v16)
  {
    if (self->_dirtyRandomVolatileFunctionsAtEndOfDirtyBatching)
    {
      objc_msgSend_dgl_markRandomVolatileFunctionsAsDirty(self, v3, v4, v5);
      v17 = 0;
      self->_dirtyRandomVolatileFunctionsAtEndOfDirtyBatching = 0;
      goto LABEL_8;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v17 = 1;
LABEL_8:
  os_unfair_lock_unlock(lock);
  LOBYTE(v20) = 0;
  sub_2212E22F0(&lock);
  return v17;
}

- (BOOL)isBatchingGroupCellDirtying
{
  selfCopy = self;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v5 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(selfCopy) = selfCopy->_batchingGroupCellDirtyingLevel != 0;
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v6 = 0;
  sub_2212E22F0(&v5);
  return selfCopy;
}

- (void)dgl_markRandomVolatileFunctionsAsDirty
{
  if (self->_batchingGroupCellDirtyingLevel)
  {
    self->_dirtyRandomVolatileFunctionsAtEndOfDirtyBatching = 1;
  }

  else
  {
    objc_msgSend_dgl_dirtyRandomVolatileFunctions(self, a2, v2, v3);
  }
}

- (void)markRandomVolatileFunctionsAsDirty
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v7 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v8) = 1;
  objc_msgSend_dgl_markRandomVolatileFunctionsAsDirty(self, v4, v5, v6, v7, v8);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v8) = 0;
  sub_2212E22F0(&v7);
}

- (void)dgl_dirtyRandomVolatileFunctions
{
  v5 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v10 = v5;
    do
    {
      if (objc_msgSend_ownerIndex(next[3], v6, v7, v8) == 35)
      {
        v11 = *(next + 8);
        v12 = 0x300000000;
        v13 = v11;
        objc_msgSend_dirtyInternalCellRef_(v10, v6, &v12, v8);
      }

      next = *next;
    }

    while (next);
  }
}

- (void)dirtyRandomVolatileFunctions
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v7 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v8) = 1;
  objc_msgSend_dgl_dirtyRandomVolatileFunctions(self, v4, v5, v6, v7, v8);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v8) = 0;
  sub_2212E22F0(&v7);
}

- (void)dirtyAllFunctions
{
  v5 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v26 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v27 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v11 = next[3];
      v12 = objc_msgSend_ownerIndex(v11, v7, v8, v9);
      v13 = v12 > 0x11 || ((1 << v12) & 0x204A0) == 0;
      if (v13 && v12 != 200)
      {
        v14 = objc_msgSend_cellDependencies(v11, v7, v8, v9);
        v18 = v14;
        if (v14)
        {
          objc_msgSend_allCoordsContainingFormulas(v14, v15, v16, v17);
          v22 = objc_msgSend_formulaOwnerId(v11, v19, v20, v21);
          objc_msgSend_dirtyCoords_inOwnerId_(v5, v23, v24, v22);
          sub_22107C860(v25, v25[1]);
        }
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v26;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v27 = 0;
  sub_2212E22F0(&v26);
}

- (void)dirtyForSpanningRowBug
{
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v33 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      LOWORD(v36) = next[8];
      if (v36 != 0xFFFF && sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v36))
      {
        v31._coordsForOwnerUid.__tree_.__begin_node_ = &v36;
        v5 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v36, &unk_2217E1838, &v31);
        v9 = objc_msgSend_spanningRowDependencies(v5[3], v6, v7, v8);
        objc_msgSend_collectReferencesForFormulasReferencingIndices_endIndex_outFormulaCells_(v9, v10, 0, 1000, v34);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = lock;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v33 = 0;
  sub_2212E0430(v34, self, &v31);
  v14 = objc_msgSend_upgradingFormulasMinion(self->_calcEngine, v11, v12, v13);
  calcEngine = v14;
  if (!v14)
  {
    calcEngine = self->_calcEngine;
  }

  v16 = calcEngine;

  v17 = self->_calcEngine;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22137064C;
  v28[3] = &unk_278460D28;
  v18 = v17;
  v29 = v18;
  v19 = v16;
  v30 = v19;
  TSCECellRefSet::enumerateOwnersUsingBlock(&v31, v28);
  os_unfair_lock_lock(lock);
  v33 = 1;
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v27 = i[8];
    if (v27 != 0xFFFF && sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v27))
    {
      v36 = &v27;
      v21 = sub_221376DD0(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v27, &unk_2217E1838, &v36);
      v25 = objc_msgSend_spanningRowDependencies(v21[3], v22, v23, v24);
      objc_msgSend_dirtyAllFormulasReferencingRange_(v25, v26, 255, 999999);
    }
  }

  os_unfair_lock_unlock(lock);
  v33 = 0;

  sub_22107C800(&v31, v31._coordsForOwnerUid.__tree_.__end_node_.__left_);
  sub_2212E22F0(&lock);
  sub_221122744(v34);
}

- (void)dirtyCellsWithErrors
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v23 = &self->_dependencyGraphLock;
  v24 = 0;
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  os_unfair_lock_lock(p_dependencyGraphLock);
  v24 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v11 = next[3];
      v12 = objc_msgSend_errors(v11, v7, v8, v9);

      if (v12)
      {
        v13 = objc_msgSend_errors(v11, v7, v8, v9);
        v17 = v13;
        if (v13)
        {
          objc_msgSend_cellCoordsWithAnyErrors(v13, v14, v15, v16);
        }

        else
        {
          v22 = 0;
          v20 = 0u;
          v21 = 0u;
        }

        v18 = objc_msgSend_formulaOwnerId(v11, v14, v15, v16, v20, v21);
        objc_msgSend_dirtyCoords_inOwnerId_(v6, v19, &v20, v18);
        sub_22107C860(&v21, *(&v21 + 1));
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v23;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v24 = 0;

  sub_2212E22F0(&v23);
}

- (void)dirtyCellsWithSpillErrorsInTable:(const TSKUIDStruct *)table
{
  v6 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, table, v3);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v26 = 1;
  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v7, table, v8);
  v13 = objc_msgSend_errors(v9, v10, v11, v12);
  v17 = v13;
  if (v13)
  {
    objc_msgSend_cellCoordsWithSpillingErrors(v13, v14, v15, v16);
    v21 = objc_msgSend_formulaOwnerId(v9, v18, v19, v20);
    objc_msgSend_dirtyCoords_inOwnerId_(v6, v22, v23, v21);
    sub_22107C860(v24, v24[1]);
  }

  os_unfair_lock_unlock(lock);
  v26 = 0;

  sub_2212E22F0(&lock);
}

- (BOOL)hasSpillingErrorsForTable:(const TSKUIDStruct *)table
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v20 = 1;
  v7 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v5, table, v6);
  v11 = objc_msgSend_errors(v7, v8, v9, v10);
  v15 = v11;
  if (v11)
  {
    objc_msgSend_cellCoordsWithSpillingErrors(v11, v12, v13, v14);
    v16 = !TSCECellCoordSet::isEmpty(&v18);
    sub_22107C860(&v18._rowsPerColumn, v18._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  os_unfair_lock_unlock(lock);
  v20 = 0;

  sub_2212E22F0(&lock);
  return v16;
}

- (void)dirtyGeometryVolatileFunctions:(const TSKUIDStruct *)functions
{
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, functions, v3);
  v9 = objc_msgSend_referencesToDirty(self->_calcEngine, v6, v7, v8);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v26 = 1;
  v12 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v10, v5, v11);
  if (objc_msgSend_ownerIndex(v12, v13, v14, v15) == 1)
  {
    v23[0] = objc_msgSend_formulaOwnerUid(v12, v16, v17, v18);
    v23[1] = v19;
    objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v19, v23, v20);
    objc_msgSend_dirtyCellRef_(v9, v21, v24, v22);
  }

  os_unfair_lock_unlock(lock);
  v26 = 0;
  sub_2212E22F0(&lock);
}

- (void)dirtyRemoteDataVolatileFunctions
{
  v5 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v23 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v24) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v11 = next[3];
      v12 = objc_msgSend_volatileDependencies(v11, v7, v8, v9, v23, v24);

      if (v12)
      {
        v13 = objc_msgSend_volatileDependencies(v11, v7, v8, v9);
        v17 = objc_msgSend_volatileRemoteDataCoordinates(v13, v14, v15, v16);
        v21 = objc_msgSend_formulaOwnerId(v11, v18, v19, v20);
        objc_msgSend_dirtyCoords_inOwnerId_(v5, v22, v17, v21);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v23;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v24) = 0;
  sub_2212E22F0(&v23);
}

- (void)dirtyRemoteDataVolatileFunctionsForKeys:(id)keys
{
  keysCopy = keys;
  objc_msgSend_flushInProgressDirtying(self, v5, v6, v7);
  v11 = objc_msgSend_referencesToDirty(self->_calcEngine, v8, v9, v10);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v25) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    v16 = 0;
    do
    {
      v17 = next[3];
      v18 = objc_msgSend_volatileDependencies(v17, v12, v13, v14, lock, v25);

      if (v18)
      {
        v19 = objc_msgSend_volatileDependencies(v17, v12, v13, v14);
        v16 |= objc_msgSend_dirtyRemoteDataVolatileCellsForKeys_refsToDirty_(v19, v20, keysCopy, v11);
      }

      next = *next;
    }

    while (next);
    os_unfair_lock_unlock(lock);
    LOBYTE(v25) = 0;
    if (v16)
    {
      objc_msgSend_startRecalcTaskIfNecessary(self->_calcEngine, v21, v22, v23);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_dependencyGraphLock);
    LOBYTE(v25) = 0;
  }

  sub_2212E22F0(&lock);
}

- (void)dirtyIndirectCalls
{
  v5 = objc_msgSend_referencesToDirty(self->_calcEngine, a2, v2, v3);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v14 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v15 = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      if (objc_msgSend_ownerIndex(next[3], v7, v8, v9) == 35)
      {
        v11 = *(next + 8);
        v12 = 0x600000000;
        v13 = v11;
        objc_msgSend_dirtyInternalCellRef_(v5, v7, &v12, v9);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v14;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v15 = 0;
  sub_2212E22F0(&v14);
}

- (void)headerStateOfTableChanged:(const TSKUIDStruct *)changed changedRows:(BOOL)rows
{
  rowsCopy = rows;
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, changed, rows);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v19 = 1;
  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, v6, v8);
  if (rowsCopy)
  {
    objc_msgSend_spanningColumnDependencies(v9, v10, v11, v12, lock);
  }

  else
  {
    objc_msgSend_spanningRowDependencies(v9, v10, v11, v12, lock);
  }
  v13 = ;
  v17 = v13;
  if (v13)
  {
    objc_msgSend_updateReferringFormulasForHeaderStateChange(v13, v14, v15, v16);
  }

  os_unfair_lock_unlock(lock);
  v19 = 0;

  sub_2212E22F0(&lock);
}

- (unint64_t)dgl_computedNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents
{
  v5 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, precedents->tableID, v3);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  v10 = objc_msgSend_cellDependencies(v5, v6, v7, v8);
  isCellInACycle = objc_msgSend_isCellInACycle_(v10, v11, precedents, v12);
  v16 = objc_msgSend_computedNumberOfDirtyPrecedents_(v10, v14, precedents, v15);
  v20 = objc_msgSend_rangeDependencies(v9, v17, v18, v19);
  v22 = objc_msgSend_computedNumberOfDirtyPrecedents_cellIsInACycle_(v20, v21, *&precedents->coordinate, isCellInACycle);
  v26 = objc_msgSend_spanningColumnDependencies(v9, v23, v24, v25);
  v28 = objc_msgSend_computedNumberOfDirtyPrecedents_cellIsInACycle_(v26, v27, *&precedents->coordinate, isCellInACycle);

  v32 = objc_msgSend_spanningRowDependencies(v9, v29, v30, v31);
  v34 = v22 + v16 + v28 + objc_msgSend_computedNumberOfDirtyPrecedents_cellIsInACycle_(v32, v33, *&precedents->coordinate, isCellInACycle);

  return v34;
}

- (unint64_t)dgl_updateNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents cellDependencies:(id)dependencies cellRecord:(TSCECellRecord *)record
{
  dependenciesCopy = dependencies;
  v11 = objc_msgSend_dgl_computedNumberOfDirtyPrecedents_(self, v9, precedents, v10);
  v14 = v11;
  if (!dependenciesCopy || !record)
  {
    goto LABEL_14;
  }

  var2 = record->var2;
  if (v11)
  {
    if (!var2)
    {
      objc_msgSend_dgl_markDependentsDirty_(self, v12, precedents, v13);
    }

    record->var6 &= ~0x100u;
    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(dependenciesCopy, v12, record, v14 + 1);
    goto LABEL_12;
  }

  var6 = record->var6;
  if (var2 >= 2)
  {
    record->var6 = var6 & 0xFEFF;
LABEL_11:
    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(dependenciesCopy, v12, record, 1);
    goto LABEL_12;
  }

  if ((record->var6 & 0x100) != 0)
  {
    record->var6 = var6 & 0xFEFF;
    if (var2)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (record->var2 == 1)
  {
    objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(self, v12, precedents, 0);
  }

LABEL_14:

  return v14;
}

- (unint64_t)dgl_updateNumberOfDirtyPrecedents:(const TSCEInternalCellReference *)precedents
{
  v6 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, precedents->tableID, v3);
  v8 = v6;
  if (v6)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v6, v7, precedents, 1);
    updated = objc_msgSend_dgl_updateNumberOfDirtyPrecedents_cellDependencies_cellRecord_(self, v10, precedents, v8, CellRecord_willModifyOnTile);
  }

  else
  {
    updated = objc_msgSend_dgl_updateNumberOfDirtyPrecedents_cellDependencies_cellRecord_(self, v7, precedents, 0, 0);
  }

  v12 = updated;

  return v12;
}

- (void)updateNumberOfDirtyPrecedents:(const void *)precedents
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v7 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v8 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2213712F4;
  v6[3] = &unk_27845F540;
  v6[4] = self;
  sub_2212DFEC0(precedents, v6);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v8 = 0;
  sub_2212E22F0(&v7);
}

- (void)dgl_cellRefsForCycleCellsReferringToCell:(const TSCEInternalCellReference *)cell outCellRefs:(void *)refs
{
  v6 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, cell->tableID, refs);
  v25 = objc_msgSend_cellDependencies(v6, v7, v8, v9);
  if (v25)
  {
    objc_msgSend_cellRefsForCycleCellsReferringToCell_outCellRefs_(v25, v10, cell, refs);
  }

  v13 = objc_msgSend_rangeDependencies(v6, v10, v11, v12);
  v17 = v13;
  if (v13)
  {
    objc_msgSend_cellRefsForCycleCellsReferringToCell_outCellRefs_(v13, v14, cell, refs);
  }

  v18 = objc_msgSend_spanningColumnDependencies(v6, v14, v15, v16);
  objc_msgSend_cellRefsForFormulasReferringToIndex_outCellRefs_cycleCellsOnly_(v18, v19, cell->coordinate.column, refs, 1);
  v23 = objc_msgSend_spanningRowDependencies(v6, v20, v21, v22);
  objc_msgSend_cellRefsForFormulasReferringToIndex_outCellRefs_cycleCellsOnly_(v23, v24, cell->coordinate.row, refs, 1);
}

- (unint64_t)dgl_popNextLeavesIfAvailable:(void *)available numLeaves:(unint64_t)leaves leafQueue:(id)queue
{
  queueCopy = queue;
  v12 = 0;
  while (v12 < leaves)
  {
    if (objc_msgSend_isSingleEvalQueueEmpty(queueCopy, v8, v9, v10))
    {
      break;
    }

    v48 = 0;
    v47 = 0;
    v47 = objc_msgSend_popLeaf(queueCopy, v13, v14, v15);
    v48 = v8;
    if (v8 != 0xFFFF)
    {
      v16 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v8, v8, v10);
      v20 = objc_msgSend_cellDependencies(v16, v17, v18, v19);
      v23 = v20;
      if (v20)
      {
        CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v20, v21, &v47, 0);
      }

      else
      {
        CellRecord_willModifyOnTile = 0;
      }

      *&v45 = v47;
      DWORD2(v45) = v48;
      *&v46 = v16;
      *(&v46 + 1) = CellRecord_willModifyOnTile;
      if (objc_msgSend_dgl_cellIsReadyForEvaluation_(self, v21, &v45, v22))
      {
        os_unfair_lock_lock(&self->_evaluationInProgressLock);
        if ((sub_2212E0198(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v47) & 1) == 0)
        {
          v27 = *(available + 1);
          v28 = *(available + 2);
          if (v27 >= v28)
          {
            v35 = (v27 - *available) >> 5;
            v36 = v35 + 1;
            if ((v35 + 1) >> 59)
            {
              sub_22107C148();
            }

            v37 = v28 - *available;
            if (v37 >> 4 > v36)
            {
              v36 = v37 >> 4;
            }

            if (v37 >= 0x7FFFFFFFFFFFFFE0)
            {
              v38 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v38 = v36;
            }

            if (v38)
            {
              sub_22123E9D0(available, v38);
            }

            v39 = (32 * v35);
            v40 = v46;
            *v39 = v45;
            v39[1] = v40;
            v30 = 32 * v35 + 32;
            v41 = *(available + 1) - *available;
            v42 = 32 * v35 - v41;
            memcpy(v39 - v41, *available, v41);
            v43 = *available;
            *available = v42;
            *(available + 1) = v30;
            *(available + 2) = 0;
            if (v43)
            {
              operator delete(v43);
            }
          }

          else
          {
            v29 = v46;
            *v27 = v45;
            v27[1] = v29;
            v30 = (v27 + 2);
          }

          *(available + 1) = v30;
          sub_2212DFCE8(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v47);
          ++v12;
        }

        os_unfair_lock_unlock(&self->_evaluationInProgressLock);
      }

      else
      {
        v31 = objc_msgSend_dgl_ownerIDIsRegistered_(self, v25, v48, v26);
        if (v16)
        {
          v34 = v31;
        }

        else
        {
          v34 = 1;
        }

        if ((v34 & 1) == 0 && (objc_msgSend_dgl_cellIsClean_(self, v32, &v45, v33) & 1) == 0)
        {
          objc_msgSend_dgl_updateGraphWithCleanReference_cellRecord_(self, v32, &v47, CellRecord_willModifyOnTile);
        }

        objc_msgSend_doneEvaluatingCell_(self, v32, &v47, v33);
      }
    }
  }

  return v12;
}

- (void)dgl_dirtyCellsInToDirtyQueue
{
  begin = self->_modifiedCellsToDirtyQueue.__begin_;
  end = self->_modifiedCellsToDirtyQueue.__end_;
  if (begin != end)
  {
    do
    {
      objc_msgSend_dgl_markCellRefAsDirty_(self, a2, begin++, v2);
    }

    while (begin != end);
    begin = self->_modifiedCellsToDirtyQueue.__begin_;
  }

  self->_modifiedCellsToDirtyQueue.__end_ = begin;
}

- (vector<TSCECellToEvaluate,)popNextLeaves:(TSCEDependencyTracker *)self
{
  v5 = &v55;
  v55 = 0;
  v56 = &v55;
  v57 = 0x4812000000;
  v58 = sub_221371A94;
  v59 = sub_221371AB8;
  v60 = &unk_22188E88F;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  if (!a4)
  {
    v41 = 0;
    goto LABEL_25;
  }

  v6 = a4;
  sub_221371AD0(&v61, a4);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v54 = 1;
  if (!objc_msgSend_hasMultiEvalLeaves(self->_leafQueue, v8, v9, v10))
  {
    goto LABEL_18;
  }

  leafQueue = self->_leafQueue;
  if (!leafQueue)
  {
    goto LABEL_18;
  }

  objc_msgSend_multiEvalOwnerIDs(leafQueue, v11, v12, v13);
  v16 = __p;
  v17 = v52;
  if (__p == v52)
  {
    goto LABEL_15;
  }

  v18 = __p + 2;
  do
  {
    v19 = *(v18 - 1);
    v20 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v11, v19, v15);
    v26 = objc_msgSend_cellDependencies(v20, v21, v22, v23);
    v27 = self->_leafQueue;
    if (v27)
    {
      objc_msgSend_cellCoordsForMultiEvalOwnerID_(v27, v24, v19, v25);
      if (!v26)
      {
        goto LABEL_11;
      }

LABEL_10:
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_221371B70;
      v43[3] = &unk_278463478;
      v28 = v26;
      v47 = v19;
      v44 = v28;
      v45 = &v55;
      v46 = v20;
      TSCECellCoordSet::enumerateCoordsUsingBlock(&v48, v43);

      goto LABEL_11;
    }

    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    if (v26)
    {
      goto LABEL_10;
    }

LABEL_11:
    objc_msgSend_clearMultiEvalOwnerID_(self->_leafQueue, v24, v19, v25);
    sub_22107C860(&v49, *(&v49 + 1));

    if (!--v6)
    {
      break;
    }

    v29 = v18 == v17;
    v18 += 2;
  }

  while (!v29);
  v16 = __p;
LABEL_15:
  if (v16)
  {
    v52 = v16;
    operator delete(v16);
  }

  if (v6)
  {
LABEL_18:
    v6 -= objc_msgSend_dgl_popNextLeavesIfAvailable_numLeaves_leafQueue_(self, v11, (v56 + 6), v6, self->_cycleCalculationLeafQueue);
  }

  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  v30 = sub_2212E0280(&self->_evaluationInProgressCells);
  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
  if (v56[6] == v56[7] && v30)
  {
    objc_msgSend_dgl_dirtyCellsInToDirtyQueue(self, v31, v32, v33);
    objc_msgSend_dgl_popNextLeavesIfAvailable_numLeaves_leafQueue_(self, v34, (v56 + 6), v6, self->_leafQueue);
    if (v56[6] == v56[7])
    {
      if (objc_msgSend_dgl_hasDirtyCellsIgnoringNRM_(self, v35, 0, v36))
      {
        objc_msgSend_dgl_findAndRecordCyclesInDirtyCells(self, v37, v38, v39);
        objc_msgSend_dgl_popNextLeavesIfAvailable_numLeaves_leafQueue_(self, v40, (v56 + 6), v6, self->_cycleCalculationLeafQueue);
      }
    }
  }

  os_unfair_lock_unlock(lock);
  v54 = 0;
  sub_2212E22F0(&lock);
  v5 = v56;
  v41 = v56[6];
LABEL_25:
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  sub_22137769C(retstr, v41, v5[7], (v5[7] - v41) >> 5);
  _Block_object_dispose(&v55, 8);
  result = v61;
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  return result;
}

- (void)findAndRecordCyclesInDirtyCells
{
  if (objc_msgSend_hasDirtyCellsIgnoringNRM_(self, a2, 0, v2))
  {
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v8) = 1;
    objc_msgSend_dgl_findAndRecordCyclesInDirtyCells(self, v4, v5, v6, &self->_dependencyGraphLock, v8);
    os_unfair_lock_unlock(&self->_dependencyGraphLock);
    LOBYTE(v8) = 0;
    sub_2212E22F0(&v7);
  }
}

- (void)dgl_findAndRecordCyclesInDirtyCells
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  LODWORD(v11) = 1065353216;
  *__p = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v15 = 1065353216;
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v6 = objc_msgSend_cellDependencies(i[3], a2, v2, v3, v8, v9, v10, v11);
    objc_msgSend_findAndRecordCyclesInDirtyCells_outCellsInCycles_(v6, v7, &v8, self->_cycleCalculationLeafQueue);
  }

  sub_2210BDEC0(v13 + 8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_2210BDEC0(&v8 + 8);
}

- (void)doneEvaluatingCell:(const TSCEInternalCellReference *)cell
{
  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  sub_2212DFDD0(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, cell);

  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
}

- (BOOL)rangeRefIsDirtyOrCurrentlyBeingEvaluated:(const TSCERangeRef *)evaluated
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v14 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  IsDirty = objc_msgSend_dgl_rangeRefIsDirty_(self, v6, evaluated, v7);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v15 = 0;
  if (IsDirty)
  {
    v9 = 1;
  }

  else
  {
    os_unfair_lock_lock(&self->_evaluationInProgressLock);
    if (sub_2212E0280(&self->_evaluationInProgressCells))
    {
      v9 = 0;
    }

    else
    {
      objc_msgSend_internalRangeReferenceForRangeRef_(self, v10, evaluated, v11);
      v9 = sub_2212E01E8(&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v13);
    }

    os_unfair_lock_unlock(&self->_evaluationInProgressLock);
  }

  sub_2212E22F0(&v14);
  return v9;
}

- (void)markOwnerIDHavingRecordsToPrune:(unsigned __int16)prune
{
  pruneCopy = prune;
  if (prune != 0xFFFF)
  {
    os_unfair_lock_lock(&self->_ownerIDsWithRecordsToPruneLock);
    sub_22123E79C(&self->_ownerIDsWithRecordsToPrune.__table_.__bucket_list_.__ptr_, &pruneCopy, &pruneCopy);
    os_unfair_lock_unlock(&self->_ownerIDsWithRecordsToPruneLock);
  }
}

- (void)clearOwnerIDHavingRecordsToPrune:(unsigned __int16)prune
{
  pruneCopy = prune;
  if (prune != 0xFFFF)
  {
    os_unfair_lock_lock(&self->_ownerIDsWithRecordsToPruneLock);
    sub_221142C34(&self->_ownerIDsWithRecordsToPrune.__table_.__bucket_list_.__ptr_, &pruneCopy);
    os_unfair_lock_unlock(&self->_ownerIDsWithRecordsToPruneLock);
  }
}

- (BOOL)hasCellRecordsToPrune
{
  os_unfair_lock_lock(&self->_ownerIDsWithRecordsToPruneLock);
  v3 = self->_ownerIDsWithRecordsToPrune.__table_.__size_ != 0;
  os_unfair_lock_unlock(&self->_ownerIDsWithRecordsToPruneLock);
  return v3;
}

- (unordered_set<unsigned)ownerIDsWithRecordsToPrune
{
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  os_unfair_lock_lock(&self->_ownerIDsWithRecordsToPruneLock);
  if (&self->_ownerIDsWithRecordsToPrune != retstr)
  {
    retstr->__table_.__max_load_factor_ = self->_ownerIDsWithRecordsToPrune.__table_.__max_load_factor_;
    sub_221260A8C(retstr, self->_ownerIDsWithRecordsToPrune.__table_.__first_node_.__next_, 0);
  }

  os_unfair_lock_unlock(&self->_ownerIDsWithRecordsToPruneLock);
  return result;
}

- (void)processPruningOfCellRecords:(double)records
{
  if (objc_msgSend_hasCellRecordsToPrune(self, a2, v3, v4))
  {
    lock = &self->_dependencyGraphLock;
    v7 = objc_opt_new();
    objc_msgSend_ownerIDsWithRecordsToPrune(self, v8, v9, v10);
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v24 = 1;
    for (i = v22; i; i = *i)
    {
      v14 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v11, *(i + 8), v12);
      v18 = v14;
      if (v14)
      {
        objc_msgSend_pruneEmptyCellRecords_timeout_(v14, v15, v7, v17, records);
      }

      objc_msgSend_timeIntervalSinceNow(v7, v15, v16, v17);
      v20 = -v19;

      if (v20 > records)
      {
        break;
      }
    }

    os_unfair_lock_unlock(lock);
    v24 = 0;
    sub_2210BDEC0(v21);

    sub_2212E22F0(&lock);
  }
}

- (void)dgl_updateGraphWithCleanReference:(TSCECellToEvaluate *)reference skipCycleCheck:(BOOL)check
{
  objc_msgSend_dgl_loadCacheForCell_(self, a2, reference, check);
  var1 = reference->var1;
  var2 = reference->var2;
  if (var2)
  {
    var6 = var2->var6;
    if (var2->var2 >= 2 && (var6 & 2) == 0)
    {
      return;
    }

    v24 = objc_msgSend_cellDependencies(reference->var1, v5, v6, v7);
    if (v24)
    {
      nullsub_75();
      objc_msgSend_markCellCleanAndPushNextLeaves_(v24, v12, reference, v13);
    }

    v14 = (var6 >> 1) & 1;
  }

  else
  {
    v14 = 0;
  }

  v25 = objc_msgSend_rangeDependencies(var1, v5, v6, v7);
  if (v25)
  {
    objc_msgSend_decrementReferringDirtyCountAndPushNextLeaves_referencingCellIsInACycle_(v25, v15, reference, v14);
  }

  v18 = objc_msgSend_spanningColumnDependencies(var1, v15, v16, v17);
  v23 = objc_msgSend_spanningRowDependencies(var1, v19, v20, v21);
  if (v18)
  {
    objc_msgSend_decrementReferringDirtyCountAndPushNextLeaves_referencingCellIsInACycle_(v18, v22, reference, v14);
  }

  if (v23)
  {
    objc_msgSend_decrementReferringDirtyCountAndPushNextLeaves_referencingCellIsInACycle_(v23, v22, reference, v14);
  }
}

- (void)dgl_updateGraphWithCleanReference:(const TSCEInternalCellReference *)reference cellRecord:(TSCECellRecord *)record
{
  v7 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, reference->tableID, record);
  v9 = *reference;
  v10 = v7;
  recordCopy = record;
  objc_msgSend_dgl_updateGraphWithCleanReference_skipCycleCheck_(self, v8, &v9, 0);
}

- (BOOL)dgl_cellIsClean:(const TSCECellToEvaluate *)clean
{
  v5 = objc_msgSend_cellDependencies(clean->var1, a2, clean, v3);
  v8 = v5;
  if (v5)
  {
    IsClean = objc_msgSend_cellIsClean_(v5, v6, clean, v7);
  }

  else
  {
    IsClean = 1;
  }

  return IsClean;
}

- (BOOL)dgl_intCellIsClean:(const TSCEInternalCellReference *)clean
{
  v5 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, clean->tableID, v3);
  v8 = v5;
  if (v5)
  {
    IsClean = objc_msgSend_cellIsClean_(v5, v6, clean, v7);
  }

  else
  {
    IsClean = 1;
  }

  return IsClean;
}

- (BOOL)intCellIsClean:(const TSCEInternalCellReference *)clean
{
  if (clean->tableID == -1)
  {
    return 1;
  }

  IsClean = 1;
  if ((*&clean->coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    p_dependencyGraphLock = &self->_dependencyGraphLock;
    v10 = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    LOBYTE(v11) = 1;
    IsClean = objc_msgSend_dgl_intCellIsClean_(self, v7, clean, v8, v10, v11);
    os_unfair_lock_unlock(p_dependencyGraphLock);
    LOBYTE(v11) = 0;
    sub_2212E22F0(&v10);
  }

  return IsClean;
}

- (BOOL)cellIsClean:(const TSCECellRef *)clean
{
  v8 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, clean, v3);
  v9 = v5;
  return objc_msgSend_intCellIsClean_(self, v5, &v8, v6);
}

- (BOOL)dgl_rangeRefIsDirty:(const TSCERangeRef *)dirty
{
  v5 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, a2, &dirty->_tableUID, v3);
  v7 = v5;
  if (v5)
  {
    v8 = objc_msgSend_countRecordsInRange_cellRestrictions_(v5, v6, dirty, 2) != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)dgl_cellIsReadyForEvaluation:(const TSCECellToEvaluate *)evaluation
{
  v5 = objc_msgSend_dgl_ownerIDIsRegistered_(self, a2, evaluation->var0.tableID, v3);
  if (v5)
  {
    var2 = evaluation->var2;
    if (var2)
    {
      LOBYTE(v5) = var2->var2 == 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)numDirtyCellsInOwnerID:(unsigned __int16)d
{
  dCopy = d;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v16 = 1;
  v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v6, dCopy, v7);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_numDirtyCells(v8, v9, v10, v11);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v16 = 0;

  sub_2212E22F0(&lock);
  return v13;
}

- (BOOL)hasFormulaAt:(const TSCECellRef *)at
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v10 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v11) = 1;
  CellRecord_willModifyOnTile = objc_msgSend_dgl_findCellRecord_willModifyOnTile_(self, v6, at, 0, v10, v11);
  if (CellRecord_willModifyOnTile)
  {
    v8 = (*(CellRecord_willModifyOnTile + 38) >> 2) & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v11) = 0;
  sub_2212E22F0(&v10);
  return v8;
}

- (BOOL)dgl_hasDirtyCellsIgnoringNRM:(BOOL)m
{
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  mCopy = m;
  while (1)
  {
    if (!mCopy || objc_msgSend_ownerIndex(next[3], a2, m, v3) != 7)
    {
      v6 = objc_msgSend_cellDependencies(next[3], a2, m, v3);
      hasDirtyCells = objc_msgSend_hasDirtyCells(v6, v7, v8, v9);

      if (hasDirtyCells)
      {
        break;
      }
    }

    next = *next;
    if (!next)
    {
      return 0;
    }
  }

  return 1;
}

- (int64_t)dgl_numDirtyCells
{
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = objc_msgSend_cellDependencies(next[3], a2, v2, v3);
    v10 = objc_msgSend_numDirtyCells(v6, v7, v8, v9);

    v5 += v10;
    next = *next;
  }

  while (next);
  return v5;
}

- (BOOL)hasDirtyCellsIgnoringNRM:(BOOL)m
{
  mCopy = m;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v9 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v10) = 1;
  LOBYTE(mCopy) = objc_msgSend_dgl_hasDirtyCellsIgnoringNRM_(self, v6, mCopy, v7, v9, v10);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v10) = 0;
  sub_2212E22F0(&v9);
  return mCopy;
}

- (int64_t)numDirtyCells
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v9 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v10) = 1;
  v7 = objc_msgSend_dgl_numDirtyCells(self, v4, v5, v6, v9, v10);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v10) = 0;
  sub_2212E22F0(&v9);
  return v7;
}

- (BOOL)hasEmbiggenedCoords
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v15) = 1;
  p_first_node = &self->_formulaOwnerDependencies.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v7 = objc_msgSend_ownerIndex(p_first_node[3].__next_, v3, v4, v5, lock, v15);
    if (v7 == 17 || v7 == 100)
    {
      break;
    }

    v11 = objc_msgSend_embiggenedCellCoord(p_first_node[3].__next_, v8, v9, v10);
    v12 = v11 != 0x7FFFFFFF && v11 > 0xFFFE;
  }

  while (!v12 && (WORD2(v11) == 0x7FFF || WORD2(v11) < 0xFFu));
  os_unfair_lock_unlock(lock);
  LOBYTE(v15) = 0;
  sub_2212E22F0(&lock);
  return p_first_node != 0;
}

- (unint64_t)numFormulaCellsInOwnerUID:(const TSKUIDStruct *)d
{
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v17 = 1;
  v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v7, v5, v8);
  v13 = v9;
  if (v9)
  {
    v14 = objc_msgSend_numFormulaCells(v9, v10, v11, v12);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v17 = 0;

  sub_2212E22F0(&lock);
  return v14;
}

- (unint64_t)numCellRecordsInOwnerUID:(const TSKUIDStruct *)d
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v16 = 1;
  v8 = objc_msgSend_dgl_cellDependenciesForOwnerUID_(self, v6, d, v7);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_numCellRecords(v8, v9, v10, v11);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v16 = 0;

  sub_2212E22F0(&lock);
  return v13;
}

- (int64_t)countNumberOfFormulaCells
{
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = objc_msgSend_cellDependencies(next[3], a2, v2, v3);
    v10 = objc_msgSend_numFormulaCells(v6, v7, v8, v9);

    v5 += v10;
    next = *next;
  }

  while (next);
  return v5;
}

- (BOOL)containsAnyTable
{
  p_first_node = &self->_formulaOwnerDependencies.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
  }

  while (p_first_node && objc_msgSend_ownerIndex(p_first_node[3].__next_, a2, v2, v3) != 1);
  return p_first_node != 0;
}

- (vector<TSUCellCoord,)dgl_cellsWithRecordsInRange:(TSCEDependencyTracker *)self formulaCellsOnly:(SEL)only
{
  v5 = a5;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v8 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, only, &a4->_tableUID, a5);
  v12 = objc_msgSend_cellDependencies(v8, v9, v10, v11);
  v14 = v12;
  if (v12)
  {
    objc_msgSend_cellsWithRecordsInRange_formulaCellsOnly_(v12, v13, a4, v5);
    *&retstr->__begin_ = v16;
    retstr->__cap_ = v17;
  }

  return result;
}

- (BOOL)hasFormulaCellsUsingNowTodayRandom
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v28 = 1;
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = i[3];
    if (objc_msgSend_ownerIndex(v7, v3, v4, v5) == 35)
    {
      v8 = objc_msgSend_cellDependencies(v7, v3, v4, v5);
      v11 = v8;
      if (v8)
      {
        v12 = *(i + 8);
        v25 = 0x100000000;
        v26 = v12;
        if (objc_msgSend_hasDependentsOfCell_(v8, v9, &v25, v10) & 1) != 0 || (v15 = *(i + 8), v23 = 0x200000000, v24 = v15, (objc_msgSend_hasDependentsOfCell_(v11, v13, &v23, v14)) || (v18 = *(i + 8), v21 = 0x300000000, v22 = v18, (objc_msgSend_hasDependentsOfCell_(v11, v16, &v21, v17)))
        {

          v19 = 1;
          goto LABEL_11;
        }
      }
    }
  }

  v19 = 0;
LABEL_11:
  os_unfair_lock_unlock(lock);
  v28 = 0;
  sub_2212E22F0(&lock);
  return v19;
}

- (vector<TSUCellCoord,)cellsReferencingRange:(TSCEDependencyTracker *)self fromOwner:(SEL)owner skipSpanning:(const TSCERangeRef *)spanning
{
  v7 = a5;
  v48 = 0;
  v49 = &v48;
  v50 = 0x4812000000;
  v51 = sub_221365718;
  v52 = sub_22136573C;
  v53 = &unk_22188E88F;
  v55 = 0;
  v56 = 0;
  __p = 0;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v47 = 1;
  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v11, &spanning->_tableUID, v12);
  v17 = v13;
  if (v13)
  {
    v18 = objc_msgSend_cellDependencies(v13, v14, v15, v16);
    v22 = v18;
    if (v18)
    {
      objc_msgSend_cellsReferencingRange_fromOwnerID_outFormulaCoords_(v18, v19, spanning, v7, v49 + 6);
    }

    v23 = objc_msgSend_rangeDependencies(v17, v19, v20, v21);
    v27 = v23;
    if (v23)
    {
      objc_msgSend_formulaCoordsReferencingRange_inOwnerID_outFormulaCells_(v23, v24, *&spanning->range._topLeft, *&spanning->range._bottomRight, v7, v49 + 6);
    }

    if (!a6)
    {
      row = spanning->range._topLeft.row;
      column = spanning->range._topLeft.column;
      v29 = spanning->range._bottomRight.row;
      v30 = spanning->range._bottomRight.column;
      v45._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v45._coordsForOwnerUid.__tree_.__size_ = 0;
      v45._coordsForOwnerUid.__tree_.__begin_node_ = &v45._coordsForOwnerUid.__tree_.__end_node_;
      v41 = objc_msgSend_spanningRowDependencies(v17, v24, v25, v26);
      v36 = objc_msgSend_spanningColumnDependencies(v17, v31, v32, v33);
      if (v41)
      {
        objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v41, v34, row, v29, &v45);
      }

      if (v36)
      {
        objc_msgSend_formulaCellsReferencingIndices_endIndex_outFormulaCells_(v36, v34, column, v30, &v45);
      }

      v43._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v34, v7, v35);
      v43._upper = v37;
      TSCECellRefSet::subsetForOwnerUID(v44, &v45, &v43);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_22137316C;
      v42[3] = &unk_2784634A0;
      v42[4] = &v48;
      TSCECellRefSet::enumerateCellRefsUsingBlock(v44, v42);
      sub_22107C800(v44, v44[1]);

      sub_22107C800(&v45, v45._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }
  }

  os_unfair_lock_unlock(lock);
  v47 = 0;
  v38 = v49;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_2211230D4(retstr, v38[6], v38[7], (v38[7] - v38[6]) >> 3);
  sub_2212E22F0(&lock);
  _Block_object_dispose(&v48, 8);
  result = __p;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  return result;
}

- (BOOL)dgl_cellIsInACycle:(const TSCEInternalCellReference *)cycle
{
  v5 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, cycle->tableID, v3);
  v8 = v5;
  if (v5)
  {
    isCellInACycle = objc_msgSend_isCellInACycle_(v5, v6, cycle, v7);
  }

  else
  {
    isCellInACycle = 0;
  }

  return isCellInACycle;
}

- (BOOL)cellIsInACycle:(const TSCECellRef *)cycle
{
  v3 = *&cycle->coordinate == 0x7FFFFFFF || (*&cycle->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (v3 || *&cycle->_tableUID == 0)
  {
    return 0;
  }

  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v15 = 1;
  v12 = objc_msgSend_internalCellReferenceForCellRef_(self, v6, cycle, v7);
  v13 = v8;
  v10 = objc_msgSend_dgl_cellIsInACycle_(self, v8, &v12, v9);
  os_unfair_lock_unlock(lock);
  v15 = 0;
  sub_2212E22F0(&lock);
  return v10;
}

- (TSCECellCoordSet)cellsInACycleInOwner:(SEL)owner
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  if (*a4 != 0)
  {
    selfCopy = self;
    v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, owner, a4, v4);
    v8 = selfCopy + 2;
    v18 = selfCopy + 2;
    os_unfair_lock_lock(selfCopy + 2);
    v19 = 1;
    v11 = objc_msgSend_dgl_cellDependenciesForOwnerID_(selfCopy, v9, v7, v10);
    v15 = v11;
    if (v11)
    {
      objc_msgSend_cellsInACycle(v11, v12, v13, v14);
      TSCECellCoordSet::operator=(retstr, v16);
      sub_22107C860(v17, v17[1]);
      v8 = v18;
    }

    os_unfair_lock_unlock(v8);
    v19 = 0;

    return sub_2212E22F0(&v18);
  }

  return self;
}

- (BOOL)markIntCellRefDirtyIfCellContainsAFormula:(const TSCEInternalCellReference *)formula
{
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v15 = 1;
  v7 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v5, formula->tableID, v6);
  v10 = v7;
  if (v7 && objc_msgSend_containsFormula_(v7, v8, formula, v9, lock))
  {
    objc_msgSend_scheduleMarkIntCellRefAsDirty_(self, v11, *&formula->coordinate, *&formula->tableID);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(lock);
  v15 = 0;

  sub_2212E22F0(&lock);
  return v12;
}

- (BOOL)intCellContainsAFormula:(const TSCEInternalCellReference *)formula
{
  if (formula->tableID == -1 || (*&formula->coordinate & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    return 0;
  }

  p_dependencyGraphLock = &self->_dependencyGraphLock;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v15 = 1;
  v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v7, formula->tableID, v8);
  v12 = v9;
  if (v9)
  {
    v4 = objc_msgSend_containsFormula_(v9, v10, formula, v11);
    p_dependencyGraphLock = lock;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v15 = 0;

  sub_2212E22F0(&lock);
  return v4;
}

- (BOOL)hasCalculatedPrecedents:(const TSCECellRef *)precedents
{
  v8 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, precedents, v3);
  v9 = v5;
  return objc_msgSend_hasCalculatedPrecedentsInternal_(self, v5, &v8, v6);
}

- (BOOL)hasCalculatedPrecedentsInternal:(const TSCEInternalCellReference *)internal
{
  tableID = internal->tableID;
  if (tableID == 0xFFFF || (*&internal->coordinate & 0x101FFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, tableID, v3);
    v9 = v7;
    if (v7 && (CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v7, v8, internal, 0)) != 0)
    {
      v6 = (*(CellRecord_willModifyOnTile + 38) >> 3) & 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)setHasCalculatedPrecedents:(const TSCECellRef *)precedents setting:(BOOL)setting
{
  settingCopy = setting;
  v7 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, precedents, setting);
  v8 = v6;
  objc_msgSend_setHasCalculatedPrecedentsInternal_setting_(self, v6, &v7, settingCopy);
}

- (void)setHasCalculatedPrecedentsInternal:(const TSCEInternalCellReference *)internal setting:(BOOL)setting
{
  settingCopy = setting;
  v6 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, a2, internal->tableID, setting);
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v6, v6, internal, 1);
    v7 = v10;
    if (CellRecord_willModifyOnTile)
    {
      if (settingCopy)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      *(CellRecord_willModifyOnTile + 38) = *(CellRecord_willModifyOnTile + 38) & 0xFFF7 | v9;
    }
  }
}

- (void)clearCellsCurrentlyBeingEvaluated
{
  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  sub_2212E0194(&self->_evaluationInProgressCells);

  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
}

- (BOOL)cellHasPrecedents:(const TSCECellRef *)precedents
{
  v6 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, precedents, v3);
  v8 = v7;
  v59 = v6;
  v60 = v7;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v58 = 1;
  v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v9, v8, v10);
  v15 = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

  v16 = objc_msgSend_cellDependencies(v11, v12, v13, v14, lock);

  if (!v16 || (objc_msgSend_cellDependencies(v15, v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend_hasPrecedentsAtCoord_(v20, v21, &v59, v22), v20, (v23 & 1) == 0))
  {
    v24 = objc_msgSend_rangeDependencies(v15, v17, v18, v19);

    if (!v24 || (objc_msgSend_rangeDependencies(v15, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_hasPrecedentsAtCoord_(v28, v29, precedents, v30), v28, (v31 & 1) == 0))
    {
      v32 = objc_msgSend_spanningRowDependencies(v15, v25, v26, v27);

      if (!v32 || (objc_msgSend_spanningRowDependencies(v15, v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend_hasPrecedentsAtCoord_(v36, v37, precedents, v38), v36, (v39 & 1) == 0))
      {
        v40 = objc_msgSend_spanningColumnDependencies(v15, v33, v34, v35);

        if (!v40 || (objc_msgSend_spanningColumnDependencies(v15, v41, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), hasPrecedentsAtCoord = objc_msgSend_hasPrecedentsAtCoord_(v44, v45, precedents, v46), v44, (hasPrecedentsAtCoord & 1) == 0))
        {
          v49 = objc_msgSend_volatileDependencies(v15, v41, v42, v43);

          if (v49)
          {
            v53 = objc_msgSend_volatileDependencies(v15, v50, v51, v52);
            hasRemoteDataPrecedentsAtCoord = objc_msgSend_hasRemoteDataPrecedentsAtCoord_(v53, v54, precedents, v55);

            goto LABEL_14;
          }

LABEL_13:
          hasRemoteDataPrecedentsAtCoord = 0;
          goto LABEL_14;
        }
      }
    }
  }

  hasRemoteDataPrecedentsAtCoord = 1;
LABEL_14:
  os_unfair_lock_unlock(lock);
  v58 = 0;
  sub_2212E22F0(&lock);
  return hasRemoteDataPrecedentsAtCoord;
}

- (TSCEReferenceSet)dgl_precedentsOfCell:(SEL)cell
{
  TSCEReferenceSet::TSCEReferenceSet(retstr, self);
  result = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v7, a4->tableID, v8);
  v13 = result;
  if (result)
  {
    v14 = objc_msgSend_cellDependencies(result, v10, v11, v12);

    if (v14)
    {
      v18 = objc_msgSend_cellDependencies(v13, v15, v16, v17);
      objc_msgSend_addPrecedentsAtCoord_toReferenceSet_(v18, v19, a4, retstr);
    }

    v20 = objc_msgSend_rangeDependencies(v13, v15, v16, v17);

    if (v20)
    {
      v24 = objc_msgSend_rangeDependencies(v13, v21, v22, v23);
      objc_msgSend_addPrecedentsAtCoord_toReferenceSet_(v24, v25, a4, retstr);
    }

    v26 = objc_msgSend_spanningRowDependencies(v13, v21, v22, v23);

    if (v26)
    {
      v30 = objc_msgSend_spanningRowDependencies(v13, v27, v28, v29);
      objc_msgSend_addPrecedentsAtCoord_toReferenceSet_(v30, v31, a4, retstr);
    }

    v32 = objc_msgSend_spanningColumnDependencies(v13, v27, v28, v29);

    if (v32)
    {
      v36 = objc_msgSend_spanningColumnDependencies(v13, v33, v34, v35);
      objc_msgSend_addPrecedentsAtCoord_toReferenceSet_(v36, v37, a4, retstr);
    }

    v38 = objc_msgSend_volatileDependencies(v13, v33, v34, v35);

    if (v38)
    {
      v42 = objc_msgSend_volatileDependencies(v13, v39, v40, v41);
      objc_msgSend_addRemoteDataPrecedentsAtCoord_toReferenceSet_(v42, v43, a4, retstr);
    }

    v44 = objc_msgSend_wholeOwnerDependencies(v13, v39, v40, v41);

    if (v44)
    {
      v49 = objc_msgSend_wholeOwnerDependencies(v13, v45, v46, v47);
      objc_msgSend_addPrecedentsOfCoord_toReferenceSet_(v49, v48, a4, retstr);
    }
  }

  return result;
}

- (TSCEReferenceSet)precedentsOfCell:(SEL)cell
{
  TSCEReferenceSet::TSCEReferenceSet(retstr, self);
  v16 = objc_msgSend_internalCellReferenceForCellRef_(self, v7, a4, v8);
  v17 = v9;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v15 = 1;
  objc_msgSend_dgl_precedentsOfCell_(self, v10, &v16, v11);
  TSCEReferenceSet::operator=(retstr, &v13);
  TSCEReferenceSet::~TSCEReferenceSet(&v13);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v15 = 0;
  return sub_2212E22F0(&p_dependencyGraphLock);
}

- (BOOL)cellHasThisCellPrecedent:(const TSCECellRef *)precedent precedent:(const TSCECellRef *)a4
{
  v6 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, precedent, a4);
  v8 = v7;
  v29 = v6;
  v30 = v7;
  v27 = objc_msgSend_internalCellReferenceForCellRef_(self, v7, a4, v9);
  v28 = v10;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v26 = 1;
  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v11, v8, v12);
  v17 = v13;
  if (v13)
  {
    v18 = objc_msgSend_cellDependencies(v13, v14, v15, v16, lock);

    if (v18)
    {
      v22 = objc_msgSend_cellDependencies(v17, v19, v20, v21);
      LOBYTE(v17) = objc_msgSend_cellHasThisCellPrecedent_precedentRef_(v22, v23, &v29, &v27);
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  os_unfair_lock_unlock(lock);
  v26 = 0;
  sub_2212E22F0(&lock);
  return v17;
}

- (BOOL)dgl_cellHasDeepPrecedentInRange:(const TSCEInternalCellReference *)range cellRange:(const TSCEInternalRangeReference *)cellRange
{
  v6 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, a2, range->tableID, cellRange);
  if (!v6)
  {
    return 0;
  }

  v10 = v6;
  v11 = objc_msgSend_cellDependencies(v6, v7, v8, v9);

  if (!v11 || (objc_msgSend_cellDependencies(v10, v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v15, v16, range, cellRange), v15, (v17 & 1) == 0))
  {
    v18 = objc_msgSend_rangeDependencies(v10, v12, v13, v14);
    HasDeepPrecedentInRange_cellRange = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v18, v19, range, cellRange);

    if ((HasDeepPrecedentInRange_cellRange & 1) == 0)
    {
      v24 = objc_msgSend_spanningColumnDependencies(v10, v21, v22, v23);

      if (!v24 || (objc_msgSend_spanningColumnDependencies(v10, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v28, v29, range, cellRange), v28, (v30 & 1) == 0))
      {
        v32 = objc_msgSend_spanningRowDependencies(v10, v25, v26, v27);

        if (v32)
        {
          v36 = objc_msgSend_spanningRowDependencies(v10, v33, v34, v35);
          v31 = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v36, v37, range, cellRange);

          return v31;
        }

        return 0;
      }
    }
  }

  return 1;
}

- (BOOL)cellHasDeepPrecedentInRange:(const TSCECellRef *)range cellRange:(const TSCERangeRef *)cellRange
{
  selfCopy = self;
  v15 = objc_msgSend_internalCellReferenceForCellRef_(self, a2, range, cellRange);
  v16 = v6;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  objc_msgSend_internalRangeReferenceForRangeRef_(selfCopy, v6, cellRange, v7);
  p_dependencyGraphLock = &selfCopy->_dependencyGraphLock;
  v11 = &selfCopy->_dependencyGraphLock;
  os_unfair_lock_lock(&selfCopy->_dependencyGraphLock);
  LOBYTE(selfCopy) = objc_msgSend_dgl_cellHasDeepPrecedentInRange_cellRange_(selfCopy, v9, &v15, v13);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v12 = 0;
  sub_2212E22F0(&v11);
  return selfCopy;
}

- (TSCEInternalCellRefSet)cellDependentsOfCell:(SEL)cell
{
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v23 = 1;
  tableUID = a4->_tableUID;
  v9 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v7, &tableUID, v8);
  v13 = v9;
  if (v9)
  {
    v14 = objc_msgSend_cellDependencies(v9, v10, v11, v12);

    if (v14)
    {
      v18 = objc_msgSend_cellDependencies(v13, v15, v16, v17);
      objc_msgSend_addDependentsAtCoord_toCellReferenceSet_(v18, v19, a4, retstr);
    }
  }

  os_unfair_lock_unlock(lock);
  v23 = 0;
  return sub_2212E22F0(&lock);
}

- (TSCEInternalCellRefSet)cellsInOwnerDependentOnBoth:(SEL)both precedent1:(const TSKUIDStruct *)precedent1 precedent2:(const TSCECellRef *)precedent2
{
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v39 = 1;
  v13 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(self, v11, precedent1, v12);
  v17 = v13;
  if (v13)
  {
    v18 = objc_msgSend_cellDependencies(v13, v14, v15, v16);

    if (v18)
    {
      v36 = objc_msgSend_internalCellReferenceForCellRef_(self, v19, precedent2, v20);
      v37 = v21;
      v33._rowsPerColumn.__tree_.__size_ = 0;
      v34 = objc_msgSend_internalCellReferenceForCellRef_(self, v21, a6, v22);
      v35 = v23;
      v33._rectRepresentation.origin = 0;
      v33._rectRepresentation.size = 0;
      v33._rowsPerColumn.__tree_.__begin_node_ = &v33._rowsPerColumn.__tree_.__end_node_;
      v33._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      v26 = objc_msgSend_cellDependencies(v17, v23, v24, v25);
      objc_msgSend_addCellsDependentOnBoth_precedent2_toCellCoordSet_(v26, v27, &v36, &v34, &v33);

      v31 = objc_msgSend_formulaOwnerId(v17, v28, v29, v30);
      sub_2212DFD38(retstr, v31, &v33);
      sub_22107C860(&v33._rowsPerColumn, v33._rowsPerColumn.__tree_.__end_node_.__left_);
    }
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v39 = 0;
  return sub_2212E22F0(&p_dependencyGraphLock);
}

- (TSCECellCoordSet)cellCoordinatesNeedingExcelImport:(SEL)import
{
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, import, a4, v4);
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v22 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v23 = 1;
  if (objc_msgSend_dgl_ownerIDIsRegistered_(self, v9, v7, v10))
  {
    v13 = objc_msgSend_dgl_cellDependenciesForOwnerID_(self, v11, v7, v12);
    v17 = v13;
    if (v13)
    {
      objc_msgSend_cellCoordinatesNeedingExcelImport(v13, v14, v15, v16);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    TSCECellCoordSet::operator=(retstr, &v19);
    sub_22107C860(&v20, *(&v20 + 1));

    p_dependencyGraphLock = v22;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  v23 = 0;
  return sub_2212E22F0(&v22);
}

- (void)setTableAndBodyRangesForTable:(const TSCERangeCoordinate *)table bodyRange:(const TSCERangeCoordinate *)range tableID:(unsigned __int16)d
{
  if (d != 0xFFFF)
  {
    dCopy = d;
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v11 = objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(self, v9, dCopy, v10);
    objc_msgSend_setTableRangesForTable_bodyRange_(v11, v12, table, range);
    v15 = objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(self, v13, dCopy, v14);
    objc_msgSend_setTableRangesForTable_bodyRange_(v15, v16, table, range);
    os_unfair_lock_unlock(lock);
    v18 = 0;

    sub_2212E22F0(&lock);
  }
}

- (void)setTableAndBodyRangesForTable:(const TSCERangeCoordinate *)table bodyRange:(const TSCERangeCoordinate *)range tableUID:(const TSKUIDStruct *)d
{
  v9 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, range);

  objc_msgSend_setTableAndBodyRangesForTable_bodyRange_tableID_(self, v8, table, range, v9);
}

- (BOOL)verifyTableAndBodyRangesForTable:(const TSKUIDStruct *)table
{
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, table, v3);
  v6 = 1;
  if (v5 != 0xFFFF)
  {
    v7 = v5;
    lock = &self->_dependencyGraphLock;
    os_unfair_lock_lock(&self->_dependencyGraphLock);
    v23 = 1;
    v10 = objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(self, v8, v7, v9);
    v14 = v10;
    if (v10)
    {
      valid = objc_msgSend_assertValidTableRanges(v10, v11, v12, v13, lock);
    }

    else
    {
      valid = 1;
    }

    v16 = objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(self, v11, v7, v13, lock);
    v20 = v16;
    v6 = (v16 == 0) & valid;
    if (v16 && ((valid ^ 1) & 1) == 0)
    {
      v6 = objc_msgSend_assertValidTableRanges(v16, v17, v18, v19);
    }

    os_unfair_lock_unlock(lock);
    v23 = 0;

    sub_2212E22F0(&lock);
  }

  return v6;
}

- (id)dgl_ownerDependenciesForOwnerID:(unsigned __int16)d
{
  dCopy = d;
  if (d == 0xFFFF)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &dCopy);
    if (v3)
    {
      v3 = v3[3];
    }
  }

  return v3;
}

- (id)dgl_ownerDependenciesForOwnerUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, d, v3);

  return objc_msgSend_dgl_ownerDependenciesForOwnerID_(self, v5, v6, v7);
}

- (void)detectAndRepairDirtyCellsAreOnLeafQueue
{
  v26 = 0;
  v27 = &v26;
  v28 = 0xB812000000;
  v29 = sub_2213749E0;
  v30 = sub_2213749EC;
  v31 = "0,0";
  TSCEReferenceSet::TSCEReferenceSet(&v32, self);
  os_unfair_lock_lock(&self->_evaluationInProgressLock);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2213749F4;
  v25[3] = &unk_2784634C8;
  v25[4] = &v26;
  sub_2212DFEC0(&self->_evaluationInProgressCells, v25);
  os_unfair_lock_unlock(&self->_evaluationInProgressLock);
  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v24 = 1;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_221374A04;
  v22[3] = &unk_2784634C8;
  v22[4] = &v26;
  sub_2212DFEC0(&self->_evaluationInProgressCells, v22);
  memset(v20, 0, sizeof(v20));
  v21 = 1065353216;
  objc_msgSend_addAllLeavesToSet_(self->_leafQueue, v3, v20, v4);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_221374A14;
  v19[3] = &unk_2784634C8;
  v19[4] = &v26;
  sub_2212DFEC0(v20, v19);
  for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
  {
    v9 = i[3];
    v10 = objc_msgSend_cellDependencies(v9, v5, v6, v7);

    if (v10)
    {
      v11 = objc_msgSend_cellDependencies(v9, v5, v6, v7);
      hasDirtyCells = objc_msgSend_hasDirtyCells(v11, v12, v13, v14);

      if (hasDirtyCells)
      {
        v16 = objc_msgSend_cellDependencies(v9, v5, v6, v7);
        objc_msgSend_detectAndRepairDirtyCellsAreOnLeafQueue_(v16, v17, (v27 + 6), v18);
      }
    }
  }

  os_unfair_lock_unlock(lock);
  v24 = 0;
  sub_221122744(v20);
  sub_2212E22F0(&lock);
  _Block_object_dispose(&v26, 8);
  TSCEReferenceSet::~TSCEReferenceSet(&v32);
}

- (void)assertDirtyPrecedentsCountConsistency
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v7 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v8) = 1;
  objc_msgSend_dgl_assertDirtyPrecedentsCountConsistency(self, v4, v5, v6, v7, v8);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v8) = 0;
  sub_2212E22F0(&v7);
}

- (BOOL)verifyAllOwnersAreKnown
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v4 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  os_unfair_lock_unlock(p_dependencyGraphLock);
  v5 = 0;
  sub_2212E22F0(&v4);
  return 1;
}

- (void)markEverythingClean
{
  p_dependencyGraphLock = &self->_dependencyGraphLock;
  v14 = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  LOBYTE(v15) = 1;
  next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v8 = next[3];
      v9 = objc_msgSend_cellDependencies(v8, v4, v5, v6, v14, v15);

      if (v9)
      {
        v10 = objc_msgSend_cellDependencies(v8, v4, v5, v6);
        objc_msgSend_markEverythingClean(v10, v11, v12, v13);
      }

      next = *next;
    }

    while (next);
    p_dependencyGraphLock = v14;
  }

  os_unfair_lock_unlock(p_dependencyGraphLock);
  LOBYTE(v15) = 0;
  sub_2212E22F0(&v14);
}

- (TSCEInternalCellReference)internalCellReferenceForCellRef:(const TSCECellRef *)ref
{
  tableUID = ref->_tableUID;
  v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, a2, &tableUID, v3);
  v6 = *&ref->coordinate & 0xFFFFFFFFFFFFLL;
  result.coordinate = v6;
  result.tableID = v5;
  result.reserved = HIWORD(v5);
  return result;
}

- (TSCECellRef)cellRefForInternalCellReference:(SEL)reference
{
  result = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, reference, a4->tableID, v4);
  retstr->coordinate = a4->coordinate;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

- (TSCEInternalRangeReference)internalRangeReferenceForRangeRef:(SEL)ref
{
  result = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self, ref, &a4->_tableUID, v4);
  *&retstr->var1 = 0;
  retstr->var0 = a4->range;
  retstr->var1 = result;
  return result;
}

- (TSCERangeRef)rangeRefForInternalRangeReference:(SEL)reference
{
  result = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, reference, a4->var1, v4);
  retstr->range = a4->var0;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v8;
  return result;
}

- (void)encodeToArchive:(void *)archive save31FormatAlso:(BOOL)also embiggenedFormatOnly:(BOOL)only archiver:(id)archiver
{
  onlyCopy = only;
  alsoCopy = also;
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v11 = *(archive + 15);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerIDMapArchive>(v12);
    *(archive + 15) = v11;
  }

  sub_22125F390(&self->_formulaOwnerIDMap, v11);
  v16 = atomic_load(&self->_numberOfFormulas);
  *(archive + 4) |= 2u;
  *(archive + 16) = v16;
  if (alsoCopy && ~onlyCopy && (objc_msgSend_containsAnyTable(self, v13, v14, v15) & 1) == 0)
  {
    for (i = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; i; i = *i)
    {
      v132 = i[3];
      v133 = objc_msgSend_spanningColumnDependencies(v132, v13, v17, v15);

      if (v133)
      {
        v137 = objc_msgSend_spanningColumnDependencies(v132, v134, v135, v136);
        v141 = objc_msgSend_tooLargeFor3_1FileFormat(v137, v138, v139, v140) ^ 1;
      }

      else
      {
        v141 = 1;
      }

      v142 = objc_msgSend_spanningRowDependencies(v132, v134, v135, v136);

      if (v142)
      {
        if (!v141)
        {
          goto LABEL_7;
        }

        v143 = objc_msgSend_spanningRowDependencies(v132, v13, v17, v15);
        v147 = objc_msgSend_tooLargeFor3_1FileFormat(v143, v144, v145, v146);

        if (v147)
        {
          goto LABEL_7;
        }
      }

      else if (!v141)
      {
        goto LABEL_7;
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_7:
    v18 = 0;
  }

  for (j = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; j; j = *j)
  {
    v20 = j[3];
    if (v20)
    {
      objc_msgSend_setSaveAsEmbiggenedFormat_(j[3], v13, onlyCopy, v15);
      v22 = *(archive + 14);
      if (!v22)
      {
        goto LABEL_15;
      }

      v23 = *(archive + 26);
      v24 = *v22;
      if (v23 >= *v22)
      {
        if (v24 == *(archive + 27))
        {
LABEL_15:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 96));
          v22 = *(archive + 14);
          v24 = *v22;
        }

        *v22 = v24 + 1;
        v25 = MEMORY[0x223DA0390](*(archive + 12));
        v26 = *(archive + 26);
        v27 = *(archive + 14) + 8 * v26;
        *(archive + 26) = v26 + 1;
        *(v27 + 8) = v25;
        objc_msgSend_setStrongReference_message_(archiverCopy, v28, v20, v25);
        continue;
      }

      *(archive + 26) = v23 + 1;
      objc_msgSend_setStrongReference_message_(archiverCopy, v21, v20, *&v22[2 * v23 + 2]);
    }
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v13, 6, archive);
  if (v18)
  {
    next = self->_formulaOwnerDependencies.__table_.__first_node_.__next_;
    if (next)
    {
      while (1)
      {
        v32 = next[3];
        v33 = *(next + 8);
        v149._lower = 0;
        v149._upper = 0;
        v149._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self, v29, v33, v30, v148);
        v149._upper = v34;
        v35 = *(archive + 5);
        if (!v35)
        {
          goto LABEL_25;
        }

        v36 = *(archive + 8);
        v37 = *v35;
        if (v36 >= *v35)
        {
          break;
        }

        *(archive + 8) = v36 + 1;
        v38 = *&v35[2 * v36 + 2];
LABEL_27:
        *(v38 + 16) |= 1u;
        v41 = *(v38 + 24);
        if (!v41)
        {
          v42 = *(v38 + 8);
          if (v42)
          {
            v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
          }

          v41 = MEMORY[0x223DA0300](v42);
          *(v38 + 24) = v41;
        }

        TSKUIDStruct::saveToMessage(&v149, v41);
        v46 = objc_msgSend_cellDependencies(v32, v43, v44, v45);

        if (v46)
        {
          *(v38 + 16) |= 2u;
          v50 = *(v38 + 32);
          if (!v50)
          {
            v51 = *(v38 + 8);
            if (v51)
            {
              v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
            }

            v50 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellDependenciesArchive>(v51);
            *(v38 + 32) = v50;
          }

          v52 = objc_msgSend_cellDependencies(v32, v47, v48, v49);
          objc_msgSend_encodeToArchive_(v52, v53, v50, v54);
        }

        v55 = objc_msgSend_rangeDependencies(v32, v47, v48, v49);

        if (v55)
        {
          *(v38 + 16) |= 4u;
          v59 = *(v38 + 40);
          if (!v59)
          {
            v60 = *(v38 + 8);
            if (v60)
            {
              v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
            }

            v59 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeDependenciesArchive>(v60);
            *(v38 + 40) = v59;
          }

          v61 = objc_msgSend_rangeDependencies(v32, v56, v57, v58);
          objc_msgSend_encodeToArchive_(v61, v62, v59, v63);
        }

        v64 = objc_msgSend_spanningColumnDependencies(v32, v56, v57, v58);

        if (v64)
        {
          *(v38 + 16) |= 0x10u;
          v68 = *(v38 + 56);
          if (!v68)
          {
            v69 = *(v38 + 8);
            if (v69)
            {
              v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
            }

            v68 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive>(v69);
            *(v38 + 56) = v68;
          }

          v70 = objc_msgSend_spanningColumnDependencies(v32, v65, v66, v67);
          objc_msgSend_encodeToArchive_(v70, v71, v68, v72);
        }

        v73 = objc_msgSend_spanningRowDependencies(v32, v65, v66, v67);

        if (v73)
        {
          *(v38 + 16) |= 0x20u;
          v77 = *(v38 + 64);
          if (!v77)
          {
            v78 = *(v38 + 8);
            if (v78)
            {
              v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
            }

            v77 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesArchive>(v78);
            *(v38 + 64) = v77;
          }

          v79 = objc_msgSend_spanningRowDependencies(v32, v74, v75, v76);
          objc_msgSend_encodeToArchive_(v79, v80, v77, v81);
        }

        v82 = objc_msgSend_volatileDependencies(v32, v74, v75, v76);

        if (v82)
        {
          *(v38 + 16) |= 8u;
          v86 = *(v38 + 48);
          if (!v86)
          {
            v87 = *(v38 + 8);
            if (v87)
            {
              v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
            }

            v86 = google::protobuf::Arena::CreateMaybeMessage<TSCE::VolatileDependenciesArchive>(v87);
            *(v38 + 48) = v86;
          }

          v88 = objc_msgSend_volatileDependencies(v32, v83, v84, v85);
          objc_msgSend_encodeToArchive_(v88, v89, v86, v90);
        }

        v91 = objc_msgSend_wholeOwnerDependencies(v32, v83, v84, v85);

        if (v91)
        {
          *(v38 + 16) |= 0x80u;
          v95 = *(v38 + 80);
          if (!v95)
          {
            v96 = *(v38 + 8);
            if (v96)
            {
              v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
            }

            v95 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WholeOwnerDependenciesArchive>(v96);
            *(v38 + 80) = v95;
          }

          v97 = objc_msgSend_wholeOwnerDependencies(v32, v92, v93, v94);
          objc_msgSend_encodeToArchive_(v97, v98, v95, v99);
        }

        v100 = objc_msgSend_errors(v32, v92, v93, v94);

        if (v100)
        {
          *(v38 + 16) |= 0x100u;
          v104 = *(v38 + 88);
          if (!v104)
          {
            v105 = *(v38 + 8);
            if (v105)
            {
              v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
            }

            v104 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellErrorsArchive>(v105);
            *(v38 + 88) = v104;
          }

          v106 = objc_msgSend_errors(v32, v101, v102, v103);
          objc_msgSend_encodeToArchive_(v106, v107, v104, v108);
        }

        v109 = objc_msgSend_formulaOwner(v32, v101, v102, v103);
        v148 = &unk_2835174A8;
        v110 = TSUProtocolCast();

        if (v110 && objc_msgSend_ownerIndex(v32, v111, v112, v113, &unk_2835174A8) != 100)
        {
          v119 = objc_msgSend_objectToArchiveInDependencyTracker(v110, v114, v115, v116);
          if (v119)
          {
            *(v38 + 16) |= 0x40u;
            v120 = *(v38 + 72);
            if (!v120)
            {
              v121 = *(v38 + 8);
              if (v121)
              {
                v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
              }

              v120 = MEMORY[0x223DA0390](v121);
              *(v38 + 72) = v120;
            }

            objc_msgSend_setWeakReference_message_(archiverCopy, v117, v119, v120);
          }

          else
          {
            v122 = MEMORY[0x277D81150];
            v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "[TSCEDependencyTracker encodeToArchive:save31FormatAlso:embiggenedFormatOnly:archiver:]", v118);
            v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v125);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v127, v123, v126, 6216, 0, "failed to get an object to archive for a formula owner that needs registration. Registration failure at unarchive time is likely.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v128, v129, v130);
          }
        }

        next = *next;
        if (!next)
        {
          goto LABEL_84;
        }
      }

      if (v37 == *(archive + 9))
      {
LABEL_25:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
        v35 = *(archive + 5);
        v37 = *v35;
      }

      *v35 = v37 + 1;
      v38 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaOwnerInfoArchive>(*(archive + 3));
      v39 = *(archive + 8);
      v40 = *(archive + 5) + 8 * v39;
      *(archive + 8) = v39 + 1;
      *(v40 + 8) = v38;
      goto LABEL_27;
    }
  }

LABEL_84:
}

- (TSCEDependencyTracker)initWithCalcEngine:(id)engine archive:(const void *)archive unarchiver:(id)unarchiver
{
  engineCopy = engine;
  unarchiverCopy = unarchiver;
  v12 = objc_msgSend_initWithCalcEngine_(self, v10, engineCopy, v11);
  v16 = v12;
  if (v12)
  {
    v17 = *(archive + 8);
    if (*(archive + 16))
    {
      sub_22125F640(v12 + 24, *(archive + 15));
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(engineCopy, v13, v14, v15);
      if (v17 >= 1)
      {
        v18 = 8;
        v19 = v17;
        do
        {
          v20 = TSKUIDStruct::loadFromMessage();
          sub_22125FA70(&v16->_formulaOwnerIDMap, v20, v21);
          v18 += 8;
          --v19;
        }

        while (v19);
      }
    }

    v22 = *(archive + 26);
    if (v22)
    {
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = sub_221375AB0;
      v95[3] = &unk_27845D8D8;
      v96 = v16;
      v23 = unarchiverCopy;
      v24 = objc_opt_class();
      objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v23, v25, archive + 96, v24, 0, v95);
    }

    else
    {
      p_dependencyGraphLock = &v16->_dependencyGraphLock;
      v93 = &v16->_dependencyGraphLock;
      os_unfair_lock_lock(&v16->_dependencyGraphLock);
      v94 = 1;
      if (v17 >= 1)
      {
        v81 = engineCopy;
        v27 = v17;
        v28 = 8;
        v80 = v17;
        do
        {
          v29 = *(*(archive + 5) + v28);
          v91 = 0;
          v92 = 0;
          v91 = TSKUIDStruct::loadFromMessage();
          v92 = v30;
          if (v91 | v30)
          {
            v90 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(v16, v30, &v91, v31);
            if (sub_2210C3024(&v16->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v90))
            {
              v97[0] = &v90;
              v35 = sub_221376DD0(&v16->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v90, &unk_2217E1838, v97)[3];
            }

            else
            {
              v36 = [TSCEFormulaOwnerDependencies alloc];
              v40 = objc_msgSend_context(v16->_calcEngine, v37, v38, v39);
              v35 = objc_msgSend_initWithContext_dependencyTracker_ownerID_ownerUID_owner_ownerIndex_(v36, v41, v40, v16, v90, &v91, 0, 0);

              v97[0] = &v90;
              v42 = sub_221376DD0(&v16->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v90, &unk_2217E1838, v97);
              objc_storeStrong(v42 + 3, v35);
            }

            v43 = *(v29 + 16);
            if ((v43 & 2) != 0)
            {
              v44 = objc_msgSend_cellDependencies(v35, v32, v33, v34);
              v47 = v44;
              if (*(v29 + 32))
              {
                objc_msgSend_readFromArchive_(v44, v45, *(v29 + 32), v46);
              }

              else
              {
                objc_msgSend_readFromArchive_(v44, v45, &TSCE::_CellDependenciesArchive_default_instance_, v46);
              }

              v43 = *(v29 + 16);
            }

            if ((v43 & 4) != 0)
            {
              v48 = objc_msgSend_rangeDependencies(v35, v32, v33, v34);
              v51 = v48;
              if (*(v29 + 40))
              {
                objc_msgSend_readFromArchive_(v48, v49, *(v29 + 40), v50);
              }

              else
              {
                objc_msgSend_readFromArchive_(v48, v49, &TSCE::_RangeDependenciesArchive_default_instance_, v50);
              }

              v43 = *(v29 + 16);
            }

            if ((v43 & 0x10) != 0)
            {
              v52 = objc_msgSend_spanningColumnDependencies(v35, v32, v33, v34);
              v55 = v52;
              if (*(v29 + 56))
              {
                objc_msgSend_readFromArchive_(v52, v53, *(v29 + 56), v54);
              }

              else
              {
                objc_msgSend_readFromArchive_(v52, v53, &TSCE::_SpanningDependenciesArchive_default_instance_, v54);
              }

              v43 = *(v29 + 16);
            }

            if ((v43 & 0x20) != 0)
            {
              v56 = objc_msgSend_spanningRowDependencies(v35, v32, v33, v34);
              v59 = v56;
              if (*(v29 + 64))
              {
                objc_msgSend_readFromArchive_(v56, v57, *(v29 + 64), v58);
              }

              else
              {
                objc_msgSend_readFromArchive_(v56, v57, &TSCE::_SpanningDependenciesArchive_default_instance_, v58);
              }

              v43 = *(v29 + 16);
            }

            if ((v43 & 8) != 0)
            {
              v60 = objc_msgSend_volatileDependencies(v35, v32, v33, v34);
              v63 = v60;
              if (*(v29 + 48))
              {
                objc_msgSend_readFromArchive_(v60, v61, *(v29 + 48), v62);
              }

              else
              {
                objc_msgSend_readFromArchive_(v60, v61, &TSCE::_VolatileDependenciesArchive_default_instance_, v62);
              }

              v43 = *(v29 + 16);
            }

            if ((v43 & 0x80) != 0)
            {
              v64 = objc_msgSend_wholeOwnerDependencies(v35, v32, v33, v34);
              v67 = v64;
              if (*(v29 + 80))
              {
                objc_msgSend_readFromArchive_(v64, v65, *(v29 + 80), v66);
              }

              else
              {
                objc_msgSend_readFromArchive_(v64, v65, &TSCE::_WholeOwnerDependenciesArchive_default_instance_, v66);
              }

              v43 = *(v29 + 16);
            }

            if ((v43 & 0x100) != 0)
            {
              v97[0] = &v90;
              v68 = sub_221376DD0(&v16->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v90, &unk_2217E1838, v97);
              v72 = objc_msgSend_errors(v68[3], v69, v70, v71);
              v75 = v72;
              if (*(v29 + 88))
              {
                objc_msgSend_readFromArchive_(v72, v73, *(v29 + 88), v74);
              }

              else
              {
                objc_msgSend_readFromArchive_(v72, v73, &TSCE::_CellErrorsArchive_default_instance_, v74);
              }

              v43 = *(v29 + 16);
            }

            if ((v43 & 0x40) != 0)
            {
              v76 = *(v29 + 72);
              v88[0] = MEMORY[0x277D85DD0];
              v88[1] = 3221225472;
              v88[2] = sub_221375E58;
              v88[3] = &unk_2784634F0;
              v89 = v35;
              sub_221375DAC(unarchiverCopy, v76, &unk_2835174A8, v88);
            }
          }

          v28 += 8;
          --v27;
        }

        while (v27);
        p_dependencyGraphLock = v93;
        LODWORD(v17) = v80;
        engineCopy = v81;
        v22 = 0;
      }

      os_unfair_lock_unlock(p_dependencyGraphLock);
      v94 = 0;
      sub_2212E22F0(&v93);
    }

    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_221375E64;
    v82[3] = &unk_278463518;
    v85 = v22;
    v83 = v16;
    v84 = unarchiverCopy;
    v86 = v17;
    v87 = 1;
    objc_msgSend_addFinalizeHandler_(v84, v77, v82, v78);
  }

  return v16;
}

- (void)registerFormulaOwners
{
  v68 = *MEMORY[0x277D85DE8];
  v50 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = self->_formulaOwnersToRegister;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v62, v67, 16);
  if (v6)
  {
    v7 = *v63;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = objc_msgSend_objectToArchiveInDependencyTracker(v9, v10, v11, v12);
        }

        else
        {
          v13 = v9;
        }

        v14 = v13;
        v49 = &unk_2835174A8;
        v15 = TSUProtocolCast();
        v19 = v15;
        if (v15)
        {
          if (objc_msgSend_registerLast(v15, v16, v17, v18, &unk_2835174A8))
          {
            objc_msgSend_addObject_(v50, v20, v19, v22);
          }

          else
          {
            calcEngine = self->_calcEngine;
            v24 = objc_msgSend_ownerKind(v19, v20, v21, v22);
            objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v19, v25, calcEngine, v24);
          }
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v62, v67, 16);
    }

    while (v6);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v27 = v50;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v58, v66, 16);
  if (v32)
  {
    v33 = *v59;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v35 = *(*(&v58 + 1) + 8 * j);
        v36 = self->_calcEngine;
        v37 = objc_msgSend_ownerKind(v35, v29, v30, v31, v49);
        objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v35, v38, v36, v37);
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v58, v66, 16);
    }

    while (v32);
  }

  sub_221260060(&self->_formulaOwnerIDMap._lock, v56);
  for (k = v57; k; k = *k)
  {
    v40 = *(k + 8);
    self->_hasOwnerIdsToUnregister = 1;
    LOWORD(lock) = v40;
    HIDWORD(lock) = 0;
    sub_221376524(&self->_ownerIdsToUnregister, &lock);
  }

  lock = &self->_dependencyGraphLock;
  os_unfair_lock_lock(&self->_dependencyGraphLock);
  v55 = 1;
  for (m = self->_formulaOwnerDependencies.__table_.__first_node_.__next_; m; m = *m)
  {
    v45 = m[3];
    if ((objc_msgSend_isRegisteredWithCalcEngine(v45, v41, v42, v43, v49) & 1) == 0)
    {
      v46 = objc_msgSend_ownerIndex(v45, v41, v42, v43);
      if (v46 != 7 && v46 != 200)
      {
        v47 = *(m + 8);
        if (!sub_2212600E4(&self->_formulaOwnerIDMap, *(m + 8)))
        {
          sub_22125FF5C(&self->_formulaOwnerIDMap, v47);
          self->_hasOwnerIdsToUnregister = 1;
          LOWORD(v53) = v47;
          HIDWORD(v53) = 0;
          sub_221376524(&self->_ownerIdsToUnregister, &v53);
        }
      }
    }
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_2213765F8;
  v52[3] = &unk_278463540;
  v52[4] = self;
  sub_2212601E0(&self->_formulaOwnerIDMap._lock, v52);
  os_unfair_lock_unlock(lock);
  v55 = 0;
  formulaOwnersToRegister = self->_formulaOwnersToRegister;
  self->_formulaOwnersToRegister = 0;

  sub_2212E22F0(&lock);
  sub_2210BDEC0(v56);
}

- (void)addSubOwnerAliasesForUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  v62 = objc_msgSend_hiddenStateForRowsOwnerUID(upgradeCopy, v5, v6, v7);
  v63 = v8;
  *&v61 = objc_msgSend_nextHiddenStateForRowsOwnerUID(upgradeCopy, v8, v9, v10);
  *(&v61 + 1) = v11;
  sub_221260314(&self->_formulaOwnerIDMap._lock, &v62, &v61);
  v62 = objc_msgSend_hiddenStateForColumnsOwnerUID(upgradeCopy, v12, v13, v14);
  v63 = v15;
  *&v61 = objc_msgSend_nextHiddenStateForColumnsOwnerUID(upgradeCopy, v15, v16, v17);
  *(&v61 + 1) = v18;
  sub_221260314(&self->_formulaOwnerIDMap._lock, &v62, &v61);
  v62 = objc_msgSend_conditionalStyleOwnerUID(upgradeCopy, v19, v20, v21);
  v63 = v22;
  *&v61 = objc_msgSend_nextConditionalStyleOwnerUID(upgradeCopy, v22, v23, v24);
  *(&v61 + 1) = v25;
  sub_221260314(&self->_formulaOwnerIDMap._lock, &v62, &v61);
  v62 = objc_msgSend_sortRuleReferenceTrackerOwnerUID(upgradeCopy, v26, v27, v28);
  v63 = v29;
  *&v61 = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(upgradeCopy, v29, v30, v31);
  *(&v61 + 1) = v32;
  sub_221260314(&self->_formulaOwnerIDMap._lock, &v62, &v61);
  v62 = objc_msgSend_mergeOwnerUID(upgradeCopy, v33, v34, v35);
  v63 = v36;
  *&v61 = objc_msgSend_nextMergeOwnerUID(upgradeCopy, v36, v37, v38);
  *(&v61 + 1) = v39;
  sub_221260314(&self->_formulaOwnerIDMap._lock, &v62, &v61);
  v62 = objc_msgSend_pencilAnnotationOwnerUID(upgradeCopy, v40, v41, v42);
  v63 = v43;
  *&v61 = objc_msgSend_nextPencilAnnotationOwnerUID(upgradeCopy, v43, v44, v45);
  *(&v61 + 1) = v46;
  sub_221260314(&self->_formulaOwnerIDMap._lock, &v62, &v61);
  v62 = objc_msgSend_categoryAggregatesOwnerUID(upgradeCopy, v47, v48, v49);
  v63 = v50;
  *&v61 = objc_msgSend_nextCategoryAggregatesOwnerUID(upgradeCopy, v50, v51, v52);
  *(&v61 + 1) = v53;
  sub_221260314(&self->_formulaOwnerIDMap._lock, &v62, &v61);
  v62 = objc_msgSend_groupByUID(upgradeCopy, v54, v55, v56);
  v63 = v57;
  *&v61 = objc_msgSend_nextGroupByUID(upgradeCopy, v57, v58, v59);
  *(&v61 + 1) = v60;
  sub_221260314(&self->_formulaOwnerIDMap._lock, &v62, &v61);
}

- (void)upgradeOneOwnerUID:(const TSKUIDStruct *)d updatedOwnerUID:(const TSKUIDStruct *)iD baseOwnerUID:(const TSKUIDStruct *)uID ownerKind:(unsigned __int16)kind
{
  kindCopy = kind;
  if (*d != *iD)
  {
    IfMissing = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(self, a2, d, 0);
    v15 = IfMissing;
    if (IfMissing != 0xFFFF)
    {
      sub_221260398(&self->_formulaOwnerIDMap, IfMissing, iD);
      v11 = sub_2210C3024(&self->_formulaOwnerDependencies.__table_.__bucket_list_.__ptr_, &v15);
      if (v11)
      {
        v12 = v11[3];
        v14 = v12;
        if (v12)
        {
          objc_msgSend_resetOwnerUIDForUpgrade_forBaseOwner_ownerKind_(v12, v13, iD, uID, kindCopy);
        }
      }
    }
  }
}

- (void)upgradeToSubOwnerUIDForOwners:(id)owners
{
  ownersCopy = owners;
  v8 = objc_msgSend_tableUID(ownersCopy, v5, v6, v7);
  v10 = v9;
  if (v8 != objc_msgSend_nextTableUID(ownersCopy, v9, v11, v12) || v10 != v13)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCEDependencyTracker upgradeToSubOwnerUIDForOwners:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 6530, 0, "Not expecting tableUID to be changing");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v85[0] = objc_msgSend_nextTableUID(ownersCopy, v13, v14, v15);
  v85[1] = v25;
  v83 = objc_msgSend_hiddenStateForRowsOwnerUID(ownersCopy, v25, v26, v27);
  v84 = v28;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(ownersCopy, v28, v29, v30);
  v82 = v31;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v31, &v83, &HiddenStateForRowsOwnerUID, v85, 4);
  v83 = objc_msgSend_hiddenStateForColumnsOwnerUID(ownersCopy, v32, v33, v34);
  v84 = v35;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(ownersCopy, v35, v36, v37);
  v82 = v38;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v38, &v83, &HiddenStateForRowsOwnerUID, v85, 11);
  v83 = objc_msgSend_conditionalStyleOwnerUID(ownersCopy, v39, v40, v41);
  v84 = v42;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(ownersCopy, v42, v43, v44);
  v82 = v45;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v45, &v83, &HiddenStateForRowsOwnerUID, v85, 3);
  v83 = objc_msgSend_sortRuleReferenceTrackerOwnerUID(ownersCopy, v46, v47, v48);
  v84 = v49;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(ownersCopy, v49, v50, v51);
  v82 = v52;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v52, &v83, &HiddenStateForRowsOwnerUID, v85, 6);
  v83 = objc_msgSend_mergeOwnerUID(ownersCopy, v53, v54, v55);
  v84 = v56;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextMergeOwnerUID(ownersCopy, v56, v57, v58);
  v82 = v59;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v59, &v83, &HiddenStateForRowsOwnerUID, v85, 5);
  v83 = objc_msgSend_pencilAnnotationOwnerUID(ownersCopy, v60, v61, v62);
  v84 = v63;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(ownersCopy, v63, v64, v65);
  v82 = v66;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v66, &v83, &HiddenStateForRowsOwnerUID, v85, 10);
  v83 = objc_msgSend_categoryAggregatesOwnerUID(ownersCopy, v67, v68, v69);
  v84 = v70;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(ownersCopy, v70, v71, v72);
  v82 = v73;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v73, &v83, &HiddenStateForRowsOwnerUID, v85, 9);
  v83 = objc_msgSend_groupByUID(ownersCopy, v74, v75, v76);
  v84 = v77;
  HiddenStateForRowsOwnerUID = objc_msgSend_nextGroupByUID(ownersCopy, v77, v78, v79);
  v82 = v80;
  objc_msgSend_upgradeOneOwnerUID_updatedOwnerUID_baseOwnerUID_ownerKind_(self, v80, &v83, &HiddenStateForRowsOwnerUID, v85, 8);
}

- (TSCEInternalCellReference)currentCellBeingModified
{
  v2 = *&self->_currentCellBeingModified.tableID;
  coordinate = self->_currentCellBeingModified.coordinate;
  result.coordinate = coordinate;
  result.tableID = v2;
  result.reserved = HIWORD(v2);
  return result;
}

- (id).cxx_construct
{
  sub_22125F320(&self->_formulaOwnerIDMap);
  self->_formulaOwnerDependencies.__table_.__bucket_list_ = 0u;
  *&self->_formulaOwnerDependencies.__table_.__first_node_.__next_ = 0u;
  self->_formulaOwnerDependencies.__table_.__max_load_factor_ = 1.0;
  self->_evaluationInProgressCells._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_evaluationInProgressCells._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_evaluationInProgressCells._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_modifiedCellsToDirtyQueue.__end_ = 0;
  self->_modifiedCellsToDirtyQueue.__cap_ = 0;
  self->_modifiedCellsToDirtyQueue.__begin_ = 0;
  self->_corruptedCellRefs._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_corruptedCellRefs._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_corruptedCellRefs._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_ownerIdsToUnregister.__end_ = 0;
  self->_ownerIdsToUnregister.__cap_ = 0;
  self->_ownerIdsToUnregister.__begin_ = 0;
  self->_ownerIDsWithRecordsToPrune.__table_.__bucket_list_ = 0u;
  *&self->_ownerIDsWithRecordsToPrune.__table_.__first_node_.__next_ = 0u;
  self->_ownerIDsWithRecordsToPrune.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end