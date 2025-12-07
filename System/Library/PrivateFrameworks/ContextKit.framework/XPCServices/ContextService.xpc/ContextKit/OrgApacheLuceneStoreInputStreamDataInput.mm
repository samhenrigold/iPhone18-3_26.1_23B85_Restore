@interface OrgApacheLuceneStoreInputStreamDataInput
- (OrgApacheLuceneStoreInputStreamDataInput)initWithJavaIoInputStream:(id)stream;
- (char)readByte;
- (void)close;
- (void)dealloc;
- (void)readBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneStoreInputStreamDataInput

- (OrgApacheLuceneStoreInputStreamDataInput)initWithJavaIoInputStream:(id)stream
{
  OrgApacheLuceneStoreDataInput_init();
  JreStrongAssign(&self->is_, stream);
  return self;
}

- (char)readByte
{
  is = self->is_;
  if (!is)
  {
    JreThrowNullPointerException();
  }

  read = [(JavaIoInputStream *)is read];
  if (read == -1)
  {
    v4 = new_JavaIoEOFException_init();
    objc_exception_throw(v4);
  }

  return read;
}

- (void)readBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (withInt >= 1)
  {
    v5 = *&withInt;
    v6 = *&int;
    do
    {
      is = self->is_;
      if (!is)
      {
        JreThrowNullPointerException();
      }

      v10 = [(JavaIoInputStream *)is readWithByteArray:array withInt:v6 withInt:v5];
      if ((v10 & 0x80000000) != 0)
      {
        v12 = new_JavaIoEOFException_init();
        objc_exception_throw(v12);
      }

      v6 = v10 + v6;
      v11 = __OFSUB__(v5, v10);
      v5 = v5 - v10;
    }

    while (!((v5 < 0) ^ v11 | (v5 == 0)));
  }
}

- (void)close
{
  is = self->is_;
  if (!is)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoInputStream *)is close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreInputStreamDataInput;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end