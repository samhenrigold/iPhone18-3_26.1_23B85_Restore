@interface JavaNioBuffer
- (id)clear;
- (id)flip;
- (id)limitWithInt:(int)int;
- (id)reset;
- (int)checkGetBoundsWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6;
- (int)checkPutBoundsWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6;
- (void)checkIndexWithInt:(int)int;
- (void)checkIndexWithInt:(int)int withInt:(int)withInt;
- (void)checkStartEndRemainingWithInt:(int)int withInt:(int)withInt;
- (void)checkWritable;
- (void)positionImplWithInt:(int)int;
@end

@implementation JavaNioBuffer

- (void)checkIndexWithInt:(int)int
{
  if (int < 0 || self->limit_ <= int)
  {
    v8 = JreStrcat("$I$I", a2, *&int, v3, v4, v5, v6, v7, @"index=");
    v9 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }
}

- (void)checkIndexWithInt:(int)int withInt:(int)withInt
{
  if (int < 0 || self->limit_ - withInt < int)
  {
    v8 = JreStrcat("$I$I$I", a2, *&int, *&withInt, v4, v5, v6, v7, @"index=");
    v9 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }
}

- (int)checkGetBoundsWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6
{
  if (withInt - a5 < a6 || withInt < a5 || (a6 | a5) < 0)
  {
    v9 = JreStrcat("$I$I$I", a2, *&int, *&withInt, *&a5, *&a6, v6, v7, @"offset=");
    v10 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v9);
    goto LABEL_8;
  }

  if (a6 * int > self->limit_ - self->position_)
  {
    v10 = new_JavaNioBufferUnderflowException_init();
LABEL_8:
    objc_exception_throw(v10);
  }

  return a6 * int;
}

- (int)checkPutBoundsWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6
{
  if (withInt - a5 < a6 || withInt < a5 || (a6 | a5) < 0)
  {
    v10 = JreStrcat("$I$I$I", a2, *&int, *&withInt, *&a5, *&a6, v6, v7, @"offset=");
    OnlyBufferException_init = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v10);
    goto LABEL_10;
  }

  v8 = a6 * int;
  if (a6 * int > self->limit_ - self->position_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
    goto LABEL_10;
  }

  if ([(JavaNioBuffer *)self isReadOnly])
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
LABEL_10:
    objc_exception_throw(OnlyBufferException_init);
  }

  return v8;
}

- (void)checkStartEndRemainingWithInt:(int)int withInt:(int)withInt
{
  if (int < 0 || withInt < int || self->limit_ - self->position_ < withInt)
  {
    v8 = JreStrcat("$I$I$I", a2, *&int, *&withInt, v4, v5, v6, v7, @"start=");
    v9 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }
}

- (id)clear
{
  *(self + 2) = 0xFFFFFFFFLL;
  *(self + 3) = *(self + 2);
  return self;
}

- (id)flip
{
  *(self + 3) = *(self + 5);
  *(self + 2) = 0xFFFFFFFFLL;
  return self;
}

- (void)checkWritable
{
  if ([(JavaNioBuffer *)self isReadOnly])
  {
    v2 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Read-only buffer");
    objc_exception_throw(v2);
  }
}

- (id)limitWithInt:(int)int
{
  if (int < 0 || *(self + 2) < int)
  {
    v10 = JreStrcat("$I$I", a2, *&int, v3, v4, v5, v6, v7, @"Bad limit (capacity ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  *(self + 3) = int;
  if (*(self + 5) > int)
  {
    *(self + 5) = int;
  }

  v8 = *(self + 4);
  if (v8 != -1 && v8 > int)
  {
    *(self + 4) = -1;
  }

  return self;
}

- (void)positionImplWithInt:(int)int
{
  if (int < 0 || self->limit_ < int)
  {
    v8 = JreStrcat("$I$I", a2, *&int, v3, v4, v5, v6, v7, @"Bad position (limit ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  self->position_ = int;
  if (self->mark_ > int)
  {
    self->mark_ = -1;
  }
}

- (id)reset
{
  v2 = *(self + 4);
  if (v2 == -1)
  {
    v3 = new_JavaNioInvalidMarkException_initWithNSString_(@"Mark not set");
    objc_exception_throw(v3);
  }

  *(self + 5) = v2;
  return self;
}

@end