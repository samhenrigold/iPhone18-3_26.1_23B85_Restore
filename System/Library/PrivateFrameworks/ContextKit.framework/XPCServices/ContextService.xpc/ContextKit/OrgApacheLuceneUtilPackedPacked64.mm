@interface OrgApacheLuceneUtilPackedPacked64
- (id)description;
- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int64_t)getWithInt:(int)int;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long;
- (void)setWithInt:(int)int withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64

- (int64_t)getWithInt:(int)int
{
  v4 = self->super.bitsPerValue_ * int;
  v5 = v4 >> 6;
  bpvMinusBlockSize = self->bpvMinusBlockSize_;
  v7 = v4 & 0x3F;
  blocks = self->blocks_;
  v9 = v7 + bpvMinusBlockSize;
  if (!(((v7 + bpvMinusBlockSize) < 0) ^ __OFADD__(v7, bpvMinusBlockSize) | (v7 + bpvMinusBlockSize == 0)))
  {
    if (blocks)
    {
      v10 = v5 << 32;
      size = blocks->super.size_;
      if ((v5 & 0x80000000) != 0 || size <= v5)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v12 = blocks;
      v13 = blocks->buffer_[v5] << v9;
      v14 = (&_mh_execute_header + v10) >> 32;
      if (v14 < 0 || size <= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, (&_mh_execute_header + v10) >> 32);
      }

      return ((v12->buffer_[v14] >> -v9) | v13) & self->maskRight_;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  if (!blocks)
  {
    goto LABEL_12;
  }

  v16 = blocks->super.size_;
  if ((v5 & 0x80000000) != 0 || v16 <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v5);
  }

  return self->maskRight_ & (blocks->buffer_[v5] >> -v9);
}

- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v6 = *&withInt;
  v8 = *&int;
  v10 = JavaLangMath_minWithInt_withInt_(*&a6, self->super.valueCount_ - int);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v11 = OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], self->super.bitsPerValue_);
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  v12 = v11;
  v13 = v8 % [v11 longValueCount];
  if (v13)
  {
    v14 = v13 >= [v12 longValueCount] || v10 < 1;
    v24 = v8;
    if (v14)
    {
      v15 = v10;
      LODWORD(v20) = v8;
    }

    else
    {
      v20 = v8;
      v21 = v13 + 1;
      do
      {
        v22 = [(OrgApacheLuceneUtilPackedPacked64 *)self getWithInt:v20];
        v23 = *(array + 2);
        if ((v6 & 0x80000000) != 0 || v6 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v6);
        }

        *(array + v6 + 2) = v22;
        v15 = v10 - 1;
        v20 = (v20 + 1);
        v6 = (v6 + 1);
        if (v21 >= [v12 longValueCount])
        {
          break;
        }

        ++v21;
        v14 = v10-- > 1;
      }

      while (v14);
    }

    if (!v15)
    {
      return v20 - v24;
    }

    v10 = v15;
    LODWORD(v8) = v24;
  }

  else
  {
    LODWORD(v20) = v8;
  }

  v16 = (self->super.bitsPerValue_ * v20) >> 6;
  v17 = (v10 / [v12 longValueCount]);
  [v12 decodeWithLongArray:self->blocks_ withInt:v16 withLongArray:array withInt:v6 withInt:v17];
  v18 = [v12 longValueCount] * v17 + v20;
  result = v18 - v8;
  if (v18 <= v8)
  {
    v25.receiver = self;
    v25.super_class = OrgApacheLuceneUtilPackedPacked64;
    return [OrgApacheLuceneUtilPackedPackedInts_Reader getWithInt:"getWithInt:withLongArray:withInt:withInt:" withLongArray:? withInt:? withInt:?];
  }

  return result;
}

- (void)setWithInt:(int)int withLong:(int64_t)long
{
  v5 = self->super.bitsPerValue_ * int;
  v6 = v5 >> 6;
  blocks = self->blocks_;
  v8 = (v5 & 0x3F) + self->bpvMinusBlockSize_;
  v9 = (v5 >> 6);
  size = blocks->super.size_;
  v12 = ((v5 >> 6) & 0x80000000) != 0 || size <= v6;
  if (v8 > 0)
  {
    if (v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v6);
    }

    if (blocks)
    {
      v14 = blocks->super.size_;
      if ((v6 & 0x80000000) != 0 || v14 <= v6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v6);
      }

      blocks->buffer_[v9] = blocks->buffer_[v9] & ~(self->maskRight_ >> v8) | (long >> v8);
      v15 = self->blocks_;
      v13 = v6 << 32;
      v16 = (&_mh_execute_header + (v6 << 32)) >> 32;
      v17 = v15->super.size_;
      if (v16 < 0 || v17 <= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, (&_mh_execute_header + v13) >> 32);
      }

      if (v16 < 0 || v17 <= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, (&_mh_execute_header + v13) >> 32);
      }

      v15->buffer_[v16] = v15->buffer_[v16] & (0xFFFFFFFFFFFFFFFFLL >> (v8 & 0x3F)) | (long << -v8);
      return;
    }

LABEL_27:
    JreThrowNullPointerException();
  }

  if (v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  if (!blocks)
  {
    goto LABEL_27;
  }

  v18 = blocks->super.size_;
  if ((v6 & 0x80000000) != 0 || v18 <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v6);
  }

  blocks->buffer_[v9] = blocks->buffer_[v9] & ~(self->maskRight_ << -v8) | (long << -v8);
}

- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v6 = *&withInt;
  v8 = *&int;
  v10 = JavaLangMath_minWithInt_withInt_(*&a6, self->super.valueCount_ - int);
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  v11 = OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], self->super.bitsPerValue_);
  if (!v11)
  {
    JreThrowNullPointerException();
  }

  v12 = v11;
  v13 = v8 % [v11 longValueCount];
  if (v13)
  {
    v14 = v13 >= [v12 longValueCount] || v10 < 1;
    v23 = v8;
    if (v14)
    {
      v15 = v10;
      LODWORD(v20) = v8;
    }

    else
    {
      v20 = v8;
      v21 = v13 + 1;
      do
      {
        v22 = *(array + 2);
        if ((v6 & 0x80000000) != 0 || v6 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v6);
        }

        [(OrgApacheLuceneUtilPackedPacked64 *)self setWithInt:v20 withLong:*(array + v6 + 2)];
        v15 = v10 - 1;
        v20 = (v20 + 1);
        v6 = (v6 + 1);
        if (v21 >= [v12 longValueCount])
        {
          break;
        }

        ++v21;
        v14 = v10-- > 1;
      }

      while (v14);
    }

    if (!v15)
    {
      return v20 - v23;
    }

    v10 = v15;
    LODWORD(v8) = v23;
  }

  else
  {
    LODWORD(v20) = v8;
  }

  v16 = (self->super.bitsPerValue_ * v20) >> 6;
  v17 = (v10 / [v12 longValueCount]);
  [v12 encodeWithLongArray:array withInt:v6 withLongArray:self->blocks_ withInt:v16 withInt:v17];
  v18 = [v12 longValueCount] * v17 + v20;
  result = v18 - v8;
  if (v18 <= v8)
  {
    v24.receiver = self;
    v24.super_class = OrgApacheLuceneUtilPackedPacked64;
    return [OrgApacheLuceneUtilPackedPackedInts_Mutable setWithInt:"setWithInt:withLongArray:withInt:withInt:" withLongArray:? withInt:? withInt:?];
  }

  return result;
}

- (id)description
{
  [(OrgApacheLuceneUtilPackedPackedInts_MutableImpl *)self size];
  if (!self->blocks_)
  {
    JreThrowNullPointerException();
  }

  return JreStrcat("$I$I$IC", v3, v4, v5, v6, v7, v8, v9, @"Packed64(bitsPerValue=");
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

  v4 = OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(v3 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_ + 20);
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->blocks_) + v4;
}

- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long
{
  v7 = *&int;
  bitsPerValue = self->super.bitsPerValue_;
  v10 = 64;
  v11 = bitsPerValue;
  while (1)
  {
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12;
    }

    while (v11 < v12);
    if (!v12)
    {
      break;
    }

    v11 = (v11 % v12);
    v10 = v12;
  }

  v13 = (64 / v11);
  if (withInt - int <= 3 * v13)
  {
    v30.receiver = self;
    v30.super_class = OrgApacheLuceneUtilPackedPacked64;
    [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)&v30 fillWithInt:*&int withInt:*&withInt withLong:long];
  }

  else
  {
    v14 = int % v13;
    if (int % v13 && (v13 & 0x80000000) == 0)
    {
      do
      {
        v15 = v7;
        v7 = (v7 + 1);
        [(OrgApacheLuceneUtilPackedPacked64 *)self setWithInt:v15 withLong:long];
        ++v14;
      }

      while (v14 < v13);
      bitsPerValue = self->super.bitsPerValue_;
    }

    v16 = [OrgApacheLuceneUtilPackedPacked64 alloc];
    OrgApacheLuceneUtilPackedPacked64_initWithInt_withInt_(v16, v13, bitsPerValue);
    v17 = v16;
    if (v13 >= 1)
    {
      v18 = 0;
      do
      {
        [(OrgApacheLuceneUtilPackedPacked64 *)v17 setWithInt:v18 withLong:long];
        v18 = (v18 + 1);
      }

      while (v13 != v18);
    }

    v19 = self->super.bitsPerValue_;
    v20 = (v19 * v7) >> 6;
    v21 = (v19 * withInt) >> 6;
    if (v20 < v21)
    {
      v22 = (bitsPerValue * v13) >> 6;
      blocks = v17->blocks_;
      v24 = v20;
      do
      {
        v25 = v24 % v22;
        size = blocks->super.size_;
        if (v24 % v22 < 0 || v25 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v25);
        }

        v27 = self->blocks_;
        if (!v27)
        {
          JreThrowNullPointerException();
        }

        v28 = v27->super.size_;
        if (v24 < 0 || v24 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v24);
        }

        v27->buffer_[v24] = blocks->buffer_[v24 % v22];
        ++v24;
      }

      while (v21 != v24);
      v19 = self->super.bitsPerValue_;
    }

    v29 = (v21 << 6) / v19;
    if (v29 < withInt)
    {
      do
      {
        [(OrgApacheLuceneUtilPackedPacked64 *)self setWithInt:v29 withLong:long];
        v29 = (v29 + 1);
      }

      while (withInt != v29);
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPacked64;
  [(OrgApacheLuceneUtilPackedPacked64 *)&v3 dealloc];
}

@end