@interface OrgApacheLuceneUtilFstBytesStore_$2
- (char)readByte;
- (void)dealloc;
- (void)readBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)setPositionWithLong:(int64_t)long;
- (void)skipBytesWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneUtilFstBytesStore_$2

- (char)readByte
{
  nextRead = self->nextRead_;
  if (nextRead == -1)
  {
    blocks = self->this$0_->blocks_;
    if (!blocks)
    {
      goto LABEL_8;
    }

    --self->nextBuffer_;
    JreStrongAssign(&self->current_, [(JavaUtilList *)blocks getWithInt:?]);
    nextRead = (self->this$0_->blockSize_ - 1);
    self->nextRead_ = nextRead;
  }

  current = self->current_;
  if (!current)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  self->nextRead_ = nextRead - 1;
  size = current->super.size_;
  if ((nextRead & 0x80000000) != 0 || nextRead >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, nextRead);
  }

  return *(&current->super.size_ + nextRead + 4);
}

- (void)skipBytesWithLong:(int64_t)long
{
  v4 = [(OrgApacheLuceneUtilFstBytesStore_$2 *)self getPosition]- long;

  [(OrgApacheLuceneUtilFstBytesStore_$2 *)self setPositionWithLong:v4];
}

- (void)readBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (withInt >= 1)
  {
    v5 = *&int;
    withIntCopy = withInt;
    do
    {
      readByte = [(OrgApacheLuceneUtilFstBytesStore_$2 *)self readByte];
      if (!array)
      {
        JreThrowNullPointerException();
      }

      v10 = readByte;
      v11 = *(array + 2);
      if ((v5 & 0x80000000) != 0 || v5 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v5);
      }

      *(array + v5 + 12) = v10;
      v5 = (v5 + 1);
      --withIntCopy;
    }

    while (withIntCopy);
  }
}

- (void)setPositionWithLong:(int64_t)long
{
  longCopy = long;
  self->nextBuffer_ = (long >> self->this$0_->blockBits_) - 1;
  blocks = self->this$0_->blocks_;
  if (!blocks)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&self->current_, [(JavaUtilList *)blocks getWithInt:?]);
  self->nextRead_ = self->this$0_->blockMask_ & longCopy;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstBytesStore__2;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end