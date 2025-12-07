@interface OrgApacheLuceneUtilPackedBlockPackedReaderIterator
- (id)nextWithInt:(int)int;
- (int64_t)next;
- (uint64_t)refill;
- (void)dealloc;
- (void)resetWithOrgApacheLuceneStoreDataInput:(id)input withLong:(int64_t)long;
- (void)skipWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedBlockPackedReaderIterator

- (void)resetWithOrgApacheLuceneStoreDataInput:(id)input withLong:(int64_t)long
{
  JreStrongAssign(&self->in_, input);
  self->valueCount_ = long;
  self->off_ = self->blockSize_;
  self->ord_ = 0;
}

- (void)skipWithLong:(int64_t)long
{
  v3 = self->ord_ + long;
  if (v3 > self->valueCount_ || v3 < 0)
  {
    v12 = new_JavaIoEOFException_init();
    goto LABEL_19;
  }

  v6 = JavaLangMath_minWithLong_withLong_(long, self->blockSize_ - self->off_);
  self->off_ += v6;
  self->ord_ += v6;
  v7 = long - v6;
  if (long == v6)
  {
    return;
  }

  if (v7 >= self->blockSize_)
  {
    while (1)
    {
      in = self->in_;
      if (!in)
      {
LABEL_17:
        JreThrowNullPointerException();
      }

      readByte = [(OrgApacheLuceneStoreDataInput *)in readByte];
      if (readByte >= 0xFFFFFF82)
      {
        break;
      }

      v10 = readByte;
      if ((readByte & 1) == 0)
      {
        OrgApacheLuceneUtilPackedBlockPackedReaderIterator_readVLongWithOrgApacheLuceneStoreDataInput_(self->in_);
      }

      if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100003648();
      }

      if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0])
      {
        goto LABEL_17;
      }

      sub_1000F4138(self, [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0] byteCountWithInt:self->packedIntsVersion_ withInt:self->blockSize_ withInt:v10 >> 1]);
      blockSize = self->blockSize_;
      self->ord_ += blockSize;
      v7 -= blockSize;
      if (v7 < blockSize)
      {
        goto LABEL_5;
      }
    }

    v12 = new_JavaIoIOException_initWithNSString_(@"Corrupted");
LABEL_19:
    objc_exception_throw(v12);
  }

LABEL_5:
  if (v7)
  {
    [OrgApacheLuceneUtilPackedBlockPackedReaderIterator refill]_0(self);
    self->ord_ += v7;
    self->off_ += v7;
  }
}

- (uint64_t)refill
{
  v2 = *(self + 8);
  if (!v2)
  {
    goto LABEL_26;
  }

  readByte = [v2 readByte];
  if (readByte >= 0xFFFFFF82)
  {
    v26 = new_JavaIoIOException_initWithNSString_(@"Corrupted");
    objc_exception_throw(v26);
  }

  v9 = readByte;
  v10 = readByte;
  if (readByte)
  {
    v13 = 0;
  }

  else
  {
    VLongWithOrgApacheLuceneStoreDataInput = OrgApacheLuceneUtilPackedBlockPackedReaderIterator_readVLongWithOrgApacheLuceneStoreDataInput_(*(self + 8));
    v13 = OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(VLongWithOrgApacheLuceneStoreDataInput + 1, v12);
  }

  if (v10 <= 1)
  {
    result = JavaUtilArrays_fillWithLongArray_withLong_(*(self + 40), v13);
    goto LABEL_8;
  }

  v15 = v9 >> 1;
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getDecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], *(self + 16), v15, v4, v5, v6, v7, v8);
  if (!DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt)
  {
    goto LABEL_26;
  }

  v17 = DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt;
  v18 = *(self + 32);
  v19 = (v18 / [DecoderWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt byteValueCount]);
  v20 = [v17 byteBlockCount] * v19;
  v21 = *(self + 56);
  if (!v21 || *(v21 + 8) < v20)
  {
    JreStrongAssignAndConsume((self + 56), [IOSByteArray newArrayWithLength:v20]);
  }

  v22 = JavaLangMath_minWithLong_withLong_(*(self + 24) - *(self + 72), *(self + 32));
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0])
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  [*(self + 8) readBytesWithByteArray:*(self + 56) withInt:0 withInt:{objc_msgSend(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], "byteCountWithInt:withInt:withInt:", *(self + 16), v22, v15)}];
  result = [v17 decodeWithByteArray:*(self + 56) withInt:0 withLongArray:*(self + 40) withInt:0 withInt:v19];
  if (v13 && v22 >= 1)
  {
    v23 = 0;
    v24 = v22 & 0x7FFFFFFF;
    do
    {
      v25 = *(self + 40);
      if (!v25)
      {
        goto LABEL_26;
      }

      result = *(v25 + 8);
      if (v23 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v23);
      }

      *(v25 + 16 + 8 * v23++) += v13;
    }

    while (v24 != v23);
  }

LABEL_8:
  *(self + 64) = 0;
  return result;
}

- (int64_t)next
{
  if (self->ord_ == self->valueCount_)
  {
    v7 = new_JavaIoEOFException_init();
    objc_exception_throw(v7);
  }

  if (self->off_ == self->blockSize_)
  {
    [OrgApacheLuceneUtilPackedBlockPackedReaderIterator refill]_0(self);
  }

  values = self->values_;
  if (!values)
  {
    JreThrowNullPointerException();
  }

  off = self->off_;
  self->off_ = off + 1;
  size = values->super.size_;
  if (off < 0 || off >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, off);
  }

  result = values->buffer_[off];
  ++self->ord_;
  return result;
}

- (id)nextWithInt:(int)int
{
  if (self->ord_ == self->valueCount_)
  {
    v11 = new_JavaIoEOFException_init();
    objc_exception_throw(v11);
  }

  v3 = *&int;
  off = self->off_;
  blockSize = self->blockSize_;
  if (off == blockSize)
  {
    [OrgApacheLuceneUtilPackedBlockPackedReaderIterator refill]_0(self);
    blockSize = self->blockSize_;
    off = self->off_;
  }

  v7 = JavaLangMath_minWithInt_withInt_(v3, blockSize - off);
  v8 = JavaLangMath_minWithLong_withLong_(v7, self->valueCount_ - self->ord_);
  valuesRef = self->valuesRef_;
  if (!valuesRef)
  {
    JreThrowNullPointerException();
  }

  valuesRef->offset_ = self->off_;
  self->valuesRef_->length_ = v8;
  self->off_ += v8;
  self->ord_ += v8;
  return self->valuesRef_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedBlockPackedReaderIterator;
  [(OrgApacheLuceneUtilPackedBlockPackedReaderIterator *)&v3 dealloc];
}

@end