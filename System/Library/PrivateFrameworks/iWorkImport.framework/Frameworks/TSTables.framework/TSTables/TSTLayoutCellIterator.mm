@interface TSTLayoutCellIterator
+ (BOOL)isNeededWithLayoutEngine:(id)engine andRange:(TSUCellRect)range;
- (BOOL)getNextCellData:(id *)data;
- (TSTLayoutCellIterator)initWithLayout:(id)layout range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSTLayoutCellIterator)initWithLayoutEngine:(id)engine range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags;
- (TSUCellRect)layoutRange;
@end

@implementation TSTLayoutCellIterator

+ (BOOL)isNeededWithLayoutEngine:(id)engine andRange:(TSUCellRect)range
{
  engineCopy = engine;
  if (objc_msgSend_isDynamicallyChangingContent(engineCopy, v5, v6, v7) & 1) != 0 || (objc_msgSend_isDynamicallyChangingRowOrColumnCount(engineCopy, v8, v9, v10) & 1) != 0 || (objc_msgSend_isDynamicallyHidingRowsCols(engineCopy, v11, v12, v13) & 1) != 0 || (objc_msgSend_isDynamicallyRemovingText(engineCopy, v14, v15, v16))
  {
    LOBYTE(v20) = 1;
  }

  else
  {
    v22 = objc_msgSend_tableInfo(engineCopy, v17, v18, v19);
    v31.origin = objc_msgSend_range(v22, v23, v24, v25);
    v31.size = v26;
    v30.origin = objc_msgSend_cellRange(engineCopy, v26, v27, v28);
    v30.size = v29;
    v20 = TSUCellRect::contains(&v31, &v30) ^ 1;
  }

  return v20;
}

- (TSTLayoutCellIterator)initWithLayout:(id)layout range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  v11 = objc_msgSend_layoutEngine(layout, a2, layout, *&range.origin);
  v13 = objc_msgSend_initWithLayoutEngine_range_flags_searchFlags_(self, v12, v11, origin, size, flags, searchFlags);

  return v13;
}

- (TSTLayoutCellIterator)initWithLayoutEngine:(id)engine range:(TSUCellRect)range flags:(unint64_t)flags searchFlags:(unint64_t)searchFlags
{
  size = range.size;
  origin = range.origin;
  engineCopy = engine;
  v16 = objc_msgSend_cellRange(engineCopy, v13, v14, v15);
  v18 = sub_221119E0C(v16, v17, origin, size);
  v20 = v19;
  v23 = objc_msgSend_tableInfo(engineCopy, v19, v21, v22);
  self->_numberOfLayoutColumns = objc_msgSend_numberOfColumns(engineCopy, v24, v25, v26);
  v30 = objc_msgSend_range(v23, v27, v28, v29);
  v33 = sub_221119E0C(v18, v20, v30, v31);
  if (v18 == 0x7FFFFFFF || (v18 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v20) || !v20)
  {
    v20 = 0;
    v18 = 0x7FFF7FFFFFFFLL;
  }

  v34 = objc_msgSend_regionFromRange_(TSTCellRegion, v32, v33, v32);
  v38 = objc_msgSend_range(v23, v35, v36, v37);
  v67.receiver = self;
  v67.super_class = TSTLayoutCellIterator;
  v40 = [(TSTCellIterator *)&v67 initWithTableInfo:v23 region:v34 flags:flags | 1 searchFlags:searchFlags clampingRange:v38, v39];

  if (v40)
  {
    objc_storeStrong(&v40->_layoutEngine, engine);
    v40->_layoutRange.origin = v18;
    v40->_layoutRange.size = v20;
    v40->_columnOrderReversed = (flags & 4) != 0;
    if ((flags & 4) != 0)
    {
      v18 = (v18 + (v20 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | v18;
    }

    v40->_layoutCellID = v18;
    v44 = objc_msgSend_newCell(v23, v41, v42, v43);
    layoutCell = v40->_layoutCell;
    v40->_layoutCell = v44;

    v40->_numberOfRows = objc_msgSend_numberOfRows(v23, v46, v47, v48);
    v40->_numberOfColumns = objc_msgSend_numberOfColumns(v23, v49, v50, v51);
    v52 = objc_alloc_init(TSTMutableCellIteratorData);
    layoutCellData = v40->_layoutCellData;
    v40->_layoutCellData = v52;

    v40->_isDynamicallyChangingContent = objc_msgSend_isDynamicallyChangingContent(engineCopy, v54, v55, v56);
    v40->_isDynamicallyChangingRowOrColumnCount = objc_msgSend_isDynamicallyChangingRowOrColumnCount(engineCopy, v57, v58, v59);
    v40->_isDynamicallyHidingRowsCols = objc_msgSend_isDynamicallyHidingRowsCols(engineCopy, v60, v61, v62);
    v40->_isDynamicallyRemovingText = objc_msgSend_isDynamicallyRemovingText(engineCopy, v63, v64, v65);
  }

  return v40;
}

- (BOOL)getNextCellData:(id *)data
{
  v115 = objc_msgSend_layoutEngine(self, a2, data, v3);
  numberOfLayoutColumns = self->_numberOfLayoutColumns;
  origin = self->_layoutRange.origin;
  size = self->_layoutRange.size;
  v10 = origin.row + size.numberOfRows - 1;
  if (HIDWORD(*&size))
  {
    v11 = origin.row == 0x7FFFFFFF;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v10 = 0x7FFFFFFF;
  }

  v114 = v10;
  if (size.numberOfColumns)
  {
    v12 = origin.column == 0x7FFF;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0x7FFF;
  }

  else
  {
    v13 = LOWORD(size.numberOfColumns) + origin.column - 1;
  }

  v112 = v13;
  if (origin.row != 0x7FFFFFFF && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v15 = 0;
  }

  else
  {
    v15 = WORD2(*&self->_layoutRange.origin);
  }

  v113 = v15;
  objc_msgSend_setCell_(self->_layoutCellData, v5, 0, v6);
  objc_msgSend_setCellID_(self->_layoutCellData, v16, 0x7FFF7FFFFFFFLL, v17);
  objc_msgSend_setMergeRange_(self->_layoutCellData, v18, 0x7FFF7FFFFFFFLL, 0);
  v22 = 0;
  p_layoutCellID = &self->_layoutCellID;
  v111 = numberOfLayoutColumns - 1;
  while (1)
  {
    v24 = *p_layoutCellID;
    if (*p_layoutCellID > v114)
    {
      break;
    }

    if (!self->_queriedModel)
    {
      v121.receiver = self;
      v121.super_class = TSTLayoutCellIterator;
      v122 = 0;
      v25 = [(TSTCellIterator *)&v121 getNextCellData:&v122];
      v26 = v122;
      self->_modelIteratorHasCell = v25;
      self->_modelIteratorData = v26;
      self->_queriedModel = 1;
    }

    if (self->_isDynamicallyHidingRowsCols)
    {
      v22 |= objc_msgSend_isDynamicallyHidingRowsCols_rowColIndex_(v115, v19, 1, self->_layoutCellID.column);
    }

    if (self->_isDynamicallyRemovingText)
    {
      v22 |= objc_msgSend_isDynamicallyRemovingTextOfCellID_(v115, v19, *p_layoutCellID, v21);
    }

    if (self->_isDynamicallyChangingContent || (v22 & 1) != 0)
    {
      if (self->_isDynamicallyChangingContent)
      {
        v27 = objc_msgSend_dynamicContentDelegate(v115, v19, v20, v21);
        v120 = 0;
        v29 = objc_msgSend_cell_forCellID_(v27, v28, &v120, *p_layoutCellID);
        v30 = v120;

        if (v29)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v22)
        {
          v34 = objc_msgSend_tableInfo(self, v19, v20, v21);
          v30 = objc_msgSend_newCell(v34, v35, v36, v37);

LABEL_33:
          objc_msgSend_clear(self->_layoutCell, v31, v32, v33);
          objc_msgSend_shallowCopyToCell_(v30, v38, self->_layoutCell, v39);
          objc_msgSend_setCell_(self->_layoutCellData, v40, self->_layoutCell, v41);
          objc_msgSend_setCellID_(self->_layoutCellData, v42, *p_layoutCellID, v43);
          v47 = objc_msgSend_cellID(self->_layoutCellData, v44, v45, v46);
          v48 = sub_2213AA890(v115, v47);
          objc_msgSend_setMergeRange_(self->_layoutCellData, v49, v48, v49);
          if (self->_modelIteratorHasCell)
          {
            v53 = *p_layoutCellID;
            v54 = objc_msgSend_cellID(self->_modelIteratorData, v50, v51, v52);
            if (v53 == v54 && ((v54 ^ v53) & 0xFFFF00000000) == 0)
            {
              v118.receiver = self;
              v118.super_class = TSTLayoutCellIterator;
              v119 = 0;
              v55 = [(TSTCellIterator *)&v118 getNextCellData:&v119];
              v56 = v119;
              self->_modelIteratorHasCell = v55;
              self->_modelIteratorData = v56;
            }
          }

          goto LABEL_62;
        }

        v30 = 0;
      }
    }

    v57 = *p_layoutCellID;
    numberOfRows = self->_numberOfRows;
    if (*p_layoutCellID >= numberOfRows)
    {
      if (!self->_isDynamicallyChangingRowOrColumnCount)
      {
        goto LABEL_54;
      }

      column = self->_layoutCellID.column;
      v81 = *&self->_layoutCellID._preserveRow;
      v82 = objc_msgSend_tableInfo(self, v19, v20, v21);
      v57 = numberOfRows + ~objc_msgSend_numberOfFooterRows(v82, v83, v84, v85);

      v59 = self->_layoutCellID.column;
      numberOfColumns = self->_numberOfColumns;
      goto LABEL_51;
    }

    v59 = self->_layoutCellID.column;
    numberOfColumns = self->_numberOfColumns;
    if (numberOfColumns <= v59)
    {
      if (!self->_isDynamicallyChangingRowOrColumnCount)
      {
        goto LABEL_54;
      }

      v81 = *&self->_layoutCellID._preserveRow;
      column = self->_layoutCellID.column;
LABEL_51:
      v86 = objc_msgSend_tableInfo(self, v19, v20, v21);
      v88 = v86;
      v89 = numberOfColumns - 1;
      if (numberOfColumns > v59)
      {
        v89 = column;
      }

      Cell_atCellID = objc_msgSend_getCell_atCellID_(v86, v87, self->_layoutCell, (v81 << 48) | (v89 << 32) | v57);

      if (!Cell_atCellID)
      {
        objc_msgSend_clearValue(self->_layoutCell, v19, v20, v21);
        objc_msgSend_setCell_(self->_layoutCellData, v91, self->_layoutCell, v92);
        objc_msgSend_setCellID_(self->_layoutCellData, v93, *p_layoutCellID, v94);
LABEL_63:
        v63 = 1;
        goto LABEL_64;
      }

      goto LABEL_54;
    }

    if (self->_modelIteratorHasCell)
    {
      v61 = *p_layoutCellID;
      v62 = objc_msgSend_cellID(self->_modelIteratorData, v19, v20, v21);
      v63 = 0;
      if (v61 != v62 || ((v62 ^ v61) & 0xFFFF00000000) != 0)
      {
        goto LABEL_64;
      }

      if (objc_msgSend_returnCellContents(self, v19, v20, v21))
      {
        v67 = objc_msgSend_cell(self->_modelIteratorData, v64, v65, v66);

        if (v67)
        {
          p_layoutCell = &self->_layoutCell;
          objc_msgSend_clear(self->_layoutCell, v68, v69, v70);
          v75 = objc_msgSend_cell(self->_modelIteratorData, v72, v73, v74);
          objc_msgSend_shallowCopyToCell_(v75, v76, self->_layoutCell, v77);

          goto LABEL_57;
        }
      }

      else
      {
        p_layoutCell = &self->_layoutCell;
        objc_msgSend_clear(self->_layoutCell, v64, v65, v66);
LABEL_57:
        objc_msgSend_setCell_(self->_layoutCellData, v78, *p_layoutCell, v79);
      }

      v95 = objc_msgSend_cellID(self->_modelIteratorData, v68, v69, v70);
      objc_msgSend_setCellID_(self->_layoutCellData, v96, v95, v97);
      if (self->_isDynamicallyChangingRowOrColumnCount)
      {
        v101 = objc_msgSend_cellID(self->_layoutCellData, v98, v99, v100);
        v102 = sub_2213AA890(v115, v101);
      }

      else
      {
        v102 = objc_msgSend_mergeRange(self->_modelIteratorData, v98, v99, v100);
      }

      objc_msgSend_setMergeRange_(self->_layoutCellData, v103, v102, v103);
      v116.receiver = self;
      v116.super_class = TSTLayoutCellIterator;
      v117 = 0;
      v104 = [(TSTCellIterator *)&v116 getNextCellData:&v117];
      v30 = v117;
      self->_modelIteratorHasCell = v104;
      self->_modelIteratorData = v30;
LABEL_62:

      goto LABEL_63;
    }

LABEL_54:
    v63 = 0;
LABEL_64:
    v105 = self->_layoutCellID.column;
    if (self->_columnOrderReversed)
    {
      if (v105 <= v113)
      {
        v106 = v112;
        goto LABEL_74;
      }

      self->_layoutCellID.column = v105 - 1;
      if (v63)
      {
        goto LABEL_75;
      }
    }

    else if (v111 <= v105 || v105 >= v112)
    {
      v106 = v113;
LABEL_74:
      self->_layoutCellID.column = v106;
      ++*p_layoutCellID;
      if (v63)
      {
LABEL_75:
        dataCopy2 = data;
        if (!data)
        {
          goto LABEL_80;
        }

        v108 = self->_layoutCellData;
        goto LABEL_79;
      }
    }

    else
    {
      self->_layoutCellID.column = v105 + 1;
      if (v63)
      {
        goto LABEL_75;
      }
    }
  }

  dataCopy2 = data;
  if (!data)
  {
    goto LABEL_80;
  }

  v108 = 0;
LABEL_79:
  *dataCopy2 = v108;
LABEL_80:

  return v24 <= v114;
}

- (TSUCellRect)layoutRange
{
  p_layoutRange = &self->_layoutRange;
  origin = self->_layoutRange.origin;
  size = p_layoutRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

@end