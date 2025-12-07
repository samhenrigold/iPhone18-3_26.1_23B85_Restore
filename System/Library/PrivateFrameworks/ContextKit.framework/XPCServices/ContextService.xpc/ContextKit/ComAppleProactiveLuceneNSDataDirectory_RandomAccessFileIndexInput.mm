@interface ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput
- (id)clone;
- (void)__javaClone;
- (void)close;
- (void)dealloc;
- (void)readInternalWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)seekInternalWithLong:(int64_t)long;
@end

@implementation ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput

- (void)readInternalWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v5 = *&withInt;
  v6 = *&int;
  Weak = objc_loadWeak(&self->original_);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (objc_loadWeak(Weak + 11) != self)
  {
    raf = self->raf_;
    if (!raf)
    {
      goto LABEL_7;
    }

    [(JavaIoRandomAccessFile *)raf seekWithLong:self->pos_];
    v11 = objc_loadWeak(&self->original_);
    objc_storeWeak(v11 + 11, self);
  }

  v12 = self->raf_;
  if (!v12)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(JavaIoRandomAccessFile *)v12 readWithByteArray:array withInt:v6 withInt:v5];
  self->pos_ += v5;
}

- (void)seekInternalWithLong:(int64_t)long
{
  self->pos_ = long;
  raf = self->raf_;
  if (!raf)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoRandomAccessFile *)raf seekWithLong:?];
}

- (void)close
{
  raf = self->raf_;
  if (!raf)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoRandomAccessFile *)raf close];
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput;
  clone = [(OrgApacheLuceneStoreBufferedIndexInput *)&v6 clone];
  objc_opt_class();
  if (!clone)
  {
    objc_loadWeak(&self->original_);
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  Weak = objc_loadWeak(&self->original_);
  objc_storeWeak(clone + 10, Weak);
  objc_storeWeak(clone + 11, 0);
  return clone;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput;
  [(ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput *)&v3 __javaClone];
}

@end