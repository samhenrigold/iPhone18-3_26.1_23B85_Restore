@interface OrgApacheLuceneUtilPackedGrowableWriter
- (id)resizeWithInt:(int)int;
- (int)getBitsPerValue;
- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int)size;
- (int64_t)getWithInt:(int)int;
- (int64_t)ramBytesUsed;
- (void)clear;
- (void)dealloc;
- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long;
- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedGrowableWriter

- (int64_t)getWithInt:(int)int
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current getWithInt:*&int];
}

- (int)size
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current size];
}

- (int)getBitsPerValue
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current getBitsPerValue];
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v5 = *&int;
  sub_10001DA20(self, long);
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current setWithInt:v5 withLong:long];
}

- (void)clear
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current clear];
}

- (id)resizeWithInt:(int)int
{
  v3 = *&int;
  getBitsPerValue = [(OrgApacheLuceneUtilPackedGrowableWriter *)self getBitsPerValue];
  acceptableOverheadRatio = self->acceptableOverheadRatio_;
  v7 = [OrgApacheLuceneUtilPackedGrowableWriter alloc];
  OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(v7, getBitsPerValue, v3, acceptableOverheadRatio);
  v8 = v7;
  v9 = JavaLangMath_minWithInt_withInt_([(OrgApacheLuceneUtilPackedGrowableWriter *)self size], v3);
  OrgApacheLuceneUtilPackedPackedInts_copy__WithOrgApacheLuceneUtilPackedPackedInts_Reader_withInt_withOrgApacheLuceneUtilPackedPackedInts_Mutable_withInt_withInt_withInt_(self->current_, 0, v8, 0, v9, 0x400u);
  return v8;
}

- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Reader *)current getWithInt:*&int withLongArray:array withInt:*&withInt withInt:*&a6];
}

- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v6 = *&a6;
  v7 = *&withInt;
  v9 = *&int;
  if (a6 + withInt <= withInt)
  {
    v11 = 0;
  }

  else
  {
    if (!array)
    {
      goto LABEL_14;
    }

    v11 = 0;
    withIntCopy = withInt;
    v13 = array + 8 * withInt;
    v14 = a6;
    do
    {
      v15 = *(array + 2);
      if (withIntCopy < 0 || withIntCopy >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, withIntCopy);
      }

      v11 |= *(v13 + 2);
      ++withIntCopy;
      v13 += 8;
      --v14;
    }

    while (v14);
  }

  sub_10001DA20(self, v11);
  current = self->current_;
  if (!current)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current setWithInt:v9 withLongArray:array withInt:v7 withInt:v6];
}

- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long
{
  v6 = *&withInt;
  v7 = *&int;
  sub_10001DA20(self, long);
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current fillWithInt:v7 withInt:v6 withLong:long];
}

- (int64_t)ramBytesUsed
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v3 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_;
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v4 = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + 12);
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current ramBytesUsed]+ v4;
}

- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output
{
  current = self->current_;
  if (!current)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)current saveWithOrgApacheLuceneStoreDataOutput:output];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedGrowableWriter;
  [(OrgApacheLuceneUtilPackedGrowableWriter *)&v3 dealloc];
}

@end