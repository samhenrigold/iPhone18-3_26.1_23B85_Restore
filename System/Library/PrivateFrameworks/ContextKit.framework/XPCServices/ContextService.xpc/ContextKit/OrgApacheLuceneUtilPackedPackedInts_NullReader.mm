@interface OrgApacheLuceneUtilPackedPackedInts_NullReader
- (OrgApacheLuceneUtilPackedPackedInts_NullReader)initWithInt:(int)int;
- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int64_t)ramBytesUsed;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_NullReader

- (OrgApacheLuceneUtilPackedPackedInts_NullReader)initWithInt:(int)int
{
  OrgApacheLuceneIndexNumericDocValues_init();
  self->valueCount_ = int;
  return self;
}

- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v6 = *&withInt;
  v8 = JavaLangMath_minWithInt_withInt_(*&a6, self->valueCount_ - int);
  JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(array, v6, (v8 + v6), 0, v9, v10, v11, v12);
  return v8;
}

- (int64_t)ramBytesUsed
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000120A8();
  }

  v3 = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER_ + 4;

  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v3);
}

@end