@interface JavaNioSocketChannelImpl_SocketAdapter
- (id)getFileDescriptor$;
- (id)getInputStream;
- (id)getOutputStream;
- (void)__javaClone;
- (void)bindWithJavaNetSocketAddress:(id)address;
- (void)close;
- (void)connectWithJavaNetSocketAddress:(id)address withInt:(int)int;
@end

@implementation JavaNioSocketChannelImpl_SocketAdapter

- (void)connectWithJavaNetSocketAddress:(id)address withInt:(int)int
{
  v4 = *&int;
  Weak = objc_loadWeak(&self->channel_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  if (([Weak isBlocking] & 1) == 0)
  {
    v8 = new_JavaNioChannelsIllegalBlockingModeException_init();
    goto LABEL_13;
  }

  if ([(JavaNetSocket *)self isConnected])
  {
    v8 = new_JavaNioChannelsAlreadyConnectedException_init();
LABEL_13:
    objc_exception_throw(v8);
  }

  v10.receiver = self;
  v10.super_class = JavaNioSocketChannelImpl_SocketAdapter;
  [(JavaNetSocket *)&v10 connectWithJavaNetSocketAddress:address withInt:v4];
  [objc_loadWeak(&self->channel_) onBindWithBoolean:0];
  v9.receiver = self;
  v9.super_class = JavaNioSocketChannelImpl_SocketAdapter;
  if ([(JavaNetSocket *)&v9 isConnected])
  {
    objc_opt_class();
    if (address)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    [objc_loadWeak(&self->channel_) onConnectStatusChangedWithJavaNetInetSocketAddress:address withInt:2 withBoolean:0];
  }
}

- (void)bindWithJavaNetSocketAddress:(id)address
{
  Weak = objc_loadWeak(&self->channel_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  if ([Weak isConnected])
  {
    v6 = new_JavaNioChannelsAlreadyConnectedException_init();
    goto LABEL_8;
  }

  if (*(objc_loadWeak(&self->channel_) + 91) == 1)
  {
    v6 = new_JavaNioChannelsConnectionPendingException_init();
LABEL_8:
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = JavaNioSocketChannelImpl_SocketAdapter;
  [(JavaNetSocket *)&v7 bindWithJavaNetSocketAddress:address];
  [objc_loadWeak(&self->channel_) onBindWithBoolean:0];
}

- (void)close
{
  Weak = objc_loadWeak(&self->channel_);
  objc_sync_enter(Weak);
  v5.receiver = self;
  v5.super_class = JavaNioSocketChannelImpl_SocketAdapter;
  [(JavaNetSocket *)&v5 close];
  v4 = objc_loadWeak(&self->channel_);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  if ([v4 isOpen])
  {
    [objc_loadWeak(&self->channel_) close];
  }

  objc_sync_exit(Weak);
}

- (id)getOutputStream
{
  v7.receiver = self;
  v7.super_class = JavaNioSocketChannelImpl_SocketAdapter;
  getOutputStream = [(JavaNetSocket *)&v7 getOutputStream];
  Weak = objc_loadWeak(&self->channel_);
  v5 = [JavaNioSocketChannelImpl_BlockingCheckOutputStream alloc];
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(v5, getOutputStream);
  JreStrongAssign(&v5->channel_, Weak);
  return v5;
}

- (id)getInputStream
{
  v7.receiver = self;
  v7.super_class = JavaNioSocketChannelImpl_SocketAdapter;
  getInputStream = [(JavaNetSocket *)&v7 getInputStream];
  Weak = objc_loadWeak(&self->channel_);
  v5 = [JavaNioSocketChannelImpl_BlockingCheckInputStream alloc];
  JavaIoFilterInputStream_initWithJavaIoInputStream_(v5, getInputStream);
  JreStrongAssign(&v5->channel_, Weak);
  return v5;
}

- (id)getFileDescriptor$
{
  Weak = objc_loadWeak(&self->socketImpl_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return [Weak getFD$];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaNioSocketChannelImpl_SocketAdapter;
  [(JavaNioSocketChannelImpl_SocketAdapter *)&v3 __javaClone];
}

@end