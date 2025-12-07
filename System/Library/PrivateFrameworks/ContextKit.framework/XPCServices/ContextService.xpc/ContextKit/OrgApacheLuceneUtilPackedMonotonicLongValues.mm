@interface OrgApacheLuceneUtilPackedMonotonicLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedMonotonicLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLongArray:(id)longArray withFloatArray:(id)floatArray withLong:(int64_t)long withLong:(int64_t)withLong;
- (int)decodeBlockWithInt:(int)int withLongArray:(id)array;
- (int64_t)getWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedMonotonicLongValues

- (OrgApacheLuceneUtilPackedMonotonicLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLongArray:(id)longArray withFloatArray:(id)floatArray withLong:(int64_t)long withLong:(int64_t)withLong
{
  OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(self, int, withInt, array, longArray, long, withLong);
  JreStrongAssign(&self->averages_, floatArray);
  return self;
}

- (int64_t)getWithInt:(int)int withInt:(int)withInt
{
  mins = self->super.mins_;
  if (!mins)
  {
    goto LABEL_12;
  }

  v5 = *&withInt;
  v6 = *&int;
  size = mins->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  averages = self->averages_;
  if (!averages)
  {
    goto LABEL_12;
  }

  v10 = mins->buffer_[int];
  v11 = averages->super.size_;
  if (int < 0 || v11 <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, *&int);
  }

  v12 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(v10, withInt, *(&averages->super.size_ + int + 1));
  values = self->super.super.values_;
  if (!values)
  {
    goto LABEL_12;
  }

  v14 = v12;
  v15 = values->super.size_;
  if ((v6 & 0x80000000) != 0 || v15 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, v6);
  }

  v16 = (&values->elementType_)[v6];
  if (!v16)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  return [(IOSClass *)v16 getWithInt:v5]+ v14;
}

- (int)decodeBlockWithInt:(int)int withLongArray:(id)array
{
  v5 = *&int;
  v18.receiver = self;
  v18.super_class = OrgApacheLuceneUtilPackedMonotonicLongValues;
  v7 = [OrgApacheLuceneUtilPackedDeltaPackedLongValues decodeBlockWithInt:"decodeBlockWithInt:withLongArray:" withLongArray:?];
  averages = self->averages_;
  if (!averages)
  {
    goto LABEL_12;
  }

  v9 = v7;
  size = averages->super.size_;
  if ((v5 & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  if (v9 >= 1)
  {
    v11 = 0;
    v12 = *(&averages->super.size_ + v5 + 1);
    for (i = array; ; ++i)
    {
      v14 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(0, v11, v12);
      if (!array)
      {
        break;
      }

      v15 = v14;
      v16 = *(array + 2);
      if (v11 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v11);
      }

      i[2] += v15;
      if (v9 == ++v11)
      {
        return v9;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedMonotonicLongValues;
  [(OrgApacheLuceneUtilPackedDeltaPackedLongValues *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedMonotonicLongValues_class_();
    qword_100553EC8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedMonotonicLongValues__initialized);
  }
}

@end