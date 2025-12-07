@interface TVRUICoreDeviceQuery
- (BOOL)hasStarted;
- (TVRUIDeviceSearchDelegate)delegate;
- (void)deviceQueryDidUpdateDevices:(id)devices;
- (void)didUpdateSuggestedDevices:(id)devices;
- (void)startQuery:(id)query completionHandler:(id)handler;
- (void)stop;
@end

@implementation TVRUICoreDeviceQuery

- (void)startQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  [(TVRUICoreDeviceQuery *)self setDelegate:queryCopy];
  v8 = objc_alloc_init(MEMORY[0x277D6C4E0]);
  [(TVRUICoreDeviceQuery *)self setQuery:v8];

  query = [(TVRUICoreDeviceQuery *)self query];
  [query setDelegate:self];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(TVRUICoreDeviceQuery *)self setDeviceList:dictionary];

  v12 = _TVRUIDeviceQueryLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "UI requesting device query to start", buf, 2u);
  }

  objc_initWeak(buf, self);
  query2 = [(TVRUICoreDeviceQuery *)self query];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__TVRUICoreDeviceQuery_startQuery_completionHandler___block_invoke;
  v15[3] = &unk_279D88678;
  objc_copyWeak(&v17, buf);
  v14 = handlerCopy;
  v16 = v14;
  [query2 startWithCompletionHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __53__TVRUICoreDeviceQuery_startQuery_completionHandler___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__TVRUICoreDeviceQuery_startQuery_completionHandler___block_invoke_2;
    v5[3] = &unk_279D88650;
    v6 = *(a1 + 32);
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (BOOL)hasStarted
{
  query = [(TVRUICoreDeviceQuery *)self query];

  return query != 0;
}

- (void)stop
{
  query = [(TVRUICoreDeviceQuery *)self query];

  if (query)
  {
    v5 = _TVRUIDeviceQueryLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "UI requesting device query to stop", v7, 2u);
    }

    query2 = [(TVRUICoreDeviceQuery *)self query];
    [query2 stop];

    [(TVRUICoreDeviceQuery *)self setQuery:0];
  }
}

- (void)deviceQueryDidUpdateDevices:(id)devices
{
  v38 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = _TVRUIDeviceQueryLog(devicesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    devices = [devicesCopy devices];
    *buf = 134217984;
    v34 = [devices count];
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Device query did update. Num devices %ld ", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = _TVRUIDeviceQueryLog(dictionary);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    deviceList = [(TVRUICoreDeviceQuery *)self deviceList];
    *buf = 138543362;
    v34 = deviceList;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Old device list: %{public}@", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = devicesCopy;
  devices2 = [devicesCopy devices];
  v11 = [devices2 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(devices2);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        deviceList2 = [(TVRUICoreDeviceQuery *)self deviceList];
        identifier = [v15 identifier];
        v18 = [deviceList2 objectForKeyedSubscript:identifier];

        if (!v18)
        {
          v18 = [[TVRUICoreDevice alloc] _initWithCoreDevice:v15];
          v19 = _TVRUIDeviceQueryLog(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v34 = v18;
            v35 = 2114;
            v36 = v15;
            _os_log_impl(&dword_26CFEB000, v19, OS_LOG_TYPE_DEFAULT, "Adding new uidevice: %{public}@ for core device: %{public}@", buf, 0x16u);
          }
        }

        identifier2 = [v15 identifier];
        [dictionary setObject:v18 forKeyedSubscript:identifier2];
      }

      v12 = [devices2 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v12);
  }

  deviceList3 = [(TVRUICoreDeviceQuery *)self deviceList];
  [deviceList3 removeAllObjects];

  v22 = _TVRUIDeviceQueryLog([(TVRUICoreDeviceQuery *)self setDeviceList:dictionary]);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    deviceList4 = [(TVRUICoreDeviceQuery *)self deviceList];
    *buf = 138543362;
    v34 = deviceList4;
    _os_log_impl(&dword_26CFEB000, v22, OS_LOG_TYPE_DEFAULT, "New device list: %{public}@", buf, 0xCu);
  }

  delegate = [(TVRUICoreDeviceQuery *)self delegate];

  if (delegate)
  {
    delegate2 = [(TVRUICoreDeviceQuery *)self delegate];
    deviceList5 = [(TVRUICoreDeviceQuery *)self deviceList];
    allValues = [deviceList5 allValues];
    [delegate2 deviceListUpdated:allValues];
  }
}

- (void)didUpdateSuggestedDevices:(id)devices
{
  v31 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  if (+[TVRUIFeatures corianderEnabled])
  {
    array = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = devicesCopy;
    v6 = devicesCopy;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          deviceList = [(TVRUICoreDeviceQuery *)self deviceList];
          identifier = [v11 identifier];
          v14 = [deviceList objectForKeyedSubscript:identifier];

          v16 = _TVRUIDeviceQueryLog(v15);
          v17 = v16;
          if (v14)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v27 = v14;
              v28 = 2114;
              v29 = v11;
              _os_log_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_DEFAULT, "Found coreUIDevice:%{public}@ for device:%{public}@", buf, 0x16u);
            }

            [array addObject:v14];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v27 = v11;
              _os_log_error_impl(&dword_26CFEB000, v17, OS_LOG_TYPE_ERROR, "Cannot find coredevice for device:%{public}@", buf, 0xCu);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }

    delegate = [(TVRUICoreDeviceQuery *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate2 = [(TVRUICoreDeviceQuery *)self delegate];
      [delegate2 suggestedDevices:array];
    }

    devicesCopy = v21;
  }
}

- (TVRUIDeviceSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end