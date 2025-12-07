@interface OrgApacheLuceneStoreRAMOutputStream
- (OrgApacheLuceneStoreRAMOutputStream)init;
- (id)getChildResources;
- (id)switchCurrentBuffer;
- (int64_t)getChecksum;
- (int64_t)getFilePointer;
- (int64_t)ramBytesUsed;
- (uint64_t)flush;
- (void)dealloc;
- (void)reset;
- (void)writeByteWithByte:(char)byte;
- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)writeToWithByteArray:(id)array withInt:(int)int;
- (void)writeToWithOrgApacheLuceneStoreDataOutput:(id)output;
@end

@implementation OrgApacheLuceneStoreRAMOutputStream

- (OrgApacheLuceneStoreRAMOutputStream)init
{
  v3 = new_OrgApacheLuceneStoreRAMFile_init();
  OrgApacheLuceneStoreRAMOutputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withBoolean_(self, @"noname", v3, 0, v4, v5, v6, v7);
  return self;
}

- (void)writeToWithOrgApacheLuceneStoreDataOutput:(id)output
{
  [(OrgApacheLuceneStoreRAMOutputStream *)self flush];
  file = self->file_;
  if (!file)
  {
    goto LABEL_10;
  }

  length = file->length_;
  if (length < 1)
  {
    return;
  }

  if (!output)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v7 = 0;
  v8 = 0;
  v9 = file->length_;
  do
  {
    v7 += 1024;
    if (v7 <= length)
    {
      v10 = 1024;
    }

    else
    {
      v10 = v9;
    }

    [output writeBytesWithByteArray:-[OrgApacheLuceneStoreRAMFile getBufferWithInt:](self->file_ withInt:{"getBufferWithInt:", v8), v10}];
    LODWORD(v9) = v9 - 1024;
    v8 = (v8 + 1);
  }

  while (v7 < length);
}

- (void)writeToWithByteArray:(id)array withInt:(int)int
{
  v4 = *&int;
  [(OrgApacheLuceneStoreRAMOutputStream *)self flush];
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  length = file->length_;
  if (length >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = file->length_;
    do
    {
      v9 += 1024;
      if (v9 <= length)
      {
        v12 = 1024;
      }

      else
      {
        v12 = v11;
      }

      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([(OrgApacheLuceneStoreRAMFile *)self->file_ getBufferWithInt:v10], 0, array, v4, v12);
      LODWORD(v11) = v11 - 1024;
      v10 = (v10 + 1);
      v4 = (v12 + v4);
    }

    while (v9 < length);
  }
}

- (void)reset
{
  JreStrongAssign(&self->currentBuffer_, 0);
  self->currentBufferIndex_ = -1;
  self->bufferPosition_ = 0;
  self->bufferStart_ = 0;
  self->bufferLength_ = 0;
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreRAMFile *)file setLengthWithLong:0];
  crc = self->crc_;
  if (crc)
  {

    [(JavaUtilZipChecksum *)crc reset];
  }
}

- (void)writeByteWithByte:(char)byte
{
  byteCopy = byte;
  if (self->bufferPosition_ == self->bufferLength_)
  {
    ++self->currentBufferIndex_;
    [OrgApacheLuceneStoreRAMOutputStream switchCurrentBuffer]_0(self);
  }

  crc = self->crc_;
  if (crc)
  {
    [(JavaUtilZipChecksum *)crc updateWithInt:byteCopy];
  }

  currentBuffer = self->currentBuffer_;
  if (!currentBuffer)
  {
    JreThrowNullPointerException();
  }

  bufferPosition = self->bufferPosition_;
  self->bufferPosition_ = bufferPosition + 1;
  size = currentBuffer->super.size_;
  if (bufferPosition < 0 || bufferPosition >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, bufferPosition);
  }

  *(&currentBuffer->super.size_ + bufferPosition + 4) = byteCopy;
}

- (id)switchCurrentBuffer
{
  v2 = *(self + 24);
  if (!v2 || ((v3 = *(self + 40), v4 = [v2 numBuffers], v5 = *(self + 24), v3 != v4) ? (v6 = objc_msgSend(v5, "getBufferWithInt:", *(self + 40))) : (v6 = objc_msgSend(v5, "addBufferWithInt:", 1024)), result = JreStrongAssign((self + 32), v6), *(self + 44) = 0, *(self + 48) = *(self + 40) << 10, (v8 = *(self + 32)) == 0))
  {
    JreThrowNullPointerException();
  }

  *(self + 56) = *(v8 + 8);
  return result;
}

- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  withIntCopy = withInt;
  v6 = *&int;
  crc = self->crc_;
  if (crc)
  {
    [(JavaUtilZipChecksum *)crc updateWithByteArray:array withInt:*&int withInt:*&withInt];
  }

  if (withIntCopy >= 1)
  {
    bufferPosition = self->bufferPosition_;
    do
    {
      if (bufferPosition == self->bufferLength_)
      {
        ++self->currentBufferIndex_;
        [OrgApacheLuceneStoreRAMOutputStream switchCurrentBuffer]_0(self);
      }

      currentBuffer = self->currentBuffer_;
      if (!currentBuffer)
      {
        JreThrowNullPointerException();
      }

      v12 = self->bufferPosition_;
      v13 = currentBuffer->super.size_ - v12;
      if (withIntCopy >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = withIntCopy;
      }

      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v6, currentBuffer, v12, v14);
      v6 = (v14 + v6);
      withIntCopy -= v14;
      bufferPosition = self->bufferPosition_ + v14;
      self->bufferPosition_ = bufferPosition;
    }

    while (withIntCopy > 0);
  }
}

- (uint64_t)flush
{
  result = *(self + 24);
  if (!result)
  {
    JreThrowNullPointerException();
  }

  if (*(self + 48) + *(self + 44) > result[2])
  {

    return [result setLengthWithLong:?];
  }

  return result;
}

- (int64_t)getFilePointer
{
  if (self->currentBufferIndex_ < 0)
  {
    return 0;
  }

  else
  {
    return self->bufferStart_ + self->bufferPosition_;
  }
}

- (int64_t)ramBytesUsed
{
  file = self->file_;
  if (!file)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreRAMFile *)file numBuffers]<< 10;
}

- (id)getChildResources
{
  v8 = OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"file", self->file_, v2, v3, v4, v5, v6, v7);

  return JavaUtilCollections_singletonWithId_(v8);
}

- (int64_t)getChecksum
{
  crc = self->crc_;
  if (!crc)
  {
    v5 = new_JavaLangIllegalStateException_initWithNSString_(@"internal RAMOutputStream created with checksum disabled");
    objc_exception_throw(v5);
  }

  return [(JavaUtilZipChecksum *)crc getValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreRAMOutputStream;
  [(OrgApacheLuceneStoreIndexOutput *)&v3 dealloc];
}

@end