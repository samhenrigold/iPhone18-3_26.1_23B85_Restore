@interface JavaNioChannelsSpiAbstractSelectableChannel
- (BOOL)isBlocking;
- (BOOL)isRegistered;
- (id)configureBlockingWithBoolean:(BOOL)boolean;
- (id)register__WithJavaNioChannelsSelector:(id)selector withInt:(int)int withId:(id)id;
- (uint64_t)containsValidKeys;
- (void)dealloc;
- (void)deregisterWithJavaNioChannelsSelectionKey:(id)key;
- (void)implCloseChannel;
@end

@implementation JavaNioChannelsSpiAbstractSelectableChannel

- (BOOL)isRegistered
{
  objc_sync_enter(self);
  v3 = *(&self->provider_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  isEmpty = [v3 isEmpty];
  objc_sync_exit(self);
  return isEmpty ^ 1;
}

- (id)register__WithJavaNioChannelsSelector:(id)selector withInt:(int)int withId:(id)id
{
  v6 = *&int;
  if (![(JavaNioChannelsSpiAbstractInterruptibleChannel *)self isOpen])
  {
    v21 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_18;
  }

  if ((v6 & ~[(JavaNioChannelsSelectableChannel *)self validOps]) != 0)
  {
    v22 = JreStrcat("$I", v9, v10, v11, v12, v13, v14, v15, @"no valid ops in interest set: ");
    v21 = new_JavaLangIllegalArgumentException_initWithNSString_(v22);
LABEL_18:
    objc_exception_throw(v21);
  }

  v16 = *(&self->keyList_ + 7);
  objc_sync_enter(v16);
  if (self->isBlocking_)
  {
    v23 = new_JavaNioChannelsIllegalBlockingModeException_init();
    goto LABEL_24;
  }

  if (!selector)
  {
    JreThrowNullPointerException();
  }

  if (([selector isOpen] & 1) == 0)
  {
    if (v6)
    {
      v23 = new_JavaLangNullPointerException_initWithNSString_(@"selector not open");
    }

    else
    {
      v23 = new_JavaNioChannelsIllegalSelectorException_init();
    }

LABEL_24:
    objc_exception_throw(v23);
  }

  v17 = sub_100273800(self, selector);
  v18 = v17;
  if (v17)
  {
    if (([v17 isValid] & 1) == 0)
    {
      v24 = new_JavaNioChannelsCancelledKeyException_init();
      objc_exception_throw(v24);
    }

    [v18 interestOpsWithInt:v6];
    [v18 attachWithId:id];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v18 = [selector register__WithJavaNioChannelsSpiAbstractSelectableChannel:self withInt:v6 withId:id];
    v19 = *(&self->provider_ + 7);
    if (!v19)
    {
      JreThrowNullPointerException();
    }

    [v19 addWithId:v18];
  }

  objc_sync_exit(v16);
  return v18;
}

- (void)implCloseChannel
{
  objc_sync_enter(self);
  [(JavaNioChannelsSpiAbstractSelectableChannel *)self implCloseSelectableChannel];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(&self->provider_ + 7);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = [*(&self->provider_ + 7) countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (v7)
        {
          [v7 cancel];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  objc_sync_exit(self);
}

- (BOOL)isBlocking
{
  selfCopy = self;
  v3 = *(&self->keyList_ + 7);
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = selfCopy->isBlocking_;
  objc_sync_exit(v3);
  return selfCopy;
}

- (id)configureBlockingWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  if (![(JavaNioChannelsSpiAbstractInterruptibleChannel *)self isOpen])
  {
    v7 = new_JavaNioChannelsClosedChannelException_init();
    objc_exception_throw(v7);
  }

  v5 = *(&self->keyList_ + 7);
  objc_sync_enter(v5);
  if (self->isBlocking_ != booleanCopy)
  {
    if (booleanCopy && [JavaNioChannelsSpiAbstractSelectableChannel containsValidKeys]_0(self))
    {
      v8 = new_JavaNioChannelsIllegalBlockingModeException_init();
      objc_exception_throw(v8);
    }

    [(JavaNioChannelsSpiAbstractSelectableChannel *)self implConfigureBlockingWithBoolean:booleanCopy];
    self->isBlocking_ = booleanCopy;
  }

  objc_sync_exit(v5);
  return self;
}

- (uint64_t)containsValidKeys
{
  objc_sync_enter(self);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(self + 39);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [*(self + 39) countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (v6 && ([v6 isValid] & 1) != 0)
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_13:
  objc_sync_exit(self);
  return v7;
}

- (void)deregisterWithJavaNioChannelsSelectionKey:(id)key
{
  objc_sync_enter(self);
  v5 = *(&self->provider_ + 7);
  if (v5)
  {
    [v5 removeWithId:key];
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioChannelsSpiAbstractSelectableChannel;
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)&v3 dealloc];
}

@end