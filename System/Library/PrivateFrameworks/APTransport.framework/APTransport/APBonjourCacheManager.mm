@interface APBonjourCacheManager
- (APBonjourCacheManager)init;
- (BOOL)_writeCachedItems:(id)items;
- (BOOL)deviceLost:(id)lost;
- (id)_getCacheDirectoryURLCreateIfNecessary:(BOOL)necessary error:(id *)error;
- (id)_getCacheFileURLCreateIfNecessary:(BOOL)necessary error:(id *)error;
- (id)_readCachedItems;
- (int)_migrateCacheDirectoryIfNecessary;
- (void)_activateWithCompletion:(id)completion;
- (void)_addDeviceToCache:(id)cache pairedPeerInfo:(id)info event:(int64_t)event;
- (void)_auditCachesIfNecessary:(id)necessary event:(int64_t)event;
- (void)_cancelRetryGetPairedPeers;
- (void)_deviceFound:(id)found altPairedInfo:(id)info recheck:(BOOL)recheck event:(int64_t)event;
- (void)_ensureKnownNetworkProfileMonitoringStarted;
- (void)_flushCachedItems;
- (void)_handleKnownNetworkProfileUpdate:(BOOL)update;
- (void)_invalidate;
- (void)_invalidated;
- (void)_migrateCacheDirectoryIfNecessary;
- (void)_networkSignatureChanged;
- (void)_pairedPeersChanged;
- (void)_recheckDevices:(int64_t)devices;
- (void)_refreshCachedItems;
- (void)_refreshOrRemoveCachedItem:(id)item;
- (void)_removeIfDuplicatesFoundOrIfNoLongerCacheable:(unint64_t)cacheable identifier:(id)identifier serialNumber:(id)number manufacturer:(id)manufacturer isCacheable:(BOOL)isCacheable;
- (void)_replaceIfnameFromDNSString:(id)string;
- (void)_reportCachedItemLost:(id)lost event:(int64_t)event;
- (void)_reportCachedItemsFound:(int64_t)found;
- (void)_reportCachedItemsLost:(int64_t)lost;
- (void)_sanitizeDNSStrings:(id)strings;
- (void)_startRetryGetPairedPeersTimer;
- (void)_updateCachedDeviceInfoWhenRealDeviceIsFound:(id)found event:(int64_t)event;
- (void)_updateLastSeenTimestamp:(id)timestamp;
- (void)activateWithCompletion:(id)completion;
- (void)cacheHKPeerIfNeeded:(id)needed pairedPeerInfo:(id)info;
- (void)dealloc;
- (void)forceReportCachedDevices;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation APBonjourCacheManager

- (void)forceReportCachedDevices
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__APBonjourCacheManager_forceReportCachedDevices__block_invoke;
  block[3] = &unk_278BC8D38;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__49__APBonjourCacheManager_forceReportCachedDevices__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[13];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[APBonjourCacheManager forceReportCachedDevices]_block_invoke", 30, "ForceReporting cached devices\n");
      result = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    result = *(a1 + 32);
    if (v4)
    {
      v3 = result[13];
      goto LABEL_3;
    }
  }

LABEL_5:
  if (result[12])
  {

    return [result _reportCachedItemsFound:5];
  }

  return result;
}

- (APBonjourCacheManager)init
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  *label = 0u;
  v13 = 0u;
  v11.receiver = self;
  v11.super_class = APBonjourCacheManager;
  v2 = [(APBonjourCacheManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_pairedPeersChangedToken = -1;
    v3->_ucat = &gLogCategory_APBonjourCache;
    SNPrintF(label, 64, "APBonjourCache.corewifi.%{ptr}", v3);
    v4 = dispatch_queue_create(label, 0);
    coreWiFiQueue = v3->_coreWiFiQueue;
    v3->_coreWiFiQueue = v4;

    if (v3->_coreWiFiQueue)
    {
      v6 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:2];
      coreWiFiInterface = v3->_coreWiFiInterface;
      v3->_coreWiFiInterface = v6;

      v8 = v3->_coreWiFiInterface;
      if (v8)
      {
        [(CWFInterface *)v8 activate];
        v3->_auditCaches = APSSettingsGetInt64() != 0;
        [(APBonjourCacheManager *)v3 _migrateCacheDirectoryIfNecessary];
        return v3;
      }

      v10 = 117;
    }

    else
    {
      v10 = 114;
    }

    [(APBonjourCacheManager *)v10 init];
    return 0;
  }

  return v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = APBonjourCacheManager;
  [(APBonjourCacheManager *)&v4 dealloc];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_281309A28;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__APBonjourCacheManager_activateWithCompletion___block_invoke;
  v7[3] = &unk_278BC8D10;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(APBonjourCacheManager *)self _ensureKnownNetworkProfileMonitoringStarted];
  if (!self->_systemMonitor)
  {
    v5 = objc_alloc_init(MEMORY[0x277D02938]);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v5;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__APBonjourCacheManager__activateWithCompletion___block_invoke;
    v14[3] = &unk_278BC8D38;
    v14[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setPrimaryNetworkChangedHandler:v14];
    v7 = self->_systemMonitor;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__APBonjourCacheManager__activateWithCompletion___block_invoke_2;
    v13[3] = &unk_278BC8D38;
    v13[4] = self;
    [(CUSystemMonitor *)v7 activateWithCompletion:v13];
  }

  if (self->_pairedPeersChangedToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__APBonjourCacheManager__activateWithCompletion___block_invoke_3;
    handler[3] = &unk_278BC8D60;
    handler[4] = self;
    notify_register_dispatch("com.apple.pairing.peerChanged", &self->_pairedPeersChangedToken, dispatchQueue, handler);
    [(APBonjourCacheManager *)self _pairedPeersChanged];
  }

  if (!self->_writeCoaleser)
  {
    v9 = objc_alloc_init(MEMORY[0x277D02850]);
    writeCoaleser = self->_writeCoaleser;
    self->_writeCoaleser = v9;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__APBonjourCacheManager__activateWithCompletion___block_invoke_4;
    v11[3] = &unk_278BC8D38;
    v11[4] = self;
    [(CUCoalescer *)self->_writeCoaleser setActionHandler:v11];
    [(CUCoalescer *)self->_writeCoaleser setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_writeCoaleser setMinDelay:5.0];
    [(CUCoalescer *)self->_writeCoaleser setMaxDelay:300.0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

_DWORD *__49__APBonjourCacheManager__activateWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[10] == -1)
  {
    return result;
  }

  v3 = *(result + 13);
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }

      v3 = *(result + 13);
    }

    LogPrintF(v3, "[APBonjourCacheManager _activateWithCompletion:]_block_invoke_3", 30, "Paired peers changed\n");
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _pairedPeersChanged];
}

- (void)_ensureKnownNetworkProfileMonitoringStarted
{
  objc_initWeak(&location, self);
  if (!self->_isMonitoringKnownNetworkProfile)
  {
    self->_isMonitoringKnownNetworkProfile = 1;
    coreWiFiQueue = self->_coreWiFiQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke;
    v4[3] = &unk_278BC8E00;
    objc_copyWeak(&v5, &location);
    dispatch_async(coreWiFiQueue, v4);
    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&location);
}

void __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[14];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_2;
    v15[3] = &unk_278BC8DB0;
    objc_copyWeak(&v16, (a1 + 32));
    [v4 setEventHandler:v15];
    v5 = *(v3 + 14);
    v14 = 0;
    [v5 startMonitoringEventType:30 error:&v14];
    v6 = v14;
    v7 = [*(v3 + 14) currentKnownNetworkProfile];
    LOBYTE(v4) = [v7 isPublicAirPlayNetwork];

    v8 = *(v3 + 17);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_4;
    block[3] = &unk_278BC8DD8;
    v9 = v6;
    v11 = v9;
    v12 = v3;
    v13 = v4;
    dispatch_sync(v8, block);

    objc_destroyWeak(&v16);
  }

  else
  {
    v9 = 0;
  }
}

void __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 type] == 30)
  {
    v5 = [*(WeakRetained + 14) currentKnownNetworkProfile];
    v6 = [v5 isPublicAirPlayNetwork];

    v7 = *(WeakRetained + 17);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_3;
    v8[3] = &unk_278BC8D88;
    v9 = WeakRetained;
    v10 = v6;
    dispatch_sync(v7, v8);
  }
}

uint64_t __68__APBonjourCacheManager__ensureKnownNetworkProfileMonitoringStarted__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *(*(a1 + 40) + 128) = 0;
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = 90;
  }

  else
  {
    v3 = 30;
  }

  v4 = *(a1 + 40);
  v5 = v4[13];
  if (v3 >= *v5)
  {
    if (*v5 == -1)
    {
      v8 = _LogCategory_Initialize();
      v4 = *(a1 + 40);
      if (!v8)
      {
        goto LABEL_16;
      }

      v5 = v4[13];
      v2 = *(a1 + 32);
    }

    if (v2)
    {
      v6 = 90;
    }

    else
    {
      v6 = 30;
    }

    v7 = "Failed to start";
    if (!v2)
    {
      v7 = "Started";
    }

    LogPrintF(v5, "[APBonjourCacheManager _ensureKnownNetworkProfileMonitoringStarted]_block_invoke_4", v6, "%s monitoring known network profile%?{end}: %@", v7, v2 == 0, v2);
    v4 = *(a1 + 40);
  }

LABEL_16:
  v9 = *(a1 + 48);

  return [v4 _handleKnownNetworkProfileUpdate:v9];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APBonjourCacheManager_invalidate__block_invoke;
  block[3] = &unk_278BC8D38;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v15 = v3;
  v16 = v2;
  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[APBonjourCacheManager _invalidate]", 30, "Invalidate\n", v3, v16);
  }

LABEL_6:
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v8 = retryTimer;
    dispatch_source_cancel(v8);
    v9 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  if (self->_cacheChanged)
  {
    [(APBonjourCacheManager *)self _flushCachedItems];
    self->_cacheChanged = 0;
  }

  pairedPeersChangedToken = self->_pairedPeersChangedToken;
  if (pairedPeersChangedToken != -1)
  {
    notify_cancel(pairedPeersChangedToken);
    self->_pairedPeersChangedToken = -1;
  }

  [(CUCoalescer *)self->_writeCoaleser invalidate:v15];
  writeCoaleser = self->_writeCoaleser;
  self->_writeCoaleser = 0;

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  [(CWFInterface *)self->_coreWiFiInterface invalidate];
  coreWiFiInterface = self->_coreWiFiInterface;
  self->_coreWiFiInterface = 0;

  coreWiFiQueue = self->_coreWiFiQueue;
  if (coreWiFiQueue)
  {
    self->_coreWiFiQueue = 0;
  }

  [(APBonjourCacheManager *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
      v4 = self->_invalidationHandler;
    }

    else
    {
      v4 = 0;
    }

    self->_invalidationHandler = 0;

    reportDeviceFoundHandler = self->_reportDeviceFoundHandler;
    self->_reportDeviceFoundHandler = 0;

    reportDeviceLostHandler = self->_reportDeviceLostHandler;
    self->_reportDeviceLostHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[APBonjourCacheManager _invalidated]", 30, "Invalidated\n");
    }
  }
}

- (void)_deviceFound:(id)found altPairedInfo:(id)info recheck:(BOOL)recheck event:(int64_t)event
{
  recheckCopy = recheck;
  foundCopy = found;
  infoCopy = info;
  DeviceID = BonjourDevice_GetDeviceID();
  v13 = [foundCopy objectForKeyedSubscript:@"name"];
  v14 = BonjourDevice_CopyCFString();
  if (v14)
  {
    v15 = v14;
    v16 = APSFeaturesCreateFromStringRepresentation();
  }

  else
  {
    BonjourDevice_GetInt64();
    v16 = APSFeaturesCreateFromLegacyFlags();
    APSFeaturesCopyStringRepresentation();
    v15 = 0;
  }

  if (APSFeaturesHasFeature())
  {
    v17 = APSFeaturesHasFeature() != 0;
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = 0;
  if (v16)
  {
LABEL_6:
    CFRelease(v16);
  }

LABEL_7:
  v18 = BonjourDevice_CopyCFString();
  if (v18)
  {
    eventCopy = event;
    if (recheckCopy || !v17)
    {
      goto LABEL_14;
    }

    v19 = DeviceID;
    v20 = infoCopy;
    primaryNetworkSignature = [(CUSystemMonitor *)self->_systemMonitor primaryNetworkSignature];

    if (primaryNetworkSignature)
    {
      deviceMap = self->_deviceMap;
      if (!deviceMap)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v24 = self->_deviceMap;
        self->_deviceMap = v23;

        deviceMap = self->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:foundCopy forKeyedSubscript:v18];
      infoCopy = v20;
      DeviceID = v19;
LABEL_14:
      v25 = BonjourDevice_CopyCFString();
      v53 = BonjourDevice_CopyCFString();
      [APBonjourCacheManager _removeIfDuplicatesFoundOrIfNoLongerCacheable:"_removeIfDuplicatesFoundOrIfNoLongerCacheable:identifier:serialNumber:manufacturer:isCacheable:" identifier:DeviceID serialNumber:v18 manufacturer:v25 isCacheable:?];
      if (v17)
      {
        v49 = recheckCopy;
        v50 = v25;
        v26 = [(NSMutableDictionary *)self->_pairedPeersMap objectForKeyedSubscript:v18];
        if (!v26)
        {
          v26 = infoCopy;
        }

        v27 = DeviceID;
        v28 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v18];
        v51 = v28;
        if (v28)
        {
          [v28 objectForKeyedSubscript:@"HKPeer"];
          v29 = v13;
          v31 = v30 = infoCopy;
          v32 = CFGetInt64() == 0;

          infoCopy = v30;
          v13 = v29;
        }

        else
        {
          v32 = 1;
        }

        v37 = (BonjourDevice_GetInt64() & 0x400) == 0 || v32;
        v38 = v26;
        if (!v26 && v37)
        {
          ucat = self->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 != -1)
            {
LABEL_38:
              v40 = "";
              if (v49)
              {
                v40 = "(recheck)";
              }

              LogPrintF(ucat, "[APBonjourCacheManager _deviceFound:altPairedInfo:recheck:event:]", 30, "Ignoring device found unpaired: %llu, '%@' %s\n", v27, v13, v40);
              goto LABEL_80;
            }

            if (_LogCategory_Initialize())
            {
              ucat = self->_ucat;
              goto LABEL_38;
            }
          }

          goto LABEL_80;
        }

        if (v51)
        {
          [(APBonjourCacheManager *)self _updateCachedDeviceInfoWhenRealDeviceIsFound:foundCopy event:eventCopy];
          goto LABEL_80;
        }

        v41 = CFAbsoluteTimeGetCurrent() - self->_networkSignatureWasValidAt;
        if (v41 < 10.0)
        {
          v42 = self->_ucat;
          if (v42->var0 <= 30)
          {
            if (v42->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_80;
              }

              v42 = self->_ucat;
            }

            v43 = "";
            if (v49)
            {
              v43 = "(recheck)";
            }

            LogPrintF(v42, "[APBonjourCacheManager _deviceFound:altPairedInfo:recheck:event:]", 30, "Ignoring add device found too soon after signature change: %llu, '%@' %s Seconds %.3f\n", v27, v13, v43, *&v41);
          }

LABEL_80:

          v25 = v50;
          goto LABEL_81;
        }

        if (!v26)
        {
          v46 = self->_ucat;
          if (v46->var0 <= 30)
          {
            if (v46->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_80;
              }

              v46 = self->_ucat;
            }

            v47 = "";
            if (v49)
            {
              v47 = "(recheck)";
            }

            LogPrintF(v46, "[APBonjourCacheManager _deviceFound:altPairedInfo:recheck:event:]", 30, "Ignoring add for unpaired device: %llu, '%@' %s\n", v27, v13, v47);
            goto LABEL_80;
          }

          goto LABEL_80;
        }

        [(APBonjourCacheManager *)self _auditCachesIfNecessary:foundCopy event:eventCopy];
        v44 = self->_ucat;
        var0 = v44->var0;
        if (self->_isPublicAirPlayNetwork)
        {
          v38 = v26;
          if (var0 <= 30)
          {
            if (var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_80;
              }

              v44 = self->_ucat;
            }

            LogPrintF(v44, "[APBonjourCacheManager _deviceFound:altPairedInfo:recheck:event:]", 30, "Ignoring device found on public AirPlay network: %llu, '%@'", v27, v13);
          }

          goto LABEL_80;
        }

        if (var0 <= 30)
        {
          if (var0 != -1)
          {
LABEL_69:
            v48 = "";
            if (v49)
            {
              v48 = "(recheck)";
            }

            LogPrintF(v44, "[APBonjourCacheManager _deviceFound:altPairedInfo:recheck:event:]", 30, "Cache device add: %llu, '%@' Network Signature: %@ %s\n", v27, v13, self->_networkSignature, v48);
            goto LABEL_79;
          }

          if (_LogCategory_Initialize())
          {
            v44 = self->_ucat;
            goto LABEL_69;
          }
        }

LABEL_79:
        v38 = v26;
        [(APBonjourCacheManager *)self _addDeviceToCache:foundCopy pairedPeerInfo:v26 event:eventCopy];
        goto LABEL_80;
      }

      v34 = self->_ucat;
      if (v34->var0 <= 30)
      {
        if (v34->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_81;
          }

          v34 = self->_ucat;
        }

        LogPrintF(v34, "[APBonjourCacheManager _deviceFound:altPairedInfo:recheck:event:]", 30, "Ignoring device found non-cacheable: %llu, '%@', %@\n", DeviceID, v13, v15);
      }

LABEL_81:

      goto LABEL_82;
    }

    v35 = self->_ucat;
    infoCopy = v20;
    if (v35->var0 <= 30)
    {
      if (v35->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_82;
        }

        v35 = self->_ucat;
      }

      primaryNetworkSignature2 = [(CUSystemMonitor *)self->_systemMonitor primaryNetworkSignature];
      LogPrintF(v35, "[APBonjourCacheManager _deviceFound:altPairedInfo:recheck:event:]", 30, "### Ignoring device %llu, '%@' that does not belong to this network: %@\n", v19, v13, primaryNetworkSignature2);

      infoCopy = v20;
    }
  }

  else
  {
    v33 = self->_ucat;
    if (v33->var0 <= 90)
    {
      if (v33->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_82;
        }

        v33 = self->_ucat;
      }

      LogPrintF(v33, "[APBonjourCacheManager _deviceFound:altPairedInfo:recheck:event:]", 90, "### Ignoring device found without pairing ID: %llu, '%@'\n", DeviceID, v13);
    }
  }

LABEL_82:
}

- (BOOL)deviceLost:(id)lost
{
  lostCopy = lost;
  v5 = BonjourDevice_CopyCFString();
  if (v5)
  {
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v5];
    [(NSMutableSet *)self->_removedItems removeObject:v5];
    v6 = _Block_copy(self->_reportDeviceFoundHandler);
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v5];
      v8 = v7 != 0;
      if (!v7)
      {
LABEL_14:

        goto LABEL_15;
      }

      DeviceID = BonjourDevice_GetDeviceID();
      v10 = [v7 objectForKeyedSubscript:@"name"];
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[APBonjourCacheManager deviceLost:]", 30, "Cached device refill: %llu, '%@'\n", DeviceID, v10);
      }

LABEL_13:
      (v6)[2](v6, v7, 2);

      goto LABEL_14;
    }
  }

  else
  {
    v12 = BonjourDevice_GetDeviceID();
    v6 = [lostCopy objectForKeyedSubscript:@"name"];
    v13 = self->_ucat;
    if (v13->var0 <= 90)
    {
      if (v13->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v13 = self->_ucat;
      }

      LogPrintF(v13, "[APBonjourCacheManager deviceLost:]", 90, "### Ignoring device lost without pairing ID: %llu, '%@'\n", v12, v6);
    }
  }

LABEL_11:
  v8 = 0;
LABEL_15:

  return v8;
}

- (void)cacheHKPeerIfNeeded:(id)needed pairedPeerInfo:(id)info
{
  neededCopy = needed;
  infoCopy = info;
  DeviceID = BonjourDevice_GetDeviceID();
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    v9 = DeviceID;
    v10 = neededCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      v11 = [v10 objectForKeyedSubscript:@"name"];
      LogPrintF(ucat, "[APBonjourCacheManager cacheHKPeerIfNeeded:pairedPeerInfo:]", 30, "Got notified about HK paired peer: ID %llu, Name '%@'\n", v9, v11);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      v10 = neededCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(APBonjourCacheManager *)self _deviceFound:neededCopy altPairedInfo:infoCopy recheck:1 event:6];
}

- (void)_refreshOrRemoveCachedItem:(id)item
{
  itemCopy = item;
  CFDictionaryGetDouble();
  v5 = CFAbsoluteTimeGetCurrent() - v4;
  if (v5 >= 864000.0)
  {
    v6 = BonjourDevice_CopyCFString();
    if (!v6)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 90)
      {
        v12 = itemCopy;
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_11;
          }

          ucat = self->_ucat;
          v12 = itemCopy;
        }

        LogPrintF(ucat, "[APBonjourCacheManager _refreshOrRemoveCachedItem:]", 90, "### Check cached item without ID: %##.32@\n", v12);
      }

LABEL_11:

      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_cachedItems setObject:0 forKeyedSubscript:v6];
    [(NSMutableDictionary *)self->_deviceMap setObject:0 forKeyedSubscript:v6];
    [(NSMutableSet *)self->_removedItems removeObject:v6];
    self->_cacheChanged = 1;
    DeviceID = BonjourDevice_GetDeviceID();
    v8 = self->_ucat;
    if (v8->var0 <= 30)
    {
      v9 = DeviceID;
      if (v8->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        v8 = self->_ucat;
      }

      v10 = [itemCopy objectForKeyedSubscript:@"name"];
      LogPrintF(v8, "[APBonjourCacheManager _refreshOrRemoveCachedItem:]", 30, "Old cached record removed: ID %llu, Name '%@', Seconds %.3f\n", v9, v10, *&v5);
    }

LABEL_10:
    [(CUCoalescer *)self->_writeCoaleser trigger];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_removeIfDuplicatesFoundOrIfNoLongerCacheable:(unint64_t)cacheable identifier:(id)identifier serialNumber:(id)number manufacturer:(id)manufacturer isCacheable:(BOOL)isCacheable
{
  identifierCopy = identifier;
  numberCopy = number;
  manufacturerCopy = manufacturer;
  cachedItems = self->_cachedItems;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __120__APBonjourCacheManager__removeIfDuplicatesFoundOrIfNoLongerCacheable_identifier_serialNumber_manufacturer_isCacheable___block_invoke;
  v19[3] = &unk_278BC8E28;
  selfCopy = self;
  cacheableCopy = cacheable;
  v20 = identifierCopy;
  v21 = numberCopy;
  v22 = manufacturerCopy;
  isCacheableCopy = isCacheable;
  v16 = manufacturerCopy;
  v17 = numberCopy;
  v18 = identifierCopy;
  [(NSMutableDictionary *)cachedItems enumerateKeysAndObjectsUsingBlock:v19];
}

void __120__APBonjourCacheManager__removeIfDuplicatesFoundOrIfNoLongerCacheable_identifier_serialNumber_manufacturer_isCacheable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  DeviceID = BonjourDevice_GetDeviceID();
  if (!v15 || ![v15 caseInsensitiveCompare:*(a1 + 32)])
  {
    if (*(a1 + 72))
    {
      goto LABEL_25;
    }

    v12 = *(*(a1 + 56) + 104);
    if (*v12 > 30)
    {
      goto LABEL_19;
    }

    if (*v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v12 = *(*(a1 + 56) + 104);
    }

    LogPrintF(v12, "[APBonjourCacheManager _removeIfDuplicatesFoundOrIfNoLongerCacheable:identifier:serialNumber:manufacturer:isCacheable:]_block_invoke", 30, "Cached device no longer supports caching: %llu. Removing...\n", DeviceID);
LABEL_19:
    v13 = 8;
LABEL_23:
    [*(a1 + 56) _reportCachedItemLost:v5 event:v13];
    goto LABEL_24;
  }

  v7 = BonjourDevice_CopyCFString();
  v8 = BonjourDevice_CopyCFString();
  v9 = v8;
  if (DeviceID != *(a1 + 64) && (!*(a1 + 40) || !v7 || !*(a1 + 48) || !v8 || [v7 compare:?] || objc_msgSend(v9, "caseInsensitiveCompare:", *(a1 + 48))))
  {

    goto LABEL_25;
  }

  v10 = *(*(a1 + 56) + 104);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_6:
      v11 = [v5 objectForKeyedSubscript:@"name"];
      LogPrintF(v10, "[APBonjourCacheManager _removeIfDuplicatesFoundOrIfNoLongerCacheable:identifier:serialNumber:manufacturer:isCacheable:]_block_invoke", 30, "Found duplicate cached entry: ID %llu, Name '%@', manufacturer '%@'. Removing...\n", DeviceID, v11, v9);

      goto LABEL_21;
    }

    if (_LogCategory_Initialize())
    {
      v10 = *(*(a1 + 56) + 104);
      goto LABEL_6;
    }
  }

LABEL_21:
  v14 = *(a1 + 64);

  if (DeviceID != v14)
  {
    v13 = 7;
    goto LABEL_23;
  }

LABEL_24:
  [*(*(a1 + 56) + 16) setObject:0 forKeyedSubscript:v15];
  [*(*(a1 + 56) + 32) setObject:0 forKeyedSubscript:v15];
  [*(*(a1 + 56) + 24) removeObject:v15];
  *(*(a1 + 56) + 9) = 1;
  [*(*(a1 + 56) + 88) trigger];
LABEL_25:
}

- (void)_replaceIfnameFromDNSString:(id)string
{
  stringCopy = string;
  v3 = [stringCopy objectForKeyedSubscript:@"dnsName"];
  v4 = [v3 rangeOfString:@"%"];
  if (v4 < [v3 length])
  {
    v5 = [v3 substringToIndex:v4];
    [stringCopy setObject:v5 forKey:@"dnsName"];
  }
}

- (void)_sanitizeDNSStrings:(id)strings
{
  stringsCopy = strings;
  v4 = [stringsCopy objectForKeyedSubscript:@"services"];
  v5 = [v4 mutableCopy];

  [(APBonjourCacheManager *)self _replaceIfnameFromDNSString:stringsCopy];
  if (v5)
  {
    v6 = [v5 count];
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v10 = v8;
        v11 = [v5 objectAtIndexedSubscript:i];
        v8 = [v11 mutableCopy];

        [(APBonjourCacheManager *)self _replaceIfnameFromDNSString:v8];
        [v5 replaceObjectAtIndex:i withObject:v8];
      }
    }
  }

  [stringsCopy setObject:v5 forKey:@"services"];
}

- (void)_networkSignatureChanged
{
  if (!self->_systemMonitor)
  {
    return;
  }

  [(APBonjourCacheManager *)self _ensureKnownNetworkProfileMonitoringStarted];
  primaryNetworkSignature = [(CUSystemMonitor *)self->_systemMonitor primaryNetworkSignature];
  networkSignature = self->_networkSignature;
  v14 = primaryNetworkSignature;
  v5 = networkSignature;
  v6 = v5;
  if (v14 != v5)
  {
    if ((v14 != 0) != (v5 == 0))
    {
      v7 = [(NSString *)v14 isEqual:v5];

      if (v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      v9 = v14;
      if (ucat->var0 != -1)
      {
LABEL_11:
        LogPrintF(ucat, "[APBonjourCacheManager _networkSignatureChanged]", 30, "Network signature changed: %@\n", v9);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        v9 = v14;
        goto LABEL_11;
      }
    }

LABEL_13:
    if (self->_networkSignature)
    {
      [(APBonjourCacheManager *)self _flushCachedItems];
    }

    [(APBonjourCacheManager *)self _reportCachedItemsLost:3];
    if (![(NSString *)v14 containsString:@"Cellular"])
    {
      v11 = v14;
LABEL_22:
      v14 = v11;
      objc_storeStrong(&self->_networkSignature, v11);
      self->_networkSignatureWasValidAt = CFAbsoluteTimeGetCurrent();
      [(APBonjourCacheManager *)self _auditCachesIfNecessary:0 event:3];
      _readCachedItems = [(APBonjourCacheManager *)self _readCachedItems];
      cachedItems = self->_cachedItems;
      self->_cachedItems = _readCachedItems;

      [(APBonjourCacheManager *)self _refreshCachedItems];
      [(APBonjourCacheManager *)self _reportCachedItemsFound:3];
      [(APBonjourCacheManager *)self _recheckDevices:3];
      goto LABEL_23;
    }

    v10 = self->_ucat;
    if (v10->var0 <= 30)
    {
      if (v10->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v10 = self->_ucat;
      }

      LogPrintF(v10, "[APBonjourCacheManager _networkSignatureChanged]", 30, "Ignoring Cellular network signature\n");
    }

LABEL_21:

    v11 = 0;
    goto LABEL_22;
  }

LABEL_23:
}

- (void)_pairedPeersChanged
{
  if (!self->_pairedPeersGetting)
  {
    self->_pairedPeersGetting = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[APBonjourCacheManager _pairedPeersChanged]", 30, "Getting paired peers\n");
    }

LABEL_6:
    v4 = objc_alloc_init(MEMORY[0x277D028E0]);
    [v4 setDispatchQueue:self->_dispatchQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__APBonjourCacheManager__pairedPeersChanged__block_invoke;
    v5[3] = &unk_278BC8E50;
    v5[4] = self;
    v5[5] = v4;
    [v4 getPairedPeersWithOptions:4 completion:v5];
  }
}

void __44__APBonjourCacheManager__pairedPeersChanged__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 44) = 0;
  [*(a1 + 40) invalidate];
  v7 = *(a1 + 32);
  if (!v6)
  {
    [v7 _cancelRetryGetPairedPeers];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = [v16 UUIDString];

          if (v17)
          {
            [v9 setObject:v15 forKeyedSubscript:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    objc_storeStrong((*(a1 + 32) + 48), v9);
    v18 = *(a1 + 32);
    v19 = v18[13];
    if (*v19 > 30)
    {
      goto LABEL_22;
    }

    if (*v19 == -1)
    {
      v20 = _LogCategory_Initialize();
      v18 = *(a1 + 32);
      if (!v20)
      {
        goto LABEL_22;
      }

      v19 = v18[13];
    }

    LogPrintF(v19, "-[APBonjourCacheManager _pairedPeersChanged]_block_invoke", 30, "Paired peers map updated: %d peers\n", [v9 count]);
    v18 = *(a1 + 32);
LABEL_22:
    [v18 _recheckDevices:4];

    v5 = v21;
    goto LABEL_23;
  }

  v8 = v7[13];
  if (*v8 <= 90)
  {
    if (*v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v8 = *(*(a1 + 32) + 104);
    }

    LogPrintF(v8, "[APBonjourCacheManager _pairedPeersChanged]_block_invoke", 90, "### Get paired peers failed: %{error}\n", v6);
  }

LABEL_18:
  if ([v6 code] == 4099 || objc_msgSend(v6, "code") == 4097)
  {
    [*(a1 + 32) _startRetryGetPairedPeersTimer];
  }

LABEL_23:
}

- (void)_startRetryGetPairedPeersTimer
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[APBonjourCacheManager _startRetryGetPairedPeersTimer]", 30, "Start retry timer\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v5 = retryTimer;
    dispatch_source_cancel(v5);
    v6 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v8 = self->_retryTimer;
  self->_retryTimer = v7;

  v9 = self->_retryTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__APBonjourCacheManager__startRetryGetPairedPeersTimer__block_invoke;
  handler[3] = &unk_278BC8D38;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  CUDispatchTimerSet();
  dispatch_resume(self->_retryTimer);
}

int *__55__APBonjourCacheManager__startRetryGetPairedPeersTimer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 104);
  if (*result <= 30)
  {
    if (*result != -1)
    {
LABEL_3:
      result = LogPrintF(result, "[APBonjourCacheManager _startRetryGetPairedPeersTimer]_block_invoke", 30, "Retry timer fired\n");
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    result = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (result)
    {
      result = *(v2 + 104);
      goto LABEL_3;
    }
  }

LABEL_5:
  if ((*(v2 + 64) & 1) == 0)
  {
    v4 = *(v2 + 56);
    if (v4)
    {
      v5 = v4;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 32);
      v7 = *(v6 + 56);
      *(v6 + 56) = 0;
    }

    v8 = *(a1 + 32);

    return [v8 _pairedPeersChanged];
  }

  return result;
}

- (void)_cancelRetryGetPairedPeers
{
  if (!self->_retryTimer)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucat, "[APBonjourCacheManager _cancelRetryGetPairedPeers]", 30, "Cancel retry timer\n");
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v6 = retryTimer;
    dispatch_source_cancel(v6);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;
  }
}

- (void)_recheckDevices:(int64_t)devices
{
  if (self->_networkSignature)
  {
    deviceMap = self->_deviceMap;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41__APBonjourCacheManager__recheckDevices___block_invoke;
    v4[3] = &unk_278BC8E78;
    v4[4] = self;
    v4[5] = devices;
    [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void __41__APBonjourCacheManager__recheckDevices___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 mutableCopy];
  [v4 _deviceFound:v5 altPairedInfo:0 recheck:1 event:*(a1 + 40)];
}

- (void)_refreshCachedItems
{
  cachedItems = self->_cachedItems;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__APBonjourCacheManager__refreshCachedItems__block_invoke;
  v3[3] = &unk_278BC8EA0;
  v3[4] = self;
  [(NSMutableDictionary *)cachedItems enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_reportCachedItemsFound:(int64_t)found
{
  if (!self->_isPublicAirPlayNetwork)
  {
    cachedItems = self->_cachedItems;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__APBonjourCacheManager__reportCachedItemsFound___block_invoke;
    v6[3] = &unk_278BC8E78;
    v6[4] = self;
    v6[5] = found;
    [(NSMutableDictionary *)cachedItems enumerateKeysAndObjectsUsingBlock:v6];
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    return;
  }

  if (ucat->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      return;
    }

    ucat = self->_ucat;
  }

  LogPrintF(ucat, "[APBonjourCacheManager _reportCachedItemsFound:]", 30, "Ignoring request to report cached devices while on public AirPlay network");
}

void __49__APBonjourCacheManager__reportCachedItemsFound___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = _Block_copy(*(*(a1 + 32) + 160));
  if (v4)
  {
    DeviceID = BonjourDevice_GetDeviceID();
    v6 = [v8 objectForKeyedSubscript:@"name"];
    v7 = *(*(a1 + 32) + 104);
    if (*v7 <= 30)
    {
      if (*v7 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v7 = *(*(a1 + 32) + 104);
      }

      LogPrintF(v7, "[APBonjourCacheManager _reportCachedItemsFound:]_block_invoke", 30, "Cached device found: %llu, '%@'\n", DeviceID, v6);
    }

LABEL_6:
    v4[2](v4, v8, *(a1 + 40));
  }
}

- (void)_reportCachedItemLost:(id)lost event:(int64_t)event
{
  lostCopy = lost;
  v6 = _Block_copy(self->_reportDeviceLostHandler);
  if (v6)
  {
    v7 = [lostCopy mutableCopy];
    v8 = [v7 objectForKeyedSubscript:@"services"];
    [v7 removeObjectForKey:@"services"];
    [v7 setObject:v8 forKeyedSubscript:@"removedServices"];
    [v7 removeObjectForKey:@"cached"];
    [v7 removeObjectForKey:@"wakeArray"];
    [v7 removeObjectForKey:@"wakeAddr"];
    v6[2](v6, v7, event);
  }
}

- (void)_reportCachedItemsLost:(int64_t)lost
{
  cachedItems = self->_cachedItems;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__APBonjourCacheManager__reportCachedItemsLost___block_invoke;
  v4[3] = &unk_278BC8E78;
  v4[4] = self;
  v4[5] = lost;
  [(NSMutableDictionary *)cachedItems enumerateKeysAndObjectsUsingBlock:v4];
}

void __48__APBonjourCacheManager__reportCachedItemsLost___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  DeviceID = BonjourDevice_GetDeviceID();
  v5 = [v10 objectForKeyedSubscript:@"name"];
  v6 = *(a1 + 32);
  v7 = v6[13];
  if (*v7 <= 30)
  {
    if (*v7 != -1)
    {
LABEL_3:
      v8 = APBonjourCacheEventToString(*(a1 + 40));
      LogPrintF(v7, "[APBonjourCacheManager _reportCachedItemsLost:]_block_invoke", 30, "Cached device lost: %llu, '%@' reason: %s\n", DeviceID, v5, v8);
      v6 = *(a1 + 32);
      goto LABEL_5;
    }

    v9 = _LogCategory_Initialize();
    v6 = *(a1 + 32);
    if (v9)
    {
      v7 = v6[13];
      goto LABEL_3;
    }
  }

LABEL_5:
  [v6 _reportCachedItemLost:v10 event:*(a1 + 40)];
}

- (void)_updateLastSeenTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = BonjourDevice_CopyCFString();
  if (!v4)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_13;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[APBonjourCacheManager _updateLastSeenTimestamp:]", 90, "### Update LastSeen item without ID: %##.32@\n", timestampCopy);
    goto LABEL_13;
  }

  if (![(NSMutableSet *)self->_removedItems containsObject:v4])
  {
    goto LABEL_13;
  }

  v5 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v4];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [v6 setObject:v7 forKeyedSubscript:@"lastSeen"];

  [(APBonjourCacheManager *)self _sanitizeDNSStrings:v6];
  [(NSMutableDictionary *)self->_cachedItems setObject:v6 forKeyedSubscript:v4];
  self->_cacheChanged = 1;
  DeviceID = BonjourDevice_GetDeviceID();
  v9 = self->_ucat;
  if (v9->var0 <= 30)
  {
    v10 = DeviceID;
    if (v9->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v9 = self->_ucat;
    }

    v11 = [timestampCopy objectForKeyedSubscript:@"name"];
    LogPrintF(v9, "[APBonjourCacheManager _updateLastSeenTimestamp:]", 30, "Cached record update last seen: %llu '%@'\n", v10, v11);
  }

LABEL_12:
  [(CUCoalescer *)self->_writeCoaleser trigger];

LABEL_13:
}

- (void)_updateCachedDeviceInfoWhenRealDeviceIsFound:(id)found event:(int64_t)event
{
  foundCopy = found;
  DeviceID = BonjourDevice_GetDeviceID();
  v7 = BonjourDevice_CopyCFString();
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_cachedItems objectForKeyedSubscript:v7];
    v9 = v8;
    if (!v8)
    {
LABEL_21:

      goto LABEL_22;
    }

    v10 = [v8 objectForKeyedSubscript:@"name"];
    v11 = BonjourDevice_GetDeviceID();
    v12 = [foundCopy objectForKeyedSubscript:@"name"];
    if ([v10 isEqualToString:v12])
    {
      [v9 objectForKeyedSubscript:@"txt"];
      v32 = DeviceID;
      v13 = v10;
      eventCopy = event;
      v16 = v15 = v11;
      v17 = [foundCopy objectForKeyedSubscript:@"txt"];
      v18 = [v16 isEqual:v17];

      v11 = v15;
      event = eventCopy;
      v10 = v13;
      DeviceID = v32;

      if (v18)
      {
LABEL_12:
        ucat = self->_ucat;
        if (ucat->var0 <= 30)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_16;
            }

            ucat = self->_ucat;
          }

          LogPrintF(ucat, "[APBonjourCacheManager _updateCachedDeviceInfoWhenRealDeviceIsFound:event:]", 30, "Cached device lost: %llu, '%@' (real found)\n", v11, v10);
        }

LABEL_16:
        removedItems = self->_removedItems;
        if (!removedItems)
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v28 = self->_removedItems;
          self->_removedItems = v27;

          removedItems = self->_removedItems;
        }

        [(NSMutableSet *)removedItems addObject:v7];
        [(APBonjourCacheManager *)self _updateLastSeenTimestamp:foundCopy];
        v29 = [v9 mutableCopy];
        [v29 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"cached"];
        v30 = _Block_copy(self->_reportDeviceFoundHandler);
        v31 = v30;
        if (v30)
        {
          (*(v30 + 2))(v30, v29, event);
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    v19 = [v9 mutableCopy];
    v20 = [foundCopy objectForKeyedSubscript:@"name"];
    [v19 setObject:v20 forKey:@"name"];

    v21 = [foundCopy objectForKeyedSubscript:@"txt"];
    [v19 setObject:v21 forKey:@"txt"];

    v22 = [foundCopy objectForKeyedSubscript:@"services"];
    [v19 setObject:v22 forKey:@"services"];

    [(APBonjourCacheManager *)self _sanitizeDNSStrings:v19];
    v23 = self->_ucat;
    if (v23->var0 <= 30)
    {
      if (v23->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v23 = self->_ucat;
      }

      v24 = [foundCopy objectForKeyedSubscript:@"name"];
      LogPrintF(v23, "[APBonjourCacheManager _updateCachedDeviceInfoWhenRealDeviceIsFound:event:]", 30, "Cached record updated: %llu '%@'\n", DeviceID, v24);
    }

LABEL_11:
    [(NSMutableDictionary *)self->_cachedItems setObject:v19 forKeyedSubscript:v7];
    self->_cacheChanged = 1;
    [(CUCoalescer *)self->_writeCoaleser trigger];

    goto LABEL_12;
  }

LABEL_22:
}

- (void)_addDeviceToCache:(id)cache pairedPeerInfo:(id)info event:(int64_t)event
{
  cacheCopy = cache;
  infoCopy = info;
  if (!self->_cachedItems)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedItems = self->_cachedItems;
    self->_cachedItems = v9;
  }

  v11 = BonjourDevice_CopyCFString();
  if (v11)
  {
    v12 = [cacheCopy mutableCopy];
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cached"];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v12 setObject:v13 forKeyedSubscript:@"lastSeen"];

    [(APBonjourCacheManager *)self _sanitizeDNSStrings:v12];
    info = [infoCopy info];
    CFArrayGetTypeID();
    v15 = CFDictionaryGetTypedValue();

    if (v15)
    {
      [v12 setObject:v15 forKeyedSubscript:@"wakeArray"];
    }

    info2 = [infoCopy info];
    CFDataGetTypeID();
    v17 = CFDictionaryGetTypedValue();

    if (v17)
    {
      [v12 setObject:v17 forKeyedSubscript:@"wakeAddr"];
    }

    if (event == 6)
    {
      [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HKPeer"];
    }

    [(NSMutableDictionary *)self->_cachedItems setObject:v12 forKeyedSubscript:v11];
    self->_cacheChanged = 1;
    [(CUCoalescer *)self->_writeCoaleser trigger];
  }
}

- (void)_flushCachedItems
{
  if (self->_cachedItems)
  {
    [(APBonjourCacheManager *)self _writeCachedItems:?];
    self->_cacheChanged = 0;
  }
}

- (id)_getCacheDirectoryURLCreateIfNecessary:(BOOL)necessary error:(id *)error
{
  necessaryCopy = necessary;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v7 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:necessaryCopy error:&v17];
  v8 = v17;
  if (v8)
  {
    v13 = v8;
    [APBonjourCacheManager _getCacheDirectoryURLCreateIfNecessary:error:];
    v10 = 0;
  }

  else
  {
    v9 = [v7 URLByAppendingPathComponent:@"com.apple.airplay/APBonjourCache" isDirectory:1];
    v10 = v9;
    if (v9)
    {
      path = [v9 path];
      v12 = [defaultManager fileExistsAtPath:path isDirectory:0];

      if (v12)
      {
        v13 = 0;
      }

      else if (necessaryCopy)
      {
        v16 = 0;
        [defaultManager createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v16];
        v13 = v16;
        if (v13)
        {
          [APBonjourCacheManager _getCacheDirectoryURLCreateIfNecessary:error:];
        }
      }

      else
      {
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6727 userInfo:0];
      }
    }

    else
    {
      [APBonjourCacheManager _getCacheDirectoryURLCreateIfNecessary:? error:?];
      v13 = v18;
    }
  }

  if (error)
  {
    v14 = v13;
    *error = v13;
  }

  if (v13)
  {

    v10 = 0;
  }

  return v10;
}

- (id)_getCacheFileURLCreateIfNecessary:(BOOL)necessary error:(id *)error
{
  if (necessary)
  {
    v6 = "write";
  }

  else
  {
    v6 = "read";
  }

  if (!self->_serviceType)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[APBonjourCacheManager _getCacheFileURLCreateIfNecessary:error:]", 90, "### No service type to %s cache\n");
    }

LABEL_28:
    v10 = 0;
    v9 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  necessaryCopy = necessary;
  if (![(NSString *)self->_networkSignature UTF8String])
  {
    v17 = self->_ucat;
    if (v17->var0 <= 90)
    {
      if (v17->var0 != -1)
      {
LABEL_19:
        LogPrintF(v17, "[APBonjourCacheManager _getCacheFileURLCreateIfNecessary:error:]", 90, "No network signature to %s cache\n");
        goto LABEL_28;
      }

      if (_LogCategory_Initialize())
      {
        v17 = self->_ucat;
        goto LABEL_19;
      }
    }

    goto LABEL_28;
  }

  [(NSString *)self->_networkSignature UTF8String];
  strlen([(NSString *)self->_networkSignature UTF8String]);
  v8 = SipHash();
  v9 = NSPrintF("%@-%016llX.plist", self->_serviceType, v8);
  v19 = 0;
  v10 = [(APBonjourCacheManager *)self _getCacheDirectoryURLCreateIfNecessary:necessaryCopy error:&v19];
  v11 = v19;
  if (v11)
  {
    v13 = v11;
    v18 = self->_ucat;
    if (v18->var0 <= 90)
    {
      if (v18->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v18 = self->_ucat;
      }

      LogPrintF(v18, "[APBonjourCacheManager _getCacheFileURLCreateIfNecessary:error:]", 90, "### Caches directory not found to %s: %{error}\n", v6, v13);
    }

LABEL_30:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = [v10 URLByAppendingPathComponent:v9 isDirectory:0];
  if (v12)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  [APBonjourCacheManager _getCacheFileURLCreateIfNecessary:? error:?];
  v13 = v20;
LABEL_9:
  if (error)
  {
    v14 = v13;
    *error = v13;
  }

  return v12;
}

- (id)_readCachedItems
{
  v18 = 0;
  v3 = [(APBonjourCacheManager *)self _getCacheFileURLCreateIfNecessary:0 error:&v18];
  v4 = v18;
  if (!v3)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[APBonjourCacheManager _readCachedItems]", 90, "### Read cache file failed%?{end}: %{error}\n", v4 == 0, v4);
    }

LABEL_18:
    v15 = 0;
    v9 = v4;
    goto LABEL_27;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v3 path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (!v7)
  {
    goto LABEL_18;
  }

  v17 = v4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3 error:&v17];
  v9 = v17;

  if (v8)
  {
    CFDictionaryGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    v11 = self->_ucat;
    var0 = v11->var0;
    if (v10)
    {
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_20;
          }

          v11 = self->_ucat;
        }

        LogPrintF(v11, "-[APBonjourCacheManager _readCachedItems]", 30, "Read cache: %d item(s)\n", [v10 count]);
      }

LABEL_20:
      v15 = [v10 mutableCopy];
LABEL_25:

      goto LABEL_26;
    }

    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v11 = self->_ucat;
      }

      LogPrintF(v11, "[APBonjourCacheManager _readCachedItems]", 90, "### Cache content incomplete: %@, %#m\n", v3, 0);
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  v14 = self->_ucat;
  if (v14->var0 <= 30)
  {
    if (v14->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      v14 = self->_ucat;
    }

    LogPrintF(v14, "[APBonjourCacheManager _readCachedItems]", 30, "### Cache read failed: %@, %{error}\n", v3, v9);
  }

LABEL_22:
  v15 = 0;
LABEL_26:

LABEL_27:

  return v15;
}

- (BOOL)_writeCachedItems:(id)items
{
  v23[3] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "-[APBonjourCacheManager _writeCachedItems:]", 30, "Write cache: %d item(s)\n", [itemsCopy count]);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v21 = 0;
  v6 = [(APBonjourCacheManager *)self _getCacheFileURLCreateIfNecessary:1 error:&v21];
  v7 = v21;
  if (v6)
  {
    v22[0] = @"cachedItems";
    v22[1] = @"networkSignature";
    networkSignature = self->_networkSignature;
    v23[0] = itemsCopy;
    v23[1] = networkSignature;
    v22[2] = @"serviceType";
    v23[2] = self->_serviceType;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v20 = 0;
    v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v9 format:200 options:0 error:&v20];
    v11 = v20;

    if (v10)
    {
      v19 = v11;
      v12 = 1;
      v13 = [v10 writeToURL:v6 options:1 error:&v19];
      v14 = v19;

      if (v13)
      {
LABEL_23:
        v11 = v14;
        goto LABEL_24;
      }

      v15 = self->_ucat;
      if (v15->var0 <= 90)
      {
        if (v15->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_22;
          }

          v15 = self->_ucat;
        }

        LogPrintF(v15, "[APBonjourCacheManager _writeCachedItems:]", 90, "### Write cache file failed: %{error}\n", v14);
      }

LABEL_22:
      v12 = 0;
      goto LABEL_23;
    }

    v17 = self->_ucat;
    if (v17->var0 <= 90)
    {
      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v17 = self->_ucat;
      }

      LogPrintF(v17, "[APBonjourCacheManager _writeCachedItems:]", 90, "### Convert cache to plist failed: %{error}\n", v11);
    }

LABEL_20:
    v12 = 0;
LABEL_24:

    v7 = v11;
    goto LABEL_25;
  }

  v16 = self->_ucat;
  if (v16->var0 <= 90)
  {
    if (v16->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v16 = self->_ucat;
    }

    LogPrintF(v16, "[APBonjourCacheManager _writeCachedItems:]", 90, "### Write cache file failed%?{end}: %{error}\n", v7 == 0, v7);
  }

LABEL_18:
  v12 = 0;
LABEL_25:

  return v12;
}

- (void)_migrateCacheDirectoryIfNecessary
{
  v75 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v71 = 0;
  selfCopy = self;
  v3 = [(APBonjourCacheManager *)self _getCacheDirectoryURLCreateIfNecessary:1 error:&v71];
  v4 = v71;
  v56 = v3;
  if (!v3)
  {
    [(APBonjourCacheManager *)selfCopy _migrateCacheDirectoryIfNecessary];
    v7 = v72;
    goto LABEL_74;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v70 = v4;
  v6 = [defaultManager2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v70];
  v7 = v70;

  if (!v6)
  {
    [APBonjourCacheManager _migrateCacheDirectoryIfNecessary];
    goto LABEL_74;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v8 = [&unk_284F652C0 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (!v8)
  {
    goto LABEL_73;
  }

  v9 = v8;
  v57 = 0;
  v10 = *v67;
  v50 = *v67;
  v51 = v6;
  do
  {
    v11 = 0;
    v52 = v9;
    do
    {
      if (*v67 != v10)
      {
        objc_enumerationMutation(&unk_284F652C0);
      }

      v12 = [v6 URLByAppendingPathComponent:*(*(&v66 + 1) + 8 * v11) isDirectory:1];

      v57 = v12;
      if ([v56 isEqual:v12])
      {
        p_var0 = &selfCopy->_ucat->var0;
        if (*p_var0 > 90)
        {
          goto LABEL_66;
        }

        if (*p_var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_66;
          }

          p_var0 = &selfCopy->_ucat->var0;
        }

        LogPrintF(p_var0, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 90, "Cannot migrate with the same source and destination directory: %@", v12);
        goto LABEL_66;
      }

      v53 = v11;
      path = [v12 path];
      v15 = [defaultManager fileExistsAtPath:path isDirectory:0];

      if (!v15)
      {
        v11 = v53;
        goto LABEL_66;
      }

      v16 = &selfCopy->_ucat->var0;
      if (*v16 > 30)
      {
        goto LABEL_20;
      }

      if (*v16 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v16 = &selfCopy->_ucat->var0;
      }

      LogPrintF(v16, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 30, "Legacy cache found: %@", v57);
LABEL_20:
      path2 = [v57 path];
      v65 = v7;
      v18 = [defaultManager contentsOfDirectoryAtPath:path2 error:&v65];
      v19 = v65;

      if (v19)
      {
        v20 = &selfCopy->_ucat->var0;
        v11 = v53;
        if (*v20 > 90)
        {
          goto LABEL_64;
        }

        if (*v20 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_64;
          }

          v20 = &selfCopy->_ucat->var0;
        }

        LogPrintF(v20, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 90, "Failed to read contents of source directory: %@", v19);
LABEL_64:

        goto LABEL_65;
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v18;
      v21 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
      v22 = v57;
      if (!v21)
      {
        goto LABEL_52;
      }

      v23 = v21;
      v24 = *v62;
      do
      {
        v25 = 0;
        do
        {
          if (*v62 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v61 + 1) + 8 * v25);
          ucat = selfCopy->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 != -1)
            {
              goto LABEL_32;
            }

            if (_LogCategory_Initialize())
            {
              ucat = selfCopy->_ucat;
LABEL_32:
              path3 = [v22 path];
              v29 = [path3 stringByAppendingPathComponent:v26];
              path4 = [v56 path];
              v31 = [path4 stringByAppendingPathComponent:v26];
              LogPrintF(ucat, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 30, "Migrating %@ to %@", v29, v31);

              v22 = v57;
            }
          }

          path5 = [v22 path];
          v33 = [path5 stringByAppendingPathComponent:v26];
          path6 = [v56 path];
          v35 = [path6 stringByAppendingPathComponent:v26];
          v60 = 0;
          [defaultManager moveItemAtPath:v33 toPath:v35 error:&v60];
          v36 = v60;

          v22 = v57;
          if (!v36)
          {
            goto LABEL_45;
          }

          code = [v36 code];
          v38 = selfCopy->_ucat;
          var0 = v38->var0;
          if (code == 516)
          {
            if (var0 <= 30)
            {
              if (var0 != -1)
              {
                goto LABEL_38;
              }

              if (_LogCategory_Initialize())
              {
                v38 = selfCopy->_ucat;
LABEL_38:
                LogPrintF(v38, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 30, "%@ already migrated", v26);
              }
            }

            path7 = [v57 path];
            v41 = [path7 stringByAppendingPathComponent:v26];
            [defaultManager removeItemAtPath:v41 error:0];

            goto LABEL_44;
          }

          if (var0 <= 90)
          {
            if (var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_44;
              }

              v38 = selfCopy->_ucat;
            }

            LogPrintF(v38, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 90, "Failed to migrate %@: %@", v26, v36);
          }

LABEL_44:

LABEL_45:
          ++v25;
        }

        while (v23 != v25);
        v42 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
        v23 = v42;
      }

      while (v42);
LABEL_52:

      path8 = [v22 path];
      v44 = [defaultManager contentsOfDirectoryAtPath:path8 error:0];
      v45 = [v44 count];

      v6 = v51;
      v9 = v52;
      v10 = v50;
      v11 = v53;
      if (!v45)
      {
        v46 = selfCopy->_ucat;
        if (v46->var0 <= 50)
        {
          if (v46->var0 != -1)
          {
            goto LABEL_55;
          }

          if (_LogCategory_Initialize())
          {
            v46 = selfCopy->_ucat;
LABEL_55:
            LogPrintF(v46, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 50, "Migration complete.");
          }
        }

        path9 = [v57 path];
        v59 = 0;
        [defaultManager removeItemAtPath:path9 error:&v59];
        v19 = v59;

        if (v19)
        {
          v48 = selfCopy->_ucat;
          if (v48->var0 <= 90)
          {
            if (v48->var0 != -1)
            {
              goto LABEL_62;
            }

            if (_LogCategory_Initialize())
            {
              v48 = selfCopy->_ucat;
LABEL_62:
              LogPrintF(v48, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 90, "Failed to remove source directory: %@", v19);
            }
          }

          goto LABEL_64;
        }
      }

LABEL_65:

      v7 = 0;
LABEL_66:
      ++v11;
    }

    while (v11 != v9);
    v49 = [&unk_284F652C0 countByEnumeratingWithState:&v66 objects:v74 count:16];
    v9 = v49;
  }

  while (v49);

LABEL_73:
LABEL_74:
}

- (void)_handleKnownNetworkProfileUpdate:(BOOL)update
{
  isPublicAirPlayNetwork = self->_isPublicAirPlayNetwork;
  if (isPublicAirPlayNetwork == update)
  {
    return;
  }

  updateCopy = update;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      v7 = "no";
      if (isPublicAirPlayNetwork)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (updateCopy)
      {
        v7 = "yes";
      }

      LogPrintF(ucat, "[APBonjourCacheManager _handleKnownNetworkProfileUpdate:]", 30, "Detected network profile updated, isPublicAirPlayNetwork: %s -> %s", v8, v7);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      LOBYTE(isPublicAirPlayNetwork) = self->_isPublicAirPlayNetwork;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_isPublicAirPlayNetwork = updateCopy;
  [(APBonjourCacheManager *)self _auditCachesIfNecessary:0 event:9];
  if (self->_isPublicAirPlayNetwork)
  {

    [(APBonjourCacheManager *)self _reportCachedItemsLost:9];
  }

  else
  {

    [(APBonjourCacheManager *)self _reportCachedItemsFound:9];
  }
}

- (void)_auditCachesIfNecessary:(id)necessary event:(int64_t)event
{
  v54 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  Current = CFAbsoluteTimeGetCurrent();
  if (!self->_auditCaches)
  {
    v17 = 0;
    v12 = 0;
    goto LABEL_58;
  }

  v8 = Current;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
    }

    v10 = APBonjourCacheEventToString(event);
    v11 = "yes";
    if (!necessaryCopy)
    {
      v11 = "no";
    }

    LogPrintF(ucat, "[APBonjourCacheManager _auditCachesIfNecessary:event:]", 30, "Auditing caches for event: %s device info: %s", v10, v11);
  }

LABEL_8:
  if (necessaryCopy)
  {
    v12 = BonjourDevice_CopyCFString();
    if (v12)
    {
      DeviceID = BonjourDevice_GetDeviceID();
      goto LABEL_12;
    }

    APSLogErrorAt();
    v17 = 0;
LABEL_58:
    v13 = 0;
    v18 = 0;
    goto LABEL_54;
  }

  v12 = 0;
  DeviceID = 0;
LABEL_12:
  v52 = 0;
  v13 = [(APBonjourCacheManager *)self _getCacheDirectoryURLCreateIfNecessary:0 error:&v52];
  v14 = v52;
  if (NSErrorToOSStatus())
  {
    v17 = 0;
    v18 = v14;
    goto LABEL_54;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v13 path];
  v51 = v14;
  v17 = [defaultManager contentsOfDirectoryAtPath:path error:&v51];
  v18 = v51;

  if (!NSErrorToOSStatus())
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v17;
    v45 = [v17 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (!v45)
    {

      goto LABEL_54;
    }

    v40 = v18;
    obj = v17;
    v46 = 0;
    v43 = v13;
    v44 = *v48;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v47 + 1) + 8 * v19);
        v21 = MEMORY[0x277CBEAC0];
        path2 = [v13 path];
        v23 = [path2 stringByAppendingPathComponent:v20];
        v24 = [v21 dictionaryWithContentsOfFile:v23];

        if (!v24)
        {
          APSLogErrorAt();
          v29 = 0;
          v30 = 0;
          v25 = 0;
          goto LABEL_36;
        }

        v25 = [v24 objectForKeyedSubscript:@"networkSignature"];
        v26 = [v25 isEqualToString:self->_networkSignature];
        if (v26)
        {
          if (self->_isPublicAirPlayNetwork)
          {
            v27 = self->_ucat;
            if (v27->var0 <= 60)
            {
              if (v27->var0 != -1)
              {
                goto LABEL_24;
              }

              if (_LogCategory_Initialize())
              {
                v27 = self->_ucat;
LABEL_24:
                LogPrintF(v27, "[APBonjourCacheManager _auditCachesIfNecessary:event:]", 60, "Unexpectedly found cache file %'@ for current network signature %'@ which is a public AirPlay network", v20, v25);
              }
            }
          }
        }

        if (!v12)
        {
          v29 = 0;
LABEL_41:
          v30 = 0;
          goto LABEL_36;
        }

        CFDictionaryGetTypeID();
        v28 = CFDictionaryGetTypedValue();
        v29 = v28;
        if (!v28)
        {
          APSLogErrorAt();
          goto LABEL_41;
        }

        v30 = [v28 objectForKeyedSubscript:v12];
        if (v30)
        {
          CFDictionaryGetDouble();
          v32 = v31;
          CFDictionaryGetDouble();
          v46 += v26 ^ 1;
          v34 = self->_ucat;
          if (v34->var0 <= 30)
          {
            v35 = v33;
            if (v34->var0 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_36;
              }

              v34 = self->_ucat;
            }

            v36 = "Other";
            if (v26)
            {
              v36 = "Current";
            }

            LogPrintF(v34, "[APBonjourCacheManager _auditCachesIfNecessary:event:]", 30, "Found existing cache entry for device: %llu cachedLastSeen: %.3fs ago deviceLastSeen: %.3fs ago networkSignature: %@ (%s)", DeviceID, v8 - v32, v8 - v35, v25, v36);
          }
        }

LABEL_36:

        ++v19;
        v13 = v43;
      }

      while (v45 != v19);
      v17 = obj;
      v37 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      v45 = v37;
      if (!v37)
      {

        if (v46)
        {
          v38 = self->_ucat;
          v18 = v40;
          if (v38->var0 <= 90)
          {
            if (v38->var0 != -1)
            {
              goto LABEL_48;
            }

            if (_LogCategory_Initialize())
            {
              v38 = self->_ucat;
LABEL_48:
              v39 = "s";
              if (v46 == 1)
              {
                v39 = "";
              }

              LogPrintF(v38, "[APBonjourCacheManager _auditCachesIfNecessary:event:]", 90, "Device: %llu exists across %u other network signature%s", DeviceID, v46, v39);
            }
          }
        }

        else
        {
          v18 = v40;
        }

        break;
      }
    }
  }

LABEL_54:
}

- (uint64_t)_getCacheDirectoryURLCreateIfNecessary:(uint64_t *)a1 error:.cold.3(uint64_t *a1)
{
  APSLogErrorAt();
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6728 userInfo:0];
  *a1 = result;
  return result;
}

- (uint64_t)_getCacheFileURLCreateIfNecessary:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  APSLogErrorAt();
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6728 userInfo:0];
  *a1 = result;
  return result;
}

- (int)_migrateCacheDirectoryIfNecessary
{
  result = *(self + 104);
  if (*result <= 90)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      result = *(self + 104);
    }

    result = LogPrintF(result, "[APBonjourCacheManager _migrateCacheDirectoryIfNecessary]", 90, "Migration failed to get destination directory: %{error}", a2);
  }

LABEL_5:
  *a3 = a2;
  return result;
}

@end