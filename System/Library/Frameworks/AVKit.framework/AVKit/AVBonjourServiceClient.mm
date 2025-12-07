@interface AVBonjourServiceClient
+ (id)dictionaryFromTXTRecordData:(id)data;
- (AVBonjourServiceClient)initWithNetServiceType:(id)type;
- (AVBonjourServiceClientDelegate)delegate;
- (BOOL)_isServiceForCurrentAirPlayDevice:(id)device;
- (NSString)description;
- (id)airTransportSenderForNetService:(id)service;
- (id)identifierForNetService:(id)service;
- (void)_updatedAirPlayPairedDeviceAsync;
- (void)beginDiscovery;
- (void)dealloc;
- (void)endDiscovery;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netService:(id)service didUpdateTXTRecordData:(id)data;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didNotSearch:(id)search;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceDidResolveAddress:(id)address;
- (void)netServiceDidStop:(id)stop;
- (void)netServiceWillResolve:(id)resolve;
- (void)setAirplayDeviceRef:(void *)ref;
@end

@implementation AVBonjourServiceClient

- (AVBonjourServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)netService:(id)service didUpdateTXTRecordData:(id)data
{
  v4 = _avairlog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "didUpdateTXTRecordData", v5, 2u);
  }
}

- (void)netServiceDidStop:(id)stop
{
  v8 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  v4 = _avairlog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    name = [stopCopy name];
    v6 = 138412290;
    v7 = name;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "didStop resolution request %@", &v6, 0xCu);
  }
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  v16 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  resolveCopy = resolve;
  v8 = [resolveCopy objectForKeyedSubscript:*MEMORY[0x1E696A758]];
  v9 = _avairlog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = resolveCopy;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "didNotResolve %@", buf, 0xCu);
  }

  if ([v8 integerValue] == -72007)
  {
    v10 = _avairlog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = serviceCopy;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "didNotResolve %@ due to timeout!", buf, 0xCu);
    }

    v11 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AVBonjourServiceClient_netService_didNotResolve___block_invoke;
    block[3] = &unk_1E720A090;
    v13 = serviceCopy;
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(NSMutableSet *)self->_resolvingServices removeObject:serviceCopy];
  }
}

- (void)netServiceDidResolveAddress:(id)address
{
  v22 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v5 = _avairlog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = addressCopy;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "didResolveAddress %@", &v18, 0xCu);
  }

  v6 = objc_opt_class();
  tXTRecordData = [addressCopy TXTRecordData];
  v8 = [v6 dictionaryFromTXTRecordData:tXTRecordData];

  v9 = [v8 objectForKeyedSubscript:@"receiverPairingIdentity"];
  v10 = _avairlog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[AVBonjourServiceClient netServiceDidResolveAddress:]";
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s localAirPlayReceiverPairingIdentity = %@", &v18, 0x16u);
  }

  [(NSMutableSet *)self->_resolvedServices addObject:addressCopy];
  [(NSMutableSet *)self->_resolvingServices removeObject:addressCopy];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AVBonjourServiceClientDidResolveNetServiceNotification" object:addressCopy];

  if ([(AVBonjourServiceClient *)self _isServiceForCurrentAirPlayDevice:addressCopy])
  {
    v12 = _avairlog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "Found netService for the current AirPlay device; posting .DidResolveAirPlayDeviceNetServiceNotification..", &v18, 2u);
    }

    v13 = [(AVBonjourServiceClient *)self airTransportSenderForNetService:addressCopy];
    delegate = [(AVBonjourServiceClient *)self delegate];

    if (!delegate)
    {
      v15 = _avairlog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "delegate has not been set!", &v18, 2u);
      }
    }

    delegate2 = [(AVBonjourServiceClient *)self delegate];
    [delegate2 didConnectToBonjourService:addressCopy channel:v13];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"AVBonjourServiceClientDidResolveAirPlayDeviceNetServiceNotification" object:self];
  }
}

- (void)netServiceWillResolve:(id)resolve
{
  v7 = *MEMORY[0x1E69E9840];
  resolveCopy = resolve;
  v4 = _avairlog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = resolveCopy;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "willResolve %@", &v5, 0xCu);
  }
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  v11 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v7 = _avairlog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = serviceCopy;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "didRemoveService %@", &v9, 0xCu);
  }

  [serviceCopy stopMonitoring];
  [serviceCopy setDelegate:0];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [serviceCopy removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  [(NSMutableSet *)self->_monitoringServices removeObject:serviceCopy];
  [(NSMutableSet *)self->_resolvingServices removeObject:serviceCopy];
  [(NSMutableSet *)self->_resolvedServices removeObject:serviceCopy];
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  v11 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v7 = _avairlog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = serviceCopy;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "didFindService %@", &v9, 0xCu);
  }

  [serviceCopy setDelegate:self];
  [(NSMutableSet *)self->_resolvingServices addObject:serviceCopy];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [serviceCopy scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  [serviceCopy startMonitoring];
  [(NSMutableSet *)self->_monitoringServices addObject:serviceCopy];
  [serviceCopy resolveWithTimeout:10.0];
}

- (void)netServiceBrowser:(id)browser didNotSearch:(id)search
{
  v8 = *MEMORY[0x1E69E9840];
  searchCopy = search;
  v5 = _avairlog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = searchCopy;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "didNotSearch (errorDict = %{public}@)", &v6, 0xCu);
  }
}

- (id)airTransportSenderForNetService:(id)service
{
  v20 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = [(AVBonjourServiceClient *)self identifierForNetService:serviceCopy];
  v6 = [(NSMutableDictionary *)self->_netServiceIdentifierToChannel objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if ([serviceCopy getInputStream:&v13 outputStream:&v12])
    {
      v8 = [AVAirTransport channelWithInput:v13 output:v12];
      [(NSMutableDictionary *)self->_netServiceIdentifierToChannel setObject:v8 forKeyedSubscript:v5];
      v9 = _avairlog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "[AVBonjourServiceClient airTransportSenderForNetService:]";
        v16 = 2112;
        v17 = serviceCopy;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s %@ ===> %@", buf, 0x20u);
      }

      v7 = v8;
    }

    else
    {
      v10 = _avairlog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[AVBonjourServiceClient airTransportSenderForNetService:]";
        _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s failed to get the input/output streams!", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)identifierForNetService:(id)service
{
  v3 = MEMORY[0x1E696AEC0];
  serviceCopy = service;
  hostName = [serviceCopy hostName];
  v6 = hostName;
  if (hostName)
  {
    v7 = hostName;
  }

  else
  {
    v7 = @"?host?";
  }

  port = [serviceCopy port];

  v9 = [v3 stringWithFormat:@"<%@:%ld>", v7, port];

  return v9;
}

- (BOOL)_isServiceForCurrentAirPlayDevice:(id)device
{
  v18 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  [(AVBonjourServiceClient *)self airplayDeviceRef];
  v5 = MRPairedDeviceCopyDeviceUID();
  tXTRecordData = [deviceCopy TXTRecordData];

  v7 = [AVBonjourServiceClient dictionaryFromTXTRecordData:tXTRecordData];

  v8 = [v7 objectForKeyedSubscript:@"receiverPairingIdentity"];
  v9 = _avairlog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[AVBonjourServiceClient _isServiceForCurrentAirPlayDevice:]";
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s current device UID = %{public}@; service identifier = %{public}@", &v12, 0x20u);
  }

  v10 = [v5 isEqualToString:v8];
  return v10;
}

- (void)_updatedAirPlayPairedDeviceAsync
{
  v12 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = _avairlog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[AVBonjourServiceClient _updatedAirPlayPairedDeviceAsync]";
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %p getting device info...", buf, 0x16u);
  }

  MRMediaRemoteSetWantsOriginChangeNotifications();
  v4 = MEMORY[0x1E69E96A0];
  v5[1] = MEMORY[0x1E69E9820];
  v5[2] = 3221225472;
  v5[3] = __58__AVBonjourServiceClient__updatedAirPlayPairedDeviceAsync__block_invoke;
  v5[4] = &unk_1E72077E8;
  objc_copyWeak(&v6, &location);
  MRMediaRemoteGetActiveOrigin();

  MRMediaRemoteGetLocalOrigin();
  objc_copyWeak(v5, &location);
  MRMediaRemoteGetDeviceInfo();

  objc_destroyWeak(v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__AVBonjourServiceClient__updatedAirPlayPairedDeviceAsync__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v17 = *MEMORY[0x1E69E9840];
  v7 = _avairlog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"SUCCESS";
    *buf = 136315650;
    v12 = "[AVBonjourServiceClient _updatedAirPlayPairedDeviceAsync]_block_invoke";
    v13 = 2112;
    if (!v5)
    {
      v8 = @"FAIL";
    }

    v14 = v8;
    v15 = 2112;
    v16 = a3;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s getActiveOrigin: %@, %@", buf, 0x20u);
  }

  v9 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v10, (a1 + 32));
  MRMediaRemoteGetDeviceInfo();

  objc_destroyWeak(&v10);
}

void __58__AVBonjourServiceClient__updatedAirPlayPairedDeviceAsync__block_invoke_35(uint64_t a1, const char *a2, const char *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = _avairlog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v8)
    {
      v21 = 138543362;
      v22 = a3;
      v15 = "_updateAirPlayPairedDeviceAsync failed; error = %{public}@";
LABEL_13:
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, v15, &v21, 0xCu);
    }

LABEL_14:

    ValueAtIndex = 0;
    goto LABEL_22;
  }

  if (v8)
  {
    v21 = 136315138;
    v22 = "[AVBonjourServiceClient _updatedAirPlayPairedDeviceAsync]_block_invoke";
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s have device info and device. Getting more information...", &v21, 0xCu);
  }

  v9 = MRPairedDeviceCopyGroupedDevices();
  if (!v9)
  {
    v7 = _avairlog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = a2;
      v15 = "_updateAirPlayPairedDeviceAsync: no grouped devices: localDevice = %@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v10 = v9;
  if (CFArrayGetCount(v9) == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
    v12 = MEMORY[0x18CFF8250]();
    v13 = _avairlog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12 == 4)
    {
      if (v14)
      {
        v21 = 138412290;
        v22 = ValueAtIndex;
        _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "AppleTV pairedDeviceRef = %@", &v21, 0xCu);
      }

      goto LABEL_21;
    }

    if (v14)
    {
      v21 = 138412290;
      v22 = ValueAtIndex;
      v16 = "_updateAirPlayPairedDeviceAsync: first grouped device is not AppleTV (%@)";
      v17 = v13;
      v18 = 12;
      goto LABEL_19;
    }
  }

  else
  {
    v13 = _avairlog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      v16 = "_updateAirPlayPairedDeviceAsync: grouped devices count != 1";
      v17 = v13;
      v18 = 2;
LABEL_19:
      _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, v16, &v21, v18);
    }
  }

  ValueAtIndex = 0;
LABEL_21:

  CFRelease(v10);
LABEL_22:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAirplayDeviceRef:ValueAtIndex];
  v20 = _avairlog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[AVBonjourServiceClient _updatedAirPlayPairedDeviceAsync]_block_invoke";
    _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "%s done.", &v21, 0xCu);
  }
}

void __58__AVBonjourServiceClient__updatedAirPlayPairedDeviceAsync__block_invoke_32(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  v6 = _avairlog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[AVBonjourServiceClient _updatedAirPlayPairedDeviceAsync]_block_invoke";
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s have [active] device info. Getting more information...", &v18, 0xCu);
  }

  v7 = MRPairedDeviceCopyGroupedDevices();
  if (!v7)
  {
    WeakRetained = _avairlog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = a2;
      _os_log_impl(&dword_18B49C000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[active] no grouped devices; activeDevice = %@", &v18, 0xCu);
    }

    goto LABEL_15;
  }

  v8 = v7;
  if (CFArrayGetCount(v7) != 1)
  {
    v11 = _avairlog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      v15 = "[active] grouped devices count != 1";
      v16 = v11;
      v17 = 2;
LABEL_20:
      _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, v15, &v18, v17);
    }

LABEL_21:

    CFRelease(v8);
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
  v10 = MEMORY[0x18CFF8250]();
  v11 = _avairlog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 != 4)
  {
    if (v12)
    {
      v18 = 138412290;
      v19 = ValueAtIndex;
      v15 = "[active] first grouped device is not AppleTV (%@)";
      v16 = v11;
      v17 = 12;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v12)
  {
    v18 = 138412290;
    v19 = ValueAtIndex;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "[active] AppleTV pairedDeviceRef = %@", &v18, 0xCu);
  }

  CFRelease(v8);
  if (ValueAtIndex)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setAirplayDeviceRef:ValueAtIndex];
    v14 = _avairlog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[AVBonjourServiceClient _updatedAirPlayPairedDeviceAsync]_block_invoke";
      _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s [active] done.", &v18, 0xCu);
    }

LABEL_15:
  }
}

- (void)setAirplayDeviceRef:(void *)ref
{
  v25 = *MEMORY[0x1E69E9840];
  airplayDeviceRef = self->_airplayDeviceRef;
  if (airplayDeviceRef != ref)
  {
    if (ref)
    {
      CFRetain(ref);
    }

    self->_airplayDeviceRef = ref;
    if (airplayDeviceRef)
    {
      CFRelease(airplayDeviceRef);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"AVExternalDeviceAControllerirPlayDeviceRefDidChangeNotification" object:self];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_resolvedServices;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if ([(AVBonjourServiceClient *)self _isServiceForCurrentAirPlayDevice:v12])
          {
            v13 = _avairlog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *v19 = 0;
              _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "Found service for the current AirPlay device! Posting AVBonjourServiceClientDidResolveAirPlayDeviceNetServiceNotification..", v19, 2u);
            }

            v14 = [(AVBonjourServiceClient *)self airTransportSenderForNetService:v12];
            delegate = [(AVBonjourServiceClient *)self delegate];

            if (!delegate)
            {
              v16 = _avairlog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *v19 = 0;
                _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "delegate has not been set!", v19, 2u);
              }
            }

            delegate2 = [(AVBonjourServiceClient *)self delegate];
            [delegate2 didConnectToBonjourService:v12 channel:v14];

            defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter2 postNotificationName:@"AVBonjourServiceClientDidResolveAirPlayDeviceNetServiceNotification" object:self];
          }
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  serviceType = [(AVBonjourServiceClient *)self serviceType];
  delegate = [(AVBonjourServiceClient *)self delegate];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  delegate2 = [(AVBonjourServiceClient *)self delegate];
  v9 = [v3 stringWithFormat:@"<AVBonjourServiceClient %p (%@) delegate <%@ %p>>", self, serviceType, v7, delegate2];;

  return v9;
}

- (void)endDiscovery
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_discovering)
  {
    v3 = _avairlog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serviceType = self->_serviceType;
      v5 = 138543362;
      v6 = serviceType;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping discovery for %{public}@", &v5, 0xCu);
    }

    [(NSNetServiceBrowser *)self->_netServiceBrowser stop];
    self->_discovering = 0;
  }
}

- (void)beginDiscovery
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_discovering)
  {
    v3 = _avairlog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      serviceType = self->_serviceType;
      v5 = 138543362;
      v6 = serviceType;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "Beginning discovery for %{public}@...", &v5, 0xCu);
    }

    [(NSNetServiceBrowser *)self->_netServiceBrowser searchForServicesOfType:self->_serviceType inDomain:@"local"];
    self->_discovering = 1;
  }
}

- (void)dealloc
{
  [(AVBonjourServiceClient *)self endDiscovery];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_observeAirPlayVideoActiveDidChange];

  v4.receiver = self;
  v4.super_class = AVBonjourServiceClient;
  [(AVBonjourServiceClient *)&v4 dealloc];
}

- (AVBonjourServiceClient)initWithNetServiceType:(id)type
{
  typeCopy = type;
  v34.receiver = self;
  v34.super_class = AVBonjourServiceClient;
  v5 = [(AVBonjourServiceClient *)&v34 init];
  if (v5)
  {
    v6 = [typeCopy copy];
    serviceType = v5->_serviceType;
    v5->_serviceType = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    resolvingServices = v5->_resolvingServices;
    v5->_resolvingServices = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    resolvedServices = v5->_resolvedServices;
    v5->_resolvedServices = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    monitoringServices = v5->_monitoringServices;
    v5->_monitoringServices = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696AD78]);
    netServiceBrowser = v5->_netServiceBrowser;
    v5->_netServiceBrowser = v14;

    [(NSNetServiceBrowser *)v5->_netServiceBrowser setIncludesPeerToPeer:1];
    [(NSNetServiceBrowser *)v5->_netServiceBrowser setDelegate:v5];
    v16 = v5->_netServiceBrowser;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(NSNetServiceBrowser *)v16 scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    netServiceIdentifierToChannel = v5->_netServiceIdentifierToChannel;
    v5->_netServiceIdentifierToChannel = v18;

    objc_initWeak(&location, v5);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v22 = *MEMORY[0x1E6987440];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __49__AVBonjourServiceClient_initWithNetServiceType___block_invoke;
    v31[3] = &unk_1E7208898;
    objc_copyWeak(&v32, &location);
    v23 = [defaultCenter addObserverForName:v22 object:0 queue:mainQueue usingBlock:v31];
    observeAirPlayVideoActiveDidChange = v5->_observeAirPlayVideoActiveDidChange;
    v5->_observeAirPlayVideoActiveDidChange = v23;

    v25 = *MEMORY[0x1E69B0B70];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __49__AVBonjourServiceClient_initWithNetServiceType___block_invoke_16;
    v29[3] = &unk_1E7208898;
    objc_copyWeak(&v30, &location);
    v26 = [defaultCenter addObserverForName:v25 object:0 queue:mainQueue usingBlock:v29];
    observeMRDeviceInfoDidChange = v5->_observeMRDeviceInfoDidChange;
    v5->_observeMRDeviceInfoDidChange = v26;

    [(AVBonjourServiceClient *)v5 _updatedAirPlayPairedDeviceAsync];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __49__AVBonjourServiceClient_initWithNetServiceType___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _avairlog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AVBonjourServiceClient initWithNetServiceType:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s AVExternalPlaybackMonitorAirPlayVideoActiveDidChangeNotification received; note = %{public}@", &v6, 0x16u);
  }

  [WeakRetained _updatedAirPlayPairedDeviceAsync];
}

void __49__AVBonjourServiceClient_initWithNetServiceType___block_invoke_16(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = _avairlog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AVBonjourServiceClient initWithNetServiceType:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s kMRDeviceInfoDidChangeNotification received; note = %{public}@", &v6, 0x16u);
  }

  [WeakRetained _updatedAirPlayPairedDeviceAsync];
}

+ (id)dictionaryFromTXTRecordData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD70] dictionaryFromTXTRecordData:data];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyEnumerator = [v3 keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
          [dictionary setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return dictionary;
}

@end