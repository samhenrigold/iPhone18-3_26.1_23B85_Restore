@interface OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput
- (id)clone;
- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)close;
- (void)dealloc;
- (void)newBufferWithByteArray:(id)array;
- (void)readInternalWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput

- (void)close
{
  if (!self->isClone_)
  {
    channel = self->channel_;
    if (!channel)
    {
      JreThrowNullPointerException();
    }

    [(JavaNioChannelsSpiAbstractInterruptibleChannel *)channel close];
  }
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput;
  clone = [(OrgApacheLuceneStoreBufferedIndexInput *)&v4 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  clone[64] = 1;
  return clone;
}

- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong
{
  if ((withLong | long) < 0 || withLong + long > self->end_ - self->off_)
  {
    v17 = JreStrcat("$$$@", a2, string, long, withLong, v5, v6, v7, @"slice() ");
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  v11 = [(OrgApacheLuceneStoreIndexInput *)self getFullSliceDescriptionWithNSString:string];
  channel = self->channel_;
  off = self->off_;
  getBufferSize = [(OrgApacheLuceneStoreBufferedIndexInput *)self getBufferSize];
  v15 = [OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput alloc];
  OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput_initWithNSString_withJavaNioChannelsFileChannel_withLong_withLong_withInt_(v15, v11, channel, off + long, withLong, getBufferSize);

  return v15;
}

- (void)newBufferWithByteArray:(id)array
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v6 newBufferWithByteArray:?];
  v5 = JavaNioByteBuffer_wrapWithByteArray_(array);
  JreStrongAssign(&self->byteBuf_, v5);
}

- (void)readInternalWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v6 = *&int;
  if (self->super.buffer_ == array)
  {
    byteBuf = self->byteBuf_;
    if (!byteBuf || (v9 = [(JavaNioBuffer *)self->byteBuf_ clear]) == 0)
    {
      JreThrowNullPointerException();
    }

    [v9 positionWithInt:v6];
  }

  else
  {
    byteBuf = JavaNioByteBuffer_wrapWithByteArray_withInt_withInt_(array, *&int, withInt);
  }

  v17 = [(OrgApacheLuceneStoreBufferedIndexInput *)self getFilePointer]+ self->off_;
  if (&v17[withInt] > self->end_)
  {
    v32 = JreStrcat("$@", v10, v11, v12, v13, v14, v15, v16, @"read past EOF: ");
    v33 = new_JavaIoEOFException_initWithNSString_(v32);
    objc_exception_throw(v33);
  }

  if (withInt >= 1)
  {
    withIntCopy = withInt;
    do
    {
      v19 = JavaLangMath_minWithInt_withInt_(0x4000, withIntCopy);
      if (!byteBuf)
      {
        JreThrowNullPointerException();
      }

      [(JavaNioBuffer *)byteBuf limitWithInt:[(JavaNioBuffer *)byteBuf position]+ v19];
      channel = self->channel_;
      if (!channel)
      {
        JreThrowNullPointerException();
      }

      v21 = [(JavaNioChannelsFileChannel *)channel readWithJavaNioByteBuffer:byteBuf withLong:v17];
      if ((v21 & 0x80000000) != 0)
      {
        v30 = JreStrcat("$@$I$I$J$I$J", v22, v23, v24, v25, v26, v27, v28, @"read past EOF: ");
        v31 = new_JavaIoEOFException_initWithNSString_(v30);
        objc_exception_throw(v31);
      }

      v17 += v21;
      v29 = __OFSUB__(withIntCopy, v21);
      withIntCopy -= v21;
    }

    while (!((withIntCopy < 0) ^ v29 | (withIntCopy == 0)));
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreNIOFSDirectory_NIOFSIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v3 dealloc];
}

@end