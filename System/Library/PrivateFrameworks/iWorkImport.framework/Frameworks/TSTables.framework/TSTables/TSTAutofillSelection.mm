@interface TSTAutofillSelection
+ (id)autofillSelectionWithSourceCellRange:(TSUCellRect)range;
+ (id)autofillSelectionWithSourceCellRange:(TSUCellRect)range targetCellRange:(TSUCellRect)cellRange;
- (BOOL)isValidForCellSelection:(id)selection inTable:(id)table;
- (BOOL)isValidForRowVisibilityChangeInRegion:(id)region table:(id)table;
- (TSTAutofillSelection)initWithSourceCellRange:(TSUCellRect)range targetCellRange:(TSUCellRect)cellRange;
- (TSUCellRect)sourceCellRange;
- (TSUCellRect)targetCellRange;
@end

@implementation TSTAutofillSelection

+ (id)autofillSelectionWithSourceCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithSourceCellRange_(v5, v6, origin, size);

  return v7;
}

+ (id)autofillSelectionWithSourceCellRange:(TSUCellRect)range targetCellRange:(TSUCellRect)cellRange
{
  size = cellRange.size;
  origin = cellRange.origin;
  v6 = range.size;
  v7 = range.origin;
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_initWithSourceCellRange_targetCellRange_(v8, v9, v7, v6, origin, size);

  return v10;
}

- (TSTAutofillSelection)initWithSourceCellRange:(TSUCellRect)range targetCellRange:(TSUCellRect)cellRange
{
  size = cellRange.size;
  origin = cellRange.origin;
  v6 = range.size;
  v7 = range.origin;
  v9.receiver = self;
  v9.super_class = TSTAutofillSelection;
  result = [(TSTAutofillSelection *)&v9 init];
  if (result)
  {
    result->_sourceCellRange.origin = v7;
    result->_sourceCellRange.size = v6;
    result->_targetCellRange.origin = origin;
    result->_targetCellRange.size = size;
  }

  return result;
}

- (BOOL)isValidForCellSelection:(id)selection inTable:(id)table
{
  v5 = objc_msgSend_selectionAdjustedForVisibilityInTableInfo_(selection, a2, table, table);
  v9 = objc_msgSend_cellRegion(v5, v6, v7, v8);
  v13 = objc_msgSend_boundingCellRange(v9, v10, v11, v12);
  v15 = v14;
  v18 = objc_msgSend_targetCellRange(self, v14, v16, v17);
  v20 = ((v18 ^ v13) & 0x101FFFF00000000) == 0 && v15 == v19;
  v21 = v13 == v18 && v20;

  return v21;
}

- (BOOL)isValidForRowVisibilityChangeInRegion:(id)region table:(id)table
{
  regionCopy = region;
  tableCopy = table;
  v11 = objc_msgSend_sourceCellRange(self, v8, v9, v10);
  if (objc_msgSend_intersectsCellRange_(regionCopy, v12, v11, v12))
  {
    v16 = objc_msgSend_sourceCellRange(self, v13, v14, v15);
    v18 = objc_msgSend_indexesOfHiddenRowsInCellRange_(tableCopy, v17, v16, v17);
    v22 = objc_msgSend_count(v18, v19, v20, v21) == 0;
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

- (TSUCellRect)sourceCellRange
{
  p_sourceCellRange = &self->_sourceCellRange;
  origin = self->_sourceCellRange.origin;
  size = p_sourceCellRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSUCellRect)targetCellRange
{
  p_targetCellRange = &self->_targetCellRange;
  origin = self->_targetCellRange.origin;
  size = p_targetCellRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

@end