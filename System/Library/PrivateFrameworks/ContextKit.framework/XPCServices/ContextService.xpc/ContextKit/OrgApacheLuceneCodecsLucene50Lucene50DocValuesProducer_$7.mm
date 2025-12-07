@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$7
- (id)lookupOrdWithInt:(int)int;
- (id)termsEnum;
- (int)getOrdWithInt:(int)int;
- (int)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$7

- (int)getOrdWithInt:(int)int
{
  v3 = self->val$ordinals_;
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilLongValues *)v3 getWithInt:*&int];
}

- (id)lookupOrdWithInt:(int)int
{
  v4 = self->val$binary_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexBinaryDocValues *)v4 getWithInt:*&int];
}

- (int)lookupTermWithOrgApacheLuceneUtilBytesRef:(id)ref
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

    return [(OrgApacheLuceneIndexBinaryDocValues *)v5 lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__7;
    return [(OrgApacheLuceneIndexSortedDocValues *)&v7 lookupTermWithOrgApacheLuceneUtilBytesRef:ref];
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

    return [(OrgApacheLuceneIndexBinaryDocValues *)v3 getTermsEnum];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__7;
    return [(OrgApacheLuceneIndexSortedDocValues *)&v5 termsEnum];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__7;
  [(OrgApacheLuceneIndexSortedDocValues *)&v3 dealloc];
}

@end