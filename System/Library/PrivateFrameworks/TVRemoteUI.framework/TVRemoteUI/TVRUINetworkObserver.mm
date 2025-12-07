@interface TVRUINetworkObserver
- (BOOL)isBluetoothAvailable;
- (BOOL)isNetworkReachable;
- (TVRUINetworkObserver)init;
- (void)_updateBluetoothAvailability:(BOOL)availability;
- (void)_wifiStateUpdatedWithOldState:(int64_t)state newState:(int64_t)newState;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation TVRUINetworkObserver

- (TVRUINetworkObserver)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TVRUINetworkObserver;
  v2 = [(TVRUINetworkObserver *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = _TVRUINetworkObserverLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = @"com.apple.tvremote.network_observer";
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Setting up %@ background queue", buf, 0xCu);
    }

    v5 = dispatch_queue_create([@"com.apple.tvremote.network_observer" UTF8String], 0);
    queue = v3->_queue;
    v3->_queue = v5;
  }

  return v3;
}

- (void)dealloc
{
  wifiStateMonitor = self->_wifiStateMonitor;
  if (wifiStateMonitor)
  {
    [(WFWiFiStateMonitor *)wifiStateMonitor stopMonitoring];
    v4 = self->_wifiStateMonitor;
    self->_wifiStateMonitor = 0;
  }

  cbController = self->_cbController;
  if (cbController)
  {
    [(CBController *)cbController invalidate];
    v6 = self->_cbController;
    self->_cbController = 0;
  }

  v7.receiver = self;
  v7.super_class = TVRUINetworkObserver;
  [(TVRUINetworkObserver *)&v7 dealloc];
}

- (void)startObserving
{
  objc_initWeak(&location, self);
  queue = [(TVRUINetworkObserver *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TVRUINetworkObserver_startObserving__block_invoke;
  block[3] = &unk_279D87F18;
  objc_copyWeak(&v15, &location);
  dispatch_async(queue, block);

  cbController = [(TVRUINetworkObserver *)self cbController];

  if (!cbController)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBE010]);
    [(TVRUINetworkObserver *)self setCbController:v5];

    queue2 = [(TVRUINetworkObserver *)self queue];
    cbController2 = [(TVRUINetworkObserver *)self cbController];
    [cbController2 setDispatchQueue:queue2];

    cbController3 = [(TVRUINetworkObserver *)self cbController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__TVRUINetworkObserver_startObserving__block_invoke_2;
    v12[3] = &unk_279D88BB8;
    objc_copyWeak(&v13, &location);
    [cbController3 activateWithCompletion:v12];

    v10 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v11, &location);
    v9 = [(TVRUINetworkObserver *)self cbController:v10];
    [v9 setBluetoothStateChangedHandler:&v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __38__TVRUINetworkObserver_startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _TVRUINetworkObserverLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Observing Wi-Fi and Bluetooth changes", buf, 2u);
    }

    v5 = [v3 wifiClient];

    if (!v5)
    {
      if (objc_opt_class())
      {
        v6 = objc_alloc_init(MEMORY[0x277D7B958]);
        [v3 setWifiClient:v6];
      }

      else
      {
        v6 = _TVRUINetworkObserverLog(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __38__TVRUINetworkObserver_startObserving__block_invoke_cold_1(v6);
        }
      }
    }

    v7 = [v3 wifiStateMonitor];

    if (!v7)
    {
      v9 = _TVRUINetworkObserverLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Monitoring Wi-Fi state", buf, 2u);
      }

      v10 = objc_alloc(MEMORY[0x277D7B970]);
      v11 = [v3 wifiClient];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __38__TVRUINetworkObserver_startObserving__block_invoke_4;
      v13[3] = &unk_279D88B90;
      objc_copyWeak(&v14, (a1 + 32));
      v12 = [v10 initWithClient:v11 handler:v13];
      [v3 setWifiStateMonitor:v12];

      objc_destroyWeak(&v14);
    }
  }
}

void __38__TVRUINetworkObserver_startObserving__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _wifiStateUpdatedWithOldState:a2 newState:a3];
}

void __38__TVRUINetworkObserver_startObserving__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _TVRUINetworkObserverLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Monitoring Bluetooth state", v7, 2u);
  }

  if (v3)
  {
    v6 = _TVRUINetworkObserverLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __38__TVRUINetworkObserver_startObserving__block_invoke_2_cold_1(v3, v6);
    }
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _updateBluetoothAvailability:[v6 isBluetoothAvailable]];
  }
}

void __38__TVRUINetworkObserver_startObserving__block_invoke_9(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained cbController];
    v4 = [v3 bluetoothState];

    v6 = _TVRUINetworkObserverLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Bluetooth state = %ld", &v7, 0xCu);
    }

    if (v4 != 1)
    {
      [v2 _updateBluetoothAvailability:{objc_msgSend(v2, "isBluetoothAvailable")}];
    }
  }
}

- (void)stopObserving
{
  queue = [(TVRUINetworkObserver *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TVRUINetworkObserver_stopObserving__block_invoke;
  block[3] = &unk_279D87C20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __37__TVRUINetworkObserver_stopObserving__block_invoke(uint64_t a1)
{
  v2 = _TVRUINetworkObserverLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Stop observing Wi-Fi and Bluetooth changes", v6, 2u);
  }

  v3 = [*(a1 + 32) wifiStateMonitor];
  [v3 stopMonitoring];

  [*(a1 + 32) setWifiStateMonitor:0];
  v4 = [*(a1 + 32) cbController];
  [v4 invalidate];

  return [*(a1 + 32) setCbController:0];
}

- (BOOL)isNetworkReachable
{
  v13 = *MEMORY[0x277D85DE8];
  wifiStateMonitor = [(TVRUINetworkObserver *)self wifiStateMonitor];

  if (wifiStateMonitor)
  {
    state = [(WFWiFiStateMonitor *)self->_wifiStateMonitor state];
    LODWORD(wifiStateMonitor) = state == 4;
    v5 = _TVRUINetworkObserverLog(state);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"not associated";
      if (state == 4)
      {
        v6 = @"associated";
      }

      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "Wi-Fi is %@", &v11, 0xCu);
    }
  }

  isBluetoothAvailable = +[TVRUIFeatures isAWDLEnabled];
  if (isBluetoothAvailable)
  {
    isBluetoothAvailable = [(TVRUINetworkObserver *)self isBluetoothAvailable];
    LODWORD(wifiStateMonitor) = wifiStateMonitor | isBluetoothAvailable;
  }

  v8 = _TVRUINetworkObserverLog(isBluetoothAvailable);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"unreachable";
    if (wifiStateMonitor)
    {
      v9 = @"reachable";
    }

    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Network is %@", &v11, 0xCu);
  }

  return wifiStateMonitor;
}

- (BOOL)isBluetoothAvailable
{
  v12 = *MEMORY[0x277D85DE8];
  cbController = [(TVRUINetworkObserver *)self cbController];

  if (cbController)
  {
    cbController2 = [(TVRUINetworkObserver *)self cbController];
    bluetoothState = [cbController2 bluetoothState];

    v8 = bluetoothState == 5 || bluetoothState == 10;
    v9 = _TVRUINetworkObserverLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v8;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Bluetooth available = %d", v11, 8u);
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_wifiStateUpdatedWithOldState:(int64_t)state newState:(int64_t)newState
{
  queue = [(TVRUINetworkObserver *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TVRUINetworkObserver__wifiStateUpdatedWithOldState_newState___block_invoke;
  block[3] = &unk_279D88C08;
  block[5] = newState;
  block[6] = state;
  block[4] = self;
  dispatch_async(queue, block);
}

void __63__TVRUINetworkObserver__wifiStateUpdatedWithOldState_newState___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) != *(a1 + 48))
  {
    v2 = _TVRUINetworkObserverLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WFWiFiStateMonitorStringForState();
      v4 = WFWiFiStateMonitorStringForState();
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_26CFEB000, v2, OS_LOG_TYPE_DEFAULT, "Wi-Fi %@ -> %@", buf, 0x16u);
    }

    v5 = *(a1 + 40) - 2;
    if (v5 > 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_26D0D2748[v5];
    }

    v7 = [*(a1 + 32) wifiStateUpdatedHandler];

    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__TVRUINetworkObserver__wifiStateUpdatedWithOldState_newState___block_invoke_23;
      v8[3] = &unk_279D88BE0;
      v8[4] = *(a1 + 32);
      v8[5] = v6;
      dispatch_async(MEMORY[0x277D85CD0], v8);
    }
  }
}

void __63__TVRUINetworkObserver__wifiStateUpdatedWithOldState_newState___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiStateUpdatedHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)_updateBluetoothAvailability:(BOOL)availability
{
  availabilityCopy = availability;
  v13 = *MEMORY[0x277D85DE8];
  bluetoothAvailabilityDidUpdate = [(TVRUINetworkObserver *)self bluetoothAvailabilityDidUpdate];

  if (bluetoothAvailabilityDidUpdate)
  {
    v7 = _TVRUINetworkObserverLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"unavailable";
      if (availabilityCopy)
      {
        v8 = @"available";
      }

      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "Bluetooth availability changed to %@", buf, 0xCu);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__TVRUINetworkObserver__updateBluetoothAvailability___block_invoke;
    v9[3] = &unk_279D878A8;
    v9[4] = self;
    v10 = availabilityCopy;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __53__TVRUINetworkObserver__updateBluetoothAvailability___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bluetoothAvailabilityDidUpdate];
  v2[2](v2, *(a1 + 40));
}

void __38__TVRUINetworkObserver_startObserving__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "Failed to activate BLE Controller: %{public}@", &v2, 0xCu);
}

@end