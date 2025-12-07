@interface TSTDataStoreIterator
- (BOOL)getNextCellData:(id *)data;
- (TSTDataStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask;
- (TSTDataStoreIterator)initWithModel:(id)model region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask;
- (TSTPerformanceLoggingToken)logToken;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
- (_NSRange)curTileRange;
- (id)nextCellData;
- (void)iterateCellsUsingBlock:(id)block;
- (void)p_setupTileAndRowAtCellID:(TSUCellCoord)d;
- (void)setLogToken:(TSTPerformanceLoggingToken)token;
- (void)terminate;
- (void)updateCellData:(id)data;
- (void)updateFormulaForCellData:(id)data;
@end

@implementation TSTDataStoreIterator

- (TSTDataStoreIterator)initWithInfo:(id)info region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask
{
  regionCopy = region;
  v14 = objc_msgSend_baseTableModel(info, v11, v12, v13);
  v16 = objc_msgSend_initWithModel_region_flags_searchMask_(self, v15, v14, regionCopy, flags, mask);

  return v16;
}

- (TSTDataStoreIterator)initWithModel:(id)model region:(id)region flags:(unint64_t)flags searchMask:(unint64_t)mask
{
  modelCopy = model;
  regionCopy = region;
  v83.receiver = self;
  v83.super_class = TSTDataStoreIterator;
  v13 = [(TSTDataStoreIterator *)&v83 init];
  v14 = v13;
  v15 = v13;
  if (!v13)
  {
    goto LABEL_21;
  }

  objc_storeStrong(&v13->_logToken.logHandle, MEMORY[0x277D86228]);
  v15->_logToken.signpostID = 0;
  objc_storeStrong(&v14->_tableModel, model);
  v19 = objc_msgSend_dataStore(v15->_tableModel, v16, v17, v18);
  dataStore = v15->_dataStore;
  v15->_dataStore = v19;

  if (!v15->_dataStore)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTDataStoreIterator initWithModel:region:flags:searchMask:]", v22);
    v82 = modelCopy;
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 77, 0, "invalid nil value for '%{public}s'", "_dataStore");

    modelCopy = v82;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  objc_storeStrong(&v14->_region, region);
  if (objc_msgSend_cellCount(regionCopy, v32, v33, v34) >= 0x10)
  {
    v38 = objc_msgSend_cacheWithDataStore_(TSTTableDataListCache, v35, v15->_dataStore, v37);
    dataListCache = v15->_dataListCache;
    v15->_dataListCache = v38;
  }

  if ((~flags & 0x204) == 0)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTDataStoreIterator initWithModel:region:flags:searchMask:]", v37);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 91, 0, "cannot specify both walk right to left and walk bottom to top");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v46, v47, v48);
    v15->_columnOrderReversed = 1;
LABEL_11:
    v50 = objc_msgSend_newRightToLeftIterator(v14->_region, v35, v36, v37);
    goto LABEL_12;
  }

  v15->_columnOrderReversed = (flags & 4) != 0;
  if ((flags & 4) != 0)
  {
    goto LABEL_11;
  }

  region = v14->_region;
  if ((flags & 0x200) != 0)
  {
    v80 = objc_msgSend_newBottomToTopIterator(region, v35, v36, v37);
    regionIterator = v15->_regionIterator;
    v15->_regionIterator = v80;

    flags &= 0xFFFFFFFFFFFFFDFBLL;
    goto LABEL_13;
  }

  v50 = objc_msgSend_newIterator(region, v35, v36, v37);
LABEL_12:
  v51 = v15->_regionIterator;
  v15->_regionIterator = v50;

LABEL_13:
  v55 = flags & 0xFFFFFFFFFFFFFFFBLL;
  if ((flags & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSTDataStoreIterator initWithModel:region:flags:searchMask:]", v54);
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v59);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 103, 0, "flags remain 0x%lx, flags should all be consumed by this point ", v55);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v62, v63, v64);
  }

  if (mask == 66058240)
  {
    maskCopy = 0;
  }

  else
  {
    maskCopy = mask;
  }

  v15->_searchMask = maskCopy;
  v66 = mask & 0xFFFFFFFFFC1007FFLL;
  if ((mask & 0xFFFFFFFFFC1007FFLL) != 0)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSTDataStoreIterator initWithModel:region:flags:searchMask:]", v54);
    v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v72, v68, v71, 107, 0, "searchMask remain 0x%x, should be consumed by this point", v66);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v73, v74, v75);
  }

  CellID = objc_msgSend_firstCellID(v14->_region, v52, v53, v54);
  objc_msgSend_p_setupTileAndRowAtCellID_(v15, v77, CellID, v78);
LABEL_21:

  return v15;
}

- (void)p_setupTileAndRowAtCellID:(TSUCellCoord)d
{
  v3 = MEMORY[0x277D81490];
  self->_curCellID = d;
  self->_curTileRange = *v3;
  self->_curRowIndex = 0x7FFFFFFF;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v5 = objc_msgSend_i_tileStartingAtOrBeforeRowIndex_outTileRange_(self->_dataStore, a2, *&d, &v11);
    v8 = v5;
    if (v5)
    {
      row = self->_curCellID.row;
      if (row >= v11.location && row - v11.location < v11.length)
      {
        v10 = objc_msgSend_rowInfoForTileRowIndex_(v5, v6, (row - LODWORD(v11.location)), v7);
        if (v10)
        {
          objc_storeStrong(&self->_curRow, v10);
          self->_curRowIndex = self->_curCellID.row;
        }

        objc_storeStrong(&self->_curTile, v8);
        self->_curTileRange = v11;
      }
    }
  }
}

- (void)updateCellData:(id)data
{
  dataCopy = data;
  v10 = objc_msgSend_cellID(dataCopy, v4, v5, v6);
  if (v10 == 0x7FFFFFFF || (v10 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTDataStoreIterator updateCellData:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 147, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v23 = objc_msgSend_cell(dataCopy, v7, v8, v9);
  if (!v23)
  {
    v24 = objc_msgSend_newCell(self->_tableModel, v20, v21, v22);
    objc_msgSend_setCell_(dataCopy, v25, v24, v26);

    v23 = objc_msgSend_cell(dataCopy, v27, v28, v29);
  }

  v30 = objc_msgSend_cellID(dataCopy, v20, v21, v22);
  v34 = HIDWORD(v10);
  curCellID = self->_curCellID;
  if (v30 == curCellID.row && ((*&curCellID ^ v30) & 0x101FFFF00000000) == 0)
  {
    if (!self->_curTile)
    {
      v47 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTDataStoreIterator updateCellData:]", v33);
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v48, v51, 157, 0, "invalid nil value for '%{public}s'", "_curTile");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
    }

    curRow = self->_curRow;
    if (!curRow)
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTDataStoreIterator updateCellData:]", v33);
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v60);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 158, 0, "invalid nil value for '%{public}s'", "_curRow");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
      curRow = self->_curRow;
    }

    v67 = objc_msgSend_cellStorageRefAtIndex_(curRow, v31, v34, v33);
    if (v67)
    {
      objc_msgSend_inflateFromStorageRef_dataStore_cache_suppressingTransmutation_(v23, v66, v67, self->_dataStore, self->_dataListCache, 0);
    }

    else
    {
      v69 = MEMORY[0x277D81150];
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "[TSTDataStoreIterator updateCellData:]", v68);
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v72);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v74, v70, v73, 161, 0, "invalid nil value for '%{public}s'", "cellRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77);
      v78 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSTDataStoreIterator updateCellData:]", v80);
      v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v83);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v85, v81, v84, 166, 0, "this is odd case, iterator found cell at this cellID, but then no cellRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88);
      objc_msgSend_clear(v23, v89, v90, v91);
    }
  }

  else
  {
    if (curCellID.row <= v10 && (curCellID.row != v10 || WORD2(*&self->_curCellID) <= WORD2(v10)))
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTDataStoreIterator updateCellData:]", v33);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v39);
      v41 = NSStringFromTSUCellCoord();
      v42 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v43, v37, v40, 171, 0, "cellID %@ should be before cursor cellID %@", v41, v42);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
    }

    objc_msgSend_clear(v23, v31, v32, v33);
  }
}

- (void)updateFormulaForCellData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_cellID(dataCopy, v4, v5, v6);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTDataStoreIterator updateFormulaForCellData:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 179, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_cellID(dataCopy, v8, v9, v10);
  curCellID = self->_curCellID;
  if (v20 == curCellID.row && ((*&curCellID ^ v20) & 0x101FFFF00000000) == 0)
  {
    if (!self->_curTile)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTDataStoreIterator updateFormulaForCellData:]", v23);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 182, 0, "invalid nil value for '%{public}s'", "_curTile");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
    }

    curRow = self->_curRow;
    if (!curRow)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTDataStoreIterator updateFormulaForCellData:]", v23);
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v38);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 183, 0, "invalid nil value for '%{public}s'", "_curRow");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
      curRow = self->_curRow;
    }

    v44 = objc_msgSend_cellID(dataCopy, v21, v22, v23);
    v48 = objc_msgSend_cellStorageRefAtIndex_(curRow, v45, WORD2(v44), v46);
    if (v48)
    {
      v50 = objc_msgSend_formulaSpecForStorageRef_(self->_dataStore, v47, v48, v49);
      objc_msgSend_setFormulaSpec_(dataCopy, v51, v50, v52);
    }

    else
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSTDataStoreIterator updateFormulaForCellData:]", v49);
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v56);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 186, 0, "invalid nil value for '%{public}s'", "cellRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
    }
  }
}

- (TSUCellCoord)getNext
{
  v5 = 0;
  location_low = 0;
  LOWORD(v7) = 0;
  v8 = 0;
  v9 = 1;
  while (1)
  {
    if (v9)
    {
      Next = objc_msgSend_getNext(self->_regionIterator, a2, v2, v3);
      v11 = Next;
      curRow = self->_curRow;
      if (curRow && self->_curRowIndex != Next)
      {
        self->_curRow = 0;

        self->_curRowIndex = 0x7FFFFFFF;
      }

      v7 = HIDWORD(v11);
      v8 = HIWORD(v11);
      curTile = self->_curTile;
      if (curTile)
      {
        location = self->_curTileRange.location;
        if (v11 < location || v11 - location >= self->_curTileRange.length)
        {
          self->_curTile = 0;

          self->_curTileRange = *MEMORY[0x277D81490];
        }
      }

      goto LABEL_55;
    }

    if (!self->_curTile)
    {
      v16 = objc_msgSend_i_tileStartingAtOrBeforeRowIndex_outTileRange_(self->_dataStore, a2, location_low, &v88);
      v17 = self->_curTile;
      self->_curTile = v16;

      if (!self->_curTile)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDataStoreIterator getNext]", v3);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 226, 0, "invalid nil value for '%{public}s'", "_curTile");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
        if (!self->_curTile)
        {
          goto LABEL_61;
        }
      }

      v28 = v88.location;
      if (v5 < v88.location || v5 - v88.location >= v88.length)
      {
        v29 = objc_msgSend_i_tileStartingAtOrAfterRowIndex_outTileRange_(self->_dataStore, a2, location_low, &v88);
        v30 = self->_curTile;
        self->_curTile = v29;

        v28 = v88.location;
        v31 = self->_curTile;
        if (v31)
        {
          location_low = LODWORD(v88.location);
        }

        else
        {
          location_low = 0x7FFF7FFFFFFFLL;
        }

        if (!v31)
        {
LABEL_61:
          objc_msgSend_terminate(self, a2, v18, v3);
          v8 = 0;
          LODWORD(v11) = 0x7FFFFFFF;
          LOWORD(v7) = 0x7FFF;
          goto LABEL_71;
        }

        v8 = 0;
        v7 = HIDWORD(location_low);
      }

      if (v28 > objc_msgSend_lastCellID(self->_region, a2, v18, v3))
      {
        goto LABEL_61;
      }

      self->_curTileRange = v88;
      if (!self->_curTile)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDataStoreIterator getNext]", v3);
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v35);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 249, 0, "invalid nil value for '%{public}s'", "_curTile");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
      }
    }

    if (!self->_curRow)
    {
      LODWORD(v88.location) = location_low - LODWORD(self->_curTileRange.location);
      v45 = objc_msgSend_rowInfoAtOrAfterTileRowIndex_outTileRowIndex_(self->_curTile, a2, LODWORD(v88.location), &v88);
      v46 = self->_curRow;
      self->_curRow = v45;

      if (!self->_curRow)
      {
        v83 = self->_curTileRange.location;
        length = self->_curTileRange.length;
        v11 = length + v83;
        objc_msgSend_advanceToCellID_(self->_regionIterator, v47, (length + v83), v49);
        goto LABEL_52;
      }

      v50 = LODWORD(v88.location) + LODWORD(self->_curTileRange.location);
      self->_curRowIndex = v50;
      if (v50 <= location_low)
      {
        v8 = v8;
      }

      else
      {
        v8 = 0;
      }

      if (v50 <= location_low)
      {
        location_low = location_low;
      }

      else
      {
        LOWORD(v7) = 0;
        location_low = v50;
      }

      if (v50 > objc_msgSend_lastCellID(self->_region, v47, v48, v49))
      {
        goto LABEL_61;
      }

      if ((objc_msgSend_intersectsRow_(self->_region, a2, self->_curRowIndex, v3) & 1) == 0)
      {
        objc_msgSend_advanceToCellID_(self->_regionIterator, v51, (v7 << 32) | (v8 << 48) | location_low, v52);
        goto LABEL_54;
      }

      if (!self->_curRow)
      {
        v53 = MEMORY[0x277D81150];
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSTDataStoreIterator getNext]", v52);
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v56);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 287, 0, "invalid nil value for '%{public}s'", "_curRow");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
      }

      if ((objc_msgSend_intersectsRow_(self->_region, v51, self->_curRowIndex, v52) & 1) == 0)
      {
        v62 = MEMORY[0x277D81150];
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTDataStoreIterator getNext]", v3);
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v63, v66, 288, 0, "should now have a row that intersects the region");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
      }
    }

    v41 = self->_curRow;
    v42 = self->_columnOrderReversed ? objc_msgSend_cellIndexAtOrBeforeIndex_(v41, a2, v7, v3) : objc_msgSend_cellIndexAtOrAfterIndex_(v41, a2, v7, v3);
    v7 = v42;
    if (v42 != 0x7FFF)
    {
      break;
    }

    v11 = self->_curRowIndex + 1;
    objc_msgSend_advanceToCellID_(self->_regionIterator, v43, v11, v44);
LABEL_52:
    v8 = 0;
    LOWORD(v7) = 0;
LABEL_55:
    v9 ^= 1u;
    v5 = v11;
    v85 = v7 == 0x7FFF || v11 == 0x7FFFFFFF;
    location_low = v11;
    if (v85)
    {
      goto LABEL_71;
    }
  }

  if (location_low == 0x7FFFFFFF)
  {
    v71 = MEMORY[0x277D81150];
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTDataStoreIterator getNext]", v44);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDataStoreIterator.mm", v74);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v76, v72, v75, 311, 0, "should now have a valid cellID at this point");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79);
  }

  v80 = (v8 << 48) | (v7 << 32);
  if ((objc_msgSend_containsCellID_(self->_region, v43, v80 | location_low, v44) & 1) == 0 || (searchMask = self->_searchMask) != 0 && (objc_msgSend_searchCellStorageRefAtColumnIndex_searchMask_(self->_curRow, v81, v7, searchMask) & 1) == 0)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, v81, v80 | location_low, searchMask);
LABEL_54:
    v11 = location_low;
    goto LABEL_55;
  }

  if (self->_columnOrderReversed)
  {
    if (v7)
    {
      v86 = v7 - 1;
      goto LABEL_68;
    }

    objc_msgSend_advanceToCellID_(self->_regionIterator, v81, (location_low + 1) | 0x3E700000000, searchMask);
  }

  else if (v7 == 999)
  {
    objc_msgSend_advanceToCellID_(self->_regionIterator, v81, (location_low + 1), searchMask);
  }

  else
  {
    v86 = v7 + 1;
LABEL_68:
    objc_msgSend_advanceToCellID_(self->_regionIterator, v81, location_low | (v86 << 32), searchMask);
  }

  LODWORD(v11) = location_low;
LABEL_71:
  self->_curCellID.row = v11;
  self->_curCellID.column = v7;
  *&self->_curCellID._preserveRow = v8;
  return ((v8 << 48) | (v7 << 32) | v11);
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
  v12 = 0;
  do
  {
    v11 = v7;
    NextCellData = objc_msgSend_getNextCellData_(self, v4, &v11, v5);
    v9 = v11;

    if (!NextCellData)
    {
      break;
    }

    v10 = objc_autoreleasePoolPush();
    blockCopy[2](blockCopy, v9, &v12);
    objc_autoreleasePoolPop(v10);
    v7 = v9;
  }

  while ((v12 & 1) == 0);
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
  v7 = Next == 0x7FFFFFFF || (Next & 0xFFFF00000000) == 0x7FFF00000000;
  v8 = !v7;
  if (!v7)
  {
    v9 = objc_alloc_init(TSTMutableCellIteratorData);
    objc_msgSend_setCellID_(v9, v10, Next, v11);
    objc_msgSend_updateCellData_(self, v12, v9, v13);
    if (data)
    {
      v14 = v9;
      *data = v9;
    }
  }

  return v8;
}

- (void)terminate
{
  if (!self->_terminated)
  {
    objc_msgSend_terminate(self->_regionIterator, a2, v2, v3);
    self->_terminated = 1;
  }
}

- (_NSRange)curTileRange
{
  length = self->_curTileRange.length;
  location = self->_curTileRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (TSTPerformanceLoggingToken)logToken
{
  v3 = self->_logToken.logHandle;
  signpostID = self->_logToken.signpostID;
  result.signpostID = signpostID;
  result.logHandle = v3;
  return result;
}

- (void)setLogToken:(TSTPerformanceLoggingToken)token
{
  signpostID = token.signpostID;
  logHandle = self->_logToken.logHandle;
  self->_logToken.logHandle = token.logHandle;
  v6 = token.logHandle;

  self->_logToken.signpostID = signpostID;
}

@end