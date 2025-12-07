@interface OrgApacheLuceneUtilByteBlockPool
+ (void)initialize;
- (int)allocSliceWithByteArray:(id)array withInt:(int)int;
- (int)newSliceWithInt:(int)int;
- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
- (void)nextBuffer;
- (void)readBytesWithLong:(int64_t)long withByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)resetWithBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (void)setBytesRefWithOrgApacheLuceneUtilBytesRef:(id)ref withInt:(int)int;
@end

@implementation OrgApacheLuceneUtilByteBlockPool

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
      self->byteUpto_ = 0;
      *&self->byteOffset_ = 0;
      v16 = self->buffers_;
      if (v16)
      {
        v17 = v16->super.size_;
        if (v17 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, 0);
        }

        elementType = v16->elementType_;
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

    [(OrgApacheLuceneUtilByteBlockPool_Allocator *)allocator recycleByteBlocksWithByteArray2:self->buffers_ withInt:withBooleanCopy withInt:(bufferUpto + 1)];
    JavaUtilArrays_fillWithNSObjectArray_withInt_withInt_withId_(self->buffers_, withBooleanCopy, (self->bufferUpto_ + 1), 0, v20, v21, v22, v23);
    if (withBooleanCopy)
    {
      goto LABEL_18;
    }
  }

  elementType = 0;
  self->byteUpto_ = 0x8000;
  *&self->byteOffset_ = -32768;
LABEL_24:

  JreStrongAssign(&self->buffer_, elementType);
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

  v15 = IOSObjectArray_Set(self->buffers_, self->bufferUpto_ + 1, [(OrgApacheLuceneUtilByteBlockPool_Allocator *)allocator getByteBlock]);
  JreStrongAssign(&self->buffer_, v15);
  self->byteUpto_ = 0;
  *&self->byteOffset_ = vadd_s32(*&self->byteOffset_, 0x100008000);
}

- (int)newSliceWithInt:(int)int
{
  byteUpto = self->byteUpto_;
  if (byteUpto > 0x8000 - int)
  {
    [(OrgApacheLuceneUtilByteBlockPool *)self nextBuffer];
    byteUpto = self->byteUpto_;
  }

  v6 = byteUpto + int;
  self->byteUpto_ = byteUpto + int;
  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  v9 = v6 - 1;
  if (v6 - 1 < 0 || v9 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v6 - 1));
  }

  *(&buffer->super.size_ + v9 + 4) = 16;
  return byteUpto;
}

- (int)allocSliceWithByteArray:(id)array withInt:(int)int
{
  if (!array)
  {
    goto LABEL_35;
  }

  v4 = *&int;
  v7 = *(array + 2);
  if (int < 0 || v7 <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, *&int);
  }

  if (!OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY_)
  {
    goto LABEL_35;
  }

  v8 = *(array + int + 12) & 0xF;
  v9 = *(OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY_ + 8);
  if (v9 <= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, *(array + int + 12) & 0xF);
  }

  if (!OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_)
  {
    goto LABEL_35;
  }

  v10 = *(OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY_ + 12 + 4 * v8);
  v11 = *(OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_ + 8);
  if ((v10 & 0x80000000) != 0 || v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, *(OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY_ + 12 + 4 * v8));
  }

  v12 = *(OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_ + 12 + 4 * v10);
  byteUpto = self->byteUpto_;
  if (byteUpto > 0x8000 - v12)
  {
    v14 = v10;
    [(OrgApacheLuceneUtilByteBlockPool *)self nextBuffer];
    LOBYTE(v10) = v14;
    byteUpto = self->byteUpto_;
  }

  byteOffset = self->byteOffset_;
  self->byteUpto_ = byteUpto + v12;
  v16 = *(array + 2);
  v17 = v4 - 3;
  v18 = v4 - 3;
  if (v4 - 3 < 0 || v17 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v17);
  }

  buffer = self->buffer_;
  if (!buffer)
  {
LABEL_35:
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  if ((byteUpto & 0x80000000) != 0 || byteUpto >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, byteUpto);
  }

  *(&buffer->super.size_ + byteUpto + 4) = *(array + v18 + 12);
  v21 = *(array + 2);
  v22 = v4 - 2;
  v23 = v4 - 2;
  if (v4 - 2 < 0 || v22 >= v21)
  {
    IOSArray_throwOutOfBoundsWithMsg(v21, v22);
  }

  v24 = self->buffer_;
  v25 = v24->super.size_;
  v26 = byteUpto + 1;
  if (byteUpto + 1 < 0 || v26 >= v25)
  {
    IOSArray_throwOutOfBoundsWithMsg(v25, v26);
  }

  *(&v24->super.size_ + v26 + 4) = *(array + v23 + 12);
  v27 = *(array + 2);
  v28 = v4 - 1;
  v29 = v4 - 1;
  if (v4 - 1 < 0 || v28 >= v27)
  {
    IOSArray_throwOutOfBoundsWithMsg(v27, v28);
  }

  v30 = self->buffer_;
  v31 = v30->super.size_;
  v32 = byteUpto + 2;
  if (byteUpto + 2 < 0 || v32 >= v31)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, v32);
  }

  v33 = byteOffset + byteUpto;
  *(&v30->super.size_ + v32 + 4) = *(array + v29 + 12);
  v34 = *(array + 2);
  if ((v18 & 0x80000000) != 0 || v18 >= v34)
  {
    IOSArray_throwOutOfBoundsWithMsg(v34, v18);
  }

  *(array + v18 + 12) = HIBYTE(v33);
  v35 = *(array + 2);
  if ((v23 & 0x80000000) != 0 || v23 >= v35)
  {
    IOSArray_throwOutOfBoundsWithMsg(v35, v23);
  }

  *(array + v23 + 12) = BYTE2(v33);
  v36 = *(array + 2);
  if ((v29 & 0x80000000) != 0 || v29 >= v36)
  {
    IOSArray_throwOutOfBoundsWithMsg(v36, v29);
  }

  *(array + v29 + 12) = BYTE1(v33);
  v37 = *(array + 2);
  if ((v4 & 0x80000000) != 0 || v37 <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v37, v4);
  }

  *(array + v4 + 12) = v33;
  v38 = self->buffer_;
  v39 = self->byteUpto_;
  v40 = v38->super.size_;
  v41 = v39 - 1;
  if (v39 - 1 < 0 || v41 >= v40)
  {
    IOSArray_throwOutOfBoundsWithMsg(v40, (v39 - 1));
  }

  *(&v38->super.size_ + v41 + 4) = v10 | 0x10;
  return byteUpto + 3;
}

- (void)setBytesRefWithOrgApacheLuceneUtilBytesRef:(id)ref withInt:(int)int
{
  if (!ref || (buffers = self->buffers_) == 0)
  {
    JreThrowNullPointerException();
  }

  intCopy = int;
  size = buffers->super.size_;
  if (int >> 15 < 0 || int >> 15 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, int >> 15);
  }

  v8 = JreStrongAssign(ref + 1, (&buffers->elementType_)[int >> 15]);
  v9 = intCopy & 0x7FFF;
  v10 = v8[2];
  if (v9 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v9);
  }

  v11 = *(v8 + v9 + 12);
  v12 = v8[2];
  if (v11 < 0)
  {
    if (v9 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v9);
    }

    if (v9 + 1 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v9 + 1);
    }

    v13 = v11 & 0x7F | (*(v8 + v9 + 13) << 7);
    v14 = 2;
  }

  else
  {
    if (v9 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v9);
    }

    v13 = v11;
    v14 = 1;
  }

  *(ref + 5) = v13;
  *(ref + 4) = v9 + v14;
}

- (void)appendWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v4 = *(ref + 5);
  if (v4)
  {
    v6 = *(ref + 4);
    byteUpto = self->byteUpto_;
    v8 = byteUpto + v4;
    if (byteUpto + v4 - 0x8000 >= 1)
    {
      v9 = 0x8000 - v8;
      v10 = -v8;
      do
      {
        v11 = v4;
        v4 = (v4 + v9);
        if (v4 >= 1)
        {
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), v6, self->buffer_, self->byteUpto_, v4);
          v6 = (v9 + v11 + v6);
        }

        v8 -= 0x8000;
        LODWORD(v4) = v8 + (v4 & (v4 >> 31));
        [(OrgApacheLuceneUtilByteBlockPool *)self nextBuffer];
        v9 += 0x8000;
        v10 += 0x8000;
      }

      while (v8 > 0x8000);
      byteUpto = self->byteUpto_;
      v4 = ((v11 + v10) & ((v11 + v10) >> 31)) + v8;
    }

    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), v6, self->buffer_, byteUpto, v4);
    self->byteUpto_ += v4;
  }
}

- (void)readBytesWithLong:(int64_t)long withByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (withInt)
  {
    buffers = self->buffers_;
    if (!buffers)
    {
      JreThrowNullPointerException();
    }

    v8 = *&withInt;
    v9 = *&int;
    v11 = long >> 15;
    size = buffers->super.size_;
    if (((long >> 15) & 0x80000000) != 0 || size <= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, long >> 15);
    }

    v13 = long & 0x7FFF;
    v14 = (&buffers->elementType_)[v11];
    if (v13 + withInt - 0x8000 < 1)
    {
      v20 = long & 0x7FFF;
    }

    else
    {
      v15 = withInt + v13;
      v16 = (0x8000 - v13);
      v17 = v11 + 1;
      do
      {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v14, v13, array, v9, v16);
        v18 = self->buffers_;
        v19 = v18->super.size_;
        if (v17 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, v17);
        }

        v20 = 0;
        v13 = 0;
        v8 = (v8 - v16);
        v9 = (v16 + v9);
        v14 = (&v18->elementType_)[v17];
        v15 -= 0x8000;
        v16 = (v16 + 0x8000);
        ++v17;
      }

      while (v15 > 0x8000);
    }

    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v14, v20, array, v9, v8);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilByteBlockPool;
  [(OrgApacheLuceneUtilByteBlockPool *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v6 = 0x900000009;
    v5[0] = xmmword_1003140F0;
    v5[1] = unk_100314100;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilByteBlockPool_NEXT_LEVEL_ARRAY_, [IOSIntArray newArrayWithInts:v5 count:10]);
    v4 = 0xC800000078;
    v3[0] = xmmword_100314118;
    v3[1] = unk_100314128;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_, [IOSIntArray newArrayWithInts:v3 count:10]);
    v2 = *(OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_ + 8);
    if (v2 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v2, 0);
    }

    OrgApacheLuceneUtilByteBlockPool_FIRST_LEVEL_SIZE_ = *(OrgApacheLuceneUtilByteBlockPool_LEVEL_SIZE_ARRAY_ + 12);
    atomic_store(1u, OrgApacheLuceneUtilByteBlockPool__initialized);
  }
}

@end