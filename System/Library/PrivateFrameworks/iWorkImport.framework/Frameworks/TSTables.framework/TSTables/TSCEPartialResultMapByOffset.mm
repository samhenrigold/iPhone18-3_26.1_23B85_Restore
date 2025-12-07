@interface TSCEPartialResultMapByOffset
- (TSCEPartialResultMapByOffset)initWithPartialResultTree:(id)tree;
- (id).cxx_construct;
- (id)partialResultForOffset:(unsigned int)offset;
@end

@implementation TSCEPartialResultMapByOffset

- (TSCEPartialResultMapByOffset)initWithPartialResultTree:(id)tree
{
  treeCopy = tree;
  v24.receiver = self;
  v24.super_class = TSCEPartialResultMapByOffset;
  v5 = [(TSCEPartialResultMapByOffset *)&v24 init];
  if (v5)
  {
    v6 = [TSCEPartialResultTreeEnumerator alloc];
    v9 = objc_msgSend_initWithPartialResultTree_(v6, v7, treeCopy, v8);
    v16 = objc_msgSend_nextResult(v9, v10, v11, v12);
    if (v16)
    {
      do
      {
        if (objc_msgSend_offset(v16, v13, v14, v15) != -1)
        {
          v23 = objc_msgSend_offset(v16, v17, v18, v19);
          v25 = &v23;
          v20 = sub_2212E3780(&v5->_mapByOffset.__table_.__bucket_list_.__ptr_, &v23, &unk_2217E1201, &v25);
          objc_storeStrong(v20 + 3, v16);
        }

        v21 = objc_msgSend_nextResult(v9, v17, v18, v19);

        v16 = v21;
      }

      while (v21);
    }
  }

  return v5;
}

- (id)partialResultForOffset:(unsigned int)offset
{
  offsetCopy = offset;
  if (offset == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2211DC534(&self->_mapByOffset.__table_.__bucket_list_.__ptr_, &offsetCopy);
    if (v3)
    {
      v3 = v3[3];
    }
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end