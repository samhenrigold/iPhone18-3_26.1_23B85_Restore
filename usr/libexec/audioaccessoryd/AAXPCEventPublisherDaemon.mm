@interface AAXPCEventPublisherDaemon
+ (id)sharedAAXPCEventPublisherDaemon;
- (AAXPCEventPublisherDaemon)init;
- (void)_activate;
- (void)_deviceDiscoveryEnsureStarted;
- (void)_deviceDiscoveryEnsureStopped;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_ensureEventPublisherCreated;
- (void)_fireEventIfNeededForDevice:(id)device subscription:(id)subscription;
- (void)_handleEventPublisherAction:(unsigned int)action withToken:(unint64_t)token descriptor:(id)descriptor;
- (void)_invalidate;
- (void)_subscriptionAddedWithToken:(unint64_t)token descriptor:(id)descriptor;
- (void)_subscriptionRemovedForToken:(unint64_t)token;
- (void)activate;
- (void)invalidate;
@end

@implementation AAXPCEventPublisherDaemon

+ (id)sharedAAXPCEventPublisherDaemon
{
  if (qword_1002FA208 != -1)
  {
    sub_1001F9984();
  }

  v3 = qword_1002FA200;

  return v3;
}

- (AAXPCEventPublisherDaemon)init
{
  v8.receiver = self;
  v8.super_class = AAXPCEventPublisherDaemon;
  v2 = [(AAXPCEventPublisherDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAXPCEventPublisherDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1980;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    v8 = v3;
    selfCopy = self;
    self->_activateCalled = 1;
    if (dword_1002F7310 <= 30)
    {
      if (dword_1002F7310 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001F9998(self, a2, v2);
      }
    }

    [(AAXPCEventPublisherDaemon *)selfCopy _deviceDiscoveryEnsureStarted:v4];

    [(AAXPCEventPublisherDaemon *)selfCopy _ensureEventPublisherCreated];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1A80;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (dword_1002F7310 <= 30)
  {
    if (dword_1002F7310 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001F99B4(self, a2, v2);
    }
  }

  [(AAXPCEventPublisherDaemon *)selfCopy _deviceDiscoveryEnsureStopped];
  [(NSMutableDictionary *)selfCopy->_subscriptionMap removeAllObjects];
  subscriptionMap = selfCopy->_subscriptionMap;
  selfCopy->_subscriptionMap = 0;

  xpcEventPublisher = selfCopy->_xpcEventPublisher;
  selfCopy->_xpcEventPublisher = 0;

  selfCopy->_activateCalled = 0;
}

- (void)_ensureEventPublisherCreated
{
  if (!self->_xpcEventPublisher)
  {
    selfCopy = self;
    if (dword_1002F7310 <= 30)
    {
      if (dword_1002F7310 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1001F99D0(self, a2, v2);
      }
    }

    v4 = xpc_event_publisher_create();
    xpcEventPublisher = selfCopy->_xpcEventPublisher;
    selfCopy->_xpcEventPublisher = v4;

    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    xpc_event_publisher_activate();
  }
}

- (void)_handleEventPublisherAction:(unsigned int)action withToken:(unint64_t)token descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (action == 2)
  {
    if (dword_1002F7310 <= 30)
    {
      if (dword_1002F7310 != -1 || (descriptorCopy = _LogCategory_Initialize(), descriptorCopy))
      {
        descriptorCopy = sub_1001F9A2C(descriptorCopy, v9, v10);
      }
    }
  }

  else if (action == 1)
  {
    descriptorCopy = [(AAXPCEventPublisherDaemon *)self _subscriptionRemovedForToken:token];
  }

  else if (action)
  {
    if (dword_1002F7310 <= 90)
    {
      if (dword_1002F7310 != -1 || (descriptorCopy = _LogCategory_Initialize(), descriptorCopy))
      {
        descriptorCopy = sub_1001F9A48(action);
      }
    }
  }

  else
  {
    descriptorCopy = [(AAXPCEventPublisherDaemon *)self _subscriptionAddedWithToken:token descriptor:?];
  }

  _objc_release_x3(descriptorCopy);
}

- (void)_fireEventIfNeededForDevice:(id)device subscription:(id)subscription
{
  deviceCopy = device;
  subscriptionCopy = subscription;
  if ([subscriptionCopy needsToFireEventForDeviceFound:deviceCopy])
  {
    if (dword_1002F7310 <= 40 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9A88(subscriptionCopy, deviceCopy);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    [subscriptionCopy token];
    xpc_event_publisher_fire();
  }
}

- (void)_deviceDiscoveryEnsureStarted
{
  p_deviceManager = &self->_deviceManager;
  if (!self->_deviceManager)
  {
    v4 = objc_alloc_init(AADeviceManager);
    [v4 setDispatchQueue:self->_dispatchQueue];
    v5 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v4 setInternalServicesDaemon:v5];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D1FD0;
    v10[3] = &unk_1002B7820;
    v10[4] = self;
    [v4 setDeviceFoundHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000D1FDC;
    v9[3] = &unk_1002B7820;
    v9[4] = self;
    [v4 setDeviceLostHandler:v9];
    objc_storeStrong(p_deviceManager, v4);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D1FE8;
    v7[3] = &unk_1002B68A8;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    [v6 activateWithCompletion:v7];
  }
}

- (void)_subscriptionAddedWithToken:(unint64_t)token descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    v7 = CUPrintXPC();
    LogPrintF_safe(&dword_1002F7310, "[AAXPCEventPublisherDaemon _subscriptionAddedWithToken:descriptor:]", 30, "New subscription with token %llu added: %@", token, v7);
  }

  v8 = [AAXPCEventSubscription subscriptionWithToken:token descriptor:descriptorCopy];
  if (v8)
  {
    subscriptionMap = self->_subscriptionMap;
    if (!subscriptionMap)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = self->_subscriptionMap;
      self->_subscriptionMap = v10;

      subscriptionMap = self->_subscriptionMap;
    }

    v12 = [NSNumber numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)subscriptionMap setObject:v8 forKeyedSubscript:v12];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    discoveredDevices = [(AADeviceManager *)self->_deviceManager discoveredDevices];
    v14 = [discoveredDevices countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(discoveredDevices);
          }

          [(AAXPCEventPublisherDaemon *)self _fireEventIfNeededForDevice:*(*(&v18 + 1) + 8 * i) subscription:v8];
        }

        v15 = [discoveredDevices countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

- (void)_subscriptionRemovedForToken:(unint64_t)token
{
  if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_1002F7310, "[AAXPCEventPublisherDaemon _subscriptionRemovedForToken:]", 30, "Subscription with token %llu removed", token);
  }

  subscriptionMap = self->_subscriptionMap;
  if (subscriptionMap)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)subscriptionMap setObject:0 forKeyedSubscript:v6];

    if (![(NSMutableDictionary *)self->_subscriptionMap count])
    {
      v7 = self->_subscriptionMap;
      self->_subscriptionMap = 0;
    }
  }
}

- (void)_deviceDiscoveryEnsureStopped
{
  if (self->_deviceManager)
  {
    if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_1002F7310, "[AAXPCEventPublisherDaemon _deviceDiscoveryEnsureStopped]", 30, "Device discovery stop");
    }

    [(AADeviceManager *)self->_deviceManager invalidate];
    deviceManager = self->_deviceManager;
    self->_deviceManager = 0;
  }
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  subscriptionMap = self->_subscriptionMap;
  if (subscriptionMap)
  {
    allValues = [(NSMutableDictionary *)subscriptionMap allValues];
    sub_1000D211C();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(allValues);
          }

          [(AAXPCEventPublisherDaemon *)self _fireEventIfNeededForDevice:foundCopy subscription:*(8 * i)];
        }

        sub_1000D211C();
        v9 = [allValues countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }
  }
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  subscriptionMap = self->_subscriptionMap;
  if (subscriptionMap)
  {
    allValues = [(NSMutableDictionary *)subscriptionMap allValues];
    sub_1000D211C();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(allValues);
          }

          [*(8 * i) deviceLost:lostCopy];
        }

        sub_1000D211C();
        v9 = [allValues countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }
  }
}

@end