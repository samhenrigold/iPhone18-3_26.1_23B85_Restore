@interface JavaNioFloatArrayBuffer
- (JavaNioFloatArrayBuffer)initWithInt:(int)int withFloatArray:(id)array withInt:(int)withInt withBoolean:(BOOL)boolean;
- (float)get;
- (float)getWithInt:(int)int;
- (id)compact;
- (id)getWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)protectedArray;
- (id)putWithFloat:(float)float;
- (id)putWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithInt:(int)int withFloat:(float)float;
- (id)slice;
- (int)protectedArrayOffset;
- (void)dealloc;
@end

@implementation JavaNioFloatArrayBuffer

- (JavaNioFloatArrayBuffer)initWithInt:(int)int withFloatArray:(id)array withInt:(int)withInt withBoolean:(BOOL)boolean
{
  JavaNioFloatBuffer_initWithInt_withLong_(self, *&int, 0, array, *&withInt, boolean, v6, v7);
  JreStrongAssign(&self->backingArray_, array);
  self->arrayOffset_ = withInt;
  self->isReadOnly_ = boolean;
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
  v2 = sub_10015660C([(JavaNioBuffer *)self remaining], self->backingArray_, self->super.super.position_ + self->arrayOffset_, self->isReadOnly_);

  return v2;
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

- (float)get
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

  return *(&backingArray->super.size_ + v6 + 1);
}

- (float)getWithInt:(int)int
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

  return *(&backingArray->super.size_ + v7 + 1);
}

- (id)getWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  if ([(JavaNioBuffer *)self remaining]< withInt)
  {
    v10 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v10);
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->backingArray_, (self->super.super.position_ + self->arrayOffset_), array, v6, v5);
  self->super.super.position_ += v5;
  return self;
}

- (id)putWithFloat:(float)float
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

  *(&backingArray->super.size_ + v8 + 1) = float;
  return self;
}

- (id)putWithInt:(int)int withFloat:(float)float
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

  *(&backingArray->super.size_ + v9 + 1) = float;
  return self;
}

- (id)putWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  v5 = *&withInt;
  v6 = *&int;
  if ([(JavaNioBuffer *)self remaining]< withInt)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v6, self->backingArray_, (self->super.super.position_ + self->arrayOffset_), v5);
  self->super.super.position_ += v5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioFloatArrayBuffer;
  [(JavaNioFloatArrayBuffer *)&v3 dealloc];
}

@end