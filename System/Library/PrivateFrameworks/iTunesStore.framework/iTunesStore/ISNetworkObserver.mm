@interface ISNetworkObserver
+ (id)sharedInstance;
- (BOOL)_ntsIsUsingNetwork;
- (BOOL)isUsingNetwork;
- (BOOL)isWiFiEnabled;
- (BOOL)shouldShowCellularAutomaticDownloadsSwitch;
- (ISNetworkObserver)init;
- (NSString)connectionTypeHeader;
- (NSString)dataStatusIndicator;
- (NSString)mobileSubscriberCountryCode;
- (NSString)mobileSubscriberNetworkCode;
- (NSString)modemRegistrationStatus;
- (NSString)operatorName;
- (NSString)phoneNumber;
- (NSString)providerName;
- (double)lastNetworkTypeChangeTime;
- (id)_dataStatusIndicator;
- (id)copyValueForCarrierBundleKey:(id)key;
- (int64_t)_networkTypeForReachabilityFlags:(unsigned int)flags;
- (int64_t)_networkTypeFromDataIndicator:(id)indicator;
- (int64_t)_setNetworkType:(int64_t)type;
- (int64_t)networkType;
- (unsigned)_currentNetworkReachabilityFlags;
- (unsigned)networkReachabilityFlags;
- (void)_applicationForegroundNotification:(id)notification;
- (void)_handleTelephonyNotificationWithName:(__CFString *)name userInfo:(__CFDictionary *)info;
- (void)_postReachabilityFlagsChangedNotificationFromValue:(unsigned int)value toValue:(unsigned int)toValue;
- (void)_postTypeChangedNotificationFromValue:(int64_t)value toValue:(int64_t)toValue;
- (void)_postUsageChangedToValue:(BOOL)value;
- (void)_reloadCellularRestriction;
- (void)_reloadDataStatusIndicator;
- (void)_reloadNetworkType;
- (void)_reloadNetworkTypeWithReachabilityFlags:(unsigned int)flags;
- (void)_telephonyOperatorNameDidChangeNotification:(id)notification;
- (void)_telephonyRegistrationDidChangeNotification:(id)notification;
- (void)beginObservingDownloadQueue:(id)queue;
- (void)beginUsingNetwork;
- (void)dealloc;
- (void)downloadQueueNetworkUsageChanged:(id)changed;
- (void)endObservingDownloadQueue:(id)queue;
- (void)endUsingNetwork;
- (void)reloadNetworkType;
- (void)setNetworkType:(int64_t)type;
@end

@implementation ISNetworkObserver

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ISNetworkObserver_sharedInstance__block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  if (sharedInstance_sOnce != -1)
  {
    dispatch_once(&sharedInstance_sOnce, block);
  }

  return sharedInstance_sObserver;
}

- (BOOL)isUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__ISNetworkObserver_isUsingNetwork__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__35__ISNetworkObserver_isUsingNetwork__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _ntsIsUsingNetwork];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_ntsIsUsingNetwork
{
  v14 = *MEMORY[0x277D85DE8];
  isUsingNetwork = self->_networkUsageCount > 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  observedDownloadQueues = self->_observedDownloadQueues;
  v4 = [(NSMutableSet *)observedDownloadQueues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(observedDownloadQueues);
        }

        if (isUsingNetwork)
        {
          isUsingNetwork = 1;
        }

        else
        {
          isUsingNetwork = [*(*(&v9 + 1) + 8 * i) isUsingNetwork];
        }
      }

      v5 = [(NSMutableSet *)observedDownloadQueues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return isUsingNetwork;
}

- (int64_t)networkType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ISNetworkObserver_networkType__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (ISNetworkObserver)init
{
  v18 = *MEMORY[0x277D85DE8];
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISNetworkObserver.m", 95, a2);
  v16.receiver = self;
  v16.super_class = ISNetworkObserver;
  v3 = [(ISNetworkObserver *)&v16 init];
  if (v3)
  {
    *(v3 + 2) = dispatch_queue_create("com.apple.itunesstore.ISNetworkObserver", 0);
    *(v3 + 8) = dispatch_queue_create("com.apple.itunesstore.ISNetworkObserver.notifications", 0);
    *(v3 + 24) = 1;
    *(v3 + 4) = CFAbsoluteTimeGetCurrent();
    v12 = 0;
    v14 = 0u;
    v15 = 0;
    v13 = v3;
    v4 = _CTServerConnectionCreate();
    *(v3 + 11) = v4;
    if (v4)
    {
      _CTServerConnectionSetTargetQueue();
      _CTServerConnectionRegisterForNotification();
    }

    address = xmmword_275C64B10;
    v5 = SCNetworkReachabilityCreateWithAddress(0, &address);
    *(v3 + 10) = v5;
    if (v5)
    {
      context.version = 0;
      context.info = v3;
      context.retain = 0;
      context.release = 0;
      context.copyDescription = MEMORY[0x277CBE530];
      SCNetworkReachabilitySetCallback(v5, __ReachabilityCallback, &context);
      SCNetworkReachabilitySetDispatchQueue(*(v3 + 10), *(v3 + 2));
    }

    _currentNetworkReachabilityFlags = [v3 _currentNetworkReachabilityFlags];
    *(v3 + 10) = _currentNetworkReachabilityFlags;
    *(v3 + 7) = [v3 _networkTypeForReachabilityFlags:_currentNetworkReachabilityFlags];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__applicationForegroundNotification_ name:@"UIApplicationDidEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__applicationForegroundNotification_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    mEMORY[0x277D69D20] = [MEMORY[0x277D69D20] sharedController];
    [defaultCenter addObserver:v3 selector:sel__telephonyOperatorNameDidChangeNotification_ name:*MEMORY[0x277D6A658] object:mEMORY[0x277D69D20]];
    [defaultCenter addObserver:v3 selector:sel__telephonyRegistrationDidChangeNotification_ name:*MEMORY[0x277D6A660] object:mEMORY[0x277D69D20]];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __CarrierChangeNotification, *MEMORY[0x277CC3848], 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __CarrierChangeNotification, *MEMORY[0x277CC3850], 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __AutoDownloadsSettingsChangedNotification, *MEMORY[0x277D6A6E8], 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __NetworkTypeOverrideChangedNotification, *MEMORY[0x277D6A6F8], 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];
  mEMORY[0x277D69D20] = [MEMORY[0x277D69D20] sharedController];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D6A658] object:mEMORY[0x277D69D20]];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D6A660] object:mEMORY[0x277D69D20]];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CC3848], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CC3850], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6E8], 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6F8], 0);
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  notificationQueue = self->_notificationQueue;
  if (notificationQueue)
  {
    dispatch_release(notificationQueue);
  }

  [(NSMutableSet *)self->_observedDownloadQueues makeObjectsPerformSelector:sel_removeObserver_ withObject:self];

  reachability = self->_reachability;
  if (reachability)
  {
    SCNetworkReachabilitySetDispatchQueue(reachability, 0);
    CFRelease(self->_reachability);
    self->_reachability = 0;
  }

  if (self->_telephonyServer)
  {
    _CTServerConnectionUnregisterForNotification();
    CFRelease(self->_telephonyServer);
    self->_telephonyServer = 0;
  }

  v9.receiver = self;
  v9.super_class = ISNetworkObserver;
  [(ISNetworkObserver *)&v9 dealloc];
}

id __35__ISNetworkObserver_sharedInstance__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  sharedInstance_sObserver = result;
  return result;
}

- (void)beginObservingDownloadQueue:(id)queue
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ISNetworkObserver_beginObservingDownloadQueue___block_invoke;
  v5[3] = &unk_27A670CE8;
  v5[4] = self;
  v5[5] = queue;
  v5[6] = &v10;
  v5[7] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if (*(v11 + 24) != *(v7 + 24))
  {
    [(ISNetworkObserver *)self _postUsageChangedToValue:?];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

void *__49__ISNetworkObserver_beginObservingDownloadQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[9])
  {
    *(*(a1 + 32) + 72) = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2 = *(a1 + 32);
  }

  *(*(*(a1 + 48) + 8) + 24) = [v2 _ntsIsUsingNetwork];
  [*(a1 + 40) addObserver:*(a1 + 32)];
  [*(*(a1 + 32) + 72) addObject:*(a1 + 40)];
  result = [*(a1 + 32) _ntsIsUsingNetwork];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)beginUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ISNetworkObserver_beginUsingNetwork__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [(ISNetworkObserver *)self _postUsageChangedToValue:1];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D6A608] object:0];
  _Block_object_dispose(&v6, 8);
}

- (NSString)connectionTypeHeader
{
  string = [MEMORY[0x277CCAB68] string];
  [(ISNetworkObserver *)self networkType];
  v4 = SSGetStringForNetworkType();
  if (v4)
  {
    [string appendString:v4];
    if (SSNetworkTypeIsCellularType())
    {
      operatorName = [(ISNetworkObserver *)self operatorName];
      if ([(NSString *)operatorName length])
      {
        [string appendFormat:@"/%@", operatorName];
      }
    }
  }

  return string;
}

- (id)copyValueForCarrierBundleKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__ISNetworkObserver_copyValueForCarrierBundleKey___block_invoke;
  v17[3] = &unk_27A670D60;
  v17[4] = v5;
  v17[5] = key;
  v17[6] = v4;
  v17[7] = &v18;
  [v5 getSubscriptionInfo:v17];
  v6 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v4, v6))
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v8) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v11 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v8) = v8 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v12 = objc_opt_class();
      v24 = 138543618;
      v25 = v12;
      v26 = 2112;
      keyCopy = key;
      v13 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_275BC3000, v11, 16, "%{public}@: copying carrier bundle value timeout: key=%@", &v24, 22);
      if (v13)
      {
        v14 = v13;
        [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
        free(v14);
        SSFileLog();
      }
    }
  }

  dispatch_release(v4);
  v15 = [v19[5] copy];
  _Block_object_dispose(&v18, 8);
  return v15;
}

intptr_t __50__ISNetworkObserver_copyValueForCarrierBundleKey___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a2 subscriptions];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
        if ([v8 slotID] == 1)
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __50__ISNetworkObserver_copyValueForCarrierBundleKey___block_invoke_2;
          v13[3] = &unk_27A670D38;
          v14 = *(a1 + 48);
          [v10 copyCarrierBundleValue:v8 key:v11 bundleType:v9 completion:v13];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

intptr_t __50__ISNetworkObserver_copyValueForCarrierBundleKey___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)endObservingDownloadQueue:(id)queue
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ISNetworkObserver_endObservingDownloadQueue___block_invoke;
  v5[3] = &unk_27A670D88;
  v5[4] = self;
  v5[5] = queue;
  v5[6] = &v10;
  v5[7] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if (*(v11 + 24) != *(v7 + 24))
  {
    [(ISNetworkObserver *)self _postUsageChangedToValue:?];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

void *__47__ISNetworkObserver_endObservingDownloadQueue___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _ntsIsUsingNetwork];
  [*(a1 + 40) removeObserver:*(a1 + 32)];
  [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
  result = [*(a1 + 32) _ntsIsUsingNetwork];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)endUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ISNetworkObserver_endUsingNetwork__block_invoke;
  v5[3] = &unk_27A6705F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [(ISNetworkObserver *)self _postUsageChangedToValue:0];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D6A610] object:0];
  _Block_object_dispose(&v6, 8);
}

uint64_t __36__ISNetworkObserver_endUsingNetwork__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 48);
  if (v1 >= 1)
  {
    *(*(*(result + 40) + 8) + 24) = v1 == 1;
    --*(*(result + 32) + 48);
  }

  return result;
}

- (double)lastNetworkTypeChangeTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xFFEFFFFFFFFFFFFFLL;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ISNetworkObserver_lastNetworkTypeChangeTime__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __46__ISNetworkObserver_lastNetworkTypeChangeTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unsigned)networkReachabilityFlags
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ISNetworkObserver_networkReachabilityFlags__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldShowCellularAutomaticDownloadsSwitch
{
  v2 = [(ISNetworkObserver *)self copyValueForCarrierBundleKey:@"ShowiTunesStoreAutoDownloadOverCellularSwitch"];
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v2 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (NSString)dataStatusIndicator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ISNetworkObserver_dataStatusIndicator__block_invoke;
  v5[3] = &unk_27A670D10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __40__ISNetworkObserver_dataStatusIndicator__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _dataStatusIndicator];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isWiFiEnabled
{
  mEMORY[0x277CEC5B8] = [MEMORY[0x277CEC5B8] sharedNetworkObserver];

  return [mEMORY[0x277CEC5B8] isWiFiEnabled];
}

- (NSString)mobileSubscriberCountryCode
{
  mEMORY[0x277D69D20] = [MEMORY[0x277D69D20] sharedController];

  return [mEMORY[0x277D69D20] mobileSubscriberCountryCode];
}

- (NSString)mobileSubscriberNetworkCode
{
  mEMORY[0x277D69D20] = [MEMORY[0x277D69D20] sharedController];

  return [mEMORY[0x277D69D20] mobileSubscriberNetworkCode];
}

- (NSString)modemRegistrationStatus
{
  mEMORY[0x277D69D20] = [MEMORY[0x277D69D20] sharedController];

  return [mEMORY[0x277D69D20] registrationStatus];
}

- (NSString)operatorName
{
  mEMORY[0x277D69D20] = [MEMORY[0x277D69D20] sharedController];

  return [mEMORY[0x277D69D20] operatorName];
}

- (NSString)providerName
{
  mEMORY[0x277D69D20] = [MEMORY[0x277D69D20] sharedController];

  return [mEMORY[0x277D69D20] providerName];
}

- (NSString)phoneNumber
{
  mEMORY[0x277D69D20] = [MEMORY[0x277D69D20] sharedController];

  return [mEMORY[0x277D69D20] phoneNumber];
}

- (void)reloadNetworkType
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ISNetworkObserver_reloadNetworkType__block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)setNetworkType:(int64_t)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ISNetworkObserver_setNetworkType___block_invoke;
  block[3] = &unk_27A670DB0;
  block[4] = self;
  block[5] = &v8;
  block[6] = type;
  dispatch_sync(dispatchQueue, block);
  v6 = v9[3];
  if (v6 != type)
  {
    [(ISNetworkObserver *)self _postTypeChangedNotificationFromValue:v6 toValue:type];
  }

  _Block_object_dispose(&v8, 8);
}

void *__36__ISNetworkObserver_setNetworkType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setNetworkType:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)downloadQueueNetworkUsageChanged:(id)changed
{
  isUsingNetwork = [(ISNetworkObserver *)self isUsingNetwork];
  if (isUsingNetwork == [changed isUsingNetwork])
  {

    [(ISNetworkObserver *)self _postUsageChangedToValue:isUsingNetwork];
  }
}

- (void)_applicationForegroundNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ISNetworkObserver__applicationForegroundNotification___block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __56__ISNetworkObserver__applicationForegroundNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reloadDataStatusIndicator];
  v2 = *(a1 + 32);

  return [v2 _reloadNetworkType];
}

- (void)_telephonyOperatorNameDidChangeNotification:(id)notification
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ISNetworkObserver__telephonyOperatorNameDidChangeNotification___block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

uint64_t __65__ISNetworkObserver__telephonyOperatorNameDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"ISNetworkObserverOperatorNameChangedNotification" object:v3];
}

- (void)_telephonyRegistrationDidChangeNotification:(id)notification
{
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ISNetworkObserver__telephonyRegistrationDidChangeNotification___block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

uint64_t __65__ISNetworkObserver__telephonyRegistrationDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"ISNetworkObserverModemRegistrationChanged" object:v3];
}

- (void)_handleTelephonyNotificationWithName:(__CFString *)name userInfo:(__CFDictionary *)info
{
  if (CFStringCompare(name, *MEMORY[0x277CC3CB0], 0) == kCFCompareEqualTo)
  {

    self->_dataStatusIndicator = CFDictionaryGetValue(info, *MEMORY[0x277CC3C48]);

    [(ISNetworkObserver *)self _reloadNetworkType];
  }
}

- (unsigned)_currentNetworkReachabilityFlags
{
  flags = 0;
  reachability = self->_reachability;
  if (reachability)
  {
    SCNetworkReachabilityGetFlags(reachability, &flags);
    LODWORD(reachability) = flags;
  }

  return reachability;
}

- (id)_dataStatusIndicator
{
  result = self->_dataStatusIndicator;
  if (!result)
  {
    if (self->_telephonyServer)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __41__ISNetworkObserver__dataStatusIndicator__block_invoke;
      v4[3] = &unk_27A670DD8;
      v4[4] = self;
      [(ISNetworkObserver *)self _copyConnectionDataStatus:v4];
      return self->_dataStatusIndicator;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)_networkTypeFromDataIndicator:(id)indicator
{
  v4 = 0;
  v6[24] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277CC3C50];
  v6[1] = 1;
  v6[2] = *MEMORY[0x277CC3C58];
  v6[3] = 1;
  v6[4] = *MEMORY[0x277CC3C60];
  v6[5] = 2;
  v6[6] = *MEMORY[0x277CC3C68];
  v6[7] = 2;
  v6[8] = *MEMORY[0x277CC3C70];
  v6[9] = 2;
  v6[10] = *MEMORY[0x277CC3CA8];
  v6[11] = 3;
  v6[12] = *MEMORY[0x277CC3C78];
  v6[13] = 3;
  v6[14] = *MEMORY[0x277CC3C80];
  v6[15] = 4;
  v6[16] = *MEMORY[0x277CC3C88];
  v6[17] = 5;
  v6[18] = *MEMORY[0x277CC3C90];
  v6[19] = 6;
  v6[20] = *MEMORY[0x277CC3C98];
  v6[21] = 7;
  v6[22] = *MEMORY[0x277CC3CA0];
  v6[23] = 8;
  while (![indicator isEqualToString:v6[v4]])
  {
    v4 += 2;
    if (v4 == 24)
    {
      return 0;
    }
  }

  return v6[v4 + 1];
}

- (int64_t)_networkTypeForReachabilityFlags:(unsigned int)flags
{
  if ((flags & 2) != 0)
  {
    v6 = CFPreferencesCopyAppValue(@"SSNetworkTypeOverride", *MEMORY[0x277D6A708]);
    if (objc_opt_respondsToSelector())
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      if ((flags & 0x40000) == 0)
      {
        v3 = 1000;
LABEL_9:

        return v3;
      }

      integerValue = [(ISNetworkObserver *)self _networkTypeFromDataIndicator:[(ISNetworkObserver *)self _dataStatusIndicator]];
    }

    v3 = integerValue;
    goto LABEL_9;
  }

  return 0;
}

- (void)_postReachabilityFlagsChangedNotificationFromValue:(unsigned int)value toValue:(unsigned int)toValue
{
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  v9 = *MEMORY[0x277CCA300];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:toValue];
  v11 = [v7 initWithObjectsAndKeys:{v8, v9, v10, *MEMORY[0x277CCA2F0], 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)_postTypeChangedNotificationFromValue:(int64_t)value toValue:(int64_t)toValue
{
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  v9 = *MEMORY[0x277CCA300];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:toValue];
  v11 = [v7 initWithObjectsAndKeys:{v8, v9, v10, *MEMORY[0x277CCA2F0], 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)_postUsageChangedToValue:(BOOL)value
{
  valueCopy = value;
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:valueCopy];
  v7 = [v5 initWithObjectsAndKeys:{v6, *MEMORY[0x277CCA2F0], 0}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
}

- (void)_reloadCellularRestriction
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ISNetworkObserver__reloadCellularRestriction__block_invoke;
  block[3] = &unk_27A670CC0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __47__ISNetworkObserver__reloadCellularRestriction__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ISNetworkObserver__reloadCellularRestriction__block_invoke_2;
  block[3] = &unk_27A670CC0;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __47__ISNetworkObserver__reloadCellularRestriction__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);

  return [v2 postNotificationName:@"ISNetworkObserverCellularRestrictionChangedNotification" object:v3];
}

- (void)_reloadDataStatusIndicator
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__ISNetworkObserver__reloadDataStatusIndicator__block_invoke;
  v2[3] = &unk_27A670DD8;
  v2[4] = self;
  [(ISNetworkObserver *)self _copyConnectionDataStatus:v2];
}

void __47__ISNetworkObserver__reloadDataStatusIndicator__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {

    *(*(a1 + 32) + 8) = a2;
  }
}

- (void)_reloadNetworkType
{
  _currentNetworkReachabilityFlags = [(ISNetworkObserver *)self _currentNetworkReachabilityFlags];

  [(ISNetworkObserver *)self _reloadNetworkTypeWithReachabilityFlags:_currentNetworkReachabilityFlags];
}

- (void)_reloadNetworkTypeWithReachabilityFlags:(unsigned int)flags
{
  v5 = [(ISNetworkObserver *)self _networkTypeForReachabilityFlags:?];
  v6 = [(ISNetworkObserver *)self _setNetworkType:v5];
  networkReachabilityFlags = self->_networkReachabilityFlags;
  self->_networkReachabilityFlags = flags;
  if (v6 != v5 || networkReachabilityFlags != flags)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__ISNetworkObserver__reloadNetworkTypeWithReachabilityFlags___block_invoke;
    block[3] = &unk_27A670E00;
    v13 = v6 != v5;
    block[4] = self;
    block[5] = v6;
    block[6] = v5;
    v14 = networkReachabilityFlags != flags;
    v11 = networkReachabilityFlags;
    flagsCopy = flags;
    dispatch_async(notificationQueue, block);
  }
}

id *__61__ISNetworkObserver__reloadNetworkTypeWithReachabilityFlags___block_invoke(id *result)
{
  v1 = result;
  if (*(result + 64) == 1)
  {
    result = [result[4] _postTypeChangedNotificationFromValue:result[5] toValue:result[6]];
  }

  if (*(v1 + 65) == 1)
  {
    v2 = v1[4];
    v3 = *(v1 + 14);
    v4 = *(v1 + 15);

    return [v2 _postReachabilityFlagsChangedNotificationFromValue:v3 toValue:v4];
  }

  return result;
}

- (int64_t)_setNetworkType:(int64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  networkType = self->_networkType;
  if (networkType != type)
  {
    self->_networkType = type;
    self->_lastNetworkTypeChangeTime = CFAbsoluteTimeGetCurrent();
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = SSGetStringForNetworkType();
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Set network type %@", &v11, 22);
      if (v8)
      {
        v9 = v8;
        [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
        free(v9);
        SSFileLog();
      }
    }
  }

  return networkType;
}

@end