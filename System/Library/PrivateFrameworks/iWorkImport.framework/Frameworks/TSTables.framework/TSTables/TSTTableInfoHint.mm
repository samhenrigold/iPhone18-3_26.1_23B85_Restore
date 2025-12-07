@interface TSTTableInfoHint
- (BOOL)containsStyleNetworkIndex:(unint64_t)index;
- (BOOL)hasStylesInCells;
- (BOOL)hasTableStyles;
- (CGSize)maximumSize;
- (TSTTableInfoHint)init;
- (id).cxx_construct;
- (vector<unsigned)cellFlags;
- (void)addCellUID:(const TSKUIDStructCoord *)d flags:(unint64_t)flags addingMaximumSize:(CGSize)size;
- (void)addTableStyleIndex:(unint64_t)index;
- (void)enumerateCellUIDsUsingBlock:(id)block;
- (void)enumerateTableStylesUsingBlock:(id)block;
@end

@implementation TSTTableInfoHint

- (TSTTableInfoHint)init
{
  v3.receiver = self;
  v3.super_class = TSTTableInfoHint;
  result = [(TSTTableInfoHint *)&v3 init];
  if (result)
  {
    result->_maximumSize = *MEMORY[0x277CBF3A8];
  }

  return result;
}

- (void)addTableStyleIndex:(unint64_t)index
{
  tableStyleIndexes = self->_tableStyleIndexes;
  if (!tableStyleIndexes)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v8 = self->_tableStyleIndexes;
    self->_tableStyleIndexes = v7;

    tableStyleIndexes = self->_tableStyleIndexes;
  }

  objc_msgSend_addIndex_(tableStyleIndexes, a2, index, v3);
  TSUSizeMax();
  self->_maximumSize.width = v9;
  self->_maximumSize.height = v10;
}

- (BOOL)hasTableStyles
{
  tableStyleIndexes = self->_tableStyleIndexes;
  if (tableStyleIndexes)
  {
    LOBYTE(tableStyleIndexes) = objc_msgSend_count(tableStyleIndexes, a2, v2, v3) != 0;
  }

  return tableStyleIndexes;
}

- (BOOL)containsStyleNetworkIndex:(unint64_t)index
{
  tableStyleIndexes = self->_tableStyleIndexes;
  if (tableStyleIndexes)
  {
    LOBYTE(tableStyleIndexes) = objc_msgSend_containsIndex_(tableStyleIndexes, a2, index, v3);
  }

  return tableStyleIndexes;
}

- (void)enumerateTableStylesUsingBlock:(id)block
{
  blockCopy = block;
  tableStyleIndexes = self->_tableStyleIndexes;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211E5CF4;
  v9[3] = &unk_278461298;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesUsingBlock_(tableStyleIndexes, v7, v9, v8);
}

- (void)addCellUID:(const TSKUIDStructCoord *)d flags:(unint64_t)flags addingMaximumSize:(CGSize)size
{
  if (flags)
  {
    cellUIDs = self->_cellUIDs;
    if (!cellUIDs)
    {
      v9 = objc_alloc_init(TSTCellUIDList);
      v10 = self->_cellUIDs;
      self->_cellUIDs = v9;

      cellUIDs = self->_cellUIDs;
    }

    objc_msgSend_addCellUID_(cellUIDs, a2, d, flags, size.width, size.height);
    end = self->_cellFlags.__end_;
    cap = self->_cellFlags.__cap_;
    if (end >= cap)
    {
      begin = self->_cellFlags.__begin_;
      v15 = end - begin;
      v16 = end - begin;
      v17 = v16 + 1;
      if ((v16 + 1) >> 61)
      {
        sub_22107C148();
      }

      v18 = cap - begin;
      if (v18 >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
      v20 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v17;
      }

      if (v20)
      {
        sub_2210874C4(&self->_cellFlags, v20);
      }

      v21 = end - begin;
      v22 = (8 * v16);
      v23 = (8 * v16 - 8 * v21);
      *v22 = flags;
      v13 = v22 + 1;
      memcpy(v23, begin, v15);
      v24 = self->_cellFlags.__begin_;
      self->_cellFlags.__begin_ = v23;
      self->_cellFlags.__end_ = v13;
      self->_cellFlags.__cap_ = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *end = flags;
      v13 = end + 1;
    }

    self->_cellFlags.__end_ = v13;
    TSUSizeMax();
    self->_maximumSize.width = v25;
    self->_maximumSize.height = v26;
  }
}

- (BOOL)hasStylesInCells
{
  cellUIDs = self->_cellUIDs;
  if (cellUIDs)
  {
    LOBYTE(cellUIDs) = objc_msgSend_count(cellUIDs, a2, v2, v3) != 0;
  }

  return cellUIDs;
}

- (void)enumerateCellUIDsUsingBlock:(id)block
{
  blockCopy = block;
  cellUIDs = self->_cellUIDs;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211E5F18;
  v9[3] = &unk_2784612C0;
  v9[4] = self;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateCellUIDsUsingBlock_(cellUIDs, v7, v9, v8);
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (vector<unsigned)cellFlags
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_2211E62A0(retstr, self->_cellFlags.__begin_, self->_cellFlags.__end_, self->_cellFlags.__end_ - self->_cellFlags.__begin_);
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end