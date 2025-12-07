@interface OrgApacheLuceneUtilPackedAbstractBlockPackedWriter
- (void)addBlockOfZeros;
- (void)addWithLong:(int64_t)long;
- (void)dealloc;
- (void)finish;
- (void)resetWithOrgApacheLuceneStoreDataOutput:(id)output;
- (void)writeValuesWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilPackedAbstractBlockPackedWriter

- (void)resetWithOrgApacheLuceneStoreDataOutput:(id)output
{
  JreStrongAssign(&self->out_, output);
  self->off_ = 0;
  self->ord_ = 0;
  self->finished_ = 0;
}

- (void)addWithLong:(int64_t)long
{
  sub_10000D034(self);
  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  off = self->off_;
  if (off == values->super.size_)
  {
    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)self flush];
    values = self->values_;
    off = self->off_;
  }

  self->off_ = off + 1;
  size = values->super.size_;
  if ((off & 0x80000000) != 0 || off >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, off);
  }

  values->buffer_[off] = long;
  ++self->ord_;
}

- (void)addBlockOfZeros
{
  sub_10000D034(self);
  off = self->off_;
  values = self->values_;
  if (!off)
  {
    if (values)
    {
      goto LABEL_6;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!values)
  {
    goto LABEL_9;
  }

  if (off != values->super.size_)
  {
    v12 = JreStrcat("I", v3, v4, v5, v6, v7, v8, v9, self->off_);
    v13 = new_JavaLangIllegalStateException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

LABEL_6:
  if (off == values->super.size_)
  {
    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)self flush];
    values = self->values_;
  }

  JavaUtilArrays_fillWithLongArray_withLong_(values, 0);
  size = self->values_->super.size_;
  self->off_ = size;
  self->ord_ += size;
}

- (void)finish
{
  sub_10000D034(self);
  if (self->off_ >= 1)
  {
    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)self flush];
  }

  self->finished_ = 1;
}

- (void)writeValuesWithInt:(int)int
{
  v8 = *&int;
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  EncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getEncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], 2, v8, v3, v4, v5, v6, v7);
  values = self->values_;
  if (!values)
  {
    goto LABEL_17;
  }

  v12 = EncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt;
  if (!EncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt)
  {
    goto LABEL_17;
  }

  size = values->super.size_;
  v14 = (size / [EncoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt byteValueCount]);
  v19 = [v12 byteBlockCount] * v14;
  p_blocks = &self->blocks_;
  blocks = self->blocks_;
  if (!blocks || blocks->super.size_ < v19)
  {
    JreStrongAssignAndConsume(&self->blocks_, [IOSByteArray newArrayWithLength:v19]);
  }

  off = self->off_;
  v23 = self->values_;
  if (off < v23->super.size_)
  {
    JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->values_, off, v23->super.size_, 0, v15, v16, v17, v18);
    v23 = self->values_;
  }

  [v12 encodeWithLongArray:v23 withInt:0 withByteArray:*p_blocks withInt:0 withInt:v14];
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0] || (v24 = [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0] byteCountWithInt:2 withInt:self->off_ withInt:v8], (out = self->out_) == 0))
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v26 = *p_blocks;

  [(OrgApacheLuceneStoreDataOutput *)out writeBytesWithByteArray:v26 withInt:v24];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedAbstractBlockPackedWriter;
  [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)&v3 dealloc];
}

@end