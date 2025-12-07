@interface TVRCDeviceQuery
+ (id)_allDiscoveredDevices;
+ (id)deviceForDeviceState:(id)state;
+ (void)_allDiscoveredDevicesDidUpdate:(id)update;
+ (void)_updateSuggestedDevices:(id)devices;
+ (void)fetchActiveEndpointUIDWithCompletion:(id)completion;
+ (void)getConnectionStatusToDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (TVRCDeviceQueryDelegate)delegate;
- (void)dealloc;
- (void)fetchSuggestedDevicesWithResponse:(id)response;
- (void)startWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation TVRCDeviceQuery

+ (id)_allDiscoveredDevices
{
  if (qword_2804D74B0)
  {
    v2 = qword_2804D74B0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  return v2;
}

+ (void)_allDiscoveredDevicesDidUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [update copy];
  v4 = qword_2804D74B0;
  qword_2804D74B0 = v3;

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [_MergedGlobals copy];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        delegate = [v10 delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate deviceQueryDidUpdateDevices:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (void)_updateSuggestedDevices:(id)devices
{
  v15 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [_MergedGlobals copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        delegate = [*(*(&v10 + 1) + 8 * v8) delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate didUpdateSuggestedDevices:devicesCopy];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

+ (void)getConnectionStatusToDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v7 = +[TVRCXPCClient sharedInstance];
  [v7 getConnectionStatusToDeviceWithIdentifier:identifierCopy response:completionCopy];
}

- (void)dealloc
{
  [(TVRCDeviceQuery *)self stop];
  v3.receiver = self;
  v3.super_class = TVRCDeviceQuery;
  [(TVRCDeviceQuery *)&v3 dealloc];
}

- (void)startWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _TVRCDeviceQueryLog(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TVRCDeviceQuery startWithCompletionHandler:];
  }

  v6 = _MergedGlobals;
  if (!_MergedGlobals)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = _MergedGlobals;
    _MergedGlobals = weakObjectsHashTable;

    v6 = _MergedGlobals;
  }

  [v6 addObject:self];
  if ([_MergedGlobals count] == 1)
  {
    v9 = +[TVRCXPCClient sharedInstance];
    [v9 beginDeviceQueryWithResponse:handlerCopy];

    v11 = _TVRCDeviceQueryLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = qword_2804D74B0;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Resetting lastKnownDevices: %@", &v15, 0xCu);
    }

    v12 = qword_2804D74B0;
    qword_2804D74B0 = 0;
    goto LABEL_13;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 deviceQueryDidUpdateDevices:self];
LABEL_13:
  }
}

- (void)stop
{
  v3 = _TVRCDeviceQueryLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [TVRCDeviceQuery stop];
  }

  [_MergedGlobals removeObject:self];
  v4 = [_MergedGlobals count];
  if (!v4)
  {
    v5 = +[TVRCXPCClient sharedInstance];
    [v5 endDeviceQuery];

    v6 = qword_2804D74B0;
    qword_2804D74B0 = 0;
  }

  v7 = _TVRCDeviceQueryLog(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [TVRCDeviceQuery stop];
  }
}

- (void)fetchSuggestedDevicesWithResponse:(id)response
{
  responseCopy = response;
  v5 = +[TVRCXPCClient sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__TVRCDeviceQuery_fetchSuggestedDevicesWithResponse___block_invoke;
  v7[3] = &unk_279D82BC8;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  [v5 getSuggestedDevicesWithResponse:v7];
}

void __53__TVRCDeviceQuery_fetchSuggestedDevicesWithResponse___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_opt_class() deviceForDeviceState:{*(*(&v13 + 1) + 8 * v9), v13}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 40);
  v12 = [v4 copy];
  (*(v11 + 16))(v11, v12);
}

+ (void)fetchActiveEndpointUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[TVRCXPCClient sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__TVRCDeviceQuery_fetchActiveEndpointUIDWithCompletion___block_invoke;
  v6[3] = &unk_279D82BF0;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 fetchActiveMREndpointUIDWithCompletion:v6];
}

uint64_t __56__TVRCDeviceQuery_fetchActiveEndpointUIDWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)deviceForDeviceState:(id)state
{
  stateCopy = state;
  v4 = +[TVRCDeviceQuery _allDiscoveredDevices];
  v5 = _TVRCDeviceQueryLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[TVRCDeviceQuery deviceForDeviceState:];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__TVRCDeviceQuery_deviceForDeviceState___block_invoke;
  v9[3] = &unk_279D82C18;
  v6 = stateCopy;
  v10 = v6;
  v11 = &v12;
  [v4 enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __40__TVRCDeviceQuery_deviceForDeviceState___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (TVRCDeviceQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end