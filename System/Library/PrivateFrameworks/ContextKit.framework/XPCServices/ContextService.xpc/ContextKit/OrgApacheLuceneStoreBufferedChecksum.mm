@interface OrgApacheLuceneStoreBufferedChecksum
- (OrgApacheLuceneStoreBufferedChecksum)initWithJavaUtilZipChecksum:(id)checksum;
- (OrgApacheLuceneStoreBufferedChecksum)initWithJavaUtilZipChecksum:(id)checksum withInt:(int)int;
- (int64_t)getValue;
- (void)dealloc;
- (void)flush;
- (void)reset;
- (void)updateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)updateWithInt:(int)int;
@end

@implementation OrgApacheLuceneStoreBufferedChecksum

- (OrgApacheLuceneStoreBufferedChecksum)initWithJavaUtilZipChecksum:(id)checksum
{
  JreStrongAssign(&self->in_, checksum);
  JreStrongAssignAndConsume(&self->buffer_, [IOSByteArray newArrayWithLength:256]);
  return self;
}

- (OrgApacheLuceneStoreBufferedChecksum)initWithJavaUtilZipChecksum:(id)checksum withInt:(int)int
{
  JreStrongAssign(&self->in_, checksum);
  JreStrongAssignAndConsume(&self->buffer_, [IOSByteArray newArrayWithLength:int]);
  return self;
}

- (void)updateWithInt:(int)int
{
  buffer = self->buffer_;
  if (!buffer)
  {
    goto LABEL_10;
  }

  intCopy = int;
  upto = self->upto_;
  if (upto == buffer->super.size_)
  {
    if (upto < 1)
    {
      upto = 0;
      goto LABEL_7;
    }

    in = self->in_;
    if (in)
    {
      [(JavaUtilZipChecksum *)in updateWithByteArray:buffer withInt:0 withInt:upto];
      upto = 0;
      buffer = self->buffer_;
      goto LABEL_7;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_7:
  self->upto_ = upto + 1;
  size = buffer->super.size_;
  if ((upto & 0x80000000) != 0 || upto >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, upto);
  }

  *(&buffer->super.size_ + upto + 4) = intCopy;
}

- (void)updateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  buffer = self->buffer_;
  if (!buffer)
  {
    goto LABEL_16;
  }

  v7 = *&withInt;
  v8 = *&int;
  size = buffer->super.size_;
  upto = self->upto_;
  if (size > v7)
  {
    if (upto + v7 <= size)
    {
LABEL_8:
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v8, buffer, upto, v7);
      self->upto_ += v7;
      return;
    }

    if (upto < 1)
    {
LABEL_7:
      upto = 0;
      self->upto_ = 0;
      goto LABEL_8;
    }

    in = self->in_;
    if (in)
    {
      [JavaUtilZipChecksum updateWithByteArray:"updateWithByteArray:withInt:withInt:" withInt:? withInt:?];
      buffer = self->buffer_;
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (upto >= 1)
  {
    v13 = self->in_;
    if (!v13)
    {
      goto LABEL_16;
    }

    [JavaUtilZipChecksum updateWithByteArray:v13 withInt:"updateWithByteArray:withInt:withInt:" withInt:?];
  }

  self->upto_ = 0;
  v14 = self->in_;
  if (!v14)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  [(JavaUtilZipChecksum *)v14 updateWithByteArray:array withInt:v8 withInt:v7];
}

- (int64_t)getValue
{
  if (self->upto_ >= 1)
  {
    in = self->in_;
    if (!in)
    {
      goto LABEL_8;
    }

    [(JavaUtilZipChecksum *)in updateWithByteArray:self->buffer_ withInt:0 withInt:?];
  }

  self->upto_ = 0;
  v4 = self->in_;
  if (!v4)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [(JavaUtilZipChecksum *)v4 getValue];
}

- (void)reset
{
  self->upto_ = 0;
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipChecksum *)in reset];
}

- (void)flush
{
  if (self->upto_ >= 1)
  {
    in = self->in_;
    if (!in)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilZipChecksum *)in updateWithByteArray:self->buffer_ withInt:0 withInt:?];
  }

  self->upto_ = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreBufferedChecksum;
  [(OrgApacheLuceneStoreBufferedChecksum *)&v3 dealloc];
}

@end