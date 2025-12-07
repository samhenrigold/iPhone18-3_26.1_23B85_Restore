@interface OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput
- (id)clone;
- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)close;
- (void)dealloc;
- (void)newBufferWithByteArray:(id)array;
- (void)readInternalWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput

- (void)close
{
  if (!self->isClone_)
  {
    channel = self->channel_;
    if (!channel)
    {
      JreThrowNullPointerException();
    }

    [(JavaNioChannelsSeekableByteChannel *)channel close];
  }
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;
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
  v15 = [OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput alloc];
  OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput_initWithNSString_withJavaNioChannelsSeekableByteChannel_withLong_withLong_withInt_(v15, v11, channel, off + long, withLong, getBufferSize);

  return v15;
}

- (void)newBufferWithByteArray:(id)array
{
  v6.receiver = self;
  v6.super_class = OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;
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

  channel = self->channel_;
  objc_sync_enter(channel);
  v18 = [(OrgApacheLuceneStoreBufferedIndexInput *)self getFilePointer]+ self->off_;
  if (&v18[withInt] > self->end_)
  {
    v33 = JreStrcat("$@", v11, v12, v13, v14, v15, v16, v17, @"read past EOF: ");
    v34 = new_JavaIoEOFException_initWithNSString_(v33);
    objc_exception_throw(v34);
  }

  v19 = self->channel_;
  if (!v19)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioChannelsSeekableByteChannel *)v19 positionWithLong:v18];
  if (withInt >= 1)
  {
    withIntCopy = withInt;
    do
    {
      v21 = JavaLangMath_minWithInt_withInt_(0x4000, withIntCopy);
      if (!byteBuf)
      {
        JreThrowNullPointerException();
      }

      [(JavaNioBuffer *)byteBuf limitWithInt:[(JavaNioBuffer *)byteBuf position]+ v21];
      v22 = [(JavaNioChannelsSeekableByteChannel *)self->channel_ readWithJavaNioByteBuffer:byteBuf];
      if ((v22 & 0x80000000) != 0)
      {
        v31 = JreStrcat("$@$I$I$J$I$J", v23, v24, v25, v26, v27, v28, v29, @"read past EOF: ");
        v32 = new_JavaIoEOFException_initWithNSString_(v31);
        objc_exception_throw(v32);
      }

      v18 += v22;
      v30 = __OFSUB__(withIntCopy, v22);
      withIntCopy -= v22;
    }

    while (!((withIntCopy < 0) ^ v30 | (withIntCopy == 0)));
  }

  objc_sync_exit(channel);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreSimpleFSDirectory_SimpleFSIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v3 dealloc];
}

@end