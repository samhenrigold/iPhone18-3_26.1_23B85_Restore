@interface JavaUtilZipCheckedOutputStream
- (JavaUtilZipCheckedOutputStream)initWithJavaIoOutputStream:(id)stream withJavaUtilZipChecksum:(id)checksum;
- (void)dealloc;
- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)writeWithInt:(int)int;
@end

@implementation JavaUtilZipCheckedOutputStream

- (JavaUtilZipCheckedOutputStream)initWithJavaIoOutputStream:(id)stream withJavaUtilZipChecksum:(id)checksum
{
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(self, stream);
  JreStrongAssign(&self->check_, checksum);
  return self;
}

- (void)writeWithInt:(int)int
{
  out = self->super.out_;
  if (!out || (v5 = *&int, [(JavaIoOutputStream *)out writeWithInt:?], (check = self->check_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipChecksum *)check updateWithInt:v5];
}

- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  out = self->super.out_;
  if (!out || (v7 = *&withInt, v8 = *&int, [JavaIoOutputStream writeWithByteArray:out withInt:"writeWithByteArray:withInt:withInt:" withInt:?], (check = self->check_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipChecksum *)check updateWithByteArray:array withInt:v8 withInt:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilZipCheckedOutputStream;
  [(JavaIoFilterOutputStream *)&v3 dealloc];
}

@end