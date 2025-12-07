@interface TSTCategoryAggregateFormulaOwner
- (BOOL)isRegisteredWithCalcEngine:(id)engine;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSTCategoryAggregateFormulaOwner)initWithTableUID:(const TSKUIDStruct *)d ownerUID:(const TSKUIDStruct *)iD;
- (TSTTableInfo)tableInfo;
- (id)linkedResolver;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (void)invalidateForCalcEngine:(id)engine;
- (void)setTableInfo:(id)info;
- (void)unregisterFromCalcEngine;
- (void)writeResultsForCalcEngine:(id)engine;
@end

@implementation TSTCategoryAggregateFormulaOwner

- (TSTCategoryAggregateFormulaOwner)initWithTableUID:(const TSKUIDStruct *)d ownerUID:(const TSKUIDStruct *)iD
{
  v11.receiver = self;
  v11.super_class = TSTCategoryAggregateFormulaOwner;
  v6 = [(TSTCategoryAggregateFormulaOwner *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_tableUID = *d;
    v6->_ownerUID = *iD;
    v8 = objc_alloc_init(TSTCellDictionary);
    cellsPendingWrite = v7->_cellsPendingWrite;
    v7->_cellsPendingWrite = v8;
  }

  return v7;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_calcEngine);

    if (!v4)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCategoryAggregateFormulaOwner tableInfo]", v6);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 54, 0, "Someone is asking for a tableInfo, but we are not registered with the calcEngine yet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    }

    lower = self->_tableUID._lower;
    upper = self->_tableUID._upper;
    v18 = objc_loadWeakRetained(&self->_calcEngine);
    v20 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v19, lower, upper, v18);

    v21 = objc_loadWeakRetained(&self->_calcEngine);
    if (!v21 || v20)
    {
      if (v20)
      {
        objc_msgSend_setTableInfo_(self, v22, v20, v23);
      }
    }

    else
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTCategoryAggregateFormulaOwner tableInfo]", v23);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v27);
      v29 = TSKUIDStruct::description(&self->_tableUID);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v28, 57, 0, "Table %@ is not registered with the calcEngine yet", v29);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
    }
  }

  v34 = objc_loadWeakRetained(&self->_tableInfo);

  return v34;
}

- (void)setTableInfo:(id)info
{
  obj = info;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_tableInfo);

    if (v6 != obj)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCategoryAggregateFormulaOwner setTableInfo:]", v8);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 68, 0, "don't allow overwriting table info pointer, should go from nil -> info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTCategoryAggregateFormulaOwner setTableInfo:]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v23);
    v25 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v24, 69, 0, "Wrong class passed to setTableInfo: %@", v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  v30 = obj;
  if (obj)
  {
    objc_storeWeak(&self->_tableInfo, obj);
    v30 = obj;
  }
}

- (BOOL)isRegisteredWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_ownerUID(self, v5, v6, v7);
  LOBYTE(self) = objc_msgSend_ownerIsRegistered_(engineCopy, v9, *v8, v8[1]);

  return self;
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_storeWeak(&self->_calcEngine, engineCopy);
    v13 = objc_msgSend_ownerUID(self, v10, v11, v12);
    v8 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(engineCopy, v14, *v13, v13[1], self, 0, d->_lower, d->_upper, 9);
  }

  return v8;
}

- (void)unregisterFromCalcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
  v7 = objc_msgSend_ownerUID(self, v4, v5, v6);
  objc_msgSend_unregisterOwner_(WeakRetained, v8, *v7, v7[1]);

  objc_storeWeak(&self->_calcEngine, 0);
}

- (void)writeResultsForCalcEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_cellsPendingWrite(self, v5, v6, v7);
  v12 = objc_msgSend_cellMap(v8, v9, v10, v11);

  if (objc_msgSend_count(v12, v13, v14, v15))
  {
    objc_msgSend_willModify(engineCopy, v16, v17, v18);
  }

  objc_msgSend_setMayModifyValuesReferencedByFormulas_(v12, v16, 0, v18);
  v22 = objc_msgSend_tableInfo(self, v19, v20, v21);
  v26 = objc_msgSend_summaryModel(v22, v23, v24, v25);
  objc_msgSend_setFormulaResultCellsWithCellMap_(v26, v27, v12, v28);

  v32 = objc_msgSend_cellsPendingWrite(self, v29, v30, v31);
  objc_msgSend_removeAllCells(v32, v33, v34, v35);

  if (objc_msgSend_count(v12, v36, v37, v38) && !objc_msgSend_dirtyCellCountInOwner_(engineCopy, v39, &self->_ownerUID, v40))
  {
    v44 = objc_msgSend_tableInfo(self, v41, v42, v43);
    v78 = objc_msgSend_tableUID(v44, v45, v46, v47);
    v79 = v48;
    objc_msgSend_summaryModelIsCleanPrecedentForTableUID_(TSCEHauntedOwner, v48, &v78, v49);
    objc_msgSend_markCellRefAsDirty_(engineCopy, v50, v80, v51);

    v55 = objc_msgSend_tableInfo(self, v52, v53, v54);
    v59 = objc_msgSend_pivotOwner(v55, v56, v57, v58);
    shouldSkipNextAsyncSort = objc_msgSend_shouldSkipNextAsyncSort(v59, v60, v61, v62);

    v70 = objc_msgSend_tableInfo(self, v64, v65, v66);
    if (shouldSkipNextAsyncSort)
    {
      v71 = objc_msgSend_pivotOwner(v70, v67, v68, v69);
      objc_msgSend_setShouldSkipNextAsyncSort_(v71, v72, 0, v73);
    }

    else
    {
      v78 = objc_msgSend_tableUID(v70, v67, v68, v69);
      v79 = v74;
      objc_msgSend_summaryModelIsCleanForSortPrecedentForTableUID_(TSCEHauntedOwner, v74, &v78, v75);
      objc_msgSend_markCellRefAsDirty_(engineCopy, v76, v80, v77);
    }
  }
}

- (void)invalidateForCalcEngine:(id)engine
{
  engineCopy = engine;
  v7 = objc_msgSend_tableInfo(self, v4, v5, v6);
  v11 = objc_msgSend_baseTableModel(v7, v8, v9, v10);
  objc_msgSend_invalidateForCalcEngine_(v11, v12, engineCopy, v13);
}

- (id)linkedResolver
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_baseTableModel(v4, v5, v6, v7);

  return v8;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  LOBYTE(updated) = options;
  engineCopy = engine;
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v13 = objc_msgSend_tableInfo(self, v10, v11, v12);
    v17 = objc_msgSend_newCell(v13, v14, v15, v16);
    v21 = objc_msgSend_summaryModel(v13, v18, v19, v20);
    objc_msgSend_getCell_atCellCoord_(v21, v22, v17, *&at);

    atCopy = at;
    v105 = *objc_msgSend_ownerUID(self, v23, v24, v25);
    v103 = 0;
    if (objc_msgSend_shouldAbortRecalculation(engineCopy, v26, v27, v28))
    {
      v32 = 1;
      v33 = 1;
      goto LABEL_15;
    }

    if (!objc_msgSend_hasFormula(v17, v29, v30, v31))
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_15;
    }

    v45 = objc_msgSend_formulaObject(v17, v29, v30, v31);
    v102 = 0;
    v49 = objc_msgSend_ownerUID(self, v46, v47, v48);
    v100 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v50, engineCopy, v49, at, 0);
    objc_msgSend_setAllowAbort_(v100, v51, 1, v52);
    v54 = objc_msgSend_evaluateWithContext_isInACycle_outErrorIsDueToCycle_(v45, v53, v100, updated & 1, &v102);
    *&v101[0] = at;
    *(v101 + 8) = self->_ownerUID;
    updated = objc_msgSend_updateCalculatedPrecedents_forFormula_atCellRef_withState_(engineCopy, v55, v100, v45, v101, updated);
    if (objc_msgSend_deepType_(v54, v56, v100, v57) == 9)
    {
      v60 = objc_msgSend_errorWithContext_(v54, v58, v100, v59);
      if (objc_msgSend_isAbortedError(v60, v61, v62, v63))
      {
        v67 = v45;
        v32 = 1;
        v33 = 1;
LABEL_14:

LABEL_15:
        v89 = objc_msgSend_translator(v13, v29, v30, v31);
        v92 = objc_msgSend_viewCellCoordForSummaryCellCoord_(v89, v90, *&at, v91);

        if (v32)
        {

          if (v33)
          {
            v44 = updated & 0x5F | 0x20;
          }

          else
          {
            v44 = updated & 0x5F;
          }

          goto LABEL_19;
        }

        if (v92 == 0x7FFFFFFF || (v92 & 0xFFFF00000000) == 0x7FFF00000000)
        {
LABEL_29:

          v44 = updated & 0x5F;
          if (v33)
          {
            v44 |= 0x20u;
            if ((v32 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          else if (!v32)
          {
LABEL_33:
            v43 = 0;
            goto LABEL_34;
          }

LABEL_19:
          v43 = 0x80;
          goto LABEL_34;
        }

        if (v103 == 1)
        {
          v98 = objc_msgSend_cellsToInvalidateAfterRecalc(v13, v93, v94, v95);
          if (v13)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v98 = objc_msgSend_cellsToInvalidateNonoverflowingAfterRecalc(v13, v93, v94, v95);
          if (v13)
          {
LABEL_26:
            objc_msgSend_cellUIDForCellID_(v13, v96, v92, v97);
LABEL_28:
            objc_msgSend_addCellUID_(v98, v96, v101, v97);

            goto LABEL_29;
          }
        }

        memset(v101, 0, sizeof(v101));
        goto LABEL_28;
      }

      if ((objc_msgSend_isCircularReferenceError(v60, v64, v65, v66) & 1) == 0)
      {
        v71 = objc_msgSend_valueToUseForSummaryCellFormulaError(v13, v68, v69, v70);

        v54 = v71;
      }
    }

    objc_msgSend_updateErrorAndWarnings_forCell_(engineCopy, v58, v54, &atCopy);
    v75 = objc_msgSend_warnings(v54, v72, v73, v74);
    v79 = objc_msgSend_count(v75, v76, v77, v78);

    v83 = objc_msgSend_context(v13, v80, v81, v82);
    objc_msgSend_applyFormulaResult_context_hasWarnings_outWriteDidBeginOrEndWithTextCell_propagateCheckboxes_(v17, v84, v54, v83, v79 != 0, &v103, 1);

    v60 = objc_msgSend_cellsPendingWrite(self, v85, v86, v87);
    v67 = v45;
    objc_msgSend_setCell_atCellID_(v60, v88, v17, *&at);
    v32 = 0;
    v33 = (updated >> 5) & 1;
    goto LABEL_14;
  }

  v34 = MEMORY[0x277D81150];
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCategoryAggregateFormulaOwner evaluateFormulaAt:withCalcEngine:recalcOptions:]", v12);
  v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryAggregateFormulaOwner.mm", v37);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 146, 0, "Table has no calc engine. Aborting recalculation.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
  v43 = 0;
  v44 = updated & 0x5F;
LABEL_34:

  return (v43 | v44);
}

@end