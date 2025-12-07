@interface TVRCRapportDeviceQuery
- (BOOL)_shouldReportDevice:(id)device;
- (TVRCRapportDeviceQuery)init;
- (TVRCServiceDeviceQueryDelegate)delegate;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_disconnectAndRemoveDevice:(id)device;
- (void)_mdmConfigChanged:(id)changed;
- (void)_removeAllDevices;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation TVRCRapportDeviceQuery

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportQueryLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[TVRCRapportDeviceQuery dealloc]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  v5.receiver = self;
  v5.super_class = TVRCRapportDeviceQuery;
  [(TVRCRapportDeviceQuery *)&v5 dealloc];
}

- (TVRCRapportDeviceQuery)init
{
  v22 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TVRCRapportDeviceQuery;
  v2 = [(TVRCRapportDeviceQuery *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = _TVRCRapportQueryLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[TVRCRapportDeviceQuery init]";
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    v5 = objc_alloc_init(_TVRCRapportDeviceManager);
    deviceManager = v3->_deviceManager;
    v3->_deviceManager = v5;

    v7 = objc_alloc_init(_TVRCExpiringStore);
    expiringStore = v3->_expiringStore;
    v3->_expiringStore = v7;

    v9 = objc_alloc_init(MEMORY[0x277D02938]);
    systemMonitor = v3->_systemMonitor;
    v3->_systemMonitor = v9;

    objc_initWeak(buf, v3);
    v11 = v3->_systemMonitor;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __30__TVRCRapportDeviceQuery_init__block_invoke;
    v15[3] = &unk_279D826E8;
    objc_copyWeak(&v16, buf);
    [(CUSystemMonitor *)v11 setScreenStateChangedHandler:v15];
    [(CUSystemMonitor *)v3->_systemMonitor activateWithCompletion:&__block_literal_global_9];
    v12 = dispatch_queue_create("com.apple.TVRemoteCore.deviceQuery", 0);
    deviceQueryQueue = v3->_deviceQueryQueue;
    v3->_deviceQueryQueue = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __30__TVRCRapportDeviceQuery_init__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained systemMonitor];
    v4 = [v3 screenState];

    v6 = _TVRCRapportQueryLog(v5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      goto LABEL_17;
    }

    if (v4 <= 19)
    {
      if (!v4)
      {
        v7 = @"Unknown";
        goto LABEL_15;
      }

      if (v4 == 10)
      {
        v7 = @"Off";
        goto LABEL_15;
      }
    }

    else
    {
      switch(v4)
      {
        case 20:
          v7 = @"InactiveOn";
          goto LABEL_15;
        case 30:
          v7 = @"ActiveDimmed";
          goto LABEL_15;
        case 40:
          v7 = @"ActiveOn";
LABEL_15:
          v8 = 138543362;
          v9 = v7;
          _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "CUScreenState: %{public}@", &v8, 0xCu);
          goto LABEL_16;
      }
    }

    v7 = @"?";
    goto LABEL_15;
  }

LABEL_17:
}

void __30__TVRCRapportDeviceQuery_init__block_invoke_60(uint64_t a1)
{
  v1 = _TVRCRapportQueryLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_26CF7F000, v1, OS_LOG_TYPE_DEFAULT, "Screen state monitor activated", v2, 2u);
  }
}

- (void)start
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportQueryLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[TVRCRapportDeviceQuery start]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277D44160]);
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = v4;

  v6 = +[TVRCFeatures isAWDLEnabled];
  v7 = 0x4000000000404;
  if (v6)
  {
    v8 = _TVRCRapportQueryLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "AWDL is enabled", buf, 2u);
    }

    v7 = 0x4000000000406;
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient setControlFlags:v7];
  [(RPCompanionLinkClient *)self->_companionLinkClient setDispatchQueue:self->_deviceQueryQueue];
  [(RPCompanionLinkClient *)self->_companionLinkClient setFlags:1];
  [(RPCompanionLinkClient *)self->_companionLinkClient setRssiThreshold:-75];
  [(RPCompanionLinkClient *)self->_companionLinkClient tvrc_setAllowedTVs];
  objc_initWeak(buf, self);
  v9 = self->_companionLinkClient;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __31__TVRCRapportDeviceQuery_start__block_invoke;
  v20[3] = &unk_279D82FF8;
  objc_copyWeak(&v21, buf);
  [(RPCompanionLinkClient *)v9 setDeviceFoundHandler:v20];
  v10 = self->_companionLinkClient;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_66;
  v18[3] = &unk_279D83048;
  objc_copyWeak(&v19, buf);
  v18[4] = self;
  [(RPCompanionLinkClient *)v10 setDeviceLostHandler:v18];
  v11 = self->_companionLinkClient;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_69;
  v16[3] = &unk_279D83070;
  objc_copyWeak(&v17, buf);
  [(RPCompanionLinkClient *)v11 setDeviceChangedHandler:v16];
  v12 = self->_companionLinkClient;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_2;
  v14[3] = &unk_279D826E8;
  objc_copyWeak(&v15, buf);
  [(RPCompanionLinkClient *)v12 setInvalidationHandler:v14];
  [(RPCompanionLinkClient *)self->_companionLinkClient setInterruptionHandler:&__block_literal_global_76];
  [(RPCompanionLinkClient *)self->_companionLinkClient activateWithCompletion:&__block_literal_global_80];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__mdmConfigChanged_ name:@"TVRXManagedConfigManagerTVRemoteAllowedTVAdded" object:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

void __31__TVRCRapportDeviceQuery_start__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = _TVRCRapportQueryLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __31__TVRCRapportDeviceQuery_start__block_invoke_cold_1(v3, v6);
    }

    v7 = [v5 _shouldReportDevice:v3];
    if (v7)
    {
      v8 = _TVRCRapportQueryLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v30 = v3;
        v31 = 2114;
        v32 = v3;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Device should be added, device<%p> %{public}@", buf, 0x16u);
      }

      v9 = [v3 statusFlags];
      v10 = [v3 statusFlags];
      v11 = [v3 statusFlags];
      v12 = v11;
      v13 = _TVRCRapportQueryLog(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v3 name];
        v15 = [v3 effectiveIdentifier];
        *buf = 138544386;
        v30 = v14;
        v31 = 2114;
        v32 = v15;
        v33 = 1024;
        v34 = (v9 >> 1) & 1;
        v35 = 1024;
        v36 = (v10 >> 9) & 1;
        v37 = 1024;
        v38 = (v12 >> 2) & 1;
        _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Device details name:%{public}@, id:%{public}@, ble:%{BOOL}d, wifip2p:%{BOOL}d, wifi:%{BOOL}d ", buf, 0x28u);
      }

      v16 = [v5 deviceManager];
      v17 = [v16 _identifierForDevice:v3];

      v18 = [v5[2] containsIdentifier:v17];
      if (v18)
      {
        v19 = _TVRCRapportQueryLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v3;
          _os_log_impl(&dword_26CF7F000, v19, OS_LOG_TYPE_DEFAULT, "Device expired, but was found again, device=%@", buf, 0xCu);
        }

        [v5[2] removeIdentifier:v17];
        v20 = [v5 deviceManager];
        v21 = [v20 deviceImplForLinkDevice:v3];

        v22 = [v21 deviceWrapper];

        if (v22)
        {
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_64;
          v26[3] = &unk_279D82648;
          v27 = v21;
          v28 = v3;
          v24 = v21;
          dispatch_async(MEMORY[0x277D85CD0], v26);

LABEL_18:
          goto LABEL_19;
        }

        v25 = _TVRCRapportQueryLog(v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          __31__TVRCRapportDeviceQuery_start__block_invoke_cold_2(v25);
        }
      }

      [v5 _deviceFound:v3];
      goto LABEL_18;
    }
  }

LABEL_19:
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_64(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deviceWrapper];
  v3 = [v2 device];
  v4 = *(a1 + 40);

  if (v3 != v4)
  {
    v6 = [*(a1 + 32) deviceWrapper];
    [v6 updateWithDevice:*(a1 + 40)];
  }

  v7 = _TVRCRapportQueryLog(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) deviceWrapper];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Reconnecting: %@", &v10, 0xCu);
  }

  v9 = [*(a1 + 32) deviceWrapper];
  [v9 reconnect];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_66(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _shouldReportDevice:v3];
    if (v6)
    {
      v7 = _TVRCRapportQueryLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v3;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Device should be removed, device=%{public}@", buf, 0xCu);
      }

      v8 = [v5 deviceManager];
      v9 = [v8 _identifierForDevice:v3];

      v10 = [v5 deviceManager];
      v11 = [v10 deviceImplForLinkDevice:v3];

      v12 = [v11 deviceWrapper];
      v13 = [v12 connected];

      if (v13)
      {
        v15 = dispatch_time(0, 2000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_67;
        block[3] = &unk_279D83020;
        v16 = v3;
        v17 = *(a1 + 32);
        v20 = v16;
        v21 = v17;
        v22 = v11;
        v23 = v5;
        v24 = v9;
        dispatch_after(v15, MEMORY[0x277D85CD0], block);
      }

      else
      {
        v18 = _TVRCRapportQueryLog(v14);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Device wasn't connected so we won't try to reconnect", buf, 2u);
        }

        [v5 _deviceLost:v3];
      }
    }
  }
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_67(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statusFlags];
  if ((v2 & 0x200) != 0 || (v2 = [*(a1 + 32) statusFlags], (v2 & 2) != 0) || (objc_msgSend(*(a1 + 40), "systemMonitor"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "screenState"), v3, v4 == 40))
  {
    v5 = _TVRCRapportQueryLog(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 48) deviceWrapper];
      v7 = *(a1 + 32);
      *buf = 134218498;
      v16 = 0x401C000000000000;
      v17 = 2114;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Device was lost, wait to see if it returns, timeout=%f, deviceWrapper=%{public}@, device=%{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, *(a1 + 56));
    v8 = *(*(a1 + 56) + 16);
    v9 = *(a1 + 64);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_68;
    v12[3] = &unk_279D82FD0;
    objc_copyWeak(&v14, buf);
    v13 = *(a1 + 32);
    [v8 addIdentifier:v9 withExpiration:v12 completion:7.0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = _TVRCRapportQueryLog(v2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Device is not connected over Infra and screen is not active, ignoring the device lost notification - device: %{public}@", buf, 0xCu);
    }
  }
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_68(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _TVRCRapportQueryLog(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Device was not found again, device=%{public}@", &v6, 0xCu);
    }

    [v3 _deviceLost:*(a1 + 32)];
  }
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_69(uint64_t a1, void *a2, char a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && [WeakRetained _shouldReportDevice:v5])
  {
    v8 = [v7 deviceManager];
    v9 = [v8 deviceImplForLinkDevice:v5];

    v11 = _TVRCRapportQueryLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __31__TVRCRapportDeviceQuery_start__block_invoke_69_cold_1(v5, v9, v11);
    }

    v12 = [v9 deviceWrapper];

    if (v12)
    {
      v14 = _TVRCRapportQueryLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = "yes";
        if ((a3 & 2) != 0)
        {
          v16 = "yes";
        }

        else
        {
          v16 = "no";
        }

        *buf = 138543874;
        v25 = v5;
        v27 = v16;
        v26 = 2080;
        if ((a3 & 0x10) == 0)
        {
          v15 = "no";
        }

        v28 = 2080;
        v29 = v15;
        _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, "Device changed: %{public}@ attributesChanged :%s nameChanged: %s", buf, 0x20u);
      }

      if ((a3 & 0x12) != 0)
      {
        v17 = [v9 deviceWrapper];
        v18 = [v17 isPaired];

        if ((v18 & 1) == 0)
        {
          v20 = _TVRCRapportQueryLog(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v25 = v5;
            _os_log_impl(&dword_26CF7F000, v20, OS_LOG_TYPE_DEFAULT, "Updating UnAuth rapport device: %{public}@", buf, 0xCu);
          }
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __31__TVRCRapportDeviceQuery_start__block_invoke_72;
        v21[3] = &unk_279D82648;
        v22 = v9;
        v23 = v5;
        dispatch_async(MEMORY[0x277D85CD0], v21);
      }
    }
  }
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_72(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceWrapper];
  [v2 updateWithDevice:*(a1 + 40)];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_2(uint64_t a1)
{
  v2 = _TVRCRapportQueryLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Rapport discovery companionLinkClient connection invalidated. Removing all devices", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeAllDevices];
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_74(uint64_t a1)
{
  v1 = _TVRCRapportQueryLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_26CF7F000, v1, OS_LOG_TYPE_DEFAULT, "Rapport discovery companionLinkClient connection interrupted", v2, 2u);
  }
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_77(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _TVRCRapportQueryLog(v2);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __31__TVRCRapportDeviceQuery_start__block_invoke_77_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Rapport discovery client activated. Searching for Rapport devices.", v5, 2u);
  }
}

- (void)stop
{
  v3 = _TVRCRapportQueryLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping rapport query", v8, 2u);
  }

  expiringStore = self->_expiringStore;
  self->_expiringStore = 0;

  deviceManager = self->_deviceManager;
  self->_deviceManager = 0;

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"TVRXManagedConfigManagerTVRemoteAllowedTVAdded" object:0];
}

- (void)_deviceFound:(id)found
{
  v12 = *MEMORY[0x277D85DE8];
  foundCopy = found;
  v5 = _TVRCRapportQueryLog(foundCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[TVRCRapportDeviceQuery _deviceFound:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __39__TVRCRapportDeviceQuery__deviceFound___block_invoke;
  activity_block[3] = &unk_279D83098;
  activity_block[4] = self;
  v8 = foundCopy;
  v6 = foundCopy;
  objc_copyWeak(&v9, buf);
  _os_activity_initiate(&dword_26CF7F000, "RPCompanionLinkDevice device discovered", OS_ACTIVITY_FLAG_DETACHED, activity_block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(buf);
}

void __39__TVRCRapportDeviceQuery__deviceFound___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1[4] + 1);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [a1[4] deviceManager];
    v5 = [v4 createOrUpdateDeviceImplForLinkDevice:a1[5]];

    if (v5)
    {
      v7 = _TVRCRapportQueryLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        *buf = 138543362;
        v13 = v8;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Informing delegate device was added: %{public}@", buf, 0xCu);
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __39__TVRCRapportDeviceQuery__deviceFound___block_invoke_86;
      v9[3] = &unk_279D82FD0;
      objc_copyWeak(&v11, a1 + 6);
      v10 = a1[5];
      dispatch_async(MEMORY[0x277D85CD0], v9);

      objc_destroyWeak(&v11);
    }
  }
}

void __39__TVRCRapportDeviceQuery__deviceFound___block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = [v6 deviceManager];
    v5 = [v4 deviceImplForLinkDevice:*(a1 + 32)];
    [v3 addedDevice:v5];

    WeakRetained = v6;
  }
}

- (void)_deviceLost:(id)lost
{
  v13 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v5 = _TVRCRapportQueryLog(lostCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TVRCRapportDeviceQuery _deviceLost:]";
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __38__TVRCRapportDeviceQuery__deviceLost___block_invoke;
  activity_block[3] = &unk_279D83098;
  v8 = lostCopy;
  selfCopy = self;
  v6 = lostCopy;
  objc_copyWeak(&v10, buf);
  _os_activity_initiate(&dword_26CF7F000, "RPCompanionLinkDevice device lost", OS_ACTIVITY_FLAG_DETACHED, activity_block);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

void __38__TVRCRapportDeviceQuery__deviceLost___block_invoke(id *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = _TVRCRapportQueryLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    *v40 = v3;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Informing delegate device was lost: %{public}@", buf, 0xCu);
  }

  v4 = a1 + 5;
  WeakRetained = objc_loadWeakRetained(a1[5] + 1);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [a1[5] deviceManager];
    v8 = a1 + 4;
    v9 = [v7 deviceImplForLinkDevice:a1[4]];

    v11 = _TVRCRapportQueryLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v40 = v9;
      _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to remove device impl: %{public}@", buf, 0xCu);
    }

    if (!v9 || ([v9 deviceWrapper], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v14))
    {
      v22 = _TVRCRapportQueryLog(v12);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_cold_2(v8, v4, v22);
      }
    }

    else
    {
      v15 = [*v8 flags];
      v16 = [v9 isPaired];
      v17 = v16;
      v18 = _TVRCRapportQueryLog(v16);
      v19 = v15 & 1;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v40 = v19;
        *&v40[4] = 1024;
        *&v40[6] = v17;
        _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "isUnAuthDeviceRemoved:%d isCurrentDeviceAuthenticated:%d", buf, 0xEu);
      }

      if ((v19 & v17) == 1)
      {
        v21 = _TVRCRapportQueryLog(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CF7F000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring unauth device removal that is lost because we are now using authenticated device", buf, 2u);
        }
      }

      else
      {
        v23 = [v9 connectionState];
        if (v23)
        {
          v24 = _TVRCRapportQueryLog(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_cold_1(v9, v24);
          }

          v25 = [v9 deviceWrapper];
          v26 = TVRCMakeError(103, 0);
          [v25 disconnectWithError:v26];
        }

        v33 = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_89;
        v36 = &unk_279D82FD0;
        objc_copyWeak(&v38, a1 + 6);
        v37 = v9;
        dispatch_async(MEMORY[0x277D85CD0], &v33);
        v28 = _TVRCRapportQueryLog(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *v8;
          v30 = [*v4 deviceManager];
          v31 = [v30 deviceImplMap];
          *buf = 138543618;
          *v40 = v29;
          *&v40[8] = 2112;
          v41 = v31;
          _os_log_impl(&dword_26CF7F000, v28, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ from dictionary: %@", buf, 0x16u);
        }

        v32 = [*v4 deviceManager];
        [v32 removeDeviceImplForLinkDevice:*v8];

        objc_destroyWeak(&v38);
      }
    }
  }
}

void __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 removedDevice:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_removeAllDevices
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportQueryLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[TVRCRapportDeviceQuery _removeAllDevices]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TVRCRapportDeviceQuery__removeAllDevices__block_invoke;
  block[3] = &unk_279D826E8;
  objc_copyWeak(&v7, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  deviceManager = [(TVRCRapportDeviceQuery *)self deviceManager];
  deviceImplMap = [deviceManager deviceImplMap];
  [deviceImplMap removeAllObjects];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __43__TVRCRapportDeviceQuery__removeAllDevices__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [WeakRetained deviceManager];
    v4 = [v3 deviceImplMap];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = _TVRCRapportQueryLog(v6);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v18 = v10;
            _os_log_impl(&dword_26CF7F000, v11, OS_LOG_TYPE_DEFAULT, "Informing delegate to remove device=%{public}@", buf, 0xCu);
          }

          v12 = [v2 delegate];
          [v12 removedDevice:v10];

          ++v9;
        }

        while (v7 != v9);
        v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
        v7 = v6;
      }

      while (v6);
    }
  }
}

- (BOOL)_shouldReportDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  model = [deviceCopy model];
  v5 = [model containsString:@"AppleTV"];

  statusFlags = [deviceCopy statusFlags];
  v7 = statusFlags & 0x800;
  if (!v5 || (statusFlags & 0x800) == 0)
  {
    v13 = _TVRCRapportQueryLog(statusFlags);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 67109634;
      *v16 = v5;
      *&v16[4] = 1024;
      *&v16[6] = v7 >> 11;
      v17 = 2112;
      v18 = deviceCopy;
      _os_log_debug_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEBUG, "Device will not be shown because isAppleTV=%d, supportsRemote=%d for device:%@", &v15, 0x18u);
    }

    goto LABEL_9;
  }

  v8 = +[TVRXManagedConfigManager sharedInstance];
  name = [deviceCopy name];
  v10 = [v8 allowedDeviceWithName:name];

  if ((v10 & 1) == 0)
  {
    v13 = _TVRCRapportQueryLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      *v16 = deviceCopy;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "Device will not be shown because it's now allowed by MDM! %{public}@", &v15, 0xCu);
    }

LABEL_9:

    v12 = 0;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

- (void)_disconnectAndRemoveDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceWrapper = [deviceCopy deviceWrapper];

  if (deviceWrapper)
  {
    deviceManager = [(TVRCRapportDeviceQuery *)self deviceManager];
    deviceWrapper2 = [deviceCopy deviceWrapper];
    device = [deviceWrapper2 device];
    [deviceManager removeDeviceImplForLinkDevice:device];

    v10 = _TVRCRapportQueryLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      deviceWrapper3 = [deviceCopy deviceWrapper];
      *buf = 138543362;
      v16 = deviceWrapper3;
      _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Telling device to disconnect, device=%{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__TVRCRapportDeviceQuery__disconnectAndRemoveDevice___block_invoke;
    v12[3] = &unk_279D82FD0;
    objc_copyWeak(&v14, buf);
    v13 = deviceCopy;
    dispatch_async(MEMORY[0x277D85CD0], v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __53__TVRCRapportDeviceQuery__disconnectAndRemoveDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 removedDevice:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_mdmConfigChanged:(id)changed
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = _TVRCRapportQueryLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "MDM config changed. Disconnecting non-approved devices.", buf, 2u);
  }

  v5 = +[TVRXManagedConfigManager sharedInstance];
  isManagedConfigProfileInstalled = [v5 isManagedConfigProfileInstalled];

  if (isManagedConfigProfileInstalled)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    deviceManager = [(TVRCRapportDeviceQuery *)self deviceManager];
    deviceImplMap = [deviceManager deviceImplMap];
    allValues = [deviceImplMap allValues];

    v10 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          deviceWrapper = [v14 deviceWrapper];
          device = [deviceWrapper device];
          v17 = [(TVRCRapportDeviceQuery *)self _shouldReportDevice:device];

          if (!v17)
          {
            [(TVRCRapportDeviceQuery *)self _disconnectAndRemoveDevice:v14];
          }
        }

        v11 = [allValues countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }
}

- (TVRCServiceDeviceQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218242;
  v3 = a1;
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_DEBUG, "Device found, device<%p> %{public}@", &v2, 0x16u);
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_69_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = [a2 deviceWrapper];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_26CF7F000, a3, OS_LOG_TYPE_DEBUG, "Device changed, device=%{public}@, wrapper=%@", v5, 0x16u);
}

void __31__TVRCRapportDeviceQuery_start__block_invoke_77_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Rapport discovery companionLinkClient failed to activate. Error - %{public}@", &v2, 0xCu);
}

void __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = TVRCDeviceConnectionStateDescription([a1 connectionState]);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Device was %{public}@ while lost, sending TVRCErrorCodeDeviceNotFoundError", &v4, 0xCu);
}

void __38__TVRCRapportDeviceQuery__deviceLost___block_invoke_cold_2(id *a1, id *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*a1 identifier];
  v6 = [*a2 deviceManager];
  v7 = [v6 deviceImplMap];
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_26CF7F000, a3, OS_LOG_TYPE_ERROR, "No deviceWrapper found for device id:%{public}@ in mapping %{public}@", &v8, 0x16u);
}

@end