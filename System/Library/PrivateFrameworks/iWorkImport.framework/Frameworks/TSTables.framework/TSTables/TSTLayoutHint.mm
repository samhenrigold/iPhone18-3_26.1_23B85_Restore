@interface TSTLayoutHint
- (BOOL)overlapsWithSelectionPath:(id)path;
- (CGSize)effectiveSize;
- (CGSize)maximumSize;
- (NSString)description;
- (TSTLayout)layout;
- (TSTLayoutHint)initWithArchive:(const void *)archive;
- (TSTLayoutHint)initWithRange:(TSUCellRect)range hintId:(TSUCellCoord)id partitionPosition:(unsigned int)position maximumSize:(CGSize)size effectiveSize:(CGSize)effectiveSize layout:(id)layout validity:(BOOL)validity horizontal:(BOOL)self0;
- (TSUCellRect)cellRange;
- (id)copyForArchiving;
- (id)copyWithZone:(_NSZone *)zone;
- (void)invalidate;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSTLayoutHint

- (TSTLayoutHint)initWithRange:(TSUCellRect)range hintId:(TSUCellCoord)id partitionPosition:(unsigned int)position maximumSize:(CGSize)size effectiveSize:(CGSize)effectiveSize layout:(id)layout validity:(BOOL)validity horizontal:(BOOL)self0
{
  height = effectiveSize.height;
  width = effectiveSize.width;
  v13 = size.height;
  v14 = size.width;
  size = range.size;
  origin = range.origin;
  layoutCopy = layout;
  v25.receiver = self;
  v25.super_class = TSTLayoutHint;
  v21 = [(TSTLayoutHint *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_cellRange.origin = origin;
    v21->_cellRange.size = size;
    v21->_cacheHintID = id;
    v21->_partitionPosition = position;
    v21->_maximumSize.width = v14;
    v21->_maximumSize.height = v13;
    v21->_effectiveSize.width = width;
    v21->_effectiveSize.height = height;
    objc_storeWeak(&v21->_layout, layoutCopy);
    v22->_isValid = validity;
    v22->_horizontal = horizontal;
    partitioningPass = v22->_partitioningPass;
    v22->_partitioningPass = 0;
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  horizontal = self->_horizontal;
  return objc_msgSend_initWithRange_hintId_partitionPosition_maximumSize_effectiveSize_layout_validity_horizontal_(v4, v5, *&self->_cellRange.origin, *&self->_cellRange.size, *&self->_cacheHintID, self->_partitionPosition, 0, self->_isValid, self->_maximumSize.width, self->_maximumSize.height, self->_effectiveSize.width, self->_effectiveSize.height, horizontal);
}

- (id)copyForArchiving
{
  v3 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_initWithRange_hintId_partitionPosition_maximumSize_effectiveSize_layout_validity_horizontal_(v3, v4, *&self->_cellRange.origin, *&self->_cellRange.size, *&self->_cacheHintID, self->_partitionPosition, 0, self->_isValid, self->_maximumSize.width, self->_maximumSize.height, self->_effectiveSize.width, self->_effectiveSize.height, self->_horizontal);
  v8 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 24), self->_partitioningPass);
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTLayoutHint copyForArchiving]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutHint.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 89, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  return v8;
}

- (BOOL)overlapsWithSelectionPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTLayoutHint overlapsWithSelectionPath:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutHint.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 103, 0, "invalid nil value for '%{public}s'", "selectionPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2213B62AC;
  v38[3] = &unk_278464100;
  v38[4] = self;
  v16 = pathCopy;
  v39 = v16;
  v40 = &unk_2834A6F30;
  v17 = MEMORY[0x223DA1C10](v38);
  v24 = objc_msgSend_cellSelection(v16, v18, v19, v20);
  if (v24)
  {
    LOBYTE(v25) = (v17)[2](v17, v24);
  }

  else
  {
    v26 = objc_msgSend_tableNameSelection(v16, v21, v22, v23);

    if (v26)
    {
      v27 = objc_opt_class();
      v33 = objc_msgSend_mostSpecificSelectionOfClass_(v16, v28, v27, v29);
      if (v33)
      {
        v25 = objc_msgSend_partitionPosition(self, v30, v31, v32) & 1;
      }

      else
      {
        LOBYTE(v25) = 0;
      }
    }

    else
    {
      v34 = objc_opt_class();
      v33 = objc_msgSend_mostSpecificSelectionOfClass_(v16, v35, v34, v36);
      LOBYTE(v25) = v33 != 0;
    }
  }

  return v25;
}

- (TSTLayoutHint)initWithArchive:(const void *)archive
{
  if (*(archive + 5))
  {
    v5 = *(archive + 5);
  }

  else
  {
    v5 = MEMORY[0x277D809D8];
  }

  v6 = *(archive + 4);
  if ((v6 & 8) != 0)
  {
    v7 = vcvtq_f64_f32(*(*(archive + 6) + 24));
  }

  else
  {
    v7 = *MEMORY[0x277CBF3A8];
  }

  v18 = v7;
  if ((v6 & 2) != 0)
  {
    v8 = sub_2211238E0(*(archive + 4));
    v7 = v18;
    if ((*(archive + 4) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if ((v6 & 1) == 0)
    {
LABEL_9:
      v9 = 0;
      v10 = 0x7FFF7FFFFFFFLL;
      goto LABEL_12;
    }
  }

  v10 = sub_22112397C(*(archive + 3));
  v9 = a2;
  v7 = v18;
LABEL_12:
  v13 = objc_msgSend_initWithRange_hintId_partitionPosition_maximumSize_effectiveSize_layout_validity_horizontal_(self, a2, v10, v9, v8, *(archive + 15), 0, *(archive + 56), *(v5 + 24), *(v5 + 28), *&v7, *(archive + 57));
  if (v13)
  {
    if ((*(archive + 16) & 0x80) != 0)
    {
      objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v11, *(archive + 16), v12);
    }

    else
    {
      objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v11, 0, v12);
    }
    v14 = ;
    objc_msgSend_setPartitioningPass_(v13, v15, v14, v16);
  }

  return v13;
}

- (void)saveToArchive:(void *)archive
{
  origin = self->_cellRange.origin;
  size = self->_cellRange.size;
  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v8);
    *(archive + 3) = v7;
  }

  sub_2211239EC(origin, size, v7);
  v9 = self->_cacheHintID.row | (self->_cacheHintID.column << 32);
  *(archive + 4) |= 2u;
  v10 = *(archive + 4);
  if (!v10)
  {
    v11 = *(archive + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v11);
    *(archive + 4) = v10;
  }

  sub_221123904(v9, v10);
  isValid = self->_isValid;
  v16 = *(archive + 4);
  *(archive + 4) = v16 | 0x10;
  *(archive + 56) = isValid;
  *(archive + 15) = self->_partitionPosition;
  horizontal = self->_horizontal;
  v18 = v16 | 0x70;
  *(archive + 4) = v16 | 0x70;
  *(archive + 57) = horizontal;
  if ((v16 & 0x80) != 0)
  {
    partitioningPass = self->_partitioningPass;
    if (partitioningPass)
    {
      LODWORD(partitioningPass) = objc_msgSend_unsignedIntValue(partitioningPass, v12, v13, v14);
      v18 = *(archive + 4) | 0x80;
    }

    else
    {
      v18 = v16 | 0xF0;
    }

    *(archive + 16) = partitioningPass;
  }

  *(archive + 4) = v18 | 4;
  v20 = *(archive + 5);
  if (!v20)
  {
    v21 = *(archive + 1);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x223DA0350](v21);
    *(archive + 5) = v20;
  }

  v20[2].i32[0] |= 3u;
  v20[3] = vcvt_f32_f64(self->_maximumSize);
  *(archive + 4) |= 8u;
  v22 = *(archive + 6);
  if (!v22)
  {
    v23 = *(archive + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0350](v23);
    *(archive + 6) = v22;
  }

  v22[2].i32[0] |= 3u;
  v22[3] = vcvt_f32_f64(self->_effectiveSize);
}

- (void)invalidate
{
  v5 = objc_msgSend_layout(self, a2, v2, v3);

  if (v5)
  {
    v9 = objc_msgSend_layout(self, v6, v7, v8);
    objc_msgSend_invalidate(v9, v10, v11, v12);
  }

  objc_msgSend_setIsValid_(self, v6, 0, v8);
}

- (NSString)description
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3);
  objc_msgSend_cacheHintID(self, v6, v7, v8);
  v9 = NSStringFromTSUCellCoord();
  objc_msgSend_appendFormat_(v5, v10, @"ID: %@ ", v11, v9);

  if ((objc_msgSend_cellRange(self, v12, v13, v14) & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v17 = @"#REF!:#REF!";
    objc_msgSend_appendFormat_(v5, v15, @"Range: %@ ", v16, @"#REF!:#REF!");
  }

  else
  {
    v17 = @"#REF!:#REF!";
    if (v15 >> 32 && v15)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = NSStringFromTSUCellCoord();
      v20 = NSStringFromTSUCellCoord();
      v17 = objc_msgSend_stringWithFormat_(v18, v21, @"%@:%@", v22, v19, v20);
    }

    objc_msgSend_appendFormat_(v5, v15, @"Range: %@ ", v16, v17);
  }

  if (objc_msgSend_horizontal(self, v23, v24, v25))
  {
    objc_msgSend_appendString_(v5, v26, @"H", v27);
  }

  else
  {
    objc_msgSend_appendString_(v5, v26, @"V", v27);
  }

  return v5;
}

- (TSUCellRect)cellRange
{
  size = self->_cellRange.size;
  origin = self->_cellRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)effectiveSize
{
  width = self->_effectiveSize.width;
  height = self->_effectiveSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSTLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

@end