@interface TSTCellStateForLayout
- (BOOL)hasContent;
- (CGSize)maxSize;
- (CGSize)minSize;
- (CGSize)sizeOfText;
- (TSTCellStateForLayout)init;
- (TSUCellRect)layoutMergeRange;
- (UIEdgeInsets)paddingInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)p_generateCellContentsAndReturnContents:(BOOL)contents;
@end

@implementation TSTCellStateForLayout

- (TSTCellStateForLayout)init
{
  v13.receiver = self;
  v13.super_class = TSTCellStateForLayout;
  v2 = [(TSTCellStateForLayout *)&v13 init];
  v3 = v2;
  if (v2)
  {
    cell = v2->_cell;
    v2->_modelCellID = 0x7FFF7FFFFFFFLL;
    v2->_cell = 0;

    v3->_layoutMergeRange = xmmword_2217E1AF8;
    v3->_forDrawing = 0;
    wpColumn = v3->_wpColumn;
    v3->_wpColumn = 0;

    v12 = *MEMORY[0x277CBF3A8];
    v3->_minSize = *MEMORY[0x277CBF3A8];
    v3->_maxSize = v12;
    v6 = *(MEMORY[0x277D81428] + 16);
    *&v3->_paddingInsets.top = *MEMORY[0x277D81428];
    *&v3->_paddingInsets.bottom = v6;
    v3->_verticalAlignment = 0;
    textStyleHandle = v3->_textStyleHandle;
    v3->_maxWidthForChildren = 1.79769313e308;
    v3->_textStyleHandle = 0;

    cellContents = v3->_cellContents;
    v3->_cellContents = 0;

    v3->_hasContentIsCached = 0;
    *&v3->_inDynamicLayout = 0;
    keyVal = v3->_keyVal;
    v3->_keyVal = 0;

    *&v3->_cellPropsRowHeight = 0;
    v3->_layoutCacheFlags = 15;
    v3->_sizeOfText = v12;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    *&v3->_pageNumber = vnegq_f64(v10);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    *(v12 + 24) = self->_modelCellID;
    objc_storeStrong((v12 + 32), self->_cell);
    *(v13 + 96) = self->_layoutMergeRange;
    *(v13 + 12) = self->_forDrawing;
    objc_storeStrong((v13 + 72), self->_wpColumn);
    *(v13 + 112) = self->_minSize;
    *(v13 + 128) = self->_maxSize;
    *(v13 + 48) = self->_maxWidthForChildren;
    v14 = *&self->_paddingInsets.bottom;
    *(v13 + 160) = *&self->_paddingInsets.top;
    *(v13 + 176) = v14;
    *(v13 + 16) = self->_verticalAlignment;
    objc_storeStrong((v13 + 56), self->_textStyleHandle);
    objc_storeStrong((v13 + 40), self->_cellContents);
    *(v13 + 14) = self->_hasContent;
    *(v13 + 15) = self->_hasContentIsCached;
    *(v13 + 13) = self->_inDynamicLayout;
    objc_storeStrong((v13 + 64), self->_keyVal);
    *(v13 + 9) = self->_cellWraps;
    *(v13 + 8) = self->_cellPropsRowHeight;
    *(v13 + 10) = self->_needWPColumn;
    *(v13 + 11) = self->_shouldFastPathMeasureFitWidth;
    *(v13 + 20) = self->_layoutCacheFlags;
    *(v13 + 144) = self->_sizeOfText;
    *(v13 + 80) = self->_pageNumber;
    *(v13 + 88) = self->_pageCount;
  }

  return v13;
}

- (BOOL)hasContent
{
  if (!self->_hasContentIsCached)
  {
    v4 = objc_msgSend_p_generateCellContentsAndReturnContents_(self, a2, 0, v2);
  }

  return self->_hasContent;
}

- (id)p_generateCellContentsAndReturnContents:(BOOL)contents
{
  contentsCopy = contents;
  if (self->_cellContents)
  {
    goto LABEL_17;
  }

  cell = self->_cell;
  if (!cell)
  {
    goto LABEL_17;
  }

  v7 = objc_msgSend_valueType(cell, a2, contents, v3);
  if (v7 == 6)
  {
    if (objc_msgSend_formatType(self->_cell, v8, v9, v10) == 263)
    {
      goto LABEL_6;
    }

LABEL_9:
    v22 = objc_msgSend_formattedValue(self->_cell, v8, v9, v10);
    cellContents = self->_cellContents;
    self->_cellContents = v22;

    v21 = self->_cellContents;
    goto LABEL_10;
  }

  if (v7 != 9)
  {
    if (v7 == 8)
    {
LABEL_6:
      v11 = self->_cellContents;
      self->_cellContents = 0;

      v15 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v16 = objc_msgSend_richTextValue(self->_cell, v8, v9, v10);
  v17 = self->_cellContents;
  self->_cellContents = v16;

  v21 = objc_msgSend_string(self->_cellContents, v18, v19, v20);
LABEL_10:
  v15 = v21;
LABEL_11:
  if (objc_msgSend_currentFormatUsesAccountingStyle(self->_cell, v12, v13, v14) && v15 && objc_msgSend_length(v15, v24, v25, v26) && !self->_forDrawing)
  {
    v28 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v27, @"\t", &stru_2834BADA0);
    v29 = self->_cellContents;
    self->_cellContents = v28;
  }

LABEL_17:
  if (!self->_hasContentIsCached)
  {
    v30 = self->_cellContents;
    if (v30)
    {
      v31 = objc_msgSend_length(v30, a2, contents, v3) != 0;
    }

    else
    {
      v31 = 0;
    }

    self->_hasContent = v31;
    self->_hasContentIsCached = 1;
  }

  if (contentsCopy)
  {
    v32 = self->_cellContents;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (TSUCellRect)layoutMergeRange
{
  size = self->_layoutMergeRange.size;
  origin = self->_layoutMergeRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)paddingInsets
{
  top = self->_paddingInsets.top;
  left = self->_paddingInsets.left;
  bottom = self->_paddingInsets.bottom;
  right = self->_paddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)sizeOfText
{
  width = self->_sizeOfText.width;
  height = self->_sizeOfText.height;
  result.height = height;
  result.width = width;
  return result;
}

@end