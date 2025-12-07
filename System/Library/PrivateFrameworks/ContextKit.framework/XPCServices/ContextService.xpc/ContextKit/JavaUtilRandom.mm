@interface JavaUtilRandom
- (JavaUtilRandom)init;
- (double)nextGaussian;
- (int)nextIntWithInt:(int)int;
- (int)nextWithInt:(int)int;
- (void)nextBytesWithByteArray:(id)array;
- (void)setSeedWithLong:(int64_t)long;
@end

@implementation JavaUtilRandom

- (JavaUtilRandom)init
{
  v3 = JavaLangSystem_nanoTime();
  v4 = atomic_load(&qword_100557098);
  [(JavaUtilRandom *)self setSeedWithLong:v4 + v3];
  atomic_fetch_add(&qword_100557098, 1uLL);
  return self;
}

- (int)nextWithInt:(int)int
{
  intCopy = int;
  objc_sync_enter(self);
  v5 = (0x5DEECE66DLL * self->seed_ + 11) & 0xFFFFFFFFFFFFLL;
  self->seed_ = v5;
  v6 = v5 >> (48 - intCopy);
  objc_sync_exit(self);
  return v6;
}

- (void)nextBytesWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);
  if (v4 >= 1)
  {
    nextInt = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(array + 2);
    do
    {
      if (v7)
      {
        --v7;
      }

      else
      {
        nextInt = [(JavaUtilRandom *)self nextInt];
        v9 = *(array + 2);
        v4 = v9;
        v7 = 3;
      }

      if (v8 >= v4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v8);
      }

      *(array + v8++ + 12) = nextInt;
      nextInt >>= 8;
      v9 = *(array + 2);
      v4 = v9;
    }

    while (v8 < v9);
  }
}

- (double)nextGaussian
{
  objc_sync_enter(self);
  if (self->haveNextNextGaussian_)
  {
    self->haveNextNextGaussian_ = 0;
    nextNextGaussian = self->nextNextGaussian_;
  }

  else
  {
    do
    {
      do
      {
        [(JavaUtilRandom *)self nextDouble];
        v5 = v4;
        nextDouble = [(JavaUtilRandom *)self nextDouble];
        v8 = v5 * 2.0 + -1.0;
        v10 = v9 * 2.0 + -1.0;
        v11 = v10 * v10 + v8 * v8;
      }

      while (v11 >= 1.0);
    }

    while (v11 == 0.0);
    JavaLangStrictMath_logWithDouble_(nextDouble, v7, v10 * v10 + v8 * v8);
    v15 = JavaLangStrictMath_sqrtWithDouble_(v13, v14, v12 * -2.0 / v11);
    self->nextNextGaussian_ = v10 * v15;
    self->haveNextNextGaussian_ = 1;
    nextNextGaussian = v8 * v15;
  }

  objc_sync_exit(self);
  return nextNextGaussian;
}

- (int)nextIntWithInt:(int)int
{
  if (int <= 0)
  {
    v13 = JreStrcat("$I", a2, *&int, v3, v4, v5, v6, v7, @"n <= 0: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  if (((int + 0x7FFFFFFF) & int) != 0)
  {
    v10 = int - 1;
    do
    {
      v11 = [(JavaUtilRandom *)self nextWithInt:31];
      LODWORD(v12) = v11 % int;
    }

    while (v10 + v11 - v11 % int < 0);
  }

  else
  {
    return ([(JavaUtilRandom *)self nextWithInt:31]* int) >> 31;
  }

  return v12;
}

- (void)setSeedWithLong:(int64_t)long
{
  objc_sync_enter(self);
  self->seed_ = long & 0xFFFFFFFFFFFFLL ^ 0x5DEECE66DLL;
  self->haveNextNextGaussian_ = 0;

  objc_sync_exit(self);
}

@end