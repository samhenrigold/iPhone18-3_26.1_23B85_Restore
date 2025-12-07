@interface TSTCellIterator
- (BOOL)getNextCellData:(id *)data;
- (TSTCellIterator)initWithTableInfo:(id)info flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTCellIterator)initWithTableInfo:(id)info range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTCellIterator)initWithTableInfo:(id)info region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTCellIterator)initWithTableInfo:(id)info region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags clampingRange:(TSUCellRect)range;
- (TSTCellIterator)initWithTableInfo:(id)info tableModel:(id)model region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags clampingRange:(TSUCellRect)range;
- (TSUCellCoord)p_getNextCellID;
- (id).cxx_construct;
- (id)nextCellData;
- (void)iterateCellsUsingBlock:(id)block;
- (void)p_updateDataForCellID:(TSUCellCoord)d;
- (void)p_updateDataForMergeAtCellID:(TSUCellCoord)d;
- (void)terminate;
@end

@implementation TSTCellIterator

- (TSTCellIterator)initWithTableInfo:(id)info tableModel:(id)model region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags clampingRange:(TSUCellRect)range
{
  infoCopy = info;
  modelCopy = model;
  regionCopy = region;
  if (!regionCopy)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v16);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 74, 0, "caller should pass in region pointer");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v59, v60, v61);
    regionCopy = objc_msgSend_invalidRegion(TSTCellRegion, v62, v63, v64);
    if ((flags & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_22:
    flags &= ~1uLL;
    goto LABEL_23;
  }

  if (flags)
  {
    goto LABEL_22;
  }

LABEL_3:
  v18 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v14, v15, v16);
  v22 = objc_msgSend_boundingCellRange(regionCopy, v19, v20, v21);
  v26 = WORD2(v22);
  if (v22 == 0x7FFFFFFF || (v22 & 0xFFFF00000000) == 0x7FFF00000000 || (v27 = v23, !(v23 >> 32)) || !v23 || (v28 = v22 + HIDWORD(v23) - 1, v28 >= objc_msgSend_maxNumberOfRows(v18, v23, v24, v25)) || (v27 ? (v29 = v26 == 0x7FFF) : (v29 = 1), !v29 ? (v30 = (v27 + v26 - 1)) : (v30 = 0x7FFF), objc_msgSend_maxNumberOfColumns(v18, v23, v24, v25) <= v30))
  {
    v52 = objc_msgSend_invalidRegion(TSTCellRegion, v23, v24, v25);

    regionCopy = v52;
  }

  else
  {
    if (v28 >= objc_msgSend_maxNumberOfRows(v18, v23, v24, v25))
    {
      v231 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v33);
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v231, v38, v34, v37, 91, 0, "Tried to create iterator with range larger than is possible.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41);
    }

    if (objc_msgSend_maxNumberOfColumns(v18, v31, v32, v33) <= v30)
    {
      v232 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v43);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v232, v48, v44, v47, 92, 0, "Tried to create iterator with range larger than is possible.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
    }
  }

LABEL_23:
  v235.receiver = self;
  v235.super_class = TSTCellIterator;
  v65 = [(TSTCellIterator *)&v235 init];
  p_isa = &v65->super.isa;
  v67 = v65;
  if (!v65)
  {
    goto LABEL_76;
  }

  objc_storeStrong(&v65->_tableInfo, info);
  objc_storeStrong(p_isa + 9, model);
  v68 = objc_alloc_init(TSTMutableCellIteratorData);
  cellData = v67->_cellData;
  v67->_cellData = v68;

  v73 = objc_msgSend_newCell(v67->_tableModel, v70, v71, v72);
  objc_msgSend_setCell_(v67->_cellData, v74, v73, v75);

  v77 = objc_msgSend_regionByIntersectingRange_(regionCopy, v76, *&range.origin, *&range.size);

  if ((flags & 2) != 0)
  {
    flags &= 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v81 = p_isa[8];
    if (v81)
    {
      v82 = objc_msgSend_boundingCellRange(v77, v78, v79, v80);
      if (objc_msgSend_anyHiddenColumnsInCellRange_(v81, v83, v82, v83))
      {
        v87 = objc_msgSend_hiddenStates(p_isa[8], v84, v85, v86);
        v91 = objc_msgSend_hiddenColumnIndexes(v87, v88, v89, v90);
        v94 = objc_msgSend_regionBySubtractingColumnIndexes_(v77, v92, v91, v93);
      }

      else
      {
        v94 = v77;
      }

      v124 = p_isa[8];
      v125 = objc_msgSend_boundingCellRange(v94, v84, v85, v86);
      if (objc_msgSend_anyHiddenRowsInCellRange_(v124, v126, v125, v126))
      {
        v128 = objc_msgSend_hiddenStates(p_isa[8], v78, v127, v80);
        v132 = objc_msgSend_hiddenRowIndexes(v128, v129, v130, v131);
        v77 = objc_msgSend_regionBySubtractingRowIndexes_(v94, v133, v132, v134);
      }

      else
      {
        v77 = v94;
      }
    }

    else
    {
      v95 = objc_msgSend_hiddenStatesOwner(p_isa[9], v78, v79, v80);
      v99 = objc_msgSend_hiddenStates(v95, v96, v97, v98);

      v103 = objc_msgSend_boundingCellRange(v77, v100, v101, v102);
      v105 = v104;
      v106 = objc_msgSend_indexesOfHiddenColumnsInBaseCellRange_(v99, v104, v103, v104);
      if (objc_msgSend_count(v106, v107, v108, v109))
      {
        v112 = objc_msgSend_regionBySubtractingColumnIndexes_(v77, v110, v106, v111);

        v77 = v112;
      }

      v113 = objc_msgSend_indexesOfHiddenRowsInBaseCellRange_(v99, v110, v103, v105);
      if (objc_msgSend_count(v113, v114, v115, v116))
      {
        v120 = objc_msgSend_hiddenRowIndexes(v99, v117, v118, v119);
        v123 = objc_msgSend_regionBySubtractingRowIndexes_(v77, v121, v120, v122);

        v77 = v123;
      }
    }
  }

  v135 = p_isa[8];
  if (!v135)
  {
    flags &= 0xFFFFFFFFFFFFFFE5;
    goto LABEL_43;
  }

  if ((flags & 0x18) == 0)
  {
LABEL_43:
    regionCopy = v77;
    goto LABEL_46;
  }

  v136 = objc_msgSend_indexesForSummaryRowsInRegion_(v135, v78, v77, v80);
  v142 = objc_msgSend_indexesForCategoryColumnsInRegion_(p_isa[8], v137, v77, v138);
  if ((flags & 8) != 0)
  {
    v146 = objc_msgSend_indexesForLabelRows(p_isa[8], v139, v140, v141);
    v149 = objc_msgSend_regionBySubtractingRowIndexes_(v77, v147, v146, v148);

    v152 = objc_msgSend_regionBySubtractingRowIndexes_(v149, v150, v136, v151);

    regionCopy = objc_msgSend_regionBySubtractingColumnIndexes_(v152, v153, v142, v154);

    flags &= 0xFFFFFFFFFFFFFFF5;
  }

  else
  {
    v143 = objc_msgSend_regionByIntersectingRowIndices_(v77, v139, v136, v141);

    regionCopy = objc_msgSend_regionBySubtractingColumnIndexes_(v143, v144, v142, v145);

    flags &= 0xFFFFFFFFFFFFFFE5;
  }

LABEL_46:
  objc_storeStrong(p_isa + 10, regionCopy);
  if ((searchFlags & 0x40000000) != 0)
  {
    v158 = 50;
  }

  else
  {
    if ((searchFlags & 0x20000000) == 0)
    {
      goto LABEL_51;
    }

    searchFlags &= 0xFFFFFFFF9FFFFFFFLL;
    v158 = 49;
  }

  *(&v67->super.isa + v158) = 1;
LABEL_51:
  if ((searchFlags & 0x3EFF800) != 0 && (v67->_returnEmptyCells || v67->_returnOneEmptyCell))
  {
    v159 = MEMORY[0x277D81150];
    v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v155, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v157);
    v163 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v162);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v164, v160, v163, 178, 0, "cannot use iterator flags to return all empty cells and also use flags to only search for specific kinds of cells");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v165, v166, v167);
  }

  v168 = p_isa[8];
  if (v168)
  {
    v169 = objc_alloc(objc_msgSend_iteratorClass(v168, v155, v156, v157));
    v171 = objc_msgSend_initWithInfo_region_flags_searchMask_(v169, v170, p_isa[8], p_isa[10], flags & 0x204, searchFlags & 0x3EFF800);
  }

  else
  {
    v172 = [TSTDataStoreIterator alloc];
    v171 = objc_msgSend_initWithModel_region_flags_searchMask_(v172, v173, p_isa[9], p_isa[10], flags & 0x204, searchFlags & 0x3EFF800);
  }

  dataStoreIterator = v67->_dataStoreIterator;
  v67->_dataStoreIterator = v171;

  if ((searchFlags & 0x400) != 0)
  {
    if ((flags & 0x80) == 0)
    {
      v179 = MEMORY[0x277D81150];
      v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v175, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v176);
      v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v182);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v179, v184, v180, v183, 198, 0, "unsupported options, searching for borders but not fetching them");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v185, v186, v187);
    }

    v188 = [TSTStrokeSidecarIterator alloc];
    v192 = objc_msgSend_strokeSidecar(p_isa[9], v189, v190, v191);
    v178 = objc_msgSend_initWithStrokeSidecar_region_(v188, v193, v192, p_isa[10]);

    v194 = objc_alloc_init(TSTContentComposingIterator);
    objc_msgSend_addIterator_(v194, v195, v67->_dataStoreIterator, v196);
    objc_msgSend_addIterator_(v194, v197, v178, v198);
    flags &= ~0x80uLL;
    contentIterator = v67->_contentIterator;
    v67->_contentIterator = v194;
  }

  else
  {
    v177 = v67->_dataStoreIterator;
    v178 = v67->_contentIterator;
    v67->_contentIterator = v177;
  }

  if (v67->_returnOneEmptyCell || v67->_returnEmptyCells)
  {
    v203 = p_isa[10];
    if ((flags & 4) != 0)
    {
      v204 = objc_msgSend_newRightToLeftIterator(v203, v200, v201, v202);
    }

    else
    {
      v204 = objc_msgSend_newIterator(v203, v200, v201, v202);
    }

    regionIterator = v67->_regionIterator;
    v67->_regionIterator = v204;

    objc_msgSend_getNext(v67->_contentIterator, v206, v207, v208);
  }

  if ((flags & 0x40) != 0)
  {
    v67->_rowForColumnIndexesWithMerges = 0x7FFFFFFF;
    v209 = 1;
  }

  else
  {
    v209 = 0;
  }

  v67->_returnMergeRanges = v209;
  v67->_returnCellContents = (flags & 0x120) == 0;
  v67->_returnOnlyFormulas = BYTE1(flags) & 1;
  v210 = flags & 0xFFFFFFFFFFFFFC9BLL;
  if ((flags & 0xFFFFFFFFFFFFFC9BLL) != 0)
  {
    v211 = MEMORY[0x277D81150];
    v212 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v202);
    v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v213, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v214);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v211, v216, v212, v215, 247, 0, "flags remain 0x%lx, flags should all be consumed by this point ", v210);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v217, v218, v219);
  }

  v220 = searchFlags & 0xFFFFFFFFBC1003FFLL;
  if ((searchFlags & 0xFFFFFFFFBC1003FFLL) != 0)
  {
    v221 = MEMORY[0x277D81150];
    v222 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "[TSTCellIterator initWithTableInfo:tableModel:region:flags:searchFlags:clampingRange:]", v202);
    v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v223, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v224);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v221, v226, v222, v225, 248, 0, "searchFlags remain 0x%lx, searchFlags should all be consumed by this point ", v220);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v227, v228, v229);
  }

LABEL_76:

  return v67;
}

- (TSTCellIterator)initWithTableInfo:(id)info region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags clampingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  infoCopy = info;
  regionCopy = region;
  v18 = objc_msgSend_baseTableModel(infoCopy, v15, v16, v17);
  v20 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(self, v19, infoCopy, v18, regionCopy, flags, searchFlags, origin, size);

  return v20;
}

- (TSTCellIterator)initWithTableInfo:(id)info flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  infoCopy = info;
  v12 = objc_msgSend_baseTableModel(infoCopy, v9, v10, v11);
  v16 = objc_msgSend_range(infoCopy, v13, v14, v15);
  v18 = objc_msgSend_regionFromRange_(TSTCellRegion, v17, v16, v17);
  v22 = objc_msgSend_range(infoCopy, v19, v20, v21);
  v24 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(self, v23, infoCopy, v12, v18, flags, searchFlags, v22, v23);

  return v24;
}

- (TSTCellIterator)initWithTableInfo:(id)info range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  infoCopy = info;
  v15 = objc_msgSend_baseTableModel(infoCopy, v12, v13, v14);
  v17 = objc_msgSend_regionFromRange_(TSTCellRegion, v16, origin, size);
  v21 = objc_msgSend_range(infoCopy, v18, v19, v20);
  v23 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(self, v22, infoCopy, v15, v17, flags, searchFlags, v21, v22);

  return v23;
}

- (TSTCellIterator)initWithTableInfo:(id)info region:(id)region flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  infoCopy = info;
  regionCopy = region;
  v15 = objc_msgSend_baseTableModel(infoCopy, v12, v13, v14);
  v19 = objc_msgSend_range(infoCopy, v16, v17, v18);
  v21 = objc_msgSend_initWithTableInfo_tableModel_region_flags_searchFlags_clampingRange_(self, v20, infoCopy, v15, regionCopy, flags, searchFlags, v19, v20);

  return v21;
}

- (void)iterateCellsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  v13 = 0;
  do
  {
    v12 = v7;
    NextCellData = objc_msgSend_getNextCellData_(self, v4, &v12, v5);
    v9 = v12;

    if (!NextCellData)
    {
      break;
    }

    v11 = objc_autoreleasePoolPush();
    blockCopy[2](blockCopy, v9, &v13);
    objc_autoreleasePoolPop(v11);
    v7 = v9;
  }

  while ((v13 & 1) == 0);
  objc_msgSend_terminate(self, v4, v10, v5);
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
  NextCellID = objc_msgSend_p_getNextCellID(self, a2, data, v3);
  v9 = NextCellID == 0x7FFFFFFF || (NextCellID & 0xFFFF00000000) == 0x7FFF00000000;
  v10 = !v9;
  if (!v9)
  {
    objc_msgSend_p_updateDataForCellID_(self, v6, NextCellID, v8);
    if (data)
    {
      *data = self->_cellData;
    }
  }

  return v10;
}

- (void)terminate
{
  objc_msgSend_terminate(self->_contentIterator, a2, v2, v3);
  regionIterator = self->_regionIterator;

  objc_msgSend_terminate(regionIterator, v5, v6, v7);
}

- (TSUCellCoord)p_getNextCellID
{
  regionIterator = self->_regionIterator;
  if (!regionIterator)
  {
    goto LABEL_6;
  }

  if (!self->_terminateRegionIterator)
  {
    while (1)
    {
      Next = objc_msgSend_getNext(self->_regionIterator, a2, v2, v3);
      v14 = objc_msgSend_advanceToCellID_(self->_contentIterator, v17, Next, v18);
      if (v14 < Next || (v15 = HIDWORD(v14), v14 == Next) && WORD2(v14) < WORD2(Next))
      {
        v14 = objc_msgSend_getNext(self->_contentIterator, v19, v20, v21);
        v15 = HIDWORD(v14);
      }

      if (v14 == Next && (v14 & 0x101000000000000 | (v15 << 32)) == (Next & 0x101FFFF00000000))
      {
        return (v14 & 0xFFFF0000FFFFFFFFLL | (v15 << 32));
      }

      if (!self->_returnOneEmptyCell)
      {
        break;
      }

      tableInfo = self->_tableInfo;
      if (tableInfo)
      {
        v24 = objc_msgSend_mergeRangeAtCellID_(tableInfo, v19, Next, v21);
      }

      else
      {
        v24 = objc_msgSend_mergedRangeForBaseCellCoord_(self->_tableModel, v19, Next, v21);
      }

      if (v24 == 0x7FFFFFFF || (v24 & 0xFFFF00000000) == 0x7FFF00000000 || !(a2 >> 32) || !a2 || v24 == Next && ((v24 ^ Next) & 0xFFFF00000000) == 0)
      {
        v15 = HIDWORD(Next);
        *&self->_returnOneEmptyCell = 256;
LABEL_27:
        v14 = Next;
        return (v14 & 0xFFFF0000FFFFFFFFLL | (v15 << 32));
      }
    }

    v15 = HIDWORD(Next);
    goto LABEL_27;
  }

  v6 = objc_msgSend_getNext(regionIterator, a2, v2, v3);
  objc_msgSend_terminate(self->_regionIterator, v7, v8, v9);
  objc_msgSend_setRegionIterator_(self, v10, 0, v11);
  v14 = objc_msgSend_advanceToCellID_(self->_contentIterator, v12, v6, v13);
  if (v14 < v6 || (v15 = HIDWORD(v14), v14 == v6) && WORD2(v14) < WORD2(v6))
  {
LABEL_6:
    v14 = objc_msgSend_getNext(self->_contentIterator, a2, v2, v3);
    v15 = HIDWORD(v14);
  }

  return (v14 & 0xFFFF0000FFFFFFFFLL | (v15 << 32));
}

- (void)p_updateDataForMergeAtCellID:(TSUCellCoord)d
{
  row = d.row;
  dCopy = d;
  if (self->_rowForColumnIndexesWithMerges != d.row)
  {
    self->_rowForColumnIndexesWithMerges = d.row;
    sub_2210BE918(&self->_columnIndexToMergeRangeMap.__table_.__bucket_list_.__ptr_);
    v11 = objc_msgSend_boundingCellRange(self->_region, v5, v6, v7);
    v12 = v8 | 0x100000000;
    tableInfo = self->_tableInfo;
    if (tableInfo)
    {
      objc_msgSend_mergeRangesIntersectingRange_(tableInfo, v8, v11 & 0xFFFFFFFF00000000 | row, v8 | 0x100000000);
      origin = v42.origin;
      size = v42.size;
    }

    else
    {
      v16 = objc_msgSend_mergeOwner(self->_tableModel, v8, v9, v10);
      v19 = v16;
      if (v16)
      {
        objc_msgSend_mergeRangesIntersectingBaseCellRect_(v16, v17, v11 & 0xFFFFFFFF00000000 | row, v12);
      }

      else
      {
        __p = 0;
        v40 = 0;
        v41 = 0;
      }

      objc_msgSend_mergeListFromModelMergeList_(TSTMergeOwner, v17, &__p, v18);
      origin = v42.origin;
      size = v42.size;
      v42.size = 0;
      v43 = 0;
      v42.origin = 0;
      if (__p)
      {
        v40 = __p;
        operator delete(__p);
      }
    }

    if (origin != *&size)
    {
      v20 = origin;
      do
      {
        v42 = *v20;
        for (i = TSUCellRect::firstColumn(&v42); ; i = v38 + 1)
        {
          v38 = i;
          if (TSUCellRect::maxColumn(&v42) <= i)
          {
            break;
          }

          __p = &v38;
          v22 = sub_22112E6A0(&self->_columnIndexToMergeRangeMap.__table_.__bucket_list_.__ptr_, &v38, &unk_2217E0367, &__p);
          *(v22 + 20) = v42;
        }

        ++v20;
      }

      while (v20 != *&size);
    }

    if (origin)
    {
      operator delete(origin);
    }
  }

  v23 = sub_2210C3024(&self->_columnIndexToMergeRangeMap.__table_.__bucket_list_.__ptr_, &dCopy.column);
  if (!v23)
  {
    goto LABEL_29;
  }

  v26 = *(v23 + 20);
  v27 = v26 == 0x7FFFFFFF || (v26 & 0xFFFF00000000) == 0x7FFF00000000;
  if (v27 || ((v25 = *(v23 + 28), HIDWORD(v25)) ? (v28 = v25 == 0) : (v28 = 1), v28))
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCellIterator p_updateDataForMergeAtCellID:]", v25);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 429, 0, "found this column in the cached merge ranges, so expected a merge range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
LABEL_29:
    v25 = 0;
    v26 = 0x7FFF7FFFFFFFLL;
  }

  objc_msgSend_setMergeRange_(self->_cellData, v24, v26, v25);
}

- (void)p_updateDataForCellID:(TSUCellCoord)d
{
  objc_msgSend_setCellID_(self->_cellData, a2, *&d, v3);
  objc_msgSend_setMergeRange_(self->_cellData, v6, 0x7FFF7FFFFFFFLL, 0);
  if ((*&d & 0xFFF800000000) > 0x3E700000000 || d.row >= 0xF4240)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCellIterator p_updateDataForCellID:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellIterator.mm", v12);
    v14 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v13, 447, 0, "cell iterator was asked for cellID %@ that is outside the table bounds", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  if (self->_returnCellContents)
  {
    objc_msgSend_updateCellData_(self->_contentIterator, v7, self->_cellData, v8);
  }

  else if (self->_returnOnlyFormulas)
  {
    objc_msgSend_updateFormulaForCellData_(self->_contentIterator, v7, self->_cellData, v8);
  }

  if (self->_returnMergeRanges)
  {

    (MEMORY[0x2821F9670])(self, sel_p_updateDataForMergeAtCellID_, d, v8);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end