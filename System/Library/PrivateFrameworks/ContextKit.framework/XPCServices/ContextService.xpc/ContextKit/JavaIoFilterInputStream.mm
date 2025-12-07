@interface JavaIoFilterInputStream
- (BOOL)markSupported;
- (JavaIoFilterInputStream)initWithJavaIoInputStream:(id)stream;
- (int)available;
- (int)read;
- (int)readWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (int64_t)skipWithLong:(int64_t)long;
- (void)__javaClone;
- (void)close;
- (void)dealloc;
- (void)markWithInt:(int)int;
- (void)reset;
@end

@implementation JavaIoFilterInputStream

- (JavaIoFilterInputStream)initWithJavaIoInputStream:(id)stream
{
  JavaIoInputStream_init();
  JreVolatileStrongAssign(&self->in_, stream);
  return self;
}

- (int)available
{
  v3 = atomic_load(&self->in_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 available];
}

- (void)close
{
  v3 = atomic_load(&self->in_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 close];
}

- (void)markWithInt:(int)int
{
  v3 = *&int;
  objc_sync_enter(self);
  v5 = atomic_load(&self->in_);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  [v5 markWithInt:v3];

  objc_sync_exit(self);
}

- (BOOL)markSupported
{
  v3 = atomic_load(&self->in_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 markSupported];
}

- (int)read
{
  v3 = atomic_load(&self->in_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 read];
}

- (int)readWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v6 = atomic_load(&self->in_);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  return [v6 readWithByteArray:array withInt:*&int withInt:*&withInt];
}

- (void)reset
{
  objc_sync_enter(self);
  v3 = atomic_load(&self->in_);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  [v3 reset];

  objc_sync_exit(self);
}

- (int64_t)skipWithLong:(int64_t)long
{
  v4 = atomic_load(&self->in_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 skipWithLong:long];
}

- (void)dealloc
{
  JreReleaseVolatile(&self->in_);
  v3.receiver = self;
  v3.super_class = JavaIoFilterInputStream;
  [(JavaIoFilterInputStream *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaIoFilterInputStream;
  [(JavaIoFilterInputStream *)&v3 __javaClone];
  JreRetainVolatile(&self->in_);
}

@end