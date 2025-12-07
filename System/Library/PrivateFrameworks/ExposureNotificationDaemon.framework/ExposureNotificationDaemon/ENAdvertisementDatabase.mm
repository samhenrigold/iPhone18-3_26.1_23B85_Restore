@interface ENAdvertisementDatabase
+ (BOOL)purgeAllStoresInPath:(id)path;
- (BOOL)cloneDatabaseTo:(id)to;
- (BOOL)flushCache;
- (BOOL)mergeStores:(id)stores;
- (BOOL)mergeStoresFromFolderPath:(id)path;
- (BOOL)mergeTemporaryStores;
- (BOOL)openCentralStoreAndReturnError:(id *)error;
- (BOOL)openStoreAndReturnError:(id *)error;
- (BOOL)openTemporaryStore;
- (BOOL)purgeAdvertismentsOlderThan:(double)than;
- (BOOL)purgeAdvertismentsSeenBeforeDate:(id)date;
- (BOOL)purgeAllStoresInActiveDatabasePath;
- (BOOL)saveContactTracingAdvertisement:(id)advertisement;
- (BOOL)switchToCentralStore;
- (ENAdvertisementDatabase)initWithDatabaseFolderPath:(id)path cacheCount:(unint64_t)count errorMetricReporter:(id)reporter;
- (NSNumber)storedAdvertisementCount;
- (id)advertisementsBufferMatchingDailyKeys:(id)keys attenuationThreshold:(unsigned __int8)threshold timestampTolerance:(double)tolerance;
- (id)beaconCountMetricsWithStartDate:(id)date endDate:(id)endDate windowDuration:(double)duration;
- (id)createQuerySessionWithAttenuationThreshold:(unsigned __int8)threshold queue:(id)queue error:(id *)error;
- (id)currentStore;
- (id)matchingAdvertisementBufferForRPIBuffer:(id)buffer exposureKeys:(id)keys;
- (id)queryFilterWithBufferSize:(unint64_t)size hashCount:(unint64_t)count attenuationThreshold:(unsigned __int8)threshold;
- (unsigned)cacheRecordCount;
- (void)closeAllStores;
- (void)dealloc;
- (void)displayStorageFullAlert;
- (void)reportErrorMetric:(unsigned int)metric;
- (void)reportStoreError:(id)error;
@end

@implementation ENAdvertisementDatabase

- (ENAdvertisementDatabase)initWithDatabaseFolderPath:(id)path cacheCount:(unint64_t)count errorMetricReporter:(id)reporter
{
  countCopy = count;
  pathCopy = path;
  reporterCopy = reporter;
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase initWithDatabaseFolderPath:? cacheCount:? errorMetricReporter:?];
  }

  v17.receiver = self;
  v17.super_class = ENAdvertisementDatabase;
  v11 = [(ENAdvertisementDatabase *)&v17 init];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = MEMORY[0x24C214430](reporterCopy);
  errorMetricReporter = v11->_errorMetricReporter;
  v11->_errorMetricReporter = v12;

  objc_storeStrong(&v11->_databaseFolderPath, path);
  v11->_advertisementInsertionCacheCount = countCopy;
  v11->_advertisementInsertionIndex = 0;
  v11->_storageFullAlertInterval = 60.0;
  v11->_previousStoreFullAlertTimestamp = 0;
  v11->_currentStoreType = 2;
  v14 = malloc_type_malloc(40 * countCopy, 0x10000400A747E1EuLL);
  v11->_advertisementInsertionCache = v14;
  if (v14)
  {
    [(ENAdvertisementDatabase *)v11 openStoreAndReturnError:0];
LABEL_7:
    v15 = v11;
    goto LABEL_12;
  }

  if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase initWithDatabaseFolderPath:cacheCount:errorMetricReporter:];
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)dealloc
{
  free(self->_advertisementInsertionCache);
  v3.receiver = self;
  v3.super_class = ENAdvertisementDatabase;
  [(ENAdvertisementDatabase *)&v3 dealloc];
}

- (void)reportErrorMetric:(unsigned int)metric
{
  errorMetricReporter = self->_errorMetricReporter;
  if (errorMetricReporter)
  {
    errorMetricReporter[2](errorMetricReporter, *&metric);
  }
}

- (void)reportStoreError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v8 = errorCopy;
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:@"ENAdvertisementStoreErrorDomain"];

    errorCopy = v8;
    if (v6)
    {
      v7 = [v8 code] - 1;
      errorCopy = v8;
      if (v7 <= 6 && ((0x47u >> v7) & 1) != 0)
      {
        [(ENAdvertisementDatabase *)self reportErrorMetric:dword_24A28C0A8[v7]];
        errorCopy = v8;
      }
    }
  }
}

- (BOOL)openStoreAndReturnError:(id *)error
{
  if ([(ENAdvertisementDatabase *)self openCentralStoreAndReturnError:error])
  {
    [(ENAdvertisementDatabase *)self mergeTemporaryStores];
    return 1;
  }

  if ([(ENAdvertisementDatabase *)self openTemporaryStore])
  {
    return 1;
  }

  if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase openStoreAndReturnError:?];
  }

  self->_currentStoreType = 2;
  [(ENAdvertisementDatabase *)self reportErrorMetric:1003];
  return 0;
}

- (BOOL)openCentralStoreAndReturnError:(id *)error
{
  if (self->_centralStore)
  {
    return 1;
  }

  v5 = [ENAdvertisementSQLiteStore centralStoreInFolderPath:self->_databaseFolderPath error:error];
  centralStore = self->_centralStore;
  self->_centralStore = v5;

  if (!self->_centralStore)
  {
    return 0;
  }

  temporaryStore = self->_temporaryStore;
  self->_temporaryStore = 0;

  result = 1;
  self->_currentStoreType = 1;
  return result;
}

- (BOOL)openTemporaryStore
{
  if (self->_centralStore || self->_temporaryStore)
  {
    return 0;
  }

  databaseFolderPath = self->_databaseFolderPath;
  v10 = 0;
  v6 = [ENAdvertisementSQLiteStore temporaryStoreInFolderPath:databaseFolderPath error:&v10];
  v7 = v10;
  temporaryStore = self->_temporaryStore;
  self->_temporaryStore = v6;

  v9 = self->_temporaryStore;
  v3 = v9 != 0;
  if (v9)
  {
    self->_currentStoreType = 0;
  }

  else
  {
    [(ENAdvertisementDatabase *)self reportStoreError:v7];
  }

  return v3;
}

- (BOOL)switchToCentralStore
{
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementDatabase *)self switchToCentralStore];
  }

  if (self->_centralStore)
  {
    return 0;
  }

  return [(ENAdvertisementDatabase *)self openCentralStoreAndReturnError:0];
}

- (BOOL)mergeStores:(id)stores
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  storesCopy = stores;
  v5 = [storesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    v9 = 1;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        v11 = v7;
        if (*v18 != v8)
        {
          objc_enumerationMutation(storesCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        centralStore = self->_centralStore;
        v16 = v7;
        v14 = [(ENAdvertisementSQLiteStore *)centralStore importContentsOfStore:v12 error:&v16];
        v7 = v16;

        if (v14)
        {
          v9 &= [v12 purgeAndRemoveFromDisk:1];
        }

        else
        {
          [(ENAdvertisementDatabase *)self reportStoreError:v7];
          if ([v7 code] == 4)
          {
            [(ENAdvertisementDatabase *)self closeAllStores];
          }

          else if ([v7 code] == 3)
          {
            [(ENAdvertisementSQLiteStore *)self->_centralStore purgeAndRemoveFromDisk:0];
            [(ENAdvertisementDatabase *)self closeAllStores];
            LOBYTE(v9) = 0;
            goto LABEL_16;
          }

          v9 = 0;
        }
      }

      v6 = [storesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)mergeTemporaryStores
{
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementDatabase *)self mergeTemporaryStores];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  databaseFolderPath = self->_databaseFolderPath;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ENAdvertisementDatabase_mergeTemporaryStores__block_invoke;
  v6[3] = &unk_278FD31B8;
  v6[4] = self;
  v6[5] = &v7;
  [ENAdvertisementSQLiteStore enumerateTemporaryStoresInFolderPath:databaseFolderPath handler:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __47__ENAdvertisementDatabase_mergeTemporaryStores__block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = v3;
  v5 = [MEMORY[0x277CBEA68] arrayWithObjects:v6 count:1];
  LOBYTE(v4) = [v4 mergeStores:v5];

  if ((v4 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)mergeStoresFromFolderPath:(id)path
{
  v19[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([ENAdvertisementSQLiteStore storesPresentInFolderPath:pathCopy])
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [(ENAdvertisementDatabase *)pathCopy mergeStoresFromFolderPath:?];
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v6 = [ENAdvertisementSQLiteStore centralStoreInFolderPath:pathCopy error:0];
    v7 = v6;
    if (v6)
    {
      v19[0] = v6;
      v8 = [MEMORY[0x277CBEA68] arrayWithObjects:v19 count:1];
      v9 = [(ENAdvertisementDatabase *)self mergeStores:v8];

      if (!v9)
      {
        if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
        {
          v10 = pathCopy;
          LogPrintF_safe(&gLogCategory__ENAdvertisementDatabase, "-[ENAdvertisementDatabase mergeStoresFromFolderPath:]", 90, "failed to merge central store folderPath:%s", [pathCopy UTF8String]);
        }

        *(v16 + 24) = 0;
      }
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__ENAdvertisementDatabase_mergeStoresFromFolderPath___block_invoke;
    v12[3] = &unk_278FD31E0;
    v12[4] = self;
    v13 = pathCopy;
    v14 = &v15;
    [ENAdvertisementSQLiteStore enumerateTemporaryStoresInFolderPath:v13 handler:v12];
    v5 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void __53__ENAdvertisementDatabase_mergeStoresFromFolderPath___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = v3;
  v5 = [MEMORY[0x277CBEA68] arrayWithObjects:v6 count:1];
  LOBYTE(v4) = [v4 mergeStores:v5];

  if ((v4 & 1) == 0)
  {
    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      __53__ENAdvertisementDatabase_mergeStoresFromFolderPath___block_invoke_cold_1(a1);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (void)closeAllStores
{
  centralStore = self->_centralStore;
  self->_centralStore = 0;

  temporaryStore = self->_temporaryStore;
  self->_temporaryStore = 0;

  self->_currentStoreType = 2;
}

- (id)currentStore
{
  currentStoreType = self->_currentStoreType;
  if (!currentStoreType)
  {
    v4 = 56;
LABEL_5:
    v5 = *(&self->super.isa + v4);

    return v5;
  }

  if (currentStoreType == 1)
  {
    v4 = 48;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)displayStorageFullAlert
{
  v20[5] = *MEMORY[0x277D85DE8];
  if (alertActive == 1)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [(ENAdvertisementDatabase *)self displayStorageFullAlert];
    }

    return;
  }

  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v4 = v3;
  previousStoreFullAlertTimestamp = self->_previousStoreFullAlertTimestamp;
  if (previousStoreFullAlertTimestamp && v3 <= (previousStoreFullAlertTimestamp + self->_storageFullAlertInterval * 1000000000.0))
  {
    return;
  }

  if (gLogCategory_ENAdvertisementDatabase <= 50)
  {
    if (gLogCategory_ENAdvertisementDatabase == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      previousStoreFullAlertTimestamp = self->_previousStoreFullAlertTimestamp;
    }

    LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase displayStorageFullAlert]", 50, "displaying storage full alert alertTime:%llu previousAlert:%llu alertInterval:%u", v4, previousStoreFullAlertTimestamp, self->_storageFullAlertInterval);
  }

LABEL_12:
  v6 = ENLocalizedString();
  v7 = ENLocalizedString();
  v8 = ENLocalizedString();
  v9 = ENLocalizedString();
  v10 = *MEMORY[0x277CBF1A0];
  v19[0] = *MEMORY[0x277CBF190];
  v19[1] = v10;
  v20[0] = v6;
  v20[1] = v7;
  v11 = *MEMORY[0x277CBF1C8];
  v19[2] = *MEMORY[0x277CBF1E0];
  v19[3] = v11;
  v20[2] = v8;
  v20[3] = v9;
  v19[4] = *MEMORY[0x277D672A0];
  v20[4] = MEMORY[0x277CBEC30];
  v12 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v13 = *MEMORY[0x277CBECE0];
  v14 = CFUserNotificationCreate(*MEMORY[0x277CBECE0], 0.0, 0, 0, v12);
  if (v14)
  {
    v15 = v14;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(v13, v14, _ENAdvertisementDatabaseStorageFullResponseHandler, 0);
    if (RunLoopSource)
    {
      v17 = RunLoopSource;
      alertActive = 1;
      self->_previousStoreFullAlertTimestamp = v4;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v17, *MEMORY[0x277CBF050]);
      v15 = v17;
    }

    else if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase displayStorageFullAlert];
    }

    CFRelease(v15);
  }

  else if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase displayStorageFullAlert];
  }
}

- (BOOL)saveContactTracingAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  v5 = advertisementCopy;
  advertisementInsertionCache = self->_advertisementInsertionCache;
  advertisementInsertionIndex = self->_advertisementInsertionIndex;
  self->_advertisementInsertionIndex = advertisementInsertionIndex + 1;
  v8 = advertisementInsertionCache + 40 * advertisementInsertionIndex;
  if (advertisementCopy)
  {
    objc_msgSend_structRepresentation(advertisementCopy);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  *(v8 + 4) = v13;
  *v8 = v11;
  *(v8 + 1) = v12;
  v9 = self->_advertisementInsertionIndex != self->_advertisementInsertionCacheCount || [(ENAdvertisementDatabase *)self flushCache];

  return v9;
}

- (unsigned)cacheRecordCount
{
  v2 = 20;
  if (self->_advertisementInsertionCacheOverflowed)
  {
    v2 = 16;
  }

  return *(&self->super.isa + v2);
}

- (BOOL)flushCache
{
  currentStore = [(ENAdvertisementDatabase *)self currentStore];

  if (!currentStore)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50)
    {
      if (gLogCategory_ENAdvertisementDatabase != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        [(ENAdvertisementDatabase *)v4 flushCache];
      }
    }

    [(ENAdvertisementDatabase *)self openStoreAndReturnError:0];
  }

  cacheRecordCount = [(ENAdvertisementDatabase *)self cacheRecordCount];
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase flushCache]", 50, "flushing database to disk type:%lu recordCount:%u", self->_currentStoreType, cacheRecordCount);
  }

  currentStore2 = [(ENAdvertisementDatabase *)self currentStore];
  advertisementInsertionCache = self->_advertisementInsertionCache;
  v16 = 0;
  v10 = [currentStore2 saveContactTracingAdvertisementBuffer:advertisementInsertionCache count:cacheRecordCount error:&v16];
  v11 = v16;

  if (v10)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase flushCache];
    }

    self->_advertisementInsertionCacheOverflowed = 0;
    p_advertisementInsertionIndex = &self->_advertisementInsertionIndex;
LABEL_30:
    *p_advertisementInsertionIndex = 0;
    goto LABEL_31;
  }

  if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementDatabase *)self flushCache];
  }

  [(ENAdvertisementDatabase *)self reportStoreError:v11];
  if ([v11 code] != 4)
  {
    if ([v11 code] != 3)
    {
      goto LABEL_22;
    }

    [(ENAdvertisementSQLiteStore *)self->_centralStore purgeAndRemoveFromDisk:0];
  }

  [(ENAdvertisementDatabase *)self closeAllStores];
LABEL_22:
  p_advertisementInsertionIndex = &self->_advertisementInsertionIndex;
  if (self->_advertisementInsertionIndex == self->_advertisementInsertionCacheCount)
  {
    if ([v11 code] == 2 || (+[ENLoggingPrefs sharedENLoggingPrefs](ENLoggingPrefs, "sharedENLoggingPrefs"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isSensitiveLoggingAllowed"), v13, v14))
    {
      [(ENAdvertisementDatabase *)self displayStorageFullAlert];
    }

    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase flushCache];
    }

    self->_advertisementInsertionCacheOverflowed = 1;
    goto LABEL_30;
  }

LABEL_31:

  return v10;
}

- (NSNumber)storedAdvertisementCount
{
  centralStore = self->_centralStore;
  if (centralStore)
  {
LABEL_4:
    storedAdvertisementCount = [(ENAdvertisementSQLiteStore *)centralStore storedAdvertisementCount];
    v6 = storedAdvertisementCount;
    if (storedAdvertisementCount)
    {
      v4 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{-[ENAdvertisementDatabase cacheRecordCount](self, "cacheRecordCount") + objc_msgSend(storedAdvertisementCount, "unsignedIntValue")}];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if ([(ENAdvertisementDatabase *)self openCentralStoreAndReturnError:0])
  {
    centralStore = self->_centralStore;
    goto LABEL_4;
  }

LABEL_8:

  return v4;
}

- (id)queryFilterWithBufferSize:(unint64_t)size hashCount:(unint64_t)count attenuationThreshold:(unsigned __int8)threshold
{
  thresholdCopy = threshold;
  v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v9 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase queryFilterWithBufferSize:hashCount:attenuationThreshold:]", 50, "creating contact tracing query filter bufferSize:%lu hashCount:%lu", size, count);
  }

  if (self->_currentStoreType == 1)
  {
    if (![(ENAdvertisementDatabase *)self cacheRecordCount]|| (v11 = [(ENAdvertisementDatabase *)self flushCache], (v11 & 1) != 0))
    {
      v14 = [(ENAdvertisementSQLiteStore *)self->_centralStore queryFilterWithBufferSize:size hashCount:count attenuationThreshold:thresholdCopy];
      goto LABEL_14;
    }

    if (gLogCategory__ENAdvertisementDatabase <= 90)
    {
      if (gLogCategory__ENAdvertisementDatabase != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [ENAdvertisementDatabase queryFilterWithBufferSize:v11 hashCount:v12 attenuationThreshold:v13];
      }
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)beaconCountMetricsWithStartDate:(id)date endDate:(id)endDate windowDuration:(double)duration
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v10 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase beaconCountMetricsWithStartDate:endDate:windowDuration:]", 50, "creating beacon count metrics startDate:%@ endDate:%@ windowDuration:%0.2f", dateCopy, endDateCopy, *&duration);
  }

  if (self->_currentStoreType == 1)
  {
    if (![(ENAdvertisementDatabase *)self cacheRecordCount]|| (v12 = [(ENAdvertisementDatabase *)self flushCache], (v12 & 1) != 0))
    {
      v15 = [(ENAdvertisementSQLiteStore *)self->_centralStore beaconCountMetricsWithStartDate:dateCopy endDate:endDateCopy windowDuration:duration];
      goto LABEL_14;
    }

    if (gLogCategory__ENAdvertisementDatabase <= 90)
    {
      if (gLogCategory__ENAdvertisementDatabase != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        [ENAdvertisementDatabase beaconCountMetricsWithStartDate:v12 endDate:v13 windowDuration:v14];
      }
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (id)matchingAdvertisementBufferForRPIBuffer:(id)buffer exposureKeys:(id)keys
{
  bufferCopy = buffer;
  keysCopy = keys;
  if (self->_currentStoreType != 1)
  {
    switchToCentralStore = [(ENAdvertisementDatabase *)self switchToCentralStore];
    if (!switchToCentralStore)
    {
LABEL_25:
      v25 = 0;
      goto LABEL_48;
    }

    if (gLogCategory_ENAdvertisementDatabase <= 50)
    {
      if (gLogCategory_ENAdvertisementDatabase != -1 || (switchToCentralStore = _LogCategory_Initialize(), switchToCentralStore))
      {
        [(ENAdvertisementDatabase *)switchToCentralStore matchingAdvertisementBufferForRPIBuffer:v23 exposureKeys:v24];
      }
    }
  }

  if ([(ENAdvertisementDatabase *)self cacheRecordCount])
  {
    flushCache = [(ENAdvertisementDatabase *)self flushCache];
    if ((flushCache & 1) == 0)
    {
      if (gLogCategory__ENAdvertisementDatabase <= 90)
      {
        if (gLogCategory__ENAdvertisementDatabase != -1 || (flushCache = _LogCategory_Initialize(), flushCache))
        {
          [(ENAdvertisementDatabase *)flushCache matchingAdvertisementBufferForRPIBuffer:v8 exposureKeys:v9];
        }
      }

      goto LABEL_25;
    }
  }

  v10 = [bufferCopy length] >> 4;
  v11 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
  if (!v11)
  {
    if (gLogCategory__ENAdvertisementDatabase <= 90)
    {
      if (gLogCategory__ENAdvertisementDatabase != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [(ENAdvertisementDatabase *)v11 matchingAdvertisementBufferForRPIBuffer:v12 exposureKeys:v13];
      }
    }

    goto LABEL_25;
  }

  v14 = v11;
  v34 = v10;
  v35 = bufferCopy;
  bytes = [bufferCopy bytes];
  if ([keysCopy count])
  {
    v16 = 0;
    v17 = 0;
    LODWORD(v18) = 0;
    v19 = 0;
    do
    {
      v20 = 144;
      v37 = v16;
      v21 = v17;
      do
      {
        if (![(ENQueryFilter *)self->_inlineQueryFilter shouldIgnoreRPI:bytes + v21])
        {
          v14[v16] = 1;
          ++v19;
        }

        v21 += 16;
        ++v16;
        --v20;
      }

      while (v20);
      v18 = (v18 + 1);
      v17 += 2304;
      v16 = v37 + 144;
    }

    while ([keysCopy count] > v18);
  }

  else
  {
    v19 = 0;
  }

  v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v26 isSensitiveLoggingAllowed];

  if ((isSensitiveLoggingAllowed & 1) != 0 && gLogCategory_ENAdvertisementDatabase <= 40 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase matchingAdvertisementBufferForRPIBuffer:exposureKeys:]", 40, "querying sqlite for advertisements count:%lu filteredCount:%llu", v19, v34 - v19);
  }

  v38 = 0;
  v39 = 0;
  v28 = [(ENAdvertisementSQLiteStore *)self->_centralStore getAdvertisementsMatchingRPIBuffer:bytes count:v34 validityBuffer:v14 validRPICount:v19 matchingAdvertisementBuffer:&v39 error:&v38];
  v29 = v38;
  free(v14);
  v30 = v39;
  v31 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed2 = [v31 isSensitiveLoggingAllowed];

  if (v30)
  {
    if (isSensitiveLoggingAllowed2 && gLogCategory_ENAdvertisementDatabase <= 40 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase matchingAdvertisementBufferForRPIBuffer:v28 exposureKeys:?];
    }

    v25 = [MEMORY[0x277CBEA98] dataWithBytesNoCopy:v39 length:40 * v28];
    bufferCopy = v35;
    goto LABEL_47;
  }

  if (isSensitiveLoggingAllowed2 && gLogCategory_ENAdvertisementDatabase <= 90 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase matchingAdvertisementBufferForRPIBuffer:exposureKeys:];
  }

  [(ENAdvertisementDatabase *)self reportStoreError:v29];
  bufferCopy = v35;
  if ([v29 code] == 4)
  {
    goto LABEL_45;
  }

  if ([v29 code] == 3)
  {
    [(ENAdvertisementSQLiteStore *)self->_centralStore purgeAndRemoveFromDisk:0];
LABEL_45:
    [(ENAdvertisementDatabase *)self closeAllStores];
  }

  v25 = 0;
LABEL_47:

LABEL_48:

  return v25;
}

- (id)advertisementsBufferMatchingDailyKeys:(id)keys attenuationThreshold:(unsigned __int8)threshold timestampTolerance:(double)tolerance
{
  thresholdCopy = threshold;
  keysCopy = keys;
  v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v8 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENAdvertisementDatabase <= 40 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:keysCopy attenuationThreshold:? timestampTolerance:?];
  }

  v10 = 2304 * [keysCopy count];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = malloc_type_malloc(v10, 0x1000040451B5BE8uLL);
  if (v56[3])
  {
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __105__ENAdvertisementDatabase_advertisementsBufferMatchingDailyKeys_attenuationThreshold_timestampTolerance___block_invoke;
    v54[3] = &unk_278FD3208;
    v54[4] = &v55;
    [keysCopy enumerateObjectsUsingBlock:v54];
    v11 = objc_alloc(MEMORY[0x277CBEA98]);
    v12 = [v11 initWithBytesNoCopy:v56[3] length:v10];
    v13 = [(ENAdvertisementDatabase *)self matchingAdvertisementBufferForRPIBuffer:v12 exposureKeys:keysCopy];
    if (!v13 && gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory__ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 90, "Failed to generate matching advertisements buffer");
    }

    v15 = [v13 length];
    v52 = v12;
    bytes = [v13 bytes];
    v51 = v13;
    if (v13 && v15 >= 0x28)
    {
      v17 = bytes;
      Current = CFAbsoluteTimeGetCurrent();
      v19 = v15 / 0x28;
      v20 = *MEMORY[0x277CBECD8];
      v21 = Current + *MEMORY[0x277CBECD8] + -1209600.0;
      v22 = -*MEMORY[0x277CBECD8];
      do
      {
        v23 = objc_autoreleasePoolPush();
        v24 = [keysCopy objectAtIndex:*(v17 + 28)];
        v25 = v24;
        if (*(v17 + 20) >= v21)
        {
          v28 = [v24 rollingStartNumber] + *(v17 + 32);
          v29 = *(v17 + 20);
          if (v20 + v22 + v28 * 600.0 - tolerance <= v29 && v29 <= v20 + v22 + (v28 + 1) * 600.0 + tolerance)
          {
            v32 = [ENAdvertisement decryptedMetadataForTemporaryExposureKey:v25 encryptedAEM:v17 + 16 RPI:v17];
            v33 = v32;
            if (v32)
            {
              v34 = [v32 attenuationForRSSI:*(v17 + 36) saturated:*(v17 + 38)];
              v35 = +[ENLoggingPrefs sharedENLoggingPrefs];
              isRPILoggingAllowed = [v35 isRPILoggingAllowed];

              if (isRPILoggingAllowed && gLogCategory_ENAdvertisementDatabase <= 10 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
              {
                v50 = CUPrintHex();
                txPower = [v33 txPower];
                v38 = *(v17 + 36);
                calibrationConfidence = [v33 calibrationConfidence];
                v40 = "?";
                if (calibrationConfidence <= 3)
                {
                  v40 = off_278FD3228[calibrationConfidence];
                }

                LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 10, "RPI : %@ Attenuation : %u TXPower : %d rssi : %d calibratioConfidence : %s saturated : %d", v50, v34, txPower, v38, v40, *(v17 + 38));
              }

              if (v34 >= thresholdCopy)
              {
                v47 = +[ENLoggingPrefs sharedENLoggingPrefs];
                isSensitiveLoggingAllowed2 = [v47 isSensitiveLoggingAllowed];

                if (isSensitiveLoggingAllowed2 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 50, "dropping advertisement: attenuation threshold");
                }

                goto LABEL_65;
              }
            }

            else
            {
              if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&gLogCategory__ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 90, "dropping advertisement: AEM decryption failed");
              }

              [(ENAdvertisementDatabase *)self reportErrorMetric:1006];
LABEL_65:
              *(v17 + 28) = -1;
              ++self->_droppedAdvertisementCount;
            }

            goto LABEL_54;
          }

          v30 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed3 = [v30 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed3 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 50, "ExposureNotification: Dropping advertisement with invalid scan timestamp");
          }

          v43 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isRPILoggingAllowed2 = [v43 isRPILoggingAllowed];

          if (isRPILoggingAllowed2 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
          {
            v45 = [keysCopy objectAtIndex:*(v17 + 28)];
            keyData = [v45 keyData];
            LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 50, "ExposureNotification: Dropping advertisement %@ invalid scan timestamp : %0.3f, intervalNumber : %u", keyData, *(v17 + 20), v28);
          }
        }

        else
        {
          v26 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isSensitiveLoggingAllowed4 = [v26 isSensitiveLoggingAllowed];

          if (isSensitiveLoggingAllowed4 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 50, "Dropping outdated advertisement timestampThreshold:%0.2f", v21);
          }

          v41 = +[ENLoggingPrefs sharedENLoggingPrefs];
          isRPILoggingAllowed3 = [v41 isRPILoggingAllowed];

          if (isRPILoggingAllowed3 && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 50, "Dropping outdated advertisement TEK:%@ timestamp:%0.2f", v25, *(v17 + 20));
          }
        }

        *(v17 + 28) = -1;
        ++self->_droppedAdvertisementCount;
LABEL_54:

        objc_autoreleasePoolPop(v23);
        v17 += 40;
        --v19;
      }

      while (v19);
    }

    v14 = v51;
  }

  else
  {
    if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&gLogCategory__ENAdvertisementDatabase, "[ENAdvertisementDatabase advertisementsBufferMatchingDailyKeys:attenuationThreshold:timestampTolerance:]", 90, "failed to allocate RPI buffer");
    }

    v14 = 0;
  }

  _Block_object_dispose(&v55, 8);

  return v14;
}

- (id)createQuerySessionWithAttenuationThreshold:(unsigned __int8)threshold queue:(id)queue error:(id *)error
{
  thresholdCopy = threshold;
  queueCopy = queue;
  if ([(ENAdvertisementDatabase *)self openCentralStoreAndReturnError:error])
  {
    storedAdvertisementCount = [(ENAdvertisementDatabase *)self storedAdvertisementCount];
    v12 = storedAdvertisementCount;
    if (storedAdvertisementCount)
    {
      v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v13 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&gLogCategory_ENAdvertisementDatabase, "[ENAdvertisementDatabase createQuerySessionWithAttenuationThreshold:queue:error:]", 50, "creating advertisement query session adv:%@ attn:%u", v12, thresholdCopy);
      }

      v15 = -[ENAdvertisementDatabaseQuerySession initWithDatabase:attenuationThreshold:advertisementCount:queue:]([ENAdvertisementDatabaseQuerySession alloc], "initWithDatabase:attenuationThreshold:advertisementCount:queue:", self, thresholdCopy, [v12 unsignedIntValue], queueCopy);
    }

    else
    {
      if (gLogCategory__ENAdvertisementDatabase <= 90)
      {
        if (gLogCategory__ENAdvertisementDatabase != -1 || (storedAdvertisementCount = _LogCategory_Initialize(), storedAdvertisementCount))
        {
          [ENAdvertisementDatabase createQuerySessionWithAttenuationThreshold:storedAdvertisementCount queue:v10 error:v11];
        }
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)purgeAdvertismentsOlderThan:(double)than
{
  v4 = [MEMORY[0x277CBEAA0] dateWithTimeIntervalSinceNow:-than];
  LOBYTE(self) = [(ENAdvertisementDatabase *)self purgeAdvertismentsSeenBeforeDate:v4];

  return self;
}

- (BOOL)purgeAdvertismentsSeenBeforeDate:(id)date
{
  dateCopy = date;
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase purgeAdvertismentsSeenBeforeDate:dateCopy];
  }

  centralStore = self->_centralStore;
  if (centralStore)
  {
    v10 = 0;
    v6 = [(ENAdvertisementSQLiteStore *)centralStore purgeAdvertismentsRecordedPriorToDate:dateCopy error:&v10];
    v7 = v10;
    if (!v6)
    {
      if (gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
      {
        [ENAdvertisementDatabase purgeAdvertismentsSeenBeforeDate:?];
      }

      [(ENAdvertisementDatabase *)self reportStoreError:v7];
      if ([v7 code] != 4)
      {
        if ([v7 code] != 3)
        {
LABEL_13:
          v8 = 0;
          goto LABEL_16;
        }

        [(ENAdvertisementSQLiteStore *)self->_centralStore purgeAndRemoveFromDisk:0];
      }

      [(ENAdvertisementDatabase *)self closeAllStores];
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
LABEL_16:
  if (self->_temporaryStore)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase purgeAdvertismentsSeenBeforeDate:];
    }

    [(ENAdvertisementDatabase *)self closeAllStores];
  }

  if (![ENAdvertisementSQLiteStore removeAllTemporaryStoresFromDiskWithFolderPath:self->_databaseFolderPath lastModifiedBeforeDate:dateCopy])
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase purgeAdvertismentsSeenBeforeDate:?];
    }

    v8 = 0;
  }

  [(ENAdvertisementDatabase *)self openStoreAndReturnError:0];

  return v8;
}

- (BOOL)purgeAllStoresInActiveDatabasePath
{
  self->_advertisementInsertionIndex = 0;
  bzero(self->_advertisementInsertionCache, 40 * self->_advertisementInsertionCacheCount);
  self->_advertisementInsertionCacheOverflowed = 0;
  [(ENAdvertisementDatabase *)self closeAllStores];
  databaseFolderPath = self->_databaseFolderPath;

  return [ENAdvertisementDatabase purgeAllStoresInPath:databaseFolderPath];
}

+ (BOOL)purgeAllStoresInPath:(id)path
{
  pathCopy = path;
  if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase purgeAllStoresInPath:pathCopy];
  }

  v4 = [ENAdvertisementSQLiteStore removeAllStoresFromDiskWithFolderPath:pathCopy];
  if (!v4 && gLogCategory__ENAdvertisementDatabase <= 90 && (gLogCategory__ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENAdvertisementDatabase purgeAllStoresInPath:pathCopy];
  }

  return v4;
}

- (BOOL)cloneDatabaseTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_centralStore)
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50 && (gLogCategory_ENAdvertisementDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENAdvertisementDatabase cloneDatabaseTo:v7];
    }

    [(ENAdvertisementDatabase *)self flushCache];
    v8 = [(ENAdvertisementSQLiteStore *)self->_centralStore cloneStoreTo:v7];
  }

  else
  {
    if (gLogCategory_ENAdvertisementDatabase <= 50)
    {
      if (gLogCategory_ENAdvertisementDatabase != -1 || (toCopy = _LogCategory_Initialize(), toCopy))
      {
        [(ENAdvertisementDatabase *)toCopy cloneDatabaseTo:v5, v6];
      }
    }

    v8 = 0;
  }

  return v8;
}

@end