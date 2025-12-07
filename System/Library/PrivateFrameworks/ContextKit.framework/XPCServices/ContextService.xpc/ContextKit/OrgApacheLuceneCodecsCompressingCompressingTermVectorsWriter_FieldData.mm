@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData
- (void)addPositionWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6;
- (void)addTermWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData

- (void)addTermWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  freqs = self->freqs_;
  if (!freqs)
  {
    goto LABEL_11;
  }

  ord = self->ord_;
  size = freqs->super.size_;
  if (ord < 0 || ord >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, ord);
  }

  *(&freqs->super.size_ + ord + 1) = int;
  prefixLengths = self->prefixLengths_;
  if (!prefixLengths)
  {
    goto LABEL_11;
  }

  v10 = self->ord_;
  v11 = prefixLengths->super.size_;
  if (v10 < 0 || v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  *(&prefixLengths->super.size_ + v10 + 1) = withInt;
  suffixLengths = self->suffixLengths_;
  if (!suffixLengths)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v13 = self->ord_;
  v14 = suffixLengths->super.size_;
  if (v13 < 0 || v13 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v13);
  }

  *(&suffixLengths->super.size_ + v13 + 1) = a5;
  ++self->ord_;
}

- (void)addPositionWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6
{
  if (self->hasPositions_)
  {
    v12 = self->this$0_;
    positionsBuf = v12->positionsBuf_;
    if (!positionsBuf)
    {
      goto LABEL_26;
    }

    if (self->totalPositions_ + self->posStart_ == positionsBuf->super.size_)
    {
      v15 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_(v12->positionsBuf_, a2, *&int, *&withInt, *&a5, *&a6, v6, v7);
      JreStrongAssign(&v12->positionsBuf_, v15);
      positionsBuf = self->this$0_->positionsBuf_;
      if (!positionsBuf)
      {
        goto LABEL_26;
      }
    }

    size = positionsBuf->super.size_;
    v17 = self->totalPositions_ + self->posStart_;
    if (v17 < 0 || v17 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v17);
    }

    *(&positionsBuf->super.size_ + v17 + 1) = int;
  }

  if (self->hasOffsets_)
  {
    startOffsetsBuf = self->this$0_->startOffsetsBuf_;
    if (!startOffsetsBuf)
    {
      goto LABEL_26;
    }

    v19 = self->totalPositions_ + self->offStart_;
    if (v19 == startOffsetsBuf->super.size_)
    {
      v20 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v19, 4, *&int, *&withInt, *&a5, *&a6, v6, v7);
      v21 = self->this$0_;
      v22 = JavaUtilArrays_copyOfWithIntArray_withInt_(v21->startOffsetsBuf_, v20);
      JreStrongAssign(&v21->startOffsetsBuf_, v22);
      v23 = self->this$0_;
      v24 = JavaUtilArrays_copyOfWithIntArray_withInt_(v23->lengthsBuf_, v20);
      JreStrongAssign(&v23->lengthsBuf_, v24);
      startOffsetsBuf = self->this$0_->startOffsetsBuf_;
      if (!startOffsetsBuf)
      {
        goto LABEL_26;
      }
    }

    v25 = startOffsetsBuf->super.size_;
    v26 = self->totalPositions_ + self->offStart_;
    if (v26 < 0 || v26 >= v25)
    {
      IOSArray_throwOutOfBoundsWithMsg(v25, v26);
    }

    *(&startOffsetsBuf->super.size_ + v26 + 1) = withInt;
    lengthsBuf = self->this$0_->lengthsBuf_;
    if (!lengthsBuf)
    {
      goto LABEL_26;
    }

    v28 = lengthsBuf->super.size_;
    v29 = self->totalPositions_ + self->offStart_;
    if (v29 < 0 || v29 >= v28)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, v29);
    }

    *(&lengthsBuf->super.size_ + v29 + 1) = a5;
  }

  if (!self->hasPayloads_)
  {
    goto LABEL_25;
  }

  v30 = self->this$0_;
  payloadLengthsBuf = v30->payloadLengthsBuf_;
  if (!payloadLengthsBuf || self->totalPositions_ + self->payStart_ == payloadLengthsBuf->super.size_ && (v32 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_(v30->payloadLengthsBuf_, a2, *&int, *&withInt, *&a5, *&a6, v6, v7), JreStrongAssign(&v30->payloadLengthsBuf_, v32), (payloadLengthsBuf = self->this$0_->payloadLengthsBuf_) == 0))
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v33 = payloadLengthsBuf->super.size_;
  v34 = self->totalPositions_ + self->payStart_;
  if (v34 < 0 || v34 >= v33)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, v34);
  }

  *(&payloadLengthsBuf->super.size_ + v34 + 1) = a6;
LABEL_25:
  ++self->totalPositions_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData *)&v3 dealloc];
}

@end