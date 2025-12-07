@interface WPDZoneManager
- (BOOL)updateScanner;
- (WPDZoneManager)initWithServer:(id)server;
- (id)addZoneTrackingRequest:(id)request forClient:(id)client;
- (id)generateStateDumpStrings;
- (id)getAllZones;
- (void)addSingleZoneTrackingRequest:(id)request forClient:(id)client;
- (void)cancelExitTimer;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didLoseZone:(id)zone mask:(id)mask;
- (void)cleanup;
- (void)exitTimerFired;
- (void)printTrackedZones;
- (void)startExitTimer;
- (void)unregisterAllZones;
- (void)unregisterZones:(id)zones forClient:(id)client;
- (void)unregisterZonesForClient:(id)client updateScanner:(BOOL)scanner;
- (void)update;
- (void)updateScanner;
@end

@implementation WPDZoneManager

- (WPDZoneManager)initWithServer:(id)server
{
  v26[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v24.receiver = self;
  v24.super_class = WPDZoneManager;
  v5 = [(WPDManager *)&v24 initWithServer:serverCopy Name:@"Zone Central"];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBDFF8]);
    serverQueue = [serverCopy serverQueue];
    v25 = *MEMORY[0x277CBDF08];
    v26[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v9 = [v6 initWithDelegate:v5 queue:serverQueue options:v8];
    centralManager = v5->_centralManager;
    v5->_centralManager = v9;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    trackedZones = v5->_trackedZones;
    v5->_trackedZones = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    trackRequests = v5->_trackRequests;
    v5->_trackRequests = dictionary2;

    zoneExitTimeout = v5->_zoneExitTimeout;
    v5->_zoneExitTimeout = &unk_2882019E8;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v17 = [standardUserDefaults persistentDomainForName:@"com.apple.MobileBluetooth.debug"];
    v18 = [v17 objectForKeyedSubscript:@"WIPROX"];

    v19 = [v18 objectForKeyedSubscript:@"ZoneTrackerTimeout"];
    if (v19)
    {
      objc_storeStrong(&v5->_zoneExitTimeout, v19);
      if (WPLogInitOnce != -1)
      {
        [WPDZoneManager initWithServer:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDZoneManager initWithServer:];
      }
    }

    exitTimer = v5->_exitTimer;
    v5->_exitTimer = 0;

    v5->_scanAllowlisted = [(WPDManager *)v5 isScanAllowlistedForType:2];
    v21 = [MEMORY[0x277CBEB98] setWithObject:v5->_centralManager];
    [(WPDManager *)v5 setCbManagers:v21];

    wpdState = [serverCopy wpdState];
    [wpdState registerManager:v5->_centralManager];
  }

  return v5;
}

- (void)cleanup
{
  [(WPDZoneManager *)self cancelExitTimer];
  [(WPDZoneManager *)self unregisterAllZones];
  v3.receiver = self;
  v3.super_class = WPDZoneManager;
  [(WPDManager *)&v3 cleanup];
}

- (id)generateStateDumpStrings
{
  v3 = MEMORY[0x277CBEB18];
  v22.receiver = self;
  v22.super_class = WPDZoneManager;
  generateStateDumpStrings = [(WPDManager *)&v22 generateStateDumpStrings];
  v5 = [v3 arrayWithArray:generateStateDumpStrings];

  if ([(WPDManager *)self isInternalBuild])
  {
    v6 = MEMORY[0x277CCACA8];
    scanAllowlisted = [(WPDZoneManager *)self scanAllowlisted];
    v8 = "no";
    if (scanAllowlisted)
    {
      v8 = "yes";
    }

    v9 = [v6 stringWithFormat:@"scan allowlisted: %s\n", v8];
    [v5 addObject:v9];
  }

  v10 = MEMORY[0x277CCACA8];
  trackRequests = [(WPDZoneManager *)self trackRequests];
  v12 = [v10 stringWithFormat:@"trackRequests (%ld):\n", objc_msgSend(trackRequests, "count")];
  [v5 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  trackedZones = [(WPDZoneManager *)self trackedZones];
  v15 = [v13 stringWithFormat:@"trackedZones (%ld):\n", objc_msgSend(trackedZones, "count")];
  [v5 addObject:v15];

  trackedZones2 = [(WPDZoneManager *)self trackedZones];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__WPDZoneManager_generateStateDumpStrings__block_invoke;
  v20[3] = &unk_279E59448;
  v21 = v5;
  v17 = v5;
  [trackedZones2 enumerateKeysAndObjectsUsingBlock:v20];

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v17];

  return v18;
}

void __42__WPDZoneManager_generateStateDumpStrings__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"zone %@: %@\n", a2, a3];
  [v3 addObject:v4];
}

- (void)update
{
  v10 = *MEMORY[0x277D85DE8];
  state = [(WPDManager *)self state];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDZoneManager update];
        }

        v4 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9[0]) = 0;
          v5 = "Zone Central manager is resetting";
LABEL_18:
          _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, v5, v9, 2u);
          return;
        }
      }

      return;
    }

LABEL_10:
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager update];
    }

    v6 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      centralManager = [(WPDZoneManager *)self centralManager];
      v9[0] = 67109120;
      v9[1] = [centralManager state];
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Zone Central manager is  unknown, powered off, unauthorized or not supported (%d)", v9, 8u);
    }

    return;
  }

  if (state != 3)
  {
    if (state != 2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager update];
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    v5 = "Zone Central manager is powered on";
    goto LABEL_18;
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v35 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  iCopy = i;
  v11 = [data objectForKeyedSubscript:*MEMORY[0x277CBDD10]];
  v12 = v11;
  if (v11)
  {
    if ([v11 length] > 3)
    {
      bytes = [v12 bytes];
      if (*bytes == 76 && !bytes[1] && bytes[2] == 2)
      {
        v16 = bytes + 4;
        v17 = [v12 length] - 4;
        if ([iCopy integerValue] < -87 || objc_msgSend(iCopy, "integerValue") == 127)
        {
          if (WPLogInitOnce != -1)
          {
            [WPDZoneManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
          }

          v18 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
          {
            v14 = v18;
            intValue = [iCopy intValue];
            v20 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v17];
            *buf = 67109378;
            *v32 = intValue;
            *&v32[4] = 2112;
            *&v32[6] = v20;
            _os_log_debug_impl(&dword_272965000, v14, OS_LOG_TYPE_DEBUG, "RSSI invalid for zone entry (%d dBm - %@)", buf, 0x12u);

            goto LABEL_7;
          }
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            [WPDZoneManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
          }

          v21 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
          {
            v23 = v21;
            name = [peripheralCopy name];
            v25 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:v17];
            *buf = 138412802;
            *v32 = name;
            *&v32[8] = 2112;
            *&v32[10] = v25;
            v33 = 2048;
            v34 = v17;
            _os_log_debug_impl(&dword_272965000, v23, OS_LOG_TYPE_DEBUG, "Discovered a zone peripheral %@ with data (%@) of length (%lu)", buf, 0x20u);
          }

          trackedZones = [(WPDZoneManager *)self trackedZones];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181;
          v26[3] = &unk_279E59470;
          v29 = v17;
          v30 = v16;
          v27 = peripheralCopy;
          selfCopy = self;
          [trackedZones enumerateKeysAndObjectsUsingBlock:v26];
        }
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDZoneManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        *buf = 134218242;
        *v32 = [v12 length];
        *&v32[8] = 2112;
        *&v32[10] = v12;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_INFO, "Zones: Expected minimum advertisement data length: 4, received: %lu, with content: %@", buf, 0x16u);
LABEL_7:
      }
    }
  }
}

void __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"kData"];
  v8 = *(a1 + 48);
  if (v8 >= [v7 length] && !memcmp(*(a1 + 56), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length")))
  {
    if (WPLogInitOnce != -1)
    {
      __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_1();
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_2(a1, v9);
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    [v6 setObject:v10 forKeyedSubscript:@"kLastSeen"];

    v11 = [v6 objectForKeyedSubscript:@"kInZone"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = [v6 objectForKeyedSubscript:@"kPendingExit"];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        if (WPLogInitOnce != -1)
        {
          __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_4();
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_5();
        }

        [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kPendingExit"];
      }
    }

    else
    {
      v25 = v5;
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kInZone"];
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:*(a1 + 56) length:*(a1 + 48)];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = [v6 objectForKeyedSubscript:@"kWPClientUUIDs"];
      v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v27;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v27 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v26 + 1) + 8 * i);
            v22 = [*(a1 + 40) server];
            v23 = [v22 getClientForUUID:v21];
            [v23 enteredZone:v7 manufacturerData:v15];
          }

          v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v18);
      }

      if (WPLogInitOnce != -1)
      {
        __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_3();
      }

      v5 = v25;
      v24 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v7;
        v32 = 2114;
        v33 = v15;
        _os_log_impl(&dword_272965000, v24, OS_LOG_TYPE_DEFAULT, "Entered zone: %{public}@, manufacturer data: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)centralManager:(id)manager didLoseZone:(id)zone mask:(id)mask
{
  zoneCopy = zone;
  maskCopy = mask;
  bytes = [maskCopy bytes];
  bytes2 = [zoneCopy bytes];
  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager centralManager:didLoseZone:mask:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDZoneManager centralManager:v11 didLoseZone:zoneCopy mask:?];
  }

  trackedZones = [(WPDZoneManager *)self trackedZones];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194;
  v15[3] = &unk_279E59498;
  v19 = bytes;
  v20 = bytes2;
  v16 = maskCopy;
  selfCopy = self;
  v18 = zoneCopy;
  v13 = zoneCopy;
  v14 = maskCopy;
  [trackedZones enumerateKeysAndObjectsUsingBlock:v15];

  [(WPDZoneManager *)self printTrackedZones];
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kData"];
  v6 = malloc_type_calloc([*(a1 + 32) length], 1uLL, 0x100004077774924uLL);
  memcpy(v6, [v5 bytes], objc_msgSend(v5, "length"));
  if (WPLogInitOnce != -1)
  {
    __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_1();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_2();
  }

  if ([*(a1 + 32) length])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ([v5 length] < v7 && *(*(a1 + 56) + v7) == 255 || v6[v7] != *(*(a1 + 64) + v7))
      {
        v8 = 0;
      }

      ++v7;
    }

    while ([*(a1 + 32) length] > v7);
    free(v6);
    if ((v8 & 1) == 0)
    {
      if (WPLogInitOnce != -1)
      {
        __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_3();
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_4();
      }

      goto LABEL_39;
    }
  }

  else
  {
    free(v6);
  }

  if (WPLogInitOnce != -1)
  {
    __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_5();
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_6();
  }

  v9 = [v4 objectForKeyedSubscript:@"kInZone"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    if (WPLogInitOnce != -1)
    {
      __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_9();
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v5;
      _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Exited zone: %{public}@", buf, 0xCu);
    }

    [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kInZone"];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v4 objectForKeyedSubscript:{@"kWPClientUUIDs", 0}];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [*(a1 + 40) server];
          v19 = [v18 getClientForUUID:v17];
          [v19 exitedZone:v5];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_7();
    }

    v20 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_8(a1, v4, v20);
    }
  }

LABEL_39:
}

- (void)printTrackedZones
{
  trackedZones = [(WPDZoneManager *)self trackedZones];
  [trackedZones enumerateKeysAndObjectsUsingBlock:&__block_literal_global_210_0];
}

void __35__WPDZoneManager_printTrackedZones__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (WPLogInitOnce != -1)
  {
    __35__WPDZoneManager_printTrackedZones__block_invoke_cold_1();
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    __35__WPDZoneManager_printTrackedZones__block_invoke_cold_2(v4, v6, v5);
  }
}

- (BOOL)updateScanner
{
  v66 = *MEMORY[0x277D85DE8];
  if ([(WPDManager *)self state]!= 3)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    v27 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      centralManager = [(WPDZoneManager *)self centralManager];
      *buf = 67109120;
      LODWORD(v59) = [centralManager state];
      _os_log_impl(&dword_272965000, v28, OS_LOG_TYPE_DEFAULT, "Zones: updateScanner - central is not powered on: %d", buf, 8u);
    }

    return 0;
  }

  if (![(WPDZoneManager *)self scanAllowlisted])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    v30 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v59 = 2;
      _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, "Zones: not tracking for client type (%ld) when denylisted or not allowlisted", buf, 0xCu);
    }

    return 0;
  }

  centralManager2 = [(WPDZoneManager *)self centralManager];
  [centralManager2 stopScan];

  trackedZones = [(WPDZoneManager *)self trackedZones];
  v5 = [trackedZones count];

  if (!v5)
  {
    [(WPDZoneManager *)self cancelExitTimer];
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDZoneManager updateScanner];
    }

    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  trackedZones2 = [(WPDZoneManager *)self trackedZones];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __31__WPDZoneManager_updateScanner__block_invoke_227;
  v56[3] = &unk_279E59448;
  v8 = array;
  v57 = v8;
  [trackedZones2 enumerateKeysAndObjectsUsingBlock:v56];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  trackRequests = [(WPDZoneManager *)self trackRequests];
  allValues = [trackRequests allValues];

  v42 = [allValues countByEnumeratingWithState:&v52 objects:v65 count:16];
  if (!v42)
  {

    goto LABEL_50;
  }

  v39 = v8;
  obj = allValues;
  v41 = *v53;
  v11 = 0xFFFFLL;
  v12 = 0xFFFFLL;
  do
  {
    v13 = 0;
    do
    {
      if (*v53 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v43 = v13;
      v14 = *(*(&v52 + 1) + 8 * v13);
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      allValues2 = [v14 allValues];
      v16 = [allValues2 countByEnumeratingWithState:&v48 objects:v64 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v49;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(allValues2);
            }

            v20 = *(*(&v48 + 1) + 8 * i);
            server = [(WPDManager *)self server];
            if ([server screenOff])
            {
              v22 = v46;
              if (!v20)
              {
                goto LABEL_22;
              }

              objc_msgSend_scanningRates(v20);
              v23 = v47;
            }

            else
            {
              v22 = &v45;
              if (!v20)
              {
LABEL_22:
                *v22 = 0;
                *(v22 + 1) = 0;
                *(v22 + 2) = 0;

                v24 = 0;
                v12 &= v12 >> 63;
                v44 = 0;
                goto LABEL_23;
              }

              objc_msgSend_scanningRates(v20);
              v23 = v45;
            }

            if (v23 < v12)
            {
              v12 = v23;
            }

            objc_msgSend_scanningRates(v20);
            v24 = v44;
LABEL_23:
            if (v24 < v11)
            {
              v11 = v24;
            }
          }

          v17 = [allValues2 countByEnumeratingWithState:&v48 objects:v64 count:16];
        }

        while (v17);
      }

      v13 = v43 + 1;
    }

    while (v43 + 1 != v42);
    v42 = [obj countByEnumeratingWithState:&v52 objects:v65 count:16];
  }

  while (v42);

  v8 = v39;
  if (v12 >= 0xFFFF)
  {
LABEL_50:
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    v25 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "Scanning rate is too high or not set - not scanning";
LABEL_54:
      _os_log_impl(&dword_272965000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    }

LABEL_55:
    v31 = 0;
    goto LABEL_56;
  }

  if (v11 >= 0xFFFF)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager updateScanner];
    }

    v25 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "Scanning window is too high or not set - not scanning";
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  centralManager3 = [(WPDZoneManager *)self centralManager];
  v34 = *MEMORY[0x277CBDEF8];
  v62[0] = *MEMORY[0x277CBDE70];
  v62[1] = v34;
  v63[0] = v39;
  v63[1] = MEMORY[0x277CBEC38];
  v62[2] = *MEMORY[0x277CBDE58];
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
  v63[2] = v35;
  v62[3] = *MEMORY[0x277CBDE38];
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v63[3] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:4];
  [centralManager3 scanForPeripheralsWithServices:0 options:v37];

  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager updateScanner];
  }

  v38 = WiProxLog;
  v8 = v39;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v59 = v11;
    v60 = 2048;
    v61 = v12;
    _os_log_impl(&dword_272965000, v38, OS_LOG_TYPE_DEFAULT, "Started scan for zones %ld (Window) %ld (Interval)", buf, 0x16u);
  }

  [(WPDZoneManager *)self startExitTimer];
  v31 = 1;
LABEL_56:

  return v31;
}

void __31__WPDZoneManager_updateScanner__block_invoke_227(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"kData"];
  [*(a1 + 32) addObject:?];
  v4 = -1;
  do
  {
    ++v4;
  }

  while ([v5 length] > v4);
}

- (void)startExitTimer
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  lastTimeScannerStarted = [a2 lastTimeScannerStarted];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_272965000, selfCopy, OS_LOG_TYPE_ERROR, "startExitTimer failed to start: (%@)", v5, 0xCu);
}

void __32__WPDZoneManager_startExitTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained exitTimerFired];
    [v2 setExitTimer:0];
    WeakRetained = v2;
  }
}

- (void)cancelExitTimer
{
  exitTimer = [(WPDZoneManager *)self exitTimer];

  if (exitTimer)
  {
    exitTimer2 = [(WPDZoneManager *)self exitTimer];
    v5 = dispatch_source_testcancel(exitTimer2);

    if (!v5)
    {
      exitTimer3 = [(WPDZoneManager *)self exitTimer];
      dispatch_source_cancel(exitTimer3);
    }

    [(WPDZoneManager *)self setExitTimer:0];
  }
}

- (void)exitTimerFired
{
  v5 = a2;
  lastTimeScannerStarted = [a3 lastTimeScannerStarted];
  [self timeIntervalSinceDate:lastTimeScannerStarted];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void __32__WPDZoneManager_exitTimerFired__block_invoke_244(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kInZone"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"kLastSeen"];
    v8 = [*(a1 + 32) lastTimeScannerStarted];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 < 0.0)
    {
      [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kInZone"];
      v11 = [v4 objectForKeyedSubscript:@"kData"];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = [v4 objectForKeyedSubscript:{@"kWPClientUUIDs", 0}];
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            v18 = [*(a1 + 32) server];
            v19 = [v18 getClientForUUID:v17];
            [v19 exitedZone:v11];
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v14);
      }

      if (WPLogInitOnce != -1)
      {
        __32__WPDZoneManager_exitTimerFired__block_invoke_244_cold_1();
      }

      v20 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v26 = v7;
        v27 = 2114;
        v28 = v11;
        _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "Too long since last seen (%{public}@). Exiting zone: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = 0;
  }
}

- (void)addSingleZoneTrackingRequest:(id)request forClient:(id)client
{
  v44 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  zones = [requestCopy zones];
  anyObject = [zones anyObject];
  v10 = [anyObject description];

  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager addSingleZoneTrackingRequest:forClient:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v10;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Adding zone %@", buf, 0xCu);
  }

  trackRequests = [(WPDZoneManager *)self trackRequests];
  dictionary = [trackRequests objectForKeyedSubscript:clientCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    trackRequests2 = [(WPDZoneManager *)self trackRequests];
    [trackRequests2 setObject:dictionary forKey:clientCopy];
  }

  [dictionary setObject:requestCopy forKey:v10];
  trackedZones = [(WPDZoneManager *)self trackedZones];
  v16 = [trackedZones objectForKeyedSubscript:v10];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:@"kWPClientUUIDs"];
    [v17 addObject:clientCopy];

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager addSingleZoneTrackingRequest:forClient:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      trackedZones2 = [(WPDZoneManager *)self trackedZones];
      v21 = [trackedZones2 count];
      trackedZones3 = [(WPDZoneManager *)self trackedZones];
      *buf = 138413058;
      v37 = clientCopy;
      v38 = 2114;
      v39 = v10;
      v40 = 2048;
      v41 = v21;
      v42 = 2114;
      v43 = trackedZones3;
      _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "Added client %@ to zone %{public}@. Currently tracking %ld zones %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v23 = [MEMORY[0x277CBEB58] setWithObject:clientCopy];
    v24 = MEMORY[0x277CBEB38];
    zones2 = [requestCopy zones];
    anyObject2 = [zones2 anyObject];
    v35[0] = anyObject2;
    v35[1] = MEMORY[0x277CBEC28];
    v34[1] = @"kInZone";
    v34[2] = @"kWPClientUUIDs";
    v35[2] = v23;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v16 = [v24 dictionaryWithDictionary:v27];

    trackedZones4 = [(WPDZoneManager *)self trackedZones];
    [trackedZones4 setObject:v16 forKey:v10];

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager addSingleZoneTrackingRequest:forClient:];
    }

    v29 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      trackedZones5 = [(WPDZoneManager *)self trackedZones];
      v32 = [trackedZones5 count];
      trackedZones6 = [(WPDZoneManager *)self trackedZones];
      *buf = 138544130;
      v37 = v10;
      v38 = 2112;
      v39 = clientCopy;
      v40 = 2048;
      v41 = v32;
      v42 = 2114;
      v43 = trackedZones6;
      _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, "Added zone %{public}@ for client %@. Currently tracking %ld zones %{public}@", buf, 0x2Au);
    }
  }
}

- (id)addZoneTrackingRequest:(id)request forClient:(id)client
{
  v76[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  if ([(WPDManager *)self state]== 3)
  {
    selfCopy = self;
    v8 = objc_alloc(MEMORY[0x277CBEB58]);
    zones = [requestCopy zones];
    v10 = [v8 initWithCapacity:{objc_msgSend(zones, "count")}];

    zones2 = [requestCopy zones];
    v12 = [zones2 count];

    v13 = v10;
    if (v12 == 1)
    {
      [v10 addObject:requestCopy];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDZoneManager addZoneTrackingRequest:forClient:];
      }

      v18 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        zones3 = [requestCopy zones];
        *buf = 134217984;
        *&buf[4] = [zones3 count];
        _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "Multiple zones in one request, breaking down into %ld one-zone-per-request", buf, 0xCu);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      zones4 = [requestCopy zones];
      v22 = [zones4 countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v65;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v65 != v24)
            {
              objc_enumerationMutation(zones4);
            }

            v26 = *(*(&v64 + 1) + 8 * i);
            v27 = objc_opt_new();
            [v27 setClientType:{objc_msgSend(requestCopy, "clientType")}];
            if (requestCopy)
            {
              objc_msgSend_scanningRates(requestCopy);
            }

            else
            {
              v62 = 0uLL;
              v63 = 0;
            }

            *buf = v62;
            *&buf[16] = v63;
            [v27 setScanningRates:buf];
            v28 = [MEMORY[0x277CBEB58] setWithObject:v26];
            [v27 setZones:v28];

            [v10 addObject:v27];
          }

          v23 = [zones4 countByEnumeratingWithState:&v64 objects:v74 count:16];
        }

        while (v23);
      }

      clientCopy = v52;
    }

    trackedZones = [(WPDZoneManager *)selfCopy trackedZones];
    allKeys = [trackedZones allKeys];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    zones5 = [requestCopy zones];
    v32 = [zones5 countByEnumeratingWithState:&v58 objects:v73 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v59;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v59 != v35)
          {
            objc_enumerationMutation(zones5);
          }

          v37 = [*(*(&v58 + 1) + 8 * j) description];
          v34 += [allKeys containsObject:v37] ^ 1;
        }

        v33 = [zones5 countByEnumeratingWithState:&v58 objects:v73 count:16];
      }

      while (v33);
    }

    else
    {
      v34 = 0;
    }

    trackedZones2 = [(WPDZoneManager *)selfCopy trackedZones];
    v39 = 30 - [trackedZones2 count];

    if (v39 >= v34)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v13;
      v46 = v13;
      v47 = [v46 countByEnumeratingWithState:&v54 objects:v68 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v55;
        do
        {
          for (k = 0; k != v48; ++k)
          {
            if (*v55 != v49)
            {
              objc_enumerationMutation(v46);
            }

            [(WPDZoneManager *)selfCopy addSingleZoneTrackingRequest:*(*(&v54 + 1) + 8 * k) forClient:clientCopy];
          }

          v48 = [v46 countByEnumeratingWithState:&v54 objects:v68 count:16];
        }

        while (v48);
      }

      [(WPDZoneManager *)selfCopy updateScanner];
      v16 = 0;
    }

    else
    {
      v40 = MEMORY[0x277CCA9B8];
      v71 = *MEMORY[0x277CCA450];
      v72 = @"Tracking the maximum number of zones available within the chips";
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v16 = [v40 errorWithDomain:@"WPErrorDomain" code:4 userInfo:v41];

      v42 = v13;
      if (WPLogInitOnce != -1)
      {
        [WPDZoneManager addZoneTrackingRequest:forClient:];
      }

      v43 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
        zones6 = [requestCopy zones];
        *buf = 138543874;
        *&buf[4] = zones6;
        *&buf[12] = 2048;
        *&buf[14] = v34;
        *&buf[22] = 2048;
        v70 = v39;
        _os_log_impl(&dword_272965000, v44, OS_LOG_TYPE_DEFAULT, "Could not add zones (%{public}@): asked to add %ld, can only add %ld new zones", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v75 = *MEMORY[0x277CCA450];
    v76[0] = @"CoreBluetooth is currently powered off";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
    v16 = [v14 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v15];

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager addZoneTrackingRequest:forClient:];
    }

    v17 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDZoneManager addZoneTrackingRequest:v17 forClient:self];
    }
  }

  return v16;
}

- (void)unregisterZones:(id)zones forClient:(id)client
{
  v66 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  clientCopy = client;
  if (zonesCopy && [zonesCopy count])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager unregisterZones:forClient:];
    }

    v7 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v57 = zonesCopy;
      v58 = 2112;
      v59 = clientCopy;
      _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering zones: %{public}@ for client %@", buf, 0x16u);
    }

    trackRequests = [(WPDZoneManager *)self trackRequests];
    v9 = [trackRequests objectForKeyedSubscript:clientCopy];

    if (v9)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v10 = zonesCopy;
      v11 = [v10 countByEnumeratingWithState:&v52 objects:v65 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v53;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v53 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v52 + 1) + 8 * i) description];
            [v9 removeObjectForKey:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v52 objects:v65 count:16];
        }

        while (v12);
      }

      if (![v9 count])
      {
        trackRequests2 = [(WPDZoneManager *)self trackRequests];
        [trackRequests2 removeObjectForKey:clientCopy];
      }
    }

    v43 = v9;
    v44 = zonesCopy;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = zonesCopy;
    v17 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v49;
      v45 = *v49;
      do
      {
        v20 = 0;
        do
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = [*(*(&v48 + 1) + 8 * v20) description];
          trackedZones = [(WPDZoneManager *)self trackedZones];
          v23 = [trackedZones objectForKeyedSubscript:v21];

          if (v23)
          {
            v24 = [v23 objectForKeyedSubscript:@"kWPClientUUIDs"];
            v25 = v24;
            if (!v24)
            {
              goto LABEL_29;
            }

            [v24 removeObject:clientCopy];
            if (WPLogInitOnce != -1)
            {
              [WPDZoneManager unregisterZones:forClient:];
            }

            v26 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v26;
              trackedZones2 = [(WPDZoneManager *)self trackedZones];
              v29 = [trackedZones2 count];
              trackedZones3 = [(WPDZoneManager *)self trackedZones];
              *buf = 138413058;
              v57 = clientCopy;
              v58 = 2114;
              v59 = v21;
              v60 = 2048;
              v61 = v29;
              v19 = v45;
              v62 = 2114;
              v63 = trackedZones3;
              _os_log_impl(&dword_272965000, v27, OS_LOG_TYPE_DEFAULT, "Removed client %@ from zone (%{public}@), currently tracking %ld zones %{public}@ ", buf, 0x2Au);
            }

            if (![v25 count])
            {
LABEL_29:
              trackedZones4 = [(WPDZoneManager *)self trackedZones];
              [trackedZones4 removeObjectForKey:v21];

              if (WPLogInitOnce != -1)
              {
                [WPDZoneManager unregisterZones:forClient:];
              }

              v32 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
              {
                v33 = v32;
                trackedZones5 = [(WPDZoneManager *)self trackedZones];
                v35 = [trackedZones5 count];
                trackedZones6 = [(WPDZoneManager *)self trackedZones];
                *buf = 138543874;
                v57 = v21;
                v58 = 2048;
                v59 = v35;
                v19 = v45;
                v60 = 2114;
                v61 = trackedZones6;
                _os_log_impl(&dword_272965000, v33, OS_LOG_TYPE_DEFAULT, "Removed zone (%{public}@), currently tracking %ld zones %{public}@ ", buf, 0x20u);
              }
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v18);
    }

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager unregisterZones:forClient:];
    }

    v37 = v43;
    zonesCopy = v44;
    v38 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      trackedZones7 = [(WPDZoneManager *)self trackedZones];
      v41 = [trackedZones7 count];
      trackedZones8 = [(WPDZoneManager *)self trackedZones];
      *buf = 134218242;
      v57 = v41;
      v58 = 2114;
      v59 = trackedZones8;
      _os_log_impl(&dword_272965000, v39, OS_LOG_TYPE_DEFAULT, "Now tracking %ld zones: %{public}@", buf, 0x16u);
    }

    [(WPDZoneManager *)self updateScanner:v43];
  }
}

- (void)unregisterZonesForClient:(id)client updateScanner:(BOOL)scanner
{
  scannerCopy = scanner;
  v40 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDZoneManager unregisterZonesForClient:updateScanner:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDZoneManager unregisterZonesForClient:updateScanner:];
  }

  trackRequests = [(WPDZoneManager *)self trackRequests];
  v6 = [trackRequests count] == 0;

  if (v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager unregisterZonesForClient:updateScanner:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDZoneManager unregisterZonesForClient:updateScanner:];
    }
  }

  else
  {
    trackRequests2 = [(WPDZoneManager *)self trackRequests];
    [trackRequests2 removeObjectForKey:clientCopy];

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__1;
    v33 = __Block_byref_object_dispose__1;
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    trackedZones = [(WPDZoneManager *)self trackedZones];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__WPDZoneManager_unregisterZonesForClient_updateScanner___block_invoke_288;
    v26[3] = &unk_279E59508;
    v27 = clientCopy;
    v28 = &v29;
    [trackedZones enumerateKeysAndObjectsUsingBlock:v26];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v30[5];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v39 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          trackedZones2 = [(WPDZoneManager *)self trackedZones];
          [trackedZones2 removeObjectForKey:v13];

          if (WPLogInitOnce != -1)
          {
            [WPDZoneManager unregisterZonesForClient:updateScanner:];
          }

          v15 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v36 = v13;
            _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Removed zone (%{public}@)", buf, 0xCu);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v39 count:16];
      }

      while (v10);
    }

    if (WPLogInitOnce != -1)
    {
      [WPDZoneManager unregisterZonesForClient:updateScanner:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      trackedZones3 = [(WPDZoneManager *)self trackedZones];
      v18 = [trackedZones3 count];
      trackedZones4 = [(WPDZoneManager *)self trackedZones];
      *buf = 134218242;
      v36 = v18;
      v37 = 2114;
      v38 = trackedZones4;
      _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_DEFAULT, "Now tracking %ld zones: %{public}@", buf, 0x16u);
    }

    if (scannerCopy)
    {
      [(WPDZoneManager *)self updateScanner];
    }

    _Block_object_dispose(&v29, 8);
  }
}

void __57__WPDZoneManager_unregisterZonesForClient_updateScanner___block_invoke_288(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"kWPClientUUIDs"];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  [v6 removeObject:*(a1 + 32)];
  if (WPLogInitOnce != -1)
  {
    __57__WPDZoneManager_unregisterZonesForClient_updateScanner___block_invoke_288_cold_1();
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Removed client %@ from zone %{public}@", &v10, 0x16u);
  }

  if (![v7 count])
  {
LABEL_7:
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

- (id)getAllZones
{
  v2 = MEMORY[0x277CBEAC0];
  trackedZones = [(WPDZoneManager *)self trackedZones];
  v4 = [v2 dictionaryWithDictionary:trackedZones];

  return v4;
}

- (void)unregisterAllZones
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __78__WPDZoneManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_181_cold_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)centralManager:(void *)a1 didLoseZone:(void *)a2 mask:.cold.2(void *a1, void *a2)
{
  v3 = a1;
  [a2 length];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__WPDZoneManager_centralManager_didLoseZone_mask___block_invoke_194_cold_8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "Exiting a zone we're not meant to be in:\n%@\n%@)", &v4, 0x16u);
}

void __35__WPDZoneManager_printTrackedZones__block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"kInZone"];
  if ([v6 BOOLValue])
  {
    v7 = @"IN";
  }

  else
  {
    v7 = @"OUT";
  }

  v8 = [a3 objectForKeyedSubscript:@"kLastSeen"];
  v9 = 138412802;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&dword_272965000, v5, OS_LOG_TYPE_DEBUG, "\t%@: %@ last:%@", &v9, 0x20u);
}

- (void)updateScanner
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addZoneTrackingRequest:(void *)a1 forClient:(void *)a2 .cold.2(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 state];
  _os_log_error_impl(&dword_272965000, v3, OS_LOG_TYPE_ERROR, "Failed to start tracking a zone - central is not powered on %d", v4, 8u);
}

- (void)unregisterZonesForClient:updateScanner:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)unregisterZonesForClient:updateScanner:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end