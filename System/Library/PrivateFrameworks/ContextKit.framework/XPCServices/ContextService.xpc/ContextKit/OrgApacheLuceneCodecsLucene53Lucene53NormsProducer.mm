@interface OrgApacheLuceneCodecsLucene53Lucene53NormsProducer
- (id)description;
- (id)getNormsWithOrgApacheLuceneIndexFieldInfo:(id)info;
- (int64_t)ramBytesUsed;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsProducer

- (id)getNormsWithOrgApacheLuceneIndexFieldInfo:(id)info
{
  norms = self->norms_;
  if (!norms || !info || (v5 = [(JavaUtilMap *)norms getWithId:JavaLangInteger_valueOfWithInt_(*(info + 4))]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if (v5[8])
  {
    data = self->data_;
    objc_sync_enter(data);
    v8 = v6[8];
    if (v8 > 3)
    {
      if (v8 == 4)
      {
        v19 = self->data_;
        if (v19)
        {
          v20 = [(OrgApacheLuceneStoreIndexInput *)v19 randomAccessSliceWithLong:*(v6 + 2) withLong:4 * self->maxDoc_];
          v11 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__4 alloc];
          JreStrongAssign(&v11->val$slice_, v20);
          OrgApacheLuceneIndexNumericDocValues_init();
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      if (v8 == 8)
      {
        v15 = self->data_;
        if (v15)
        {
          v16 = [(OrgApacheLuceneStoreIndexInput *)v15 randomAccessSliceWithLong:*(v6 + 2) withLong:8 * self->maxDoc_];
          v11 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__5 alloc];
          JreStrongAssign(&v11->val$slice_, v16);
          OrgApacheLuceneIndexNumericDocValues_init();
          goto LABEL_21;
        }

LABEL_23:
        JreThrowNullPointerException();
      }
    }

    else
    {
      if (v8 == 1)
      {
        v17 = self->data_;
        if (v17)
        {
          v18 = [(OrgApacheLuceneStoreIndexInput *)v17 randomAccessSliceWithLong:*(v6 + 2) withLong:self->maxDoc_];
          v11 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__2 alloc];
          JreStrongAssign(&v11->val$slice_, v18);
          OrgApacheLuceneIndexNumericDocValues_init();
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      if (v8 == 2)
      {
        v9 = self->data_;
        if (v9)
        {
          v10 = [(OrgApacheLuceneStoreIndexInput *)v9 randomAccessSliceWithLong:*(v6 + 2) withLong:2 * self->maxDoc_];
          v11 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__3 alloc];
          JreStrongAssign(&v11->val$slice_, v10);
          OrgApacheLuceneIndexNumericDocValues_init();
LABEL_21:
          v21 = v11;
          objc_sync_exit(data);
          return v21;
        }

        goto LABEL_23;
      }
    }

    v22 = new_JavaLangAssertionError_init();
    objc_exception_throw(v22);
  }

  v12 = *(v5 + 2);
  v13 = [OrgApacheLuceneCodecsLucene53Lucene53NormsProducer__1 alloc];
  v13->val$value_ = v12;
  OrgApacheLuceneIndexNumericDocValues_init();

  return v13;
}

- (void)close
{
  data = self->data_;
  if (!data)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)data close];
}

- (int64_t)ramBytesUsed
{
  norms = self->norms_;
  if (!norms)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilMap *)norms size]<< 6;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneCodecsLucene53Lucene53NormsProducer getClass](self "getClass")];
  norms = self->norms_;
  if (!norms)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)norms size];
  return JreStrcat("$$IC", v5, v6, v7, v8, v9, v10, v11, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53Lucene53NormsProducer;
  [(OrgApacheLuceneCodecsLucene53Lucene53NormsProducer *)&v3 dealloc];
}

@end