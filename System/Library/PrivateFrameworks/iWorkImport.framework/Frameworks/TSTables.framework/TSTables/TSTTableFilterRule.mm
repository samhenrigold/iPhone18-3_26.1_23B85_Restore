@interface TSTTableFilterRule
+ (id)getPredArgDataFromCell:(id)cell;
+ (id)ruleWhereValuesInTable:(id)table inBaseColumn:(TSUModelColumnIndex)column matchCell:(id)cell;
+ (id)ruleWithFormulaPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesCell:(id)cell;
- (BOOL)matchesRow:(unsigned int)row withFormulaTableUID:(const TSKUIDStruct *)d withCalculationEngine:(id)engine;
- (BOOL)needsFormulaRewriteForImport;
- (TSTTableFilterRule)initWithFormulaPredicate:(id)predicate;
- (TSUModelColumnIndex)baseColumnIndexForFilterRuleInTableModel:(id)model;
- (id)copyByRewritingFromTableModel:(id)model toTableModel:(id)tableModel;
- (id)copyByRewritingToGeometricFormWithTableInfo:(id)info containsBadRef:(BOOL *)ref;
- (id)copyByRewritingToUidFormWithTableInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromArchive:(const void *)archive;
- (id)initFromPrePivotArchive:(const void *)archive;
- (id)initRuleWhereValuesInTable:(id)table andDataList:(id)list inBaseColumn:(TSUModelColumnIndex)column matchCell:(id)cell;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)encodeToPrePivotArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTTableFilterRule

+ (id)ruleWithFormulaPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithFormulaPredicate_(v4, v5, predicateCopy, v6);

  return v7;
}

- (TSTTableFilterRule)initWithFormulaPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = TSTTableFilterRule;
  v6 = [(TSTTableFilterRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, predicate);
  }

  return v7;
}

+ (id)getPredArgDataFromCell:(id)cell
{
  cellCopy = cell;
  if (objc_msgSend_valueType(cellCopy, v4, v5, v6) == 8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSTTableFilterRule getPredArgDataFromCell:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterRule.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 51, 0, "Expected a cell without an error to make a quick filter rule.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v20 = objc_msgSend_getPredArgDataFromCell_(TSTFormulaPredArgData, v7, cellCopy, v8);
  if (!v20)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "+[TSTTableFilterRule getPredArgDataFromCell:]", v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterRule.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 53, 0, "invalid nil value for '%{public}s'", "predArgData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  return v20;
}

- (id)initRuleWhereValuesInTable:(id)table andDataList:(id)list inBaseColumn:(TSUModelColumnIndex)column matchCell:(id)cell
{
  v38[1] = *MEMORY[0x277D85DE8];
  tableCopy = table;
  listCopy = list;
  cellCopy = cell;
  v37.receiver = self;
  v37.super_class = TSTTableFilterRule;
  v16 = [(TSTTableFilterRule *)&v37 init];
  if (v16)
  {
    v17 = objc_msgSend_filteringTableUID(tableCopy, v13, v14, v15);
    v19 = v18;
    v24 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v18, v20, v21);
    if (!listCopy)
    {
      v25 = objc_msgSend_getPredArgDataFromCell_(TSTTableFilterRule, v22, cellCopy, v23);
      v38[0] = v25;
      listCopy = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v38, 1);
    }

    v27 = [TSTFormulaPredArg alloc];
    v30 = objc_msgSend_initWithDataList_(v27, v28, listCopy, v29);
    v31 = [TSTFormulaPredicate alloc];
    v36[0] = column._column << 32;
    v36[1] = v17;
    v36[2] = v19;
    v33 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(v31, v32, 54, v30, 0, 0, 0, v36, v24);
    predicate = v16->_predicate;
    v16->_predicate = v33;
  }

  return v16;
}

+ (id)ruleWhereValuesInTable:(id)table inBaseColumn:(TSUModelColumnIndex)column matchCell:(id)cell
{
  tableCopy = table;
  cellCopy = cell;
  v9 = [TSTTableFilterRule alloc];
  inited = objc_msgSend_initRuleWhereValuesInTable_andDataList_inBaseColumn_matchCell_(v9, v10, tableCopy, 0, column._column, cellCopy);

  return inited;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_copyWithZone_(self->_predicate, a2, zone, v3);
  v8 = objc_msgSend_allocWithZone_(TSTTableFilterRule, v6, zone, v7);
  v11 = objc_msgSend_initWithFormulaPredicate_(v8, v9, v5, v10);

  return v11;
}

- (id)copyByRewritingToUidFormWithTableInfo:(id)info
{
  v4 = objc_msgSend_copyToUidFormForHiddenRowsWithTableInfo_(self->_predicate, a2, info, v3);
  v5 = [TSTTableFilterRule alloc];
  v8 = objc_msgSend_initWithFormulaPredicate_(v5, v6, v4, v7);

  return v8;
}

- (id)copyByRewritingToGeometricFormWithTableInfo:(id)info containsBadRef:(BOOL *)ref
{
  v4 = objc_msgSend_copyToGeometricFormForHiddenRowsWithTableInfo_containsBadRef_(self->_predicate, a2, info, ref);
  v5 = [TSTTableFilterRule alloc];
  v8 = objc_msgSend_initWithFormulaPredicate_(v5, v6, v4, v7);

  return v8;
}

- (id)copyByRewritingFromTableModel:(id)model toTableModel:(id)tableModel
{
  modelCopy = model;
  tableModelCopy = tableModel;
  v10 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(self, v8, modelCopy, v9);
  v14 = objc_msgSend_columnRowUIDMap(modelCopy, v11, v12, v13);
  v17 = objc_msgSend_columnUIDForColumnIndex_(v14, v15, v10, v16);
  v19 = v18;

  if (v17 | v19 && (objc_msgSend_columnRowUIDMap(tableModelCopy, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend_columnIndexForColumnUID_(v23, v24, v17, v19), v23, v25 != 0x7FFF))
  {
    v29 = objc_msgSend_copyByOffsettingRelativeReferencesWithOffset_(self->_predicate, v26, v25 - v10, v27);
    v30 = [TSTTableFilterRule alloc];
    v28 = objc_msgSend_initWithFormulaPredicate_(v30, v31, v29, v32);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    v9 = objc_msgSend_predicate(self, v5, v6, v7);
    v13 = objc_msgSend_predicate(v8, v10, v11, v12);
    isEqual = objc_msgSend_isEqual_(v9, v14, v13, v15);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)needsFormulaRewriteForImport
{
  if (self->_doesNotNeedFormulaRewriteForImport)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = objc_msgSend_predicateType(self->_predicate, a2, v2, v3);
    v4 = 0x22E0u >> v5;
    if (v5 > 0xD)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (BOOL)matchesRow:(unsigned int)row withFormulaTableUID:(const TSKUIDStruct *)d withCalculationEngine:(id)engine
{
  v6 = *&row;
  engineCopy = engine;
  predicate = self->_predicate;
  v12 = objc_msgSend_filterFormulaCoordinateForColumnOrRow_(TSTHiddenStates, v10, v6, v11);
  LOBYTE(d) = objc_msgSend_evaluateAtCellID_onOwnerUID_calcEngine_(predicate, v13, v12, d, engineCopy);

  return d;
}

- (TSUModelColumnIndex)baseColumnIndexForFilterRuleInTableModel:(id)model
{
  modelCopy = model;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 1000;
  v8 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v5, v6, v7);
  v15 = objc_msgSend_calcEngine(modelCopy, v9, v10, v11);
  if (!v15)
  {
    v16 = objc_msgSend_tableInfo(modelCopy, v12, v13, v14);
    v20 = objc_msgSend_documentRoot(v16, v17, v18, v19);
    v15 = objc_msgSend_calculationEngine(v20, v21, v22, v23);
  }

  v24 = objc_msgSend_emptyReferenceSetWrapper(v15, v12, v13, v14);
  v28 = v24;
  if (v15 && v24)
  {
    v29 = objc_msgSend_formula(self->_predicate, v25, v26, v27);
    v33 = objc_msgSend_referenceSet(v28, v30, v31, v32);
    v50 = v8 & 0xFFFF00000000;
    v51 = objc_msgSend_tableUID(modelCopy, v34, v35, v36);
    v52 = v37;
    objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(v29, v37, v33, v15, &v50, 1, 0);
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_22143354C;
  v46[3] = &unk_2784652A0;
  v38 = modelCopy;
  v47 = v38;
  v48 = &v54;
  v49 = &v50;
  objc_msgSend_foreachCellRef_(v28, v39, v46, v40);
  if ((v51[3] & 1) == 0)
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_2214335CC;
    v45[3] = &unk_2784652C8;
    v45[4] = &v54;
    objc_msgSend_foreachSpanningRangeRef_(v28, v41, v45, v42);
  }

  v43._column = *(v55 + 12);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

  return v43;
}

- (BOOL)matchesCell:(id)cell
{
  cellCopy = cell;
  if ((objc_msgSend_predicateType(self->_predicate, v5, v6, v7) - 55) >= 0xFEu)
  {
    if (objc_msgSend_predArg1Type(self->_predicate, v8, v9, v10) != 11)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableFilterRule matchesCell:]", v13);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableFilterRule.mm", v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 231, 0, "Unexpected predicate argument type!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    }

    v23 = objc_msgSend_getPredArgDataFromCell_(TSTFormulaPredArgData, v12, cellCopy, v13);
    v27 = objc_msgSend_dataList1(self->_predicate, v24, v25, v26);
    v11 = objc_msgSend_containsObject_(v27, v28, v23, v29);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeToPrePivotArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  predicate = self->_predicate;
  *(archive + 4) |= 1u;
  v8 = *(archive + 3);
  v10 = archiverCopy;
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicatePrePivotArchive>(v9, archiverCopy);
    *(archive + 3) = v8;
    archiverCopy = v10;
  }

  objc_msgSend_encodeToPrePivotArchive_archiver_(predicate, archiverCopy, v8, archiverCopy);
  *(archive + 4) |= 2u;
  *(archive + 32) = 0;
}

- (id)initFromPrePivotArchive:(const void *)archive
{
  v12.receiver = self;
  v12.super_class = TSTTableFilterRule;
  v4 = [(TSTTableFilterRule *)&v12 init];
  if (v4 && ((v5 = [TSTFormulaPredicate alloc], *(archive + 3)) ? (v8 = objc_msgSend_initFromPrePivotArchive_(v5, v6, *(archive + 3), v7)) : (v8 = objc_msgSend_initFromPrePivotArchive_(v5, v6, TST::_FormulaPredicatePrePivotArchive_default_instance_, v7)), predicate = v4->_predicate, v4->_predicate = v8, predicate, !v4->_predicate))
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  predicate = self->_predicate;
  *(archive + 4) |= 1u;
  v8 = *(archive + 3);
  v10 = archiverCopy;
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicateArchive>(v9, archiverCopy);
    *(archive + 3) = v8;
    archiverCopy = v10;
  }

  objc_msgSend_encodeToArchive_archiver_(predicate, archiverCopy, v8, archiverCopy);
}

- (id)initFromArchive:(const void *)archive
{
  v12.receiver = self;
  v12.super_class = TSTTableFilterRule;
  v4 = [(TSTTableFilterRule *)&v12 init];
  if (v4 && ((v5 = [TSTFormulaPredicate alloc], *(archive + 3)) ? (v8 = objc_msgSend_initFromArchive_(v5, v6, *(archive + 3), v7)) : (v8 = objc_msgSend_initFromArchive_(v5, v6, TST::_FormulaPredicateArchive_default_instance_, v7)), predicate = v4->_predicate, v4->_predicate = v8, predicate, !v4->_predicate))
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

@end