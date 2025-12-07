@interface MRExternalDeviceController
- (BOOL)_isManagedConfigIDAllowed:(id)allowed;
- (MRExternalDeviceController)initWithBonjourServiceType:(id)type;
- (MRExternalDeviceControllerDelegate)delegate;
- (void)beginDiscovery;
- (void)dealloc;
- (void)endDiscovery;
- (void)netService:(id)service didUpdateTXTRecordData:(id)data;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceDidResolveAddress:(id)address;
@end

@implementation MRExternalDeviceController

- (MRExternalDeviceController)initWithBonjourServiceType:(id)type
{
  v30 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (!typeCopy)
  {
    [(MRExternalDeviceController *)a2 initWithBonjourServiceType:?];
  }

  v27.receiver = self;
  v27.super_class = MRExternalDeviceController;
  v6 = [(MRExternalDeviceController *)&v27 init];
  if (v6)
  {
    v7 = [typeCopy copy];
    bonjourServiceType = v6->_bonjourServiceType;
    v6->_bonjourServiceType = v7;

    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(Name, v11);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695AC28]);
    serviceBrowser = v6->_serviceBrowser;
    v6->_serviceBrowser = v14;

    [(NSNetServiceBrowser *)v6->_serviceBrowser setDelegate:v6];
    v16 = +[MRUserSettings currentSettings];
    usePeerToPeerExternalDeviceConnections = [v16 usePeerToPeerExternalDeviceConnections];

    v18 = _MRLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      if (usePeerToPeerExternalDeviceConnections)
      {
        v19 = @"YES";
      }

      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Configuring external device net service browser with includesPeerToPeer = %@", buf, 0xCu);
    }

    [(NSNetServiceBrowser *)v6->_serviceBrowser setIncludesPeerToPeer:usePeerToPeerExternalDeviceConnections];
    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    discoveredDevices = v6->_discoveredDevices;
    v6->_discoveredDevices = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    resolvingServices = v6->_resolvingServices;
    v6->_resolvingServices = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    monitoringServices = v6->_monitoringServices;
    v6->_monitoringServices = v24;
  }

  return v6;
}

- (void)dealloc
{
  [(MRExternalDeviceController *)self endDiscovery];
  [(NSNetServiceBrowser *)self->_serviceBrowser setDelegate:0];
  v3.receiver = self;
  v3.super_class = MRExternalDeviceController;
  [(MRExternalDeviceController *)&v3 dealloc];
}

- (void)beginDiscovery
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_discovering)
  {
    v3 = _MRLogForCategory(3uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bonjourServiceType = self->_bonjourServiceType;
      v5 = 138543362;
      v6 = bonjourServiceType;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Beginning network service search for %{public}@...", &v5, 0xCu);
    }

    [(NSNetServiceBrowser *)self->_serviceBrowser searchForServicesOfType:self->_bonjourServiceType inDomain:@"local"];
    self->_discovering = 1;
  }
}

- (void)endDiscovery
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_discovering)
  {
    v3 = _MRLogForCategory(3uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bonjourServiceType = self->_bonjourServiceType;
      v5 = 138543362;
      v6 = bonjourServiceType;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Stopping network service search for %{public}@", &v5, 0xCu);
    }

    [(NSNetServiceBrowser *)self->_serviceBrowser stop];
    self->_discovering = 0;
  }
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  serviceCopy = service;
  v7 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController netServiceBrowser:didFindService:moreComing:];
  }

  [serviceCopy setDelegate:self];
  [(NSMutableSet *)self->_resolvingServices addObject:serviceCopy];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [serviceCopy scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  [serviceCopy startMonitoring];
  [(NSMutableSet *)self->_monitoringServices addObject:serviceCopy];
  [serviceCopy resolveWithTimeout:10.0];
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  v27 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v7 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController netServiceBrowser:didRemoveService:moreComing:];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_discoveredDevices;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        name = [v13 name];
        name2 = [serviceCopy name];
        isEqualToString = objc_msgSend_isEqualToString_(name);

        if (isEqualToString)
        {
          v17 = v13;

          if (v17)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v19 = objc_opt_respondsToSelector();

            if (v19)
            {
              v20 = objc_loadWeakRetained(&self->_delegate);
              [v20 externalDeviceController:self didRemoveDevice:v17];
            }

            [(NSMutableSet *)self->_discoveredDevices removeObject:v17];
          }

          goto LABEL_16;
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_16:
  [serviceCopy stopMonitoring];
  [serviceCopy setDelegate:0];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [serviceCopy removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  [(NSMutableSet *)self->_monitoringServices removeObject:serviceCopy];
  [(NSMutableSet *)self->_resolvingServices removeObject:serviceCopy];
}

- (void)netServiceDidResolveAddress:(id)address
{
  addressCopy = address;
  v5 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController netServiceDidResolveAddress:];
  }

  v6 = +[MRExternalDeviceManager sharedManager];
  v7 = [MRNetServiceTransport createDeviceInfoFromNetService:addressCopy];
  identifier = [v7 identifier];
  v9 = [v6 deviceWithIdentifier:identifier];

  if (!v9)
  {
    v10 = [[MRNetServiceTransport alloc] initWithNetService:addressCopy];
    [(MRNetServiceTransport *)v10 setRequiresCustomPairing:objc_msgSend_isEqualToString_(self->_bonjourServiceType)];
  }

  v11 = MRPairedDeviceCopyManagedConfigDeviceID(v7);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  if ((objc_msgSend_isEqualToString_(bundleIdentifier) & 1) == 0 && (objc_msgSend_isEqualToString_(bundleIdentifier) & 1) == 0 && !objc_msgSend_isEqualToString_(processName) || [(MRExternalDeviceController *)self _isManagedConfigIDAllowed:v11])
  {
    [(NSMutableSet *)self->_discoveredDevices addObject:v9];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_delegate);
      [v18 externalDeviceController:self didDiscoverDevice:v9];
    }
  }

  [(NSMutableSet *)self->_resolvingServices removeObject:addressCopy];
}

- (void)netService:(id)service didUpdateTXTRecordData:(id)data
{
  v8 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = serviceCopy;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "TXTRecord data did change for service %{public}@", &v6, 0xCu);
  }
}

- (BOOL)_isManagedConfigIDAllowed:(id)allowed
{
  v21 = *MEMORY[0x1E69E9840];
  allowedCopy = allowed;
  v4 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController _isManagedConfigIDAllowed:];
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v6 = [mEMORY[0x1E69ADFB8] effectiveValuesForUnionSetting:*MEMORY[0x1E69ADF68]];

  if ([v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = *v17;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v7);
      }

      lowercaseString = [*(*(&v16 + 1) + 8 * v10) lowercaseString];
      lowercaseString2 = [allowedCopy lowercaseString];
      isEqualToString = objc_msgSend_isEqualToString_(lowercaseString);

      if (isEqualToString)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = _MRLogForCategory(3uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MRExternalDeviceController _isManagedConfigIDAllowed:v7];
    }
  }

  LOBYTE(v8) = 1;
LABEL_16:

  v14 = _MRLogForCategory(3uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MRExternalDeviceController _isManagedConfigIDAllowed:];
  }

  return v8;
}

- (MRExternalDeviceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithBonjourServiceType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRExternalDeviceController.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"bonjourServiceType"}];
}

- (void)_isManagedConfigIDAllowed:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_1A2860000, v1, OS_LOG_TYPE_DEBUG, "Device with managedConfigDeviceID, %{public}@, allowed: %d", v2, 0x12u);
}

@end