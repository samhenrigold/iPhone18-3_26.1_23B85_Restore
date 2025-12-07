@interface TSTConditionalStyleFormulaOwner
+ (id)allCondStyleFormulasForTable:(id)table;
- (BOOL)checkConditionForCellID:(TSUCellCoord)d withConditionalStyle:(id)style withIndex:(unint64_t *)index;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)ownerUID;
- (TSTConditionalStyleFormulaOwner)initWithTableModel:(id)model;
- (TSTConditionalStyleFormulaOwner)initWithTableModel:(id)model ownerUID:(const TSKUIDStruct *)d;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (void)addFormulaForConditionalStyle:(id)style atCellID:(TSUCellCoord)d;
- (void)changedConditionForCellID:(TSUCellCoord)d;
- (void)removeFormulasInRange:(TSUCellRect)range;
- (void)replaceFormulaForConditionalStyle:(id)style atCellID:(TSUCellCoord)d;
@end

@implementation TSTConditionalStyleFormulaOwner

- (TSTConditionalStyleFormulaOwner)initWithTableModel:(id)model ownerUID:(const TSKUIDStruct *)d
{
  modelCopy = model;
  v33.receiver = self;
  v33.super_class = TSTConditionalStyleFormulaOwner;
  v7 = [(TSTConditionalStyleFormulaOwner *)&v33 init];
  v10 = v7;
  if (v7)
  {
    v7->_tableModel = modelCopy;
    if (*d == 0)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTConditionalStyleFormulaOwner initWithTableModel:ownerUID:]", v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleFormulaOwner.mm", v14);
      v32._lower = objc_msgSend_tableUID(modelCopy, v16, v17, v18);
      v32._upper = v19;
      v20 = TSKUIDStruct::description(&v32);
      v24 = objc_msgSend_tableName(modelCopy, v21, v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v25, v12, v15, 60, 0, "TSTConditionalStyleFormulaOwner: requires a valid ownerUID, table is: %@ (%@)", v20, v24);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }

    v10->_ownerUID = *d;
    v29 = objc_alloc_init(TSCECellCoordinateVector);
    cellsToInvalidate = v10->_cellsToInvalidate;
    v10->_cellsToInvalidate = v29;
  }

  return v10;
}

- (TSTConditionalStyleFormulaOwner)initWithTableModel:(id)model
{
  modelCopy = model;
  *&v14 = objc_msgSend_tableUID(modelCopy, v5, v6, v7);
  *(&v14 + 1) = v8;
  v15[0] = sub_2212C4930(&v14, 3, v9, v10);
  v15[1] = v11;
  v12 = objc_msgSend_initWithTableModel_ownerUID_(self, v11, modelCopy, v15);

  return v12;
}

- (BOOL)checkConditionForCellID:(TSUCellCoord)d withConditionalStyle:(id)style withIndex:(unint64_t *)index
{
  v37 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  v11 = objc_msgSend_calcEngine(self->_tableModel, v8, v9, v10);

  if (v11)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = objc_msgSend_currentRules(styleCopy, v12, v13, v14);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v32, v36, 16);
    if (v20)
    {
      indexCopy = index;
      v21 = 0;
      v22 = *v33;
      while (2)
      {
        v23 = 0;
        v24 = v21;
        v21 += v20;
        do
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v15);
          }

          v25 = *(*(&v32 + 1) + 8 * v23);
          v26 = objc_msgSend_calcEngine(self->_tableModel, v17, v18, v19, indexCopy);
          LODWORD(v25) = objc_msgSend_evaluateFormulaAtCellID_withCalcEngine_onOwnerUID_(v25, v27, *&d, v26, &self->_ownerUID);

          if (v25)
          {
            *indexCopy = v24;
            v28 = 1;
            goto LABEL_12;
          }

          ++v24;
          ++v23;
        }

        while (v20 != v23);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v32, v36, 16);
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v28 = 0;
LABEL_12:
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)addFormulaForConditionalStyle:(id)style atCellID:(TSUCellCoord)d
{
  dCopy = d;
  styleCopy = style;
  calcEngine = self->_calcEngine;
  if (calcEngine)
  {
    *&v15.var0 = objc_msgSend_tableUID(self->_tableModel, v5, v6, v7);
    v15.var6._lower = v10;
    v11 = objc_msgSend_precedentsWithCalcEngine_hostOwnerUID_hostCellID_(styleCopy, v10, calcEngine, &v15, &dCopy);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v15, 0, 1);
    v12 = self->_calcEngine;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v14, &v15);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v12, v13, &dCopy, &self->_ownerUID, v11, &v14);
  }
}

- (void)removeFormulasInRange:(TSUCellRect)range
{
  calcEngine = self->_calcEngine;
  v10[0] = j__TSUCellRectToTSCERangeCoordinate(*&range.origin, *&range.size);
  v10[1] = v5;
  if (calcEngine)
  {
    objc_msgSend_formulaCoordsInRange_inOwner_(calcEngine, v5, v10, &self->_ownerUID);
    v8 = v11;
    v9 = v12;
    if (v11 != v12)
    {
      do
      {
        objc_msgSend_removeFormulaAtCellID_(self, v6, *v8++, v7);
      }

      while (v8 != v9);
      v8 = v11;
    }

    if (v8)
    {
      v12 = v8;
      operator delete(v8);
    }
  }
}

- (void)replaceFormulaForConditionalStyle:(id)style atCellID:(TSUCellCoord)d
{
  styleCopy = style;
  objc_msgSend_removeFormulaAtCellID_(self, v6, *&d, v7);
  if (styleCopy)
  {
    objc_msgSend_addFormulaForConditionalStyle_atCellID_(self, v8, styleCopy, *&d);
  }

  objc_msgSend_addCellCoordinate_(self->_cellsToInvalidate, v8, *&d, v9);
}

- (void)changedConditionForCellID:(TSUCellCoord)d
{
  dCopy = d;
  ownerUID = self->_ownerUID;
  objc_msgSend_markCellRefAsDirty_(self->_calcEngine, a2, &dCopy, v3);
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  self->_calcEngine = engine;
  v5 = 3;
  return objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(engine, a2, self->_ownerUID._lower, self->_ownerUID._upper, self, 0, d->_lower, d->_upper, v5);
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  if (objc_msgSend_shouldAbortRecalculation(engine, a2, *&at, engine))
  {
    v11 = options.var0 & 0x5F | 0x20;
    v12 = 0x80;
  }

  else
  {
    v13 = objc_msgSend_cellsPendingWrite(self->_tableModel, v8, v9, v10);
    v16 = objc_msgSend_cellAtCellID_(v13, v14, *&at, v15);

    if (v16)
    {
      v23 = objc_msgSend_copy(v16, v17, v18, v19);
    }

    else
    {
      v23 = objc_msgSend_newCell(self->_tableModel, v17, v18, v19);
      objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self->_tableModel, v24, v23, *&at, 1);
    }

    v44 = 0;
    v26 = objc_msgSend_conditionalStyle(v23, v20, v21, v22);
    if (v26)
    {
      if (objc_msgSend_checkConditionForCellID_withConditionalStyle_withIndex_(self, v25, *&at, v26, &v44))
      {
        v30 = objc_msgSend_conditionalStyleAppliedRule(v23, v27, v28, v29);
        v31 = v30 != v44;
        objc_msgSend_setConditionalStyleAppliedRule_(v23, v32, v44, v33);
      }

      else
      {
        v31 = objc_msgSend_conditionalStyleAppliedRule(v23, v27, v28, v29) != 15;
        objc_msgSend_setConditionalStyleAppliedRule_(v23, v37, 15, v38);
      }

      if (v31)
      {
        v39 = objc_msgSend_cellsPendingWrite(self->_tableModel, v34, v35, v36);
        objc_msgSend_setCell_atCellID_(v39, v40, v23, *&at);

        objc_msgSend_addCellCoordinate_(self->_cellsToInvalidate, v41, *&at, v42);
      }
    }

    v12 = 0;
    v11 = options.var0 & 0x5F;
  }

  return (v12 | v11);
}

+ (id)allCondStyleFormulasForTable:(id)table
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, table, v3);

  return v4;
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end