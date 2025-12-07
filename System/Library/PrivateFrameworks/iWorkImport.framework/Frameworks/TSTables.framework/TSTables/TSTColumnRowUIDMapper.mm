@interface TSTColumnRowUIDMapper
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index;
- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index;
- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range;
- (TSTColumnRowUIDMapper)initWithColumnRowUIDMap:(id)map;
- (TSUCellRect)cellRangeForUIDRange:(const void *)range;
- (TSUCellRect)range;
- (_NSRange)columnRangeForUIDs:(const void *)ds;
- (_NSRange)rowRangeForUIDs:(const void *)ds;
- (const)columnUIDs;
- (const)rowUIDs;
- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows;
- (id)columnIndexesForUIDs:(const void *)ds;
- (id)columnUuids;
- (id)mutableColumnIndexesForUIDs:(const void *)ds;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds;
- (id)mutableRowIndexesForUIDs:(const void *)ds;
- (id)rowIndexesForUIDs:(const void *)ds;
- (id)rowUuids;
- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)d;
- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)bytes[16];
- (unsigned)numberOfColumns;
- (unsigned)numberOfRows;
- (unsigned)rowIndexForRowUID:(TSKUIDStruct)d;
- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)bytes[16];
- (void)disconnect;
- (void)getUUIDBytes:(unsigned __int8)bytes[16] forColumnIndex:(unsigned __int16)index;
- (void)getUUIDBytes:(unsigned __int8)bytes[16] forRowIndex:(unsigned int)index;
@end

@implementation TSTColumnRowUIDMapper

- (TSTColumnRowUIDMapper)initWithColumnRowUIDMap:(id)map
{
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = TSTColumnRowUIDMapper;
  v6 = [(TSTColumnRowUIDMapper *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalUIDMap, map);
    v7->_originalVersionCounter = objc_msgSend_versionCounter(mapCopy, v8, v9, v10);
  }

  return v7;
}

- (void)disconnect
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTColumnRowUIDMapper disconnect]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMapper.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 48, 0, "No longer have a mapper - disconnected multiple times?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    originalUIDMap = self->_originalUIDMap;
  }

  if (objc_msgSend_versionCounter(originalUIDMap, a2, v2, v3) != self->_originalVersionCounter)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTColumnRowUIDMapper disconnect]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMapper.mm", v20);
    originalVersionCounter = self->_originalVersionCounter;
    v26 = objc_msgSend_versionCounter(self->_originalUIDMap, v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v27, v18, v21, 49, 0, "Mappers version counter was already off %lu vs %lu", originalVersionCounter, v26);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v31 = [TSTImmutableColumnRowUIDMap alloc];
  v34 = objc_msgSend_initWithColumnRowUIDMap_(v31, v32, self->_originalUIDMap, v33);
  copiedUIDMap = self->_copiedUIDMap;
  self->_copiedUIDMap = v34;

  if (objc_msgSend_versionCounter(self->_originalUIDMap, v36, v37, v38) != self->_originalVersionCounter)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSTColumnRowUIDMapper disconnect]", v40);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTColumnRowUIDMapper.mm", v44);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 52, 0, "Should have preserved the versionCounter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
  }

  v50 = self->_originalUIDMap;
  self->_originalUIDMap = 0;
}

- (unsigned)numberOfColumns
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  return objc_msgSend_numberOfColumns(originalUIDMap, a2, v2, v3);
}

- (unsigned)numberOfRows
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  return objc_msgSend_numberOfRows(originalUIDMap, a2, v2, v3);
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index
{
  if (self->_originalUIDMap)
  {
    v4 = objc_msgSend_columnUIDForColumnIndex_(self->_originalUIDMap, a2, index, v3);
  }

  else
  {
    v4 = objc_msgSend_columnUIDForColumnIndex_(self->_copiedUIDMap, a2, index, v3);
  }

  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v6 = objc_msgSend_rowUIDForRowIndex_(originalUIDMap, a2, *&index, v3);
  result._upper = v7;
  result._lower = v6;
  return result;
}

- (unsigned)columnIndexForColumnUID:(TSKUIDStruct)d
{
  if (self->_originalUIDMap)
  {
    return objc_msgSend_columnIndexForColumnUID_(self->_originalUIDMap, a2, d._lower, d._upper);
  }

  else
  {
    return objc_msgSend_columnIndexForColumnUID_(self->_copiedUIDMap, a2, d._lower, d._upper);
  }
}

- (unsigned)rowIndexForRowUID:(TSKUIDStruct)d
{
  if (self->_originalUIDMap)
  {
    return objc_msgSend_rowIndexForRowUID_(self->_originalUIDMap, a2, d._lower, d._upper);
  }

  else
  {
    return objc_msgSend_rowIndexForRowUID_(self->_copiedUIDMap, a2, d._lower, d._upper);
  }
}

- (unsigned)columnIndexForUUIDBytes:(unsigned __int8)bytes[16]
{
  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_columnIndexForColumnUID_(self, v4, v5, v4);
}

- (unsigned)rowIndexForUUIDBytes:(unsigned __int8)bytes[16]
{
  v5 = TSKMakeUIDStructFromUuidT();

  return objc_msgSend_rowIndexForRowUID_(self, v4, v5, v4);
}

- (id)columnUuids
{
  v4 = objc_msgSend_columnUIDs(self, a2, v2, v3);

  return sub_2212830D4(v4, v5, v6, v7);
}

- (id)rowUuids
{
  v4 = objc_msgSend_rowUIDs(self, a2, v2, v3);

  return sub_2212830D4(v4, v5, v6, v7);
}

- (void)getUUIDBytes:(unsigned __int8)bytes[16] forColumnIndex:(unsigned __int16)index
{
  if (bytes)
  {
    v6[0] = objc_msgSend_columnUIDForColumnIndex_(self, a2, index, index);
    v6[1] = v5;
    uuid_copy(bytes, v6);
  }
}

- (void)getUUIDBytes:(unsigned __int8)bytes[16] forRowIndex:(unsigned int)index
{
  if (bytes)
  {
    v6[0] = objc_msgSend_rowUIDForRowIndex_(self, a2, *&index, *&index);
    v6[1] = v5;
    uuid_copy(bytes, v6);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes
{
  v6 = a4;
  originalUIDMap = self->_originalUIDMap;
  v10 = v6;
  if (originalUIDMap || (originalUIDMap = self->_copiedUIDMap) != 0)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(originalUIDMap, v6, v6, v7);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes
{
  v6 = a4;
  originalUIDMap = self->_originalUIDMap;
  v10 = v6;
  if (originalUIDMap || (originalUIDMap = self->_copiedUIDMap) != 0)
  {
    objc_msgSend_rowUIDsForRowIndexes_(originalUIDMap, v6, v6, v7);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)mutableColumnIndexesForUIDs:(const void *)ds
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v6 = objc_msgSend_mutableColumnIndexesForUIDs_(originalUIDMap, a2, ds, v3);

  return v6;
}

- (id)mutableRowIndexesForUIDs:(const void *)ds
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v6 = objc_msgSend_mutableRowIndexesForUIDs_(originalUIDMap, a2, ds, v3);

  return v6;
}

- (id)columnIndexesForUIDs:(const void *)ds
{
  v4 = objc_msgSend_mutableColumnIndexesForUIDs_(self, a2, ds, v3);
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_copy(v4, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)rowIndexesForUIDs:(const void *)ds
{
  v4 = objc_msgSend_mutableRowIndexesForUIDs_(self, a2, ds, v3);
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_copy(v4, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range
{
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], range, a4.location, a4.length);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v5, v8, v6);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range
{
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], range, a4.location, a4.length);
  objc_msgSend_rowUIDsForRowIndexes_(self, v5, v8, v6);

  return result;
}

- (_NSRange)columnRangeForUIDs:(const void *)ds
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v6 = objc_msgSend_columnRangeForUIDs_(originalUIDMap, a2, ds, v3);
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rowRangeForUIDs:(const void *)ds
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v6 = objc_msgSend_rowRangeForUIDs_(originalUIDMap, a2, ds, v3);
  result.length = v7;
  result.location = v6;
  return result;
}

- (const)columnUIDs
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  return objc_msgSend_columnUIDs(originalUIDMap, a2, v2, v3);
}

- (const)rowUIDs
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  return objc_msgSend_rowUIDs(originalUIDMap, a2, v2, v3);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedColumnUidsFromUids:(SEL)uids
{
  v9 = objc_msgSend_mutableColumnIndexesForUIDs_(self, uids, a4, v4);
  objc_msgSend_columnUIDsForColumnIndexes_(self, v6, v9, v7);

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids
{
  v9 = objc_msgSend_mutableRowIndexesForUIDs_(self, uids, a4, v4);
  objc_msgSend_rowUIDsForRowIndexes_(self, v6, v9, v7);

  return result;
}

- (TSUCellRect)range
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v6 = objc_msgSend_range(originalUIDMap, a2, v2, v3);
  result.size = v7;
  result.origin = v6;
  return result;
}

- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows
{
  rowsCopy = rows;
  indexesCopy = indexes;
  originalUIDMap = self->_originalUIDMap;
  if (originalUIDMap)
  {
    objc_msgSend_UIDSetForIndexes_isRows_(originalUIDMap, v6, indexesCopy, rowsCopy);
  }

  else
  {
    objc_msgSend_UIDSetForIndexes_isRows_(self->_copiedUIDMap, v6, indexesCopy, rowsCopy);
  }
  v9 = ;

  return v9;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows
{
  v4 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self, a2, set, rows, 0);

  return v4;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds
{
  rowsCopy = rows;
  setCopy = set;
  dsCopy = ds;
  originalUIDMap = self->_originalUIDMap;
  if (originalUIDMap)
  {
    objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(originalUIDMap, v9, setCopy, rowsCopy, dsCopy);
  }

  else
  {
    objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(self->_copiedUIDMap, v9, setCopy, rowsCopy, dsCopy);
  }
  v12 = ;

  return v12;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows
{
  rowsCopy = rows;
  setCopy = set;
  originalUIDMap = self->_originalUIDMap;
  if (originalUIDMap)
  {
    isRows = objc_msgSend_firstUidFromUIDSet_isRows_(originalUIDMap, v6, setCopy, rowsCopy);
  }

  else
  {
    isRows = objc_msgSend_firstUidFromUIDSet_isRows_(self->_copiedUIDMap, v6, setCopy, rowsCopy);
  }

  v11 = isRows;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedColumnUIDsFromColumnUIDs:(SEL)ds
{
  result = self->_originalUIDMap;
  if (result)
  {
    return objc_msgSend_prunedColumnUIDsFromColumnUIDs_(result, ds, a4, v4);
  }

  result = self->_copiedUIDMap;
  if (result)
  {
    return objc_msgSend_prunedColumnUIDsFromColumnUIDs_(result, ds, a4, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)prunedRowUIDsFromRowUIDs:(SEL)ds
{
  result = self->_originalUIDMap;
  if (result)
  {
    return objc_msgSend_prunedRowUIDsFromRowUIDs_(result, ds, a4, v4);
  }

  result = self->_copiedUIDMap;
  if (result)
  {
    return objc_msgSend_prunedRowUIDsFromRowUIDs_(result, ds, a4, v4);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return result;
}

- (TSUCellRect)cellRangeForUIDRange:(const void *)range
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v6 = objc_msgSend_cellRangeForUIDRange_(originalUIDMap, a2, range, v3);
  result.size = v7;
  result.origin = v6;
  return result;
}

- (TSKUIDStructTract)cellUIDRangeForCellRange:(SEL)range
{
  if (self->_originalUIDMap)
  {
    result = self->_originalUIDMap;
    return objc_msgSend_cellUIDRangeForCellRange_(result, range, *&a4.origin, *&a4.size);
  }

  result = self->_copiedUIDMap;
  if (result)
  {
    return objc_msgSend_cellUIDRangeForCellRange_(result, range, *&a4.origin, *&a4.size);
  }

  *&retstr->_colIdList.__cap_ = 0u;
  *&retstr->_rowIdList.__end_ = 0u;
  *&retstr->_colIdList.__begin_ = 0u;
  return result;
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  originalUIDMap = self->_originalUIDMap;
  if (!originalUIDMap)
  {
    originalUIDMap = self->_copiedUIDMap;
  }

  v6 = objc_msgSend_tableRangeCoordinate(originalUIDMap, a2, v2, v3);
  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

@end