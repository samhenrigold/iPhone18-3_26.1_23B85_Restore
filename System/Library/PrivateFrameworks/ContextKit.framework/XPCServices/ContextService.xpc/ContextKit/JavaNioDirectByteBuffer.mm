@interface JavaNioDirectByteBuffer
- (BOOL)protectedHasArray;
- (JavaNioDirectByteBuffer)initWithLong:(int64_t)long withInt:(int)int;
- (char)get;
- (char)getWithInt:(int)int;
- (double)getDouble;
- (double)getDoubleWithInt:(int)int;
- (float)getFloat;
- (float)getFloatWithInt:(int)int;
- (id)asCharBuffer;
- (id)asDoubleBuffer;
- (id)asFloatBuffer;
- (id)asIntBuffer;
- (id)asLongBuffer;
- (id)asShortBuffer;
- (id)compact;
- (id)getWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)protectedArray;
- (id)putCharWithChar:(unsigned __int16)char;
- (id)putCharWithInt:(int)int withChar:(unsigned __int16)char;
- (id)putDoubleWithDouble:(double)double;
- (id)putDoubleWithInt:(int)int withDouble:(double)double;
- (id)putFloatWithFloat:(float)float;
- (id)putFloatWithInt:(int)int withFloat:(float)float;
- (id)putIntWithInt:(int)int;
- (id)putIntWithInt:(int)int withInt:(int)withInt;
- (id)putLongWithInt:(int)int withLong:(int64_t)long;
- (id)putLongWithLong:(int64_t)long;
- (id)putShortWithInt:(int)int withShort:(signed __int16)short;
- (id)putShortWithShort:(signed __int16)short;
- (id)putWithByte:(char)byte;
- (id)putWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithInt:(int)int withByte:(char)byte;
- (id)slice;
- (int)getInt;
- (int)getIntWithInt:(int)int;
- (int64_t)getLong;
- (int64_t)getLongWithInt:(int)int;
- (signed)getShort;
- (signed)getShortWithInt:(int)int;
- (uint64_t)checkNotFreed;
- (unsigned)getChar;
- (unsigned)getCharWithInt:(int)int;
- (void)free;
- (void)getWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)getWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)getWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)getWithIntArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)getWithLongArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)getWithShortArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)putWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)putWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)putWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)putWithIntArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)putWithLongArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)putWithShortArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaNioDirectByteBuffer

- (JavaNioDirectByteBuffer)initWithLong:(int64_t)long withInt:(int)int
{
  v4 = *&int;
  v6 = JavaNioMemoryBlock_wrapFromJniWithLong_withLong_(long, int);
  JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(self, v6, v4, 0, 0, 0);
  return self;
}

- (id)compact
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v4 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v4);
  }

  LibcoreIoMemory_memmoveWithId_withInt_withId_withInt_withLong_(self, 0, self, self->super.super.super.position_, [(JavaNioBuffer *)self remaining]);
  self->super.super.super.position_ = self->super.super.super.limit_ - self->super.super.super.position_;
  self->super.super.super.limit_ = self->super.super.super.capacity_;
  self->super.super.super.mark_ = -1;
  return self;
}

- (uint64_t)checkNotFreed
{
  if (*(result + 68) == 1)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"buffer was freed");
    objc_exception_throw(v1);
  }

  return result;
}

- (id)slice
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  block = self->super.block_;
  remaining = [(JavaNioBuffer *)self remaining];
  offset = self->offset_;
  position = self->super.super.super.position_;
  isReadOnly = self->isReadOnly_;
  mapMode = self->super.mapMode_;
  v9 = [JavaNioDirectByteBuffer alloc];
  JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(v9, block, remaining, position + offset, isReadOnly, mapMode);

  return v9;
}

- (id)protectedArray
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block array];
  if (!result)
  {
    OnlyBufferException_init = new_JavaLangUnsupportedOperationException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  return result;
}

- (BOOL)protectedHasArray
{
  if (self->isReadOnly_)
  {
    return 0;
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioMemoryBlock *)block array]!= 0;
}

- (id)getWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || ([(JavaNioBuffer *)self checkGetBoundsWithInt:1 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block peekByteArrayWithInt:(self->super.super.super.position_ + self->offset_) withByteArray:array withInt:v6 withInt:v5];
  self->super.super.super.position_ += v5;
  return self;
}

- (void)getWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkGetBoundsWithInt:2 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block peekCharArrayWithInt:(self->super.super.super.position_ + self->offset_) withCharArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)getWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkGetBoundsWithInt:8 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block peekDoubleArrayWithInt:(self->super.super.super.position_ + self->offset_) withDoubleArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)getWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkGetBoundsWithInt:4 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block peekFloatArrayWithInt:(self->super.super.super.position_ + self->offset_) withFloatArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)getWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkGetBoundsWithInt:4 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block peekIntArrayWithInt:(self->super.super.super.position_ + self->offset_) withIntArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)getWithLongArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkGetBoundsWithInt:8 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block peekLongArrayWithInt:(self->super.super.super.position_ + self->offset_) withLongArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)getWithShortArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkGetBoundsWithInt:2 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block peekShortArrayWithInt:(self->super.super.super.position_ + self->offset_) withShortArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (char)get
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  if (position == self->super.super.super.limit_)
  {
    v6 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v6);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  offset = self->offset_;
  self->super.super.super.position_ = position + 1;

  return [(JavaNioMemoryBlock *)block peekByteWithInt:(offset + position)];
}

- (char)getWithInt:(int)int
{
  v3 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  [(JavaNioBuffer *)self checkIndexWithInt:v3];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  v6 = (self->offset_ + v3);

  return [(JavaNioMemoryBlock *)block peekByteWithInt:v6];
}

- (unsigned)getChar
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 2;
  if (position + 2 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block peekShortWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v4;
  return result;
}

- (unsigned)getCharWithInt:(int)int
{
  v3 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  [(JavaNioBuffer *)self checkIndexWithInt:v3 withInt:2];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioMemoryBlock *)block peekShortWithInt:(self->offset_ + v3) withJavaNioByteOrder:self->super.super.order_];
}

- (double)getDouble
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 8;
  if (position + 8 > self->super.super.super.limit_)
  {
    v9 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v9);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaNioMemoryBlock *)block peekLongWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  result = JavaLangDouble_longBitsToDoubleWithLong_(v6, v7);
  self->super.super.super.position_ = v4;
  return result;
}

- (double)getDoubleWithInt:(int)int
{
  v3 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  [(JavaNioBuffer *)self checkIndexWithInt:v3 withInt:8];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaNioMemoryBlock *)block peekLongWithInt:(self->offset_ + v3) withJavaNioByteOrder:self->super.super.order_];

  return JavaLangDouble_longBitsToDoubleWithLong_(v6, v7);
}

- (float)getFloat
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 4;
  if (position + 4 > self->super.super.super.limit_)
  {
    v9 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v9);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaNioMemoryBlock *)block peekIntWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  result = JavaLangFloat_intBitsToFloatWithInt_(v6, v7);
  self->super.super.super.position_ = v4;
  return result;
}

- (float)getFloatWithInt:(int)int
{
  v3 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  [(JavaNioBuffer *)self checkIndexWithInt:v3 withInt:4];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaNioMemoryBlock *)block peekIntWithInt:(self->offset_ + v3) withJavaNioByteOrder:self->super.super.order_];

  return JavaLangFloat_intBitsToFloatWithInt_(v6, v7);
}

- (int)getInt
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 4;
  if (position + 4 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block peekIntWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v4;
  return result;
}

- (int)getIntWithInt:(int)int
{
  v3 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  [(JavaNioBuffer *)self checkIndexWithInt:v3 withInt:4];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  order = self->super.super.order_;
  v7 = (self->offset_ + v3);

  return [(JavaNioMemoryBlock *)block peekIntWithInt:v7 withJavaNioByteOrder:order];
}

- (int64_t)getLong
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 8;
  if (position + 8 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block peekLongWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v4;
  return result;
}

- (int64_t)getLongWithInt:(int)int
{
  v3 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  [(JavaNioBuffer *)self checkIndexWithInt:v3 withInt:8];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  order = self->super.super.order_;
  v7 = (self->offset_ + v3);

  return [(JavaNioMemoryBlock *)block peekLongWithInt:v7 withJavaNioByteOrder:order];
}

- (signed)getShort
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 2;
  if (position + 2 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block peekShortWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v4;
  return result;
}

- (signed)getShortWithInt:(int)int
{
  v3 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  [(JavaNioBuffer *)self checkIndexWithInt:v3 withInt:2];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  order = self->super.super.order_;
  v7 = (self->offset_ + v3);

  return [(JavaNioMemoryBlock *)block peekShortWithInt:v7 withJavaNioByteOrder:order];
}

- (void)free
{
  if (!self->freed_)
  {
    block = self->super.block_;
    if (!block)
    {
      JreThrowNullPointerException();
    }

    [(JavaNioMemoryBlock *)block free];
    self->freed_ = 1;
  }
}

- (id)asCharBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsCharBuffer_asCharBufferWithJavaNioByteBuffer_(self);
}

- (id)asDoubleBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsDoubleBuffer_asDoubleBufferWithJavaNioByteBuffer_(self);
}

- (id)asFloatBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsFloatBuffer_asFloatBufferWithJavaNioByteBuffer_(self);
}

- (id)asIntBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsIntBuffer_asIntBufferWithJavaNioByteBuffer_(self);
}

- (id)asLongBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsLongBuffer_asLongBufferWithJavaNioByteBuffer_(self);
}

- (id)asShortBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsShortBuffer_asShortBufferWithJavaNioByteBuffer_(self);
}

- (id)putWithByte:(char)byte
{
  byteCopy = byte;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  if (position == self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  offset = self->offset_;
  self->super.super.super.position_ = position + 1;
  [(JavaNioMemoryBlock *)block pokeByteWithInt:(offset + position) withByte:byteCopy];
  return self;
}

- (id)putWithInt:(int)int withByte:(char)byte
{
  byteCopy = byte;
  v5 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v9 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v9);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:v5];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeByteWithInt:(self->offset_ + v5) withByte:byteCopy];
  return self;
}

- (id)putWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v11 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v11);
  }

  if (!array || ([(JavaNioBuffer *)self checkPutBoundsWithInt:1 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeByteArrayWithInt:(self->super.super.super.position_ + self->offset_) withByteArray:array withInt:v6 withInt:v5];
  self->super.super.super.position_ += v5;
  return self;
}

- (void)putWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkPutBoundsWithInt:2 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeCharArrayWithInt:(self->super.super.super.position_ + self->offset_) withCharArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)putWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkPutBoundsWithInt:8 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeDoubleArrayWithInt:(self->super.super.super.position_ + self->offset_) withDoubleArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)putWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkPutBoundsWithInt:4 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeFloatArrayWithInt:(self->super.super.super.position_ + self->offset_) withFloatArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)putWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkPutBoundsWithInt:4 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeIntArrayWithInt:(self->super.super.super.position_ + self->offset_) withIntArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)putWithLongArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkPutBoundsWithInt:8 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeLongArrayWithInt:(self->super.super.super.position_ + self->offset_) withLongArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (void)putWithShortArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (!array || (v9 = [(JavaNioBuffer *)self checkPutBoundsWithInt:2 withInt:*(array + 2) withInt:v6 withInt:v5], (block = self->super.block_) == 0) || (order = self->super.super.order_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeShortArrayWithInt:(self->super.super.super.position_ + self->offset_) withShortArray:array withInt:v6 withInt:v5 withBoolean:order->needsSwap_];
  self->super.super.super.position_ += v9;
}

- (id)putCharWithChar:(unsigned __int16)char
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  v6 = position + 2;
  if (position + 2 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeShortWithInt:(self->offset_ + position) withShort:char withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v6;
  return self;
}

- (id)putCharWithInt:(int)int withChar:(unsigned __int16)char
{
  v5 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v9 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v9);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:v5 withInt:2];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeShortWithInt:(self->offset_ + v5) withShort:char withJavaNioByteOrder:self->super.super.order_];
  return self;
}

- (id)putDoubleWithDouble:(double)double
{
  v5 = [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  if (position + 8 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeLongWithInt:(self->offset_ + position) withLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(v5 withJavaNioByteOrder:v6, double), self->super.super.order_];
  self->super.super.super.position_ = position + 8;
  return self;
}

- (id)putDoubleWithInt:(int)int withDouble:(double)double
{
  v5 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v11 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v11);
  }

  v7 = [(JavaNioBuffer *)self checkIndexWithInt:v5 withInt:8];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeLongWithInt:(self->offset_ + v5) withLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(v7 withJavaNioByteOrder:v8, double), self->super.super.order_];
  return self;
}

- (id)putFloatWithFloat:(float)float
{
  v5 = [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  if (position + 4 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeIntWithInt:(self->offset_ + position) withInt:JavaLangFloat_floatToRawIntBitsWithFloat_(v5 withJavaNioByteOrder:v6, float), self->super.super.order_];
  self->super.super.super.position_ = position + 4;
  return self;
}

- (id)putFloatWithInt:(int)int withFloat:(float)float
{
  v5 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v11 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v11);
  }

  v7 = [(JavaNioBuffer *)self checkIndexWithInt:v5 withInt:4];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeIntWithInt:(self->offset_ + v5) withInt:JavaLangFloat_floatToRawIntBitsWithFloat_(v7 withJavaNioByteOrder:v8, float), self->super.super.order_];
  return self;
}

- (id)putIntWithInt:(int)int
{
  v3 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  v6 = position + 4;
  if (position + 4 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeIntWithInt:(self->offset_ + position) withInt:v3 withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v6;
  return self;
}

- (id)putIntWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v9 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v9);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:v5 withInt:4];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeIntWithInt:(self->offset_ + v5) withInt:v4 withJavaNioByteOrder:self->super.super.order_];
  return self;
}

- (id)putLongWithLong:(int64_t)long
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  v6 = position + 8;
  if (position + 8 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeLongWithInt:(self->offset_ + position) withLong:long withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v6;
  return self;
}

- (id)putLongWithInt:(int)int withLong:(int64_t)long
{
  v5 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v9 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v9);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:v5 withInt:8];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeLongWithInt:(self->offset_ + v5) withLong:long withJavaNioByteOrder:self->super.super.order_];
  return self;
}

- (id)putShortWithShort:(signed __int16)short
{
  shortCopy = short;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  v6 = position + 2;
  if (position + 2 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeShortWithInt:(self->offset_ + position) withShort:shortCopy withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v6;
  return self;
}

- (id)putShortWithInt:(int)int withShort:(signed __int16)short
{
  shortCopy = short;
  v5 = *&int;
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v9 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v9);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:v5 withInt:2];
  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeShortWithInt:(self->offset_ + v5) withShort:shortCopy withJavaNioByteOrder:self->super.super.order_];
  return self;
}

@end