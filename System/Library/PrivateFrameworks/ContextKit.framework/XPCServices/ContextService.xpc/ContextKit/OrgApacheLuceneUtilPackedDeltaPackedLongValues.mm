@interface OrgApacheLuceneUtilPackedDeltaPackedLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedDeltaPackedLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLongArray:(id)longArray withLong:(int64_t)long withLong:(int64_t)withLong;
- (int)decodeBlockWithInt:(int)int withLongArray:(id)array;
- (int64_t)getWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedDeltaPackedLongValues

- (OrgApacheLuceneUtilPackedDeltaPackedLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLongArray:(id)longArray withLong:(int64_t)long withLong:(int64_t)withLong
{
  OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(self, int, withInt, array, long, withLong);
  JreStrongAssign(&self->mins_, longArray);
  return self;
}

- (int64_t)getWithInt:(int)int withInt:(int)withInt
{
  mins = self->mins_;
  if (!mins)
  {
    goto LABEL_9;
  }

  size = mins->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  values = self->super.values_;
  if (!values)
  {
    goto LABEL_9;
  }

  v9 = values->super.size_;
  if (int < 0 || v9 <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, *&int);
  }

  v10 = (&values->elementType_)[int];
  if (!v10)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v8 = mins->buffer_[int];
  return [(IOSClass *)v10 getWithInt:*&withInt, *&withInt]+ v8;
}

- (int)decodeBlockWithInt:(int)int withLongArray:(id)array
{
  v5 = *&int;
  v16.receiver = self;
  v16.super_class = OrgApacheLuceneUtilPackedDeltaPackedLongValues;
  v7 = [OrgApacheLuceneUtilPackedPackedLongValues decodeBlockWithInt:"decodeBlockWithInt:withLongArray:" withLongArray:?];
  mins = self->mins_;
  if (!mins)
  {
    goto LABEL_12;
  }

  v9 = v7;
  size = mins->super.size_;
  if ((v5 & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  if (v9 >= 1)
  {
    if (array)
    {
      v11 = 0;
      v12 = mins->buffer_[v5];
      arrayCopy = array;
      do
      {
        v14 = *(array + 2);
        if (v11 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v11);
        }

        arrayCopy[2] += v12;
        ++v11;
        ++arrayCopy;
      }

      while (v9 != v11);
      return v9;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedDeltaPackedLongValues;
  [(OrgApacheLuceneUtilPackedPackedLongValues *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedDeltaPackedLongValues_class_();
    qword_1005545A0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedDeltaPackedLongValues__initialized);
  }
}

@end