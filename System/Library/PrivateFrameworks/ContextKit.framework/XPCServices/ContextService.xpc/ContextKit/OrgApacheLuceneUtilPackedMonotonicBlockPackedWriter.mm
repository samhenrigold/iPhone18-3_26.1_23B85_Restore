@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter
- (void)addWithLong:(int64_t)long;
- (void)flush;
@end

@implementation OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter

- (void)addWithLong:(int64_t)long
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter;
  [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)&v3 addWithLong:long];
}

- (void)flush
{
  off = self->super.off_;
  if (off == 1)
  {
    v4 = 0.0;
    LODWORD(v5) = 1;
  }

  else
  {
    values = self->super.values_;
    if (!values)
    {
      goto LABEL_34;
    }

    size = values->super.size_;
    v8 = off - 1;
    if (v8 < 0 || v8 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v8);
    }

    v9 = values->buffer_[v8];
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    LODWORD(v5) = self->super.off_;
    v4 = (v9 - values->buffer_[0]) / (v5 - 1);
  }

  v10 = self->super.values_;
  if (!v10)
  {
    goto LABEL_34;
  }

  v11 = v10->super.size_;
  if (v11 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, 0);
  }

  v12 = v10->buffer_[0];
  if (v5 > 1)
  {
    v13 = 1;
    do
    {
      v14 = self->super.values_;
      v15 = v14->super.size_;
      if (v13 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v13);
      }

      v16 = v14->buffer_[v13];
      v17 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(v12, v13, v4);
      v18 = v16 - v17;
      if (v16 >= v17)
      {
        v18 = 0;
      }

      v12 += v18;
      ++v13;
      v5 = self->super.off_;
    }

    while (v13 < v5);
  }

  if (v5 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = self->super.values_;
      v22 = v21->super.size_;
      if (v19 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v19);
      }

      v23 = v21->buffer_[v19];
      v24 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(v12, v19, v4);
      v25 = self->super.values_;
      v26 = v25->super.size_;
      if (v19 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v19);
      }

      v25->buffer_[v19] = v23 - v24;
      v27 = self->super.values_;
      v28 = v27->super.size_;
      if (v19 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v19);
      }

      v20 = JavaLangMath_maxWithLong_withLong_(v20, v27->buffer_[v19++]);
    }

    while (v19 < self->super.off_);
  }

  out = self->super.out_;
  if (!out)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)out writeZLongWithLong:v12];
  [(OrgApacheLuceneStoreDataOutput *)self->super.out_ writeIntWithInt:JavaLangFloat_floatToIntBitsWithFloat_(v4)];
  if (v20)
  {
    v37 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v20, v30, v31, v32, v33, v34, v35, v36);
    [(OrgApacheLuceneStoreDataOutput *)self->super.out_ writeVIntWithInt:v37];
    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)self writeValuesWithInt:v37];
  }

  else
  {
    [(OrgApacheLuceneStoreDataOutput *)self->super.out_ writeVIntWithInt:0];
  }

  self->super.off_ = 0;
}

@end