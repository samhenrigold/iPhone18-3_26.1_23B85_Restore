@interface JavaIoBufferedWriter
- (int)flushInternal;
- (uint64_t)checkNotClosed;
- (void)close;
- (void)dealloc;
- (void)flush;
- (void)newLine;
- (void)writeWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)writeWithInt:(int)int;
- (void)writeWithNSString:(id)string withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaIoBufferedWriter

- (void)close
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  if (self->out_)
  {
    [JavaIoBufferedWriter flushInternal]_0(self);
    JreStrongAssign(&self->buf_, 0);
    out = self->out_;
    if (!out)
    {
      JreThrowNullPointerException();
    }

    [(JavaIoWriter *)out close];
    JreStrongAssign(&self->out_, 0);
  }

  objc_sync_exit(lock);
}

- (int)flushInternal
{
  v1 = result;
  if (result[8] >= 1)
  {
    v2 = *(result + 2);
    if (!v2)
    {
      JreThrowNullPointerException();
    }

    result = [v2 writeWithCharArray:*(v1 + 3) withInt:0 withInt:?];
  }

  v1[8] = 0;
  return result;
}

- (void)flush
{
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedWriter checkNotClosed]_0(self);
  [JavaIoBufferedWriter flushInternal]_0(self);
  out = self->out_;
  if (!out)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoWriter *)out flush];

  objc_sync_exit(lock);
}

- (uint64_t)checkNotClosed
{
  if (!*(result + 16))
  {
    v1 = new_JavaIoIOException_initWithNSString_(@"BufferedWriter is closed");
    objc_exception_throw(v1);
  }

  return result;
}

- (void)newLine
{
  v3 = JavaLangSystem_lineSeparator();

  [(JavaIoWriter *)self writeWithNSString:v3];
}

- (void)writeWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  obj = self->super.lock_;
  objc_sync_enter(obj);
  [JavaIoBufferedWriter checkNotClosed]_0(self);
  if (!array)
  {
    v18 = new_JavaLangNullPointerException_initWithNSString_(@"buffer == null");
    objc_exception_throw(v18);
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), v6, v5);
  pos = self->pos_;
  buf = self->buf_;
  if (pos)
  {
    if (!buf)
    {
LABEL_23:
      JreThrowNullPointerException();
    }

    goto LABEL_7;
  }

  if (!buf)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  if (buf->super.size_ <= v5)
  {
    out = self->out_;
    if (out)
    {
      [(JavaIoWriter *)out writeWithCharArray:array withInt:v6 withInt:v5];
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_7:
  size = buf->super.size_;
  v12 = size - pos;
  if (size - pos >= v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > 0)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v6, buf, pos, v13);
    LODWORD(pos) = self->pos_ + v13;
    self->pos_ = pos;
    size = self->buf_->super.size_;
  }

  if (pos == size)
  {
    v14 = self->out_;
    if (!v14)
    {
      goto LABEL_23;
    }

    [JavaIoWriter writeWithCharArray:v14 withInt:"writeWithCharArray:withInt:withInt:" withInt:?];
    self->pos_ = 0;
    if (v12 < v5)
    {
      v15 = (v5 - v13);
      v16 = self->buf_;
      if (v15 >= v16->super.size_)
      {
        [(JavaIoWriter *)self->out_ writeWithCharArray:array withInt:(v13 + v6) withInt:v15];
      }

      else
      {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, (v13 + v6), v16, 0, v15);
        self->pos_ += v15;
      }
    }
  }

LABEL_20:

  objc_sync_exit(obj);
}

- (void)writeWithInt:(int)int
{
  intCopy = int;
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedWriter checkNotClosed]_0(self);
  buf = self->buf_;
  if (!buf)
  {
    goto LABEL_10;
  }

  pos = self->pos_;
  if (pos >= buf->super.size_)
  {
    out = self->out_;
    if (out)
    {
      [(JavaIoWriter *)out writeWithCharArray:self->buf_ withInt:0 withInt:?];
      pos = 0;
      self->pos_ = 0;
      buf = self->buf_;
      goto LABEL_5;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_5:
  self->pos_ = pos + 1;
  size = buf->super.size_;
  if ((pos & 0x80000000) != 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  *(&buf->super.size_ + pos + 2) = intCopy;

  objc_sync_exit(lock);
}

- (void)writeWithNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  lock = self->super.lock_;
  objc_sync_enter(lock);
  [JavaIoBufferedWriter checkNotClosed]_0(self);
  if (v5 < 1)
  {
    goto LABEL_23;
  }

  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  if (!string)
  {
    goto LABEL_26;
  }

  if (([string length] - v5) < v6)
  {
LABEL_29:
    v19 = new_JavaLangStringIndexOutOfBoundsException_initWithNSString_withInt_withInt_(string);
    objc_exception_throw(v19);
  }

  pos = self->pos_;
  buf = self->buf_;
  if (pos)
  {
    if (!buf)
    {
LABEL_27:
      JreThrowNullPointerException();
    }

    goto LABEL_10;
  }

  if (!buf)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  if (buf->super.size_ <= v5)
  {
    v16 = [IOSCharArray arrayWithLength:v5];
    [string getChars:v6 sourceEnd:(v5 + v6) destination:v16 destinationBegin:0];
    out = self->out_;
    if (!out)
    {
      JreThrowNullPointerException();
    }

    [(JavaIoWriter *)out writeWithCharArray:v16 withInt:0 withInt:v5];
    goto LABEL_23;
  }

LABEL_10:
  size = buf->super.size_;
  v13 = size - pos;
  if (size - pos >= v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = size - pos;
  }

  if (v13 > 0)
  {
    [string getChars:v6 sourceEnd:(v14 + v6) destination:? destinationBegin:?];
    pos = self->pos_ + v14;
    self->pos_ = pos;
    buf = self->buf_;
    size = buf->super.size_;
  }

  if (pos == size)
  {
    v15 = self->out_;
    if (!v15)
    {
      goto LABEL_27;
    }

    [(JavaIoWriter *)v15 writeWithCharArray:buf withInt:0 withInt:size];
    self->pos_ = 0;
    if (v13 < v5)
    {
      if (v5 - v14 >= self->buf_->super.size_)
      {
        v18 = [IOSCharArray arrayWithLength:v5];
        [string getChars:(v14 + v6) sourceEnd:(v5 + v6) destination:v18 destinationBegin:0];
        [(JavaIoWriter *)self->out_ writeWithCharArray:v18 withInt:0 withInt:(v5 - v14)];
      }

      else
      {
        [string getChars:(v14 + v6) sourceEnd:(v5 + v6) destination:? destinationBegin:?];
        self->pos_ += v5 - v14;
      }
    }
  }

LABEL_23:

  objc_sync_exit(lock);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoBufferedWriter;
  [(JavaIoWriter *)&v3 dealloc];
}

@end