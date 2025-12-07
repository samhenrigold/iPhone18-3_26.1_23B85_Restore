@interface TSTMutableCellIteratorData
- (TSTMutableCellIteratorData)init;
- (TSUCellRect)mergeRange;
- (void)reset;
@end

@implementation TSTMutableCellIteratorData

- (TSTMutableCellIteratorData)init
{
  v8.receiver = self;
  v8.super_class = TSTMutableCellIteratorData;
  v2 = [(TSTMutableCellIteratorData *)&v8 init];
  v6 = v2;
  if (v2)
  {
    v2->_cellID = 0x7FFF7FFFFFFFLL;
    v2->_mergeRange = xmmword_2217E0204;
    objc_msgSend_reset(v2, v3, v4, v5);
  }

  return v6;
}

- (void)reset
{
  objc_msgSend_setCell_(self, a2, 0, v2);
  objc_msgSend_setFormulaSpec_(self, v4, 0, v5);
  objc_msgSend_setMergeRange_(self, v6, 0x7FFF7FFFFFFFLL, 0);

  objc_msgSend_setCellID_(self, v7, 0x7FFF7FFFFFFFLL, v8);
}

- (TSUCellRect)mergeRange
{
  size = self->_mergeRange.size;
  origin = self->_mergeRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

@end