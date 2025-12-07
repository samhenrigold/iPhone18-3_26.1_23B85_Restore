@interface UARPPowerLogAccessory
- (BOOL)isEqual:(id)equal;
- (UARPPowerLogAccessory)initWithModelNumber:(id)number uuid:(id)uuid stagingWindowPeriodSeconds:(unsigned int)seconds;
- (id)description;
- (void)dealloc;
- (void)setAssetOfferedWithVersion:(id)version activeFirmwareVersion:(id)firmwareVersion;
- (void)setReachableWithActiveFirmwareVersion:(id)version stagedFirmwareVersion:(id)firmwareVersion;
- (void)setStagingCompleteForStagedFirmareVersion:(id)version activeFirmareVersion:(id)firmareVersion status:(unint64_t)status;
- (void)setStagingWindowStartOffset:(unsigned int)offset;
- (void)setUnreachable;
- (void)stagingStopped;
- (void)stagingWindowTimeFired;
- (void)startStagingWindowTimer;
- (void)updateStagingProgressWithRequestedOffset:(unsigned int)offset requestedLength:(unsigned int)length;
@end

@implementation UARPPowerLogAccessory

- (UARPPowerLogAccessory)initWithModelNumber:(id)number uuid:(id)uuid stagingWindowPeriodSeconds:(unsigned int)seconds
{
  numberCopy = number;
  uuidCopy = uuid;
  v18.receiver = self;
  v18.super_class = UARPPowerLogAccessory;
  v10 = [(UARPPowerLogAccessory *)&v18 init];
  if (v10)
  {
    v11 = os_log_create("com.apple.accessoryupdater.uarp", "powerLogAccessory");
    log = v10->_log;
    v10->_log = v11;

    v13 = [numberCopy copy];
    modelNumber = v10->_modelNumber;
    v10->_modelNumber = v13;

    objc_storeStrong(&v10->_uuid, uuid);
    v15 = dispatch_queue_create("UARPPowerLogAccessory", 0);
    queue = v10->_queue;
    v10->_queue = v15;

    v10->_stagingWindowTimerIntervalNS = 1000000000 * seconds;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_stagingInProgress)
  {
    [(UARPPowerLogAccessory *)self stagingStopped];
  }

  v3.receiver = self;
  v3.super_class = UARPPowerLogAccessory;
  [(UARPPowerLogAccessory *)&v3 dealloc];
}

- (void)setReachableWithActiveFirmwareVersion:(id)version stagedFirmwareVersion:(id)firmwareVersion
{
  versionCopy = version;
  firmwareVersionCopy = firmwareVersion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__UARPPowerLogAccessory_setReachableWithActiveFirmwareVersion_stagedFirmwareVersion___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v12 = versionCopy;
  v13 = firmwareVersionCopy;
  v9 = firmwareVersionCopy;
  v10 = versionCopy;
  dispatch_sync(queue, block);
}

void __85__UARPPowerLogAccessory_setReachableWithActiveFirmwareVersion_stagedFirmwareVersion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1)
  {
    v3 = *(v2 + 24);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v4 = *(a1 + 32);
    v12 = 138412290;
    v13 = v4;
    v5 = "%@ marked reachable, but already reachable";
    v6 = v3;
    v7 = 12;
  }

  else
  {
    *(v2 + 80) = 1;
    UARPPowerLogAccessoryReachable(*(*(a1 + 32) + 8), *(a1 + 40), *(a1 + 48));
    v8 = *(*(a1 + 32) + 24);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v5 = "%@ reachable activeFW=%@, stagedFW=%@";
    v6 = v8;
    v7 = 32;
  }

  _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, v5, &v12, v7);
}

- (void)setUnreachable
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__UARPPowerLogAccessory_setUnreachable__block_invoke;
  block[3] = &unk_278EC1948;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __39__UARPPowerLogAccessory_setUnreachable__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    *(v2 + 80) = 0;
    UARPPowerLogAccessoryUnreachable(*(*(a1 + 32) + 8));
    [*(a1 + 32) stagingStopped];
    v3 = *(*(a1 + 32) + 24);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    v5 = "%@ unreachable";
  }

  else
  {
    v3 = *(v2 + 24);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    v5 = "%@ marked unreachable, but already unreachable";
  }

  _os_log_impl(&dword_247AA7000, v3, OS_LOG_TYPE_INFO, v5, &v7, 0xCu);
}

- (void)setAssetOfferedWithVersion:(id)version activeFirmwareVersion:(id)firmwareVersion
{
  versionCopy = version;
  firmwareVersionCopy = firmwareVersion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__UARPPowerLogAccessory_setAssetOfferedWithVersion_activeFirmwareVersion___block_invoke;
  block[3] = &unk_278EC29B8;
  block[4] = self;
  v12 = firmwareVersionCopy;
  v13 = versionCopy;
  v9 = versionCopy;
  v10 = firmwareVersionCopy;
  dispatch_sync(queue, block);
}

void __74__UARPPowerLogAccessory_setAssetOfferedWithVersion_activeFirmwareVersion___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1 + 4;
  v1 = a1[4];
  if (*(v1 + 81) == 1)
  {
    v3 = *(v1 + 3);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__UARPPowerLogAccessory_setAssetOfferedWithVersion_activeFirmwareVersion___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    UARPPowerLogAssetOffered(*(v1 + 1), a1[5], a1[6]);
    [a1[4] startStagingWindowTimer];
    v11 = [a1[5] copy];
    v12 = a1[4];
    v13 = v12[8];
    v12[8] = v11;

    v14 = [a1[6] copy];
    v15 = a1[4];
    v16 = v15[9];
    v15[9] = v14;

    [a1[4] resetStagingWindowStartOffset];
    *(a1[4] + 81) = 1;
    v17 = *(a1[4] + 3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = a1[5];
      v18 = a1[6];
      v20 = a1[4];
      v21 = 138412802;
      v22 = v20;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_247AA7000, v17, OS_LOG_TYPE_INFO, "%@ asset offered. offeredFW=%@, activeFW=%@", &v21, 0x20u);
    }
  }
}

- (void)setStagingCompleteForStagedFirmareVersion:(id)version activeFirmareVersion:(id)firmareVersion status:(unint64_t)status
{
  versionCopy = version;
  firmareVersionCopy = firmareVersion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__UARPPowerLogAccessory_setStagingCompleteForStagedFirmareVersion_activeFirmareVersion_status___block_invoke;
  v13[3] = &unk_278EC2918;
  v13[4] = self;
  v14 = firmareVersionCopy;
  v15 = versionCopy;
  statusCopy = status;
  v11 = versionCopy;
  v12 = firmareVersionCopy;
  dispatch_sync(queue, v13);
}

void __95__UARPPowerLogAccessory_setStagingCompleteForStagedFirmareVersion_activeFirmareVersion_status___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 81))
  {
    UARPPowerLogStagingComplete(*(v1 + 8), *(a1 + 40), *(a1 + 48), *(a1 + 56));
    [*(a1 + 32) stagingStopped];
    v4 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(a1 + 32);
      v15 = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_247AA7000, v4, OS_LOG_TYPE_INFO, "%@ staging complete. stagedFW=%@, activeFW=%@", &v15, 0x20u);
    }
  }

  else
  {
    v8 = *(v1 + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __95__UARPPowerLogAccessory_setStagingCompleteForStagedFirmareVersion_activeFirmareVersion_status___block_invoke_cold_1(v2, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (void)startStagingWindowTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  stagingWindowTimer = self->_stagingWindowTimer;
  self->_stagingWindowTimer = v3;

  objc_initWeak(&location, self);
  v5 = self->_stagingWindowTimer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__UARPPowerLogAccessory_startStagingWindowTimer__block_invoke;
  v7[3] = &unk_278EC13E8;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v5, v7);
  v6 = dispatch_time(0, self->_stagingWindowTimerIntervalNS);
  dispatch_source_set_timer(self->_stagingWindowTimer, v6, self->_stagingWindowTimerIntervalNS, 0x5F5E100uLL);
  dispatch_resume(self->_stagingWindowTimer);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__UARPPowerLogAccessory_startStagingWindowTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stagingWindowTimeFired];
}

- (void)stagingWindowTimeFired
{
  v18 = *MEMORY[0x277D85DE8];
  UARPPowerLogStagingStatus(self->_modelNumber, self->_stagingActiveFirmwareVersion, self->_stagingStagingFirmwareVersion, self->_stagingWindowStartOffset, self->_stagingWindowBytesTransferred);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    stagingActiveFirmwareVersion = self->_stagingActiveFirmwareVersion;
    stagingStagingFirmwareVersion = self->_stagingStagingFirmwareVersion;
    stagingWindowStartOffset = self->_stagingWindowStartOffset;
    stagingWindowBytesTransferred = self->_stagingWindowBytesTransferred;
    v8 = 138413314;
    selfCopy = self;
    v10 = 2112;
    v11 = stagingActiveFirmwareVersion;
    v12 = 2112;
    v13 = stagingStagingFirmwareVersion;
    v14 = 1024;
    v15 = stagingWindowStartOffset;
    v16 = 1024;
    v17 = stagingWindowBytesTransferred;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%@ staging timer fired. activeFW=%@, stagingFW=%@, off=%u, tx=%u", &v8, 0x2Cu);
  }

  self->_stagingWindowStartOffset += self->_stagingWindowBytesTransferred;
  self->_stagingWindowBytesTransferred = 0;
}

- (void)updateStagingProgressWithRequestedOffset:(unsigned int)offset requestedLength:(unsigned int)length
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__UARPPowerLogAccessory_updateStagingProgressWithRequestedOffset_requestedLength___block_invoke;
  v5[3] = &unk_278EC2C18;
  v5[4] = self;
  offsetCopy = offset;
  lengthCopy = length;
  dispatch_sync(queue, v5);
}

void __82__UARPPowerLogAccessory_updateStagingProgressWithRequestedOffset_requestedLength___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 81))
  {
    [v2 setStagingWindowStartOffset:*(a1 + 40)];
    *(*(a1 + 32) + 56) += *(a1 + 44);
  }

  else
  {
    v4 = *(v2 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __82__UARPPowerLogAccessory_updateStagingProgressWithRequestedOffset_requestedLength___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)setStagingWindowStartOffset:(unsigned int)offset
{
  if (!self->_stagingWindowStartOffsetInitialUpdateComplete)
  {
    self->_stagingWindowStartOffset = offset;
    self->_stagingWindowStartOffsetInitialUpdateComplete = 1;
  }
}

- (void)stagingStopped
{
  stagingWindowTimer = self->_stagingWindowTimer;
  if (stagingWindowTimer)
  {
    dispatch_source_cancel(stagingWindowTimer);
    v4 = self->_stagingWindowTimer;
    self->_stagingWindowTimer = 0;
  }

  stagingActiveFirmwareVersion = self->_stagingActiveFirmwareVersion;
  self->_stagingActiveFirmwareVersion = 0;

  stagingStagingFirmwareVersion = self->_stagingStagingFirmwareVersion;
  self->_stagingStagingFirmwareVersion = 0;

  self->_stagingInProgress = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = self->_uuid;
    uuid = [equalCopy uuid];
    v7 = [(NSUUID *)uuid isEqual:uuid];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  modelNumber = self->_modelNumber;
  uuid = self->_uuid;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_reachable];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_stagingInProgress];
  v10 = [v3 stringWithFormat:@"<%@: %@ %@ reachable=%@, staging=%@>", v5, modelNumber, uuid, v8, v9];

  return v10;
}

void __74__UARPPowerLogAccessory_setAssetOfferedWithVersion_activeFirmwareVersion___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a2, a3, "%@: Attemping to start staging when it is already running", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __95__UARPPowerLogAccessory_setStagingCompleteForStagedFirmareVersion_activeFirmareVersion_status___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a2, a3, "%@: Attemping to complete staging when staging was never started", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __82__UARPPowerLogAccessory_updateStagingProgressWithRequestedOffset_requestedLength___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a2, a3, "%@: Attempingt to update staging status when staging is not running", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end