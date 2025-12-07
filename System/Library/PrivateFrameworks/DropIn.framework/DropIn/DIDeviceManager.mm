@interface DIDeviceManager
- (DIDeviceManager)initWithConnectionManager:(id)manager;
- (DIDeviceManagerDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (NSArray)devices;
- (void)didAddDevice:(id)device;
- (void)didLoadDevices:(id)devices;
- (void)didRemoveDevice:(id)device;
- (void)didUpdateDevice:(id)device;
- (void)setCurrentDevice:(id)device;
- (void)setDelegate:(id)delegate;
- (void)xpcManagerDidPerformDaemonCheckIn:(id)in;
@end

@implementation DIDeviceManager

- (DIDeviceManager)initWithConnectionManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = DIDeviceManager;
  v5 = [(DIDeviceManager *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = objc_storeWeak(&v5->_connectionManager, managerCopy);
    dispatcher = [managerCopy dispatcher];
    [dispatcher setDeviceListDelegate:v5];

    WeakRetained = objc_loadWeakRetained(&v5->_connectionManager);
    dispatcher2 = [WeakRetained dispatcher];
    [dispatcher2 setDeviceStatusDelegate:v5];

    v12 = objc_loadWeakRetained(&v5->_connectionManager);
    manager = [v12 manager];
    [manager addCheckInObserver:v5];
  }

  return v5;
}

- (void)setDelegate:(id)delegate
{
  v19 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = objc_storeWeak(&self->_delegate, delegateCopy);
  v6 = DILogHandleDeviceManager(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = &stru_285D02BA8;
    v17 = 2112;
    v18 = delegateCopy;
    _os_log_impl(&dword_249DA7000, v6, OS_LOG_TYPE_DEFAULT, "%@Delegate set to %@", buf, 0x16u);
  }

  if (delegateCopy)
  {
    connectionManager = [(DIDeviceManager *)self connectionManager];
    manager = [connectionManager manager];
    connection = [manager connection];
    v10 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
    connectionManager2 = [(DIDeviceManager *)self connectionManager];
    manager2 = [connectionManager2 manager];
    clientContext = [manager2 clientContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __31__DIDeviceManager_setDelegate___block_invoke_2;
    v14[3] = &unk_278FB9168;
    v14[4] = self;
    [v10 loadDevicesWithContext:clientContext completionHandler:v14];
  }
}

void __31__DIDeviceManager_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleDeviceManager(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [v2 localizedDescription];
    v5 = 138412546;
    v6 = &stru_285D02BA8;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Set delegate proxy error: %@", &v5, 0x16u);
  }
}

void __31__DIDeviceManager_setDelegate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = DILogHandleDeviceManager(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 localizedDescription];
      v10 = 138412546;
      v11 = &stru_285D02BA8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_249DA7000, v8, OS_LOG_TYPE_ERROR, "%@Set delegate load devices error: %@", &v10, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      [*(a1 + 32) didLoadDevices:v5];
      goto LABEL_7;
    }

    v8 = DILogHandleDeviceManager(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = &stru_285D02BA8;
      _os_log_impl(&dword_249DA7000, v8, OS_LOG_TYPE_ERROR, "%@Set delegate load devices. Devices are nil", &v10, 0xCu);
    }
  }

LABEL_7:
}

- (void)setCurrentDevice:(id)device
{
  v11 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = DILogHandleDeviceManager(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = deviceCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Setting Current Device: %@", &v7, 0x16u);
  }

  currentDevice = self->_currentDevice;
  self->_currentDevice = deviceCopy;
}

- (NSArray)devices
{
  v3 = self->_devices;
  objc_sync_enter(v3);
  v4 = [(NSArray *)self->_devices copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)didAddDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = DILogHandleDeviceManager(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = &stru_285D02BA8;
    v19 = 2112;
    v20 = deviceCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did add device %@", buf, 0x16u);
  }

  devices = [(DIDeviceManager *)self devices];
  objc_sync_enter(devices);
  connectionManager = [(DIDeviceManager *)self connectionManager];
  [deviceCopy setConnectionManager:connectionManager];

  devices2 = [(DIDeviceManager *)self devices];
  v9 = [devices2 arrayByAddingObject:deviceCopy];
  [(DIDeviceManager *)self setDevices:v9];

  if ([deviceCopy isCurrentDevice])
  {
    [(DIDeviceManager *)self setCurrentDevice:deviceCopy];
  }

  objc_sync_exit(devices);

  delegate = [(DIDeviceManager *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    connectionManager2 = [(DIDeviceManager *)self connectionManager];
    manager = [connectionManager2 manager];
    clientQueue = [manager clientQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __32__DIDeviceManager_didAddDevice___block_invoke;
    v15[3] = &unk_278FB8E48;
    v15[4] = self;
    v16 = deviceCopy;
    [DIUtilities onQueue:clientQueue block:v15];
  }
}

void __32__DIDeviceManager_didAddDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didAddDevice:*(a1 + 40)];
}

- (void)didLoadDevices:(id)devices
{
  v43 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v5 = DILogHandleDeviceManager(devicesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = &stru_285D02BA8;
    v41 = 2048;
    v42 = [devicesCopy count];
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did Load Devices %lu", buf, 0x16u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = devicesCopy;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  v9 = v7;
  if (v7)
  {
    v10 = *v34;
    *&v8 = 138412546;
    v27 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = DILogHandleDeviceManager(v7);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v40 = &stru_285D02BA8;
          v41 = 2112;
          v42 = v12;
          _os_log_impl(&dword_249DA7000, v13, OS_LOG_TYPE_DEFAULT, "%@%@", buf, 0x16u);
        }

        ++v11;
      }

      while (v9 != v11);
      v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
      v9 = v7;
    }

    while (v7);
  }

  devices = [(DIDeviceManager *)self devices];
  objc_sync_enter(devices);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        connectionManager = [(DIDeviceManager *)self connectionManager];
        [v19 setConnectionManager:connectionManager];

        stateExpiration = [v19 stateExpiration];
        [v19 setStateExpiration:stateExpiration];

        if ([v19 isCurrentDevice])
        {
          [(DIDeviceManager *)self setCurrentDevice:v19];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v16);
  }

  [(DIDeviceManager *)self setDevices:v15];
  objc_sync_exit(devices);

  delegate = [(DIDeviceManager *)self delegate];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    connectionManager2 = [(DIDeviceManager *)self connectionManager];
    manager = [connectionManager2 manager];
    clientQueue = [manager clientQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __34__DIDeviceManager_didLoadDevices___block_invoke;
    v28[3] = &unk_278FB8F78;
    v28[4] = self;
    [DIUtilities onQueue:clientQueue block:v28];
  }
}

void __34__DIDeviceManager_didLoadDevices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 managerDidUpdateDevices:*(a1 + 32)];
}

- (void)didRemoveDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = DILogHandleDeviceManager(deviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = &stru_285D02BA8;
    v20 = 2112;
    v21 = deviceCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Did remove device %@", buf, 0x16u);
  }

  devices = [(DIDeviceManager *)self devices];
  objc_sync_enter(devices);
  v7 = MEMORY[0x277CBEB18];
  devices2 = [(DIDeviceManager *)self devices];
  v9 = [v7 arrayWithArray:devices2];

  [v9 removeObject:deviceCopy];
  v10 = [v9 copy];
  [(DIDeviceManager *)self setDevices:v10];

  if ([deviceCopy isCurrentDevice])
  {
    [(DIDeviceManager *)self setCurrentDevice:0];
  }

  objc_sync_exit(devices);
  delegate = [(DIDeviceManager *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    connectionManager = [(DIDeviceManager *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __35__DIDeviceManager_didRemoveDevice___block_invoke;
    v16[3] = &unk_278FB8E48;
    v16[4] = self;
    v17 = deviceCopy;
    [DIUtilities onQueue:clientQueue block:v16];
  }
}

void __35__DIDeviceManager_didRemoveDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 manager:*(a1 + 32) didRemoveDevice:*(a1 + 40)];
}

- (void)didUpdateDevice:(id)device
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v4 = DILogHandleDeviceManager(deviceCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = &stru_285D02BA8;
    v36 = 2112;
    v37 = deviceCopy;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_DEFAULT, "%@Did update device %@", buf, 0x16u);
  }

  obj = [(DIDeviceManager *)self devices];
  v5 = objc_sync_enter(obj);
  v6 = DILogHandleDeviceManager(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      devices = [(DIDeviceManager *)self devices];
      v9 = [devices count];
      *buf = 138412546;
      v35 = &stru_285D02BA8;
      v36 = 2048;
      v37 = v9;
      _os_log_impl(&dword_249DA7000, v7, OS_LOG_TYPE_DEFAULT, "%@Devices %lu", buf, 0x16u);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  devices2 = [(DIDeviceManager *)self devices];
  v11 = [devices2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  v12 = v11;
  if (v11)
  {
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(devices2);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        v16 = DILogHandleDeviceManager(v11);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v35 = &stru_285D02BA8;
          v36 = 2112;
          v37 = v15;
          _os_log_impl(&dword_249DA7000, v16, OS_LOG_TYPE_DEFAULT, "%@%@", buf, 0x16u);
        }

        ++v14;
      }

      while (v12 != v14);
      v11 = [devices2 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v12 = v11;
    }

    while (v11);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  devices3 = [(DIDeviceManager *)self devices];
  v18 = [devices3 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(devices3);
        }

        v21 = *(*(&v24 + 1) + 8 * i);
        if ([v21 isEqual:{deviceCopy, obj}])
        {
          [v21 updateWithDevice:deviceCopy updateState:1];
        }
      }

      v18 = [devices3 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  objc_sync_exit(obj);
}

- (void)xpcManagerDidPerformDaemonCheckIn:(id)in
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(DIDeviceManager *)self setDelegate:WeakRetained];
}

- (DIDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DIXPCConnectionManager)connectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionManager);

  return WeakRetained;
}

@end