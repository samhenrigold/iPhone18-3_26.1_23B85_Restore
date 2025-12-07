@interface SAWithYouDetector
+ (id)convertSAWithYouLongScanContextToString:(unint64_t)string;
+ (id)convertSAWithYouStatusToString:(unint64_t)string;
- (BOOL)_deviceIsWatch:(id)watch;
- (BOOL)_enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:(id)d;
- (BOOL)_isOnlyMonitoringLeashOnlyDevices;
- (BOOL)_isRecentEnoughAdvertisement:(id)advertisement forCurrentDate:(id)date;
- (BOOL)_isStatusBitSetForRelatedDeviceWithShiftIndex:(unint64_t)index fromAdvertisement:(id)advertisement;
- (BOOL)allRelevantDevicesToFindAreFound;
- (BOOL)allSAEnabledDevicesAreFound;
- (BOOL)isExtraDeviceFound:(id)found onDate:(id)date;
- (BOOL)isPeriodicScansAllowed;
- (SABluetoothScanRequestProtocol)bluetoothScanner;
- (SALocationRequestProtocol)locationRequester;
- (SAWithYouDetector)initWithBluetoothScanner:(id)scanner locationRequester:(id)requester deviceRecord:(id)record clock:(id)clock analytics:(id)analytics;
- (double)_maxAgeOfWithYouAdvertisementForDeviceUUID:(id)d;
- (unint64_t)_finalizeToBeVerifiedStatus:(unint64_t)status;
- (void)_deviceWithUUID:(id)d isWithYouDuringLongScanOnAdvertisement:(id)advertisement;
- (void)_notifyAllClientsOfWithYouStatusUpdate:(unint64_t)update forDeviceWithUUID:(id)d;
- (void)_scheduleNextAlarmForScanAfterDate:(id)date;
- (void)_updateAllWithYouStatusOnScanEndedEvent:(id)event;
- (void)_updateLastWithYouDateAndLocation:(id)location forCurrentDate:(id)date;
- (void)_updateWithYouStatusIfNecessaryOnAdvertisement:(id)advertisement;
- (void)_updateWithYouStatusIfNecessaryOnConnectionEvent:(id)event;
- (void)_updateWithYouStatusOfRelatedDevices:(id)devices;
- (void)_updateWithYouStatusOnAdvBufferEmptyEvent:(id)event;
- (void)didChangeTravelTypeFrom:(unint64_t)from to:(unint64_t)to hints:(unint64_t)hints;
- (void)forceUpdateWithYouStatus;
- (void)forceUpdateWithYouStatusToFindDevices:(id)devices withContext:(unint64_t)context;
- (void)forceUpdateWithYouStatusWithShortScan:(BOOL)scan;
- (void)ingestTAEvent:(id)event;
- (void)requestScanIfNeeded;
- (void)resetAllWithYouStatusAndScanStates;
- (void)resumePeriodicScan;
- (void)sendScanContextToCoreAnalytics:(unint64_t)analytics isPartOfLongScan:(BOOL)scan scanDuration:(double)duration relevantOnlyScanDuration:(double)scanDuration foundExtraHELECount:(unint64_t)count extraHELEScanDuration:(double)eScanDuration foundExtraNonHELECount:(unint64_t)eCount extraNonHELEScanDuration:(double)self0 longScanContext:(unint64_t)self1;
- (void)updateExtraDeviceInformation:(id)information;
@end

@implementation SAWithYouDetector

- (SAWithYouDetector)initWithBluetoothScanner:(id)scanner locationRequester:(id)requester deviceRecord:(id)record clock:(id)clock analytics:(id)analytics
{
  scannerCopy = scanner;
  requesterCopy = requester;
  recordCopy = record;
  clockCopy = clock;
  analyticsCopy = analytics;
  v39.receiver = self;
  v39.super_class = SAWithYouDetector;
  v17 = [(SAWithYouDetector *)&v39 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_6;
  }

  v19 = 0;
  if (recordCopy && scannerCopy && clockCopy)
  {
    [(SAWithYouDetector *)v17 setClock:clockCopy];
    [(SAWithYouDetector *)v18 setBluetoothScanner:scannerCopy];
    [(SAWithYouDetector *)v18 setLocationRequester:requesterCopy];
    v20 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    [(SAWithYouDetector *)v18 setClients:v20];

    [(SAWithYouDetector *)v18 setDeviceRecord:recordCopy];
    [(SAWithYouDetector *)v18 setLongScanIsOngoing:0];
    [(SAWithYouDetector *)v18 setRequestedShortScan:0];
    [(SAWithYouDetector *)v18 setLastStartOfScan:0];
    [(SAWithYouDetector *)v18 setLastEndOfScan:0];
    v21 = objc_alloc(MEMORY[0x277CBEAA8]);
    clock = [(SAWithYouDetector *)v18 clock];
    getCurrentTime = [clock getCurrentTime];
    v24 = [v21 initWithTimeInterval:getCurrentTime sinceDate:30.0];
    [clockCopy setupAlarmFireAt:v24 forClient:v18];
    v25 = v38 = analyticsCopy;
    [(SAWithYouDetector *)v18 setNextScheduledAlarm:v25];

    [(SAWithYouDetector *)v18 setLastLongScanRequest:0];
    [(SAWithYouDetector *)v18 setIsNotifyWhileTravelingEnabled:1];
    [(SAWithYouDetector *)v18 setPreviousBufferEmptyTime:0];
    *&v18->_isPeriodicScansNeeded = 0;
    nextOpportunisticScanDate = v18->_nextOpportunisticScanDate;
    v18->_nextOpportunisticScanDate = 0;

    clock2 = [(SAWithYouDetector *)v18 clock];
    getCurrentTime2 = [clock2 getCurrentTime];
    initializationTime = v18->_initializationTime;
    v18->_initializationTime = getCurrentTime2;

    analyticsCopy = v38;
    v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
    relevantDevicesToFindDuringLongScan = v18->_relevantDevicesToFindDuringLongScan;
    v18->_relevantDevicesToFindDuringLongScan = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    foundDevicesDuringCurrentScan = v18->_foundDevicesDuringCurrentScan;
    v18->_foundDevicesDuringCurrentScan = v32;

    [(SAWithYouDetector *)v18 setIsFindingRelevantDevices:0];
    lastRelevantDeviceFoundTime = v18->_lastRelevantDeviceFoundTime;
    v18->_lastRelevantDeviceFoundTime = 0;

    v18->_lastLongScanContext = 0;
    objc_storeStrong(&v18->_analytics, analytics);
    v18->_extraFoundHELECount = 0;
    v18->_extraFoundNonHELECount = 0;
    lastExtraHELEFoundTime = v18->_lastExtraHELEFoundTime;
    v18->_lastExtraHELEFoundTime = 0;

    lastExtraNonHELEFoundTime = v18->_lastExtraNonHELEFoundTime;
    v18->_lastExtraNonHELEFoundTime = 0;

LABEL_6:
    v19 = v18;
  }

  return v19;
}

- (void)sendScanContextToCoreAnalytics:(unint64_t)analytics isPartOfLongScan:(BOOL)scan scanDuration:(double)duration relevantOnlyScanDuration:(double)scanDuration foundExtraHELECount:(unint64_t)count extraHELEScanDuration:(double)eScanDuration foundExtraNonHELECount:(unint64_t)eCount extraNonHELEScanDuration:(double)self0 longScanContext:(unint64_t)self1
{
  scanCopy = scan;
  v32[9] = *MEMORY[0x277D85DE8];
  v31[0] = @"scanType";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:analytics];
  v32[0] = v19;
  v31[1] = @"isPartOfLongScan";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:scanCopy];
  v32[1] = v20;
  v31[2] = @"scanDuration";
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v32[2] = v21;
  v31[3] = @"relevantOnlyScanDuration";
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:scanDuration];
  v32[3] = v22;
  v31[4] = @"foundExtraHELECount";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v32[4] = v23;
  v31[5] = @"extraHELEScanDuration";
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:eScanDuration];
  v32[5] = v24;
  v31[6] = @"foundExtraNonHELECount";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:eCount];
  v32[6] = v25;
  v31[7] = @"extraNonHELEScanDuration";
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:lEScanDuration];
  v32[7] = v26;
  v31[8] = @"longScanContext";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:context];
  v32[8] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:9];

  analytics = [(SAWithYouDetector *)self analytics];
  [analytics submitEvent:@"com.apple.clx.separationalerts.scan" content:v28];
}

- (BOOL)allRelevantDevicesToFindAreFound
{
  v26 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  allObjects = [relevantDevicesToFindDuringLongScan allObjects];

  v5 = [allObjects countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
        v11 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:v9];

        if (!v11)
        {
          v14 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289283;
            v20 = 0;
            v21 = 2082;
            v22 = "";
            v23 = 2113;
            v24 = v9;
            _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou at least one device not found yet, uuid:%{private}@}", buf, 0x1Cu);
          }

          return 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v15 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou all devices found}", buf, 0x12u);
  }

  return 1;
}

- (BOOL)allSAEnabledDevicesAreFound
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  deviceRecord = [(SAWithYouDetector *)self deviceRecord];
  getAllUUIDs = [deviceRecord getAllUUIDs];

  v5 = [getAllUUIDs countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(getAllUUIDs);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        deviceRecord2 = [(SAWithYouDetector *)self deviceRecord];
        v11 = [deviceRecord2 getSADevice:v9];
        if (v11)
        {
          v12 = v11;
          foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
          v14 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:v9];

          if (!v14)
          {
            v17 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68289283;
              v24 = 0;
              v25 = 2082;
              v26 = "";
              v27 = 2113;
              v28 = v9;
              _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou at least one sa enabled device not found yet, uuid:%{private}@}", buf, 0x1Cu);
            }

            return 0;
          }
        }

        else
        {
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [getAllUUIDs countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v15 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou all sa enabled devices found}", buf, 0x12u);
  }

  return 1;
}

- (void)forceUpdateWithYouStatus
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(SAWithYouDetector *)self longScanIsOngoing])
  {
    [(SAWithYouDetector *)self setLongScanIsOngoing:1];
    [(SAWithYouDetector *)self setRequestedShortScan:1];
    _isOnlyMonitoringLeashOnlyDevices = [(SAWithYouDetector *)self _isOnlyMonitoringLeashOnlyDevices];
    v4 = TASALog;
    v5 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
    if (_isOnlyMonitoringLeashOnlyDevices)
    {
      if (v5)
      {
        v10 = 68289026;
        v11 = 0;
        v12 = 2082;
        v13 = "";
        _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou skip requesting scan - leash-only}", &v10, 0x12u);
      }

      v6 = objc_alloc(MEMORY[0x277D73428]);
      clock = [(SAWithYouDetector *)self clock];
      getCurrentTime = [clock getCurrentTime];
      WeakRetained = [v6 initWithState:1 date:getCurrentTime];

      [(SAWithYouDetector *)self _updateAllWithYouStatusOnScanEndedEvent:WeakRetained];
    }

    else
    {
      if (v5)
      {
        v10 = 68289026;
        v11 = 0;
        v12 = 2082;
        v13 = "";
        _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou requesting scan to force update withyou status}", &v10, 0x12u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_bluetoothScanner);
      [WeakRetained requestBluetoothScanForTypes:2];
    }
  }
}

- (void)forceUpdateWithYouStatusToFindDevices:(id)devices withContext:(unint64_t)context
{
  v44 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    v9 = [SAWithYouDetector convertSAWithYouLongScanContextToString:context];
    buf = 68289539;
    v38 = 2082;
    v39 = "";
    v40 = 2113;
    v41 = devicesCopy;
    v42 = 2081;
    uTF8String = [v9 UTF8String];
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou force update to find devices, device list:%{private}@, context:%{private}s}", &buf, 0x26u);
  }

  [(SAWithYouDetector *)self setLastLongScanContext:context];
  if ([(SAWithYouDetector *)self _isOnlyMonitoringLeashOnlyDevices])
  {
    goto LABEL_4;
  }

  [(SAWithYouDetector *)self forceUpdateWithYouStatusWithShortScan:1];
  relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  [relevantDevicesToFindDuringLongScan addObjectsFromArray:devicesCopy];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = devicesCopy;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        if (([(SADeviceRecord *)self->_deviceRecord getConnectionState:v16, v32]& 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
          [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v16 forCurrentDate:getCurrentTime];

          foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
          v19 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:v16];

          if (!v19)
          {
            getCurrentTime2 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            foundDevicesDuringCurrentScan2 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
            [foundDevicesDuringCurrentScan2 setObject:getCurrentTime2 forKeyedSubscript:v16];

            getCurrentTime3 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:getCurrentTime3];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  v23 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v24 = v23;
    relevantDevicesToFindDuringLongScan2 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
    foundDevicesDuringCurrentScan3 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    buf = 68289539;
    v38 = 2082;
    v39 = "";
    v40 = 2113;
    v41 = relevantDevicesToFindDuringLongScan2;
    v42 = 2113;
    uTF8String = foundDevicesDuringCurrentScan3;
    _os_log_impl(&dword_2656EA000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou devices to find, devices to find:%{private}@, devices found:%{private}@}", &buf, 0x26u);
  }

  if (![(SAWithYouDetector *)self allRelevantDevicesToFindAreFound])
  {
    [(SAWithYouDetector *)self setIsFindingRelevantDevices:1];
    v31 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289026;
      v38 = 2082;
      v39 = "";
      _os_log_impl(&dword_2656EA000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou some remaining devices to find, requesting long aggressive scan if not already ongoing}", &buf, 0x12u);
    }

LABEL_4:
    [(SAWithYouDetector *)self forceUpdateWithYouStatus];
    goto LABEL_5;
  }

  if ([(SAWithYouDetector *)self isFindingRelevantDevices]&& [(SAWithYouDetector *)self longScanIsOngoing])
  {
    relevantDevicesToFindDuringLongScan3 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
    [relevantDevicesToFindDuringLongScan3 removeAllObjects];

    v28 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v38 = 2082;
      v39 = "";
      _os_log_impl(&dword_2656EA000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou no more tracked devices to find while long scan is ongoing, requesting to stop long aggressive scan}", &buf, 0x12u);
    }

    getCurrentTime4 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:getCurrentTime4];

    [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
    [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    bluetoothScanner = [(SAWithYouDetector *)self bluetoothScanner];
    [bluetoothScanner stopLongAggressiveScan];
  }

LABEL_5:
}

- (void)forceUpdateWithYouStatusWithShortScan:(BOOL)scan
{
  scanCopy = scan;
  v24 = *MEMORY[0x277D85DE8];
  lastLongScanRequest = [(SAWithYouDetector *)self lastLongScanRequest];

  if (!lastLongScanRequest && scanCopy)
  {
    getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    [(SAWithYouDetector *)self setLastLongScanRequest:getCurrentTime];

    lastLongScanRequest2 = [(SAWithYouDetector *)self lastLongScanRequest];
    v8 = [lastLongScanRequest2 copy];
    [(SAWithYouDetector *)self setLastExtraHELEFoundTime:v8];

    lastLongScanRequest3 = [(SAWithYouDetector *)self lastLongScanRequest];
    v10 = [lastLongScanRequest3 copy];
    [(SAWithYouDetector *)self setLastExtraNonHELEFoundTime:v10];
  }

  if (![(SAWithYouDetector *)self requestedShortScan])
  {
    [(SAWithYouDetector *)self setRequestedShortScan:1];
    _isOnlyMonitoringLeashOnlyDevices = [(SAWithYouDetector *)self _isOnlyMonitoringLeashOnlyDevices];
    v12 = TASALog;
    v13 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
    if (_isOnlyMonitoringLeashOnlyDevices)
    {
      if (v13)
      {
        v20 = 68289026;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou skip requesting short scan - leash-only}", &v20, 0x12u);
      }

      v14 = objc_alloc(MEMORY[0x277D73428]);
      clock = [(SAWithYouDetector *)self clock];
      getCurrentTime2 = [clock getCurrentTime];
      analytics2 = [v14 initWithState:1 date:getCurrentTime2];

      [(SAWithYouDetector *)self _updateAllWithYouStatusOnScanEndedEvent:analytics2];
      goto LABEL_13;
    }

    if (v13)
    {
      v20 = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou requesting short scan to force update withyou status}", &v20, 0x12u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_bluetoothScanner);
    [WeakRetained requestBluetoothScanForTypes:1];

    [(SAWithYouDetector *)self sendScanContextToCoreAnalytics:1 isPartOfLongScan:scanCopy scanDuration:0 relevantOnlyScanDuration:0 foundExtraHELECount:0 extraHELEScanDuration:6.0 foundExtraNonHELECount:0.0 extraNonHELEScanDuration:0.0 longScanContext:0.0];
    if (!scanCopy)
    {
      analytics = [(SAWithYouDetector *)self analytics];
      [analytics addScanDuration:6.0];

      analytics2 = [(SAWithYouDetector *)self analytics];
      [analytics2 addScanDurationForFindingRelevantItemsOnly:6.0];
LABEL_13:
    }
  }
}

- (BOOL)_isOnlyMonitoringLeashOnlyDevices
{
  v17 = *MEMORY[0x277D85DE8];
  [(SADeviceRecord *)self->_deviceRecord getAllUUIDs];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v8, v12];

        if (v9 && ![(SAWithYouDetector *)self _deviceIsWatch:v8])
        {
          v10 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (void)resetAllWithYouStatusAndScanStates
{
  [(SADeviceRecord *)self->_deviceRecord resetAllWithYouStatus];
  [(SAWithYouDetector *)self setLongScanIsOngoing:0];
  [(SAWithYouDetector *)self setRequestedShortScan:0];
  [(SAWithYouDetector *)self setLastStartOfScan:0];
  [(SAWithYouDetector *)self setLastEndOfScan:0];
  [(SAWithYouDetector *)self setPreviousBufferEmptyTime:0];
  [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
  [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:0];
  [(SAWithYouDetector *)self setLastLongScanContext:0];
  [(SAWithYouDetector *)self setExtraFoundHELECount:0];
  [(SAWithYouDetector *)self setExtraFoundNonHELECount:0];
  [(SAWithYouDetector *)self setLastExtraHELEFoundTime:0];

  [(SAWithYouDetector *)self setLastExtraNonHELEFoundTime:0];
}

- (BOOL)isPeriodicScansAllowed
{
  isNotifyWhileTravelingEnabled = [(SAWithYouDetector *)self isNotifyWhileTravelingEnabled];
  if (isNotifyWhileTravelingEnabled)
  {

    LOBYTE(isNotifyWhileTravelingEnabled) = [(SAWithYouDetector *)self isPeriodicScansNeeded];
  }

  return isNotifyWhileTravelingEnabled;
}

- (void)resumePeriodicScan
{
  [(SAWithYouDetector *)self setIsPeriodicScansNeeded:1];

  [(SAWithYouDetector *)self requestScanIfNeeded];
}

- (void)_notifyAllClientsOfWithYouStatusUpdate:(unint64_t)update forDeviceWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(SAWithYouDetector *)self statusForDeviceWithUUID:dCopy];
  [(SADeviceRecord *)self->_deviceRecord updatedWithYouStatusFrom:v7 to:update forDeviceWithUUID:dCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_clients;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) updatedWithYouStatusFrom:v7 to:update forDeviceWithUUID:{dCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_updateWithYouStatusIfNecessaryOnConnectionEvent:(id)event
{
  v31 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  deviceRecord = self->_deviceRecord;
  identifier = [eventCopy identifier];
  v7 = [(SADeviceRecord *)deviceRecord getSADevice:identifier];

  if (v7)
  {
    identifier2 = [eventCopy identifier];
    v9 = [(SAWithYouDetector *)self statusForDeviceWithUUID:identifier2];

    state = [eventCopy state];
    if ((state - 2) >= 2)
    {
      if (state != 1)
      {
        goto LABEL_12;
      }

      identifier3 = [eventCopy identifier];
      v15 = [(SAWithYouDetector *)self _deviceIsWatch:identifier3];

      if (v15)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }
    }

    else
    {
      identifier4 = [eventCopy identifier];
      date = [eventCopy date];
      [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:identifier4 forCurrentDate:date];

      v13 = 1;
    }

    if (v9 != v13)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        identifier5 = [eventCopy identifier];
        v19 = [SAWithYouDetector convertSAWithYouStatusToString:v9];
        v20 = [SAWithYouDetector convertSAWithYouStatusToString:v13];
        v22[0] = 68289795;
        v22[1] = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2113;
        v26 = identifier5;
        v27 = 2113;
        v28 = v19;
        v29 = 2113;
        v30 = v20;
        _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated connection state changed, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", v22, 0x30u);
      }

      identifier6 = [eventCopy identifier];
      [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:v13 forDeviceWithUUID:identifier6];
    }
  }

LABEL_12:
}

- (double)_maxAgeOfWithYouAdvertisementForDeviceUUID:(id)d
{
  deviceRecord = self->_deviceRecord;
  dCopy = d;
  v6 = [(SADeviceRecord *)deviceRecord getSADevice:dCopy];
  deviceType = [v6 deviceType];
  v8 = [(SADeviceRecord *)self->_deviceRecord getMonitoringSessionState:dCopy];

  if (![v6 isAppleAudioAccessory])
  {
    goto LABEL_9;
  }

  if (v8 > 4 || ((1 << v8) & 0x1A) == 0)
  {
    if (deviceType == 16)
    {
      v10 = 120.0;
      goto LABEL_10;
    }

LABEL_9:
    v10 = 30.0;
    goto LABEL_10;
  }

  v10 = 360.0;
LABEL_10:

  return v10;
}

- (void)_updateLastWithYouDateAndLocation:(id)location forCurrentDate:(id)date
{
  deviceRecord = self->_deviceRecord;
  locationCopy = location;
  [(SADeviceRecord *)deviceRecord updateLastWithYouDate:date forDeviceWithUUID:locationCopy];
  [(SADeviceRecord *)self->_deviceRecord updateLastWithYouLocation:0 forDeviceWithUUID:locationCopy];
}

- (BOOL)_isRecentEnoughAdvertisement:(id)advertisement forCurrentDate:(id)date
{
  dateCopy = date;
  advertisementCopy = advertisement;
  scanDate = [advertisementCopy scanDate];
  [dateCopy timeIntervalSinceDate:scanDate];
  v10 = v9;

  uuid = [advertisementCopy uuid];

  [(SAWithYouDetector *)self _maxAgeOfWithYouAdvertisementForDeviceUUID:uuid];
  LOBYTE(advertisementCopy) = v10 <= v12;

  return advertisementCopy;
}

- (BOOL)isExtraDeviceFound:(id)found onDate:(id)date
{
  foundCopy = found;
  dateCopy = date;
  if (-[SAWithYouDetector isFindingRelevantDevices](self, "isFindingRelevantDevices") || (-[SAWithYouDetector relevantDevicesToFindDuringLongScan](self, "relevantDevicesToFindDuringLongScan"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:foundCopy], v8, (v9 & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    lastStartOfScan = [(SAWithYouDetector *)self lastStartOfScan];
    v12 = [lastStartOfScan dateByAddingTimeInterval:7.0];

    lastRelevantDeviceFoundTime = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];

    if (lastRelevantDeviceFoundTime)
    {
      lastRelevantDeviceFoundTime2 = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
      v15 = [v12 laterDate:lastRelevantDeviceFoundTime2];

      v12 = v15;
    }

    if ([v12 compare:dateCopy] == -1)
    {
      deviceRecord = [(SAWithYouDetector *)self deviceRecord];
      v17 = [deviceRecord getMonitoringSessionState:foundCopy];

      deviceRecord2 = [(SAWithYouDetector *)self deviceRecord];
      v19 = [deviceRecord2 getScenarioClass:foundCopy];

      v10 = v17 == 2 && (v19 & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)updateExtraDeviceInformation:(id)information
{
  informationCopy = information;
  deviceRecord = [(SAWithYouDetector *)self deviceRecord];
  v5 = [deviceRecord getSADevice:informationCopy];
  deviceType = [v5 deviceType];

  if (deviceType == 16)
  {
    [(SAWithYouDetector *)self setExtraFoundHELECount:[(SAWithYouDetector *)self extraFoundHELECount]+ 1];
    lastExtraHELEFoundTime = [(SAWithYouDetector *)self lastExtraHELEFoundTime];
    foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    v9 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:informationCopy];
    v10 = [lastExtraHELEFoundTime laterDate:v9];
    [(SAWithYouDetector *)self setLastExtraHELEFoundTime:v10];
  }

  else
  {
    [(SAWithYouDetector *)self setExtraFoundNonHELECount:[(SAWithYouDetector *)self extraFoundNonHELECount]+ 1];
    lastExtraHELEFoundTime = [(SAWithYouDetector *)self lastExtraNonHELEFoundTime];
    foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
    v9 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:informationCopy];
    v10 = [lastExtraHELEFoundTime laterDate:v9];
    [(SAWithYouDetector *)self setLastExtraNonHELEFoundTime:v10];
  }
}

- (void)_deviceWithUUID:(id)d isWithYouDuringLongScanOnAdvertisement:(id)advertisement
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  advertisementCopy = advertisement;
  foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
  v9 = [foundDevicesDuringCurrentScan objectForKeyedSubscript:dCopy];

  if (!v9)
  {
    lastStartOfScan = [(SAWithYouDetector *)self lastStartOfScan];
    if (!lastStartOfScan || (v11 = lastStartOfScan, [advertisementCopy getDate], v12 = objc_claimAutoreleasedReturnValue(), -[SAWithYouDetector lastStartOfScan](self, "lastStartOfScan"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "timeIntervalSinceDate:", v13), v15 = v14, v13, v12, v11, v15 >= 0.0))
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v33 = 68289283;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        v37 = 2113;
        v38 = dCopy;
        _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou found new device, uuid:%{private}@}", &v33, 0x1Cu);
      }

      getDate = [advertisementCopy getDate];
      foundDevicesDuringCurrentScan2 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
      [foundDevicesDuringCurrentScan2 setObject:getDate forKeyedSubscript:dCopy];

      uuid = [advertisementCopy uuid];
      getDate2 = [advertisementCopy getDate];
      v21 = [(SAWithYouDetector *)self isExtraDeviceFound:uuid onDate:getDate2];

      if (v21)
      {
        uuid2 = [advertisementCopy uuid];
        [(SAWithYouDetector *)self updateExtraDeviceInformation:uuid2];
      }
    }

    v23 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
      foundDevicesDuringCurrentScan3 = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
      v33 = 68289539;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2113;
      v38 = relevantDevicesToFindDuringLongScan;
      v39 = 2113;
      v40 = foundDevicesDuringCurrentScan3;
      _os_log_impl(&dword_2656EA000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sa #withyou devices to find, devices to find:%{private}@, devices found:%{private}@}", &v33, 0x26u);
    }

    allSAEnabledDevicesAreFound = [(SAWithYouDetector *)self allSAEnabledDevicesAreFound];
    if ([(SAWithYouDetector *)self isFindingRelevantDevices]&& [(SAWithYouDetector *)self allRelevantDevicesToFindAreFound])
    {
      relevantDevicesToFindDuringLongScan2 = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
      [relevantDevicesToFindDuringLongScan2 removeAllObjects];

      v29 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 68289026;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        _os_log_impl(&dword_2656EA000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou no more devices to find while long scan is ongoing, recording time of last device found for metrics}", &v33, 0x12u);
      }

      getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:getCurrentTime];

      [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
      [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    }

    else if (!allSAEnabledDevicesAreFound)
    {
      goto LABEL_19;
    }

    v31 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 68289026;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      _os_log_impl(&dword_2656EA000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou no more tracked devices to find while long scan is ongoing, requesting to stop long aggressive scan}", &v33, 0x12u);
    }

    [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    bluetoothScanner = [(SAWithYouDetector *)self bluetoothScanner];
    [bluetoothScanner stopLongAggressiveScan];
  }

LABEL_19:
}

- (void)_updateWithYouStatusIfNecessaryOnAdvertisement:(id)advertisement
{
  v34 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  uuid = [advertisementCopy uuid];
  if (uuid)
  {
    v6 = uuid;
    deviceRecord = self->_deviceRecord;
    uuid2 = [advertisementCopy uuid];
    v9 = [(SADeviceRecord *)deviceRecord getSADevice:uuid2];

    if (v9)
    {
      uuid3 = [advertisementCopy uuid];
      scanDate = [advertisementCopy scanDate];
      [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:uuid3 forCurrentDate:scanDate];

      uuid4 = [advertisementCopy uuid];
      LOBYTE(scanDate) = [(SAWithYouDetector *)self _deviceIsWatch:uuid4];

      if ((scanDate & 1) == 0)
      {
        uuid5 = [advertisementCopy uuid];
        v14 = [(SAWithYouDetector *)self statusForDeviceWithUUID:uuid5];

        getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        v16 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:advertisementCopy forCurrentDate:getCurrentTime];

        v17 = v16;
        if ([(SAWithYouDetector *)self longScanIsOngoing]&& v16)
        {
          uuid6 = [advertisementCopy uuid];
          [(SAWithYouDetector *)self _deviceWithUUID:uuid6 isWithYouDuringLongScanOnAdvertisement:advertisementCopy];
        }

        if (v17 && v14 != v17)
        {
          v19 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            uuid7 = [advertisementCopy uuid];
            v22 = [SAWithYouDetector convertSAWithYouStatusToString:v14];
            v23 = [SAWithYouDetector convertSAWithYouStatusToString:1];
            v25[0] = 68289795;
            v25[1] = 0;
            v26 = 2082;
            v27 = "";
            v28 = 2113;
            v29 = uuid7;
            v30 = 2113;
            v31 = v22;
            v32 = 2113;
            v33 = v23;
            _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated observed advertisement, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", v25, 0x30u);
          }

          uuid8 = [advertisementCopy uuid];
          [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:1 forDeviceWithUUID:uuid8];
        }

        [(SAWithYouDetector *)self _updateWithYouStatusOfRelatedDevices:advertisementCopy];
      }
    }
  }
}

- (void)_updateWithYouStatusOfRelatedDevices:(id)devices
{
  v43 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceRecord = self->_deviceRecord;
  uuid = [devicesCopy uuid];
  v7 = [(SADeviceRecord *)deviceRecord getRelatedDevices:uuid];

  if (v7)
  {
    v8 = [v7 count];
    v10 = v8;
    if (v8 > 3)
    {
      v29 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        v30 = v29;
        uuid2 = [devicesCopy uuid];
        *buf = 68289539;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        v37 = 2113;
        v38 = uuid2;
        v39 = 2049;
        v40 = v10;
        _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #withyou detected a device with more than maximum allowable related beacons, uuid:%{private}@, count:%{private}ld}", buf, 0x26u);
      }
    }

    else if (v8)
    {
      v11 = 0;
      *&v9 = 68289795;
      v32 = v9;
      do
      {
        v12 = [v7 objectAtIndexedSubscript:{v11, v32}];
        deviceRecord = [(SAWithYouDetector *)self deviceRecord];
        uuid3 = [devicesCopy uuid];
        v15 = [deviceRecord getSADevice:uuid3];
        partIdentifier = [v15 partIdentifier];

        deviceRecord2 = [(SAWithYouDetector *)self deviceRecord];
        v18 = [deviceRecord2 getSADevice:v12];
        partIdentifier2 = [v18 partIdentifier];

        if ([(SAWithYouDetector *)self _isValidPartID:partIdentifier]&& [(SAWithYouDetector *)self _isValidPartID:partIdentifier2]&& partIdentifier2 != partIdentifier)
        {
          v20 = partIdentifier2 <= partIdentifier ? partIdentifier2 - partIdentifier + 3 : partIdentifier2 + ~partIdentifier;
          if ([(SAWithYouDetector *)self _isStatusBitSetForRelatedDeviceWithShiftIndex:v20 fromAdvertisement:devicesCopy])
          {
            scanDate = [devicesCopy scanDate];
            [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v12 forCurrentDate:scanDate];

            v22 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v12];
            getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            v24 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:devicesCopy forCurrentDate:getCurrentTime];

            [(SADeviceRecord *)self->_deviceRecord updateLatestAdvertisement:devicesCopy forDeviceWithUUID:v12];
            if ([(SAWithYouDetector *)self longScanIsOngoing]&& v24)
            {
              [(SAWithYouDetector *)self _deviceWithUUID:v12 isWithYouDuringLongScanOnAdvertisement:devicesCopy];
            }

            if (v24 && v22 != v24)
            {
              v25 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                v26 = v25;
                v27 = [SAWithYouDetector convertSAWithYouStatusToString:v22];
                v28 = [SAWithYouDetector convertSAWithYouStatusToString:1];
                *buf = v32;
                v34 = 0;
                v35 = 2082;
                v36 = "";
                v37 = 2113;
                v38 = v12;
                v39 = 2113;
                v40 = v27;
                v41 = 2113;
                v42 = v28;
                _os_log_impl(&dword_2656EA000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated observed advertisement from related device, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", buf, 0x30u);
              }

              [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:1 forDeviceWithUUID:v12];
            }
          }
        }

        ++v11;
      }

      while (v10 != v11);
    }
  }
}

- (BOOL)_isStatusBitSetForRelatedDeviceWithShiftIndex:(unint64_t)index fromAdvertisement:(id)advertisement
{
  v14 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v6 = advertisementCopy;
  if (index < 3)
  {
    v9 = dword_26571E588[index];
    v8 = ([advertisementCopy status] >> v9) & 1;
  }

  else
  {
    v7 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      v11[0] = 68289026;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa #withyou trying to get status bit of related device at out of bound index}", v11, 0x12u);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)_finalizeToBeVerifiedStatus:(unint64_t)status
{
  statusCopy = 1;
  if (status != 3)
  {
    statusCopy = status;
  }

  if (status == 4)
  {
    return 2;
  }

  else
  {
    return statusCopy;
  }
}

- (BOOL)_enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:(id)d
{
  deviceRecord = self->_deviceRecord;
  dCopy = d;
  v6 = [(SADeviceRecord *)deviceRecord getSADevice:dCopy];
  v7 = [(SADeviceRecord *)self->_deviceRecord getMonitoringSessionState:dCopy];

  if (![v6 isAppleAudioAccessory])
  {
    goto LABEL_10;
  }

  if (v7 > 4 || ((1 << v7) & 0x1A) == 0)
  {
    if ([v6 deviceType] == 16)
    {
      v9 = 120.0;
      goto LABEL_7;
    }

LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  v9 = 360.0;
LABEL_7:
  clock = [(SAWithYouDetector *)self clock];
  getCurrentTime = [clock getCurrentTime];
  initializationTime = [(SAWithYouDetector *)self initializationTime];
  [getCurrentTime timeIntervalSinceDate:initializationTime];
  v14 = v13 >= v9;

LABEL_11:
  return v14;
}

- (void)_updateAllWithYouStatusOnScanEndedEvent:(id)event
{
  v63 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  date = [eventCopy date];
  [(SAWithYouDetector *)self setLastEndOfScan:date];

  getAllUUIDs = [(SADeviceRecord *)self->_deviceRecord getAllUUIDs];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [getAllUUIDs countByEnumeratingWithState:&v47 objects:v62 count:16];
  v41 = getAllUUIDs;
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(getAllUUIDs);
        }

        v10 = *(*(&v47 + 1) + 8 * v9);
        v11 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];

        if (v11)
        {
          v12 = [(SADeviceRecord *)self->_deviceRecord getConnectionState:v10];
          v13 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v10];
          if ([(SAWithYouDetector *)self _deviceIsWatch:v10])
          {
            if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              date2 = [eventCopy date];
              [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v10 forCurrentDate:date2];

              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

            goto LABEL_24;
          }

          if ((v12 & 0xFFFFFFFFFFFFFFFELL) != 2)
          {
            v18 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];

            if (!v18)
            {
              if ([(SAWithYouDetector *)self _enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:v10])
              {
                v16 = 2;
              }

              else
              {
                v16 = v13;
              }

              goto LABEL_23;
            }

            lastStartOfScan = [(SAWithYouDetector *)self lastStartOfScan];

            v16 = v13;
            if (lastStartOfScan)
            {
              v20 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
              scanDate = [v20 scanDate];
              lastStartOfScan2 = [(SAWithYouDetector *)self lastStartOfScan];
              [scanDate timeIntervalSinceDate:lastStartOfScan2];
              if (v23 >= 0.0)
              {
              }

              else
              {
                v24 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
                [eventCopy date];
                v25 = v40 = v20;
                v39 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:v24 forCurrentDate:v25];

                getAllUUIDs = v41;
                if (!v39)
                {
                  v16 = 2;
                  goto LABEL_23;
                }
              }

LABEL_14:
              v16 = 1;
            }

LABEL_23:
            v17 = [(SAWithYouDetector *)self _finalizeToBeVerifiedStatus:v16];
LABEL_24:
            if (v13 != v17 && v17 != 0)
            {
              v27 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                v28 = v27;
                v29 = [SAWithYouDetector convertSAWithYouStatusToString:v13];
                v30 = [SAWithYouDetector convertSAWithYouStatusToString:v17];
                *buf = 68289795;
                v53 = 0;
                v54 = 2082;
                v55 = "";
                v56 = 2113;
                v57 = v10;
                v58 = 2113;
                v59 = v29;
                v60 = 2113;
                v61 = v30;
                _os_log_impl(&dword_2656EA000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated end of scan, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", buf, 0x30u);

                getAllUUIDs = v41;
              }

              [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:v17 forDeviceWithUUID:v10];
            }

            goto LABEL_31;
          }

          date3 = [eventCopy date];
          [(SAWithYouDetector *)self _updateLastWithYouDateAndLocation:v10 forCurrentDate:date3];

          goto LABEL_14;
        }

LABEL_31:
        ++v9;
      }

      while (v7 != v9);
      v31 = [getAllUUIDs countByEnumeratingWithState:&v47 objects:v62 count:16];
      v7 = v31;
    }

    while (v31);
  }

  foundDevicesDuringCurrentScan = [(SAWithYouDetector *)self foundDevicesDuringCurrentScan];
  [foundDevicesDuringCurrentScan removeAllObjects];

  relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
  [relevantDevicesToFindDuringLongScan removeAllObjects];

  [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
  if ([(SAWithYouDetector *)self longScanIsOngoing]|| [(SAWithYouDetector *)self requestedShortScan])
  {
    [(SAWithYouDetector *)self setLongScanIsOngoing:0];
    [(SAWithYouDetector *)self setRequestedShortScan:0];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = self->_clients;
    v35 = [(NSHashTable *)v34 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v44;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v44 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v43 + 1) + 8 * i) didForceUpdateWithYouStatus];
        }

        v36 = [(NSHashTable *)v34 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v36);
    }

    getAllUUIDs = v41;
  }

  [(SAWithYouDetector *)self requestScanIfNeeded];
}

- (void)_updateWithYouStatusOnAdvBufferEmptyEvent:(id)event
{
  v48 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  previousBufferEmptyTime = [(SAWithYouDetector *)self previousBufferEmptyTime];

  if (!previousBufferEmptyTime)
  {
    date = [eventCopy date];
    [(SAWithYouDetector *)self setPreviousBufferEmptyTime:date];

    goto LABEL_28;
  }

  v31 = eventCopy;
  [(SADeviceRecord *)self->_deviceRecord getAllUUIDs];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (!v6)
  {
    goto LABEL_26;
  }

  v7 = v6;
  v8 = *v34;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      v11 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];

      if (v11)
      {
        v12 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];
        deviceType = [v12 deviceType];

        if (deviceType == 16)
        {
          v14 = [(SAWithYouDetector *)self statusForDeviceWithUUID:v10];
          previousBufferEmptyTime2 = [(SAWithYouDetector *)self previousBufferEmptyTime];
          lastEndOfScan = [(SAWithYouDetector *)self lastEndOfScan];

          if (lastEndOfScan)
          {
            previousBufferEmptyTime3 = [(SAWithYouDetector *)self previousBufferEmptyTime];
            lastEndOfScan2 = [(SAWithYouDetector *)self lastEndOfScan];
            v19 = [previousBufferEmptyTime3 laterDate:lastEndOfScan2];

            previousBufferEmptyTime2 = v19;
          }

          v20 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10];
          if (v20 && (v21 = v20, [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v10], v22 = objc_claimAutoreleasedReturnValue(), v23 = [(SAWithYouDetector *)self _isRecentEnoughAdvertisement:v22 forCurrentDate:previousBufferEmptyTime2], v22, v21, v23))
          {
            v24 = 1;
LABEL_18:
            if (v14 != v24 && v24)
            {
              v25 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                v26 = v25;
                v27 = [SAWithYouDetector convertSAWithYouStatusToString:v14];
                v28 = [SAWithYouDetector convertSAWithYouStatusToString:v24];
                *buf = 68289795;
                v38 = 0;
                v39 = 2082;
                v40 = "";
                v41 = 2113;
                v42 = v10;
                v43 = 2113;
                v44 = v27;
                v45 = 2113;
                v46 = v28;
                _os_log_impl(&dword_2656EA000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou status updated on adv buffer empty event, uuid:%{private}@, oldStatus:%{private}@, newStatus:%{private}@}", buf, 0x30u);
              }

              [(SAWithYouDetector *)self _notifyAllClientsOfWithYouStatusUpdate:v24 forDeviceWithUUID:v10];
            }
          }

          else if (v14 != 2)
          {
            if ([(SAWithYouDetector *)self _enoughTimeHasPassedSinceInitializationToMarkNotWithYouForDeviceUUID:v10])
            {
              v24 = 4;
            }

            else
            {
              v24 = v14;
            }

            goto LABEL_18;
          }

          continue;
        }
      }
    }

    v7 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
  }

  while (v7);
LABEL_26:
  eventCopy = v31;
  date2 = [v31 date];
  [(SAWithYouDetector *)self setPreviousBufferEmptyTime:date2];

LABEL_28:
}

- (void)_scheduleNextAlarmForScanAfterDate:(id)date
{
  dateCopy = date;
  if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
  {
    nextScheduledAlarm = [(SAWithYouDetector *)self nextScheduledAlarm];

    if (nextScheduledAlarm)
    {
      clock = [(SAWithYouDetector *)self clock];
      nextScheduledAlarm2 = [(SAWithYouDetector *)self nextScheduledAlarm];
      [clock cancelAlarmWithUUID:nextScheduledAlarm2];

      [(SAWithYouDetector *)self setNextScheduledAlarm:0];
    }

    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:dateCopy sinceDate:300.0];
    isInVehicularTravel = [(SAWithYouDetector *)self isInVehicularTravel];
    v9 = v7;
    if (!isInVehicularTravel)
    {
      clock2 = [(SAWithYouDetector *)self clock];
      v11 = [clock2 setupAlarmFireAt:v7 forClient:self];
      [(SAWithYouDetector *)self setNextScheduledAlarm:v11];

      v9 = 0;
    }

    [(SAWithYouDetector *)self setNextOpportunisticScanDate:v9];
  }

  else
  {
    [(SAWithYouDetector *)self setNextOpportunisticScanDate:0];
  }
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SAWithYouDetector *)self _updateWithYouStatusIfNecessaryOnAdvertisement:eventCopy];
      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = eventCopy;
      if ([v4 state] == 1)
      {
        lastLongScanRequest = [(SAWithYouDetector *)self lastLongScanRequest];

        if (lastLongScanRequest)
        {
          v6 = v4;
          if ([(SAWithYouDetector *)self isFindingRelevantDevices])
          {
            date = [v6 date];
            [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:date];

            relevantDevicesToFindDuringLongScan = [(SAWithYouDetector *)self relevantDevicesToFindDuringLongScan];
            [relevantDevicesToFindDuringLongScan removeAllObjects];

            [(SAWithYouDetector *)self setIsFindingRelevantDevices:0];
          }

          date2 = [v6 date];
          lastLongScanRequest2 = [(SAWithYouDetector *)self lastLongScanRequest];
          [date2 timeIntervalSinceDate:lastLongScanRequest2];
          v12 = v11;

          lastRelevantDeviceFoundTime = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
          if (lastRelevantDeviceFoundTime)
          {
            lastRelevantDeviceFoundTime2 = [(SAWithYouDetector *)self lastRelevantDeviceFoundTime];
            lastLongScanRequest3 = [(SAWithYouDetector *)self lastLongScanRequest];
            [lastRelevantDeviceFoundTime2 timeIntervalSinceDate:lastLongScanRequest3];
            v17 = v16;
          }

          else
          {
            v17 = 0.0;
          }

          lastExtraHELEFoundTime = [(SAWithYouDetector *)self lastExtraHELEFoundTime];
          lastLongScanRequest4 = [(SAWithYouDetector *)self lastLongScanRequest];
          [lastExtraHELEFoundTime timeIntervalSinceDate:lastLongScanRequest4];
          v28 = v27;

          lastExtraNonHELEFoundTime = [(SAWithYouDetector *)self lastExtraNonHELEFoundTime];
          lastLongScanRequest5 = [(SAWithYouDetector *)self lastLongScanRequest];
          [lastExtraNonHELEFoundTime timeIntervalSinceDate:lastLongScanRequest5];
          v32 = v31;

          [(SAWithYouDetector *)self sendScanContextToCoreAnalytics:2 isPartOfLongScan:1 scanDuration:[(SAWithYouDetector *)self extraFoundHELECount] relevantOnlyScanDuration:[(SAWithYouDetector *)self extraFoundNonHELECount] foundExtraHELECount:[(SAWithYouDetector *)self lastLongScanContext] extraHELEScanDuration:v12 foundExtraNonHELECount:v17 extraNonHELEScanDuration:v28 longScanContext:v32];
          analytics = [(SAWithYouDetector *)self analytics];
          [analytics addScanDuration:v12];

          analytics2 = [(SAWithYouDetector *)self analytics];
          v35 = analytics2;
          v36 = 6.0;
          if (v17 >= 6.0)
          {
            v36 = v17;
          }

          [analytics2 addScanDurationForFindingRelevantItemsOnly:v36];

          [(SAWithYouDetector *)self setLastLongScanRequest:0];
          [(SAWithYouDetector *)self setLastRelevantDeviceFoundTime:0];
          [(SAWithYouDetector *)self setExtraFoundHELECount:0];
          [(SAWithYouDetector *)self setExtraFoundNonHELECount:0];
          [(SAWithYouDetector *)self setLastExtraHELEFoundTime:0];
          [(SAWithYouDetector *)self setLastExtraNonHELEFoundTime:0];
        }

        [(SAWithYouDetector *)self _updateAllWithYouStatusOnScanEndedEvent:v4];
        goto LABEL_26;
      }

      if ([v4 state] == 2)
      {
        date3 = [v4 date];
        v19 = [date3 dateByAddingTimeInterval:-1.0];
        [(SAWithYouDetector *)self setLastStartOfScan:v19];

LABEL_17:
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_27;
      }

      v4 = eventCopy;
      if ([v4 systemStateType] != 15)
      {
        if ([v4 systemStateType] != 11 || !objc_msgSend(v4, "isOn"))
        {
          goto LABEL_26;
        }

        date3 = [(SAWithYouDetector *)self clock];
        v20 = objc_alloc(MEMORY[0x277CBEAA8]);
        clock = [(SAWithYouDetector *)self clock];
        getCurrentTime = [clock getCurrentTime];
        v23 = [v20 initWithTimeInterval:getCurrentTime sinceDate:30.0];
        v24 = [date3 setupAlarmFireAt:v23 forClient:self];
        [(SAWithYouDetector *)self setNextScheduledAlarm:v24];

        goto LABEL_17;
      }

      [(SAWithYouDetector *)self _updateWithYouStatusOnAdvBufferEmptyEvent:v4];
    }

LABEL_26:

    goto LABEL_27;
  }

  [(SAWithYouDetector *)self _updateWithYouStatusIfNecessaryOnConnectionEvent:eventCopy];
LABEL_27:
  if ([(SAWithYouDetector *)self isInVehicularTravel])
  {
    nextOpportunisticScanDate = [(SAWithYouDetector *)self nextOpportunisticScanDate];
    if (nextOpportunisticScanDate)
    {
      v38 = nextOpportunisticScanDate;
      getDate = [eventCopy getDate];
      nextOpportunisticScanDate2 = [(SAWithYouDetector *)self nextOpportunisticScanDate];
      [getDate timeIntervalSinceDate:nextOpportunisticScanDate2];
      v42 = v41;

      if (v42 >= 0.0)
      {
        [(SAWithYouDetector *)self requestScanIfNeeded];
      }
    }
  }
}

- (void)requestScanIfNeeded
{
  deviceRecord = [(SAWithYouDetector *)self deviceRecord];
  getAllUUIDs = [deviceRecord getAllUUIDs];
  v5 = [getAllUUIDs count];

  if (v5)
  {
    lastEndOfScan = [(SAWithYouDetector *)self lastEndOfScan];
    if (lastEndOfScan && (-[SAWithYouDetector clock](self, "clock"), v6 = objc_claimAutoreleasedReturnValue(), [v6 getCurrentTime], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceDate:", lastEndOfScan), v9 = v8, v7, v6, v9 < 300.0))
    {
      v10 = 0;
    }

    else
    {
      clock = [(SAWithYouDetector *)self clock];
      getCurrentTime = [clock getCurrentTime];

      v10 = 1;
      lastEndOfScan = getCurrentTime;
    }

    if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
    {
      [(SAWithYouDetector *)self _scheduleNextAlarmForScanAfterDate:lastEndOfScan];
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      [(SAWithYouDetector *)self setNextOpportunisticScanDate:0];
      if (!v10)
      {
LABEL_15:

        return;
      }
    }

    [(SAWithYouDetector *)self forceUpdateWithYouStatusWithShortScan:0];
    if (![(SAWithYouDetector *)self isInVehicularTravel])
    {
      locationRequester = [(SAWithYouDetector *)self locationRequester];
      [locationRequester requestLocationForType:0];
    }

    goto LABEL_15;
  }

  [(SAWithYouDetector *)self setNextOpportunisticScanDate:0];
}

- (BOOL)_deviceIsWatch:(id)watch
{
  v3 = [(SADeviceRecord *)self->_deviceRecord getSADevice:watch];
  v4 = [v3 deviceType] == 8;

  return v4;
}

+ (id)convertSAWithYouStatusToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C710[string - 1];
  }
}

+ (id)convertSAWithYouLongScanContextToString:(unint64_t)string
{
  if (string - 1 > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C730[string - 1];
  }
}

- (void)didChangeTravelTypeFrom:(unint64_t)from to:(unint64_t)to hints:(unint64_t)hints
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [SATravelTypeClassifier convertSATravelTypeToString:from];
    v11 = [SATravelTypeClassifier convertSATravelTypeToString:to];
    v12[0] = 68289539;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2113;
    v16 = v10;
    v17 = 2113;
    v18 = v11;
    _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #withyou travel type change, from:%{private}@, to:%{private}@}", v12, 0x26u);
  }

  if (to == 2)
  {
    [(SAWithYouDetector *)self setIsInVehicularTravel:0];
    if ([(SAWithYouDetector *)self isPeriodicScansAllowed])
    {
      [(SAWithYouDetector *)self requestScanIfNeeded];
    }
  }

  else if (to == 1)
  {
    [(SAWithYouDetector *)self setIsInVehicularTravel:1];
  }
}

- (SABluetoothScanRequestProtocol)bluetoothScanner
{
  WeakRetained = objc_loadWeakRetained(&self->_bluetoothScanner);

  return WeakRetained;
}

- (SALocationRequestProtocol)locationRequester
{
  WeakRetained = objc_loadWeakRetained(&self->_locationRequester);

  return WeakRetained;
}

@end