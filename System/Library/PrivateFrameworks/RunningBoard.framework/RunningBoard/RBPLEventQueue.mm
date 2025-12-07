@interface RBPLEventQueue
- (RBPLEventQueue)init;
- (id)dequeueEvent;
- (void)enqueueEvent:(id)event;
- (void)scheduleWork;
@end

@implementation RBPLEventQueue

- (void)scheduleWork
{
  if (MEMORY[0x2822275F0])
  {
    RBSDispatchAsyncWithQoS();
  }
}

- (id)dequeueEvent
{
  if (MEMORY[0x2822275F0])
  {
    os_unfair_lock_lock(&self->_lock);
    if ([(NSMutableArray *)self->_eventQueue count])
    {
      firstObject = [(NSMutableArray *)self->_eventQueue firstObject];
      [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
    }

    else
    {
      firstObject = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

void __30__RBPLEventQueue_scheduleWork__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  *(*(a1 + 32) + 32) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v2 = [*(a1 + 32) dequeueEvent];
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = [v3 event];
      v5 = [v3 identity];
      v6 = [v3 assertionCount];
      v7 = [v3 pid];
      v8 = [v5 hostIdentifier];
      v9 = objc_opt_new();
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      [v9 setObject:v10 forKeyedSubscript:@"EventType"];

      if (v7 == -1)
      {
        [v9 setObject:0 forKeyedSubscript:@"PID"];
        if (!v8)
        {
LABEL_7:
          [v9 setObject:0 forKeyedSubscript:@"HostPID"];
          goto LABEL_8;
        }
      }

      else
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:v7];
        [v9 setObject:v11 forKeyedSubscript:@"PID"];

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pid")}];
      [v9 setObject:v12 forKeyedSubscript:@"HostPID"];

LABEL_8:
      v13 = [v5 embeddedApplicationIdentifier];
      [v9 setObject:v13 forKeyedSubscript:@"BundleID"];

      if ((v6 & 0x80000000) != 0)
      {
        [v9 setObject:0 forKeyedSubscript:@"AssertionCount"];
      }

      else
      {
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v6];
        [v9 setObject:v14 forKeyedSubscript:@"AssertionCount"];
      }

      if (MEMORY[0x2822275F0])
      {
        PLLogRegisteredEvent();
      }

      v15 = [*(a1 + 32) dequeueEvent];

      v3 = v15;
    }

    while (v15);
  }
}

- (RBPLEventQueue)init
{
  v8.receiver = self;
  v8.super_class = RBPLEventQueue;
  v2 = [(RBPLEventQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x277D47028] createBackgroundQueue:@"RBPowerlogEvent"];
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v2->_scheduled = 0;
  }

  return v2;
}

- (void)enqueueEvent:(id)event
{
  if (MEMORY[0x2822275F0])
  {
    eventCopy = event;
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_eventQueue addObject:eventCopy];

    if (!self->_scheduled)
    {
      self->_scheduled = 1;
      [(RBPLEventQueue *)self scheduleWork];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end