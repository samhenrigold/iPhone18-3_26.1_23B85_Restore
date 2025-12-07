@interface TSTCellMapIterator
- (TSTCellMapIterator)initWithCellMap:(id)map;
- (pair<TSTCell)nextCellAndCellUID;
@end

@implementation TSTCellMapIterator

- (TSTCellMapIterator)initWithCellMap:(id)map
{
  mapCopy = map;
  v37.receiver = self;
  v37.super_class = TSTCellMapIterator;
  v6 = [(TSTCellMapIterator *)&v37 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cellMap, map);
    v11 = objc_msgSend_cellUIDs(mapCopy, v8, v9, v10);
    v15 = objc_msgSend_iterator(v11, v12, v13, v14);
    cellUIDIterator = v7->_cellUIDIterator;
    v7->_cellUIDIterator = v15;

    v7->_index = 0;
    v20 = objc_msgSend_cellLists(mapCopy, v17, v18, v19);
    v24 = objc_msgSend_firstObject(v20, v21, v22, v23);
    v28 = objc_msgSend_count(v24, v25, v26, v27);
    v32 = objc_msgSend_cellUIDs(mapCopy, v29, v30, v31);
    v7->_oneToMany = v28 != objc_msgSend_count(v32, v33, v34, v35);
  }

  return v7;
}

- (pair<TSTCell)nextCellAndCellUID
{
  cellUIDIterator = self->_cellUIDIterator;
  if (cellUIDIterator)
  {
    objc_msgSend_nextCellUID(cellUIDIterator, a3, v3, v4);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  self->_currentCellUID._column = v11;
  self->_currentCellUID._row = v12;
  v8 = objc_msgSend_cellAtIndex_(self->_cellMap, a3, self->_index, v4, v11, v12);
  currentCell = self->_currentCell;
  self->_currentCell = v8;

  if (!self->_oneToMany)
  {
    ++self->_index;
  }

  result = self->_currentCell;
  retstr->var0 = result;
  retstr->var1._column = self->_currentCellUID._column;
  retstr->var1._row = self->_currentCellUID._row;
  return result;
}

@end