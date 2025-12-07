@interface TSTSummaryCellVendor
+ (BOOL)canBeVendorStorageUid:(const TSKUIDStructCoord *)uid;
- (TSKUIDStructCoord)p_resolveCellUIDToVendorCellUID:(SEL)d;
- (TSTSummaryCellVendor)initWithContext:(id)context tableInfo:(id)info;
- (TSTSummaryCellVendor)initWithTableInfo:(id)info;
- (id).cxx_construct;
- (id)cellAtCellUID:(const TSKUIDStructCoord *)d;
- (id)cellMapForWildcardCells;
- (id)cellSpecForAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level;
- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys;
- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d;
- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells;
- (void)enumerateCellsUsingBlock:(id)block;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeCellsInColumnUid:(TSKUIDStruct *)uid;
- (void)runChange:(id)change withSummaryCellMap:(id)map migrationHelper:(id)helper;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level;
- (void)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d;
- (void)setTableInfoForGSSP:(id)p;
@end

@implementation TSTSummaryCellVendor

- (TSTSummaryCellVendor)initWithContext:(id)context tableInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = TSTSummaryCellVendor;
  result = [(TSTSummaryCellVendor *)&v6 initWithContext:context];
  if (result)
  {
    result->_tableInfo = info;
  }

  return result;
}

- (TSTSummaryCellVendor)initWithTableInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_context(infoCopy, v5, v6, v7);
  v10 = objc_msgSend_initWithContext_tableInfo_(self, v9, v8, infoCopy);

  return v10;
}

+ (BOOL)canBeVendorStorageUid:(const TSKUIDStructCoord *)uid
{
  row = uid->_row;
  v6[0] = uid->_column;
  v6[1] = row;
  if (sub_2211A90B0(v6))
  {
    return 1;
  }

  if (uid->_column._lower == *"category column")
  {
    return uid->_column._upper == *" column";
  }

  return 0;
}

- (void)setTableInfoForGSSP:(id)p
{
  if (self->_tableInfo != p)
  {
    objc_msgSend_willModify(self, a2, p, v3);
    self->_tableInfo = p;
  }
}

- (void)enumerateCellsUsingBlock:(id)block
{
  blockCopy = block;
  self = (self + 80);
  isa = self->super.super.isa;
  p_delegate = &self->super._delegate;
  v5 = isa;
  if (isa != p_delegate)
  {
    do
    {
      blockCopy[2](blockCopy, v5 + 32, *(v5 + 8));
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != p_delegate);
  }
}

- (void)setAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  upper = d._upper;
  lower = d._lower;
  typeCopy = type;
  v10 = objc_msgSend_tableInfo(self, a2, type, d._lower);
  isAPivotTable = objc_msgSend_isAPivotTable(v10, v11, v12, v13);

  if (isAPivotTable)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTSummaryCellVendor setAggregateType:forColumnUID:atGroupLevel:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 122, 0, "Not implemented for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  memset(v46, 0, sizeof(v46));
  sub_2211A8F64(levelCopy, 0, v46);
  v26 = sub_221432460(&self->_cellUIDMap, v46);
  objc_msgSend_willModify(self, v27, v28, v29);
  if (&self->_cellUIDMap.__tree_.__end_node_ == v26)
  {
    v35 = objc_msgSend_tableInfo(self, v30, v31, v32);
    v34 = objc_msgSend_newCell(v35, v36, v37, v38);

    v47 = v46;
    v39 = sub_221432548(&self->_cellUIDMap, v46, &unk_2217E1C63, &v47);
    objc_storeStrong((v39 + 64), v34);
  }

  else
  {
    v34 = *(v26 + 64);
  }

  v40 = objc_msgSend_cellSpecForAggregateType_forColumnUID_atGroupLevel_(self, v33, typeCopy, lower, upper, levelCopy);
  objc_msgSend_setCellSpec_(v34, v41, v40, v42);

  if (objc_msgSend_isEmpty(v34, v43, v44, v45))
  {
    sub_2214326D4(&self->_cellUIDMap, v46);
  }
}

- (id)cellSpecForAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  typeCopy = type;
  dCopy = d;
  v8 = objc_msgSend_tableInfo(self, a2, type, d._lower);
  isAPivotTable = objc_msgSend_isAPivotTable(v8, v9, v10, v11);

  if (isAPivotTable)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTSummaryCellVendor cellSpecForAggregateType:forColumnUID:atGroupLevel:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 145, 0, "Not implemented for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v56 = xmmword_2217E18D0;
  if (typeCopy)
  {
    v24 = [TSCECategoryRef alloc];
    v28 = objc_msgSend_tableInfo(self, v25, v26, v27);
    v55[0] = objc_msgSend_groupByUid(v28, v29, v30, v31);
    v55[1] = v32;
    v33 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v24, v32, v55, &v56, &dCopy, typeCopy, levelCopy);

    v34 = [TSCEFormulaObject alloc];
    TSCEFormulaCreationMagic::categoryRef(v33, &v54);
    v37 = objc_msgSend_initWithCreator_(v34, v35, &v54, v36);

    v38 = [TSTCellFormulaSpec alloc];
    v42 = objc_msgSend_context(self, v39, v40, v41);
    v46 = objc_msgSend_documentRoot(v42, v43, v44, v45);
    v50 = objc_msgSend_documentLocale(v46, v47, v48, v49);
    v52 = objc_msgSend_initWithFormulaObject_locale_(v38, v51, v37, v50);
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

- (TSKUIDStructCoord)p_resolveCellUIDToVendorCellUID:(SEL)d
{
  v7 = objc_msgSend_groupByForRows(self->_tableInfo, d, a4, v4);
  row = a4->_row;
  v15[0] = a4->_column;
  v15[1] = row;
  if (sub_2211A8FF4(v15) == 255)
  {
    v9 = sub_2211A8DC8(a4->_row._lower, a4->_row._upper);
    v11 = objc_msgSend_groupLevelForGroupUid_(v7, v10, v9, v10);
    if (v11 == 255)
    {
      if (a4->_column._lower != *"category column" || a4->_column._upper != *" column")
      {
        retstr->_column = 0u;
        retstr->_row = 0u;
        goto LABEL_10;
      }
    }

    else if (sub_2211A8E20(a4->_row._lower, a4->_row._upper))
    {
      v12 = sub_2211A8DB0(v11);
      sub_2211A8DF4(v12, v13);
    }

    else
    {
      sub_2211A8DB0(v11);
    }
  }

  TSTMakeCellUID(retstr);
LABEL_10:

  return result;
}

- (void)setCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  v155 = objc_msgSend_tableInfo(self, v6, v7, v8);
  if (objc_msgSend_isAPivotTable(v155, v9, v10, v11))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTSummaryCellVendor setCell:atCellUID:]", v13);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 201, 0, "Setting vendor cell for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v24 = d->_column._lower == *"category column" && d->_column._upper == *" column";
  row = d->_row;
  column = d->_column;
  v158 = row;
  if (!sub_2211A90B0(&column) && !v24)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTSummaryCellVendor setCell:atCellUID:]", v28);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 205, 0, "Setting vendor cell with an invalid cellUID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  if (!cellCopy)
  {
    goto LABEL_32;
  }

  v38 = d->_row;
  column = d->_column;
  v158 = v38;
  if (!sub_2211A9038(&column))
  {
    goto LABEL_20;
  }

  v39 = d->_row;
  column = d->_column;
  v158 = v39;
  v40 = sub_2211A8FF4(&column);
  v44 = objc_msgSend_cellSpec(cellCopy, v41, v42, v43);
  v48 = objc_msgSend_asFormulaSpec(v44, v45, v46, v47);

  v52 = objc_msgSend_categoryAggregateType(v48, v49, v50, v51);
  v57 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(v155, v53, d->_column._lower, d->_column._upper, v40);
  if (v52 == 12)
  {
    v64 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSTSummaryCellVendor setCell:atCellUID:]", v56);
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v66);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v67, v59, v62, 218, 0, "Invalid aggregate type in summary cell vendor - Label");
  }

  else
  {
    if (v52 != 10)
    {
      goto LABEL_18;
    }

    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSTSummaryCellVendor setCell:atCellUID:]", v56);
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v61);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v63, v59, v62, 217, 0, "Invalid aggregate type in summary cell vendor - BodyRows");
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
LABEL_18:
  if (v52 == v57)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (objc_msgSend_interactionType(v48, v54, v55, v56) != 3)
  {
    if (!v24)
    {
      objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v155, v82, 0, d->_column._lower, d->_column._upper, v40);
    }

    goto LABEL_19;
  }

  if ((v52 - 10) <= 2)
  {

    v52 = 0;
    cellCopy = 0;
  }

  objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v155, v82, v52, d->_column._lower, d->_column._upper, v40);

  if (!cellCopy)
  {
LABEL_32:
    cellCopy = 0;
    goto LABEL_33;
  }

LABEL_20:
  if (objc_msgSend_isEmpty(cellCopy, v26, v27, v28))
  {
LABEL_33:
    objc_msgSend_willModify(self, v26, v27, v28);
    sub_2214326D4(&self->_cellUIDMap, d);
    goto LABEL_34;
  }

  if (*&d->_column != 0 && *&d->_row != 0)
  {
    if (!v24 || (v71 = d->_row, column = d->_column, v158 = v71, sub_2211A90B0(&column)) || (objc_msgSend_baseTableModel(v155, v26, v27, v28), v72 = objc_claimAutoreleasedReturnValue(), objc_msgSend_columnRowUIDMap(v72, v73, v74, v75), v76 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend_rowIndexForRowUID_(v76, v77, d->_row._lower, d->_row._upper), v76, v72, v78 != 0x7FFFFFFF))
    {
      objc_msgSend_willModify(self, v26, v27, v28);
      if (objc_msgSend_isEmpty(cellCopy, v79, v80, v81))
      {
        sub_2214326D4(&self->_cellUIDMap, d);
        goto LABEL_34;
      }

      v83 = sub_221432460(&self->_cellUIDMap, d);
      if (&self->_cellUIDMap.__tree_.__end_node_ == v83)
      {
        v90 = objc_msgSend_newCell(v155, v84, v85, v86);
        column._lower = d;
        v91 = sub_221432548(&self->_cellUIDMap, d, &unk_2217E1C63, &column);
        objc_storeStrong((v91 + 64), v90);
      }

      else
      {
        v90 = *(v83 + 64);
      }

      v92 = objc_msgSend_cellSpec(v90, v87, v88, v89);
      v96 = objc_msgSend_asFormulaSpec(v92, v93, v94, v95);

      v100 = objc_msgSend_cellSpec(cellCopy, v97, v98, v99);
      v104 = objc_msgSend_asFormulaSpec(v100, v101, v102, v103);

      if (objc_msgSend_upgradingToSubOwnerUIDs(self, v105, v106, v107))
      {
        if (v104 || !v96)
        {
          goto LABEL_50;
        }

        v111 = objc_msgSend_formulaObject(v96, v108, v109, v110);

        if (!v111)
        {
          v104 = 0;
          goto LABEL_50;
        }

        v112 = [TSTCellFormulaSpec alloc];
        v116 = objc_msgSend_formulaObject(v96, v113, v114, v115);
        v120 = objc_msgSend_context(self, v117, v118, v119);
        v124 = objc_msgSend_documentRoot(v120, v121, v122, v123);
        v128 = objc_msgSend_documentLocale(v124, v125, v126, v127);
        v104 = objc_msgSend_initWithFormulaObject_locale_(v112, v129, v116, v128);
      }

      else
      {
        if (!v96)
        {
          goto LABEL_50;
        }

        v130 = objc_msgSend_formulaObject(v96, v108, v109, v110);

        if (!v130)
        {
          goto LABEL_50;
        }

        v131 = [TSTCellFormulaSpec alloc];
        v116 = objc_msgSend_formulaObject(v96, v132, v133, v134);
        v120 = objc_msgSend_context(self, v135, v136, v137);
        v124 = objc_msgSend_documentRoot(v120, v138, v139, v140);
        v128 = objc_msgSend_documentLocale(v124, v141, v142, v143);
        v145 = objc_msgSend_initWithFormulaObject_locale_(v131, v144, v116, v128);

        v104 = v145;
      }

LABEL_50:
      objc_msgSend_copyToCell_(cellCopy, v108, v90, v110);
      objc_msgSend_setCellSpec_(v90, v146, v104, v147);
      objc_msgSend_clearValue(v90, v148, v149, v150);
      objc_msgSend_setCurrentFormat_isExplicit_(v90, v151, 0, 0);
      objc_msgSend_validateAndRepair(v90, v152, v153, v154);
    }
  }

LABEL_34:
}

- (id)cellAtCellUID:(const TSKUIDStructCoord *)d
{
  v6 = objc_msgSend_tableInfo(self, a2, d, v3);
  v10 = objc_msgSend_newCell(v6, v7, v8, v9);

  if (objc_msgSend_getCell_atCellUID_(self, v11, v10, d))
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

- (int)getCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d
{
  cellCopy = cell;
  objc_msgSend_clear(cellCopy, v7, v8, v9);
  v13 = objc_msgSend_tableInfo(self, v10, v11, v12);
  if (objc_msgSend_isAPivotTable(v13, v14, v15, v16))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTSummaryCellVendor getCell:atCellUID:]", v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 312, 0, "Getting vendor cell for a pivot table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  if (cellCopy)
  {
    v80 = 0;
    v81 = 0;
    objc_msgSend_p_resolveCellUIDToVendorCellUID_(self, v17, d, v18);
    column = v80;
    v79 = v81;
    v28 = sub_2211A90B0(&column);
    lower = v80._lower;
    if (!v28 && v80 != *"category column")
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTSummaryCellVendor getCell:atCellUID:]", v30);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 321, 0, "Getting vendor cell with an invalid cellUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
      lower = v80._lower;
    }

    if (!(lower | v80._upper) || v81 == 0uLL || (p_cellUIDMap = &self->_cellUIDMap, v42 = sub_221432460(p_cellUIDMap, &v80), &p_cellUIDMap->__tree_.__end_node_ == v42))
    {
      v67 = 2;
    }

    else
    {
      objc_msgSend_copyToCell_(*(v42 + 64), v43, cellCopy, v44);
      row = d->_row;
      column = d->_column;
      v79 = row;
      if (!sub_2211A9038(&column) && objc_msgSend_hasFormula(cellCopy, v46, v47, v48))
      {
        v52 = objc_msgSend_formulaObject(cellCopy, v49, v50, v51);
        column._lower = objc_msgSend_groupByUid(v13, v53, v54, v55);
        column._upper = v56;
        v57 = objc_msgSend_copyByRewritingGroupUid_groupByUID_(v52, v56, &d->_row, &column);

        v58 = [TSTCellFormulaSpec alloc];
        v62 = objc_msgSend_locale(cellCopy, v59, v60, v61);
        v64 = objc_msgSend_initWithFormulaObject_locale_(v58, v63, v57, v62);

        objc_msgSend_setCellSpec_(cellCopy, v65, v64, v66);
      }

      v67 = 0;
    }
  }

  else
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTSummaryCellVendor getCell:atCellUID:]", v18);
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v71);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v73, v69, v72, 315, 0, "cell should never be nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
    v67 = 1;
  }

  return v67;
}

- (void)removeCellsInColumnUid:(TSKUIDStruct *)uid
{
  v5 = objc_msgSend_tableInfo(self, a2, uid, v3);
  isAPivotTable = objc_msgSend_isAPivotTable(v5, v6, v7, v8);

  if (isAPivotTable)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTSummaryCellVendor removeCellsInColumnUid:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 350, 0, "Not implemented for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  objc_msgSend_willModify(self, v10, v11, v12);
  v22 = 1;
  do
  {
    memset(v25, 0, sizeof(v25));
    v23 = v22;
    sub_2211A8F64(v22, 0, v25);
    sub_2214326D4(&self->_cellUIDMap, v25);
    memset(v24, 0, sizeof(v24));
    sub_2211A8F64(v22, 1, v24);
    sub_2214326D4(&self->_cellUIDMap, v24);
    ++v22;
  }

  while (v23 < 5);
}

- (id)cellMapForWildcardCells
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  isAPivotTable = objc_msgSend_isAPivotTable(v5, v6, v7, v8);

  if (isAPivotTable)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTSummaryCellVendor cellMapForWildcardCells]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 368, 0, "Not implemented for pivot tables.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_context(self, v10, v11, v12);
  v25 = objc_msgSend_uuidBasedCellMapWithContext_(TSTCellMap, v23, v22, v24);

  p_cellUIDMap = &self->_cellUIDMap;
  begin_node = p_cellUIDMap->__tree_.__begin_node_;
  p_end_node = &p_cellUIDMap->__tree_.__end_node_;
  v28 = begin_node;
  if (begin_node != p_end_node)
  {
    do
    {
      v30 = *&v28[6].__left_;
      v36[0] = *&v28[4].__left_;
      v36[1] = v30;
      if (sub_2211A8FF4(v36) != 255)
      {
        objc_msgSend_addCell_andCellUID_(v25, v31, v28[8].__left_, &v28[4]);
      }

      left = v28[1].__left_;
      if (left)
      {
        do
        {
          v33 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v33 = v28[2].__left_;
          v34 = v33->__left_ == v28;
          v28 = v33;
        }

        while (!v34);
      }

      v28 = v33;
    }

    while (v33 != p_end_node);
  }

  return v25;
}

- (void)runChange:(id)change withSummaryCellMap:(id)map migrationHelper:(id)helper
{
  v5 = objc_msgSend_tableInfo(self, a2, change, map, helper);
  isAPivotTable = objc_msgSend_isAPivotTable(v5, v6, v7, v8);

  if (isAPivotTable)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTSummaryCellVendor runChange:withSummaryCellMap:migrationHelper:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSummaryCellVendor.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 379, 0, "Not implemented for pivot tables.");

    v21 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v21, v18, v19, v20);
  }
}

- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys
{
  keysCopy = keys;
  objc_msgSend_setHasCustomFormatsToPaste_(self, v5, 0, v6);
  if (!keysCopy)
  {
    keysCopy = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9);
  }

  objc_msgSend_willModify(self, v7, v8, v9);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2214317C0;
  v15[3] = &unk_278465278;
  v10 = keysCopy;
  v16 = v10;
  selfCopy = self;
  objc_msgSend_enumerateCellsUsingBlock_(self, v11, v15, v12);
  v13 = v10;

  return v10;
}

- (void)addPasteboardCustomFormatsToDocumentAndUpdateCells
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3);
  if (objc_msgSend_hasCustomFormatsToPaste(self, v6, v7, v8))
  {
    v12 = objc_msgSend_documentRoot(self, v9, v10, v11);
    v16 = objc_msgSend_customFormatList(v12, v13, v14, v15);

    objc_msgSend_willModify(self, v17, v18, v19);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_221431B30;
    v26 = &unk_278465278;
    v27 = v5;
    v20 = v16;
    v28 = v20;
    objc_msgSend_enumerateCellsUsingBlock_(self, v21, &v23, v22);
  }

  objc_msgSend_setHasCustomFormatsToPaste_(self, v9, 0, v11, v23, v24, v25, v26);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[302], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v7, v8, v9) <= 0x400000000000BLL)
  {
    objc_msgSend_willModifyForUpgrade(self, v10, v11, v12);
  }

  v13 = *(archive + 6);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_221432070;
  v39[3] = &unk_278462738;
  v39[4] = self;
  v14 = unarchiverCopy;
  v16 = objc_opt_class();
  if (v13)
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v15, v13, v16, 0, v39);
  }

  else
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v15, MEMORY[0x277D80A18], v16, 0, v39);
  }

  v18 = *(archive + 5);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(archive + 8);
  if (v20)
  {
    v21 = 8 * v20;
    v22 = MEMORY[0x277D809E0];
    do
    {
      v23 = *v19;
      memset(v38, 0, sizeof(v38));
      if (v23[4])
      {
        v24 = v23[4];
      }

      else
      {
        v24 = v22;
      }

      TSKUIDStruct::loadFromMessage(v24, v17);
      if (v23[3])
      {
        v26 = v23[3];
      }

      else
      {
        v26 = v22;
      }

      TSKUIDStruct::loadFromMessage(v26, v25);
      TSTMakeCellUID(v38);
      v27 = [TSTCell alloc];
      v31 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v28, v29, v30);
      v34 = objc_msgSend_initWithLocale_(v27, v32, v31, v33);

      if (v23[5])
      {
        v35 = v23[5];
      }

      else
      {
        v35 = &TST::_Cell_default_instance_;
      }

      sub_221123AF0(v35, v34, v14);
      v40 = v38;
      v36 = sub_221432548(&self->_cellUIDMap, v38, &unk_2217E1C63, &v40);
      v37 = *(v36 + 64);
      *(v36 + 64) = v34;

      ++v19;
      v21 -= 8;
    }

    while (v21);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v5, 0x300020000000ALL, v6);
  v10 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v7, sub_221432758, off_2812E4498[302]);

  objc_msgSend_saveToArchive_archiver_(self, v9, v8, v10);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v10 = objc_msgSend_tableInfo(self, v6, v7, v8);
  *(archive + 4) |= 1u;
  v11 = *(archive + 6);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x223DA0390](v12);
    *(archive + 6) = v11;
  }

  objc_msgSend_setWeakReference_message_(archiverCopy, v9, v10, v11);

  p_end_node = &self->_cellUIDMap.__tree_.__end_node_;
  begin_node = self->_cellUIDMap.__tree_.__begin_node_;
  if (begin_node != &self->_cellUIDMap.__tree_.__end_node_)
  {
    while ((objc_msgSend_isEmpty(begin_node[8].__left_, v13, v14, v15) & 1) != 0)
    {
LABEL_27:
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v32 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v32 = begin_node[2].__left_;
          v33 = v32->__left_ == begin_node;
          begin_node = v32;
        }

        while (!v33);
      }

      begin_node = v32;
      if (v32 == p_end_node)
      {
        goto LABEL_33;
      }
    }

    v18 = *(archive + 5);
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = *(archive + 8);
    v20 = *v18;
    if (v19 < *v18)
    {
      *(archive + 8) = v19 + 1;
      v21 = *&v18[2 * v19 + 2];
LABEL_14:
      *(v21 + 16) |= 1u;
      v24 = *(v21 + 24);
      if (!v24)
      {
        v25 = *(v21 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x223DA0360](v25);
        *(v21 + 24) = v24;
      }

      TSKUIDStruct::saveToMessage(&begin_node[6], v24);
      *(v21 + 16) |= 2u;
      v26 = *(v21 + 32);
      if (!v26)
      {
        v27 = *(v21 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x223DA0360](v27);
        *(v21 + 32) = v26;
      }

      TSKUIDStruct::saveToMessage(&begin_node[4], v26);
      v28 = begin_node[8].__left_;
      *(v21 + 16) |= 4u;
      v29 = *(v21 + 40);
      if (!v29)
      {
        v30 = *(v21 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v30);
        *(v21 + 40) = v29;
      }

      sub_2211243E4(v28, v29, archiverCopy);
      goto LABEL_27;
    }

    if (v20 == *(archive + 9))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v18 = *(archive + 5);
      v20 = *v18;
    }

    *v18 = v20 + 1;
    v21 = google::protobuf::Arena::CreateMaybeMessage<TST::SummaryCellVendorArchive_SummaryCellEntry>(*(archive + 3));
    v22 = *(archive + 8);
    v23 = *(archive + 5) + 8 * v22;
    *(archive + 8) = v22 + 1;
    *(v23 + 8) = v21;
    goto LABEL_14;
  }

LABEL_33:
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 11) = 0;
  *(self + 10) = self + 88;
  return self;
}

@end