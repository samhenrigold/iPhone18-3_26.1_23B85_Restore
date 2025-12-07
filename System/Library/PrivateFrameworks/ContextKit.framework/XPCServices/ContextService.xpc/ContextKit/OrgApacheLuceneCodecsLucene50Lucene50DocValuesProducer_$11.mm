@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$11
- (id)lookupOrdWithLong:(int64_t)long;
- (id)termsEnum;
- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (int64_t)nextOrd;
- (int64_t)ordAtWithInt:(int)int;
- (void)dealloc;
- (void)setDocumentWithInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$11

- (void)setDocumentWithInt:(int)int
{
  v4 = self->val$ordinals_;
  if (!v4 || (v5 = [(OrgApacheLuceneUtilLongValues *)v4 getWithInt:*&int], (v6 = self->val$offsets_) == 0))
  {
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = v5 << 32;
  size = v6->super.size_;
  if ((v7 & 0x80000000) != 0 || size <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  v10 = *(&v6->super.size_ + v7 + 1);
  self->startOffset_ = v10;
  self->offset_ = v10;
  v11 = self->val$offsets_;
  v12 = (&_mh_execute_header + v8) >> 32;
  v13 = v11->super.size_;
  if (v12 < 0 || v13 <= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, (&_mh_execute_header + v8) >> 32);
  }

  self->endOffset_ = *(&v11->super.size_ + v12 + 1);
}

- (int64_t)ordAtWithInt:(int)int
{
  v3 = self->val$table_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  startOffset = self->startOffset_;
  size = v3->super.size_;
  v6 = startOffset + int;
  if (startOffset + int < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (startOffset + int));
  }

  return v3->buffer_[v6];
}

- (int64_t)nextOrd
{
  offset = self->offset_;
  if (offset == self->endOffset_)
  {
    return -1;
  }

  v4 = self->val$table_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  self->offset_ = offset + 1;
  size = v4->super.size_;
  if ((offset & 0x80000000) != 0 || offset >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, offset);
  }

  return v4->buffer_[offset];
}

- (id)lookupOrdWithLong:(int64_t)long
{
  v4 = self->val$binary_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues *)v4 getWithLong:long];
}

- (int64_t)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->val$binary_;
    objc_opt_class();
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues *)v5 lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__11;
    return [(OrgApacheLuceneIndexSortedSetDocValues *)&v7 lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
  }
}

- (id)termsEnum
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->val$binary_;
    objc_opt_class();
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_LongBinaryDocValues *)v3 getTermsEnum];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__11;
    return [(OrgApacheLuceneIndexSortedSetDocValues *)&v5 termsEnum];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__11;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$11 *)&v3 dealloc];
}

@end