@interface TSTCellUIDLookupListWrapper
- (TSTCellUIDLookupListWrapper)initWithCellUIDList:(id)list;
- (id).cxx_construct;
- (id)copyByPruningAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSTCellUIDLookupListWrapper

- (id)copyByPruningAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  v10 = objc_opt_new();
  sub_22137AD84(v12, &self->_UIDLookupList._columnUidLookupList._uids.__begin_, tableCopy, behavior, blockCopy);
  sub_22137A8B0(v10 + 8, v12);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  sub_22132A30C(&v18);
  sub_2210BDEC0(&v17);
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  sub_22132A30C(&v14);
  sub_2210BDEC0(&v13);
  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v10;
}

- (TSTCellUIDLookupListWrapper)initWithCellUIDList:(id)list
{
  listCopy = list;
  v18.receiver = self;
  v18.super_class = TSTCellUIDLookupListWrapper;
  v8 = [(TSTCellUIDLookupListWrapper *)&v18 init];
  if (v8)
  {
    v9 = objc_msgSend_iterator(listCopy, v5, v6, v7);
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_22127D034(&__p, 0x3E8uLL);
    while (1)
    {
      CellUIDsBatch_batchSize = objc_msgSend_nextCellUIDsBatch_batchSize_(v9, v10, &__p, 1000);
      v12 = __p;
      if (!CellUIDsBatch_batchSize)
      {
        break;
      }

      v13 = v16;
      while (v12 != v13)
      {
        sub_22137A908(&v8->_UIDLookupList._columnUidLookupList._uids.__begin_, v12);
        v12 += 2;
      }
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  sub_22137A8B0(v4 + 8, &self->_UIDLookupList);
  return v4;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 20) = 0;
  *(self + 42) = 1065353216;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 27) = 0;
  return self;
}

@end