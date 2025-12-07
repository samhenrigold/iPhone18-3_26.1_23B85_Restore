@interface TSTStrokeSidecarIterator
+ (id)p_filterRegion:(id)region strokeSidecar:(id)sidecar;
- (TSTStrokeSidecarIterator)initWithStrokeSidecar:(id)sidecar region:(id)region;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
- (void)updateCellData:(id)data;
@end

@implementation TSTStrokeSidecarIterator

- (TSTStrokeSidecarIterator)initWithStrokeSidecar:(id)sidecar region:(id)region
{
  sidecarCopy = sidecar;
  regionCopy = region;
  if (!regionCopy)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTStrokeSidecarIterator initWithStrokeSidecar:region:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecarIterator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 43, 0, "invalid nil value for '%{public}s'", "region");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_p_filterRegion_strokeSidecar_(TSTStrokeSidecarIterator, v8, regionCopy, sidecarCopy);

  v32.receiver = self;
  v32.super_class = TSTStrokeSidecarIterator;
  v21 = [(TSTStrokeSidecarIterator *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_strokeSidecar, sidecar);
    objc_storeStrong(&v22->_region, v20);
    v26 = objc_msgSend_newIterator(v22->_region, v23, v24, v25);
    regionIterator = v22->_regionIterator;
    v22->_regionIterator = v26;

    v22->_curCellID = objc_msgSend_firstCellID(v22->_region, v28, v29, v30);
  }

  return v22;
}

+ (id)p_filterRegion:(id)region strokeSidecar:(id)sidecar
{
  regionCopy = region;
  sidecarCopy = sidecar;
  v9 = objc_msgSend_boundingCellRange(regionCopy, v6, v7, v8) >> 32;
  v11 = v10;
  v14 = objc_msgSend_boundingCellRange(regionCopy, v10, v12, v13);
  v16 = v15;
  v59 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v17 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v91 = 0;
  v92 = &v91;
  v93 = 0x4812000000;
  v94 = sub_22134A5F0;
  v95 = sub_22134A614;
  v96 = &unk_22188E88F;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v90 = 0x7FFF;
  v72.origin = objc_msgSend_boundingCellRange(regionCopy, v18, v19, v20);
  v72.size = v21;
  v22 = TSUCellRect::lastColumn(&v72);
  v23 = HIDWORD(v16);
  v24 = v14;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = sub_22134A62C;
  v80[3] = &unk_278462EE0;
  v25 = v17;
  v81 = v25;
  v26 = sidecarCopy;
  v82 = v26;
  v86 = v24;
  v87 = v23;
  v27 = v59;
  v83 = v27;
  v84 = v89;
  v85 = &v91;
  v88 = v22;
  objc_msgSend_enumerateColumnsUsingBlock_(regionCopy, v28, v80, v29);
  objc_msgSend_removeAllIndexes(v27, v30, v31, v32);
  v72.origin = 0;
  v72.size = &v72;
  v73 = 0x4812000000;
  v74 = sub_22134A5F0;
  v75 = sub_22134A614;
  v76 = &unk_22188E88F;
  v78 = 0;
  v79 = 0;
  __p = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x2020000000;
  v71 = 0x7FFFFFFF;
  v69.origin = objc_msgSend_boundingCellRange(regionCopy, v33, v34, v35);
  v69.size = v36;
  v37 = TSUCellRect::lastRow(&v69);
  v38 = v9;
  v39 = v11;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_22134AA68;
  v60[3] = &unk_278462F30;
  v40 = v25;
  v61 = v40;
  v41 = v26;
  v62 = v41;
  v66 = v38;
  v67 = v39;
  v42 = v27;
  v63 = v42;
  v64 = v70;
  v65 = &v72;
  v68 = v37;
  objc_msgSend_enumerateRowsUsingBlock_(regionCopy, v43, v60, v44);
  v47 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v45, (v92 + 6), v46);
  v50 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v48, *&v72.size + 48, v49);
  v53 = objc_msgSend_regionByAddingRegion_(v47, v51, v50, v52);
  v56 = objc_msgSend_regionByIntersectingRegion_(v53, v54, regionCopy, v55);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(&v72, 8);
  if (__p)
  {
    v78 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v89, 8);
  _Block_object_dispose(&v91, 8);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  return v56;
}

- (void)updateCellData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_cellID(dataCopy, v4, v5, v6);
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTStrokeSidecarIterator updateCellData:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecarIterator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 227, 0, "invalid cellID in cellData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_cellID(dataCopy, v8, v9, v10);
  curCellID = self->_curCellID;
  if (v20 == curCellID.row && ((*&curCellID ^ v20) & 0x101FFFF00000000) == 0)
  {
    strokeSidecar = self->_strokeSidecar;
    v48 = objc_msgSend_cellID(dataCopy, v21, v22, v23);
    v44 = objc_msgSend_cellBorderAtCellID_(strokeSidecar, v49, v48, v50);
    v54 = objc_msgSend_cell(dataCopy, v51, v52, v53);
    objc_msgSend_setCellBorder_(v54, v55, v44, v56);
  }

  else
  {
    v25 = objc_msgSend_cellID(dataCopy, v21, v22, v23);
    row = self->_curCellID.row;
    if (row <= v25 && (row != v25 || self->_curCellID.column <= WORD2(v25)))
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTStrokeSidecarIterator updateCellData:]", v28);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecarIterator.mm", v33);
      objc_msgSend_cellID(dataCopy, v35, v36, v37);
      v38 = NSStringFromTSUCellCoord();
      v39 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v40, v31, v34, 235, 0, "cellID %@ should be before cursor cellID %@", v38, v39);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
    }

    v44 = objc_msgSend_cell(dataCopy, v26, v27, v28);
    objc_msgSend_setCellBorder_(v44, v45, 0, v46);
  }
}

- (TSUCellCoord)getNext
{
  Next = objc_msgSend_getNext(self->_regionIterator, a2, v2, v3);
  self->_curCellID = Next;
  return Next;
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

@end