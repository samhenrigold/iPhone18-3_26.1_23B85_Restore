@interface TVRCSiriRemoteFindingManager
- (TVRCRPCompanionLinkClientWrapper)wrapper;
- (TVRCSiriRemoteFindingManager)initWithCompanionLinkClientWrapper:(id)wrapper;
- (id)_cachedRemoteInfoForRPDevice:(id)device;
- (void)_fetchPairedRemoteInfoAndStartMonitoring;
- (void)_saveRemoteInfoToUserDefaultsIfNeeded;
- (void)_startHeartbeatTimer;
- (void)_startMonitoringPairedRemoteInfo;
- (void)_stopHeartbeatTimer;
- (void)_updatePairedRemoteInfo:(id)info;
- (void)dealloc;
- (void)enableFindingSession:(BOOL)session;
- (void)setPairedRemoteInfo:(id)info;
@end

@implementation TVRCSiriRemoteFindingManager

- (TVRCSiriRemoteFindingManager)initWithCompanionLinkClientWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v8.receiver = self;
  v8.super_class = TVRCSiriRemoteFindingManager;
  v5 = [(TVRCSiriRemoteFindingManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wrapper, wrapperCopy);
    [(TVRCSiriRemoteFindingManager *)v6 _fetchPairedRemoteInfoAndStartMonitoring];
  }

  return v6;
}

- (void)enableFindingSession:(BOOL)session
{
  sessionCopy = session;
  v38 = *MEMORY[0x277D85DE8];
  pairedRemoteInfo = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];

  if (pairedRemoteInfo)
  {
    objc_initWeak(&location, self);
    pairedRemoteInfo2 = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
    connected = [pairedRemoteInfo2 connected];

    if (connected)
    {
      v10 = _TVRCRapportLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"stop";
        if (sessionCopy)
        {
          v11 = @"start";
        }

        *buf = 138412290;
        v37 = v11;
        _os_log_impl(&dword_26CF7F000, v10, OS_LOG_TYPE_DEFAULT, "Remote is connected. Informing TV to %@ finding session", buf, 0xCu);
      }

      v12 = @"NO";
      if (sessionCopy)
      {
        v12 = @"YES";
      }

      v13 = v12;
      wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
      v34 = @"FindingModeEnabledKey";
      v35 = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke;
      v30[3] = &unk_279D82710;
      v32 = sessionCopy;
      objc_copyWeak(&v31, &location);
      [wrapper sendEvent:@"ToggleFindingMode" options:v15 response:v30];

      objc_destroyWeak(&v31);
    }

    else
    {
      pairedRemoteInfo3 = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
      connected2 = [pairedRemoteInfo3 connected];

      if ((connected2 & 1) == 0)
      {
        v20 = _TVRCRapportLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CF7F000, v20, OS_LOG_TYPE_DEFAULT, "Remote is disconnected. Using BLE Connection Manager", buf, 2u);
        }

        v21 = +[TVRCSiriRemoteConnectionManager sharedInstance];
        connectionManager = self->_connectionManager;
        self->_connectionManager = v21;

        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke_18;
        v28 = &unk_279D82738;
        objc_copyWeak(&v29, &location);
        [(TVRCSiriRemoteConnectionManager *)self->_connectionManager setFindingSessionStateChangedHandler:&v25];
        v23 = self->_connectionManager;
        v24 = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo:v25];
        [(TVRCSiriRemoteConnectionManager *)v23 enableFastFindMy:sessionCopy forRemoteWithInfo:v24];

        objc_destroyWeak(&v29);
      }
    }

    if (sessionCopy)
    {
      [(TVRCSiriRemoteFindingManager *)self _startHeartbeatTimer];
    }

    else
    {
      [(TVRCSiriRemoteFindingManager *)self _stopHeartbeatTimer];
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v16 = _TVRCRapportLog(v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [TVRCSiriRemoteFindingManager enableFindingSession:v16];
    }
  }
}

void __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _TVRCRapportLog(v5);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke_cold_1(a1, v5, v7);
    }

    v8 = 3;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v9 = @"started";
      }

      else
      {
        v9 = @"stopped";
      }

      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully %{public}@ finding session", &v12, 0xCu);
    }

    v8 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained wrapper];
  [v11 _updateSiriRemoteFindingState:v8];
}

void __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke_18(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained wrapper];
  [v3 _updateSiriRemoteFindingState:a2];
}

- (void)_startHeartbeatTimer
{
  v15 = *MEMORY[0x277D85DE8];
  heartbeatTimer = self->_heartbeatTimer;
  v4 = _TVRCRapportLog(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (heartbeatTimer)
  {
    if (v5)
    {
      pairedRemoteInfo = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
      name = [pairedRemoteInfo name];
      *buf = 138543362;
      v14 = name;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Skipping. Timer already exists for remote: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      pairedRemoteInfo2 = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
      name2 = [pairedRemoteInfo2 name];
      *buf = 138543362;
      v14 = name2;
      _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Starting heartbeat timer for remote: %{public}@", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__TVRCSiriRemoteFindingManager__startHeartbeatTimer__block_invoke;
    v12[3] = &unk_279D82760;
    v12[4] = self;
    v10 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v12 block:540.0];
    v11 = self->_heartbeatTimer;
    self->_heartbeatTimer = v10;
  }
}

uint64_t __52__TVRCSiriRemoteFindingManager__startHeartbeatTimer__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _TVRCRapportLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) pairedRemoteInfo];
    v4 = [v3 name];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Heartbeat timer fired for remote: %{public}@", &v6, 0xCu);
  }

  return [*(a1 + 32) enableFindingSession:1];
}

- (void)_stopHeartbeatTimer
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pairedRemoteInfo = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
    name = [pairedRemoteInfo name];
    pairedRemoteInfo2 = [(TVRCSiriRemoteFindingManager *)self pairedRemoteInfo];
    tvName = [pairedRemoteInfo2 tvName];
    v9 = 138543618;
    v10 = name;
    v11 = 2114;
    v12 = tvName;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping heartbeat timer for remote: %{public}@ tv: %{public}@", &v9, 0x16u);
  }

  [(NSTimer *)self->_heartbeatTimer invalidate];
  heartbeatTimer = self->_heartbeatTimer;
  self->_heartbeatTimer = 0;
}

- (void)dealloc
{
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Stopped monitoring PairedRemoteInfo", buf, 2u);
  }

  connectionManager = [(TVRCSiriRemoteFindingManager *)self connectionManager];
  [connectionManager teardown];

  wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
  [wrapper deregisterEvent:@"PushSiriRemoteInfo"];

  heartbeatTimer = [(TVRCSiriRemoteFindingManager *)self heartbeatTimer];
  [heartbeatTimer invalidate];

  heartbeatTimer = self->_heartbeatTimer;
  self->_heartbeatTimer = 0;

  v8.receiver = self;
  v8.super_class = TVRCSiriRemoteFindingManager;
  [(TVRCSiriRemoteFindingManager *)&v8 dealloc];
}

- (void)setPairedRemoteInfo:(id)info
{
  infoCopy = info;
  if (self->_pairedRemoteInfo != infoCopy)
  {
    v6 = infoCopy;
    [(TVRCSiriRemoteFindingManager *)self willChangeValueForKey:@"pairedRemoteInfo"];
    objc_storeStrong(&self->_pairedRemoteInfo, info);
    [(TVRCSiriRemoteFindingManager *)self didChangeValueForKey:@"pairedRemoteInfo"];
    infoCopy = v6;
  }
}

- (void)_fetchPairedRemoteInfoAndStartMonitoring
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[TVRCSiriRemoteFindingManager _fetchPairedRemoteInfoAndStartMonitoring]";
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__TVRCSiriRemoteFindingManager__fetchPairedRemoteInfoAndStartMonitoring__block_invoke;
  v5[3] = &unk_279D82788;
  objc_copyWeak(&v6, buf);
  [wrapper sendEvent:@"FetchSiriRemoteInfo" options:MEMORY[0x277CBEC10] response:v5];

  [(TVRCSiriRemoteFindingManager *)self _startMonitoringPairedRemoteInfo];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __72__TVRCSiriRemoteFindingManager__fetchPairedRemoteInfoAndStartMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updatePairedRemoteInfo:v5];
  }
}

- (void)_startMonitoringPairedRemoteInfo
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = _TVRCRapportLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Start monitoring PairedRemoteInfo", &buf, 2u);
  }

  v9 = *MEMORY[0x277D44280];
  v10[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  objc_initWeak(&buf, self);
  wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__TVRCSiriRemoteFindingManager__startMonitoringPairedRemoteInfo__block_invoke;
  v6[3] = &unk_279D827B0;
  objc_copyWeak(&v7, &buf);
  [wrapper registerEvent:@"PushSiriRemoteInfo" options:v4 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&buf);
}

void __64__TVRCSiriRemoteFindingManager__startMonitoringPairedRemoteInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _TVRCRapportLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "Received event response: %{public}@, options %{public}@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updatePairedRemoteInfo:v5];
  }
}

- (id)_cachedRemoteInfoForRPDevice:(id)device
{
  deviceCopy = device;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  identifier = [deviceCopy identifier];
  v6 = [standardUserDefaults dataForKey:identifier];

  if (v6 || ([deviceCopy idsDeviceIdentifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(standardUserDefaults, "dataForKey:", v8), v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    v9 = _TVRCRapportLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_26CF7F000, v9, OS_LOG_TYPE_DEFAULT, "Found cached remote info", v11, 2u);
    }
  }

  else
  {
    v9 = _TVRCRapportLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TVRCSiriRemoteFindingManager _cachedRemoteInfoForRPDevice:v9];
    }

    v6 = 0;
  }

  return v6;
}

- (void)_updatePairedRemoteInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = _TVRCRapportLog(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = infoCopy;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "Remote info dict: %{public}@", buf, 0xCu);
  }

  v6 = [infoCopy objectForKeyedSubscript:@"SiriRemoteInfoKey"];
  if (v6)
  {
    v7 = v6;
    goto LABEL_5;
  }

  v12 = _TVRCRapportLog(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v12, OS_LOG_TYPE_DEFAULT, "No paired remote found", buf, 2u);
  }

  shouldLoadCachedRemoteInfo = [(TVRCSiriRemoteFindingManager *)self shouldLoadCachedRemoteInfo];
  if (!shouldLoadCachedRemoteInfo)
  {
LABEL_16:
    v7 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  wrapper = [(TVRCSiriRemoteFindingManager *)self wrapper];
  device = [wrapper device];
  v7 = [(TVRCSiriRemoteFindingManager *)self _cachedRemoteInfoForRPDevice:device];

  if (!v7)
  {
    v16 = _TVRCRapportLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(TVRCSiriRemoteFindingManager *)self _updatePairedRemoteInfo:v16];
    }

    goto LABEL_16;
  }

LABEL_5:
  v18 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v18];
  shouldLoadCachedRemoteInfo = v18;
  if (shouldLoadCachedRemoteInfo)
  {
    v10 = shouldLoadCachedRemoteInfo;
    v11 = _TVRCRapportLog(shouldLoadCachedRemoteInfo);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(TVRCSiriRemoteFindingManager *)v10 _updatePairedRemoteInfo:v11];
    }

    goto LABEL_20;
  }

LABEL_17:
  v17 = _TVRCRapportLog(shouldLoadCachedRemoteInfo);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_26CF7F000, v17, OS_LOG_TYPE_DEFAULT, "Updated connected remote info: %{public}@", buf, 0xCu);
  }

  [(TVRCSiriRemoteFindingManager *)self setPairedRemoteInfo:v8];
  [(TVRCSiriRemoteFindingManager *)self _saveRemoteInfoToUserDefaultsIfNeeded];
LABEL_20:
}

- (void)_saveRemoteInfoToUserDefaultsIfNeeded
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Failed to archive remoteInfo %{public}@", &v2, 0xCu);
}

- (TVRCRPCompanionLinkClientWrapper)wrapper
{
  WeakRetained = objc_loadWeakRetained(&self->_wrapper);

  return WeakRetained;
}

void __53__TVRCSiriRemoteFindingManager_enableFindingSession___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = @"stopped";
  if (*(a1 + 40))
  {
    v3 = @"started";
  }

  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "Failed to %{public}@ finding mode: %{public}@", &v4, 0x16u);
}

- (void)_updatePairedRemoteInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

- (void)_updatePairedRemoteInfo:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 wrapper];
  v4 = [v3 device];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Could not find paired remote for device: %{public}@", &v5, 0xCu);
}

@end