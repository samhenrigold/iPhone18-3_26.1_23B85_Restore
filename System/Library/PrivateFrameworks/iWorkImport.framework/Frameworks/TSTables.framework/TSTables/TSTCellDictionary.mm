@interface TSTCellDictionary
- (BOOL)hasCellAtCellID:(TSUCellCoord)d;
- (BOOL)shouldUpgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord;
- (TSCECellCoordSet)allCellCoords;
- (TSTCellDictionary)init;
- (id).cxx_construct;
- (id)cellAtCellID:(TSUCellCoord)d;
- (id)cellMap;
- (id)concurrentCellMapForTable:(id)table;
- (void)applyBlockToAllCells:(id)cells;
- (void)removeAllCells;
- (void)removeCellAtCellID:(TSUCellCoord)d;
- (void)setCell:(id)cell atCellID:(TSUCellCoord)d;
- (void)upgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord;
@end

@implementation TSTCellDictionary

- (TSTCellDictionary)init
{
  v3.receiver = self;
  v3.super_class = TSTCellDictionary;
  result = [(TSTCellDictionary *)&v3 init];
  if (result)
  {
    result->_hasAnyRichTextCells = 0;
    *&result->_lock[0]._os_unfair_lock_opaque = 0u;
    *&result->_lock[4]._os_unfair_lock_opaque = 0u;
    *&result->_lock[8]._os_unfair_lock_opaque = 0u;
    *&result->_lock[12]._os_unfair_lock_opaque = 0u;
    *&result->_lock[16]._os_unfair_lock_opaque = 0u;
    result->_hasRichTextLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (void)setCell:(id)cell atCellID:(TSUCellCoord)d
{
  dCopy = d;
  cellCopy = cell;
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCellDictionary setCell:atCellID:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDictionary.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 68, 0, "can't insert an invalid cell ID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  if (cellCopy)
  {
    v19 = (*(&d.row + 3) & 0xFFFF00 ^ d.row) % 0x14;
    v20 = (self + 4 * v19);
    os_unfair_lock_lock(v20 + 2);
    v26 = &dCopy;
    v21 = sub_221280404(&self->_cellsByCoord[v19].__table_.__bucket_list_.__ptr_, &dCopy, &unk_2217F55C8, &v26);
    objc_storeStrong(v21 + 3, cell);
    os_unfair_lock_unlock(v20 + 2);
    if (!self->_hasAnyRichTextCells && objc_msgSend_valueType(cellCopy, v22, v23, v24) == 9)
    {
      os_unfair_lock_lock(&self->_hasRichTextLock);
      self->_hasAnyRichTextCells = 1;
      os_unfair_lock_unlock(&self->_hasRichTextLock);
    }
  }
}

- (void)removeCellAtCellID:(TSUCellCoord)d
{
  dCopy = d;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v4 = (*(&d.row + 3) & 0xFFFF00 ^ d.row) % 0x14;
    v5 = (self + 4 * v4);
    os_unfair_lock_lock(v5 + 2);
    sub_221087EC8(&self->_cellsByCoord[v4].__table_.__bucket_list_.__ptr_, &dCopy);
    os_unfair_lock_unlock(v5 + 2);
  }
}

- (id)cellAtCellID:(TSUCellCoord)d
{
  dCopy = d;
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellDictionary cellAtCellID:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDictionary.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 98, 0, "can't look up an invalid cell ID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = (*(&d.row + 3) & 0xFFFF00 ^ d.row) % 0x14;
  v16 = (self + 4 * v15);
  os_unfair_lock_lock(v16 + 2);
  v17 = sub_221087F14(&self->_cellsByCoord[v15].__table_.__bucket_list_.__ptr_, &dCopy);
  if (v17)
  {
    v18 = v17[3];
  }

  else
  {
    v18 = 0;
  }

  os_unfair_lock_unlock(v16 + 2);

  return v18;
}

- (BOOL)hasCellAtCellID:(TSUCellCoord)d
{
  dCopy = d;
  if (d.row == 0x7FFFFFFF || (*&d & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCellDictionary hasCellAtCellID:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellDictionary.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 123, 0, "can't look up an invalid cell ID");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = (*(&d.row + 3) & 0xFFFF00 ^ d.row) % 0x14;
  v16 = (self + 4 * v15);
  os_unfair_lock_lock(v16 + 2);
  v17 = sub_221087F14(&self->_cellsByCoord[v15].__table_.__bucket_list_.__ptr_, &dCopy) != 0;
  os_unfair_lock_unlock(v16 + 2);
  return v17;
}

- (void)removeAllCells
{
  lock = self->_lock;
  cellCoordsToStyleUpgradeForFormulatext = self->_cellCoordsToStyleUpgradeForFormulatext;
  v5 = 20;
  do
  {
    os_unfair_lock_lock(lock);
    sub_2211A89A4(&cellCoordsToStyleUpgradeForFormulatext[-20]);
    TSCECellCoordSet::clear(cellCoordsToStyleUpgradeForFormulatext);
    os_unfair_lock_unlock(lock);
    ++cellCoordsToStyleUpgradeForFormulatext;
    ++lock;
    --v5;
  }

  while (v5);
  os_unfair_lock_lock(&self->_hasRichTextLock);
  self->_hasAnyRichTextCells = 0;

  os_unfair_lock_unlock(&self->_hasRichTextLock);
}

- (id)cellMap
{
  if (!self->_temporaryContext)
  {
    v3 = objc_alloc_init(MEMORY[0x277D80888]);
    temporaryObjectContextDelegate = self->_temporaryObjectContextDelegate;
    self->_temporaryObjectContextDelegate = v3;

    v5 = objc_alloc(MEMORY[0x277D80878]);
    v8 = objc_msgSend_initWithDelegate_(v5, v6, self->_temporaryObjectContextDelegate, v7);
    temporaryContext = self->_temporaryContext;
    self->_temporaryContext = v8;
  }

  v10 = [TSTCellMap alloc];
  v13 = objc_msgSend_initWithContext_(v10, v11, self->_temporaryContext, v12);
  v14 = 0;
  lock = self->_lock;
  do
  {
    os_unfair_lock_lock(&lock[v14]);
    for (i = self->_cellsByCoord[v14].__table_.__first_node_.__next_; i; i = *i)
    {
      v17 = *(i + 2);
      v18 = *(i + 3);
      objc_msgSend_addCell_andCellID_(v13, v19, v18, v17);
    }

    os_unfair_lock_unlock(&lock[v14++]);
  }

  while (v14 != 20);

  return v13;
}

- (id)concurrentCellMapForTable:(id)table
{
  tableCopy = table;
  objc_msgSend_allCellCoords(self, v5, v6, v7);
  v8 = TSCECellCoordSet::minColumn(&v30);
  v9 = TSCECellCoordSet::maxColumn(&v30);
  TSCECellCoordSet::allRowIndexes(&v30, &v29);
  v10 = TSUIndexSet::asNSIndexSet(&v29);
  TSUIndexSet::~TSUIndexSet(&v29);
  lock = self->_lock;
  for (i = 8; i != 88; i += 4)
  {
    os_unfair_lock_lock((self + i));
  }

  if (TSCECellCoordSet::count(&v30))
  {
    v13 = [TSTConcurrentCellMap alloc];
    v15 = objc_msgSend_initWithContext_uidBased_affectsCellBorders_(v13, v14, 0, 1, 0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2215C439C;
    v23[3] = &unk_2784675C8;
    v26 = v8;
    v27 = v9 - v8 + 1;
    v24 = tableCopy;
    selfCopy = self;
    v28 = v8;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2215C4760;
    v21[3] = &unk_27845DDE8;
    v16 = v15;
    v22 = v16;
    objc_msgSend_tsu_enumerateRangesConcurrentlyUsingBeginBlock_concurrentBlock_finalBlock_(v10, v17, &unk_2834B2088, v23, v21);
  }

  else
  {
    v16 = 0;
  }

  v18 = 20;
  do
  {
    os_unfair_lock_unlock(lock++);
    --v18;
  }

  while (v18);
  v19 = v16;

  sub_22107C860(&v30._rowsPerColumn, v30._rowsPerColumn.__tree_.__end_node_.__left_);

  return v19;
}

- (TSCECellCoordSet)allCellCoords
{
  v4 = 0;
  retstr->_rowsPerColumn.__tree_.__end_node_.__left_ = 0;
  retstr->_rowsPerColumn.__tree_.__begin_node_ = &retstr->_rowsPerColumn.__tree_.__end_node_;
  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation.origin = 0;
  retstr->_rectRepresentation.size = 0;
  lock = self->_lock;
  cellsByCoord = self->_cellsByCoord;
  do
  {
    os_unfair_lock_lock(&lock[v4]);
    for (i = cellsByCoord[v4].__table_.__first_node_.__next_; i; i = *i)
    {
      v9 = *(i + 2);
      TSCECellCoordSet::addCellCoord(retstr, &v9);
    }

    os_unfair_lock_unlock(&lock[v4++]);
  }

  while (v4 != 20);
  return result;
}

- (void)applyBlockToAllCells:(id)cells
{
  v4 = 0;
  lock = self->_lock;
  cellsCopy = cells;
  do
  {
    os_unfair_lock_lock(&lock[v4]);
    for (i = self->_cellsByCoord[v4].__table_.__first_node_.__next_; i; i = *i)
    {
      v7 = i[3];
      cellsCopy[2](cellsCopy, v7, (i + 2));
    }

    os_unfair_lock_unlock(&lock[v4++]);
  }

  while (v4 != 20);
}

- (void)upgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord
{
  v5 = (coord->row ^ (coord->column << 8)) % 0x14;
  v6 = (self + 4 * v5);
  os_unfair_lock_lock(v6 + 2);
  TSCECellCoordSet::addCellCoord(&self->_cellCoordsToStyleUpgradeForFormulatext[v5], coord);

  os_unfair_lock_unlock(v6 + 2);
}

- (BOOL)shouldUpgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord
{
  coordCopy = coord;
  v5 = (coord->row ^ (coord->column << 8)) % 0x14;
  v6 = (self + 4 * v5);
  os_unfair_lock_lock(v6 + 2);
  LOBYTE(coordCopy) = TSCECellCoordSet::containsCellCoord(&self->_cellCoordsToStyleUpgradeForFormulatext[v5], coordCopy);
  os_unfair_lock_unlock(v6 + 2);
  return coordCopy;
}

- (id).cxx_construct
{
  for (i = 0; i != 800; i += 40)
  {
    v3 = self + i;
    *(v3 + 104) = 0uLL;
    *(v3 + 88) = 0uLL;
    *(v3 + 30) = 1065353216;
  }

  for (j = 912; j != 1712; j += 40)
  {
    v5 = self + j;
    *v5 = 0;
    v5[1] = 0;
    *(v5 - 3) = 0;
    *(v5 - 2) = 0;
    *(v5 - 1) = v5;
  }

  return self;
}

@end