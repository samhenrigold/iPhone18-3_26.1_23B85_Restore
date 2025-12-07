@interface TSCEValueGrid
- (BOOL)hasValueAtColumn:(unsigned int)column row:(unsigned int)row;
- (BOOL)hasValueAtCoord:(const TSCEGridCoord *)coord;
- (BOOL)isEqual:(id)equal;
- (TSCEGridCoord)topLeftCoord;
- (TSCEGridDimensions)dimensions;
- (TSCEValueGrid)init;
- (TSCEValueGrid)initWithColumnRange:(_NSRange)range rowRange:(_NSRange)rowRange;
- (TSCEValueGrid)initWithMatrix:(id)matrix;
- (TSCEValueGrid)initWithValueVector:(const void *)vector;
- (TSCEValueGrid)initWithValueVector:(const void *)vector dimensions:(const TSCEGridDimensions *)dimensions;
- (TSUIndexSet)populatedColumns;
- (TSUIndexSet)populatedRows;
- (id).cxx_construct;
- (id)allWarnings;
- (id)asMatrixWithAccessContext:(TSCEGridAccessContext *)context outError:(id *)error;
- (id)compressToPopulatedRowsAndColumns;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstValue;
- (id)flattenedGrid:(TSCEGridAccessContext *)grid format:(const TSCEFormat *)format;
- (id)intersectionWithCellRect:(TSUCellRect)rect;
- (id)intersectionWithEvalContext:(id)context rangeContext:(unsigned __int8)rangeContext;
- (id)populatedSliceByIndex:(unint64_t)index byRow:(BOOL)row;
- (id)subGridAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height;
- (id)valueAt1DIndex:(unint64_t)index;
- (id)valueAtColumn:(unsigned int)column row:(unsigned int)row;
- (id)valueAtCoord:(const TSCEGridCoord *)coord;
- (unint64_t)area;
- (unsigned)numberOfColumns;
- (unsigned)numberOfPopulatedColumns;
- (unsigned)numberOfPopulatedRows;
- (unsigned)numberOfRows;
- (vector<TSCEValue)allValues;
- (void)clearPopulatedCache;
- (void)clearValueAtColumn:(unsigned int)column row:(unsigned int)row;
- (void)clearValueAtCoord:(const TSCEGridCoord *)coord;
- (void)compressToZeroBased;
- (void)dealloc;
- (void)deepResolveInPlace:(id)place;
- (void)enumerateValuesForColumn:(unsigned int)column usingBlock:(id)block;
- (void)enumerateValuesForRow:(unsigned int)row usingBlock:(id)block;
- (void)enumerateValuesUsingBlock:(id)block;
- (void)padUnsetWithValue:(id)value forDimensions:(const TSCEGridDimensions *)dimensions;
- (void)rearrangeColumnsWithMapping:(id)mapping;
- (void)rearrangeRowsWithMapping:(id)mapping;
- (void)setEmptyValueAtCoord:(const TSCEGridCoord *)coord;
- (void)setValue:(id)value atCoord:(const TSCEGridCoord *)coord;
- (void)swapColumnAtIndex:(unsigned int)index withColumnAtIndex:(unsigned int)atIndex;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
- (void)swapValueAtCoord:(const TSCEGridCoord *)coord withCoord:(const TSCEGridCoord *)withCoord;
@end

@implementation TSCEValueGrid

- (TSCEValueGrid)init
{
  v9.receiver = self;
  v9.super_class = TSCEValueGrid;
  v2 = [(TSCEValueGrid *)&v9 init];
  if (v2)
  {
    v3 = [TSCEValueGridIndexer alloc];
    v8 = 0x8000000080000000;
    v5 = objc_msgSend_initWithTopLeft_dimensions_(v3, v4, &v8, 0);
    indexer = v2->_indexer;
    v2->_indexer = v5;
  }

  return v2;
}

- (TSCEValueGrid)initWithMatrix:(id)matrix
{
  matrixCopy = matrix;
  v31.receiver = self;
  v31.super_class = TSCEValueGrid;
  v5 = [(TSCEValueGrid *)&v31 init];
  if (v5)
  {
    v6 = [TSCEValueGridIndexer alloc];
    v28[0] = 0;
    v10 = objc_msgSend_dimensions(matrixCopy, v7, v8, v9);
    v12 = objc_msgSend_initWithTopLeft_dimensions_(v6, v11, v28, v10);
    indexer = v5->_indexer;
    v5->_indexer = v12;

    v17 = objc_msgSend_dimensions(matrixCopy, v14, v15, v16);
    v30 = 0;
    sub_22130B75C(&v5->_valueForIndex.__begin_, (HIDWORD(v17) * v17), &v30);

    v20 = v5->_indexer;
    if (v20)
    {
      v20 = v20->_dimensions;
    }

    if (HIDWORD(v20) * v20)
    {
      v29 = 0;
      do
      {
        v28[0] = objc_msgSend_valueAtCoord_(matrixCopy, v18, &v29, v19);
        v28[1] = v21;
        v23 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v21, v28, v22);
        objc_msgSend_setValue_atCoord_(v5, v24, v23, &v29);
        v25 = v5->_indexer;
        if (v25)
        {
          v25 = *(*&v25 + 16);
        }

        v27 = v25;
        v29 = TSCEGridDimensions::nextCoordRowMajorOrder(&v27, &v29);
      }

      while (v29.column != 0x7FFFFFFF && v29.row != 0x7FFFFFFF);
    }
  }

  return v5;
}

- (TSCEValueGrid)initWithColumnRange:(_NSRange)range rowRange:(_NSRange)rowRange
{
  length = rowRange.length;
  location = rowRange.location;
  v6 = range.length;
  v7 = range.location;
  v27.receiver = self;
  v27.super_class = TSCEValueGrid;
  v10 = [(TSCEValueGrid *)&v27 init];
  if (v10)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCEValueGrid initWithColumnRange:rowRange:]", v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 164, 0, "Can't set an extent with invalid ranges");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    v26[0] = v7;
    v26[1] = location;
    v20 = [TSCEValueGridIndexer alloc];
    v22 = objc_msgSend_initWithTopLeft_dimensions_(v20, v21, v26, v6 | (length << 32));
    indexer = v10->_indexer;
    v10->_indexer = v22;

    v25 = 0;
    sub_22130B75C(&v10->_valueForIndex.__begin_, length * v6, &v25);
  }

  return v10;
}

- (TSCEValueGrid)initWithValueVector:(const void *)vector
{
  v4[0] = (*(vector + 1) - *vector) >> 3;
  v4[1] = 1;
  return objc_msgSend_initWithValueVector_dimensions_(self, a2, vector, v4);
}

- (TSCEValueGrid)initWithValueVector:(const void *)vector dimensions:(const TSCEGridDimensions *)dimensions
{
  v6 = objc_msgSend_init(self, a2, vector, dimensions);
  v7 = v6;
  if (v6)
  {
    if (dimensions->height * dimensions->width < ((*(vector + 1) - *vector) >> 3))
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Too many values for the provided dimensions!", "[TSCEValueGrid initWithValueVector:dimensions:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", 181);
      v20 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSCEValueGrid initWithValueVector:dimensions:]", v22);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v23, v26, 181, 1, "Too many values for the provided dimensions!");

      TSUCrashBreakpoint();
      abort();
    }

    v8 = *(v6 + 48);
    if (v8)
    {
      *(v8 + 8) = 0;
      v9 = *(v6 + 48);
      if (v9)
      {
        v9[2] = *dimensions;
      }
    }

    v10 = dimensions->height * dimensions->width;
    v29 = 0;
    sub_22130B75C((v6 + 56), v10, &v29);

    v14 = *vector;
    v13 = *(vector + 1);
    height = dimensions->height;
    if (height * dimensions->width == (v13 - *vector) >> 3)
    {
      v28.column = dimensions->width - 1;
      v28.row = height - 1;
      sub_2216AEB78(v7, &v28, v11, v12);
      v16 = v7;
      sub_2216AF054(v16, vector, dimensions);
    }

    else
    {
      v28 = 0;
      while (v14 != v13)
      {
        v18 = *v14;
        objc_msgSend_setValue_atCoord_(v7, v19, v18, &v28);
        v28 = TSCEGridDimensions::nextCoordRowMajorOrder(dimensions, &v28);

        ++v14;
      }
    }
  }

  return v7;
}

- (void)clearPopulatedCache
{
  populatedColumns = self->_populatedColumns;
  if (populatedColumns)
  {
    TSUIndexSet::~TSUIndexSet(populatedColumns);
    MEMORY[0x223DA1450]();
  }

  self->_populatedColumns = 0;
  populatedRows = self->_populatedRows;
  if (populatedRows)
  {
    TSUIndexSet::~TSUIndexSet(populatedRows);
    MEMORY[0x223DA1450]();
  }

  self->_populatedRows = 0;
}

- (void)dealloc
{
  objc_msgSend_clearPopulatedCache(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = TSCEValueGrid;
  [(TSCEValueGrid *)&v5 dealloc];
}

- (unsigned)numberOfPopulatedColumns
{
  objc_msgSend_populatedColumns(self, a2, v2, v3);
  v4 = TSUIndexSet::count(&v6);
  TSUIndexSet::~TSUIndexSet(&v6);
  return v4;
}

- (unsigned)numberOfPopulatedRows
{
  objc_msgSend_populatedRows(self, a2, v2, v3);
  v4 = TSUIndexSet::count(&v6);
  TSUIndexSet::~TSUIndexSet(&v6);
  return v4;
}

- (TSUIndexSet)populatedColumns
{
  if (!self->_populatedColumns)
  {
    operator new();
  }

  *retstr |= 3u;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  retstr->_singleRange = vnegq_f64(v3);
  retstr->_multipleRanges = 0;

  return TSUIndexSet::operator=();
}

- (TSUIndexSet)populatedRows
{
  if (!self->_populatedRows)
  {
    operator new();
  }

  *retstr |= 3u;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  retstr->_singleRange = vnegq_f64(v3);
  retstr->_multipleRanges = 0;

  return TSUIndexSet::operator=();
}

- (BOOL)hasValueAtColumn:(unsigned int)column row:(unsigned int)row
{
  v5[0] = column;
  v5[1] = row;
  return objc_msgSend_hasValueAtCoord_(self, a2, v5, *&row);
}

- (void)clearValueAtColumn:(unsigned int)column row:(unsigned int)row
{
  v4[0] = column;
  v4[1] = row;
  objc_msgSend_clearValueAtCoord_(self, a2, v4, *&row);
}

- (BOOL)hasValueAtCoord:(const TSCEGridCoord *)coord
{
  column = coord->column;
  if (column == 0x7FFFFFFF)
  {
    row = coord->row;
    p_coords = &self->_coords;
    column = 0;
    v6 = 999999;
    v7 = row;
    return sub_2215C3704(p_coords, column, row, v6, v7, 0) != 0;
  }

  v8 = coord->row;
  p_coords = &self->_coords;
  if (v8 == 0x7FFFFFFF)
  {
    row = 0;
    v6 = column;
    v7 = 999999;
    return sub_2215C3704(p_coords, column, row, v6, v7, 0) != 0;
  }

  return sub_2215C3528(p_coords, column, v8);
}

- (void)clearValueAtCoord:(const TSCEGridCoord *)coord
{
  column = coord->column;
  row = coord->row;
  v8 = column == 0x7FFFFFFF || row == 0x7FFFFFFF;
  if (!v8 || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], column, "[TSCEValueGrid clearValueAtCoord:]", v3), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v12), v13 = objc_claimAutoreleasedReturnValue(), sub_2211786FC(coord, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v18, v10, v13, 286, 0, "Can't clear value with a spanning coordinate: %@", v17), v17, v13, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21), column = coord->column, column != 0x7FFFFFFF) && (row = coord->row, row != 0x7FFFFFFF))
  {
    sub_2215C3280(&self->_coords, column, row);
    indexer = self->_indexer;
    if (indexer)
    {
      v23 = vsub_s32(*coord, indexer->_topLeft);
      indexer = (v23.i32[0] + v23.i32[1] * indexer->_dimensions.width);
    }

    begin = self->_valueForIndex.__begin_;
    v25 = begin[indexer];
    begin[indexer] = 0;

    objc_msgSend_clearPopulatedCache(self, v26, v27, v28);
  }
}

- (id)valueAtColumn:(unsigned int)column row:(unsigned int)row
{
  v6[0] = column;
  v6[1] = row;
  v4 = objc_msgSend_valueAtCoord_(self, a2, v6, *&row);

  return v4;
}

- (id)valueAtCoord:(const TSCEGridCoord *)coord
{
  column = coord->column;
  row = coord->row;
  if (column == 0x7FFFFFFF || row == 0x7FFFFFFF)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], column, "[TSCEValueGrid valueAtCoord:]", v3);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v12);
    v17 = sub_2211786FC(coord, v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v18, v10, v13, 303, 0, "Can't read value with a spanning coordinate: %@", v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    LODWORD(column) = coord->column;
    row = coord->row;
  }

  if (sub_2215C3528(&self->_coords._tiles.__begin_, column, row))
  {
    sub_22170B04C(self, coord, &v28, v25, v24);
    v26 = v28;
  }

  else
  {
    v26 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24);
  }

  return v26;
}

- (id)valueAt1DIndex:(unint64_t)index
{
  v6 = objc_msgSend_area(self, a2, index, v3);
  if (!v6)
  {
    v24 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEValueGrid valueAt1DIndex:]", v8);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v27, v15, v18, 330, 0, "Can't use valueAt1DIndex: with no dimensions set");
    goto LABEL_6;
  }

  v9 = v6;
  if (v6 <= index)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEValueGrid valueAt1DIndex:]", v8);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 320, 0, "Index %lu exceeds area: %lu", index, v9);
LABEL_6:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
    v10 = 0;
    goto LABEL_7;
  }

  v10 = self->_valueForIndex.__begin_[index];
  if (!v10)
  {
    v10 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v11, v12, v13);
  }

LABEL_7:

  return v10;
}

- (id)firstValue
{
  if (sub_2215C25E8(&self->_coords) || (v8 = 0, (sub_2215C3590(&self->_coords, &v8 + 4, &v8) & 1) == 0))
  {
    v6 = objc_msgSend_nilValue(TSCENilValue, v3, v4, v5);
  }

  else
  {
    v6 = objc_msgSend_valueAtColumn_row_(self, v3, HIDWORD(v8), v8);
  }

  return v6;
}

- (id)intersectionWithEvalContext:(id)context rangeContext:(unsigned __int8)rangeContext
{
  v5 = objc_msgSend_containingCell(context, a2, context, rangeContext);
  v6 = *v5;
  v7 = *(v5 + 2);
  v11 = objc_msgSend_dimensions(self, v8, v9, v10);
  if (v11 == 1 && v6 < HIDWORD(v11))
  {
    objc_msgSend_valueAtColumn_row_(self, v12, 0, v6);
    v15 = LABEL_4:;
    goto LABEL_9;
  }

  if (HIDWORD(v11) == 1 && v11 > v7)
  {
    objc_msgSend_valueAtColumn_row_(self, v12, v7, 0);
    goto LABEL_4;
  }

  v15 = objc_msgSend_firstValue(self, v12, v13, v14);
LABEL_9:

  return v15;
}

- (vector<TSCEValue)allValues
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4812000000;
  v11 = sub_2216AFD08;
  v12 = sub_2216AFD2C;
  v13 = &unk_22188E88F;
  memset(v14, 0, sizeof(v14));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2216AFD58;
  v7[3] = &unk_2784688F8;
  v7[4] = &v8;
  objc_msgSend_enumerateValuesUsingBlock_(self, a3, v7, v3);
  v5 = v9;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->__begin_ = 0;
  sub_2213F5020(retstr, v5[6], v5[7], (v5[7] - v5[6]) >> 3);
  _Block_object_dispose(&v8, 8);
  v15 = v14;
  sub_22107C2C0(&v15);
  return result;
}

- (id)allWarnings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2216AFEC0;
  v10 = sub_2216AFED0;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2216AFED8;
  v5[3] = &unk_2784688F8;
  v5[4] = &v6;
  objc_msgSend_enumerateValuesUsingBlock_(self, a2, v5, v2);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setValue:(id)value atCoord:(const TSCEGridCoord *)coord
{
  column = coord->column;
  row = coord->row;
  p_row = &coord->row;
  v7 = row;
  if (column == 0x7FFFFFFF || v7 == 0x7FFFFFFF)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGrid setValue:atCoord:]", p_row);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v13);
    v18 = sub_2211786FC(coord, v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v19, v11, v14, 547, 0, "Can't set a value at a spanning coordinate: %@", v18);

    v23 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v23, v20, v21, v22);
  }

  else
  {
    sub_22170B094(self, coord, value, p_row);
  }
}

- (void)padUnsetWithValue:(id)value forDimensions:(const TSCEGridDimensions *)dimensions
{
  valueCopy = value;
  height = dimensions->height;
  if (height * dimensions->width)
  {
    v8 = dimensions->width - 1;
    v9 = height - 1;
    v19 = v8 | (v9 << 32);
    if ((sub_22170AC80(self->_indexer, &v19) & 1) == 0)
    {
      sub_2216AEB78(self, &v19, v11, v12);
      v8 = dimensions->width - 1;
      v9 = dimensions->height - 1;
      v19 = v8 | (v9 << 32);
    }

    v13 = 0;
    do
    {
      v14 = v8;
      do
      {
        v17 = v14;
        v18 = v13;
        if (objc_msgSend_hasValueAtCoord_(self, v10, &v17, v12))
        {
          break;
        }

        objc_msgSend_setValue_atCoord_(self, v10, valueCopy, &v17);
        --v14;
      }

      while (v14 != -1);
      ++v13;
    }

    while (v13 <= v9);
    v15 = 0;
    do
    {
      v16 = v9;
      do
      {
        v17 = v15;
        v18 = v16;
        if (objc_msgSend_hasValueAtCoord_(self, v10, &v17, v12))
        {
          break;
        }

        objc_msgSend_setValue_atCoord_(self, v10, valueCopy, &v17);
        --v16;
      }

      while (v16 != -1);
      ++v15;
    }

    while (v15 <= v8);
  }
}

- (void)setEmptyValueAtCoord:(const TSCEGridCoord *)coord
{
  if (coord->column == 0x7FFFFFFF || (p_row = &coord->row, coord->row == 0x7FFFFFFF))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGrid setEmptyValueAtCoord:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v9);
    v14 = sub_2211786FC(coord, v11, v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v7, v10, 616, 0, "Can't set a value at a spanning coordinate: %@", v14);

    v19 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v19, v16, v17, v18);
  }

  else
  {
    sub_22170B17C(self, coord, p_row, v3);
  }
}

- (BOOL)isEqual:(id)equal
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGrid isEqual:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 626, 0, "-isEqual: not implemented for TSCEValueGrid");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (objc_msgSend_numberOfColumns(self, a2, zone, v3) || objc_msgSend_numberOfRows(self, v5, v6, v7))
  {
    v8 = objc_msgSend_topLeftCoord(self, v5, v6, v7);
    v9 = v8;
    v10 = HIDWORD(v8);
    v11 = [TSCEValueGrid alloc];
    v15 = objc_msgSend_numberOfColumns(self, v12, v13, v14);
    v19 = objc_msgSend_numberOfRows(self, v16, v17, v18);
    v21 = objc_msgSend_initWithColumnRange_rowRange_(v11, v20, v9, v15, v10, v19);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2216B0514;
    v26[3] = &unk_278468920;
    v22 = v21;
    v27 = v22;
    objc_msgSend_enumerateValuesUsingBlock_(self, v23, v26, v24);

    return v22;
  }

  else
  {

    return objc_opt_new();
  }
}

- (id)subGridAtGridCoord:(const TSCEGridCoord *)coord width:(int)width height:(int)height
{
  v72.width = width;
  v72.height = height;
  v9 = [TSCEValueGrid alloc];
  v11 = objc_msgSend_initWithColumnRange_rowRange_(v9, v10, 0, width, 0, height);
  v68 = v11;
  coordCopy = coord;
  LODWORD(coord) = coord->row;
  v15 = objc_msgSend_topLeftCoord(self, v12, v13, v14) >> 32;
  v22 = 0x277D81000uLL;
  if (coord + height > ((objc_msgSend_dimensions(self, v16, v17, v18) >> 32) + v15))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEValueGrid subGridAtGridCoord:width:height:]", v21);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 652, 0, "can't access beyond the end of a vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  column = coordCopy->column;
  v33 = objc_msgSend_topLeftCoord(self, v19, v20, v21);
  if (column + width > objc_msgSend_dimensions(self, v34, v35, v36) + v33)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSCEValueGrid subGridAtGridCoord:width:height:]", v38);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 653, 0, "can't access beyond the end of a vector");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
  }

  v48 = width + coordCopy->column - 1;
  v49 = height + coordCopy->row - 1;
  v50 = *coordCopy;
  v70 = 0;
  v71 = v50;
  do
  {
    v51 = objc_msgSend_valueAtCoord_(self, v37, &v71, v38);
    objc_msgSend_setValue_atCoord_(v11, v52, v51, &v70);
    v53 = TSCEGridDimensions::nextCoordRowMajorOrder(&v72, &v70);
    v70 = v53;
    if (v53 != 0x7FFFFFFF && (v53 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000)
    {
      if (v71.column >= v48)
      {
        if (v71.row >= v49)
        {
          v56 = *(v22 + 336);
          v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSCEValueGrid subGridAtGridCoord:width:height:]", v55);
          v58 = v22;
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v60);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 675, 0, "Exceeded rowLimit: %d", v49);

          v22 = v58;
          v63 = *(v58 + 336);
          v11 = v68;
          objc_msgSend_logBacktraceThrottled(v63, v64, v65, v66);
        }

        else
        {
          v71.column = coordCopy->column;
          ++v71.row;
        }
      }

      else
      {
        ++v71.column;
      }
    }
  }

  while (v70.column != 0x7FFFFFFF && v70.row != 0x7FFFFFFF);

  return v11;
}

- (id)populatedSliceByIndex:(unint64_t)index byRow:(BOOL)row
{
  if (row)
  {
    objc_msgSend_populatedRows(self, a2, index, row);
    TSUIndexSet::nthIndex(&v27);
    TSUIndexSet::~TSUIndexSet(&v27);
    objc_msgSend_populatedColumns(self, v5, v6, v7);
    v8 = TSUIndexSet::count(&v27);
    TSUIndexSet::~TSUIndexSet(&v27);
    v9 = [TSCEValueGrid alloc];
    v11 = objc_msgSend_initWithColumnRange_rowRange_(v9, v10, 0, v8, 0, 1);
    *&v27 = 0;
    v27._singleRange._begin = &v27;
    v27._singleRange._end = 0x3812000000;
    v27._multipleRanges = sub_2216B0BEC;
    v28 = nullsub_87;
    v29 = &unk_22188E88F;
    v30 = 0;
    objc_msgSend_populatedColumns(self, v12, v13, v14);
  }

  else
  {
    objc_msgSend_populatedColumns(self, a2, index, row);
    TSUIndexSet::nthIndex(&v27);
    TSUIndexSet::~TSUIndexSet(&v27);
    objc_msgSend_populatedRows(self, v16, v17, v18);
    v19 = TSUIndexSet::count(&v27);
    TSUIndexSet::~TSUIndexSet(&v27);
    v20 = [TSCEValueGrid alloc];
    v11 = objc_msgSend_initWithColumnRange_rowRange_(v20, v21, 0, 1, 0, v19);
    *&v27 = 0;
    v27._singleRange._begin = &v27;
    v27._singleRange._end = 0x3812000000;
    v27._multipleRanges = sub_2216B0BEC;
    v28 = nullsub_87;
    v29 = &unk_22188E88F;
    v30 = 0;
    objc_msgSend_populatedRows(self, v22, v23, v24);
  }

  v15 = v11;
  TSUIndexSet::enumerateIndexesUsingBlock();
  TSUIndexSet::~TSUIndexSet(&v26);

  _Block_object_dispose(&v27, 8);

  return v15;
}

- (id)intersectionWithCellRect:(TSUCellRect)rect
{
  rectCopy = rect;
  selfCopy = self;
  v7 = objc_msgSend_topLeftCoord(selfCopy, v4, v5, v6);
  v11 = objc_msgSend_topLeftCoord(selfCopy, v8, v9, v10);
  v15 = objc_msgSend_dimensions(selfCopy, v12, v13, v14);
  v19 = objc_msgSend_dimensions(selfCopy, v16, v17, v18);
  *(&v20 + 1) = v7;
  *&v20 = v11;
  v39.origin = ((v20 >> 32) & 0xFFFFFFFFFFFFLL);
  v39.size = (v19 & 0xFFFFFFFF00000000 | v15);
  if (TSUCellRect::intersects(&rectCopy, &v39))
  {
    if ((TSUCellRect::contains(&rectCopy, &v39) & 1) == 0)
    {
      v38 = objc_msgSend_topLeftCoord(selfCopy, v21, v22, v23);
      v24 = TSUCellRect::firstColumn(&rectCopy);
      if (v24 > TSUCellRect::firstColumn(&v39))
      {
        v25 = TSUCellRect::firstColumn(&rectCopy);
        v15 = v15 - v25 + TSUCellRect::firstColumn(&v39);
        LODWORD(v38) = TSUCellRect::firstColumn(&rectCopy);
      }

      v26 = TSUCellRect::lastColumn(&v39);
      if (v26 > TSUCellRect::lastColumn(&rectCopy))
      {
        v27 = TSUCellRect::lastColumn(&v39);
        v15 = v15 - v27 + TSUCellRect::lastColumn(&rectCopy);
      }

      v28 = TSUCellRect::firstRow(&rectCopy);
      v29 = HIDWORD(v19);
      if (v28 > TSUCellRect::firstRow(&v39))
      {
        v30 = TSUCellRect::firstRow(&rectCopy);
        v29 = v29 - v30 + TSUCellRect::firstRow(&v39);
        HIDWORD(v38) = TSUCellRect::firstRow(&rectCopy);
      }

      v31 = TSUCellRect::lastRow(&v39);
      if (v31 > TSUCellRect::lastRow(&rectCopy))
      {
        v33 = TSUCellRect::lastRow(&v39);
        v29 = v29 - v33 + TSUCellRect::lastRow(&rectCopy);
      }

      v34 = objc_msgSend_subGridAtGridCoord_width_height_(selfCopy, v32, &v38, v15, v29);

      selfCopy = v34;
    }

    v35 = selfCopy;
    selfCopy = v35;
  }

  else
  {
    v35 = objc_opt_new();
  }

  v36 = v35;

  return v36;
}

- (id)compressToPopulatedRowsAndColumns
{
  objc_msgSend_populatedRows(self, a2, v2, v3);
  objc_msgSend_populatedColumns(self, v5, v6, v7);
  v11 = objc_msgSend_numberOfRows(self, v8, v9, v10);
  if (TSUIndexSet::count(&v43) == v11 && (v15 = objc_msgSend_numberOfColumns(self, v12, v13, v14), TSUIndexSet::count(&v42) == v15))
  {
    objc_msgSend_compressToZeroBased(self, v16, v17, v18);
    selfCopy = self;
  }

  else
  {
    v20 = [TSCEValueGrid alloc];
    v21 = TSUIndexSet::count(&v42);
    v22 = TSUIndexSet::count(&v43);
    v24 = objc_msgSend_initWithColumnRange_rowRange_(v20, v23, 0, v21, 0, v22);
    selfCopy = v24;
    indexer = self->_indexer;
    if (indexer)
    {
      indexer = indexer->_topLeft;
    }

    v41 = indexer;
    v39 = 0;
    v40 = 0;
    v38 = objc_msgSend_dimensions(v24, v25, v26, v27);
    v29 = 0;
    do
    {
      v37 = v29;
      sub_2211786BC(&v37, &v41);
      if (TSUIndexSet::containsIndex(&v43) && TSUIndexSet::containsIndex(&v42))
      {
        v32 = objc_msgSend_valueAtCoord_(self, v30, &v37, v31);
        objc_msgSend_setValue_atCoord_(selfCopy, v33, v32, &v40);
        v40 = TSCEGridDimensions::nextCoordRowMajorOrder(&v38, &v40);
      }

      v34 = self->_indexer;
      if (v34)
      {
        v34 = v34->_dimensions;
      }

      v36 = v34;
      v29 = TSCEGridDimensions::nextCoordRowMajorOrder(&v36, &v39);
      v39 = v29;
    }

    while (v29 != 0x7FFFFFFF && (v29 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v40.column != 0x7FFFFFFF && v40.row != 0x7FFFFFFF);
  }

  TSUIndexSet::~TSUIndexSet(&v42);
  TSUIndexSet::~TSUIndexSet(&v43);

  return selfCopy;
}

- (void)enumerateValuesUsingBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  sub_2215C2BFC(v9, &self->_coords);
  do
  {
    if (!sub_2215C2C08(v9, &v12, &v11))
    {
      break;
    }

    v8[0] = v12;
    v8[1] = v11;
    v7 = objc_msgSend_valueAtCoord_(self, v5, v8, v6);
    blockCopy[2](blockCopy, v8, v7, &v10);
  }

  while ((v10 & 1) == 0);
}

- (void)enumerateValuesForRow:(unsigned int)row usingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  indexer = self->_indexer;
  if (indexer)
  {
    topLeft = indexer->_topLeft;
    if (topLeft.row <= row && indexer->_dimensions.height + topLeft.row > row)
    {
      do
      {
        v11 = self->_indexer;
        if (v11)
        {
          LODWORD(v11) = v11->_dimensions.width + v11->_topLeft.column;
        }

        if (topLeft.column >= v11)
        {
          break;
        }

        v13[0] = topLeft.column;
        v13[1] = row;
        if (objc_msgSend_hasValueAtCoord_(self, v6, v13, v7))
        {
          v12 = objc_msgSend_valueAtCoord_(self, v6, v13, v7);
          blockCopy[2](blockCopy, v13, v12, &v14);
        }

        ++topLeft.column;
      }

      while ((v14 & 1) == 0);
    }
  }
}

- (void)enumerateValuesForColumn:(unsigned int)column usingBlock:(id)block
{
  blockCopy = block;
  indexer = self->_indexer;
  if (indexer)
  {
    topLeft = indexer->_topLeft;
    if (topLeft.column <= column && indexer->_dimensions.width + topLeft.column > column)
    {
      v15 = 0;
      v11 = HIDWORD(*&topLeft);
      do
      {
        v12 = self->_indexer;
        if (v12)
        {
          LODWORD(v12) = v12->_dimensions.height + v12->_topLeft.row;
        }

        if (v11 >= v12)
        {
          break;
        }

        v14[0] = column;
        v14[1] = v11;
        if (objc_msgSend_hasValueAtCoord_(self, v6, v14, v7))
        {
          v13 = objc_msgSend_valueAtCoord_(self, v6, v14, v7);
          blockCopy[2](blockCopy, v14, v13, &v15);
        }

        LODWORD(v11) = v11 + 1;
      }

      while ((v15 & 1) == 0);
    }
  }
}

- (void)swapValueAtCoord:(const TSCEGridCoord *)coord withCoord:(const TSCEGridCoord *)withCoord
{
  if (*coord == *withCoord)
  {
    return;
  }

  hasValueAtCoord = objc_msgSend_hasValueAtCoord_(self, a2, coord, withCoord);
  v10 = objc_msgSend_hasValueAtCoord_(self, v8, withCoord, v9);
  v13 = v10;
  if (v10)
  {
    v18 = objc_msgSend_valueAtCoord_(self, v11, withCoord, v12);
    if ((hasValueAtCoord & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = objc_msgSend_valueAtCoord_(self, v11, coord, v12);
    objc_msgSend_setValue_atCoord_(self, v17, v16, withCoord);

    if (v13)
    {
      goto LABEL_5;
    }

LABEL_8:
    objc_msgSend_clearValueAtCoord_(self, v14, coord, v15);
    goto LABEL_9;
  }

  v18 = 0;
  if (hasValueAtCoord)
  {
    goto LABEL_7;
  }

LABEL_4:
  objc_msgSend_clearValueAtCoord_(self, v11, withCoord, v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  objc_msgSend_setValue_atCoord_(self, v14, v18, coord);
LABEL_9:
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  if (index != atIndex)
  {
    v12 = v4;
    v13 = v5;
    v11[1] = index;
    v10[1] = atIndex;
    indexer = self->_indexer;
    if (indexer)
    {
      v8 = indexer->_dimensions.width - 1;
    }

    else
    {
      v8 = -1;
    }

    v9 = 0;
    do
    {
      v11[0] = v9;
      v10[0] = v9;
      objc_msgSend_swapValueAtCoord_withCoord_(self, a2, v11, v10);
      ++v9;
    }

    while (v9 <= v8);
  }
}

- (void)swapColumnAtIndex:(unsigned int)index withColumnAtIndex:(unsigned int)atIndex
{
  if (index != atIndex)
  {
    v12 = v4;
    v13 = v5;
    v11[0] = index;
    v10[0] = atIndex;
    indexer = self->_indexer;
    if (indexer)
    {
      v8 = indexer->_dimensions.height - 1;
    }

    else
    {
      v8 = -1;
    }

    v9 = 0;
    do
    {
      v11[1] = v9;
      v10[1] = v9;
      objc_msgSend_swapValueAtCoord_withCoord_(self, a2, v11, v10);
      ++v9;
    }

    while (v9 <= v8);
  }
}

- (void)rearrangeRowsWithMapping:(id)mapping
{
  mappingCopy = mapping;
  v8 = objc_msgSend_mapping(mappingCopy, v5, v6, v7);
  v12 = objc_msgSend_mappingSize(mappingCopy, v9, v10, v11);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_2214AEE5C(&__p, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 2);
  started = objc_msgSend_startIndex(mappingCopy, v13, v14, v15);
  if (v12)
  {
    v18 = started;
    for (i = 0; i != v12; ++i)
    {
      while (1)
      {
        v20 = __p;
        v21 = *(__p + i);
        if (i == v21)
        {
          break;
        }

        *(__p + i) = *(__p + v21);
        v20[v21] = v21;
        objc_msgSend_swapRowAtIndex_withRowAtIndex_(self, v17, (v18 + i), (v21 + v18));
      }
    }

    goto LABEL_8;
  }

  v20 = __p;
  if (__p)
  {
LABEL_8:
    v23 = v20;
    operator delete(v20);
  }
}

- (void)rearrangeColumnsWithMapping:(id)mapping
{
  mappingCopy = mapping;
  v8 = objc_msgSend_mapping(mappingCopy, v5, v6, v7);
  v12 = objc_msgSend_mappingSize(mappingCopy, v9, v10, v11);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_2214AEE5C(&__p, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 2);
  started = objc_msgSend_startIndex(mappingCopy, v13, v14, v15);
  if (v12)
  {
    v18 = started;
    for (i = 0; i != v12; ++i)
    {
      while (1)
      {
        v20 = __p;
        v21 = *(__p + i);
        if (i == v21)
        {
          break;
        }

        *(__p + i) = *(__p + v21);
        v20[v21] = v21;
        objc_msgSend_swapColumnAtIndex_withColumnAtIndex_(self, v17, (v18 + i), (v21 + v18));
      }
    }

    goto LABEL_8;
  }

  v20 = __p;
  if (__p)
  {
LABEL_8:
    v23 = v20;
    operator delete(v20);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

- (id)flattenedGrid:(TSCEGridAccessContext *)grid format:(const TSCEFormat *)format
{
  v7 = objc_opt_new();
  var6 = grid->var6;
  grid->var6 = 1;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3812000000;
  v23[3] = sub_2216B0BEC;
  v23[4] = nullsub_87;
  v23[5] = &unk_22188E88F;
  v23[6] = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_2216AFEC0;
  v21[4] = sub_2216AFED0;
  v22 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2216B1B7C;
  v15[3] = &unk_278468998;
  v17 = v21;
  gridCopy = grid;
  formatCopy = format;
  v9 = v7;
  v16 = v9;
  v18 = v23;
  objc_msgSend_enumerateValuesUsingBlock_(self, v10, v15, v11);
  grid->var6 = var6;
  v12 = v16;
  v13 = v9;

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  return v13;
}

- (void)deepResolveInPlace:(id)place
{
  placeCopy = place;
  v32 = 0;
  v33 = objc_msgSend_dimensions(self, v5, v6, v7);
  do
  {
    v10 = objc_msgSend_valueAtCoord_(self, v8, &v32, v9);
    v14 = objc_msgSend_nativeType(v10, v11, v12, v13);
    if (v14 <= 0x11)
    {
      if (((1 << v14) & 0x12042) != 0)
      {
        v17 = objc_msgSend_deepResolveInPlace_(v10, v15, placeCopy, v16);

        v10 = v17;
        objc_msgSend_setValue_atCoord_(self, v18, v17, &v32);
      }

      else if (((1 << v14) & 0x24000) != 0)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSCEValueGrid(AbstractGrid) deepResolveInPlace:]", v16);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 1067, 0, "Does this happen - a grid of unresolved categoryRefs / pivot references - I don't think its possible");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
        v30 = objc_msgSend_deepResolveInPlace_(v10, v28, placeCopy, v29);

        v10 = v30;
        objc_msgSend_setValue_atCoord_(self, v31, v30, &v32);
      }
    }

    v32 = TSCEGridDimensions::nextCoordRowMajorOrder(&v33, &v32);
  }

  while (v32 != 0x7FFFFFFF && HIDWORD(v32) != 0x7FFFFFFF);
}

- (TSCEGridCoord)topLeftCoord
{
  indexer = self->_indexer;
  if (indexer)
  {
    return indexer->_topLeft;
  }

  else
  {
    return 0;
  }
}

- (TSCEGridDimensions)dimensions
{
  indexer = self->_indexer;
  if (indexer)
  {
    return indexer->_dimensions;
  }

  else
  {
    return 0;
  }
}

- (unsigned)numberOfColumns
{
  indexer = self->_indexer;
  if (indexer)
  {
    return indexer->_dimensions.width;
  }

  else
  {
    return sub_2216B20DC();
  }
}

- (unsigned)numberOfRows
{
  indexer = self->_indexer;
  if (indexer)
  {
    return indexer->_dimensions.height;
  }

  else
  {
    return sub_2216B20DC();
  }
}

- (unint64_t)area
{
  indexer = self->_indexer;
  if (indexer)
  {
    indexer = indexer->_dimensions;
  }

  return (HIDWORD(indexer) * indexer);
}

- (void)compressToZeroBased
{
  indexer = self->_indexer;
  if (indexer)
  {
    topLeft = indexer->_topLeft;
    v7 = topLeft.column == 0x7FFFFFFF || (*&topLeft & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000;
    if (!v7 && topLeft != 0)
    {
      v10 = objc_msgSend_topLeftCoord(self, a2, v2, v3);
      sub_2215C2834(&self->_coords, v10, HIDWORD(v10));
      v14 = self->_indexer;
      if (v14)
      {
        v14->_topLeft = 0;
      }

      objc_msgSend_clearPopulatedCache(self, v11, v12, v13);
    }
  }
}

- (id)asMatrixWithAccessContext:(TSCEGridAccessContext *)context outError:(id *)error
{
  v7 = [TSCEDecimalMatrix alloc];
  indexer = self->_indexer;
  if (indexer)
  {
    indexer = indexer->_dimensions;
  }

  v46[0] = indexer;
  v11 = objc_msgSend_initWithDimensions_(v7, v8, v46, v9);
  v48 = 0;
  v14 = context->var0;
  if (v48.column == 0x7FFFFFFF || v48.row == 0x7FFFFFFF)
  {
LABEL_25:
    v41 = v11;
    goto LABEL_29;
  }

  var1 = context->var1;
  var3 = context->var3;
  while (1)
  {
    v18 = objc_msgSend_valueAtCoord_(self, v12, &v48, v13);
    if (objc_msgSend_isError(v18, v19, v20, v21))
    {
      v31 = objc_msgSend_asErrorValue(v18, v22, v23, v24);
      *error = objc_msgSend_error(v31, v42, v43, v44);
      goto LABEL_28;
    }

    if ((objc_msgSend_valueIsEmptyWithContext_(v18, v22, v14, v24) & 1) == 0)
    {
      break;
    }

LABEL_18:
    v39 = self->_indexer;
    if (v39)
    {
      v39 = v39->_dimensions;
    }

    v46[0] = v39;
    v48 = TSCEGridDimensions::nextCoordRowMajorOrder(v46, &v48);

    if (v48.column == 0x7FFFFFFF || v48.row == 0x7FFFFFFF)
    {
      goto LABEL_25;
    }
  }

  v47 = 0;
  v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v25, v14, var1, var3, &v47);
  v27 = v47;
  v31 = v27;
  if (!v27)
  {
LABEL_17:
    v46[0] = objc_msgSend_decimalRepresentation(v26, v28, v29, v30);
    v46[1] = v38;
    objc_msgSend_setValue_atCoord_(v11, v38, v46, &v48);

    goto LABEL_18;
  }

  v32 = objc_msgSend_errorType(v27, v28, v29, v30);
  v36 = v32 == 8 || v32 == 11;
  if (!v36 && v32 != 169)
  {
    v37 = v31;
    *error = v31;
    goto LABEL_17;
  }

  *error = objc_msgSend_matrixMustBeNumbersError(TSCEError, v33, v34, v35);

LABEL_28:
  v41 = 0;
LABEL_29:

  return v41;
}

@end