@interface HMDRemoteDeviceInformation
- (HMDRemoteDeviceInformation)init;
- (id)attributeDescriptions;
- (void)addState:(uint64_t)state;
- (void)clearState:(uint64_t)state;
- (void)completeConfirmationsWithError:(uint64_t)error;
- (void)queueConfirmationHandler:(double)handler timeout:;
- (void)setRetryTimer:(uint64_t)timer;
@end

@implementation HMDRemoteDeviceInformation

- (id)attributeDescriptions
{
  v22[4] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = [v4 initWithName:@"Device" value:Property options:1 formatter:0];
  v22[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCABB0];
  if (self)
  {
    clients = self->_clients;
  }

  else
  {
    clients = 0;
  }

  v10 = clients;
  v11 = [v8 numberWithUnsignedInteger:{-[NSHashTable count](v10, "count")}];
  v12 = [v7 initWithName:@"NumRegisteredClients" value:v11];
  v22[1] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = HMFBooleanToString();
  v15 = [v13 initWithName:@"Reachable" value:v14];
  v22[2] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    state = self->_state;
  }

  else
  {
    state = 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v19 = [v16 initWithName:@"State" value:v18];
  v22[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  return v20;
}

- (HMDRemoteDeviceInformation)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)addState:(uint64_t)state
{
  if (state)
  {
    dispatch_assert_queue_V2(*(state + 24));
    *(state + 40) |= a2;
  }
}

- (void)queueConfirmationHandler:(double)handler timeout:
{
  if (self)
  {
    v5 = *(self + 24);
    v6 = a2;
    dispatch_assert_queue_V2(v5);
    WeakRetained = objc_loadWeakRetained((self + 32));
    v13 = [WeakRetained newConfirmationHandlerWithTimeout:*(self + 24) workQueue:v6 handler:handler];

    [*(self + 48) addObject:v13];
    if (v13)
    {
      workQueue = [v13 workQueue];
      dispatch_assert_queue_V2(workQueue);

      timeoutTimer = [v13 timeoutTimer];
      [timeoutTimer setDelegate:v13];

      workQueue2 = [v13 workQueue];
      timeoutTimer2 = [v13 timeoutTimer];
      [timeoutTimer2 setDelegateQueue:workQueue2];

      timeoutTimer3 = [v13 timeoutTimer];
      [timeoutTimer3 resume];
    }
  }
}

- (void)completeConfirmationsWithError:(uint64_t)error
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    dispatch_assert_queue_V2(*(error + 24));
    v4 = objc_msgSend_copy(*(error + 48));
    [*(error + 48) removeAllObjects];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(HMDRemoteDeviceConfirmationHandler *)*(*(&v10 + 1) + 8 * v9++) finishWithError:v3];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)clearState:(uint64_t)state
{
  if (state)
  {
    dispatch_assert_queue_V2(*(state + 24));
    *(state + 40) &= ~2uLL;
  }
}

- (void)setRetryTimer:(uint64_t)timer
{
  if (timer)
  {
    objc_storeStrong((timer + 64), a2);
  }
}

@end