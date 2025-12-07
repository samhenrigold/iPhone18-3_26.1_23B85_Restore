@interface OrgApacheLuceneUtilPackedMonotonicLongValues_Builder
+ (void)initialize;
- (id)build;
- (void)dealloc;
- (void)growWithInt:(int)int;
- (void)packWithLongArray:(id)array withInt:(int)int withInt:(int)withInt withFloat:(float)float;
@end

@implementation OrgApacheLuceneUtilPackedMonotonicLongValues_Builder

- (id)build
{
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)self finish];
  JreStrongAssign(&self->super.super.pending_, 0);
  v3 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->super.super.values_, self->super.super.valuesOff_);
  v4 = JavaUtilArrays_copyOfWithLongArray_withInt_(self->super.mins_, self->super.super.valuesOff_);
  v5 = JavaUtilArrays_copyOfWithFloatArray_withInt_(self->averages_, self->super.super.valuesOff_);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedMonotonicLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10002CC18();
  }

  v6 = qword_100553EC8;
  v7 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(v3) + v6;
  v8 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(v4);
  v9 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(v5);
  v10 = new_OrgApacheLuceneUtilPackedMonotonicLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withFloatArray_withLong_withLong_(self->super.super.pageShift_, self->super.super.pageMask_, v3, v4, v5, self->super.super.size_, v7 + v8 + v9);

  return v10;
}

- (void)packWithLongArray:(id)array withInt:(int)int withInt:(int)withInt withFloat:(float)float
{
  v7 = *&withInt;
  v8 = *&int;
  v11 = 0.0;
  if (int == 1)
  {
    goto LABEL_7;
  }

  if (!array)
  {
    goto LABEL_17;
  }

  v12 = *(array + 2);
  v13 = int - 1;
  if (int - 1 < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v13);
  }

  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  v11 = (*(array + int + 1) - *(array + 2)) / (int - 1);
  if (int >= 1)
  {
LABEL_7:
    v14 = 0;
    arrayCopy = array;
    while (1)
    {
      v16 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(0, v14, v11);
      if (!array)
      {
        break;
      }

      v17 = v16;
      v18 = *(array + 2);
      if (v14 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v14);
      }

      arrayCopy[2] -= v17;
      ++v14;
      ++arrayCopy;
      if (v8 == v14)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

LABEL_13:
  v22.receiver = self;
  v22.super_class = OrgApacheLuceneUtilPackedMonotonicLongValues_Builder;
  *&v19 = float;
  [(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *)&v22 packWithLongArray:array withInt:v8 withInt:v7 withFloat:v19];
  averages = self->averages_;
  if (!averages)
  {
    goto LABEL_17;
  }

  size = averages->super.size_;
  if ((v7 & 0x80000000) != 0 || size <= v7)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  *(&averages->super.size_ + v7 + 1) = v11;
}

- (void)growWithInt:(int)int
{
  v3 = *&int;
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneUtilPackedMonotonicLongValues_Builder;
  [(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *)&v6 growWithInt:?];
  self->super.super.ramBytesUsed_ -= OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(self->averages_);
  v5 = JavaUtilArrays_copyOfWithFloatArray_withInt_(self->averages_, v3);
  JreStrongAssign(&self->averages_, v5);
  self->super.super.ramBytesUsed_ += OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(self->averages_);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedMonotonicLongValues_Builder;
  [(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedMonotonicLongValues_Builder_class_();
    qword_100553EE0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedMonotonicLongValues_Builder__initialized);
  }
}

@end