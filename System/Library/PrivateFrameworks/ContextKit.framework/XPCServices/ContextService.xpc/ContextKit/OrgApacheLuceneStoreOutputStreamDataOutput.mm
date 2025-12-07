@interface OrgApacheLuceneStoreOutputStreamDataOutput
- (OrgApacheLuceneStoreOutputStreamDataOutput)initWithJavaIoOutputStream:(id)stream;
- (void)close;
- (void)dealloc;
- (void)writeByteWithByte:(char)byte;
- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneStoreOutputStreamDataOutput

- (OrgApacheLuceneStoreOutputStreamDataOutput)initWithJavaIoOutputStream:(id)stream
{
  OrgApacheLuceneStoreDataOutput_init();
  JreStrongAssign(&self->os_, stream);
  return self;
}

- (void)writeByteWithByte:(char)byte
{
  os = self->os_;
  if (!os)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)os writeWithInt:byte];
}

- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  os = self->os_;
  if (!os)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)os writeWithByteArray:array withInt:*&int withInt:*&withInt];
}

- (void)close
{
  os = self->os_;
  if (!os)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoOutputStream *)os close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreOutputStreamDataOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end