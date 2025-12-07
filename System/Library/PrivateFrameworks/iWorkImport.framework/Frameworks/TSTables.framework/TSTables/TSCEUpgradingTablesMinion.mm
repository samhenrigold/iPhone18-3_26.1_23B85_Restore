@interface TSCEUpgradingTablesMinion
- (TSCEUpgradingTablesMinion)initWithCalcEngine:(id)engine;
- (void)flushAllChanges;
- (void)markCellRefAsDirty:(const TSCECellRef *)dirty;
- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty;
- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options;
- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options;
@end

@implementation TSCEUpgradingTablesMinion

- (TSCEUpgradingTablesMinion)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v11.receiver = self;
  v11.super_class = TSCEUpgradingTablesMinion;
  v5 = [(TSCEUpgradingTablesMinion *)&v11 init];
  if (v5)
  {
    v6 = [TSCEFormulasToSet alloc];
    v8 = objc_msgSend_initWithCalcEngine_forMinion_options_(v6, v7, engineCopy, v5, 2);
    formulasToSet = v5->_formulasToSet;
    v5->_formulasToSet = v8;
  }

  return v5;
}

- (void)replaceFormula:(id)formula atCellCoord:(const TSUCellCoord *)coord inOwner:(const TSKUIDStruct *)owner replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  formulaCopy = formula;
  formulasToSet = self->_formulasToSet;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v13, options);
  objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(formulasToSet, v12, formulaCopy, coord, owner, &v13);
}

- (void)replaceFormulaAt:(const TSUCellCoord *)at inOwner:(const TSKUIDStruct *)owner precedents:(id)precedents replaceOptions:(TSCEReplaceFormulaOptions *)options
{
  precedentsCopy = precedents;
  formulasToSet = self->_formulasToSet;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v13, options);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(formulasToSet, v12, at, owner, precedentsCopy, &v13);
}

- (void)markCellRefAsDirty:(const TSCECellRef *)dirty
{
  v7 = objc_msgSend_calcEngine(self->_formulasToSet, a2, dirty, v3);
  objc_msgSend_markCellRefAsDirty_(v7, v5, dirty, v6);
}

- (void)markRangeRefAsDirty:(const TSCERangeRef *)dirty
{
  v7 = objc_msgSend_calcEngine(self->_formulasToSet, a2, dirty, v3);
  objc_msgSend_markRangeRefAsDirty_(v7, v5, dirty, v6);
}

- (void)flushAllChanges
{
  v29 = objc_msgSend_calcEngine(self->_formulasToSet, a2, v2, v3);
  objc_msgSend_beginSuppressingWillModifyCalls(v29, v5, v6, v7);
  objc_msgSend_beginBatchingGroupCellDirtying(v29, v8, v9, v10);
  objc_msgSend_flushRemoveFormulas(self->_formulasToSet, v11, v12, v13);
  objc_msgSend_flushResetFormulas(self->_formulasToSet, v14, v15, v16);
  objc_msgSend_flushReplaceFormulas(self->_formulasToSet, v17, v18, v19);
  objc_msgSend_willClose(self->_formulasToSet, v20, v21, v22);
  objc_msgSend_endBatchingGroupCellDirtying(v29, v23, v24, v25);
  objc_msgSend_endSuppressingWillModifyCalls(v29, v26, v27, v28);
}

@end