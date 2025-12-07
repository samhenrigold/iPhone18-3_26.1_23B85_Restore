@interface OrgApacheLuceneUtilSparseFixedBitSet
+ (void)initialize;
- (BOOL)getWithInt:(int)int;
- (OrgApacheLuceneUtilSparseFixedBitSet)setWithInt:(int)int;
- (int)approximateCardinality;
- (int)cardinality;
- (int)nextSetBitWithInt:(int)int;
- (int)prevSetBitWithInt:(int)int;
- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
- (void)clearWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator;
@end

@implementation OrgApacheLuceneUtilSparseFixedBitSet

- (int)cardinality
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  p_elementType = &bits->elementType_;
  v4 = &(&bits->elementType_)[bits->super.size_];
  if (&bits->elementType_ >= v4)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v7 = *p_elementType++;
    v6 = v7;
    if (v7)
    {
      v8 = (v6 + 16);
      v9 = v6 + 16 + 8 * *(v6 + 8);
      while (v8 < v9)
      {
        v10 = *v8++;
        v5 += JavaLangLong_bitCountWithLong_(v10, a2);
      }
    }
  }

  while (p_elementType < v4);
  return v5;
}

- (int)approximateCardinality
{
  v3 = (self->length_ + 63) >> 6;
  v4 = v3;
  v5 = JavaLangMath_logWithDouble_(v3 / (v3 - self->nonZeroLongCount_));
  v6 = JavaLangMath_roundWithDouble_(v5 * v4);
  return JavaLangMath_minWithLong_withLong_(self->length_, v6);
}

- (BOOL)getWithInt:(int)int
{
  indices = self->indices_;
  if (!indices)
  {
    goto LABEL_11;
  }

  intCopy = int;
  v6 = int >> 12;
  size = indices->super.size_;
  if ((int >> 12) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 12);
  }

  v8 = indices->buffer_[v6];
  v9 = 1 << (int >> 6);
  if ((v8 & v9) == 0)
  {
    LOBYTE(v15) = 0;
    return v15;
  }

  bits = self->bits_;
  if (!bits)
  {
    goto LABEL_11;
  }

  v11 = bits->super.size_;
  if (v6 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, int >> 12);
  }

  v12 = (&bits->elementType_)[v6];
  if (!v12)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v13 = JavaLangLong_bitCountWithLong_(v8 & (v9 - 1), a2);
  isa_low = LODWORD(v12[1].super.isa);
  if (v13 < 0 || v13 >= isa_low)
  {
    IOSArray_throwOutOfBoundsWithMsg(isa_low, v13);
  }

  return (v12[v13 + 2].super.isa >> intCopy) & 1;
}

- (OrgApacheLuceneUtilSparseFixedBitSet)setWithInt:(int)int
{
  indices = self->indices_;
  if (!indices)
  {
    goto LABEL_17;
  }

  intCopy = int;
  v6 = int >> 12;
  size = indices->super.size_;
  if (v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 12);
  }

  v8 = indices->buffer_[v6];
  v9 = int >> 6;
  if ((v8 & (1 << v9)) != 0)
  {
    bits = self->bits_;
    if (bits)
    {
      v11 = bits->super.size_;
      if (v6 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v6);
      }

      v12 = (&bits->elementType_)[v6];
      if (v12)
      {
        v13 = JavaLangLong_bitCountWithLong_(v8 & ((1 << v9) - 1), a2);
        result = LODWORD(v12[1].super.isa);
        if (v13 < 0 || v13 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v13);
        }

        v12[v13 + 2].super.isa = (v12[v13 + 2].super.isa | (1 << intCopy));
        return result;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  if (v8)
  {

    return sub_100099FF4(self, v6, v9, intCopy, v8);
  }

  else
  {

    return sub_100099EC0(self, v6, v9, intCopy);
  }
}

- (void)clearWithInt:(int)int withInt:(int)withInt
{
  if (int < withInt)
  {
    selfCopy = self;
    v5 = int >> 12;
    v6 = withInt - 1;
    if (v5 == (withInt - 1) >> 12)
    {
      v7 = int & 0xFFF;
      v8 = v6 & 0xFFF;
      v9 = v5;
    }

    else
    {
      v10 = v6 >> 12;
      sub_10009A7DC(self, v5, int & 0xFFF, 0xFFFu);
      v12 = (v5 + 1);
      if (v12 < v10)
      {
        do
        {
          indices = selfCopy->indices_;
          if (!indices)
          {
            goto LABEL_18;
          }

          size = indices->super.size_;
          if (v12 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v12);
          }

          selfCopy->nonZeroLongCount_ -= JavaLangLong_bitCountWithLong_(indices->buffer_[v12], v11);
          v15 = selfCopy->indices_;
          v16 = v15->super.size_;
          if (v12 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v12);
          }

          v15->buffer_[v12] = 0;
          bits = selfCopy->bits_;
          if (!bits)
          {
LABEL_18:
            JreThrowNullPointerException();
          }

          IOSObjectArray_Set(bits, v12++, 0);
        }

        while (v10 != v12);
      }

      v8 = v6 & 0xFFF;
      self = selfCopy;
      v9 = v6 >> 12;
      v7 = 0;
    }

    sub_10009A7DC(self, v9, v7, v8);
  }
}

- (int)nextSetBitWithInt:(int)int
{
  indices = self->indices_;
  if (!indices)
  {
    goto LABEL_21;
  }

  v6 = int >> 12;
  size = indices->super.size_;
  if ((int >> 12) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 12);
  }

  bits = self->bits_;
  if (!bits)
  {
    goto LABEL_21;
  }

  v9 = indices->buffer_[v6];
  v10 = bits->super.size_;
  if (v6 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, int >> 12);
  }

  v11 = (&bits->elementType_)[v6];
  v12 = int >> 6;
  v13 = 1 << (int >> 6);
  v15 = JavaLangLong_bitCountWithLong_(v9 & (v13 - 1), a2);
  if ((v9 & v13) != 0)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    isa_low = LODWORD(v11[1].super.isa);
    if ((v15 & 0x80000000) != 0 || v15 >= isa_low)
    {
      IOSArray_throwOutOfBoundsWithMsg(isa_low, v15);
    }

    v17 = v11[v15 + 2].super.isa >> int;
    if (v17)
    {
      return JavaLangLong_numberOfTrailingZerosWithLong_(v17, v14) + int;
    }

    v15 = (v15 + 1);
  }

  v19 = v9 >> ((int >> 6) & 0x3F);
  if (v19 <= 1)
  {

    return sub_10009A8F0(self, v6 + 1);
  }

  v20 = JavaLangLong_numberOfTrailingZerosWithLong_(v19 >> 1, v14);
  if (!v11)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v22 = v12 + v20 + 1;
  v23 = LODWORD(v11[1].super.isa);
  if ((v15 & 0x80000000) != 0 || v15 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v15);
  }

  return JavaLangLong_numberOfTrailingZerosWithLong_(v11[v15 + 2].super.isa, v21) | (v22 << 6);
}

- (int)prevSetBitWithInt:(int)int
{
  indices = self->indices_;
  if (!indices)
  {
    goto LABEL_19;
  }

  v6 = int >> 12;
  size = indices->super.size_;
  if ((int >> 12) >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 12);
  }

  bits = self->bits_;
  if (!bits)
  {
    goto LABEL_19;
  }

  v9 = indices->buffer_[v6];
  v10 = bits->super.size_;
  if (v6 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, int >> 12);
  }

  v11 = (&bits->elementType_)[v6];
  v12 = 1 << (int >> 6);
  v14 = JavaLangLong_bitCountWithLong_(v9 & (v12 - 1), a2);
  if ((v9 & v12) != 0)
  {
    if (!v11)
    {
      goto LABEL_19;
    }

    isa_low = LODWORD(v11[1].super.isa);
    if ((v14 & 0x80000000) != 0 || v14 >= isa_low)
    {
      IOSArray_throwOutOfBoundsWithMsg(isa_low, v14);
    }

    v16 = v11[v14 + 2].super.isa & ((2 << int) - 1);
    if (v16)
    {
      return (63 - JavaLangLong_numberOfLeadingZerosWithLong_(v16, v13)) | int & 0xFFFFFFC0;
    }
  }

  if ((v9 & (v12 - 1)) != 0)
  {
    v18 = JavaLangLong_numberOfLeadingZerosWithLong_(v9 & (v12 - 1), v13);
    if (v11)
    {
      v20 = v18;
      v21 = LODWORD(v11[1].super.isa);
      v22 = v14 - 1;
      if (v14 - 1 < 0 || v22 >= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v21, v22);
      }

      return (4032 - (v20 << 6)) | int & 0xFFFFF000 | (63 - JavaLangLong_numberOfLeadingZerosWithLong_(v11[v22 + 2].super.isa, v19));
    }

LABEL_19:
    JreThrowNullPointerException();
  }

  return sub_10009AC00(self, v6 - 1);
}

- (void)or__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  SparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator = OrgApacheLuceneUtilBitSetIterator_getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator, a2);
  if (SparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator)
  {
    v6 = SparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator;
    [(OrgApacheLuceneUtilBitSet *)self assertUnpositionedWithOrgApacheLuceneSearchDocIdSetIterator:iterator];

    sub_10009B354(self, v6);
  }

  else
  {
    if (!iterator || (v7 = [iterator cost], (indices = self->indices_) == 0))
    {
      JreThrowNullPointerException();
    }

    if (v7 >= indices->super.size_)
    {

      sub_10009B45C(self, iterator);
    }

    else
    {
      v9.receiver = self;
      v9.super_class = OrgApacheLuceneUtilSparseFixedBitSet;
      [(OrgApacheLuceneUtilBitSet *)&v9 or__WithOrgApacheLuceneSearchDocIdSetIterator:iterator];
    }
  }
}

- (void)and__WithOrgApacheLuceneSearchDocIdSetIterator:(id)iterator
{
  SparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator = OrgApacheLuceneUtilBitSetIterator_getSparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator_(iterator, a2);
  if (SparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator)
  {
    indices = self->indices_;
    if (!indices)
    {
LABEL_19:
      JreThrowNullPointerException();
    }

    v6 = SparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator;
    v7 = JavaLangMath_minWithInt_withInt_(indices->super.size_, *(SparseFixedBitSetOrNullWithOrgApacheLuceneSearchDocIdSetIterator[1] + 8));
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        v11 = self->indices_;
        size = v11->super.size_;
        if (v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v9);
        }

        v13 = v11->buffer_[v9];
        v14 = v6[1];
        v15 = *(v14 + 8);
        if (v9 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v9);
        }

        if ((*(v14 + 16 + 8 * v9) & v13) == 0)
        {
          v16 = self->indices_;
          v17 = v16->super.size_;
          if (v9 >= v17)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, v9);
          }

          self->nonZeroLongCount_ -= JavaLangLong_bitCountWithLong_(v16->buffer_[v9], v8);
          v18 = self->indices_;
          v19 = v18->super.size_;
          if (v9 >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, v9);
          }

          v18->buffer_[v9] = 0;
          bits = self->bits_;
          if (!bits)
          {
            goto LABEL_19;
          }

          IOSObjectArray_Set(bits, v9, 0);
        }

        ++v9;
      }

      while (v10 != v9);
    }
  }

  v22.receiver = self;
  v22.super_class = OrgApacheLuceneUtilSparseFixedBitSet;
  [(OrgApacheLuceneUtilBitSet *)&v22 and__WithOrgApacheLuceneSearchDocIdSetIterator:iterator];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilSparseFixedBitSet;
  [(OrgApacheLuceneUtilSparseFixedBitSet *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilSparseFixedBitSet_class_();
    qword_100554270 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    qword_100554278 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_([IOSLongArray arrayWithLength:1]);
    atomic_store(1u, OrgApacheLuceneUtilSparseFixedBitSet__initialized);
  }
}

@end