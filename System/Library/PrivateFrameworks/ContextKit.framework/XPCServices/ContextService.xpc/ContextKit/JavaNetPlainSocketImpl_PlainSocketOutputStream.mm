@interface JavaNetPlainSocketImpl_PlainSocketOutputStream
- (JavaNetPlainSocketImpl_PlainSocketOutputStream)initWithJavaNetPlainSocketImpl:(id)impl;
- (void)close;
- (void)dealloc;
- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaNetPlainSocketImpl_PlainSocketOutputStream

- (JavaNetPlainSocketImpl_PlainSocketOutputStream)initWithJavaNetPlainSocketImpl:(id)impl
{
  JavaIoOutputStream_init();
  JreStrongAssign(&self->socketImpl_, impl);
  return self;
}

- (void)close
{
  socketImpl = self->socketImpl_;
  if (!socketImpl)
  {
    JreThrowNullPointerException();
  }

  [(JavaNetPlainSocketImpl *)socketImpl close];
}

- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  socketImpl = self->socketImpl_;
  if (!socketImpl)
  {
    JreThrowNullPointerException();
  }

  sub_100149C24(socketImpl, array, *&int, *&withInt);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetPlainSocketImpl_PlainSocketOutputStream;
  [(JavaNetPlainSocketImpl_PlainSocketOutputStream *)&v3 dealloc];
}

@end