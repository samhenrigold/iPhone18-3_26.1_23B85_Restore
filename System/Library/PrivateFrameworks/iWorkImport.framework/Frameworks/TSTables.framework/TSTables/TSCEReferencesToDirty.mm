@interface TSCEReferencesToDirty
- (BOOL)flushDirtyReferencesForSeconds:(double)seconds;
- (BOOL)hasDirtyingToPerformForOwnerId:(unsigned __int16)id;
- (BOOL)hasPrecedentCountUpdatesPending;
- (BOOL)isEmptyForDirtying;
- (TSCEReferencesToDirty)initWithCalcEngine:(id)engine;
- (id).cxx_construct;
- (unint64_t)numberOfInProgressCalcCellRef;
- (void)_flushCellRefSetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)_flushDependentOnlyCellRefSetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)_flushDirtyOwnerIdsWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)_flushInternalCellRefSetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)_flushRangeRefsWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)_flushUpdatePrecedentsCellRefSetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)addInProgressCalcCellRefs:(const void *)refs;
- (void)clearInProgressCalcCellRefs;
- (void)commonInit;
- (void)dirtyAllCellsInOwner:(const TSKUIDStruct *)owner;
- (void)dirtyAllCellsInOwnerId:(unsigned __int16)id;
- (void)dirtyCellRef:(const TSCECellRef *)ref;
- (void)dirtyCellRefs:(const void *)refs;
- (void)dirtyCellRefsInReferenceSet:(id)set;
- (void)dirtyCoords:(const void *)coords inOwnerId:(unsigned __int16)id;
- (void)dirtyInternalCellRef:(const TSCEInternalCellReference *)ref;
- (void)dirtyInternalCellRefs:(const void *)refs;
- (void)dirtyInternalCellRefsVector:(const void *)vector;
- (void)dirtyInternalRangeRef:(const TSCEInternalRangeReference *)ref;
- (void)dirtyOnlyDependentsOfCellRef:(const TSCECellRef *)ref;
- (void)dirtyRangeRef:(const TSCERangeRef *)ref;
- (void)flushCellDirtier;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setCalculationEngine:(id)engine;
- (void)setShouldCleanGraphForConsistencyViolation:(BOOL)violation;
- (void)setShouldPerformDetectAndRepairConsistencyViolations:(BOOL)violations;
- (void)updatePrecedentCountForCellRef:(const TSCEInternalCellReference *)ref;
- (void)willClose;
@end

@implementation TSCEReferencesToDirty

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = TSCEReferencesToDirty;
  [(TSCEReferencesToDirty *)&v3 commonInit];
  self->_dirtyingMutex._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
}

- (TSCEReferencesToDirty)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_context(engineCopy, v5, v6, v7);
  v20.receiver = self;
  v20.super_class = TSCEReferencesToDirty;
  v9 = [(TSCEReferencesToDirty *)&v20 initWithContext:v8];

  if (v9)
  {
    v9->_calcEngine = engineCopy;
    if (engineCopy)
    {
      v10 = [TSCECellDirtier alloc];
      v14 = objc_msgSend_dependencyTracker(v9->_calcEngine, v11, v12, v13);
      v17 = objc_msgSend_initWithDependencyTracker_(v10, v15, v14, v16);
      cellRefDirtier = v9->_cellRefDirtier;
      v9->_cellRefDirtier = v17;
    }
  }

  return v9;
}

- (void)willClose
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  cellRefDirtier = self->_cellRefDirtier;
  self->_cellRefDirtier = 0;

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (void)setCalculationEngine:(id)engine
{
  engineCopy = engine;
  v25 = engineCopy;
  if (engineCopy)
  {
    self->_calcEngine = engineCopy;
    v7 = [TSCECellDirtier alloc];
    v11 = objc_msgSend_dependencyTracker(self->_calcEngine, v8, v9, v10);
    v14 = objc_msgSend_initWithDependencyTracker_(v7, v12, v11, v13);
    cellRefDirtier = self->_cellRefDirtier;
    self->_cellRefDirtier = v14;
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCEReferencesToDirty setCalculationEngine:]", v6);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferencesToDirty.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 126, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    self->_calcEngine = 0;
  }
}

- (void)setShouldPerformDetectAndRepairConsistencyViolations:(BOOL)violations
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  self->_shouldPerformDetectAndRepairConsistencyViolations = violations;

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (void)setShouldCleanGraphForConsistencyViolation:(BOOL)violation
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  self->_shouldCleanGraphForConsistencyViolation = violation;

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (BOOL)isEmptyForDirtying
{
  if (os_unfair_lock_trylock(&self->_dirtyingMutex))
  {
    v6 = sub_2212E0280(&self->_toDirtyInternalCellRefs) && TSCECellRefSet::isEmpty(&self->_toDirtyCellRefs) && sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs) && !TSUIndexSet::count(&self->_toDirtyOwnerIds) && self->_toDirtyRangeRefs.__begin_ == self->_toDirtyRangeRefs.__end_ && TSCECellRefSet::isEmpty(&self->_toDirtyDependentsOnlyCellRefs) && objc_msgSend_isDoneDirtying(self->_cellRefDirtier, v3, v4, v5) && !self->_shouldCleanGraphForConsistencyViolation && !self->_shouldPerformDetectAndRepairConsistencyViolations;
    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }

  else
  {
    return 0;
  }

  return v6;
}

- (void)dirtyAllCellsInOwner:(const TSKUIDStruct *)owner
{
  v6 = objc_msgSend_dependencyTracker(self->_calcEngine, a2, owner, v3);
  v21 = v6;
  if (v6)
  {
    v9 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(v6, v7, owner, v8);
    objc_msgSend_dirtyAllCellsInOwnerId_(self, v10, v9, v11);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEReferencesToDirty dirtyAllCellsInOwner:]", v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferencesToDirty.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 168, 0, "invalid nil value for '%{public}s'", "depTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }
}

- (void)dirtyAllCellsInOwnerId:(unsigned __int16)id
{
  if (id != 0xFFFF)
  {
    objc_msgSend_willModify(self, a2, id, v3);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    TSUIndexSet::addIndex(&self->_toDirtyOwnerIds);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyCellRef:(const TSCECellRef *)ref
{
  if ((*&ref->coordinate & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && *&ref->_tableUID != 0)
  {
    objc_msgSend_willModify(self, a2, ref, v3);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    TSCECellRefSet::addCellRef(&self->_toDirtyCellRefs, ref);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyInternalCellRef:(const TSCEInternalCellReference *)ref
{
  if (ref->tableID != -1 && (*&ref->coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    objc_msgSend_willModify(self, a2, ref, v3);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    sub_2212DFCE8(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &ref->coordinate);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyOnlyDependentsOfCellRef:(const TSCECellRef *)ref
{
  v4 = *&ref->coordinate == 0x7FFFFFFF || (*&ref->coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v4 && *&ref->_tableUID != 0)
  {
    objc_msgSend_willModify(self, a2, ref, v3);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    TSCECellRefSet::addCellRef(&self->_toDirtyDependentsOnlyCellRefs, ref);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyCoords:(const void *)coords inOwnerId:(unsigned __int16)id
{
  if (!TSCECellCoordSet::isEmpty(coords))
  {
    objc_msgSend_willModify(self, v7, v8, v9);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    sub_2212DFD38(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, id, coords);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyCellRefs:(const void *)refs
{
  if ((TSCECellRefSet::isEmpty(refs) & 1) == 0)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    TSCECellRefSet::addCellRefs(&self->_toDirtyCellRefs, refs);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyInternalCellRefs:(const void *)refs
{
  if (!sub_2212E0280(refs))
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, refs);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyInternalCellRefsVector:(const void *)vector
{
  if (*(vector + 1) != *vector)
  {
    objc_msgSend_willModify(self, a2, vector, v3);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    v7 = *vector;
    for (i = *(vector + 1); v7 != i; v7 = (v7 + 12))
    {
      sub_2212DFCE8(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v7);
    }

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)dirtyCellRefsInReferenceSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    objc_msgSend_willModify(self, v4, v5, v6);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    v11 = objc_msgSend_referenceSet(setCopy, v8, v9, v10);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2211CA91C;
    v12[3] = &unk_27845F540;
    v12[4] = self;
    TSCEReferenceSet::foreachInternalCellRef(v11, v12);
    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (void)updatePrecedentCountForCellRef:(const TSCEInternalCellReference *)ref
{
  if (ref->tableID != -1 && (*&ref->coordinate & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    objc_msgSend_willModify(self, a2, ref, v3);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    sub_2212DFCE8(&self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &ref->coordinate);

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (BOOL)hasPrecedentCountUpdatesPending
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  v3 = sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs);
  os_unfair_lock_unlock(&self->_dirtyingMutex);
  return !v3;
}

- (void)dirtyRangeRef:(const TSCERangeRef *)ref
{
  v8 = objc_msgSend_dependencyTracker(self->_calcEngine, a2, ref, v3);
  if (v8)
  {
    if (TSCERangeRef::isValid(ref))
    {
      v22[0] = 0;
      v22[1] = 0;
      v23 = 0;
      objc_msgSend_internalRangeReferenceForRangeRef_(v8, v9, ref, v10);
      objc_msgSend_dirtyInternalRangeRef_(self, v11, v22, v12);
    }
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEReferencesToDirty dirtyRangeRef:]", v7);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferencesToDirty.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 291, 0, "invalid nil value for '%{public}s'", "depTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }
}

- (void)dirtyInternalRangeRef:(const TSCEInternalRangeReference *)ref
{
  if (ref->var1 != -1)
  {
    bottomRight = ref->var0._bottomRight;
    v6 = *&ref->var0._topLeft == 0x7FFFFFFF || (*&ref->var0._topLeft & 0xFFFF00000000) == 0x7FFF00000000;
    v7 = v6 || bottomRight.row == 0x7FFFFFFF;
    if (!v7 && (*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && WORD2(*&ref->var0._topLeft) <= bottomRight.column && *&ref->var0._topLeft <= bottomRight.row)
    {
      objc_msgSend_willModify(self, a2, ref, v3);
      os_unfair_lock_lock(&self->_dirtyingMutex);
      sub_2211CAC20(&self->_toDirtyRangeRefs, ref);

      os_unfair_lock_unlock(&self->_dirtyingMutex);
    }
  }
}

- (BOOL)hasDirtyingToPerformForOwnerId:(unsigned __int16)id
{
  if (id == 0xFFFF)
  {
    return 0;
  }

  idCopy = id;
  os_unfair_lock_lock(&self->_dirtyingMutex);
  if (TSUIndexSet::containsIndex(&self->_toDirtyOwnerIds) & 1) != 0 || (sub_2212E0070(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, idCopy))
  {
    v5 = 1;
  }

  else
  {
    begin = self->_toDirtyRangeRefs.__begin_;
    end = self->_toDirtyRangeRefs.__end_;
    if (begin == end)
    {
      v5 = 0;
    }

    else
    {
      v9 = begin + 1;
      do
      {
        var1 = v9[-1].var1;
        v5 = var1 == idCopy;
      }

      while (var1 != idCopy && v9++ != end);
    }
  }

  os_unfair_lock_unlock(&self->_dirtyingMutex);
  return v5;
}

- (void)_flushDirtyOwnerIdsWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  trackerCopy = tracker;
  timeCopy = time;
  if (trackerCopy)
  {
    objc_msgSend_willModify(self, v9, v10, v11);
    while (1)
    {
      os_unfair_lock_lock(&self->_dirtyingMutex);
      if (!TSUIndexSet::count(&self->_toDirtyOwnerIds))
      {
        break;
      }

      Index = TSUIndexSet::firstIndex(&self->_toDirtyOwnerIds);
      TSUIndexSet::removeIndex(&self->_toDirtyOwnerIds);
      v14 = TSUIndexSet::count(&self->_toDirtyOwnerIds);
      os_unfair_lock_unlock(&self->_dirtyingMutex);
      if (Index != 0xFFFFLL)
      {
        objc_msgSend_allCellRefsInOwner_(trackerCopy, v15, Index, v17);
        os_unfair_lock_lock(&self->_dirtyingMutex);
        sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v19);
        os_unfair_lock_unlock(&self->_dirtyingMutex);
        sub_221122744(v19);
      }

      if (timeCopy && v14)
      {
        objc_msgSend_timeIntervalSinceNow(timeCopy, v15, v16, v17);
        if (-v18 > timeout)
        {
          break;
        }
      }

      else if (!v14)
      {
        break;
      }
    }
  }
}

- (void)_flushCellRefSetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  trackerCopy = tracker;
  timeCopy = time;
  if (trackerCopy)
  {
    os_unfair_lock_lock(&self->_dirtyingMutex);
    isEmpty = TSCECellRefSet::isEmpty(&self->_toDirtyCellRefs);
    os_unfair_lock_unlock(&self->_dirtyingMutex);
    if ((isEmpty & 1) == 0)
    {
      objc_msgSend_willModify(self, v10, v11, v12);
      os_unfair_lock_lock(&self->_dirtyingMutex);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_2211CB094;
      v13[3] = &unk_278460D28;
      v14 = trackerCopy;
      selfCopy = self;
      TSCECellRefSet::enumerateOwnersUsingBlock(&self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__begin_node_, v13);
      TSCECellRefSet::clear(&self->_toDirtyCellRefs);
      os_unfair_lock_unlock(&self->_dirtyingMutex);
    }
  }
}

- (void)_flushDependentOnlyCellRefSetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  trackerCopy = tracker;
  timeCopy = time;
  if (trackerCopy)
  {
    os_unfair_lock_lock(&self->_dirtyingMutex);
    isEmpty = TSCECellRefSet::isEmpty(&self->_toDirtyDependentsOnlyCellRefs);
    os_unfair_lock_unlock(&self->_dirtyingMutex);
    if ((isEmpty & 1) == 0)
    {
      objc_msgSend_willModify(self, v10, v11, v12);
      v16 = objc_msgSend_calcEngine(trackerCopy, v13, v14, v15);
      objc_msgSend_beginBatchingGroupCellDirtying(v16, v17, v18, v19);

      os_unfair_lock_lock(&self->_dirtyingMutex);
      TSCECellRefSet::TSCECellRefSet(&v33, &self->_toDirtyDependentsOnlyCellRefs);
      TSCECellRefSet::clear(&self->_toDirtyDependentsOnlyCellRefs);
      os_unfair_lock_unlock(&self->_dirtyingMutex);
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = sub_2211CB2B0;
      v31 = &unk_278460D78;
      v20 = trackerCopy;
      v32 = v20;
      TSCECellRefSet::enumerateOwnersUsingBlock(&v33, &v28);
      v24 = objc_msgSend_calcEngine(v20, v21, v22, v23, v28, v29, v30, v31);
      objc_msgSend_endBatchingGroupCellDirtying(v24, v25, v26, v27);

      sub_22107C800(&v33, v33._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }
  }
}

- (void)_flushRangeRefsWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  trackerCopy = tracker;
  timeCopy = time;
  if (trackerCopy)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    os_unfair_lock_lock(&self->_dirtyingMutex);
    if (&v20 != &self->_toDirtyRangeRefs)
    {
      sub_2211CCB20(&v20, self->_toDirtyRangeRefs.__begin_, self->_toDirtyRangeRefs.__end_, 0xCCCCCCCCCCCCCCCDLL * ((self->_toDirtyRangeRefs.__end_ - self->_toDirtyRangeRefs.__begin_) >> 2));
    }

    self->_toDirtyRangeRefs.__end_ = self->_toDirtyRangeRefs.__begin_;
    os_unfair_lock_unlock(&self->_dirtyingMutex);
    v12 = v20;
    v13 = v21;
    if (v20 != v21)
    {
      for (i = 1; ; ++i)
      {
        objc_msgSend_markIntRangeRefAsDirty_(trackerCopy, v10, v12, v11);
        if (timeCopy)
        {
          objc_msgSend_timeIntervalSinceNow(timeCopy, v10, v15, v11);
          v12 = (v12 + 20);
          if (-v16 > timeout || v12 == v13)
          {
LABEL_15:
            v12 = v20;
            v18 = v21;
            goto LABEL_17;
          }
        }

        else
        {
          v12 = (v12 + 20);
          if (v12 == v13)
          {
            goto LABEL_15;
          }
        }
      }
    }

    i = 0;
    v18 = v20;
LABEL_17:
    if (i < 0xCCCCCCCCCCCCCCCDLL * ((v18 - v12) >> 2))
    {
      v19 = (v12 + 20 * i);
      os_unfair_lock_lock(&self->_dirtyingMutex);
      for (; v19 != v21; v19 = (v19 + 20))
      {
        sub_2211CAC20(&self->_toDirtyRangeRefs, v19);
      }

      os_unfair_lock_unlock(&self->_dirtyingMutex);
      v12 = v20;
    }

    if (v12)
    {
      v21 = v12;
      operator delete(v12);
    }
  }
}

- (void)_flushInternalCellRefSetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  timeCopy = time;
  if (tracker)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x5812000000;
    v45 = sub_2211CB9B8;
    v46 = sub_2211CB9C4;
    v47 = &unk_22188E88F;
    memset(v48, 0, sizeof(v48));
    v49 = 1065353216;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    do
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      os_unfair_lock_lock(&self->_dirtyingMutex);
      if (timeCopy)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = sub_2211CB9CC;
        v33[3] = &unk_278460DA0;
        v33[4] = &v42;
        v33[5] = &v34;
        sub_2212DFEC0(&self->_toDirtyInternalCellRefs, v33);
        sub_2212DFE4C(&self->_toDirtyInternalCellRefs, (v43 + 6), v9);
        v10 = sub_2212E0280(&self->_toDirtyInternalCellRefs);
        *(v39 + 24) = v10;
      }

      else
      {
        sub_2212DFCA0((v43 + 6), &self->_toDirtyInternalCellRefs);
        v11 = sub_2212E0238(&self->_toDirtyInternalCellRefs);
        v35[3] = v11;
        sub_2212E0194(&self->_toDirtyInternalCellRefs);
        *(v39 + 24) = 1;
      }

      os_unfair_lock_unlock(&self->_dirtyingMutex);
      v25 = 0;
      v26 = &v25;
      v27 = 0x5812000000;
      v28 = sub_2211CB9B8;
      v29 = sub_2211CB9C4;
      v30 = &unk_22188E88F;
      memset(v31, 0, sizeof(v31));
      v32 = 1065353216;
      v12 = v43;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2211CBA30;
      v20[3] = &unk_278460DC8;
      v20[4] = self;
      timeoutCopy = timeout;
      v13 = timeCopy;
      v21 = v13;
      v22 = &v25;
      v23 = &v38;
      sub_2212DFEC0((v12 + 6), v20);
      v14 = sub_2212E0238((v26 + 6));
      if (v14 < v35[3])
      {
        sub_2212DFE4C((v43 + 6), (v26 + 6), v16);
        os_unfair_lock_lock(&self->_dirtyingMutex);
        sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, (v43 + 6));
        os_unfair_lock_unlock(&self->_dirtyingMutex);
      }

      v18 = v39;
      if (timeCopy)
      {
        if ((v39[3] & 1) == 0)
        {
          objc_msgSend_timeIntervalSinceNow(v13, v15, v16, v17);
          v18 = v39;
          if (-v19 > timeout)
          {
            *(v39 + 24) = 1;
          }
        }
      }

      if ((v18[3] & 1) == 0)
      {
        sub_2212E0194((v43 + 6));
      }

      _Block_object_dispose(&v25, 8);
      sub_221122744(v31);
      _Block_object_dispose(&v34, 8);
    }

    while ((v39[3] & 1) == 0);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    sub_221122744(v48);
  }
}

- (void)_flushUpdatePrecedentsCellRefSetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  trackerCopy = tracker;
  timeCopy = time;
  if (trackerCopy)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x5812000000;
    v27 = sub_2211CB9B8;
    v28 = sub_2211CB9C4;
    v29 = &unk_22188E88F;
    memset(v30, 0, sizeof(v30));
    v31 = 1065353216;
    while (1)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      os_unfair_lock_lock(&self->_dirtyingMutex);
      if (timeCopy)
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = sub_2211CBD14;
        v19[3] = &unk_278460DA0;
        v19[4] = &v24;
        v19[5] = &v20;
        sub_2212DFEC0(&self->_toUpdateDirtyPrecedentCountCellRefs, v19);
        sub_2212DFE4C(&self->_toUpdateDirtyPrecedentCountCellRefs, (v25 + 6), v10);
        v11 = sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs);
      }

      else
      {
        sub_2212DFCA0((v25 + 6), &self->_toUpdateDirtyPrecedentCountCellRefs);
        v12 = sub_2212E0238(&self->_toUpdateDirtyPrecedentCountCellRefs);
        v21[3] = v12;
        sub_2212E0194(&self->_toUpdateDirtyPrecedentCountCellRefs);
        v11 = 1;
      }

      os_unfair_lock_unlock(&self->_dirtyingMutex);
      objc_msgSend_updateNumberOfDirtyPrecedents_(trackerCopy, v13, (v25 + 6), v14);
      if (timeCopy == 0 || v11)
      {
        if (v11)
        {
          goto LABEL_11;
        }
      }

      else
      {
        objc_msgSend_timeIntervalSinceNow(timeCopy, v15, v16, v17);
        if (-v18 > timeout)
        {
LABEL_11:
          _Block_object_dispose(&v20, 8);
          _Block_object_dispose(&v24, 8);
          sub_221122744(v30);
          break;
        }
      }

      sub_2212E0194((v25 + 6));
      _Block_object_dispose(&v20, 8);
    }
  }
}

- (BOOL)flushDirtyReferencesForSeconds:(double)seconds
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  isDoneDirtying = objc_msgSend_isDoneDirtying(self->_cellRefDirtier, v5, v6, v7);
  shouldCleanGraphForConsistencyViolation = self->_shouldCleanGraphForConsistencyViolation;
  shouldPerformDetectAndRepairConsistencyViolations = self->_shouldPerformDetectAndRepairConsistencyViolations;
  v9 = TSUIndexSet::count(&self->_toDirtyOwnerIds);
  isEmpty = TSCECellRefSet::isEmpty(&self->_toDirtyCellRefs);
  v45 = TSCECellRefSet::isEmpty(&self->_toDirtyDependentsOnlyCellRefs);
  v11 = !sub_2212E0280(&self->_toDirtyInternalCellRefs);
  begin = self->_toDirtyRangeRefs.__begin_;
  end = self->_toDirtyRangeRefs.__end_;
  v14 = sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs);
  v15 = v14;
  self->_shouldPerformDetectAndRepairConsistencyViolations = 0;
  v16 = !v14;
  os_unfair_lock_unlock(&self->_dirtyingMutex);
  if (isDoneDirtying)
  {
    v20 = v9 == 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = !v20 || isEmpty == 0;
  if (v21 || v11 || begin != end || (v16 & 1) != 0 || shouldPerformDetectAndRepairConsistencyViolations || shouldCleanGraphForConsistencyViolation)
  {
    v23 = objc_msgSend_dependencyTracker(self->_calcEngine, v17, v18, v19);
    objc_msgSend_willModify(self, v24, v25, v26);
    if (!v23)
    {
      isEmptyForDirtying = 0;
LABEL_44:

      return isEmptyForDirtying;
    }

    if (!(isDoneDirtying & 1 | (!shouldPerformDetectAndRepairConsistencyViolations && !shouldCleanGraphForConsistencyViolation)))
    {
      objc_msgSend_dirtyCellsNow(self->_cellRefDirtier, v27, v28, v29);
    }

    if (shouldPerformDetectAndRepairConsistencyViolations)
    {
      if (!v15)
      {
        objc_msgSend__flushUpdatePrecedentsCellRefSetWithDepTracker_startTime_timeout_(self, v27, v23, 0, 0.0);
      }

      objc_msgSend_detectAndRepairConsistencyViolations(v23, v27, v28, v29);
      v33 = objc_msgSend_shouldCleanGraphForConsistencyViolation(self, v30, v31, v32);
      v16 = 0;
      self->_debugOnly_DidDetectAndRepairConsistencyViolations = 1;
      if ((v33 & 1) == 0)
      {
LABEL_25:
        if (seconds <= 0.0)
        {
          v39 = 0;
        }

        else
        {
          v39 = objc_opt_new();
        }

        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = sub_2211CC1D0;
        v49[3] = &unk_278460DF0;
        v40 = v39;
        v50 = v40;
        secondsCopy = seconds;
        v48 = MEMORY[0x223DA1C10](v49);
        if ((isDoneDirtying & 1) == 0 && (objc_msgSend_dirtyCellsForSeconds_fromStartTime_(self->_cellRefDirtier, v41, v40, v43, seconds) & 1) == 0)
        {
          goto LABEL_43;
        }

        if (v16)
        {
          objc_msgSend__flushUpdatePrecedentsCellRefSetWithDepTracker_startTime_timeout_(self, v41, v23, v40, seconds);
          if (sub_2212E0238(&self->_toUpdateDirtyPrecedentCountCellRefs))
          {
            goto LABEL_43;
          }
        }

        if (v9)
        {
          objc_msgSend__flushDirtyOwnerIdsWithDepTracker_startTime_timeout_(self, v41, v23, v40, seconds);
          if (v48[2]())
          {
            goto LABEL_43;
          }
        }

        if ((isEmpty & 1) == 0)
        {
          objc_msgSend__flushCellRefSetWithDepTracker_startTime_timeout_(self, v41, v23, v40, seconds);
          if (v48[2]())
          {
            goto LABEL_43;
          }
        }

        if ((v45 & 1) == 0)
        {
          objc_msgSend__flushDependentOnlyCellRefSetWithDepTracker_startTime_timeout_(self, v41, v23, v40, seconds);
          if (v48[2]())
          {
            goto LABEL_43;
          }
        }

        if (begin == end)
        {
          if (!v11)
          {
LABEL_43:
            isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(self, v41, v42, v43);

            goto LABEL_44;
          }
        }

        else
        {
          objc_msgSend__flushRangeRefsWithDepTracker_startTime_timeout_(self, v41, v23, v40, seconds);
          if (v48[2]() & 1 | !v11)
          {
            goto LABEL_43;
          }
        }

        objc_msgSend__flushInternalCellRefSetWithDepTracker_startTime_timeout_(self, v41, v23, v40, seconds);
        goto LABEL_43;
      }
    }

    else if (!shouldCleanGraphForConsistencyViolation)
    {
      goto LABEL_25;
    }

    objc_msgSend_allDirtyCellRefs(v23, v27, v28, v29);
    objc_msgSend_markEverythingClean(v23, v34, v35, v36);
    objc_msgSend_setShouldCleanGraphForConsistencyViolation_(self, v37, 0, v38);
    sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v52);
    v11 = sub_2212E0280(&self->_toDirtyInternalCellRefs);
    self->_debugOnly_DidCleanGraphForConsistencyViolation = 1;
    sub_221122744(v52);
    goto LABEL_25;
  }

  return 1;
}

- (void)flushCellDirtier
{
  if ((objc_msgSend_isDoneDirtying(self->_cellRefDirtier, a2, v2, v3) & 1) == 0)
  {
    cellRefDirtier = self->_cellRefDirtier;

    objc_msgSend_dirtyCellsNow(cellRefDirtier, v5, v6, v7);
  }
}

- (void)addInProgressCalcCellRefs:(const void *)refs
{
  if (*refs != *(refs + 1))
  {
    objc_msgSend_willModify(self, a2, refs, v3);
    os_unfair_lock_lock(&self->_dirtyingMutex);
    v7 = *refs;
    for (i = *(refs + 1); v7 != i; v7 = (v7 + 12))
    {
      sub_2212DFCE8(&self->_calcCellsInProgress._coordsForOwnerId.__table_.__bucket_list_.__ptr_, v7);
    }

    os_unfair_lock_unlock(&self->_dirtyingMutex);
  }
}

- (unint64_t)numberOfInProgressCalcCellRef
{
  os_unfair_lock_lock(&self->_dirtyingMutex);
  v3 = sub_2212E0238(&self->_calcCellsInProgress);
  os_unfair_lock_unlock(&self->_dirtyingMutex);
  return v3;
}

- (void)clearInProgressCalcCellRefs
{
  objc_msgSend_willModify(self, a2, v2, v3);
  os_unfair_lock_lock(&self->_dirtyingMutex);
  sub_2212E0194(&self->_calcCellsInProgress);

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E2AC8[38], v6);

  v8 = *(v7 + 16);
  if (v8)
  {
    sub_22126A778(*(v7 + 48), &v15);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v15);
    v8 = *(v7 + 16);
  }

  if ((v8 & 2) != 0)
  {
    sub_2212E0790(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, *(v7 + 56));
    v8 = *(v7 + 16);
  }

  if ((v8 & 0x10) != 0)
  {
    sub_2212E0790(&self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, *(v7 + 80));
    v8 = *(v7 + 16);
  }

  if ((v8 & 4) != 0)
  {
    v9 = *(v7 + 64);
    memset(&v15, 0, sizeof(v15));
    v16 = 1065353216;
    sub_2212E0790(&v15, v9);
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v10, 2, v11);
    sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v15);
    sub_221122744(&v15);
    v8 = *(v7 + 16);
  }

  if ((v8 & 8) != 0)
  {
    v12 = *(v7 + 72);
    memset(&v15, 0, sizeof(v15));
    v16 = 1065353216;
    sub_2212E0790(&v15, v12);
    sub_2212DFD90(&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_.__ptr_, &v15);
    sub_221122744(&v15);
  }

  v13 = *(v7 + 32);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      memset(&v15, 0, 20);
      sub_2212F4E1C(*(*(v7 + 40) + v14), &v15);
      sub_2211CAC20(&self->_toDirtyRangeRefs, &v15);
      v14 += 8;
      --v13;
    }

    while (v13);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2211CCCC4, off_2812E2AC8[38]);

  os_unfair_lock_lock(&self->_dirtyingMutex);
  if (TSUIndexSet::count(&self->_toDirtyOwnerIds))
  {
    *(v5 + 16) |= 1u;
    v6 = *(v5 + 48);
    if (!v6)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v7);
      *(v5 + 48) = v6;
    }

    sub_22126A644(&self->_toDirtyOwnerIds, v6);
  }

  if (!sub_2212E0280(&self->_toDirtyInternalCellRefs))
  {
    *(v5 + 16) |= 2u;
    v8 = *(v5 + 56);
    if (!v8)
    {
      v9 = *(v5 + 8);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v9);
      *(v5 + 56) = v8;
    }

    sub_2212E0690(&self->_toDirtyInternalCellRefs, v8);
  }

  if (!sub_2212E0280(&self->_toUpdateDirtyPrecedentCountCellRefs))
  {
    *(v5 + 16) |= 0x10u;
    v10 = *(v5 + 80);
    if (!v10)
    {
      v11 = *(v5 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v11);
      *(v5 + 80) = v10;
    }

    sub_2212E0690(&self->_toUpdateDirtyPrecedentCountCellRefs, v10);
  }

  if ((TSCECellRefSet::isEmpty(&self->_toDirtyCellRefs) & 1) == 0)
  {
    *(v5 + 16) |= 4u;
    v15 = *(v5 + 64);
    if (!v15)
    {
      v16 = *(v5 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v16);
      *(v5 + 64) = v15;
    }

    v17 = objc_msgSend_dependencyTracker(self->_calcEngine, v12, v13, v14);
    TSCECellRefSet::encodeToArchive(&self->_toDirtyCellRefs, v15, v17);
  }

  if (!sub_2212E0280(&self->_calcCellsInProgress))
  {
    *(v5 + 16) |= 8u;
    v18 = *(v5 + 72);
    if (!v18)
    {
      v19 = *(v5 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v19);
      *(v5 + 72) = v18;
    }

    sub_2212E0690(&self->_calcCellsInProgress, v18);
  }

  begin = self->_toDirtyRangeRefs.__begin_;
  end = self->_toDirtyRangeRefs.__end_;
  while (begin != end)
  {
    v22 = *(v5 + 40);
    if (!v22)
    {
      goto LABEL_38;
    }

    v23 = *(v5 + 32);
    v24 = *v22;
    if (v23 < *v22)
    {
      *(v5 + 32) = v23 + 1;
      v25 = *&v22[2 * v23 + 2];
      goto LABEL_40;
    }

    if (v24 == *(v5 + 36))
    {
LABEL_38:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
      v22 = *(v5 + 40);
      v24 = *v22;
    }

    *v22 = v24 + 1;
    v25 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalRangeReferenceArchive>(*(v5 + 24));
    v26 = *(v5 + 32);
    v27 = *(v5 + 40) + 8 * v26;
    *(v5 + 32) = v26 + 1;
    *(v27 + 8) = v25;
LABEL_40:
    sub_2212F4DA8(begin++, v25);
  }

  os_unfair_lock_unlock(&self->_dirtyingMutex);
}

- (id).cxx_construct
{
  TSUIndexSet::TSUIndexSet(&self->_toDirtyOwnerIds);
  self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_toDirtyInternalCellRefs._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__size_ = 0;
  self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__begin_node_ = &self->_toDirtyCellRefs._coordsForOwnerUid.__tree_.__end_node_;
  self->_toDirtyDependentsOnlyCellRefs._coordsForOwnerUid.__tree_.__size_ = 0;
  self->_toDirtyDependentsOnlyCellRefs._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  self->_toDirtyDependentsOnlyCellRefs._coordsForOwnerUid.__tree_.__begin_node_ = &self->_toDirtyDependentsOnlyCellRefs._coordsForOwnerUid.__tree_.__end_node_;
  self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_toUpdateDirtyPrecedentCountCellRefs._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  self->_toDirtyRangeRefs.__end_ = 0;
  self->_toDirtyRangeRefs.__cap_ = 0;
  self->_toDirtyRangeRefs.__begin_ = 0;
  self->_calcCellsInProgress._coordsForOwnerId.__table_.__bucket_list_ = 0u;
  *&self->_calcCellsInProgress._coordsForOwnerId.__table_.__first_node_.__next_ = 0u;
  self->_calcCellsInProgress._coordsForOwnerId.__table_.__max_load_factor_ = 1.0;
  return self;
}

@end