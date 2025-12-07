@interface OrgApacheLuceneCodecsLucene50Lucene50SkipReader
- (int)getNextSkipDoc;
- (int)readSkipDataWithInt:(int)int withOrgApacheLuceneStoreIndexInput:(id)input;
- (void)dealloc;
- (void)init__WithLong:(int64_t)long withLong:(int64_t)withLong withLong:(int64_t)a5 withLong:(int64_t)a6 withInt:(int)int;
- (void)seekChildWithInt:(int)int;
- (void)setLastSkipDataWithInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50SkipReader

- (void)init__WithLong:(int64_t)long withLong:(int64_t)withLong withLong:(int64_t)a5 withLong:(int64_t)a6 withInt:(int)int
{
  v13.receiver = self;
  v13.super_class = OrgApacheLuceneCodecsLucene50Lucene50SkipReader;
  [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)&v13 init__WithLong:long withInt:[(OrgApacheLuceneCodecsLucene50Lucene50SkipReader *)self trimWithInt:*&int]];
  self->lastDocPointer_ = withLong;
  self->lastPosPointer_ = a5;
  self->lastPayPointer_ = a6;
  JavaUtilArrays_fillWithLongArray_withLong_(self->docPointer_, withLong);
  posPointer = self->posPointer_;
  if (posPointer)
  {
    JavaUtilArrays_fillWithLongArray_withLong_(posPointer, a5);
    payPointer = self->payPointer_;
    if (payPointer)
    {
      JavaUtilArrays_fillWithLongArray_withLong_(payPointer, a6);
    }
  }
}

- (int)getNextSkipDoc
{
  skipDoc = self->super.skipDoc_;
  if (!skipDoc)
  {
    JreThrowNullPointerException();
  }

  size = skipDoc->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  return *(&skipDoc->super.size_ + 1);
}

- (void)seekChildWithInt:(int)int
{
  v3 = *&int;
  v16.receiver = self;
  v16.super_class = OrgApacheLuceneCodecsLucene50Lucene50SkipReader;
  [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)&v16 seekChildWithInt:?];
  docPointer = self->docPointer_;
  if (!docPointer)
  {
    goto LABEL_19;
  }

  size = docPointer->super.size_;
  if ((v3 & 0x80000000) != 0 || size <= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v3);
  }

  docPointer->buffer_[v3] = self->lastDocPointer_;
  posPointer = self->posPointer_;
  if (posPointer)
  {
    v8 = posPointer->super.size_;
    if ((v3 & 0x80000000) != 0 || v8 <= v3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v3);
    }

    posPointer->buffer_[v3] = self->lastPosPointer_;
    posBufferUpto = self->posBufferUpto_;
    if (posBufferUpto)
    {
      v10 = posBufferUpto->super.size_;
      if ((v3 & 0x80000000) != 0 || v10 <= v3)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v3);
      }

      *(&posBufferUpto->super.size_ + v3 + 1) = self->lastPosBufferUpto_;
      payloadByteUpto = self->payloadByteUpto_;
      if (payloadByteUpto)
      {
        v12 = payloadByteUpto->super.size_;
        if ((v3 & 0x80000000) != 0 || v12 <= v3)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v3);
        }

        *(&payloadByteUpto->super.size_ + v3 + 1) = self->lastPayloadByteUpto_;
      }

      payPointer = self->payPointer_;
      if (payPointer)
      {
        lastPayPointer = self->lastPayPointer_;
        v15 = payPointer->super.size_;
        if ((v3 & 0x80000000) != 0 || v15 <= v3)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v3);
        }

        payPointer->buffer_[v3] = lastPayPointer;
      }

      return;
    }

LABEL_19:
    JreThrowNullPointerException();
  }
}

- (void)setLastSkipDataWithInt:(int)int
{
  v3 = *&int;
  v15.receiver = self;
  v15.super_class = OrgApacheLuceneCodecsLucene50Lucene50SkipReader;
  [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)&v15 setLastSkipDataWithInt:?];
  docPointer = self->docPointer_;
  if (!docPointer)
  {
    goto LABEL_19;
  }

  size = docPointer->super.size_;
  if ((v3 & 0x80000000) != 0 || size <= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v3);
  }

  self->lastDocPointer_ = docPointer->buffer_[v3];
  posPointer = self->posPointer_;
  if (posPointer)
  {
    v8 = posPointer->super.size_;
    if ((v3 & 0x80000000) != 0 || v8 <= v3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v3);
    }

    self->lastPosPointer_ = posPointer->buffer_[v3];
    posBufferUpto = self->posBufferUpto_;
    if (posBufferUpto)
    {
      v10 = posBufferUpto->super.size_;
      if ((v3 & 0x80000000) != 0 || v10 <= v3)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v3);
      }

      self->lastPosBufferUpto_ = *(&posBufferUpto->super.size_ + v3 + 1);
      payPointer = self->payPointer_;
      if (payPointer)
      {
        v12 = payPointer->super.size_;
        if ((v3 & 0x80000000) != 0 || v12 <= v3)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v3);
        }

        self->lastPayPointer_ = payPointer->buffer_[v3];
      }

      payloadByteUpto = self->payloadByteUpto_;
      if (payloadByteUpto)
      {
        v14 = payloadByteUpto->super.size_;
        if ((v3 & 0x80000000) != 0 || v14 <= v3)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v3);
        }

        self->lastPayloadByteUpto_ = *(&payloadByteUpto->super.size_ + v3 + 1);
      }

      return;
    }

LABEL_19:
    JreThrowNullPointerException();
  }
}

- (int)readSkipDataWithInt:(int)int withOrgApacheLuceneStoreIndexInput:(id)input
{
  if (!input)
  {
    goto LABEL_20;
  }

  v5 = *&int;
  readVInt = [input readVInt];
  readVLong = [input readVLong];
  docPointer = self->docPointer_;
  if (!docPointer)
  {
    goto LABEL_20;
  }

  v10 = readVLong;
  size = docPointer->super.size_;
  if ((v5 & 0x80000000) != 0 || size <= v5)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  docPointer->buffer_[v5] += v10;
  if (self->posPointer_)
  {
    readVLong2 = [input readVLong];
    posPointer = self->posPointer_;
    v14 = posPointer->super.size_;
    if ((v5 & 0x80000000) != 0 || v14 <= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v5);
    }

    posPointer->buffer_[v5] += readVLong2;
    readVInt2 = [input readVInt];
    posBufferUpto = self->posBufferUpto_;
    if (posBufferUpto)
    {
      v17 = readVInt2;
      v18 = posBufferUpto->super.size_;
      if ((v5 & 0x80000000) != 0 || v18 <= v5)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v5);
      }

      *(&posBufferUpto->super.size_ + v5 + 1) = v17;
      if (self->payloadByteUpto_)
      {
        readVInt3 = [input readVInt];
        payloadByteUpto = self->payloadByteUpto_;
        v21 = payloadByteUpto->super.size_;
        if ((v5 & 0x80000000) != 0 || v21 <= v5)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, v5);
        }

        *(&payloadByteUpto->super.size_ + v5 + 1) = readVInt3;
      }

      if (self->payPointer_)
      {
        readVLong3 = [input readVLong];
        payPointer = self->payPointer_;
        v24 = payPointer->super.size_;
        if ((v5 & 0x80000000) != 0 || v24 <= v5)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v5);
        }

        payPointer->buffer_[v5] += readVLong3;
      }

      return readVInt;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  return readVInt;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50SkipReader;
  [(OrgApacheLuceneCodecsMultiLevelSkipListReader *)&v3 dealloc];
}

@end