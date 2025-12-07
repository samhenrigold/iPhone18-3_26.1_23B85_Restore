@interface TSTPivotStoreIterator
- (TSTPivotStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
- (void)updateCellData:(id)data;
- (void)updateFormulaForCellData:(id)data;
@end

@implementation TSTPivotStoreIterator

- (TSTPivotStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask
{
  infoCopy = info;
  regionCopy = region;
  v88.receiver = self;
  v88.super_class = TSTPivotStoreIterator;
  v15 = [(TSTCategoryStoreIterator *)&v88 initWithInfo:infoCopy region:regionCopy flags:flags searchMask:mask];
  if (v15)
  {
    v16 = objc_msgSend_newCell(infoCopy, v12, v13, v14);
    v17 = *(v15 + 40);
    *(v15 + 40) = v16;

    objc_opt_class();
    v21 = objc_msgSend_translator(infoCopy, v18, v19, v20);
    v22 = TSUCheckedDynamicCast();
    v23 = *(v15 + 47);
    *(v15 + 47) = v22;

    v27 = objc_msgSend_baseTableModel(infoCopy, v24, v25, v26);
    v31 = objc_msgSend_dataStore(v27, v28, v29, v30);

    if (!v31)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSTPivotStoreIterator initWithInfo:region:flags:searchMask:]", v34);
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v38);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 53, 0, "invalid nil value for '%{public}s'", "info.baseTableModel.dataStore");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
    }

    v44 = objc_msgSend_summaryModel(infoCopy, v32, v33, v34);
    v48 = objc_msgSend_dataStore(v44, v45, v46, v47);

    if (!v48)
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSTPivotStoreIterator initWithInfo:region:flags:searchMask:]", v51);
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v55);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 54, 0, "invalid nil value for '%{public}s'", "info.summaryModel.dataStore");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
    }

    v61 = objc_msgSend_baseTableModel(infoCopy, v49, v50, v51);
    v65 = objc_msgSend_dataStore(v61, v62, v63, v64);
    v66 = *(v15 + 41);
    *(v15 + 41) = v65;

    v70 = objc_msgSend_summaryModel(infoCopy, v67, v68, v69);
    v74 = objc_msgSend_dataStore(v70, v71, v72, v73);
    v75 = *(v15 + 42);
    *(v15 + 42) = v74;

    v78 = objc_msgSend_cacheWithDataStore_(TSTTableDataListCache, v76, *(v15 + 41), v77);
    v79 = *(v15 + 43);
    *(v15 + 43) = v78;

    v82 = objc_msgSend_cacheWithDataStore_(TSTTableDataListCache, v80, *(v15 + 42), v81);
    v83 = *(v15 + 44);
    *(v15 + 44) = v82;

    *(v15 + 36) = objc_msgSend_firstCellID(regionCopy, v84, v85, v86);
  }

  return v15;
}

- (void)updateCellData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_cellID(dataCopy, v4, v5, v6);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTPivotStoreIterator updateCellData:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 68, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_cellID(dataCopy, v8, v9, v10);
  currentViewCellID = self->_currentViewCellID;
  v26 = v20 == currentViewCellID._coord.row;
  v25 = (*&currentViewCellID ^ v20) & 0x101FFFF00000000;
  v26 = v26 && v25 == 0;
  if (v26)
  {
    if (self->_currentCellIDIsBase)
    {
      baseRow = self->_baseRow;
      if (!baseRow)
      {
        v49 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTPivotStoreIterator updateCellData:]", v23);
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v52);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 72, 0, "invalid nil value for '%{public}s'", "_baseRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
        baseRow = self->_baseRow;
      }

      v59 = objc_msgSend_cellStorageRefAtIndex_(baseRow, v21, self->_currentBaseCellID._coord.column, v23);
      if (v59)
      {
        objc_msgSend_inflateFromStorageRef_dataStore_cache_(self->_cell, v58, v59, self->_baseDataStore, self->_baseDataListCache);
      }

      else
      {
        v74 = MEMORY[0x277D81150];
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTPivotStoreIterator updateCellData:]", v60);
        v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v77);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v79, v75, v78, 74, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82);
        v83 = MEMORY[0x277D81150];
        v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "[TSTPivotStoreIterator updateCellData:]", v85);
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v88);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v90, v86, v89, 79, 0, "this is odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93);
        objc_msgSend_clear(self->_cell, v94, v95, v96);
      }
    }

    else
    {
      summaryRow = self->_summaryRow;
      if (!summaryRow)
      {
        v62 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTPivotStoreIterator updateCellData:]", v23);
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v63, v66, 83, 0, "invalid nil value for '%{public}s'", "_summaryRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
        summaryRow = self->_summaryRow;
      }

      v72 = objc_msgSend_cellStorageRefAtIndex_(summaryRow, v21, self->_currentSummaryCellID._coord.column, v23);
      if (v72)
      {
        objc_msgSend_inflateFromStorageRef_dataStore_cache_(self->_cell, v71, v72, self->_summaryDataStore, self->_summaryDataListCache);
      }

      else
      {
        v97 = MEMORY[0x277D81150];
        v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TSTPivotStoreIterator updateCellData:]", v73);
        v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v100);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v102, v98, v101, 85, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104, v105);
        v106 = MEMORY[0x277D81150];
        v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "[TSTPivotStoreIterator updateCellData:]", v108);
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v111);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v113, v109, v112, 90, 0, "this is odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116);
        objc_msgSend_clear(self->_cell, v117, v118, v119);
      }
    }
  }

  else
  {
    v27 = objc_msgSend_cellID(dataCopy, v21, v22, v23);
    v31 = self->_currentViewCellID;
    if (v27 >= v31._coord.row && (v27 != v31._coord.row || WORD2(v27) >= v31._coord.column))
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTPivotStoreIterator updateCellData:]", v30);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v35);
      objc_msgSend_cellID(dataCopy, v37, v38, v39);
      v40 = NSStringFromTSUCellCoord();
      v41 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v42, v33, v36, 96, 0, "cellID %@ should be before cursor cellID %@", v40, v41);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
    }

    objc_msgSend_clear(self->_cell, v28, v29, v30);
  }

  objc_msgSend_setCell_(dataCopy, v46, self->_cell, v47);
}

- (void)updateFormulaForCellData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_cellID(dataCopy, v4, v5, v6);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTPivotStoreIterator updateFormulaForCellData:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 104, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_cellID(dataCopy, v8, v9, v10);
  currentViewCellID = self->_currentViewCellID;
  v25 = v20 == currentViewCellID._coord.row;
  v24 = (*&currentViewCellID ^ v20) & 0x101FFFF00000000;
  v25 = v25 && v24 == 0;
  if (v25)
  {
    if (self->_currentCellIDIsBase)
    {
      baseRow = self->_baseRow;
      if (!baseRow)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTPivotStoreIterator updateFormulaForCellData:]", v22);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 109, 0, "invalid nil value for '%{public}s'", "_baseRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
        baseRow = self->_baseRow;
      }

      v37 = objc_msgSend_cellStorageRefAtIndex_(baseRow, v21, self->_currentBaseCellID._coord.column, v22);
      if (!v37)
      {
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTPivotStoreIterator updateFormulaForCellData:]", v38);
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v60);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 111, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
        v66 = MEMORY[0x277D81150];
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TSTPivotStoreIterator updateFormulaForCellData:]", v68);
        v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v71);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v73, v69, v72, 116, 0, "this is an odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76);
        goto LABEL_8;
      }

      v39 = objc_msgSend_formulaSpecForStorageRef_(self->_baseDataStore, v36, v37, v38);
      objc_msgSend_setFormulaSpec_(dataCopy, v40, v39, v41);
    }

    else
    {
      summaryRow = self->_summaryRow;
      if (!summaryRow)
      {
        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTPivotStoreIterator updateFormulaForCellData:]", v22);
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v46);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v47, 119, 0, "invalid nil value for '%{public}s'", "_summaryRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
        summaryRow = self->_summaryRow;
      }

      v53 = objc_msgSend_cellStorageRefAtIndex_(summaryRow, v21, self->_currentSummaryCellID._coord.column, v22);
      if (!v53)
      {
        v77 = MEMORY[0x277D81150];
        v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSTPivotStoreIterator updateFormulaForCellData:]", v54);
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v80);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v82, v78, v81, 121, 0, "invalid nil value for '%{public}s'", "cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85);
        v86 = MEMORY[0x277D81150];
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSTPivotStoreIterator updateFormulaForCellData:]", v88);
        v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v91);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v93, v89, v92, 126, 0, "this is an odd case, iterator found cell at this cellID, but then no cellRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96);
        goto LABEL_8;
      }

      v39 = objc_msgSend_formulaSpecForStorageRef_(self->_summaryDataStore, v52, v53, v54);
      objc_msgSend_setFormulaSpec_(dataCopy, v55, v39, v56);
    }
  }

LABEL_8:
}

- (TSUCellCoord)getNext
{
  v8 = objc_msgSend_regionIterator(self, a2, v2, v3);
  do
  {
    Next = objc_msgSend_getNext(v8, v5, v6, v7);
    v12 = Next;
    v13 = Next;
    v14 = Next & 0xFFFF00000000;
    if (Next == 0x7FFFFFFFLL || v14 == 0x7FFF00000000)
    {
      break;
    }

    if (self->_currentRowIndex != Next)
    {
      self->_currentRowIndex = Next;
      baseRow = self->_baseRow;
      self->_baseRow = 0;

      summaryRow = self->_summaryRow;
      self->_summaryRow = 0;
    }

    self->_currentViewCellID._coord = v12;
    self->_currentBaseCellID = objc_msgSend_baseCellCoordForViewCellCoord_(self->_translator, v10, *&v12, v11);
    p_currentSummaryCellID = &self->_currentSummaryCellID;
    self->_currentSummaryCellID = objc_msgSend_summaryCellCoordForViewCellCoord_(self->_translator, v18, *&self->_currentViewCellID, v19);
    currentBaseCellID = self->_currentBaseCellID;
    v24 = currentBaseCellID == 0x7FFFFFFF || (currentBaseCellID & 0xFFFF00000000) == 0x7FFF00000000;
    v25 = !v24;
    self->_currentCellIDIsBase = v25;
    if (v24)
    {
      currentBaseCellID = *p_currentSummaryCellID;
      if (p_currentSummaryCellID->_coord.row == 0x7FFFFFFF || (currentBaseCellID & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTPivotStoreIterator getNext]", v22);
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotStoreIterator.mm", v31);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 178, 0, "Unexpected cell coordinate while iterating.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
        goto LABEL_25;
      }

      v26 = self->_summaryRow;
      if (v26)
      {
        v27 = HIDWORD(currentBaseCellID);
      }

      else
      {
        v41 = objc_msgSend_i_rowInfoAtIndex_(self->_summaryDataStore, v21, currentBaseCellID, v22);
        v42 = self->_summaryRow;
        self->_summaryRow = v41;

        v26 = self->_summaryRow;
        LOWORD(v27) = self->_currentSummaryCellID._coord.column;
      }
    }

    else
    {
      v26 = self->_baseRow;
      if (v26)
      {
        v27 = HIDWORD(currentBaseCellID);
      }

      else
      {
        v39 = objc_msgSend_i_rowInfoAtIndex_(self->_baseDataStore, v21, currentBaseCellID, v22);
        v40 = self->_baseRow;
        self->_baseRow = v39;

        v26 = self->_baseRow;
        LOWORD(v27) = self->_currentBaseCellID._coord.column;
      }
    }

    v43 = objc_msgSend_searchMask(self, v21, currentBaseCellID, v22);
    if (objc_msgSend_searchCellStorageRefAtColumnIndex_searchMask_(v26, v44, v27, v43))
    {
      if (v14 == 0x3E700000000)
      {
        objc_msgSend_advanceToCellID_(v8, v37, v12.row + 1, v38);
      }

      else
      {
        objc_msgSend_advanceToCellID_(v8, v37, (*&v12 + 0x100000000) & 0xFFFF00000000 | v13, v38);
      }

      break;
    }

LABEL_25:
    self->_currentViewCellID = 0x7FFF7FFFFFFFLL;
    objc_msgSend_advanceToCellID_(v8, v37, *&v12, v38);
  }

  while (v12.row != 0x7FFFFFFF);

  return v12;
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d
{
  currentViewCellID = self->_currentViewCellID;
  v7 = currentViewCellID._coord.row != 0x7FFFFFFF && (*&currentViewCellID & 0xFFFF00000000) != 0x7FFF00000000 && currentViewCellID._coord.row >= d.row;
  if (!v7 || currentViewCellID._coord.row == d.row && WORD2(*&self->_currentViewCellID) < d.column)
  {
    v8 = objc_msgSend_regionIterator(self, a2, *&d, v3);
    objc_msgSend_advanceToCellID_(v8, v9, *&d, v10);
  }

  return currentViewCellID._coord;
}

@end