@interface JavaNioByteArrayBuffer
- (JavaNioByteArrayBuffer)initWithByteArray:(id)array;
- (char)get;
- (char)getWithInt:(int)int;
- (double)getDouble;
- (double)getDoubleWithInt:(int)int;
- (float)getFloat;
- (float)getFloatWithInt:(int)int;
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
- (int)getIntWithInt:(int)int;
- (int)protectedArrayOffset;
- (int64_t)getLongWithInt:(int)int;
- (signed)getShort;
- (signed)getShortWithInt:(int)int;
- (uint64_t)getInt;
- (unint64_t)getLong;
- (unsigned)getChar;
- (void)dealloc;
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

@implementation JavaNioByteArrayBuffer

- (JavaNioByteArrayBuffer)initWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  sub_1002102C0(self, *(array + 2), array, 0, 0, v3, v4, v5);
  return self;
}

- (id)compact
{
  if (self->isReadOnly_)
  {
    v4 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v4);
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->backingArray_, (self->arrayOffset_ + self->super.super.position_), self->backingArray_, self->arrayOffset_, [(JavaNioBuffer *)self remaining]);
  self->super.super.position_ = self->super.super.limit_ - self->super.super.position_;
  self->super.super.limit_ = self->super.super.capacity_;
  self->super.super.mark_ = -1;
  return self;
}

- (id)slice
{
  remaining = [(JavaNioBuffer *)self remaining];
  backingArray = self->backingArray_;
  arrayOffset = self->arrayOffset_;
  position = self->super.super.position_;
  isReadOnly = self->isReadOnly_;
  v8 = [JavaNioByteArrayBuffer alloc];
  sub_1002102C0(v8, remaining, backingArray, (position + arrayOffset), isReadOnly, v9, v10, v11);

  return v8;
}

- (id)protectedArray
{
  if (self->isReadOnly_)
  {
    v3 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v3);
  }

  return self->backingArray_;
}

- (int)protectedArrayOffset
{
  if (self->isReadOnly_)
  {
    v3 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v3);
  }

  return self->arrayOffset_;
}

- (id)getWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = *&withInt;
  v6 = *&int;
  [(JavaNioBuffer *)self checkGetBoundsWithInt:1 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->backingArray_, (self->super.super.position_ + self->arrayOffset_), array, v6, v5);
  self->super.super.position_ += v5;
  return self;
}

- (void)getWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkGetBoundsWithInt:2 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((array + 2 * int + 12), (&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), v8, 2, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)getWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkGetBoundsWithInt:8 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy(array + int + 2, (&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), v8, 8, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)getWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkGetBoundsWithInt:4 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((array + 4 * int + 12), (&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), v8, 4, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)getWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkGetBoundsWithInt:4 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((array + 4 * int + 12), (&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), v8, 4, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)getWithLongArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkGetBoundsWithInt:8 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy(array + int + 2, (&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), v8, 8, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)getWithShortArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkGetBoundsWithInt:2 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((array + 2 * int + 12), (&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), v8, 2, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (char)get
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v8 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v8);
  }

  backingArray = self->backingArray_;
  if (!backingArray)
  {
    JreThrowNullPointerException();
  }

  arrayOffset = self->arrayOffset_;
  self->super.super.position_ = position + 1;
  size = backingArray->super.size_;
  v6 = arrayOffset + position;
  if (arrayOffset + position < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (arrayOffset + position));
  }

  return *(&backingArray->super.size_ + v6 + 4);
}

- (char)getWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:?];
  backingArray = self->backingArray_;
  if (!backingArray)
  {
    JreThrowNullPointerException();
  }

  size = backingArray->super.size_;
  v7 = (self->arrayOffset_ + int);
  if (v7 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  return *(&backingArray->super.size_ + v7 + 4);
}

- (unsigned)getChar
{
  position = self->super.super.position_;
  v3 = position + 2;
  if (position + 2 > self->super.super.limit_)
  {
    v6 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v6);
  }

  result = LibcoreIoMemory_peekShortWithByteArray_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), self->super.order_);
  self->super.super.position_ = v3;
  return result;
}

- (double)getDouble
{
  v2 = [JavaNioByteArrayBuffer getLong]_0(self);

  return JavaLangDouble_longBitsToDoubleWithLong_(v2, v3);
}

- (unint64_t)getLong
{
  v1 = *(self + 20);
  v2 = v1 + 8;
  if (v1 + 8 > *(self + 12))
  {
    v5 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v5);
  }

  result = LibcoreIoMemory_peekLongWithByteArray_withInt_withJavaNioByteOrder_(*(self + 48), (*(self + 56) + v1), *(self + 40));
  *(self + 20) = v2;
  return result;
}

- (double)getDoubleWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:8];
  v5 = LibcoreIoMemory_peekLongWithByteArray_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + int), self->super.order_);

  return JavaLangDouble_longBitsToDoubleWithLong_(v5, v6);
}

- (float)getFloat
{
  v2 = [JavaNioByteArrayBuffer getInt]_0(self);

  return JavaLangFloat_intBitsToFloatWithInt_(v2, v3);
}

- (uint64_t)getInt
{
  v1 = *(self + 20);
  v2 = v1 + 4;
  if (v1 + 4 > *(self + 12))
  {
    v5 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v5);
  }

  result = LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(*(self + 48), (*(self + 56) + v1), *(self + 40));
  *(self + 20) = v2;
  return result;
}

- (float)getFloatWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:4];
  v5 = LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + int), self->super.order_);

  return JavaLangFloat_intBitsToFloatWithInt_(v5, v6);
}

- (int)getIntWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:4];
  backingArray = self->backingArray_;
  order = self->super.order_;
  v7 = (self->arrayOffset_ + int);

  return LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(backingArray, v7, order);
}

- (int64_t)getLongWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:8];
  backingArray = self->backingArray_;
  order = self->super.order_;
  v7 = (self->arrayOffset_ + int);

  return LibcoreIoMemory_peekLongWithByteArray_withInt_withJavaNioByteOrder_(backingArray, v7, order);
}

- (signed)getShort
{
  position = self->super.super.position_;
  v3 = position + 2;
  if (position + 2 > self->super.super.limit_)
  {
    v6 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v6);
  }

  result = LibcoreIoMemory_peekShortWithByteArray_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), self->super.order_);
  self->super.super.position_ = v3;
  return result;
}

- (signed)getShortWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:2];
  backingArray = self->backingArray_;
  order = self->super.order_;
  v7 = (self->arrayOffset_ + int);

  return LibcoreIoMemory_peekShortWithByteArray_withInt_withJavaNioByteOrder_(backingArray, v7, order);
}

- (id)putWithByte:(char)byte
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_11;
  }

  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_11:
    objc_exception_throw(OnlyBufferException_init);
  }

  backingArray = self->backingArray_;
  if (!backingArray)
  {
    JreThrowNullPointerException();
  }

  arrayOffset = self->arrayOffset_;
  self->super.super.position_ = position + 1;
  size = backingArray->super.size_;
  v8 = arrayOffset + position;
  if (arrayOffset + position < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (arrayOffset + position));
  }

  *(&backingArray->super.size_ + v8 + 4) = byte;
  return self;
}

- (id)putWithInt:(int)int withByte:(char)byte
{
  if (self->isReadOnly_)
  {
    v11 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v11);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:?];
  backingArray = self->backingArray_;
  if (!backingArray)
  {
    JreThrowNullPointerException();
  }

  size = backingArray->super.size_;
  v9 = (self->arrayOffset_ + int);
  if (v9 < 0 || v9 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v9);
  }

  *(&backingArray->super.size_ + v9 + 4) = byte;
  return self;
}

- (id)putWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (self->isReadOnly_)
  {
    v10 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v10);
  }

  if (!array)
  {
    JreThrowNullPointerException();
  }

  v6 = *&withInt;
  v7 = *&int;
  [(JavaNioBuffer *)self checkPutBoundsWithInt:1 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v7, self->backingArray_, (self->super.super.position_ + self->arrayOffset_), v6);
  self->super.super.position_ += v6;
  return self;
}

- (void)putWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkPutBoundsWithInt:2 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), (array + 2 * int + 12), v8, 2, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)putWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkPutBoundsWithInt:8 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), array + int + 2, v8, 8, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)putWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkPutBoundsWithInt:4 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), (array + 4 * int + 12), v8, 4, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)putWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkPutBoundsWithInt:4 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), (array + 4 * int + 12), v8, 4, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)putWithLongArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkPutBoundsWithInt:8 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), array + int + 2, v8, 8, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (void)putWithShortArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaNioBuffer *)self checkPutBoundsWithInt:2 withInt:*(array + 2) withInt:*&int withInt:*&withInt];
  unsafeBulkCopy((&self->backingArray_->super.size_ + self->arrayOffset_ + self->super.super.position_ + 4), (array + 2 * int + 12), v8, 2, self->super.order_->needsSwap_);
  self->super.super.position_ += v8;
}

- (id)putCharWithInt:(int)int withChar:(unsigned __int16)char
{
  if (self->isReadOnly_)
  {
    v8 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v8);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:2];
  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + int), char, self->super.order_);
  return self;
}

- (id)putCharWithChar:(unsigned __int16)char
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  position = self->super.super.position_;
  v5 = position + 2;
  if (position + 2 > self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), char, self->super.order_);
  self->super.super.position_ = v5;
  return self;
}

- (id)putDoubleWithDouble:(double)double
{
  v4 = JavaLangDouble_doubleToRawLongBitsWithDouble_(self, a2, double);

  return [(JavaNioByteArrayBuffer *)self putLongWithLong:v4];
}

- (id)putDoubleWithInt:(int)int withDouble:(double)double
{
  v4 = *&int;
  v6 = JavaLangDouble_doubleToRawLongBitsWithDouble_(self, a2, double);

  return [(JavaNioByteArrayBuffer *)self putLongWithInt:v4 withLong:v6];
}

- (id)putFloatWithFloat:(float)float
{
  v4 = JavaLangFloat_floatToRawIntBitsWithFloat_(self, a2, float);

  return [(JavaNioByteArrayBuffer *)self putIntWithInt:v4];
}

- (id)putFloatWithInt:(int)int withFloat:(float)float
{
  v4 = *&int;
  v6 = JavaLangFloat_floatToRawIntBitsWithFloat_(self, a2, float);

  return [(JavaNioByteArrayBuffer *)self putIntWithInt:v4 withInt:v6];
}

- (id)putIntWithInt:(int)int
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  position = self->super.super.position_;
  v5 = position + 4;
  if (position + 4 > self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  LibcoreIoMemory_pokeIntWithByteArray_withInt_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), int, self->super.order_);
  self->super.super.position_ = v5;
  return self;
}

- (id)putIntWithInt:(int)int withInt:(int)withInt
{
  if (self->isReadOnly_)
  {
    v8 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v8);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:4];
  LibcoreIoMemory_pokeIntWithByteArray_withInt_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + int), withInt, self->super.order_);
  return self;
}

- (id)putLongWithInt:(int)int withLong:(int64_t)long
{
  if (self->isReadOnly_)
  {
    v8 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v8);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:8];
  LibcoreIoMemory_pokeLongWithByteArray_withInt_withLong_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + int), long, self->super.order_);
  return self;
}

- (id)putLongWithLong:(int64_t)long
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  position = self->super.super.position_;
  v5 = position + 8;
  if (position + 8 > self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  LibcoreIoMemory_pokeLongWithByteArray_withInt_withLong_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), long, self->super.order_);
  self->super.super.position_ = v5;
  return self;
}

- (id)putShortWithInt:(int)int withShort:(signed __int16)short
{
  if (self->isReadOnly_)
  {
    v8 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v8);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:*&int withInt:2];
  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + int), short, self->super.order_);
  return self;
}

- (id)putShortWithShort:(signed __int16)short
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  position = self->super.super.position_;
  v5 = position + 2;
  if (position + 2 > self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), short, self->super.order_);
  self->super.super.position_ = v5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioByteArrayBuffer;
  [(JavaNioByteBuffer *)&v3 dealloc];
}

@end