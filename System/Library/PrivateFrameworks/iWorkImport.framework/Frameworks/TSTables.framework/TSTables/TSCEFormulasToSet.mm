@interface TSCEFormulasToSet
- (BOOL)flushFormulaChangesForSeconds:(double)seconds;
- (BOOL)isEmpty;
- (TSCEFormulasToSet)initWithCalcEngine:(id)engine forMinion:(id)minion options:(unsigned __int8)options;
- (id).cxx_construct;
- (void)_flushFormulasToRemoveWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)_flushFormulasToReplaceWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)_flushFormulasToResetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout;
- (void)commonInit;
- (void)dealloc;
- (void)flushAllFormulaChanges;
- (void)flushRemoveFormulas;
- (void)flushReplaceFormulas;
- (void)flushResetFormulas;
- (void)processInBackgroundIfNecessary;
- (void)removeAllFormulasFromOwner:(const TSKUIDStruct *)owner;
- (void)removeFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner;
- (void)removeFormulasAt:(const void *)at;
- (void)removeFormulasAt:(const void *)at inOwner:(const TSKUIDStruct *)owner removeOutstandingReplaces:(BOOL)replaces;
- (void)removeFormulasFromRange:(const TSCERangeRef *)range;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)resetFormulaAt:(const TSCECellRef *)at;
- (void)willClose;
@end

@implementation TSCEFormulasToSet

- (void)commonInit
{
  self->_removeReplaceMutex._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  v43 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, -3);
  v3 = dispatch_queue_create("com.apple.Numbers.TSCE.PrecedentLoading", v43);
  precedentLoadingQueue = self->_precedentLoadingQueue;
  self->_precedentLoadingQueue = v3;

  if (!self->_precedentLoadingQueue)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCEFormulasToSet commonInit]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 97, 0, "invalid nil value for '%{public}s'", "_precedentLoadingQueue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = dispatch_group_create();
  precedentLoadingGroup = self->_precedentLoadingGroup;
  self->_precedentLoadingGroup = v16;

  if (!self->_precedentLoadingGroup)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSCEFormulasToSet commonInit]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 100, 0, "invalid nil value for '%{public}s'", "_precedentLoadingGroup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  v29 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v30 = dispatch_queue_create("com.apple.Numbers.TSCE.BackgroundFormulas", v29);
  backgroundProcessingQueue = self->_backgroundProcessingQueue;
  self->_backgroundProcessingQueue = v30;

  if (!self->_backgroundProcessingQueue)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSCEFormulasToSet commonInit]", v33);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 104, 0, "invalid nil value for '%{public}s'", "_backgroundProcessingQueue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
  }
}

- (TSCEFormulasToSet)initWithCalcEngine:(id)engine forMinion:(id)minion options:(unsigned __int8)options
{
  engineCopy = engine;
  minionCopy = minion;
  if (!minionCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEFormulasToSet initWithCalcEngine:forMinion:options:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 108, 0, "A minion is required to use TSCEFormulasToSet object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (!engineCopy)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCEFormulasToSet initWithCalcEngine:forMinion:options:]", v10);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 109, 0, "invalid nil value for '%{public}s'", "calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  v36.receiver = self;
  v36.super_class = TSCEFormulasToSet;
  v30 = [(TSCEFormulasToSet *)&v36 init];
  v34 = v30;
  if (v30)
  {
    v30->_calcEngine = engineCopy;
    v30->_minion = minionCopy;
    v30->_options = options;
    objc_msgSend_commonInit(v30, v31, v32, v33);
  }

  return v34;
}

- (void)dealloc
{
  if ((TSCECellRefSet::isEmpty(&self->_formulasToReset) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCEFormulasToSet dealloc]", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v8);
    v10 = objc_opt_class();
    v11 = TSCECellRefSet::count(&self->_formulasToReset);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v6, v9, 123, 0, "Deallocing %@ with %lu formulasToReset", v10, v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if ((TSCECellRefSet::isEmpty(&self->_formulasToRemove) & 1) == 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCEFormulasToSet dealloc]", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v21);
    v23 = objc_opt_class();
    v24 = TSCECellRefSet::count(&self->_formulasToRemove);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v19, v22, 124, 0, "Deallocing %@ with %lu formulasToRemove", v23, v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  if (self->_formulasToReplace.__table_.__size_)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCEFormulasToSet dealloc]", v17);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v32);
    v34 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v33, 125, 0, "Deallocing %@ with %lu formulasToReplace", v34, self->_formulasToReplace.__table_.__size_);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
  }

  v39.receiver = self;
  v39.super_class = TSCEFormulasToSet;
  [(TSCEFormulasToSet *)&v39 dealloc];
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  if (TSCECellRefSet::isEmpty(&self->_formulasToRemove) && !self->_formulasToReplace.__table_.__size_)
  {
    isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToReset);
  }

  else
  {
    isEmpty = 0;
  }

  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  return isEmpty;
}

- (void)processInBackgroundIfNecessary
{
  if (self->_flushAllInProgress)
  {
    return;
  }

  os_unfair_lock_lock(&self->_removeReplaceMutex);
  runningInBackground = self->_runningInBackground;
  options = self->_options;
  if ((options & 2) == 0)
  {
    v5 = 1;
    if ((self->_options & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    if ((options & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v5 = TSCECellRefSet::count(&self->_formulasToRemove) < 0xA;
  options = self->_options;
  if ((options & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = self->_formulasToReplace.__table_.__size_ > 9;
  if ((options & 8) != 0)
  {
LABEL_5:
    v7 = TSCECellRefSet::count(&self->_formulasToReset) > 9;
    goto LABEL_9;
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  v8 = v5 && !v6 && !v7;
  if ((v8 & 1) == 0 && !runningInBackground)
  {
    self->_runningInBackground = 1;
  }

  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if (((v8 | runningInBackground) & 1) == 0)
  {
    v12 = objc_msgSend_dependencyTracker(self->_calcEngine, v9, v10, v11);
    backgroundProcessingQueue = self->_backgroundProcessingQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2213E6DD0;
    v15[3] = &unk_27845FEF0;
    v15[4] = self;
    v16 = v12;
    v14 = v12;
    dispatch_async(backgroundProcessingQueue, v15);
  }
}

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner
{
  formulaCopy = formula;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v11, 0, 1);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v10, &v11);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(self, v9, formulaCopy, coord, owner, &v10);
}

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  formulaCopy = formula;
  v14 = formulaCopy;
  v15 = *coord;
  v35 = *owner;
  if (self->_options)
  {
    v18 = objc_msgSend_formulaObject(formulaCopy, v11, v12, v13);
    precedentLoadingQueue = self->_precedentLoadingQueue;
    precedentLoadingGroup = self->_precedentLoadingGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = sub_2213E7278;
    block[3] = &unk_2834A79F8;
    v34 = v15;
    v30 = v18;
    selfCopy = self;
    v32 = v35;
    v21 = v18;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v33, options);
    dispatch_group_async(precedentLoadingGroup, precedentLoadingQueue, block);
  }

  else
  {
    v28.coordinate = v15;
    v28._tableUID = *owner;
    sub_2213E91EC(v24, &v28, options, formulaCopy);
    os_unfair_lock_lock(&self->_removeReplaceMutex);
    if ((TSCECellRefSet::containsCellRef(&self->_formulasToReset, &v28) & 1) == 0)
    {
      tableUID = v28._tableUID;
      p_tableUID = &tableUID;
      v16 = sub_2213E931C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, &tableUID, &unk_2217E1AE8, &p_tableUID);
      coordinate = v28.coordinate;
      p_tableUID = &coordinate;
      v17 = sub_2213E9698(v16 + 4, &coordinate);
      sub_2213E74DC((v17 + 3), v24);
    }

    os_unfair_lock_unlock(&self->_removeReplaceMutex);
  }
}

- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  precedentsCopy = precedents;
  v22.coordinate = *at;
  v22._tableUID = *owner;
  sub_2213E9258(v18, &v22, options, precedentsCopy);
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  if ((TSCECellRefSet::containsCellRef(&self->_formulasToReset, &v22) & 1) == 0)
  {
    tableUID = v22._tableUID;
    p_tableUID = &tableUID;
    v11 = sub_2213E931C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, &tableUID, &unk_2217E1AE8, &p_tableUID);
    coordinate = v22.coordinate;
    p_tableUID = &coordinate;
    v12 = sub_2213E9698(v11 + 4, &coordinate);
    sub_2213E74DC((v12 + 3), v18);
  }

  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  objc_msgSend_processInBackgroundIfNecessary(self, v13, v14, v15);
}

- (void)removeFormulasAt:(const void *)at inOwner:(const TSKUIDStruct *)owner removeOutstandingReplaces:(BOOL)replaces
{
  if (*owner != 0)
  {
    replacesCopy = replaces;
    os_unfair_lock_lock(&self->_removeReplaceMutex);
    TSCECellRefSet::addCellRefs(&self->_formulasToRemove, owner, at);
    if (replacesCopy)
    {
      sub_2213E9A0C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, owner);
      TSCECellRefSet::removeAllCellRefsForOwner(&self->_formulasToReset, owner);
    }

    else
    {
      v17._rowsPerColumn.__tree_.__end_node_.__left_ = 0;
      v17._rowsPerColumn.__tree_.__size_ = 0;
      v17._rectRepresentation.origin = 0;
      v17._rectRepresentation.size = 0;
      v17._rowsPerColumn.__tree_.__begin_node_ = &v17._rowsPerColumn.__tree_.__end_node_;
      v9 = sub_2210875C4(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, owner);
      v10 = v9;
      if (v9)
      {
        for (i = v9[6]; i; i = *i)
        {
          if (TSCECellCoordSet::containsCellCoord(at, i + 2))
          {
            TSCECellCoordSet::addCellCoord(&v17, &i[2]);
          }
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_2213E789C;
        v16[3] = &unk_27845F2D8;
        v16[4] = v10 + 4;
        TSCECellCoordSet::enumerateCoordsUsingBlock(&v17, v16);
        if (!v10[7])
        {
          sub_2213E9A0C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, owner);
        }
      }

      if ((TSCECellRefSet::isEmpty(&self->_formulasToReset) & 1) == 0)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_2213E78A4;
        v15[3] = &unk_278460EB8;
        v15[4] = self;
        v15[5] = owner;
        TSCECellCoordSet::enumerateCoordsUsingBlock(at, v15);
      }

      sub_22107C860(&v17._rowsPerColumn, v17._rowsPerColumn.__tree_.__end_node_.__left_);
    }

    os_unfair_lock_unlock(&self->_removeReplaceMutex);
    objc_msgSend_processInBackgroundIfNecessary(self, v12, v13, v14);
  }
}

- (void)removeAllFormulasFromOwner:(const TSKUIDStruct *)owner
{
  if (*owner != 0)
  {
    if ((self->_options & 2) != 0)
    {
      v13 = *owner;
      backgroundProcessingQueue = self->_backgroundProcessingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2213E7A50;
      block[3] = &unk_2784643B8;
      block[4] = self;
      dispatch_async(backgroundProcessingQueue, block);
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      sub_2213E9A0C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, owner);
      TSCECellRefSet::removeAllCellRefsForOwner(&self->_formulasToReset, owner);
      os_unfair_lock_unlock(&self->_removeReplaceMutex);
    }

    else
    {
      calcEngine = self->_calcEngine;
      if (calcEngine)
      {
        objc_msgSend_allFormulaCoordsInOwner_(calcEngine, a2, owner, v3);
      }

      else
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
      }

      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_2213E7A64;
      v8[3] = &unk_278460EB8;
      v8[4] = self;
      v8[5] = owner;
      TSCECellCoordSet::enumerateCoordsUsingBlock(&v9, v8);
      sub_22107C860(&v10, *(&v10 + 1));
    }
  }
}

- (void)removeFormulasFromRange:(const TSCERangeRef *)range
{
  if (TSCERangeRef::isValid(range))
  {
    TSCERangeCoordinate::asCellRect(&range->range);
    os_unfair_lock_lock(&self->_removeReplaceMutex);
    TSUCellRect::enumerateCoordinatesUsingBlock();
    os_unfair_lock_unlock(&self->_removeReplaceMutex);
    objc_msgSend_processInBackgroundIfNecessary(self, v5, v6, v7);
  }
}

- (void)removeFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner
{
  v5 = *at;
  v11.coordinate = *at;
  v11._tableUID = *owner;
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  tableUID = v11._tableUID;
  v6 = sub_2210875C4(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, &tableUID);
  if (v6)
  {
    tableUID._lower = v5;
    sub_2213E9A58(v6 + 4, &tableUID);
  }

  TSCECellRefSet::removeCellRef(&self->_formulasToReset, &v11);
  TSCECellRefSet::addCellRef(&self->_formulasToRemove, &v11);
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  objc_msgSend_processInBackgroundIfNecessary(self, v7, v8, v9);
}

- (void)removeFormulasAt:(const void *)at
{
  if ((TSCECellRefSet::isEmpty(at) & 1) == 0)
  {
    os_unfair_lock_lock(&self->_removeReplaceMutex);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2213E7CF4;
    v8[3] = &unk_27845FBD8;
    v8[4] = self;
    TSCECellRefSet::enumerateCellRefsUsingBlock(at, v8);
    os_unfair_lock_unlock(&self->_removeReplaceMutex);
    objc_msgSend_processInBackgroundIfNecessary(self, v5, v6, v7);
  }
}

- (void)resetFormulaAt:(const TSCECellRef *)at
{
  if (*&at->coordinate != 0x7FFFFFFF && (*&at->coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v13 = v3;
    v14 = v4;
    if (*&at->_tableUID != 0)
    {
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      tableUID = at->_tableUID;
      v8 = sub_2210875C4(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, &tableUID);
      if (v8)
      {
        tableUID._lower = at->coordinate;
        sub_2213E9A58(v8 + 4, &tableUID);
      }

      TSCECellRefSet::removeCellRef(&self->_formulasToRemove, at);
      TSCECellRefSet::addCellRef(&self->_formulasToReset, at);
      os_unfair_lock_unlock(&self->_removeReplaceMutex);
      objc_msgSend_processInBackgroundIfNecessary(self, v9, v10, v11);
    }
  }
}

- (void)_flushFormulasToRemoveWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  trackerCopy = tracker;
  timeCopy = time;
  if (trackerCopy)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x4812000000;
    v62 = sub_2213E8290;
    v63 = sub_2213E829C;
    v64 = &unk_22188E88F;
    v66[0] = 0;
    v66[1] = 0;
    v65 = v66;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v33 = self->_calcEngine;
    objc_msgSend_beginSuppressingWillModifyCalls(v33, v10, v11, v12);
    objc_msgSend_beginBatchingGroupCellDirtying(v33, v13, v14, v15);
    while ((v56[3] & 1) == 0)
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      v54 = 0;
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      if (timeCopy)
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = sub_2213E82A8;
        v50[3] = &unk_278464868;
        v50[4] = &v59;
        v50[5] = &v51;
        TSCECellRefSet::enumerateCellRefsUsingBlock(&self->_formulasToRemove._coordsForOwnerUid.__tree_.__begin_node_, v50);
        TSCECellRefSet::removeCellRefs(&self->_formulasToRemove, &v60[2]);
        isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToRemove);
        *(v56 + 24) = isEmpty;
      }

      else
      {
        TSCECellRefSet::operator=(&v60[2], &self->_formulasToRemove);
        TSCECellRefSet::clear(&self->_formulasToRemove);
        *(v56 + 24) = 1;
      }

      os_unfair_lock_unlock(&self->_removeReplaceMutex);
      v42 = 0;
      v43 = &v42;
      v44 = 0x4812000000;
      v45 = sub_2213E8290;
      v46 = sub_2213E829C;
      v47 = &unk_22188E88F;
      v49[0] = 0;
      v49[1] = 0;
      v48 = v49;
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v41[3] = 0;
      v20 = v60;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_2213E830C;
      v34[3] = &unk_278464890;
      v35 = trackerCopy;
      v37 = &v42;
      v21 = timeCopy;
      v36 = v21;
      v38 = &v55;
      v39 = v41;
      timeoutCopy = timeout;
      TSCECellRefSet::enumerateCellRefsUsingBlock(&v20[2]._coordsForOwnerUid.__tree_.__begin_node_, v34);
      v22 = TSCECellRefSet::count(v43 + 2);
      if (v22 <= v52[3])
      {
        TSCECellRefSet::removeCellRefs(&v60[2], v43 + 2);
        os_unfair_lock_lock(&self->_removeReplaceMutex);
        TSCECellRefSet::addCellRefs(&self->_formulasToRemove, v60 + 2);
        os_unfair_lock_unlock(&self->_removeReplaceMutex);
      }

      if (timeCopy)
      {
        if ((v56[3] & 1) == 0)
        {
          objc_msgSend_timeIntervalSinceNow(v21, v23, v24, v25);
          if (-v26 > timeout)
          {
            *(v56 + 24) = 1;
          }
        }
      }

      _Block_object_dispose(v41, 8);
      _Block_object_dispose(&v42, 8);
      sub_22107C800(&v48, v49[0]);
      _Block_object_dispose(&v51, 8);
    }

    objc_msgSend_endBatchingGroupCellDirtying(v33, v16, v17, v18);
    objc_msgSend_endSuppressingWillModifyCalls(v33, v27, v28, v29);
    objc_msgSend_updateEmbiggenedTableCache(v33, v30, v31, v32);

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);
    sub_22107C800(&v65, v66[0]);
  }
}

- (void)_flushFormulasToReplaceWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  trackerCopy = tracker;
  timeCopy = time;
  v41 = trackerCopy;
  if (trackerCopy)
  {
    v40 = self->_calcEngine;
    objc_msgSend_beginSuppressingWillModifyCalls(v40, v10, v11, v12);
    objc_msgSend_beginBatchingGroupCellDirtying(v40, v13, v14, v15);
    v16 = 0;
    do
    {
      v47 = 0x7FFF7FFFFFFFLL;
      v48 = 0uLL;
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v49, 0, 1);
      v50 = 0;
      v51 = 0;
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      next = self->_formulasToReplace.__table_.__first_node_.__next_;
      if (next)
      {
        v18 = next[6];
        if (v18)
        {
          sub_2213E74DC(&v47, (v18 + 24));
          sub_2213E9A58(next + 4, (v18 + 16));
        }

        if (!next[7])
        {
          sub_2213E9A0C(&self->_formulasToReplace.__table_.__bucket_list_.__ptr_, next + 2);
        }

        v19 = self->_formulasToReplace.__table_.__size_ == 0;
      }

      else
      {
        v19 = 1;
      }

      os_unfair_lock_unlock(&self->_removeReplaceMutex);
      v23 = v47;
      if (v47 != 0x7FFFFFFF && (v47 & 0xFFFF00000000) != 0x7FFF00000000 && v48 != 0)
      {
        if (v51)
        {
          v46 = v48;
          v30 = v51;
          TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v45, &v49);
          objc_msgSend_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(v41, v31, &v46, v23, v30, &v45);
        }

        else
        {
          precedentLoadingQueue = self->_precedentLoadingQueue;
          precedentLoadingGroup = self->_precedentLoadingGroup;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3321888768;
          block[2] = sub_2213E870C;
          block[3] = &unk_2834A7A30;
          block[5] = v47;
          v43 = v48;
          sub_2213E92C4(v44, &v47);
          block[4] = self;
          dispatch_group_async(precedentLoadingGroup, precedentLoadingQueue, block);

          v16 = 1;
        }
      }

      if (timeCopy == 0 || v19)
      {
        if (((timeCopy == 0) & v19 & v16) == 1)
        {
          objc_msgSend_waitForAllPrecedentsToLoad(self, v20, v21, v22);
          os_unfair_lock_lock(&self->_removeReplaceMutex);
          LOBYTE(v19) = self->_formulasToReplace.__table_.__size_ == 0;
          os_unfair_lock_unlock(&self->_removeReplaceMutex);
          v16 = 0;
        }
      }

      else
      {
        objc_msgSend_timeIntervalSinceNow(timeCopy, v20, v21, v22);
        LOBYTE(v19) = -v26 > timeout;
      }
    }

    while (!v19);
    objc_msgSend_endBatchingGroupCellDirtying(v40, v27, v28, v29);
    objc_msgSend_endSuppressingWillModifyCalls(v40, v34, v35, v36);
    objc_msgSend_updateEmbiggenedTableCache(v40, v37, v38, v39);
  }
}

- (void)_flushFormulasToResetWithDepTracker:(id)tracker startTime:(id)time timeout:(double)timeout
{
  trackerCopy = tracker;
  timeCopy = time;
  if (trackerCopy && (TSCECellRefSet::isEmpty(&self->_formulasToReset) & 1) == 0)
  {
    v10 = self->_calcEngine;
    objc_msgSend_beginSuppressingWillModifyCalls(v10, v11, v12, v13);
    objc_msgSend_beginBatchingGroupCellDirtying(v10, v14, v15, v16);
    v17 = 0;
    while (1)
    {
      os_unfair_lock_lock(&self->_removeReplaceMutex);
      TSCECellRefSet::anyCellRef(&v36, &self->_formulasToReset);
      TSCECellRefSet::removeCellRef(&self->_formulasToReset, &v36);
      isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToReset);
      os_unfair_lock_unlock(&self->_removeReplaceMutex);
      if (v17)
      {
        v22 = objc_msgSend_tableUID(v17, v19, v20, v21);
        tableUID = v36._tableUID;
        if (v22 == v36._tableUID._lower && v19 == v36._tableUID._upper)
        {
LABEL_10:
          v35._lower = v36.coordinate;
          objc_msgSend_resetDependenciesForCell_calcEngine_(v17, v19, &v35, self->_minion);
          goto LABEL_11;
        }
      }

      else
      {
        tableUID = v36._tableUID;
      }

      calcEngine = self->_calcEngine;
      v35 = tableUID;
      v25 = objc_msgSend_tableResolverForTableUID_(calcEngine, v19, &v35, v21);

      v17 = v25;
      if (v25)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((timeCopy == 0) | isEmpty & 1)
      {
        if (isEmpty)
        {
          goto LABEL_15;
        }
      }

      else
      {
        objc_msgSend_timeIntervalSinceNow(timeCopy, v19, v26, v27);
        if (-v28 > timeout)
        {
LABEL_15:
          objc_msgSend_endBatchingGroupCellDirtying(v10, v19, v26, v27);
          objc_msgSend_endSuppressingWillModifyCalls(v10, v29, v30, v31);
          objc_msgSend_updateEmbiggenedTableCache(v10, v32, v33, v34);

          break;
        }
      }
    }
  }
}

- (void)willClose
{
  v18 = self->_calcEngine;
  objc_msgSend_beginSuppressingWillModifyCalls(v18, v3, v4, v5);
  objc_msgSend_beginBatchingGroupCellDirtying(v18, v6, v7, v8);
  objc_msgSend_flushAllFormulaChanges(self, v9, v10, v11);
  objc_msgSend_endBatchingGroupCellDirtying(v18, v12, v13, v14);
  objc_msgSend_endSuppressingWillModifyCalls(v18, v15, v16, v17);
}

- (void)flushRemoveFormulas
{
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToRemove);
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if ((isEmpty & 1) == 0)
  {
    v8 = objc_msgSend_dependencyTracker(self->_calcEngine, v4, v5, v6);
    if (v8)
    {
      objc_msgSend__flushFormulasToRemoveWithDepTracker_startTime_timeout_(self, v7, v8, 0, 0.0);
    }
  }
}

- (void)flushReplaceFormulas
{
  objc_msgSend_waitForAllPrecedentsToLoad(self, a2, v2, v3);
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  size = self->_formulasToReplace.__table_.__size_;
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if (size)
  {
    v10 = objc_msgSend_dependencyTracker(self->_calcEngine, v6, v7, v8);
    if (v10)
    {
      objc_msgSend__flushFormulasToReplaceWithDepTracker_startTime_timeout_(self, v9, v10, 0, 0.0);
    }
  }
}

- (void)flushResetFormulas
{
  objc_msgSend_waitForAllPrecedentsToLoad(self, a2, v2, v3);
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToReset);
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if ((isEmpty & 1) == 0)
  {
    v10 = objc_msgSend_dependencyTracker(self->_calcEngine, v6, v7, v8);
    if (v10)
    {
      objc_msgSend__flushFormulasToResetWithDepTracker_startTime_timeout_(self, v9, v10, 0, 0.0);
    }
  }
}

- (void)flushAllFormulaChanges
{
  self->_flushAllInProgress = 1;
  v34 = self->_calcEngine;
  objc_msgSend_beginSuppressingWillModifyCalls(v34, v3, v4, v5);
  objc_msgSend_beginBatchingGroupCellDirtying(v34, v6, v7, v8);
  dispatch_sync(self->_backgroundProcessingQueue, &unk_2834A7A60);
  objc_msgSend_waitForAllPrecedentsToLoad(self, v9, v10, v11);
  v15 = objc_msgSend_flushFormulaChangesForSeconds_(self, v12, v13, v14, 0.0);
  self->_flushAllInProgress = 0;
  if ((v15 & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCEFormulasToSet flushAllFormulaChanges]", v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasToSet.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 742, 0, "We should be empty now, always");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    objc_msgSend_flushFormulaChangesForSeconds_(self, v28, v29, v30, 0.0);
  }

  objc_msgSend_endBatchingGroupCellDirtying(v34, v16, v17, v18);
  objc_msgSend_endSuppressingWillModifyCalls(v34, v31, v32, v33);
}

- (BOOL)flushFormulaChangesForSeconds:(double)seconds
{
  os_unfair_lock_lock(&self->_removeReplaceMutex);
  v5 = TSCECellRefSet::isEmpty(&self->_formulasToRemove) ^ 1;
  size = self->_formulasToReplace.__table_.__size_;
  v7 = size != 0;
  v8 = TSCECellRefSet::isEmpty(&self->_formulasToReset) ^ 1;
  os_unfair_lock_unlock(&self->_removeReplaceMutex);
  if ((v5 & 1) == 0 && !size && !v8)
  {
    return 1;
  }

  v13 = objc_msgSend_dependencyTracker(self->_calcEngine, v9, v10, v11);
  if (v13)
  {
    if (seconds <= 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = objc_opt_new();
    }

    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = sub_2213E90F8;
    v31 = &unk_278460DF0;
    v15 = v14;
    v32 = v15;
    secondsCopy = seconds;
    v19 = MEMORY[0x223DA1C10](&v28);
    v20 = 1;
    while (1)
    {
      v21 = v20;
      if (v5)
      {
        objc_msgSend__flushFormulasToRemoveWithDepTracker_startTime_timeout_(self, v16, v13, v15, seconds, v28, v29, v30, v31);
        if (v19[2](v19))
        {
          break;
        }
      }

      if (v8)
      {
        objc_msgSend__flushFormulasToResetWithDepTracker_startTime_timeout_(self, v16, v13, v15, seconds);
        if (v19[2](v19))
        {
          break;
        }
      }

      if (v7)
      {
        objc_msgSend__flushFormulasToReplaceWithDepTracker_startTime_timeout_(self, v16, v13, v15, seconds);
      }

      if (v15)
      {
        v20 = 0;
        if (v21)
        {
          break;
        }
      }

      else
      {
        os_unfair_lock_lock(&self->_removeReplaceMutex);
        isEmpty = TSCECellRefSet::isEmpty(&self->_formulasToRemove);
        v23 = self->_formulasToReplace.__table_.__size_;
        v24 = TSCECellRefSet::isEmpty(&self->_formulasToReset);
        os_unfair_lock_unlock(&self->_removeReplaceMutex);
        v20 = 0;
        v25 = v23 == 0;
        v7 = v23 != 0;
        v5 = isEmpty ^ 1;
        LOBYTE(v8) = v24 ^ 1;
        if (v25)
        {
          v26 = isEmpty;
        }

        else
        {
          v26 = 0;
        }

        if (v26 & v24)
        {
          break;
        }
      }
    }

    v12 = objc_msgSend_isEmpty(self, v16, v17, v18, v28, v29, v30, v31);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 5) = self + 48;
  *(self + 10) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 8) = self + 72;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end