@interface OrgApacheLuceneStoreOutputStreamIndexOutput
- (int64_t)getChecksum;
- (void)close;
- (void)dealloc;
- (void)writeByteWithByte:(char)byte;
- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneStoreOutputStreamIndexOutput

- (void)writeByteWithByte:(char)byte
{
  os = self->os_;
  if (!os)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoBufferedOutputStream *)os writeWithInt:byte];
  ++self->bytesWritten_;
}

- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  os = self->os_;
  if (!os)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoBufferedOutputStream *)os writeWithByteArray:array withInt:*&int withInt:?];
  self->bytesWritten_ += withInt;
}

- (void)close
{
  os = self->os_;
  if (!self->flushedOnClose_)
  {
    self->flushedOnClose_ = 1;
    if (!os)
    {
      JreThrowNullPointerException();
    }

    [(JavaIoBufferedOutputStream *)os flush];
    goto LABEL_6;
  }

  if (os)
  {
LABEL_6:
    [(JavaIoBufferedOutputStream *)os close];
  }
}

- (int64_t)getChecksum
{
  os = self->os_;
  if (!os || ([(JavaIoBufferedOutputStream *)os flush], (crc = self->crc_) == 0))
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilZipCRC32 *)crc getValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreOutputStreamIndexOutput;
  [(OrgApacheLuceneStoreIndexOutput *)&v3 dealloc];
}

@end