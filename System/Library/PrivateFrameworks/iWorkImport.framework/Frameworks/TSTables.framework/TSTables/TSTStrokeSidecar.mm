@interface TSTStrokeSidecar
- (BOOL)isEmpty;
- (BOOL)mightHaveCellBorderAtCellID:(TSUCellCoord)d;
- (TSTStrokeSidecar)initWithTableModel:(id)model;
- (TSUCellRect)p_strokeRect;
- (id)cellBorderAtCellID:(TSUCellCoord)d;
- (id)initForUpgradeWithTableModel:(id)model;
- (id)p_flattenMajorStrokeLayer:(id)layer minorStrokeLayer:(id)strokeLayer;
- (id)strokeLayerForBottomOfRow:(unsigned int)row;
- (id)strokeLayerForLeftSideOfColumn:(unsigned __int16)column;
- (id)strokeLayerForRightSideOfColumn:(unsigned __int16)column;
- (id)strokeLayerForTopOfRow:(unsigned int)row;
- (id)unretainedStrokeLayerForBottomOfRow:(unsigned int)row;
- (id)unretainedStrokeLayerForLeftSideOfColumn:(unsigned __int16)column;
- (id)unretainedStrokeLayerForRightSideOfColumn:(unsigned __int16)column;
- (id)unretainedStrokeLayerForTopOfRow:(unsigned int)row;
- (vector<TSTCellBorder)accumulateCellBordersConcurrentlyInRow:(TSTStrokeSidecar *)self atColumns:(SEL)columns;
- (void)enumerateStrokesInRegion:(id)region usingTopStrokeBlock:(id)block usingBottomStrokeBlock:(id)strokeBlock usingLeftStrokeBlock:(id)leftStrokeBlock usingRightStrokeBlock:(id)rightStrokeBlock;
- (void)flattenStrokeOrder;
- (void)insertColumns:(_NSRange)columns;
- (void)insertRows:(_NSRange)rows;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)p_setBottomStroke:(id)stroke order:(int)order atCellID:(TSUCellCoord)d;
- (void)p_setLeftStroke:(id)stroke order:(int)order atCellID:(TSUCellCoord)d;
- (void)p_setRightStroke:(id)stroke order:(int)order atCellID:(TSUCellCoord)d;
- (void)p_setStroke:(id)stroke order:(int)order inStrokesArray:(id)array atIndex:(unsigned int)index atRange:(TSTSimpleRange)range;
- (void)p_setTopStroke:(id)stroke order:(int)order atCellID:(TSUCellCoord)d;
- (void)removeColumns:(_NSRange)columns;
- (void)removeRows:(_NSRange)rows;
- (void)saveToArchiver:(id)archiver;
- (void)setBordersWithCellMap:(id)map;
- (void)setBordersWithConcurrentCellMap:(id)map forTableInfo:(id)info;
- (void)setCellBorder:(id)border atCellID:(TSUCellCoord)d;
- (void)setMaxOrder:(int)order;
- (void)setStroke:(id)stroke forBottomOfRow:(unsigned int)row order:(int)order columnRange:(TSTSimpleRange)range;
- (void)setStroke:(id)stroke forLeftOfColumn:(unsigned __int16)column order:(int)order rowRange:(TSTSimpleRange)range;
- (void)setStroke:(id)stroke forRightOfColumn:(unsigned __int16)column order:(int)order rowRange:(TSTSimpleRange)range;
- (void)setStroke:(id)stroke forTopOfRow:(unsigned int)row order:(int)order columnRange:(TSTSimpleRange)range;
- (void)setStrokeLayer:(id)layer forBottomOfRow:(unsigned int)row;
- (void)setStrokeLayer:(id)layer forLeftOfColumn:(unsigned __int16)column;
- (void)setStrokeLayer:(id)layer forRightOfColumn:(unsigned __int16)column;
- (void)setStrokeLayer:(id)layer forTopOfRow:(unsigned int)row;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
- (void)updateForTableSize:(id)size;
@end

@implementation TSTStrokeSidecar

- (void)setMaxOrder:(int)order
{
  if (self->_maxOrder != order)
  {
    objc_msgSend_willModify(self, a2, *&order, v3);
    self->_maxOrder = order;
  }
}

- (TSTStrokeSidecar)initWithTableModel:(id)model
{
  modelCopy = model;
  v8 = objc_msgSend_context(modelCopy, v5, v6, v7);
  v59.receiver = self;
  v59.super_class = TSTStrokeSidecar;
  v9 = [(TSTStrokeSidecar *)&v59 initWithContext:v8];

  if (v9)
  {
    v13 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v10, v11, v12);
    leftColumnStrokes = v9->_leftColumnStrokes;
    v9->_leftColumnStrokes = v13;

    v18 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v15, v16, v17);
    rightColumnStrokes = v9->_rightColumnStrokes;
    v9->_rightColumnStrokes = v18;

    v23 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v20, v21, v22);
    topRowStrokes = v9->_topRowStrokes;
    v9->_topRowStrokes = v23;

    v28 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v25, v26, v27);
    bottomRowStrokes = v9->_bottomRowStrokes;
    v9->_bottomRowStrokes = v28;

    v9->_maxOrder = 2;
    v30 = v9->_leftColumnStrokes;
    v34 = objc_msgSend_numberOfColumns(modelCopy, v31, v32, v33);
    objc_msgSend_setCount_(v30, v35, v34, v36);
    v37 = v9->_rightColumnStrokes;
    v41 = objc_msgSend_numberOfColumns(modelCopy, v38, v39, v40);
    objc_msgSend_setCount_(v37, v42, v41, v43);
    v44 = v9->_topRowStrokes;
    v48 = objc_msgSend_numberOfRows(modelCopy, v45, v46, v47);
    objc_msgSend_setCount_(v44, v49, v48, v50);
    v51 = v9->_bottomRowStrokes;
    v55 = objc_msgSend_numberOfRows(modelCopy, v52, v53, v54);
    objc_msgSend_setCount_(v51, v56, v55, v57);
  }

  return v9;
}

- (id)initForUpgradeWithTableModel:(id)model
{
  modelCopy = model;
  v7 = objc_msgSend_initWithTableModel_(self, v5, modelCopy, v6);
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_documentRoot(v7, v8, v9, v10);
    v16 = objc_msgSend_stylesheet(v12, v13, v14, v15);

    v20 = objc_msgSend_newCell(modelCopy, v17, v18, v19);
    v33[0] = objc_msgSend_range(modelCopy, v21, v22, v23);
    v33[1] = v24;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2211DCB38;
    v28[3] = &unk_278460FF8;
    v25 = v20;
    v29 = v25;
    v30 = modelCopy;
    v31 = v11;
    v26 = v16;
    v32 = v26;
    sub_2211DCA74(v33, v28);
  }

  return v11;
}

- (void)p_setStroke:(id)stroke order:(int)order inStrokesArray:(id)array atIndex:(unsigned int)index atRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v9 = *&index;
  v11 = *&order;
  strokeCopy = stroke;
  arrayCopy = array;
  if (objc_msgSend_count(arrayCopy, v14, v15, v16) <= v9)
  {
    objc_msgSend_setCount_(arrayCopy, v17, (v9 + 1), v18);
  }

  v22 = objc_msgSend_pointerAtIndex_(arrayCopy, v17, v9, v18);
  if (strokeCopy | v22)
  {
    objc_msgSend_willModify(self, v19, v20, v21);
    if (!v22)
    {
      v24 = [TSTMutableStrokeLayer alloc];
      v28 = objc_msgSend_context(self, v25, v26, v27);
      v22 = objc_msgSend_initWithContext_columnOrRowIndex_(v24, v29, v28, v9);

      objc_msgSend_replacePointerAtIndex_withPointer_(arrayCopy, v30, v9, v22);
    }

    objc_msgSend_invalidateRange_(v22, v23, origin, length);
    if (strokeCopy)
    {
      v34 = objc_msgSend_maxOrder(self, v31, v32, v33);
      if (v34 <= v11)
      {
        objc_msgSend_setMaxOrder_(self, v35, v11, v36);
      }

      else
      {
        objc_msgSend_setMaxOrder_(self, v35, v34, v36);
      }

      objc_msgSend_setStroke_inRange_order_(v22, v37, strokeCopy, origin, length, v11);
    }

    else if (objc_msgSend_isEmpty(v22, v31, v32, v33))
    {
      objc_msgSend_replacePointerAtIndex_withPointer_(arrayCopy, v38, v9, 0);
    }
  }

  else
  {
    v22 = 0;
  }
}

- (void)p_setLeftStroke:(id)stroke order:(int)order atCellID:(TSUCellCoord)d
{
  v6 = *&order;
  strokeCopy = stroke;
  v11 = objc_msgSend_leftColumnStrokes(self, v8, v9, v10);
  objc_msgSend_p_setStroke_order_inStrokesArray_atIndex_atRange_(self, v12, strokeCopy, v6, v11, d.column, d.row, 1);
}

- (void)p_setRightStroke:(id)stroke order:(int)order atCellID:(TSUCellCoord)d
{
  v6 = *&order;
  strokeCopy = stroke;
  v11 = objc_msgSend_rightColumnStrokes(self, v8, v9, v10);
  objc_msgSend_p_setStroke_order_inStrokesArray_atIndex_atRange_(self, v12, strokeCopy, v6, v11, d.column, d.row, 1);
}

- (void)p_setTopStroke:(id)stroke order:(int)order atCellID:(TSUCellCoord)d
{
  v6 = *&order;
  strokeCopy = stroke;
  v11 = objc_msgSend_topRowStrokes(self, v8, v9, v10);
  objc_msgSend_p_setStroke_order_inStrokesArray_atIndex_atRange_(self, v12, strokeCopy, v6, v11, d, d.column, 1);
}

- (void)p_setBottomStroke:(id)stroke order:(int)order atCellID:(TSUCellCoord)d
{
  v6 = *&order;
  strokeCopy = stroke;
  v11 = objc_msgSend_bottomRowStrokes(self, v8, v9, v10);
  objc_msgSend_p_setStroke_order_inStrokesArray_atIndex_atRange_(self, v12, strokeCopy, v6, v11, d, d.column, 1);
}

- (BOOL)isEmpty
{
  v69 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v5 = objc_msgSend_leftColumnStrokes(self, a2, v2, v3);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v61, v68, 16);
  if (v10)
  {
    v11 = *v62;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v62 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v61 + 1) + 8 * v12);
      if (v13)
      {
        if ((objc_msgSend_isEmpty(v13, v7, v8, v9) & 1) == 0)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v61, v68, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v5 = objc_msgSend_rightColumnStrokes(self, v14, v15, v16);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v17, &v57, v67, 16);
    if (v21)
    {
      v22 = *v58;
LABEL_12:
      v23 = 0;
      while (1)
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(v5);
        }

        v24 = *(*(&v57 + 1) + 8 * v23);
        if (v24)
        {
          if ((objc_msgSend_isEmpty(v24, v18, v19, v20) & 1) == 0)
          {
            break;
          }
        }

        if (v21 == ++v23)
        {
          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v18, &v57, v67, 16);
          if (v21)
          {
            goto LABEL_12;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v5 = objc_msgSend_topRowStrokes(self, v25, v26, v27);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v28, &v53, v66, 16);
      if (v32)
      {
        v33 = *v54;
LABEL_21:
        v34 = 0;
        while (1)
        {
          if (*v54 != v33)
          {
            objc_enumerationMutation(v5);
          }

          v35 = *(*(&v53 + 1) + 8 * v34);
          if (v35)
          {
            if ((objc_msgSend_isEmpty(v35, v29, v30, v31) & 1) == 0)
            {
              break;
            }
          }

          if (v32 == ++v34)
          {
            v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v29, &v53, v66, 16);
            if (v32)
            {
              goto LABEL_21;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v5 = objc_msgSend_bottomRowStrokes(self, v36, v37, v38, 0);
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v39, &v49, v65, 16);
        if (!v43)
        {
          v47 = 1;
          goto LABEL_39;
        }

        v44 = *v50;
LABEL_30:
        v45 = 0;
        while (1)
        {
          if (*v50 != v44)
          {
            objc_enumerationMutation(v5);
          }

          v46 = *(*(&v49 + 1) + 8 * v45);
          if (v46)
          {
            if ((objc_msgSend_isEmpty(v46, v40, v41, v42) & 1) == 0)
            {
              break;
            }
          }

          if (v43 == ++v45)
          {
            v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v40, &v49, v65, 16);
            v47 = 1;
            if (v43)
            {
              goto LABEL_30;
            }

            goto LABEL_39;
          }
        }
      }
    }
  }

  v47 = 0;
LABEL_39:

  return v47;
}

- (BOOL)mightHaveCellBorderAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_unretainedStrokeLayerForTopOfRow_(self, a2, *&d, v3);
  result = 1;
  if (!v6 || objc_msgSend_isEmpty(v6, v7, v8, v9))
  {
    v10 = objc_msgSend_unretainedStrokeLayerForLeftSideOfColumn_(self, v7, d.column, v9);
    if (!v10 || objc_msgSend_isEmpty(v10, v11, v12, v13))
    {
      v14 = objc_msgSend_unretainedStrokeLayerForBottomOfRow_(self, v11, *&d, v13);
      if (!v14 || objc_msgSend_isEmpty(v14, v15, v16, v17))
      {
        v18 = objc_msgSend_unretainedStrokeLayerForRightSideOfColumn_(self, v15, d.column, v17);
        if (!v18 || objc_msgSend_isEmpty(v18, v19, v20, v21))
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (id)cellBorderAtCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_cellBorder(TSTCellBorder, a2, *&d, v3);
  v9 = objc_msgSend_strokeLayerForTopOfRow_(self, v7, *&d, v8);
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_findStrokeAndRangeAtIndex_(v9, v10, d.column, v11);
    v17 = v13;
    if (v13)
    {
      v18 = objc_msgSend_range(v13, v14, v15, v16);
      if (v19)
      {
        if (v18 <= d.column && &v19[v18 - 1] >= d.column)
        {
          v22 = objc_msgSend_stroke(v17, v19, v20, v21);
          v26 = objc_msgSend_order(v17, v23, v24, v25);
          objc_msgSend_setTopStroke_order_(v6, v27, v22, v26);
        }
      }
    }
  }

  v28 = objc_msgSend_strokeLayerForLeftSideOfColumn_(self, v10, d.column, v11);
  v31 = v28;
  if (v28)
  {
    v32 = objc_msgSend_findStrokeAndRangeAtIndex_(v28, v29, d.row, v30);
    v36 = v32;
    if (v32)
    {
      v37 = objc_msgSend_range(v32, v33, v34, v35);
      if (v38)
      {
        if (v37 <= d.row && &v38[v37 - 1] >= d.row)
        {
          v41 = objc_msgSend_stroke(v36, v38, v39, v40);
          v45 = objc_msgSend_order(v36, v42, v43, v44);
          objc_msgSend_setLeftStroke_order_(v6, v46, v41, v45);
        }
      }
    }
  }

  v47 = objc_msgSend_strokeLayerForBottomOfRow_(self, v29, *&d, v30);
  v50 = v47;
  if (v47)
  {
    v51 = objc_msgSend_findStrokeAndRangeAtIndex_(v47, v48, d.column, v49);
    v55 = v51;
    if (v51)
    {
      v56 = objc_msgSend_range(v51, v52, v53, v54);
      if (v57)
      {
        if (v56 <= d.column && &v57[v56 - 1] >= d.column)
        {
          v60 = objc_msgSend_stroke(v55, v57, v58, v59);
          v64 = objc_msgSend_order(v55, v61, v62, v63);
          objc_msgSend_setBottomStroke_order_(v6, v65, v60, v64);
        }
      }
    }
  }

  v66 = objc_msgSend_strokeLayerForRightSideOfColumn_(self, v48, d.column, v49);
  v69 = v66;
  if (v66)
  {
    v70 = objc_msgSend_findStrokeAndRangeAtIndex_(v66, v67, d.row, v68);
    v74 = v70;
    if (v70)
    {
      v75 = objc_msgSend_range(v70, v71, v72, v73);
      if (v76)
      {
        if (v75 <= d.row && &v76[v75 - 1] >= d.row)
        {
          v79 = objc_msgSend_stroke(v74, v76, v77, v78);
          v83 = objc_msgSend_order(v74, v80, v81, v82);
          objc_msgSend_setRightStroke_order_(v6, v84, v79, v83);
        }
      }
    }
  }

  return v6;
}

- (void)setCellBorder:(id)border atCellID:(TSUCellCoord)d
{
  borderCopy = border;
  v9 = objc_msgSend_topStroke(borderCopy, v6, v7, v8);
  v13 = objc_msgSend_topStrokeOrder(borderCopy, v10, v11, v12);
  objc_msgSend_p_setTopStroke_order_atCellID_(self, v14, v9, v13, d);

  v18 = objc_msgSend_leftStroke(borderCopy, v15, v16, v17);
  v22 = objc_msgSend_leftStrokeOrder(borderCopy, v19, v20, v21);
  objc_msgSend_p_setLeftStroke_order_atCellID_(self, v23, v18, v22, d);

  v27 = objc_msgSend_bottomStroke(borderCopy, v24, v25, v26);
  v31 = objc_msgSend_bottomStrokeOrder(borderCopy, v28, v29, v30);
  objc_msgSend_p_setBottomStroke_order_atCellID_(self, v32, v27, v31, d);

  v36 = objc_msgSend_rightStroke(borderCopy, v33, v34, v35);
  v40 = objc_msgSend_rightStrokeOrder(borderCopy, v37, v38, v39);
  objc_msgSend_p_setRightStroke_order_atCellID_(self, v41, v36, v40, d);
}

- (void)setBordersWithCellMap:(id)map
{
  mapCopy = map;
  objc_msgSend_willModify(self, v5, v6, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211DDF30;
  v10[3] = &unk_27845DE10;
  v10[4] = self;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(mapCopy, v8, v10, v9);
}

- (void)setStroke:(id)stroke forTopOfRow:(unsigned int)row order:(int)order columnRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = *&order;
  v9 = *&row;
  strokeCopy = stroke;
  objc_msgSend_willModify(self, v11, v12, v13);
  v17 = objc_msgSend_topRowStrokes(self, v14, v15, v16);
  v20 = objc_msgSend_pointerAtIndex_(v17, v18, v9, v19);

  if (!v20)
  {
    v22 = [TSTMutableStrokeLayer alloc];
    v26 = objc_msgSend_context(self, v23, v24, v25);
    v20 = objc_msgSend_initWithContext_columnOrRowIndex_(v22, v27, v26, v9);

    v31 = objc_msgSend_topRowStrokes(self, v28, v29, v30);
    objc_msgSend_replacePointerAtIndex_withPointer_(v31, v32, v9, v20);
  }

  objc_msgSend_setStroke_inRange_order_(v20, v21, strokeCopy, origin, length, v8);
}

- (void)setStroke:(id)stroke forBottomOfRow:(unsigned int)row order:(int)order columnRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = *&order;
  v9 = *&row;
  strokeCopy = stroke;
  objc_msgSend_willModify(self, v11, v12, v13);
  v17 = objc_msgSend_bottomRowStrokes(self, v14, v15, v16);
  v20 = objc_msgSend_pointerAtIndex_(v17, v18, v9, v19);

  if (!v20)
  {
    v22 = [TSTMutableStrokeLayer alloc];
    v26 = objc_msgSend_context(self, v23, v24, v25);
    v20 = objc_msgSend_initWithContext_columnOrRowIndex_(v22, v27, v26, v9);

    v31 = objc_msgSend_bottomRowStrokes(self, v28, v29, v30);
    objc_msgSend_replacePointerAtIndex_withPointer_(v31, v32, v9, v20);
  }

  objc_msgSend_setStroke_inRange_order_(v20, v21, strokeCopy, origin, length, v8);
}

- (void)setStroke:(id)stroke forLeftOfColumn:(unsigned __int16)column order:(int)order rowRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = *&order;
  columnCopy = column;
  strokeCopy = stroke;
  objc_msgSend_willModify(self, v11, v12, v13);
  v17 = objc_msgSend_leftColumnStrokes(self, v14, v15, v16);
  v20 = objc_msgSend_pointerAtIndex_(v17, v18, columnCopy, v19);

  if (!v20)
  {
    v22 = [TSTMutableStrokeLayer alloc];
    v26 = objc_msgSend_context(self, v23, v24, v25);
    v20 = objc_msgSend_initWithContext_columnOrRowIndex_(v22, v27, v26, columnCopy);

    v31 = objc_msgSend_leftColumnStrokes(self, v28, v29, v30);
    objc_msgSend_replacePointerAtIndex_withPointer_(v31, v32, columnCopy, v20);
  }

  objc_msgSend_setStroke_inRange_order_(v20, v21, strokeCopy, origin, length, v8);
}

- (void)setStroke:(id)stroke forRightOfColumn:(unsigned __int16)column order:(int)order rowRange:(TSTSimpleRange)range
{
  length = range.length;
  origin = range.origin;
  v8 = *&order;
  columnCopy = column;
  strokeCopy = stroke;
  objc_msgSend_willModify(self, v11, v12, v13);
  v17 = objc_msgSend_rightColumnStrokes(self, v14, v15, v16);
  v20 = objc_msgSend_pointerAtIndex_(v17, v18, columnCopy, v19);

  if (!v20)
  {
    v22 = [TSTMutableStrokeLayer alloc];
    v26 = objc_msgSend_context(self, v23, v24, v25);
    v20 = objc_msgSend_initWithContext_columnOrRowIndex_(v22, v27, v26, columnCopy);

    v31 = objc_msgSend_rightColumnStrokes(self, v28, v29, v30);
    objc_msgSend_replacePointerAtIndex_withPointer_(v31, v32, columnCopy, v20);
  }

  objc_msgSend_setStroke_inRange_order_(v20, v21, strokeCopy, origin, length, v8);
}

- (id)p_flattenMajorStrokeLayer:(id)layer minorStrokeLayer:(id)strokeLayer
{
  layerCopy = layer;
  strokeLayerCopy = strokeLayer;
  v7 = [TSTMutableStrokeLayer alloc];
  v11 = objc_msgSend_context(layerCopy, v8, v9, v10);
  v15 = objc_msgSend_columnOrRowIndex(layerCopy, v12, v13, v14);
  v17 = objc_msgSend_initWithContext_columnOrRowIndex_(v7, v16, v11, v15);

  v18 = [TSTMutableStrokeLayer alloc];
  v22 = objc_msgSend_context(strokeLayerCopy, v19, v20, v21);
  v26 = objc_msgSend_columnOrRowIndex(strokeLayerCopy, v23, v24, v25);
  v28 = objc_msgSend_initWithContext_columnOrRowIndex_(v18, v27, v22, v26);

  v29 = [TSTStrokeOrderedLayer alloc];
  v31 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v29, v30, 0, layerCopy, strokeLayerCopy);
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = sub_2211DE734;
  v42 = &unk_278461020;
  v32 = v17;
  v43 = v32;
  v33 = v28;
  v44 = v33;
  objc_msgSend_enumerateRawStrokesSegmentsUsingBlock_(v31, v34, &v39, v35);
  v37 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v36, v32, v33, v39, v40, v41, v42);

  return v37;
}

- (void)flattenStrokeOrder
{
  objc_msgSend_willModify(self, a2, v2, v3);
  v8 = objc_msgSend_leftColumnStrokes(self, v5, v6, v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);
  v16 = objc_msgSend_rightColumnStrokes(self, v13, v14, v15);
  v20 = objc_msgSend_count(v16, v17, v18, v19);

  if (v12 != v20)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTStrokeSidecar flattenStrokeOrder]", v23);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 482, 0, "left and right column stroke count should be identical");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
  }

  v33 = objc_msgSend_topRowStrokes(self, v21, v22, v23);
  v37 = objc_msgSend_count(v33, v34, v35, v36);
  v41 = objc_msgSend_bottomRowStrokes(self, v38, v39, v40);
  v45 = objc_msgSend_count(v41, v42, v43, v44);

  if (v37 != v45)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSTStrokeSidecar flattenStrokeOrder]", v48);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 483, 0, "top and bottom row stroke count should be identical");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
  }

  v58 = objc_msgSend_leftColumnStrokes(self, v46, v47, v48);
  v62 = objc_msgSend_count(v58, v59, v60, v61);

  if (v62 != -1)
  {
    for (i = 0; v62 + 1 != i; ++i)
    {
      if (i >= v62)
      {
        v71 = 0;
        v72 = 0;
        if (!i)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v67 = objc_msgSend_leftColumnStrokes(self, v63, v64, v65);
        v70 = objc_msgSend_pointerAtIndex_(v67, v68, i, v69);

        if (!i)
        {
          v72 = 0;
          v71 = 0;
          if (v70)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        v71 = v70;
      }

      v73 = objc_msgSend_rightColumnStrokes(self, v63, v64, v65);
      v72 = objc_msgSend_pointerAtIndex_(v73, v74, i - 1, v75);

      if (!v71 || !v72)
      {
        if (!v71)
        {
          v71 = 0;
          if (v72)
          {
            objc_msgSend_flattenStrokeOrder(v72, v63, v64, v65);
          }

          goto LABEL_18;
        }

        v70 = v71;
LABEL_17:
        v71 = v70;
        objc_msgSend_flattenStrokeOrder(v70, v63, v64, v65);
        goto LABEL_18;
      }

      v76 = objc_msgSend_p_flattenMajorStrokeLayer_minorStrokeLayer_(self, v63, v71, v72);
      v80 = objc_msgSend_leftColumnStrokes(self, v77, v78, v79);
      v84 = objc_msgSend_first(v76, v81, v82, v83);
      objc_msgSend_replacePointerAtIndex_withPointer_(v80, v85, i, v84);

      v89 = objc_msgSend_rightColumnStrokes(self, v86, v87, v88);
      v93 = objc_msgSend_second(v76, v90, v91, v92);
      objc_msgSend_replacePointerAtIndex_withPointer_(v89, v94, i - 1, v93);

LABEL_18:
    }
  }

  v95 = objc_msgSend_topRowStrokes(self, v63, v64, v65);
  v99 = objc_msgSend_count(v95, v96, v97, v98);

  if (v99 != -1)
  {
    for (j = 0; v99 + 1 != j; ++j)
    {
      if (j >= v99)
      {
        v108 = 0;
        v109 = 0;
        if (!j)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v104 = objc_msgSend_topRowStrokes(self, v100, v101, v102);
        v107 = objc_msgSend_pointerAtIndex_(v104, v105, j, v106);

        if (!j)
        {
          v109 = 0;
          v108 = 0;
          if (v107)
          {
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        v108 = v107;
      }

      v110 = objc_msgSend_bottomRowStrokes(self, v100, v101, v102);
      v109 = objc_msgSend_pointerAtIndex_(v110, v111, j - 1, v112);

      if (!v108 || !v109)
      {
        if (!v108)
        {
          v108 = 0;
          if (v109)
          {
            objc_msgSend_flattenStrokeOrder(v109, v100, v101, v102);
          }

          goto LABEL_36;
        }

        v107 = v108;
LABEL_35:
        v108 = v107;
        objc_msgSend_flattenStrokeOrder(v107, v100, v101, v102);
        goto LABEL_36;
      }

      v113 = objc_msgSend_p_flattenMajorStrokeLayer_minorStrokeLayer_(self, v100, v108, v109);
      v117 = objc_msgSend_topRowStrokes(self, v114, v115, v116);
      v121 = objc_msgSend_first(v113, v118, v119, v120);
      objc_msgSend_replacePointerAtIndex_withPointer_(v117, v122, j, v121);

      v126 = objc_msgSend_bottomRowStrokes(self, v123, v124, v125);
      v130 = objc_msgSend_second(v113, v127, v128, v129);
      objc_msgSend_replacePointerAtIndex_withPointer_(v126, v131, j - 1, v130);

LABEL_36:
    }
  }
}

- (void)updateForTableSize:(id)size
{
  var0 = size.var0;
  var1 = size.var1;
  v24 = objc_msgSend_topRowStrokes(self, a2, *&size, v3);
  objc_msgSend_setCount_(v24, v7, var1, v8);

  v25 = objc_msgSend_bottomRowStrokes(self, v9, v10, v11);
  objc_msgSend_setCount_(v25, v12, var1, v13);

  v26 = objc_msgSend_leftColumnStrokes(self, v14, v15, v16);
  objc_msgSend_setCount_(v26, v17, var0, v18);

  v27 = objc_msgSend_rightColumnStrokes(self, v19, v20, v21);
  objc_msgSend_setCount_(v27, v22, var0, v23);
}

- (TSUCellRect)p_strokeRect
{
  v5 = objc_msgSend_count(self->_topRowStrokes, a2, v2, v3);
  v9 = objc_msgSend_count(self->_bottomRowStrokes, v6, v7, v8);
  if (v5 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  v14 = objc_msgSend_count(self->_leftColumnStrokes, v10, v11, v12);
  v18 = objc_msgSend_count(self->_rightColumnStrokes, v15, v16, v17);
  if (v14 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v20 = v19 | (v13 << 32);
  v21 = 0;
  result.size = v20;
  result.origin = v21;
  return result;
}

- (void)enumerateStrokesInRegion:(id)region usingTopStrokeBlock:(id)block usingBottomStrokeBlock:(id)strokeBlock usingLeftStrokeBlock:(id)leftStrokeBlock usingRightStrokeBlock:(id)rightStrokeBlock
{
  regionCopy = region;
  blockCopy = block;
  strokeBlockCopy = strokeBlock;
  leftStrokeBlockCopy = leftStrokeBlock;
  rightStrokeBlockCopy = rightStrokeBlock;
  v20 = objc_msgSend_p_strokeRect(self, v17, v18, v19);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_2211DF084;
  v28[3] = &unk_278461098;
  v33 = v20;
  v34 = v21;
  v22 = blockCopy;
  v28[4] = self;
  v29 = v22;
  v23 = strokeBlockCopy;
  v30 = v23;
  v24 = leftStrokeBlockCopy;
  v31 = v24;
  v25 = rightStrokeBlockCopy;
  v32 = v25;
  objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v26, v28, v27);
}

- (void)insertColumns:(_NSRange)columns
{
  length = columns.length;
  location = columns.location;
  v44 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, columns.location, columns.length);
  v9 = objc_msgSend_leftColumnStrokes(self, v6, v7, v8);
  objc_msgSend_tsu_insertRange_(v9, v10, location, length);

  v14 = objc_msgSend_rightColumnStrokes(self, v11, v12, v13);
  objc_msgSend_tsu_insertRange_(v14, v15, location, length);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = objc_msgSend_topRowStrokes(self, v16, v17, v18);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v38, v43, 16);
  if (v22)
  {
    v23 = *v39;
    do
    {
      v24 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_insertSpaceAtRange_(*(*(&v38 + 1) + 8 * v24++), v21, location, length);
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v38, v43, 16);
    }

    while (v22);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = objc_msgSend_bottomRowStrokes(self, v25, v26, v27, 0);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v34, v42, 16);
  if (v31)
  {
    v32 = *v35;
    do
    {
      v33 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v28);
        }

        objc_msgSend_insertSpaceAtRange_(*(*(&v34 + 1) + 8 * v33++), v30, location, length);
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v34, v42, 16);
    }

    while (v31);
  }
}

- (void)removeColumns:(_NSRange)columns
{
  length = columns.length;
  location = columns.location;
  v44 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, columns.location, columns.length);
  v9 = objc_msgSend_leftColumnStrokes(self, v6, v7, v8);
  objc_msgSend_tsu_removeRange_(v9, v10, location, length);

  v14 = objc_msgSend_rightColumnStrokes(self, v11, v12, v13);
  objc_msgSend_tsu_removeRange_(v14, v15, location, length);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = objc_msgSend_topRowStrokes(self, v16, v17, v18);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v38, v43, 16);
  if (v22)
  {
    v23 = *v39;
    do
    {
      v24 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_removeRange_(*(*(&v38 + 1) + 8 * v24++), v21, location, length);
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v38, v43, 16);
    }

    while (v22);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = objc_msgSend_bottomRowStrokes(self, v25, v26, v27, 0);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v34, v42, 16);
  if (v31)
  {
    v32 = *v35;
    do
    {
      v33 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v28);
        }

        objc_msgSend_removeRange_(*(*(&v34 + 1) + 8 * v33++), v30, location, length);
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v34, v42, 16);
    }

    while (v31);
  }
}

- (void)insertRows:(_NSRange)rows
{
  length = rows.length;
  location = rows.location;
  v44 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, rows.location, rows.length);
  v9 = objc_msgSend_topRowStrokes(self, v6, v7, v8);
  objc_msgSend_tsu_insertRange_(v9, v10, location, length);

  v14 = objc_msgSend_bottomRowStrokes(self, v11, v12, v13);
  objc_msgSend_tsu_insertRange_(v14, v15, location, length);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = objc_msgSend_leftColumnStrokes(self, v16, v17, v18);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v38, v43, 16);
  if (v22)
  {
    v23 = *v39;
    do
    {
      v24 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_insertSpaceAtRange_(*(*(&v38 + 1) + 8 * v24++), v21, location, length);
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v38, v43, 16);
    }

    while (v22);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = objc_msgSend_rightColumnStrokes(self, v25, v26, v27, 0);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v34, v42, 16);
  if (v31)
  {
    v32 = *v35;
    do
    {
      v33 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v28);
        }

        objc_msgSend_insertSpaceAtRange_(*(*(&v34 + 1) + 8 * v33++), v30, location, length);
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v34, v42, 16);
    }

    while (v31);
  }
}

- (void)removeRows:(_NSRange)rows
{
  length = rows.length;
  location = rows.location;
  v44 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, rows.location, rows.length);
  v9 = objc_msgSend_topRowStrokes(self, v6, v7, v8);
  objc_msgSend_tsu_removeRange_(v9, v10, location, length);

  v14 = objc_msgSend_bottomRowStrokes(self, v11, v12, v13);
  objc_msgSend_tsu_removeRange_(v14, v15, location, length);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = objc_msgSend_leftColumnStrokes(self, v16, v17, v18);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v38, v43, 16);
  if (v22)
  {
    v23 = *v39;
    do
    {
      v24 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_removeRange_(*(*(&v38 + 1) + 8 * v24++), v21, location, length);
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v38, v43, 16);
    }

    while (v22);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = objc_msgSend_rightColumnStrokes(self, v25, v26, v27, 0);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v34, v42, 16);
  if (v31)
  {
    v32 = *v35;
    do
    {
      v33 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v28);
        }

        objc_msgSend_removeRange_(*(*(&v34 + 1) + 8 * v33++), v30, location, length);
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v34, v42, 16);
    }

    while (v31);
  }
}

- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  indexCopy = index;
  length = range.length;
  location = range.location;
  v101 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, range.location, range.length);
  v89 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v8, v9, v10);
  v90 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v11, v12, v13);
  objc_msgSend_setCount_(v89, v14, length, v15);
  objc_msgSend_setCount_(v90, v16, length, v17);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v22 = objc_msgSend_leftColumnStrokes(self, v18, v19, v20);
      v25 = objc_msgSend_pointerAtIndex_(v22, v23, location + i, v24);

      v29 = objc_msgSend_rightColumnStrokes(self, v26, v27, v28);
      v32 = objc_msgSend_pointerAtIndex_(v29, v30, location + i, v31);

      objc_msgSend_replacePointerAtIndex_withPointer_(v89, v33, i, v25);
      objc_msgSend_replacePointerAtIndex_withPointer_(v90, v34, i, v32);
    }
  }

  v35 = objc_msgSend_leftColumnStrokes(self, v18, v19, v20);
  objc_msgSend_tsu_removeRange_(v35, v36, location, length);

  v40 = objc_msgSend_rightColumnStrokes(self, v37, v38, v39);
  objc_msgSend_tsu_removeRange_(v40, v41, location, length);

  if (location >= indexCopy)
  {
    v45 = 0;
  }

  else
  {
    v45 = length;
  }

  v46 = objc_msgSend_leftColumnStrokes(self, v42, v43, v44);
  v47 = (indexCopy - v45);
  objc_msgSend_tsu_insertRange_(v46, v48, v47, length);

  v52 = objc_msgSend_rightColumnStrokes(self, v49, v50, v51);
  objc_msgSend_tsu_insertRange_(v52, v53, v47, length);

  if (length)
  {
    v57 = 0;
    v58 = v47;
    v59 = length;
    do
    {
      v60 = objc_msgSend_pointerAtIndex_(v89, v54, v57, v56);
      v63 = objc_msgSend_pointerAtIndex_(v90, v61, v57, v62);
      v67 = objc_msgSend_leftColumnStrokes(self, v64, v65, v66);
      objc_msgSend_replacePointerAtIndex_withPointer_(v67, v68, v58, v60);

      v72 = objc_msgSend_rightColumnStrokes(self, v69, v70, v71);
      objc_msgSend_replacePointerAtIndex_withPointer_(v72, v73, v58, v63);

      ++v57;
      ++v58;
      --v59;
    }

    while (v59);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v74 = objc_msgSend_topRowStrokes(self, v54, v55, v56);
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v95, v100, 16);
  if (v77)
  {
    v78 = *v96;
    do
    {
      for (j = 0; j != v77; ++j)
      {
        if (*v96 != v78)
        {
          objc_enumerationMutation(v74);
        }

        objc_msgSend_moveRange_toIndex_(*(*(&v95 + 1) + 8 * j), v76, location, length, v47);
      }

      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v76, &v95, v100, 16);
    }

    while (v77);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v83 = objc_msgSend_bottomRowStrokes(self, v80, v81, v82);
  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v91, v99, 16);
  if (v86)
  {
    v87 = *v92;
    do
    {
      for (k = 0; k != v86; ++k)
      {
        if (*v92 != v87)
        {
          objc_enumerationMutation(v83);
        }

        objc_msgSend_moveRange_toIndex_(*(*(&v91 + 1) + 8 * k), v85, location, length, v47);
      }

      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v85, &v91, v99, 16);
    }

    while (v86);
  }
}

- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index
{
  length = range.length;
  location = range.location;
  v101 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, range.location, range.length);
  v89 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v8, v9, v10);
  v90 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v11, v12, v13);
  objc_msgSend_setCount_(v89, v14, length, v15);
  objc_msgSend_setCount_(v90, v16, length, v17);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v22 = objc_msgSend_topRowStrokes(self, v18, v19, v20);
      v25 = objc_msgSend_pointerAtIndex_(v22, v23, location + i, v24);

      v29 = objc_msgSend_bottomRowStrokes(self, v26, v27, v28);
      v32 = objc_msgSend_pointerAtIndex_(v29, v30, location + i, v31);

      objc_msgSend_replacePointerAtIndex_withPointer_(v89, v33, i, v25);
      objc_msgSend_replacePointerAtIndex_withPointer_(v90, v34, i, v32);
    }
  }

  v35 = objc_msgSend_topRowStrokes(self, v18, v19, v20);
  objc_msgSend_tsu_removeRange_(v35, v36, location, length);

  v40 = objc_msgSend_bottomRowStrokes(self, v37, v38, v39);
  objc_msgSend_tsu_removeRange_(v40, v41, location, length);

  if (location >= index)
  {
    v45 = 0;
  }

  else
  {
    v45 = length;
  }

  v46 = objc_msgSend_topRowStrokes(self, v42, v43, v44);
  v47 = index - v45;
  objc_msgSend_tsu_insertRange_(v46, v48, v47, length);

  v52 = objc_msgSend_bottomRowStrokes(self, v49, v50, v51);
  objc_msgSend_tsu_insertRange_(v52, v53, v47, length);

  if (length)
  {
    v57 = 0;
    v58 = v47;
    v59 = length;
    do
    {
      v60 = objc_msgSend_pointerAtIndex_(v89, v54, v57, v56);
      v63 = objc_msgSend_pointerAtIndex_(v90, v61, v57, v62);
      v67 = objc_msgSend_topRowStrokes(self, v64, v65, v66);
      objc_msgSend_replacePointerAtIndex_withPointer_(v67, v68, v58, v60);

      v72 = objc_msgSend_bottomRowStrokes(self, v69, v70, v71);
      objc_msgSend_replacePointerAtIndex_withPointer_(v72, v73, v58, v63);

      ++v57;
      ++v58;
      --v59;
    }

    while (v59);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v74 = objc_msgSend_leftColumnStrokes(self, v54, v55, v56);
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v95, v100, 16);
  if (v77)
  {
    v78 = *v96;
    do
    {
      v79 = 0;
      do
      {
        if (*v96 != v78)
        {
          objc_enumerationMutation(v74);
        }

        objc_msgSend_moveRange_toIndex_(*(*(&v95 + 1) + 8 * v79++), v76, location, length, v47);
      }

      while (v77 != v79);
      v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v76, &v95, v100, 16);
    }

    while (v77);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v83 = objc_msgSend_rightColumnStrokes(self, v80, v81, v82);
  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v91, v99, 16);
  if (v86)
  {
    v87 = *v92;
    do
    {
      v88 = 0;
      do
      {
        if (*v92 != v87)
        {
          objc_enumerationMutation(v83);
        }

        objc_msgSend_moveRange_toIndex_(*(*(&v91 + 1) + 8 * v88++), v85, location, length, v47);
      }

      while (v86 != v88);
      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v85, &v91, v99, 16);
    }

    while (v86);
  }
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  v85 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, *&index, *&atIndex);
  v10 = objc_msgSend_topRowStrokes(self, v7, v8, v9);
  indexCopy = index;
  v74 = objc_msgSend_pointerAtIndex_(v10, v12, index, v13);

  v17 = objc_msgSend_bottomRowStrokes(self, v14, v15, v16);
  v20 = objc_msgSend_pointerAtIndex_(v17, v18, index, v19);

  v24 = objc_msgSend_topRowStrokes(self, v21, v22, v23);
  atIndexCopy = atIndex;
  v28 = objc_msgSend_pointerAtIndex_(v24, v26, atIndex, v27);

  v32 = objc_msgSend_bottomRowStrokes(self, v29, v30, v31);
  v35 = objc_msgSend_pointerAtIndex_(v32, v33, atIndexCopy, v34);

  v39 = objc_msgSend_topRowStrokes(self, v36, v37, v38);
  objc_msgSend_replacePointerAtIndex_withPointer_(v39, v40, index, v28);

  v44 = objc_msgSend_bottomRowStrokes(self, v41, v42, v43);
  objc_msgSend_replacePointerAtIndex_withPointer_(v44, v45, index, v35);

  v49 = objc_msgSend_topRowStrokes(self, v46, v47, v48);
  objc_msgSend_replacePointerAtIndex_withPointer_(v49, v50, atIndexCopy, v74);

  v54 = objc_msgSend_bottomRowStrokes(self, v51, v52, v53);
  objc_msgSend_replacePointerAtIndex_withPointer_(v54, v55, atIndexCopy, v20);

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v59 = objc_msgSend_leftColumnStrokes(self, v56, v57, v58);
  v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v79, v84, 16);
  if (v62)
  {
    v63 = *v80;
    do
    {
      v64 = 0;
      do
      {
        if (*v80 != v63)
        {
          objc_enumerationMutation(v59);
        }

        objc_msgSend_swapSegmentAtIndex_withSegmentAtIndex_(*(*(&v79 + 1) + 8 * v64++), v61, indexCopy, atIndexCopy);
      }

      while (v62 != v64);
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v61, &v79, v84, 16);
    }

    while (v62);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v68 = objc_msgSend_rightColumnStrokes(self, v65, v66, v67);
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v75, v83, 16);
  if (v71)
  {
    v72 = *v76;
    do
    {
      v73 = 0;
      do
      {
        if (*v76 != v72)
        {
          objc_enumerationMutation(v68);
        }

        objc_msgSend_swapSegmentAtIndex_withSegmentAtIndex_(*(*(&v75 + 1) + 8 * v73++), v70, indexCopy, atIndexCopy);
      }

      while (v71 != v73);
      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v75, v83, 16);
    }

    while (v71);
  }
}

- (id)strokeLayerForLeftSideOfColumn:(unsigned __int16)column
{
  columnCopy = column;
  if (objc_msgSend_count(self->_leftColumnStrokes, a2, column, v3) <= column)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_leftColumnStrokes, v6, columnCopy, v7);
  }

  return v8;
}

- (id)strokeLayerForRightSideOfColumn:(unsigned __int16)column
{
  columnCopy = column;
  if (objc_msgSend_count(self->_rightColumnStrokes, a2, column, v3) <= column)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_rightColumnStrokes, v6, columnCopy, v7);
  }

  return v8;
}

- (id)strokeLayerForTopOfRow:(unsigned int)row
{
  if (objc_msgSend_count(self->_topRowStrokes, a2, *&row, v3) <= row)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_topRowStrokes, v6, row, v7);
  }

  return v8;
}

- (id)strokeLayerForBottomOfRow:(unsigned int)row
{
  if (objc_msgSend_count(self->_bottomRowStrokes, a2, *&row, v3) <= row)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_bottomRowStrokes, v6, row, v7);
  }

  return v8;
}

- (id)unretainedStrokeLayerForLeftSideOfColumn:(unsigned __int16)column
{
  columnCopy = column;
  if (objc_msgSend_count(self->_leftColumnStrokes, a2, column, v3) <= column)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_leftColumnStrokes, v6, columnCopy, v7);
  }

  return v8;
}

- (id)unretainedStrokeLayerForRightSideOfColumn:(unsigned __int16)column
{
  columnCopy = column;
  if (objc_msgSend_count(self->_rightColumnStrokes, a2, column, v3) <= column)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_rightColumnStrokes, v6, columnCopy, v7);
  }

  return v8;
}

- (id)unretainedStrokeLayerForTopOfRow:(unsigned int)row
{
  if (objc_msgSend_count(self->_topRowStrokes, a2, *&row, v3) <= row)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_topRowStrokes, v6, row, v7);
  }

  return v8;
}

- (id)unretainedStrokeLayerForBottomOfRow:(unsigned int)row
{
  if (objc_msgSend_count(self->_bottomRowStrokes, a2, *&row, v3) <= row)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_pointerAtIndex_(self->_bottomRowStrokes, v6, row, v7);
  }

  return v8;
}

- (void)setBordersWithConcurrentCellMap:(id)map forTableInfo:(id)info
{
  mapCopy = map;
  objc_msgSend_willModify(self, v6, v7, v8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211E0F48;
  v10[3] = &unk_27845FB10;
  v11 = mapCopy;
  selfCopy = self;
  v9 = mapCopy;
  dispatch_apply(4uLL, 0, v10);
}

- (vector<TSTCellBorder)accumulateCellBordersConcurrentlyInRow:(TSTStrokeSidecar *)self atColumns:(SEL)columns
{
  v5 = a5;
  v6 = *&a4._row;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  sub_2211E18CC(retstr, (*(a5 + 1) - *a5) >> 1);
  v11 = objc_msgSend_count(self->_leftColumnStrokes, v8, v9, v10);
  v15 = objc_msgSend_count(self->_rightColumnStrokes, v12, v13, v14);
  v101 = v6;
  if (objc_msgSend_count(self->_topRowStrokes, v16, v17, v18) <= v6)
  {
    v22 = 0;
  }

  else
  {
    v22 = objc_msgSend_unretainedStrokeLayerForTopOfRow_(self, v19, v6, v21);
  }

  result = objc_msgSend_count(self->_bottomRowStrokes, v19, v20, v21);
  if (result <= v6)
  {
    v27 = 0;
  }

  else
  {
    v27 = objc_msgSend_unretainedStrokeLayerForBottomOfRow_(self, v24, v6, v26);
  }

  v28 = *v5;
  if (v5[1] != *v5)
  {
    v29 = 0;
    v99 = v5;
    do
    {
      v30 = *(v28 + 2 * v29);
      if (v11 <= v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = objc_msgSend_unretainedStrokeLayerForLeftSideOfColumn_(self, v24, *(v28 + 2 * v29), v26);
      }

      if (v15 <= v30)
      {
        v32 = 0;
        if (v22)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v32 = objc_msgSend_unretainedStrokeLayerForRightSideOfColumn_(self, v24, v30, v26);

        if (v22)
        {
          goto LABEL_19;
        }
      }

      if (v31 || v27 || v32)
      {
LABEL_19:
        v33 = v15;
        v34 = v11;
        selfCopy = self;
        v102 = objc_msgSend_cellBorder(TSTCellBorder, v24, v25, v26);
        if (v22)
        {
          v38 = objc_msgSend_findStrokeAndRangeAtIndex_(v22, v36, v30, v37);
          v42 = v38;
          if (v38)
          {
            v43 = objc_msgSend_range(v38, v39, v40, v41);
            if (v44)
            {
              if (v43 <= v30 && &v44[v43 - 1] >= v30)
              {
                v98 = objc_msgSend_stroke(v42, v44, v45, v46);
                v50 = objc_msgSend_order(v42, v47, v48, v49);
                objc_msgSend_setTopStroke_order_(v102, v51, v98, v50);
              }
            }
          }
        }

        if (v31)
        {
          v52 = objc_msgSend_findStrokeAndRangeAtIndex_(v31, v36, v101, v37);
          v56 = v52;
          if (v52)
          {
            v57 = objc_msgSend_range(v52, v53, v54, v55);
            if (v58)
            {
              if (v57 <= v101 && &v58[v57 - 1] >= v101)
              {
                v61 = objc_msgSend_stroke(v56, v58, v59, v60);
                v65 = objc_msgSend_order(v56, v62, v63, v64);
                objc_msgSend_setLeftStroke_order_(v102, v66, v61, v65);
              }
            }
          }
        }

        if (v27)
        {
          v67 = objc_msgSend_findStrokeAndRangeAtIndex_(v27, v36, v30, v37);
          v71 = v67;
          if (v67)
          {
            v72 = objc_msgSend_range(v67, v68, v69, v70);
            if (v73)
            {
              if (v72 <= v30 && &v73[v72 - 1] >= v30)
              {
                v76 = objc_msgSend_stroke(v71, v73, v74, v75);
                v80 = objc_msgSend_order(v71, v77, v78, v79);
                objc_msgSend_setBottomStroke_order_(v102, v81, v76, v80);
              }
            }
          }
        }

        if (v32)
        {
          v82 = objc_msgSend_findStrokeAndRangeAtIndex_(v32, v36, v101, v37);
          v86 = v82;
          if (v82)
          {
            v87 = objc_msgSend_range(v82, v83, v84, v85);
            if (v88)
            {
              if (v87 <= v101 && &v88[v87 - 1] >= v101)
              {
                v91 = objc_msgSend_stroke(v86, v88, v89, v90);
                v95 = objc_msgSend_order(v86, v92, v93, v94);
                objc_msgSend_setRightStroke_order_(v102, v96, v91, v95);
              }
            }
          }
        }

        v97 = retstr->var0[v29];
        retstr->var0[v29] = v102;

        self = selfCopy;
        v11 = v34;
        v15 = v33;
        v5 = v99;
      }

      ++v29;
      v28 = *v5;
    }

    while (v29 < (v5[1] - *v5) >> 1);
  }

  return result;
}

- (void)setStrokeLayer:(id)layer forTopOfRow:(unsigned int)row
{
  layerCopy = layer;
  v9 = objc_msgSend_topRowStrokes(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);
  rowCopy = row;

  if (v13 > row)
  {
    v18 = objc_msgSend_topRowStrokes(self, v15, v16, v17);
    objc_msgSend_replacePointerAtIndex_withPointer_(v18, v19, rowCopy, layerCopy);
  }
}

- (void)setStrokeLayer:(id)layer forBottomOfRow:(unsigned int)row
{
  layerCopy = layer;
  v9 = objc_msgSend_bottomRowStrokes(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);
  rowCopy = row;

  if (v13 > row)
  {
    v18 = objc_msgSend_bottomRowStrokes(self, v15, v16, v17);
    objc_msgSend_replacePointerAtIndex_withPointer_(v18, v19, rowCopy, layerCopy);
  }
}

- (void)setStrokeLayer:(id)layer forLeftOfColumn:(unsigned __int16)column
{
  columnCopy = column;
  layerCopy = layer;
  v9 = objc_msgSend_leftColumnStrokes(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);
  v14 = columnCopy;

  if (v13 > columnCopy)
  {
    v18 = objc_msgSend_leftColumnStrokes(self, v15, v16, v17);
    objc_msgSend_replacePointerAtIndex_withPointer_(v18, v19, v14, layerCopy);
  }
}

- (void)setStrokeLayer:(id)layer forRightOfColumn:(unsigned __int16)column
{
  columnCopy = column;
  layerCopy = layer;
  v9 = objc_msgSend_rightColumnStrokes(self, v6, v7, v8);
  v13 = objc_msgSend_count(v9, v10, v11, v12);
  v14 = columnCopy;

  if (v13 > columnCopy)
  {
    v18 = objc_msgSend_rightColumnStrokes(self, v15, v16, v17);
    objc_msgSend_replacePointerAtIndex_withPointer_(v18, v19, v14, layerCopy);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[96], v6);

  v11 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v8, v9, v10);
  leftColumnStrokes = self->_leftColumnStrokes;
  self->_leftColumnStrokes = v11;

  v16 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v13, v14, v15);
  rightColumnStrokes = self->_rightColumnStrokes;
  self->_rightColumnStrokes = v16;

  v21 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v18, v19, v20);
  topRowStrokes = self->_topRowStrokes;
  self->_topRowStrokes = v21;

  v26 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v23, v24, v25);
  bottomRowStrokes = self->_bottomRowStrokes;
  self->_bottomRowStrokes = v26;

  objc_msgSend_setMaxOrder_(self, v28, v7[30], v29);
  v31 = v7[31];
  v30 = v7[32];
  v35 = objc_msgSend_leftColumnStrokes(self, v32, v33, v34);
  objc_msgSend_setCount_(v35, v36, v31, v37);

  v41 = objc_msgSend_rightColumnStrokes(self, v38, v39, v40);
  objc_msgSend_setCount_(v41, v42, v31, v43);

  v47 = objc_msgSend_topRowStrokes(self, v44, v45, v46);
  objc_msgSend_setCount_(v47, v48, v30, v49);

  v53 = objc_msgSend_bottomRowStrokes(self, v50, v51, v52);
  objc_msgSend_setCount_(v53, v54, v30, v55);

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_2211E21E8;
  v74[3] = &unk_278461108;
  v74[4] = self;
  v75 = &unk_2834A2E28;
  v56 = unarchiverCopy;
  v57 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v56, v58, (v7 + 6), v57, 0, v74);

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = sub_2211E2278;
  v72[3] = &unk_278461108;
  v72[4] = self;
  v73 = &unk_2834A2E28;
  v59 = v56;
  v60 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v59, v61, (v7 + 12), v60, 0, v72);

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_2211E2308;
  v70[3] = &unk_278461108;
  v70[4] = self;
  v71 = &unk_2834A2E28;
  v62 = v59;
  v63 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v62, v64, (v7 + 18), v63, 0, v70);

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_2211E2398;
  v68[3] = &unk_278461108;
  v68[4] = self;
  v69 = &unk_2834A2E28;
  v65 = v62;
  v66 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v65, v67, (v7 + 24), v66, 0, v68);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_topRowStrokes(self, v5, v6, v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);
  v16 = objc_msgSend_bottomRowStrokes(self, v13, v14, v15);
  v20 = objc_msgSend_count(v16, v17, v18, v19);

  if (v12 != v20)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTStrokeSidecar saveToArchiver:]", v23);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 1021, 0, "top and bottom stroke run arrays have different counts");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
  }

  v33 = objc_msgSend_leftColumnStrokes(self, v21, v22, v23);
  v37 = objc_msgSend_count(v33, v34, v35, v36);
  v41 = objc_msgSend_rightColumnStrokes(self, v38, v39, v40);
  v45 = objc_msgSend_count(v41, v42, v43, v44);

  if (v37 != v45)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSTStrokeSidecar saveToArchiver:]", v47);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeSidecar.mm", v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 1022, 0, "left and right stroke run arrays have different counts");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
  }

  v57 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v59 = objc_msgSend_messageWithNewFunction_descriptor_(v57, v58, sub_2211E35D0, off_2812E4498[96]);

  v63 = objc_msgSend_maxOrder(self, v60, v61, v62);
  v59[4] |= 1u;
  v59[30] = v63;
  v67 = objc_msgSend_leftColumnStrokes(self, v64, v65, v66);
  v71 = objc_msgSend_count(v67, v68, v69, v70);
  v59[4] |= 2u;
  v59[31] = v71;

  v75 = objc_msgSend_topRowStrokes(self, v72, v73, v74);
  v79 = objc_msgSend_count(v75, v76, v77, v78);
  v59[4] |= 4u;
  v59[32] = v79;

  v83 = objc_msgSend_topRowStrokes(self, v80, v81, v82);
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = sub_2211E290C;
  v117[3] = &unk_278461130;
  v84 = v57;
  v118 = v84;
  v119 = v59;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(v83, v85, v117, v86);

  v90 = objc_msgSend_leftColumnStrokes(self, v87, v88, v89);
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = sub_2211E2A20;
  v114[3] = &unk_278461130;
  v91 = v84;
  v115 = v91;
  v116 = v59;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(v90, v92, v114, v93);

  v97 = objc_msgSend_bottomRowStrokes(self, v94, v95, v96);
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = sub_2211E2B34;
  v111[3] = &unk_278461130;
  v98 = v91;
  v112 = v98;
  v113 = v59;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(v97, v99, v111, v100);

  v104 = objc_msgSend_rightColumnStrokes(self, v101, v102, v103);
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = sub_2211E2C48;
  v108[3] = &unk_278461130;
  v105 = v98;
  v109 = v105;
  v110 = v59;
  objc_msgSend_tsu_enumerateNonNullPointersUsingBlock_(v104, v106, v108, v107);
}

@end