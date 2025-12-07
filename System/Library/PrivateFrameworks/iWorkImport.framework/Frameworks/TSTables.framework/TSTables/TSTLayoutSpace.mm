@interface TSTLayoutSpace
+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRangeOfLayoutSpace:(id)space;
+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionColumnGridRange:(id)range ofLayoutSpace:(id)space;
+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionGridRange:(id)range ofLayoutSpace:(id)space;
+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionRowGridRange:(id)range ofLayoutSpace:(id)space;
- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForColumnGridRange:(SEL)range;
- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForGridRange:(SEL)range strokeWidthOverride:(id)override;
- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForRowGridRange:(SEL)range;
- ($49C15799EE3625B6AB482F2FFBF0D806)p_frameSpecForGridRange:(SEL)range frameType:(id)type strokeWidthOverride:(int)override;
- ($85CD2974BE96D4886BB301820D1C36C2)gridPointHitByCanvasPoint:(CGPoint)point tabsViewable:(BOOL)viewable;
- ($85CD2974BE96D4886BB301820D1C36C2)gridPointHitByLayoutPoint:(CGPoint)point;
- ($85CD2974BE96D4886BB301820D1C36C2)p_gridPointForTablePoint:(CGPoint)point;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRangeForLayoutRect:(CGRect)rect;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_bodyGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_extendedBodyGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_footerRowsGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_gridRangeForTableRect:(CGRect)rect;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_headerColumnsGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_headerRowsGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_topLeftCornerGridRange;
- (BOOL)containsCellRange:(TSUCellRect)range;
- (BOOL)containsGridRange:(id)range;
- (BOOL)intersectsCellRange:(TSUCellRect)range;
- (BOOL)intersectsColumnGridRange:(id)range;
- (BOOL)intersectsGridRange:(id)range;
- (BOOL)intersectsRowGridRange:(id)range;
- (BOOL)p_drawStrokeForGridColumn:(unsigned int)column strokeRect:(id)rect clearStroke:(BOOL)stroke shadowType:(int)type context:(CGContext *)context;
- (BOOL)p_drawStrokeForGridRow:(unsigned int)row strokeRect:(id)rect clearStroke:(BOOL)stroke shadowType:(int)type context:(CGContext *)context;
- (BOOL)p_getLayoutDirectionLeftToRight;
- (CGAffineTransform)transformFromCanvas;
- (CGAffineTransform)transformFromDevice;
- (CGAffineTransform)transformToCanvas;
- (CGAffineTransform)transformToDevice;
- (CGPoint)canvasPointForLayoutPoint:(CGPoint)point;
- (CGPoint)layoutPointForCanvasPoint:(CGPoint)point;
- (CGPoint)p_layoutOffsetForGridPoint:(id)point;
- (CGPoint)p_layoutOffsetForTablePoint:(CGPoint)point;
- (CGPoint)p_layoutPointForTablePoint:(CGPoint)point;
- (CGPoint)p_tablePointForLayoutPoint:(CGPoint)point;
- (CGPoint)tableOffset;
- (CGRect)alignedContentFrameForGridRange:(id)range;
- (CGRect)alignedFrame;
- (CGRect)alignedFrameForGridRange:(id)range;
- (CGRect)alignedOverrideFrameForGridRange:(id)range strokeWidthOverride:(double)override;
- (CGRect)alignedRectForLayoutRect:(CGRect)rect;
- (CGRect)alignedStrokeFrame;
- (CGRect)alignedStrokeFrameForCellRange:(TSUCellRect)range;
- (CGRect)alignedStrokeFrameForGridRange:(id)range;
- (CGRect)alignedStrokeFrameForTableNameBorder;
- (CGRect)alignedStrokeLineForColumnGridRange:(id)range;
- (CGRect)alignedStrokeLineForRowGridRange:(id)range;
- (CGRect)cachedAlignedFrame;
- (CGRect)cachedAlignedStrokeFrame;
- (CGRect)cachedFrame;
- (CGRect)cachedStrokeFrame;
- (CGRect)canvasFrame;
- (CGRect)canvasFrameForCellRange:(TSUCellRect)range;
- (CGRect)canvasFrameForGridRange:(id)range;
- (CGRect)canvasRectForLayoutRect:(CGRect)rect;
- (CGRect)canvasStrokeFrame;
- (CGRect)canvasStrokeFrameForGridRange:(id)range;
- (CGRect)contentFrameForGridRange:(id)range;
- (CGRect)contentFrameForRange:(TSUCellRect)range;
- (CGRect)frame;
- (CGRect)frameForGridRange:(id)range;
- (CGRect)frameForRange:(TSUCellRect)range;
- (CGRect)frameForTableNameBorder;
- (CGRect)layoutRectForCanvasRect:(CGRect)rect;
- (CGRect)p_layoutRectForTableRect:(CGRect)rect;
- (CGRect)p_tableRectForGridRange:(id)range;
- (CGRect)p_tableRectForLayoutRect:(CGRect)rect;
- (CGRect)strokeFrame;
- (CGRect)strokeFrameForGridRange:(id)range;
- (CGRect)strokeFrameForRange:(TSUCellRect)range;
- (CGRect)strokeFrameForTableNameBorder;
- (TSTLayout)layout;
- (TSTLayoutEngine)layoutEngine;
- (TSTLayoutSpace)initWithLayoutSpaceBundle:(id)bundle type:(int)type;
- (TSTLayoutSpaceBundle)bundle;
- (TSUCellRect)cellRange;
- (TSUCellRect)intersectionCellRange:(TSUCellRect)range;
- (TSUCellRect)nearestRangeForLayoutRect:(CGRect)rect;
- (TSUCellRect)p_rangeForLayoutRect:(CGRect)rect;
- (TSUCellRect)rangeIntersectingLayoutRect:(CGRect)rect;
- (TSUCellRect)visiblePartOfRange:(TSUCellRect)range;
- (TSUCellRect)visibleRange;
- (double)canvasPositionForGridColumn:(unsigned int)column;
- (double)canvasPositionForGridRow:(unsigned int)row;
- (double)headerColumnsWidth;
- (double)headerRowsHeight;
- (double)p_bodyTranslationX;
- (double)p_bodyTranslationY;
- (double)p_layoutCoordinateForGridColumn:(unsigned int)column;
- (double)p_layoutCoordinateForGridRow:(unsigned int)row;
- (double)p_rawTableCoordinateForGridColumn:(unsigned int)column;
- (double)p_tableCoordinateForGridColumn:(unsigned int)column;
- (double)p_tableCoordinateForGridRow:(unsigned int)row;
- (double)p_tableCoordinateForX:(double)x;
- (double)p_tableCoordinateForY:(double)y;
- (id)alignedMaskStrokeFramePathForTransform:(CGAffineTransform *)transform cornerRadius:(double)radius;
- (id)alignedStrokeFramePathForGridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero cornerRadius:(double)radius;
- (id)alignedStrokeLinePathForColumnGridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero cornerRadius:(double)radius;
- (id)alignedStrokeLinePathForRowGridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero cornerRadius:(double)radius;
- (id)p_createColumnCoordinatesForGridRange:(id)range invalidColumnIndex:(unsigned __int16)index previousCoordinates:(id)coordinates outCoordinatesChanged:(BOOL *)changed;
- (id)p_createRowCoordinatesForGridRange:(id)range invalidRowIndex:(unsigned int)index previousCoordinates:(id)coordinates validateSingleRow:(BOOL)row outCoordinatesChanged:(BOOL *)changed;
- (int)p_cellTypeForGridPoint:(id)point;
- (int)validate:(id)validate;
- (int)validateCoordinateCache:(id)cache;
- (int)validateTableOffset:(id)offset;
- (unsigned)p_gridColumnForTableCoordinate:(double)coordinate;
- (unsigned)p_gridRowForTableCoordinate:(double)coordinate;
- (void)alignStrokeCoordinatesOfBeginPoint:(CGPoint *)point endPoint:(CGPoint *)endPoint width:(double *)width;
- (void)dealloc;
- (void)drawSingleStroke:(id)stroke context:(CGContext *)context beginPoint:(CGPoint)point endPoint:(CGPoint)endPoint width:(double)width strokeWidthForDrawing:(double)drawing strokeFrame:(CGRect)frame;
- (void)drawStrokesInGridRange:(id)range clearStrokes:(BOOL)strokes context:(CGContext *)context;
- (void)invalidateCoordinates;
- (void)invalidateCoordinatesAfterColumn:(unsigned __int16)column;
- (void)invalidateCoordinatesAfterRow:(unsigned int)row;
- (void)invalidateCoordinatesForEditingCellID:(TSUCellCoord)d;
- (void)p_alignFrameSpec:(id *)spec;
- (void)p_alignStrokeHeight:(double)height deviceWidth:(double *)width scaledWidth:(double *)scaledWidth;
- (void)p_alignStrokeWidth:(double)width deviceWidth:(double *)deviceWidth scaledWidth:(double *)scaledWidth;
- (void)setGridRange:(id)range;
- (void)setTransformFromCanvas:(CGAffineTransform *)canvas;
- (void)setTransformFromDevice:(CGAffineTransform *)device;
- (void)setTransformToCanvas:(CGAffineTransform *)canvas;
- (void)setTransformToDevice:(CGAffineTransform *)device;
- (void)setUserSpaceToDeviceSpaceTransform:(CGAffineTransform *)transform;
- (void)setViewScale:(double)scale;
- (void)validateCachedFrames;
- (void)validateCoordinateDirection;
@end

@implementation TSTLayoutSpace

- (TSTLayout)layout
{
  v4 = objc_msgSend_bundle(self, a2, v2, v3);
  v8 = objc_msgSend_layout(v4, v5, v6, v7);

  return v8;
}

- (TSTLayoutEngine)layoutEngine
{
  v4 = objc_msgSend_bundle(self, a2, v2, v3);
  v8 = objc_msgSend_layout(v4, v5, v6, v7);
  v12 = objc_msgSend_layoutEngine(v8, v9, v10, v11);

  return v12;
}

- (BOOL)p_getLayoutDirectionLeftToRight
{
  v4 = objc_msgSend_layout(self, a2, v2, v3);
  v8 = objc_msgSend_tableInfo(v4, v5, v6, v7);
  v12 = objc_msgSend_tableStyle(v8, v9, v10, v11);

  LOBYTE(v4) = objc_msgSend_intValueForProperty_(v12, v13, 798, v14) != 1;
  return v4;
}

- (TSTLayoutSpace)initWithLayoutSpaceBundle:(id)bundle type:(int)type
{
  bundleCopy = bundle;
  v27.receiver = self;
  v27.super_class = TSTLayoutSpace;
  v7 = [(TSTLayoutSpace *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_bundle, bundleCopy);
    v9 = MEMORY[0x277CBF2C0];
    v10 = *MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    v12 = *MEMORY[0x277CBF2C0];
    *&v8->_transformToCanvas.a = *MEMORY[0x277CBF2C0];
    *&v8->_transformToCanvas.c = v11;
    v13 = *(v9 + 32);
    *&v8->_transformFromCanvas.c = v11;
    *&v8->_transformFromCanvas.tx = v13;
    *&v8->_transformToCanvas.tx = v13;
    *&v8->_transformFromCanvas.a = v10;
    *&v8->_transformToDevice.a = v10;
    *&v8->_transformToDevice.c = v11;
    v8->_invalidTableOffset = 1;
    v8->_gridRange.topLeft = -1;
    v8->_gridRange.bottomRight = -1;
    v8->_viewScale = 1.0;
    v8->_invalidColumnIndex = 0;
    v8->_layoutSpaceType = type;
    v8->_invalidRowIndex = 0;
    *&v8->_transformToDevice.tx = v13;
    *&v8->_transformFromDevice.a = v12;
    v14 = *(v9 + 32);
    *&v8->_transformFromDevice.c = v11;
    *&v8->_transformFromDevice.tx = v14;
    *&v8->_headerColumnsRepeat = 0x1000000;
    headerRowColumnCoordinates = v8->_headerRowColumnCoordinates;
    v8->_headerRowColumnCoordinates = 0;

    bodyColumnCoordinates = v8->_bodyColumnCoordinates;
    v8->_bodyColumnCoordinates = 0;

    headerColumnRowCoordinates = v8->_headerColumnRowCoordinates;
    v8->_headerColumnRowCoordinates = 0;

    bodyRowCoordinates = v8->_bodyRowCoordinates;
    v8->_bodyRowCoordinates = 0;

    v19 = *MEMORY[0x277CBF3A0];
    v20 = *(MEMORY[0x277CBF3A0] + 16);
    v8->_cachedFrame.origin = *MEMORY[0x277CBF3A0];
    v8->_cachedFrame.size = v20;
    v8->_cachedAlignedFrame.origin = v19;
    v8->_cachedAlignedFrame.size = v20;
    v8->_cachedStrokeFrame.origin = v19;
    v8->_cachedStrokeFrame.size = v20;
    v8->_cachedAlignedStrokeFrame.origin = v19;
    v8->_cachedAlignedStrokeFrame.size = v20;
    v21 = objc_alloc_init(TSTLayoutSpaceBezierPathCache);
    bezierPathCache = v8->_bezierPathCache;
    v8->_bezierPathCache = v21;

    pthread_rwlock_init(&v8->mLock, 0);
    v8->_layoutDirectionIsLeftToRight = objc_msgSend_p_getLayoutDirectionLeftToRight(v8, v23, v24, v25);
  }

  return v8;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->mLock);
  v3.receiver = self;
  v3.super_class = TSTLayoutSpace;
  [(TSTLayoutSpace *)&v3 dealloc];
}

- (void)invalidateCoordinates
{
  self->_invalidColumnIndex = 0;
  self->_invalidRowIndex = 0;
  self->_invalidatedForEditingCell = 0;
}

- (void)invalidateCoordinatesAfterColumn:(unsigned __int16)column
{
  invalidColumnIndex = self->_invalidColumnIndex;
  if (invalidColumnIndex >= column)
  {
    columnCopy = column;
  }

  else
  {
    columnCopy = self->_invalidColumnIndex;
  }

  if (invalidColumnIndex == 0x7FFF)
  {
    columnCopy2 = column;
  }

  else
  {
    columnCopy2 = columnCopy;
  }

  self->_invalidColumnIndex = columnCopy2;
  self->_invalidatedForEditingCell = 0;
}

- (void)invalidateCoordinatesAfterRow:(unsigned int)row
{
  invalidRowIndex = self->_invalidRowIndex;
  if (invalidRowIndex >= row)
  {
    rowCopy = row;
  }

  else
  {
    rowCopy = self->_invalidRowIndex;
  }

  if (invalidRowIndex == 0x7FFFFFFF)
  {
    rowCopy2 = row;
  }

  else
  {
    rowCopy2 = rowCopy;
  }

  self->_invalidRowIndex = rowCopy2;
  self->_invalidatedForEditingCell = 0;
}

- (void)invalidateCoordinatesForEditingCellID:(TSUCellCoord)d
{
  dCopy = d;
  v6 = objc_msgSend_layout(self, a2, *&d, v3);
  v10 = objc_msgSend_tableInfo(v6, v7, v8, v9);
  isSingleCellOrMergeRange = objc_msgSend_isSingleCellOrMergeRange_(v10, v11, *&dCopy, 0x100000001);

  if ((isSingleCellOrMergeRange & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTLayoutSpace invalidateCoordinatesForEditingCellID:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 289, 0, "Invalidating for an editing cell range that is not a single logical cell.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v25 = objc_msgSend_layout(self, v13, v14, v15);
  v29 = objc_msgSend_tableInfo(v25, v26, v27, v28);
  v32 = objc_msgSend_mergeRangeAtCellID_(v29, v30, *&dCopy, v31);
  v34 = v33;
  v35.origin = v32;
  v35.size = v33;

  if (v32 != 0x7FFFFFFF && (v32 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(*&v34) && v34.numberOfColumns)
  {
    dCopy.row = TSUCellRect::lastRow(&v35);
  }

  self->_invalidatedForEditingCell = 1;
  self->_invalidRowIndex = dCopy.row;
  self->_invalidColumnIndex = self->_gridRange.bottomRight.column;
}

- (int)validate:(id)validate
{
  validateCopy = validate;
  if (!self->_invalidTableOffset && self->_invalidColumnIndex == 0x7FFF && self->_invalidRowIndex == 0x7FFFFFFF)
  {
    v8 = 0;
  }

  else
  {
    objc_msgSend_lockForWrite(self, v4, v5, v6);
    self->_layoutDirectionIsLeftToRight = objc_msgSend_p_getLayoutDirectionLeftToRight(self, v9, v10, v11);
    objc_msgSend_validateCachedFrames(self, v12, v13, v14);
    v17 = objc_msgSend_validateCoordinateCache_(self, v15, validateCopy, v16);
    v20 = objc_msgSend_validateTableOffset_(self, v18, validateCopy, v19);
    v24 = objc_msgSend_bezierPathCache(self, v21, v22, v23);
    objc_msgSend_removeAllObjects(v24, v25, v26, v27);

    objc_msgSend_unlock(self, v28, v29, v30);
    v8 = v20 | v17;
  }

  return v8;
}

- (void)validateCoordinateDirection
{
  if (!self->_layoutDirectionIsLeftToRight)
  {
    v5 = objc_msgSend_layout(self, a2, v2, v3);
    sub_2211B410C(v5, 0);
    v7 = v6 + self->_tableOffset.x * -2.0;

    objc_msgSend_setTableWidthForRightToLeft_(self->_bodyColumnCoordinates, v8, v9, v10, v7);
    headerRowColumnCoordinates = self->_headerRowColumnCoordinates;

    objc_msgSend_setTableWidthForRightToLeft_(headerRowColumnCoordinates, v11, v12, v13, v7);
  }
}

- (void)setGridRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (range.var0.var0 != -1 && range.var1.var0 != -1 && range.var0.var0 <= range.var1.var0 && range.var0.var1 != 0xFFFFFFFFLL && range.var1.var1 != 0xFFFFFFFFLL && range.var0.var1 <= range.var1.var1 || (topLeft.column != -1 ? (v8 = bottomRight.column == -1) : (v8 = 1), !v8 ? (v9 = topLeft.column > bottomRight.column) : (v9 = 1), (v10 = HIDWORD(*&topLeft), v11 = HIDWORD(*&bottomRight), !v9) ? (v12 = v10 == 0xFFFFFFFF) : (v12 = 1), !v12 ? (v13 = v11 == 0xFFFFFFFF) : (v13 = 1), !v13 ? (v14 = v10 > v11) : (v14 = 1), !v14))
  {
    if (range.var0.var0 != topLeft.column || (*&topLeft ^ *&range.var0) >> 32 || range.var1.var0 != bottomRight.column || (*&bottomRight ^ *&range.var1) >> 32)
    {
      if (bottomRight.column >= range.var1.var0)
      {
        LOWORD(bottomRight.column) = range.var1.var0;
      }

      objc_msgSend_invalidateCoordinatesAfterColumn_(self, a2, LOWORD(bottomRight.column), *&range.var1);
      row = self->_gridRange.bottomRight.row;
      if (row >= var1.var1)
      {
        objc_msgSend_invalidateCoordinatesAfterRow_(self, v15, var1.var1, v16);
      }

      else
      {
        objc_msgSend_invalidateCoordinatesAfterRow_(self, v15, row, v16);
      }

      self->_gridRange.topLeft = var0;
      self->_gridRange.bottomRight = var1;
    }
  }
}

+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRangeOfLayoutSpace:(id)space
{
  spaceCopy = space;
  v7 = spaceCopy;
  if (spaceCopy)
  {
    v8 = objc_msgSend_gridRange(spaceCopy, v4, v5, v6);
    v10 = v9;
  }

  else
  {
    v8 = -1;
    v10 = -1;
  }

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (TSUCellRect)cellRange
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  v4 = HIDWORD(*&topLeft);
  v5 = HIDWORD(*&bottomRight);
  v6 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v5 == 0xFFFFFFFF;
  if (v6 || v4 > v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((*&bottomRight - (*&topLeft & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (LOWORD(bottomRight.column) - LOWORD(topLeft.column) + 1)) + 0x100000000;
  }

  if (topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v6 = topLeft.column == -1;
  v12 = 0x7FFF00000000;
  if (!v6)
  {
    v12 = *&self->_gridRange.topLeft << 32;
  }

  v13 = 0x7FFFFFFFLL;
  if (v4 != 0xFFFFFFFF)
  {
    v13 = v4;
  }

  v14 = (v12 | v13);
  result.size = v11;
  result.origin = v14;
  return result;
}

- (int)validateTableOffset:(id)offset
{
  offsetCopy = offset;
  v8 = offsetCopy;
  if (self->_invalidTableOffset)
  {
    if (offsetCopy)
    {
      objc_msgSend_tableOffset(offsetCopy, v5, v6, v7);
      v9 = 0;
      objc_msgSend_setTableOffset_(self, v10, v11, v12, v13, v14);
    }

    else
    {
      v15 = *MEMORY[0x277CBF348];
      v16 = *(MEMORY[0x277CBF348] + 8);
      topLeft = self->_gridRange.topLeft;
      bottomRight = self->_gridRange.bottomRight;
      v20 = topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column;
      v21 = HIDWORD(*&topLeft);
      v22 = HIDWORD(*&bottomRight);
      if (!v20 && v21 != 0xFFFFFFFF && v22 != 0xFFFFFFFF && v21 <= v22)
      {
        v26 = objc_msgSend_cellRange(self, v5, v6, v7);
        v30 = objc_msgSend_layoutEngine(self, v27, v28, v29);
        v32 = v30;
        if ((v26 & 0xFFFF00000000) != 0x7FFF00000000 && v26 == 0x7FFFFFFF)
        {
          objc_msgSend_strokeHeightOfGridRow_inColumnRange_(v30, v31, 0, 0, 2147483646);
        }

        else
        {
          objc_msgSend_strokeHeightOfGridRow_inColumnRange_(v30, v31, v26, 0, 2147483646);
        }

        v35 = v34;

        v39 = objc_msgSend_layoutEngine(self, v36, v37, v38);
        v41 = v39;
        if (v26 != 0x7FFFFFFF && (v26 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          objc_msgSend_strokeWidthOfGridColumn_inRowRange_(v39, v40, 0, 0, 2147483646);
        }

        else
        {
          objc_msgSend_strokeWidthOfGridColumn_inRowRange_(v39, v40, WORD2(v26), 0, 2147483646);
        }

        v44 = v43;

        v48 = objc_msgSend_layout(self, v45, v46, v47);
        v49 = sub_2211B44A8(v48);
        v15 = -floor(v15 - v44 * 0.5 + -1.0 + 0.00000011920929);

        v16 = v49 - floor(v16 - v35 * 0.5 + -1.0 + 0.00000011920929);
      }

      objc_msgSend_tableOffset(self, v5, v6, v7);
      if (v54 == v16 && v53 == v15)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }

      objc_msgSend_setTableOffset_(self, v50, v51, v52, v15, v16);
    }

    self->_invalidTableOffset = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_headerRowsGridRange
{
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  v9 = objc_msgSend_numberOfHeaderRows(v5, v6, v7, v8);

  if (v9)
  {
    LODWORD(v13) = self->_gridRange.bottomRight.column;
    v14 = (v9 - 1);
    if (v13 == -1)
    {
      v16 = -1;
    }

    else
    {
      topLeft = self->_gridRange.topLeft;
      v16 = -1;
      if (topLeft.column != -1)
      {
        bottomRight = self->_gridRange.bottomRight;
        if (bottomRight.column != -1)
        {
          v18 = -1;
          if (topLeft.column <= bottomRight.column)
          {
            v19 = HIDWORD(*&topLeft);
            if (HIDWORD(*&topLeft) != 0xFFFFFFFF)
            {
              v20 = HIDWORD(*&bottomRight);
              if (HIDWORD(*&bottomRight) != 0xFFFFFFFF && v19 <= v20)
              {
                v13 = v13 >= bottomRight.column ? bottomRight.column : v13;
                if (v13 >= topLeft.column)
                {
                  if (v14 >= v20)
                  {
                    v21 = HIDWORD(*&bottomRight);
                  }

                  else
                  {
                    v21 = v14;
                  }

                  if (v19 <= v21)
                  {
                    v18 = v13 | (v21 << 32);
                    v16 = self->_gridRange.topLeft;
                  }
                }
              }
            }
          }

LABEL_21:
          if (!objc_msgSend_isMain(self, v10, v11, v12) || (objc_msgSend_headerRowsRepeat(self, v24, v25, v26) & 1) == 0)
          {
            if (objc_msgSend_layoutSpaceType(self, v24, v25, v26) == 6)
            {
              v28 = self->_gridRange.topLeft;
              v22 = self->_gridRange.bottomRight;
              v27 = *&v28 & 0xFFFFFFFF00000000;
              goto LABEL_26;
            }

            v27 = 0xFFFFFFFF00000000;
            v22 = -1;
            v28.column = -1;
            if (v16.column == -1)
            {
              goto LABEL_26;
            }

            if (v18 == -1)
            {
              goto LABEL_26;
            }

            if (v16.column > v18)
            {
              goto LABEL_26;
            }

            v28.column = -1;
            if (HIDWORD(*&v16) == 0xFFFFFFFF || HIDWORD(v18) == 0xFFFFFFFF || HIDWORD(*&v16) > HIDWORD(v18))
            {
              goto LABEL_26;
            }

            v31 = objc_msgSend_layout(self, 0xFFFFFFFFFFFFFFFFLL, v29, v30);
            v35 = sub_2211B4730(v31, v32, v33, v34);

            if (v35)
            {
              v27 = 0;
              v28.column = self->_gridRange.topLeft.column;
              v22 = (self->_gridRange.bottomRight.column | (v14 << 32));
              goto LABEL_26;
            }
          }

          v27 = 0xFFFFFFFF00000000;
          v22 = -1;
          v28.column = -1;
LABEL_26:
          v23 = (v27 | v28.column);
          goto LABEL_35;
        }
      }
    }

    v18 = -1;
    goto LABEL_21;
  }

  v22 = -1;
  v23 = -1;
LABEL_35:
  result.var1 = v22;
  result.var0 = v23;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_footerRowsGridRange
{
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  v9 = objc_msgSend_numberOfFooterRows(v5, v6, v7, v8);

  if (!v9)
  {
    goto LABEL_35;
  }

  v13 = objc_msgSend_layout(self, v10, v11, v12);
  v14 = sub_2211B7764(v13);
  v16 = WORD2(v14);
  v17 = v15;
  v18 = v14 << 32;
  if (v14 == 0x7FFFFFFF)
  {
    v18 = 0xFFFFFFFF00000000;
  }

  v19 = (v15 - 0x100000000 + v18) >> 32;

  bottomRight = self->_gridRange.bottomRight;
  v21 = HIDWORD(*&bottomRight);
  v22 = HIDWORD(v17) ? v19 : -1;
  if (v9 + v22 != bottomRight.row)
  {
LABEL_35:
    v26 = -1;
LABEL_36:
    v27 = -1;
    goto LABEL_37;
  }

  if (v16 == 0x7FFF)
  {
    LODWORD(v23) = -1;
  }

  else
  {
    LODWORD(v23) = v16;
  }

  v24 = v17 + v23 - 1;
  topLeft = self->_gridRange.topLeft;
  if (!v17)
  {
    v24 = -1;
  }

  v26 = -1;
  if (topLeft.column == -1 || bottomRight.column == -1)
  {
    goto LABEL_36;
  }

  v27 = -1;
  if (topLeft.column <= bottomRight.column)
  {
    v28 = HIDWORD(*&topLeft);
    if (HIDWORD(*&topLeft) != 0xFFFFFFFF && v21 != 0xFFFFFFFF && v28 <= v21 && v16 != 0x7FFF && v24 != -1 && v23 <= v24)
    {
      v29 = (v22 + 1);
      if (v29 != 0xFFFFFFFF && v29 <= v21)
      {
        v23 = topLeft.column <= v23 ? v23 : topLeft.column;
        v30 = bottomRight.column >= v24 ? v24 : bottomRight.column;
        if (v23 <= v30)
        {
          if (v28 > v29)
          {
            v29 = v28;
          }

          if (v29 <= v21)
          {
            v27 = *&bottomRight & 0xFFFFFFFF00000000 | v30;
            v26 = (v23 | (v29 << 32));
          }
        }
      }
    }
  }

LABEL_37:
  result.var1 = v27;
  result.var0 = v26;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_headerColumnsGridRange
{
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  v9 = objc_msgSend_numberOfHeaderColumns(v5, v6, v7, v8);

  if (v9)
  {
    v13 = (v9 - 1);
    row = self->_gridRange.bottomRight.row;
    if (row == -1)
    {
      v16 = -1;
    }

    else
    {
      topLeft = self->_gridRange.topLeft;
      v16 = -1;
      if (topLeft.column != -1)
      {
        bottomRight = self->_gridRange.bottomRight;
        if (bottomRight.column != -1)
        {
          v18 = -1;
          if (topLeft.column <= bottomRight.column)
          {
            v19 = HIDWORD(*&topLeft);
            if (HIDWORD(*&topLeft) != 0xFFFFFFFF)
            {
              v20 = HIDWORD(*&bottomRight);
              if (HIDWORD(*&bottomRight) != 0xFFFFFFFF && v19 <= v20)
              {
                bottomRight = v13 >= bottomRight.column ? bottomRight.column : v13;
                if (bottomRight.column >= topLeft.column)
                {
                  if (row >= v20)
                  {
                    row = v20;
                  }

                  if (v19 <= row)
                  {
                    v18 = *&bottomRight | (row << 32);
                    v16 = self->_gridRange.topLeft;
                  }
                }
              }
            }
          }

LABEL_20:
          if (!objc_msgSend_isMain(self, v10, v11, v12) || (objc_msgSend_headerColumnsRepeat(self, v23, v24, v25) & 1) == 0)
          {
            if (objc_msgSend_layoutSpaceType(self, v23, v24, v25) == 5)
            {
              v27 = self->_gridRange.topLeft;
              v21 = self->_gridRange.bottomRight;
              v26 = *&v27 & 0xFFFFFFFF00000000;
              v27 = v27.column;
              goto LABEL_25;
            }

            v26 = 0xFFFFFFFF00000000;
            v21 = -1;
            v27 = 0xFFFFFFFFLL;
            if (v16.column == -1)
            {
              goto LABEL_25;
            }

            if (v18 == -1)
            {
              goto LABEL_25;
            }

            if (v16.column > v18)
            {
              goto LABEL_25;
            }

            v27 = 0xFFFFFFFFLL;
            if (HIDWORD(*&v16) == 0xFFFFFFFF || HIDWORD(v18) == 0xFFFFFFFF || HIDWORD(*&v16) > HIDWORD(v18))
            {
              goto LABEL_25;
            }

            v30 = objc_msgSend_layout(self, 0xFFFFFFFFFFFFFFFFLL, v28, v29);
            v34 = sub_2211B7A08(v30, v31, v32, v33);

            if (v34)
            {
              v27 = 0;
              v26 = self->_gridRange.topLeft.row << 32;
              v21 = (v13 | (self->_gridRange.bottomRight.row << 32));
              goto LABEL_25;
            }
          }

          v26 = 0xFFFFFFFF00000000;
          v21 = -1;
          v27 = 0xFFFFFFFFLL;
LABEL_25:
          v22 = (v26 | *&v27);
          goto LABEL_34;
        }
      }
    }

    v18 = -1;
    goto LABEL_20;
  }

  v21 = -1;
  v22 = -1;
LABEL_34:
  result.var1 = v21;
  result.var0 = v22;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_topLeftCornerGridRange
{
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3);
  v9 = objc_msgSend_numberOfHeaderColumns(v5, v6, v7, v8);

  v13 = objc_msgSend_layoutEngine(self, v10, v11, v12);
  v17 = objc_msgSend_numberOfHeaderRows(v13, v14, v15, v16);

  v20 = -1;
  if (!v9)
  {
    goto LABEL_16;
  }

  v21 = -1;
  if (!v17)
  {
    goto LABEL_17;
  }

  v22 = objc_msgSend_p_headerColumnsGridRange(self, 0xFFFFFFFFFFFFFFFFLL, v18, v19);
  v24 = v23;
  v27 = objc_msgSend_p_headerRowsGridRange(self, v23, v25, v26);
  v29 = v28;
  v20 = -1;
  if (v22 == -1 || v24 == -1)
  {
    goto LABEL_16;
  }

  v21 = -1;
  if (v22 > v24)
  {
    goto LABEL_17;
  }

  if (HIDWORD(v22) == 0xFFFFFFFF || v24 >> 32 == 0xFFFFFFFF)
  {
    goto LABEL_16;
  }

  v21 = -1;
  if (HIDWORD(v22) > v24 >> 32 || v27 == -1 || v29 == -1 || v27 > v29)
  {
    goto LABEL_17;
  }

  if (HIDWORD(v27) == 0xFFFFFFFF || (v30 = HIDWORD(v29), v30 == 0xFFFFFFFF))
  {
LABEL_16:
    v21 = -1;
    goto LABEL_17;
  }

  v21 = -1;
  if (HIDWORD(v27) <= v30)
  {
    v21 = 0;
    v20 = (v9 - 1) | ((v17 - 1) << 32);
  }

LABEL_17:
  v31 = v21;
  result.var1 = v20;
  result.var0 = v31;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_bodyGridRange
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  v7 = objc_msgSend_p_headerColumnsGridRange(self, a2, v2, v3);
  if (v7 == -1 || v8 == -1 || v7 > v8 || (HIDWORD(v7) <= v8 >> 32 ? (v11 = HIDWORD(v7) == 0xFFFFFFFF) : (v11 = 1), !v11 ? (v12 = v8 >> 32 == 0xFFFFFFFF) : (v12 = 1), v12))
  {
    column = topLeft.column;
  }

  else
  {
    column = v8 + 1;
  }

  v14 = objc_msgSend_p_headerRowsGridRange(self, v8, v9, v10);
  if (v14 == -1 || v15 == -1 || v14 > v15 || (HIDWORD(v14) <= v15 >> 32 ? (v18 = HIDWORD(v14) == 0xFFFFFFFF) : (v18 = 1), !v18 ? (v19 = v15 >> 32 == 0xFFFFFFFF) : (v19 = 1), v19))
  {
    v20 = HIDWORD(*&topLeft);
  }

  else
  {
    LODWORD(v20) = HIDWORD(v15) + 1;
  }

  v21 = objc_msgSend_p_footerRowsGridRange(self, v15, v16, v17);
  if (v21 != -1 && v22 != -1 && v21 <= v22 && HIDWORD(v21) <= HIDWORD(v22) && HIDWORD(v21) != 0xFFFFFFFF && HIDWORD(v22) != 0xFFFFFFFF)
  {
    bottomRight = v21 & 0xFFFFFFFF00000000 | bottomRight;
  }

  v25 = column | (v20 << 32);
  v26 = bottomRight;
  result.var1 = v26;
  result.var0 = v25;
  return result;
}

- (BOOL)containsGridRange:(id)range
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column)
  {
    return 0;
  }

  v7 = HIDWORD(*&topLeft);
  v8 = HIDWORD(*&bottomRight);
  v9 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
  if (v9 || v7 > v8)
  {
    return 0;
  }

  v13 = range.var1.var1 == 0xFFFFFFFFLL || range.var0.var1 > range.var1.var1;
  v14 = range.var0.var1 == 0xFFFFFFFFLL || v13;
  if (range.var0.var0 > range.var1.var0)
  {
    v14 = 1;
  }

  if (range.var1.var0 == -1)
  {
    v14 = 1;
  }

  if (range.var0.var0 == -1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v17 = topLeft.column > range.var0.var0 || v7 > range.var0.var1;
  v18 = v15 | v17;
  v20 = range.var1.var0 <= bottomRight.column && range.var1.var1 <= v8;
  return v20 & ~v18;
}

- (BOOL)containsCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v5 = objc_msgSend_cellRange(self, a2, *&range.origin, *&range.size);
  v7 = 0;
  if (HIDWORD(v6))
  {
    if (v6)
    {
      v7 = 0;
      if (HIDWORD(*&size))
      {
        if (size.numberOfColumns)
        {
          v8 = v5 & 0xFFFF00000000;
          if (v5 == 0x7FFFFFFFLL && v8 != 0x7FFF00000000)
          {
            goto LABEL_7;
          }

          v15 = v5 == 0x7FFFFFFF && v8 != 0x7FFF00000000;
          if (v5 > origin.row && !v15)
          {
            return 0;
          }

          v16 = v5 + HIDWORD(v6) - 1;
          if (v5 == 0x7FFFFFFF)
          {
            v16 = 0x7FFFFFFF;
          }

          if (v16 < origin.row)
          {
            return 0;
          }

          if (v5 == 0x7FFFFFFFLL || v8 != 0x7FFF00000000)
          {
LABEL_7:
            v9 = HIDWORD(*&origin);
            v10 = WORD2(v5);
            if (WORD2(v5) > origin.column)
            {
              return 0;
            }

            v11 = WORD2(v5) == 0x7FFF || v6 == 0;
            v12 = v6 - 1 + WORD2(v5);
            v13 = v11 ? 0x7FFF : v6 - 1 + WORD2(v5);
            if (v13 < origin.column)
            {
              return 0;
            }
          }

          else
          {
            v12 = v6 + 32766;
            v9 = HIDWORD(*&origin);
            v10 = 0x7FFF;
          }

          if (v10 == 0x7FFF)
          {
            v17 = 0x7FFF;
          }

          else
          {
            v17 = v12;
          }

          v18 = v9;
          v19 = LOWORD(size.numberOfColumns) + v9 - 1;
          if (v18 == 0x7FFF || size.numberOfColumns == 0)
          {
            v19 = 0x7FFF;
          }

          if (v17 < v19)
          {
            return 0;
          }

          v22 = v5 + HIDWORD(v6) - 1;
          if (v5 == 0x7FFFFFFF)
          {
            v22 = 0x7FFFFFFF;
          }

          if (origin.row == 0x7FFFFFFF)
          {
            v23 = 0x7FFFFFFF;
          }

          else
          {
            v23 = origin.row + size.numberOfRows - 1;
          }

          return v22 >= v23;
        }
      }
    }
  }

  return v7;
}

- (BOOL)intersectsCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v5 = objc_msgSend_cellRange(self, a2, *&range.origin, *&range.size);
  v7 = sub_221119E0C(v5, v6, origin, size);
  if ((v7 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    return 0;
  }

  v9 = 0;
  if (HIDWORD(v8) && v8)
  {
    return v7 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v7) & 0x101FFFF00000000) != 0 || v8 != *(MEMORY[0x277D813C8] + 8);
  }

  return v9;
}

- (BOOL)intersectsGridRange:(id)range
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column)
  {
    return 0;
  }

  v7 = HIDWORD(*&topLeft);
  v8 = HIDWORD(*&bottomRight);
  v9 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
  if (v9 || v7 > v8)
  {
    return 0;
  }

  result = 0;
  if (range.var0.var0 == -1)
  {
    return result;
  }

  if (range.var1.var0 == -1)
  {
    return result;
  }

  if (range.var0.var0 > range.var1.var0)
  {
    return result;
  }

  result = 0;
  if (range.var0.var1 == 0xFFFFFFFFLL || range.var1.var1 == 0xFFFFFFFFLL || range.var0.var1 > range.var1.var1)
  {
    return result;
  }

  if (topLeft.column <= range.var0.var0)
  {
    topLeft.column = range.var0.var0;
  }

  if (bottomRight.column >= range.var1.var0)
  {
    bottomRight.column = range.var1.var0;
  }

  if (topLeft.column > bottomRight.column)
  {
    return 0;
  }

  if (v8 >= range.var1.var1)
  {
    var1 = range.var1.var1;
  }

  else
  {
    var1 = v8;
  }

  if (v7 <= range.var0.var1)
  {
    v13 = range.var0.var1;
  }

  else
  {
    v13 = v7;
  }

  return v13 <= var1;
}

- (TSUCellRect)intersectionCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v5 = objc_msgSend_cellRange(self, a2, *&range.origin, *&range.size);

  v7 = sub_221119E0C(v5, v6, origin, size);
  result.size = v8;
  result.origin = v7;
  return result;
}

+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionGridRange:(id)range ofLayoutSpace:(id)space
{
  var1 = range.var1;
  var0 = range.var0;
  spaceCopy = space;
  v10 = spaceCopy;
  if (!spaceCopy)
  {
    v13 = -1;
LABEL_28:
    v14 = -1;
    goto LABEL_29;
  }

  v11 = objc_msgSend_gridRange(spaceCopy, v7, v8, v9);
  v13 = -1;
  if (v11 == -1 || v12 == -1)
  {
    goto LABEL_28;
  }

  v14 = -1;
  if (v11 <= v12)
  {
    v15 = HIDWORD(v11);
    if (HIDWORD(v11) != 0xFFFFFFFF)
    {
      v16 = HIDWORD(v12);
      if (HIDWORD(v12) != 0xFFFFFFFF && v15 <= v16 && var0.var0 != -1 && var1.var0 != -1 && var0.var0 <= var1.var0)
      {
        v17 = HIDWORD(*&var0);
        if (HIDWORD(*&var0) != 0xFFFFFFFF)
        {
          v18 = HIDWORD(*&var1);
          if (HIDWORD(*&var1) != 0xFFFFFFFF && v17 <= v18)
          {
            v19 = v11 <= var0.var0 ? var0.var0 : v11;
            v20 = v12 >= var1.var0 ? var1.var0 : v12;
            if (v19 <= v20)
            {
              if (v16 >= v18)
              {
                v16 = HIDWORD(*&var1);
              }

              if (v15 <= v17)
              {
                v15 = HIDWORD(*&var0);
              }

              if (v15 <= v16)
              {
                v14 = v20 | (v16 << 32);
                v13 = v19 | (v15 << 32);
              }
            }
          }
        }
      }
    }
  }

LABEL_29:

  v21 = v13;
  v22 = v14;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- (BOOL)intersectsRowGridRange:(id)range
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column)
  {
    return 0;
  }

  v7 = HIDWORD(*&topLeft);
  v8 = (*&bottomRight + 0x100000000) >> 32;
  v9 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
  if (v9 || v7 > v8)
  {
    return 0;
  }

  result = 0;
  if (range.var0.var0 == -1)
  {
    return result;
  }

  if (range.var1.var0 == -1)
  {
    return result;
  }

  if (range.var0.var0 > range.var1.var0)
  {
    return result;
  }

  result = 0;
  if (range.var0.var1 == 0xFFFFFFFFLL || range.var1.var1 == 0xFFFFFFFFLL || range.var0.var1 > range.var1.var1)
  {
    return result;
  }

  if (topLeft.column <= range.var0.var0)
  {
    topLeft.column = range.var0.var0;
  }

  if (bottomRight.column >= range.var1.var0)
  {
    bottomRight.column = range.var1.var0;
  }

  if (topLeft.column > bottomRight.column)
  {
    return 0;
  }

  if (v8 >= range.var1.var1)
  {
    var1 = range.var1.var1;
  }

  else
  {
    var1 = v8;
  }

  if (v7 <= range.var0.var1)
  {
    v13 = range.var0.var1;
  }

  else
  {
    v13 = v7;
  }

  return v13 <= var1;
}

- (BOOL)intersectsColumnGridRange:(id)range
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  var0 = bottomRight.column + 1;
  if (topLeft.column == -1 || bottomRight.column == -2 || var0 < topLeft.column)
  {
    return 0;
  }

  v8 = HIDWORD(*&topLeft);
  v9 = HIDWORD(*&bottomRight);
  v10 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v9 == 0xFFFFFFFF;
  if (v10 || v8 > v9)
  {
    return 0;
  }

  result = 0;
  if (range.var0.var0 == -1)
  {
    return result;
  }

  if (range.var1.var0 == -1)
  {
    return result;
  }

  if (range.var0.var0 > range.var1.var0)
  {
    return result;
  }

  result = 0;
  if (range.var0.var1 == 0xFFFFFFFFLL || range.var1.var1 == 0xFFFFFFFFLL || range.var0.var1 > range.var1.var1)
  {
    return result;
  }

  if (topLeft.column <= range.var0.var0)
  {
    topLeft.column = range.var0.var0;
  }

  if (var0 >= range.var1.var0)
  {
    var0 = range.var1.var0;
  }

  if (topLeft.column > var0)
  {
    return 0;
  }

  if (v9 >= range.var1.var1)
  {
    var1 = range.var1.var1;
  }

  else
  {
    var1 = v9;
  }

  if (v8 <= range.var0.var1)
  {
    v8 = range.var0.var1;
  }

  return v8 <= var1;
}

+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionRowGridRange:(id)range ofLayoutSpace:(id)space
{
  var1 = range.var1;
  var0 = range.var0;
  spaceCopy = space;
  v10 = spaceCopy;
  if (!spaceCopy)
  {
    v13 = -1;
LABEL_28:
    v14 = -1;
    goto LABEL_29;
  }

  v11 = objc_msgSend_gridRange(spaceCopy, v7, v8, v9);
  v13 = -1;
  if (v11 == -1 || v12 == -1)
  {
    goto LABEL_28;
  }

  v14 = -1;
  if (v11 <= v12)
  {
    v15 = HIDWORD(v11);
    if (HIDWORD(v11) != 0xFFFFFFFF)
    {
      v16 = (v12 + 0x100000000) >> 32;
      if (v16 != 0xFFFFFFFF && v15 <= v16 && var0.var0 != -1 && var1.var0 != -1 && var0.var0 <= var1.var0)
      {
        v17 = HIDWORD(*&var0);
        if (HIDWORD(*&var0) != 0xFFFFFFFF)
        {
          v18 = HIDWORD(*&var1);
          if (HIDWORD(*&var1) != 0xFFFFFFFF && v17 <= v18)
          {
            v19 = v11 <= var0.var0 ? var0.var0 : v11;
            v20 = v12 >= var1.var0 ? var1.var0 : v12;
            if (v19 <= v20)
            {
              if (v16 >= v18)
              {
                v16 = HIDWORD(*&var1);
              }

              if (v15 <= v17)
              {
                v15 = HIDWORD(*&var0);
              }

              if (v15 <= v16)
              {
                v14 = v20 | (v16 << 32);
                v13 = v19 | (v15 << 32);
              }
            }
          }
        }
      }
    }
  }

LABEL_29:

  v21 = v13;
  v22 = v14;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionColumnGridRange:(id)range ofLayoutSpace:(id)space
{
  var1 = range.var1;
  var0 = range.var0;
  spaceCopy = space;
  v10 = spaceCopy;
  if (!spaceCopy)
  {
    v13 = -1;
LABEL_28:
    v15 = -1;
    goto LABEL_29;
  }

  v11 = objc_msgSend_gridRange(spaceCopy, v7, v8, v9);
  v13 = -1;
  if (v11 == -1)
  {
    goto LABEL_28;
  }

  LODWORD(v14) = v12 + 1;
  if (v12 == -2)
  {
    goto LABEL_28;
  }

  v15 = -1;
  if (v14 >= v11)
  {
    v16 = HIDWORD(v11);
    if (HIDWORD(v11) != 0xFFFFFFFF)
    {
      v17 = HIDWORD(v12);
      if (HIDWORD(v12) != 0xFFFFFFFF && v16 <= v17 && var0.var0 != -1 && var1.var0 != -1 && var0.var0 <= var1.var0)
      {
        v18 = HIDWORD(*&var0);
        if (HIDWORD(*&var0) != 0xFFFFFFFF)
        {
          v19 = HIDWORD(*&var1);
          if (HIDWORD(*&var1) != 0xFFFFFFFF && v18 <= v19)
          {
            v20 = v11 <= var0.var0 ? var0.var0 : v11;
            v14 = v14 >= var1.var0 ? var1.var0 : v14;
            if (v20 <= v14)
            {
              if (v17 >= v19)
              {
                v17 = HIDWORD(*&var1);
              }

              if (v16 <= v18)
              {
                v16 = HIDWORD(*&var0);
              }

              if (v16 <= v17)
              {
                v15 = v14 | (v17 << 32);
                v13 = v20 | (v16 << 32);
              }
            }
          }
        }
      }
    }
  }

LABEL_29:

  v21 = v13;
  v22 = v15;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRangeForLayoutRect:(CGRect)rect
{
  objc_msgSend_p_tableRectForLayoutRect_(self, a2, v3, v4, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);

  v9 = objc_msgSend_p_gridRangeForTableRect_(self, v6, v7, v8);
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (TSUCellRect)p_rangeForLayoutRect:(CGRect)rect
{
  v5 = objc_msgSend_gridRangeForLayoutRect_(self, a2, v3, v4, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v7 = HIDWORD(v5);
  if (v5 == -1 || v6 == -1 || v5 > v6)
  {
    v12 = v6;
  }

  else
  {
    v8 = HIDWORD(v6);
    v9 = v6 - 1;
    v10 = (v6 & 0xFFFFFFFF00000000 | (v6 - 1)) - 0x100000000;
    if (v7 > HIDWORD(v6))
    {
      v9 = v6;
      v10 = v6;
    }

    if (v8 == 0xFFFFFFFF)
    {
      v11 = v6;
    }

    else
    {
      v11 = v9;
    }

    if (v8 == 0xFFFFFFFF)
    {
      v12 = v6;
    }

    else
    {
      v12 = v10;
    }

    if (v7 == 0xFFFFFFFF)
    {
      v12 = v6;
      v13 = v6;
    }

    else
    {
      v13 = v11;
    }

    LODWORD(v6) = v13;
  }

  if (v5 == -1)
  {
    v16 = 0;
  }

  else
  {
    v14 = HIDWORD(v12);
    v15 = ((v12 - (v5 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v12 - v5 + 1)) + 0x100000000;
    if (v7 > v14)
    {
      v15 = 0;
    }

    if (v14 == 0xFFFFFFFF)
    {
      v15 = 0;
    }

    if (v7 == 0xFFFFFFFF)
    {
      v15 = 0;
    }

    if (v6 < v5)
    {
      v15 = 0;
    }

    if (v6 == -1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }
  }

  v17 = v5 << 32;
  if (v5 == -1)
  {
    v17 = 0x7FFF00000000;
  }

  if (v7 == 0xFFFFFFFF)
  {
    v7 = 0x7FFFFFFFLL;
  }

  v18 = (v17 | v7);
  result.size = v16;
  result.origin = v18;
  return result;
}

- (TSUCellRect)nearestRangeForLayoutRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = objc_msgSend_p_rangeForLayoutRect_(self, a2, v3, v4);
  v14 = v10;
  if (v13 == 0x7FFFFFFF || (v13 & 0xFFFF00000000) == 0x7FFF00000000 || !(v10 >> 32) || !v10)
  {
    objc_msgSend_frame(self, v10, v11, v12);
    if ((TSUIntersectsRect() & 1) == 0)
    {
      v18 = objc_msgSend_cellRange(self, v15, v16, v17);
      objc_msgSend_frameForRange_(self, v19, v18, v19);
      if (v23 <= 0.0)
      {
        v14 = 0;
        v13 = 0x7FFF7FFFFFFFLL;
      }

      else
      {
        v24 = v20;
        v25 = v21;
        v26 = v22;
        v27 = v23;
        TSUClampPointInRect();
        v72.origin.x = x;
        v72.origin.y = y;
        v72.size.width = width;
        v72.size.height = height;
        CGRectGetMaxX(v72);
        v73.origin.x = x;
        v73.origin.y = y;
        v73.size.width = width;
        v73.size.height = height;
        CGRectGetMaxY(v73);
        v69 = v25;
        v70 = v24;
        v28 = v27;
        rect = v26;
        TSUClampPointInRect();
        TSURectWithPoints();
        v36 = v35;
        v37 = v34;
        v38 = 1.0;
        v67 = v32;
        if (v34 < 1.0)
        {
          v39 = v33;
          v40 = v36;
          MaxY = CGRectGetMaxY(*&v32);
          v74.origin.y = v69;
          v74.origin.x = v70;
          v74.size.width = rect;
          v74.size.height = v28;
          v42 = CGRectGetMaxY(v74);
          v38 = 1.0;
          v33 = v39 + -1.0;
          if (MaxY != v42)
          {
            v33 = v39;
          }

          v37 = 1.0;
        }

        if (v36 >= v38)
        {
          v51 = objc_msgSend_p_rangeForLayoutRect_(self, v29, v30, v31, v67, v33, v36, v37);
        }

        else
        {
          v43 = v67;
          v66 = v33;
          v44 = v36;
          v45 = v37;
          MaxX = CGRectGetMaxX(*(&v33 - 1));
          v75.origin.y = v69;
          v75.origin.x = v70;
          v75.size.width = rect;
          v75.size.height = v28;
          if (MaxX == CGRectGetMaxX(v75))
          {
            v50 = v67 + -1.0;
          }

          else
          {
            v50 = v67;
          }

          v51 = objc_msgSend_p_rangeForLayoutRect_(self, v47, v48, v49, v50, v66, 1.0, v37);
        }

        v13 = v51;
        v14 = v52;
        if (v51 == 0x7FFFFFFF || (v51 & 0xFFFF00000000) == 0x7FFF00000000 || !(v52 >> 32) || !v52)
        {
          v54 = MEMORY[0x277D81150];
          v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSTLayoutSpace nearestRangeForLayoutRect:]", v53);
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v57);
          v76.origin.x = x;
          v76.origin.y = y;
          v76.size.width = width;
          v76.size.height = height;
          v59 = NSStringFromCGRect(v76);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v60, v55, v58, 669, 0, "Failed to get nearest cell range from space %@ for layout rect %{public}@", self, v59);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
        }
      }
    }
  }

  v64 = v13;
  v65 = v14;
  result.size = v65;
  result.origin = v64;
  return result;
}

- (TSUCellRect)rangeIntersectingLayoutRect:(CGRect)rect
{
  objc_msgSend_p_tableRectForLayoutRect_(self, a2, v3, v4, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_msgSend_frame(self, v14, v15, v16);
  objc_msgSend_p_tableRectForLayoutRect_(self, v17, v18, v19);
  v59.origin.x = v20;
  v59.origin.y = v21;
  v59.size.width = v22;
  v59.size.height = v23;
  v55.origin.x = v7;
  v55.origin.y = v9;
  v55.size.width = v11;
  v55.size.height = v13;
  v56 = CGRectIntersection(v55, v59);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v31 = objc_msgSend_p_gridRangeForTableRect_(self, v28, v29, v30);
  v33 = v32;
  v36 = objc_msgSend_gridRange(self, v32, v34, v35);
  v39 = v37;
  v40 = v37;
  if (v36 != -1 && v37 != -1 && v36 <= v37 && HIDWORD(v36) != 0xFFFFFFFF && HIDWORD(v37) != 0xFFFFFFFF && HIDWORD(v36) <= HIDWORD(v37))
  {
    v40 = v37 + 1;
    v39 = (v37 & 0xFFFFFFFF00000000 | (v37 + 1)) + 0x100000000;
  }

  if (v33 != -1 && v40 > v33)
  {
    objc_msgSend_p_tableCoordinateForGridColumn_(self, v37, v33, v38);
    v42 = v41;
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    if (v42 == CGRectGetMaxX(v57))
    {
      v33 = (v33 + 1) | v33 & 0xFFFFFFFF00000000;
    }
  }

  v43 = HIDWORD(v33);
  if (HIDWORD(v33) != 0xFFFFFFFF && v43 < HIDWORD(v39))
  {
    objc_msgSend_p_tableCoordinateForGridRow_(self, v37, v43, v38);
    v45 = v44;
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    if (v45 == CGRectGetMaxY(v58))
    {
      v33 += 0x100000000;
    }
  }

  if (v31 != -1)
  {
    v46 = (v33 & 0xFFFFFFFF00000000 | (v33 - 1)) - 0x100000000;
    if (HIDWORD(v31) > HIDWORD(v33))
    {
      v46 = v33;
    }

    if (HIDWORD(v33) == 0xFFFFFFFF)
    {
      v47 = v33;
    }

    else
    {
      v47 = v46;
    }

    v48 = v31;
    if (HIDWORD(v31) == 0xFFFFFFFF)
    {
      v49 = v33;
    }

    else
    {
      v49 = v47;
    }

    if (v31 > v33)
    {
      v48 = v31;
      v49 = v33;
    }

    if (v33 != -1)
    {
      v31 = v48;
      v33 = v49;
    }
  }

  v50 = 0;
  v51 = HIDWORD(v31);
  if (v31 != -1 && v33 != -1 && v31 <= v33)
  {
    v50 = 0;
    if (v51 != 0xFFFFFFFF && HIDWORD(v33) != 0xFFFFFFFF && v51 <= HIDWORD(v33))
    {
      v50 = (((v33 - (v31 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v33 - v31 + 1)) + 0x100000000);
    }
  }

  v52 = v31 << 32;
  if (v31 == -1)
  {
    v52 = 0x7FFF00000000;
  }

  if (v51 == 0xFFFFFFFF)
  {
    v51 = 0x7FFFFFFFLL;
  }

  v53 = (v52 | v51);
  result.size = v50;
  result.origin = v53;
  return result;
}

- (double)p_layoutCoordinateForGridColumn:(unsigned int)column
{
  objc_msgSend_p_tableCoordinateForGridColumn_(self, a2, *&column, v3);

  objc_msgSend_p_layoutPointForTablePoint_(self, v5, v6, v7);
  return result;
}

- (double)p_layoutCoordinateForGridRow:(unsigned int)row
{
  objc_msgSend_p_tableCoordinateForGridRow_(self, a2, *&row, v3);
  objc_msgSend_p_layoutPointForTablePoint_(self, v5, v6, v7, 0.0, v8);
  return v9;
}

- (CGRect)frameForGridRange:(id)range
{
  objc_msgSend_p_tableRectForGridRange_(self, a2, *&range.var0, *&range.var1);

  MEMORY[0x2821F9670](self, sel_p_layoutRectForTableRect_, v4, v5);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)contentFrameForGridRange:(id)range
{
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, a2, *&range.var0, *&range.var1, 0, 0);
  v3 = 0.0 * 0.5 + 0.0;
  v4 = v3;
  v5 = 0.0 - 0.0 * 0.5 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)strokeFrameForGridRange:(id)range
{
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, a2, *&range.var0, *&range.var1, 0, 0);
  v3 = 0.0 - 0.0 * 0.5;
  v4 = v3;
  v5 = 0.0 * 0.5 + 0.0 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForRange:(TSUCellRect)range
{
  if (range.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = range.origin.column;
  }

  v4 = *&range.origin << 32;
  v5 = 0xFFFFFFFF00000000;
  if (range.origin.row == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (range.size.numberOfColumns + column - 1);
  if (range.size.numberOfRows)
  {
    v5 = ((v4 + *&range.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!range.size.numberOfColumns)
  {
    v6 = 0xFFFFFFFFLL;
  }

  objc_msgSend_frameForGridRange_(self, a2, v4 | column, v6 | v5);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)contentFrameForRange:(TSUCellRect)range
{
  if (range.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = range.origin.column;
  }

  v4 = *&range.origin << 32;
  v5 = 0xFFFFFFFF00000000;
  if (range.origin.row == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (range.size.numberOfColumns + column - 1);
  if (range.size.numberOfRows)
  {
    v5 = ((v4 + *&range.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!range.size.numberOfColumns)
  {
    v6 = 0xFFFFFFFFLL;
  }

  objc_msgSend_contentFrameForGridRange_(self, a2, v4 | column, v6 | v5);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)strokeFrameForRange:(TSUCellRect)range
{
  if (range.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = range.origin.column;
  }

  v4 = *&range.origin << 32;
  v5 = 0xFFFFFFFF00000000;
  if (range.origin.row == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (range.size.numberOfColumns + column - 1);
  if (range.size.numberOfRows)
  {
    v5 = ((v4 + *&range.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!range.size.numberOfColumns)
  {
    v6 = 0xFFFFFFFFLL;
  }

  objc_msgSend_strokeFrameForGridRange_(self, a2, v4 | column, v6 | v5);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (double)headerColumnsWidth
{
  v5 = objc_msgSend_p_headerColumnsGridRange(self, a2, v2, v3);
  if (v5 == -1 || v6 == -1 || v5 > v6 || HIDWORD(v5) == 0xFFFFFFFF || v6 >> 32 == 0xFFFFFFFF || HIDWORD(v5) > v6 >> 32)
  {
    return 0.0;
  }

  objc_msgSend_p_rawTableCoordinateForGridColumn_(self, v6, (v6 + 1), v7);
  return result;
}

- (double)headerRowsHeight
{
  v5 = objc_msgSend_p_headerRowsGridRange(self, a2, v2, v3);
  if (v5 == -1 || v6 == -1 || v5 > v6 || HIDWORD(v5) == 0xFFFFFFFF || v6 >> 32 == 0xFFFFFFFF || HIDWORD(v5) > v6 >> 32)
  {
    return 0.0;
  }

  objc_msgSend_p_tableCoordinateForGridRow_(self, v6, (HIDWORD(v6) + 1), v7);
  return result;
}

- (CGRect)frame
{
  p_cachedFrame = &self->_cachedFrame;
  p_y = &self->_cachedFrame.origin.y;
  p_size = &self->_cachedFrame.size;
  p_height = &self->_cachedFrame.size.height;
  if (CGRectIsEmpty(self->_cachedFrame))
  {
    topLeft = self->_gridRange.topLeft;
    bottomRight = self->_gridRange.bottomRight;
    p_x = MEMORY[0x277CBF3A0];
    v11 = (MEMORY[0x277CBF3A0] + 24);
    p_width = (MEMORY[0x277CBF3A0] + 16);
    v13 = (MEMORY[0x277CBF3A0] + 8);
    v15 = topLeft == -1 || bottomRight == -1 || topLeft > bottomRight;
    if (!v15 && HIDWORD(topLeft) != 0xFFFFFFFF && HIDWORD(bottomRight) != 0xFFFFFFFF && HIDWORD(topLeft) <= HIDWORD(bottomRight))
    {
      objc_msgSend_frameForGridRange_(self, v7, topLeft, bottomRight);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      if (objc_msgSend_isMain(self, v24, v25, v26) && objc_msgSend_headerRowsRepeat(self, v27, v28, v29))
      {
        v30 = objc_msgSend_bundle(self, v27, v28, v29);
        v34 = objc_msgSend_repeatHeaderRowsSpace(v30, v31, v32, v33);

        if (v34)
        {
          objc_msgSend_frame(v34, v35, v36, v37);
          v23 = v23 + v19 - v38;
          v19 = v38;
        }
      }

      if (objc_msgSend_isMain(self, v27, v28, v29) && objc_msgSend_headerColumnsRepeat(self, v39, v40, v41))
      {
        v45 = objc_msgSend_bundle(self, v42, v43, v44);
        v49 = objc_msgSend_repeatHeaderColumnsSpace(v45, v46, v47, v48);

        if (v49)
        {
          objc_msgSend_frame(v49, v50, v51, v52);
          v54 = v53;
          v56 = v55;
          IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v57, v58, v59);
          v61 = v17 - v54;
          if (IsLeftToRight)
          {
            v17 = v54;
          }

          else
          {
            v61 = v56;
          }

          v21 = v21 + v61;
        }
      }

      p_cachedFrame->origin.x = v17;
      *p_y = v19;
      p_x = &p_cachedFrame->origin.x;
      p_size->width = v21;
      v13 = p_y;
      p_width = &p_size->width;
      v11 = p_height;
      *p_height = v23;
    }
  }

  else
  {
    p_x = &p_cachedFrame->origin.x;
    v13 = p_y;
    p_width = &p_size->width;
    v11 = p_height;
  }

  v62 = *v11;
  v63 = *p_width;
  v64 = *v13;
  v65 = *p_x;
  result.size.height = v62;
  result.size.width = v63;
  result.origin.y = v64;
  result.origin.x = v65;
  return result;
}

- (CGRect)strokeFrame
{
  objc_msgSend_lockForRead(self, a2, v2, v3);
  if (CGRectIsEmpty(self->_cachedStrokeFrame))
  {
    topLeft = self->_gridRange.topLeft;
    bottomRight = self->_gridRange.bottomRight;
    v8 = topLeft == -1 || bottomRight == -1;
    v9 = v8 || topLeft > bottomRight;
    v10 = HIDWORD(topLeft);
    v11 = HIDWORD(bottomRight);
    v12 = v9 || v10 == 0xFFFFFFFF;
    v13 = v12 || v11 == 0xFFFFFFFF;
    if (!v13 && v10 <= v11)
    {
      objc_msgSend_strokeFrameForGridRange_(self, v5, topLeft, bottomRight);
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      if (objc_msgSend_isMain(self, v23, v24, v25) && objc_msgSend_headerRowsRepeat(self, v26, v27, v28))
      {
        v29 = objc_msgSend_bundle(self, v26, v27, v28);
        v33 = objc_msgSend_repeatHeaderRowsSpace(v29, v30, v31, v32);

        if (v33)
        {
          objc_msgSend_strokeFrame(v33, v34, v35, v36);
          v22 = v22 + v18 - v37;
          v18 = v37;
        }
      }

      if (objc_msgSend_isMain(self, v26, v27, v28) && objc_msgSend_headerColumnsRepeat(self, v5, topLeft, bottomRight))
      {
        v38 = objc_msgSend_bundle(self, v5, topLeft, bottomRight);
        v42 = objc_msgSend_repeatHeaderColumnsSpace(v38, v39, v40, v41);

        if (v42)
        {
          objc_msgSend_strokeFrame(v42, v43, v44, v45);
          v47 = v46;
          v49 = v48;
          IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v50, v51, v52);
          v54 = v16 - v47;
          if (IsLeftToRight)
          {
            v16 = v47;
          }

          else
          {
            v54 = v49;
          }

          v20 = v20 + v54;
        }
      }

      self->_cachedStrokeFrame.origin.x = v16;
      self->_cachedStrokeFrame.origin.y = v18;
      self->_cachedStrokeFrame.size.width = v20;
      self->_cachedStrokeFrame.size.height = v22;
    }
  }

  x = self->_cachedStrokeFrame.origin.x;
  y = self->_cachedStrokeFrame.origin.y;
  width = self->_cachedStrokeFrame.size.width;
  height = self->_cachedStrokeFrame.size.height;
  objc_msgSend_unlock(self, v5, topLeft, bottomRight);
  v59 = x;
  v60 = y;
  v61 = width;
  v62 = height;
  result.size.height = v62;
  result.size.width = v61;
  result.origin.y = v60;
  result.origin.x = v59;
  return result;
}

- (CGRect)frameForTableNameBorder
{
  if ((objc_msgSend_isMain(self, a2, v2, v3) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTLayoutSpace frameForTableNameBorder]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 889, 0, "this API is intended to run on the main space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = objc_msgSend_layout(self, v5, v6, v7);
  v22 = sub_2211B44A8(v21);

  if (v22 > 0.0)
  {
    column = self->_gridRange.bottomRight.column;
    objc_msgSend_p_layoutCoordinateForGridColumn_(self, v23, 0, v24);
    v27 = v26;
    objc_msgSend_p_layoutCoordinateForGridColumn_(self, v28, column + 1, v29);
    v31 = v30;
    objc_msgSend_p_layoutCoordinateForGridRow_(self, v32, 0, v33);
    v35 = v34;
    IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v36, v37, v38);
    if (IsLeftToRight)
    {
      v17 = v27;
    }

    else
    {
      v17 = v31;
    }

    if (IsLeftToRight)
    {
      v40 = v31;
    }

    else
    {
      v40 = v27;
    }

    v18 = v35 - v22;
    v19 = v40 - v17;
    v20 = v22;
  }

  v41 = v17;
  v42 = v18;
  v43 = v19;
  v44 = v20;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (CGRect)strokeFrameForTableNameBorder
{
  if ((objc_msgSend_isMain(self, a2, v2, v3) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTLayoutSpace strokeFrameForTableNameBorder]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 915, 0, "this API is intended to run on the main space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = objc_msgSend_layout(self, v5, v6, v7);
  v22 = sub_2211B44A8(v21);
  if (v22 > 0.0)
  {
    topLeft = self->_gridRange.topLeft;
    bottomRight = self->_gridRange.bottomRight;
    v25 = sub_2211C031C(v21);
    objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, v26, topLeft, bottomRight, 0, 0);
    v27 = v25 * 0.5;
    v17 = 0.0 - v25 * 0.5;
    v18 = 0.0 - v22 - v27;
    v19 = v27 + 0.0 - v17;
    v20 = 0.0 + 0.0 - v18;
  }

  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)alignedStrokeFrameForTableNameBorder
{
  if ((objc_msgSend_isMain(self, a2, v2, v3) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTLayoutSpace alignedStrokeFrameForTableNameBorder]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 950, 0, "this API is intended to run on the main space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = objc_msgSend_layout(self, v5, v6, v7);
  v22 = sub_2211B44A8(v21);
  if (v22 > 0.0)
  {
    topLeft = self->_gridRange.topLeft;
    bottomRight = self->_gridRange.bottomRight;
    v25 = sub_2211C031C(v21);
    objc_msgSend_p_alignedFrameSpecForGridRange_strokeWidthOverride_(self, v26, topLeft, bottomRight, 0);
    v27 = v25 * 0.5;
    v17 = 0.0 - v25 * 0.5;
    v18 = 0.0 - v22 - v27;
    v19 = v27 + 0.0 - v17;
    v20 = 0.0 + 0.0 - v18;
  }

  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)setTransformToCanvas:(CGAffineTransform *)canvas
{
  v4 = *&canvas->a;
  v5 = *&canvas->tx;
  *&self->_transformToCanvas.c = *&canvas->c;
  *&self->_transformToCanvas.tx = v5;
  *&self->_transformToCanvas.a = v4;
  v6 = *&canvas->c;
  *&v8.a = *&canvas->a;
  *&v8.c = v6;
  *&v8.tx = *&canvas->tx;
  CGAffineTransformInvert(&v9, &v8);
  v7 = *&v9.c;
  *&self->_transformFromCanvas.a = *&v9.a;
  *&self->_transformFromCanvas.c = v7;
  *&self->_transformFromCanvas.tx = *&v9.tx;
}

- (void)setViewScale:(double)scale
{
  if (self->_viewScale != scale)
  {
    self->_viewScale = scale;
    self->_invalidTableOffset = 1;
  }
}

- (CGPoint)layoutPointForCanvasPoint:(CGPoint)point
{
  v3 = vaddq_f64(*&self->_transformFromCanvas.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_transformFromCanvas.c, point.y), *&self->_transformFromCanvas.a, point.x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)canvasPointForLayoutPoint:(CGPoint)point
{
  v3 = vaddq_f64(*&self->_transformToCanvas.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_transformToCanvas.c, point.y), *&self->_transformToCanvas.a, point.x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGRect)layoutRectForCanvasRect:(CGRect)rect
{
  v3 = *&self->_transformFromCanvas.c;
  *&v4.a = *&self->_transformFromCanvas.a;
  *&v4.c = v3;
  *&v4.tx = *&self->_transformFromCanvas.tx;
  return CGRectApplyAffineTransform(rect, &v4);
}

- (CGRect)canvasRectForLayoutRect:(CGRect)rect
{
  v3 = *&self->_transformToCanvas.c;
  *&v4.a = *&self->_transformToCanvas.a;
  *&v4.c = v3;
  *&v4.tx = *&self->_transformToCanvas.tx;
  return CGRectApplyAffineTransform(rect, &v4);
}

- (CGRect)canvasFrameForGridRange:(id)range
{
  objc_msgSend_frameForGridRange_(self, a2, *&range.var0, *&range.var1);

  objc_msgSend_canvasRectForLayoutRect_(self, v4, v5, v6);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)canvasFrameForCellRange:(TSUCellRect)range
{
  if (range.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = range.origin.column;
  }

  v5 = *&range.origin << 32;
  v6 = 0xFFFFFFFF00000000;
  if (range.origin.row == 0x7FFFFFFF)
  {
    v5 = 0xFFFFFFFF00000000;
  }

  v7 = (range.size.numberOfColumns + column - 1);
  if (range.size.numberOfRows)
  {
    v6 = ((v5 + *&range.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!range.size.numberOfColumns)
  {
    v7 = 0xFFFFFFFFLL;
  }

  objc_msgSend_frameForGridRange_(self, a2, v5 | column, v7 | v6);

  objc_msgSend_canvasRectForLayoutRect_(self, v8, v9, v10);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)canvasFrame
{
  objc_msgSend_frame(self, a2, v2, v3);

  objc_msgSend_canvasRectForLayoutRect_(self, v5, v6, v7);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)canvasStrokeFrameForGridRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  objc_msgSend_lockForRead(self, a2, *&range.var0, *&range.var1);
  objc_msgSend_strokeFrameForGridRange_(self, v6, var0, var1);
  objc_msgSend_canvasRectForLayoutRect_(self, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  objc_msgSend_unlock(self, v18, v19, v20);
  v21 = v11;
  v22 = v13;
  v23 = v15;
  v24 = v17;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)canvasStrokeFrame
{
  objc_msgSend_strokeFrame(self, a2, v2, v3);

  objc_msgSend_canvasRectForLayoutRect_(self, v5, v6, v7);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (double)canvasPositionForGridColumn:(unsigned int)column
{
  objc_msgSend_p_layoutCoordinateForGridColumn_(self, a2, *&column, v3);

  objc_msgSend_canvasPointForLayoutPoint_(self, v5, v6, v7);
  return result;
}

- (double)canvasPositionForGridRow:(unsigned int)row
{
  objc_msgSend_p_layoutCoordinateForGridRow_(self, a2, *&row, v3);
  objc_msgSend_canvasPointForLayoutPoint_(self, v5, v6, v7, 0.0, v8);
  return v9;
}

- ($85CD2974BE96D4886BB301820D1C36C2)gridPointHitByCanvasPoint:(CGPoint)point tabsViewable:(BOOL)viewable
{
  y = point.y;
  x = point.x;
  if (viewable)
  {
    v8 = objc_msgSend_layout(self, a2, viewable, v4);
    v9 = sub_2211B905C(v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    v37.x = x;
    v37.y = y;
    if (CGRectContainsPoint(v39, v37))
    {
      objc_msgSend_canvasPointForLayoutPoint_(self, v16, v17, v18, 0.0, -31.0);
      objc_msgSend_layoutPointForCanvasPoint_(self, v19, v20, v21, x, v22);
      goto LABEL_7;
    }

    v25 = objc_msgSend_layout(self, v16, v17, v18);
    v26 = sub_2211B8F9C(v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v40.origin.x = v26;
    v40.origin.y = v28;
    v40.size.width = v30;
    v40.size.height = v32;
    v38.x = x;
    v38.y = y;
    if (CGRectContainsPoint(v40, v38))
    {
      objc_msgSend_canvasPointForLayoutPoint_(self, a2, viewable, v4, -31.0, 0.0);
      x = v33;
    }
  }

  objc_msgSend_layoutPointForCanvasPoint_(self, a2, viewable, v4, x, y);
LABEL_7:

  return MEMORY[0x2821F9670](self, sel_gridPointHitByLayoutPoint_, v23, v24);
}

- ($85CD2974BE96D4886BB301820D1C36C2)gridPointHitByLayoutPoint:(CGPoint)point
{
  objc_msgSend_p_tablePointForLayoutPoint_(self, a2, v3, v4, point.x, point.y);
  v9 = objc_msgSend_p_gridPointForTablePoint_(self, v6, v7, v8);
  v10 = 0xFFFFFFFF00000000;
  if (self->_gridRange.bottomRight.row >= HIDWORD(v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  v11 = 0xFFFFFFFFLL;
  if (self->_gridRange.bottomRight.column >= v9)
  {
    v11 = v9;
  }

  return (v10 | v11);
}

- (TSUCellRect)visibleRange
{
  layoutSpaceType = self->_layoutSpaceType;
  if ((layoutSpaceType - 5) < 2)
  {
    v9 = objc_msgSend_layout(self, a2, v2, v3);
    v10 = sub_2211BA768(v9, self);
    v12 = v11;

    v7 = v10;
    v8 = v12;
  }

  else if (layoutSpaceType == 4 || layoutSpaceType == 1)
  {

    v7 = objc_msgSend_cellRange(self, a2, v2, v3);
  }

  else
  {
    v13 = objc_msgSend_layout(self, a2, v2, v3);
    v14 = sub_2211BA6F0(v13);
    v16 = v15;

    v20 = objc_msgSend_cellRange(self, v17, v18, v19);
    v22 = v21;
    v23 = self->_layoutSpaceType;
    v24 = (v16 + WORD2(v14)) | v16 & 0xFFFFFFFF00000000;
    if (v23 == 2)
    {
      LOWORD(v25) = 0;
    }

    else
    {
      v24 = v16;
      v25 = HIDWORD(v14);
    }

    if (v23 == 3)
    {
      v26 = v16 + (v14 << 32);
    }

    else
    {
      v26 = v24;
    }

    if (v23 == 3)
    {
      v27 = WORD2(v14);
    }

    else
    {
      v27 = v25;
    }

    if (v23 == 3)
    {
      v28 = 0;
    }

    else
    {
      v28 = v14;
    }

    v7 = sub_221119E0C((v27 << 32) | v14 & 0xFFFF000000000000 | v28, v26, v20, v22);
  }

  result.size = v8;
  result.origin = v7;
  return result;
}

- (TSUCellRect)visiblePartOfRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_visibleRange(self, a2, *&range.origin, *&range.size);

  v7 = sub_221119E0C(origin, size, v6, v5);
  result.size = v8;
  result.origin = v7;
  return result;
}

- (void)setUserSpaceToDeviceSpaceTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->a;
  v5 = *&transform->tx;
  *&self->_transformToDevice.c = *&transform->c;
  *&self->_transformToDevice.tx = v5;
  *&self->_transformToDevice.a = v4;
  v6 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v6;
  *&v10.tx = *&transform->tx;
  CGAffineTransformInvert(&v11, &v10);
  v7 = *&v11.c;
  *&self->_transformFromDevice.a = *&v11.a;
  *&self->_transformFromDevice.c = v7;
  *&self->_transformFromDevice.tx = *&v11.tx;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  self->_cachedAlignedFrame.origin = *MEMORY[0x277CBF3A0];
  self->_cachedAlignedFrame.size = v9;
  self->_cachedAlignedStrokeFrame.origin = v8;
  self->_cachedAlignedStrokeFrame.size = v9;
}

- (CGRect)alignedRectForLayoutRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (objc_msgSend_drawPreventAntialias(self, a2, v3, v4))
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    MinY = CGRectGetMinY(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MaxX = CGRectGetMaxX(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MaxY = CGRectGetMaxY(v40);
    a = self->_transformToDevice.a;
    b = self->_transformToDevice.b;
    c = self->_transformToDevice.c;
    d = self->_transformToDevice.d;
    tx = self->_transformToDevice.tx;
    ty = self->_transformToDevice.ty;
    v20 = tx + MinY * c + a * MinX;
    v21 = tx + MaxY * c + a * MaxX;
    v22 = ty + MaxY * d + b * MaxX;
    v23 = floor(v20 + 0.00000011920929);
    v24 = floor(ty + MinY * d + b * MinX + 0.00000011920929);
    v25 = floor(v21 + 0.00000011920929);
    v26 = floor(v22 + 0.00000011920929);
    v27 = self->_transformFromDevice.a;
    v28 = self->_transformFromDevice.b;
    v29 = self->_transformFromDevice.c;
    v30 = self->_transformFromDevice.d;
    v31 = self->_transformFromDevice.tx;
    v32 = self->_transformFromDevice.ty;
    x = v31 + v24 * v29 + v27 * v23;
    y = v32 + v24 * v30 + v28 * v23;
    width = v31 + v26 * v29 + v27 * v25 - x;
    height = v32 + v26 * v30 + v28 * v25 - y;
  }

  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (void)p_alignStrokeWidth:(double)width deviceWidth:(double *)deviceWidth scaledWidth:(double *)scaledWidth
{
  v5 = 0.0;
  if (width < 0.0)
  {
    width = 0.0;
  }

  if (width <= 0.0)
  {
    *scaledWidth = 0.0;
  }

  else
  {
    v6 = width * self->_transformToDevice.c + self->_transformToDevice.a * width;
    v7 = width * self->_transformToDevice.d + self->_transformToDevice.b * width;
    v8 = fabs(v6);
    v9 = floor(v8 + 0.00000011920929);
    if (v8 >= 1.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1.0;
    }

    *scaledWidth = v10;
    v5 = v7 * self->_transformFromDevice.c + self->_transformFromDevice.a * v10;
  }

  *deviceWidth = v5;
}

- (void)p_alignStrokeHeight:(double)height deviceWidth:(double *)width scaledWidth:(double *)scaledWidth
{
  v5 = 0.0;
  if (height < 0.0)
  {
    height = 0.0;
  }

  if (height <= 0.0)
  {
    *scaledWidth = 0.0;
  }

  else
  {
    v6 = height * self->_transformToDevice.c + self->_transformToDevice.a * height;
    v7 = fabs(height * self->_transformToDevice.d + self->_transformToDevice.b * height);
    v8 = floor(v7 + 0.00000011920929);
    if (v7 >= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    *scaledWidth = v9;
    v5 = self->_transformFromDevice.d * v9 + self->_transformFromDevice.b * v6;
  }

  *width = v5;
}

- (void)alignStrokeCoordinatesOfBeginPoint:(CGPoint *)point endPoint:(CGPoint *)endPoint width:(double *)width
{
  if (self->_drawPreventAntialias)
  {
    v52 = 0.0;
    v53 = 0.0;
    x = point->x;
    y = point->y;
    v11 = endPoint->y;
    if (point->x == endPoint->x)
    {
      if (y >= v11)
      {
        v12 = *width;
        v13 = NSStringFromCGPoint(*&x);
        v14 = NSStringFromCGPoint(*endPoint);
        NSLog(&cfstr_WarningVertica.isa, v12, v13, v14);

        endPoint->y = point->y + 1.0;
      }

      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(self, a2, &v52, &v53, *width);
      v15 = v52;
      *width = v52;
      v16 = point->y;
      b = self->_transformToDevice.b;
      d = self->_transformToDevice.d;
      tx = self->_transformToDevice.tx;
      ty = self->_transformToDevice.ty;
      v21 = ty + endPoint->y * d + b * point->x;
      v22 = floor(tx + v16 * self->_transformToDevice.c + self->_transformToDevice.a * point->x - v53 * 0.5 + 0.00000011920929);
      v23 = floor(ty + v16 * d + b * point->x + 0.00000011920929);
      v24 = 0.0;
      if (v22 >= 0.0)
      {
        v24 = v22;
      }

      if (point->x >= 0.0 && tx >= -1.0)
      {
        v22 = v24;
      }

      v26 = self->_transformFromDevice.b;
      v27 = self->_transformFromDevice.d;
      v28 = self->_transformFromDevice.ty;
      v29 = v28 + v23 * v27 + v26 * v22;
      v30 = v28 + floor(v21 + 0.00000011920929) * v27 + v26 * v22;
      v31 = v15 * 0.5 + self->_transformFromDevice.tx + v23 * self->_transformFromDevice.c + self->_transformFromDevice.a * v22;
      v32 = v31;
    }

    else
    {
      if (y != v11)
      {
        return;
      }

      if (x >= endPoint->x)
      {
        v33 = *width;
        v34 = NSStringFromCGPoint(*&x);
        v35 = NSStringFromCGPoint(*endPoint);
        NSLog(&cfstr_WarningHorizon.isa, v33, v34, v35);

        endPoint->x = point->x + 1.0;
      }

      objc_msgSend_p_alignStrokeHeight_deviceWidth_scaledWidth_(self, a2, &v52, &v53, *width);
      v36 = v52;
      *width = v52;
      v37 = point->y;
      a = self->_transformToDevice.a;
      v39 = self->_transformToDevice.tx;
      v40 = self->_transformToDevice.ty;
      v41 = v37 * self->_transformToDevice.c;
      v42 = v39 + v41 + a * endPoint->x;
      v43 = floor(v39 + v41 + a * point->x + 0.00000011920929);
      v44 = floor(v40 + v37 * self->_transformToDevice.d + self->_transformToDevice.b * point->x - v53 * 0.5 + 0.00000011920929);
      v45 = 0.0;
      if (v44 >= 0.0)
      {
        v45 = v44;
      }

      if (v37 < 0.0 || v40 < -1.0)
      {
        v47 = v44;
      }

      else
      {
        v47 = v45;
      }

      v48 = self->_transformFromDevice.a;
      v49 = self->_transformFromDevice.tx;
      v50 = self->_transformFromDevice.c * v47;
      v31 = v49 + v50 + v48 * v43;
      v51 = self->_transformFromDevice.ty + self->_transformFromDevice.d * v47 + self->_transformFromDevice.b * v43;
      v32 = v49 + v50 + v48 * floor(v42 + 0.00000011920929);
      v29 = v36 * 0.5 + v51;
      v30 = v29;
    }

    point->x = v31;
    point->y = v29;
    endPoint->x = v32;
    endPoint->y = v30;
  }
}

- (CGRect)alignedFrameForGridRange:(id)range
{
  objc_msgSend_frameForGridRange_(self, a2, *&range.var0, *&range.var1);

  objc_msgSend_alignedRectForLayoutRect_(self, v4, v5, v6);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)alignedContentFrameForGridRange:(id)range
{
  objc_msgSend_p_alignedFrameSpecForGridRange_strokeWidthOverride_(self, a2, *&range.var0, *&range.var1, 0);
  v3 = 0.0 * 0.5 + 0.0;
  v4 = v3;
  v5 = 0.0 - 0.0 * 0.5 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)alignedStrokeFrameForGridRange:(id)range
{
  objc_msgSend_p_alignedFrameSpecForGridRange_strokeWidthOverride_(self, a2, *&range.var0, *&range.var1, 0);
  v3 = 0.0 - 0.0 * 0.5;
  v4 = v3;
  v5 = 0.0 * 0.5 + 0.0 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)alignedStrokeFrameForCellRange:(TSUCellRect)range
{
  if (range.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = range.origin.column;
  }

  v4 = *&range.origin << 32;
  v5 = 0xFFFFFFFF00000000;
  if (range.origin.row == 0x7FFFFFFF)
  {
    v4 = 0xFFFFFFFF00000000;
  }

  v6 = (range.size.numberOfColumns + column - 1);
  if (range.size.numberOfRows)
  {
    v5 = ((v4 + *&range.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!range.size.numberOfColumns)
  {
    v6 = 0xFFFFFFFFLL;
  }

  objc_msgSend_alignedStrokeFrameForGridRange_(self, a2, v4 | column, v6 | v5);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)alignedStrokeLineForRowGridRange:(id)range
{
  objc_msgSend_p_alignedFrameSpecForRowGridRange_(self, a2, *&range.var0, *&range.var1);
  v3 = 0.0 - 0.0 * 0.5;
  v4 = v3;
  v5 = 0.0 * 0.5 + 0.0 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)alignedStrokeLineForColumnGridRange:(id)range
{
  objc_msgSend_p_alignedFrameSpecForColumnGridRange_(self, a2, *&range.var0, *&range.var1);
  v3 = 0.0 - 0.0 * 0.5;
  v4 = v3;
  v5 = 0.0 * 0.5 + 0.0 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)alignedStrokeFramePathForGridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero cornerRadius:(double)radius
{
  var1 = range.var1;
  var0 = range.var0;
  v12 = range.var0.var1;
  v13 = range.var1;
  if (range.var0.var0 != -1)
  {
    v13 = range.var1;
    if (range.var1.var0 != -1)
    {
      v13 = range.var1;
      if (range.var0.var0 <= range.var1.var0)
      {
        v13 = range.var1;
        if (range.var0.var1 != 0xFFFFFFFFLL)
        {
          v13 = range.var1;
          if (range.var1.var1 != 0xFFFFFFFFLL)
          {
            v13 = range.var1;
            if (range.var0.var1 <= range.var1.var1)
            {
              v13 = ((*&range.var1 & 0xFFFFFFFF00000000 | (range.var1.var0 + 1)) + 0x100000000);
            }
          }
        }
      }
    }
  }

  zeroCopy = zero;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 1;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  v17 = v72[3];
  *v17 = var0;
  v17[1] = v13;
  v18 = 1;
  do
  {
    if ((v18 - 1) <= 1)
    {
      if (!((var1 ^ var0) >> 32))
      {
        v18 = 3;
        continue;
      }
    }

    else if (var1 == var0)
    {
      break;
    }

    v65.a = 0.0;
    *&v65.b = &v65;
    *&v65.c = 0x2020000000;
    LODWORD(v65.d) = -1;
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v70[3] = 0;
    if ((v18 - 1) > 1)
    {
      v23 = objc_msgSend_layoutEngine(self, v14, v15, v16);
      v21 = v23;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      if (v18 == 3)
      {
        v25 = v12;
      }

      else
      {
        v25 = v13.var1;
      }

      v66[2] = sub_2211EA9CC;
      v66[3] = &unk_2784612E8;
      v67 = v13.var0;
      v66[4] = &v65;
      v66[5] = v70;
      v66[6] = &v75;
      v66[7] = &v71;
      objc_msgSend_enumerateMergedStrokesForGridRow_from_to_usingBlock_(v23, v24, v25, var0, v13, v66);
    }

    else
    {
      v19 = objc_msgSend_layoutEngine(self, v14, v15, v16);
      v21 = v19;
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      if (v18 == 1)
      {
        v22 = var0;
      }

      else
      {
        v22 = v13.var0;
      }

      v68[2] = sub_2211EA7E0;
      v68[3] = &unk_2784612E8;
      v69 = v13.var1;
      v68[4] = &v65;
      v68[5] = v70;
      v68[6] = &v75;
      v68[7] = &v71;
      objc_msgSend_enumerateMergedStrokesForGridColumn_from_to_usingBlock_(v19, v20, v22, v12, HIDWORD(*&v13), v68);
    }

    _Block_object_dispose(v70, 8);
    _Block_object_dispose(&v65, 8);
    ++v18;
  }

  while (v18 < 5);
  if (v76[6] < 1)
  {
    v28 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = (v72[3] + v26);
      v30 = *v29;
      v31 = v29[1];
      v33 = *v29 == -1 || v31 == -1 || v30 > v31;
      v34 = HIDWORD(v30);
      v35 = HIDWORD(v31);
      if (!v33 && v34 != 0xFFFFFFFF && v35 != 0xFFFFFFFF && v34 <= v35)
      {
        v31 = (v31 & 0xFFFFFFFF00000000 | (v31 - 1)) - 0x100000000;
      }

      *v29 = v30;
      v29[1] = v31;
      if (objc_msgSend_intersectsGridRange_(self, v14, *(v72[3] + v26), *(v72[3] + v26 + 8)))
      {
        objc_msgSend_alignedStrokeFrameForGridRange_(self, v14, *(v72[3] + v26), *(v72[3] + v26 + 8));
        x = v42;
        y = v44;
        width = v46;
        height = v48;
        if (zeroCopy)
        {
          if (!v26)
          {
            objc_msgSend_alignedStrokeFrameForGridRange_(self, v39, var0, var1);
          }

          TSUSubtractPoints();
          x = v50;
          y = v51;
        }

        if (inset != 0.0)
        {
          v80.origin.x = x;
          v80.origin.y = y;
          v80.size.width = width;
          v80.size.height = height;
          v81 = CGRectInset(v80, inset, inset);
          x = v81.origin.x;
          y = v81.origin.y;
          width = v81.size.width;
          height = v81.size.height;
        }

        if (transform)
        {
          v52 = *&transform->c;
          *&v65.a = *&transform->a;
          *&v65.c = v52;
          *&v65.tx = *&transform->tx;
          v53 = x;
          *&v52 = y;
          v54 = width;
          v55 = height;
          v82 = CGRectApplyAffineTransform(*(&v52 - 8), &v65);
          x = v82.origin.x;
          y = v82.origin.y;
          width = v82.size.width;
          height = v82.size.height;
        }

        if (v28)
        {
          if (radius == 0.0)
          {
            v58 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v39, v40, v41, x, y, width, height);
            objc_msgSend_uniteWithPolygonalBezierPath_(v28, v56, v58, v57);
          }

          else
          {
            v58 = objc_msgSend_bezierPathWithContinuousCornerRoundedRect_cornerRadius_(MEMORY[0x277D81160], v39, v40, v41, x, y, width, height, radius);
            objc_msgSend_uniteWithBezierPath_(v28, v59, v58, v60);
          }
          v61 = ;

          v28 = v61;
        }

        else
        {
          if (radius == 0.0)
          {
            objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v39, v40, v41, x, y, width, height);
          }

          else
          {
            objc_msgSend_bezierPathWithContinuousCornerRoundedRect_cornerRadius_(MEMORY[0x277D81160], v39, v40, v41, x, y, width, height, radius);
          }
          v28 = ;
        }
      }

      ++v27;
      v26 += 16;
    }

    while (v27 < v76[6]);
  }

  free(v72[3]);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);

  return v28;
}

- (id)alignedMaskStrokeFramePathForTransform:(CGAffineTransform *)transform cornerRadius:(double)radius
{
  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, a2, transform, v4);
  v12 = objc_msgSend_layoutSpaceType(self, v9, v10, v11);
  v16 = objc_msgSend_visibleRange(self, v13, v14, v15);
  v18 = v16;
  v19 = 0;
  if (v16 != 0x7FFFFFFF && (v16 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v19 = 0;
    if (v17 >> 32)
    {
      if (v17)
      {
        if (WORD2(v16) == 0x7FFF)
        {
          v20 = 0xFFFFFFFFLL;
        }

        else
        {
          v20 = WORD2(v16);
        }

        v21 = (v17 + v20 - 1);
        v22 = (&v17[v16 << 32] & 0xFFFFFFFF00000000) - 0x100000000;
        v64 = objc_msgSend_alignedStrokeFramePathForGridRange_transform_inset_reoriginToZero_cornerRadius_(self, v17, v20 | (v16 << 32), v21 | v22, transform, 0, 0.0, radius);
        switch(v12)
        {
          case 3:
            objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v23, v22 | v20, v21 | v22, 0.0);
            x = v70.origin.x;
            y = v70.origin.y;
            width = v70.size.width;
            height = v70.size.height;
            CGRectGetMaxX(v70);
            v71.origin.x = x;
            v71.origin.y = y;
            v71.size.width = width;
            v71.size.height = height;
            CGRectGetMaxY(v71);
            TSURectWithPoints();
            if (!IsLeftToRight)
            {
              v44 = v44 + -100000.0;
            }

            v48 = v46 + 100000.0;
            break;
          case 2:
            if (IsLeftToRight)
            {
              objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v23, v21 | (v18 << 32), v21 | v22, 0.0);
              v35 = v68.origin.x;
              v36 = v68.origin.y;
              v37 = v68.size.width;
              v38 = v68.size.height;
              CGRectGetMaxX(v68);
              v39 = &unk_2217E0000;
            }

            else
            {
              objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v23, v20 | (v18 << 32), v22 | v20, 0.0);
              v35 = v72.origin.x;
              v36 = v72.origin.y;
              v37 = v72.size.width;
              v38 = v72.size.height;
              CGRectGetMinX(v72);
              v39 = &unk_2217E0000;
            }

            v69.origin.x = v35;
            v69.origin.y = v36;
            v69.size.width = v37;
            v69.size.height = v38;
            CGRectGetMaxY(v69);
            TSURectWithPoints();
            v47 = v53 + v39[81];
            break;
          case 1:
            v26 = v64;
            if (IsLeftToRight)
            {
              objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v23, v21 | v22, v21 | v22, 0.0);
              v27 = v67.origin.x;
              v28 = v67.origin.y;
              v29 = v67.size.width;
              v30 = v67.size.height;
              CGRectGetMaxX(v67);
              v31 = v27;
              v32 = v28;
              v33 = v29;
              v34 = v30;
            }

            else
            {
              objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v23, v22 | v20, v22 | v20, 0.0);
              v55 = v73.origin.x;
              v56 = v73.origin.y;
              v57 = v73.size.width;
              v58 = v73.size.height;
              CGRectGetMinX(v73);
              v31 = v55;
              v32 = v56;
              v33 = v57;
              v34 = v58;
            }

            CGRectGetMaxY(*&v31);
            TSURectWithPoints();
            v59 = *&transform->c;
            *&v65.a = *&transform->a;
            *&v65.c = v59;
            *&v65.tx = *&transform->tx;
            *&v49 = CGRectApplyAffineTransform(v74, &v65);
            goto LABEL_25;
          default:
            v49 = *MEMORY[0x277CBF3A0];
            v50 = *(MEMORY[0x277CBF3A0] + 8);
            v51 = *(MEMORY[0x277CBF3A0] + 16);
            v52 = *(MEMORY[0x277CBF3A0] + 24);
LABEL_22:
            v26 = v64;
LABEL_25:
            v62 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v23, v24, v25, v49, v50, v51, v52);
            if (radius == 0.0)
            {
              objc_msgSend_uniteWithPolygonalBezierPath_(v26, v60, v62, v61);
            }

            else
            {
              objc_msgSend_uniteWithBezierPath_(v26, v60, v62, v61);
            }
            v19 = ;

            goto LABEL_29;
        }

        v54 = *&transform->c;
        *&v65.a = *&transform->a;
        *&v65.c = v54;
        *&v65.tx = *&transform->tx;
        *&v49 = CGRectApplyAffineTransform(*&v44, &v65);
        goto LABEL_22;
      }
    }
  }

LABEL_29:

  return v19;
}

- (id)alignedStrokeLinePathForRowGridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero cornerRadius:(double)radius
{
  zeroCopy = zero;
  var1 = range.var1;
  var0 = range.var0;
  v14 = range.var1.var0 + 1;
  v15 = *&range.var0 & 0xFFFFFFFF00000000;
  v16 = objc_msgSend_bezierPathCache(self, a2, *&range.var0, *&range.var1);
  v18 = objc_msgSend_bezierPathForGridRange_transform_inset_reoriginToZero_(v16, v17, var0, v15 | v14, transform, zeroCopy, inset);

  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x4012000000;
    v45[3] = sub_2211EB32C;
    v45[4] = nullsub_26;
    v45[5] = &unk_22188E88F;
    v46 = *MEMORY[0x277CBF348];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 1;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_2211EB33C;
    v41 = sub_2211EB34C;
    v42 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0xBFF0000000000000;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x4012000000;
    v35[3] = sub_2211EB354;
    v35[4] = nullsub_27;
    v35[5] = &unk_22188E88F;
    v35[6] = var0;
    v35[7] = var1;
    v23 = objc_msgSend_layoutEngine(self, v19, v20, v21);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2211EB364;
    v31[3] = &unk_278461310;
    v32 = var0;
    v33 = v14;
    v31[4] = self;
    v31[5] = v36;
    v34 = zeroCopy;
    v31[6] = v35;
    v31[7] = v43;
    *&v31[10] = inset;
    v31[11] = transform;
    v31[8] = v45;
    v31[9] = &v37;
    *&v31[12] = radius;
    objc_msgSend_enumerateMergedStrokesForGridRow_from_to_usingBlock_(v23, v24, HIDWORD(var0), var0, v14, v31);

    v28 = objc_msgSend_bezierPathCache(self, v25, v26, v27);
    objc_msgSend_insertBezierPath_gridRange_transform_inset_reoriginToZero_(v28, v29, v38[5], var0, v15 | v14, transform, zeroCopy, inset);

    v22 = v38[5];
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(&v37, 8);

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);
  }

  return v22;
}

- (id)alignedStrokeLinePathForColumnGridRange:(id)range transform:(CGAffineTransform *)transform inset:(double)inset reoriginToZero:(BOOL)zero cornerRadius:(double)radius
{
  zeroCopy = zero;
  var1 = range.var1;
  var0 = range.var0;
  v14 = range.var1.var1 + 1;
  v15 = range.var0.var0 | (v14 << 32);
  v16 = objc_msgSend_bezierPathCache(self, a2, *&range.var0, *&range.var1);
  v18 = objc_msgSend_bezierPathForGridRange_transform_inset_reoriginToZero_(v16, v17, var0, v15, transform, zeroCopy, inset);

  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x4012000000;
    v45[3] = sub_2211EB32C;
    v45[4] = nullsub_26;
    v45[5] = &unk_22188E88F;
    v46 = *MEMORY[0x277CBF348];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 1;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_2211EB33C;
    v41 = sub_2211EB34C;
    v42 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0xBFF0000000000000;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x4012000000;
    v35[3] = sub_2211EB354;
    v35[4] = nullsub_27;
    v35[5] = &unk_22188E88F;
    v35[6] = var0;
    v35[7] = var1;
    v23 = objc_msgSend_layoutEngine(self, v19, v20, v21);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2211EB9C0;
    v31[3] = &unk_278461310;
    v32 = HIDWORD(var0);
    v33 = v14;
    v31[4] = self;
    v31[5] = v36;
    LOBYTE(v34) = zeroCopy;
    v31[6] = v35;
    v31[7] = v43;
    *&v31[10] = inset;
    v31[11] = transform;
    v31[8] = v45;
    v31[9] = &v37;
    *&v31[12] = radius;
    objc_msgSend_enumerateMergedStrokesForGridColumn_from_to_usingBlock_(v23, v24, var0, HIDWORD(var0), v14, v31);

    v28 = objc_msgSend_bezierPathCache(self, v25, v26, v27);
    objc_msgSend_insertBezierPath_gridRange_transform_inset_reoriginToZero_(v28, v29, v38[5], var0, v15, transform, zeroCopy, inset);

    v22 = v38[5];
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v36, 8);
    _Block_object_dispose(&v37, 8);

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);
  }

  return v22;
}

- (CGRect)alignedOverrideFrameForGridRange:(id)range strokeWidthOverride:(double)override
{
  overrideCopy = override;
  objc_msgSend_p_alignedFrameSpecForGridRange_strokeWidthOverride_(self, a2, *&range.var0, *&range.var1, &overrideCopy);
  v4 = 0.0 - 0.0 * 0.5;
  v5 = v4;
  v6 = 0.0 * 0.5 + 0.0 - v4;
  v7 = v6;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)alignedFrame
{
  if (CGRectIsEmpty(self->_cachedAlignedFrame))
  {
    objc_msgSend_alignedFrameForGridRange_(self, v3, *&self->_gridRange.topLeft, *&self->_gridRange.bottomRight);
    self->_cachedAlignedFrame.origin.x = x;
    self->_cachedAlignedFrame.origin.y = y;
    self->_cachedAlignedFrame.size.width = width;
    self->_cachedAlignedFrame.size.height = height;
  }

  else
  {
    x = self->_cachedAlignedFrame.origin.x;
    y = self->_cachedAlignedFrame.origin.y;
    width = self->_cachedAlignedFrame.size.width;
    height = self->_cachedAlignedFrame.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)alignedStrokeFrame
{
  if (CGRectIsEmpty(self->_cachedAlignedStrokeFrame))
  {
    objc_msgSend_alignedStrokeFrameForGridRange_(self, v3, *&self->_gridRange.topLeft, *&self->_gridRange.bottomRight);
    self->_cachedAlignedStrokeFrame.origin.x = x;
    self->_cachedAlignedStrokeFrame.origin.y = y;
    self->_cachedAlignedStrokeFrame.size.width = width;
    self->_cachedAlignedStrokeFrame.size.height = height;
  }

  else
  {
    x = self->_cachedAlignedStrokeFrame.origin.x;
    y = self->_cachedAlignedStrokeFrame.origin.y;
    width = self->_cachedAlignedStrokeFrame.size.width;
    height = self->_cachedAlignedStrokeFrame.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)drawSingleStroke:(id)stroke context:(CGContext *)context beginPoint:(CGPoint)point endPoint:(CGPoint)endPoint width:(double)width strokeWidthForDrawing:(double)drawing strokeFrame:(CGRect)frame
{
  x = endPoint.x;
  v12 = point.x;
  strokeCopy = stroke;
  v17 = objc_msgSend_empty(strokeCopy, v14, v15, v16);
  if (width <= 0.0)
  {
    v21 = 1;
  }

  else
  {
    v21 = v17;
  }

  if ((v21 & 1) == 0)
  {
    v22 = objc_msgSend_mutableCopy(strokeCopy, v18, v19, v20);
    objc_msgSend_setWidth_(v22, v23, v24, v25, width);
    v29 = objc_msgSend_solid(strokeCopy, v26, v27, v28);
    v36 = objc_msgSend_dontClearBackground(strokeCopy, v30, v31, v32);
    if (drawing < 1.0)
    {
      v37 = objc_msgSend_color(strokeCopy, v33, v34, v35);
      objc_msgSend_alphaComponent(v37, v38, v39, v40);
      v42 = v41;

      v49 = objc_msgSend_color(strokeCopy, v43, v44, v45);
      if (v42 >= 1.0)
      {
        objc_msgSend_whiteColor(MEMORY[0x277D81180], v46, v47, v48);
      }

      else
      {
        objc_msgSend_clearColor(MEMORY[0x277D81180], v46, v47, v48);
      }
      v50 = ;
      v53 = objc_msgSend_newBlendedColorWithFraction_ofColor_(v49, v51, v50, v52, 1.0 - drawing);

      objc_msgSend_setColor_(v22, v54, v53, v55);
    }

    v56 = v29 ^ 1 | v36;
    if (v56)
    {
      CGContextSaveGState(context);
      if ((v29 & 1) == 0)
      {
        objc_msgSend_isRoundDash(strokeCopy, v57, v58, v59);
        v60 = frame.origin.x;
        y = frame.origin.y;
        width = frame.size.width;
        height = frame.size.height;
        if (v12 == x)
        {
          CGRectGetMinY(*&v60);
        }

        else
        {
          CGRectGetMinX(*&v60);
        }

        CGContextClipToRectSafe();
      }

      if (v36)
      {
        CGContextSetBlendMode(context, kCGBlendModeNormal);
      }
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    objc_msgSend_paintPath_inContext_(v22, v65, Mutable, context);
    CGPathRelease(Mutable);
    if (v56)
    {
      CGContextRestoreGState(context);
    }
  }
}

- (BOOL)p_drawStrokeForGridColumn:(unsigned int)column strokeRect:(id)rect clearStroke:(BOOL)stroke shadowType:(int)type context:(CGContext *)context
{
  var1 = rect.var1;
  var0 = rect.var0;
  v12 = *&column;
  v14 = objc_msgSend_layoutEngine(self, a2, *&column, *&rect.var0);
  v18 = sub_2213AAEDC(v14, v12);
  if ((v18 & 1) == 0)
  {
    if (objc_msgSend_drawPreventAntialias(self, v15, v16, v17))
    {
      objc_msgSend_alignedStrokeFrame(self, v19, v20, v21);
    }

    else
    {
      objc_msgSend_strokeFrame(self, v19, v20, v21);
    }

    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    objc_msgSend_p_layoutCoordinateForGridColumn_(self, v22, v12, v23);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2211EC290;
    v35[3] = &unk_278461338;
    v43 = var0;
    v44 = var1;
    v37 = v32;
    v35[4] = self;
    typeCopy = type;
    v46 = v12;
    v36 = v14;
    contextCopy = context;
    strokeCopy = stroke;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    objc_msgSend_enumerateMergedStrokesAndCapsForGridColumn_from_to_usingBlock_(v36, v33, v12, HIDWORD(*&var0), HIDWORD(*&var1), v35);
  }

  return v18 ^ 1;
}

- (BOOL)p_drawStrokeForGridRow:(unsigned int)row strokeRect:(id)rect clearStroke:(BOOL)stroke shadowType:(int)type context:(CGContext *)context
{
  var1 = rect.var1;
  var0 = rect.var0;
  v12 = *&row;
  v14 = objc_msgSend_layoutEngine(self, a2, *&row, *&rect.var0);
  v18 = sub_2213AAE20(v14, v12);
  if ((v18 & 1) == 0)
  {
    if (objc_msgSend_drawPreventAntialias(self, v15, v16, v17))
    {
      objc_msgSend_alignedStrokeFrame(self, v19, v20, v21);
    }

    else
    {
      objc_msgSend_strokeFrame(self, v19, v20, v21);
    }

    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    objc_msgSend_p_layoutCoordinateForGridRow_(self, v22, v12, v23);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2211EC9B4;
    v35[3] = &unk_278461338;
    v43 = var0;
    v44 = var1;
    v35[4] = self;
    v37 = v32;
    typeCopy = type;
    v46 = v12;
    v36 = v14;
    contextCopy = context;
    strokeCopy = stroke;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    objc_msgSend_enumerateMergedStrokesAndCapsForGridRow_from_to_usingBlock_(v36, v33, v12, var0, var1, v35);
  }

  return v18 ^ 1;
}

- (void)drawStrokesInGridRange:(id)range clearStrokes:(BOOL)strokes context:(CGContext *)context
{
  strokesCopy = strokes;
  var1 = range.var1;
  var0 = range.var0;
  v98 = objc_msgSend_layoutEngine(self, a2, *&range.var0, *&range.var1);
  v12 = objc_msgSend_layoutSpaceType(self, v9, v10, v11);
  CGContextSaveGState(context);
  CGContextSetBlendMode(context, kCGBlendModeCopy);
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (topLeft.column != -1 && bottomRight.column != -1 && topLeft.column <= bottomRight.column)
  {
    v18 = ((*&bottomRight & 0xFFFFFFFF00000000 | (bottomRight.column + 1)) + 0x100000000);
    if (HIDWORD(*&topLeft) > HIDWORD(*&bottomRight))
    {
      v18 = self->_gridRange.bottomRight;
    }

    if (HIDWORD(*&bottomRight) == 0xFFFFFFFF)
    {
      v19 = self->_gridRange.bottomRight;
    }

    else
    {
      v19 = v18;
    }

    if (HIDWORD(*&topLeft) != 0xFFFFFFFF)
    {
      topLeft = self->_gridRange.topLeft;
      bottomRight = v19;
    }
  }

  v97 = -1;
  if (var0.var0 == -1 || var1.var0 == -1)
  {
    v20 = -1;
  }

  else
  {
    v20 = -1;
    if (var0.var0 <= var1.var0)
    {
      v21 = HIDWORD(*&var0);
      v97 = -1;
      if (HIDWORD(*&var0) != 0xFFFFFFFF)
      {
        v22 = HIDWORD(*&var1);
        if (HIDWORD(*&var1) != 0xFFFFFFFF && v21 <= v22)
        {
          v97 = -1;
          if (topLeft.column != -1 && bottomRight.column != -1 && topLeft.column <= bottomRight.column)
          {
            v23 = HIDWORD(*&topLeft);
            v97 = -1;
            if (HIDWORD(*&topLeft) != 0xFFFFFFFF)
            {
              v24 = HIDWORD(*&bottomRight);
              if (HIDWORD(*&bottomRight) != 0xFFFFFFFF && v23 <= v24)
              {
                if (var0.var0 <= topLeft.column)
                {
                  topLeft = topLeft.column;
                }

                else
                {
                  topLeft = var0.var0;
                }

                if (var1.var0 >= bottomRight.column)
                {
                  bottomRight = bottomRight.column;
                }

                else
                {
                  bottomRight = var1.var0;
                }

                if (topLeft.column > bottomRight.column)
                {
                  goto LABEL_35;
                }

                if (v22 >= v24)
                {
                  v22 = v24;
                }

                if (v21 <= v23)
                {
                  v21 = v23;
                }

                if (v21 <= v22)
                {
                  v20 = *&bottomRight | (v22 << 32);
                  v25 = *&topLeft | (v21 << 32);
                }

                else
                {
LABEL_35:
                  v25 = -1;
                }

                v97 = v25;
              }
            }
          }
        }
      }
    }
  }

  v26 = objc_msgSend_layoutEngine(self, v13, v14, v15);
  v30 = objc_msgSend_cellRange(v26, v27, v28, v29);
  v32 = v31;

  v35 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v98, v33, 0, v34);
  v39 = objc_msgSend_layout(self, v36, v37, v38);
  v88 = sub_2211B7514(v39);

  if (objc_msgSend_numberOfHeaderColumns(v98, v40, v41, v42))
  {
    if (!objc_msgSend_hasHiddenColumnAtIndex_(v98, v43, (v88 - 1), v44))
    {
      goto LABEL_44;
    }

    v45 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(v98, v43, (v88 - 1), v44);
    if (v45 == 0x7FFF)
    {
      v46 = -1;
    }

    else
    {
      v46 = v45 + 1;
    }
  }

  else
  {
    v46 = -1;
  }

  v88 = v46;
LABEL_44:
  v47 = v32 + WORD2(v30) - 1;
  if (v32)
  {
    v48 = WORD2(v30) == 0x7FFF;
  }

  else
  {
    v48 = 1;
  }

  if (v48)
  {
    v47 = 0x7FFF;
  }

  v94 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v98, v43, v47, v44);
  v51 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v98, v49, 0, v50);
  v55 = objc_msgSend_layout(self, v52, v53, v54);
  v56 = sub_2211B75C0(v55);

  if (objc_msgSend_numberOfHeaderRows(v98, v57, v58, v59))
  {
    if (objc_msgSend_hasHiddenRowAtIndex_(v98, v60, (v56 - 1), v62))
    {
      v63 = objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(v98, v60, (v56 - 1), v62);
      if (v63 == 0x7FFFFFFF)
      {
        v56 = -1;
      }

      else
      {
        v56 = v63 + 1;
      }
    }
  }

  else
  {
    v56 = -1;
  }

  selfCopy = self;
  v64 = objc_msgSend_layout(self, v60, v61, v62);
  v65 = sub_2211B7664(v64);

  if (!objc_msgSend_numberOfFooterRows(v98, v66, v67, v68) || !objc_msgSend_numberOfNonHiddenFooterRows(v98, v69, v70, v71) || objc_msgSend_hasHiddenRowAtIndex_(v98, v69, (v65 + 1), v71))
  {
    v65 = -1;
  }

  if (HIDWORD(v32))
  {
    v72 = v30 == 0x7FFFFFFF;
  }

  else
  {
    v72 = 1;
  }

  if (v72)
  {
    v73 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v98, v69, 0x7FFFFFFFLL, v71);
  }

  else
  {
    v73 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v98, v69, (v30 + HIDWORD(v32) - 1), v71);
  }

  v75 = v73;
  v92 = v56;
  v76 = (v94 + 1);
  if (v97 <= v20)
  {
    v77 = 0;
    v90 = 0;
    v95 = 0;
    v78 = v97;
    do
    {
      if (v78 == v35)
      {
        v77 = 1;
        LODWORD(v78) = v35;
      }

      else if (v78 == v76)
      {
        v95 = 1;
        LODWORD(v78) = v76;
      }

      else if (v78 == v88)
      {
        v90 = 1;
        LODWORD(v78) = v88;
      }

      else if ((objc_msgSend_p_drawStrokeForGridColumn_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v78, v97, v20, strokesCopy, 0, context) & 1) == 0)
      {
        LODWORD(v78) = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(v98, v74, v78, v79) - 1;
      }

      v78 = (v78 + 1);
    }

    while (v78 <= v20);
  }

  else
  {
    v95 = 0;
    v90 = 0;
    v77 = 0;
  }

  v87 = v65;
  c = context;
  v80 = HIDWORD(v97);
  v81 = (v75 + 1);
  if (HIDWORD(v97) <= HIDWORD(v20))
  {
    v83 = 0;
    v82 = 0;
    v86 = 0;
    v93 = 0;
    while (1)
    {
      if (v80 == v51)
      {
        v83 = 1;
        LODWORD(v80) = v51;
      }

      else if (v80 == v81)
      {
        v93 = 1;
        LODWORD(v80) = v81;
      }

      else
      {
        v84 = v92;
        if (v80 == v92)
        {
          v82 = 1;
        }

        else
        {
          v84 = v87;
          if (v80 != v87)
          {
            if ((objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v80, v97, v20, strokesCopy, 0, c) & 1) == 0)
            {
              LODWORD(v80) = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(v98, v74, v80, v85) - 1;
            }

            goto LABEL_106;
          }

          v86 = 1;
        }

        LODWORD(v80) = v84;
      }

LABEL_106:
      v80 = (v80 + 1);
      if (v80 > HIDWORD(v20))
      {
        goto LABEL_79;
      }
    }
  }

  v93 = 0;
  v86 = 0;
  v82 = 0;
  v83 = 0;
LABEL_79:
  if (v90)
  {
    objc_msgSend_p_drawStrokeForGridColumn_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v88, v97, v20, strokesCopy, (v12 - 1) < 2, c);
  }

  if (v82)
  {
    objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v92, v97, v20, strokesCopy, (v12 & 0xFFFFFFFD) == 1, c);
  }

  if (v86)
  {
    objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v87, v97, v20, strokesCopy, 0, c);
  }

  if (v77)
  {
    objc_msgSend_p_drawStrokeForGridColumn_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v35, v97, v20, strokesCopy, 0, c);
  }

  if (v95)
  {
    objc_msgSend_p_drawStrokeForGridColumn_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v76, v97, v20, strokesCopy, 0, c);
  }

  if (v83)
  {
    objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v51, v97, v20, strokesCopy, 0, c);
  }

  if (v93)
  {
    objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(selfCopy, v74, v81, v97, v20, strokesCopy, 0, c);
  }

  CGContextRestoreGState(c);
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_extendedBodyGridRange
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  v6 = objc_msgSend_p_footerRowsGridRange(self, a2, v2, v3);
  if (v6 == -1 || v7.var0 == -1 || v6 > v7.var0 || (HIDWORD(v6) <= HIDWORD(*&v7) ? (v8 = HIDWORD(v6) == 0xFFFFFFFF) : (v8 = 1), !v8 ? (v9 = HIDWORD(*&v7) == 0xFFFFFFFF) : (v9 = 1), v9))
  {
    v7 = bottomRight;
  }

  v10 = topLeft;
  result.var1 = v7;
  result.var0 = v10;
  return result;
}

- (double)p_bodyTranslationX
{
  v5 = objc_msgSend_p_bodyGridRange(self, a2, v2, v3);
  if (objc_msgSend_headerColumnsRepeat(self, v6, v7, v8) && ((objc_msgSend_isMain(self, v9, v10, v11) & 1) != 0 || objc_msgSend_layoutSpaceType(self, v12, v13, v14) == 6))
  {
    return 0.0;
  }

  objc_msgSend_p_rawTableCoordinateForGridColumn_(self, v9, v5, v11);
  return result;
}

- (double)p_bodyTranslationY
{
  v5 = objc_msgSend_p_bodyGridRange(self, a2, v2, v3);
  if (objc_msgSend_headerRowsRepeat(self, v6, v7, v8) && ((objc_msgSend_isMain(self, v9, v10, v11) & 1) != 0 || objc_msgSend_layoutSpaceType(self, v12, v13, v14) == 5))
  {
    return 0.0;
  }

  objc_msgSend_p_tableCoordinateForGridRow_(self, v9, HIDWORD(v5), v11);
  return result;
}

- (id)p_createColumnCoordinatesForGridRange:(id)range invalidColumnIndex:(unsigned __int16)index previousCoordinates:(id)coordinates outCoordinatesChanged:(BOOL *)changed
{
  indexCopy = index;
  var1 = range.var1;
  var0 = range.var0;
  coordinatesCopy = coordinates;
  v14 = [TSTCoordinateArray alloc];
  if (var0 == -1 || var1.var0 == -1 || var1.var0 < var0 || (HIDWORD(var0) <= HIDWORD(*&var1) ? (v15 = HIDWORD(var0) == 0xFFFFFFFF) : (v15 = 1), !v15 ? (v16 = HIDWORD(*&var1) == 0xFFFFFFFF) : (v16 = 1), v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = var1.var0 - var0 + 1;
  }

  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v11, v12, v13);
  v20 = objc_msgSend_initWithCount_atOffset_layoutDirectionIsLeftToRight_(v14, v19, (v17 + 1), var0, IsLeftToRight);
  v24 = objc_msgSend_layout(self, v21, v22, v23);
  v28 = sub_2211B7A50(v24, v25, v26, v27);
  v69 = 0;
  v68 = 0.0;
  if (objc_msgSend_headerColumnsRepeat(self, v29, v30, v31) && ((isMain = objc_msgSend_isMain(self, v32, v33, v34), var0) ? (v36 = isMain) : (v36 = 0), (v36 & 1) != 0) || objc_msgSend_headerColumnsRepeat(self, v32, v33, v34) && objc_msgSend_layoutSpaceType(self, v37, v38, v39) == 6)
  {
    sub_2211B6E48(v24);
    v40 = v37;
    if (v37)
    {
      v41 = 0;
      v42 = 0.0;
      do
      {
        v43 = objc_msgSend_layoutEngine(v24, v37, v38, v39);
        objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(v43, v44, v41, 0, 1, &v69);
        v46 = v45;

        v42 = v46 + v42;
        v68 = v42;
        ++v41;
      }

      while (v40 > v41);
    }
  }

  v47 = objc_msgSend_layoutEngine(v24, v37, v38, v39);
  v51 = objc_msgSend_numberOfColumns(v47, v48, v49, v50) - 1;

  if (var1.var0 >= v51)
  {
    var1.var0 = v51;
  }

  if (coordinatesCopy)
  {
    changedCopy2 = changed;
    if (indexCopy && !v28)
    {
      var0 = sub_2211F0154(v20, coordinatesCopy, indexCopy, &v68);
    }
  }

  else
  {
    changedCopy2 = changed;
  }

  if (var0 <= var1.var0)
  {
    v55 = v68;
    do
    {
      sub_2211EFC48(v20, var0, v55);
      v59 = objc_msgSend_layoutEngine(v24, v56, v57, v58);
      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(v59, v60, var0, 0, 1, &v69);
      v62 = v61;

      if (v62 == 0.0)
      {
        sub_2211EFC18(v20, var0, v63, v64);
      }

      v55 = v62 + v68;
      v68 = v62 + v68;
      var0 = (var0 + 1);
    }

    while (var0 <= var1.var0);
    sub_2211EFC48(v20, var0, v55);
  }

  if (changedCopy2)
  {
    if (coordinatesCopy)
    {
      isEqual = objc_msgSend_isEqual_(coordinatesCopy, v52, v20, v53);
    }

    else
    {
      isEqual = 0;
    }

    *changedCopy2 = isEqual ^ 1;
  }

  return v20;
}

- (id)p_createRowCoordinatesForGridRange:(id)range invalidRowIndex:(unsigned int)index previousCoordinates:(id)coordinates validateSingleRow:(BOOL)row outCoordinatesChanged:(BOOL *)changed
{
  rowCopy = row;
  var1 = range.var1;
  var0 = range.var0;
  coordinatesCopy = coordinates;
  v13 = [TSTCoordinateArray alloc];
  v15 = HIDWORD(*&var1);
  if (var0.var0 == -1 || var1.var0 == -1 || var0.var0 > var1.var0)
  {
    v16 = HIDWORD(*&var0);
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v16 = HIDWORD(*&var0);
  if (HIDWORD(*&var0) > HIDWORD(*&var1) || v16 == 0xFFFFFFFFLL || v15 == 0xFFFFFFFF)
  {
    goto LABEL_13;
  }

  v19 = var1.var1 - var0.var1 + 1;
LABEL_14:
  IsLeftToRight = objc_msgSend_initWithCount_atOffset_layoutDirectionIsLeftToRight_(v13, v14, (v19 + 1), v16, 1);
  v24 = objc_msgSend_layout(self, v21, v22, v23);
  v83 = sub_2211B7A50(v24, v25, v26, v27);
  objc_msgSend_scaleToFitParent(v24, v28, v29, v30);
  v32 = v31;
  v36 = objc_msgSend_layoutHint(v24, v33, v34, v35);
  objc_msgSend_maximumSize(v36, v37, v38, v39);
  v41 = v40;
  v43 = v42;

  v47 = objc_msgSend_layoutEngine(v24, v44, v45, v46);
  v85 = 0.0;
  if (objc_msgSend_headerRowsRepeat(self, v48, v49, v50) && ((isMain = objc_msgSend_isMain(self, v51, v52, v53), HIDWORD(*&var0)) ? (v55 = isMain) : (v55 = 0), (v55 & 1) != 0) || objc_msgSend_headerRowsRepeat(self, v51, v52, v53) && objc_msgSend_layoutSpaceType(self, v56, v57, v58) == 5)
  {
    sub_2211B7004(v24);
    v59 = v56 >> 32;
    if (v56 >> 32)
    {
      v60 = 0;
      do
      {
        objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(v47, v56, v60, 0, 1, 1, 1, 0, v41, v43);
        v85 = v32 * v61 + v85;
        v60 = (v60 + 1);
      }

      while (v59 != v60);
    }
  }

  v62 = objc_msgSend_layoutEngine(v24, v56, v57, v58);
  v66 = objc_msgSend_numberOfRows(v62, v63, v64, v65) - 1;

  if (v15 < v66)
  {
    v66 = v15;
  }

  if (coordinatesCopy && index != 0x7FFFFFFF && !v83)
  {
    v16 = sub_2211F0154(IsLeftToRight, coordinatesCopy, index, &v85);
  }

  if (v16 <= v66)
  {
    v69 = 0;
    v70 = 0.0;
    v71 = v85;
    while (1)
    {
      sub_2211EFC48(IsLeftToRight, v16, v71);
      v75 = 0.0;
      if ((v69 & 1) == 0)
      {
        objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(v47, v72, v16, 0, 1, 1, 1, 0, v41, v43);
        v75 = v32 * v76;
      }

      if (coordinatesCopy && v16 == index && rowCopy)
      {
        v77 = v85;
        v70 = v75 + v77 - sub_2211EFCD0(coordinatesCopy, index + 1);
        if (v70 == 0.0)
        {
          v82 = coordinatesCopy;

          changedCopy2 = changed;
          if (changed)
          {
            v80 = 0;
            IsLeftToRight = v82;
            goto LABEL_51;
          }

          IsLeftToRight = v82;
          goto LABEL_52;
        }
      }

      else
      {
        if (!(v69 & 1 | (v75 != 0.0)))
        {
          sub_2211EFC18(IsLeftToRight, v16, v73, v74);
        }

        if ((v69 & 1) == 0)
        {
          v69 = 0;
          v71 = v75 + v85;
          v16 = (v16 + 1);
          goto LABEL_44;
        }
      }

      v16 = (v16 + 1);
      v71 = v70 + sub_2211EFCD0(coordinatesCopy, v16);
      v69 = 1;
LABEL_44:
      v85 = v71;
      if (v16 > v66)
      {
        sub_2211EFC48(IsLeftToRight, v16, v71);
        break;
      }
    }
  }

  changedCopy2 = changed;
  if (changed)
  {
    if (coordinatesCopy)
    {
      isEqual = objc_msgSend_isEqual_(coordinatesCopy, v67, IsLeftToRight, v68);
    }

    else
    {
      isEqual = 0;
    }

    v80 = isEqual ^ 1;
LABEL_51:
    *changedCopy2 = (*changedCopy2 | v80) & 1;
  }

LABEL_52:

  return IsLeftToRight;
}

- (void)validateCachedFrames
{
  if (self->_invalidTableOffset || self->_invalidColumnIndex != 0x7FFF || self->_invalidRowIndex != 0x7FFFFFFF)
  {
    v2 = *MEMORY[0x277CBF3A0];
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    self->_cachedFrame.origin = *MEMORY[0x277CBF3A0];
    self->_cachedFrame.size = v3;
    self->_cachedAlignedFrame.origin = v2;
    self->_cachedAlignedFrame.size = v3;
    self->_cachedStrokeFrame.origin = v2;
    self->_cachedStrokeFrame.size = v3;
    self->_cachedAlignedStrokeFrame.origin = v2;
    self->_cachedAlignedStrokeFrame.size = v3;
  }
}

- (int)validateCoordinateCache:(id)cache
{
  cacheCopy = cache;
  v71 = 0;
  invalidRowIndex = self->_invalidRowIndex;
  if (self->_invalidColumnIndex == 0x7FFF)
  {
    if (invalidRowIndex == 0x7FFFFFFF)
    {
      v9 = 0;
      goto LABEL_71;
    }

LABEL_5:
    if (self->_layoutSpaceType)
    {
      v10 = objc_msgSend_p_createRowCoordinatesForGridRange_invalidRowIndex_previousCoordinates_validateSingleRow_outCoordinatesChanged_(self, v4, *&self->_gridRange.topLeft, *&self->_gridRange.bottomRight, self->_invalidRowIndex, self->_headerColumnRowCoordinates, self->_invalidatedForEditingCell, &v71);
      v11 = 0;
    }

    else
    {
      v29 = objc_msgSend_p_topLeftCornerGridRange(self, v4, v5, v6);
      v32 = v29;
      if (v29 != -1 && v30 != -1 && v29 <= v30 && HIDWORD(v29) != 0xFFFFFFFF && HIDWORD(v30) != 0xFFFFFFFF && HIDWORD(v29) <= HIDWORD(v30) || (v33 = objc_msgSend_p_headerColumnsGridRange(self, v30, v29, v31), v32 = v33, v10 = 0, v33 != -1) && v30 != -1 && v33 <= v30 && (v10 = 0, HIDWORD(v33) != 0xFFFFFFFF) && HIDWORD(v30) != 0xFFFFFFFF && HIDWORD(v33) <= HIDWORD(v30))
      {
        v10 = objc_msgSend_p_createRowCoordinatesForGridRange_invalidRowIndex_previousCoordinates_validateSingleRow_outCoordinatesChanged_(self, v30, v32, v30, self->_invalidRowIndex, self->_headerColumnRowCoordinates, self->_invalidatedForEditingCell, &v71);
      }

      v35 = objc_msgSend_p_extendedBodyGridRange(self, v30, v32, v34);
      v11 = 0;
      if (v35 != -1 && v36 != -1 && v35 <= v36)
      {
        v11 = 0;
        if (HIDWORD(v35) != 0xFFFFFFFF && HIDWORD(v36) != 0xFFFFFFFF && HIDWORD(v35) <= HIDWORD(v36))
        {
          v11 = objc_msgSend_p_createRowCoordinatesForGridRange_invalidRowIndex_previousCoordinates_validateSingleRow_outCoordinatesChanged_(self, v36, v35, v36, self->_invalidRowIndex, self->_bodyRowCoordinates, self->_invalidatedForEditingCell, &v71);
        }
      }
    }

    headerColumnRowCoordinates = self->_headerColumnRowCoordinates;
    self->_headerColumnRowCoordinates = 0;

    bodyRowCoordinates = self->_bodyRowCoordinates;
    self->_bodyRowCoordinates = 0;

    v14 = self->_headerColumnRowCoordinates;
    self->_headerColumnRowCoordinates = v10;
    v15 = v10;

    v16 = self->_bodyRowCoordinates;
    self->_bodyRowCoordinates = v11;

    self->_invalidRowIndex = 0x7FFFFFFF;
    self->_invalidatedForEditingCell = 0;
    if (self->_invalidColumnIndex == 0x7FFF)
    {
      goto LABEL_67;
    }

    goto LABEL_8;
  }

  if (invalidRowIndex != 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

LABEL_8:
  if (self->_layoutSpaceType)
  {
    v17 = objc_msgSend_p_createColumnCoordinatesForGridRange_invalidColumnIndex_previousCoordinates_outCoordinatesChanged_(self, v4, *&self->_gridRange.topLeft, *&self->_gridRange.bottomRight);
    v18 = 0;
  }

  else
  {
    v37 = objc_msgSend_p_topLeftCornerGridRange(self, v4, v5, v6);
    v40 = v37;
    if (v37 != -1 && v38 != -1 && v37 <= v38 && HIDWORD(v37) != 0xFFFFFFFF && HIDWORD(v38) != 0xFFFFFFFF && HIDWORD(v37) <= HIDWORD(v38) || (v41 = objc_msgSend_p_headerRowsGridRange(self, v38, v37, v39), v40 = v41, v17 = 0, v41 != -1) && v38 != -1 && v41 <= v38 && (v17 = 0, HIDWORD(v41) != 0xFFFFFFFF) && HIDWORD(v38) != 0xFFFFFFFF && HIDWORD(v41) <= HIDWORD(v38))
    {
      v17 = objc_msgSend_p_createColumnCoordinatesForGridRange_invalidColumnIndex_previousCoordinates_outCoordinatesChanged_(self, v38, v40, v38, self->_invalidColumnIndex, self->_headerRowColumnCoordinates, &v71 + 1);
    }

    v43 = objc_msgSend_p_extendedBodyGridRange(self, v38, v40, v42);
    v18 = 0;
    if (v43 != -1 && v44 != -1 && v43 <= v44)
    {
      v18 = 0;
      if (HIDWORD(v43) != 0xFFFFFFFF && HIDWORD(v44) != 0xFFFFFFFF && HIDWORD(v43) <= HIDWORD(v44))
      {
        v18 = objc_msgSend_p_createColumnCoordinatesForGridRange_invalidColumnIndex_previousCoordinates_outCoordinatesChanged_(self, v44, v43, v44, self->_invalidColumnIndex, self->_bodyColumnCoordinates, &v71 + 1);
      }
    }
  }

  headerRowColumnCoordinates = self->_headerRowColumnCoordinates;
  self->_headerRowColumnCoordinates = 0;

  bodyColumnCoordinates = self->_bodyColumnCoordinates;
  self->_bodyColumnCoordinates = 0;

  if (!self->_layoutDirectionIsLeftToRight)
  {
    if (v18)
    {
      v21 = v18;
      objc_msgSend_p_extendedBodyGridRange(self, v22, v23, v24);
      bottomRight.column = v25;
    }

    else
    {
      v45 = v17;
      bottomRight = self->_gridRange.bottomRight;
      if (v45)
      {
        v21 = v45;
      }

      else
      {
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTLayoutSpace validateCoordinateCache:]", v27);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v49);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 2926, 0, "There are no column coordinates");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
        v21 = 0;
      }
    }

    v58 = objc_msgSend_isMain(self, v25, v26, v27) ^ 1;
    if (!cacheCopy)
    {
      LOBYTE(v58) = 0;
    }

    if (v58)
    {
      objc_msgSend_gridRange(cacheCopy, v55, v56, v57);
      objc_msgSend_p_rawTableCoordinateForGridColumn_(cacheCopy, v63, (v63 + 1), v64);
    }

    else
    {
      v62 = sub_2211EFE04(v21, bottomRight.column + 1);
    }

    v65 = v62;
    if (v18)
    {
      objc_msgSend_setTableWidthForRightToLeft_(v18, v59, v60, v61, v62);
    }

    if (v17)
    {
      objc_msgSend_setTableWidthForRightToLeft_(v17, v59, v60, v61, v65);
    }

    HIBYTE(v71) = 1;
  }

  v66 = self->_headerRowColumnCoordinates;
  self->_headerRowColumnCoordinates = v17;
  v67 = v17;

  v68 = self->_bodyColumnCoordinates;
  self->_bodyColumnCoordinates = v18;

  self->_invalidColumnIndex = 0x7FFF;
LABEL_67:
  if (v71)
  {
    v69 = 2;
  }

  else
  {
    v69 = 0;
  }

  v9 = v69 | HIBYTE(v71);
LABEL_71:

  return v9;
}

- (double)p_tableCoordinateForGridColumn:(unsigned int)column
{
  headerRowColumnCoordinates = self->_headerRowColumnCoordinates;
  if (headerRowColumnCoordinates && sub_2211EFC24(headerRowColumnCoordinates, column))
  {
    p_headerRowColumnCoordinates = &self->_headerRowColumnCoordinates;
  }

  else
  {
    p_headerRowColumnCoordinates = &self->_bodyColumnCoordinates;
  }

  v7 = *p_headerRowColumnCoordinates;

  return sub_2211EFCD0(v7, column);
}

- (double)p_rawTableCoordinateForGridColumn:(unsigned int)column
{
  headerRowColumnCoordinates = self->_headerRowColumnCoordinates;
  if (headerRowColumnCoordinates && sub_2211EFC24(headerRowColumnCoordinates, column))
  {
    p_headerRowColumnCoordinates = &self->_headerRowColumnCoordinates;
  }

  else
  {
    p_headerRowColumnCoordinates = &self->_bodyColumnCoordinates;
  }

  v7 = *p_headerRowColumnCoordinates;

  return sub_2211EFE04(v7, column);
}

- (double)p_tableCoordinateForGridRow:(unsigned int)row
{
  headerColumnRowCoordinates = self->_headerColumnRowCoordinates;
  if (headerColumnRowCoordinates && sub_2211EFC24(headerColumnRowCoordinates, row))
  {
    p_headerColumnRowCoordinates = &self->_headerColumnRowCoordinates;
  }

  else
  {
    p_headerColumnRowCoordinates = &self->_bodyRowCoordinates;
  }

  v7 = *p_headerColumnRowCoordinates;

  return sub_2211EFCD0(v7, row);
}

- (unsigned)p_gridColumnForTableCoordinate:(double)coordinate
{
  headerRowColumnCoordinates = self->_headerRowColumnCoordinates;
  if (!headerRowColumnCoordinates || (result = sub_2211EFF18(headerRowColumnCoordinates, coordinate), result == -1))
  {
    bodyColumnCoordinates = self->_bodyColumnCoordinates;

    return sub_2211EFF18(bodyColumnCoordinates, coordinate);
  }

  return result;
}

- (unsigned)p_gridRowForTableCoordinate:(double)coordinate
{
  headerColumnRowCoordinates = self->_headerColumnRowCoordinates;
  if (!headerColumnRowCoordinates || (result = sub_2211EFF18(headerColumnRowCoordinates, coordinate), result == -1))
  {
    bodyRowCoordinates = self->_bodyRowCoordinates;

    return sub_2211EFF18(bodyRowCoordinates, coordinate);
  }

  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_gridRangeForTableRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_msgSend_frame(self, a2, v3, v4);
  objc_msgSend_p_tableRectForLayoutRect_(self, v10, v11, v12);
  v13 = v50.origin.x;
  v14 = v50.origin.y;
  v15 = v50.size.width;
  v16 = v50.size.height;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = v13;
  v51.origin.y = v14;
  v51.size.width = v15;
  v51.size.height = v16;
  MaxX = CGRectGetMaxX(v51);
  v52.origin.x = v13;
  v52.origin.y = v14;
  v52.size.width = v15;
  v52.size.height = v16;
  MinY = CGRectGetMinY(v52);
  v53.origin.x = v13;
  v53.origin.y = v14;
  v53.size.width = v15;
  v53.size.height = v16;
  MaxY = CGRectGetMaxY(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v18 = CGRectGetMinX(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v19 = CGRectGetMaxX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v20 = CGRectGetMinY(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v24 = CGRectGetMaxY(v57);
  if (v18 >= MinX)
  {
    v25 = v18;
  }

  else
  {
    v25 = MinX;
  }

  if (MaxX >= v19)
  {
    v26 = v19;
  }

  else
  {
    v26 = MaxX;
  }

  if (v20 >= MinY)
  {
    v27 = v20;
  }

  else
  {
    v27 = MinY;
  }

  if (MaxY >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = MaxY;
  }

  if (v25 > v26)
  {
    LODWORD(v29) = -1;
LABEL_22:
    LODWORD(v33) = -1;
    goto LABEL_23;
  }

  v29 = objc_msgSend_p_gridColumnForTableCoordinate_(self, v21, v22, v23, v25);
  if (v29 == -1)
  {
    goto LABEL_22;
  }

  v33 = objc_msgSend_p_gridColumnForTableCoordinate_(self, v21, v22, v23, v26);
  if (v33 == -1 || !objc_msgSend_layoutDirectionIsLeftToRight(self, v30, v31, v32))
  {
    if ((objc_msgSend_layoutDirectionIsLeftToRight(self, v30, v31, v32) & 1) == 0)
    {
      objc_msgSend_p_tableCoordinateForGridColumn_(self, v21, v29, v23);
      if (v45 + 0.00999999978 > v25)
      {
        if (v29 >= objc_msgSend_gridRange(self, v21, v22, v23))
        {
          LODWORD(v29) = v29 + 1;
        }

        else
        {
          LODWORD(v29) = -1;
        }
      }
    }
  }

  else
  {
    objc_msgSend_p_tableCoordinateForGridColumn_(self, v30, v33, v32);
    if (v34 + 0.00999999978 < v26)
    {
      objc_msgSend_gridRange(self, v21, v22, v23);
      if (v33 <= v21)
      {
        LODWORD(v33) = v33 + 1;
      }

      else
      {
        LODWORD(v33) = -1;
      }
    }
  }

LABEL_23:
  if (v27 > v28 || (v35 = objc_msgSend_p_gridRowForTableCoordinate_(self, v21, v22, v23, v27), v35 == -1))
  {
    v38 = 0xFFFFFFFFLL;
    v36 = 0xFFFFFFFFLL;
  }

  else
  {
    v36 = v35;
    v37 = objc_msgSend_p_gridRowForTableCoordinate_(self, v21, v22, v23, v28);
    if (v37 == -1)
    {
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      v38 = v37;
      objc_msgSend_p_tableCoordinateForGridRow_(self, v21, v37, v23);
      if (v39 + 0.00999999978 < v28)
      {
        objc_msgSend_gridRange(self, v21, v22, v23);
        if (v38 <= HIDWORD(v21))
        {
          v38 = (v38 + 1);
        }

        else
        {
          v38 = 0xFFFFFFFFLL;
        }
      }
    }
  }

  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v21, v22, v23);
  if (IsLeftToRight)
  {
    v41 = v29;
  }

  else
  {
    v41 = v33;
  }

  if (IsLeftToRight)
  {
    v42 = v33;
  }

  else
  {
    v42 = v29;
  }

  v43 = (v42 | (v38 << 32));
  v44 = (v41 | (v36 << 32));
  result.var1 = v43;
  result.var0 = v44;
  return result;
}

- ($85CD2974BE96D4886BB301820D1C36C2)p_gridPointForTablePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_msgSend_frame(self, a2, v3, v4);
  objc_msgSend_p_tableRectForLayoutRect_(self, v8, v9, v10);
  v11 = v25.origin.x;
  v12 = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if (x + 0.00000011920929 >= CGRectGetMinX(v25) && (v26.origin.x = v11, v26.origin.y = v12, v26.size.width = width, v26.size.height = height, x <= CGRectGetMaxX(v26) + 0.00000011920929))
  {
    v18 = objc_msgSend_p_gridColumnForTableCoordinate_(self, v15, v16, v17, x);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  v27.origin.x = v11;
  v27.origin.y = v12;
  v27.size.width = width;
  v27.size.height = height;
  if (y + 0.00000011920929 >= CGRectGetMinY(v27))
  {
    v22 = objc_msgSend_p_gridRowForTableCoordinate_(self, v19, v20, v21, y) << 32;
  }

  else
  {
    v22 = 0xFFFFFFFF00000000;
  }

  return (v22 | v18);
}

- (CGRect)p_tableRectForGridRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  objc_msgSend_p_tableCoordinateForGridColumn_(self, a2, *&range.var0, *&range.var1);
  v7 = v6;
  objc_msgSend_p_tableCoordinateForGridRow_(self, v8, HIDWORD(*&var0), v9);
  v11 = v10;
  objc_msgSend_p_tableCoordinateForGridColumn_(self, v12, var1.var0 + 1, v13);
  v15 = v14;
  objc_msgSend_p_tableCoordinateForGridRow_(self, v16, var1.var1 + 1, v17);
  v19 = v18;
  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v20, v21, v22);
  if (IsLeftToRight)
  {
    v24 = v7;
  }

  else
  {
    v24 = v15;
  }

  if (IsLeftToRight)
  {
    v25 = v15;
  }

  else
  {
    v25 = v7;
  }

  v26 = v25 - v24;
  v27 = v19 - v11;
  v28 = v11;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v28;
  result.origin.x = v24;
  return result;
}

- (double)p_tableCoordinateForX:(double)x
{
  objc_msgSend_tableOffset(self, a2, v3, v4);
  v8 = v7;
  v12 = objc_msgSend_layout(self, v9, v10, v11);
  v19 = x - v8;
  if (sub_2211B7A08(v12, v13, v14, v15))
  {
  }

  else
  {
    objc_msgSend_headerColumnsWidth(self, v16, v17, v18);
    v21 = v20;

    if (v19 > v21)
    {
      objc_msgSend_p_bodyTranslationX(self, v22, v23, v24);
      v26 = v25;
      objc_msgSend_headerColumnsWidth(self, v27, v28, v29);
      return v19 + v26 - v30;
    }
  }

  return v19;
}

- (double)p_tableCoordinateForY:(double)y
{
  objc_msgSend_tableOffset(self, a2, v3, v4);
  v8 = v7;
  v12 = objc_msgSend_layout(self, v9, v10, v11);
  v19 = y - v8;
  if (sub_2211B4730(v12, v13, v14, v15))
  {
  }

  else
  {
    objc_msgSend_headerRowsHeight(self, v16, v17, v18);
    v21 = v20;

    if (v19 > v21)
    {
      objc_msgSend_p_bodyTranslationY(self, v22, v23, v24);
      v26 = v25;
      objc_msgSend_headerRowsHeight(self, v27, v28, v29);
      return v19 + v26 - v30;
    }
  }

  return v19;
}

- (CGPoint)p_tablePointForLayoutPoint:(CGPoint)point
{
  y = point.y;
  objc_msgSend_p_tableCoordinateForX_(self, a2, v3, v4, point.x);
  v8 = v7;
  objc_msgSend_p_tableCoordinateForY_(self, v9, v10, v11, y);
  v13 = v12;
  v14 = v8;
  result.y = v13;
  result.x = v14;
  return result;
}

- (int)p_cellTypeForGridPoint:(id)point
{
  v6 = objc_msgSend_layout(self, a2, *&point, v3);
  v7 = v6;
  v8 = 0;
  if (*&point <= 0xFFFFFFFEFFFFFFFFLL && point.var0 != 0xFFFFFFFFLL)
  {
    v9 = sub_2211B7764(v6);
    v13 = HIDWORD(*&point);
    if (WORD2(v9) == 0x7FFF)
    {
      v14 = -1;
    }

    else
    {
      v14 = WORD2(v9);
    }

    v15 = v9 << 32;
    if (v9 == 0x7FFFFFFF)
    {
      v15 = 0xFFFFFFFF00000000;
    }

    if (v10 >> 32)
    {
      v16 = (&v10[v15] & 0xFFFFFFFF00000000) - 0x100000000;
    }

    else
    {
      v16 = 0xFFFFFFFF00000000;
    }

    v17 = HIDWORD(v15);
    if (v14 <= point.var0)
    {
      if (v13 < v17 && v10 && v10 + v14 - 1 < point.var0)
      {
        if (objc_msgSend_layoutDirectionIsLeftToRight(self, v10, v11, v12))
        {
          v8 = 3;
        }

        else
        {
          v8 = 1;
        }
      }

      else if (v13 >= v17)
      {
        if (v13 <= HIDWORD(v16))
        {
          v8 = 0;
        }

        else
        {
          v8 = 5;
        }
      }

      else
      {
        v8 = 3;
      }
    }

    else if (v13 < v17 && (objc_msgSend_layoutDirectionIsLeftToRight(self, v10, v11, v12) & 1) != 0)
    {
      v8 = 1;
    }

    else if (v13 <= HIDWORD(v16))
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }
  }

  return v8;
}

- (CGPoint)p_layoutOffsetForGridPoint:(id)point
{
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v7 = objc_msgSend_p_cellTypeForGridPoint_(self, a2, *&point, v3);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 != 2)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7 == 3)
  {
    objc_msgSend_p_bodyTranslationX(self, v8, v9, v10);
    v28 = v27;
    objc_msgSend_headerColumnsWidth(self, v29, v30, v31);
    v5 = v5 - (v28 - v32);
    goto LABEL_11;
  }

  if (v7 != 4)
  {
    if (v7 != 5)
    {
      goto LABEL_11;
    }

LABEL_9:
    objc_msgSend_p_bodyTranslationX(self, v8, v9, v10);
    v12 = v11;
    objc_msgSend_headerColumnsWidth(self, v13, v14, v15);
    v5 = v5 - (v12 - v16);
  }

LABEL_10:
  objc_msgSend_p_bodyTranslationY(self, v8, v9, v10);
  v18 = v17;
  objc_msgSend_headerRowsHeight(self, v19, v20, v21);
  v6 = v6 - (v18 - v22);
LABEL_11:
  objc_msgSend_tableOffset(self, v8, v9, v10);
  v24 = v5 + v23;
  v26 = v6 + v25;
  result.y = v26;
  result.x = v24;
  return result;
}

- (CGPoint)p_layoutOffsetForTablePoint:(CGPoint)point
{
  y = point.y;
  v7 = objc_msgSend_p_gridColumnForTableCoordinate_(self, a2, v3, v4, point.x);
  v12 = v7 | (objc_msgSend_p_gridRowForTableCoordinate_(self, v8, v9, v10, y) << 32);

  objc_msgSend_p_layoutOffsetForGridPoint_(self, v11, v12, v13);
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)p_layoutPointForTablePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_msgSend_p_layoutOffsetForTablePoint_(self, a2, v3, v4);
  v8 = x + v7;
  v10 = y + v9;
  result.y = v10;
  result.x = v8;
  return result;
}

- (CGRect)p_tableRectForLayoutRect:(CGRect)rect
{
  objc_msgSend_p_tablePointForLayoutPoint_(self, a2, v3, v4, rect.origin.x, rect.origin.y);

  TSURectWithOriginAndSize();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)p_layoutRectForTableRect:(CGRect)rect
{
  objc_msgSend_p_layoutPointForTablePoint_(self, a2, v3, v4, rect.origin.x, rect.origin.y);

  TSURectWithOriginAndSize();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- ($49C15799EE3625B6AB482F2FFBF0D806)p_frameSpecForGridRange:(SEL)range frameType:(id)type strokeWidthOverride:(int)override
{
  var1 = type.var1;
  var0 = type.var0;
  v93 = objc_msgSend_layoutEngine(self, range, *&type.var0, *&type.var1);
  v91 = objc_msgSend_layout(self, v12, v13, v14);
  v18 = objc_msgSend_layoutHint(v91, v15, v16, v17);
  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v19, v20, v21);
  v24 = HIDWORD(var0);
  v92 = var0;
  v89 = HIDWORD(var1);
  if (a6)
  {
    v25 = *a6;
    v26 = *a6;
    v27 = *a6;
    v28 = *a6;
    goto LABEL_3;
  }

  if (override != 1)
  {
    if (override == 2)
    {
      objc_msgSend_strokeHeightOfGridRow_atColumnIndex_(v93, v22, HIDWORD(var0), var0);
      v28 = v32;
      objc_msgSend_strokeHeightOfGridRow_atColumnIndex_(v93, v33, (HIDWORD(var1) + 1), var1);
      v27 = v34;
      objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(v93, v35, var0, HIDWORD(var0), (HIDWORD(var1) + 1));
      v26 = v36;
      v25 = v36;
      goto LABEL_9;
    }

    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(v93, v22, HIDWORD(var0), var0, (var1 + 1));
    v28 = v82;
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(v93, v83, (HIDWORD(var1) + 1), var0, (var1 + 1));
    v27 = v84;
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(v93, v85, var0, HIDWORD(var0), (HIDWORD(var1) + 1));
    v25 = v86;
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(v93, v87, (var1 + 1), HIDWORD(var0), (HIDWORD(var1) + 1));
    v26 = v88;
LABEL_3:
    if (override != 2)
    {
      if (override != 1)
      {
        v29 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v22, var0, var1, self);
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v29 = objc_msgSend_intersectionColumnGridRange_ofLayoutSpace_(TSTLayoutSpace, v22, var0, var1, self, v89);
    goto LABEL_12;
  }

  objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(v93, v22, HIDWORD(var0), var0, (var1 + 1));
  v28 = v37;
  objc_msgSend_strokeWidthOfGridColumn_atRowIndex_(v93, v38, var0, HIDWORD(var0));
  v25 = v39;
  objc_msgSend_strokeWidthOfGridColumn_atRowIndex_(v93, v40, (var1 + 1), HIDWORD(var1));
  v26 = v41;
  v27 = v28;
LABEL_11:
  v29 = objc_msgSend_intersectionRowGridRange_ofLayoutSpace_(TSTLayoutSpace, v22, var0, var1, self, v89);
LABEL_12:
  v42 = v29;
  v43 = v30;
  objc_msgSend_p_tableCoordinateForGridColumn_(self, v30, v29, v31, v89);
  v48 = v47;
  v49 = v47;
  if (override != 2)
  {
    objc_msgSend_p_tableCoordinateForGridColumn_(self, v44, (v43 + 1), v46);
    v49 = v50;
  }

  if ((IsLeftToRight & 1) != 0 || (v69 = objc_msgSend_gridRange(self, v44, v45, v46), v69 == -1) || v44 == -1 || v69 > v44 || HIDWORD(v69) == 0xFFFFFFFF || v44 >> 32 == 0xFFFFFFFF || HIDWORD(v69) > v44 >> 32)
  {
    v51 = v25;
    v25 = v26;
    v52 = v48;
    v48 = v49;
  }

  else
  {
    v51 = v26;
    v52 = v49;
  }

  v53 = HIDWORD(v42);
  objc_msgSend_p_tableCoordinateForGridRow_(self, v44, HIDWORD(v42), v46);
  v58 = v57;
  v59 = v57;
  if (override != 1)
  {
    objc_msgSend_p_tableCoordinateForGridRow_(self, v54, (HIDWORD(v43) + 1), v56);
    v59 = v60;
  }

  if (v92 < v42)
  {
    v61 = v92;
    do
    {
      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(v93, v54, v61, 0, 1, 0);
      v52 = v52 - v62;
      ++v61;
    }

    while (v42 != v61);
  }

  v63 = v43 + 1;
  if (v43 + 1 < (var1 + 1))
  {
    v64 = var1 - v43;
    do
    {
      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(v93, v54, v63, 0, 1, 0);
      if (IsLeftToRight)
      {
        v48 = v48 + v65;
      }

      else
      {
        v52 = v52 - v65;
      }

      ++v63;
      --v64;
    }

    while (v64);
  }

  if (v24 >= v53)
  {
    v66 = v92;
  }

  else
  {
    v66 = v92;
    do
    {
      objc_msgSend_maximumSize(v18, v54, v55, v56);
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(v93, v67, v24, 0, 1, 1, 1, 0);
      v58 = v58 - v68;
      v24 = (v24 + 1);
    }

    while (v53 != v24);
  }

  v70 = v43 >> 32;
  v71 = (HIDWORD(v43) + 1);
  if (v71 < v90 + 1)
  {
    v72 = v90 - v70;
    do
    {
      objc_msgSend_maximumSize(v18, v54, v55, v56);
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(v93, v73, v71, 0, 1, 1, 1, 0);
      v59 = v59 + v74;
      v71 = (v71 + 1);
      --v72;
    }

    while (v72);
  }

  objc_msgSend_p_layoutOffsetForGridPoint_(self, v54, v66, v56);
  v76 = v52 + v75;
  v78 = v58 + v77;
  v79 = v48 + v75;
  retstr->var0.x = v76;
  retstr->var0.y = v58 + v77;
  v80 = v59 + v77;
  retstr->var1.x = v76;
  retstr->var1.y = v80;
  retstr->var2.x = v79;
  retstr->var2.y = v78;
  retstr->var3.x = v79;
  retstr->var3.y = v80;
  retstr->var4 = v28;
  retstr->var5 = v27;
  retstr->var6 = v51;
  retstr->var7 = v25;

  return result;
}

- (void)p_alignFrameSpec:(id *)spec
{
  var0 = spec->var0;
  v18[0] = var0.x + 1.0;
  v18[1] = var0.y;
  objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(self, a2, &var0, v18, &spec->var4);
  v17 = spec->var0;
  v16[0] = *&v17.x;
  *&v16[1] = v17.y + 1.0;
  objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(self, v5, &v17, v16, &spec->var6);
  var1 = spec->var1;
  v14[0] = var1.x + 1.0;
  v14[1] = var1.y;
  objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(self, v6, &var1, v14, &spec->var5);
  var2 = spec->var2;
  v12[0] = *&var2.x;
  *&v12[1] = var2.y + 1.0;
  objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(self, v7, &var2, v12, &spec->var7);
  x = v17.x;
  y = var0.y;
  spec->var0.x = v17.x;
  spec->var0.y = y;
  v10 = var2.x;
  v11 = var1.y;
  spec->var3.x = var2.x;
  spec->var3.y = v11;
  spec->var1.x = x;
  spec->var1.y = v11;
  spec->var2.x = v10;
  spec->var2.y = y;
}

- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForGridRange:(SEL)range strokeWidthOverride:(id)override
{
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, range, *&override.var0, *&override.var1, 0, a5);

  return MEMORY[0x2821F9670](self, sel_p_alignFrameSpec_, retstr, v7);
}

- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForRowGridRange:(SEL)range
{
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, range, *&a4.var0, *&a4.var1, 1, 0);

  return MEMORY[0x2821F9670](self, sel_p_alignFrameSpec_, retstr, v6);
}

- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForColumnGridRange:(SEL)range
{
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, range, *&a4.var0, *&a4.var1, 2, 0);

  return MEMORY[0x2821F9670](self, sel_p_alignFrameSpec_, retstr, v6);
}

- (TSTLayoutSpaceBundle)bundle
{
  WeakRetained = objc_loadWeakRetained(&self->_bundle);

  return WeakRetained;
}

- (CGAffineTransform)transformToCanvas
{
  v3 = *&self[9].tx;
  *&retstr->a = *&self[9].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].a;
  return self;
}

- (CGAffineTransform)transformFromCanvas
{
  v3 = *&self[10].tx;
  *&retstr->a = *&self[10].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].a;
  return self;
}

- (void)setTransformFromCanvas:(CGAffineTransform *)canvas
{
  v3 = *&canvas->a;
  v4 = *&canvas->tx;
  *&self->_transformFromCanvas.c = *&canvas->c;
  *&self->_transformFromCanvas.tx = v4;
  *&self->_transformFromCanvas.a = v3;
}

- (CGAffineTransform)transformToDevice
{
  v3 = *&self[11].tx;
  *&retstr->a = *&self[11].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[12].a;
  return self;
}

- (void)setTransformToDevice:(CGAffineTransform *)device
{
  v3 = *&device->a;
  v4 = *&device->tx;
  *&self->_transformToDevice.c = *&device->c;
  *&self->_transformToDevice.tx = v4;
  *&self->_transformToDevice.a = v3;
}

- (CGAffineTransform)transformFromDevice
{
  v3 = *&self[12].tx;
  *&retstr->a = *&self[12].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].a;
  return self;
}

- (void)setTransformFromDevice:(CGAffineTransform *)device
{
  v3 = *&device->a;
  v4 = *&device->tx;
  *&self->_transformFromDevice.c = *&device->c;
  *&self->_transformFromDevice.tx = v4;
  *&self->_transformFromDevice.a = v3;
}

- (CGPoint)tableOffset
{
  x = self->_tableOffset.x;
  y = self->_tableOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRange
{
  bottomRight = self->_gridRange.bottomRight;
  topLeft = self->_gridRange.topLeft;
  result.var1 = bottomRight;
  result.var0 = topLeft;
  return result;
}

- (CGRect)cachedFrame
{
  x = self->_cachedFrame.origin.x;
  y = self->_cachedFrame.origin.y;
  width = self->_cachedFrame.size.width;
  height = self->_cachedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedAlignedFrame
{
  x = self->_cachedAlignedFrame.origin.x;
  y = self->_cachedAlignedFrame.origin.y;
  width = self->_cachedAlignedFrame.size.width;
  height = self->_cachedAlignedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedStrokeFrame
{
  x = self->_cachedStrokeFrame.origin.x;
  y = self->_cachedStrokeFrame.origin.y;
  width = self->_cachedStrokeFrame.size.width;
  height = self->_cachedStrokeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedAlignedStrokeFrame
{
  x = self->_cachedAlignedStrokeFrame.origin.x;
  y = self->_cachedAlignedStrokeFrame.origin.y;
  width = self->_cachedAlignedStrokeFrame.size.width;
  height = self->_cachedAlignedStrokeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end