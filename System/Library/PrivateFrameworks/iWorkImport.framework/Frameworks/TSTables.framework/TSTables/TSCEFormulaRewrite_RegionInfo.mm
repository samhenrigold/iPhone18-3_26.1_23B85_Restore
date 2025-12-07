@interface TSCEFormulaRewrite_RegionInfo
- (TSCEFormulaRewrite_RegionInfo)initWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids;
- (TSCERangeCoordinate)mergingRange;
- (TSKUIDStruct)condStyleOwnerUID;
- (TSKUIDStruct)tableUID;
- (TSUCellCoord)bottomRightCellCoord;
- (TSUCellCoord)topLeftCellCoord;
- (id)initFromMessage:(const void *)message;
- (void)loadIndexesForTable:(id)table uidResolver:(id)resolver;
- (void)saveToMessage:(void *)message;
- (void)unloadIndexes;
@end

@implementation TSCEFormulaRewrite_RegionInfo

- (TSCEFormulaRewrite_RegionInfo)initWithTableUID:(const TSKUIDStruct *)d columnUids:(const void *)uids rowUids:(const void *)rowUids
{
  v21.receiver = self;
  v21.super_class = TSCEFormulaRewrite_RegionInfo;
  v8 = [(TSCEFormulaRewrite_RegionInfo *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_tableUID = *d;
    v8->_condStyleOwnerUID._lower = 0;
    v8->_condStyleOwnerUID._upper = 0;
    v10 = [TSCEFormulaRewrite_Uids alloc];
    v13 = objc_msgSend_initWithUids_(v10, v11, uids, v12);
    columnUids = v9->_columnUids;
    v9->_columnUids = v13;

    v15 = [TSCEFormulaRewrite_Uids alloc];
    v18 = objc_msgSend_initWithUids_(v15, v16, rowUids, v17);
    rowUids = v9->_rowUids;
    v9->_rowUids = v18;
  }

  return v9;
}

- (void)loadIndexesForTable:(id)table uidResolver:(id)resolver
{
  tableCopy = table;
  resolverCopy = resolver;
  self->_condStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v7, v8, v9);
  self->_condStyleOwnerUID._upper = v10;
  objc_msgSend_loadIndexesForTable_isRows_shuffleMap_(self->_columnUids, v10, resolverCopy, 0, 0);
  objc_msgSend_loadIndexesForTable_isRows_shuffleMap_(self->_rowUids, v11, resolverCopy, 1, 0);
}

- (void)unloadIndexes
{
  objc_msgSend_unloadIndexes(self->_columnUids, a2, v2, v3);
  rowUids = self->_rowUids;

  objc_msgSend_unloadIndexes(rowUids, v5, v6, v7);
}

- (TSUCellCoord)topLeftCellCoord
{
  selfCopy = self;
  v5 = objc_msgSend_indexes(self->_columnUids, a2, v2, v3);
  Index = objc_msgSend_firstIndex(v5, v6, v7, v8);

  v13 = objc_msgSend_indexes(selfCopy->_rowUids, v10, v11, v12);
  LODWORD(selfCopy) = objc_msgSend_firstIndex(v13, v14, v15, v16);

  return (selfCopy | (Index << 32));
}

- (TSUCellCoord)bottomRightCellCoord
{
  selfCopy = self;
  v5 = objc_msgSend_indexes(self->_columnUids, a2, v2, v3);
  Index = objc_msgSend_lastIndex(v5, v6, v7, v8);

  v13 = objc_msgSend_indexes(selfCopy->_rowUids, v10, v11, v12);
  LODWORD(selfCopy) = objc_msgSend_lastIndex(v13, v14, v15, v16);

  return (selfCopy | (Index << 32));
}

- (TSCERangeCoordinate)mergingRange
{
  v5 = objc_msgSend_topLeftCellCoord(self, a2, v2, v3);
  v9 = objc_msgSend_bottomRightCellCoord(self, v6, v7, v8);
  v10 = v5;
  result._bottomRight = v9;
  result._topLeft = v10;
  return result;
}

- (id)initFromMessage:(const void *)message
{
  v19.receiver = self;
  v19.super_class = TSCEFormulaRewrite_RegionInfo;
  v5 = [(TSCEFormulaRewrite_RegionInfo *)&v19 init];
  if (v5)
  {
    if (*(message + 3))
    {
      v6 = *(message + 3);
    }

    else
    {
      v6 = MEMORY[0x277D809E0];
    }

    v5->_tableUID._lower = TSKUIDStruct::loadFromMessage(v6, v4);
    v5->_tableUID._upper = v7;
    v8 = [TSCEFormulaRewrite_Uids alloc];
    if (*(message + 4))
    {
      v11 = objc_msgSend_initFromMessage_(v8, v9, *(message + 4), v10);
    }

    else
    {
      v11 = objc_msgSend_initFromMessage_(v8, v9, &TSCE::_IndexedUidsArchive_default_instance_, v10);
    }

    columnUids = v5->_columnUids;
    v5->_columnUids = v11;

    v13 = [TSCEFormulaRewrite_Uids alloc];
    if (*(message + 5))
    {
      v16 = objc_msgSend_initFromMessage_(v13, v14, *(message + 5), v15);
    }

    else
    {
      v16 = objc_msgSend_initFromMessage_(v13, v14, &TSCE::_IndexedUidsArchive_default_instance_, v15);
    }

    rowUids = v5->_rowUids;
    v5->_rowUids = v16;
  }

  return v5;
}

- (void)saveToMessage:(void *)message
{
  *(message + 4) |= 1u;
  v5 = *(message + 3);
  if (!v5)
  {
    v6 = *(message + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(message + 3) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_tableUID, v5);
  columnUids = self->_columnUids;
  *(message + 4) |= 2u;
  v10 = *(message + 4);
  if (!v10)
  {
    v11 = *(message + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v11);
    *(message + 4) = v10;
  }

  objc_msgSend_saveToMessage_(columnUids, v7, v10, v8);
  rowUids = self->_rowUids;
  *(message + 4) |= 4u;
  v15 = *(message + 5);
  if (!v15)
  {
    v16 = *(message + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive>(v16);
    *(message + 5) = v15;
  }

  objc_msgSend_saveToMessage_(rowUids, v12, v15, v13);
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)condStyleOwnerUID
{
  upper = self->_condStyleOwnerUID._upper;
  lower = self->_condStyleOwnerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end