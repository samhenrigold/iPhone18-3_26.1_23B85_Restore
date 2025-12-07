@interface TSAPdfTaggerTableLayoutSpaceContext
- (TSAPdfTaggerTableLayoutSpaceContext)initWithStateOfTagger:(id)tagger tableLayoutSpace:(id)space;
- (TSUCellRect)bodyCellRange;
- (_NSRange)bodyRowRange;
- (void)addRow:(unsigned int)row;
@end

@implementation TSAPdfTaggerTableLayoutSpaceContext

- (TSAPdfTaggerTableLayoutSpaceContext)initWithStateOfTagger:(id)tagger tableLayoutSpace:(id)space
{
  taggerCopy = tagger;
  spaceCopy = space;
  v24.receiver = self;
  v24.super_class = TSAPdfTaggerTableLayoutSpaceContext;
  v8 = [(TSAPdfTaggerContext *)&v24 initWithStateOfTagger:taggerCopy];
  if (v8)
  {
    v9 = objc_opt_class();
    v12 = objc_msgSend_topOfContextStackWithExpectedClass_(taggerCopy, v10, v9, v11);
    tableChunkContext = v8->_tableChunkContext;
    v8->_tableChunkContext = v12;

    objc_storeStrong(&v8->_tableLayoutSpace, space);
    v17 = objc_msgSend_tableLayoutSpace(v8, v14, v15, v16);
    v21 = objc_msgSend_layout(v17, v18, v19, v20);

    v8->_bodyCellRange.origin = TSTLayoutGetPartitionBodyCellRange();
    v8->_bodyCellRange.size = v22;
    v8->_currentTableRegion = 0;
    v8->_currentRowIndex = 0x7FFFFFFF;
  }

  return v8;
}

- (_NSRange)bodyRowRange
{
  v7.origin = objc_msgSend_bodyCellRange(self, a2, v2, v3);
  v7.size = v4;
  v5 = TSUCellRect::rows(&v7);
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)addRow:(unsigned int)row
{
  v4 = *&row;
  if (objc_msgSend_currentRowIndex(self, a2, *&row, v3) == 0x7FFFFFFF)
  {
    v9 = v4;
  }

  else
  {
    v10 = objc_msgSend_currentRowIndex(self, v6, v7, v8) < v4;
    v14 = objc_msgSend_currentRowIndex(self, v11, v12, v13);
    v9 = v4;
    sub_2760CB2EC(v10, "Row indices are expect to increase, after %lu got %lu", v14, v4);
  }

  v15 = objc_msgSend_bodyRowRange(self, v6, v7, v8);
  if (v9 >= v15 && v9 - v15 < v16)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_bodyRowRange(self, v16, v17, v18) <= v9)
  {
    v23 = objc_msgSend_bodyRowRange(self, v20, v21, v22);
    if (&v16[v23] <= v9)
    {
LABEL_6:
      objc_msgSend_setCurrentTableRegion_(self, v16, 405, v18);
      goto LABEL_9;
    }

    objc_msgSend_setCurrentTableRegion_(self, v16, 0, v18);
    v27 = objc_msgSend_bodyRowRange(self, v24, v25, v26);
    v29 = v28;
    v30 = MEMORY[0x277CCACA8];
    v33 = sub_2760D2B28(v27, v28, v31, v32);
    v37 = sub_2760D2B28(&v29[v27], v34, v35, v36);
    v40 = objc_msgSend_stringWithFormat_(v30, v38, @"[%@<-%lu->%@"), v39, v33, v29, v37);

    sub_2760CB2EC(0, "Row index %lu cannot be positioned relative to body row range %@", v9, v40);
  }

  else
  {
    objc_msgSend_setCurrentTableRegion_(self, v20, 404, v22);
  }

LABEL_9:

  MEMORY[0x2821F9670](self, sel_setCurrentRowIndex_, v4, v19);
}

- (TSUCellRect)bodyCellRange
{
  p_bodyCellRange = &self->_bodyCellRange;
  origin = self->_bodyCellRange.origin;
  size = p_bodyCellRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

@end