@interface TSTLayoutDynamicResizeInfo
- (BOOL)hasHeightForRow:(unsigned int)row;
- (BOOL)hasWidthForColumn:(unsigned __int16)column;
- (CGSize)capturedTableSize;
- (TSTLayoutDynamicResizeInfo)initWithDynamicResizeInfo:(id)info;
- (TSTLayoutDynamicResizeInfo)initWithLayoutEngine:(id)engine;
- (TSTLayoutDynamicResizeInfo)initWithLayoutEngine:(id)engine columnRegion:(id)region rowRegion:(id)rowRegion;
- (double)getColumnInitialWidth:(unsigned __int16)width;
- (double)getColumnWidth:(unsigned __int16)width;
- (double)getColumnWidthResize:(unsigned __int16)resize;
- (double)getMinimumColumnWidth:(unsigned __int16)width;
- (double)getMinimumRowHeight:(unsigned int)height;
- (double)getRowHeight:(unsigned int)height;
- (double)getRowHeightResize:(unsigned int)resize;
- (double)getRowInitialHeight:(unsigned int)height;
- (double)totalCurrentColumnWidths;
- (double)totalCurrentRowHeights;
- (double)totalMinimumColumnWidths;
- (double)totalMinimumRowHeights;
- (id).cxx_construct;
- (id)columnWidths;
- (id)rowHeights;
- (void)enumerateColumnWidthsUsingBlock:(id)block;
- (void)enumerateRowHeightsUsingBlock:(id)block;
- (void)p_captureRowColumnInformation:(id)information columnRegion:(id)region rowRegion:(id)rowRegion;
@end

@implementation TSTLayoutDynamicResizeInfo

- (TSTLayoutDynamicResizeInfo)initWithLayoutEngine:(id)engine columnRegion:(id)region rowRegion:(id)rowRegion
{
  engineCopy = engine;
  regionCopy = region;
  rowRegionCopy = rowRegion;
  v17.receiver = self;
  v17.super_class = TSTLayoutDynamicResizeInfo;
  v14 = [(TSTLayoutDynamicResizeInfo *)&v17 init];
  if (v14)
  {
    v14->_tableRowsBehavior = objc_msgSend_tableRowsBehavior(engineCopy, v11, v12, v13);
    objc_msgSend_p_captureRowColumnInformation_columnRegion_rowRegion_(v14, v15, engineCopy, regionCopy, rowRegionCopy);
    v14->_valid = 1;
  }

  return v14;
}

- (TSTLayoutDynamicResizeInfo)initWithLayoutEngine:(id)engine
{
  engineCopy = engine;
  v8 = objc_msgSend_cellRange(engineCopy, v5, v6, v7);
  v10 = objc_msgSend_regionFromRange_(TSTCellRegion, v9, v8, v9);
  v12 = objc_msgSend_initWithLayoutEngine_columnRegion_rowRegion_(self, v11, engineCopy, v10, v10);

  return v12;
}

- (TSTLayoutDynamicResizeInfo)initWithDynamicResizeInfo:(id)info
{
  infoCopy = info;
  v45.receiver = self;
  v45.super_class = TSTLayoutDynamicResizeInfo;
  v8 = [(TSTLayoutDynamicResizeInfo *)&v45 init];
  if (v8)
  {
    *(v8 + 152) = objc_msgSend_valid(infoCopy, v5, v6, v7);
    *(v8 + 39) = objc_msgSend_tableRowsBehavior(infoCopy, v9, v10, v11);
    v15 = objc_msgSend_rowRegion(infoCopy, v12, v13, v14);
    v16 = v8[25];
    v8[25] = v15;

    *(v8 + 40) = objc_msgSend_startRowIndex(infoCopy, v17, v18, v19);
    v23 = objc_msgSend_numberOfRows(infoCopy, v20, v21, v22);
    *(v8 + 41) = v23;
    if (v23 && v8 != infoCopy)
    {
      sub_22128026C(v8 + 1, infoCopy[1], infoCopy[2], (infoCopy[2] - infoCopy[1]) >> 3);
      sub_22128026C(v8 + 4, infoCopy[4], infoCopy[5], (infoCopy[5] - infoCopy[4]) >> 3);
      sub_22128026C(v8 + 7, infoCopy[7], infoCopy[8], (infoCopy[8] - infoCopy[7]) >> 3);
    }

    objc_msgSend_capturedRowHeightTotal(infoCopy, v24, v25, v26);
    v8[23] = v27;
    v31 = objc_msgSend_columnRegion(infoCopy, v28, v29, v30);
    v32 = v8[26];
    v8[26] = v31;

    *(v8 + 77) = objc_msgSend_startColumnIndex(infoCopy, v33, v34, v35);
    v39 = objc_msgSend_numberOfColumns(infoCopy, v36, v37, v38);
    *(v8 + 43) = v39;
    if (v39 && v8 != infoCopy)
    {
      sub_22128026C(v8 + 10, infoCopy[10], infoCopy[11], (infoCopy[11] - infoCopy[10]) >> 3);
      sub_22128026C(v8 + 13, infoCopy[13], infoCopy[14], (infoCopy[14] - infoCopy[13]) >> 3);
      sub_22128026C(v8 + 16, infoCopy[16], infoCopy[17], (infoCopy[17] - infoCopy[16]) >> 3);
    }

    objc_msgSend_capturedColumnWidthTotal(infoCopy, v40, v41, v42);
    v8[24] = v43;
  }

  return v8;
}

- (void)p_captureRowColumnInformation:(id)information columnRegion:(id)region rowRegion:(id)rowRegion
{
  informationCopy = information;
  regionCopy = region;
  rowRegionCopy = rowRegion;
  v14 = objc_msgSend_tableInfo(informationCopy, v11, v12, v13);
  v21 = objc_msgSend_partitioner(v14, v15, v16, v17);
  v22 = 1.0;
  if (v21)
  {
    v23 = objc_msgSend_partitioner(v14, v18, v19, v20);
    IsValid = objc_msgSend_scaleIsValid(v23, v24, v25, v26);

    v31 = 1.0;
    if (IsValid)
    {
      v32 = objc_msgSend_partitioner(v14, v28, v29, v30);
      objc_msgSend_scaleToFit(v32, v33, v34, v35);
      v31 = v36;

      v40 = objc_msgSend_partitioner(v14, v37, v38, v39);
      objc_msgSend_scaleToFit(v40, v41, v42, v43);
      v22 = v44;
    }
  }

  else
  {
    v31 = 1.0;
  }

  if (rowRegionCopy)
  {
    objc_storeStrong(&self->_rowRegion, rowRegion);
    self->_startRowIndex = objc_msgSend_boundingCellRange(rowRegionCopy, v45, v46, v47);
    objc_msgSend_boundingCellRange(rowRegionCopy, v48, v49, v50);
    self->_numberOfRows = HIDWORD(v51);
    self->_numberOfResizableRows = objc_msgSend_numberOfIntersectingRows(rowRegionCopy, v51, v52, v53);
    v120 = 0;
    v121 = &v120;
    v122 = 0x4812000000;
    v123 = sub_22141FF04;
    v124 = sub_22141FF28;
    v125 = &unk_22188E88F;
    numberOfRows = self->_numberOfRows;
    v112 = 0xBFF0000000000000;
    sub_221420DAC(&v126, numberOfRows, &v112);
    v112 = 0;
    v113 = &v112;
    v114 = 0x4812000000;
    v115 = sub_22141FF04;
    v116 = sub_22141FF28;
    v117 = &unk_22188E88F;
    v55 = self->_numberOfRows;
    v108 = 0;
    sub_221420DAC(&__p, v55, &v108);
    v108 = 0;
    v109 = &v108;
    v110 = 0x2020000000;
    v111 = 0;
    v104 = 0;
    v105 = &v104;
    v106 = 0x2020000000;
    v107 = 0xBFF0000000000000;
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v103 = 0xBFF0000000000000;
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0;
    isGrouped = objc_msgSend_isGrouped(informationCopy, v56, v57, v58);
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_22141FF40;
    v86[3] = &unk_278464DD0;
    v86[4] = self;
    v88 = &v120;
    v94 = v22;
    v95 = isGrouped;
    v87 = informationCopy;
    v89 = &v112;
    v90 = &v104;
    v91 = &v108;
    v92 = &v100;
    v93 = &v96;
    objc_msgSend_enumerateRowsUsingBlock_(rowRegionCopy, v60, v86, v61);
    v62 = v121;
    if (&self->_capturedRowHeights != (v121 + 6))
    {
      sub_22128026C(&self->_capturedRowHeights, v121[6], v121[7], (v121[7] - v121[6]) >> 3);
      v62 = v121;
    }

    if (&self->_currentRowHeights != (v62 + 6))
    {
      sub_22128026C(&self->_currentRowHeights, v62[6], v62[7], (v62[7] - v62[6]) >> 3);
    }

    if (&self->_minimumRowHeights != (v113 + 6))
    {
      sub_22128026C(&self->_minimumRowHeights, v113[6], v113[7], (v113[7] - v113[6]) >> 3);
    }

    *&self->_capturedRowHeightTotal = v97[3];

    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v100, 8);
    _Block_object_dispose(&v104, 8);
    _Block_object_dispose(&v108, 8);
    _Block_object_dispose(&v112, 8);
    if (__p)
    {
      v119 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v120, 8);
    if (v126)
    {
      v127 = v126;
      operator delete(v126);
    }
  }

  if (regionCopy)
  {
    objc_storeStrong(&self->_columnRegion, region);
    self->_startColumnIndex = objc_msgSend_boundingCellRange(regionCopy, v63, v64, v65) >> 32;
    objc_msgSend_boundingCellRange(regionCopy, v66, v67, v68);
    self->_numberOfColumns = v69;
    self->_numberOfResizableColumns = objc_msgSend_numberOfIntersectingColumns(regionCopy, v69, v70, v71);
    v120 = 0;
    v121 = &v120;
    v122 = 0x4812000000;
    v123 = sub_22141FF04;
    v124 = sub_22141FF28;
    v125 = &unk_22188E88F;
    numberOfColumns = self->_numberOfColumns;
    v112 = 0xBFF0000000000000;
    sub_221420DAC(&v126, numberOfColumns, &v112);
    v112 = 0;
    v113 = &v112;
    v114 = 0x4812000000;
    v115 = sub_22141FF04;
    v116 = sub_22141FF28;
    v117 = &unk_22188E88F;
    v73 = self->_numberOfColumns;
    v108 = 0;
    sub_221420DAC(&__p, v73, &v108);
    v108 = 0;
    v109 = &v108;
    v110 = 0x2020000000;
    LOWORD(v111) = 0;
    v104 = 0;
    v105 = &v104;
    v106 = 0x2020000000;
    v107 = 0xBFF0000000000000;
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v103 = 0xBFF0000000000000;
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_221420138;
    v77[3] = &unk_278464DF8;
    v77[4] = self;
    v79 = &v120;
    v85 = v31;
    v78 = informationCopy;
    v80 = &v112;
    v81 = &v104;
    v82 = &v108;
    v83 = &v100;
    v84 = &v96;
    objc_msgSend_enumerateColumnsUsingBlock_(regionCopy, v74, v77, v75);
    v76 = v121;
    if (&self->_capturedColumnWidths != (v121 + 6))
    {
      sub_22128026C(&self->_capturedColumnWidths, v121[6], v121[7], (v121[7] - v121[6]) >> 3);
      v76 = v121;
    }

    if (&self->_currentColumnWidths != (v76 + 6))
    {
      sub_22128026C(&self->_currentColumnWidths, v76[6], v76[7], (v76[7] - v76[6]) >> 3);
    }

    if (&self->_minimumColumnWidths != (v113 + 6))
    {
      sub_22128026C(&self->_minimumColumnWidths, v113[6], v113[7], (v113[7] - v113[6]) >> 3);
    }

    *&self->_capturedColumnWidthTotal = v97[3];

    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v100, 8);
    _Block_object_dispose(&v104, 8);
    _Block_object_dispose(&v108, 8);
    _Block_object_dispose(&v112, 8);
    if (__p)
    {
      v119 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v120, 8);
    if (v126)
    {
      v127 = v126;
      operator delete(v126);
    }
  }
}

- (BOOL)hasHeightForRow:(unsigned int)row
{
  startRowIndex = self->_startRowIndex;
  v4 = row >= startRowIndex;
  v5 = row - startRowIndex;
  return v4 && v5 < self->_numberOfRows && self->_capturedRowHeights.__begin_[v5] > 0.0;
}

- (BOOL)hasWidthForColumn:(unsigned __int16)column
{
  startColumnIndex = self->_startColumnIndex;
  v4 = column >= startColumnIndex;
  v5 = column - startColumnIndex;
  return v4 && self->_numberOfColumns > v5 && self->_capturedColumnWidths.__begin_[v5] > 0.0;
}

- (double)getRowInitialHeight:(unsigned int)height
{
  begin = self->_capturedRowHeights.__begin_;
  result = 0.0;
  if (begin != self->_capturedRowHeights.__end_)
  {
    startRowIndex = self->_startRowIndex;
    if (height >= startRowIndex && self->_numberOfRows + startRowIndex > height)
    {
      return begin[height - startRowIndex];
    }
  }

  return result;
}

- (double)getColumnInitialWidth:(unsigned __int16)width
{
  begin = self->_capturedColumnWidths.__begin_;
  result = 0.0;
  if (begin != self->_capturedColumnWidths.__end_)
  {
    startColumnIndex = self->_startColumnIndex;
    if (startColumnIndex <= width && self->_numberOfColumns + startColumnIndex > width)
    {
      return begin[width - startColumnIndex];
    }
  }

  return result;
}

- (double)getRowHeight:(unsigned int)height
{
  begin = self->_currentRowHeights.__begin_;
  result = 0.0;
  if (begin != self->_currentRowHeights.__end_)
  {
    startRowIndex = self->_startRowIndex;
    if (height >= startRowIndex && self->_numberOfRows + startRowIndex > height)
    {
      return begin[height - startRowIndex];
    }
  }

  return result;
}

- (double)getColumnWidth:(unsigned __int16)width
{
  begin = self->_currentColumnWidths.__begin_;
  result = 0.0;
  if (begin != self->_currentColumnWidths.__end_)
  {
    startColumnIndex = self->_startColumnIndex;
    if (startColumnIndex <= width && self->_numberOfColumns + startColumnIndex > width)
    {
      return begin[width - startColumnIndex];
    }
  }

  return result;
}

- (double)getRowHeightResize:(unsigned int)resize
{
  v4 = 0.0;
  if (self->_currentRowHeights.__begin_ != self->_currentRowHeights.__end_)
  {
    startRowIndex = self->_startRowIndex;
    if (startRowIndex <= resize && self->_numberOfRows + startRowIndex > resize && objc_msgSend_hasHeightForRow_(self, a2, *&resize, v3))
    {
      return self->_currentRowHeights.__begin_[resize - self->_startRowIndex] - self->_capturedRowHeights.__begin_[resize - self->_startRowIndex];
    }
  }

  return v4;
}

- (double)getColumnWidthResize:(unsigned __int16)resize
{
  v4 = 0.0;
  if (self->_currentColumnWidths.__begin_ != self->_currentColumnWidths.__end_)
  {
    resizeCopy = resize;
    startColumnIndex = self->_startColumnIndex;
    if (startColumnIndex <= resize && self->_numberOfColumns + startColumnIndex > resize && objc_msgSend_hasWidthForColumn_(self, a2, resize, v3))
    {
      return self->_currentColumnWidths.__begin_[resizeCopy - self->_startColumnIndex] - self->_capturedColumnWidths.__begin_[resizeCopy - self->_startColumnIndex];
    }
  }

  return v4;
}

- (double)getMinimumRowHeight:(unsigned int)height
{
  begin = self->_minimumRowHeights.__begin_;
  result = 0.0;
  if (begin != self->_minimumRowHeights.__end_)
  {
    startRowIndex = self->_startRowIndex;
    if (height >= startRowIndex && self->_numberOfRows + startRowIndex > height)
    {
      return begin[height - startRowIndex];
    }
  }

  return result;
}

- (double)getMinimumColumnWidth:(unsigned __int16)width
{
  begin = self->_minimumColumnWidths.__begin_;
  result = 0.0;
  if (begin != self->_minimumColumnWidths.__end_)
  {
    startColumnIndex = self->_startColumnIndex;
    if (startColumnIndex <= width && self->_numberOfColumns + startColumnIndex > width)
    {
      return begin[width - startColumnIndex];
    }
  }

  return result;
}

- (CGSize)capturedTableSize
{
  capturedRowHeightTotal = self->_capturedRowHeightTotal;
  capturedColumnWidthTotal = self->_capturedColumnWidthTotal;
  result.height = capturedRowHeightTotal;
  result.width = capturedColumnWidthTotal;
  return result;
}

- (void)enumerateColumnWidthsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  startColumnIndex = self->_startColumnIndex;
  do
  {
    if (self->_numberOfColumns + self->_startColumnIndex <= startColumnIndex)
    {
      break;
    }

    if (objc_msgSend_hasWidthForColumn_(self, v4, startColumnIndex, v5))
    {
      objc_msgSend_getColumnWidth_(self, v4, startColumnIndex, v5);
      blockCopy[2](blockCopy, startColumnIndex, &v8);
    }

    ++startColumnIndex;
  }

  while (!v8);
}

- (void)enumerateRowHeightsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  startRowIndex = self->_startRowIndex;
  do
  {
    if (startRowIndex >= self->_numberOfRows + self->_startRowIndex)
    {
      break;
    }

    if (objc_msgSend_hasHeightForRow_(self, v4, startRowIndex, v5))
    {
      objc_msgSend_getRowHeight_(self, v4, startRowIndex, v5);
      blockCopy[2](blockCopy, startRowIndex, &v8);
    }

    startRowIndex = (startRowIndex + 1);
  }

  while (!v8);
}

- (id)rowHeights
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_221420840;
  v15 = sub_221420850;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221420858;
  v10[3] = &unk_278464E20;
  v10[4] = &v11;
  objc_msgSend_enumerateRowHeightsUsingBlock_(self, v3, v10, v4);
  v8 = objc_msgSend_copy(v12[5], v5, v6, v7);
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (id)columnWidths
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_221420840;
  v15 = sub_221420850;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214209F0;
  v10[3] = &unk_278464E48;
  v10[4] = &v11;
  objc_msgSend_enumerateColumnWidthsUsingBlock_(self, v3, v10, v4);
  v8 = objc_msgSend_copy(v12[5], v5, v6, v7);
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (double)totalCurrentRowHeights
{
  startRowIndex = self->_startRowIndex;
  v4 = 0.0;
  if (startRowIndex < self->_numberOfRows + startRowIndex)
  {
    do
    {
      if (objc_msgSend_hasHeightForRow_(self, a2, startRowIndex, v2))
      {
        objc_msgSend_getRowHeight_(self, a2, startRowIndex, v2);
        v4 = v4 + v6;
      }

      startRowIndex = (startRowIndex + 1);
    }

    while (startRowIndex < self->_numberOfRows + self->_startRowIndex);
  }

  return v4;
}

- (double)totalCurrentColumnWidths
{
  startColumnIndex = self->_startColumnIndex;
  v4 = 0.0;
  if (self->_numberOfColumns + startColumnIndex > startColumnIndex)
  {
    do
    {
      if (objc_msgSend_hasWidthForColumn_(self, a2, startColumnIndex, v2))
      {
        objc_msgSend_getColumnWidth_(self, a2, startColumnIndex, v2);
        v4 = v4 + v6;
      }

      LOWORD(startColumnIndex) = startColumnIndex + 1;
    }

    while (self->_numberOfColumns + self->_startColumnIndex > startColumnIndex);
  }

  return v4;
}

- (double)totalMinimumRowHeights
{
  startRowIndex = self->_startRowIndex;
  v4 = 0.0;
  if (startRowIndex < self->_numberOfRows + startRowIndex)
  {
    do
    {
      if (objc_msgSend_hasHeightForRow_(self, a2, startRowIndex, v2))
      {
        objc_msgSend_getMinimumRowHeight_(self, a2, startRowIndex, v2);
        v4 = v4 + v6;
      }

      startRowIndex = (startRowIndex + 1);
    }

    while (startRowIndex < self->_numberOfRows + self->_startRowIndex);
  }

  return v4;
}

- (double)totalMinimumColumnWidths
{
  startColumnIndex = self->_startColumnIndex;
  v4 = 0.0;
  if (self->_numberOfColumns + startColumnIndex > startColumnIndex)
  {
    do
    {
      if (objc_msgSend_hasWidthForColumn_(self, a2, startColumnIndex, v2))
      {
        objc_msgSend_getMinimumColumnWidth_(self, a2, startColumnIndex, v2);
        v4 = v4 + v6;
      }

      LOWORD(startColumnIndex) = startColumnIndex + 1;
    }

    while (self->_numberOfColumns + self->_startColumnIndex > startColumnIndex);
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end