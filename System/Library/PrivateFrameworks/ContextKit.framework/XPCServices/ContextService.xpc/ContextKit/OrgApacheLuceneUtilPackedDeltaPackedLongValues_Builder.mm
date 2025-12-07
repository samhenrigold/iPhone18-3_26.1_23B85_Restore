@interface OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder
+ (void)initialize;
- (id)build;
- (void)dealloc;
- (void)growWithInt:(int)int;
- (void)packWithLongArray:(id)array withInt:(int)int withInt:(int)withInt withFloat:(float)float;
@end

@implementation OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder

- (id)build
{
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)self finish];
  JreStrongAssign(&self->super.pending_, 0);
  v3 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->super.values_, self->super.valuesOff_);
  v4 = JavaUtilArrays_copyOfWithLongArray_withInt_(self->mins_, self->super.valuesOff_);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedDeltaPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E72BC();
  }

  v5 = qword_1005545A0;
  v6 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(v3) + v5;
  v7 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(v4);
  v8 = new_OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(self->super.pageShift_, self->super.pageMask_, v3, v4, self->super.size_, v6 + v7);

  return v8;
}

- (void)packWithLongArray:(id)array withInt:(int)int withInt:(int)withInt withFloat:(float)float
{
  if (!array)
  {
    goto LABEL_19;
  }

  v7 = *&withInt;
  v8 = *&int;
  v11 = *(array + 2);
  if (v11 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, 0);
  }

  v12 = *(array + 2);
  if (int > 1)
  {
    v13 = 1;
    do
    {
      v14 = *(array + 2);
      if (v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v13);
      }

      v12 = JavaLangMath_minWithLong_withLong_(v12, *(array + v13++ + 2));
    }

    while (v8 != v13);
  }

  if (v8 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(array + 2);
      if (v15 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v15);
      }

      *(array + v15++ + 2) -= v12;
    }

    while (v8 != v15);
  }

  v20.receiver = self;
  v20.super_class = OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder;
  *&v17 = float;
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)&v20 packWithLongArray:array withInt:v8 withInt:v7 withFloat:v17];
  mins = self->mins_;
  if (!mins)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  size = mins->super.size_;
  if ((v7 & 0x80000000) != 0 || size <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  mins->buffer_[v7] = v12;
}

- (void)growWithInt:(int)int
{
  v3 = *&int;
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder;
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)&v6 growWithInt:?];
  self->super.ramBytesUsed_ -= OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->mins_);
  v5 = JavaUtilArrays_copyOfWithLongArray_withInt_(self->mins_, v3);
  JreStrongAssign(&self->mins_, v5);
  self->super.ramBytesUsed_ += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->mins_);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder;
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_class_();
    qword_1005545B8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder__initialized);
  }
}

@end