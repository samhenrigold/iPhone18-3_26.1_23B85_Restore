@interface ComAppleContextkitUtilBytesRefPool
+ (void)initialize;
- (BOOL)reclaimSpaceWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)tryAppendWithJavaLangCharSequence:(id)sequence;
- (id)tryAppendWithJavaLangCharSequence:(id)sequence withChar:(unsigned __int16)char withJavaLangCharSequence:(id)charSequence;
- (id)tryAppendWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
- (void)nextBuffer;
- (void)resetWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
@end

@implementation ComAppleContextkitUtilBytesRefPool

- (void)resetWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  bufferUpto = self->bufferUpto_;
  if (bufferUpto == -1)
  {
    return;
  }

  withBooleanCopy = withBoolean;
  if (boolean)
  {
    if (bufferUpto >= 1)
    {
      v11 = 0;
      do
      {
        buffers = self->buffers_;
        if (!buffers)
        {
          goto LABEL_27;
        }

        size = buffers->super.size_;
        if (v11 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v11);
        }

        JavaUtilArrays_fillWithByteArray_withByte_((&buffers->elementType_)[v11++], 0);
      }

      while (v11 < self->bufferUpto_);
      bufferUpto = self->bufferUpto_;
    }

    v14 = self->buffers_;
    if (!v14)
    {
      goto LABEL_27;
    }

    v15 = v14->super.size_;
    if ((bufferUpto & 0x80000000) != 0 || bufferUpto >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, bufferUpto);
    }

    JavaUtilArrays_fillWithByteArray_withInt_withInt_withByte_((&v14->elementType_)[bufferUpto], 0, self->byteUpto_, 0, v4, v5, v6, v7);
    LODWORD(bufferUpto) = self->bufferUpto_;
  }

  if (bufferUpto <= 0 && withBooleanCopy)
  {
    if (withBooleanCopy)
    {
LABEL_18:
      *&self->bufferUpto_ = 0;
      self->byteOffset_ = 0;
      v16 = self->buffers_;
      if (v16)
      {
        v17 = v16->super.size_;
        if (v17 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, 0);
        }

        elementType = v16->elementType_;
        p_buffer = &self->buffer_;
        goto LABEL_24;
      }

LABEL_27:
      JreThrowNullPointerException();
    }
  }

  else
  {
    allocator = self->allocator_;
    if (!allocator)
    {
      goto LABEL_27;
    }

    [(ComAppleContextkitUtilBytesRefPool_Allocator *)allocator recycleByteBlocksWithByteArray2:self->buffers_ withInt:withBooleanCopy withInt:(bufferUpto + 1)];
    JavaUtilArrays_fillWithNSObjectArray_withInt_withInt_withId_(self->buffers_, withBooleanCopy, (self->bufferUpto_ + 1), 0, v21, v22, v23, v24);
    if (withBooleanCopy)
    {
      goto LABEL_18;
    }
  }

  blockSize = self->blockSize_;
  self->bufferUpto_ = -1;
  self->byteUpto_ = blockSize;
  self->byteOffset_ = -blockSize;
  p_buffer = &self->buffer_;
  elementType = 0;
LABEL_24:

  JreStrongAssign(p_buffer, elementType);
}

- (void)nextBuffer
{
  p_buffers = &self->buffers_;
  buffers = self->buffers_;
  if (!buffers)
  {
    goto LABEL_8;
  }

  bufferUpto = self->bufferUpto_;
  if (bufferUpto + 1 == buffers->super.size_)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v12 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(bufferUpto + 2, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, v2, v3, v4, v5, v6, v7);
    v13 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v12, IOSClass_arrayType(+[IOSClass byteClass], 1u));
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*p_buffers, 0, v13, 0, (*p_buffers)->super.size_);
    JreStrongAssign(p_buffers, v13);
  }

  allocator = self->allocator_;
  if (!allocator)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v15 = IOSObjectArray_Set(self->buffers_, self->bufferUpto_ + 1, [(ComAppleContextkitUtilBytesRefPool_Allocator *)allocator getByteBlock]);
  JreStrongAssign(&self->buffer_, v15);
  ++self->bufferUpto_;
  self->byteUpto_ = 0;
  self->byteOffset_ += self->blockSize_;
}

- (id)tryAppendWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v4 = *(ref + 5);
  if (!v4)
  {
    return qword_100554238;
  }

  blockSize = self->blockSize_;
  v7 = __OFSUB__(v4, blockSize);
  v8 = v4 - blockSize;
  if ((v8 < 0) ^ v7 | (v8 == 0) && ((v9 = *(ref + 4), byteUpto = self->byteUpto_, v8 + byteUpto < 1) || ([(ComAppleContextkitUtilBytesRefPool *)self nextBuffer], byteUpto = self->byteUpto_, byteUpto + v4 - self->blockSize_ < 1)))
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), v9, self->buffer_, byteUpto, v4);
    result = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(self->buffer_, self->byteUpto_, v4);
    self->byteUpto_ += v4;
  }

  else
  {

    return OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(ref, a2);
  }

  return result;
}

- (id)tryAppendWithJavaLangCharSequence:(id)sequence
{
  if (!sequence)
  {
    JreThrowNullPointerException();
  }

  sequenceCopy = sequence;
  v5 = [sequence length];
  if (!v5)
  {
    return qword_100554238;
  }

  v6 = 3 * v5;
  blockSize = self->blockSize_;
  if ((self->byteUpto_ + 3 * v5 - blockSize) < 1 || v6 <= blockSize && ([(ComAppleContextkitUtilBytesRefPool *)self nextBuffer], self->byteUpto_ + v6 - self->blockSize_ < 1) || (result = new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(sequenceCopy)) == 0)
  {
    LODWORD(sequenceCopy) = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(sequenceCopy, 0, [sequenceCopy length], self->buffer_, self->byteUpto_);
    goto LABEL_10;
  }

  sequenceCopy = *(result + 5);
  byteUpto = self->byteUpto_;
  if (byteUpto + sequenceCopy - self->blockSize_ <= 0)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(result + 1), 0, self->buffer_, byteUpto, sequenceCopy);
LABEL_10:
    result = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(self->buffer_, self->byteUpto_, sequenceCopy);
    self->byteUpto_ += sequenceCopy;
  }

  return result;
}

- (id)tryAppendWithJavaLangCharSequence:(id)sequence withChar:(unsigned __int16)char withJavaLangCharSequence:(id)charSequence
{
  if (!sequence)
  {
    goto LABEL_24;
  }

  charCopy = char;
  v9 = [sequence length];
  if (!charSequence)
  {
    goto LABEL_24;
  }

  v10 = 3 * ([charSequence length] + v9) + 3;
  byteUpto = self->byteUpto_;
  blockSize = self->blockSize_;
  v13 = self->byteUpto_;
  if (byteUpto - blockSize + v10 >= 1)
  {
    if (v10 > blockSize || ([(ComAppleContextkitUtilBytesRefPool *)self nextBuffer], v13 = self->byteUpto_, v13 + v10 - self->blockSize_ >= 1))
    {
      v14 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(v10);
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v13 = 0;
        p_bytes = &v14->bytes_;
        goto LABEL_10;
      }

      v13 = self->byteUpto_;
    }
  }

  v15 = 0;
  p_bytes = &self->buffer_;
  v16 = 1;
LABEL_10:
  v18 = *p_bytes;
  v20 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(sequence, 0, [sequence length], *p_bytes, v13);
  if ((charCopy - 127) <= 0xFF81u)
  {
    v21 = JavaLangCharacter_toStringWithChar_(charCopy, v19);
    if (v21)
    {
      v22 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(v21, 0, [(NSString *)v21 length], v18, v20 + v13);
      goto LABEL_17;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

  if (!v18)
  {
    goto LABEL_24;
  }

  v23 = *(v18 + 8);
  v24 = v20 + v13;
  if (v20 + v13 < 0 || v24 >= v23)
  {
    IOSArray_throwOutOfBoundsWithMsg(v23, v24);
  }

  *(v18 + 12 + v20 + v13) = charCopy;
  v22 = 1;
LABEL_17:
  v25 = OrgApacheLuceneUtilUnicodeUtil_UTF16toUTF8WithJavaLangCharSequence_withInt_withInt_withByteArray_withInt_(charSequence, 0, [charSequence length], v18, v22 + v20 + v13) + v22 + v20;
  if ((v16 & 1) == 0)
  {
    v15->length_ = v25;
    if (self->byteUpto_ + v25 - self->blockSize_ > 0)
    {
      return v15;
    }

    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v15->bytes_, 0, self->buffer_, byteUpto, v25);
  }

  self->byteUpto_ += v25;
  v27 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(self->buffer_, byteUpto, v25);

  return v27;
}

- (BOOL)reclaimSpaceWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  if (*(ref + 1) == self->buffer_ && (v4 = *(ref + 5), byteUpto = self->byteUpto_, byteUpto == *(ref + 4) + v4))
  {
    v6 = byteUpto - v4;
    v7 = v6 >= 0;
    if (v6 >= 0)
    {
      byteUpto = v6;
    }

    self->byteUpto_ = byteUpto;
  }

  else
  {
    v7 = 0;
  }

  JreStrongAssign(ref + 1, 0);
  *(ref + 5) = 0;
  *(ref + 4) = 0;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilBytesRefPool;
  [(ComAppleContextkitUtilBytesRefPool *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(0);
    JreStrongAssignAndConsume(&qword_100554238, v2);
    atomic_store(1u, &ComAppleContextkitUtilBytesRefPool__initialized);
  }
}

@end