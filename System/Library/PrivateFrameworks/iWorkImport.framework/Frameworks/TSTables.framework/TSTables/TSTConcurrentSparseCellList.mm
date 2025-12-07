@interface TSTConcurrentSparseCellList
- (TSTConcurrentSparseCellList)initWithContext:(id)context viewCellRect:(TSUViewCellRect)rect cellUIDRange:(TSKUIDStructTract *)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getCellAtUidOffset:(TSUColumnRowOffset)offset;
- (id)getCellAtViewCellCoord:(TSUViewCellCoord)coord;
- (void)addCell:(id)cell atUidOffset:(TSUColumnRowOffset)offset;
- (void)addCell:(id)cell atViewCellCoord:(TSUViewCellCoord)coord;
- (void)appendCellUIDRange:(TSKUIDStructTract *)range;
- (void)enumerateSeriallyByUidOffsetUsingBlock:(id)block;
- (void)p_accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock;
- (void)p_enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block;
- (void)p_invokeBlock:(id)block;
- (void)p_pruneCellsAtColumn:(unint64_t)column rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize;
- (void)p_pruneCellsAtRow:(unint64_t)row rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize;
@end

@implementation TSTConcurrentSparseCellList

- (TSTConcurrentSparseCellList)initWithContext:(id)context viewCellRect:(TSUViewCellRect)rect cellUIDRange:(TSKUIDStructTract *)range
{
  size = rect._rect.size;
  origin = rect._rect.origin;
  contextCopy = context;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_221086EBC(&v18, range->_colIdList.__begin_, range->_colIdList.__end_, range->_colIdList.__end_ - range->_colIdList.__begin_);
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_221086EBC(&__p, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
  v17.receiver = self;
  v17.super_class = TSTConcurrentSparseCellList;
  v13 = [(TSTConcurrentCellList *)&v17 initWithContext:contextCopy viewCellRect:origin cellUIDRange:size, &v18];
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v13)
  {
    v14 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v10, v11, v12);
    validCells = v13->_validCells;
    v13->_validCells = v14;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSTConcurrentSparseCellList;
  v4 = [(TSTConcurrentCellList *)&v11 copyWithZone:zone];
  v8 = objc_msgSend_mutableCopy(self->_validCells, v5, v6, v7);
  v9 = v4[46];
  v4[46] = v8;

  return v4;
}

- (void)addCell:(id)cell atViewCellCoord:(TSUViewCellCoord)coord
{
  cellCopy = cell;
  viewCellRect = self->super._viewCellRect;
  v19 = viewCellRect;
  v9 = (coord._coord.row - v19.origin.row) * TSUCellRect::numColumns(&viewCellRect) + (((*&coord & 0xFFFF00000000) - (*&v19.origin & 0xFFFF00000000)) >> 32);
  if (v9 >= (self->super._cellUIDRange._rowIdList.__end_ - self->super._cellUIDRange._rowIdList.__begin_) * (self->super._cellUIDRange._colIdList.__end_ - self->super._cellUIDRange._colIdList.__begin_) && v9 >= self->super._viewCellRect._rect.size.numberOfColumns * self->super._viewCellRect._rect.size.numberOfRows)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTConcurrentSparseCellList addCell:atViewCellCoord:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1848, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  objc_msgSend_addIndex_(self->_validCells, v7, v9, v8, v19);
  v20.receiver = self;
  v20.super_class = TSTConcurrentSparseCellList;
  [(TSTConcurrentCellList *)&v20 addCell:cellCopy atViewCellCoord:coord];
}

- (void)addCell:(id)cell atUidOffset:(TSUColumnRowOffset)offset
{
  cellCopy = cell;
  v7 = (self->super._cellUIDRange._colIdList.__end_ - self->super._cellUIDRange._colIdList.__begin_) * (*&offset >> 32) + offset.var0;
  objc_msgSend_addIndex_(self->_validCells, v8, v7, v9);
  v10.receiver = self;
  v10.super_class = TSTConcurrentSparseCellList;
  [(TSTConcurrentCellList *)&v10 addCell:cellCopy atIndex:v7];
}

- (id)getCellAtViewCellCoord:(TSUViewCellCoord)coord
{
  p_viewCellRect = &self->super._viewCellRect;
  viewCellRect = self->super._viewCellRect;
  v6 = *&viewCellRect.origin & 0xFFFF00000000;
  v7 = coord._coord.row - viewCellRect.origin.row;
  v10 = v7 * TSUCellRect::numColumns(&viewCellRect) + (((*&coord & 0xFFFF00000000) - v6) >> 32);
  if (v10 >= (self->super._cellUIDRange._rowIdList.__end_ - self->super._cellUIDRange._rowIdList.__begin_) * (self->super._cellUIDRange._colIdList.__end_ - self->super._cellUIDRange._colIdList.__begin_) && v10 >= p_viewCellRect->_rect.size.numberOfColumns * p_viewCellRect->_rect.size.numberOfRows)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTConcurrentSparseCellList getCellAtViewCellCoord:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1861, 0, "index should be somewhere in the in the cell list's area");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v22.receiver = self;
  v22.super_class = TSTConcurrentSparseCellList;
  v20 = [(TSTConcurrentCellList *)&v22 getCellAtViewCellCoord:coord];

  return v20;
}

- (id)getCellAtUidOffset:(TSUColumnRowOffset)offset
{
  v3 = (self->super._cellUIDRange._colIdList.__end_ - self->super._cellUIDRange._colIdList.__begin_) * offset.var1 + offset.var0;
  v6.receiver = self;
  v6.super_class = TSTConcurrentSparseCellList;
  v4 = [(TSTConcurrentCellList *)&v6 getCellAtIndex:v3];

  return v4;
}

- (void)enumerateSeriallyByUidOffsetUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22116B1C8;
  v7[3] = &unk_27845FEC8;
  v7[4] = self;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = TSTConcurrentSparseCellList;
  v5 = blockCopy;
  [(TSTConcurrentCellList *)&v6 enumerateSeriallyByIndexUsingBlock:v7];
}

- (void)appendCellUIDRange:(TSKUIDStructTract *)range
{
  p_cellUIDRange = &self->super._cellUIDRange;
  p_rowIdList = &self->super._cellUIDRange._rowIdList;
  if (self->super._cellUIDRange._rowIdList.__end_ == self->super._cellUIDRange._rowIdList.__begin_)
  {
    if (p_cellUIDRange != range)
    {
      sub_2210BD068(&self->super._cellUIDRange, range->_colIdList.__begin_, range->_colIdList.__end_, range->_colIdList.__end_ - range->_colIdList.__begin_);
      sub_2210BD068(p_rowIdList, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
    }

    v25 = (range->_rowIdList.__end_ - range->_rowIdList.__begin_) * (range->_colIdList.__end_ - range->_colIdList.__begin_);

    sub_2211389A0(&self->super._cells.__begin_, v25);
  }

  else
  {
    begin = p_cellUIDRange->_colIdList.__begin_;
    end = self->super._cellUIDRange._colIdList.__end_;
    v10 = end - p_cellUIDRange->_colIdList.__begin_;
    if (v10 != range->_colIdList.__end_ - range->_colIdList.__begin_)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], begin, "[TSTConcurrentSparseCellList appendCellUIDRange:]", v3);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1887, 0, "appending cellUIDRanges must have the same set of columns");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
      begin = p_cellUIDRange->_colIdList.__begin_;
      end = p_cellUIDRange->_colIdList.__end_;
      v10 = end - p_cellUIDRange->_colIdList.__begin_;
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    sub_221086EBC(&v33, begin, end, v10 >> 4);
    v30 = 0;
    __dst = 0;
    v32 = 0;
    sub_221086EBC(&v30, p_cellUIDRange->_rowIdList.__begin_, p_cellUIDRange->_rowIdList.__end_, p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_);
    sub_2210F0C88(&v30, __dst, range->_rowIdList.__begin_, range->_rowIdList.__end_, range->_rowIdList.__end_ - range->_rowIdList.__begin_);
    sub_2210BBBE8(__p, &v33, &v30);
    v20 = p_cellUIDRange->_colIdList.__begin_;
    if (p_cellUIDRange->_colIdList.__begin_)
    {
      p_cellUIDRange->_colIdList.__end_ = v20;
      operator delete(v20);
      p_cellUIDRange->_colIdList.__begin_ = 0;
      p_cellUIDRange->_colIdList.__end_ = 0;
      p_cellUIDRange->_colIdList.__cap_ = 0;
    }

    *&p_cellUIDRange->_colIdList.__begin_ = *__p;
    p_cellUIDRange->_colIdList.__cap_ = v27;
    __p[1] = 0;
    v27 = 0;
    __p[0] = 0;
    v21 = p_cellUIDRange->_rowIdList.__begin_;
    if (v21)
    {
      p_cellUIDRange->_rowIdList.__end_ = v21;
      operator delete(v21);
      *p_rowIdList = 0;
      p_rowIdList[1] = 0;
      p_rowIdList[2] = 0;
      v21 = __p[0];
    }

    v22 = v28;
    p_cellUIDRange->_rowIdList.__begin_ = v28;
    v23 = v29;
    *&p_cellUIDRange->_rowIdList.__end_ = v29;
    v29 = 0uLL;
    v28 = 0;
    if (v21)
    {
      __p[1] = v21;
      operator delete(v21);
      v22 = p_cellUIDRange->_rowIdList.__begin_;
      v24 = p_cellUIDRange->_rowIdList.__end_;
    }

    else
    {
      v24 = v23;
    }

    sub_2211389A0(&self->super._cells.__begin_, (v24 - v22) * (p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_));
    if (v30)
    {
      __dst = v30;
      operator delete(v30);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }
}

- (void)p_invokeBlock:(id)block
{
  v92[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v88 = blockCopy;
  p_cellUIDRange = &self->super._cellUIDRange;
  selfCopy = self;
  p_baseRows = &self->super._baseRows;
  v8 = self->super._baseRows.__end_ - self->super._baseRows.__begin_;
  v9 = self->super._cellUIDRange._rowIdList.__end_ - self->super._cellUIDRange._rowIdList.__begin_;
  v10 = 0x277D81000uLL;
  v11 = 0x277CCA000uLL;
  if (v8 != v9 >> 4)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTConcurrentSparseCellList p_invokeBlock:]", v6);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1905, 0, "baseRows size:%lu needs to match row uids size:%lu", p_baseRows->__end_ - p_baseRows->__begin_, p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_);

    blockCopy = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  p_baseColumns = &selfCopy->super._baseColumns;
  v21 = p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_;
  if (v21 != selfCopy->super._baseColumns.__end_ - selfCopy->super._baseColumns.__begin_)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTConcurrentSparseCellList p_invokeBlock:]", v6);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 1906, 0, "baseColumns size:%lu needs to match column uids size:%lu", p_baseColumns->__end_ - p_baseColumns->__begin_, p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_);

    blockCopy = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
    v21 = p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_;
  }

  p_cells = &selfCopy->super._cells;
  if ((p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_) * v21 != selfCopy->super._cells.var0 - selfCopy->super._cells.__begin_)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTConcurrentSparseCellList p_invokeBlock:]", v6);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 1907, 0, "cells size:%lu needs to match area range:%lu", p_cells->var0 - p_cells->__begin_, (p_cellUIDRange->_rowIdList.__end_ - p_cellUIDRange->_rowIdList.__begin_) * (p_cellUIDRange->_colIdList.__end_ - p_cellUIDRange->_colIdList.__begin_));

    blockCopy = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
  }

  v78[1] = v78;
  MEMORY[0x28223BE20](blockCopy);
  v82 = (v78 - v43);
  begin = p_baseRows->__begin_;
  if (p_baseRows->__end_ != p_baseRows->__begin_)
  {
    v45 = 0;
    v79 = v42 >> 1;
    p_viewRows = &selfCopy->super._viewRows;
    v85 = v88 + 16;
    do
    {
      row = begin[v45]._row;
      var0 = row;
      if (p_viewRows->__end_ != p_viewRows->__begin_)
      {
        var0 = p_viewRows->__begin_[v45].var0;
      }

      v48 = &p_cellUIDRange->_rowIdList.__begin_[v45];
      lower = v48->_lower;
      upper = v48->_upper;
      v90 = lower;
      if (var0 == 0x7FFFFFFF)
      {
        v50 = *(v10 + 336);
        v51 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v40, "[TSTConcurrentSparseCellList p_invokeBlock:]", v41);
        v54 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v53);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v55, v51, v54, 1919, 0, "only valid viewRowIndexes should remain");

        objc_msgSend_logBacktraceThrottled(*(v10 + 336), v56, v57, v58);
      }

      if (row == 0x7FFFFFFF)
      {
        v59 = *(v10 + 336);
        v60 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v40, "[TSTConcurrentSparseCellList p_invokeBlock:]", v41);
        v63 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v62);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v64, v60, v63, 1920, 0, "only valid baseRowIndexes should remain");

        objc_msgSend_logBacktraceThrottled(*(v10 + 336), v65, v66, v67);
      }

      v68 = p_cellUIDRange;
      v84 = v45;
      v69 = v45 * v79;
      v92[0] = v45 * v79;
      v92[1] = v79;
      Indexes_maxCount_inIndexRange = objc_msgSend_getIndexes_maxCount_inIndexRange_(selfCopy->_validCells, v40, v82, v79, v92);
      if (Indexes_maxCount_inIndexRange)
      {
        v71 = v82;
        p_viewColumns = &selfCopy->super._viewColumns;
        do
        {
          v74 = *v71++;
          v73 = v74;
          v75 = v74 - v69;
          column = p_baseColumns->__begin_[v74 - v69]._column;
          v77 = column;
          if (p_viewColumns->__end_ != p_viewColumns->__begin_)
          {
            v77 = p_viewColumns->__begin_[v75].var0;
          }

          memset(v91, 0, sizeof(v91));
          TSTMakeCellUID(v91);
          (*(v88 + 2))(v88, v91, var0 | (v77 << 32), row | (column << 32), p_cells->__begin_[v73]);
          --Indexes_maxCount_inIndexRange;
        }

        while (Indexes_maxCount_inIndexRange);
      }

      v45 = v84 + 1;
      begin = p_baseRows->__begin_;
      p_cellUIDRange = v68;
      v10 = 0x277D81000;
      v11 = 0x277CCA000;
    }

    while (v84 + 1 < (p_baseRows->__end_ - p_baseRows->__begin_));
  }
}

- (void)p_accumulateBordersConcurrentlyUsingBlock:(id)block accumulateCellsConcurrentlyUsingBlock:(id)usingBlock
{
  usingBlockCopy = usingBlock;
  blockCopy = block;
  v82[1] = *MEMORY[0x277D85DE8];
  v75 = 128;
  if (!self->super._tilesPerRow)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentSparseCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", usingBlock);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 1945, 0, "invalid nil value for '%{public}s'", "_tilesPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  v74 = 136;
  if (!self->super._rowInfosPerRow)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTConcurrentSparseCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", usingBlock);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 1946, 0, "invalid nil value for '%{public}s'", "_rowInfosPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_count(*(&self->super.super.super.isa + v75), a2, block, usingBlock);
  p_baseRows = &self->super._baseRows;
  if (v23 != self->super._baseRows.__end_ - self->super._baseRows.__begin_)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTConcurrentSparseCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v26);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 1947, 0, "_tilesPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
  }

  if (objc_msgSend_count(*(&self->super.super.super.isa + v74), v24, v25, v26) != p_baseRows->__end_ - p_baseRows->__begin_)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTConcurrentSparseCellList p_accumulateBordersConcurrentlyUsingBlock:accumulateCellsConcurrentlyUsingBlock:]", v37);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 1948, 0, "_rowInfosPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
  }

  sub_2211389A0(&self->super._oldCells.__begin_, self->super._cells.var0 - self->super._cells.__begin_);
  p_baseColumns = &self->super._baseColumns;
  MEMORY[0x28223BE20](v47);
  v49 = &v68 - v48;
  v73 = v50;
  sub_22116D394(v81, v50);
  v53 = 0x27CFB0000uLL;
  if (p_baseRows->__end_ == p_baseRows->__begin_)
  {
    v60 = 368;
  }

  else
  {
    v54 = 0;
    v69 = blockCopy + 16;
    v68 = (usingBlockCopy + 2);
    do
    {
      v77 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.super.isa + v75), v51, v54, v52, v68, v69);
      v57 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.super.isa + v74), v55, v54, v56);
      v58 = v54 * v73;
      v80[0] = v54 * v73;
      v80[1] = v73;
      v59 = v53;
      v60 = *(v53 + 2320);
      Indexes_maxCount_inIndexRange = objc_msgSend_getIndexes_maxCount_inIndexRange_(*(&self->super.super.super.isa + v60), v61, v49, v73, v80);
      v63 = Indexes_maxCount_inIndexRange;
      if (Indexes_maxCount_inIndexRange)
      {
        v64 = 0;
        begin = p_baseColumns->__begin_;
        v66 = v81[0];
        do
        {
          v66[v64] = begin[*&v49[8 * v64] - v58]._column;
          ++v64;
        }

        while (Indexes_maxCount_inIndexRange != v64);
        (*(blockCopy + 2))(v79);
        usingBlockCopy[2](v78);
        v67 = 0;
        do
        {
          objc_storeStrong(&self->super._oldCells.__begin_[*&v49[8 * v67]], v78[0][v67]);
          ++v67;
        }

        while (v63 != v67);
        v82[0] = v78;
        sub_22107C2C0(v82);
        v78[0] = v79;
        sub_22107C2C0(v78);
      }

      ++v54;
      v53 = v59;
    }

    while (v54 < p_baseRows->__end_ - p_baseRows->__begin_);
  }

  objc_msgSend_p_setupInterestingCells_interestingCellIndexes_forAdding_(self, v51, &self->super._oldCells, *(&self->super.super.super.isa + v60), 0);
  if (v81[0])
  {
    v81[1] = v81[0];
    operator delete(v81[0]);
  }
}

- (void)p_enumerateRowsOfCellsConcurrentlyUsingBlock:(id)block
{
  v98[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v88 = 136;
  rowInfosPerRow = self->super._rowInfosPerRow;
  if (!rowInfosPerRow)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTConcurrentSparseCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1989, 0, "invalid nil value for '%{public}s'", "_rowInfosPerRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    rowInfosPerRow = *(&self->super.super.super.isa + v88);
  }

  p_baseRows = &self->super._baseRows;
  if (objc_msgSend_count(rowInfosPerRow, v4, v5, v6) != self->super._baseRows.__end_ - self->super._baseRows.__begin_)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTConcurrentSparseCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 1990, 0, "_rowInfosPerRow size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  p_cells = &self->super._cells;
  if (self->super._oldCells.var0 - self->super._oldCells.__begin_ != self->super._cells.var0 - self->super._cells.__begin_)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTConcurrentSparseCellList p_enumerateRowsOfCellsConcurrentlyUsingBlock:]", v18);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 1991, 0, "_oldCells size mismatch in cellList");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  v38 = p_baseRows->__end_ - p_baseRows->__begin_;
  v87 = 264;
  sub_2211687C4(&self->super._cellCountDiffsPerRow.__begin_, v38);
  p_baseColumns = &self->super._baseColumns;
  v40 = self->super._baseColumns.__end_ - self->super._baseColumns.__begin_;
  v82 = 288;
  sub_2211576E4(&self->super._cellCountDiffsPerColumn.__begin_, v40);
  v81[0] = v81;
  MEMORY[0x28223BE20](v41);
  v46 = v81 - v45;
  if (p_baseRows->__end_ != p_baseRows->__begin_)
  {
    v47 = 0;
    v86 = v44 >> 1;
    v81[1] = blockCopy + 2;
    v84 = v81 - v45;
    selfCopy = self;
    while (1)
    {
      v48 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.super.super.isa + v88), v42, v47, v43);
      v90 = v47;
      v91 = v48;
      memset(v98, 0, 24);
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v49 = v47 * v86;
      v94[0] = v47 * v86;
      v94[1] = v86;
      Indexes_maxCount_inIndexRange = objc_msgSend_getIndexes_maxCount_inIndexRange_(self->_validCells, v50, v46, v86, v94);
      v52 = v46;
      v53 = Indexes_maxCount_inIndexRange;
      if (Indexes_maxCount_inIndexRange)
      {
        do
        {
          v54 = *v52++;
          sub_22116A130(v98, &p_cells->__begin_[v54]);
          v55 = v54 - v49;
          begin = p_baseColumns->__begin_;
          v57 = v96;
          if (v96 >= v97)
          {
            v59 = v95;
            v60 = v96 - v95;
            v61 = (v96 - v95) >> 1;
            if (v61 <= -2)
            {
              sub_22107C148();
            }

            if (v97 - v95 <= v61 + 1)
            {
              v62 = v61 + 1;
            }

            else
            {
              v62 = v97 - v95;
            }

            v63 = 0x7FFFFFFFFFFFFFFFLL;
            if (v97 - v95 < 0x7FFFFFFFFFFFFFFELL)
            {
              v63 = v62;
            }

            if (v63)
            {
              sub_22115DB94(&v95, v63);
            }

            v64 = (2 * v61);
            column = begin[v55]._column;
            v66 = &v64[-((v96 - v95) >> 1)];
            *v64 = column;
            v58 = (v64 + 1);
            memcpy(v66, v59, v60);
            v67 = v95;
            v95 = v66;
            v96 = v58;
            v97 = 0;
            if (v67)
            {
              operator delete(v67);
            }
          }

          else
          {
            *v96 = begin[v55];
            v58 = (v57 + 2);
          }

          v96 = v58;
          --v53;
        }

        while (v53);
      }

      else
      {
        v58 = v96;
      }

      if (v95 == v58)
      {
        v69 = 0;
        v73 = 0;
        v46 = v84;
        self = selfCopy;
        v68 = v91;
      }

      else
      {
        v68 = v91;
        blockCopy[2](&v92);
        v69 = v92;
        v46 = v84;
        self = selfCopy;
        if (v92 == v93)
        {
          v73 = 0;
        }

        else
        {
          v70 = 0;
          v71 = v92;
          do
          {
            v72 = *v71;
            v71 += 2;
            v70 += v72;
          }

          while (v71 != v93);
          v73 = v70;
        }
      }

      v92 = v73;
      sub_2211531C0((&self->super.super.super.isa + v87), &v92);
      if (Indexes_maxCount_inIndexRange)
      {
        break;
      }

      if (v69)
      {
        goto LABEL_37;
      }

LABEL_38:
      v80 = v90;
      if (v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      v95 = v98;
      sub_22107C2C0(&v95);

      v47 = v80 + 1;
      if (v47 >= p_baseRows->__end_ - p_baseRows->__begin_)
      {
        goto LABEL_41;
      }
    }

    v74 = *(&self->super.super.super.isa + v82);
    v75 = v69;
    v76 = v46;
    do
    {
      v78 = *v76++;
      v77 = v78;
      v79 = *v75++;
      *(v74 + 8 * (v77 - v49)) += v79;
      --Indexes_maxCount_inIndexRange;
    }

    while (Indexes_maxCount_inIndexRange);
LABEL_37:
    operator delete(v69);
    goto LABEL_38;
  }

LABEL_41:
}

- (void)p_pruneCellsAtRow:(unint64_t)row rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize
{
  objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_validCells, a2, columnsSize + columnsSize * row, -columnsSize);
  v9.receiver = self;
  v9.super_class = TSTConcurrentSparseCellList;
  [(TSTConcurrentCellList *)&v9 p_pruneCellsAtRow:row rowsSize:size columnsSize:columnsSize];
}

- (void)p_pruneCellsAtColumn:(unint64_t)column rowsSize:(unint64_t)size columnsSize:(unint64_t)columnsSize
{
  if (size)
  {
    v9 = column + columnsSize * (size - 1) + 1;
    sizeCopy = size;
    do
    {
      objc_msgSend_shiftIndexesStartingAtIndex_by_(self->_validCells, a2, v9, -1);
      v9 -= columnsSize;
      --sizeCopy;
    }

    while (sizeCopy);
  }

  v11.receiver = self;
  v11.super_class = TSTConcurrentSparseCellList;
  [(TSTConcurrentCellList *)&v11 p_pruneCellsAtColumn:column rowsSize:size columnsSize:columnsSize];
}

@end