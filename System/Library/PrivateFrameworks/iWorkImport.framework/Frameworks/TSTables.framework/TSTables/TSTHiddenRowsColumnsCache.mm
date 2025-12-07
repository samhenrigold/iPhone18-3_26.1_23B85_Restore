@interface TSTHiddenRowsColumnsCache
- (TSTHiddenRowsColumnsCache)init;
- (TSUCellCoord)visibleCellOffsetBy:(TSUColumnRowOffset)by fromCellID:(TSUCellCoord)d;
- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)index;
- (unsigned)indexOfVisibleRowAfterAndIncludingRowAtIndex:(unsigned int)index;
- (unsigned)indexOfVisibleRowAfterRowAtIndex:(unsigned int)index;
- (unsigned)indexOfVisibleRowBeforeAndIncludingRowAtIndex:(unsigned int)index;
- (unsigned)indexOfVisibleRowBeforeRowAtIndex:(unsigned int)index;
- (unsigned)nonUserHiddenRowAfterAndIncludingRow:(unsigned int)row;
- (unsigned)numberOfVisibleRowsFromHeader:(unsigned int)header;
- (unsigned)numberOfVisibleRowsFromStartRowIndex:(unint64_t)index toEndRowIndex:(unsigned int)rowIndex;
- (unsigned)previousNthVisibleColumn:(unsigned int)column fromColumnIndex:(unsigned __int16)index;
- (unsigned)previousNthVisibleRow:(unsigned int)row fromRowIndex:(unsigned int)index;
- (void)enumerateVisibleColumnIndexesInRange:(_NSRange)range usingBlock:(id)block;
- (void)validate:(id)validate;
- (void)validateChangeDescriptors:(id)descriptors;
@end

@implementation TSTHiddenRowsColumnsCache

- (TSTHiddenRowsColumnsCache)init
{
  v16.receiver = self;
  v16.super_class = TSTHiddenRowsColumnsCache;
  v2 = [(TSTHiddenRowsColumnsCache *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSTHiddenStateIndexSet);
    rowsVisible = v2->_rowsVisible;
    v2->_rowsVisible = v3;

    v5 = objc_alloc_init(TSTHiddenStateIndexSet);
    rowsUserVisible = v2->_rowsUserVisible;
    v2->_rowsUserVisible = v5;

    v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v7, 0, 1000000);
    rowsInvalid = v2->_rowsInvalid;
    v2->_rowsInvalid = v8;

    v10 = objc_alloc_init(TSTHiddenStateIndexSet);
    columnsVisible = v2->_columnsVisible;
    v2->_columnsVisible = v10;

    v13 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v12, 0, 1000);
    columnsInvalid = v2->_columnsInvalid;
    v2->_columnsInvalid = v13;
  }

  return v2;
}

- (unsigned)indexOfVisibleRowBeforeRowAtIndex:(unsigned int)index
{
  v4 = objc_msgSend_visibleIndexBeforeIndex_(self->_rowsVisible, a2, index, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  return v4;
}

- (unsigned)indexOfVisibleRowBeforeAndIncludingRowAtIndex:(unsigned int)index
{
  v4 = objc_msgSend_visibleIndexBeforeAndIncludingIndex_(self->_rowsVisible, a2, index, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  return v4;
}

- (unsigned)indexOfVisibleRowAfterRowAtIndex:(unsigned int)index
{
  v4 = objc_msgSend_visibleIndexAfterIndex_(self->_rowsVisible, a2, index, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  return v4;
}

- (unsigned)indexOfVisibleRowAfterAndIncludingRowAtIndex:(unsigned int)index
{
  v4 = objc_msgSend_visibleIndexAfterAndIncludingIndex_(self->_rowsVisible, a2, index, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  return v4;
}

- (unsigned)nonUserHiddenRowAfterAndIncludingRow:(unsigned int)row
{
  v4 = objc_msgSend_visibleIndexAfterAndIncludingIndex_(self->_rowsUserVisible, a2, row, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  return v4;
}

- (unsigned)indexOfVisibleColumnBeforeColumnAtIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_visibleIndexBeforeIndex_(self->_columnsVisible, a2, index, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return v4;
  }
}

- (unsigned)indexOfVisibleColumnBeforeAndIncludingColumnAtIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_visibleIndexBeforeAndIncludingIndex_(self->_columnsVisible, a2, index, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return v4;
  }
}

- (unsigned)indexOfVisibleColumnAfterColumnAtIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_visibleIndexAfterIndex_(self->_columnsVisible, a2, index, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return v4;
  }
}

- (unsigned)indexOfVisibleColumnAfterAndIncludingColumnAtIndex:(unsigned __int16)index
{
  v4 = objc_msgSend_visibleIndexAfterAndIncludingIndex_(self->_columnsVisible, a2, index, v3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return v4;
  }
}

- (unsigned)previousNthVisibleRow:(unsigned int)row fromRowIndex:(unsigned int)index
{
  NthPreviousVisibleIndex_fromIndex = objc_msgSend_findNthPreviousVisibleIndex_fromIndex_(self->_rowsVisible, a2, row, index);
  if (NthPreviousVisibleIndex_fromIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    LODWORD(NthPreviousVisibleIndex_fromIndex) = 0x7FFFFFFF;
  }

  return NthPreviousVisibleIndex_fromIndex;
}

- (unsigned)previousNthVisibleColumn:(unsigned int)column fromColumnIndex:(unsigned __int16)index
{
  NthPreviousVisibleIndex_fromIndex = objc_msgSend_findNthPreviousVisibleIndex_fromIndex_(self->_columnsVisible, a2, column, index);
  if (NthPreviousVisibleIndex_fromIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFF;
  }

  else
  {
    return NthPreviousVisibleIndex_fromIndex;
  }
}

- (TSUCellCoord)visibleCellOffsetBy:(TSUColumnRowOffset)by fromCellID:(TSUCellCoord)d
{
  column = d.column;
  v5 = *&d & 0xFFFF000000000000;
  row = d.row;
  if (d.row != 0x7FFFFFFFLL)
  {
    v7 = d.column;
    if (v7 != 0x7FFF)
    {
      var1 = by.var1;
      if (by.var0)
      {
        columnsVisible = self->_columnsVisible;
        if (by.var0 < 1)
        {
          NthPreviousVisibleIndex_fromIndex = objc_msgSend_findNthPreviousVisibleIndex_fromIndex_(columnsVisible, a2, -by.var0, v7);
        }

        else
        {
          NthPreviousVisibleIndex_fromIndex = objc_msgSend_findNthNextVisibleIndex_fromIndex_(columnsVisible, a2, by.var0 & 0x7FFFFFFF, v7);
        }

        if (NthPreviousVisibleIndex_fromIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          column = 0x7FFF;
        }

        else
        {
          column = NthPreviousVisibleIndex_fromIndex;
        }
      }

      if (var1)
      {
        rowsVisible = self->_rowsVisible;
        if (var1 < 1)
        {
          NthNextVisibleIndex_fromIndex = objc_msgSend_findNthPreviousVisibleIndex_fromIndex_(rowsVisible, a2, -var1, row);
        }

        else
        {
          NthNextVisibleIndex_fromIndex = objc_msgSend_findNthNextVisibleIndex_fromIndex_(rowsVisible, a2, var1, row);
        }

        v5 = 0;
        if (NthNextVisibleIndex_fromIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          row = 0x7FFFFFFFLL;
        }

        else
        {
          row = NthNextVisibleIndex_fromIndex;
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return (v5 | (column << 32) | row);
}

- (unsigned)numberOfVisibleRowsFromHeader:(unsigned int)header
{
  v4 = *&header;
  v7 = objc_msgSend_rowMarkIndex(self, a2, *&header, v3);

  return objc_msgSend_numberOfVisibleRowsFromStartRowIndex_toEndRowIndex_(self, v6, v7, v4);
}

- (unsigned)numberOfVisibleRowsFromStartRowIndex:(unint64_t)index toEndRowIndex:(unsigned int)rowIndex
{
  if (rowIndex >= index)
  {
    return objc_msgSend_numberVisibleIndicesInRange_(self->_rowsVisible, a2, index, rowIndex - index + 1);
  }

  else
  {
    return 0;
  }
}

- (void)enumerateVisibleColumnIndexesInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  columnsVisible = self->_columnsVisible;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2214C2AD0;
  v11[3] = &unk_278466440;
  v12 = blockCopy;
  v9 = blockCopy;
  objc_msgSend_enumerateVisibleIndexesInRange_usingBlock_(columnsVisible, v10, location, length, v11);
}

- (void)validate:(id)validate
{
  validateCopy = validate;
  v8 = objc_msgSend_numberOfRows(validateCopy, v5, v6, v7);
  v12 = objc_msgSend_numberOfHeaderRows(validateCopy, v9, v10, v11);
  v16 = objc_msgSend_numberOfColumns(validateCopy, v13, v14, v15);
  objc_msgSend_setCount_(self->_rowsVisible, v17, v8, v18);
  objc_msgSend_setCount_(self->_rowsUserVisible, v19, v8, v20);
  objc_msgSend_setRowMarkIndex_(self, v21, v12, v22);
  objc_msgSend_removeIndexesInRange_(self->_rowsInvalid, v23, v8, ~v8);
  objc_msgSend_setCount_(self->_columnsVisible, v24, v16, v25);
  objc_msgSend_removeIndexesInRange_(self->_columnsInvalid, v26, v16, ~v16);
  if ((objc_msgSend_isDynamicallyHidingRowsCols(validateCopy, v27, v28, v29) & 1) != 0 || (objc_msgSend_tableInfo(validateCopy, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend_numberOfHiddenColumns(v33, v34, v35, v36), v33, v37))
  {
    columnsInvalid = self->_columnsInvalid;
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_2214C2DBC;
    v73[3] = &unk_278466468;
    v76 = v16;
    v74 = validateCopy;
    selfCopy = self;
    objc_msgSend_enumerateIndexesUsingBlock_(columnsInvalid, v40, v73, v41);
    objc_msgSend_removeAllIndexes(self->_columnsInvalid, v42, v43, v44);
  }

  else
  {
    objc_msgSend_setHidden_inRange_(self->_columnsVisible, v38, 0, 0, v16);
    objc_msgSend_removeAllIndexes(self->_columnsInvalid, v66, v67, v68);
  }

  if ((objc_msgSend_isDynamicallyHidingRowsCols(validateCopy, v45, v46, v47) & 1) == 0)
  {
    v51 = objc_msgSend_tableInfo(validateCopy, v48, v49, v50);
    v55 = objc_msgSend_numberOfHiddenRows(v51, v52, v53, v54);

    if (!v55)
    {
      objc_msgSend_setHidden_inRange_(self->_rowsVisible, v48, 0, 0, v8);
      objc_msgSend_setHidden_inRange_(self->_rowsUserVisible, v69, 0, 0, v8);
      goto LABEL_11;
    }
  }

  if (objc_msgSend_emptyFilteredTable(validateCopy, v48, v49, v50))
  {
    objc_msgSend_setHidden_inRange_(self->_rowsVisible, v56, 0, 0, 1);
    objc_msgSend_setHidden_inRange_(self->_rowsUserVisible, v57, 0, 0, 1);
LABEL_11:
    objc_msgSend_removeAllIndexes(self->_rowsInvalid, v58, v59, v60);
    goto LABEL_12;
  }

  objc_msgSend_removeIndexesInRange_(self->_rowsInvalid, v56, v8, ~v8);
  rowsInvalid = self->_rowsInvalid;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_2214C2E4C;
  v71[3] = &unk_2784664B0;
  v72 = validateCopy;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_2214C2F48;
  v70[3] = &unk_2784664D8;
  v70[4] = self;
  objc_msgSend_tsu_enumerateRangesConcurrentlyUsingBeginBlock_concurrentBlock_finalBlock_(rowsInvalid, v62, &unk_2834A9698, v71, v70);
  objc_msgSend_removeAllIndexes(self->_rowsInvalid, v63, v64, v65);

LABEL_12:
}

- (void)validateChangeDescriptors:(id)descriptors
{
  v99 = *MEMORY[0x277D85DE8];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  descriptorsCopy = descriptors;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(descriptorsCopy, v5, &v94, v98, 16);
  if (v9)
  {
    v79 = v85;
    v10 = *v95;
    v11 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v95 != v10)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v13 = *(*(&v94 + 1) + 8 * i);
        v14 = objc_msgSend_changeDescriptor(v13, v6, v7, v8, v79);
        v18 = v14;
        if (v14 > 22)
        {
          if (v14 > 27)
          {
            switch(v14)
            {
              case 28:
                v90[0] = 0;
                v90[1] = v90;
                v90[2] = 0x2020000000;
                v91 = 0x7FFFFFFF;
                v88[0] = 0;
                v88[1] = v88;
                v88[2] = 0x2020000000;
                v89 = 1;
                v86[0] = 0;
                v86[1] = v86;
                v86[2] = 0x2020000000;
                v87 = 1;
                v61 = objc_msgSend_shuffleMapping(v13, v15, v16, v17);
                v84[0] = MEMORY[0x277D85DD0];
                v84[1] = 3221225472;
                v85[0] = sub_2214C3788;
                v85[1] = &unk_278466528;
                v85[2] = self;
                v85[3] = v90;
                v85[4] = v88;
                v85[5] = v86;
                objc_msgSend_enumerateMappingFollowingSwapsUsingBlock_(v61, v62, v84, v63);

                v67 = objc_msgSend_shuffleMapping(v13, v64, v65, v66);
                objc_msgSend_applyMappingToIndexSet_(v67, v68, self->_rowsInvalid, v69);

                _Block_object_dispose(v86, 8);
                _Block_object_dispose(v88, 8);
                _Block_object_dispose(v90, 8);
                continue;
              case 29:
                goto LABEL_27;
              case 51:
                rowsInvalid = self->_rowsInvalid;
                v27 = objc_msgSend_cellRegion(v13, v15, v16, v17);
                v31 = objc_msgSend_intersectingRowsIndexSet(v27, v28, v29, v30);
                objc_msgSend_addIndexes_(rowsInvalid, v32, v31, v33);

                columnsInvalid = self->_columnsInvalid;
                v38 = objc_msgSend_cellRegion(v13, v35, v36, v37);
                v42 = objc_msgSend_intersectingColumnsIndexSet(v38, v39, v40, v41);
                objc_msgSend_addIndexes_(columnsInvalid, v43, v42, v44);

                continue;
            }
          }

          else
          {
            switch(v14)
            {
              case 23:
                goto LABEL_27;
              case 24:
                v73 = objc_msgSend_cellRegion(v13, v15, v16, v17);
                v93[0] = v11;
                v93[1] = 3221225472;
                v93[2] = sub_2214C3684;
                v93[3] = &unk_278466500;
                v93[4] = self;
                objc_msgSend_enumerateRowRangesInReverseUsingBlock_(v73, v74, v93, v75);

                continue;
              case 25:
                v22 = objc_msgSend_cellRegion(v13, v15, v16, v17);
                v92[0] = v11;
                v92[1] = 3221225472;
                v92[2] = sub_2214C36FC;
                v92[3] = &unk_278466500;
                v92[4] = self;
                objc_msgSend_enumerateRowRangesUsingBlock_(v22, v23, v92, v24);

                continue;
            }
          }
        }

        else if (v14 > 6)
        {
          if (v14 == 7)
          {
LABEL_28:
            v53 = self->_columnsInvalid;
            v54 = objc_msgSend_cellRegion(v13, v15, v16, v17);
            v58 = objc_msgSend_intersectingColumnsIndexSet(v54, v55, v56, v57);
            objc_msgSend_addIndexes_(v53, v59, v58, v60);

            continue;
          }

          if (v14 == 8 || v14 == 10)
          {
LABEL_27:
            v45 = self->_rowsInvalid;
            v46 = objc_msgSend_cellRegion(v13, v15, v16, v17);
            v50 = objc_msgSend_intersectingRowsIndexSet(v46, v47, v48, v49);
            objc_msgSend_addIndexes_(v45, v51, v50, v52);

            continue;
          }
        }

        else
        {
          switch(v14)
          {
            case 2:
              goto LABEL_28;
            case 3:
              v70 = objc_msgSend_cellRegion(v13, v15, v16, v17);
              v83[0] = v11;
              v83[1] = 3221225472;
              v83[2] = sub_2214C38A4;
              v83[3] = &unk_278466500;
              v83[4] = self;
              objc_msgSend_enumerateColumnRangesInReverseUsingBlock_(v70, v71, v83, v72);

              continue;
            case 4:
              v19 = objc_msgSend_cellRegion(v13, v15, v16, v17);
              v82[0] = v11;
              v82[1] = 3221225472;
              v82[2] = sub_2214C3908;
              v82[3] = &unk_278466500;
              v82[4] = self;
              objc_msgSend_enumerateColumnRangesUsingBlock_(v19, v20, v82, v21);

              continue;
          }
        }

        v76 = objc_msgSend_cellRegion(v13, v15, v16, v17);
        v80[0] = v11;
        v80[1] = 3221225472;
        v80[2] = sub_2214C3980;
        v80[3] = &unk_278466550;
        v81 = v18;
        v80[4] = self;
        v80[5] = v13;
        objc_msgSend_enumerateCellRangesUsingBlock_(v76, v77, v80, v78);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(descriptorsCopy, v6, &v94, v98, 16);
    }

    while (v9);
  }
}

@end