@interface TSTWPLayout
- (BOOL)invalidateForPageCountChange;
- (BOOL)isDynamicallyChangingAvailableSpaceForContainedChild;
- (CGRect)cachedAutosizedFrame;
- (CGRect)cachedMaskRect;
- (TSTWPLayout)initWithStorage:(id)storage cellID:(TSUCellCoord)d frame:(CGRect)frame;
- (TSUCellRect)cachedMaskSpillRange;
- (TSUCellRect)cachedMergeRange;
- (void)invalidate;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)validate;
@end

@implementation TSTWPLayout

- (TSTWPLayout)initWithStorage:(id)storage cellID:(TSUCellCoord)d frame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = TSTWPLayout;
  v6 = [(TSTWPLayout *)&v15 initWithInfo:storage frame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    *(v6 + 348) = d;
    v6[336] = 0;
    *(v6 + 85) = 0;
    *(v6 + 86) = 0;
    *(v6 + 392) = xmmword_2217E1134;
    *(v6 + 47) = 0;
    v8 = MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 16);
    *(v6 + 424) = *MEMORY[0x277CBF398];
    *(v6 + 440) = v9;
    *(v6 + 408) = xmmword_2217E1134;
    v10 = v8[1];
    *(v6 + 456) = *v8;
    *(v6 + 472) = v10;
    v11 = *(v6 + 45);
    *(v6 + 45) = 0;

    cachedTextStyle = v7->_cachedTextStyle;
    v7->_cachedTextStyle = 0;

    cachedPadding = v7->_cachedPadding;
    v7->_cachedPadding = 0;

    v7->_cacheIsValid = 0;
  }

  return v7;
}

- (void)invalidate
{
  if ((objc_msgSend_isLayingOutIntoTarget(self, a2, v2, v3) & 1) == 0)
  {
    objc_msgSend_setCacheIsValid_(self, v5, 0, v6);
    objc_msgSend_setCachedMaskRect_(self, v7, v8, v9, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));
    objc_msgSend_setCachedMaskSpillRange_(self, v10, 0x7FFF7FFFFFFFLL, 0);
    v11.receiver = self;
    v11.super_class = TSTWPLayout;
    [(TSTWPLayout *)&v11 invalidate];
  }
}

- (void)invalidateSize
{
  if ((objc_msgSend_isLayingOutIntoTarget(self, a2, v2, v3) & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = TSTWPLayout;
    [(TSTWPLayout *)&v5 invalidateSize];
  }
}

- (void)invalidatePosition
{
  if ((objc_msgSend_isLayingOutIntoTarget(self, a2, v2, v3) & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = TSTWPLayout;
    [(TSTWPLayout *)&v5 invalidatePosition];
  }
}

- (void)validate
{
  if ((objc_msgSend_cacheIsValid(self, a2, v2, v3) & 1) == 0)
  {
    v8 = objc_msgSend_parent(self, v5, v6, v7);

    if (v8)
    {
      v76 = objc_msgSend_parent(self, v9, v10, v11);
      v15 = objc_msgSend_layoutEngine(v76, v12, v13, v14);
      v19 = objc_msgSend_tableInfo(v15, v16, v17, v18);
      v23 = objc_msgSend_newCell(v19, v20, v21, v22);
      v82 = v23;
      v27 = objc_msgSend_cachedCellID(self, v24, v25, v26);
      v29 = objc_msgSend_cell_forCellID_(v15, v28, &v82, v27);
      v30 = v82;

      if ((v29 & 1) == 0)
      {
        v34 = objc_msgSend_cachedCellID(self, v31, v32, v33);
        objc_msgSend_getCell_atCellID_(v19, v35, v30, v34);
      }

      v81 = 0;
      v79 = 0;
      v80 = 0;
      v36 = objc_msgSend_cachedCellID(self, v31, v32, v33);
      v78 = 0;
      objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v19, v37, v30, v36, &v81, &v80, &v79, &v78);
      v41 = v78;
      if (v80 == 4)
      {
        v42 = objc_msgSend_cachedCellID(self, v38, v39, v40);
        v80 = objc_msgSend_naturalAlignmentForCellID_(v76, v43, v42, v44);
      }

      v45 = objc_msgSend_cachedCellID(self, v38, v39, v40);
      v46 = sub_2213AA890(v15, v45);
      v50 = v46;
      v51 = v47;
      if (v81)
      {
        v52 = 0;
      }

      else
      {
        v52 = 44;
        if (v46 != 0x7FFFFFFF && (v46 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          if (v47)
          {
            v53 = HIDWORD(v47) == 0;
          }

          else
          {
            v53 = 1;
          }

          if (v53)
          {
            v52 = 44;
          }

          else
          {
            v52 = 0;
          }
        }
      }

      v54 = objc_msgSend_cellStyle(v30, v47, v48, v49);
      v58 = objc_msgSend_textStyle(v30, v55, v56, v57);
      objc_msgSend_setCachedCellWraps_(self, v59, v81, v60);
      objc_msgSend_setCachedVerticalAlignment_(self, v61, v79, v62);
      objc_msgSend_setCachedParagraphAlignment_(self, v63, v80, v64);
      objc_msgSend_setCachedMergeRange_(self, v65, v50, v51);
      objc_msgSend_setCachedAutoSizeFlags_(self, v66, v52, v67);
      objc_msgSend_setCachedCellStyle_(self, v68, v54, v69);
      objc_msgSend_setCachedTextStyle_(self, v70, v58, v71);
      objc_msgSend_setCachedPadding_(self, v72, v41, v73);
      objc_msgSend_setCacheIsValid_(self, v74, 1, v75);
    }
  }

  v77.receiver = self;
  v77.super_class = TSTWPLayout;
  [(TSTWPLayout *)&v77 validate];
}

- (BOOL)invalidateForPageCountChange
{
  v12.receiver = self;
  v12.super_class = TSTWPLayout;
  invalidateForPageCountChange = [(TSTWPLayout *)&v12 invalidateForPageCountChange];
  if (invalidateForPageCountChange)
  {
    v7 = objc_msgSend_parent(self, v3, v4, v5);
    objc_msgSend_invalidate(v7, v8, v9, v10);
  }

  return invalidateForPageCountChange;
}

- (BOOL)isDynamicallyChangingAvailableSpaceForContainedChild
{
  v7.receiver = self;
  v7.super_class = TSTWPLayout;
  return [(TSTWPLayout *)&v7 isDynamicallyChangingAvailableSpaceForContainedChild]|| objc_msgSend_layoutState(self, v3, v4, v5) == 1;
}

- (TSUCellRect)cachedMergeRange
{
  p_cachedMergeRange = &self->_cachedMergeRange;
  origin = self->_cachedMergeRange.origin;
  size = p_cachedMergeRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGRect)cachedMaskRect
{
  x = self->_cachedMaskRect.origin.x;
  y = self->_cachedMaskRect.origin.y;
  width = self->_cachedMaskRect.size.width;
  height = self->_cachedMaskRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSUCellRect)cachedMaskSpillRange
{
  p_cachedMaskSpillRange = &self->_cachedMaskSpillRange;
  origin = self->_cachedMaskSpillRange.origin;
  size = p_cachedMaskSpillRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGRect)cachedAutosizedFrame
{
  x = self->_cachedAutosizedFrame.origin.x;
  y = self->_cachedAutosizedFrame.origin.y;
  width = self->_cachedAutosizedFrame.size.width;
  height = self->_cachedAutosizedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end