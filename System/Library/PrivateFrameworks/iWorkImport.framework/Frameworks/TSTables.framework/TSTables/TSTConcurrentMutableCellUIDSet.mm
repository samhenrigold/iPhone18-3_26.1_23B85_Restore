@interface TSTConcurrentMutableCellUIDSet
- (TSTConcurrentMutableCellUIDSet)init;
- (id).cxx_construct;
- (id)reapAccumulatedCellRegionWithTable:(id)table;
- (void)addCellUID:(const TSKUIDStructCoord *)d;
- (void)addCellUIDRange:(const void *)range;
- (void)p_addCellUID:(const TSKUIDStructCoord *)d;
@end

@implementation TSTConcurrentMutableCellUIDSet

- (TSTConcurrentMutableCellUIDSet)init
{
  v3.receiver = self;
  v3.super_class = TSTConcurrentMutableCellUIDSet;
  result = [(TSTConcurrentMutableCellUIDSet *)&v3 init];
  if (result)
  {
    result->_unfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (void)p_addCellUID:(const TSKUIDStructCoord *)d
{
  p_row = &d->_row;
  v6 = sub_2210875C4(&self->_rowUIDToColumnUIDSetMap.__table_.__bucket_list_.__ptr_, &d->_row._lower);
  if (v6)
  {
    v8 = v6[4];
    lower = d->_column._lower;
    upper = d->_column._upper;

    objc_msgSend_addUUID_(v8, v7, lower, upper);
  }

  else
  {
    v11 = [TSCEMutableUIDSet alloc];
    v13 = objc_msgSend_initWithUUID_(v11, v12, d->_column._lower, d->_column._upper);
    v16 = p_row;
    v14 = sub_2213EDAC0(&self->_rowUIDToColumnUIDSetMap.__table_.__bucket_list_.__ptr_, p_row, &unk_2217E1AF4, &v16);
    v15 = v14[4];
    v14[4] = v13;
  }
}

- (void)addCellUID:(const TSKUIDStructCoord *)d
{
  os_unfair_lock_lock(&self->_unfairLock);
  objc_msgSend_p_addCellUID_(self, v5, d, v6);

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)addCellUIDRange:(const void *)range
{
  os_unfair_lock_lock(&self->_unfairLock);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_221086EBC(&v6, *range, *(range + 1), (*(range + 1) - *range) >> 4);
  __p = 0;
  v10 = 0;
  v11 = 0;
  sub_221086EBC(&__p, *(range + 3), *(range + 4), (*(range + 4) - *(range + 3)) >> 4);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2213ED35C;
  v5[3] = &unk_278464930;
  v5[4] = self;
  sub_2211A91F0(&v6, v5);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (id)reapAccumulatedCellRegionWithTable:(id)table
{
  tableCopy = table;
  os_unfair_lock_lock(&self->_unfairLock);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  next = self->_rowUIDToColumnUIDSetMap.__table_.__first_node_.__next_;
  if (next)
  {
    v8 = 0;
    do
    {
      if (v8 >= v36)
      {
        v9 = (v8 - v34) >> 4;
        if ((v9 + 1) >> 60)
        {
          sub_22107C148();
        }

        v10 = (v36 - v34) >> 3;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v36 - v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_221086F74(&v34, v11);
        }

        *(16 * v9) = next[1];
        v8 = (16 * v9 + 16);
        memcpy((16 * v9 - (v35 - v34)), v34, v35 - v34);
        v12 = v34;
        v34 = (16 * v9 - (v35 - v34));
        v35 = v8;
        v36 = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v8 = next[1];
        v8 += 16;
      }

      v35 = v8;
      next = *next;
    }

    while (next);
  }

  v13 = objc_msgSend_rowIndexesForUIDs_(tableCopy, v5, &v34, v6);
  v25 = 0;
  v26 = &v25;
  v27 = 0x4812000000;
  v28 = sub_2213ED618;
  v29 = sub_2213ED63C;
  v30 = &unk_22188E88F;
  v32 = 0;
  v33 = 0;
  __p = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2213ED654;
  v21[3] = &unk_278463BE0;
  v14 = tableCopy;
  v22 = v14;
  selfCopy = self;
  v24 = &v25;
  objc_msgSend_enumerateIndexesUsingBlock_(v13, v15, v21, v16);
  v19 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v17, (v26 + 6), v18);
  sub_221087B24(&self->_rowUIDToColumnUIDSetMap);

  _Block_object_dispose(&v25, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  os_unfair_lock_unlock(&self->_unfairLock);

  return v19;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end