@interface TSTCoordinateArray
- (BOOL)isEqual:(id)equal;
- (TSTCoordinateArray)initWithCount:(unsigned int)count atOffset:(unsigned int)offset layoutDirectionIsLeftToRight:(BOOL)right;
- (id)description;
- (void)dealloc;
- (void)setTableWidthForRightToLeft:(double)left;
@end

@implementation TSTCoordinateArray

- (TSTCoordinateArray)initWithCount:(unsigned int)count atOffset:(unsigned int)offset layoutDirectionIsLeftToRight:(BOOL)right
{
  v15.receiver = self;
  v15.super_class = TSTCoordinateArray;
  v8 = [(TSTCoordinateArray *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_offset = offset;
    v8->_count = count;
    v8->_coordinates = malloc_type_calloc(8uLL, count + 1, 0x100004000313F17uLL);
    v9->_average = 0.0;
    v10 = objc_alloc(MEMORY[0x277CCAB58]);
    v12 = objc_msgSend_initWithIndexesInRange_(v10, v11, v9->_offset, count);
    visibleIndices = v9->_visibleIndices;
    v9->_visibleIndices = v12;

    v9->_layoutDirectionIsLeftToRight = right;
    v9->_tableWidth = 0.0;
  }

  return v9;
}

- (void)setTableWidthForRightToLeft:(double)left
{
  if (self->_layoutDirectionIsLeftToRight)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCoordinateArray setTableWidthForRightToLeft:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCoordinateArray.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 51, 0, "Setting a table width on a LTR coordinate array has no effect.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  self->_tableWidth = left;
}

- (void)dealloc
{
  coordinates = self->_coordinates;
  if (coordinates)
  {
    free(coordinates);
  }

  v4.receiver = self;
  v4.super_class = TSTCoordinateArray;
  [(TSTCoordinateArray *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5 && self->_layoutDirectionIsLeftToRight == *(v5 + 40) && *&self->_offset == *(v5 + 8) && self->_average == *(v5 + 24))
  {
    v6 = self->_count - 1;
    do
    {
      v7 = v6 + 1 < 1;
      if (v6 + 1 < 1)
      {
        break;
      }

      v8 = self->_coordinates[v6];
      v9 = *(*(v5 + 16) + 8 * v6--);
    }

    while (v8 == v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p offset=%u average=%f", v7, v5, self, self->_offset, *&self->_average);

  if (self->_coordinates)
  {
    objc_msgSend_appendString_(v8, v9, @" coordinates={", v10);
    if (self->_count)
    {
      v13 = 0;
      do
      {
        objc_msgSend_appendFormat_(v8, v11, @"\n  { offset=%u -> coordinate=%f }", v12, v13 + self->_offset, *&self->_coordinates[v13]);
        ++v13;
      }

      while (v13 < self->_count);
    }

    objc_msgSend_appendString_(v8, v11, @"}>", v12);
  }

  else
  {
    objc_msgSend_appendString_(v8, v9, @" coordinates={empty}>", v10);
  }

  return v8;
}

@end