@interface OrgApacheLuceneUtilPackedPackedLongValues
+ (void)initialize;
- (OrgApacheLuceneUtilPackedPackedLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLong:(int64_t)long withLong:(int64_t)withLong;
- (id)iterator;
- (int)decodeBlockWithInt:(int)int withLongArray:(id)array;
- (int64_t)getWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedLongValues

- (OrgApacheLuceneUtilPackedPackedLongValues)initWithInt:(int)int withInt:(int)withInt withOrgApacheLuceneUtilPackedPackedInts_ReaderArray:(id)array withLong:(int64_t)long withLong:(int64_t)withLong
{
  OrgApacheLuceneUtilLongValues_init(self);
  self->pageShift_ = int;
  self->pageMask_ = withInt;
  JreStrongAssign(&self->values_, array);
  self->size_ = long;
  self->ramBytesUsed_ = withLong;
  return self;
}

- (int)decodeBlockWithInt:(int)int withLongArray:(id)array
{
  values = self->values_;
  if (!values)
  {
    goto LABEL_9;
  }

  size = values->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v7 = (&values->elementType_)[int];
  if (!v7)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v8 = [(IOSClass *)v7 size];
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      LODWORD(v9) = [(IOSClass *)v7 getWithInt:v9 withLongArray:array withInt:v9 withInt:(v8 - v9)]+ v9;
    }

    while (v9 < v8);
  }

  return v8;
}

- (int64_t)getWithInt:(int)int withInt:(int)withInt
{
  values = self->values_;
  if (!values)
  {
    goto LABEL_8;
  }

  size = values->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v6 = (&values->elementType_)[int];
  if (!v6)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [(IOSClass *)v6 getWithInt:*&withInt];
}

- (id)iterator
{
  v3 = [OrgApacheLuceneUtilPackedPackedLongValues_Iterator alloc];
  OrgApacheLuceneUtilPackedPackedLongValues_Iterator_initWithOrgApacheLuceneUtilPackedPackedLongValues_(v3, self);

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedLongValues;
  [(OrgApacheLuceneUtilPackedPackedLongValues *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedPackedLongValues_class_();
    qword_1005544B0 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, &OrgApacheLuceneUtilPackedPackedLongValues__initialized);
  }
}

@end