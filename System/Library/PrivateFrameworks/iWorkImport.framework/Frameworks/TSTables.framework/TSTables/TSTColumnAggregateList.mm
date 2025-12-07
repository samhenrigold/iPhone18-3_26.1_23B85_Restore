@interface TSTColumnAggregateList
- (BOOL)isEqual:(id)equal;
- (BOOL)isFunctionallyEquivalent:(id)equivalent;
- (NSArray)columnAggregateUuids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnAggregateUidList;
- (TSTColumnAggregateList)initWithArchive:(const void *)archive;
- (TSTColumnAggregateList)initWithColumnAggregates:(id)aggregates;
- (id)aggregateAtIndex:(unint64_t)index;
- (id)aggregatesOnLevel:(unsigned __int8)level;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTColumnAggregateList

- (TSTColumnAggregateList)initWithColumnAggregates:(id)aggregates
{
  aggregatesCopy = aggregates;
  v10.receiver = self;
  v10.super_class = TSTColumnAggregateList;
  v5 = [(TSTColumnAggregateList *)&v10 init];
  if (v5)
  {
    if (aggregatesCopy)
    {
      v6 = objc_alloc(MEMORY[0x277CBEA60]);
      v8 = objc_msgSend_initWithArray_copyItems_(v6, v7, aggregatesCopy, 1);
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&v5->_columnAggregates, v8);
    if (aggregatesCopy)
    {
    }
  }

  return v5;
}

- (id)aggregateAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    if (objc_msgSend_count(self->_columnAggregates, a2, index, v3) <= index)
    {
      v5 = 0;
    }

    else
    {
      v5 = objc_msgSend_objectAtIndexedSubscript_(self->_columnAggregates, v9, index, v10);
    }
  }

  return v5;
}

- (id)aggregatesOnLevel:(unsigned __int8)level
{
  levelCopy = level;
  v25 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_columnAggregates;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_level(v14, v8, v9, v10, v20) == levelCopy)
        {
          objc_msgSend_addObject_(v5, v8, v14, v10);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v20, v24, 16);
    }

    while (v11);
  }

  v15 = [TSTColumnAggregateList alloc];
  v18 = objc_msgSend_initWithColumnAggregates_(v15, v16, v5, v17);

  return v18;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnAggregateUidList
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = sub_2211C92E8;
  v13 = sub_2211C930C;
  *__p = 0u;
  v15 = 0u;
  columnAggregates = self->_columnAggregates;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211C9324;
  v8[3] = &unk_278460CD8;
  v8[4] = &v9;
  objc_msgSend_enumerateObjectsUsingBlock_(columnAggregates, a3, v8, v3);
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

- (NSArray)columnAggregateUuids
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2211C9594;
  v22 = sub_2211C95A4;
  v5 = MEMORY[0x277CBEB18];
  v6 = objc_msgSend_count(self->_columnAggregates, a2, v2, v3);
  v23 = objc_msgSend_arrayWithCapacity_(v5, v7, v6, v8);
  columnAggregates = self->_columnAggregates;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2211C95AC;
  v17[3] = &unk_278460CD8;
  v17[4] = &v18;
  objc_msgSend_enumerateObjectsUsingBlock_(columnAggregates, v10, v17, v11);
  v15 = objc_msgSend_copy(v19[5], v12, v13, v14);
  _Block_object_dispose(&v18, 8);

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  columnAggregates = self->_columnAggregates;

  return objc_msgSend_initWithColumnAggregates_(v4, v5, columnAggregates, v6);
}

- (TSTColumnAggregateList)initWithArchive:(const void *)archive
{
  v7 = objc_opt_new();
  v8 = *(archive + 6);
  if (v8 >= 1)
  {
    v9 = 8;
    do
    {
      v10 = [TSTColumnAggregate alloc];
      v15 = objc_msgSend_initWithArchive_(v10, v11, *(*(archive + 4) + v9), v12);
      if (v15)
      {
        objc_msgSend_addObject_(v7, v13, v15, v14);
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  v16 = objc_msgSend_initWithColumnAggregates_(self, v5, v7, v6);

  return v16;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  v26 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_columnAggregates;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = *(archive + 4);
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = *(archive + 6);
        v16 = *v14;
        if (v15 < *v14)
        {
          *(archive + 6) = v15 + 1;
          objc_msgSend_encodeToArchive_archiver_(v13, v9, *&v14[2 * v15 + 2], archiverCopy, v21);
          goto LABEL_13;
        }

        if (v16 == *(archive + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
          v14 = *(archive + 4);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateArchive>(*(archive + 2));
        v18 = *(archive + 6);
        v19 = *(archive + 4) + 8 * v18;
        *(archive + 6) = v18 + 1;
        *(v19 + 8) = v17;
        objc_msgSend_encodeToArchive_archiver_(v13, v20, v17, archiverCopy, v21);
LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v21, v25, 16);
    }

    while (v10);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (v8 && (v9 = objc_msgSend_count(self, v5, v6, v7), v9 == objc_msgSend_count(v8, v10, v11, v12)))
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 1;
      columnAggregates = self->_columnAggregates;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_2211C9A88;
      v18[3] = &unk_278460D00;
      v19 = v8;
      v20 = &v21;
      objc_msgSend_enumerateObjectsUsingBlock_(columnAggregates, v14, v18, v15);
      v16 = *(v22 + 24);

      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16 & 1;
}

- (BOOL)isFunctionallyEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (self == equivalentCopy)
  {
    v15 = 1;
  }

  else
  {
    v8 = objc_msgSend_count(self, v4, v5, v6);
    if (v8 == objc_msgSend_count(equivalentCopy, v9, v10, v11))
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 1;
      columnAggregates = self->_columnAggregates;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2211C9C74;
      v17[3] = &unk_278460D00;
      v18 = equivalentCopy;
      v19 = &v20;
      objc_msgSend_enumerateObjectsUsingBlock_(columnAggregates, v13, v17, v14);
      v15 = *(v21 + 24);

      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

@end