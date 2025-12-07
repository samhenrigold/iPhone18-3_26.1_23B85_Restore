@interface HIDEventSystemClient
- (HIDEventSystemClient)initWithType:(int64_t)type andAttributes:(id)attributes;
- (NSArray)services;
- (id)propertyForKey:(id)key;
- (void)activate;
- (void)dealloc;
- (void)setCancelHandler:(id)handler;
- (void)setEventFilterHandler:(id)handler;
- (void)setEventHandler:(id)handler;
- (void)setMatching:(id)matching;
- (void)setPropertyChangedHandler:(id)handler matching:(id)matching;
- (void)setResetHandler:(id)handler;
- (void)setServiceNotificationHandler:(id)handler;
@end

@implementation HIDEventSystemClient

void __32__HIDEventSystemClient_activate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }
}

- (void)dealloc
{
  client = self->_client;
  if (client)
  {
    CFRelease(client);
  }

  v4.receiver = self;
  v4.super_class = HIDEventSystemClient;
  [(HIDEventSystemClient *)&v4 dealloc];
}

- (void)activate
{
  os_unfair_recursive_lock_lock_with_options();
  self->_activated = 1;
  os_unfair_recursive_lock_unlock();
  IOHIDEventSystemClientSetCancelHandler();
  IOHIDEventSystemClientActivate();
}

- (HIDEventSystemClient)initWithType:(int64_t)type andAttributes:(id)attributes
{
  attributesCopy = attributes;
  v10.receiver = self;
  v10.super_class = HIDEventSystemClient;
  v6 = [(HIDEventSystemClient *)&v10 init];
  if (v6 && (v7 = IOHIDEventSystemClientCreateWithType(), (v6->_client = v7) != 0))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)propertyForKey:(id)key
{
  v3 = IOHIDEventSystemClientCopyProperty(self->_client, key);

  return v3;
}

- (void)setMatching:(id)matching
{
  v6 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(HIDManager *)&v4 setInputElementMatching:v5];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [matchingCopy count];
    IOHIDEventSystemClientSetMatching();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [matchingCopy count];
      IOHIDEventSystemClientSetMatchingMultiple();
    }
  }
}

- (NSArray)services
{
  v2 = IOHIDEventSystemClientCopyServices(self->_client);

  return v2;
}

- (void)setCancelHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_activated)
  {
    [HIDEventSystemClient setCancelHandler:];
  }

  v4 = _Block_copy(aBlock);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)setEventHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_eventHandler)
  {
    [HIDEventSystemClient setEventHandler:];
  }

  v4 = _Block_copy(aBlock);
  eventHandler = self->_eventHandler;
  self->_eventHandler = v4;

  os_unfair_recursive_lock_unlock();
  IOHIDEventSystemClientRegisterEventCallback();
}

- (void)setResetHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_resetHandler)
  {
    [HIDEventSystemClient setResetHandler:];
  }

  v4 = _Block_copy(aBlock);
  resetHandler = self->_resetHandler;
  self->_resetHandler = v4;

  os_unfair_recursive_lock_unlock();
  IOHIDEventSystemClientRegisterResetCallback();
}

- (void)setEventFilterHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_filterHandler)
  {
    [HIDEventSystemClient setEventFilterHandler:];
  }

  v4 = _Block_copy(aBlock);
  filterHandler = self->_filterHandler;
  self->_filterHandler = v4;

  os_unfair_recursive_lock_unlock();
  IOHIDEventSystemClientRegisterEventFilterCallback();
}

- (void)setServiceNotificationHandler:(id)handler
{
  aBlock = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_serviceHandler)
  {
    [HIDEventSystemClient setServiceNotificationHandler:];
  }

  v4 = _Block_copy(aBlock);
  serviceHandler = self->_serviceHandler;
  self->_serviceHandler = v4;

  os_unfair_recursive_lock_unlock();
  IOHIDEventSystemClientRegisterDeviceMatchingCallback();
}

- (void)setPropertyChangedHandler:(id)handler matching:(id)matching
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  matchingCopy = matching;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(HIDManager *)&v19 setInputElementMatching:v21];
    }
  }

  os_unfair_recursive_lock_lock_with_options();
  if (self->_propertyChangedHandler)
  {
    [HIDEventSystemClient setPropertyChangedHandler:matching:];
  }

  v8 = _Block_copy(handlerCopy);
  propertyChangedHandler = self->_propertyChangedHandler;
  self->_propertyChangedHandler = v8;

  os_unfair_recursive_lock_unlock();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IOHIDEventSystemClientRegisterPropertyChangedCallback();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = matchingCopy;
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v16;
        do
        {
          v14 = 0;
          do
          {
            if (*v16 != v13)
            {
              objc_enumerationMutation(v10);
            }

            IOHIDEventSystemClientRegisterPropertyChangedCallback();
            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }
}

@end