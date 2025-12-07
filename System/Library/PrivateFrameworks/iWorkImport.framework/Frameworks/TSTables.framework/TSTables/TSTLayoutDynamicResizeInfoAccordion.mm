@interface TSTLayoutDynamicResizeInfoAccordion
- (TSTLayoutDynamicResizeInfoAccordion)initWithDynamicResizeInfo:(id)info;
- (TSTLayoutDynamicResizeInfoAccordion)initWithLayoutEngine:(id)engine columnRegion:(id)region rowRegion:(id)rowRegion;
- (double)applyResizeHeightFactor:(double)factor;
- (double)applyResizeWidthFactor:(double)factor;
- (double)p_applyAccordionResizeFactor:(double)factor region:(id)region direction:(int64_t)direction totalOfCaptured:(double)captured count:(unsigned int)count capturedArray:(void *)array currentArray:(void *)currentArray minimumArray:(void *)self0;
- (void)captureNewMinimumRowHeights:(id)heights;
@end

@implementation TSTLayoutDynamicResizeInfoAccordion

- (TSTLayoutDynamicResizeInfoAccordion)initWithLayoutEngine:(id)engine columnRegion:(id)region rowRegion:(id)rowRegion
{
  v6.receiver = self;
  v6.super_class = TSTLayoutDynamicResizeInfoAccordion;
  result = [(TSTLayoutDynamicResizeInfo *)&v6 initWithLayoutEngine:engine columnRegion:region rowRegion:rowRegion];
  if (result)
  {
    result->_heightFactor = 1.0;
    result->_widthFactor = 1.0;
  }

  return result;
}

- (TSTLayoutDynamicResizeInfoAccordion)initWithDynamicResizeInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = TSTLayoutDynamicResizeInfoAccordion;
  result = [(TSTLayoutDynamicResizeInfo *)&v4 initWithDynamicResizeInfo:info];
  if (result)
  {
    result->_heightFactor = 1.0;
    result->_widthFactor = 1.0;
  }

  return result;
}

- (double)p_applyAccordionResizeFactor:(double)factor region:(id)region direction:(int64_t)direction totalOfCaptured:(double)captured count:(unsigned int)count capturedArray:(void *)array currentArray:(void *)currentArray minimumArray:(void *)self0
{
  regionCopy = region;
  v19 = -(captured - captured * factor);
  factorCopy = factor;
  do
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    countCopy = count;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    capturedCopy = captured;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = factorCopy * captured;
    if (direction)
    {
      started = objc_msgSend_startColumnIndex(self, v16, v17, v18);
    }

    else
    {
      started = objc_msgSend_startRowIndex(self, v16, v17, v18);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_221494594;
    v29[3] = &unk_278465AB0;
    v30 = started;
    v29[8] = currentArray;
    v29[9] = array;
    *&v29[10] = factor;
    v29[11] = minimumArray;
    v29[4] = &v35;
    v29[5] = &v31;
    v29[6] = &v43;
    v29[7] = &v39;
    objc_msgSend_enumerateInDirection_usingBlock_(regionCopy, v22, direction, v29);
    v23 = v40[3];
    if (*(v44 + 6) && vabdd_f64(v19, v23) >= 0.1 && fabs(v23 / v19 + -1.0) >= 0.0001)
    {
      v24 = 0;
      factor = v32[3] / v36[3];
    }

    else
    {
      v24 = 1;
      if (v23 > v19)
      {
        factorCopy = (v23 + captured) / captured;
      }
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v43, 8);
  }

  while (!v24);

  return factorCopy;
}

- (double)applyResizeHeightFactor:(double)factor
{
  if (objc_msgSend_numberOfRows(self, a2, v3, v4))
  {
    v10 = objc_msgSend_rowRegion(self, v7, v8, v9);
    objc_msgSend_capturedRowHeightTotal(self, v11, v12, v13);
    v15 = v14;
    v19 = objc_msgSend_numberOfResizableRows(self, v16, v17, v18);
    objc_msgSend_p_applyAccordionResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v20, v10, 0, v19, &self->super._capturedRowHeights, &self->super._currentRowHeights, &self->super._minimumRowHeights, factor, v15);
    factor = v21;
  }

  self->_heightFactor = factor;
  return factor;
}

- (double)applyResizeWidthFactor:(double)factor
{
  if (objc_msgSend_numberOfColumns(self, a2, v3, v4))
  {
    v10 = objc_msgSend_columnRegion(self, v7, v8, v9);
    objc_msgSend_capturedColumnWidthTotal(self, v11, v12, v13);
    v15 = v14;
    v19 = objc_msgSend_numberOfResizableColumns(self, v16, v17, v18);
    objc_msgSend_p_applyAccordionResizeFactor_region_direction_totalOfCaptured_count_capturedArray_currentArray_minimumArray_(self, v20, v10, 1, v19, &self->super._capturedColumnWidths, &self->super._currentColumnWidths, &self->super._minimumColumnWidths, factor, v15);
    factor = v21;
  }

  self->_widthFactor = factor;
  return factor;
}

- (void)captureNewMinimumRowHeights:(id)heights
{
  heightsCopy = heights;
  v8 = objc_msgSend_numberOfRows(heightsCopy, v5, v6, v7);
  v9 = v8;
  v21 = 0;
  sub_221420DAC(&__p, v8, &v21);
  if (v8)
  {
    v13 = 0;
    v14 = -1.0;
    do
    {
      if (self->super._capturedRowHeights.__begin_[v13] == 0.0)
      {
        v10 = __p;
        *(__p + v13++) = 0;
      }

      else
      {
        v15 = objc_msgSend_tableRowsBehavior(heightsCopy, v10, v11, v12);
        v18 = 8.0;
        if (v15 == 1)
        {
          objc_msgSend_fittingHeightOfRow_(heightsCopy, v16, v13, v17, 8.0);
        }

        *(__p + v13) = v18;
        if (v14 < 0.0)
        {
          objc_msgSend_strokeHeightOfGridRow_inColumnRange_(heightsCopy, v16, v13, 0, 2147483646);
          v14 = v19;
        }

        objc_msgSend_strokeHeightOfGridRow_inColumnRange_(heightsCopy, v16, v13 + 1, 0, 2147483646);
        v10 = __p;
        *(__p + v13) = (v14 + v20) * 0.5 + *(__p + v13);
        ++v13;
        v14 = v20;
      }
    }

    while (v13 != v9);
  }

  else
  {
    v10 = __p;
  }

  if (&self->super._minimumRowHeights != &__p)
  {
    sub_22128026C(&self->super._minimumRowHeights, v10, v23, (v23 - v10) >> 3);
    v10 = __p;
  }

  if (v10)
  {
    v23 = v10;
    operator delete(v10);
  }
}

@end