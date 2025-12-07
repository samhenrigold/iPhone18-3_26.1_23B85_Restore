@interface OrgApacheLuceneUtilFstReverseBytesReader
- (OrgApacheLuceneUtilFstReverseBytesReader)initWithByteArray:(id)array;
- (char)readByte;
- (void)dealloc;
- (void)readBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilFstReverseBytesReader

- (OrgApacheLuceneUtilFstReverseBytesReader)initWithByteArray:(id)array
{
  OrgApacheLuceneUtilFstFST_BytesReader_init();
  JreStrongAssign(&self->bytes_, array);
  return self;
}

- (char)readByte
{
  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  self->pos_ = pos - 1;
  size = bytes->super.size_;
  if (pos < 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  return *(&bytes->super.size_ + pos + 4);
}

- (void)readBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (withInt >= 1)
  {
    v5 = *&int;
    withIntCopy = withInt;
    do
    {
      bytes = self->bytes_;
      if (!bytes)
      {
        goto LABEL_14;
      }

      pos = self->pos_;
      self->pos_ = pos - 1;
      size = bytes->super.size_;
      if (pos < 0 || pos >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, pos);
      }

      if (!array)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      v11 = *(array + 2);
      if ((v5 & 0x80000000) != 0 || v5 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v5);
      }

      *(array + v5 + 12) = *(&bytes->super.size_ + pos + 4);
      v5 = (v5 + 1);
      --withIntCopy;
    }

    while (withIntCopy);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstReverseBytesReader;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end