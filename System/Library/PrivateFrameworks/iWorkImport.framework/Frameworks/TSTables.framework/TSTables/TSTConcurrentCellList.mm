@interface TSTConcurrentCellList
+ (id)cellListWithContext:(id)context cellUIDRange:(TSKUIDStructTract *)range repeatCellVectorPattern:(const void *)pattern patternDirection:(int64_t)direction;
- (TSKUIDStructTract)cellUIDRange;
- (TSTConcurrentCellList)initWithContext:(id)context cellUIDRange:(TSKUIDStructTract *)range;
- (TSTConcurrentCellList)initWithContext:(id)context viewCellRect:(TSUViewCellRect)rect;
- (TSTConcurrentCellList)initWithContext:(id)context viewCellRect:(TSUViewCellRect)rect cellUIDRange:(TSKUIDStructTract *)range;
- (TSUViewCellRect)viewCellRect;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getCellAtIndex:(unint64_t)index;
- (id)getCellAtViewCellCoord:(TSUViewCellCoord)coord;
- (id)p_baseColumnIndexes;
- (id)p_baseRowIndexes;
- (unsigned)rowCount;
- (void)addCell:(id)cell atIndex:(unint64_t)index;
- (void)addCell:(id)cell atViewCellCoord:(TSUViewCellCoord)coord;
- (void)enumerateSeriallyByIndexUsingBlock:(id)block;
- (void)enumerateSeriallyByViewCellCoordUsingBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock;
- (void)p_clearDataListIDs;
- (void)p_convertToInverseCellMap;
- (void)p_convertToUuidBasedCellListUsingTableInfo:(id)info pruneCategorizedCells:(BOOL)cells;
- (void)p_enumerateCellsAddedAndRemovedForFormatsUsingBlock:(id)block;
- (void)p_enumerateCellsAddedAndRemovedOfType:(unint64_t)type usingBlock:(id)block;
- (void)p_enumerateCellsAddedOfType:(unint64_t)type usingBlock:(id)block;
- (void)p_enumerateColumnCellCountDiffUsingBlock:(id)block;
- (void)p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:(id)block;
- (void)p_enumerateNewAndOldCellsSeriallyUsingBlock:(id)block;
- (void)p_enumerateRowCellCountDiffUsingBlock:(id)block;
- (void)p_enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block;
- (void)p_gatherRowState:(id)state;
- (void)p_invokeBlock:(id)block;
- (void)p_pruneCellsAtColumn:(unint64_t)column rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize;
- (void)p_pruneToBaseWithBaseMap:(id)map viewMap:(id)viewMap;
- (void)p_setObjectLocale:(id)locale;
- (void)p_setupInterestingCells:(void *)cells interestingCellIndexes:(id)indexes forAdding:(BOOL)adding;
- (void)p_simpleInvokeBlock:(id)block;
- (void)saveToArchiver:(id)archiver;
- (void)setCellUIDRange:(TSKUIDStructTract *)range;
@end

@implementation TSTConcurrentCellList

- (TSTConcurrentCellList)initWithContext:(id)context viewCellRect:(TSUViewCellRect)rect cellUIDRange:(TSKUIDStructTract *)range
{
  rect = rect._rect;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = TSTConcurrentCellList;
  v8 = [(TSTConcurrentCellList *)&v15 initWithContext:contextCopy];
  if (v8)
  {
    if (TSUCellRect::isValid(&rect))
    {
      v8->_uidBased = 0;
      v8->_viewCellRect._rect = rect;
      p_cellUIDRange = &v8->_cellUIDRange;
      begin = v8->_cellUIDRange._colIdList.__begin_;
      if (begin)
      {
        v8->_cellUIDRange._colIdList.__end_ = begin;
        operator delete(begin);
        p_cellUIDRange->_colIdList.__begin_ = 0;
        v8->_cellUIDRange._colIdList.__end_ = 0;
        v8->_cellUIDRange._colIdList.__cap_ = 0;
      }

      p_rowIdList = &v8->_cellUIDRange._rowIdList;
      v11 = v8->_cellUIDRange._rowIdList.__begin_;
      p_cellUIDRange->_colIdList.__begin_ = 0;
      v8->_cellUIDRange._colIdList.__end_ = 0;
      v8->_cellUIDRange._colIdList.__cap_ = 0;
      if (v11)
      {
        v8->_cellUIDRange._rowIdList.__end_ = v11;
        operator delete(v11);
        p_rowIdList->__begin_ = 0;
        v8->_cellUIDRange._rowIdList.__end_ = 0;
        v8->_cellUIDRange._rowIdList.__cap_ = 0;
      }

      p_rowIdList->__begin_ = 0;
      v8->_cellUIDRange._rowIdList.__end_ = 0;
      v8->_cellUIDRange._rowIdList.__cap_ = 0;
      v13 = rect.size.numberOfColumns * rect.size.numberOfRows;
    }

    else
    {
      v8->_uidBased = 1;
      v8->_viewCellRect = xmmword_2217E0544;
      if (&v8->_cellUIDRange != range)
      {
        sub_2210BD068(&v8->_cellUIDRange, range->_colIdList.__begin_, range->_colIdList.__end_, range->_colIdList.__end_ - range->_colIdList.__begin_);
        sub_2210BD068(&v8->_cellUIDRange._rowIdList, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
      }

      v13 = (range->_rowIdList.__end_ - range->_rowIdList.__begin_) * (range->_colIdList.__end_ - range->_colIdList.__begin_);
    }

    sub_2211389A0(&v8->_cells.__begin_, v13);
  }

  return v8;
}

- (TSTConcurrentCellList)initWithContext:(id)context viewCellRect:(TSUViewCellRect)rect
{
  *__p = 0u;
  v8 = 0u;
  *v6 = 0u;
  v4 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(self, a2, context, *&rect._rect.origin, *&rect._rect.size, v6);
  if (__p[1])
  {
    *&v8 = __p[1];
    operator delete(__p[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  return v4;
}

- (TSTConcurrentCellList)initWithContext:(id)context cellUIDRange:(TSKUIDStructTract *)range
{
  contextCopy = context;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_221086EBC(&v10, range->_colIdList.__begin_, range->_colIdList.__end_, range->_colIdList.__end_ - range->_colIdList.__begin_);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_221086EBC(&__p, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
  v8 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(self, v7, contextCopy, 0x7FFF7FFFFFFFLL, 0, &v10);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v8;
}

+ (id)cellListWithContext:(id)context cellUIDRange:(TSKUIDStructTract *)range repeatCellVectorPattern:(const void *)pattern patternDirection:(int64_t)direction
{
  contextCopy = context;
  v9 = [TSTConcurrentCellList alloc];
  v81 = 0;
  v82 = 0;
  v83 = 0;
  sub_221086EBC(&v81, range->_colIdList.__begin_, range->_colIdList.__end_, range->_colIdList.__end_ - range->_colIdList.__begin_);
  __p = 0;
  v85 = 0;
  v86 = 0;
  sub_221086EBC(&__p, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
  v14 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(v9, v10, contextCopy, 0x7FFF7FFFFFFFLL, 0, &v81);
  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  v15 = *pattern;
  v16 = *(pattern + 1);
  v17 = (v16 - *pattern) >> 3;
  if (direction)
  {
    if (v17 != (v14[14] - v14[13]) >> 4)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[TSTConcurrentCellList cellListWithContext:cellUIDRange:repeatCellVectorPattern:patternDirection:]", v13);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 995, 0, "expected a pattern for a column of cells");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
      v15 = *pattern;
      v16 = *(pattern + 1);
    }

    if (v16 != v15)
    {
      v27 = 0;
      v28 = 0;
      v29 = v14[11];
      v76 = v14[10];
      v77 = v29;
      v30 = (v29 - v76) >> 4;
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = (v29 - v76) >> 4;
      }

      v75 = v31;
      v32 = 8 * v30;
      do
      {
        v36 = *(v15 + 8 * v28);
        v37 = v27;
        v38 = v75;
        if (v77 != v76)
        {
          do
          {
            if ((objc_msgSend_hasCellSpec(v36, v33, v34, v35, contextCopy) & 1) != 0 || objc_msgSend_hasConditionalStyle(v36, v39, v40, v41))
            {
              v42 = objc_msgSend_copy(v36, v39, v40, v41);
              v43 = v14[18];
              v44 = *(v43 + v37);
              *(v43 + v37) = v42;
            }

            else
            {
              v45 = v14[18];
              v46 = v36;
              v44 = *(v45 + v37);
              *(v45 + v37) = v46;
            }

            v37 += 8;
            --v38;
          }

          while (v38);
        }

        ++v28;
        v15 = *pattern;
        v27 += v32;
      }

      while (v28 < (*(pattern + 1) - *pattern) >> 3);
    }
  }

  else
  {
    if (v17 != (v14[11] - v14[10]) >> 4)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[TSTConcurrentCellList cellListWithContext:cellUIDRange:repeatCellVectorPattern:patternDirection:]", v13);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v51);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 980, 0, "expected a pattern for a row of cells");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
    }

    v57 = 0;
    for (i = 0; ; ++i)
    {
      objc_msgSend_cellUIDRange(v14, v11, v12, v13, contextCopy);
      v59 = v80;
      if (v79)
      {
        v80 = v79;
        operator delete(v79);
      }

      if (v78)
      {
        operator delete(v78);
      }

      if (i >= (v59 - v79) >> 4)
      {
        break;
      }

      v60 = *pattern;
      if (*(pattern + 1) != *pattern)
      {
        v61 = 0;
        do
        {
          v62 = *(v60 + 8 * v61);
          if ((objc_msgSend_hasCellSpec(v62, v63, v64, v65) & 1) != 0 || objc_msgSend_hasConditionalStyle(v62, v66, v67, v68))
          {
            v69 = objc_msgSend_copy(v62, v66, v67, v68);
            v70 = v14[18] + v57 * ((*(pattern + 1) - *pattern) >> 3);
            v71 = *(v70 + 8 * v61);
            *(v70 + 8 * v61) = v69;
          }

          else
          {
            v72 = v14[18] + v57 * ((*(pattern + 1) - *pattern) >> 3);
            v73 = v62;
            v71 = *(v72 + 8 * v61);
            *(v72 + 8 * v61) = v73;
          }

          ++v61;
          v60 = *pattern;
        }

        while (v61 < (*(pattern + 1) - *pattern) >> 3);
      }

      v57 += 8;
    }
  }

  return v14;
}

- (void)addCell:(id)cell atViewCellCoord:(TSUViewCellCoord)coord
{
  cellCopy = cell;
  if (self->_uidBased)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList addCell:atViewCellCoord:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1016, 0, "can't use cellid interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  viewCellRect = self->_viewCellRect;
  origin = viewCellRect.origin;
  v20 = (coord._coord.row - origin.row) * TSUCellRect::numColumns(&viewCellRect) + (((*&coord & 0xFFFF00000000) - (*&origin & 0xFFFF00000000)) >> 32);
  if (v20 >= (self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) && v20 >= self->_viewCellRect._rect.size.numberOfColumns * self->_viewCellRect._rect.size.numberOfRows)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTConcurrentCellList addCell:atViewCellCoord:]", v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 1018, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  begin = self->_cells.__begin_;
  v31 = begin[v20];
  begin[v20] = cellCopy;
}

- (void)addCell:(id)cell atIndex:(unint64_t)index
{
  cellCopy = cell;
  if (!self->_uidBased)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList addCell:atIndex:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1023, 0, "can only use index interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if ((self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) <= index && self->_viewCellRect._rect.size.numberOfColumns * self->_viewCellRect._rect.size.numberOfRows <= index)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList addCell:atIndex:]", v7);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1024, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  begin = self->_cells.__begin_;
  v28 = begin[index];
  begin[index] = cellCopy;
}

- (id)getCellAtViewCellCoord:(TSUViewCellCoord)coord
{
  if (self->_uidBased)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList getCellAtViewCellCoord:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 1029, 0, "can't use cellid interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  viewCellRect = self->_viewCellRect;
  v15 = *&viewCellRect._rect.origin & 0xFFFF00000000;
  v16 = coord._coord.row - viewCellRect._rect.origin.row;
  v19 = v16 * TSUCellRect::numColumns(&viewCellRect._rect) + (((*&coord & 0xFFFF00000000) - v15) >> 32);
  if (v19 >= (self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) && v19 >= self->_viewCellRect._rect.size.numberOfColumns * self->_viewCellRect._rect.size.numberOfRows)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTConcurrentCellList getCellAtViewCellCoord:]", v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 1031, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  v29 = self->_cells.__begin_[v19];

  return v29;
}

- (id)getCellAtIndex:(unint64_t)index
{
  if (!self->_uidBased)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList getCellAtIndex:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 1036, 0, "can only use index interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  if ((self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) <= index && self->_viewCellRect._rect.size.numberOfColumns * self->_viewCellRect._rect.size.numberOfRows <= index)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList getCellAtIndex:]", v3);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 1037, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v24 = self->_cells.__begin_[index];

  return v24;
}

- (void)enumerateSeriallyByViewCellCoordUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_uidBased)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList enumerateSeriallyByViewCellCoordUsingBlock:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1042, 0, "can't use cellid interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = self->_cells.var0 - self->_cells.__begin_;
  if (v16)
  {
    v17 = 0;
    v18 = v16 >> 3;
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    do
    {
      viewCellRect = self->_viewCellRect;
      origin = viewCellRect.origin;
      v20 = TSUCellRect::numColumns(&viewCellRect);
      blockCopy[2](blockCopy, (*&origin + ((v17 % v20) << 32)) & 0xFFFF00000000 | ((v17 / v20) + origin.row), self->_cells.__begin_[v17]);
      ++v17;
    }

    while (v19 != v17);
  }
}

- (void)enumerateSeriallyByIndexUsingBlock:(id)block
{
  blockCopy = block;
  if (!self->_uidBased)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList enumerateSeriallyByIndexUsingBlock:]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 1049, 0, "can only use index interface with celluid map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  p_cells = &self->_cells;
  v16 = self->_cells.var0 - self->_cells.__begin_;
  if (v16)
  {
    v17 = 0;
    v18 = v16 >> 3;
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    do
    {
      blockCopy[2](blockCopy, v17, p_cells->__begin_[v17]);
      ++v17;
    }

    while (v19 != v17);
  }
}

- (unsigned)rowCount
{
  if (self->_uidBased)
  {
    return (self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) >> 4;
  }

  else
  {
    LODWORD(self) = self->_viewCellRect._rect.size.numberOfRows;
  }

  return self;
}

- (void)p_convertToUuidBasedCellListUsingTableInfo:(id)info pruneCategorizedCells:(BOOL)cells
{
  cellsCopy = cells;
  infoCopy = info;
  v10 = infoCopy;
  p_viewCellRect = &self->_viewCellRect;
  if (infoCopy)
  {
    objc_msgSend_cellUIDRangeForCellRange_(infoCopy, v7, *p_viewCellRect, *&self->_viewCellRect._rect.size);
  }

  else
  {
    memset(v62, 0, 48);
  }

  p_cellUIDRange = &self->_cellUIDRange;
  begin = self->_cellUIDRange._colIdList.__begin_;
  if (begin)
  {
    self->_cellUIDRange._colIdList.__end_ = begin;
    operator delete(begin);
    p_cellUIDRange->_colIdList.__begin_ = 0;
    self->_cellUIDRange._colIdList.__end_ = 0;
    self->_cellUIDRange._colIdList.__cap_ = 0;
  }

  *&p_cellUIDRange->_colIdList.__begin_ = *v62;
  self->_cellUIDRange._colIdList.__cap_ = *&v62[16];
  memset(v62, 0, 24);
  p_rowIdList = &self->_cellUIDRange._rowIdList;
  v14 = self->_cellUIDRange._rowIdList.__begin_;
  if (v14)
  {
    self->_cellUIDRange._rowIdList.__end_ = v14;
    operator delete(v14);
    p_rowIdList->__begin_ = 0;
    self->_cellUIDRange._rowIdList.__end_ = 0;
    self->_cellUIDRange._rowIdList.__cap_ = 0;
    v14 = *v62;
  }

  *&self->_cellUIDRange._rowIdList.__begin_ = *&v62[24];
  self->_cellUIDRange._rowIdList.__cap_ = *&v62[40];
  memset(&v62[24], 0, 24);
  if (v14)
  {
    *&v62[8] = v14;
    operator delete(v14);
  }

  if (cellsCopy && objc_msgSend_isCategorized(v10, v7, v8, v9))
  {
    Column = TSUCellRect::firstColumn(&self->_viewCellRect._rect);
    Row = TSUCellRect::firstRow(&self->_viewCellRect._rect);
    v48 = objc_msgSend_regionFromViewCellRect_(TSTCellRegion, v18, *p_viewCellRect, *&self->_viewCellRect._rect.size);
    *v62 = 0;
    *&v62[8] = v62;
    *&v62[16] = 0x4812000000;
    *&v62[24] = sub_221165954;
    *&v62[32] = sub_221165978;
    *&v62[40] = 0u;
    v63 = 0u;
    sub_221086EBC(&v62[48], self->_cellUIDRange._rowIdList.__begin_, self->_cellUIDRange._rowIdList.__end_, self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_);
    v46 = Column;
    v55 = 0;
    v56 = &v55;
    v57 = 0x4812000000;
    v58 = sub_221165954;
    v59 = sub_221165978;
    v60 = 0u;
    v61 = 0u;
    sub_221086EBC(&v60 + 1, p_cellUIDRange->_colIdList.__begin_, self->_cellUIDRange._colIdList.__end_, self->_cellUIDRange._colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_);
    v19 = *(*&v62[8] + 48);
    v20 = *(*&v62[8] + 56);
    v22 = v56[6];
    v21 = v56[7];
    v25 = objc_msgSend_indexesForSummaryAndLabelRowsInRegion_(v10, v23, v48, v24);
    v54[0] = MEMORY[0x277D85DD0];
    v26 = (v21 - v22) >> 4;
    v54[1] = 3221225472;
    v54[2] = sub_221165990;
    v54[3] = &unk_27845FE00;
    v54[4] = self;
    v54[5] = v62;
    v54[6] = Row;
    v54[7] = (v20 - v19) >> 4;
    v54[8] = v26;
    v47 = v25;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v25, v27, 2, v54);
    v29 = *(*&v62[8] + 48);
    v28 = *(*&v62[8] + 56);
    v32 = objc_msgSend_indexesForCategoryColumnsInRegion_(v10, v30, v48, v31);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_221165A10;
    v53[3] = &unk_27845FE00;
    v53[4] = self;
    v53[5] = &v55;
    v53[6] = v46;
    v53[7] = (v28 - v29) >> 4;
    v53[8] = v26;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v32, v33, 2, v53);
    sub_2210BBBE8(__p, (v56 + 6), *&v62[8] + 48);
    v34 = p_cellUIDRange->_colIdList.__begin_;
    if (p_cellUIDRange->_colIdList.__begin_)
    {
      self->_cellUIDRange._colIdList.__end_ = v34;
      operator delete(v34);
      p_cellUIDRange->_colIdList.__begin_ = 0;
      self->_cellUIDRange._colIdList.__end_ = 0;
      self->_cellUIDRange._colIdList.__cap_ = 0;
    }

    *&p_cellUIDRange->_colIdList.__begin_ = *__p;
    self->_cellUIDRange._colIdList.__cap_ = v50;
    __p[1] = 0;
    v50 = 0;
    __p[0] = 0;
    v35 = self->_cellUIDRange._rowIdList.__begin_;
    if (v35)
    {
      self->_cellUIDRange._rowIdList.__end_ = v35;
      operator delete(v35);
      p_rowIdList->__begin_ = 0;
      self->_cellUIDRange._rowIdList.__end_ = 0;
      self->_cellUIDRange._rowIdList.__cap_ = 0;
      v35 = __p[0];
    }

    *&self->_cellUIDRange._rowIdList.__begin_ = v51;
    self->_cellUIDRange._rowIdList.__cap_ = v52;
    v52 = 0;
    v51 = 0uLL;
    if (v35)
    {
      __p[1] = v35;
      operator delete(v35);
    }

    _Block_object_dispose(&v55, 8);
    if (*(&v60 + 1))
    {
      *&v61 = *(&v60 + 1);
      operator delete(*(&v60 + 1));
    }

    _Block_object_dispose(v62, 8);
    if (*&v62[48])
    {
      *&v63 = *&v62[48];
      operator delete(*&v62[48]);
    }
  }

  p_cells = &self->_cells;
  if ((self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_) != self->_cells.var0 - self->_cells.__begin_)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTConcurrentCellList p_convertToUuidBasedCellListUsingTableInfo:pruneCategorizedCells:]", v9);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 1113, 0, "cells size:%lu needs to match area range:%lu", p_cells->var0 - p_cells->__begin_, (p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_) * (p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
  }

  *p_viewCellRect = xmmword_2217E0544;
}

- (void)p_setObjectLocale:(id)locale
{
  localeCopy = locale;
  if (!localeCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_setObjectLocale:]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 1118, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  p_cells = &self->_cells;
  begin = self->_cells.__begin_;
  var0 = p_cells->var0;
  while (begin != var0)
  {
    v18 = *begin;
    objc_msgSend_setLocale_(v18, v19, localeCopy, v20);

    ++begin;
  }
}

- (void)p_clearDataListIDs
{
  begin = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (begin != var0)
  {
    v4 = *begin;
    v8 = v4;
    if (v4)
    {
      objc_msgSend_clearDataListIDs(v4, v5, v6, v7);
    }

    ++begin;
  }
}

- (void)p_pruneCellsAtColumn:(unint64_t)column rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize
{
  if (size)
  {
    v8 = 0;
    p_cells = &self->_cells;
    var0 = self->_cells.var0;
    do
    {
      v11 = &p_cells->__begin_[(~v8 + size) * columnsSize + 1] + column;
      if (v11 == var0)
      {
        v13 = var0;
        var0 = &p_cells->__begin_[column] + (~v8 + size) * columnsSize;
      }

      else
      {
        do
        {
          v12 = *(v11 - 1);
          *(v11 - 1) = *v11;
          *v11 = 0;

          ++v11;
        }

        while (v11 != var0);
        v13 = p_cells->var0;
        var0 = v11 - 1;
      }

      while (v13 != var0)
      {
        v14 = *--v13;
      }

      p_cells->var0 = var0;
      ++v8;
    }

    while (v8 != size);
  }
}

- (void)p_pruneToBaseWithBaseMap:(id)map viewMap:(id)viewMap
{
  v84 = *MEMORY[0x277D85DE8];
  p_cellUIDRange = &self->_cellUIDRange;
  p_rowIdList = &self->_cellUIDRange._rowIdList;
  begin = self->_cellUIDRange._rowIdList.__begin_;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  sub_221086EBC(&v78, begin, self->_cellUIDRange._rowIdList.__end_, self->_cellUIDRange._rowIdList.__end_ - begin);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v68 = p_cellUIDRange;
  sub_221086EBC(&v75, p_cellUIDRange->_colIdList.__begin_, p_cellUIDRange->_colIdList.__end_, p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_);
  v67 = p_rowIdList;
  v9 = v78;
  v8 = v79;
  v10 = (v79 - v78) >> 4;
  v12 = v75;
  v11 = v76;
  sub_2211663C4(&self->_baseRows.__begin_, v10);
  v69 = v12;
  v70 = v11;
  v14 = (v11 - v12) >> 4;
  if (v8 != v9)
  {
    if (v10 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v10;
    }

    v16 = 16 * v10 - 16;
    v17 = -1;
    v18 = -16 * v10;
    do
    {
      v19 = *(v78 + v16);
      v20 = *(v78 + v16 + 8);
      LODWORD(__p[0]) = 0;
      LODWORD(__p[0]) = objc_msgSend_rowIndexForRowUID_(map, v13, v19, v20);
      if (LODWORD(__p[0]) == 0x7FFFFFFF)
      {
        v21 = v78 + v16;
        v22 = v78 + v16 + 16;
        v23 = v18 + v79 - v78;
        if (v22 != v79)
        {
          memmove(v78 + v16, v22, v18 + v79 - v78);
        }

        v79 = &v21[v23];
        objc_msgSend_p_pruneCellsAtRow_rowsSize_columnsSize_(self, v22, v10 + v17, v10, v14);
      }

      else
      {
        sub_221166464(&self->_baseRows.__begin_, self->_baseRows.__begin_, __p);
        if (viewMap)
        {
          v74 = 0;
          v74 = objc_msgSend_rowIndexForRowUID_(viewMap, v13, v19, v20);
          sub_221166638(&self->_viewRows.__begin_, self->_viewRows.__begin_, &v74);
        }
      }

      v16 -= 16;
      v18 += 16;
      --v17;
      --v15;
    }

    while (v15);
  }

  v25 = v78;
  v24 = v79;
  sub_22116680C(&self->_baseColumns.__begin_, v14);
  if (v70 != v69)
  {
    v71 = (v24 - v25) >> 4;
    if (v14 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v14;
    }

    v28 = 16 * v14 - 16;
    v29 = -1;
    v30 = -16 * v14;
    do
    {
      v31 = *(v75 + v28);
      v32 = *(v75 + v28 + 8);
      LOWORD(__p[0]) = 0;
      v33 = objc_msgSend_columnIndexForColumnUID_(map, v26, v31, v32);
      LOWORD(__p[0]) = v33;
      if (v33 == 0x7FFF)
      {
        v34 = v75 + v28;
        v35 = v75 + v28 + 16;
        v36 = v30 + v76 - v75;
        if (v35 != v76)
        {
          memmove(v75 + v28, v35, v30 + v76 - v75);
        }

        v76 = &v34[v36];
        objc_msgSend_p_pruneCellsAtColumn_rowsSize_columnsSize_(self, v35, v14 + v29, v71, v14);
      }

      else
      {
        sub_2211668A8(&self->_baseColumns.__begin_, self->_baseColumns.__begin_, __p);
        if (viewMap)
        {
          LOWORD(v74) = 0;
          LOWORD(v74) = objc_msgSend_columnIndexForColumnUID_(viewMap, v26, v31, v32);
          sub_221166A78(&self->_viewColumns.__begin_, self->_viewColumns.__begin_, &v74);
        }
      }

      v28 -= 16;
      v30 += 16;
      --v29;
      --v27;
    }

    while (v27);
  }

  sub_2210BBBE8(__p, &v75, &v78);
  v40 = v68->_colIdList.__begin_;
  if (v68->_colIdList.__begin_)
  {
    v68->_colIdList.__end_ = v40;
    operator delete(v40);
    v68->_colIdList.__begin_ = 0;
    v68->_colIdList.__end_ = 0;
    v68->_colIdList.__cap_ = 0;
  }

  *&v68->_colIdList.__begin_ = *__p;
  v68->_colIdList.__cap_ = *&v82[0];
  __p[1] = 0;
  *&v82[0] = 0;
  __p[0] = 0;
  v41 = v68->_rowIdList.__begin_;
  if (v41)
  {
    v68->_rowIdList.__end_ = v41;
    operator delete(v41);
    v67->__begin_ = 0;
    v67->__end_ = 0;
    v67->__cap_ = 0;
    v41 = __p[0];
  }

  *&v68->_rowIdList.__begin_ = *(v82 + 8);
  v68->_rowIdList.__cap_ = *(&v82[1] + 1);
  memset(v82 + 8, 0, 24);
  if (v41)
  {
    __p[1] = v41;
    operator delete(v41);
  }

  p_cells = &self->_cells;
  v43 = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (v43 != var0)
  {
    objc_msgSend_validateAndRepair(*v43++, v37, v38, v39);
  }

  v45 = 0;
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  *__p = 0u;
  do
  {
    v46 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v37, v38, v39);
    v47 = __p[v45];
    __p[v45] = v46;

    ++v45;
  }

  while (v45 != 13);
  v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, __p, 13);
  interestingCells = self->_interestingCells;
  self->_interestingCells = v48;

  v53 = objc_msgSend_p_interestingCellIndexes(self, v50, v51, v52);
  objc_msgSend_p_setupInterestingCells_interestingCellIndexes_forAdding_(self, v54, &self->_cells, v53, 1);

  if ((v68->_rowIdList.__end_ - v68->_rowIdList.__begin_) * (v68->_colIdList.__end_ - v68->_colIdList.__begin_) != self->_cells.var0 - self->_cells.__begin_)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSTConcurrentCellList p_pruneToBaseWithBaseMap:viewMap:]", v56);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v60);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 1211, 0, "cells size:%lu needs to match area range:%lu", p_cells->var0 - p_cells->__begin_, (v68->_rowIdList.__end_ - v68->_rowIdList.__begin_) * (v68->_colIdList.__end_ - v68->_colIdList.__begin_));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
  }

  for (i = 12; i != -1; --i)
  {
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }
}

- (void)p_setupInterestingCells:(void *)cells interestingCellIndexes:(id)indexes forAdding:(BOOL)adding
{
  addingCopy = adding;
  v166 = *MEMORY[0x277D85DE8];
  if (*(cells + 1) - *cells != self->_cells.var0 - self->_cells.__begin_)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList p_setupInterestingCells:interestingCellIndexes:forAdding:]", indexes);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 1215, 0, "cell lists size mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  if (addingCopy)
  {
    v15 = &OBJC_IVAR___TSTConcurrentCellList__formatsAdded;
  }

  else
  {
    v15 = &OBJC_IVAR___TSTConcurrentCellList__formatsRemoved;
  }

  v16 = 0x277D812B8;
  if (!addingCopy)
  {
    v16 = 0x277CBEB38;
  }

  v17 = objc_msgSend_dictionary(*v16, a2, cells, indexes);
  v18 = *v15;
  v19 = *(&self->super.super.isa + v18);
  *(&self->super.super.isa + v18) = v17;

  v155 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v20, 0, v21);
  v146 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v22, 1, v23);
  v154 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v24, 2, v25);
  v157 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v26, 3, v27);
  v153 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v28, 4, v29);
  v152 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v30, 5, v31);
  v151 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v32, 6, v33);
  v150 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v34, 7, v35);
  v149 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v36, 8, v37);
  v148 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v38, 9, v39);
  v147 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v40, 10, v41);
  v158 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v42, 11, v43);
  v159 = objc_msgSend_objectAtIndexedSubscript_(self->_interestingCells, v44, 12, v45);
  v46 = *cells;
  if (*(cells + 1) != *cells)
  {
    for (i = 0; i < (*(cells + 1) - *cells) >> 3; ++i)
    {
      v51 = *(v46 + 8 * i);
      if (indexes)
      {
        v52 = objc_msgSend_containsIndex_(indexes, v48, i, v50);
        if (v51)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        if (v53)
        {
LABEL_17:
          if (objc_msgSend_valueType(v51, v48, v49, v50) == 3)
          {
            objc_msgSend_addIndex_(v155, v54, i, v56);
          }

          if (objc_msgSend_hasAnyFormats(v51, v54, v55, v56))
          {
            v165[0] = objc_msgSend_numberFormat(v51, v57, v58, v59);
            v165[1] = objc_msgSend_dateFormat(v51, v60, v61, v62);
            v165[2] = objc_msgSend_durationFormat(v51, v63, v64, v65);
            v165[3] = objc_msgSend_currencyFormat(v51, v66, v67, v68);
            v165[4] = objc_msgSend_textFormat(v51, v69, v70, v71);
            v165[5] = objc_msgSend_BOOLeanFormat(v51, v72, v73, v74);
            v163 = 0;
            v164 = 0;
            __p = 0;
            sub_22116CEC0(&__p, v165, &v166, 6uLL);
            v79 = __p;
            v78 = v163;
            if (addingCopy)
            {
              while (v79 != v78)
              {
                v80 = *v79;
                if (*v79)
                {
                  v81 = objc_msgSend_objectForKey_(self->_formatsAdded, v75, *v79, v77);
                  v84 = v81;
                  if (v81)
                  {
                    objc_msgSend_addIndex_(v81, v82, i, v83);
                  }

                  else
                  {
                    formatsAdded = self->_formatsAdded;
                    v86 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAB58], v82, i, v83);
                    objc_msgSend_setObject_forKey_(formatsAdded, v87, v86, v80);
                  }
                }

                ++v79;
              }
            }

            else
            {
              while (v79 != v78)
              {
                if (*v79)
                {
                  v88 = objc_msgSend_formatType(*v79, v75, v76, v77);
                  v89 = sub_22121E75C(v88);
                  v90 = sub_221143624(v89);
                  v93 = objc_msgSend_formatIDForStorageFlag_(v51, v91, v90, v92);
                  formatsRemoved = self->_formatsRemoved;
                  v97 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v95, v93, v96);
                  v100 = objc_msgSend_objectForKey_(formatsRemoved, v98, v97, v99);

                  if (v100)
                  {
                    objc_msgSend_addIndex_(v100, v101, i, v102);
                  }

                  else
                  {
                    v103 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAB58], v101, i, v102);
                    v104 = self->_formatsRemoved;
                    v107 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v105, v93, v106);
                    objc_msgSend_setObject_forKey_(v104, v108, v103, v107);

                    v100 = v103;
                  }
                }

                ++v79;
              }
            }

            objc_msgSend_addIndex_(v146, v75, i, v77);
            if (__p)
            {
              v163 = __p;
              operator delete(__p);
            }
          }

          if (objc_msgSend_hasFormula(v51, v57, v58, v59))
          {
            objc_msgSend_addIndex_(v154, v109, i, v111);
            objc_msgSend_addIndex_(v159, v112, i, v113);
          }

          if ((objc_msgSend_hasTextStyle(v51, v109, v110, v111) & 1) != 0 || objc_msgSend_hasCellStyle(v51, v114, v115, v116))
          {
            objc_msgSend_addIndex_(v157, v114, i, v116);
          }

          if (objc_msgSend_hasFormulaAnyError(v51, v114, v117, v116))
          {
            objc_msgSend_addIndex_(v153, v118, i, v120);
          }

          if (objc_msgSend_hasRichText(v51, v118, v119, v120))
          {
            objc_msgSend_addIndex_(v152, v121, i, v123);
          }

          if (objc_msgSend_hasConditionalStyle(v51, v121, v122, v123))
          {
            objc_msgSend_addIndex_(v151, v124, i, v126);
            objc_msgSend_addIndex_(v159, v127, i, v128);
          }

          if (objc_msgSend_hasCommentStorage(v51, v124, v125, v126))
          {
            objc_msgSend_addIndex_(v150, v129, i, v131);
          }

          if (objc_msgSend_hasImportWarningSet(v51, v129, v130, v131))
          {
            objc_msgSend_addIndex_(v149, v132, i, v134);
          }

          if (objc_msgSend_hasControl(v51, v132, v133, v134))
          {
            objc_msgSend_addIndex_(v148, v135, i, v137);
          }

          if (objc_msgSend_hasAnyCustomFormat(v51, v135, v136, v137))
          {
            objc_msgSend_addIndex_(v147, v138, i, v140);
          }

          if ((objc_msgSend_hasTextStyle(v51, v138, v139, v140) & 1) != 0 || (objc_msgSend_hasCellStyle(v51, v141, v142, v143) & 1) != 0 || (objc_msgSend_hasRichText(v51, v141, v144, v143) & 1) != 0 || objc_msgSend_hasFormulaAnyError(v51, v141, v145, v143))
          {
            objc_msgSend_addIndex_(v158, v141, i, v143);
          }
        }
      }

      else if (v51)
      {
        goto LABEL_17;
      }

      v46 = *cells;
    }
  }
}

- (void)p_invokeBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  p_baseRows = &self->_baseRows;
  v6 = 0x277D81000uLL;
  v7 = 0x277CCA000uLL;
  if (self->_baseRows.__end_ - self->_baseRows.__begin_ != self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_invokeBlock:]", v5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1334, 0, "base rows needs to match uids");

    v6 = 0x277D81000uLL;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  p_baseColumns = &self->_baseColumns;
  v18 = self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_;
  if (v18 != self->_baseColumns.__end_ - self->_baseColumns.__begin_)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_invokeBlock:]", v5);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 1335, 0, "base cols needs to match uids");

    v6 = 0x277D81000uLL;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    v18 = self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_;
  }

  if ((self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_) * v18 != self->_cells.var0 - self->_cells.__begin_)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_invokeBlock:]", v5);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 1336, 0, "cells size needs to match area range");

    v6 = 0x277D81000uLL;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
  }

  begin = p_baseRows->__begin_;
  if (self->_baseRows.__end_ != self->_baseRows.__begin_)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      row = begin[v39]._row;
      var0 = row;
      if (selfCopy->_viewRows.__end_ != selfCopy->_viewRows.__begin_)
      {
        var0 = selfCopy->_viewRows.__begin_[v39].var0;
      }

      if (var0 == 0x7FFFFFFF)
      {
        v42 = *(v6 + 336);
        v70 = objc_msgSend_stringWithUTF8String_(*(v7 + 3240), v4, "[TSTConcurrentCellList p_invokeBlock:]", v5);
        v43 = v7;
        v44 = v6;
        v45 = v43;
        v48 = objc_msgSend_stringWithUTF8String_(*(v43 + 3240), v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v47);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v70, v48, 1344, 0, "only valid viewRowIndexes should remain");

        v6 = v44;
        objc_msgSend_logBacktraceThrottled(*(v44 + 336), v50, v51, v52);
        v7 = v45;
      }

      if (row == 0x7FFFFFFF)
      {
        v53 = *(v6 + 336);
        v54 = objc_msgSend_stringWithUTF8String_(*(v7 + 3240), v4, "[TSTConcurrentCellList p_invokeBlock:]", v5);
        v55 = v6;
        v58 = objc_msgSend_stringWithUTF8String_(*(v7 + 3240), v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v57);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 1345, 0, "only valid baseRowIndexes should remain");

        objc_msgSend_logBacktraceThrottled(*(v55 + 336), v60, v61, v62);
      }

      v71 = v39;
      v63 = p_baseColumns->__begin_;
      if (p_baseColumns->__end_ != p_baseColumns->__begin_)
      {
        v64 = 0;
        v65 = 0;
        do
        {
          column = v63[v65]._column;
          v67 = column;
          if (selfCopy->_viewColumns.__end_ != selfCopy->_viewColumns.__begin_)
          {
            v67 = selfCopy->_viewColumns.__begin_[v65].var0;
          }

          memset(v73, 0, sizeof(v73));
          TSTMakeCellUID(v73);
          blockCopy[2](blockCopy, v73, var0 | (v67 << 32), row | (column << 32), selfCopy->_cells.__begin_[v38++]);
          ++v65;
          v63 = p_baseColumns->__begin_;
          v64 += 16;
        }

        while (v65 < p_baseColumns->__end_ - p_baseColumns->__begin_);
      }

      v39 = v71 + 1;
      begin = p_baseRows->__begin_;
      v6 = 0x277D81000;
      v7 = 0x277CCA000;
    }

    while (v71 + 1 < (p_baseRows->__end_ - p_baseRows->__begin_));
  }
}

- (void)p_simpleInvokeBlock:(id)block
{
  blockCopy = block;
  p_baseRows = &self->_baseRows;
  p_viewRows = &self->_viewRows;
  numberOfRows = self->_viewCellRect._rect.size.numberOfRows;
  begin = self->_cellUIDRange._rowIdList.__begin_;
  if (self->_cellUIDRange._rowIdList.__end_ - begin > numberOfRows)
  {
    numberOfRows = self->_cellUIDRange._rowIdList.__end_ - begin;
  }

  v7 = self->_viewRows.__end_ - self->_viewRows.__begin_;
  p_viewColumns = &self->_viewColumns;
  v9 = self->_viewColumns.__begin_;
  end = self->_viewColumns.__end_;
  v11 = self->_viewRows.__end_ != self->_viewRows.__begin_ && end != v9;
  v39 = v11;
  if (v7 <= numberOfRows)
  {
    v7 = numberOfRows;
  }

  v12 = self->_baseRows.__end_ - self->_baseRows.__begin_;
  selfCopy = self;
  p_baseColumns = &self->_baseColumns;
  v14 = self->_baseColumns.__begin_;
  v13 = self->_baseColumns.__end_;
  v16 = self->_baseRows.__end_ != self->_baseRows.__begin_ && v13 != v14;
  v44 = v16;
  if (v12 <= v7)
  {
    v12 = v7;
  }

  v35 = v12;
  v17 = v13 - v14;
  v18 = end - v9;
  numberOfColumns_low = LOWORD(self->_viewCellRect._rect.size.numberOfColumns);
  if (self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_ > numberOfColumns_low)
  {
    numberOfColumns_low = self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_;
  }

  if (v18 <= numberOfColumns_low)
  {
    v18 = numberOfColumns_low;
  }

  if (v17 <= v18)
  {
    v17 = v18;
  }

  v42 = v17;
  p_viewCellRect = &self->_viewCellRect;
  isValid = TSUCellRect::isValid(&self->_viewCellRect._rect);
  if (v35)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = &dword_2217E0554;
      if (v44)
      {
        v22 = &p_baseRows->__begin_[v21];
      }

      v23 = *v22;
      if (isValid)
      {
        v24 = TSUCellRect::firstRow(&p_viewCellRect->_rect) + v21;
      }

      else
      {
        v25 = &dword_2217E0558;
        if (v39)
        {
          v25 = &p_viewRows->__begin_[v21];
        }

        v24 = *v25;
      }

      v36 = v21;
      if (v42)
      {
        v26 = 0;
        v27 = 0;
        v28 = v24;
        do
        {
          v29 = &word_2217E055C;
          if (v44)
          {
            v29 = &p_baseColumns->__begin_[v26];
          }

          v30 = *v29;
          if (isValid)
          {
            v31 = TSUCellRect::firstColumn(&p_viewCellRect->_rect) + v27;
          }

          else
          {
            v32 = &word_2217E055E;
            if (v39)
            {
              v32 = &p_viewColumns->__begin_[v26];
            }

            v31 = *v32;
          }

          memset(v45, 0, sizeof(v45));
          TSTMakeCellUID(v45);
          blockCopy[2](blockCopy, v45, v28 | (v31 << 32), v23 | (v30 << 32), selfCopy->_cells.__begin_[v20++]);
          ++v27;
          ++v26;
        }

        while (v42 != v27);
      }

      v21 = v36 + 1;
    }

    while (v36 + 1 != v35);
  }
}

- (void)p_convertToInverseCellMap
{
  p_oldCells = &self->_oldCells;
  begin = self->_oldCells.__begin_;
  var0 = self->_oldCells.var0;
  p_cells = &self->_cells;
  if (var0 - begin != self->_cells.var0 - self->_cells.__begin_)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentCellList p_convertToInverseCellMap]", v2);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1401, 0, "oldCells size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    begin = p_oldCells->__begin_;
    var0 = p_oldCells->var0;
  }

  sub_22116CF34(p_cells, begin, var0, var0 - begin);
  v18 = p_oldCells->__begin_;
  for (i = p_oldCells->var0; i != v18; --i)
  {
    v19 = *(i - 1);
  }

  p_oldCells->var0 = v18;
  self->_baseRows.__end_ = self->_baseRows.__begin_;
  self->_baseColumns.__end_ = self->_baseColumns.__begin_;
  self->_viewRows.__end_ = self->_viewRows.__begin_;
  self->_viewColumns.__end_ = self->_viewColumns.__begin_;
  self->_cellCountDiffsPerRow.__end_ = self->_cellCountDiffsPerRow.__begin_;
  self->_cellCountDiffsPerColumn.__end_ = self->_cellCountDiffsPerColumn.__begin_;
  tilesPerRow = self->_tilesPerRow;
  self->_tilesPerRow = 0;

  rowInfosPerRow = self->_rowInfosPerRow;
  self->_rowInfosPerRow = 0;
}

- (void)p_gatherRowState:(id)state
{
  stateCopy = state;
  if (self->_baseRows.__end_ - self->_baseRows.__begin_ != self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_gatherRowState:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1418, 0, "base rows needs to match uids");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6);
  tilesPerRow = self->_tilesPerRow;
  self->_tilesPerRow = v16;

  v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v18, v19, v20);
  rowInfosPerRow = self->_rowInfosPerRow;
  self->_rowInfosPerRow = v21;

  begin = self->_baseRows.__begin_;
  for (i = self->_baseRows.__end_; begin != i; ++begin)
  {
    v25 = stateCopy[2](stateCopy, begin->_row);
    v26 = self->_tilesPerRow;
    v30 = objc_msgSend_first(v25, v27, v28, v29);
    objc_msgSend_addObject_(v26, v31, v30, v32);

    v33 = self->_rowInfosPerRow;
    v37 = objc_msgSend_second(v25, v34, v35, v36);
    objc_msgSend_addObject_(v33, v38, v37, v39);
  }
}

- (void)p_accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock
{
  blockCopy = block;
  usingBlockCopy = usingBlock;
  if (!self->_tilesPerRow)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1432, 0, "invalid nil value for '%{public}s'", "_tilesPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (!self->_rowInfosPerRow)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v8);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1433, 0, "invalid nil value for '%{public}s'", "_rowInfosPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  p_baseRows = &self->_baseRows;
  if (objc_msgSend_count(self->_tilesPerRow, v6, v7, v8) != self->_baseRows.__end_ - self->_baseRows.__begin_)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTConcurrentCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 1434, 0, "_tilesPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
  }

  v40 = objc_msgSend_count(self->_rowInfosPerRow, v27, v28, v29);
  begin = p_baseRows->__begin_;
  end = self->_baseRows.__end_;
  if (v40 != end - p_baseRows->__begin_)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTConcurrentCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v42);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 1435, 0, "_rowInfosPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
    begin = p_baseRows->__begin_;
    end = self->_baseRows.__end_;
  }

  if (end != begin)
  {
    v54 = 0;
    do
    {
      v55 = objc_msgSend_objectAtIndexedSubscript_(self->_tilesPerRow, v41, v54, v42);
      v58 = objc_msgSend_objectAtIndexedSubscript_(self->_rowInfosPerRow, v56, v54, v57);
      blockCopy[2](v64);
      (usingBlockCopy)[2](&v62);
      sub_22116D0D8(&self->_oldCells, self->_oldCells.var0, v62, v63, v63 - v62);
      v65 = &v62;
      sub_22107C2C0(&v65);
      v62 = v64;
      sub_22107C2C0(&v62);

      ++v54;
    }

    while (v54 < self->_baseRows.__end_ - self->_baseRows.__begin_);
  }

  sub_2211389A0(&self->_oldCells.__begin_, self->_cells.var0 - self->_cells.__begin_);
  objc_msgSend_p_setupInterestingCells_interestingCellIndexes_forAdding_(self, v59, &self->_oldCells, 0, 0);
}

- (void)p_enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block
{
  blockCopy = block;
  rowInfosPerRow = self->_rowInfosPerRow;
  if (!rowInfosPerRow)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1454, 0, "invalid nil value for '%{public}s'", "_rowInfosPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    rowInfosPerRow = self->_rowInfosPerRow;
  }

  if (objc_msgSend_count(rowInfosPerRow, v4, v5, v6) != self->_baseRows.__end_ - self->_baseRows.__begin_)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTConcurrentCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 1455, 0, "_rowInfosPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  begin = self->_oldCells.__begin_;
  var0 = self->_oldCells.var0;
  if (begin != var0 && var0 - begin != self->_cells.var0 - self->_cells.__begin_)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTConcurrentCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v19);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 1456, 0, "_oldCells size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
  }

  sub_2211687C4(&self->_cellCountDiffsPerRow.__begin_, self->_baseRows.__end_ - self->_baseRows.__begin_);
  p_cellCountDiffsPerColumn = &self->_cellCountDiffsPerColumn;
  sub_2211576E4(&self->_cellCountDiffsPerColumn.__begin_, self->_baseColumns.__end_ - self->_baseColumns.__begin_);
  sub_22116D2A8(location, self->_baseColumns.__end_ - self->_baseColumns.__begin_);
  if (self->_baseRows.__end_ != self->_baseRows.__begin_)
  {
    v43 = 0;
    do
    {
      v44 = objc_msgSend_objectAtIndexedSubscript_(self->_rowInfosPerRow, v41, v43, v42);
      v45 = self->_baseColumns.__end_ - self->_baseColumns.__begin_;
      v46 = v43 + 1;
      sub_22116D07C(&__p, &self->_cells.__begin_[v43 * v45], &self->_cells.__begin_[(v43 + 1) * v45], location[0]);
      blockCopy[2](&__p, blockCopy, v44, location, &self->_baseColumns);
      v47 = __p;
      if (__p == v58)
      {
        v50 = 0;
      }

      else
      {
        v48 = 0;
        do
        {
          v49 = *v47;
          v47 += 2;
          v48 += v49;
        }

        while (v47 != v58);
        v50 = v48;
      }

      v56 = v50;
      sub_2211531C0(&self->_cellCountDiffsPerRow.__begin_, &v56);
      v51 = p_cellCountDiffsPerColumn->__begin_;
      end = self->_cellCountDiffsPerColumn.__end_;
      v53 = __p;
      if (p_cellCountDiffsPerColumn->__begin_ != end)
      {
        v54 = __p;
        do
        {
          v55 = *v54++;
          *v51++ += v55;
        }

        while (v51 != end);
      }

      if (v53)
      {
        v58 = v53;
        operator delete(v53);
      }

      ++v43;
    }

    while (v46 < self->_baseRows.__end_ - self->_baseRows.__begin_);
  }

  __p = location;
  sub_22107C2C0(&__p);
}

- (void)p_enumerateNewAndOldCellsSeriallyUsingBlock:(id)block
{
  blockCopy = block;
  p_oldCells = &self->_oldCells;
  begin = self->_oldCells.__begin_;
  var0 = self->_oldCells.var0;
  if (begin != var0 && var0 - begin != self->_cells.var0 - self->_cells.__begin_)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_enumerateNewAndOldCellsSeriallyUsingBlock:]", v5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1488, 0, "_oldCells size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  p_cells = &self->_cells;
  v19 = self->_cells.__begin_;
  if (self->_cells.var0 != v19)
  {
    v20 = 0;
    do
    {
      v21 = v19[v20];
      if (p_oldCells->__begin_ == p_oldCells->var0)
      {
        v22 = 0;
      }

      else
      {
        v22 = p_oldCells->__begin_[v20];
      }

      v23 = v22;
      if (v21 | v23)
      {
        blockCopy[2](blockCopy, v21, v23);
      }

      ++v20;
      v19 = p_cells->__begin_;
    }

    while (v20 < p_cells->var0 - p_cells->__begin_);
  }
}

- (void)p_enumerateCellsAddedAndRemovedOfType:(unint64_t)type usingBlock:(id)block
{
  blockCopy = block;
  begin = self->_oldCells.__begin_;
  var0 = self->_oldCells.var0;
  if (begin != var0 && var0 - begin != self->_cells.var0 - self->_cells.__begin_)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_enumerateCellsAddedAndRemovedOfType:usingBlock:]", v7);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1501, 0, "_oldCells size:%lu does not match _cells size:%lu in cellList", self->_oldCells.var0 - self->_oldCells.__begin_, self->_cells.var0 - self->_cells.__begin_);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  interestingCells = self->_interestingCells;
  if (!interestingCells)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_enumerateCellsAddedAndRemovedOfType:usingBlock:]", v7);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 1503, 0, "invalid nil value for '%{public}s'", "_interestingCells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
    interestingCells = self->_interestingCells;
  }

  v30 = objc_msgSend_objectAtIndexedSubscript_(interestingCells, v6, type, v7);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_221168C88;
  v34[3] = &unk_27845FE28;
  v34[4] = self;
  v31 = blockCopy;
  v35 = v31;
  objc_msgSend_enumerateIndexesUsingBlock_(v30, v32, v34, v33);
}

- (void)p_enumerateCellsAddedOfType:(unint64_t)type usingBlock:(id)block
{
  blockCopy = block;
  interestingCells = self->_interestingCells;
  if (!interestingCells)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTConcurrentCellList p_enumerateCellsAddedOfType:usingBlock:]", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1530, 0, "invalid nil value for '%{public}s'", "_interestingCells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    interestingCells = self->_interestingCells;
  }

  v19 = objc_msgSend_objectAtIndexedSubscript_(interestingCells, v6, type, v7);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_221168F38;
  v23[3] = &unk_27845FE28;
  v23[4] = self;
  v20 = blockCopy;
  v24 = v20;
  objc_msgSend_enumerateIndexesUsingBlock_(v19, v21, v23, v22);
}

- (void)p_enumerateCellsAddedAndRemovedForFormatsUsingBlock:(id)block
{
  blockCopy = block;
  formatsAdded = self->_formatsAdded;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221169168;
  v15[3] = &unk_27845FE50;
  v6 = blockCopy;
  v15[4] = self;
  v16 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(formatsAdded, v7, v15, v8);
  formatsRemoved = self->_formatsRemoved;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221169198;
  v13[3] = &unk_27845FE78;
  v10 = v6;
  v13[4] = self;
  v14 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(formatsRemoved, v11, v13, v12);
}

- (void)p_enumerateColumnCellCountDiffUsingBlock:(id)block
{
  blockCopy = block;
  p_baseColumns = &self->_baseColumns;
  begin = self->_baseColumns.__begin_;
  end = self->_baseColumns.__end_;
  p_cellCountDiffsPerColumn = &self->_cellCountDiffsPerColumn;
  if (end - begin != self->_cellCountDiffsPerColumn.__end_ - self->_cellCountDiffsPerColumn.__begin_)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentCellList p_enumerateColumnCellCountDiffUsingBlock:]", v5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1567, 0, "_baseColumns and _cellCountDiffsPerColumn sizes should match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    begin = p_baseColumns->__begin_;
    end = p_baseColumns->__end_;
  }

  if (end != begin)
  {
    v19 = 0;
    do
    {
      blockCopy[2](blockCopy, begin[v19]._column, p_cellCountDiffsPerColumn->__begin_[v19]);
      ++v19;
      begin = p_baseColumns->__begin_;
    }

    while (v19 < p_baseColumns->__end_ - p_baseColumns->__begin_);
  }
}

- (void)p_enumerateRowCellCountDiffUsingBlock:(id)block
{
  blockCopy = block;
  p_baseRows = &self->_baseRows;
  begin = self->_baseRows.__begin_;
  end = self->_baseRows.__end_;
  v54 = blockCopy;
  if (end - begin != self->_cellCountDiffsPerRow.__end_ - self->_cellCountDiffsPerRow.__begin_)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTConcurrentCellList p_enumerateRowCellCountDiffUsingBlock:]", v7);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1577, 0, "_baseRows and _cellCountDiffsPerRow sizes should match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    begin = p_baseRows->__begin_;
    end = self->_baseRows.__end_;
  }

  if (objc_msgSend_count(self->_tilesPerRow, v5, v6, v7, &self->_cellCountDiffsPerRow) != end - begin)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTConcurrentCellList p_enumerateRowCellCountDiffUsingBlock:]", v22);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 1578, 0, "_baseRows and _tilesPerRow sizes should match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  v33 = p_baseRows->__begin_;
  v32 = self->_baseRows.__end_;
  if (objc_msgSend_count(self->_rowInfosPerRow, v20, v21, v22) != v32 - v33)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTConcurrentCellList p_enumerateRowCellCountDiffUsingBlock:]", v35);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 1579, 0, "_baseRows and _rowInfosPerRow sizes should match");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
  }

  v45 = p_baseRows->__begin_;
  if (self->_baseRows.__end_ != p_baseRows->__begin_)
  {
    v46 = 0;
    do
    {
      row = v45[v46]._row;
      v48 = *(*v53 + 8 * v46);
      v49 = objc_msgSend_objectAtIndexedSubscript_(self->_tilesPerRow, v34, v46, v35);
      v52 = objc_msgSend_objectAtIndexedSubscript_(self->_rowInfosPerRow, v50, v46, v51);
      v54[2](v54, row, v48, v49, v52);

      ++v46;
      v45 = p_baseRows->__begin_;
    }

    while (v46 < self->_baseRows.__end_ - self->_baseRows.__begin_);
  }
}

- (void)p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:(id)block
{
  v70 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_221169B4C;
  v67 = sub_221169B5C;
  v68 = 0;
  formatsAdded = self->_formatsAdded;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = sub_221169B64;
  v60[3] = &unk_27845FEA0;
  v52 = blockCopy;
  v61 = v52;
  v62 = &v63;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(formatsAdded, v6, v60, v7);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v64[5];
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v56, v69, 16);
  if (v12)
  {
    v13 = *v57;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v57 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v56 + 1) + 8 * i);
        v16 = objc_msgSend_first(v15, v9, v10, v11);
        v22 = objc_msgSend_second(v15, v17, v18, v19);
        if (!v16)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTConcurrentCellList p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:]", v21);
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v26);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 1611, 0, "customFormatToRemove can not be nil.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
        }

        if (v22)
        {
          v32 = objc_msgSend_objectForKey_(self->_formatsAdded, v20, v16, v21);
          objc_msgSend_removeObjectForKey_(self->_formatsAdded, v33, v16, v34);
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = sub_221169D18;
          v54[3] = &unk_27845DE60;
          v54[4] = self;
          v35 = v22;
          v55 = v35;
          objc_msgSend_enumerateIndexesUsingBlock_(v32, v36, v54, v37);
          v42 = objc_msgSend_objectForKey_(self->_formatsAdded, v38, v35, v39);
          if (v42)
          {
            objc_msgSend_addIndexes_(v32, v40, v42, v41);
          }

          if (v32)
          {
            objc_msgSend_setObject_forKey_(self->_formatsAdded, v40, v32, v35);
          }
        }

        else
        {
          v43 = MEMORY[0x277D81150];
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTConcurrentCellList p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:]", v21);
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v46);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v48, v44, v47, 1612, 0, "replacementCustomFormat can not be nil.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v56, v69, 16);
    }

    while (v12);
  }

  _Block_object_dispose(&v63, 8);
}

- (id)p_baseColumnIndexes
{
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3);
  p_baseColumns = &self->_baseColumns;
  begin = self->_baseColumns.__begin_;
  end = p_baseColumns->__end_;
  while (begin != end)
  {
    objc_msgSend_addIndex_(v7, v5, begin->_column, v6);
    ++begin;
  }

  return v7;
}

- (id)p_baseRowIndexes
{
  v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3);
  p_baseRows = &self->_baseRows;
  begin = self->_baseRows.__begin_;
  end = p_baseRows->__end_;
  while (begin != end)
  {
    objc_msgSend_addIndex_(v7, v5, begin->_row, v6);
    ++begin;
  }

  return v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[114], v6);

  v11 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v8, v9, v10);
  sub_22116A0A0(&self->_cells.__begin_, *(v7 + 32));
  v12 = *(v7 + 40);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v7 + 32);
  if (v14)
  {
    v15 = 8 * v14;
    do
    {
      TST::ConcurrentCellListArchive_OptionalCell::ConcurrentCellListArchive_OptionalCell(__p, *v13);
      v31 = 0;
      if (v28)
      {
        v16 = [TSTCell alloc];
        v19 = objc_msgSend_initWithLocale_(v16, v17, v11, v18);
        v20 = v31;
        v31 = v19;

        if (v29)
        {
          v21 = v29;
        }

        else
        {
          v21 = &TST::_Cell_default_instance_;
        }

        sub_221123AF0(v21, v31, unarchiverCopy);
      }

      sub_22116A130(&self->_cells.__begin_, &v31);

      TST::ConcurrentCellListArchive_OptionalCell::~ConcurrentCellListArchive_OptionalCell(__p);
      ++v13;
      v15 -= 8;
    }

    while (v15);
  }

  v22 = *(v7 + 16);
  if ((v22 & 2) != 0)
  {
    self->_viewCellRect._rect.origin = sub_22112397C(*(v7 + 56));
    self->_viewCellRect._rect.size = v23;
    v22 = *(v7 + 16);
  }

  if (v22)
  {
    MEMORY[0x223D9F8B0](__p, *(v7 + 48));
    p_cellUIDRange = &self->_cellUIDRange;
    begin = p_cellUIDRange->_colIdList.__begin_;
    if (p_cellUIDRange->_colIdList.__begin_)
    {
      p_cellUIDRange->_colIdList.__end_ = begin;
      operator delete(begin);
      p_cellUIDRange->_colIdList.__begin_ = 0;
      p_cellUIDRange->_colIdList.__end_ = 0;
      p_cellUIDRange->_colIdList.__cap_ = 0;
    }

    *&p_cellUIDRange->_colIdList.__begin_ = *__p;
    p_cellUIDRange->_colIdList.__cap_ = v28;
    __p[1] = 0;
    v28 = 0;
    __p[0] = 0;
    v26 = p_cellUIDRange->_rowIdList.__begin_;
    if (v26)
    {
      p_cellUIDRange->_rowIdList.__end_ = v26;
      operator delete(v26);
      p_cellUIDRange->_rowIdList.__begin_ = 0;
      p_cellUIDRange->_rowIdList.__end_ = 0;
      p_cellUIDRange->_rowIdList.__cap_ = 0;
      v26 = __p[0];
    }

    *&p_cellUIDRange->_rowIdList.__begin_ = v29;
    p_cellUIDRange->_rowIdList.__cap_ = v30;
    v30 = 0;
    v29 = 0uLL;
    if (v26)
    {
      __p[1] = v26;
      operator delete(v26);
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = objc_opt_class();
  if ((objc_msgSend_isMemberOfClass_(self, v6, v5, v7) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTConcurrentCellList saveToArchiver:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1692, 0, "Archiving is not correctly implemented for subclasses.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v40 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v20 = objc_msgSend_messageWithNewFunction_descriptor_(v40, v19, sub_22116D328, off_2812E4498[114]);

  begin = self->_cells.__begin_;
  var0 = self->_cells.var0;
  while (begin != var0)
  {
    v23 = *begin;
    v24 = v23;
    v25 = *(v20 + 40);
    if (!v25)
    {
      goto LABEL_11;
    }

    v26 = *(v20 + 32);
    v27 = *v25;
    if (v26 < *v25)
    {
      *(v20 + 32) = v26 + 1;
      v28 = *&v25[2 * v26 + 2];
      if (!v23)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v27 == *(v20 + 36))
    {
LABEL_11:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v20 + 24));
      v25 = *(v20 + 40);
      v27 = *v25;
    }

    *v25 = v27 + 1;
    v28 = google::protobuf::Arena::CreateMaybeMessage<TST::ConcurrentCellListArchive_OptionalCell>(*(v20 + 24));
    v29 = *(v20 + 32);
    v30 = *(v20 + 40) + 8 * v29;
    *(v20 + 32) = v29 + 1;
    *(v30 + 8) = v28;
    if (!v24)
    {
      goto LABEL_18;
    }

LABEL_13:
    *(v28 + 16) |= 1u;
    v31 = *(v28 + 24);
    if (!v31)
    {
      v32 = *(v28 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = google::protobuf::Arena::CreateMaybeMessage<TST::Cell>(v32);
      *(v28 + 24) = v31;
    }

    sub_2211243E4(v24, v31, v40);
LABEL_18:

    ++begin;
  }

  p_origin = &self->_viewCellRect._rect.origin;
  if (TSUCellRect::isValid(&self->_viewCellRect._rect))
  {
    v34 = *p_origin;
    v35 = p_origin[1];
    *(v20 + 16) |= 2u;
    v36 = *(v20 + 56);
    if (!v36)
    {
      v37 = *(v20 + 8);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v37);
      *(v20 + 56) = v36;
    }

    sub_2211239EC(v34, v35, v36);
  }

  else
  {
    *(v20 + 16) |= 1u;
    v38 = *(v20 + 48);
    if (!v38)
    {
      v39 = *(v20 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x223DA0320](v39);
      *(v20 + 48) = v38;
    }

    TSKUIDStructTract::saveToMessage(&self->_cellUIDRange, v38);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_context(self, v9, v10, v11);
  origin = self->_viewCellRect._rect.origin;
  size = self->_viewCellRect._rect.size;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  sub_221086EBC(&v27, self->_cellUIDRange._colIdList.__begin_, self->_cellUIDRange._colIdList.__end_, self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_);
  __p = 0;
  v31 = 0;
  v32 = 0;
  sub_221086EBC(&__p, self->_cellUIDRange._rowIdList.__begin_, self->_cellUIDRange._rowIdList.__end_, self->_cellUIDRange._rowIdList.__end_ - self->_cellUIDRange._rowIdList.__begin_);
  v16 = objc_msgSend_initWithContext_viewCellRect_cellUIDRange_(v8, v15, v12, origin, size, &v27);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  p_cells = &self->_cells;
  sub_2211389A0(v16 + 18, p_cells->var0 - p_cells->__begin_);
  begin = p_cells->__begin_;
  if (p_cells->var0 != p_cells->__begin_)
  {
    v22 = 0;
    do
    {
      v23 = objc_msgSend_copy(begin[v22], v18, v19, v20);
      v24 = v16[18];
      v25 = *(v24 + 8 * v22);
      *(v24 + 8 * v22) = v23;

      ++v22;
      begin = p_cells->__begin_;
    }

    while (v22 < p_cells->var0 - p_cells->__begin_);
  }

  return v16;
}

- (TSUViewCellRect)viewCellRect
{
  p_viewCellRect = &self->_viewCellRect;
  origin = self->_viewCellRect._rect.origin;
  size = p_viewCellRect->_rect.size;
  result._rect.size = size;
  result._rect.origin = origin;
  return result;
}

- (TSKUIDStructTract)cellUIDRange
{
  p_cellUIDRange = &self->_cellUIDRange;
  retstr->_colIdList.__end_ = 0;
  retstr->_colIdList.__cap_ = 0;
  retstr->_colIdList.__begin_ = 0;
  sub_221086EBC(retstr, self->_cellUIDRange._colIdList.__begin_, self->_cellUIDRange._colIdList.__end_, self->_cellUIDRange._colIdList.__end_ - self->_cellUIDRange._colIdList.__begin_);
  retstr->_rowIdList.__begin_ = 0;
  retstr->_rowIdList.__end_ = 0;
  retstr->_rowIdList.__cap_ = 0;
  return sub_221086EBC(&retstr->_rowIdList, p_cellUIDRange->_rowIdList.__begin_, p_cellUIDRange->_rowIdList.__end_, p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_);
}

- (void)setCellUIDRange:(TSKUIDStructTract *)range
{
  p_cellUIDRange = &self->_cellUIDRange;
  if (&self->_cellUIDRange != range)
  {
    sub_2210BD068(&self->_cellUIDRange, range->_colIdList.__begin_, range->_colIdList.__end_, range->_colIdList.__end_ - range->_colIdList.__begin_);
    begin = range->_rowIdList.__begin_;
    end = range->_rowIdList.__end_;

    sub_2210BD068(&p_cellUIDRange->_rowIdList, begin, end, (end - begin) >> 4);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 27) = 0;
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 30) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 33) = 0;
  *(self + 37) = 0;
  *(self + 38) = 0;
  *(self + 36) = 0;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  return self;
}

@end