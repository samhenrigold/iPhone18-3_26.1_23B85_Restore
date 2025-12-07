@interface TSTCellUIDList
+ (id)cellUIDList;
+ (id)cellUIDListFromRange:(const void *)range;
- (TSTCellUIDList)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (id)iterator;
- (id)pruneCellUIDListAgainstTable:(id)table behavior:(unint64_t)behavior;
- (id)pruneCellUIDListAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block;
- (unint64_t)computeValidCount;
- (void)addCellRegion:(id)region withColumnUIDs:(const void *)ds rowUIDs:(const void *)iDs;
- (void)addCellUID:(const TSKUIDStructCoord *)d;
- (void)addCellUIDRanges:(const void *)ranges;
- (void)addCellUIDs:(void *)ds;
- (void)compress;
- (void)compressUIDIndexListFrom:(const void *)from withUIDCount:(unint64_t)count to:(void *)to;
- (void)enumerateCellUIDsUsingBlock:(id)block;
- (void)p_compressUID:(const TSKUIDStruct *)d index:(unint64_t)index UIDtoIndexMap:(void *)map UIDs:(void *)ds compressedIndexes:(void *)indexes lastSameUIDIndex:(void *)dIndex;
- (void)reserve:(unint64_t)reserve;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
- (void)setCompressedColumnIndexes:(const void *)indexes;
@end

@implementation TSTCellUIDList

+ (id)cellUIDList
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)cellUIDListFromRange:(const void *)range
{
  if (((*(range + 4) - *(range + 3)) >> 4) * ((*(range + 1) - *range) >> 4))
  {
    v7 = objc_alloc_init(objc_opt_class());
    v8 = *(range + 3);
    v9 = *(range + 4);
    while (v8 != v9)
    {
      v10 = *range;
      v11 = *(range + 1);
      while (v10 != v11)
      {
        v12 = v7[13];
        TSTMakeCellUID(v16);
        objc_msgSend_addCellUID_(v12, v13, v16, v14);
        v10 += 16;
      }

      v8 += 16;
    }

    objc_msgSend_compress(v7, v4, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TSTCellUIDList)init
{
  v8.receiver = self;
  v8.super_class = TSTCellUIDList;
  v2 = [(TSTCellUIDList *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uncompressedCellUIDs = v2->_uncompressedCellUIDs;
    v2->_uncompressedCellUIDs = v3;

    v5 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (id)initFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v28.receiver = self;
  v28.super_class = TSTCellUIDList;
  v7 = [(TSTCellUIDList *)&v28 init];
  if (v7)
  {
    v8 = objc_opt_new();
    uncompressedCellUIDs = v7->_uncompressedCellUIDs;
    v7->_uncompressedCellUIDs = v8;

    sub_22123EA84(&v26, message + 48);
    begin = v7->_columnIdList.__begin_;
    if (begin)
    {
      v7->_columnIdList.__end_ = begin;
      operator delete(begin);
      v7->_columnIdList.__begin_ = 0;
      v7->_columnIdList.__end_ = 0;
      v7->_columnIdList.__cap_ = 0;
    }

    *&v7->_columnIdList.__begin_ = v26;
    v7->_columnIdList.__cap_ = v27;
    sub_22123EA84(&v26, message + 24);
    v11 = v7->_rowIdList.__begin_;
    if (v11)
    {
      v7->_rowIdList.__end_ = v11;
      operator delete(v11);
      v7->_rowIdList.__begin_ = 0;
      v7->_rowIdList.__end_ = 0;
      v7->_rowIdList.__cap_ = 0;
    }

    *&v7->_rowIdList.__begin_ = v26;
    v7->_rowIdList.__cap_ = v27;
    sub_221287820(&v7->_columnUIDIndexList.__begin_, *(message + 12), (*(message + 12) + 4 * *(message + 22)), *(message + 22));
    sub_221287820(&v7->_rowUIDIndexList.__begin_, *(message + 10), (*(message + 10) + 4 * *(message + 18)), *(message + 18));
    v16 = v7->_rowIdList.__begin_;
    end = v7->_rowIdList.__end_;
    v18 = v7->_rowUIDIndexList.__begin_;
    v17 = v7->_rowUIDIndexList.__end_;
    v19 = v17 - v18;
    v7->_compressedSize = v19;
    if (v17 != v18)
    {
      v20 = -((end - v16) >> 4);
      do
      {
        if (v20 >= *v18)
        {
          v19 += v20 - *v18;
          v7->_compressedSize = v19;
        }

        ++v18;
      }

      while (v18 != v17);
    }

    if (*(message + 16))
    {
      v21 = objc_msgSend_UIDLookupList(v7->_uncompressedCellUIDs, v12, v13, v14);
      if (*(message + 13))
      {
        v22 = *(message + 13);
      }

      else
      {
        v22 = &TST::_CellUIDLookupListArchive_default_instance_;
      }

      sub_22137B4D0(v21, v22);
    }

    v23 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
    queue = v7->_queue;
    v7->_queue = v23;
  }

  return v7;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  objc_msgSend_compress(self, a2, message, archiver);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2213C4808;
  v7[3] = &unk_278461DA8;
  v7[4] = self;
  v7[5] = message;
  dispatch_sync(queue, v7);
}

- (void)setCompressedColumnIndexes:(const void *)indexes
{
  p_columnUIDIndexList = &self->_columnUIDIndexList;
  if (p_columnUIDIndexList != indexes)
  {
    sub_22137BB5C(p_columnUIDIndexList, *indexes, *(indexes + 1), (*(indexes + 1) - *indexes) >> 2);
  }
}

- (unint64_t)computeValidCount
{
  v5 = objc_msgSend_count(self->_uncompressedCellUIDs, a2, v2, v3);
  v9 = v5;
  for (i = self->_rowIdList.__begin_; i != self->_rowIdList.__end_; ++i)
  {
    if (*i == 0)
    {
LABEL_9:
      v15 = objc_msgSend_iterator(self, v6, v7, v8);
      if (v15)
      {
        while (1)
        {
          objc_msgSend_nextCellUID(v15, v12, v13, v14);
          if (v17 == 0 || !v18 && !v19)
          {
            break;
          }

          ++v9;
        }
      }

      return v9;
    }
  }

  for (j = self->_columnIdList.__begin_; j != self->_columnIdList.__end_; ++j)
  {
    if (*j == 0)
    {
      goto LABEL_9;
    }
  }

  return self->_compressedSize + v5;
}

- (id)iterator
{
  v3 = [TSTCellUIDIterator alloc];
  v6 = objc_msgSend_initWithCellUIDList_(v3, v4, self, v5);

  return v6;
}

- (void)addCellUID:(const TSKUIDStructCoord *)d
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213C4B6C;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = d;
  dispatch_barrier_sync(queue, v4);
}

- (void)reserve:(unint64_t)reserve
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213C4BEC;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = reserve;
  dispatch_barrier_sync(queue, v4);
}

- (void)addCellUIDs:(void *)ds
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213C4C6C;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = ds;
  dispatch_barrier_sync(queue, v4);
}

- (void)addCellUIDRanges:(const void *)ranges
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2213C4D58;
  v4[3] = &unk_278461DA8;
  v4[4] = self;
  v4[5] = ranges;
  dispatch_barrier_sync(queue, v4);
}

- (void)addCellRegion:(id)region withColumnUIDs:(const void *)ds rowUIDs:(const void *)iDs
{
  regionCopy = region;
  v10 = objc_msgSend_regionByIntersectingRange_(regionCopy, v9, 0, ((*(iDs + 1) - *iDs) << 28) & 0xFFFFFFFF00000000 | ((*(ds + 1) - *ds) >> 4));

  v14 = objc_msgSend_cellCount(v10, v11, v12, v13);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213C4F24;
  block[3] = &unk_278464340;
  block[4] = self;
  v18 = v10;
  v19 = v14;
  dsCopy = ds;
  iDsCopy = iDs;
  v16 = v10;
  dispatch_barrier_sync(queue, block);
}

- (void)compress
{
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 1;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213C5560;
  block[3] = &unk_278464368;
  block[4] = self;
  block[5] = &v63;
  block[6] = &v67;
  dispatch_sync(queue, block);
  if ((v68[3] & 1) == 0)
  {
    v61[0] = 0;
    v61[1] = 0;
    v59[1] = 0;
    v60 = v61;
    v58 = v59;
    v59[0] = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x4812000000;
    v52 = sub_2213C55B4;
    v53 = sub_2213C55D8;
    v54 = &unk_22188E88F;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x4812000000;
    v43 = sub_2213C55B4;
    v44 = sub_2213C55D8;
    v45 = &unk_22188E88F;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v4 = v64[3];
    if (v4 / 0x64 >= 0x30D40)
    {
      v5 = 200000;
    }

    else
    {
      v5 = v4 / 0x64;
    }

    if (v4 >= 0x3E8)
    {
      v6 = 1000;
    }

    else
    {
      v6 = v64[3];
    }

    sub_221083368(&v55, v5);
    sub_2211663C4(&v37, v5);
    sub_2211687C4(&v31, v5);
    sub_221083368(v41 + 6, v6);
    sub_2211663C4(&v34, v6);
    sub_2211687C4(&v28, v6);
    v10 = objc_msgSend_iterator(self, v7, v8, v9);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    sub_22127D034(&v25, 0x3E8uLL);
    v12 = 0;
    while (objc_msgSend_nextCellUIDsBatch_batchSize_(v10, v11, &v25, 1000))
    {
      v13 = v25;
      v14 = v26;
      while (v13 != v14)
      {
        objc_msgSend_p_compressUID_index_UIDtoIndexMap_UIDs_compressedIndexes_lastSameUIDIndex_(self, v11, (v13 + 16), v12, &v60, v50 + 6, &v37, &v31);
        objc_msgSend_p_compressUID_index_UIDtoIndexMap_UIDs_compressedIndexes_lastSameUIDIndex_(self, v15, v13, v12++, &v58, v41 + 6, &v34, &v28);
        v13 += 32;
      }
    }

    v16 = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3321888768;
    v17[2] = sub_2213C55F0;
    v17[3] = &unk_2834A7170;
    v17[4] = self;
    v17[5] = &v49;
    v17[6] = &v40;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    sub_2212A44A0(&v18, v37, v38, (v38 - v37) >> 2);
    __p = 0;
    v22 = 0;
    v23 = 0;
    sub_2212A44A0(&__p, v34, v35, (v35 - v34) >> 2);
    v24 = v12;
    dispatch_barrier_sync(v16, v17);
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

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    _Block_object_dispose(&v40, 8);
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    _Block_object_dispose(&v49, 8);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    sub_2210BC9F8(&v58, v59[0]);
    sub_2210BC9F8(&v60, v61[0]);
  }

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
}

- (void)p_compressUID:(const TSKUIDStruct *)d index:(unint64_t)index UIDtoIndexMap:(void *)map UIDs:(void *)ds compressedIndexes:(void *)indexes lastSameUIDIndex:(void *)dIndex
{
  v14 = sub_22112C8D0(map, &d->_lower);
  if (map + 8 == v14)
  {
    v16 = *(ds + 1) - *ds;
    dCopy = d;
    *(sub_221335730(map, &d->_lower, &unk_2217E1940, &dCopy) + 48) = v16 >> 4;
    v18 = *(ds + 1);
    v17 = *(ds + 2);
    if (v18 >= v17)
    {
      v20 = (v18 - *ds) >> 4;
      v21 = v20 + 1;
      if ((v20 + 1) >> 60)
      {
        sub_22107C148();
      }

      v22 = v17 - *ds;
      if (v22 >> 3 > v21)
      {
        v21 = v22 >> 3;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v23 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        sub_221086F74(ds, v23);
      }

      v24 = (16 * v20);
      *v24 = *d;
      v19 = 16 * v20 + 16;
      v25 = *(ds + 1) - *ds;
      v26 = v24 - v25;
      memcpy(v24 - v25, *ds, v25);
      v27 = *ds;
      *ds = v26;
      *(ds + 1) = v19;
      *(ds + 2) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v18 = *d;
      v19 = &v18[1];
    }

    *(ds + 1) = v19;
    LODWORD(dCopy) = -(v16 >> 4);
    sub_2210C47D0(indexes, &dCopy);
    v29 = *(dIndex + 1);
    v28 = *(dIndex + 2);
    if (v29 >= v28)
    {
      v31 = *dIndex;
      v32 = v29 - *dIndex;
      v33 = v32 >> 3;
      v34 = (v32 >> 3) + 1;
      if (v34 >> 61)
      {
        sub_22107C148();
      }

      v35 = v28 - v31;
      if (v35 >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      v36 = v35 >= 0x7FFFFFFFFFFFFFF8;
      v37 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v36)
      {
        v37 = v34;
      }

      if (v37)
      {
        sub_2210874C4(dIndex, v37);
      }

      *(8 * v33) = index;
      v30 = 8 * v33 + 8;
      memcpy(0, v31, v32);
      v38 = *dIndex;
      *dIndex = 0;
      *(dIndex + 1) = v30;
      *(dIndex + 2) = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v29 = index;
      v30 = (v29 + 1);
    }

    *(dIndex + 1) = v30;
  }

  else
  {
    v15 = v14[6];
    if (index - *(*dIndex + 8 * v15) > 0x3E8)
    {
      LODWORD(dCopy) = -v15;
    }

    else
    {
      LODWORD(dCopy) = index - *(*dIndex + 8 * v15);
    }

    sub_2210C47D0(indexes, &dCopy);
    *(*dIndex + 8 * v15) = index;
  }
}

- (void)compressUIDIndexListFrom:(const void *)from withUIDCount:(unint64_t)count to:(void *)to
{
  v5 = *from;
  v6 = *(from + 1);
  if (*from != v6)
  {
    v8 = -count;
    v12 = -count;
    do
    {
      v11 = *v5;
      if (v11 == v8)
      {
        v9 = *(to + 1);
        v10 = *(v9 - 4);
        if (v10 == v8)
        {
          sub_2210C47D0(to, &v12);
        }

        else
        {
          *(v9 - 4) = v10 - 1;
        }
      }

      else
      {
        sub_2210C47D0(to, &v11);
        v8 = v11;
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

- (id)pruneCellUIDListAgainstTable:(id)table behavior:(unint64_t)behavior
{
  v4 = objc_msgSend_pruneCellUIDListAgainstTable_behavior_usingBlock_(self, a2, table, behavior, 0);

  return v4;
}

- (id)pruneCellUIDListAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block
{
  tableCopy = table;
  blockCopy = block;
  v13 = objc_msgSend_cellUIDList(TSTCellUIDList, v10, v11, v12);
  if ((objc_msgSend_isEmptyPivot(tableCopy, v14, v15, v16) & 1) == 0)
  {
    if (objc_msgSend_compressedSize(self, v17, v18, v19))
    {
      v21 = objc_opt_new();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_2213C5C8C;
      v31[3] = &unk_278464390;
      v22 = v21;
      v32 = v22;
      objc_msgSend_enumerateCellUIDsUsingBlock_(self, v23, v31, v24);
      v26 = objc_msgSend_copyByPruningAgainstTable_behavior_usingBlock_(v22, v25, tableCopy, behavior, blockCopy);
      v27 = v13[13];
      v13[13] = v26;
    }

    else
    {
      v28 = objc_msgSend_copyByPruningAgainstTable_behavior_usingBlock_(self->_uncompressedCellUIDs, v20, tableCopy, behavior, blockCopy);
      v29 = v13[13];
      v13[13] = v28;
    }
  }

  return v13;
}

- (void)enumerateCellUIDsUsingBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend_iterator(self, v5, v6, v7);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_22127D034(&__p, 0x3E8uLL);
  v10 = 0;
  v13 = 0;
LABEL_2:
  while (objc_msgSend_nextCellUIDsBatch_batchSize_(v8, v9, &__p, 1000))
  {
    v11 = __p;
    v12 = v15;
    if (__p != v15)
    {
      while (1)
      {
        blockCopy[2](blockCopy, v11, v10, &v13);
        if (v13)
        {
          goto LABEL_9;
        }

        ++v10;
        v11 += 32;
        if (v11 == v12)
        {
          goto LABEL_2;
        }
      }
    }

    if (v13)
    {
      break;
    }
  }

LABEL_9:
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTCellUIDList);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2213C5E68;
  v9[3] = &unk_27845FEF0;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  dispatch_sync(queue, v9);
  v7 = v6;

  return v7;
}

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end