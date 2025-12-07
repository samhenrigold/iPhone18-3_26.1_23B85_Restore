@interface JavaIoBufferedOutputStream
- (JavaIoBufferedOutputStream)initWithJavaIoOutputStream:(id)stream;
- (int)flushInternal;
- (uint64_t)checkNotClosed;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)writeWithInt:(int)int;
@end

@implementation JavaIoBufferedOutputStream

- (JavaIoBufferedOutputStream)initWithJavaIoOutputStream:(id)stream
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, stream);
  JreStrongAssignAndConsume(&self->buf_, [IOSByteArray newArrayWithLength:0x2000]);
  return self;
}

- (void)flush
{
  objc_sync_enter(self);
  [JavaIoBufferedOutputStream checkNotClosed]_0(self);
  [JavaIoBufferedOutputStream flushInternal]_0(self);
  out = self->super.out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)out flush];

  objc_sync_exit(self);
}

- (uint64_t)checkNotClosed
{
  if (!*(result + 16))
  {
    v1 = new_JavaIoIOException_initWithNSString_(@"BufferedOutputStream is closed");
    objc_exception_throw(v1);
  }

  return result;
}

- (int)flushInternal
{
  if (result[6] >= 1)
  {
    v1 = result;
    v2 = *(result + 1);
    if (!v2)
    {
      JreThrowNullPointerException();
    }

    result = [v2 writeWithByteArray:*(v1 + 2) withInt:0 withInt:?];
    v1[6] = 0;
  }

  return result;
}

- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  objc_sync_enter(self);
  [JavaIoBufferedOutputStream checkNotClosed]_0(self);
  if (!array)
  {
    v12 = new_JavaLangNullPointerException_initWithNSString_(@"buffer == null");
    objc_exception_throw(v12);
  }

  buf = self->buf_;
  if (!buf)
  {
    goto LABEL_12;
  }

  if (buf->super.size_ <= v5)
  {
    [JavaIoBufferedOutputStream flushInternal]_0(self);
    out = self->super.out_;
    if (out)
    {
      [(JavaIoOutputStream *)out writeWithByteArray:array withInt:v6 withInt:v5];
      goto LABEL_9;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), v6, v5);
  count = self->count_;
  if (buf->super.size_ - count < v5)
  {
    [JavaIoBufferedOutputStream flushInternal]_0(self);
    count = self->count_;
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v6, buf, count, v5);
  self->count_ += v5;
LABEL_9:

  objc_sync_exit(self);
}

- (void)close
{
  objc_sync_enter(self);
  if (self->buf_)
  {
    v3.receiver = self;
    v3.super_class = JavaIoBufferedOutputStream;
    [(JavaIoFilterOutputStream *)&v3 close];
    JreStrongAssign(&self->buf_, 0);
  }

  objc_sync_exit(self);
}

- (void)writeWithInt:(int)int
{
  intCopy = int;
  objc_sync_enter(self);
  [JavaIoBufferedOutputStream checkNotClosed]_0(self);
  buf = self->buf_;
  if (!buf)
  {
    goto LABEL_10;
  }

  count = self->count_;
  if (count == buf->super.size_)
  {
    out = self->super.out_;
    if (out)
    {
      [(JavaIoOutputStream *)out writeWithByteArray:self->buf_ withInt:0 withInt:self->count_];
      count = 0;
      self->count_ = 0;
      buf = self->buf_;
      goto LABEL_5;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_5:
  self->count_ = count + 1;
  size = buf->super.size_;
  if ((count & 0x80000000) != 0 || count >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, count);
  }

  *(&buf->super.size_ + count + 4) = intCopy;

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoBufferedOutputStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end