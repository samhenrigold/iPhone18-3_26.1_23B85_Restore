@interface TSTLayoutDynamicResizeInfoUnify
- (BOOL)applyFixedHeight:(double)height;
- (BOOL)applyFixedWidth:(double)width;
- (BOOL)p_applyUnifyFixedSize:(double)size region:(id)region direction:(int64_t)direction count:(unsigned int)count currentArray:(void *)array minimumArray:(void *)minimumArray;
- (double)applyResizeHeightFactor:(double)factor;
- (double)applyResizeWidthFactor:(double)factor;
- (double)p_applyUnifyResizeFactor:(double)factor region:(id)region direction:(int64_t)direction totalOfCaptured:(double)captured count:(unsigned int)count capturedArray:(void *)array currentArray:(void *)currentArray minimumArray:(void *)self0;
@end

@implementation TSTLayoutDynamicResizeInfoUnify

- (double)p_applyUnifyResizeFactor:(double)factor region:(id)region direction:(int64_t)direction totalOfCaptured:(double)captured count:(unsigned int)count capturedArray:(void *)array currentArray:(void *)currentArray minimumArray:(void *)self0
{
  regionCopy = region;
  v20 = -(captured - captured * factor);
  v21 = factor * captured;
  factorCopy = factor;
  while (1)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    countCopy = count;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    capturedCopy = captured;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = v21;
    v22 = direction ? objc_msgSend_startColumnIndex(self, v17, v18, v19) : objc_msgSend_startRowIndex(self, v17, v18, v19);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2214914C4;
    v30[3] = &unk_278465AB0;
    v31 = v22;
    v30[7] = &v40;
    v30[8] = currentArray;
    *&v30[9] = captured / count;
    *&v30[10] = factor;
    v30[11] = minimumArray;
    v30[4] = &v36;
    v30[5] = &v32;
    v30[6] = &v44;
    objc_msgSend_enumerateInDirection_usingBlock_(regionCopy, v23, direction, v30);
    v24 = v41[3];
    if (!*(v45 + 6) || vabdd_f64(v20, v24) < 0.1 || fabs(v24 / v20 + -1.0) < 0.0001)
    {
      break;
    }

    factor = v33[3] / v37[3];
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }

  v25 = factorCopy;
  if (v24 > v20)
  {
    v25 = (v24 + captured) / captured;
  }

  v26 = &OBJC_IVAR___TSTLayoutDynamicResizeInfoUnify_mTargetWidth;
  if (!direction)
  {
    v26 = &OBJC_IVAR___TSTLayoutDynamicResizeInfoUnify_mTargetHeight;
  }

  *(&self->super.super.isa + *v26) = captured / count * factor;
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v25;
}

- (BOOL)p_applyUnifyFixedSize:(double)size region:(id)region direction:(int64_t)direction count:(unsigned int)count currentArray:(void *)array minimumArray:(void *)minimumArray
{
  regionCopy = region;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (direction)
  {
    started = objc_msgSend_startColumnIndex(self, v13, v14, v15);
  }

  else
  {
    started = objc_msgSend_startRowIndex(self, v13, v14, v15);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_221491688;
  v21[3] = &unk_278465AD8;
  v22 = started;
  *&v21[6] = size;
  v21[7] = minimumArray;
  v21[4] = &v23;
  v21[5] = array;
  objc_msgSend_enumerateInDirection_usingBlock_(regionCopy, v18, direction, v21);
  v19 = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return v19;
}

- (double)applyResizeHeightFactor:(double)factor
{
  if (objc_msgSend_numberOfRows(self, a2, v3, v4))
  {
    v10 = objc_msgSend_rowRegion(self, v7, v8, v9);
    objc_msgSend_capturedRowHeightTotal(self, v11, v12, v13);
    v15 = v14;
    v19 = objc_msgSend_rowRegion(self, v16, v17, v18);
    v23 = objc_msgSend_numberOfIntersectingRows(v19, v20, v21, v22);
    objc_msgSend_p_applyUnifyResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v24, v10, 0, v23, &self->super._capturedRowHeights, &self->super._currentRowHeights, &self->super._minimumRowHeights, factor, v15);
    factor = v25;
  }

  return factor;
}

- (double)applyResizeWidthFactor:(double)factor
{
  if (objc_msgSend_numberOfColumns(self, a2, v3, v4))
  {
    v10 = objc_msgSend_columnRegion(self, v7, v8, v9);
    objc_msgSend_capturedColumnWidthTotal(self, v11, v12, v13);
    v15 = v14;
    v19 = objc_msgSend_columnRegion(self, v16, v17, v18);
    v23 = objc_msgSend_numberOfIntersectingColumns(v19, v20, v21, v22);
    objc_msgSend_p_applyUnifyResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v24, v10, 1, v23, &self->super._capturedColumnWidths, &self->super._currentColumnWidths, &self->super._minimumColumnWidths, factor, v15);
    factor = v25;
  }

  return factor;
}

- (BOOL)applyFixedHeight:(double)height
{
  if (!objc_msgSend_numberOfRows(self, a2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_rowRegion(self, v7, v8, v9);
  v14 = objc_msgSend_rowRegion(self, v11, v12, v13);
  v18 = objc_msgSend_numberOfIntersectingRows(v14, v15, v16, v17);
  v20 = objc_msgSend_p_applyUnifyFixedSize_region_direction_count_currentArray_minimumArray_(self, v19, v10, 0, v18, &self->super._currentRowHeights, &self->super._minimumRowHeights, height);

  return v20;
}

- (BOOL)applyFixedWidth:(double)width
{
  if (!objc_msgSend_numberOfColumns(self, a2, v3, v4))
  {
    return 0;
  }

  v10 = objc_msgSend_columnRegion(self, v7, v8, v9);
  v14 = objc_msgSend_columnRegion(self, v11, v12, v13);
  v18 = objc_msgSend_numberOfIntersectingColumns(v14, v15, v16, v17);
  v20 = objc_msgSend_p_applyUnifyFixedSize_region_direction_count_currentArray_minimumArray_(self, v19, v10, 1, v18, &self->super._currentColumnWidths, &self->super._minimumColumnWidths, width);

  return v20;
}

@end