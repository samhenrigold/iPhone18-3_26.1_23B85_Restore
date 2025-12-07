@interface OrgApacheLuceneIndexSingletonSortedNumericDocValues
- (void)dealloc;
- (void)setDocumentWithInt:(int)int;
@end

@implementation OrgApacheLuceneIndexSingletonSortedNumericDocValues

- (void)setDocumentWithInt:(int)int
{
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  v5 = *&int;
  v6 = [(OrgApacheLuceneIndexNumericDocValues *)in getWithInt:?];
  self->value_ = v6;
  docsWithField = self->docsWithField_;
  if (docsWithField)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8 || [(OrgApacheLuceneUtilBits *)docsWithField getWithInt:v5];
  self->count_ = v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSingletonSortedNumericDocValues;
  [(OrgApacheLuceneIndexSingletonSortedNumericDocValues *)&v3 dealloc];
}

@end