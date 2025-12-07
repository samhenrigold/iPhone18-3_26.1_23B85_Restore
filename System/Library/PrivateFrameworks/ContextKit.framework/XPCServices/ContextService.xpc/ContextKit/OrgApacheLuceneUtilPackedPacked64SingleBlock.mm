@interface OrgApacheLuceneUtilPackedPacked64SingleBlock
+ (void)initialize;
- (id)description;
- (id)getFormat;
- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (int64_t)ramBytesUsed;
- (void)dealloc;
- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilPackedPacked64SingleBlock

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
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(self->blocks_) + v4;
}

- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v8 = *&int;
  v10 = JavaLangMath_minWithInt_withInt_(*&a6, self->super.valueCount_ - int);
  v11 = v10;
  v12 = 12;
  v13 = 64 / self->super.bitsPerValue_;
  if (v8 % v13)
  {
    v23 = v8;
    v22 = 12;
    if (v13 < 0 || v10 < 1)
    {
      v18 = v10;
      LODWORD(v15) = v8;
    }

    else
    {
      v14 = v8 % v13 + 1;
      v15 = v8;
      do
      {
        v16 = [(OrgApacheLuceneUtilPackedPacked64SingleBlock *)self getWithInt:v15, v22];
        v17 = *(array + 2);
        if (withInt < 0 || withInt >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, withInt);
        }

        *(array + withInt + 2) = v16;
        v18 = v11 - 1;
        v15 = (v15 + 1);
        ++withInt;
        if (v14 >= v13)
        {
          break;
        }

        ++v14;
      }

      while (v11-- > 1);
    }

    if (!v18)
    {
      return v15 - v23;
    }

    v11 = v18;
    LODWORD(v8) = v23;
    v12 = v22;
  }

  else
  {
    LODWORD(v15) = v8;
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  [OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(qword_100557918 *(&self->super.super.super.super.super.isa + v12))];
  v20 = ((v15 + v11) / v13 - v15 / v13) * v13 + v15;
  result = v20 - v8;
  if (v20 <= v8)
  {
    v24.receiver = self;
    v24.super_class = OrgApacheLuceneUtilPackedPacked64SingleBlock;
    return [OrgApacheLuceneUtilPackedPackedInts_Reader getWithInt:"getWithInt:withLongArray:withInt:withInt:" withLongArray:? withInt:? withInt:?];
  }

  return result;
}

- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v6 = *&withInt;
  v8 = *&int;
  v10 = JavaLangMath_minWithInt_withInt_(*&a6, self->super.valueCount_ - int);
  v11 = v10;
  v12 = 64 / self->super.bitsPerValue_;
  if (v8 % v12)
  {
    if (v12 < 0 || v10 < 1)
    {
      v16 = v10;
      LODWORD(v14) = v8;
    }

    else
    {
      v13 = v8 % v12 + 1;
      v14 = v8;
      do
      {
        v15 = *(array + 2);
        if ((v6 & 0x80000000) != 0 || v6 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v6);
        }

        [(OrgApacheLuceneUtilPackedPacked64SingleBlock *)self setWithInt:v14 withLong:*(array + v6 + 2)];
        v16 = v11 - 1;
        v14 = (v14 + 1);
        v6 = (v6 + 1);
        if (v13 >= v12)
        {
          break;
        }

        ++v13;
      }

      while (v11-- > 1);
    }

    if (!v16)
    {
      return v14 - v8;
    }

    v11 = v16;
  }

  else
  {
    LODWORD(v14) = v8;
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  [OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(qword_100557918 self->super.bitsPerValue_)];
  v18 = ((v14 + v11) / v12 - v14 / v12) * v12 + v14;
  result = v18 - v8;
  if (v18 <= v8)
  {
    v20.receiver = self;
    v20.super_class = OrgApacheLuceneUtilPackedPacked64SingleBlock;
    return [OrgApacheLuceneUtilPackedPackedInts_Mutable setWithInt:"setWithInt:withLongArray:withInt:withInt:" withLongArray:? withInt:? withInt:?];
  }

  return result;
}

- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long
{
  v11 = 64 / self->super.bitsPerValue_;
  if (withInt - int <= 2 * v11)
  {
    v30.receiver = self;
    v30.super_class = OrgApacheLuceneUtilPackedPacked64SingleBlock;
    [OrgApacheLuceneUtilPackedPackedInts_Mutable fillWithInt:"fillWithInt:withInt:withLong:" withInt:? withLong:?];
  }

  else
  {
    v12 = int % v11;
    if (!(int % v11) || v11 < 0)
    {
      intCopy = int;
    }

    else
    {
      do
      {
        intCopy = int + 1;
        [OrgApacheLuceneUtilPackedPacked64SingleBlock setWithInt:"setWithInt:withLong:" withLong:?];
        ++v12;
        int = intCopy;
      }

      while (v12 < v11);
    }

    if (v11 < 1)
    {
      v28 = 0;
    }

    else
    {
      p_bitsPerValue = &self->super.bitsPerValue_;
      v15 = (v11 + 1) & 0x7FFFFFFE;
      v16 = vdup_n_s32(v11 - 1);
      v17 = vld1_dup_f32(p_bitsPerValue);
      v18 = &_mh_execute_header;
      v19 = vdupq_n_s64(long);
      v20 = 0uLL;
      do
      {
        v21 = v20;
        v22 = v18;
        v23 = vand_s8(vmul_s32(v17, v18), 0x3F0000003FLL);
        v24.i64[0] = v23.u32[0];
        v24.i64[1] = v23.u32[1];
        v20 = vorrq_s8(vshlq_u64(v19, v24), v21);
        v18 = vadd_s32(v18, 0x200000002);
        v15 -= 2;
      }

      while (v15);
      v25 = vcgt_u32(v22, v16);
      v26.i64[0] = v25.i32[0];
      v26.i64[1] = v25.i32[1];
      v27 = vbslq_s8(v26, v21, v20);
      v28 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    }

    JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->blocks_, (intCopy / v11), (withInt / v11), v28, long, v5, v6, v7);
    v29 = (withInt / v11 * v11);
    if (v29 < withInt)
    {
      do
      {
        [(OrgApacheLuceneUtilPackedPacked64SingleBlock *)self setWithInt:v29 withLong:long];
        v29 = (v29 + 1);
      }

      while (withInt != v29);
    }
  }
}

- (id)getFormat
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  return qword_100557918;
}

- (id)description
{
  v3 = [-[OrgApacheLuceneUtilPackedPacked64SingleBlock getClass](self "getClass")];
  [(OrgApacheLuceneUtilPackedPackedInts_MutableImpl *)self size];
  if (!self->blocks_)
  {
    JreThrowNullPointerException();
  }

  return JreStrcat("$$I$I$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPacked64SingleBlock;
  [(OrgApacheLuceneUtilPackedPacked64SingleBlock *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = 0x2000000015;
    v2[0] = xmmword_1003140A8;
    v2[1] = unk_1003140B8;
    v2[2] = xmmword_1003140C8;
    JreStrongAssignAndConsume(&qword_100553EA8, [IOSIntArray newArrayWithInts:v2 count:14]);
    atomic_store(1u, &OrgApacheLuceneUtilPackedPacked64SingleBlock__initialized);
  }
}

@end