@interface FTCServiceContainer
- (BOOL)addListenerID:(id)d;
- (BOOL)hasListenerID:(id)d;
- (BOOL)removeListenerID:(id)d;
- (FTCServiceContainer)initWithServiceType:(int64_t)type;
- (void)dealloc;
@end

@implementation FTCServiceContainer

- (FTCServiceContainer)initWithServiceType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = FTCServiceContainer;
  v4 = [(FTCServiceContainer *)&v9 init];
  if (v4)
  {
    v5 = [FTCServiceMonitor alloc];
    v4->_monitor = objc_msgSend_initWithServiceType_(v5, v6, type, v7);
    v4->_listeners = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTCServiceContainer;
  [(FTCServiceContainer *)&v3 dealloc];
}

- (BOOL)hasListenerID:(id)d
{
  if (d)
  {
    return (MEMORY[0x2821F9670])(self->_listeners, sel_containsObject_, d);
  }

  else
  {
    return 0;
  }
}

- (BOOL)addListenerID:(id)d
{
  if (d)
  {
    v6 = objc_msgSend_length(d, a2, d, v3);
    if (v6)
    {
      objc_msgSend_addObject_(self->_listeners, v7, d, v8);
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)removeListenerID:(id)d
{
  if (d)
  {
    objc_msgSend_removeObject_(self->_listeners, a2, d, v3);
  }

  return d != 0;
}

@end