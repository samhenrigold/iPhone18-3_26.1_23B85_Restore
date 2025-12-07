@interface JavaNioByteBufferAsShortBuffer
- (BOOL)isDirect;
- (BOOL)isReadOnly;
- (id)asReadOnlyBuffer;
- (id)compact;
- (id)duplicate;
- (id)getWithShortArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)order;
- (id)putWithInt:(int)int withShort:(signed __int16)short;
- (id)putWithShort:(signed __int16)short;
- (id)putWithShortArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)slice;
- (signed)get;
- (signed)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation JavaNioByteBufferAsShortBuffer

- (id)asReadOnlyBuffer
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  asReadOnlyBuffer = [(JavaNioByteBuffer *)byteBuffer asReadOnlyBuffer];
  v5 = [JavaNioByteBufferAsShortBuffer alloc];
  sub_100270A6C(v5, asReadOnlyBuffer);
  v6 = v5;
  v6->super.super.limit_ = self->super.super.limit_;
  v6->super.super.position_ = self->super.super.position_;
  v6->super.super.mark_ = self->super.super.mark_;
  JreStrongAssign(&v6->byteBuffer_->order_, self->byteBuffer_->order_);
  return v6;
}

- (id)compact
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaNioBuffer *)byteBuffer isReadOnly])
  {
    v5 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v5);
  }

  [(JavaNioBuffer *)self->byteBuffer_ limitWithInt:(2 * self->super.super.limit_)];
  [(JavaNioBuffer *)self->byteBuffer_ positionWithInt:(2 * self->super.super.position_)];
  [(JavaNioByteBuffer *)self->byteBuffer_ compact];
  [(JavaNioBuffer *)self->byteBuffer_ clear];
  self->super.super.position_ = self->super.super.limit_ - self->super.super.position_;
  self->super.super.limit_ = self->super.super.capacity_;
  self->super.super.mark_ = -1;
  return self;
}

- (id)duplicate
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer || (v4 = [(JavaNioByteBuffer *)byteBuffer duplicate]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 orderWithJavaNioByteOrder:{-[JavaNioByteBuffer order](self->byteBuffer_, "order")}];
  v6 = [JavaNioByteBufferAsShortBuffer alloc];
  sub_100270A6C(v6, v5);
  result = v6;
  *(result + 3) = self->super.super.limit_;
  *(result + 5) = self->super.super.position_;
  *(result + 4) = self->super.super.mark_;
  return result;
}

- (signed)get
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v5 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v5);
  }

  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  self->super.super.position_ = position + 1;

  return [(JavaNioByteBuffer *)byteBuffer getShortWithInt:(2 * position)];
}

- (signed)getWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:?];
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)byteBuffer getShortWithInt:(2 * int)];
}

- (id)getWithShortArray:(id)array withInt:(int)int withInt:(int)withInt
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  v7 = *&withInt;
  v8 = *&int;
  [(JavaNioBuffer *)byteBuffer limitWithInt:(2 * self->super.super.limit_)];
  [(JavaNioBuffer *)self->byteBuffer_ positionWithInt:(2 * self->super.super.position_)];
  objc_opt_class();
  objc_opt_isKindOfClass();
  v10 = self->byteBuffer_;
  objc_opt_class();
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [(JavaNioByteBuffer *)v10 getWithShortArray:array withInt:v8 withInt:v7];
  self->super.super.position_ += v7;
  return self;
}

- (BOOL)isDirect
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)byteBuffer isDirect];
}

- (BOOL)isReadOnly
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioBuffer *)byteBuffer isReadOnly];
}

- (id)order
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)byteBuffer order];
}

- (id)putWithShort:(signed __int16)short
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v7 = new_JavaNioBufferOverflowException_init();
    objc_exception_throw(v7);
  }

  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  self->super.super.position_ = position + 1;
  [(JavaNioByteBuffer *)byteBuffer putShortWithInt:(2 * position) withShort:short];
  return self;
}

- (id)putWithInt:(int)int withShort:(signed __int16)short
{
  shortCopy = short;
  [(JavaNioBuffer *)self checkIndexWithInt:?];
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioByteBuffer *)byteBuffer putShortWithInt:(2 * int) withShort:shortCopy];
  return self;
}

- (id)putWithShortArray:(id)array withInt:(int)int withInt:(int)withInt
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  v7 = *&withInt;
  v8 = *&int;
  [(JavaNioBuffer *)byteBuffer limitWithInt:(2 * self->super.super.limit_)];
  [(JavaNioBuffer *)self->byteBuffer_ positionWithInt:(2 * self->super.super.position_)];
  objc_opt_class();
  objc_opt_isKindOfClass();
  v10 = self->byteBuffer_;
  objc_opt_class();
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [(JavaNioByteBuffer *)v10 putWithShortArray:array withInt:v8 withInt:v7];
  self->super.super.position_ += v7;
  return self;
}

- (id)slice
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer || ([(JavaNioBuffer *)byteBuffer limitWithInt:(2 * self->super.super.limit_)], [(JavaNioBuffer *)self->byteBuffer_ positionWithInt:(2 * self->super.super.position_)], (v4 = [(JavaNioByteBuffer *)self->byteBuffer_ slice]) == 0))
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 orderWithJavaNioByteOrder:{-[JavaNioByteBuffer order](self->byteBuffer_, "order")}];
  v6 = [JavaNioByteBufferAsShortBuffer alloc];
  sub_100270A6C(v6, v5);
  v7 = v6;
  [(JavaNioBuffer *)self->byteBuffer_ clear];
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioByteBufferAsShortBuffer;
  [(JavaNioByteBufferAsShortBuffer *)&v3 dealloc];
}

@end