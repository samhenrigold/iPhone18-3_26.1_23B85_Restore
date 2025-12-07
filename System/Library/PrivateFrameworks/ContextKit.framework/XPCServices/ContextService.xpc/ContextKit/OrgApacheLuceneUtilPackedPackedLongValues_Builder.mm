@interface OrgApacheLuceneUtilPackedPackedLongValues_Builder
+ (void)initialize;
- (id)addWithLong:(int64_t)long;
- (id)build;
- (id)pack;
- (void)dealloc;
- (void)finish;
- (void)growWithInt:(int)int;
- (void)packWithLongArray:(id)array withInt:(int)int withInt:(int)withInt withFloat:(float)float;
@end

@implementation OrgApacheLuceneUtilPackedPackedLongValues_Builder

- (id)build
{
  [OrgApacheLuceneUtilPackedPackedLongValues_Builder finish]_0(self, v2);
  JreStrongAssign(&self->pending_, 0);
  v4 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->values_, self->valuesOff_);
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000CB1D4();
  }

  v5 = qword_1005544B0;
  v6 = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(v4);
  v7 = new_OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(self->pageShift_, self->pageMask_, v4, self->size_, v6 + v5);

  return v7;
}

- (void)finish
{
  if (*(result + 15) >= 1)
  {
    v2 = result;
    v3 = result[5];
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    v4 = *(v3 + 8);
    if (v4 == *(result + 14))
    {
      [result growWithInt:(v4 + 1)];
    }

    return [OrgApacheLuceneUtilPackedPackedLongValues_Builder pack]_0(v2, a2);
  }

  return result;
}

- (id)addWithLong:(int64_t)long
{
  pending = self->pending_;
  if (!pending)
  {
    v17 = new_JavaLangIllegalStateException_initWithNSString_(@"Cannot be reused after build()");
    objc_exception_throw(v17);
  }

  pendingOff = self->pendingOff_;
  if (pendingOff == pending->super.size_)
  {
    values = self->values_;
    if (!values)
    {
      JreThrowNullPointerException();
    }

    size = values->super.size_;
    if (size == self->valuesOff_)
    {
      [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)self growWithInt:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(size + 1, 8, long, v3, v4, v5, v6, v7)];
    }

    [OrgApacheLuceneUtilPackedPackedLongValues_Builder pack]_0(self, v8);
    pending = self->pending_;
    pendingOff = self->pendingOff_;
  }

  self->pendingOff_ = pendingOff + 1;
  v15 = pending->super.size_;
  if ((pendingOff & 0x80000000) != 0 || pendingOff >= v15)
  {
    IOSArray_throwOutOfBoundsWithMsg(v15, pendingOff);
  }

  pending->buffer_[pendingOff] = long;
  ++self->size_;
  return self;
}

- (id)pack
{
  LODWORD(a2) = *(self + 16);
  [self packWithLongArray:*(self + 24) withInt:*(self + 60) withInt:*(self + 56) withFloat:a2];
  v3 = *(self + 40);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(self + 56);
  v5 = *(v3 + 8);
  if (v4 < 0 || v4 >= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, v4);
  }

  v6 = *(v3 + 24 + 8 * v4);
  if (!v6)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  result = [v6 ramBytesUsed];
  *(self + 48) += result;
  *(self + 56) = (*(self + 56) + 1);
  return result;
}

- (void)packWithLongArray:(id)array withInt:(int)int withInt:(int)withInt withFloat:(float)float
{
  if (!array)
  {
    goto LABEL_27;
  }

  v11 = *&int;
  v14 = *(array + 2);
  if (v14 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, 0);
  }

  v15 = *(array + 2);
  v16 = v15;
  if (int > 1)
  {
    v17 = 1;
    do
    {
      v18 = *(array + 2);
      if (v17 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v17);
      }

      v15 = JavaLangMath_minWithLong_withLong_(v15, *(array + v17 + 2));
      v19 = *(array + 2);
      if (v17 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v17);
      }

      v16 = JavaLangMath_maxWithLong_withLong_(v16, *(array + v17++ + 2));
    }

    while (v11 != v17);
  }

  if (!(v15 | v16))
  {
    values = self->values_;
    if (values)
    {
      v21 = new_OrgApacheLuceneUtilPackedPackedInts_NullReader_initWithInt_(v11);

      IOSObjectArray_SetAndConsume(values, withInt, v21);
      return;
    }

    goto LABEL_27;
  }

  if (v15 < 0)
  {
    v22 = 64;
  }

  else
  {
    v22 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v16, a2, array, *&int, *&withInt, v6, v7, v8);
  }

  MutableWithInt_withInt_withFloat = OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withFloat_(v11, v22, float);
  v24 = MutableWithInt_withInt_withFloat;
  if (v11 >= 1)
  {
    if (!MutableWithInt_withInt_withFloat)
    {
      goto LABEL_27;
    }

    v25 = 0;
    do
    {
      LODWORD(v25) = [v24 setWithInt:v25 withLongArray:array withInt:v25 withInt:(v11 - v25)] + v25;
    }

    while (v25 < v11);
  }

  v26 = self->values_;
  if (!v26)
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(v26, withInt, v24);
}

- (void)growWithInt:(int)int
{
  v3 = *&int;
  p_values = &self->values_;
  v5 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(self->values_);
  v6 = *p_values;
  p_values[1] = (p_values[1] - v5);
  v7 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v6, v3);
  JreStrongAssign(p_values, v7);
  p_values[1] = (p_values[1] + OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(*p_values));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedLongValues_Builder;
  [(OrgApacheLuceneUtilPackedPackedLongValues_Builder *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = OrgApacheLuceneUtilPackedPackedLongValues_Builder_class_();
    qword_1005544C8 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v2);
    atomic_store(1u, OrgApacheLuceneUtilPackedPackedLongValues_Builder__initialized);
  }
}

@end