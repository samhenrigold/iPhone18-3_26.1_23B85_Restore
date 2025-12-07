@interface OrgApacheLuceneUtilPackedPackedInts_$1
- (OrgApacheLuceneUtilPackedPackedInts_$1)initWithLong:(int64_t)long withInt:(int)int withInt:(int)withInt withOrgApacheLuceneStoreIndexInput:(id)input;
- (int64_t)getWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_$1

- (int64_t)getWithInt:(int)int
{
  v8.receiver = self;
  v8.super_class = OrgApacheLuceneUtilPackedPackedInts__1;
  v5 = [(OrgApacheLuceneUtilPackedDirectPackedReader *)&v8 getWithInt:?];
  if (self->super.super.valueCount_ - 1 == int)
  {
    in = self->super.in_;
    if (!in)
    {
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneStoreIndexInput *)in seekWithLong:self->val$endPointer_];
  }

  return v5;
}

- (OrgApacheLuceneUtilPackedPackedInts_$1)initWithLong:(int64_t)long withInt:(int)int withInt:(int)withInt withOrgApacheLuceneStoreIndexInput:(id)input
{
  self->val$endPointer_ = long;
  OrgApacheLuceneUtilPackedDirectPackedReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(self, int, withInt, input);
  return self;
}

@end