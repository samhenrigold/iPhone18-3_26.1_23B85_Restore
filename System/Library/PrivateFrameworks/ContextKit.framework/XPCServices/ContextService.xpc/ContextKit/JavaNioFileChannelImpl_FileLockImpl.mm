@interface JavaNioFileChannelImpl_FileLockImpl
- (BOOL)isValid;
- (JavaNioFileChannelImpl_FileLockImpl)initWithJavaNioChannelsFileChannel:(id)channel withLong:(int64_t)long withLong:(int64_t)withLong withBoolean:(BOOL)boolean;
- (void)release__;
@end

@implementation JavaNioFileChannelImpl_FileLockImpl

- (JavaNioFileChannelImpl_FileLockImpl)initWithJavaNioChannelsFileChannel:(id)channel withLong:(int64_t)long withLong:(int64_t)withLong withBoolean:(BOOL)boolean
{
  JavaNioChannelsFileLock_initWithJavaNioChannelsFileChannel_withLong_withLong_withBoolean_(self, channel, long, withLong, boolean, boolean, v6, v7);
  *(&self->super.shared_ + 1) = 0;
  return self;
}

- (BOOL)isValid
{
  if (*(&self->super.shared_ + 1))
  {
    return 0;
  }

  channel = [(JavaNioChannelsFileLock *)self channel];
  if (!channel)
  {
    JreThrowNullPointerException();
  }

  return [channel isOpen];
}

- (void)release__
{
  channel = [(JavaNioChannelsFileLock *)self channel];
  if (!channel)
  {
    goto LABEL_8;
  }

  if (([channel isOpen] & 1) == 0)
  {
    v5 = new_JavaNioChannelsClosedChannelException_init();
    objc_exception_throw(v5);
  }

  if (!*(&self->super.shared_ + 1))
  {
    channel2 = [(JavaNioChannelsFileLock *)self channel];
    objc_opt_class();
    if (channel2)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      [channel2 release__WithJavaNioChannelsFileLock:self];
      *(&self->super.shared_ + 1) = 1;
      return;
    }

LABEL_8:
    JreThrowNullPointerException();
  }
}

@end