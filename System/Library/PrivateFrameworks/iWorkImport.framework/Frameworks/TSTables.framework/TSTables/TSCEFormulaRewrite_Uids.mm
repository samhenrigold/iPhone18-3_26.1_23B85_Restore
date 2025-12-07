@interface TSCEFormulaRewrite_Uids
- (BOOL)containsIndex:(unsigned int)index;
- (TSCEFormulaRewrite_Uids)initWithUids:(const void *)uids;
- (TSCEFormulaRewrite_Uids)initWithUids:(const void *)uids atIndexes:(const void *)indexes;
- (TSKUIDStruct)uidForIndex:(unsigned int)index;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uidsForIndexes:(SEL)indexes;
- (id).cxx_construct;
- (id)description;
- (id)indexSetBySubtractingOurIndexesFromIndexSet:(id)set;
- (id)initFromMessage:(const void *)message;
- (unsigned)columnIndexForUid:(const TSKUIDStruct *)uid;
- (unsigned)rowIndexForUid:(const TSKUIDStruct *)uid;
- (void)loadIndexesForTable:(id)table isRows:(BOOL)rows shuffleMap:(id)map;
- (void)saveToMessage:(void *)message;
- (void)unloadIndexes;
@end

@implementation TSCEFormulaRewrite_Uids

- (TSCEFormulaRewrite_Uids)initWithUids:(const void *)uids
{
  v8.receiver = self;
  v8.super_class = TSCEFormulaRewrite_Uids;
  v4 = [(TSCEFormulaRewrite_Uids *)&v8 init];
  p_uids = &v4->_uids;
  if (v4)
  {
    v6 = p_uids == uids;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_2210BD068(p_uids, *uids, *(uids + 1), (*(uids + 1) - *uids) >> 4);
  }

  return v4;
}

- (TSCEFormulaRewrite_Uids)initWithUids:(const void *)uids atIndexes:(const void *)indexes
{
  v30.receiver = self;
  v30.super_class = TSCEFormulaRewrite_Uids;
  v6 = [(TSCEFormulaRewrite_Uids *)&v30 init];
  v9 = v6;
  if (v6)
  {
    p_uids = &v6->_uids;
    if (&v9->_uids != uids)
    {
      sub_2210BD068(p_uids, *uids, *(uids + 1), (*(uids + 1) - *uids) >> 4);
    }

    v11 = *indexes;
    if ((*(uids + 1) - *uids) >> 4 != (*(indexes + 1) - *indexes) >> 2)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCEFormulaRewrite_Uids initWithUids:atIndexes:]", v8);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 172, 0, "Size mismatch for our vectors");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
      v11 = *indexes;
    }

    v21 = objc_opt_new();
    v22 = *uids;
    v23 = *(uids + 1);
    if (*uids != v23)
    {
      do
      {
        if (v11 == *(indexes + 1))
        {
          break;
        }

        v29 = *v11;
        v24 = v29;
        v31 = v22;
        *(sub_221287990(&v9->_indexesForUids.__table_.__bucket_list_.__ptr_, v22, &unk_2217E1100, &v31) + 8) = v24;
        v31 = &v29;
        *(sub_2212CBA68(&v9->_uidsForIndexes.__table_.__bucket_list_.__ptr_, &v29, &unk_2217E1100, &v31) + 3) = *v22;
        objc_msgSend_addIndex_(v21, v25, v29, v26);
        v22 += 16;
      }

      while (v22 != v23);
    }

    indexes = v9->_indexes;
    v9->_indexes = v21;
  }

  return v9;
}

- (void)loadIndexesForTable:(id)table isRows:(BOOL)rows shuffleMap:(id)map
{
  rowsCopy = rows;
  tableCopy = table;
  mapCopy = map;
  objc_msgSend_unloadIndexes(self, v10, v11, v12);
  v14 = objc_opt_new();
  begin = self->_uids.__begin_;
  for (i = self->_uids.__end_; begin != i; ++begin)
  {
    v42 = 0;
    lower = begin->_lower;
    upper = begin->_upper;
    if (rowsCopy)
    {
      v19 = objc_msgSend_rowIndexForRowUID_(tableCopy, v13, lower, upper);
    }

    else
    {
      v19 = objc_msgSend_columnIndexForColumnUID_(tableCopy, v13, lower, upper);
    }

    v22 = v19;
    v42 = v19;
    if (mapCopy)
    {
      v22 = objc_msgSend_mapIndex_(mapCopy, v20, v19, v21);
      v42 = v22;
    }

    *&v40 = begin;
    *(sub_221287990(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, begin, &unk_2217E1100, &v40) + 8) = v22;
    *&v40 = &v42;
    *(sub_2212CBA68(&self->_uidsForIndexes.__table_.__bucket_list_.__ptr_, &v42, &unk_2217E1100, &v40) + 3) = *begin;
    objc_msgSend_addIndex_(v14, v23, v42, v24);
  }

  objc_storeStrong(&self->_indexes, v14);
  if (tableCopy && rowsCopy)
  {
    v25 = tableCopy;
    if (objc_opt_respondsToSelector())
    {
      v29 = objc_msgSend_calcEngine(v25, v26, v27, v28);
      *&v40 = objc_msgSend_resolverUID(v25, v30, v31, v32);
      *(&v40 + 1) = v33;
      v35 = objc_msgSend_tableResolverForTableUID_(v29, v33, &v40, v34);
      v38 = v35;
      if (v35)
      {
        objc_msgSend_viewOrderedRowUids_(v35, v36, &self->_uids, v37);
        v39 = self->_viewOrderUids.__begin_;
        if (v39)
        {
          self->_viewOrderUids.__end_ = v39;
          operator delete(v39);
          self->_viewOrderUids.__begin_ = 0;
          self->_viewOrderUids.__end_ = 0;
          self->_viewOrderUids.__cap_ = 0;
        }

        *&self->_viewOrderUids.__begin_ = v40;
        self->_viewOrderUids.__cap_ = v41;
      }
    }
  }
}

- (void)unloadIndexes
{
  sub_2210BE918(&self->_indexesForUids.__table_.__bucket_list_.__ptr_);
  sub_2210BE918(&self->_uidsForIndexes.__table_.__bucket_list_.__ptr_);
  indexes = self->_indexes;
  self->_indexes = 0;
}

- (BOOL)containsIndex:(unsigned int)index
{
  indexes = self->_indexes;
  if (!indexes)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewrite_Uids containsIndex:]", v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v11);
    v13 = NSStringFromSelector(a2);
    v14 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v12, 241, 0, "The %{public}@ API requires [%{public}@ loadIndexesForTable:] be called first.", v13, v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    indexes = self->_indexes;
  }

  return objc_msgSend_containsIndex_(indexes, a2, index, v3);
}

- (TSKUIDStruct)uidForIndex:(unsigned int)index
{
  LODWORD(v8) = index;
  if (objc_msgSend_containsIndex_(self, a2, *&index, v3, v8))
  {
    v9 = &v8;
    v5 = sub_2212CBA68(&self->_uidsForIndexes.__table_.__bucket_list_.__ptr_, &v8, &unk_2217E1100, &v9);
    v6 = v5[3];
    v7 = v5[4];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result._upper = v7;
  result._lower = v6;
  return result;
}

- (unsigned)rowIndexForUid:(const TSKUIDStruct *)uid
{
  if (sub_2210875C4(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, uid))
  {
    uidCopy = uid;
    return *(sub_221287990(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, uid, &unk_2217E1100, &uidCopy) + 8);
  }

  else
  {
    if (*uid != 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaRewrite_Uids rowIndexForUid:]", v7);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v12);
      v14 = NSStringFromSelector(a2);
      v15 = TSKUIDStruct::description(uid);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v13, 261, 0, "Warning, %{public}@ did not find the uuid: %@", v14, v15);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    return 0x7FFFFFFF;
  }
}

- (unsigned)columnIndexForUid:(const TSKUIDStruct *)uid
{
  if (sub_2210875C4(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, uid))
  {
    uidCopy = uid;
    return *(sub_221287990(&self->_indexesForUids.__table_.__bucket_list_.__ptr_, uid, &unk_2217E1100, &uidCopy) + 8);
  }

  else
  {
    if (*uid != 0)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaRewrite_Uids columnIndexForUid:]", v7);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteInfo_RowColumnInfo.mm", v12);
      v14 = NSStringFromSelector(a2);
      v15 = TSKUIDStruct::description(uid);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v10, v13, 273, 0, "Warning, %{public}@ did not find the uuid: %@", v14, v15);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    LOWORD(v8) = 0x7FFF;
  }

  return v8;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)uidsForIndexes:(SEL)indexes
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = sub_2212C7E00;
  v13 = sub_2212C7E24;
  *__p = 0u;
  v15 = 0u;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2212C7E3C;
  v8[3] = &unk_27845F0D8;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_enumerateIndexesUsingBlock_(a4, indexes, v8, v4);
  v6 = v10;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v6[6], v6[7], (v6[7] - v6[6]) >> 4);
  _Block_object_dispose(&v9, 8);
  result = __p[1];
  if (__p[1])
  {
    *&v15 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (id)indexSetBySubtractingOurIndexesFromIndexSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_mutableCopy(setCopy, v5, v6, v7);
  v9 = v8;
  if (v8)
  {
    indexes = self->_indexes;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2212C7F78;
    v14[3] = &unk_27845E1D0;
    v15 = v8;
    objc_msgSend_enumerateRangesUsingBlock_(indexes, v11, v14, v12);
  }

  return v9;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"<TSKUIDStructVector: %p>", v2, &self->_uids);
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"Uids: %@\nIndexes: %@", v7, v5, self->_indexes);

  return v8;
}

- (id)initFromMessage:(const void *)message
{
  v23.receiver = self;
  v23.super_class = TSCEFormulaRewrite_Uids;
  v4 = [(TSCEFormulaRewrite_Uids *)&v23 init];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = *(message + 6);
    if (v6 >= 1)
    {
      v7 = 8;
      v8 = MEMORY[0x277D809E0];
      do
      {
        TSCE::IndexedUidsArchive_IndexedUid::IndexedUidsArchive_IndexedUid(v20, *(*(message + 4) + v7));
        v19 = v22;
        v18 = 0uLL;
        if (v21)
        {
          v10 = v21;
        }

        else
        {
          v10 = v8;
        }

        *&v18 = TSKUIDStruct::loadFromMessage(v10, v9);
        *(&v18 + 1) = v11;
        sub_221083454(&v4->_uids, &v18);
        objc_msgSend_addIndex_(v5, v12, v19, v13);
        v14 = v19;
        v24 = &v18;
        *(sub_221287990(&v4->_indexesForUids.__table_.__bucket_list_.__ptr_, &v18, &unk_2217E1100, &v24) + 8) = v14;
        v24 = &v19;
        v15 = sub_2212CBA68(&v4->_uidsForIndexes.__table_.__bucket_list_.__ptr_, &v19, &unk_2217E1100, &v24);
        *(v15 + 3) = v18;
        TSCE::IndexedUidsArchive_IndexedUid::~IndexedUidsArchive_IndexedUid(v20);
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    indexes = v4->_indexes;
    v4->_indexes = v5;
  }

  return v4;
}

- (void)saveToMessage:(void *)message
{
  next = self->_uidsForIndexes.__table_.__first_node_.__next_;
  if (next)
  {
    while (1)
    {
      v5 = *(message + 4);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(message + 6);
      v7 = *v5;
      if (v6 >= *v5)
      {
        break;
      }

      *(message + 6) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
LABEL_9:
      v11 = *(v8 + 16);
      *(v8 + 32) = *(next + 4);
      *(v8 + 16) = v11 | 3;
      v12 = *(v8 + 24);
      if (!v12)
      {
        v13 = *(v8 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0360](v13);
        *(v8 + 24) = v12;
      }

      TSKUIDStruct::saveToMessage((next + 24), v12);
      next = *next;
      if (!next)
      {
        return;
      }
    }

    if (v7 == *(message + 7))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 16));
      v5 = *(message + 4);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive_IndexedUid>(*(message + 2));
    v9 = *(message + 6);
    v10 = *(message + 4) + 8 * v9;
    *(message + 6) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 18) = 1065353216;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 15) = 0;
  return self;
}

@end