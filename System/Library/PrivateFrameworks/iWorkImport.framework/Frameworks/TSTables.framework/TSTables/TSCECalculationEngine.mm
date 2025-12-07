@interface TSCECalculationEngine
+ (void)resumeEvaluationIfNotTerminated;
- (BOOL)allCellsAreClean;
- (BOOL)allCellsAreCleanInOwner:(TSKUIDStruct)owner;
- (BOOL)allCellsAreCleanNonBlocking;
- (BOOL)duringSubOwnerUIDUpgrade;
- (BOOL)hasBackgroundTasks;
- (BOOL)hasDisallowedHeaderIndexingForTableUID:(const TSKUIDStruct *)d;
- (BOOL)hasMaxNumFormulas;
- (BOOL)hasVerticalSpillingCellsInTable:(const TSKUIDStruct *)table inRows:(id)rows;
- (BOOL)isArrayFormulaCell:(const TSCECellRef *)cell;
- (BOOL)rangeIsWithinTable:(const TSCERangeRef *)table;
- (BOOL)recalcHoldingReadLock;
- (BOOL)referenceIsValid:(const TSCERangeRef *)valid;
- (BOOL)referenceIsValidIncludingSheet:(const TSCERangeRef *)sheet;
- (BOOL)referenceWasGuaranteedCleanAtRecalcCycleStart:(const TSCEAnyRef *)start;
- (BOOL)stopEvaluatingNewLeaves;
- (BOOL)verifyTableAndBodyRangesForTable:(const TSKUIDStruct *)table;
- (TSCECalculationEngine)initWithContext:(id)context;
- (TSCECellCoordSet)allFormulaCoordsInOwner:(SEL)owner;
- (TSCECellCoordSet)cellCoordinatesNeedingExcelImportForTable:(SEL)table;
- (TSCECellCoordSet)cellCoordsWithError:(SEL)error inTable:(int64_t)table;
- (TSCECellCoordSet)cellsInACycleInOwner:(SEL)owner;
- (TSCECellCoordSet)spillOriginsInRange:(SEL)range;
- (TSCECellCoordSet)verticalSpillingCellsInTable:(SEL)table;
- (TSCECellCoordSet)verticalSpillingCellsInTable:(SEL)table inRows:(const TSKUIDStruct *)rows;
- (TSCECellRef)rootCauseForErrorInCell:(SEL)cell atRootCell:(const TSCECellRef *)rootCell;
- (TSCECellRefSet)cellDependentsOfCell:(SEL)cell;
- (TSCECellRefSet)spillOriginsSpillingIntoRange:(SEL)range inOwner:(const TSUCellRect *)owner;
- (TSCECellRefSet)spillingCellsForFormulaAt:(SEL)at;
- (TSCECellRefSet)spillingCellsInRange:(SEL)range inOwner:(const TSUCellRect *)owner;
- (TSCECellRefSet)spillingCellsViaDependenciesInRange:(SEL)range inOwner:(const TSUCellRect *)owner;
- (TSCEInternalCellRefSet)corruptCellRefs;
- (TSCEInternalCellRefSet)internalSpillingCellsForFormulaAt:(SEL)at;
- (TSCENamedReferenceManager)namedReferenceManager;
- (TSCERangeRef)aggregateRangeRefForCategoryRef:(SEL)ref;
- (TSCERecalculationState)updateCalculatedPrecedents:(id)precedents forFormula:(id)formula atCellRef:(const TSCECellRef *)ref withState:(TSCERecalculationState)state;
- (TSCEReferenceSet)precedentsOfCell:(SEL)cell;
- (TSCETableResolverWrapper)p_tableOrLinkedResolverWrapperForTableUID:(const TSKUIDStruct *)d;
- (TSCETableResolverWrapper)p_tableResolverWrapperForRefResolver:(id)resolver;
- (TSCETableResolverWrapper)tableResolverWrapperForTableID:(unsigned __int16)d;
- (TSKAccessController)accessController;
- (TSKChangeNotifier)changeNotifier;
- (TSKUIDStruct)formulaOwnerUIDForInternalFormulaOwnerID:(unsigned __int16)d;
- (TSKUIDStruct)mapOwnerUID:(const TSKUIDStruct *)d;
- (TSKUIDStruct)ownerUIDForLegacyGlobalID:(id)d registeringIfNeeded:(BOOL)needed;
- (TSKUIDStruct)popNextTableToBeginTrackingNames;
- (TSKUIDStruct)popNextTableToEndTrackingNames;
- (TSKUIDStruct)uuidForTableUID:(TSKUIDStruct)d andIndex:(unsigned int)index direction:(BOOL)direction;
- (TSTHeaderNameMgr)headerNameMgr;
- (TSTMultiTableRemapper)currentTableIdRemapper;
- (TSTRefNamer)namer;
- (TSTRefParser)refParser;
- (TSUCellCoord)conflictWinnerForSpillRect1:(const TSUCellRect *)rect1 spillOrigin2:(const TSUCellCoord *)origin2 inTable:(const TSKUIDStruct *)table;
- (TSUCellRect)cachedSpillRangeForSpillingOriginCellRef:(const TSCECellRef *)ref outError:(id *)error;
- (TSUCellRect)spillingRangeForFormulaAt:(const TSCECellRef *)at;
- (id).cxx_construct;
- (id)currentTimeZoneCalendar;
- (id)documentLocale;
- (id)documentRoot;
- (id)emptyReferenceSetWrapper;
- (id)evaluateSynchedWithCalcEngineWithFormula:(id)formula evalContext:(id)context;
- (id)extendTableUIDHistoryWithRewrite:(id)rewrite;
- (id)legacyGlobalIDStringToOwnerUIDMap;
- (id)newTableResolverForResolver:(id)resolver;
- (id)openTransaction;
- (id)ownerForOwnerUID:(TSKUIDStruct)d;
- (id)ownerForUUIDBytes:(unsigned __int8)bytes[16];
- (id)resolverContainerMatchingName:(id)name;
- (id)resolverContainerMatchingName:(id)name inDocumentRoot:(id)root;
- (id)resolverForCellRef:(id)ref;
- (id)resolverForTableID:(unsigned __int16)d;
- (id)resolverForTableUID:(TSKUIDStruct)d;
- (id)resolverMatchingName:(id)name contextResolver:(id)resolver;
- (id)resolverMatchingName:(id)name inDocumentRoot:(id)root contextResolver:(id)resolver;
- (id)resolverMatchingNameWithContextContainer:(id)container contextContainerName:(id)name;
- (id)resolverMatchingNameWithContextContainer:(id)container inDocumentRoot:(id)root contextContainerName:(id)name;
- (id)rewriteSpecStack;
- (id)tableOrLinkedResolverForTableUID:(const TSKUIDStruct *)d;
- (id)tableResolverForRefResolver:(id)resolver;
- (id)tableResolverForTableID:(unsigned __int16)d;
- (id)tableResolverForTableUID:(const TSKUIDStruct *)d;
- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid hidingActionMask:(unsigned __int8)mask error:(id *)error;
- (int)forwardRegisterOwnerWithOwnerUID:(TSKUIDStruct)d legacyGlobalID:(id)iD;
- (int)preferredDispatchQueueWidth;
- (int)registerOwnerWithOwnerUID:(TSKUIDStruct)d owner:(id)owner referenceResolver:(id)resolver baseOwnerUID:(TSKUIDStruct)iD ownerKind:(unsigned __int16)kind;
- (int)threadState;
- (unint64_t)dirtyCellCountInOwner:(const TSKUIDStruct *)owner;
- (unint64_t)errorCountForOwner:(const TSKUIDStruct *)owner;
- (unsigned)aggregateTypeForCategoryRef:(id)ref;
- (unsigned)columnWidthInBodyOfTable:(id)table;
- (unsigned)ownerKindForOwnerUID:(TSKUIDStruct)d;
- (unsigned)rowHeightInBodyOfTable:(id)table;
- (vector<TSCECategoryRef)categoryRefsForSpanningCategoryRef:(TSCECalculationEngine *)self;
- (vector<TSCECellRef,)cellRefsForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid;
- (vector<TSCECellRef,)unorderedCellRefsForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid;
- (vector<TSCEValue)valuesForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid hidingActionMask:(id)mask error:(const TSKUIDStruct *)error;
- (vector<TSUCellCoord,)formulaCoordsInRange:(TSCECalculationEngine *)self inOwner:(SEL)owner;
- (vector<TSUCellCoord,)formulaCoordsReferringToRange:(TSCECalculationEngine *)self fromOwner:(SEL)owner skipSpanning:(const TSCERangeRef *)spanning;
- (void)addAllFormulasCleanObserver:(id)observer;
- (void)addCalculationStateObserver:(id)observer;
- (void)assertAt:(id)at nonCalcEngineException:(id)exception evaluatingFormula:(id)formula;
- (void)assertNonCalcEngineException:(id)exception exception:(id)a4 evaluatingFormula:(id)formula;
- (void)beginBatchingGroupCellDirtying;
- (void)beginSuppressingWillModifyCalls;
- (void)beginTrackingNamesInTableForLegacyNRM:(const TSKUIDStruct *)m;
- (void)beginUpgradingFormulasMode;
- (void)blockUntilRecalcIsCompleteWithTimeout:(double)timeout;
- (void)clearDisallowHeaderIndexingForTableUID:(const TSKUIDStruct *)d;
- (void)clearErrorAndWarningsForCell:(const TSCECellRef *)cell;
- (void)clearErrorAndWarningsForCells:(const void *)cells;
- (void)clearPreviousLocaleIdentifier;
- (void)clearSpillSizeForCell:(const TSCECellRef *)cell;
- (void)clearSpillSizesInRange:(const TSCERangeRef *)range;
- (void)closeTransaction:(id)transaction;
- (void)commonInit;
- (void)dealloc;
- (void)dirtyCellsForColumnRange:(_NSRange)range fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)tableRange;
- (void)dirtyCellsForInsertionOfColumns:(_NSRange)columns forTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range headerRange:(TSCERangeCoordinate)headerRange;
- (void)dirtyCellsForInsertionOfRows:(_NSRange)rows forTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range headerRange:(TSCERangeCoordinate)headerRange;
- (void)dirtyCellsForMergingRange:(TSCERangeCoordinate)range forTable:(const TSKUIDStruct *)table headerRowRange:(TSCERangeCoordinate)rowRange headerColumnRange:(TSCERangeCoordinate)columnRange;
- (void)dirtyCellsForRemovalOfColumns:(_NSRange)columns fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range;
- (void)dirtyCellsForRemovalOfRows:(_NSRange)rows fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range;
- (void)dirtyCellsForRowRange:(_NSRange)range fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)tableRange;
- (void)dirtyCellsForUpgrade;
- (void)dispatchOnePhase:(void *)phase;
- (void)documentDidLoad;
- (void)documentLocaleDidChange;
- (void)endBatchingGroupCellDirtying;
- (void)endTrackingNamesInTableForLegacyNRM:(const TSKUIDStruct *)m;
- (void)endUpgradingFormulasMode;
- (void)headerStateOfTableChanged:(TSKUIDStruct)changed;
- (void)headerStateOfTableChanged:(TSKUIDStruct)changed changedRows:(BOOL)rows;
- (void)initializeDispatchObjects;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadInProgressLeaves:(int)leaves;
- (void)markAllExternalGroupByRefsDirty:(const TSKUIDStruct *)dirty;
- (void)markAllFunctionsAsDirty;
- (void)markAllVolatileFunctionsAsDirty;
- (void)markCellRefAsDirty:(const TSCECellRef *)dirty;
- (void)markCellRefSetAsDirty:(const void *)dirty;
- (void)markCellRefsAsDirty:(id)dirty;
- (void)markCoordsDirty:(const void *)dirty inInternalOwner:(unsigned __int16)owner;
- (void)markCoordsDirty:(const void *)dirty inOwner:(const TSKUIDStruct *)owner;
- (void)markDateTimeVolatileFunctionsAsDirtyForCurrentDateTime;
- (void)markOnlyDependentsDirty:(const TSCECellRef *)dirty;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty;
- (void)markRemoteDataVolatileFunctionsAsDirty;
- (void)notifyObserversOfRecalcProgress;
- (void)pauseRecalculation;
- (void)pauseRecalculationForBlock:(id)block;
- (void)pauseRecalculationSometimeSoon;
- (void)performBackgroundTasksWithWriteLock;
- (void)popRewriteSpec:(id)spec;
- (void)pushRewriteSpec:(id)spec;
- (void)recalcHoldingWriteLock;
- (void)recalcPhaseHoldingReadLock:(void *)lock;
- (void)recalculateWithTimeout:(double)timeout;
- (void)registerOwners;
- (void)removeAllFormulasCleanObserver:(id)observer;
- (void)removeAllFormulasFromOwner:(const TSKUIDStruct *)owner;
- (void)removeCalculationStateObserver:(id)observer;
- (void)removeFormulasAt:(const void *)at;
- (void)removeFormulasFromRange:(const TSCERangeRef *)range;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceRemoteDataKeysInterestedIn:(id)in forCell:(const TSCECellRef *)cell;
- (void)replaceSpillError:(id)error ifCachedforSpillingOriginCellRef:(const TSCECellRef *)ref;
- (void)resetFormulaAt:(const TSCECellRef *)at;
- (void)resetNRM;
- (void)resetSpillingFormulasInRange:(const TSCERangeRef *)range;
- (void)resumeRecalculation;
- (void)resumeRecalculationForBlock:(id)block;
- (void)rollbackTableUIDHistoryWithRewriteInfo:(id)info;
- (void)saveToArchiver:(id)archiver;
- (void)scheduleDetectAndRepairConsistencyViolations;
- (void)scheduleRepairingSpanningFormulasInOwner:(const TSKUIDStruct *)owner;
- (void)setCurrentDate:(id)date;
- (void)setCurrentDate:(id)date timeZone:(id)zone markVolatilesDirty:(BOOL)dirty;
- (void)setCurrentTableIdRemapper:(id)remapper;
- (void)setCurrentTimeZone:(id)zone;
- (void)setDisallowHeaderIndexingForTableUID:(const TSKUIDStruct *)d;
- (void)setError:(id)error warnings:(id)warnings forCell:(const TSCECellRef *)cell;
- (void)setOwnerUIDForLegacyGlobalID:(id)d ownerUID:(const TSKUIDStruct *)iD;
- (void)setRewritingMinion:(id)minion;
- (void)setTableRange:(TSCERangeCoordinate)range bodyRange:(TSCERangeCoordinate)bodyRange forTableUID:(const TSKUIDStruct *)d;
- (void)startRecalcTaskIfNecessary;
- (void)startRecalculation;
- (void)startRecalculationTask;
- (void)superWillModify;
- (void)unregisterOwner:(TSKUIDStruct)owner;
- (void)updateEmbiggenedTableCache;
- (void)updateErrorAndWarnings:(id)warnings forCell:(const TSCECellRef *)cell;
- (void)willClose;
- (void)willModify;
@end

@implementation TSCECalculationEngine

- (id)legacyGlobalIDStringToOwnerUIDMap
{
  legacyGlobalIDStringToOwnerUIDMap = self->_legacyGlobalIDStringToOwnerUIDMap;
  if (!legacyGlobalIDStringToOwnerUIDMap)
  {
    v4 = objc_opt_new();
    v5 = self->_legacyGlobalIDStringToOwnerUIDMap;
    self->_legacyGlobalIDStringToOwnerUIDMap = v4;

    legacyGlobalIDStringToOwnerUIDMap = self->_legacyGlobalIDStringToOwnerUIDMap;
  }

  return legacyGlobalIDStringToOwnerUIDMap;
}

- (void)setCurrentDate:(id)date
{
  dateCopy = date;
  objc_msgSend_willModify(self, v5, v6, v7);
  currentDate = self->_currentDate;
  self->_currentDate = dateCopy;
}

- (void)setCurrentDate:(id)date timeZone:(id)zone markVolatilesDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  dateCopy = date;
  zoneCopy = zone;
  v13 = objc_msgSend_currentDate(self, v10, v11, v12);
  v17 = objc_msgSend_currentTimeZone(self, v14, v15, v16);
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v21 = objc_msgSend_currentTimeZoneCalendar(self, v18, v19, v20);
  v24 = v21;
  if (v13 && dirtyCopy)
  {
    objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v21, v22, v13, &v46, &v45, &v44, &v43, &v42, &v41);
  }

  objc_msgSend_setCurrentDate_(self, v22, dateCopy, v23);
  objc_msgSend_setCurrentTimeZone_(self, v25, zoneCopy, v26);
  if (dirtyCopy)
  {
    v39 = v45;
    v40 = v46;
    v37 = v43;
    v38 = v44;
    v35 = v41;
    v36 = v42;
    objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v24, v27, dateCopy, &v40, &v39, &v38, &v37, &v36, &v35);
    if (v38 == v44 && v39 == v45 && v40 == v46 && (objc_msgSend_currentTimeZone(self, v28, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), isEqualToTimeZone = objc_msgSend_isEqualToTimeZone_(v17, v32, v31, v33), v31, (isEqualToTimeZone & 1) != 0))
    {
      if (v37 != v43 || v36 != v42 || v35 != v41)
      {
        objc_msgSend_markTimeVolatileFunctionsAsDirty(self, v28, v29, v30);
      }
    }

    else
    {
      objc_msgSend_markDateTimeVolatileFunctionsAsDirty(self, v28, v29, v30);
    }
  }
}

- (void)setCurrentTimeZone:(id)zone
{
  zoneCopy = zone;
  if (self->_currentTimeZone != zoneCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_currentTimeZone, zone);
    currentTimeZoneCalendar = self->_currentTimeZoneCalendar;
    self->_currentTimeZoneCalendar = 0;
  }
}

- (id)currentTimeZoneCalendar
{
  currentTimeZoneCalendar = self->_currentTimeZoneCalendar;
  if (!currentTimeZoneCalendar)
  {
    if (self->_currentTimeZone)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (!self->_currentTimeZoneCalendar)
      {
        v5 = [TSCECalendar alloc];
        v7 = objc_msgSend_initWithCalendarIdentifier_timeZone_(v5, v6, *MEMORY[0x277CBE5C0], self->_currentTimeZone);
        v8 = self->_currentTimeZoneCalendar;
        self->_currentTimeZoneCalendar = v7;
      }

      objc_sync_exit(selfCopy);

      currentTimeZoneCalendar = self->_currentTimeZoneCalendar;
    }

    else
    {
      currentTimeZoneCalendar = 0;
    }
  }

  return currentTimeZoneCalendar;
}

- (void)initializeDispatchObjects
{
  self->_recalculationThreadState = 2;
  self->_recalculationThreadStateMutex._os_unfair_lock_opaque = 0;
  self->_inProgressLeavesMutex._os_unfair_lock_opaque = 0;
  self->_legacyNrmListsMutex._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  v3 = MEMORY[0x277D85CD8];
  attr = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_UTILITY, -1);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, -3);
  v5 = dispatch_queue_create("com.apple.Numbers.TSCE.RecalcLowPriority", attr);
  recalcLowPriorityQueue = self->_recalcLowPriorityQueue;
  self->_recalcLowPriorityQueue = v5;

  v7 = dispatch_queue_create("com.apple.Numbers.TSCE.RecalcHighPriority", v4);
  recalcHighPriorityQueue = self->_recalcHighPriorityQueue;
  self->_recalcHighPriorityQueue = v7;

  if (!self->_recalcLowPriorityQueue)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCECalculationEngine initializeDispatchObjects]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 470, 0, "invalid nil value for '%{public}s'", "_recalcLowPriorityQueue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (!self->_recalcHighPriorityQueue)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCECalculationEngine initializeDispatchObjects]", v10);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 471, 0, "invalid nil value for '%{public}s'", "_recalcHighPriorityQueue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  v29 = dispatch_group_create();
  recalcDispatchGroup = self->_recalcDispatchGroup;
  self->_recalcDispatchGroup = v29;

  if (!self->_recalcDispatchGroup)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSCECalculationEngine initializeDispatchObjects]", v32);
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v36);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v38, v34, v37, 474, 0, "invalid nil value for '%{public}s'", "_recalcDispatchGroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
  }

  v42 = dispatch_group_create();
  recalcLoopGroup = self->_recalcLoopGroup;
  self->_recalcLoopGroup = v42;

  if (!self->_recalcLoopGroup)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSCECalculationEngine initializeDispatchObjects]", v45);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 477, 0, "invalid nil value for '%{public}s'", "_recalcLoopGroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
  }
}

- (int)threadState
{
  os_unfair_lock_lock(&self->_recalculationThreadStateMutex);
  recalculationThreadState = self->_recalculationThreadState;
  os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);
  return recalculationThreadState;
}

+ (void)resumeEvaluationIfNotTerminated
{
  if ((byte_27CFB52E1 & 1) == 0)
  {
    byte_27CFB52E0 = 0;
  }
}

- (id)openTransaction
{
  if (self->_currentTransaction)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECalculationEngine openTransaction]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 524, 0, "There is already an open transaction on this calc-engine: %@", self->_currentTransaction);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
    if (self->_currentTransaction)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCECalculationEngine openTransaction]", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 527, 0, "expected nil value for '%{public}s'", "_currentTransaction");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }
  }

  v24 = [TSCETransaction alloc];
  v27 = objc_msgSend_initWithCalcEngine_(v24, v25, self, v26);
  currentTransaction = self->_currentTransaction;
  self->_currentTransaction = v27;

  v29 = self->_currentTransaction;

  return v29;
}

- (void)closeTransaction:(id)transaction
{
  transactionCopy = transaction;
  v7 = transactionCopy;
  if (transactionCopy)
  {
    currentTransaction = self->_currentTransaction;
    if (currentTransaction != transactionCopy)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCECalculationEngine closeTransaction:]", v6);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 535, 0, "Invalid transaction object passed in: %@", v7);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
      currentTransaction = self->_currentTransaction;
    }

    self->_currentTransaction = 0;

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_221231978;
    v27[4] = sub_221231988;
    v28 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = sub_221231978;
    v25[4] = sub_221231988;
    v26 = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_221231978;
    v23[4] = sub_221231988;
    v24 = 0;
    v21 = objc_msgSend_cellRefsToCheck(v7, v18, v19, v20);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_221231990;
    v22[3] = &unk_278461B78;
    v22[4] = self;
    v22[5] = v27;
    v22[6] = v25;
    v22[7] = v23;
    TSCEReferenceSet::foreachCellRef(v21, v22);
    _Block_object_dispose(v23, 8);

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v27, 8);
  }
}

- (void)clearPreviousLocaleIdentifier
{
  previousLocaleIdentifier = self->_previousLocaleIdentifier;
  self->_previousLocaleIdentifier = 0;

  self->_shouldPreventArchivingOfLocaleIdentifier = 1;
}

- (TSTMultiTableRemapper)currentTableIdRemapper
{
  duringRollback = self->_duringRollback;
  currentTableIdRemapper = self->_currentTableIdRemapper;
  if (duringRollback)
  {
    if (currentTableIdRemapper)
    {
      rollbackTableIdRemapper = self->_rollbackTableIdRemapper;
      if (!rollbackTableIdRemapper)
      {
        v8 = objc_msgSend_makeInverse(currentTableIdRemapper, a2, v2, v3);
        v9 = self->_rollbackTableIdRemapper;
        self->_rollbackTableIdRemapper = v8;

        rollbackTableIdRemapper = self->_rollbackTableIdRemapper;
      }
    }

    else
    {
      rollbackTableIdRemapper = 0;
    }
  }

  else
  {
    rollbackTableIdRemapper = currentTableIdRemapper;
  }

  return rollbackTableIdRemapper;
}

- (void)setCurrentTableIdRemapper:(id)remapper
{
  objc_storeStrong(&self->_currentTableIdRemapper, remapper);
  remapperCopy = remapper;
  rollbackTableIdRemapper = self->_rollbackTableIdRemapper;
  self->_rollbackTableIdRemapper = 0;
}

- (void)commonInit
{
  v15.receiver = self;
  v15.super_class = TSCECalculationEngine;
  [(TSCECalculationEngine *)&v15 commonInit];
  self->_upgradeOptions = 0;
  v3 = os_log_create("com.apple.iWork.CalculationEngine", "Performance");
  signpostLog = self->_signpostLog;
  self->_signpostLog = v3;

  self->_loadFromFileVersion = UnsafePointer();
  v5 = [TSCETablesByName alloc];
  v8 = objc_msgSend_initWithCalcEngine_(v5, v6, self, v7);
  tablesByName = self->_tablesByName;
  self->_tablesByName = v8;

  v10 = [TSCEDependencyTracker alloc];
  v13 = objc_msgSend_initWithCalcEngine_(v10, v11, self, v12);
  dependencyTracker = self->_dependencyTracker;
  self->_dependencyTracker = v13;

  operator new();
}

- (TSCECalculationEngine)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TSCECalculationEngine;
  v5 = [(TSCECalculationEngine *)&v11 initWithContext:contextCopy];
  v9 = v5;
  if (v5)
  {
    objc_msgSend_p_addApplicationNotification(v5, v6, v7, v8);
  }

  return v9;
}

- (void)dealloc
{
  self->_calculationWillShutDown = 1;
  objc_msgSend_p_removeApplicationNotification(self, a2, v2, v3);
  if (!objc_msgSend_threadState(self, v5, v6, v7))
  {
    objc_msgSend_pauseRecalculation(self, v8, v9, v10);
  }

  self->_calculationWillShutDown = 1;
  dispatch_sync(self->_recalcLowPriorityQueue, &unk_2834A3608);
  v14 = objc_msgSend_referencesToDirty(self, v11, v12, v13);
  objc_msgSend_willClose(v14, v15, v16, v17);

  begin = self->_phaseStates.__begin_;
  end = self->_phaseStates.__end_;
  if (begin != end)
  {
    do
    {
      v23 = *begin;
      if (*begin)
      {
        sub_2210BDEC0(v23 + 32);
        v24 = *(v23 + 1);
        if (v24)
        {
          *(v23 + 2) = v24;
          operator delete(v24);
        }

        MEMORY[0x223DA1450](v23, 0x10A0C409DE78C2BLL);
      }

      ++begin;
    }

    while (begin != end);
    begin = self->_phaseStates.__begin_;
  }

  self->_phaseStates.__end_ = begin;
  objc_msgSend_willClose(self->_headerNameMgr, v18, v19, v20);
  headerNameMgr = self->_headerNameMgr;
  self->_headerNameMgr = 0;

  objc_msgSend_willClose(self->_namedReferenceManager, v26, v27, v28);
  namedReferenceManager = self->_namedReferenceManager;
  self->_namedReferenceManager = 0;

  inProgressLeaves = self->_inProgressLeaves;
  if (inProgressLeaves)
  {
    sub_22123E714(inProgressLeaves + 1);

    MEMORY[0x223DA1450](inProgressLeaves, 0x10A0C40C346037DLL);
  }

  dependencyTracker = self->_dependencyTracker;
  self->_dependencyTracker = 0;

  sub_221575E6C(&self->_refResolverMap);
  pendingChangesForAsyncNotification = self->_pendingChangesForAsyncNotification;
  self->_pendingChangesForAsyncNotification = 0;

  legacyGlobalIDStringToOwnerUIDMap = self->_legacyGlobalIDStringToOwnerUIDMap;
  self->_legacyGlobalIDStringToOwnerUIDMap = 0;

  v34.receiver = self;
  v34.super_class = TSCECalculationEngine;
  [(TSCECalculationEngine *)&v34 dealloc];
}

- (void)registerOwners
{
  if (!self->_ownersRegistered)
  {
    objc_msgSend_registerFormulaOwners(self->_dependencyTracker, a2, v2, v3);
    self->_ownersRegistered = 1;
  }
}

- (void)documentDidLoad
{
  if (!self->_documentDidLoadCompleted)
  {
    objc_msgSend_registerOwners(self, a2, v2, v3);
    upgradeOptions = self->_upgradeOptions;
    if ((upgradeOptions & 2) != 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      sub_221575F38(&self->_refResolverMap, self->_dependencyTracker, &__p);
      v9 = __p;
      v10 = v19;
      if (__p != v19)
      {
        do
        {
          v11 = objc_msgSend_tableResolverForTableUID_(self, v5, v9, v7);
          if (objc_msgSend_isPivotTable(v11, v12, v13, v14))
          {
            sub_221083454(&v20, v9);
          }

          ++v9;
        }

        while (v9 != v10);
        if (v20 != v21)
        {
          objc_msgSend_resetAllExternalFormulasReferringToOwnerUIDs_upgradeMinion_(self->_dependencyTracker, v5, &v20, self->_upgradingFormulasMinion);
        }
      }

      self->_upgradeOptions &= ~2u;
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      upgradeOptions = self->_upgradeOptions;
    }

    if (upgradeOptions)
    {
      objc_msgSend_willModify(self, v5, v6, v7);
      objc_msgSend_dirtyAllCellsInAllOwners(self->_dependencyTracker, v15, v16, v17);
      self->_upgradeOptions &= ~1u;
    }

    objc_msgSend_endUpgradingFormulasMode(self, v5, v6, v7);
    self->_documentDidLoadCompleted = 1;
  }
}

- (void)recalculateWithTimeout:(double)timeout
{
  if (timeout <= 0.0)
  {
    v28 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    v28 = objc_msgSend_initWithTimeIntervalSinceNow_(v7, v8, v9, v10, timeout);
  }

  for (i = objc_msgSend_referencesToDirty(self, a2, v3, v4);
  {
    if (v28)
    {
      objc_msgSend_timeIntervalSinceNow(v28, v11, v12, v13);
      if (v15 <= 0.0)
      {
        break;
      }
    }

    if (objc_msgSend_allCellsAreClean(self, v11, v12, v13))
    {
      break;
    }

    objc_msgSend_recalcHoldingReadLock(self, v16, v17, v18);
    objc_msgSend_recalcHoldingWriteLock(self, v19, v20, v21);
    objc_msgSend_invalidateAfterRecalc(self, v22, v23, v24);
  }
}

- (void)dirtyCellsForUpgrade
{
  loadFromFileVersion = self->_loadFromFileVersion;
  if (loadFromFileVersion < *MEMORY[0x277D80968])
  {
    objc_msgSend_pauseRecalculation(self, a2, v2, v3);
    objc_msgSend_dirtyForSpanningRowBug(self->_dependencyTracker, v6, v7, v8);
    objc_msgSend_resumeRecalculation(self, v9, v10, v11);
    loadFromFileVersion = self->_loadFromFileVersion;
  }

  if (loadFromFileVersion < *MEMORY[0x277D80998])
  {

    MEMORY[0x2821F9670](self, sel_resetNRM, v2, v3);
  }
}

- (void)beginUpgradingFormulasMode
{
  v3 = [TSCEUpgradingTablesMinion alloc];
  v8 = objc_msgSend_initWithCalcEngine_(v3, v4, self, v5);
  objc_msgSend_setUpgradingFormulasMinion_(self, v6, v8, v7);
}

- (void)endUpgradingFormulasMode
{
  upgradingFormulasMinion = self->_upgradingFormulasMinion;
  if (upgradingFormulasMinion)
  {
    self->_upgradingFormulasMinion = 0;
    v6 = upgradingFormulasMinion;

    objc_msgSend_flushAllChanges(v6, v3, v4, v5);
  }
}

- (void)scheduleRepairingSpanningFormulasInOwner:(const TSKUIDStruct *)owner
{
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker && *owner != 0)
  {
    upgradingFormulasMinion = self->_upgradingFormulasMinion;
    if (upgradingFormulasMinion)
    {
      MEMORY[0x2821F9670](dependencyTracker, sel_scheduleRepairingSpanningFormulasInOwner_upgradeMinion_, owner, upgradingFormulasMinion);
    }
  }
}

- (void)setTableRange:(TSCERangeCoordinate)range bodyRange:(TSCERangeCoordinate)bodyRange forTableUID:(const TSKUIDStruct *)d
{
  rangeCopy = range;
  bodyRangeCopy = bodyRange;
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_setTableAndBodyRangesForTable_bodyRange_tableUID_(dependencyTracker, a2, &rangeCopy, &bodyRangeCopy, d);
  }
}

- (BOOL)verifyTableAndBodyRangesForTable:(const TSKUIDStruct *)table
{
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    LOBYTE(dependencyTracker) = (MEMORY[0x2821F9670])(dependencyTracker, sel_verifyTableAndBodyRangesForTable_, table);
  }

  return dependencyTracker;
}

- (int)forwardRegisterOwnerWithOwnerUID:(TSKUIDStruct)d legacyGlobalID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (iDCopy)
  {
    v9 = objc_msgSend_legacyGlobalIDStringToOwnerUIDMap(self, v5, v6, v7, dCopy._lower, dCopy._upper);
    v10 = TSKUIDStruct::NSUUIDValue(&dCopy);
    objc_msgSend_setValue_forKey_(v9, v11, v10, iDCopy);
  }

  v12 = objc_msgSend_registerOwnerUID_owner_ownerIndex_(self->_dependencyTracker, v5, &dCopy, 0, 0);

  return v12;
}

- (int)registerOwnerWithOwnerUID:(TSKUIDStruct)d owner:(id)owner referenceResolver:(id)resolver baseOwnerUID:(TSKUIDStruct)iD ownerKind:(unsigned __int16)kind
{
  dCopy = d;
  ownerCopy = owner;
  resolverCopy = resolver;
  v14 = objc_msgSend_registerOwnerUID_owner_ownerIndex_(self->_dependencyTracker, v11, &dCopy, ownerCopy, kind);
  if (v14)
  {
    v15 = resolverCopy;
  }

  else
  {
    v16 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, v12, &dCopy, v13);
    if (resolverCopy)
    {
      v20 = v16;
      v21 = TSUCheckedProtocolCast();
      if (v21)
      {
        v15 = v21;

        resolverCopy = objc_msgSend_newTableResolverForResolver_(self, v24, v15, v25, &unk_283517958);
        if (resolverCopy)
        {
          sub_221576264(&self->_refResolverMap._refResolverMutex, resolverCopy, v20, &dCopy);
          sub_221576500(&self->_refResolverMap._refResolverMutex);
        }
      }

      else
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCECalculationEngine registerOwnerWithOwnerUID:owner:referenceResolver:baseOwnerUID:ownerKind:]", v23, &unk_283517958);
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v29);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 891, 0, "Resolver doesn't conform to the TSCEReferenceResolving protocol.");

        v15 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
      }
    }

    else
    {
      v15 = 0;
    }

    if (objc_msgSend_evaluationMode(ownerCopy, v17, v18, v19) == 1 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSCECalculationEngine registerOwnerWithOwnerUID:owner:referenceResolver:baseOwnerUID:ownerKind:]", v36);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v40);
      v42 = objc_opt_class();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v41, 909, 0, "%@ doesn't implement: -multiEvaluateFormulasAt:withCalcEngine:recalcOptions:", v42);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
    }
  }

  return v14;
}

- (unsigned)ownerKindForOwnerUID:(TSKUIDStruct)d
{
  dCopy = d;
  v4 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, a2, &dCopy, d._upper);
  return objc_msgSend_ownerKindForOwnerID_(self->_dependencyTracker, v5, v4, v6);
}

- (void)unregisterOwner:(TSKUIDStruct)owner
{
  ownerCopy = owner;
  if (owner._lower | owner._upper)
  {
    WeakRetained = objc_loadWeakRetained(&self->_accessController);
    v8 = objc_msgSend_hasWrite(WeakRetained, v5, v6, v7, ownerCopy._lower, ownerCopy._upper);

    v14 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, v9, &ownerCopy, v10);
    if (v8)
    {
      objc_msgSend_beginSuppressingWillModifyCalls(self, v11, v12, v13);
      objc_msgSend_unregisterOwner_(self->_dependencyTracker, v15, &ownerCopy, v16);
      objc_msgSend_endSuppressingWillModifyCalls(self, v17, v18, v19);
      sub_221576348(&self->_refResolverMap._refResolverMutex, v14, &ownerCopy);
    }

    else
    {
      objc_msgSend_pauseRecalculation(self, v11, v12, v13);
      objc_msgSend_beginSuppressingWillModifyCalls(self, v20, v21, v22);
      objc_msgSend_unregisterOwner_(self->_dependencyTracker, v23, &ownerCopy, v24);
      objc_msgSend_endSuppressingWillModifyCalls(self, v25, v26, v27);
      sub_221576348(&self->_refResolverMap._refResolverMutex, v14, &ownerCopy);
      objc_msgSend_resumeRecalculation(self, v28, v29, v30);
    }
  }
}

- (id)ownerForOwnerUID:(TSKUIDStruct)d
{
  dCopy = d;
  v3 = objc_msgSend_ownerForOwnerUID_(self->_dependencyTracker, a2, &dCopy, d._upper);

  return v3;
}

- (id)ownerForUUIDBytes:(unsigned __int8)bytes[16]
{
  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_ownerForOwnerUID_(self, v4, v5, v4);
}

- (BOOL)duringSubOwnerUIDUpgrade
{
  v4 = objc_msgSend_dependencyTracker(self, a2, v2, v3);
  v8 = objc_msgSend_duringSubOwnerUIDUpgrade(v4, v5, v6, v7);

  return v8;
}

- (id)resolverForCellRef:(id)ref
{
  refCopy = ref;
  v8 = refCopy;
  if (refCopy)
  {
    v9 = objc_msgSend_tableUID(refCopy, v5, v6, v7);
    v11 = objc_msgSend_resolverForTableUID_(self, v10, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)resolverForTableID:(unsigned __int16)d
{
  if (d == 0xFFFF)
  {
    v8 = 0;
  }

  else
  {
    v6 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, d, v3);
    v8 = objc_msgSend_resolverForTableUID_(self, v7, v6, v7);
  }

  return v8;
}

- (id)resolverForTableUID:(TSKUIDStruct)d
{
  dCopy = d;
  if (self->_calculationWillShutDown)
  {
    v3 = 0;
  }

  else
  {
    v5 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, a2, &dCopy, d._upper);
    v3 = sub_2215761B8(&self->_refResolverMap._refResolverMutex, v5);
  }

  return v3;
}

- (TSCETableResolverWrapper)p_tableResolverWrapperForRefResolver:(id)resolver
{
  resolverCopy = resolver;
  v8 = resolverCopy;
  if (resolverCopy)
  {
    v13[0] = objc_msgSend_resolverUID(resolverCopy, v5, v6, v7);
    v13[1] = v9;
    v11 = objc_msgSend_tableResolverWrapperForTableUID_(self, v9, v13, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TSCETableResolverWrapper)p_tableOrLinkedResolverWrapperForTableUID:(const TSKUIDStruct *)d
{
  v7 = objc_msgSend_tableResolverWrapperForTableUID_(self, a2, d, v3);
  if (!v7)
  {
    if (self->_calculationWillShutDown)
    {
      return 0;
    }

    else
    {
      v8 = objc_msgSend_ownerForOwnerUID_(self, v6, d->_lower, d->_upper);
      v12 = v8;
      if (v8)
      {
        v13 = objc_msgSend_linkedResolver(v8, v9, v10, v11);
        v7 = objc_msgSend_p_tableResolverWrapperForRefResolver_(self, v14, v13, v15);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (TSCETableResolverWrapper)tableResolverWrapperForTableID:(unsigned __int16)d
{
  if (d == 0xFFFF || self->_calculationWillShutDown)
  {
    return 0;
  }

  else
  {
    return sub_2215760A0(&self->_refResolverMap._refResolverMutex, d);
  }
}

- (id)tableResolverForTableUID:(const TSKUIDStruct *)d
{
  v4 = objc_msgSend_tableResolverWrapperForTableUID_(self, a2, d, v3);
  if (v4)
  {
    v4 = *v4;
  }

  return v4;
}

- (id)tableResolverForTableID:(unsigned __int16)d
{
  v4 = objc_msgSend_tableResolverWrapperForTableID_(self, a2, d, v3);
  if (v4)
  {
    v4 = *v4;
  }

  return v4;
}

- (id)tableOrLinkedResolverForTableUID:(const TSKUIDStruct *)d
{
  v4 = objc_msgSend_p_tableOrLinkedResolverWrapperForTableUID_(self, a2, d, v3);
  if (v4)
  {
    v4 = *v4;
  }

  return v4;
}

- (id)tableResolverForRefResolver:(id)resolver
{
  v4 = objc_msgSend_p_tableResolverWrapperForRefResolver_(self, a2, resolver, v3);
  if (v4)
  {
    v4 = *v4;
  }

  return v4;
}

- (TSKUIDStruct)formulaOwnerUIDForInternalFormulaOwnerID:(unsigned __int16)d
{
  v4 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, d, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (id)resolverContainerMatchingName:(id)name
{
  nameCopy = name;
  v8 = objc_msgSend_documentRoot(self, v5, v6, v7);
  v10 = objc_msgSend_resolverContainerMatchingName_inDocumentRoot_(self, v9, nameCopy, v8);

  return v10;
}

- (id)resolverMatchingName:(id)name contextResolver:(id)resolver
{
  nameCopy = name;
  resolverCopy = resolver;
  v11 = objc_msgSend_documentRoot(self, v8, v9, v10);
  v13 = objc_msgSend_resolverMatchingName_inDocumentRoot_contextResolver_(self, v12, nameCopy, v11, resolverCopy);

  return v13;
}

- (id)resolverMatchingNameWithContextContainer:(id)container contextContainerName:(id)name
{
  containerCopy = container;
  nameCopy = name;
  v11 = objc_msgSend_documentRoot(self, v8, v9, v10);
  v13 = objc_msgSend_resolverMatchingNameWithContextContainer_inDocumentRoot_contextContainerName_(self, v12, containerCopy, v11, nameCopy);

  return v13;
}

- (TSKUIDStruct)ownerUIDForLegacyGlobalID:(id)d registeringIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dCopy = d;
  if (objc_msgSend_hasPrefix_(dCopy, v7, @"SFTGlobalID_", v8))
  {
    v12 = objc_msgSend_length(@"SFTGlobalID_", v9, v10, v11);
    if (objc_msgSend_length(dCopy, v13, v14, v15) > v12)
    {
      v16 = objc_msgSend_substringFromIndex_(dCopy, v9, v12, v11);

      dCopy = v16;
    }
  }

  v17 = objc_msgSend_legacyGlobalIDStringToOwnerUIDMap(self, v9, v10, v11);
  v20 = objc_msgSend_objectForKey_(v17, v18, dCopy, v19);

  if (v20)
  {
    v21 = TSKMakeUIDStructFromNSUUID();
    v23 = v22;
  }

  else if (neededCopy)
  {
    v24 = TSKMakeUIDStructRandom();
    objc_msgSend_forwardRegisterOwnerWithOwnerUID_legacyGlobalID_(self, v25, v24, v25, dCopy);
    v28 = objc_msgSend_objectForKey_(self->_legacyGlobalIDStringToOwnerUIDMap, v26, dCopy, v27);
    v21 = TSKMakeUIDStructFromNSUUID();
    v23 = v29;
  }

  else
  {
    v23 = 0;
    v21 = 0;
  }

  v30 = v21;
  v31 = v23;
  result._upper = v31;
  result._lower = v30;
  return result;
}

- (void)setOwnerUIDForLegacyGlobalID:(id)d ownerUID:(const TSKUIDStruct *)iD
{
  dCopy = d;
  legacyGlobalIDStringToOwnerUIDMap = self->_legacyGlobalIDStringToOwnerUIDMap;
  v7 = TSKUIDStruct::NSUUIDValue(iD);
  objc_msgSend_setValue_forKey_(legacyGlobalIDStringToOwnerUIDMap, v8, v7, dCopy);
}

- (TSKUIDStruct)uuidForTableUID:(TSKUIDStruct)d andIndex:(unsigned int)index direction:(BOOL)direction
{
  directionCopy = direction;
  v6 = *&index;
  v7 = objc_msgSend_resolverForTableUID_(self, a2, d._lower, d._upper);
  v10 = v7;
  if (v7)
  {
    if (directionCopy)
    {
      if (v6 != 0x7FFFFFFF)
      {
        v11 = objc_msgSend_rowUIDForRowIndex_(v7, v8, v6, v9);
LABEL_8:
        v14 = v11;
        v13 = v12;
        goto LABEL_9;
      }
    }

    else if (v6 != 0x7FFF)
    {
      v11 = objc_msgSend_columnUIDForColumnIndex_(v7, v8, v6, v9);
      goto LABEL_8;
    }
  }

  v13 = 0;
  v14 = 0;
LABEL_9:

  v15 = v14;
  v16 = v13;
  result._upper = v16;
  result._lower = v15;
  return result;
}

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  formulaCopy = formula;
  v11 = objc_autoreleasePoolPush();
  v12 = *coord;
  v47 = *owner;
  v15 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, v13, owner, v14);
  if (v12 == 0x7FFFFFFF || (v12 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCECalculationEngine replaceFormula:atCellCoord:inOwner:replaceOptions:]", v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v23);
    v25 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v24, 1181, 0, "Can only place formulas at valid, non-spanning cell coords, not: %@", v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  else
  {
    v45 = v12 & 0xFFFFFFFFFFFFLL;
    v46 = v15;
    if (!options->var1 || (objc_msgSend_markIntCellRefDirtyIfCellContainsAFormula_(self->_dependencyTracker, v16, &v45, v18) & 1) == 0)
    {
      v30 = objc_msgSend_emptyReferenceSetWrapper(self, v16, v17, v18);
      v37 = objc_msgSend_formulaObject(formulaCopy, v31, v32, v33);
      if (v37 && v30)
      {
        v38 = objc_msgSend_referenceSet(v30, v34, v35, v36);
        v43 = v12;
        v44 = v47;
        objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v37, v39, v38, self, &v43, 0, 1);
        dependencyTracker = self->_dependencyTracker;
        TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v42, options);
        objc_msgSend_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(dependencyTracker, v41, owner, v12, v30, &v42);
      }

      self->_hasKnownEmbiggenedTable = objc_msgSend_hasEmbiggenedCoords(self->_dependencyTracker, v34, v35, v36);
    }
  }

  objc_autoreleasePoolPop(v11);
}

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner
{
  formulaCopy = formula;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v11, 0, 1);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v10, &v11);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(self, v9, formulaCopy, coord, owner, &v10);
}

- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  precedentsCopy = precedents;
  dependencyTracker = self->_dependencyTracker;
  v12 = *at;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v14, options);
  objc_msgSend_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(dependencyTracker, v13, owner, v12, precedentsCopy, &v14);
}

- (void)resetFormulaAt:(const TSCECellRef *)at
{
  if (*&at->coordinate != 0x7FFFFFFF && (*&at->coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    upper = at->_tableUID._upper;
    if (*&at->_tableUID != 0)
    {
      v11[0] = at->_tableUID._lower;
      v11[1] = upper;
      v8 = objc_msgSend_tableResolverForTableUID_(self, a2, v11, v3);
      v10 = v8;
      if (v8)
      {
        v11[0] = at->coordinate;
        objc_msgSend_resetDependenciesForCell_calcEngine_(v8, v9, v11, self);
      }
    }
  }
}

- (void)updateEmbiggenedTableCache
{
  if (objc_msgSend_isBatchingGroupCellDirtying(self, a2, v2, v3))
  {
    v8 = 1;
  }

  else
  {
    hasEmbiggenedCoords = objc_msgSend_hasEmbiggenedCoords(self->_dependencyTracker, v5, v6, v7);
    v8 = 0;
    self->_hasKnownEmbiggenedTable = hasEmbiggenedCoords;
  }

  self->_needsEmbiggenedCoordsCheck = v8;
}

- (BOOL)referenceWasGuaranteedCleanAtRecalcCycleStart:(const TSCEAnyRef *)start
{
  startCopy = start;
  v17[0] = TSCEAnyRef::containedTableUID(start, a2, start, v3);
  v17[1] = v5;
  v7 = objc_msgSend_tableResolverWrapperForTableUID_(self, v5, v17, v6);
  TSCERangeRef::rangeRefForAnyRef(&v16, startCopy, &v7->var0);
  isValid = TSCERangeRef::isValid(&v16);
  LOBYTE(startCopy) = 1;
  if (v7 && isValid)
  {
    if (objc_msgSend_rangeRefIsDirtyOrCurrentlyBeingEvaluated_(self->_dependencyTracker, v9, &v16, v10))
    {
      LOBYTE(startCopy) = 0;
    }

    else if (TSCERangeRef::isSingleCell(&v16))
    {
      v15._rectRepresentation.origin = v16.range._topLeft;
      LODWORD(startCopy) = TSCETableResolverWrapper::cellModifiedInCurrentRecalcCycle(v7, &v15._rectRepresentation.origin, v12, v13) ^ 1;
    }

    else
    {
      TSCETableResolverWrapper::cellsModifiedInCurrentRecalcCycle(v7, v12, v13, &v15);
      LODWORD(startCopy) = TSCECellCoordSet::intersectsRange(&v15, &v16.range) ^ 1;
      sub_22107C860(&v15._rowsPerColumn, v15._rowsPerColumn.__tree_.__end_node_.__left_);
    }
  }

  return startCopy;
}

- (TSCERecalculationState)updateCalculatedPrecedents:(id)precedents forFormula:(id)formula atCellRef:(const TSCECellRef *)ref withState:(TSCERecalculationState)state
{
  precedentsCopy = precedents;
  formulaCopy = formula;
  if (objc_msgSend_shouldPickupRemoteDataInterests(precedentsCopy, v12, v13, v14))
  {
    if ((objc_msgSend_evaluationAborted(precedentsCopy, v15, v16, v17) & 1) == 0)
    {
      v18 = objc_msgSend_remoteDataKeysInterestedIn(precedentsCopy, v15, v16, v17);

      if (v18)
      {
        v22 = objc_msgSend_remoteDataKeysInterestedIn(precedentsCopy, v15, v16, v17);
        if (precedentsCopy)
        {
          objc_msgSend_containingCellRef(precedentsCopy, v19, v20, v21);
        }

        else
        {
          memset(&v83, 0, 24);
        }

        objc_msgSend_replaceRemoteDataKeysInterestedIn_forCell_(self, v19, v22, &v83);
      }
    }
  }

  v23 = objc_msgSend_calculatedPrecedentsExist(precedentsCopy, v15, v16, v17);
  v26 = v23;
  if (v23)
  {
    v27 = 64;
  }

  else
  {
    v27 = 0;
  }

  v28.var0 = v27 | state.var0 & 0xBF;
  if ((v23 | ((state.var0 & 2) >> 1)) == 1)
  {
    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = (state.var0 & 0x20) != 0;
    objc_msgSend_precedentsOfCell_(self, v24, ref, v25);
    v32 = objc_msgSend_calculatedPrecedents(precedentsCopy, v29, v30, v31);
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    if ((state.var0 & 2) != 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v26;
    }

    v82 = v33;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3321888768;
    v76[2] = sub_22123416C;
    v76[3] = &unk_2834A3668;
    var0 = v28.var0;
    TSCEReferenceSet::TSCEReferenceSet(&v77, &v83);
    v76[4] = self;
    v76[5] = &v79;
    v76[6] = &v84;
    TSCEReferenceSet::forallRefs(v32, v76);
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 0;
    TSCEReferenceSet::TSCEReferenceSet(&v71, v32);
    v37 = objc_msgSend_formulaObject(formulaCopy, v34, v35, v36);
    objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v37, v38, &v71, self, ref, 0, 0);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3321888768;
    v69[2] = sub_221234420;
    v69[3] = &unk_2834A36A0;
    TSCEReferenceSet::TSCEReferenceSet(&v70, &v71);
    v69[4] = &v72;
    TSCEReferenceSet::forallRefs(&v83, v69);
    if ((v80[3] & 1) == 0 && *(v73 + 24) != 1)
    {
      goto LABEL_35;
    }

    if (state.var0 & 8) == 0 || (state.var0 & 0x11) == 0x11 || objc_msgSend_inArrayMode(precedentsCopy, v39, v40, v41) && (v73[3])
    {
      goto LABEL_23;
    }

    v42 = [TSCEReferenceSetWrapper alloc];
    v45 = objc_msgSend_initWithReferenceSet_(v42, v43, &v71, v44);
    v49 = objc_msgSend_referenceSet(v45, v46, v47, v48);
    TSCEReferenceSet::insertRefs(v49, &v83);
    *(v73 + 24) = 0;
    if (*(v80 + 24) != 1)
    {
LABEL_34:

LABEL_35:
      if (*(v85 + 24))
      {
        v63 = 32;
      }

      else
      {
        v63 = 0;
      }

      v28.var0 = v63 | v28.var0 & 0xDF;
      TSCEReferenceSet::~TSCEReferenceSet(&v70);

      TSCEReferenceSet::~TSCEReferenceSet(&v71);
      _Block_object_dispose(&v72, 8);
      TSCEReferenceSet::~TSCEReferenceSet(&v77);
      _Block_object_dispose(&v79, 8);
      TSCEReferenceSet::~TSCEReferenceSet(&v83);
      _Block_object_dispose(&v84, 8);
      goto LABEL_39;
    }

    if (!v45)
    {
LABEL_23:
      v53 = [TSCEReferenceSetWrapper alloc];
      v45 = objc_msgSend_initWithReferenceSet_(v53, v54, &v71, v55);
    }

    v56 = objc_msgSend_remoteDataKeysInterestedIn(precedentsCopy, v50, v51, v52);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v68, v56, 1);

    v68.var3 = 1;
    v68.var5 = 1;
    if (state.var0)
    {
      if ((state.var0 & 0x10) != 0)
      {
        v61 = 1;
      }

      else
      {
        v60 = objc_msgSend_referenceSet(v45, v57, v58, v59);
        v61 = TSCEReferenceSet::contains(v60, &v83) ^ 1;
      }

      v68.var0 = v61;
    }

    coordinate = ref->coordinate;
    tableUID = ref->_tableUID;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v65, &v68);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(self, v62, &coordinate, &tableUID, v45, &v65);

    if ((state.var0 & 1) != 0 && ((v80[3] & 1) != 0 || *(v73 + 24) == 1))
    {
      *(v85 + 24) = (*(v85 + 24) | v68.var0) & 1;
    }

    goto LABEL_34;
  }

LABEL_39:

  return v28;
}

- (void)removeAllFormulasFromOwner:(const TSKUIDStruct *)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_accessController);
  v9 = objc_msgSend_hasWrite(WeakRetained, v6, v7, v8);

  if (v9)
  {
    objc_msgSend_beginSuppressingWillModifyCalls(self, v10, v11, v12);
    objc_msgSend_removeAllPrecedentsFromOwner_(self->_dependencyTracker, v13, owner, v14);

    objc_msgSend_endSuppressingWillModifyCalls(self, v15, v16, v17);
  }

  else
  {
    objc_msgSend_pauseRecalculation(self, v10, v11, v12);
    objc_msgSend_beginSuppressingWillModifyCalls(self, v18, v19, v20);
    objc_msgSend_removeAllPrecedentsFromOwner_(self->_dependencyTracker, v21, owner, v22);
    objc_msgSend_endSuppressingWillModifyCalls(self, v23, v24, v25);

    objc_msgSend_resumeRecalculation(self, v26, v27, v28);
  }
}

- (void)removeFormulasFromRange:(const TSCERangeRef *)range
{
  objc_msgSend_beginSuppressingWillModifyCalls(self, a2, range, v3);
  dependencyTracker = self->_dependencyTracker;
  tableUID = range->_tableUID;
  v13[0] = range->range;
  v13[1] = tableUID;
  objc_msgSend_removeFormulasFromRange_(dependencyTracker, v8, v13, v9);
  objc_msgSend_endSuppressingWillModifyCalls(self, v10, v11, v12);
}

- (void)removeFormulasAt:(const void *)at
{
  if ((TSCECellRefSet::isEmpty(at) & 1) == 0)
  {
    objc_msgSend_beginSuppressingWillModifyCalls(self, v5, v6, v7);
    objc_msgSend_removeFormulasAt_(self->_dependencyTracker, v8, at, v9);

    objc_msgSend_endSuppressingWillModifyCalls(self, v10, v11, v12);
  }
}

- (void)setError:(id)error warnings:(id)warnings forCell:(const TSCECellRef *)cell
{
  errorCopy = error;
  warningsCopy = warnings;
  v11 = *&cell->coordinate == 0x7FFFFFFF || (*&cell->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v11 && *&cell->_tableUID != 0)
  {
    objc_msgSend_setError_andWarnings_forCell_inOwner_(self->_dependencyTracker, v9, errorCopy, warningsCopy, cell->_tableUID._lower, cell->_tableUID._upper);
  }
}

- (void)updateErrorAndWarnings:(id)warnings forCell:(const TSCECellRef *)cell
{
  warningsCopy = warnings;
  if (objc_msgSend_isError(warningsCopy, v6, v7, v8))
  {
    v12 = objc_msgSend_asErrorValue(warningsCopy, v9, v10, v11);
    v16 = v12;
    if (v12)
    {
      v17 = objc_msgSend_error(v12, v13, v14, v15);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_msgSend_warnings(warningsCopy, v9, v10, v11);
  v22 = objc_msgSend_count(v18, v19, v20, v21);
  if (v17 || v22)
  {
    objc_msgSend_setError_warnings_forCell_(self, v23, v17, v18, cell);
  }

  else
  {
    objc_msgSend_clearErrorAndWarningsForCell_(self, v23, cell, v24);
  }
}

- (void)clearErrorAndWarningsForCell:(const TSCECellRef *)cell
{
  coordinate = cell->coordinate;
  if (coordinate != 0x7FFFFFFF && (coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    lower = cell->_tableUID._lower;
    upper = cell->_tableUID._upper;
    if (lower | upper)
    {
      v11[2] = v3;
      v11[3] = v4;
      dependencyTracker = self->_dependencyTracker;
      v11[0] = lower;
      v11[1] = upper;
      objc_msgSend_clearErrorAndWarningsForCell_inOwner_(dependencyTracker, a2, coordinate, v11);
    }
  }
}

- (void)clearErrorAndWarningsForCells:(const void *)cells
{
  if ((TSCECellRefSet::isEmpty(cells) & 1) == 0)
  {
    dependencyTracker = self->_dependencyTracker;

    objc_msgSend_clearErrorAndWarningsForCells_(dependencyTracker, v5, cells, v6);
  }
}

- (void)clearSpillSizeForCell:(const TSCECellRef *)cell
{
  v7 = objc_msgSend_dependencyTracker(self, a2, cell, v3);
  objc_msgSend_clearSpillSizeForCell_(v7, v5, cell, v6);
}

- (void)clearSpillSizesInRange:(const TSCERangeRef *)range
{
  v7 = objc_msgSend_dependencyTracker(self, a2, range, v3);
  objc_msgSend_clearSpillSizesInRange_(v7, v5, range, v6);
}

- (TSCECellCoordSet)spillOriginsInRange:(SEL)range
{
  v7 = objc_msgSend_dependencyTracker(self, range, a4, v4);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_spillOriginsInRange_(v7, v8, a4, v9);
  }

  else
  {
    retstr->_rowsPerColumn.__tree_.__size_ = 0;
    retstr->_rectRepresentation = 0u;
    *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  }

  return result;
}

- (void)resetSpillingFormulasInRange:(const TSCERangeRef *)range
{
  if (TSCERangeRef::isValid(range))
  {
    tableUID = range->_tableUID;
    objc_msgSend_clearSpillSizesInRange_(self->_dependencyTracker, v5, range, v6);
    v9 = objc_msgSend_tableResolverForTableUID_(self, v7, &tableUID, v8);
    TSCERangeCoordinate::asCellRect(&range->range);
    if (v9)
    {
      v10 = v9;
      TSUCellRect::enumerateCoordinatesUsingBlock();
    }
  }
}

- (TSCECellRef)rootCauseForErrorInCell:(SEL)cell atRootCell:(const TSCECellRef *)rootCell
{
  coordinate = rootCell->coordinate;
  if (coordinate == 0x7FFFFFFF || (coordinate & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_6;
  }

  if (rootCell->_tableUID._lower)
  {
    upper = rootCell->_tableUID._upper;
    goto LABEL_10;
  }

  upper = rootCell->_tableUID._upper;
  if (!upper)
  {
LABEL_6:
    *retstr = *rootCell;
    return self;
  }

LABEL_10:
  self = self[3]._tableUID._lower;
  v9[0] = rootCell->_tableUID._lower;
  v9[1] = upper;
  if (self)
  {
    return objc_msgSend_rootCauseForErrorInCell_inOwner_outAtRootCell_(self, cell, coordinate, v9, a5);
  }

  retstr->coordinate = 0;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  return self;
}

- (unint64_t)errorCountForOwner:(const TSKUIDStruct *)owner
{
  if (*owner == 0)
  {
    return 0;
  }

  else
  {
    return (MEMORY[0x2821F9670])(self->_dependencyTracker, sel_errorCountForOwner_, owner);
  }
}

- (vector<TSUCellCoord,)formulaCoordsReferringToRange:(TSCECalculationEngine *)self fromOwner:(SEL)owner skipSpanning:(const TSCERangeRef *)spanning
{
  v9 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, owner, a5, a5);
  result = self->_dependencyTracker;
  if (result)
  {

    return MEMORY[0x2821F9670](result, sel_cellsReferencingRange_fromOwner_skipSpanning_, spanning, v9);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (vector<TSUCellCoord,)formulaCoordsInRange:(TSCECalculationEngine *)self inOwner:(SEL)owner
{
  result = self->_dependencyTracker;
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_formulaCoordsInRange_inOwnerUID_, a4, a5);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSCECellCoordSet)allFormulaCoordsInOwner:(SEL)owner
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_allFormulaCoordsInOwner_(result, owner, a4, v4);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (unint64_t)dirtyCellCountInOwner:(const TSKUIDStruct *)owner
{
  dependencyTracker = self->_dependencyTracker;
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(dependencyTracker, a2, owner, v3);

  return objc_msgSend_numDirtyCellsInOwnerID_(dependencyTracker, v5, v6, v7);
}

- (BOOL)allCellsAreClean
{
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    if (objc_msgSend_hasDirtyCellsIgnoringNRM_(dependencyTracker, a2, 1, v2))
    {
      v8 = 0;
      self->_hadDirtyCellsRecently = 1;
    }

    else
    {
      v9 = objc_msgSend_referencesToDirty(self, v5, v6, v7);
      self->_hadDirtyCellsRecently = objc_msgSend_isEmptyForDirtying(v9, v10, v11, v12) ^ 1;

      return !self->_hadDirtyCellsRecently;
    }
  }

  else
  {
    return 1;
  }

  return v8;
}

- (BOOL)allCellsAreCleanNonBlocking
{
  if (self->_dependencyTracker)
  {
    v5 = objc_msgSend_referencesToDirty(self, a2, v2, v3);
    isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v5, v6, v7, v8);

    return isEmptyForDirtying && !self->_hadDirtyCellsRecently;
  }

  else
  {
    return 1;
  }
}

- (BOOL)allCellsAreCleanInOwner:(TSKUIDStruct)owner
{
  ownerCopy = owner;
  v4 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, a2, &ownerCopy, owner._upper);
  return (objc_msgSend_hasDirtyingToPerformForOwnerId_(self->_refsToDirty, v5, v4, v6) & 1) == 0 && objc_msgSend_numDirtyCellsInOwnerID_(self->_dependencyTracker, v7, v4, v8) == 0;
}

- (TSCECellCoordSet)cellsInACycleInOwner:(SEL)owner
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_cellsInACycleInOwner_(result, owner, a4, v4);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (void)setRewritingMinion:(id)minion
{
  minionCopy = minion;
  if (minionCopy && self->_rewritingMinion)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCECalculationEngine setRewritingMinion:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1973, 0, "Warning: Overwriting a pre-existing rewritingMinion with a new one");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  rewritingMinion = self->_rewritingMinion;
  self->_rewritingMinion = minionCopy;
}

- (id)extendTableUIDHistoryWithRewrite:(id)rewrite
{
  rewriteCopy = rewrite;
  v8 = rewriteCopy;
  if (rewriteCopy && objc_msgSend_rewriteType(rewriteCopy, v5, v6, v7) == 10)
  {
    objc_msgSend_willModify(self, v9, v10, v11);
    tableUIDHistory = self->_tableUIDHistory;
    if (!tableUIDHistory)
    {
      v29 = 0u;
      v30 = 0u;
      LODWORD(v31) = 1065353216;
      v16 = [TSCERewriteTableUIDInfo alloc];
      v19 = objc_msgSend_initWithTableUIDMap_(v16, v17, &v29, v18);
      v20 = self->_tableUIDHistory;
      self->_tableUIDHistory = v19;

      sub_2210BDEC0(&v29);
      tableUIDHistory = self->_tableUIDHistory;
    }

    v21 = objc_msgSend_tableUIDInfo(v8, v12, v13, v14, v29, v30, v31);
    v25 = objc_msgSend_tableUIDMap(v21, v22, v23, v24);
    v27 = objc_msgSend_extendMappingWithTableUIDs_calcEngine_(tableUIDHistory, v26, v25, self);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)rollbackTableUIDHistoryWithRewriteInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    objc_msgSend_willModify(self, v4, v5, v6);
    objc_msgSend_rollbackMappings_(self->_tableUIDHistory, v7, infoCopy, v8);
  }
}

- (void)markCellRefAsDirty:(const TSCECellRef *)dirty
{
  v7 = objc_msgSend_referencesToDirty(self, a2, dirty, v3);
  objc_msgSend_dirtyCellRef_(v7, v5, dirty, v6);
}

- (void)markCellRefsAsDirty:(id)dirty
{
  dirtyCopy = dirty;
  v7 = objc_msgSend_referencesToDirty(self, v4, v5, v6);
  objc_msgSend_dirtyCellRefsInReferenceSet_(v7, v8, dirtyCopy, v9);
}

- (void)markCellRefSetAsDirty:(const void *)dirty
{
  if ((TSCECellRefSet::isEmpty(dirty) & 1) == 0)
  {
    v10 = objc_msgSend_referencesToDirty(self, v5, v6, v7);
    objc_msgSend_dirtyCellRefs_(v10, v8, dirty, v9);
  }
}

- (void)markCoordsDirty:(const void *)dirty inInternalOwner:(unsigned __int16)owner
{
  ownerCopy = owner;
  if (!TSCECellCoordSet::isEmpty(dirty))
  {
    v11 = objc_msgSend_referencesToDirty(self, v7, v8, v9);
    objc_msgSend_dirtyCoords_inOwnerId_(v11, v10, dirty, ownerCopy);
  }
}

- (void)markCoordsDirty:(const void *)dirty inOwner:(const TSKUIDStruct *)owner
{
  v6 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(self->_dependencyTracker, a2, owner, owner);
  if (v6 != 0xFFFF)
  {

    MEMORY[0x2821F9670](self, sel_markCoordsDirty_inInternalOwner_, dirty, v6);
  }
}

- (void)headerStateOfTableChanged:(TSKUIDStruct)changed changedRows:(BOOL)rows
{
  changedCopy = changed;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self->_dependencyTracker, a2, &changedCopy, rows);
  if (objc_msgSend_isBatchingGroupCellDirtying(self, v5, v6, v7))
  {
    sub_2210C2B00(&self->_deferredUpdateTrackedHeaders.__table_.__bucket_list_.__ptr_, &changedCopy, &changedCopy);
  }

  else
  {
    v11 = objc_msgSend_headerNameMgr(self, v8, v9, v10);
    objc_msgSend_updateTrackedHeaders_(v11, v12, &changedCopy, v13);

    v17 = objc_msgSend_namedReferenceManager(self, v14, v15, v16);
    objc_msgSend_updateTrackedHeaders_(v17, v18, &changedCopy, v19);
  }
}

- (void)headerStateOfTableChanged:(TSKUIDStruct)changed
{
  changedCopy = changed;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self->_dependencyTracker, a2, &changedCopy, 1);
  objc_msgSend_headerStateOfTableChanged_changedRows_(self->_dependencyTracker, v4, &changedCopy, 0);
  if (objc_msgSend_isBatchingGroupCellDirtying(self, v5, v6, v7))
  {
    sub_2210C2B00(&self->_deferredUpdateTrackedHeaders.__table_.__bucket_list_.__ptr_, &changedCopy, &changedCopy);
  }

  else
  {
    v11 = objc_msgSend_headerNameMgr(self, v8, v9, v10);
    objc_msgSend_updateTrackedHeaders_(v11, v12, &changedCopy, v13);

    v17 = objc_msgSend_namedReferenceManager(self, v14, v15, v16);
    objc_msgSend_updateTrackedHeaders_(v17, v18, &changedCopy, v19);
  }
}

- (void)dirtyCellsForColumnRange:(_NSRange)range fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)tableRange
{
  bottomRight = tableRange._bottomRight;
  topLeft = tableRange._topLeft;
  length = range.length;
  location = range.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 0);
  v13.range._topLeft = (*&topLeft & 0xFFFF0000FFFFFFFFLL | (location << 32));
  v13.range._bottomRight = (*&bottomRight & 0xFFFF0000FFFFFFFFLL | (((((location + length) << 32) + 0xFFFF00000000) >> 32) << 32));
  v13._tableUID = *table;
  if (TSCERangeRef::isValid(&v13))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v11, &v13, v12);
  }
}

- (void)dirtyCellsForRowRange:(_NSRange)range fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)tableRange
{
  bottomRight = tableRange._bottomRight;
  topLeft = tableRange._topLeft;
  length = range.length;
  location = range.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 1);
  v13.range._topLeft = (*&topLeft & 0xFFFFFFFF00000000 | location);
  v13.range._bottomRight = (*&bottomRight & 0xFFFFFFFF00000000 | (length + location - 1));
  v13._tableUID = *table;
  if (TSCERangeRef::isValid(&v13))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v11, &v13, v12);
  }
}

- (void)dirtyCellsForRemovalOfColumns:(_NSRange)columns fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  location = columns.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 0);
  v12.range._topLeft = (*&topLeft & 0xFFFF0000FFFFFFFFLL | (location << 32));
  v12.range._bottomRight = bottomRight;
  v12._tableUID = *table;
  if (TSCERangeRef::isValid(&v12))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v10, &v12, v11);
  }
}

- (void)dirtyCellsForRemovalOfRows:(_NSRange)rows fromTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  location = rows.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 1);
  v12.range._topLeft = (*&topLeft & 0xFFFFFFFF00000000 | location);
  v12.range._bottomRight = bottomRight;
  v12._tableUID = *table;
  if (TSCERangeRef::isValid(&v12))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v10, &v12, v11);
  }
}

- (void)dirtyCellsForInsertionOfColumns:(_NSRange)columns forTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range headerRange:(TSCERangeCoordinate)headerRange
{
  location = columns.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 0, *&range._topLeft, *&range._bottomRight);
  v11.range._topLeft = (*&headerRange._topLeft & 0xFFFF0000FFFFFFFFLL | (location << 32));
  v11.range._bottomRight = headerRange._bottomRight;
  v11._tableUID = *table;
  if (TSCERangeRef::isValid(&v11))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v9, &v11, v10);
  }
}

- (void)dirtyCellsForInsertionOfRows:(_NSRange)rows forTable:(const TSKUIDStruct *)table tableRange:(TSCERangeCoordinate)range headerRange:(TSCERangeCoordinate)headerRange
{
  location = rows.location;
  objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 1, *&range._topLeft, *&range._bottomRight);
  v11.range._topLeft.row = location;
  *&v11.range._topLeft.column = *&headerRange._topLeft.column;
  v11.range._bottomRight = headerRange._bottomRight;
  v11._tableUID = *table;
  if (TSCERangeRef::isValid(&v11))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v9, &v11, v10);
  }
}

- (void)dirtyCellsForMergingRange:(TSCERangeCoordinate)range forTable:(const TSKUIDStruct *)table headerRowRange:(TSCERangeCoordinate)rowRange headerColumnRange:(TSCERangeCoordinate)columnRange
{
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  if (range._topLeft.row <= rowRange._bottomRight.row && rowRange._topLeft.row <= range._bottomRight.row && range._topLeft.column <= rowRange._bottomRight.column && rowRange._topLeft.column <= range._bottomRight.column && range._topLeft.row != 0x7FFFFFFF && (*&range._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && range._bottomRight.row != 0x7FFFFFFF && (*&range._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && range._topLeft.column <= range._bottomRight.column && range._topLeft.row <= range._bottomRight.row && rowRange._topLeft.row != 0x7FFFFFFF && (*&rowRange._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && rowRange._bottomRight.row != 0x7FFFFFFF && (*&rowRange._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && rowRange._topLeft.column <= rowRange._bottomRight.column && rowRange._topLeft.row <= rowRange._bottomRight.row)
  {
    objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 1);
  }

  v10 = topLeft.row > columnRange._bottomRight.row || columnRange._topLeft.row > bottomRight.row;
  if (!v10 && topLeft.column <= columnRange._bottomRight.column && columnRange._topLeft.column <= bottomRight.column && topLeft.row != 0x7FFFFFFF && (*&topLeft & 0xFFFF00000000) != 0x7FFF00000000 && bottomRight.row != 0x7FFFFFFF && (*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && topLeft.column <= bottomRight.column && topLeft.row <= bottomRight.row && columnRange._topLeft.row != 0x7FFFFFFF && (*&columnRange._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && columnRange._bottomRight.row != 0x7FFFFFFF && (*&columnRange._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && columnRange._topLeft.column <= columnRange._bottomRight.column && columnRange._topLeft.row <= columnRange._bottomRight.row)
  {
    objc_msgSend_headerStateOfTableChanged_changedRows_(self, a2, table->_lower, table->_upper, 0);
  }

  v13.range._topLeft = topLeft;
  v13.range._bottomRight = bottomRight;
  v13._tableUID = *table;
  if (TSCERangeRef::isValid(&v13))
  {
    objc_msgSend_markRangeRefAsDirty_(self, v11, &v13, v12);
  }
}

- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_internalRangeReferenceForRangeRef_(dependencyTracker, a2, dirty, v3);
  }

  v6 = objc_msgSend_referencesToDirty(self, a2, dirty, v3);
  objc_msgSend_dirtyInternalRangeRef_(v6, v7, v9, v8);
}

- (void)markAllExternalGroupByRefsDirty:(const TSKUIDStruct *)dirty
{
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  objc_msgSend_cellRefsReferringToGroupBy_outCellRefs_(self->_dependencyTracker, a2, dirty, &v10);
  v7 = objc_msgSend_referencesToDirty(self, v4, v5, v6);
  objc_msgSend_dirtyCellRefs_(v7, v8, &v10, v9);

  sub_22107C800(&v10, v11[0]);
}

- (void)markAllFunctionsAsDirty
{
  objc_msgSend_willModify(self, a2, v2, v3);
  dependencyTracker = self->_dependencyTracker;

  MEMORY[0x2821F9670](dependencyTracker, sel_dirtyAllFunctions, v5, v6);
}

- (void)markOnlyDependentsDirty:(const TSCECellRef *)dirty
{
  v7 = objc_msgSend_referencesToDirty(self, a2, dirty, v3);
  objc_msgSend_dirtyOnlyDependentsOfCellRef_(v7, v5, dirty, v6);
}

- (void)scheduleDetectAndRepairConsistencyViolations
{
  v6 = objc_msgSend_referencesToDirty(self, a2, v2, v3);
  objc_msgSend_setShouldPerformDetectAndRepairConsistencyViolations_(v6, v4, 1, v5);
}

- (void)markDateTimeVolatileFunctionsAsDirtyForCurrentDateTime
{
  objc_msgSend_pauseRecalculation(self, a2, v2, v3);
  v8 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6, v7);
  v12 = objc_msgSend_defaultTimeZone(MEMORY[0x277CBEBB0], v9, v10, v11);
  objc_msgSend_setCurrentDate_timeZone_markVolatilesDirty_(self, v13, v8, v12, 1);

  objc_msgSend_resumeRecalculation(self, v14, v15, v16);
}

- (id)rewriteSpecStack
{
  if ((objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2, v3) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCECalculationEngine rewriteSpecStack]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 2237, 0, "Need to add locking to run this on multiple threads");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  rewriteSpecStack = self->_rewriteSpecStack;

  return rewriteSpecStack;
}

- (void)pushRewriteSpec:(id)spec
{
  specCopy = spec;
  if (specCopy)
  {
    rewriteSpecStack = self->_rewriteSpecStack;
    if (!rewriteSpecStack)
    {
      v7 = objc_opt_new();
      v8 = self->_rewriteSpecStack;
      self->_rewriteSpecStack = v7;

      rewriteSpecStack = self->_rewriteSpecStack;
    }

    objc_msgSend_addObject_(rewriteSpecStack, v4, specCopy, v5);
  }
}

- (void)popRewriteSpec:(id)spec
{
  specCopy = spec;
  if (specCopy)
  {
    v7 = objc_msgSend_lastObject(self->_rewriteSpecStack, v4, v5, v6);

    if (v7 != specCopy)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCECalculationEngine popRewriteSpec:]", v10);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 2267, 0, "Popping wrong rewriteSpec off rewriteSpecStack");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    if (!objc_msgSend_count(self->_rewriteSpecStack, v8, v9, v10))
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSCECalculationEngine popRewriteSpec:]", v22);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 2268, 0, "Have no rewriteSpecs to pop");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
    }

    if (objc_msgSend_count(self->_rewriteSpecStack, v20, v21, v22))
    {
      objc_msgSend_removeLastObject(self->_rewriteSpecStack, v32, v33, v34);
      if (objc_msgSend_count(self->_rewriteSpecStack, v35, v36, v37))
      {
        v41 = objc_msgSend_lastObject(self->_rewriteSpecStack, v38, v39, v40);
        objc_msgSend_addNestedRewrite_(v41, v42, specCopy, v43);
      }
    }
  }
}

- (void)markRemoteDataVolatileFunctionsAsDirty
{
  objc_msgSend_pauseRecalculation(self, a2, v2, v3);
  objc_msgSend_dirtyRemoteDataVolatileFunctions(self->_dependencyTracker, v5, v6, v7);

  objc_msgSend_resumeRecalculation(self, v8, v9, v10);
}

- (void)markAllVolatileFunctionsAsDirty
{
  objc_msgSend_markDateTimeVolatileFunctionsAsDirtyForCurrentDateTime(self, a2, v2, v3);
  objc_msgSend_markRandomVolatileFunctionsAsDirty(self, v5, v6, v7);
  objc_msgSend_markLocaleVolatileFunctionsAsDirty(self, v8, v9, v10);

  MEMORY[0x2821F9670](self, sel_markRemoteDataVolatileFunctionsAsDirty, v11, v12);
}

- (void)blockUntilRecalcIsCompleteWithTimeout:(double)timeout
{
  if (timeout == 0.0)
  {
    v7 = objc_msgSend_referencesToDirty(self, a2, v3, v4);
    isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v7, v8, v9, v10);

    if ((isEmptyForDirtying & 1) == 0)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_221236AD4;
      v29[3] = &unk_27845E3F8;
      v29[4] = self;
      objc_msgSend_pauseRecalculationForBlock_(self, v12, v29, v14);
    }

    objc_msgSend_p_blockUntilRecalcIsCompleteWithTimeout_(self, v12, v13, v14, timeout);
    while (1)
    {
      v18 = objc_msgSend_referencesToDirty(self, v15, v16, v17);
      v22 = objc_msgSend_isEmptyForDirtying(v18, v19, v20, v21);

      if (v22)
      {
        break;
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_221236B34;
      v28[3] = &unk_27845E3F8;
      v28[4] = self;
      objc_msgSend_pauseRecalculationForBlock_(self, v23, v28, v24);
      objc_msgSend_p_blockUntilRecalcIsCompleteWithTimeout_(self, v25, v26, v27, timeout);
    }
  }

  else
  {

    objc_msgSend_p_blockUntilRecalcIsCompleteWithTimeout_(self, a2, v3, v4);
  }
}

- (void)beginSuppressingWillModifyCalls
{
  if ((objc_msgSend_isSuppressingWillModifyCalls(self->_dependencyTracker, a2, v2, v3) & 1) == 0)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
  }

  dependencyTracker = self->_dependencyTracker;

  objc_msgSend_beginSuppressingWillModifyCalls(dependencyTracker, v5, v6, v7);
}

- (void)pauseRecalculation
{
  calculationPauseCount = self->_calculationPauseCount;
  self->_calculationPauseCount = calculationPauseCount + 1;
  if (!calculationPauseCount)
  {
    if (objc_msgSend_threadState(self, a2, v2, v3))
    {
      if (!self->_shouldCancelRecalculation)
      {
        return;
      }
    }

    else
    {
      self->_shouldCancelRecalculation = 1;
    }

    objc_msgSend_p_blockUntilRecalcTaskExitedWithTimeout_(self, v6, v7, v8, 0.0);
    self->_shouldCancelRecalculation = 0;
  }
}

- (void)pauseRecalculationSometimeSoon
{
  calculationPauseCount = self->_calculationPauseCount;
  self->_calculationPauseCount = calculationPauseCount + 1;
  if (!calculationPauseCount)
  {
    os_unfair_lock_lock(&self->_recalculationThreadStateMutex);
    self->_shouldCancelRecalculation = 1;

    os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);
  }
}

- (void)resumeRecalculation
{
  WeakRetained = objc_loadWeakRetained(&self->_accessController);
  if (objc_msgSend_hasWrite(WeakRetained, v4, v5, v6))
  {
  }

  else
  {
    IsPaused = objc_msgSend_recalculationIsPaused(self, v7, v8, v9);

    if ((IsPaused & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_221576500(&self->_refResolverMap._refResolverMutex);
LABEL_5:
  calculationPauseCount = self->_calculationPauseCount;
  v15 = __OFSUB__(calculationPauseCount--, 1);
  self->_calculationPauseCount = calculationPauseCount;
  if ((calculationPauseCount < 0) ^ v15 | (calculationPauseCount == 0))
  {
    if (self->_calculationWillShutDown)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCECalculationEngine resumeRecalculation]", v13);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 2545, 0, "Can't resume calculation on a closing document!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    self->_shouldCancelRecalculation = 0;
    if (objc_msgSend_threadState(self, v11, v12, v13) != 2)
    {

      objc_msgSend_startRecalcTaskIfNecessary(self, v25, v26, v27);
    }
  }
}

- (void)pauseRecalculationForBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_pauseRecalculation(self, v4, v5, v6);
  blockCopy[2]();
  objc_msgSend_resumeRecalculation(self, v7, v8, v9);
}

- (void)resumeRecalculationForBlock:(id)block
{
  blockCopy = block;
  if (self->_calculationPauseCount < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      objc_msgSend_resumeRecalculation(self, v4, v5, v6);
      ++v7;
    }

    while (self->_calculationPauseCount > 0);
  }

  blockCopy[2]();
  for (; v7; --v7)
  {
    objc_msgSend_pauseRecalculationSometimeSoon(self, v8, v9, v10);
  }
}

- (void)startRecalculation
{
  if (!self->_calculationWillShutDown && (objc_msgSend_isRecalculationStarted(self, a2, v2, v3) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_recalculationThreadStateMutex);
    self->_recalculationThreadState = 1;
    os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);
    objc_msgSend_resumeRecalculation(self, v5, v6, v7);
    if ((objc_msgSend_recalculationIsPaused(self, v8, v9, v10) & 1) == 0 && !self->_calculationWillShutDown && !self->_shouldCancelRecalculation)
    {
      selfCopy = self;
      recalcLowPriorityQueue = selfCopy->_recalcLowPriorityQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2212370D0;
      block[3] = &unk_27845E3F8;
      v15 = selfCopy;
      v13 = selfCopy;
      dispatch_async(recalcLowPriorityQueue, block);
    }
  }
}

- (void)startRecalculationTask
{
  if (self->_recalculationThreadState != 1)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECalculationEngine startRecalculationTask]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 2650, 0, "cannot start recalculation thread because it is in the wrong state");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  selfCopy = self;
  recalcLoopGroup = selfCopy->_recalcLoopGroup;
  recalcHighPriorityQueue = selfCopy->_recalcHighPriorityQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221237274;
  v17[3] = &unk_27845FEF0;
  v18 = selfCopy;
  v19 = selfCopy;
  v16 = selfCopy;
  dispatch_group_async(recalcLoopGroup, recalcHighPriorityQueue, v17);
}

- (void)startRecalcTaskIfNecessary
{
  if (self->_calculationWillShutDown || !self->_dependencyTracker || (objc_msgSend_recalculationIsPaused(self, a2, v2, v3) & 1) != 0 || self->_shouldCancelRecalculation)
  {
    return;
  }

  if ((objc_msgSend_hasDirtyCells(self->_dependencyTracker, v5, v6, v7) & 1) == 0)
  {
    v11 = objc_msgSend_referencesToDirty(self, v8, v9, v10);
    if (objc_msgSend_isEmptyForDirtying(v11, v12, v13, v14))
    {
      hasBackgroundTasks = objc_msgSend_hasBackgroundTasks(self, v15, v16, v17);

      if (!hasBackgroundTasks)
      {
        if (self->_lastHasDirtyFormulas)
        {
          self->_hadDirtyCellsRecently = 1;

          objc_msgSend_notifyObserversOfRecalcProgress(self, v19, v20, v21);
        }

        return;
      }
    }

    else
    {
    }
  }

  os_unfair_lock_lock(&self->_recalculationThreadStateMutex);
  if (self->_recalculationThreadState == 1 && (objc_msgSend_recalculationIsPaused(self, v22, v23, v24) & 1) == 0)
  {
    objc_msgSend_startRecalculationTask(self, v25, v26, v27);
    self->_recalculationThreadState = 0;
    os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);

    sub_221576500(&self->_refResolverMap._refResolverMutex);
  }

  else
  {

    os_unfair_lock_unlock(&self->_recalculationThreadStateMutex);
  }
}

- (void)willClose
{
  self->_calculationWillShutDown = 1;
  objc_msgSend_pauseRecalculation(self, a2, v2, v3);
  objc_msgSend_flushInProgressDirtying(self->_dependencyTracker, v5, v6, v7);
  v11 = objc_msgSend_referencesToDirty(self, v8, v9, v10);
  objc_msgSend_willClose(v11, v12, v13, v14);

  objc_msgSend_willClose(self->_headerNameMgr, v15, v16, v17);
  headerNameMgr = self->_headerNameMgr;
  self->_headerNameMgr = 0;

  objc_msgSend_willClose(self->_namedReferenceManager, v19, v20, v21);
  namedReferenceManager = self->_namedReferenceManager;
  self->_namedReferenceManager = 0;

  objc_msgSend_willClose(self->_tablesByName, v23, v24, v25);
  tablesByName = self->_tablesByName;
  self->_tablesByName = 0;

  sub_221575E6C(&self->_refResolverMap);
  dependencyTracker = self->_dependencyTracker;

  objc_msgSend_willClose(dependencyTracker, v27, v28, v29);
}

- (void)willModify
{
  if (!self->_isUnarchiving)
  {
    objc_msgSend_willModify(self->_dependencyTracker, a2, v2, v3);
  }

  v5.receiver = self;
  v5.super_class = TSCECalculationEngine;
  [(TSCECalculationEngine *)&v5 willModify];
}

- (void)superWillModify
{
  v2.receiver = self;
  v2.super_class = TSCECalculationEngine;
  [(TSCECalculationEngine *)&v2 willModify];
}

- (id)evaluateSynchedWithCalcEngineWithFormula:(id)formula evalContext:(id)context
{
  formulaCopy = formula;
  contextCopy = context;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_221231978;
  v31 = sub_221231988;
  v32 = 0;
  if (formulaCopy)
  {
    atomic_fetch_add(&dword_27CFB52E4, 1u);
    recalcDispatchGroup = self->_recalcDispatchGroup;
    recalcHighPriorityQueue = self->_recalcHighPriorityQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_221237D50;
    block[3] = &unk_278461A90;
    v26 = &v27;
    v24 = formulaCopy;
    v25 = contextCopy;
    dispatch_group_async(recalcDispatchGroup, recalcHighPriorityQueue, block);
    dispatch_group_wait(self->_recalcDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCECalculationEngine evaluateSynchedWithCalcEngineWithFormula:evalContext:]", v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 2848, 0, "invalid nil value for '%{public}s'", "formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v21;
}

- (void)beginBatchingGroupCellDirtying
{
  if ((objc_msgSend_isSuppressingWillModifyCalls(self->_dependencyTracker, a2, v2, v3) & 1) == 0)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
  }

  dependencyTracker = self->_dependencyTracker;

  objc_msgSend_beginBatchingGroupCellDirtying(dependencyTracker, v5, v6, v7);
}

- (void)endBatchingGroupCellDirtying
{
  if ((objc_msgSend_endBatchingGroupCellDirtying(self->_dependencyTracker, a2, v2, v3) & 1) == 0)
  {
    if (self->_deferredUpdateTrackedHeaders.__table_.__size_)
    {
      v8 = objc_msgSend_headerNameMgr(self, v5, v6, v7);
      v14 = objc_msgSend_namedReferenceManager(self, v9, v10, v11);
      for (i = &self->_deferredUpdateTrackedHeaders.__table_.__first_node_; ; objc_msgSend_updateTrackedHeaders_(v14, v16, &i[2], v17))
      {
        i = i->__next_;
        if (!i)
        {
          break;
        }

        objc_msgSend_updateTrackedHeaders_(v8, v12, &i[2], v13);
      }

      sub_2210BE918(&self->_deferredUpdateTrackedHeaders.__table_.__bucket_list_.__ptr_);
    }

    if (self->_needsEmbiggenedCoordsCheck)
    {

      objc_msgSend_updateEmbiggenedTableCache(self, v5, v6, v7);
    }
  }
}

- (void)assertAt:(id)at nonCalcEngineException:(id)exception evaluatingFormula:(id)formula
{
  atCopy = at;
  exceptionCopy = exception;
  formulaCopy = formula;
  if (formulaCopy)
  {
    v13 = [TSCEFunctionsInUse alloc];
    v16 = objc_msgSend_initWithCalcEngine_(v13, v14, self, v15);
    v51 = 0;
    __p = 0;
    v49 = TSKMakeUIDStructRandom();
    v50 = v17;
    objc_msgSend_addFunctionUsesInFormula_atCellRef_outContainsVolatileFunction_(v16, v17, formulaCopy, &__p, &v51);
    v23 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v18, @"Functions used:", v19);
    if (v16)
    {
      objc_msgSend_functionsUsed(v16, v20, v21, v22);
      v26 = __p;
      v27 = v49;
      if (__p != v49)
      {
        do
        {
          objc_msgSend_appendFormat_(v23, v24, @" %d", v25, *v26++);
        }

        while (v26 != v27);
      }
    }

    else
    {
      __p = 0;
      v49 = 0;
      v50 = 0;
    }

    if (__p)
    {
      v49 = __p;
      operator delete(__p);
    }

    v34 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSCECalculationEngine assertAt:nonCalcEngineException:evaluatingFormula:]", v36);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v39);
    if (exceptionCopy)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v37, v41, 2953, 0, "Non-calcEngine NSException passed up to %{public}@: %{public}@ with formula: %{public}@", atCopy, exceptionCopy, v23);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v37, v41, 2955, 0, "Non-calcEngine type exception passed up to %{public}@ for formula %{public}@.", atCopy, v23);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
  }

  else
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECalculationEngine assertAt:nonCalcEngineException:evaluatingFormula:]", v11);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v31);
    if (exceptionCopy)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v33, 2959, 0, "Non-calcEngine NSException passed up to %{public}@: %{public}@", atCopy, exceptionCopy);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v33, 2961, 0, "Non-calcEngine type exception passed up to %{public}@.", atCopy);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
  }
}

- (TSCEInternalCellRefSet)corruptCellRefs
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_corruptCellRefs(result, a3, v3, v4);
  }

  *&retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 0;
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  return result;
}

- (void)replaceRemoteDataKeysInterestedIn:(id)in forCell:(const TSCECellRef *)cell
{
  inCopy = in;
  if (!objc_msgSend_count(inCopy, v7, v8, v9))
  {

    inCopy = 0;
  }

  dependencyTracker = self->_dependencyTracker;
  v12 = *&cell->coordinate.row;
  upper = cell->_tableUID._upper;
  objc_msgSend_replaceRemoteDataKeysInterestedInForCell_specifierSet_(dependencyTracker, v10, &v12, inCopy);
}

- (BOOL)rangeIsWithinTable:(const TSCERangeRef *)table
{
  v5 = objc_msgSend_tableResolverForTableUID_(self, a2, &table->_tableUID, v3);
  v8 = v5;
  if (v5)
  {
    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v5, v6, table, v7);
  }

  else
  {
    IsWithinTable = 0;
  }

  return IsWithinTable;
}

- (BOOL)referenceIsValid:(const TSCERangeRef *)valid
{
  v5 = objc_msgSend_tableResolverForTableUID_(self, a2, &valid->_tableUID, v3);
  v9 = v5;
  if (v5)
  {
    if (objc_msgSend_isPivotTable(v5, v6, v7, v8))
    {
      IsWithinTableInView = objc_msgSend_rangeIsWithinTableInView_(v9, v10, valid, v11);
    }

    else
    {
      IsWithinTableInView = objc_msgSend_rangeIsWithinTable_(v9, v10, valid, v11);
    }

    v13 = IsWithinTableInView;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)referenceIsValidIncludingSheet:(const TSCERangeRef *)sheet
{
  v8 = objc_msgSend_tableResolverForTableUID_(self, a2, &sheet->_tableUID, v3);
  if (v8 && objc_msgSend_referenceIsValid_(self, v6, sheet, v7))
  {
    v12 = objc_msgSend_sheetName(v8, v9, v10, v11);
    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unsigned)rowHeightInBodyOfTable:(id)table
{
  tableCopy = table;
  v16[0] = objc_msgSend_tableUID(tableCopy, v5, v6, v7);
  v16[1] = v8;
  v10 = objc_msgSend_tableResolverForTableUID_(self, v8, v16, v9);
  v13 = v10;
  if (v10)
  {
    v14 = objc_msgSend_rowHeightInBodyOfTable_(v10, v11, tableCopy, v12);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unsigned)columnWidthInBodyOfTable:(id)table
{
  tableCopy = table;
  v16[0] = objc_msgSend_tableUID(tableCopy, v5, v6, v7);
  v16[1] = v8;
  v10 = objc_msgSend_tableResolverForTableUID_(self, v8, v16, v9);
  v13 = v10;
  if (v10)
  {
    v14 = objc_msgSend_columnWidthInBodyOfTable_(v10, v11, tableCopy, v12);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSTRefNamer)namer
{
  namer = self->_namer;
  if (!namer)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_namer)
    {
      v5 = [TSTRefNamer alloc];
      v8 = objc_msgSend_initWithCalcEngine_(v5, v6, selfCopy, v7);
      v9 = self->_namer;
      self->_namer = v8;
    }

    objc_sync_exit(selfCopy);

    namer = self->_namer;
  }

  return namer;
}

- (TSTRefParser)refParser
{
  refParser = self->_refParser;
  if (!refParser)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_refParser)
    {
      v5 = [TSTRefParser alloc];
      v8 = objc_msgSend_initWithCalcEngine_(v5, v6, selfCopy, v7);
      v9 = self->_refParser;
      self->_refParser = v8;
    }

    objc_sync_exit(selfCopy);

    refParser = self->_refParser;
  }

  return refParser;
}

- (TSTHeaderNameMgr)headerNameMgr
{
  headerNameMgr = self->_headerNameMgr;
  if (!headerNameMgr)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECalculationEngine headerNameMgr]", v2);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 3096, 0, "invalid nil value for '%{public}s'", "_headerNameMgr");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    headerNameMgr = self->_headerNameMgr;
  }

  return headerNameMgr;
}

- (TSCENamedReferenceManager)namedReferenceManager
{
  namedReferenceManager = self->_namedReferenceManager;
  if (!namedReferenceManager)
  {
    v4 = [TSCENamedReferenceManager alloc];
    v8 = objc_msgSend_context(self, v5, v6, v7);
    v10 = objc_msgSend_initWithContext_calculationEngine_(v4, v9, v8, self);
    v11 = self->_namedReferenceManager;
    self->_namedReferenceManager = v10;

    namedReferenceManager = self->_namedReferenceManager;
  }

  return namedReferenceManager;
}

- (void)beginTrackingNamesInTableForLegacyNRM:(const TSKUIDStruct *)m
{
  if (*m != 0 && (objc_msgSend_hasDisallowedHeaderIndexingForTableUID_(self, a2, m, v3) & 1) == 0)
  {
    objc_msgSend_willModify(self, v6, v7, v8);
    os_unfair_lock_lock(&self->_legacyNrmListsMutex);
    sub_221083454(&self->_beginTrackingNamesForLegacyNRMQueue, m);

    os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  }
}

- (void)endTrackingNamesInTableForLegacyNRM:(const TSKUIDStruct *)m
{
  if (*m != 0 && (objc_msgSend_hasDisallowedHeaderIndexingForTableUID_(self, a2, m, v3) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_legacyNrmListsMutex);
    if (!sub_2210875C4(&self->_tablesWithNoLegacyNRMIndexes.__table_.__bucket_list_.__ptr_, m))
    {
      os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
      objc_msgSend_willModify(self, v6, v7, v8);
      os_unfair_lock_lock(&self->_legacyNrmListsMutex);
      sub_221083454(&self->_endTrackingNamesForLegacyNRMQueue, m);
      sub_2210C2B00(&self->_tablesWithNoLegacyNRMIndexes.__table_.__bucket_list_.__ptr_, m, m);
    }

    os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  }
}

- (TSKUIDStruct)popNextTableToBeginTrackingNames
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  p_beginTrackingNamesForLegacyNRMQueue = &self->_beginTrackingNamesForLegacyNRMQueue;
  if (self->_beginTrackingNamesForLegacyNRMQueue.__begin_ == self->_beginTrackingNamesForLegacyNRMQueue.__end_)
  {
    upper = 0;
    lower = 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
    objc_msgSend_willModify(self, v4, v5, v6);
    os_unfair_lock_lock(&self->_legacyNrmListsMutex);
    begin = p_beginTrackingNamesForLegacyNRMQueue->__begin_;
    end = self->_beginTrackingNamesForLegacyNRMQueue.__end_;
    lower = p_beginTrackingNamesForLegacyNRMQueue->__begin_->_lower;
    upper = p_beginTrackingNamesForLegacyNRMQueue->__begin_->_upper;
    v11 = p_beginTrackingNamesForLegacyNRMQueue->__begin_ + 1;
    v12 = end - v11;
    if (end != v11)
    {
      memmove(p_beginTrackingNamesForLegacyNRMQueue->__begin_, v11, end - v11);
    }

    self->_beginTrackingNamesForLegacyNRMQueue.__end_ = (begin + v12);
  }

  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  v13 = lower;
  v14 = upper;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSKUIDStruct)popNextTableToEndTrackingNames
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  p_endTrackingNamesForLegacyNRMQueue = &self->_endTrackingNamesForLegacyNRMQueue;
  if (self->_endTrackingNamesForLegacyNRMQueue.__begin_ == self->_endTrackingNamesForLegacyNRMQueue.__end_)
  {
    upper = 0;
    lower = 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
    objc_msgSend_willModify(self, v4, v5, v6);
    os_unfair_lock_lock(&self->_legacyNrmListsMutex);
    begin = p_endTrackingNamesForLegacyNRMQueue->__begin_;
    end = self->_endTrackingNamesForLegacyNRMQueue.__end_;
    lower = p_endTrackingNamesForLegacyNRMQueue->__begin_->_lower;
    upper = p_endTrackingNamesForLegacyNRMQueue->__begin_->_upper;
    v11 = p_endTrackingNamesForLegacyNRMQueue->__begin_ + 1;
    v12 = end - v11;
    if (end != v11)
    {
      memmove(p_endTrackingNamesForLegacyNRMQueue->__begin_, v11, end - v11);
    }

    self->_endTrackingNamesForLegacyNRMQueue.__end_ = (begin + v12);
  }

  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  v13 = lower;
  v14 = upper;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (void)setDisallowHeaderIndexingForTableUID:(const TSKUIDStruct *)d
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  sub_2210C2B00(&self->_disallowedHeaderIndexingTables.__table_.__bucket_list_.__ptr_, d, d);

  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
}

- (void)clearDisallowHeaderIndexingForTableUID:(const TSKUIDStruct *)d
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  sub_2211F2EF4(&self->_disallowedHeaderIndexingTables.__table_.__bucket_list_.__ptr_, d);

  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
}

- (BOOL)hasDisallowedHeaderIndexingForTableUID:(const TSKUIDStruct *)d
{
  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  LOBYTE(d) = sub_2210875C4(&self->_disallowedHeaderIndexingTables.__table_.__bucket_list_.__ptr_, d) != 0;
  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  return d;
}

- (void)resetNRM
{
  objc_msgSend_allRefResolverOwnerUIDs(self, a2, v2, v3);
  v10 = objc_msgSend_namedReferenceManager(self, v5, v6, v7);
  for (i = __p; i != v22; i += 16)
  {
    objc_msgSend_endTrackingNamesInTable_(v10, v8, i, v9);
    v14 = objc_msgSend_tableResolverForTableUID_(self, v12, i, v13);
    v18 = v14;
    if (v14)
    {
      if (objc_msgSend_resolverIsATable(v14, v15, v16, v17))
      {
        objc_msgSend_beginTrackingNamesInTable_(v10, v19, i, v20);
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }
}

- (TSCEReferenceSet)precedentsOfCell:(SEL)cell
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_precedentsOfCell_(result, cell, a4, v4);
  }

  retstr->_wholeOwnerRefs = 0;
  *&retstr->_tableUuidRefs = 0u;
  *&retstr->_spanningRefs = 0u;
  *&retstr->_rangeRefs.__tree_.__end_node_.__left_ = 0u;
  *&retstr->_datalessRefs = 0u;
  *&retstr->_cellRefs.__table_.__first_node_.__next_ = 0u;
  *&retstr->_cellRefs.__table_.__max_load_factor_ = 0u;
  *&retstr->_vptr$TSCEReferenceSet = 0u;
  retstr->_cellRefs.__table_.__bucket_list_ = 0u;
  return result;
}

- (TSCECellRefSet)cellDependentsOfCell:(SEL)cell
{
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_cellDependentsOfCell_(dependencyTracker, cell, a4, v4);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_2212E0848(v9, self, retstr);
  return sub_221122744(v9);
}

- (BOOL)isArrayFormulaCell:(const TSCECellRef *)cell
{
  if (objc_msgSend_ownerKindForOwnerUID_(self, a2, cell->_tableUID._lower, cell->_tableUID._upper) != 1)
  {
    return 0;
  }

  tableUID = cell->_tableUID;
  objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, v5, &tableUID, v6);
  if (objc_msgSend_cellHasThisCellPrecedent_precedent_(self->_dependencyTracker, v7, cell, v14))
  {
    return 0;
  }

  tableUID._lower = objc_msgSend_internalCellReferenceForCellRef_(self->_dependencyTracker, v8, cell, v9);
  LODWORD(tableUID._upper) = v11;
  return objc_msgSend_intCellContainsAFormula_(self->_dependencyTracker, v11, &tableUID, v12);
}

- (TSCEInternalCellRefSet)internalSpillingCellsForFormulaAt:(SEL)at
{
  tableUID = a4->_tableUID;
  objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, at, &tableUID, v4);
  result = self->_dependencyTracker;
  tableUID = a4->_tableUID;
  if (result)
  {
    return objc_msgSend_cellsInOwnerDependentOnBoth_precedent1_precedent2_(result, v8, &tableUID, a4, v11);
  }

  *&retstr->_coordsForOwnerId.__table_.__max_load_factor_ = 0;
  retstr->_coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&retstr->_coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  return result;
}

- (TSCECellRefSet)spillingCellsForFormulaAt:(SEL)at
{
  objc_msgSend_internalSpillingCellsForFormulaAt_(self, at, a4, v4);
  sub_2212E0848(v8, self, retstr);
  return sub_221122744(v8);
}

- (TSUCellRect)spillingRangeForFormulaAt:(const TSCECellRef *)at
{
  v5 = objc_msgSend_spillSizeForCell_(self->_dependencyTracker, a2, at, v3);
  coordinate = at->coordinate;
  result.size = v5;
  result.origin = coordinate;
  return result;
}

- (TSCECellRefSet)spillingCellsInRange:(SEL)range inOwner:(const TSUCellRect *)owner
{
  retstr->_coordsForOwnerUid.__tree_.__size_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  retstr->_coordsForOwnerUid.__tree_.__begin_node_ = &retstr->_coordsForOwnerUid.__tree_.__end_node_;
  __p = 0;
  v13 = 0;
  v14 = 0;
  if (objc_msgSend_hasSpillsOverlappingRange_inTableUID_outSpillRects_(self, range, owner, a5, &__p))
  {
    v11._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
    v11._rowsPerColumn.__tree_.__size_ = 0;
    v11._rectRepresentation.origin = 0;
    v11._rectRepresentation.size = 0;
    v11._rowsPerColumn.__tree_.__begin_node_ = &v11._rowsPerColumn.__tree_.__end_node_;
    v8 = __p;
    v9 = v13;
    while (v8 != v9)
    {
      TSCECellCoordSet::addCellCoords(&v11, v8);
      TSCECellCoordSet::removeCellCoord(&v11, &v8->origin);
      ++v8;
    }

    TSCECellCoordSet::intersectWith(&v11, owner);
    TSCECellRefSet::addCellRefs(retstr, a5, &v11);
    sub_22107C860(&v11._rowsPerColumn, v11._rowsPerColumn.__tree_.__end_node_.__left_);
  }

  result = __p;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return result;
}

- (TSCECellRefSet)spillingCellsViaDependenciesInRange:(SEL)range inOwner:(const TSUCellRect *)owner
{
  objc_msgSend_spillPrecedentForTableUID_(TSCEHauntedOwner, range, a5, a5);
  objc_msgSend_cellDependentsOfCell_(self, v9, v12, v10);
  TSCECellRefSet::intersectWith(retstr, owner, a5);
  return result;
}

- (TSCECellRefSet)spillOriginsSpillingIntoRange:(SEL)range inOwner:(const TSUCellRect *)owner
{
  objc_msgSend_spillingCellsInRange_inOwner_(self, range, owner, a5);
  v10 = 0;
  v11 = &v10;
  v12 = 0x4812000000;
  v13 = sub_2212393D4;
  v14 = sub_2212393E0;
  v15 = &unk_22188E88F;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2212393EC;
  v9[3] = &unk_278461C40;
  v9[5] = &v10;
  v9[6] = a5;
  v9[4] = self;
  TSCECellRefSet::enumerateCellRefsUsingBlock(v18, v9);
  TSCECellRefSet::TSCECellRefSet(retstr, v11 + 2);
  _Block_object_dispose(&v10, 8);
  sub_22107C800(&v16, v17[0]);
  sub_22107C800(v18, v18[1]);
  return result;
}

- (TSCECellCoordSet)verticalSpillingCellsInTable:(SEL)table
{
  result = self->_dependencyTracker;
  if (result)
  {
    return objc_msgSend_verticalSpillCells_(result, table, a4, v4);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (TSCECellCoordSet)verticalSpillingCellsInTable:(SEL)table inRows:(const TSKUIDStruct *)rows
{
  v10 = a5;
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_verticalSpillCells_(dependencyTracker, v8, rows, v9);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x5812000000;
  v21 = sub_2212396D4;
  v22 = sub_2212396E0;
  v23 = &unk_22188E88F;
  v27[0] = 0;
  v27[1] = 0;
  v24 = 0;
  v25 = 0;
  v26 = v27;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2212396EC;
  v14[3] = &unk_278461C68;
  rowsCopy = rows;
  v14[4] = self;
  v12 = v10;
  v15 = v12;
  v16 = &v18;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v28, v14);
  TSCECellCoordSet::TSCECellCoordSet(retstr, (v19 + 6));

  _Block_object_dispose(&v18, 8);
  sub_22107C860(&v26, v27[0]);
  sub_22107C860(&v29, *(&v29 + 1));

  return result;
}

- (BOOL)hasVerticalSpillingCellsInTable:(const TSKUIDStruct *)table inRows:(id)rows
{
  rowsCopy = rows;
  dependencyTracker = self->_dependencyTracker;
  if (dependencyTracker)
  {
    objc_msgSend_verticalSpillCells_(dependencyTracker, v6, table, v7);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2212398F0;
  v13[3] = &unk_278461C90;
  tableCopy = table;
  v13[4] = self;
  v10 = rowsCopy;
  v14 = v10;
  v15 = &v17;
  TSCECellCoordSet::enumerateCoordsUsingBlock(&v21, v13);
  v11 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  sub_22107C860(&v22, *(&v22 + 1));

  return v11;
}

- (TSUCellCoord)conflictWinnerForSpillRect1:(const TSUCellRect *)rect1 spillOrigin2:(const TSUCellCoord *)origin2 inTable:(const TSKUIDStruct *)table
{
  origin = rect1->origin;
  v34 = rect1->origin;
  v6 = *origin2;
  if (origin2->row != 0x7FFFFFFF && (*origin2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (origin.row == 0x7FFFFFFF || (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
    {
      return *origin2;
    }

    else if (origin.row != v6.row || ((*&v6 ^ *&origin) & 0x101FFFF00000000) != 0)
    {
      v32 = *origin2;
      v33 = *table;
      if (TSUCellRect::contains(rect1, v6))
      {
        return *origin2;
      }

      else
      {
        v31.origin = objc_msgSend_spillingRangeForFormulaAt_(self, v13, &v32, v14);
        v31.size = v15;
        v16 = origin;
        if ((TSUCellRect::contains(&v31, v16) & 1) == 0)
        {
          if (origin2->row > origin.row || (v18 = origin2, origin2->row == origin.row) && (v18 = origin2, origin2->column > origin.column))
          {
            v18 = &v34;
          }

          v19 = *v18;
          if (v18->row == origin.row && ((*&origin ^ *&v19) & 0x101FFFF00000000) == 0)
          {
            v28 = TSCERangeCoordinate::rangeCoordFromCellRect(&v31, v17);
            v29 = v23;
            v30 = *table;
            dependencyTracker = self->_dependencyTracker;
            v26 = origin;
            v27 = *table;
            if (objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(dependencyTracker, v23, &v26, &v28))
            {
              return *origin2;
            }

            else
            {
              return v19;
            }
          }

          else
          {
            v25 = *rect1;
            v28 = TSCERangeCoordinate::rangeCoordFromCellRect(&v25, v17);
            v29 = v20;
            v30 = *table;
            v21 = self->_dependencyTracker;
            v26 = *origin2;
            v27 = *table;
            if (!objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(v21, v20, &v26, &v28))
            {
              return v19;
            }
          }
        }
      }
    }
  }

  return origin;
}

- (TSCECellCoordSet)cellCoordsWithError:(SEL)error inTable:(int64_t)table
{
  result = self->_dependencyTracker;
  if (result)
  {
    return MEMORY[0x2821F9670](result, sel_cellCoordsWithError_inTable_, table, a5);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (id)emptyReferenceSetWrapper
{
  v3 = [TSCEReferenceSetWrapper alloc];
  v6 = objc_msgSend_initWithDependencyTracker_(v3, v4, self->_dependencyTracker, v5);

  return v6;
}

- (void)addCalculationStateObserver:(id)observer
{
  observerCopy = observer;
  calculationStateObservers = self->_calculationStateObservers;
  v11 = observerCopy;
  if (!calculationStateObservers)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = self->_calculationStateObservers;
    self->_calculationStateObservers = v7;

    calculationStateObservers = self->_calculationStateObservers;
    observerCopy = v11;
  }

  objc_msgSend_addObject_(calculationStateObservers, observerCopy, observerCopy, v5);
  if (self->_lastHasDirtyFormulas)
  {
    objc_msgSend_recalcInProgressUpdate_(v11, v9, 1, v10);
  }
}

- (void)removeCalculationStateObserver:(id)observer
{
  observerCopy = observer;
  objc_msgSend_removeObject_(self->_calculationStateObservers, v4, observerCopy, v5);
  if (!objc_msgSend_count(self->_calculationStateObservers, v6, v7, v8))
  {
    calculationStateObservers = self->_calculationStateObservers;
    self->_calculationStateObservers = 0;
  }
}

- (void)addAllFormulasCleanObserver:(id)observer
{
  observerCopy = observer;
  allFormulasCleanObservers = self->_allFormulasCleanObservers;
  v9 = observerCopy;
  if (!allFormulasCleanObservers)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = self->_allFormulasCleanObservers;
    self->_allFormulasCleanObservers = v7;

    allFormulasCleanObservers = self->_allFormulasCleanObservers;
    observerCopy = v9;
  }

  objc_msgSend_addObject_(allFormulasCleanObservers, observerCopy, observerCopy, v5);
}

- (void)removeAllFormulasCleanObserver:(id)observer
{
  observerCopy = observer;
  objc_msgSend_removeObject_(self->_allFormulasCleanObservers, v4, observerCopy, v5);
  if (!objc_msgSend_count(self->_allFormulasCleanObservers, v6, v7, v8))
  {
    allFormulasCleanObservers = self->_allFormulasCleanObservers;
    self->_allFormulasCleanObservers = 0;
  }
}

- (void)notifyObserversOfRecalcProgress
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = 1;
  if ((objc_msgSend_hasDirtyCellsIgnoringNRM_(self->_dependencyTracker, a2, 1, v2) & 1) == 0)
  {
    v8 = objc_msgSend_referencesToDirty(self, v5, v6, v7);
    v4 = objc_msgSend_isEmptyForDirtying(v8, v9, v10, v11) ^ 1;
  }

  self->_hadDirtyCellsRecently = v4;
  if (objc_msgSend_count(self->_calculationStateObservers, v5, v6, v7))
  {
    lastUpdateTime = self->_lastUpdateTime;
    if (lastUpdateTime)
    {
      if (self->_lastHasDirtyFormulas == v4 || ((objc_msgSend_timeIntervalSinceNow(lastUpdateTime, v12, v13, v14), v16 > -1.0) ? (v17 = v4) : (v17 = 0), (v17 & 1) != 0))
      {
        if (v4)
        {
LABEL_11:
          LOBYTE(v4) = 1;
          goto LABEL_22;
        }
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v20 = self->_calculationStateObservers;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v40, v45, 16);
        if (v24)
        {
          v25 = *v41;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v41 != v25)
              {
                objc_enumerationMutation(v20);
              }

              objc_msgSend_recalcInProgressUpdate_(*(*(&v40 + 1) + 8 * i), v22, v4, v23);
            }

            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v40, v45, 16);
          }

          while (v24);
        }

        self->_lastHasDirtyFormulas = v4;
        if (v4)
        {
          goto LABEL_11;
        }
      }

      v27 = self->_lastUpdateTime;
      self->_lastUpdateTime = 0;

      LOBYTE(v4) = 0;
    }

    else
    {
      v18 = objc_msgSend_date(MEMORY[0x277CBEAA8], v12, v13, v14);
      v19 = self->_lastUpdateTime;
      self->_lastUpdateTime = v18;

      self->_lastHasDirtyFormulas = 0;
    }
  }

LABEL_22:
  if (!((objc_msgSend_count(self->_allFormulasCleanObservers, v12, v13, v14) == 0) | v4 & 1))
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = self->_allFormulasCleanObservers;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v36, v44, 16);
    if (v33)
    {
      v34 = *v37;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v37 != v34)
          {
            objc_enumerationMutation(v28);
          }

          objc_msgSend_allFormulaCellsAreClean(*(*(&v36 + 1) + 8 * j), v30, v31, v32, v36);
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v36, v44, 16);
      }

      while (v33);
    }
  }
}

- (BOOL)hasMaxNumFormulas
{
  if (objc_msgSend_numberOfFormulas(self->_dependencyTracker, a2, v2, v3) != -1)
  {
    return 0;
  }

  dependencyTracker = self->_dependencyTracker;
  v10 = objc_msgSend_headerNameMgr(self, v5, v6, v7);
  v28 = objc_msgSend_NRM_formulaOwnerUID(v10, v11, v12, v13);
  v29 = v14;
  v16 = objc_msgSend_numFormulaCellsInOwnerUID_(dependencyTracker, v14, &v28, v15);

  v17 = self->_dependencyTracker;
  v21 = objc_msgSend_headerNameMgr(self, v18, v19, v20);
  v28 = objc_msgSend_formulaOwnerUID(v21, v22, v23, v24);
  v29 = v25;
  v27 = objc_msgSend_numFormulaCellsInOwnerUID_(v17, v25, &v28, v26);

  return v16 + v27 == 0;
}

- (id)documentRoot
{
  v4 = objc_msgSend_context(self, a2, v2, v3);

  return objc_msgSend_documentObject(v4, v5, v6, v7);
}

- (id)documentLocale
{
  documentLocale = self->_documentLocale;
  if (!documentLocale)
  {
    v6 = objc_msgSend_documentRoot(self, a2, v2, v3);
    v10 = objc_msgSend_documentLocale(v6, v7, v8, v9);
    v11 = self->_documentLocale;
    self->_documentLocale = v10;

    documentLocale = self->_documentLocale;
  }

  return documentLocale;
}

- (void)documentLocaleDidChange
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22123A354;
  block[3] = &unk_27845E3F8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (TSCECellCoordSet)cellCoordinatesNeedingExcelImportForTable:(SEL)table
{
  result = self->_dependencyTracker;
  if (result)
  {
    return (MEMORY[0x2821F9670])(result, sel_cellCoordinatesNeedingExcelImport_, a4);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_22123EA18, off_2812E2AC8[178]);

  XLImportDateMode = self->_XLImportDateMode;
  if (XLImportDateMode == 1)
  {
    v11 = 2;
  }

  else
  {
    if (XLImportDateMode != 2)
    {
      goto LABEL_6;
    }

    v11 = 3;
  }

  *(v6 + 16) |= 0x4000u;
  *(v6 + 180) = v11;
LABEL_6:
  hasKnownEmbiggenedTable = self->_hasKnownEmbiggenedTable;
  v14 = objc_msgSend_containsAnyTable(self->_dependencyTracker, v7, v8, v9);
  if ((hasKnownEmbiggenedTable | v14))
  {
    if (hasKnownEmbiggenedTable)
    {
      v15 = @"TSTExpandedTables";
    }

    else
    {
      v15 = @"TSCEReduceCalcEngineMsgSize";
    }

    if (hasKnownEmbiggenedTable)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v13, 0xA000000000003, v15);
    }

    else
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v13, 0x300020000000ALL, v15);
    }
  }

  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = sub_22123AC64;
  v88[3] = &unk_278461CB8;
  v16 = (v14 | hasKnownEmbiggenedTable) ^ 1;
  v88[4] = self;
  v90 = v6;
  v91 = v16 & 1;
  v92 = hasKnownEmbiggenedTable;
  v17 = archiverCopy;
  v89 = v17;
  objc_msgSend_pushScopeForField_message_usingBlock_(v17, v18, 2, v6, v88);
  if (!self->_shouldPreventArchivingOfLocaleIdentifier)
  {
    v22 = objc_msgSend_documentLocale(self, v19, v20, v21);
    v26 = objc_msgSend_localeIdentifier(v22, v23, v24, v25);

    if (v26)
    {
      v30 = objc_msgSend_tsp_protobufString(v26, v27, v28, v29);
      *(v6 + 16) |= 4u;
      sub_22108CCD0(__p, v30);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v94 < 0)
      {
        operator delete(__p[0]);
      }

      v34 = objc_msgSend_referencesToDirty(self, v31, v32, v33);
      isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v34, v35, v36, v37);

      if (isEmptyForDirtying)
      {
        v42 = objc_msgSend_tsp_protobufString(v26, v39, v40, v41);
        *(v6 + 16) |= 1u;
        sub_22108CCD0(__p, v42);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v94 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  documentRandomSeed = self->_documentRandomSeed;
  *(v6 + 16) |= 0x800u;
  *(v6 + 160) = documentRandomSeed;
  v44 = objc_msgSend_currentDate(self, v19, v20, v21);
  objc_msgSend_timeIntervalSinceReferenceDate(v44, v45, v46, v47);
  *(v6 + 16) |= 0x1000u;
  *(v6 + 168) = v48;

  v52 = objc_msgSend_currentTimeZone(self, v49, v50, v51);
  v56 = objc_msgSend_name(v52, v53, v54, v55);

  if (v56)
  {
    v60 = objc_msgSend_tsp_protobufString(v56, v57, v58, v59);
    *(v6 + 16) |= 2u;
    sub_22108CCD0(__p, v60);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v94 < 0)
    {
      operator delete(__p[0]);
    }
  }

  namedReferenceManager = self->_namedReferenceManager;
  if (namedReferenceManager)
  {
    *(v6 + 16) |= 0x10u;
    v62 = *(v6 + 104);
    if (!v62)
    {
      v63 = *(v6 + 8);
      if (v63)
      {
        v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
      }

      v62 = MEMORY[0x223DA0390](v63);
      *(v6 + 104) = v62;
    }

    objc_msgSend_setStrongReference_message_(v17, v57, namedReferenceManager, v62);
  }

  headerNameMgr = self->_headerNameMgr;
  if (headerNameMgr)
  {
    *(v6 + 16) |= 0x200u;
    v65 = *(v6 + 144);
    if (!v65)
    {
      v66 = *(v6 + 8);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = MEMORY[0x223DA0390](v66);
      *(v6 + 144) = v65;
    }

    objc_msgSend_setStrongReference_message_(v17, v57, headerNameMgr, v65);
  }

  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  sub_22123ACF4(&self->_beginTrackingNamesForLegacyNRMQueue.__begin_, (v6 + 24));
  sub_22123ACF4(&self->_endTrackingNamesForLegacyNRMQueue.__begin_, (v6 + 48));
  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  refsToDirty = self->_refsToDirty;
  *(v6 + 16) |= 0x400u;
  v69 = *(v6 + 152);
  if (!v69)
  {
    v70 = *(v6 + 8);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = MEMORY[0x223DA0390](v70);
    *(v6 + 152) = v69;
  }

  objc_msgSend_setStrongReference_message_(v17, v67, refsToDirty, v69);
  if (objc_msgSend_hasArchivableState(self->_remoteDataStore, v71, v72, v73))
  {
    remoteDataStore = self->_remoteDataStore;
    *(v6 + 16) |= 0x80u;
    v77 = *(v6 + 128);
    if (!v77)
    {
      v78 = *(v6 + 8);
      if (v78)
      {
        v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
      }

      v77 = MEMORY[0x223DA0390](v78);
      *(v6 + 128) = v77;
    }

    objc_msgSend_setStrongReference_message_(v17, v74, remoteDataStore, v77);
  }

  if (!hasKnownEmbiggenedTable)
  {
    uuidReferenceMap = self->_uuidReferenceMap;
    if (uuidReferenceMap)
    {
      *(v6 + 16) |= 0x20u;
      v80 = *(v6 + 112);
      if (!v80)
      {
        v81 = *(v6 + 8);
        if (v81)
        {
          v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
        }

        v80 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferenceMapArchive>(v81);
        *(v6 + 112) = v80;
      }

      objc_msgSend_encodeToArchive_alsoSave31Format_archiver_(uuidReferenceMap, v74, v80, v16 & 1, v17);
    }

    groupNodeReferenceMap = self->_groupNodeReferenceMap;
    if (groupNodeReferenceMap)
    {
      *(v6 + 16) |= 0x100u;
      v83 = *(v6 + 136);
      if (!v83)
      {
        v84 = *(v6 + 8);
        if (v84)
        {
          v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
        }

        v83 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive>(v84);
        *(v6 + 136) = v83;
      }

      objc_msgSend_encodeToArchive_(groupNodeReferenceMap, v74, v83, v75);
    }
  }

  tableUIDHistory = self->_tableUIDHistory;
  if (tableUIDHistory)
  {
    *(v6 + 16) |= 0x40u;
    v86 = *(v6 + 120);
    if (!v86)
    {
      v87 = *(v6 + 8);
      if (v87)
      {
        v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
      }

      v86 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive>(v87);
      *(v6 + 120) = v86;
    }

    objc_msgSend_saveToMessage_(tableUIDHistory, v74, v86, v75);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  self->_isUnarchiving = 1;
  v5 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v5, v6, off_2812E2AC8[178], v7);

  self->_calculationPauseCount = 0;
  if (objc_msgSend_fileFormatVersion(v5, v9, v10, v11) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v12, v13, v14);
  }

  v15 = [TSCETablesByName alloc];
  v18 = objc_msgSend_initWithCalcEngine_(v15, v16, self, v17);
  tablesByName = self->_tablesByName;
  self->_tablesByName = v18;

  self->_XLImportDateMode = 0;
  v23 = *(v8 + 16);
  if ((v23 & 0x2000) != 0)
  {
    if (*(v8 + 176))
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    goto LABEL_11;
  }

  if ((v23 & 0x4000) != 0)
  {
    v24 = *(v8 + 180);
    if (v24 == 2)
    {
      v25 = 1;
      goto LABEL_11;
    }

    if (v24 != 3)
    {
      goto LABEL_12;
    }
  }

  v25 = 2;
LABEL_11:
  self->_XLImportDateMode = v25;
LABEL_12:
  self->_loadFromFileVersion = objc_msgSend_fileFormatVersion(v5, v20, v21, v22);
  objc_msgSend_initializeDispatchObjects(self, v26, v27, v28);
  v29 = [TSCEBulkCellChangeMinion alloc];
  v32 = objc_msgSend_initWithCalcEngine_(v29, v30, self, v31);
  spillFormulasMinion = self->_spillFormulasMinion;
  self->_spillFormulasMinion = v32;

  objc_msgSend_pauseRecalculation(self, v34, v35, v36);
  v37 = [TSCEDependencyTracker alloc];
  if (*(v8 + 96))
  {
    v39 = objc_msgSend_initWithCalcEngine_archive_unarchiver_(v37, v38, self, *(v8 + 96), v5);
  }

  else
  {
    v39 = objc_msgSend_initWithCalcEngine_archive_unarchiver_(v37, v38, self, &TSCE::_DependencyTrackerArchive_default_instance_, v5);
  }

  dependencyTracker = self->_dependencyTracker;
  self->_dependencyTracker = v39;

  inProgressLeaves = self->_inProgressLeaves;
  if (inProgressLeaves)
  {
    sub_22123E714(inProgressLeaves + 1);

    MEMORY[0x223DA1450](inProgressLeaves, 0x10A0C40C346037DLL);
  }

  operator new();
}

- (id)newTableResolverForResolver:(id)resolver
{
  resolverCopy = resolver;
  v4 = [TSTTableResolver alloc];
  v7 = objc_msgSend_initWithTableModel_(v4, v5, resolverCopy, v6);

  return v7;
}

- (id)resolverContainerMatchingName:(id)name inDocumentRoot:(id)root
{
  nameCopy = name;
  v5 = TSUProtocolCast();
  v7 = v5;
  if (v5)
  {
    v8 = objc_msgSend_resolverContainerForName_caseSensitive_(v5, v6, nameCopy, 0, &unk_283599058);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)resolverMatchingName:(id)name inDocumentRoot:(id)root contextResolver:(id)resolver
{
  nameCopy = name;
  resolverCopy = resolver;
  v8 = TSUProtocolCast();
  v10 = objc_msgSend_resolverMatchingName_contextResolver_(v8, v9, nameCopy, resolverCopy, &unk_283599058);

  return v10;
}

- (id)resolverMatchingNameWithContextContainer:(id)container inDocumentRoot:(id)root contextContainerName:(id)name
{
  containerCopy = container;
  nameCopy = name;
  v8 = TSUProtocolCast();
  v10 = objc_msgSend_resolverMatchingName_contextContainerName_(v8, v9, containerCopy, nameCopy, &unk_283599058);

  return v10;
}

- (TSKUIDStruct)mapOwnerUID:(const TSKUIDStruct *)d
{
  lower = d->_lower;
  upper = d->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (unsigned)aggregateTypeForCategoryRef:(id)ref
{
  refCopy = ref;
  v11 = objc_msgSend_type(refCopy, v5, v6, v7);
  if (v11 == 11)
  {
    v12 = objc_msgSend_groupByUid(refCopy, v8, v9, v10);
    v14 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v13, v12, v13, self);
    LOBYTE(v11) = objc_msgSend_aggregateTypeForCategoryRef_(v14, v15, refCopy, v16);
  }

  return v11;
}

- (vector<TSCEValue)valuesForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid hidingActionMask:(id)mask error:(const TSKUIDStruct *)error
{
  v8 = a6;
  maskCopy = mask;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->__begin_ = 0;
  v14 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v13, maskCopy, self);
  v18 = v14;
  if (v14 && objc_msgSend_isValidCategoryRef_(v14, v15, maskCopy, v17))
  {
    v31 = 0;
    objc_msgSend_valuesForCategoryRef_atRowUid_hidingActionMask_outError_(v18, v15, maskCopy, error, v8, &v31);
    v19 = v31;
    sub_2210BC2A8(retstr);
    *&retstr->__begin_ = v32;
    retstr->var1 = v33;
    v33 = 0;
    v32 = 0uLL;
    v34 = &v32;
    sub_22107C2C0(&v34);
    if (a7 && v19)
    {
      v23 = v19;
      *a7 = v19;
    }

    else if (a7)
    {
      var0 = retstr->var0;
      if ((var0 - retstr->__begin_) == 8)
      {
        v25 = objc_msgSend_asErrorValue(*(var0 - 1), v20, v21, v22);
        v29 = v25;
        if (v25)
        {
          *a7 = objc_msgSend_error(v25, v26, v27, v28);
        }
      }
    }
  }

  else if (a7)
  {
    *a7 = objc_msgSend_invalidReferenceError(TSCEError, v15, v16, v17);
  }

  return result;
}

- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid hidingActionMask:(unsigned __int8)mask error:(id *)error
{
  maskCopy = mask;
  refCopy = ref;
  v12 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v11, refCopy, self);
  v16 = v12;
  if (!v12 || !objc_msgSend_isValidCategoryRef_(v12, v13, refCopy, v15))
  {
    if (error)
    {
      *error = objc_msgSend_invalidReferenceError(TSCEError, v13, v14, v15);
    }

    goto LABEL_14;
  }

  v37 = 0;
  v17 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_outError_(v16, v13, refCopy, uid, maskCopy, &v37);
  v18 = v37;
  v22 = v18;
  if (error && v18)
  {
    v23 = v18;
    *error = v22;
  }

  else
  {
    v24 = objc_msgSend_count(v17, v19, v20, v21);
    if (error && v24 == 1)
    {
      v28 = objc_msgSend_firstValue(v17, v25, v26, v27);
      v32 = objc_msgSend_asErrorValue(v28, v29, v30, v31);

      if (v32)
      {
        *error = objc_msgSend_error(v32, v33, v34, v35);
      }
    }
  }

  if (!v17)
  {
LABEL_14:
    v17 = objc_opt_new();
  }

  return v17;
}

- (vector<TSCECellRef,)cellRefsForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid
{
  v8 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v10 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v9, v8, self);
  v12 = v10;
  if (v10)
  {
    objc_msgSend_cellRefsForCategoryRef_atRowUid_(v10, v11, v8, a5);
    *&retstr->__begin_ = v14;
    retstr->__cap_ = v15;
  }

  return result;
}

- (vector<TSCECategoryRef)categoryRefsForSpanningCategoryRef:(TSCECalculationEngine *)self
{
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v8 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v7, v6, self);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_categoryRefsForSpanningCategoryRef_(v8, v9, v6, v10);
    sub_2210BC2A8(retstr);
    *&retstr->var0 = v13;
    retstr->var2 = v14;
    v14 = 0;
    v13 = 0uLL;
    v15 = &v13;
    sub_22107C2C0(&v15);
  }

  return result;
}

- (vector<TSCECellRef,)unorderedCellRefsForCategoryRef:(TSCECalculationEngine *)self atRowUid:(SEL)uid
{
  v8 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v10 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v9, v8, self);
  v12 = v10;
  if (v10)
  {
    objc_msgSend_unorderedCellRefsForCategoryRef_atRowUid_(v10, v11, v8, a5);
    *&retstr->__begin_ = v14;
    retstr->__cap_ = v15;
  }

  return result;
}

- (TSCERangeRef)aggregateRangeRefForCategoryRef:(SEL)ref
{
  v6 = a4;
  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  v8 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v7, v6, self);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_aggregateRangeRefForCategoryRef_(v8, v9, v6, v10);
    retstr->range = v13;
    retstr->_tableUID = v14;
  }

  return result;
}

- (int)preferredDispatchQueueWidth
{
  v4 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, v2, v3);
  v8 = (objc_msgSend_processorCount(v4, v5, v6, v7) * 1.5);

  v9 = atomic_load(&dword_27CFB52E4);
  v10 = v8 - v9;
  if (v10 <= 1)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

- (void)assertNonCalcEngineException:(id)exception exception:(id)a4 evaluatingFormula:(id)formula
{
  exceptionCopy = exception;
  v9 = a4;
  formulaCopy = formula;
  if (formulaCopy)
  {
    v13 = [TSCEFunctionsInUse alloc];
    v16 = objc_msgSend_initWithCalcEngine_(v13, v14, self, v15);
    v51 = 0;
    __p = 0;
    v49 = TSKMakeUIDStructRandom();
    v50 = v17;
    objc_msgSend_addFunctionUsesInFormula_atCellRef_outContainsVolatileFunction_(v16, v17, formulaCopy, &__p, &v51);
    v23 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v18, @"Functions used:", v19);
    if (v16)
    {
      objc_msgSend_functionsUsed(v16, v20, v21, v22);
      v26 = __p;
      v27 = v49;
      if (__p != v49)
      {
        do
        {
          objc_msgSend_appendFormat_(v23, v24, @" %d", v25, *v26++);
        }

        while (v26 != v27);
      }
    }

    else
    {
      __p = 0;
      v49 = 0;
      v50 = 0;
    }

    if (__p)
    {
      v49 = __p;
      operator delete(__p);
    }

    v34 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSCECalculationEngine assertNonCalcEngineException:exception:evaluatingFormula:]", v36);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v39);
    if (v9)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v37, v41, 4270, 0, "Non-calcEngine NSException passed up to %{public}@: %{public}@ with formula: %{public}@", exceptionCopy, v9, v23);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v40, v37, v41, 4272, 0, "Non-calcEngine type exception passed up to %{public}@ for formula %{public}@.", exceptionCopy, v23);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
  }

  else
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECalculationEngine assertNonCalcEngineException:exception:evaluatingFormula:]", v11);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v31);
    if (v9)
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v33, 4276, 0, "Non-calcEngine NSException passed up to %{public}@: %{public}@", exceptionCopy, v9);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v33, 4278, 0, "Non-calcEngine type exception passed up to %{public}@.", exceptionCopy);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
  }
}

- (void)dispatchOnePhase:(void *)phase
{
  if (!phase)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCECalculationEngine dispatchOnePhase:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 4284, 0, "invalid nil value for '%{public}s'", "phase");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  *(phase + 82) = 1;
  atomic_fetch_add(&dword_27CFB52E4, 1u);
  recalcDispatchGroup = self->_recalcDispatchGroup;
  if (self->_blockingUntilRecalcIsComplete)
  {
    v16 = &OBJC_IVAR___TSCECalculationEngine__recalcHighPriorityQueue;
  }

  else
  {
    v16 = &OBJC_IVAR___TSCECalculationEngine__recalcLowPriorityQueue;
  }

  v17 = *(&self->super.super.isa + *v16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22123CAD4;
  block[3] = &unk_278461DA8;
  block[4] = self;
  block[5] = phase;
  dispatch_group_async(recalcDispatchGroup, v17, block);
}

- (void)recalcPhaseHoldingReadLock:(void *)lock
{
  while (1)
  {
    v6 = *lock;
    if (v6 == 0xFFFF)
    {
      break;
    }

    v7 = **(lock + 1);
    v8 = *(lock + 81);
    if (*(lock + 80))
    {
      v9 = 66;
    }

    else
    {
      v9 = 0;
    }

    if ((objc_msgSend_ownerIdIsUnregistering_(self->_dependencyTracker, a2, v6, v3) & 1) == 0)
    {
      v13 = v9 | v8;
      v14 = *(lock + 9);
      if (v14)
      {
        if (objc_msgSend_evaluationMode(v14, v10, v11, v12) == 1)
        {
          v36._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
          v36._rowsPerColumn.__tree_.__size_ = 0;
          v36._rectRepresentation.origin = 0;
          v36._rectRepresentation.size = 0;
          v36._rowsPerColumn.__tree_.__begin_node_ = &v36._rowsPerColumn.__tree_.__end_node_;
          v16 = *(lock + 1);
          v15 = *(lock + 2);
          while (v16 != v15)
          {
            TSCECellCoordSet::addCellCoord(&v36, v16);
            v16 += 4;
          }

          v17 = objc_msgSend_multiEvaluateFormulasAt_withCalcEngine_recalcOptions_(*(lock + 9), v10, &v36, self, v13);
          sub_22107C860(&v36._rowsPerColumn, v36._rowsPerColumn.__tree_.__end_node_.__left_);
          objc_msgSend_evaluationCompletedForCells_resultState_(self->_dependencyTracker, v19, lock, v17);
LABEL_15:
          if ((v17 & 0x80) != 0)
          {
            return;
          }

          goto LABEL_16;
        }

        v14 = *(lock + 9);
      }

      v17 = objc_msgSend_evaluateFormulaAt_withCalcEngine_recalcOptions_(v14, v10, v7, self, v13);
      objc_msgSend_evaluationCompletedForCells_resultState_(self->_dependencyTracker, v18, lock, v17);
      goto LABEL_15;
    }

    objc_msgSend_evaluationCompletedForCells_resultState_(self->_dependencyTracker, v10, lock, 0);
LABEL_16:
    sub_22123E79C(lock + 4, lock, lock);
    *lock = -1;
    *(lock + 2) = *(lock + 1);
    if ((objc_msgSend_stopEvaluatingNewLeaves(self, v20, v21, v22) & 1) == 0)
    {
      v36._rectRepresentation.origin = 0x7FFF7FFFFFFFLL;
      v36._rectRepresentation.size.numberOfColumns = 0xFFFF;
      v36._rowsPerColumn.__tree_.__begin_node_ = 0;
      v36._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      os_unfair_lock_lock(&self->_inProgressLeavesMutex);
      if (!sub_221426BFC(self->_inProgressLeaves))
      {
        v26 = sub_221426D74(self->_inProgressLeaves, v23, v24, v25);
        v27 = *(v26 + 16);
        v36._rectRepresentation = *v26;
        *&v36._rowsPerColumn.__tree_.__begin_node_ = v27;
        sub_221426E50(self->_inProgressLeaves);
      }

      os_unfair_lock_unlock(&self->_inProgressLeavesMutex);
      numberOfColumns = v36._rectRepresentation.size.numberOfColumns;
      if (LOWORD(v36._rectRepresentation.size.numberOfColumns) != 0xFFFF)
      {
        sub_2212308B8(lock, &v36, self->_dependencyTracker);
        v32 = *(lock + 9);
        if (v32)
        {
          if (objc_msgSend_evaluationMode(v32, v28, v29, v30) == 1)
          {
            os_unfair_lock_lock(&self->_inProgressLeavesMutex);
            sub_221426FCC(self->_inProgressLeaves, numberOfColumns, &v34);
            v33 = *(lock + 1);
            if (v33)
            {
              *(lock + 2) = v33;
              operator delete(v33);
              *(lock + 1) = 0;
              *(lock + 2) = 0;
              *(lock + 3) = 0;
            }

            *(lock + 8) = v34;
            *(lock + 3) = v35;
            os_unfair_lock_unlock(&self->_inProgressLeavesMutex);
            sub_221230A4C(lock + 8, &v36);
          }
        }
      }

      if ((objc_msgSend_stopEvaluatingNewLeaves(self, v28, v29, v30) & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

- (BOOL)recalcHoldingReadLock
{
  ++self->_recalcCyclesSinceOpen;
  v3 = objc_opt_new();
  v7 = objc_msgSend_referencesToDirty(self, v4, v5, v6);
  isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v7, v8, v9, v10);

  v15 = 0.5;
  if (isEmptyForDirtying)
  {
LABEL_2:
    dispatch_group_wait(self->_recalcDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
    self->_stopEvaluating = 0;
    objc_msgSend_clearSpillingOriginCache(self, v16, v17, v18);
    v22 = objc_msgSend_preferredDispatchQueueWidth(self, v19, v20, v21);
    v119 = 10 * v22;
    objc_msgSend_loadInProgressLeaves_(self, v23, 10 * v22, v24);
    v28 = sub_221426C20(self->_inProgressLeaves);
    if (v28)
    {
      self->_hadDirtyCellsRecently = 1;
      v29 = objc_msgSend_documentLocale(self, v25, v26, v27);
      v33 = objc_msgSend_dateParserLibrary(v29, v30, v31, v32);
      objc_msgSend_prepareDateParserInBackground(v33, v34, v35, v36);
    }

    else if ((objc_msgSend_recalculationIsPaused(self, v25, v26, v27) & 1) != 0 || !objc_msgSend_hasDirtyCells(self->_dependencyTracker, v37, v38, v39))
    {
      v28 = 0;
    }

    else
    {
      objc_msgSend_findAndRecordCyclesInDirtyCells(self->_dependencyTracker, v37, v38, v39);
      objc_msgSend_loadInProgressLeaves_(self, v54, v119, v55);
      v28 = sub_221426C20(self->_inProgressLeaves);
      if (!v28)
      {
        objc_msgSend_scheduleDetectAndRepairConsistencyViolations(self, v37, v38, v39);
        objc_msgSend_detectAndRepairDirtyCellsAreOnLeafQueue(self, v56, v57, v58);
        objc_msgSend_loadInProgressLeaves_(self, v59, v119, v60);
        v28 = sub_221426C20(self->_inProgressLeaves);
      }
    }

    v120 = objc_msgSend_date(MEMORY[0x277CBEAA8], v37, v38, v39);

    v61 = v22;
    v121 = v22;
    while (v28)
    {
      os_unfair_lock_lock(&self->_inProgressLeavesMutex);
      sub_22111B7CC(&self->_phaseStates.__begin_, v61);
      if (v22)
      {
        v65 = 0;
        v66 = v121;
        do
        {
          begin = self->_phaseStates.__begin_;
          v68 = self->_phaseStates.__end_ - begin;
          if (v68 <= v65 || (v69 = begin[v65], *(v69 + 82) == 1) && (v68 <= v66 || (v69 = begin[v66], ++v66, *(v69 + 82) == 1)))
          {
            operator new();
          }

          v70 = sub_221426D74(self->_inProgressLeaves, v62, v63, v64);
          sub_2212308B8(v69, v70, self->_dependencyTracker);
          v74 = *(v69 + 72);
          if (v74 && objc_msgSend_evaluationMode(v74, v71, v72, v73) == 1)
          {
            sub_221426FCC(self->_inProgressLeaves, *(v70 + 8), __p);
            v77 = *(v69 + 8);
            if (v77)
            {
              *(v69 + 16) = v77;
              operator delete(v77);
              *(v69 + 8) = 0;
              *(v69 + 16) = 0;
              *(v69 + 24) = 0;
            }

            *(v69 + 8) = *__p;
            *(v69 + 24) = v123;
          }

          else
          {
            *(v69 + 16) = *(v69 + 8);
            sub_221230A4C(v69 + 8, v70);
            sub_221426E50(self->_inProgressLeaves);
          }

          objc_msgSend_dispatchOnePhase_(self, v75, v69, v76);
          v78 = sub_221426BFC(self->_inProgressLeaves);
          v79 = ++v65 >= v61 || v78;
        }

        while (v79 != 1);
      }

      os_unfair_lock_unlock(&self->_inProgressLeavesMutex);
      recalcDispatchGroup = self->_recalcDispatchGroup;
      v81 = dispatch_time(0, 1000000000);
      v22 = v121;
      if (dispatch_group_wait(recalcDispatchGroup, v81))
      {
        break;
      }

      objc_msgSend_timeIntervalSinceNow(v120, v82, v83, v84);
      if (v15 <= -v87)
      {
        break;
      }

      objc_msgSend_loadInProgressLeaves_(self, v85, v119, v86);
      v28 = sub_221426C20(self->_inProgressLeaves);
    }

    self->_stopEvaluating = 1;
    dispatch_group_wait(self->_recalcDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
    os_unfair_lock_lock(&self->_inProgressLeavesMutex);
    v88 = self->_phaseStates.__begin_;
    for (i = self->_phaseStates.__end_; v88 != i; ++v88)
    {
      v90 = *v88;
      if (**v88 != -1)
      {
        v91 = *(v90 + 2);
        for (j = *(v90 + 1); j != v91; j += 32)
        {
          sub_221426EA4(self->_inProgressLeaves, j);
        }
      }

      for (k = *(v90 + 6); k; k = *k)
      {
        sub_22123E79C(&self->_modifiedOwnersInThisRecalcCycle.__table_.__bucket_list_.__ptr_, k + 8, k + 8);
      }

      *(v90 + 9) = 0;
      *v90 = -1;
      sub_2210BE918(v90 + 4);
      *(v90 + 2) = *(v90 + 1);
      *(v90 + 82) = 0;
    }

    self->_stopEvaluating = 0;
    if (!sub_221426BFC(self->_inProgressLeaves))
    {
      dependencyTracker = self->_dependencyTracker;
      sub_221426F40(self->_inProgressLeaves, __p);
      objc_msgSend_pushCellsForImmediateEvaluation_pushOnFront_(dependencyTracker, v98, __p, 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    objc_msgSend_clearCellsCurrentlyBeingEvaluated(self->_dependencyTracker, v94, v95, v96);
    sub_2210BE918(&self->_inProgressOwnerIDs.__table_.__bucket_list_.__ptr_);
    os_unfair_lock_unlock(&self->_inProgressLeavesMutex);
    objc_msgSend_timeIntervalSinceNow(v120, v99, v100, v101);
    self->_recalcTime = self->_recalcTime - v105;
    if (self->_blockingUntilRecalcIsComplete)
    {
      v106 = objc_msgSend_referencesToDirty(self, v102, v103, v104);
      v110 = objc_msgSend_isEmptyForDirtying(v106, v107, v108, v109);

      v53 = 1;
      if (v110)
      {
LABEL_54:
        v3 = v120;
        goto LABEL_55;
      }

      self->_hadDirtyCellsRecently = 1;
      v114 = objc_msgSend_referencesToDirty(self, v111, v112, v113);
      objc_msgSend_flushAllDirtyReferences(v114, v115, v116, v117);
    }

    v53 = 1;
    goto LABEL_54;
  }

  self->_hadDirtyCellsRecently = 1;
  blockingUntilRecalcIsComplete = self->_blockingUntilRecalcIsComplete;
  v41 = objc_msgSend_referencesToDirty(self, v12, v13, v14);
  v45 = v41;
  if (blockingUntilRecalcIsComplete)
  {
    v46 = objc_msgSend_flushDirtyReferencesForSeconds_(v41, v42, v43, v44, 0.0);
  }

  else
  {
    v46 = objc_msgSend_flushDirtyReferencesForSeconds_(v41, v42, v43, v44, 0.5);
  }

  v47 = v46;

  if (v47)
  {
    if (self->_blockingUntilRecalcIsComplete)
    {
      goto LABEL_2;
    }

    objc_msgSend_timeIntervalSinceNow(v3, v48, v49, v50);
    v52 = v51;
    if (v51 > -0.5 && (objc_msgSend_recalculationIsPaused(self, v48, v49, v50) & 1) == 0)
    {
      v15 = v52 + 0.5;
      goto LABEL_2;
    }
  }

  objc_msgSend_notifyObserversOfRecalcProgress(self, v48, v49, v50);
  v53 = 0;
LABEL_55:

  return v53;
}

- (void)recalcHoldingWriteLock
{
  writeMutualExclusionQueue = self->_writeMutualExclusionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22123D884;
  block[3] = &unk_27845E3F8;
  block[4] = self;
  dispatch_sync(writeMutualExclusionQueue, block);
  objc_msgSend_performBackgroundTasksWithWriteLock(self, v4, v5, v6);
  objc_msgSend_notifyObserversOfRecalcProgress(self, v7, v8, v9);
}

- (BOOL)stopEvaluatingNewLeaves
{
  if (self->_stopEvaluating || self->_shouldCancelRecalculation)
  {
    return 1;
  }

  else
  {
    return (MEMORY[0x2821F9670])(TSCECalculationEngine, sel_isPotentiallyTerminating);
  }
}

- (void)loadInProgressLeaves:(int)leaves
{
  if ((objc_msgSend_stopEvaluatingNewLeaves(self, a2, *&leaves, v3) & 1) == 0)
  {
    dependencyTracker = self->_dependencyTracker;
    if (dependencyTracker)
    {
      objc_msgSend_popNextLeaves_(dependencyTracker, v6, leaves, v7);
      v9 = v51;
      v10 = v52;
      if (v52 != v51)
      {
        v42 = 80;
        __p = 0;
        v49 = 0;
        v50 = 0;
        do
        {
          v11 = v49;
          if (v49 >= v50)
          {
            v14 = 0xAAAAAAAAAAAAAAABLL * ((v49 - __p) >> 2);
            v15 = v14 + 1;
            if (v14 + 1 > 0x1555555555555555)
            {
              sub_22107C148();
            }

            if (0x5555555555555556 * ((v50 - __p) >> 2) > v15)
            {
              v15 = 0x5555555555555556 * ((v50 - __p) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v50 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v16 = 0x1555555555555555;
            }

            else
            {
              v16 = v15;
            }

            if (v16)
            {
              sub_221122A3C(&__p, v16);
            }

            v17 = 4 * ((v49 - __p) >> 2);
            v18 = *v9;
            *(v17 + 8) = v9[2];
            *v17 = v18;
            v13 = 12 * v14 + 12;
            memcpy((12 * v14 - (v49 - __p)), __p, v49 - __p);
            v19 = __p;
            __p = (12 * v14 - (v49 - __p));
            v49 = v13;
            v50 = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            v12 = *v9;
            v49[2] = v9[2];
            *v11 = v12;
            v13 = v11 + 12;
          }

          v49 = v13;
          sub_221426EA4(self->_inProgressLeaves, v9);
          v9 += 8;
        }

        while (v9 != v10);
        v23 = objc_msgSend_referencesToDirty(self, v20, v21, v22);
        objc_msgSend_addInProgressCalcCellRefs_(v23, v24, &__p, v25);

        if (__p)
        {
          v49 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
    }

    sub_221426C4C(self->_inProgressLeaves, &__p);
    v26 = __p;
    v27 = v49;
    if (__p != v49)
    {
      do
      {
        v47 = *v26;
        if (!sub_2210C3024(&self->_inProgressOwnerIDs.__table_.__bucket_list_.__ptr_, &v47))
        {
          sub_22123E79C(&self->_inProgressOwnerIDs.__table_.__bucket_list_.__ptr_, &v47, &v47);
          v30 = objc_msgSend_ownerKindForOwnerID_(self->_dependencyTracker, v28, v47, v29);
          if (v30 == 1 || v30 == 100)
          {
            v33 = objc_msgSend_tableResolverWrapperForTableID_(self, v31, v47, v32, v42);
            v37 = v33;
            if (v33)
            {
              v45 = 0;
              v46 = 0;
              v45 = TSCETableResolverWrapper::tableRangeCoordinate(v33, v34, v35, v36);
              v46 = v38;
              v43 = 0;
              v44 = 0;
              v43 = TSCETableResolverWrapper::bodyRangeCoordinate(v37, v38, v39, v40);
              v44 = v41;
              objc_msgSend_setTableAndBodyRangesForTable_bodyRange_tableID_(self->_dependencyTracker, v41, &v45, &v43, v47);
            }
          }
        }

        ++v26;
      }

      while (v26 != v27);
      v26 = __p;
    }

    if (v26)
    {
      v49 = v26;
      operator delete(v26);
    }

    if (v51)
    {
      v52 = v51;
      operator delete(v51);
    }
  }
}

- (BOOL)hasBackgroundTasks
{
  if (objc_msgSend_hasOwnerIdsToUnregister(self->_dependencyTracker, a2, v2, v3) & 1) != 0 || (objc_msgSend_hasCellRecordsToPrune(self->_dependencyTracker, v5, v6, v7))
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_legacyNrmListsMutex);
  v8 = self->_beginTrackingNamesForLegacyNRMQueue.__end_ != self->_beginTrackingNamesForLegacyNRMQueue.__begin_ || self->_endTrackingNamesForLegacyNRMQueue.__end_ != self->_endTrackingNamesForLegacyNRMQueue.__begin_;
  os_unfair_lock_unlock(&self->_legacyNrmListsMutex);
  return v8;
}

- (void)performBackgroundTasksWithWriteLock
{
  if (!self->_blockingUntilRecalcIsComplete)
  {
    TableToEndTrackingNames = objc_msgSend_popNextTableToEndTrackingNames(self, a2, v2, v3);
    v42 = v5;
    if (TableToEndTrackingNames | v5)
    {
      v8 = objc_msgSend_namedReferenceManager(self, v5, v6, v7);
      objc_msgSend_endTrackingNamesInTable_(v8, v9, &TableToEndTrackingNames, v10);

      TableToEndTrackingNames = objc_msgSend_popNextTableToEndTrackingNames(self, v11, v12, v13);
      v42 = a2;
      if (!(TableToEndTrackingNames | a2))
      {
        goto LABEL_12;
      }

      v14 = objc_msgSend_namedReferenceManager(self, a2, v2, v3);
      objc_msgSend_endTrackingNamesInTable_(v14, v15, &TableToEndTrackingNames, v16);
    }

    else
    {
      TableToBeginTrackingNames = objc_msgSend_popNextTableToBeginTrackingNames(self, v5, v6, v7);
      v40 = v17;
      if (!(TableToBeginTrackingNames | v17))
      {
        hasOwnerIdsToUnregister = objc_msgSend_hasOwnerIdsToUnregister(self->_dependencyTracker, v17, v18, v19, TableToBeginTrackingNames, v40, TableToEndTrackingNames, v42);
        dependencyTracker = self->_dependencyTracker;
        if (hasOwnerIdsToUnregister)
        {
          objc_msgSend_processUnregisteringOwners_(dependencyTracker, v22, v23, v24, 0.3);
        }

        else if (objc_msgSend_hasCellRecordsToPrune(dependencyTracker, v22, v23, v24))
        {
          objc_msgSend_processPruningOfCellRecords_(self->_dependencyTracker, a2, v2, v3, 0.3);
        }

LABEL_12:
        if (!self->_blockingUntilRecalcIsComplete)
        {
          return;
        }

        goto LABEL_13;
      }

      v14 = objc_msgSend_namedReferenceManager(self, v17, v18, v19, TableToBeginTrackingNames, v40, TableToEndTrackingNames, v42);
      objc_msgSend_beginTrackingNamesInTable_(v14, v20, &TableToBeginTrackingNames, v21);
    }

    goto LABEL_12;
  }

LABEL_13:
  v27 = objc_msgSend_referencesToDirty(self, a2, v2, v3);
  isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v27, v28, v29, v30);

  if ((isEmptyForDirtying & 1) == 0)
  {
    self->_hadDirtyCellsRecently = 1;
    v35 = objc_msgSend_referencesToDirty(self, v32, v33, v34);
    objc_msgSend_flushAllDirtyReferences(v35, v36, v37, v38);
  }
}

- (TSUCellRect)cachedSpillRangeForSpillingOriginCellRef:(const TSCECellRef *)ref outError:(id *)error
{
  v4 = MEMORY[0x2821F9670](self->_spillingOriginCache, sel_spillRangeForSpillingOriginCellRef_outError_, ref, error);
  result.size = v5;
  result.origin = v4;
  return result;
}

- (void)replaceSpillError:(id)error ifCachedforSpillingOriginCellRef:(const TSCECellRef *)ref
{
  errorCopy = error;
  v9 = objc_msgSend_isCircularReferenceError(errorCopy, v6, v7, v8) ^ 1;
  if (!errorCopy)
  {
    v9 = 0;
  }

  if ((v9 & 1) == 0)
  {
    objc_msgSend_replaceSpillError_forSpillingOriginCellRef_(self->_spillingOriginCache, errorCopy, errorCopy, ref);
  }
}

- (TSKAccessController)accessController
{
  WeakRetained = objc_loadWeakRetained(&self->_accessController);

  return WeakRetained;
}

- (TSKChangeNotifier)changeNotifier
{
  WeakRetained = objc_loadWeakRetained(&self->_changeNotifier);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_modifiedOwnersInThisRecalcCycle.__table_.__bucket_list_ = 0u;
  *&self->_modifiedOwnersInThisRecalcCycle.__table_.__first_node_.__next_ = 0u;
  self->_modifiedOwnersInThisRecalcCycle.__table_.__max_load_factor_ = 1.0;
  self->_deferredUpdateTrackedHeaders.__table_.__bucket_list_ = 0u;
  *&self->_deferredUpdateTrackedHeaders.__table_.__first_node_.__next_ = 0u;
  self->_deferredUpdateTrackedHeaders.__table_.__max_load_factor_ = 1.0;
  self->_phaseStates.__end_ = 0;
  self->_phaseStates.__cap_ = 0;
  self->_phaseStates.__begin_ = 0;
  self->_inProgressOwnerIDs.__table_.__bucket_list_ = 0u;
  *&self->_inProgressOwnerIDs.__table_.__first_node_.__next_ = 0u;
  self->_inProgressOwnerIDs.__table_.__max_load_factor_ = 1.0;
  sub_221575E04(&self->_refResolverMap);
  self->_beginTrackingNamesForLegacyNRMQueue.__end_ = 0;
  self->_beginTrackingNamesForLegacyNRMQueue.__cap_ = 0;
  self->_beginTrackingNamesForLegacyNRMQueue.__begin_ = 0;
  self->_endTrackingNamesForLegacyNRMQueue.__end_ = 0;
  self->_endTrackingNamesForLegacyNRMQueue.__cap_ = 0;
  self->_endTrackingNamesForLegacyNRMQueue.__begin_ = 0;
  self->_tablesWithNoLegacyNRMIndexes.__table_.__bucket_list_ = 0u;
  *&self->_tablesWithNoLegacyNRMIndexes.__table_.__first_node_.__next_ = 0u;
  self->_tablesWithNoLegacyNRMIndexes.__table_.__max_load_factor_ = 1.0;
  self->_disallowedHeaderIndexingTables.__table_.__bucket_list_ = 0u;
  *&self->_disallowedHeaderIndexingTables.__table_.__first_node_.__next_ = 0u;
  self->_disallowedHeaderIndexingTables.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end