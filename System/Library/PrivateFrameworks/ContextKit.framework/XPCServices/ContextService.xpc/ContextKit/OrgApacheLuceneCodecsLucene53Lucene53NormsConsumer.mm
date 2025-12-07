@interface OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer
- (void)addConstantWithLong:(int64_t)long;
- (void)addNormsFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer

- (void)addNormsFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable
{
  meta = self->meta_;
  if (!meta)
  {
    goto LABEL_28;
  }

  if (!info)
  {
    goto LABEL_28;
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (!iterable)
  {
    goto LABEL_28;
  }

  v7 = [iterable countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v7)
  {
    if (!self->maxDoc_)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = 0x8000000000000000;
      goto LABEL_18;
    }

    goto LABEL_31;
  }

  v15 = v7;
  v16 = 0;
  v17 = *v28;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 0x8000000000000000;
  do
  {
    v20 = 0;
    v21 = v16;
    v16 += v15;
    do
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(iterable);
      }

      v22 = *(*(&v27 + 1) + 8 * v20);
      if (!v22)
      {
        v25 = JreStrcat("$$$I", v8, v9, v10, v11, v12, v13, v14, @"illegal norms data for field ");
        goto LABEL_30;
      }

      longLongValue = [v22 longLongValue];
      v18 = JavaLangMath_minWithLong_withLong_(v18, longLongValue);
      v19 = JavaLangMath_maxWithLong_withLong_(v19, longLongValue);
      ++v21;
      v20 = v20 + 1;
    }

    while (v15 != v20);
    v15 = [iterable countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v15);
  if (v16 != self->maxDoc_)
  {
LABEL_31:
    v25 = JreStrcat("$$$I$I", v8, v9, v10, v11, v12, v13, v14, @"illegal norms data for field ");
LABEL_30:
    v26 = new_JavaLangIllegalStateException_initWithNSString_(v25);
    objc_exception_throw(v26);
  }

  if (v18 == v19)
  {
    v24 = self->meta_;
    if (v24)
    {
      [(OrgApacheLuceneStoreIndexOutput *)v24 writeByteWithByte:0];
      [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:v18];
      return;
    }

LABEL_28:
    JreThrowNullPointerException();
  }

LABEL_18:
  if (v18 < -128 || v19 > 127)
  {
    if (v18 < -32768 || v19 >= 0x8000)
    {
      if (v18 < 0xFFFFFFFF80000000 || v19 > 0x7FFFFFFF)
      {
        sub_100107A0C(self, iterable);
      }

      else
      {
        sub_1001078BC(self, iterable);
      }
    }

    else
    {
      sub_10010776C(self, iterable);
    }
  }

  else
  {
    sub_10010761C(self, iterable);
  }
}

- (void)addConstantWithLong:(int64_t)long
{
  meta = self->meta_;
  if (!meta)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexOutput *)meta writeByteWithByte:0];
  v6 = self->meta_;

  [(OrgApacheLuceneStoreDataOutput *)v6 writeLongWithLong:long];
}

- (void)close
{
  meta = self->meta_;
  if (meta)
  {
    [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:0xFFFFFFFFLL];
    OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(self->meta_);
  }

  data = self->data_;
  if (data)
  {
    data = OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(data);
    v5 = self->data_;
  }

  else
  {
    v5 = 0;
  }

  v6 = self->meta_;
  v9[0] = v5;
  v9[1] = v6;
  v7 = [IOSObjectArray arrayWithObjects:v9 count:2 type:JavaIoCloseable_class_(data, a2)];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v7);
  v8 = JreStrongAssign(&self->data_, 0);
  JreStrongAssign(&self->meta_, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer;
  [(OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *)&v3 dealloc];
}

@end