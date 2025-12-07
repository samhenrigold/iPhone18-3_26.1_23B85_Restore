@interface JavaNetPlainSocketImpl_PlainSocketInputStream
- (JavaNetPlainSocketImpl_PlainSocketInputStream)initWithJavaNetPlainSocketImpl:(id)impl;
- (int)available;
- (int)readWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)close;
- (void)dealloc;
@end

@implementation JavaNetPlainSocketImpl_PlainSocketInputStream

- (JavaNetPlainSocketImpl_PlainSocketInputStream)initWithJavaNetPlainSocketImpl:(id)impl
{
  JavaIoInputStream_init();
  JreStrongAssign(&self->socketImpl_, impl);
  return self;
}

- (int)available
{
  socketImpl = self->socketImpl_;
  if (!socketImpl)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNetPlainSocketImpl *)socketImpl available];
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

- (int)readWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  socketImpl = self->socketImpl_;
  if (!socketImpl)
  {
    JreThrowNullPointerException();
  }

  return sub_100149B3C(socketImpl, array, *&int, *&withInt);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetPlainSocketImpl_PlainSocketInputStream;
  [(JavaNetPlainSocketImpl_PlainSocketInputStream *)&v3 dealloc];
}

@end