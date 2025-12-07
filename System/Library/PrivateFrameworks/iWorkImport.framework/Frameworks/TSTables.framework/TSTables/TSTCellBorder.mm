@interface TSTCellBorder
+ (id)cellBorder;
+ (id)cellBorderForResettingAllStrokes;
+ (id)cellDiffProperties;
- (BOOL)hasContent;
- (BOOL)hasEqualStrokes:(id)strokes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap;
- (void)_clearBottomStroke;
- (void)_clearLeftStroke;
- (void)_clearRightStroke;
- (void)_clearTopStroke;
- (void)applyToCell:(id)cell;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
- (void)setBottomStroke:(id)stroke order:(int)order;
- (void)setLeftStroke:(id)stroke order:(int)order;
- (void)setRightStroke:(id)stroke order:(int)order;
- (void)setTopStroke:(id)stroke order:(int)order;
@end

@implementation TSTCellBorder

+ (id)cellBorder
{
  v2 = objc_alloc_init(TSTCellBorder);

  return v2;
}

+ (id)cellBorderForResettingAllStrokes
{
  v4 = objc_msgSend_cellBorder(TSTCellBorder, a2, v2, v3);
  objc_msgSend_setTopStroke_order_(v4, v5, 0, 0);
  objc_msgSend_setBottomStroke_order_(v4, v6, 0, 0);
  objc_msgSend_setLeftStroke_order_(v4, v7, 0, 0);
  objc_msgSend_setRightStroke_order_(v4, v8, 0, 0);

  return v4;
}

- (void)setTopStroke:(id)stroke order:(int)order
{
  objc_storeStrong(&self->_topStroke, stroke);
  self->_topStrokeOrder = order;
  *&self->_definedTopStroke = 257;
}

- (void)setLeftStroke:(id)stroke order:(int)order
{
  objc_storeStrong(&self->_leftStroke, stroke);
  self->_leftStrokeOrder = order;
  *&self->_definedLeftStroke = 257;
}

- (void)setBottomStroke:(id)stroke order:(int)order
{
  objc_storeStrong(&self->_bottomStroke, stroke);
  self->_bottomStrokeOrder = order;
  *&self->_definedBottomStroke = 257;
}

- (void)setRightStroke:(id)stroke order:(int)order
{
  objc_storeStrong(&self->_rightStroke, stroke);
  self->_rightStrokeOrder = order;
  *&self->_definedRightStroke = 257;
}

- (void)_clearTopStroke
{
  topStroke = self->_topStroke;
  self->_topStroke = 0;

  self->_topStrokeOrder = 0;
  *&self->_definedTopStroke = 0;
}

- (void)_clearLeftStroke
{
  leftStroke = self->_leftStroke;
  self->_leftStroke = 0;

  self->_leftStrokeOrder = 0;
  *&self->_definedLeftStroke = 0;
}

- (void)_clearBottomStroke
{
  bottomStroke = self->_bottomStroke;
  self->_bottomStroke = 0;

  self->_bottomStrokeOrder = 0;
  *&self->_definedBottomStroke = 0;
}

- (void)_clearRightStroke
{
  rightStroke = self->_rightStroke;
  self->_rightStroke = 0;

  self->_rightStrokeOrder = 0;
  *&self->_definedRightStroke = 0;
}

- (void)applyToCell:(id)cell
{
  v41 = objc_msgSend_cellBorder(cell, a2, cell, v3);
  if (!v41)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellBorder applyToCell:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellBorder.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 118, 0, "invalid nil value for '%{public}s'", "currentCellBorder");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (self->_definedTopStroke)
  {
    if (self->_topStroke)
    {
      v17 = objc_msgSend_topStroke(self, v5, v6, v7);
      v21 = objc_msgSend_topStrokeOrder(self, v18, v19, v20);
      objc_msgSend_setTopStroke_order_(v41, v22, v17, v21);
    }

    else
    {
      objc_msgSend__clearTopStroke(v41, v5, v6, v7);
    }
  }

  if (self->_definedLeftStroke)
  {
    if (self->_leftStroke)
    {
      v23 = objc_msgSend_leftStroke(self, v5, v6, v7);
      v27 = objc_msgSend_leftStrokeOrder(self, v24, v25, v26);
      objc_msgSend_setLeftStroke_order_(v41, v28, v23, v27);
    }

    else
    {
      objc_msgSend__clearLeftStroke(v41, v5, v6, v7);
    }
  }

  if (self->_definedBottomStroke)
  {
    if (self->_bottomStroke)
    {
      v29 = objc_msgSend_bottomStroke(self, v5, v6, v7);
      v33 = objc_msgSend_bottomStrokeOrder(self, v30, v31, v32);
      objc_msgSend_setBottomStroke_order_(v41, v34, v29, v33);
    }

    else
    {
      objc_msgSend__clearBottomStroke(v41, v5, v6, v7);
    }
  }

  if (self->_definedRightStroke)
  {
    if (self->_rightStroke)
    {
      v35 = objc_msgSend_rightStroke(self, v5, v6, v7);
      v39 = objc_msgSend_rightStrokeOrder(self, v36, v37, v38);
      objc_msgSend_setRightStroke_order_(v41, v40, v35, v39);
    }

    else
    {
      objc_msgSend__clearRightStroke(v41, v5, v6, v7);
    }
  }
}

- (BOOL)hasContent
{
  v8 = objc_msgSend_topStroke(self, a2, v2, v3);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v13 = objc_msgSend_leftStroke(self, v5, v6, v7);
    if (v13)
    {
      v9 = 1;
    }

    else
    {
      v17 = objc_msgSend_bottomStroke(self, v10, v11, v12);
      if (v17)
      {
        v9 = 1;
      }

      else
      {
        v18 = objc_msgSend_rightStroke(self, v14, v15, v16);
        v9 = v18 != 0;
      }
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_allocWithZone_(TSTCellBorder, a2, zone, v3);
  v12 = objc_msgSend_init(v5, v6, v7, v8);
  if (self->_definedTopStroke)
  {
    v13 = objc_msgSend_topStroke(self, v9, v10, v11);
    v17 = objc_msgSend_topStrokeOrder(self, v14, v15, v16);
    objc_msgSend_setTopStroke_order_(v12, v18, v13, v17);
  }

  if (self->_definedLeftStroke)
  {
    v19 = objc_msgSend_leftStroke(self, v9, v10, v11);
    v23 = objc_msgSend_leftStrokeOrder(self, v20, v21, v22);
    objc_msgSend_setLeftStroke_order_(v12, v24, v19, v23);
  }

  if (self->_definedBottomStroke)
  {
    v25 = objc_msgSend_bottomStroke(self, v9, v10, v11);
    v29 = objc_msgSend_bottomStrokeOrder(self, v26, v27, v28);
    objc_msgSend_setBottomStroke_order_(v12, v30, v25, v29);
  }

  if (self->_definedRightStroke)
  {
    v31 = objc_msgSend_rightStroke(self, v9, v10, v11);
    v35 = objc_msgSend_rightStrokeOrder(self, v32, v33, v34);
    objc_msgSend_setRightStroke_order_(v12, v36, v31, v35);
  }

  return v12;
}

- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v11 = objc_msgSend_init(self, v7, v8, v9);
  if (v11)
  {
    v12 = *(message + 4);
    if ((v12 & 0x10) != 0)
    {
      if (v12)
      {
        v13 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(message + 3), unarchiverCopy);
        v14 = *(v11 + 8);
        *(v11 + 8) = v13;
      }

      *(v11 + 16) = *(message + 14);
      *(v11 + 68) = 257;
      v12 = *(message + 4);
    }

    if ((v12 & 0x80) != 0)
    {
      if ((v12 & 8) != 0)
      {
        v15 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(message + 6), unarchiverCopy);
        v16 = *(v11 + 56);
        *(v11 + 56) = v15;
      }

      *(v11 + 64) = *(message + 17);
      *(v11 + 74) = 257;
      v12 = *(message + 4);
    }

    if ((v12 & 0x40) != 0)
    {
      if ((v12 & 4) != 0)
      {
        v17 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(message + 5), unarchiverCopy);
        v18 = *(v11 + 40);
        *(v11 + 40) = v17;
      }

      *(v11 + 48) = *(message + 16);
      *(v11 + 72) = 257;
      v12 = *(message + 4);
    }

    if ((v12 & 0x20) != 0)
    {
      if ((v12 & 2) != 0)
      {
        v19 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D803C0], v10, *(message + 4), unarchiverCopy);
        v20 = *(v11 + 24);
        *(v11 + 24) = v19;
      }

      *(v11 + 32) = *(message + 15);
      *(v11 + 70) = 257;
    }
  }

  return v11;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  if (self->_definedTopStroke)
  {
    if (self->_topStroke)
    {
      v10 = objc_msgSend_topStroke(self, v6, v7, v8);
      *(message + 4) |= 1u;
      v11 = *(message + 3);
      if (!v11)
      {
        v12 = *(message + 1);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0290](v12);
        *(message + 3) = v11;
      }

      objc_msgSend_saveToArchive_archiver_(v10, v9, v11, archiverCopy);
    }

    v13 = objc_msgSend_topStrokeOrder(self, v6, v7, v8);
    *(message + 4) |= 0x10u;
    *(message + 14) = v13;
  }

  if (self->_definedLeftStroke)
  {
    if (self->_leftStroke)
    {
      v15 = objc_msgSend_leftStroke(self, v6, v7, v8);
      *(message + 4) |= 8u;
      v16 = *(message + 6);
      if (!v16)
      {
        v17 = *(message + 1);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0290](v17);
        *(message + 6) = v16;
      }

      objc_msgSend_saveToArchive_archiver_(v15, v14, v16, archiverCopy);
    }

    v18 = objc_msgSend_leftStrokeOrder(self, v6, v7, v8);
    *(message + 4) |= 0x80u;
    *(message + 17) = v18;
  }

  if (self->_definedBottomStroke)
  {
    if (self->_bottomStroke)
    {
      v20 = objc_msgSend_bottomStroke(self, v6, v7, v8);
      *(message + 4) |= 4u;
      v21 = *(message + 5);
      if (!v21)
      {
        v22 = *(message + 1);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x223DA0290](v22);
        *(message + 5) = v21;
      }

      objc_msgSend_saveToArchive_archiver_(v20, v19, v21, archiverCopy);
    }

    v23 = objc_msgSend_bottomStrokeOrder(self, v6, v7, v8);
    *(message + 4) |= 0x40u;
    *(message + 16) = v23;
  }

  if (self->_definedRightStroke)
  {
    if (self->_rightStroke)
    {
      v25 = objc_msgSend_rightStroke(self, v6, v7, v8);
      *(message + 4) |= 2u;
      v26 = *(message + 4);
      if (!v26)
      {
        v27 = *(message + 1);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x223DA0290](v27);
        *(message + 4) = v26;
      }

      objc_msgSend_saveToArchive_archiver_(v25, v24, v26, archiverCopy);
    }

    v28 = objc_msgSend_rightStrokeOrder(self, v6, v7, v8);
    *(message + 4) |= 0x20u;
    *(message + 15) = v28;
  }
}

+ (id)cellDiffProperties
{
  if (qword_27CFB5490 != -1)
  {
    sub_2216F7884();
  }

  v3 = qword_27CFB5488;

  return v3;
}

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap
{
  inMapCopy = inMap;
  setPropertyMapCopy = setPropertyMap;
  v15 = objc_msgSend_objectForProperty_(map, v11, 912, v12);
  if (v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCellBorder objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellBorder.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 290, 0, "shouldn't remove the cell border from a cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v25 = objc_msgSend_objectForProperty_(inMapCopy, v13, 912, v14);
  v29 = objc_msgSend_cellBorder(TSTCellBorder, v26, v27, v28);
  if (objc_msgSend_definedTopStroke(v25, v30, v31, v32))
  {
    v36 = objc_msgSend_topStroke(self, v33, v34, v35);
    v40 = objc_msgSend_topStrokeOrder(self, v37, v38, v39);
    objc_msgSend_setTopStroke_order_(v29, v41, v36, v40);
  }

  if (objc_msgSend_definedLeftStroke(v25, v33, v34, v35))
  {
    v45 = objc_msgSend_leftStroke(self, v42, v43, v44);
    v49 = objc_msgSend_leftStrokeOrder(self, v46, v47, v48);
    objc_msgSend_setLeftStroke_order_(v29, v50, v45, v49);
  }

  if (objc_msgSend_definedBottomStroke(v25, v42, v43, v44))
  {
    v54 = objc_msgSend_bottomStroke(self, v51, v52, v53);
    v58 = objc_msgSend_bottomStrokeOrder(self, v55, v56, v57);
    objc_msgSend_setBottomStroke_order_(v29, v59, v54, v58);
  }

  if (objc_msgSend_definedRightStroke(v25, v51, v52, v53))
  {
    v63 = objc_msgSend_rightStroke(self, v60, v61, v62);
    v67 = objc_msgSend_rightStrokeOrder(self, v64, v65, v66);
    objc_msgSend_setRightStroke_order_(v29, v68, v63, v67);
  }

  objc_msgSend_setObject_forProperty_(setPropertyMapCopy, v60, v29, 912);

  return v25;
}

- (BOOL)hasEqualStrokes:(id)strokes
{
  strokesCopy = strokes;
  v8 = strokesCopy;
  if (strokesCopy && (definedTopStroke = self->_definedTopStroke, definedTopStroke == objc_msgSend_definedTopStroke(strokesCopy, v5, v6, v7)) && (definedLeftStroke = self->_definedLeftStroke, definedLeftStroke == objc_msgSend_definedLeftStroke(v8, v10, v11, v12)) && (definedBottomStroke = self->_definedBottomStroke, definedBottomStroke == objc_msgSend_definedBottomStroke(v8, v14, v15, v16)) && (definedRightStroke = self->_definedRightStroke, definedRightStroke == objc_msgSend_definedRightStroke(v8, v18, v19, v20)) && (!self->_definedTopStroke || (topStroke = self->_topStroke, objc_msgSend_topStroke(v8, v22, v23, v24), v26 = objc_claimAutoreleasedReturnValue(), LOBYTE(topStroke) = objc_msgSend_isEqual_(topStroke, v27, v26, v28), v26, (topStroke & 1) != 0)) && (!self->_definedLeftStroke || (leftStroke = self->_leftStroke, objc_msgSend_leftStroke(v8, v22, v23, v24), v30 = objc_claimAutoreleasedReturnValue(), LOBYTE(leftStroke) = objc_msgSend_isEqual_(leftStroke, v31, v30, v32), v30, (leftStroke & 1) != 0)) && (!self->_definedRightStroke || (rightStroke = self->_rightStroke, objc_msgSend_rightStroke(v8, v22, v23, v24), v34 = objc_claimAutoreleasedReturnValue(), LOBYTE(rightStroke) = objc_msgSend_isEqual_(rightStroke, v35, v34, v36), v34, (rightStroke & 1) != 0)))
  {
    if (self->_definedBottomStroke)
    {
      bottomStroke = self->_bottomStroke;
      v38 = objc_msgSend_bottomStroke(v8, v22, v23, v24);
      isEqual = objc_msgSend_isEqual_(bottomStroke, v39, v38, v40);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual & 1;
}

@end