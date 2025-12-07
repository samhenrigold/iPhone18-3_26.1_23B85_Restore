@interface TSTCategoryStoreIterator
- (BOOL)checkCell:(id)cell searchFlags:(unint64_t)flags;
- (BOOL)getNextCellData:(id *)data;
- (TSKUIDStruct)uuid;
- (TSTCategoryStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask;
- (TSTColumnRowUIDMap)baseMap;
- (TSTColumnRowUIDMap)summaryMap;
- (TSTColumnRowUIDMap)viewMap;
- (TSTGroupBy)groupBy;
- (TSTSummaryCellVendor)summaryCellVendor;
- (TSTTableDataStore)baseDataStore;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
- (_NSRange)baseTileRange;
- (id).cxx_construct;
- (id)nextCellData;
- (id)tempSummaryCell;
- (void)dealloc;
- (void)iterateCellsUsingBlock:(id)block;
- (void)terminate;
- (void)updateCellData:(id)data;
- (void)updateFormulaForCellData:(id)data;
@end

@implementation TSTCategoryStoreIterator

- (TSTCategoryStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask
{
  infoCopy = info;
  regionCopy = region;
  v157.receiver = self;
  v157.super_class = TSTCategoryStoreIterator;
  v12 = [(TSTCategoryStoreIterator *)&v157 init];
  p_isa = &v12->super.isa;
  v14 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_info, info);
    v18 = objc_msgSend_groupBy(v14->_info, v15, v16, v17);
    objc_storeWeak(p_isa + 12, v18);

    objc_opt_class();
    v22 = objc_msgSend_translator(p_isa[9], v19, v20, v21);
    v23 = TSUCheckedDynamicCast();
    translator = v14->_translator;
    v14->_translator = v23;

    v28 = objc_msgSend_baseTableModel(v14->_info, v25, v26, v27);
    v32 = objc_msgSend_dataStore(v28, v29, v30, v31);

    if (!v32)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTCategoryStoreIterator initWithInfo:region:flags:searchMask:]", v35);
      v38 = infoCopy;
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 115, 0, "invalid nil value for '%{public}s'", "_info.baseTableModel.dataStore");

      infoCopy = v38;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
    }

    v46 = objc_msgSend_summaryModel(p_isa[9], v33, v34, v35);
    v50 = objc_msgSend_dataStore(v46, v47, v48, v49);

    if (!v50)
    {
      v54 = MEMORY[0x277D81150];
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSTCategoryStoreIterator initWithInfo:region:flags:searchMask:]", v53);
      v56 = infoCopy;
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v58);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v60, v55, v59, 116, 0, "invalid nil value for '%{public}s'", "_info.summaryModel.dataStore");

      infoCopy = v56;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
    }

    v64 = objc_msgSend_baseTableModel(p_isa[9], v51, v52, v53);
    v68 = objc_msgSend_dataStore(v64, v65, v66, v67);
    objc_storeWeak(p_isa + 14, v68);

    v72 = objc_msgSend_baseTableModel(v14->_info, v69, v70, v71);
    v76 = objc_msgSend_columnRowUIDMap(v72, v73, v74, v75);
    objc_storeWeak(p_isa + 16, v76);

    v80 = objc_msgSend_columnRowUIDMap(v14->_info, v77, v78, v79);
    objc_storeWeak(p_isa + 17, v80);

    v84 = objc_msgSend_summaryMap(v14->_translator, v81, v82, v83);
    objc_storeWeak(p_isa + 19, v84);

    v88 = objc_msgSend_summaryModel(v14->_info, v85, v86, v87);
    v92 = objc_msgSend_summaryCellVendor(v88, v89, v90, v91);
    objc_storeWeak(p_isa + 18, v92);

    v96 = objc_msgSend_range(v14->_info, v93, v94, v95);
    v98 = objc_msgSend_regionByIntersectingRange_(regionCopy, v97, v96, v97);
    region = v14->_region;
    v14->_region = v98;

    WeakRetained = objc_loadWeakRetained(p_isa + 14);
    v103 = objc_msgSend_cacheWithDataStore_(TSTTableDataListCache, v101, WeakRetained, v102);
    baseDataListCache = v14->_baseDataListCache;
    v14->_baseDataListCache = v103;

    v14->_columnOrderReversed = (flags & 4) != 0;
    v108 = v14->_region;
    if ((flags & 4) != 0)
    {
      v109 = objc_msgSend_newRightToLeftIterator(v108, v105, v106, v107);
    }

    else
    {
      v109 = objc_msgSend_newIterator(v108, v105, v106, v107);
    }

    regionIterator = v14->_regionIterator;
    v14->_regionIterator = v109;

    v114 = flags & 0xFFFFFFFFFFFFFFFBLL;
    if ((flags & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      v115 = MEMORY[0x277D81150];
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "[TSTCategoryStoreIterator initWithInfo:region:flags:searchMask:]", v113);
      v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v118);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v120, v116, v119, 130, 0, "flags remain 0x%lx, flags should all be consumed by this point ", v114);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v121, v122, v123);
    }

    if (mask == 66058240)
    {
      maskCopy = 0;
    }

    else
    {
      maskCopy = mask;
    }

    v14->_searchMask = maskCopy;
    v125 = mask & 0xFFFFFFFFFC1007FFLL;
    if ((mask & 0xFFFFFFFFFC1007FFLL) != 0)
    {
      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "[TSTCategoryStoreIterator initWithInfo:region:flags:searchMask:]", v113);
      v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v129);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v131, v127, v130, 134, 0, "searchMask remain 0x%x, should be consumed by this point", v125);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v132, v133, v134);
    }

    CellID = objc_msgSend_firstCellID(v14->_region, v111, v112, v113);
    v136 = MEMORY[0x277D81490];
    v14->_curCellID = CellID;
    v14->_baseTileRange = *v136;
    *&v14->_curRowIndex = 0x8000000080000000;
    v14->_categoryColumnIndex = objc_msgSend_categoryColumnIndex(v14->_info, v137, v138, v139);
    v143 = objc_msgSend_newCell(v14->_info, v140, v141, v142);
    cell = v14->_cell;
    v14->_cell = v143;

    v145 = objc_alloc_init(TSTMutableCellIteratorData);
    cellData = v14->_cellData;
    v14->_cellData = v145;

    v150 = objc_msgSend_intersectingColumnsIndexSet(v14->_region, v147, v148, v149);
    v155[0] = MEMORY[0x277D85DD0];
    v155[1] = 3221225472;
    v155[2] = sub_22142210C;
    v155[3] = &unk_27845E958;
    v156 = v14;
    objc_msgSend_enumerateIndexesUsingBlock_(v150, v151, v155, v152);
  }

  return v14;
}

- (void)dealloc
{
  if (!self->_terminated)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryStoreIterator dealloc]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 167, 0, "iteration should be terminated");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  v13.receiver = self;
  v13.super_class = TSTCategoryStoreIterator;
  [(TSTCategoryStoreIterator *)&v13 dealloc];
}

- (id)tempSummaryCell
{
  tempSummaryCell = self->_tempSummaryCell;
  if (tempSummaryCell)
  {
    objc_msgSend_clear(tempSummaryCell, a2, v2, v3);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_summaryCellVendor);
    v10 = objc_msgSend_tableInfo(WeakRetained, v7, v8, v9);
    v14 = objc_msgSend_newCell(v10, v11, v12, v13);
    v15 = self->_tempSummaryCell;
    self->_tempSummaryCell = v14;
  }

  v16 = self->_tempSummaryCell;

  return v16;
}

- (BOOL)checkCell:(id)cell searchFlags:(unint64_t)flags
{
  cellCopy = cell;
  v9 = cellCopy;
  v10 = cellCopy && (!flags || (flags & 0x420000) != 0 && (objc_msgSend_hasFormula(cellCopy, v6, v7, v8) & 1) != 0 || (flags & 0x800) != 0 && (objc_msgSend_hasCellStyle(v9, v6, v7, v8) & 1) != 0 || (flags & 0x200000) != 0 && (objc_msgSend_hasTextStyle(v9, v6, v7, v8) & 1) != 0 || (flags & 0x8000) != 0 && (objc_msgSend_hasAnyFormats(v9, v6, v7, v8) & 1) != 0 || (flags & 0x4000) != 0 && (objc_msgSend_hasAnyCustomFormat(v9, v6, v7, v8) & 1) != 0);

  return v10;
}

- (void)updateCellData:(id)data
{
  v6 = objc_msgSend_cellID(data, a2, data, v3);
  if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCategoryStoreIterator updateCellData:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 202, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  objc_msgSend_clear(self->_cell, v7, v8, v9);
  v22 = objc_msgSend_cellID(data, v19, v20, v21);
  curCellID = self->_curCellID;
  if (v22 != curCellID || ((curCellID ^ v22) & 0x101FFFF00000000) != 0)
  {
    v26 = objc_msgSend_cellID(data, v23, v24, curCellID);
    row = self->_curCellID.row;
    if (row <= v26 && (row != v26 || self->_curCellID.column <= WORD2(v26)))
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTCategoryStoreIterator updateCellData:]", v28);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v33);
      objc_msgSend_cellID(data, v35, v36, v37);
      v38 = NSStringFromTSUCellCoord();
      v39 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v40, v31, v34, 231, 0, "cellID %@ should be before cursor cellID %@", v38, v39);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
    }

    goto LABEL_14;
  }

  if (self->_isSummaryRow || self->_isLabelRow || (v44 = HIDWORD(curCellID), self->_categoryColumnIndex == WORD2(curCellID)))
  {
    objc_msgSend_getCell_atCellID_(self->_translator, v23, self->_cell, curCellID);
LABEL_14:
    cell = self->_cell;

    objc_msgSend_setCell_(data, v27, cell, v28);
    return;
  }

  if (!self->_baseTile)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTCategoryStoreIterator updateCellData:]", curCellID);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 212, 0, "invalid nil value for '%{public}s'", "_baseTile");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
  }

  if (!self->_baseRow)
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTCategoryStoreIterator updateCellData:]", curCellID);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v60, v56, v59, 213, 0, "invalid nil value for '%{public}s'", "_baseRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
  }

  v111 = v44;
  if (!sub_2210C3024(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v111))
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSTCategoryStoreIterator updateCellData:]", v65);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v71, v67, v70, 214, 0, "incomplete map.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74);
  }

  v110 = v44;
  v112 = &v110;
  v75 = sub_22142400C(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v110, &unk_2217E1C28, &v112);
  v78 = objc_msgSend_cellStorageRefAtIndex_(self->_baseRow, v76, *(v75 + 9), v77);
  if (v78)
  {
    v81 = v78;
    v82 = self->_cell;
    WeakRetained = objc_loadWeakRetained(&self->_baseDataStore);
    objc_msgSend_inflateFromStorageRef_dataStore_cache_(v82, v84, v81, WeakRetained, self->_baseDataListCache);
  }

  else
  {
    v87 = MEMORY[0x277D81150];
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSTCategoryStoreIterator updateCellData:]", v80);
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v90);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v92, v88, v91, 217, 0, "invalid nil value for '%{public}s'", "cellRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94, v95);
    v96 = MEMORY[0x277D81150];
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "[TSTCategoryStoreIterator updateCellData:]", v98);
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v101);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v103, v99, v102, 224, 0, "this is odd case, iterator found cell at this cellID, but then no cellRef");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106);
    objc_msgSend_clear(self->_cell, v107, v108, v109);
  }

  objc_msgSend_setCell_(data, v85, self->_cell, v86);
}

- (void)updateFormulaForCellData:(id)data
{
  v6 = objc_msgSend_cellID(data, a2, data, v3);
  if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCategoryStoreIterator updateFormulaForCellData:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 238, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_msgSend_cellID(data, v7, v8, v9);
  curCellID = self->_curCellID;
  if (v19 == curCellID && ((curCellID ^ v19) & 0x101FFFF00000000) == 0)
  {
    if (self->_isSummaryRow || self->_isLabelRow || (v23 = HIDWORD(curCellID), self->_categoryColumnIndex == WORD2(curCellID)))
    {
      objc_msgSend_getCell_atCellID_(self->_translator, v20, self->_cell, curCellID);
      if (objc_msgSend_hasFormula(self->_cell, v24, v25, v26))
      {
        v98 = objc_msgSend_cellSpec(self->_cell, v27, v28, v29);
        v33 = objc_msgSend_asFormulaSpec(v98, v30, v31, v32);
        objc_msgSend_setFormulaSpec_(data, v34, v33, v35);
      }
    }

    else
    {
      if (!self->_baseTile)
      {
        v36 = MEMORY[0x277D81150];
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTCategoryStoreIterator updateFormulaForCellData:]", curCellID);
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v39);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 249, 0, "invalid nil value for '%{public}s'", "_baseTile");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
      }

      if (!self->_baseRow)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTCategoryStoreIterator updateFormulaForCellData:]", curCellID);
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v48);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 250, 0, "invalid nil value for '%{public}s'", "_baseRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
      }

      v100 = v23;
      if (!sub_2210C3024(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v100))
      {
        v56 = MEMORY[0x277D81150];
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSTCategoryStoreIterator updateFormulaForCellData:]", v55);
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v59);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 251, 0, "incomplete map.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64);
      }

      v99 = v23;
      v101 = &v99;
      v65 = sub_22142400C(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v99, &unk_2217E1C28, &v101);
      v68 = objc_msgSend_cellStorageRefAtIndex_(self->_baseRow, v66, *(v65 + 9), v67);
      if (v68)
      {
        v71 = v68;
        WeakRetained = objc_loadWeakRetained(&self->_baseDataStore);
        v75 = objc_msgSend_formulaSpecForStorageRef_(WeakRetained, v73, v71, v74);
        objc_msgSend_setFormulaSpec_(data, v76, v75, v77);
      }

      else
      {
        v78 = MEMORY[0x277D81150];
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "[TSTCategoryStoreIterator updateFormulaForCellData:]", v70);
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v81);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v83, v79, v82, 254, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v85, v86);
        v87 = MEMORY[0x277D81150];
        v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "[TSTCategoryStoreIterator updateFormulaForCellData:]", v89);
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v92);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v94, v90, v93, 259, 0, "this is an odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97);
      }
    }
  }
}

- (TSUCellCoord)getNext
{
  v5 = 0;
  LOWORD(v6) = 0;
  v131 = 0;
  v7 = 1;
  while (1)
  {
    while (1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_29;
      }

      Next = objc_msgSend_getNext(self->_regionIterator, a2, v2, v3);
      v5 = Next;
      v6 = HIDWORD(Next);
      v131 = HIWORD(Next);
      v9 = Next;
      if (Next == 0x7FFFFFFFLL || (Next & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v7 = 0;
        goto LABEL_48;
      }

      if (self->_curRowIndex != Next)
      {
        self->_curRowIndex = Next;
        objc_msgSend_setBaseRow_(self, a2, 0, v3);
        WeakRetained = objc_loadWeakRetained(&self->_viewMap);
        self->_uuid._lower = objc_msgSend_rowUIDForRowIndex_(WeakRetained, v12, v5, v13);
        self->_uuid._upper = v14;

        if (self->_uuid._lower || self->_uuid._upper)
        {
          v15 = objc_loadWeakRetained(&self->_baseMap);
          self->_baseRowIndex = objc_msgSend_rowIndexForRowUID_(v15, v16, self->_uuid._lower, self->_uuid._upper);

          if (self->_baseRowIndex == 0x7FFFFFFF)
          {
            v17 = sub_2211A8E4C(self->_uuid._lower, self->_uuid._upper);
            baseRowIndex = self->_baseRowIndex;
            self->_isSummaryRow = v17;
            if (baseRowIndex == 0x7FFFFFFF)
            {
              v19 = sub_2211A8E20(self->_uuid._lower, self->_uuid._upper);
              isSummaryRow = self->_isSummaryRow;
              self->_isLabelRow = v19;
              if (!isSummaryRow)
              {
                if (v19)
                {
                  v21 = objc_msgSend_groupLevelAtLabelRow_(self->_translator, a2, v9, v3);
LABEL_22:
                  self->_groupLevel = v21;
                  goto LABEL_23;
                }

LABEL_21:
                v21 = -1;
                goto LABEL_22;
              }
            }

            else
            {
              self->_isLabelRow = 0;
              if (!v17)
              {
                goto LABEL_21;
              }
            }

            v21 = objc_msgSend_groupLevelAtSummaryRow_(self->_translator, a2, v9, v3);
            goto LABEL_22;
          }
        }

        else
        {
          self->_baseRowIndex = 0x7FFFFFFF;
        }

        *&self->_isSummaryRow = 0;
        goto LABEL_21;
      }

LABEL_23:
      if (!self->_isSummaryRow)
      {
        if (self->_baseTile)
        {
          v22 = self->_baseRowIndex;
          location = self->_baseTileRange.location;
          v24 = v22 >= location;
          v25 = v22 - location;
          if (!v24 || v25 >= self->_baseTileRange.length)
          {
            objc_msgSend_setBaseTile_(self, a2, 0, v3);
            self->_baseTileRange = *MEMORY[0x277D81490];
          }
        }
      }

LABEL_29:
      if (self->_categoryColumnIndex != v6)
      {
        break;
      }

      if (self->_isSummaryRow || self->_isLabelRow)
      {
        searchMask = self->_searchMask;
        if (!searchMask || (searchMask & 0x400000) != 0)
        {
LABEL_90:
          v33 = v5;
          goto LABEL_91;
        }
      }

      v27 = objc_msgSend_tempSummaryCell(self, a2, v2, v3);
      v28 = objc_loadWeakRetained(&self->_summaryCellVendor);
      TSTMakeCellUID(v133);
      Cell_atCellUID = objc_msgSend_getCell_atCellUID_(v28, v29, v27, v133);

      if (Cell_atCellUID)
      {
      }

      else
      {
        v61 = objc_msgSend_checkCell_searchFlags_(self, v31, v27, self->_searchMask);

        if (v61)
        {
          goto LABEL_90;
        }
      }

      objc_msgSend_advanceToCellID_(self->_regionIterator, a2, (v131 << 48) | (v6 << 32) | v5, v3);
      v7 = 1;
LABEL_48:
      if (v6 == 0x7FFF || v5 == 0x7FFFFFFF)
      {
        v33 = v5;
        goto LABEL_92;
      }
    }

    if (!self->_isSummaryRow && !self->_isLabelRow)
    {
      baseTile = self->_baseTile;
      if (!baseTile)
      {
        v64 = objc_loadWeakRetained(&self->_baseDataStore);
        v66 = objc_msgSend_i_tileStartingAtOrBeforeRowIndex_outTileRange_(v64, v65, self->_baseRowIndex, v133);
        objc_msgSend_setBaseTile_(self, v67, v66, v68);

        baseTile = self->_baseTile;
        if (baseTile || (v69 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryStoreIterator getNext]", v3), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v72), v73 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v74, v70, v73, 392, 0, "invalid nil value for '%{public}s'", "_baseTile"), v73, v70, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77), (baseTile = self->_baseTile) != 0))
        {
          v78 = self->_baseRowIndex;
          v24 = v78 >= *&v133[0];
          v79 = v78 - *&v133[0];
          if (!v24 || v79 >= *(&v133[0] + 1))
          {
            objc_msgSend_setBaseTile_(self, a2, 0, v3);
            self->_baseTileRange = *MEMORY[0x277D81490];
            v5 = (v5 + 1);
            objc_msgSend_advanceToCellID_(self->_regionIterator, v128, v5, v129);
            v131 = 0;
            LOWORD(v6) = 0;
            v7 = 1;
            goto LABEL_48;
          }
        }

        self->_baseTileRange = v133[0];
      }

      if (!self->_baseRow)
      {
        v111 = objc_msgSend_rowInfoForTileRowIndex_(baseTile, a2, self->_baseRowIndex - LODWORD(self->_baseTileRange.location), v3);
        objc_msgSend_setBaseRow_(self, v112, v111, v113);

        if (!self->_baseRow)
        {
          self->_baseRowIndex = 0x7FFFFFFF;
          v5 = (v5 + 1);
          objc_msgSend_advanceToCellID_(self->_regionIterator, v114, v5, v115);
          v131 = 0;
          LOWORD(v6) = 0;
          v7 = 1;
          goto LABEL_48;
        }

        if ((objc_msgSend_intersectsRow_(self->_region, v114, v5, v115) & 1) == 0)
        {
          v118 = MEMORY[0x277D81150];
          v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, "[TSTCategoryStoreIterator getNext]", v117);
          v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v121);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v123, v119, v122, 426, 0, "should now have a row that intersects the region");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125, v126);
        }
      }

      LOWORD(v133[0]) = v6;
      if (!sub_2210C3024(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, v133))
      {
        v82 = MEMORY[0x277D81150];
        v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TSTCategoryStoreIterator getNext]", v81);
        v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v85);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v87, v83, v86, 430, 0, "couldn't find offset, that's not good.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90);
      }

      v132 = v6;
      *&v133[0] = &v132;
      v91 = *(sub_22142400C(&self->_mapFromViewToBaseColumnInCurrentRow.__table_.__bucket_list_.__ptr_, &v132, &unk_2217E1C28, v133) + 9);
      if (objc_msgSend_cellIndexAtOrAfterIndex_(self->_baseRow, v92, v91, v93) == v91)
      {
        if (v6 == 0x7FFF || v5 == 0x7FFFFFFF)
        {
          v95 = MEMORY[0x277D81150];
          v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCategoryStoreIterator getNext]", v94);
          v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v98);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v100, v96, v99, 443, 0, "should now have a valid cellID at this point");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103);
        }

        v33 = v5;
        v3 = self->_searchMask;
        if (!v3 || (objc_msgSend_searchCellStorageRefAtColumnIndex_searchMask_(self->_baseRow, a2, v91, v3) & 1) != 0)
        {
          if (v6 == 999)
          {
            objc_msgSend_advanceToCellID_(self->_regionIterator, a2, (v5 + 1), v3);
            goto LABEL_92;
          }

LABEL_91:
          objc_msgSend_advanceToCellID_(self->_regionIterator, a2, v5 | ((v6 + 1) << 32), v3);
          goto LABEL_92;
        }

        objc_msgSend_advanceToCellID_(self->_regionIterator, a2, (v131 << 48) | (v6 << 32) | v5, v3);
      }

      else
      {
        LOWORD(v6) = v6 + 1;
        objc_msgSend_advanceToCellID_(self->_regionIterator, a2, (v131 << 48) | (v6 << 32) | v5, v94);
      }

      goto LABEL_45;
    }

    v32 = (v131 << 48) | (v6 << 32);
    v33 = v5;
    if ((objc_msgSend_containsCellID_(self->_region, a2, v32 | v5, v3) & 1) == 0)
    {
      objc_msgSend_advanceToCellID_(self->_regionIterator, v34, v32 | v5, v35);
LABEL_45:
      v7 = 1;
      goto LABEL_48;
    }

    v36 = objc_loadWeakRetained(&self->_viewMap);
    v39 = objc_msgSend_columnUIDForColumnIndex_(v36, v37, v6, v38);
    v41 = v40;

    if (!(v39 | v41))
    {
      v45 = MEMORY[0x277D81150];
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSTCategoryStoreIterator getNext]", v44);
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryStoreIterator.mm", v48);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 345, 0, "invalid columnUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    }

    v54 = objc_msgSend_tempSummaryCell(self, v42, v43, v44);
    v55 = objc_loadWeakRetained(&self->_summaryCellVendor);
    sub_2211A8F64(self->_groupLevel, 0, v133);
    v57 = objc_msgSend_getCell_atCellUID_(v55, v56, v54, v133);

    if (v57)
    {

      v54 = 0;
      if (self->_isSummaryRow)
      {
        goto LABEL_85;
      }

      goto LABEL_75;
    }

    if (self->_isSummaryRow)
    {
      break;
    }

LABEL_75:
    if (objc_msgSend_hasFormula(v54, v58, v59, v60))
    {
      v105 = self->_searchMask;
      if (!v105 || (v105 & 0x400000) != 0)
      {
        goto LABEL_93;
      }
    }

    v106 = objc_msgSend_tempSummaryCell(self, v58, v104, v60);
    v107 = objc_loadWeakRetained(&self->_summaryCellVendor);
    TSTMakeCellUID(v133);
    v109 = objc_msgSend_getCell_atCellUID_(v107, v108, v106, v133);

    if (v109)
    {
    }

    else
    {
      v127 = objc_msgSend_checkCell_searchFlags_(self, v110, v106, self->_searchMask);

      if (v127)
      {
        goto LABEL_93;
      }
    }

LABEL_85:
    objc_msgSend_advanceToCellID_(self->_regionIterator, v58, v32 | v5, v60);

    if (v6 != 0x7FFF)
    {
      v7 = 1;
      if (v5 != 0x7FFFFFFF)
      {
        continue;
      }
    }

    goto LABEL_92;
  }

  if (!v54 || (objc_msgSend_checkCell_searchFlags_(self, v58, v54, self->_searchMask) & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_93:
  if (v6 == 999)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, v58, (v5 + 1), v60);
  }

  else
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, v58, v5 | ((v6 + 1) << 32), v60);
  }

LABEL_92:
  self->_curCellID.row = v5;
  self->_curCellID.column = v6;
  *&self->_curCellID._preserveRow = v131;
  return ((v131 << 48) | (v6 << 32) | v33);
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d
{
  curCellID = self->_curCellID;
  v7 = curCellID.row != 0x7FFFFFFF && (*&curCellID & 0xFFFF00000000) != 0x7FFF00000000 && curCellID.row >= d.row;
  if (!v7 || curCellID.row == d.row && curCellID.column < d.column)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, a2, *&d, v3);
    return self->_curCellID;
  }

  return curCellID;
}

- (void)iterateCellsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  v11 = 0;
  do
  {
    v10 = v7;
    NextCellData = objc_msgSend_getNextCellData_(self, v4, &v10, v5);
    v9 = v10;

    if (!NextCellData)
    {
      break;
    }

    blockCopy[2](blockCopy, v9, &v11);
    v7 = v9;
  }

  while ((v11 & 1) == 0);
}

- (id)nextCellData
{
  v8 = 0;
  NextCellData = objc_msgSend_getNextCellData_(self, a2, &v8, v2);
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (NextCellData)
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)getNextCellData:(id *)data
{
  Next = objc_msgSend_getNext(self, a2, data, v3);
  v9 = Next == 0x7FFFFFFF || (Next & 0xFFFF00000000) == 0x7FFF00000000;
  v10 = !v9;
  if (!v9)
  {
    objc_msgSend_setCellID_(self->_cellData, v6, Next, v8);
    objc_msgSend_updateCellData_(self, v11, self->_cellData, v12);
    if (data)
    {
      *data = self->_cellData;
    }
  }

  return v10;
}

- (void)terminate
{
  if (!self->_terminated)
  {
    objc_msgSend_terminate(self->_regionIterator, a2, v2, v3);
    self->_terminated = 1;
  }
}

- (TSTGroupBy)groupBy
{
  WeakRetained = objc_loadWeakRetained(&self->_groupBy);

  return WeakRetained;
}

- (TSTTableDataStore)baseDataStore
{
  WeakRetained = objc_loadWeakRetained(&self->_baseDataStore);

  return WeakRetained;
}

- (TSTColumnRowUIDMap)baseMap
{
  WeakRetained = objc_loadWeakRetained(&self->_baseMap);

  return WeakRetained;
}

- (TSTColumnRowUIDMap)viewMap
{
  WeakRetained = objc_loadWeakRetained(&self->_viewMap);

  return WeakRetained;
}

- (TSTSummaryCellVendor)summaryCellVendor
{
  WeakRetained = objc_loadWeakRetained(&self->_summaryCellVendor);

  return WeakRetained;
}

- (TSTColumnRowUIDMap)summaryMap
{
  WeakRetained = objc_loadWeakRetained(&self->_summaryMap);

  return WeakRetained;
}

- (TSKUIDStruct)uuid
{
  upper = self->_uuid._upper;
  lower = self->_uuid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (_NSRange)baseTileRange
{
  length = self->_baseTileRange.length;
  location = self->_baseTileRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end