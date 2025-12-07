@interface OrgApacheLuceneUtilPackedDirect64
- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int64_t)getWithInt:(int)int;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedDirect64

- (int64_t)getWithInt:(int)int
{
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  size = values->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  return values->buffer_[int];
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  size = values->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  values->buffer_[int] = long;
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

  v4 = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + 8);
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->values_) + v4;
}

- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v6 = *&withInt;
  v8 = *&int;
  v10 = JavaLangMath_minWithInt_withInt_((self->super.valueCount_ - int), a6);
  v11 = v10;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->values_, v8, array, v6, v10);
  return v11;
}

- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v6 = *&withInt;
  v8 = *&int;
  v10 = JavaLangMath_minWithInt_withInt_((self->super.valueCount_ - int), a6);
  v11 = v10;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v6, self->values_, v8, v10);
  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDirect64;
  [(OrgApacheLuceneUtilPackedDirect64 *)&v3 dealloc];
}

@end