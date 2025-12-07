@interface OrgApacheLuceneUtilGrowableByteArrayDataOutput
- (void)dealloc;
- (void)writeByteWithByte:(char)byte;
- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilGrowableByteArrayDataOutput

- (void)writeByteWithByte:(char)byte
{
  bytes = self->bytes_;
  if (!bytes || self->length_ >= bytes->super.size_ && (v11 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_(self->bytes_, a2, byte, v3, v4, v5, v6, v7), JreStrongAssign(&self->bytes_, v11), (bytes = self->bytes_) == 0))
  {
    JreThrowNullPointerException();
  }

  length = self->length_;
  self->length_ = length + 1;
  size = bytes->super.size_;
  if (length < 0 || length >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, length);
  }

  *(&bytes->super.size_ + length + 4) = byte;
}

- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v8 = *&withInt;
  v9 = *&int;
  v12 = self->length_ + withInt;
  v13 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(self->bytes_, v12, array, *&int, *&withInt, v5, v6, v7);
  JreStrongAssign(&self->bytes_, v13);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v9, self->bytes_, self->length_, v8);
  self->length_ = v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilGrowableByteArrayDataOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end