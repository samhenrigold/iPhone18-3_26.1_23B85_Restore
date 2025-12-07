@interface APBonjourCacheHomeKit
+ (BOOL)isDeviceCacheable:(id)cacheable;
+ (id)getDeviceID:(id)d;
+ (id)prepareDeviceInfo:(id)info;
- (APBonjourCacheHomeKit)init;
- (BOOL)cacheDevice:(id)device;
- (BOOL)canCacheDevice:(id)device;
- (BOOL)shouldEvictDevice:(id)device policy:(id *)policy;
- (BOOL)shouldProcessDeviceForCache:(id)cache;
- (BOOL)uncacheDevice:(id)device;
- (BOOL)writeCache;
- (NSArray)availableCachedDevices;
- (NSDictionary)cachedDevices;
- (id)copyDescription;
- (id)copyDescriptionInternal;
- (id)describeBonjourInfo:(id)info;
- (id)getCacheDirectoryURLWithParentDirectory:(id)directory creatingIfNecessary:(BOOL)necessary;
- (id)getCacheFileURLCreatingParentDirectoriesIfNecessary:(BOOL)necessary;
- (id)getReportableCachedDevices;
- (uint64_t)checkAndEvictCachedDevicesIfNecessary;
- (uint64_t)setupEvictionPolicies;
- (void)activateWithCompletion:(id)completion;
- (void)activateWithCompletionInternal:(id)internal;
- (void)addExpectedDeviceID:(id)d;
- (void)checkAndEvictCachedDevicesIfNecessary;
- (void)dealloc;
- (void)evictCachedDeviceWithID:(id)d;
- (void)evictCachedDeviceWithIDInternal:(id)internal;
- (void)forceReportCachedDevicesFound;
- (void)forceReportCachedDevicesLost;
- (void)handleHomeKitDeviceConfigurationChanged:(id)changed;
- (void)handleNetworkSignatureChanged:(id)changed;
- (void)handleRealDeviceFoundForCachedDevice:(id)device;
- (void)handleRealDeviceLostForCachedDevice:(id)device;
- (void)invalidate;
- (void)invalidateInternal;
- (void)loadCache;
- (void)realDeviceFound:(id)found userInfo:(id)info;
- (void)realDeviceFoundInternal:(id)internal;
- (void)realDeviceLost:(id)lost;
- (void)realDeviceLostInternal:(id)internal;
- (void)removeAllExpectedDeviceIDs;
- (void)removeExpectedDeviceID:(id)d;
- (void)reportCachedDevice:(id)device found:(BOOL)found withHandler:(id)handler;
- (void)setupDiskWriteCoalescer;
- (void)setupEvictionPolicies;
- (void)setupIntrospector;
- (void)updateExpectedDeviceIDsAdding:(id)adding removing:(id)removing;
@end

@implementation APBonjourCacheHomeKit

- (NSDictionary)cachedDevices
{
  cache = [(APBonjourCacheHomeKit *)self cache];

  return [(NSMutableDictionary *)cache objectForKeyedSubscript:@"Items"];
}

- (BOOL)writeCache
{
  v12 = 0;
  if (![(APBonjourCacheHomeKit *)self currentNetworkSignature])
  {
    return 0;
  }

  if (gLogCategory_APBonjourCacheHomeKit <= 30)
  {
    v2 = 33554522;
    if (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit writeCache]", 33554462, "[%{ptr}] Writing cache to disk", self);
    }
  }

  [(CUCoalescer *)[(APBonjourCacheHomeKit *)self diskWriteCoalescer] cancel];
  [(APBonjourCacheHomeKit *)self getCacheFileURLCreatingParentDirectoriesIfNecessary:1];
  if ([objc_msgSend(OUTLINED_FUNCTION_5_2() "cachedDevices")])
  {
    [(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self cache] setObject:@"2" forKeyedSubscript:@"Version"];
    [(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self cache] setObject:[(APBonjourCacheHomeKit *)self currentNetworkSignature] forKeyedSubscript:@"NetworkSignature"];
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:-[APBonjourCacheHomeKit cache](self format:"cache") options:200 error:{0, &v12}];
    if (v12)
    {
      v9 = gLogCategory_APBonjourCacheHomeKit;
      if (gLogCategory_APBonjourCacheHomeKit <= 90)
      {
        if (gLogCategory_APBonjourCacheHomeKit == -1)
        {
          if (!OUTLINED_FUNCTION_9_0(&gLogCategory_APBonjourCacheHomeKit))
          {
            return 0;
          }

          v9 = gLogCategory_APBonjourCacheHomeKit;
        }

        if (v9 == -1)
        {
          _LogCategory_Initialize();
        }

        [(APBonjourCacheHomeKit *)self cache];
        v11 = "[%{ptr}] Failed to serialize cache: %@%?{end} contents:%@";
        goto LABEL_36;
      }

      return 0;
    }

    v5 = 1;
    if (([v4 writeToURL:v2 atomically:1] & 1) == 0)
    {
      v6 = gLogCategory_APBonjourCacheHomeKit;
      if (gLogCategory_APBonjourCacheHomeKit <= 90)
      {
        if (gLogCategory_APBonjourCacheHomeKit != -1)
        {
LABEL_11:
          if (v6 == -1)
          {
            _LogCategory_Initialize();
          }

          [(APBonjourCacheHomeKit *)self cache];
          v11 = "[%{ptr}] Failed to write cache file data%?{end} to URL: %@ contents:%@";
LABEL_36:
          OUTLINED_FUNCTION_15(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit writeCache]", v10, v11);
          return 0;
        }

        if (OUTLINED_FUNCTION_9_0(&gLogCategory_APBonjourCacheHomeKit))
        {
          v6 = gLogCategory_APBonjourCacheHomeKit;
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

  else
  {
    v7 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v5 = 1;
    if ([v12 code] != 4 && (v7 & 1) == 0)
    {
      if (gLogCategory_APBonjourCacheHomeKit > 90 || gLogCategory_APBonjourCacheHomeKit == -1 && !OUTLINED_FUNCTION_9_0(&gLogCategory_APBonjourCacheHomeKit))
      {
        return 0;
      }

      [v12 localizedDescription];
      [v12 localizedFailureReason];
      if (gLogCategory_APBonjourCacheHomeKit == -1)
      {
        _LogCategory_Initialize();
      }

      v11 = "[%{ptr}] Failed to remove cache file: %@ %@%?{end} URL: %@";
      goto LABEL_36;
    }
  }

  return v5;
}

- (APBonjourCacheHomeKit)init
{
  v8 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = APBonjourCacheHomeKit;
  v2 = [(APBonjourCacheHomeKit *)&v6 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  SNPrintF(label, 64, "APBonjourCacheHomeKit.%{ptr}.InternalQueue", v2);
  [(APBonjourCacheHomeKit *)v3 setInternalQueue:dispatch_queue_create(label, 0)];
  if (![(APBonjourCacheHomeKit *)v3 internalQueue])
  {
    v5 = 141;
LABEL_19:
    [(APBonjourCacheHomeKit *)v5 init];
    return 0;
  }

  SNPrintF(label, 64, "APBonjourCacheHomeKit.%{ptr}.DispatchQueue", v3);
  [(APBonjourCacheHomeKit *)v3 setDispatchQueue:dispatch_queue_create(label, 0)];
  if (![(APBonjourCacheHomeKit *)v3 dispatchQueue])
  {
    v5 = 145;
    goto LABEL_19;
  }

  -[APBonjourCacheHomeKit setPresentRealDevices:](v3, "setPresentRealDevices:", [MEMORY[0x277CBEB38] dictionary]);
  if (![(APBonjourCacheHomeKit *)v3 presentRealDevices])
  {
    v5 = 148;
    goto LABEL_19;
  }

  -[APBonjourCacheHomeKit setExpectedDeviceIDs:](v3, "setExpectedDeviceIDs:", [MEMORY[0x277CBEB58] set]);
  if (![(APBonjourCacheHomeKit *)v3 expectedDeviceIDs])
  {
    v5 = 151;
    goto LABEL_19;
  }

  -[APBonjourCacheHomeKit setReportedCachedDeviceIDs:](v3, "setReportedCachedDeviceIDs:", [MEMORY[0x277CBEB58] set]);
  if (![(APBonjourCacheHomeKit *)v3 reportedCachedDeviceIDs])
  {
    v5 = 154;
    goto LABEL_19;
  }

  [(APBonjourCacheHomeKit *)v3 setUsePresentDeviceStashing:1];
  [(APBonjourCacheHomeKit *)v3 setActivatedPresentDeviceStashing:1];
  [(APBonjourCacheHomeKit *)v3 setupEvictionPolicies];
  [(APBonjourCacheHomeKit *)v3 setupDiskWriteCoalescer];
  if (IsAppleInternalBuild())
  {
    [(APBonjourCacheHomeKit *)v3 setupIntrospector];
  }

  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [(APBonjourCacheHomeKit *)v3 init];
  }

  return v3;
}

- (void)dealloc
{
  self->_cache = 0;

  self->_currentNetworkSignature = 0;
  self->_systemMonitor = 0;

  self->_homeKitDeviceMonitor = 0;
  self->_reportedCachedDeviceIDs = 0;

  self->_expectedDeviceIDs = 0;
  self->_presentRealDevices = 0;

  self->_evictionPolicies = 0;
  self->_diskWriteCoalescer = 0;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
    self->_dispatchQueue = 0;
  }

  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    dispatch_release(internalQueue);
    self->_internalQueue = 0;
  }

  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [(APBonjourCacheHomeKit *)self dealloc];
  }

  v5.receiver = self;
  v5.super_class = APBonjourCacheHomeKit;
  [(APBonjourCacheHomeKit *)&v5 dealloc];
}

- (void)setupEvictionPolicies
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v3 = objc_alloc_init(APBonjourCacheEvictionTTL);
  APSSettingsGetDouble();
  [(APBonjourCacheEvictionTTL *)v3 setTimeToLiveSeconds:v4];
  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [(APBonjourCacheHomeKit *)&v5 setupEvictionPolicies];
  }

  v6[0] = v3;
  -[APBonjourCacheHomeKit setEvictionPolicies:](self, "setEvictionPolicies:", [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1]);
}

- (void)setupDiskWriteCoalescer
{
  v8 = 0;
  v3 = objc_alloc_init(MEMORY[0x277D02850]);
  if (v3)
  {
    v4 = v3;
    APSSettingsGetDouble();
    [v4 setMinDelay:v5];
    APSSettingsGetDouble();
    [v4 setMaxDelay:v6];
    v8 = 0;
    [v4 setLeeway:1.0];
    [v4 setDispatchQueue:{-[APBonjourCacheHomeKit internalQueue](self, "internalQueue")}];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__APBonjourCacheHomeKit_setupDiskWriteCoalescer__block_invoke;
    v7[3] = &unk_278BC6E38;
    v7[4] = self;
    [v4 setActionHandler:v7];
    [(APBonjourCacheHomeKit *)self setDiskWriteCoalescer:v4];
  }

  else
  {
    [(APBonjourCacheHomeKit *)&v8 setupDiskWriteCoalescer];
  }
}

uint64_t __48__APBonjourCacheHomeKit_setupDiskWriteCoalescer__block_invoke(uint64_t a1)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 30 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    __48__APBonjourCacheHomeKit_setupDiskWriteCoalescer__block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);

  return [v2 writeCache];
}

- (void)activateWithCompletion:(id)completion
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__APBonjourCacheHomeKit_activateWithCompletion___block_invoke;
  v6[3] = &unk_278BC71A8;
  v6[4] = self;
  v6[5] = completion;
  dispatch_async(internalQueue, v6);
}

- (void)invalidate
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APBonjourCacheHomeKit_invalidate__block_invoke;
  block[3] = &unk_278BC6E38;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)realDeviceFound:(id)found userInfo:(id)info
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__APBonjourCacheHomeKit_realDeviceFound_userInfo___block_invoke;
  block[3] = &unk_278BC71D0;
  block[4] = self;
  block[5] = found;
  block[6] = info;
  dispatch_async(internalQueue, block);
}

uint64_t __50__APBonjourCacheHomeKit_realDeviceFound_userInfo___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [APBonjourCacheHomeKitItem itemWithDeviceInfo:a1[5] userInfo:a1[6]];

  return [v1 realDeviceFoundInternal:v2];
}

- (void)realDeviceLost:(id)lost
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__APBonjourCacheHomeKit_realDeviceLost___block_invoke;
  v6[3] = &unk_278BC71F8;
  v6[4] = self;
  v6[5] = lost;
  dispatch_async(internalQueue, v6);
}

- (NSArray)availableCachedDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__APBonjourCacheHomeKit_availableCachedDevices__block_invoke;
  v6[3] = &unk_278BC6D48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__47__APBonjourCacheHomeKit_availableCachedDevices__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getReportableCachedDevices];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)evictCachedDeviceWithID:(id)d
{
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__APBonjourCacheHomeKit_evictCachedDeviceWithID___block_invoke;
  v6[3] = &unk_278BC71F8;
  v6[4] = self;
  v6[5] = d;
  dispatch_async(internalQueue, v6);
}

- (void)activateWithCompletionInternal:(id)internal
{
  [(APBonjourCacheHomeKit *)self setActivatedPresentDeviceStashing:[(APBonjourCacheHomeKit *)self usePresentDeviceStashing]];
  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [APBonjourCacheHomeKit activateWithCompletionInternal:?];
  }

  if (![(APBonjourCacheHomeKit *)self systemMonitor])
  {
    [(APBonjourCacheHomeKit *)self setSystemMonitor:objc_opt_new()];
    if (![(APBonjourCacheHomeKit *)self systemMonitor])
    {
      [APBonjourCacheHomeKit activateWithCompletionInternal:];
      goto LABEL_20;
    }

    [(CUSystemMonitor *)[(APBonjourCacheHomeKit *)self systemMonitor] setDispatchQueue:[(APBonjourCacheHomeKit *)self internalQueue]];
    systemMonitor = [(APBonjourCacheHomeKit *)self systemMonitor];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke;
    v16[3] = &unk_278BC6E38;
    v16[4] = self;
    [(CUSystemMonitor *)systemMonitor setPrimaryNetworkChangedHandler:v16];
    systemMonitor2 = [(APBonjourCacheHomeKit *)self systemMonitor];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_2;
    v15[3] = &unk_278BC6E38;
    v15[4] = self;
    [(CUSystemMonitor *)systemMonitor2 activateWithCompletion:v15];
  }

  if (![(APBonjourCacheHomeKit *)self homeKitDeviceMonitor])
  {
    [(APBonjourCacheHomeKit *)self setHomeKitDeviceMonitor:objc_opt_new()];
    if ([(APBonjourCacheHomeKit *)self systemMonitor])
    {
      [(APHomeKitDeviceMonitor *)[(APBonjourCacheHomeKit *)self homeKitDeviceMonitor] setDispatchQueue:[(APBonjourCacheHomeKit *)self internalQueue]];
      homeKitDeviceMonitor = [(APBonjourCacheHomeKit *)self homeKitDeviceMonitor];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_3;
      v14[3] = &unk_278BC6E38;
      v14[4] = self;
      [(APHomeKitDeviceMonitor *)homeKitDeviceMonitor setHomeConfigurationDidChangeHandler:v14];
      homeKitDeviceMonitor2 = [(APBonjourCacheHomeKit *)self homeKitDeviceMonitor];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_4;
      v13[3] = &unk_278BC7220;
      v13[4] = self;
      [(APHomeKitDeviceMonitor *)homeKitDeviceMonitor2 activateWithCompletion:v13];
      goto LABEL_10;
    }

    [APBonjourCacheHomeKit activateWithCompletionInternal:];
LABEL_20:
    v9 = -6728;
    if (!internal)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
  {
    [APBonjourCacheHomeKit activateWithCompletionInternal:?];
  }

  v9 = 0;
  if (internal)
  {
LABEL_14:
    dispatchQueue = [(APBonjourCacheHomeKit *)self dispatchQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_5;
    v11[3] = &unk_278BC7098;
    v11[4] = internal;
    v12 = v9;
    dispatch_async(dispatchQueue, v11);
  }
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(v1 "systemMonitor")];

  return [v1 handleNetworkSignatureChanged:v2];
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(v1 "systemMonitor")];

  return [v1 handleNetworkSignatureChanged:v2];
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(v1 "homeKitDeviceMonitor")];

  return [v1 handleHomeKitDeviceConfigurationChanged:v2];
}

void *__56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_4(void *result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result[4];
    v4 = [objc_msgSend(v3 "homeKitDeviceMonitor")];

    return [v3 handleHomeKitDeviceConfigurationChanged:v4];
  }

  return result;
}

uint64_t __56__APBonjourCacheHomeKit_activateWithCompletionInternal___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 16);

  return v4(v1, v3);
}

- (void)handleRealDeviceFoundForCachedDevice:(id)device
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = +[APBonjourCacheHomeKit getDeviceID:](APBonjourCacheHomeKit, "getDeviceID:", [device deviceInfo]);
  v6 = [objc_msgSend(device "deviceInfo")];
  v7 = [objc_msgSend(objc_msgSend(device "deviceInfo")];
  if (!v5)
  {
    [APBonjourCacheHomeKit handleRealDeviceFoundForCachedDevice:];
    v29 = 0;
    v11 = 0;
    goto LABEL_36;
  }

  v8 = v7;
  v9 = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v5];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (!v10)
  {
    [APBonjourCacheHomeKit handleRealDeviceFoundForCachedDevice:];
LABEL_40:
    v29 = 0;
    goto LABEL_36;
  }

  v12 = [objc_msgSend(v10 objectForKeyedSubscript:{@"services", "mutableCopy"}];
  if (!v12)
  {
    [APBonjourCacheHomeKit handleRealDeviceFoundForCachedDevice:];
    goto LABEL_40;
  }

  v13 = v12;
  v30 = v9;
  v32 = v5;
  selfCopy = self;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __62__APBonjourCacheHomeKit_handleRealDeviceFoundForCachedDevice___block_invoke;
  v42[3] = &__block_descriptor_36_e39_B24__0__NSDictionary_8__NSDictionary_16l;
  v43 = v8;
  [v12 filterUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", v42)}];
  [v13 addObjectsFromArray:v6];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    LODWORD(v16) = 0;
    v17 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v16 = [objc_msgSend(*(*(&v38 + 1) + 8 * i) objectForKeyedSubscript:{@"transportType", "unsignedIntValue"}] | v16;
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v31 = v13;
  [v11 setObject:v13 forKeyedSubscript:@"services"];
  [v11 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", v16), @"TrTy"}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = [&unk_284F652A8 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(&unk_284F652A8);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        v24 = [v11 objectForKeyedSubscript:v23];
        v25 = [objc_msgSend(device "deviceInfo")];
        v26 = [v25 isEqual:v24];
        if (v25 && (v26 & 1) == 0)
        {
          v27 = gLogCategory_APBonjourCacheHomeKit;
          if (gLogCategory_APBonjourCacheHomeKit <= 50)
          {
            if (gLogCategory_APBonjourCacheHomeKit != -1)
            {
              goto LABEL_22;
            }

            if (_LogCategory_Initialize())
            {
              v27 = gLogCategory_APBonjourCacheHomeKit;
LABEL_22:
              if (v27 > 30)
              {
                v28 = 1;
              }

              else
              {
                v28 = v27 == -1 && _LogCategory_Initialize() == 0;
              }

              LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit handleRealDeviceFoundForCachedDevice:]", 33554482, "[%{ptr}] Update device %@ property %'@%?{end} from %@ to %@", selfCopy, v32, v23, v28, v24, v25);
            }
          }

          [v11 setObject:v25 forKeyedSubscript:v23];
          continue;
        }
      }

      v20 = [&unk_284F652A8 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v20);
  }

  if (([v11 isEqualToDictionary:v30] & 1) == 0)
  {
    -[APBonjourCacheHomeKit cacheDevice:](selfCopy, "cacheDevice:", +[APBonjourCacheHomeKitItem itemWithDeviceInfo:userInfo:](APBonjourCacheHomeKitItem, "itemWithDeviceInfo:userInfo:", v11, [device userInfo]));
  }

  v29 = v31;
LABEL_36:
}

- (void)handleRealDeviceLostForCachedDevice:(id)device
{
  v4 = [APBonjourCacheHomeKit getDeviceID:device];
  if (v4)
  {
    v5 = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v4];
    cachedDeviceFoundHandler = [(APBonjourCacheHomeKit *)self cachedDeviceFoundHandler];

    [(APBonjourCacheHomeKit *)self reportCachedDevice:v5 found:1 withHandler:cachedDeviceFoundHandler];
  }

  else
  {
    [APBonjourCacheHomeKit handleRealDeviceLostForCachedDevice:];
  }
}

- (id)getReportableCachedDevices
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  [(APBonjourCacheHomeKit *)self checkAndEvictCachedDevicesIfNecessary];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  cachedDevices = [(APBonjourCacheHomeKit *)self cachedDevices];
  v5 = [(NSDictionary *)cachedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(cachedDevices);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (![(APBonjourCacheHomeKit *)self activatedPresentDeviceStashing]|| ![(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self presentRealDevices] objectForKeyedSubscript:v9])
        {
          if ([(APBonjourCacheHomeKit *)self shouldProcessDeviceForCache:v9])
          {
            [array addObject:{-[NSDictionary objectForKeyedSubscript:](-[APBonjourCacheHomeKit cachedDevices](self, "cachedDevices"), "objectForKeyedSubscript:", v9)}];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSDictionary *)cachedDevices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (BOOL)shouldProcessDeviceForCache:(id)cache
{
  if (shouldProcessDeviceForCache__onceToken != -1)
  {
    [APBonjourCacheHomeKit shouldProcessDeviceForCache:];
  }

  if (shouldProcessDeviceForCache__prefOverride)
  {
    return 1;
  }

  expectedDeviceIDs = [(APBonjourCacheHomeKit *)self expectedDeviceIDs];

  return [(NSMutableSet *)expectedDeviceIDs containsObject:cache];
}

uint64_t __53__APBonjourCacheHomeKit_shouldProcessDeviceForCache___block_invoke()
{
  result = APSSettingsGetInt64();
  shouldProcessDeviceForCache__prefOverride = result != 0;
  return result;
}

- (void)addExpectedDeviceID:(id)d
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = d;
  -[APBonjourCacheHomeKit updateExpectedDeviceIDsAdding:removing:](self, "updateExpectedDeviceIDsAdding:removing:", [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1], 0);
}

- (void)removeExpectedDeviceID:(id)d
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = d;
  -[APBonjourCacheHomeKit updateExpectedDeviceIDsAdding:removing:](self, "updateExpectedDeviceIDsAdding:removing:", 0, [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1]);
}

- (void)removeAllExpectedDeviceIDs
{
  allObjects = [(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] allObjects];

  [(APBonjourCacheHomeKit *)self updateExpectedDeviceIDsAdding:0 removing:allObjects];
}

- (void)updateExpectedDeviceIDsAdding:(id)adding removing:(id)removing
{
  v27 = *MEMORY[0x277D85DE8];
  [(APBonjourCacheHomeKit *)self checkAndEvictCachedDevicesIfNecessary];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [adding countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(adding);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if (([(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] containsObject:v11]& 1) == 0)
        {
          if ([(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v11])
          {
            if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit updateExpectedDeviceIDsAdding:removing:]", 33554482, "[%{ptr}] Reporting newly expected cached device as found %@", self, v11);
            }

            [(APBonjourCacheHomeKit *)self reportCachedDevice:[(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v11] found:1 withHandler:[(APBonjourCacheHomeKit *)self cachedDeviceFoundHandler]];
          }

          else if ([(APBonjourCacheHomeKit *)self activatedPresentDeviceStashing]&& [(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self presentRealDevices] objectForKeyedSubscript:v11])
          {
            [(APBonjourCacheHomeKit *)self cacheDevice:[(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self presentRealDevices] objectForKeyedSubscript:v11]];
          }

          [(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] addObject:v11];
        }
      }

      v8 = [adding countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [removing countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(removing);
        }

        v16 = *(*(&v17 + 1) + 8 * j);
        if ([(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] containsObject:v16])
        {
          if ([(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v16])
          {
            if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit updateExpectedDeviceIDsAdding:removing:]", 33554482, "[%{ptr}] Reporting no longer expected cached device as lost %@", self, v16);
            }

            [(APBonjourCacheHomeKit *)self reportCachedDevice:[(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v16] found:0 withHandler:[(APBonjourCacheHomeKit *)self cachedDeviceLostHandler]];
          }

          [(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] removeObject:v16];
        }
      }

      v13 = [removing countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (id)getCacheDirectoryURLWithParentDirectory:(id)directory creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v12 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:necessaryCopy error:&v12];
  if (!v8)
  {
    [(APBonjourCacheHomeKit *)&v12 getCacheDirectoryURLWithParentDirectory:&v13 creatingIfNecessary:?];
    return v13;
  }

  v9 = [v8 URLByAppendingPathComponent:objc_msgSend(@"com.apple.airplay" isDirectory:{"stringByAppendingPathComponent:", directory), 1}];
  v10 = v9;
  if (!v9)
  {
    [APBonjourCacheHomeKit getCacheDirectoryURLWithParentDirectory:creatingIfNecessary:];
    return v10;
  }

  if (([defaultManager fileExistsAtPath:objc_msgSend(v9 isDirectory:{"path"), 0}] & 1) == 0 && necessaryCopy)
  {
    [defaultManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v12];
    if (v12)
    {
      [(APBonjourCacheHomeKit *)&v12 getCacheDirectoryURLWithParentDirectory:v12 creatingIfNecessary:self, v10, &v13];
      return v13;
    }
  }

  return v10;
}

- (id)getCacheFileURLCreatingParentDirectoriesIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  uTF8String = [(NSString *)[(APBonjourCacheHomeKit *)self currentNetworkSignature] UTF8String];
  if (!uTF8String)
  {
    [(APBonjourCacheHomeKit *)self getCacheFileURLCreatingParentDirectoriesIfNecessary:?];
    return v10;
  }

  strlen(uTF8String);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%016llX.plist", @"airplay", SipHash()];
  v7 = [(APBonjourCacheHomeKit *)self getCacheDirectoryURLWithParentDirectory:@"APBonjourCacheHomeKit" creatingIfNecessary:necessaryCopy];
  if (!v7)
  {
    [(APBonjourCacheHomeKit *)self getCacheFileURLCreatingParentDirectoriesIfNecessary:v8];
    return v10;
  }

  result = [v7 URLByAppendingPathComponent:v6 isDirectory:0];
  if (!result)
  {
    [APBonjourCacheHomeKit getCacheFileURLCreatingParentDirectoriesIfNecessary:];
    return 0;
  }

  return result;
}

- (BOOL)shouldEvictDevice:(id)device policy:(id *)policy
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  evictionPolicies = [(APBonjourCacheHomeKit *)self evictionPolicies];
  v7 = [(NSArray *)evictionPolicies countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(evictionPolicies);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      if ([v11 shouldEvict:device])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v7 = [(NSArray *)evictionPolicies countByEnumeratingWithState:&v13 objects:v17 count:16];
        v8 = v7;
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    LOBYTE(v7) = 1;
    if (!policy)
    {
      return v7;
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
    if (!policy)
    {
      return v7;
    }
  }

  *policy = v11;
  return v7;
}

- (void)checkAndEvictCachedDevicesIfNecessary
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ([(APBonjourCacheHomeKit *)self cachedDevices])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    allKeys = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] allKeys];
    v4 = [(NSArray *)allKeys countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if ([(APBonjourCacheHomeKit *)self shouldEvictDevice:[(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v8] policy:&v14])
          {
            if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
            {
              [(APBonjourCacheHomeKit *)&v14 checkAndEvictCachedDevicesIfNecessary];
            }

            [(APBonjourCacheHomeKit *)self evictCachedDeviceWithIDInternal:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v9 = [(NSArray *)allKeys countByEnumeratingWithState:&v10 objects:v15 count:16];
        v5 = v9;
      }

      while (v9);
    }
  }

  else
  {
    [APBonjourCacheHomeKit checkAndEvictCachedDevicesIfNecessary];
  }
}

- (void)loadCache
{
  v3 = [(APBonjourCacheHomeKit *)self getCacheFileURLCreatingParentDirectoriesIfNecessary:0];
  dictionary = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v3];
  v5 = [dictionary objectForKeyedSubscript:@"Version"];
  if (dictionary)
  {
    v6 = v5;
    if ([v5 isEqualToString:@"2"])
    {
      goto LABEL_10;
    }

    if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit loadCache]", 33554482, "[%{ptr}] Found cache with incompatible version %'@ (expected %'@). Existing contents may be overridden.", self, v6, @"2");
    }
  }

  if ([(APBonjourCacheHomeKit *)self currentNetworkSignature])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
    dictionary = 0;
  }

LABEL_10:
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [dictionary objectForKeyedSubscript:@"Items"];
  if (v8)
  {
    [dictionary2 addEntriesFromDictionary:v8];
  }

  [(APBonjourCacheHomeKit *)self setCache:dictionary];
  cache = [(APBonjourCacheHomeKit *)self cache];

  [(NSMutableDictionary *)cache setObject:dictionary2 forKeyedSubscript:@"Items"];
}

+ (id)prepareDeviceInfo:(id)info
{
  infoCopy = info;
  v19 = *MEMORY[0x277D85DE8];
  if (!info)
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
    v4 = 0;
    goto LABEL_17;
  }

  if (![info objectForKeyedSubscript:@"txt"])
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
LABEL_22:
    v4 = 0;
LABEL_24:
    infoCopy = 0;
    goto LABEL_17;
  }

  if (![infoCopy objectForKeyedSubscript:@"name"])
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
    goto LABEL_22;
  }

  if (![APBonjourCacheHomeKit getDeviceID:infoCopy])
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
    goto LABEL_22;
  }

  v4 = [objc_msgSend(infoCopy objectForKeyedSubscript:{@"services", "mutableCopy"}];
  if (!v4)
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
    goto LABEL_24;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__APBonjourCacheHomeKit_prepareDeviceInfo___block_invoke;
  v16[3] = &__block_descriptor_36_e39_B24__0__NSDictionary_8__NSDictionary_16l;
  v17 = 35;
  [v4 filterUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", v16)}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = [objc_msgSend(*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:{@"transportType", "unsignedIntValue"}] | v7;
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:infoCopy];
  infoCopy = v10;
  if (v10)
  {
    [v10 setObject:v4 forKeyedSubscript:@"services"];
    [infoCopy setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", v7), @"TrTy"}];
  }

  else
  {
    +[APBonjourCacheHomeKit prepareDeviceInfo:];
  }

LABEL_17:

  return infoCopy;
}

+ (BOOL)isDeviceCacheable:(id)cacheable
{
  BonjourDevice_GetInt64();
  v3 = BonjourDevice_CopyCFString();
  v4 = CFStringHasPrefix(v3, @"AppleTV") != 0;
  v5 = (CFStringHasPrefix(v3, @"AudioAccessory") | v4) != 0;
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

- (id)describeBonjourInfo:(id)info
{
  v4 = [APBonjourCacheHomeKit getDeviceID:info];
  v5 = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:@"name"];
  v7 = [v5 objectForKeyedSubscript:@"lastSeen"];
  v8 = MEMORY[0x277CBEAA8];
  [v7 doubleValue];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  if (!v6)
  {
    v10 = [v5 debugDescription];
    if (!v10)
    {
      v10 = [v5 description];
    }

    v6 = v10;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@ '%@'", v9, v4, v6];
}

- (id)copyDescriptionInternal
{
  v61 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [(APBonjourCacheHomeKit *)self getCacheFileURLCreatingParentDirectoriesIfNecessary:0];
  uRLByDeletingLastPathComponent = [v5 URLByDeletingLastPathComponent];
  v7 = CUObfuscatedPtr();
  v8 = objc_opt_class();
  [v3 appendFormat:@"[0x%04X] %@", v7, NSStringFromClass(v8)];
  if ([(APBonjourCacheHomeKit *)self invalidated])
  {
    [v3 appendString:@" INVALIDATED"];
  }

  [v3 appendString:@"\n"];
  [v3 appendFormat:@"Current Network Signature:     %@\n", -[APBonjourCacheHomeKit currentNetworkSignature](self, "currentNetworkSignature")];
  [v3 appendFormat:@"Cached Network Signature:      %@\n", -[NSMutableDictionary objectForKeyedSubscript:](-[APBonjourCacheHomeKit cache](self, "cache"), "objectForKeyedSubscript:", @"NetworkSignature"];
  [v3 appendFormat:@"Cache Root:                    %@\n", uRLByDeletingLastPathComponent];
  [v3 appendFormat:@"Current Cache File:            %@\n", objc_msgSend(v5, "lastPathComponent")];
  [v3 appendFormat:@"Current Cache File Version:    %@\n", -[NSMutableDictionary objectForKeyedSubscript:](-[APBonjourCacheHomeKit cache](self, "cache"), "objectForKeyedSubscript:", @"Version"];
  [v3 appendString:@"\n"];
  v9 = [(NSArray *)[(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] allValues] sortedArrayUsingComparator:&__block_literal_global_361];
  [v3 appendFormat:@"Cache Entries: %u\n", -[NSArray count](v9, "count")];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v52;
    do
    {
      v13 = 0;
      do
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 appendFormat:@"    %@\n", -[APBonjourCacheHomeKit describeBonjourInfo:](self, "describeBonjourInfo:", *(*(&v51 + 1) + 8 * v13++))];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v11);
  }

  [v3 appendString:@"\n"];
  if ([(APBonjourCacheHomeKit *)self activatedPresentDeviceStashing])
  {
    v14 = [objc_msgSend(-[NSMutableDictionary allValues](-[APBonjourCacheHomeKit presentRealDevices](self "presentRealDevices")];
    [v3 appendFormat:@"Present Real Devices: %u\n", objc_msgSend(v14, "count")];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v48;
      do
      {
        v18 = 0;
        do
        {
          if (*v48 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v3 appendFormat:@"    %@\n", -[APBonjourCacheHomeKit describeBonjourInfo:](self, "describeBonjourInfo:", *(*(&v47 + 1) + 8 * v18++))];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v16);
    }

    [v3 appendString:@"\n"];
  }

  [v3 appendFormat:@"Expected Device IDs: %u\n", -[NSMutableSet count](-[APBonjourCacheHomeKit expectedDeviceIDs](self, "expectedDeviceIDs"), "count")];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  expectedDeviceIDs = [(APBonjourCacheHomeKit *)self expectedDeviceIDs];
  v20 = [(NSMutableSet *)expectedDeviceIDs countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
    do
    {
      v23 = 0;
      do
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(expectedDeviceIDs);
        }

        [v3 appendFormat:@"    %@\n", *(*(&v43 + 1) + 8 * v23++)];
      }

      while (v21 != v23);
      v21 = [(NSMutableSet *)expectedDeviceIDs countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v21);
  }

  [v3 appendString:@"\n"];
  [v3 appendFormat:@"Reported Cached Device IDs: %u\n", -[NSMutableSet count](-[APBonjourCacheHomeKit reportedCachedDeviceIDs](self, "reportedCachedDeviceIDs"), "count")];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  reportedCachedDeviceIDs = [(APBonjourCacheHomeKit *)self reportedCachedDeviceIDs];
  v25 = [(NSMutableSet *)reportedCachedDeviceIDs countByEnumeratingWithState:&v39 objects:v57 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v40;
    do
    {
      v28 = 0;
      do
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(reportedCachedDeviceIDs);
        }

        [v3 appendFormat:@"    %@\n", *(*(&v39 + 1) + 8 * v28++)];
      }

      while (v26 != v28);
      v26 = [(NSMutableSet *)reportedCachedDeviceIDs countByEnumeratingWithState:&v39 objects:v57 count:16];
    }

    while (v26);
  }

  [v3 appendString:@"\n"];
  if ([defaultManager fileExistsAtPath:{objc_msgSend(objc_msgSend(uRLByDeletingLastPathComponent, "standardizedURL"), "path")}])
  {
    v29 = [defaultManager contentsOfDirectoryAtPath:objc_msgSend(objc_msgSend(uRLByDeletingLastPathComponent error:{"standardizedURL"), "path"), &v55}];
  }

  else
  {
    v29 = MEMORY[0x277CBEBF8];
  }

  [v3 appendFormat:@"Cache Files: %u\n", objc_msgSend(v29, "count")];
  if (v55)
  {
    [v3 appendFormat:@"%@\n", v55];
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v35 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v36;
      do
      {
        v33 = 0;
        do
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [v3 appendFormat:@"    %@\n", *(*(&v35 + 1) + 8 * v33++)];
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v35 objects:v56 count:16];
      }

      while (v31);
    }
  }

  [v3 appendString:@"\n"];
  return v3;
}

uint64_t __62__APBonjourCacheHomeKit_Introspector__copyDescriptionInternal__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectForKeyedSubscript:@"lastSeen"];
  v5 = [a3 objectForKeyedSubscript:@"lastSeen"];
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)copyDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  internalQueue = [(APBonjourCacheHomeKit *)self internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__APBonjourCacheHomeKit_Introspector__copyDescription__block_invoke;
  v6[3] = &unk_278BC6D48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__54__APBonjourCacheHomeKit_Introspector__copyDescription__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) copyDescriptionInternal];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setupIntrospector
{
  APSIntrospectorAddCommand();
  APSIntrospectorAddCommand();
  APSIntrospectorAddCommand();

  APSIntrospectorAddCommand();
}

- (void)invalidateInternal
{
  if (![(APBonjourCacheHomeKit *)self invalidated])
  {
    [(APBonjourCacheHomeKit *)self setCachedDeviceFoundHandler:0];
    [(APBonjourCacheHomeKit *)self setCachedDeviceLostHandler:0];
    [(CUSystemMonitor *)[(APBonjourCacheHomeKit *)self systemMonitor] invalidate];
    [(APHomeKitDeviceMonitor *)[(APBonjourCacheHomeKit *)self homeKitDeviceMonitor] invalidate];
    [(CUCoalescer *)[(APBonjourCacheHomeKit *)self diskWriteCoalescer] invalidate];
    if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBonjourCacheHomeKit)))
    {
      OUTLINED_FUNCTION_3_1();
      LogPrintF(v3, v4, v5, v6, self);
    }
  }

  [(APBonjourCacheHomeKit *)self setInvalidated:1];
}

- (void)realDeviceFoundInternal:(id)internal
{
  OUTLINED_FUNCTION_6_2();
  if ([v5 invalidated])
  {
    goto LABEL_19;
  }

  [v4 deviceInfo];
  if (![OUTLINED_FUNCTION_2_2() isDeviceCacheable:?])
  {
    return;
  }

  [v4 deviceInfo];
  v6 = [OUTLINED_FUNCTION_2_2() prepareDeviceInfo:?];
  if (!v6)
  {
LABEL_19:

    APSLogErrorAt();
  }

  else
  {
    v7 = v6;
    v8 = [APBonjourCacheHomeKit getDeviceID:v6];
    if (gLogCategory_APBonjourCacheHomeKit <= 40 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit realDeviceFoundInternal:]", 33554472, "[%{ptr}] Real device found for cacheable device: %@", v3, v8);
    }

    v9 = +[APBonjourCacheHomeKitItem itemWithDeviceInfo:userInfo:](APBonjourCacheHomeKitItem, "itemWithDeviceInfo:userInfo:", v7, [v4 userInfo]);
    if ([v3 activatedPresentDeviceStashing])
    {
      [objc_msgSend(v3 "presentRealDevices")];
    }

    if ([objc_msgSend(v3 "cachedDevices")])
    {
      v10 = OUTLINED_FUNCTION_4_3();

      [v10 handleRealDeviceFoundForCachedDevice:?];
    }

    else if ([OUTLINED_FUNCTION_9_1() shouldProcessDeviceForCache:?])
    {
      v11 = OUTLINED_FUNCTION_4_3();

      [v11 cacheDevice:?];
    }
  }
}

- (void)realDeviceLostInternal:(id)internal
{
  v5 = [APBonjourCacheHomeKit getDeviceID:?];
  if ([(APBonjourCacheHomeKit *)self invalidated]|| !v5)
  {

    APSLogErrorAt();
  }

  else if ([APBonjourCacheHomeKit isDeviceCacheable:internal])
  {
    if ([(APBonjourCacheHomeKit *)self activatedPresentDeviceStashing])
    {
      [(NSMutableDictionary *)[(APBonjourCacheHomeKit *)self presentRealDevices] setObject:0 forKeyedSubscript:v5];
    }

    if (gLogCategory_APBonjourCacheHomeKit <= 40 && (gLogCategory_APBonjourCacheHomeKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit realDeviceLostInternal:]", 33554472, "[%{ptr}] Real device lost: %@", self, v5);
    }

    if ([(APBonjourCacheHomeKit *)self shouldProcessDeviceForCache:v5]&& [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v5])
    {

      [(APBonjourCacheHomeKit *)self handleRealDeviceLostForCachedDevice:internal];
    }
  }
}

- (void)forceReportCachedDevicesFound
{
  if ([(APBonjourCacheHomeKit *)self cachedDeviceFoundHandler])
  {
    getReportableCachedDevices = [(APBonjourCacheHomeKit *)self getReportableCachedDevices];
    OUTLINED_FUNCTION_10_2();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(getReportableCachedDevices);
          }

          OUTLINED_FUNCTION_8_2();
          if (v12 ^ v13 | v11 && (v10 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBonjourCacheHomeKit)))
          {
            v17 = [APBonjourCacheHomeKit getDeviceID:v2];
            OUTLINED_FUNCTION_3_1();
            LogPrintF(v14, v15, v16, "[%{ptr}] Force reporting cached device found %@", self, v17);
          }

          [(APBonjourCacheHomeKit *)self reportCachedDevice:v2 found:1 withHandler:[(APBonjourCacheHomeKit *)self cachedDeviceFoundHandler]];
        }

        OUTLINED_FUNCTION_10_2();
        v7 = [getReportableCachedDevices countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }
  }
}

- (void)forceReportCachedDevicesLost
{
  if ([(APBonjourCacheHomeKit *)self cachedDeviceLostHandler])
  {
    v4 = objc_alloc(MEMORY[0x277CBEB98]);
    [OUTLINED_FUNCTION_5_2() reportedCachedDeviceIDs];
    v5 = [OUTLINED_FUNCTION_2_2() initWithSet:?];
    v18 = 0u;
    OUTLINED_FUNCTION_10_2();
    v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(v5);
          }

          OUTLINED_FUNCTION_8_2();
          if (v13 ^ v14 | v12 && (v11 != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBonjourCacheHomeKit)))
          {
            OUTLINED_FUNCTION_3_1();
            LogPrintF(v15, v16, v17, "[%{ptr}] Force reporting cached device lost %@", self, v2, v18);
          }

          v2 = [(NSDictionary *)[(APBonjourCacheHomeKit *)self cachedDevices] objectForKeyedSubscript:v2];
          [(APBonjourCacheHomeKit *)self reportCachedDevice:v2 found:0 withHandler:[(APBonjourCacheHomeKit *)self cachedDeviceLostHandler]];
        }

        OUTLINED_FUNCTION_10_2();
        v8 = [v5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }
}

- (void)reportCachedDevice:(id)device found:(BOOL)found withHandler:(id)handler
{
  foundCopy = found;
  v9 = [APBonjourCacheHomeKit getDeviceID:?];
  if (v9)
  {
    v10 = v9;
    reportedCachedDeviceIDs = [(APBonjourCacheHomeKit *)self reportedCachedDeviceIDs];
    if (foundCopy)
    {
      [(NSMutableSet *)reportedCachedDeviceIDs addObject:v10];
      if (!handler)
      {
        return;
      }
    }

    else
    {
      [(NSMutableSet *)reportedCachedDeviceIDs removeObject:v10];
      if (!handler)
      {
        return;
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary addEntriesFromDictionary:device];
      [dictionary setObject:objc_msgSend(dictionary forKeyedSubscript:{"objectForKeyedSubscript:", @"services", @"removedServices"}];
      [dictionary removeObjectForKey:@"services"];
      [dictionary removeObjectForKey:@"cached"];
      device = dictionary;
    }

    dispatchQueue = [(APBonjourCacheHomeKit *)self dispatchQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__APBonjourCacheHomeKit_reportCachedDevice_found_withHandler___block_invoke;
    v14[3] = &unk_278BC7268;
    v14[4] = device;
    v14[5] = handler;
    dispatch_async(dispatchQueue, v14);
  }

  else
  {

    APSLogErrorAt();
  }
}

- (void)handleNetworkSignatureChanged:(id)changed
{
  if ([(APBonjourCacheHomeKit *)self invalidated])
  {

    APSLogErrorAt();
  }

  else
  {
    [(APBonjourCacheHomeKit *)self currentNetworkSignature];
    if (([OUTLINED_FUNCTION_2_2() isEqualToString:?] & 1) == 0)
    {
      if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBonjourCacheHomeKit)))
      {
        currentNetworkSignature = [(APBonjourCacheHomeKit *)self currentNetworkSignature];
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v5, v6, v7, v8, self, currentNetworkSignature, changed);
      }

      if ([(APBonjourCacheHomeKit *)self currentNetworkSignature])
      {
        [(APBonjourCacheHomeKit *)self checkAndEvictCachedDevicesIfNecessary];
        [(APBonjourCacheHomeKit *)self writeCache];
      }

      [(APBonjourCacheHomeKit *)self forceReportCachedDevicesLost];
      if ([OUTLINED_FUNCTION_9_1() isValidNetworkSignature:?])
      {
        changedCopy = changed;
      }

      else
      {
        changedCopy = 0;
      }

      [(APBonjourCacheHomeKit *)self setCurrentNetworkSignature:changedCopy];
      [(APBonjourCacheHomeKit *)self loadCache];

      [(APBonjourCacheHomeKit *)self forceReportCachedDevicesFound];
    }
  }
}

- (void)handleHomeKitDeviceConfigurationChanged:(id)changed
{
  v57 = *MEMORY[0x277D85DE8];
  if (![(APBonjourCacheHomeKit *)self invalidated])
  {
    [(APBonjourCacheHomeKit *)self expectedDeviceIDs];
    if ([OUTLINED_FUNCTION_2_2() isEqual:?])
    {
      return;
    }

    v5 = gLogCategory_APBonjourCacheHomeKit;
    if (gLogCategory_APBonjourCacheHomeKit > 50)
    {
      goto LABEL_13;
    }

    if (gLogCategory_APBonjourCacheHomeKit == -1)
    {
      if (!OUTLINED_FUNCTION_8(&gLogCategory_APBonjourCacheHomeKit))
      {
LABEL_13:
        array = [MEMORY[0x277CBEB18] array];
        array2 = [MEMORY[0x277CBEB18] array];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v20 = OUTLINED_FUNCTION_11_2(array2, v13, v14, v15, v16, v17, v18, v19, v39, v41, v43, v46, v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1));
        if (v20)
        {
          v21 = v20;
          v22 = *v53;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v53 != v22)
              {
                objc_enumerationMutation(changed);
              }

              v24 = *(*(&v52 + 1) + 8 * i);
              v25 = [(NSMutableSet *)[(APBonjourCacheHomeKit *)self expectedDeviceIDs] containsObject:v24];
              if ((v25 & 1) == 0)
              {
                v25 = [array addObject:v24];
              }
            }

            v21 = OUTLINED_FUNCTION_11_2(v25, v26, v27, v28, v29, v30, v31, v32, v40, v42, v45, v47, v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1));
          }

          while (v21);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        expectedDeviceIDs = [(APBonjourCacheHomeKit *)self expectedDeviceIDs];
        v34 = [(NSMutableSet *)expectedDeviceIDs countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v49;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v49 != v36)
              {
                objc_enumerationMutation(expectedDeviceIDs);
              }

              v38 = *(*(&v48 + 1) + 8 * j);
              if (([changed containsObject:v38] & 1) == 0)
              {
                [array2 addObject:v38];
              }
            }

            v35 = [(NSMutableSet *)expectedDeviceIDs countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v35);
        }

        [OUTLINED_FUNCTION_4_3() updateExpectedDeviceIDsAdding:? removing:?];
        return;
      }

      v5 = gLogCategory_APBonjourCacheHomeKit;
    }

    if (v5 > 30)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 == -1 && _LogCategory_Initialize() == 0;
    }

    expectedDeviceIDs2 = [(APBonjourCacheHomeKit *)self expectedDeviceIDs];
    OUTLINED_FUNCTION_3_1();
    LogPrintF(v7, v8, v9, v10, self, v6, expectedDeviceIDs2, changed);
    goto LABEL_13;
  }

  APSLogErrorAt();
}

- (BOOL)canCacheDevice:(id)device
{
  OUTLINED_FUNCTION_6_2();
  [v5 deviceInfo];
  [OUTLINED_FUNCTION_2_2() getDeviceID:?];
  cache = [OUTLINED_FUNCTION_5_2() cache];
  if (cache)
  {
    cache = [objc_msgSend(objc_msgSend(v4 "deviceInfo")];
    if (cache)
    {
      v7 = [objc_msgSend(v3 "cachedDevices")];
      v8 = [objc_msgSend(v4 "userInfo")];
      if (v8)
      {
        v9 = v8;
        if ([v8 isEqualToString:{objc_msgSend(v3, "currentNetworkSignature")}])
        {
          LOBYTE(cache) = 1;
          return cache;
        }

        if (gLogCategory_APBonjourCacheHomeKit > 30)
        {
LABEL_15:
          LOBYTE(cache) = 0;
          return cache;
        }

        if (gLogCategory_APBonjourCacheHomeKit != -1 || (LODWORD(cache) = _LogCategory_Initialize(), cache))
        {
          LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "-[APBonjourCacheHomeKit canCacheDevice:]", 33554462, "[%{ptr}] Device %@ network signature: %'@ does not match current network signature: %'@", v3, APBonjourCacheHomeKit, v9, [v3 currentNetworkSignature]);
          goto LABEL_15;
        }
      }

      else
      {
        requireDeviceNetworkSignature = [v3 requireDeviceNetworkSignature];
        LOBYTE(cache) = 1;
        if (requireDeviceNetworkSignature && !v7)
        {
          if (gLogCategory_APBonjourCacheHomeKit > 30)
          {
            goto LABEL_15;
          }

          if (gLogCategory_APBonjourCacheHomeKit != -1 || (LODWORD(cache) = _LogCategory_Initialize(), cache))
          {
            LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit canCacheDevice:]", 33554462, "[%{ptr}] Device %@ missing required network signature for new entry", v3, APBonjourCacheHomeKit);
            goto LABEL_15;
          }
        }
      }
    }
  }

  return cache;
}

- (BOOL)cacheDevice:(id)device
{
  OUTLINED_FUNCTION_6_2();
  [v5 deviceInfo];
  v6 = [OUTLINED_FUNCTION_2_2() getDeviceID:?];
  if (!v6)
  {
    APSLogErrorAt();
LABEL_25:
    v13 = 0;
    goto LABEL_22;
  }

  if (![OUTLINED_FUNCTION_4_3() canCacheDevice:?])
  {
    LOBYTE(v6) = 0;
    goto LABEL_25;
  }

  v7 = [objc_msgSend(v3 "cachedDevices")];
  if (v7)
  {
    v8 = 30;
  }

  else
  {
    v8 = 50;
  }

  v9 = gLogCategory_APBonjourCacheHomeKit;
  if (v8 < gLogCategory_APBonjourCacheHomeKit)
  {
    goto LABEL_19;
  }

  v10 = v7;
  if (gLogCategory_APBonjourCacheHomeKit != -1)
  {
    goto LABEL_8;
  }

  if (_LogCategory_Initialize())
  {
    v9 = gLogCategory_APBonjourCacheHomeKit;
LABEL_8:
    if (v10)
    {
      v11 = "Updating";
    }

    else
    {
      v11 = "Adding";
    }

    if (v9 > 30)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_APBonjourCacheHomeKit, "-[APBonjourCacheHomeKit cacheDevice:]", v8 | 0x2000000u, "[%{ptr}] %s device %@ to cache%?{end}: %@", v3, v11, v6, v12, [v4 deviceInfo]);
  }

LABEL_19:
  v13 = [objc_msgSend(v4 "deviceInfo")];
  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cached"];
  [objc_msgSend(objc_msgSend(v3 "cache")];
  [objc_msgSend(v3 "diskWriteCoalescer")];
  if ([v3 activatedPresentDeviceStashing])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    [v3 cachedDeviceFoundHandler];
    LOBYTE(v6) = 1;
    [OUTLINED_FUNCTION_4_3() reportCachedDevice:? found:? withHandler:?];
  }

LABEL_22:

  return v6;
}

- (BOOL)uncacheDevice:(id)device
{
  OUTLINED_FUNCTION_6_2();
  if ([APBonjourCacheHomeKit getDeviceID:?])
  {
    cache = [OUTLINED_FUNCTION_5_2() cache];
    if (cache)
    {
      cache = [objc_msgSend(v3 "cachedDevices")];
      if (cache)
      {
        v6 = gLogCategory_APBonjourCacheHomeKit;
        if (gLogCategory_APBonjourCacheHomeKit <= 50)
        {
          if (gLogCategory_APBonjourCacheHomeKit != -1)
          {
LABEL_6:
            if (v6 > 30)
            {
              v7 = 1;
            }

            else
            {
              v7 = v6 == -1 && _LogCategory_Initialize() == 0;
            }

            v13 = v7;
            OUTLINED_FUNCTION_3_1();
            LogPrintF(v8, v9, v10, v11, v3, v4, v13);
            goto LABEL_14;
          }

          if (OUTLINED_FUNCTION_8(&gLogCategory_APBonjourCacheHomeKit))
          {
            v6 = gLogCategory_APBonjourCacheHomeKit;
            goto LABEL_6;
          }
        }

LABEL_14:
        [objc_msgSend(objc_msgSend(v3 "cache")];
        [objc_msgSend(v3 "diskWriteCoalescer")];
        LOBYTE(cache) = 1;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    LOBYTE(cache) = 0;
  }

  return cache;
}

- (void)evictCachedDeviceWithIDInternal:(id)internal
{
  if (internal)
  {
    OUTLINED_FUNCTION_6_2();
    if ([objc_msgSend(v5 "cachedDevices")])
    {
      if (gLogCategory_APBonjourCacheHomeKit <= 50 && (gLogCategory_APBonjourCacheHomeKit != -1 || OUTLINED_FUNCTION_8(&gLogCategory_APBonjourCacheHomeKit)))
      {
        OUTLINED_FUNCTION_3_1();
        LogPrintF(v6, v7, v8, v9);
      }

      [v3 cachedDeviceLostHandler];
      [OUTLINED_FUNCTION_9_1() reportCachedDevice:? found:? withHandler:?];
      v10 = OUTLINED_FUNCTION_9_1();

      [v10 uncacheDevice:?];
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

+ (id)getDeviceID:(id)d
{
  result = BonjourDevice_CopyCFString();
  if (result)
  {
    [MEMORY[0x277CCACA8] stringWithString:result];
    v5 = OUTLINED_FUNCTION_5_2();
    CFRelease(v5);
    return v3;
  }

  return result;
}

- (uint64_t)setupEvictionPolicies
{
  if (*self)
  {
    v4 = "default value";
  }

  else
  {
    v4 = "user preference";
  }

  [a2 timeToLiveSeconds];
  v11 = v5;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v6, v7, v8, v9, a3, v4, v11);
}

- (uint64_t)activateWithCompletionInternal:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 activatedPresentDeviceStashing];
  v3 = "no";
  if (v2)
  {
    v3 = "yes";
  }

  v9 = v3;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v4, v5, v6, v7, a1, v9);
}

- (void)getCacheDirectoryURLWithParentDirectory:(uint64_t)a3 creatingIfNecessary:(uint64_t)a4 .cold.1(void **result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 90)
  {
    if (gLogCategory_APBonjourCacheHomeKit == -1)
    {
      v8 = result;
      result = OUTLINED_FUNCTION_9_0(&gLogCategory_APBonjourCacheHomeKit);
      if (!result)
      {
        goto LABEL_5;
      }

      a2 = *v8;
    }

    [a2 code];
    result = OUTLINED_FUNCTION_15(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit getCacheDirectoryURLWithParentDirectory:creatingIfNecessary:]", v7, "[%{ptr}] Failed to create cache directory: %ld");
  }

LABEL_5:
  *a5 = a4;
  return result;
}

- (id)getCacheDirectoryURLWithParentDirectory:(void *)a3 creatingIfNecessary:.cold.3(id *result, uint64_t a2, void *a3)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 90)
  {
    v4 = result;
    if (gLogCategory_APBonjourCacheHomeKit != -1 || (result = OUTLINED_FUNCTION_9_0(&gLogCategory_APBonjourCacheHomeKit), result))
    {
      [*v4 code];
      result = OUTLINED_FUNCTION_15(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit getCacheDirectoryURLWithParentDirectory:creatingIfNecessary:]", v5, "[%{ptr}] Failed to retrieve Caches directory: %ld");
    }
  }

  *a3 = 0;
  return result;
}

- (uint64_t)getCacheFileURLCreatingParentDirectoriesIfNecessary:(uint64_t)a3 .cold.2(uint64_t a1, void *a2, uint64_t a3)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 90)
  {
    if (gLogCategory_APBonjourCacheHomeKit != -1 || (result = OUTLINED_FUNCTION_9_0(&gLogCategory_APBonjourCacheHomeKit), result))
    {
      result = OUTLINED_FUNCTION_15(&gLogCategory_APBonjourCacheHomeKit, "[APBonjourCacheHomeKit getCacheFileURLCreatingParentDirectoriesIfNecessary:]", a3, "[%{ptr}] Failed to find cache. Cache directory not found");
    }
  }

  *a2 = 0;
  return result;
}

- (uint64_t)getCacheFileURLCreatingParentDirectoriesIfNecessary:(uint64_t)result .cold.3(uint64_t result, void *a2)
{
  if (gLogCategory_APBonjourCacheHomeKit <= 50)
  {
    v3 = result;
    if (gLogCategory_APBonjourCacheHomeKit != -1 || (result = OUTLINED_FUNCTION_8(&gLogCategory_APBonjourCacheHomeKit), result))
    {
      OUTLINED_FUNCTION_3_1();
      result = LogPrintF(v4, v5, v6, v7, v3);
    }
  }

  *a2 = 0;
  return result;
}

- (uint64_t)checkAndEvictCachedDevicesIfNecessary
{
  v5 = objc_opt_class();
  v11 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_3_1();
  return LogPrintF(v6, v7, v8, v9, a2, v11, a3);
}

@end