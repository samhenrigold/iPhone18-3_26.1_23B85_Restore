@interface TSTWidthHeightCache
- (BOOL)p_insertColumns:(unsigned int)columns atColumn:(unsigned __int16)column;
- (BOOL)p_insertRows:(unsigned int)rows atRow:(unsigned int)row;
- (TSTWidthHeightCache)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTWidthHeightCache)initWithNumRows:(unsigned int)rows andNumColumns:(unsigned int)columns;
- (double)getFitHeightForRow:(unsigned int)row;
- (double)getModelHeightForRow:(unsigned int)row;
- (double)getModelWidthForColumn:(unsigned __int16)column;
- (id).cxx_construct;
- (id)columnToWidthMapFromCollectionArray:(id)array;
- (id)p_deleteColumnsStartingWith:(unsigned __int16)with upToColumn:(unsigned __int16)column;
- (id)p_resetFittingHeightsForRange:(TSUCellRect)range;
- (id)validateChangeDescriptors:(id)descriptors tableInfo:(id)info numberOfRows:(unsigned int)rows numberOfColumns:(unsigned __int16)columns;
- (id)validateRowsNeedingFittingInfo:(id)info validationRegion:(id)region layoutEngine:(id)engine;
- (void)dealloc;
- (void)finalizeLayoutPassWithRowsNeedingFittingInfo:(id)info;
- (void)getFitHeight:(double *)height andModelHeight:(double *)modelHeight forRow:(unsigned int)row;
- (void)p_deleteRowsStartingWith:(unsigned int)with upToRow:(unsigned int)row;
- (void)p_moveColumnsFrom:(TSUCellRect)from toColumn:(unsigned __int16)column;
- (void)p_moveRowsFrom:(TSUCellRect)from toRow:(unsigned int)row;
- (void)p_moveRowsUsingShuffleMapping:(id)mapping;
- (void)p_resetToRows:(unsigned int)rows andNumColumns:(unsigned int)columns;
- (void)p_setFittingHeightsFromCollectionWithLock:(id)lock;
- (void)resetFittingRowHeightsStartingWith:(unsigned int)with upToRow:(unsigned int)row;
- (void)resetModelCache;
- (void)resetModelCacheRange:(TSUCellRect)range;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setFitHeight:(double)height forCellID:(TSUCellCoord)d;
- (void)setFittingHeightsFromCollection:(id)collection;
- (void)setFittingHeightsFromCollectionArray:(id)array;
- (void)setModelHeight:(double)height forRow:(unsigned int)row;
- (void)setModelWidth:(double)width forColumn:(unsigned __int16)column;
- (void)willModifyIfNeeded:(id)needed;
- (void)willModifyIfPossible:(id)possible;
@end

@implementation TSTWidthHeightCache

- (TSTWidthHeightCache)initWithNumRows:(unsigned int)rows andNumColumns:(unsigned int)columns
{
  v4 = *&columns;
  v5 = *&rows;
  v10.receiver = self;
  v10.super_class = TSTWidthHeightCache;
  v6 = [(TSTWidthHeightCache *)&v10 init];
  v7 = v6;
  if (v6)
  {
    pthread_rwlock_init(&v6->_lock, 0);
    objc_msgSend_p_resetToRows_andNumColumns_(v7, v8, v5, v4);
  }

  return v7;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = TSTWidthHeightCache;
  [(TSTWidthHeightCache *)&v3 dealloc];
}

- (void)p_resetToRows:(unsigned int)rows andNumColumns:(unsigned int)columns
{
  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_columnModelWidths.__begin_;
  self->_rowHeights.__end_ = self->_rowHeights.__begin_;
  self->_columnModelWidths.__end_ = begin;
  sub_2213DD238(v8);
  sub_2213D9A9C(&self->_rowHeights.__begin_, rows, v8);
  v8[0] = 0;
  sub_2213A1E8C(&self->_columnModelWidths.__begin_, columns, v8);
  pthread_rwlock_unlock(&self->_lock);
}

- (void)setFitHeight:(double)height forCellID:(TSUCellCoord)d
{
  column = d.column;
  row = d.row;
  if (d.row != 0x7FFFFFFFLL && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    pthread_rwlock_wrlock(&self->_lock);
    begin = self->_rowHeights.__begin_;
    if (row < 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3))
    {
      sub_2213DD4E4(begin + 72 * row + 8, column, height);
    }

    pthread_rwlock_unlock(&self->_lock);
  }
}

- (void)p_setFittingHeightsFromCollectionWithLock:(id)lock
{
  lockCopy = lock;
  if (objc_msgSend_hasWorkItems(lockCopy, v5, v6, v7))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2213D9C50;
    v10[3] = &unk_278464750;
    v10[4] = self;
    objc_msgSend_enumerateFittingHeightsUsingBlock_(lockCopy, v8, v10, v9);
  }
}

- (void)setFittingHeightsFromCollection:(id)collection
{
  collectionCopy = collection;
  if (objc_msgSend_hasWorkItems(collectionCopy, v4, v5, v6))
  {
    pthread_rwlock_wrlock(&self->_lock);
    objc_msgSend_p_setFittingHeightsFromCollectionWithLock_(self, v7, collectionCopy, v8);
    pthread_rwlock_unlock(&self->_lock);
  }
}

- (void)setFittingHeightsFromCollectionArray:(id)array
{
  v17 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  pthread_rwlock_wrlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = arrayCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_p_setFittingHeightsFromCollectionWithLock_(self, v7, *(*(&v12 + 1) + 8 * v11++), v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (id)columnToWidthMapFromCollectionArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v7 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v4, v5, v6);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = arrayCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = sub_2213DA044;
        v18[3] = &unk_278464778;
        v19 = v7;
        objc_msgSend_enumerateFittingWidthsUsingBlock_(v13, v14, v18, v15);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v20, v24, 16);
    }

    while (v10);
  }

  return v7;
}

- (double)getFitHeightForRow:(unsigned int)row
{
  pthread_rwlock_rdlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v6 = 0.0;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) > row)
  {
    v7 = &begin[72 * row];
    v6 = 8.0;
    if (!*(v7 + 5))
    {
      v6 = v7[1];
    }
  }

  pthread_rwlock_unlock(&self->_lock);
  return v6;
}

- (void)setModelWidth:(double)width forColumn:(unsigned __int16)column
{
  columnCopy = column;
  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_columnModelWidths.__begin_;
  if (columnCopy < (self->_columnModelWidths.__end_ - begin))
  {
    begin[columnCopy] = width;
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (void)setModelHeight:(double)height forRow:(unsigned int)row
{
  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) > row)
  {
    begin[9 * row] = height;
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (void)resetModelCache
{
  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v4 = self->_rowHeights.__end_ - begin;
  if (v4)
  {
    v5 = 0x8E38E38E38E38E39 * (v4 >> 3);
    v6 = 1;
    do
    {
      *begin = 0;
      begin += 9;
      v7 = v5 > v6++;
    }

    while (v7);
  }

  v8 = self->_columnModelWidths.__begin_;
  v9 = self->_columnModelWidths.__end_ - v8;
  if (v9)
  {
    v10 = v9 >> 3;
    v11 = 1;
    do
    {
      *v8++ = 0.0;
      v7 = v10 > v11++;
    }

    while (v7);
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (void)resetModelCacheRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  pthread_rwlock_wrlock(&self->_lock);
  v6 = (*&origin & 0xFFFF00000000) != 0x7FFF00000000 && origin.row == 0x7FFFFFFF;
  if (v6)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  begin = self->_rowHeights.__begin_;
  v9 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3);
  if (v9 > row)
  {
    if (HIDWORD(*&size))
    {
      v10 = origin.row == 0x7FFFFFFF;
    }

    else
    {
      v10 = 1;
    }

    v11 = size.numberOfRows + origin.row;
    if (v10)
    {
      v11 = 0x80000000;
    }

    if (v11 >= v9)
    {
      v11 = 954437177 * ((self->_rowHeights.__end_ - begin) >> 3);
    }

    v12 = 9 * row;
    v13 = &begin[72 * row];
    v14 = &begin[72 * v11];
    if (v13 < v14)
    {
      v15 = 0;
      v16 = 8 * v12;
      if (v14 <= (v13 + 72))
      {
        v14 = (v13 + 72);
      }

      v17 = (v14 - 72);
      v18 = &begin[v16];
      if (v17 != v13)
      {
        ++v18;
      }

      v19 = v17 - v18;
      if (v17 == v13)
      {
        v20 = v13;
      }

      else
      {
        v20 = v13 + 1;
      }

      v21 = v19 / 0x48;
      if (v17 != v13)
      {
        ++v21;
      }

      v6 = v17 == v13;
      v22 = (v17 - v20) / 0x48uLL;
      if (!v6)
      {
        ++v22;
      }

      v23 = vdupq_n_s64(v22);
      v24 = (v21 + 2) & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v15), xmmword_2217E0F60)));
        if (v25.i8[0])
        {
          *v13 = 0;
        }

        if (v25.i8[4])
        {
          *(v13 + 9) = 0;
        }

        v15 += 2;
        v13 += 144;
      }

      while (v24 != v15);
    }
  }

  if (origin.row != 0x7FFFFFFFLL && (*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    column = 0;
  }

  else
  {
    column = origin.column;
  }

  v28 = self->_columnModelWidths.__begin_;
  v29 = self->_columnModelWidths.__end_ - v28;
  if (column < v29 >> 3)
  {
    v30 = v29 >> 3;
    if (size.numberOfColumns)
    {
      v31 = origin.column == 0x7FFF;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      v32 = 0x8000;
    }

    else
    {
      v32 = (LOWORD(size.numberOfColumns) + origin.column - 1) + 1;
    }

    if (v32 >= v30)
    {
      v32 = v30;
    }

    v33 = &v28[column];
    v34 = &v28[v32];
    if (v33 < v34)
    {
      if (v34 <= v33 + 8)
      {
        v34 = v33 + 8;
      }

      bzero(v33, ((v34 + ~v33) & 0xFFFFFFFFFFFFFFF8) + 8);
    }
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (double)getModelHeightForRow:(unsigned int)row
{
  pthread_rwlock_rdlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v6 = 0.0;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) > row)
  {
    v6 = begin[9 * row];
  }

  pthread_rwlock_unlock(&self->_lock);
  return v6;
}

- (double)getModelWidthForColumn:(unsigned __int16)column
{
  columnCopy = column;
  pthread_rwlock_rdlock(&self->_lock);
  begin = self->_columnModelWidths.__begin_;
  v6 = 0.0;
  if (columnCopy < (self->_columnModelWidths.__end_ - begin))
  {
    v6 = begin[columnCopy];
  }

  pthread_rwlock_unlock(&self->_lock);
  return v6;
}

- (void)getFitHeight:(double *)height andModelHeight:(double *)modelHeight forRow:(unsigned int)row
{
  pthread_rwlock_rdlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v10 = 0.0;
  v11 = 0;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) > row)
  {
    v12 = &begin[72 * row];
    v11 = *v12;
    v10 = 8.0;
    if (!*(v12 + 5))
    {
      v10 = v12[1];
    }
  }

  pthread_rwlock_unlock(&self->_lock);
  if (height)
  {
    *height = v10;
  }

  if (modelHeight)
  {
    *modelHeight = v11;
  }
}

- (id)p_deleteColumnsStartingWith:(unsigned __int16)with upToColumn:(unsigned __int16)column
{
  if (with >= column)
  {
    v7 = 0;
  }

  else
  {
    columnCopy = column;
    withCopy = with;
    v7 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, with, column);
    pthread_rwlock_wrlock(&self->_lock);
    begin = self->_columnModelWidths.__begin_;
    end = self->_columnModelWidths.__end_;
    v10 = (end - begin) >> 3;
    if (v10 >= withCopy)
    {
      v11 = withCopy;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= columnCopy)
    {
      v12 = columnCopy;
    }

    else
    {
      v12 = v10;
    }

    if (v11 < v12)
    {
      v13 = v12 - v11;
      v14 = &begin[v11];
      v15 = &v14[v13];
      v16 = end - v15;
      if (end != v15)
      {
        memmove(&begin[v11], v15, end - v15);
      }

      self->_columnModelWidths.__end_ = (v14 + v16);
      v17 = self->_rowHeights.__begin_;
      if (self->_rowHeights.__end_ != v17)
      {
        v18 = 0;
        v19 = 1;
        do
        {
          if (sub_2213DA858(v17 + 72 * v18 + 8, v11, v13))
          {
            objc_msgSend_addIndex_(v7, v20, v18, v21);
          }

          v18 = v19;
          v17 = self->_rowHeights.__begin_;
        }

        while (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - v17) >> 3) > v19++);
      }
    }

    pthread_rwlock_unlock(&self->_lock);
  }

  return v7;
}

- (void)p_deleteRowsStartingWith:(unsigned int)with upToRow:(unsigned int)row
{
  if (with < row)
  {
    pthread_rwlock_wrlock(&self->_lock);
    begin = self->_rowHeights.__begin_;
    end = self->_rowHeights.__end_;
    v10 = 954437177 * ((end - begin) >> 3);
    if (v10 > with)
    {
      v11 = &begin[72 * with];
      if (v10 >= row)
      {
        rowCopy = row;
      }

      else
      {
        rowCopy = v10;
      }

      v13 = &v11[72 * (rowCopy - with)];
      v14 = end - v13;
      if (end != v13)
      {
        memmove(v11, v13, end - v13);
      }

      self->_rowHeights.__end_ = &v11[v14];
    }

    pthread_rwlock_unlock(&self->_lock);
  }
}

- (BOOL)p_insertColumns:(unsigned int)columns atColumn:(unsigned __int16)column
{
  LODWORD(v4) = column;
  LODWORD(v5) = columns;
  if (column + columns >= 0x3E9)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_insertColumns:atColumn:]", column);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 671, 0, "attempt to insert column range beyond column width cache max columns; truncating");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (v4 >= 0x3E7)
  {
    v4 = 999;
  }

  else
  {
    v4 = v4;
  }

  if (1000 - v4 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = (1000 - v4);
  }

  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_columnModelWidths.__begin_;
  p_columnModelWidths = &self->_columnModelWidths;
  if (v4 <= self->_columnModelWidths.__end_ - begin)
  {
    v27 = 0;
    sub_2213DAB48(p_columnModelWidths, &begin[v4], v5, &v27);
  }

  else
  {
    v27 = 0;
    sub_2213A1E8C(p_columnModelWidths, (v5 + v4), &v27);
  }

  v19 = self->_rowHeights.__begin_;
  end = self->_rowHeights.__end_;
  v20 = end - v19;
  if (end != v19)
  {
    v21 = 0;
    v22 = 0x8E38E38E38E38E39 * (v20 >> 3);
    v23 = v19 + 16;
    do
    {
      for (i = 0; i != 64; i += 16)
      {
        v25 = *&v23[i];
        if (v25 >= v4)
        {
          *&v23[i] = v25 + v5;
        }
      }

      ++v21;
      v23 += 72;
    }

    while (v22 > v21);
  }

  pthread_rwlock_unlock(&self->_lock);
  return 1;
}

- (BOOL)p_insertRows:(unsigned int)rows atRow:(unsigned int)row
{
  if (row + rows >= 0xF4241)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_insertRows:atRow:]", *&row);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 697, 0, "attempt to insert row range beyond row height cache max rows; truncating");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (row >= 0xF423F)
  {
    rowCopy = 999999;
  }

  else
  {
    rowCopy = row;
  }

  if (1000000 - rowCopy >= rows)
  {
    rowsCopy = rows;
  }

  else
  {
    rowsCopy = (1000000 - rowCopy);
  }

  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) >= rowCopy)
  {
    v19 = &begin[72 * rowCopy];
    sub_2213DD238(v21);
    sub_2213DAF88(&self->_rowHeights.__begin_, v19, rowsCopy, v21);
  }

  else
  {
    sub_2213DD238(v21);
    sub_2213D9A9C(&self->_rowHeights.__begin_, (rowsCopy + rowCopy), v21);
  }

  pthread_rwlock_unlock(&self->_lock);
  return 1;
}

- (void)p_moveRowsFrom:(TSUCellRect)from toRow:(unsigned int)row
{
  row = from.origin.row;
  if (from.origin.row != row)
  {
    numberOfRows = from.size.numberOfRows;
    v7 = from.size.numberOfRows + from.origin.row;
    if (from.size.numberOfRows + from.origin.row != row)
    {
      if (from.origin.row <= row && v7 >= row)
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveRowsFrom:toRow:]", *&from.size);
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v12);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 727, 0, "destination cannot be within the source range.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
      }

      if (v7 >= 0xF4241)
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveRowsFrom:toRow:]", *&from.size);
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v21);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 728, 0, "src range for move exceeds max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
      }

      if (row >= 0xF4241)
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveRowsFrom:toRow:]", *&from.size);
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v30);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 729, 0, "dest range for move exceeds max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
      }

      pthread_rwlock_wrlock(&self->_lock);
      if (v7 <= row)
      {
        rowCopy = row;
      }

      else
      {
        rowCopy = v7;
      }

      begin = self->_rowHeights.__begin_;
      p_rowHeights = &self->_rowHeights;
      if (0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3) < rowCopy)
      {
        sub_2213DD238(&v45);
        sub_2213D9A9C(&self->_rowHeights.__begin_, rowCopy, &v45);
        begin = p_rowHeights->__begin_;
      }

      rowCopy2 = row;
      v40 = 9 * row;
      v41 = &begin[72 * row];
      v42 = &v41[72 * numberOfRows];
      v45 = 0;
      v46 = 0;
      v47 = 0;
      sub_2213DD5AC(&v45, v41, v42, numberOfRows);
      v43 = &begin[72 * row];
      if (v43 <= v42)
      {
        if (rowCopy2 != row)
        {
          memmove(&v42[-(8 * v40 - 72 * row)], v43, 8 * v40 - 72 * row);
        }
      }

      else
      {
        memmove(v41, &v41[72 * numberOfRows], v43 - v42);
        v43 = p_rowHeights->__begin_ + 72 * (row - numberOfRows);
      }

      v44 = v45;
      if (v46 != v45)
      {
        memmove(v43, v45, v46 - v45);
        v44 = v45;
      }

      if (v44)
      {
        v46 = v44;
        operator delete(v44);
      }

      pthread_rwlock_unlock(&self->_lock);
    }
  }
}

- (void)p_moveColumnsFrom:(TSUCellRect)from toColumn:(unsigned __int16)column
{
  column = from.origin.column;
  if (from.origin.column != column)
  {
    columnCopy = column;
    numberOfColumns = from.size.numberOfColumns;
    v7 = from.origin.column + from.size.numberOfColumns;
    if (v7 != column)
    {
      origin = from.origin;
      if (from.origin.column <= column && v7 >= column)
      {
        v10 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveColumnsFrom:toColumn:]", *&from.size);
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v13);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 777, 0, "destination cannot be within the source range.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
      }

      if (v7 >= 0x3E9)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveColumnsFrom:toColumn:]", *&from.size);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 778, 0, "src range for move exceeds max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
      }

      if (columnCopy >= 0x3E9)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache p_moveColumnsFrom:toColumn:]", *&from.size);
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v31);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 779, 0, "dest range for move exceeds max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
      }

      v37 = HIDWORD(*&origin);
      pthread_rwlock_wrlock(&self->_lock);
      if (v7 <= columnCopy)
      {
        v38 = columnCopy;
      }

      else
      {
        v38 = v7;
      }

      begin = self->_columnModelWidths.__begin_;
      p_columnModelWidths = &self->_columnModelWidths;
      if (v38 > self->_columnModelWidths.__end_ - begin)
      {
        __p = 0;
        sub_2213A1E8C(&self->_columnModelWidths.__begin_, v38, &__p);
        begin = p_columnModelWidths->__begin_;
      }

      v41 = 8 * v37;
      v42 = &begin[v41 / 8];
      v43 = &begin[v41 / 8 + numberOfColumns];
      __p = 0;
      v50 = 0;
      v51 = 0;
      sub_2212A41CC(&__p, &begin[v41 / 8], v43, numberOfColumns);
      v44 = &begin[columnCopy];
      if (v42 >= v44)
      {
        v45 = 8 * columnCopy;
        if (v41 != v45)
        {
          memmove(&v43[-(v41 - v45)], v44, v41 - v45);
        }
      }

      else
      {
        if (v44 != v43)
        {
          memmove(v42, v43, v44 - v43);
        }

        v44 = &p_columnModelWidths->__begin_[columnCopy - numberOfColumns];
      }

      if (v50 != __p)
      {
        memmove(v44, __p, v50 - __p);
      }

      v46 = self->_rowHeights.__begin_;
      end = self->_rowHeights.__end_;
      while (v46 != end)
      {
        for (i = 8; i != 72; i += 16)
        {
          sub_2213DD770(&v46[i], column, numberOfColumns, columnCopy);
        }

        v46 += 72;
      }

      if (__p)
      {
        v50 = __p;
        operator delete(__p);
      }

      pthread_rwlock_unlock(&self->_lock);
    }
  }
}

- (void)p_moveRowsUsingShuffleMapping:(id)mapping
{
  mappingCopy = mapping;
  pthread_rwlock_wrlock(&self->_lock);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0x7FFFFFFF;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x7812000000;
  v8[3] = sub_2213DB9E4;
  v8[4] = nullsub_60;
  v8[5] = &unk_22188E88F;
  sub_2213DD238(&v9);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2213DBA0C;
  v7[3] = &unk_2784647A0;
  v7[4] = self;
  v7[5] = v10;
  v7[6] = v8;
  objc_msgSend_enumerateMappingFollowingSwapsUsingBlock_(mappingCopy, v5, v7, v6);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
  pthread_rwlock_unlock(&self->_lock);
}

- (void)resetFittingRowHeightsStartingWith:(unsigned int)with upToRow:(unsigned int)row
{
  if (with > row)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTWidthHeightCache resetFittingRowHeightsStartingWith:upToRow:]", *&row);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 853, 0, "startRow should be before endRow");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  pthread_rwlock_wrlock(&self->_lock);
  begin = self->_rowHeights.__begin_;
  v17 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3);
  if (v17 > with)
  {
    rowCopy = v17 - 1;
    if (rowCopy >= row)
    {
      rowCopy = row;
    }

    v19 = &begin[72 * rowCopy + 72];
    for (i = &begin[72 * with]; i < v19; i += 72)
    {
      for (j = 0; j != 4; ++j)
      {
        v22 = &v27[j];
        *v22 = 0;
        v22[1] = 0x17FFFFFFFLL;
      }

      for (k = 0; k != 4; ++k)
      {
        v24 = &v27[k];
        *v24 = 0;
        v24[1] = 0x17FFFFFFFLL;
      }

      v25 = v27[1];
      *(i + 8) = v27[0];
      *(i + 24) = v25;
      v26 = v27[3];
      *(i + 40) = v27[2];
      *(i + 56) = v26;
    }
  }

  pthread_rwlock_unlock(&self->_lock);
}

- (id)p_resetFittingHeightsForRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, *&range.origin, *&range.size, *&range.origin, *&range.size);
  pthread_rwlock_wrlock(&self->_lock);
  v7 = origin.row == 0x7FFFFFFF;
  if (v7 && (*&origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    row = 0;
  }

  else
  {
    row = origin.row;
  }

  if (!HIDWORD(*&size))
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = origin.row + size.numberOfRows - 1;
  }

  v10 = TSUCellRect::columns(&v21);
  v12 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - self->_rowHeights.__begin_) >> 3);
  if (v12 > row)
  {
    v13 = v12 - 1;
    if (v9 < v13)
    {
      v13 = v9;
    }

    if (row < v13 + 1)
    {
      v14 = v10;
      v15 = v11;
      v16 = 72 * row + 8;
      v17 = v13 - row + 1;
      do
      {
        if (sub_2213DD7D8(self->_rowHeights.__begin_ + v16, v14, v15, 2))
        {
          objc_msgSend_addIndex_(v6, v18, row, v19);
        }

        ++row;
        v16 += 72;
        --v17;
      }

      while (v17);
    }
  }

  pthread_rwlock_unlock(&self->_lock);

  return v6;
}

- (id)validateChangeDescriptors:(id)descriptors tableInfo:(id)info numberOfRows:(unsigned int)rows numberOfColumns:(unsigned __int16)columns
{
  v99 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  infoCopy = info;
  objc_msgSend_willModifyIfPossible_(self, v8, infoCopy, v9);
  v13 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v10, v11, v12);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = descriptorsCopy;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v94, v98, 16);
  if (v18)
  {
    v19 = *v95;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v95 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v94 + 1) + 8 * i);
        v22 = objc_msgSend_changeDescriptor(v21, v15, v16, v17);
        v26 = objc_msgSend_cellID(v21, v23, v24, v25);
        if (v22 <= 22)
        {
          if (v22 == 2)
          {
            continue;
          }

          if (v22 != 3)
          {
            if (v22 == 4)
            {
              objc_msgSend_hasBeforeAfterCounts(v21, v15, v16, v17);
              v39 = objc_msgSend_cellRegion(v21, v36, v37, v38);
              v87[0] = MEMORY[0x277D85DD0];
              v87[1] = 3221225472;
              v87[2] = sub_2213DC538;
              v87[3] = &unk_27845E1D0;
              v87[4] = self;
              objc_msgSend_enumerateColumnRangesUsingBlock_(v39, v40, v87, v41);

              objc_msgSend_hasBeforeAfterCounts(v21, v42, v43, v44);
              continue;
            }

LABEL_17:
            v54 = objc_msgSend_cellRegion(v21, v15, v16, v17);
            v83[0] = MEMORY[0x277D85DD0];
            v83[1] = 3221225472;
            v83[2] = sub_2213DC544;
            v83[3] = &unk_2784647C8;
            v85 = v22;
            v83[4] = self;
            v86 = v26;
            v84 = v13;
            objc_msgSend_enumerateCellRangesUsingBlock_(v54, v55, v83, v56);

            continue;
          }

          objc_msgSend_hasBeforeAfterCounts(v21, v15, v16, v17);
          v73 = objc_msgSend_cellRegion(v21, v70, v71, v72);
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = sub_2213DC4B8;
          v88[3] = &unk_27845EBE8;
          v88[4] = self;
          v89 = v13;
          objc_msgSend_enumerateColumnRangesInReverseUsingBlock_(v73, v74, v88, v75);

          objc_msgSend_hasBeforeAfterCounts(v21, v76, v77, v78);
        }

        else if (v22 > 24)
        {
          if (v22 != 25)
          {
            if (v22 == 28)
            {
              v45 = objc_msgSend_shuffleMapping(v21, v15, v16, v17);
              objc_msgSend_p_moveRowsUsingShuffleMapping_(self, v46, v45, v47);

              v51 = objc_msgSend_shuffleMapping(v21, v48, v49, v50);
              objc_msgSend_applyMappingToIndexSet_(v51, v52, v13, v53);

              continue;
            }

            goto LABEL_17;
          }

          objc_msgSend_hasBeforeAfterCounts(v21, v15, v16, v17);
          v64 = objc_msgSend_cellRegion(v21, v61, v62, v63);
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = sub_2213DC450;
          v90[3] = &unk_27845EBE8;
          v90[4] = self;
          v91 = v13;
          objc_msgSend_enumerateRowRangesUsingBlock_(v64, v65, v90, v66);

          objc_msgSend_hasBeforeAfterCounts(v21, v67, v68, v69);
        }

        else if (v22 == 23)
        {
          begin = self->_rowHeights.__begin_;
          end = self->_rowHeights.__end_;
          if (end != begin)
          {
            v16 = 0;
            v59 = 1;
            do
            {
              if (begin[18 * v16 + 5])
              {
                objc_msgSend_addIndex_(v13, v15, v16, v17);
                begin = self->_rowHeights.__begin_;
                end = self->_rowHeights.__end_;
              }

              v16 = v59;
            }

            while (0x8E38E38E38E38E39 * ((end - begin) >> 3) > v59++);
          }
        }

        else
        {
          objc_msgSend_hasBeforeAfterCounts(v21, v15, v16, v17);
          v30 = objc_msgSend_cellRegion(v21, v27, v28, v29);
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = sub_2213DC3E0;
          v92[3] = &unk_27845EBE8;
          v92[4] = self;
          v93 = v13;
          objc_msgSend_enumerateRowRangesInReverseUsingBlock_(v30, v31, v92, v32);

          objc_msgSend_hasBeforeAfterCounts(v21, v33, v34, v35);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v94, v98, 16);
    }

    while (v18);
  }

  return v13;
}

- (id)validateRowsNeedingFittingInfo:(id)info validationRegion:(id)region layoutEngine:(id)engine
{
  infoCopy = info;
  regionCopy = region;
  engineCopy = engine;
  if (!infoCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTWidthHeightCache validateRowsNeedingFittingInfo:validationRegion:layoutEngine:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWidthHeightCache.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 1067, 0, "invalid nil value for '%{public}s'", "rowsNeedingFittingInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12);
  if (objc_msgSend_cellCount(regionCopy, v24, v25, v26))
  {
    objc_msgSend_addObject_(v23, v27, regionCopy, v29);
  }

  hasMergeRanges = objc_msgSend_hasMergeRanges(engineCopy, v27, v28, v29);
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_2213DCB10;
  v57 = sub_2213DCB20;
  v45 = regionCopy;
  v58 = v45;
  while (objc_msgSend_count(v23, v31, v32, v33))
  {
    v37 = objc_msgSend_tsu_pop(v23, v34, v35, v36);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2213DCB28;
    v47[3] = &unk_2784647F0;
    v47[4] = self;
    v48 = infoCopy;
    v52 = hasMergeRanges;
    v49 = engineCopy;
    v51 = &v53;
    v50 = v23;
    objc_msgSend_enumerateCellRangesUsingBlock_(v37, v38, v47, v39);
  }

  if (objc_msgSend_count(infoCopy, v34, v35, v36))
  {
    pthread_rwlock_wrlock(&self->_lock);
    v41 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - self->_rowHeights.__begin_) >> 3);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_2213DCC84;
    v46[3] = &unk_27845E958;
    v46[4] = self;
    objc_msgSend_enumerateIndexesInRange_options_usingBlock_(infoCopy, v42, 0, v41, 1, v46);
    pthread_rwlock_unlock(&self->_lock);
  }

  v43 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v40, infoCopy, v54[5]);
  _Block_object_dispose(&v53, 8);

  return v43;
}

- (void)finalizeLayoutPassWithRowsNeedingFittingInfo:(id)info
{
  infoCopy = info;
  if (objc_msgSend_count(infoCopy, v5, v6, v7))
  {
    pthread_rwlock_wrlock(&self->_lock);
    v8 = 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - self->_rowHeights.__begin_) >> 3);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2213DCD9C;
    v10[3] = &unk_27845E958;
    v10[4] = self;
    objc_msgSend_enumerateIndexesInRange_options_usingBlock_(infoCopy, v9, 0, v8, 1, v10);
    pthread_rwlock_unlock(&self->_lock);
  }
}

- (void)willModifyIfNeeded:(id)needed
{
  neededCopy = needed;
  v7 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v4, v5, v6);
  v11 = objc_msgSend_supportsAutoResizedTables(v7, v8, v9, v10);

  if ((v11 & 1) == 0 && !self->_needsToBeArchived && objc_msgSend_canModify(neededCopy, v12, v13, v14))
  {
    self->_needsToBeArchived = 1;
    objc_msgSend_willModify(neededCopy, v15, v16, v17);
  }
}

- (void)willModifyIfPossible:(id)possible
{
  possibleCopy = possible;
  v7 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v4, v5, v6);
  v11 = objc_msgSend_supportsAutoResizedTables(v7, v8, v9, v10);

  if ((v11 & 1) == 0)
  {
    if (objc_msgSend_canModify(possibleCopy, v12, v13, v14))
    {
      self->_needsToBeArchived = 1;
      objc_msgSend_willModify(possibleCopy, v15, v16, v17);
    }

    else
    {
      self->_needsToBeArchived = 0;
    }
  }
}

- (TSTWidthHeightCache)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v5 = *(archive + 8);
  v6 = *(archive + 12);
  if (*(archive + 4))
  {
    v7 = v6;
    v8 = objc_msgSend_initWithNumRows_andNumColumns_(self, a2, *(archive + 8), v6);
  }

  else
  {
    v7 = 1;
    v8 = objc_msgSend_initWithNumRows_andNumColumns_(self, a2, *(archive + 8), 1);
  }

  v9 = v8;
  if (v8)
  {
    if (v5)
    {
      v10 = 0;
      v11 = *(archive + 5) + 8;
      v12 = 20;
      do
      {
        v13 = *(v11 + 8 * v10);
        if ((~*(v13 + 16) & 3) == 0)
        {
          v14 = *(v13 + 24);
          if (v14 < v7)
          {
            v15 = *(v13 + 28);
            v16 = *(v8 + 208);
            *(v16 + 72 * v10) = 0;
            v17 = v15;
            v18 = 2 * (v14 == 0x7FFFFFFF);
            v19 = (v16 + v12);
            v20 = 4;
            do
            {
              *(v19 - 3) = v17;
              *(v19 - 1) = v14;
              *v19 = v18;
              v19 += 4;
              v14 = 0x7FFFFFFF;
              v17 = 0.0;
              v18 = 2;
              --v20;
            }

            while (v20);
          }
        }

        ++v10;
        v12 += 72;
      }

      while (v10 != v5);
    }

    v22 = 0;
    sub_2213A1E8C((v8 + 232), v7, &v22);
  }

  return v9;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  begin = self->_rowHeights.__begin_;
  if (self->_rowHeights.__end_ != begin)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(archive + 5);
      if (!v9)
      {
        goto LABEL_8;
      }

      v10 = *(archive + 8);
      v11 = *v9;
      if (v10 >= *v9)
      {
        break;
      }

      *(archive + 8) = v10 + 1;
      v12 = *&v9[2 * v10 + 2];
LABEL_10:
      v15 = &begin[v7];
      if (!*&begin[v7 + 20])
      {
        v16 = *(v12 + 16);
        *(v12 + 24) = *(v15 + 4);
        v17 = *(v15 + 1);
        *(v12 + 16) = v16 | 3;
        *(v12 + 28) = v17;
      }

      ++v8;
      begin = self->_rowHeights.__begin_;
      v7 += 72;
      if (v8 >= 0x8E38E38E38E38E39 * ((self->_rowHeights.__end_ - begin) >> 3))
      {
        goto LABEL_13;
      }
    }

    if (v11 == *(archive + 9))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v9 = *(archive + 5);
      v11 = *v9;
    }

    *v9 = v11 + 1;
    v12 = google::protobuf::Arena::CreateMaybeMessage<TST::WidthHeightCacheFittingEntry>(*(archive + 3));
    v13 = *(archive + 8);
    v14 = *(archive + 5) + 8 * v13;
    *(archive + 8) = v13 + 1;
    *(v14 + 8) = v12;
    goto LABEL_10;
  }

LABEL_13:
  v18 = (self->_columnModelWidths.__end_ - self->_columnModelWidths.__begin_) >> 3;
  *(archive + 4) |= 1u;
  *(archive + 12) = v18;
}

- (id).cxx_construct
{
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 13) = 0u;
  return self;
}

@end