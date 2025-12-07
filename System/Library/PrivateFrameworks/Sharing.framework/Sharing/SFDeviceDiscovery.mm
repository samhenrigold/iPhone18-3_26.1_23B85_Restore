@interface SFDeviceDiscovery
- (SFDeviceDiscovery)init;
- (SFDeviceDiscovery)initWithCoder:(id)coder;
- (id)description;
- (int)_ensureXPCStarted;
- (void)_activateWithCompletion:(id)completion;
- (void)_interrupted;
- (void)_invalidated;
- (void)_invokeBlockActivateSafe:(id)safe;
- (void)_retryConsole;
- (void)_startTimeoutIfNeeded;
- (void)_timeoutTimerFired;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)deviceDiscoveryDeviceChanged:(id)changed changes:(unsigned int)changes;
- (void)deviceDiscoveryFoundDevice:(id)device;
- (void)deviceDiscoveryLostDevice:(id)device;
- (void)deviceDiscoveryScanStateChanged:(int64_t)changed;
- (void)encodeWithCoder:(id)coder;
- (void)fastScanCancel:(id)cancel;
- (void)fastScanTrigger:(id)trigger;
- (void)invalidate;
- (void)setChangeFlags:(unsigned int)flags;
- (void)setDeviceFilter:(id)filter;
- (void)setDiscoveryFlags:(unint64_t)flags;
- (void)setDispatchQueue:(id)queue;
- (void)setFastScanMode:(int64_t)mode;
- (void)setOverrideScreenOff:(BOOL)off;
- (void)setOverrideScreenOffRescanInterval:(int64_t)interval;
- (void)setRssiChangeDetection:(BOOL)detection;
- (void)setRssiThreshold:(int64_t)threshold;
- (void)setScanCache:(BOOL)cache;
- (void)setScanRate:(int64_t)rate;
- (void)setTimeout:(double)timeout;
- (void)setTrackPeers:(BOOL)peers;
- (void)setUseCases:(id)cases;
- (void)triggerEnhancedDiscovery:(id)discovery;
- (void)triggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case completion:(id)completion;
@end

@implementation SFDeviceDiscovery

- (void)_startTimeoutIfNeeded
{
  timeout = self->_timeout;
  if (timeout > 0.0)
  {
    handler[7] = v2;
    handler[8] = v3;
    if (self->_scanState == 1 && !self->_timeoutFired && !self->_timeoutTimer)
    {
      if (gLogCategory_SFDeviceDiscovery <= 20)
      {
        if (gLogCategory_SFDeviceDiscovery == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_9;
          }

          timeout = self->_timeout;
        }

        LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery _startTimeoutIfNeeded]", 20, "Start timeout timer for %f seconds\n", timeout);
      }

LABEL_9:
      v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      timeoutTimer = self->_timeoutTimer;
      self->_timeoutTimer = v6;

      v8 = self->_timeoutTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __42__SFDeviceDiscovery__startTimeoutIfNeeded__block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v8, handler);
      SFDispatchTimerSet(self->_timeoutTimer, self->_timeout, 1.0, -4.0);
      dispatch_resume(self->_timeoutTimer);
    }
  }
}

- (id)description
{
  v49 = 0;
  NSAppendPrintF(&v49, "SFDeviceDiscovery");
  v3 = v49;
  v4 = v3;
  purpose = self->_purpose;
  if (purpose)
  {
    v48 = v3;
    v6 = purpose;
    NSAppendPrintF(&v48, " (%@)", v6);
    v7 = v48;

    v4 = v7;
  }

  if (self->_invalidateCalled)
  {
    v47 = v4;
    NSAppendPrintF(&v47, ", invalidated");
    v8 = v47;

    v4 = v8;
  }

  if (self->_legacy)
  {
    v46 = v4;
    NSAppendPrintF(&v46, ", legacy");
    v9 = v46;

    v4 = v9;
  }

  if ([(NSSet *)self->_deviceFilter count])
  {
    v45 = v4;
    NSAppendPrintF(&v45, ", %ld dfilters(s)", [(NSSet *)self->_deviceFilter count]);
    v10 = v45;

    v4 = v10;
  }

  v44 = v4;
  NSAppendPrintF(&v44, ", %#{flags}", self->_discoveryFlags, &unk_1A998F660);
  v11 = v44;

  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    if (changeFlags == -1)
    {
      v43 = v11;
      v13 = &v43;
      NSAppendPrintF(&v43, ", cflags < All >", v31, v32);
    }

    else
    {
      v42 = v11;
      v13 = &v42;
      NSAppendPrintF(&v42, ", cflags %#{flags}", changeFlags, &unk_1A998F77C);
    }

    v14 = *v13;

    v11 = v14;
  }

  v41 = v11;
  scanRate = self->_scanRate;
  if (scanRate > 9)
  {
    if (scanRate <= 29)
    {
      if (scanRate == 10)
      {
        v16 = "Background";
        goto LABEL_38;
      }

      if (scanRate == 20)
      {
        v16 = "Normal";
        goto LABEL_38;
      }
    }

    else
    {
      switch(scanRate)
      {
        case 30:
          v16 = "HighNormal";
          goto LABEL_38;
        case 40:
          v16 = "High";
          goto LABEL_38;
        case 50:
          v16 = "Aggressive";
          goto LABEL_38;
      }
    }
  }

  else if (scanRate <= 1)
  {
    if (!scanRate)
    {
      v16 = "Invalid";
      goto LABEL_38;
    }

    if (scanRate == 1)
    {
      v16 = "BackgroundOld";
      goto LABEL_38;
    }
  }

  else
  {
    switch(scanRate)
    {
      case 2:
        v16 = "NormalOld";
        goto LABEL_38;
      case 3:
        v16 = "HighOld";
        goto LABEL_38;
      case 4:
        v16 = "AggressiveOld";
        goto LABEL_38;
    }
  }

  v16 = "?";
LABEL_38:
  NSAppendPrintF(&v41, ", ScanRate %s", v16);
  v17 = v41;

  fastScanMode = self->_fastScanMode;
  if (fastScanMode)
  {
    v40 = v17;
    v19 = "?";
    if (fastScanMode == 1)
    {
      v19 = "Start";
    }

    if (fastScanMode == 2)
    {
      v20 = "Match";
    }

    else
    {
      v20 = v19;
    }

    NSAppendPrintF(&v40, ", FastScan %s", v20);
    v21 = v40;

    v17 = v21;
  }

  if (self->_overrideScreenOff)
  {
    v39 = v17;
    NSAppendPrintF(&v39, ", ScreenOff");
    v22 = v39;

    if (self->_overrideScreenOff && (overrideScreenOffRescanInterval = self->_overrideScreenOffRescanInterval) != 0)
    {
      v38 = v22;
      NSAppendPrintF(&v38, ", ScreenOffRescanInterval %ld", overrideScreenOffRescanInterval);
      v17 = v38;
    }

    else
    {
      v17 = v22;
    }
  }

  if (self->_rssiChangeDetection)
  {
    v37 = v17;
    NSAppendPrintF(&v37, ", RSSI Change Detection");
    v24 = v37;

    v17 = v24;
  }

  rssiThreshold = self->_rssiThreshold;
  if (rssiThreshold)
  {
    v36 = v17;
    NSAppendPrintF(&v36, ", RSSI >= %ld", rssiThreshold);
    v26 = v36;

    v17 = v26;
  }

  if (self->_scanCache)
  {
    v35 = v17;
    NSAppendPrintF(&v35, ", ScanCache");
    v27 = v35;

    v17 = v27;
  }

  if (self->_trackPeers)
  {
    v34 = v17;
    NSAppendPrintF(&v34, ", TrackPeers");
    v28 = v34;

    v17 = v28;
  }

  if (self->_xpcCnx)
  {
    v33 = v17;
    NSAppendPrintF(&v33, ", %ld device(s)", [(NSMutableDictionary *)self->_devices count]);
    v29 = v33;

    v17 = v29;
  }

  return v17;
}

- (void)dealloc
{
  if (!self->_activateCalled || self->_invalidateCalled || self->_invalidateDone)
  {
    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    scanStateChangedHandler = self->_scanStateChangedHandler;
    self->_scanStateChangedHandler = 0;

    timeoutHandler = self->_timeoutHandler;
    self->_timeoutHandler = 0;

    v11.receiver = self;
    v11.super_class = SFDeviceDiscovery;
    [(SFDeviceDiscovery *)&v11 dealloc];
  }

  else
  {
    [SFRemoteAutoFillService dealloc];
    [(SFService *)v9 advertiseRate];
  }
}

- (SFDeviceDiscovery)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceDiscovery;
  v2 = [(SFDeviceDiscovery *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_changeFlags = 1;
    v2->_discoveryFlags = 1;
    v4 = SFMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_legacy = 1;
    *&v3->_rssiThreshold = xmmword_1A998F650;
  }

  return v3;
}

- (int)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__SFDeviceDiscovery__ensureXPCStarted__block_invoke;
    v9[3] = &unk_1E788B198;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__SFDeviceDiscovery__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEC60];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceDiscovery _ensureXPCStarted];
    }
  }

  return 0;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SFDeviceDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __31__SFDeviceDiscovery_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 40) & 1) == 0)
  {
    v4 = a1;
    *(v3 + 40) = 1;
    if ((*(*(a1 + 32) + 41) & 1) == 0 && gLogCategory_SFDeviceDiscovery <= 30)
    {
      if (gLogCategory_SFDeviceDiscovery != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __31__SFDeviceDiscovery_invalidate__block_invoke_cold_1(a1, a2, a3);
      }
    }

    v5 = *(*(v4 + 32) + 24);
    if (v5)
    {
      v6 = v5;
      dispatch_source_cancel(v6);
      v7 = *(v4 + 32);
      v8 = *(v7 + 24);
      *(v7 + 24) = 0;
    }

    v9 = *(*(v4 + 32) + 48);
    if (v9)
    {
      v10 = v9;
      dispatch_source_cancel(v10);
      v11 = *(v4 + 32);
      v12 = *(v11 + 48);
      *(v11 + 48) = 0;
    }

    v13 = *(*(v4 + 32) + 56);
    if (v13)
    {
      [v13 invalidate];
      v14 = *(v4 + 32);
      v15 = *(v14 + 56);
      *(v14 + 56) = 0;
    }

    else
    {
      v16 = *(v4 + 32);

      [v16 _invalidated];
    }
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFDeviceDiscovery <= 50)
    {
      if (gLogCategory_SFDeviceDiscovery != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFDeviceDiscovery *)v3 _invalidated];
      }
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    consoleUserTimer = self->_consoleUserTimer;
    if (consoleUserTimer)
    {
      v8 = consoleUserTimer;
      dispatch_source_cancel(v8);
      v9 = self->_consoleUserTimer;
      self->_consoleUserTimer = 0;
    }

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v11 = timeoutTimer;
      dispatch_source_cancel(v11);
      v12 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    [(NSMutableDictionary *)self->_devices removeAllObjects];
    devices = self->_devices;
    self->_devices = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    deviceChangedHandler = self->_deviceChangedHandler;
    self->_deviceChangedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v18 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    scanStateChangedHandler = self->_scanStateChangedHandler;
    self->_scanStateChangedHandler = 0;

    timeoutHandler = self->_timeoutHandler;
    self->_timeoutHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFDeviceDiscovery <= 30)
    {
      if (gLogCategory_SFDeviceDiscovery != -1 || (v22 = _LogCategory_Initialize(), v22))
      {
        [(SFDeviceDiscovery *)v22 _invalidated];
      }
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_changeFlags forKey:@"changeFlags"];
  deviceFilter = self->_deviceFilter;
  if (deviceFilter)
  {
    [coderCopy encodeObject:deviceFilter forKey:@"deviceFilter"];
  }

  [coderCopy encodeInteger:self->_discoveryFlags forKey:@"discoveryFlags"];
  fastScanMode = self->_fastScanMode;
  if (fastScanMode)
  {
    [coderCopy encodeInteger:fastScanMode forKey:@"fastScanMode"];
  }

  if (self->_legacy)
  {
    [coderCopy encodeBool:1 forKey:@"legacy"];
  }

  v6 = coderCopy;
  if (self->_overrideScreenOff)
  {
    [coderCopy encodeBool:1 forKey:@"overrideScreenOff"];
    v6 = coderCopy;
  }

  overrideScreenOffRescanInterval = self->_overrideScreenOffRescanInterval;
  if (overrideScreenOffRescanInterval)
  {
    [coderCopy encodeInteger:overrideScreenOffRescanInterval forKey:@"osoitvl"];
    v6 = coderCopy;
  }

  purpose = self->_purpose;
  if (purpose)
  {
    [coderCopy encodeObject:purpose forKey:@"purpose"];
    v6 = coderCopy;
  }

  if (self->_rssiChangeDetection)
  {
    [coderCopy encodeBool:1 forKey:@"rssiChangeDetection"];
    v6 = coderCopy;
  }

  rssiThreshold = self->_rssiThreshold;
  if (rssiThreshold)
  {
    [coderCopy encodeInteger:rssiThreshold forKey:@"rssiThreshold"];
    v6 = coderCopy;
  }

  if (self->_scanCache)
  {
    [coderCopy encodeBool:1 forKey:@"scanCache"];
    v6 = coderCopy;
  }

  useCases = self->_useCases;
  if (useCases)
  {
    [coderCopy encodeObject:useCases forKey:@"useCases"];
    v6 = coderCopy;
  }

  scanRate = self->_scanRate;
  if (scanRate > 2)
  {
    if (scanRate == 20)
    {
      goto LABEL_33;
    }

    if (scanRate != 3)
    {
      goto LABEL_28;
    }

    v12 = 40;
  }

  else
  {
    if (scanRate != 1)
    {
      if (scanRate == 2)
      {
        goto LABEL_33;
      }

LABEL_28:
      if (scanRate == 4)
      {
        v12 = 50;
      }

      else
      {
        v12 = self->_scanRate;
      }

      goto LABEL_32;
    }

    v12 = 10;
  }

LABEL_32:
  [coderCopy encodeInteger:v12 forKey:@"scanRate"];
  v6 = coderCopy;
LABEL_33:
  if (self->_trackPeers)
  {
    [coderCopy encodeBool:1 forKey:@"trackPeers"];
    v6 = coderCopy;
  }
}

- (void)setChangeFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__SFDeviceDiscovery_setChangeFlags___block_invoke;
  v3[3] = &unk_1E788D970;
  v3[4] = self;
  flagsCopy = flags;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

uint64_t __36__SFDeviceDiscovery_setChangeFlags___block_invoke(uint64_t result)
{
  *(*(result + 32) + 72) = *(result + 40);
  *(*(result + 32) + 42) = 0;
  return result;
}

- (void)setDeviceFilter:(id)filter
{
  v4 = [filter copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SFDeviceDiscovery_setDeviceFilter___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v6];
}

void __37__SFDeviceDiscovery_setDeviceFilter___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  if ([*(a1 + 40) count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(*(a1 + 32) + 32) allKeys];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          if (([*(a1 + 40) containsObject:v7] & 1) == 0)
          {
            v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
            if (v8)
            {
              if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
              {
                __37__SFDeviceDiscovery_setDeviceFilter___block_invoke_cold_1(v8);
              }

              [*(*(a1 + 32) + 32) removeObjectForKey:v7];
              v9 = *(*(a1 + 32) + 96);
              if (v9)
              {
                (*(v9 + 16))(v9, v8);
              }
            }
          }

          ++v6;
        }

        while (v4 != v6);
        v10 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v4 = v10;
      }

      while (v10);
    }
  }
}

- (void)setDiscoveryFlags:(unint64_t)flags
{
  flagsCopy = flags & 0xFFFFFFEC | 0x10;
  if ((flags & 0xE47FFC0) == 0)
  {
    flagsCopy = flags;
  }

  if ((flagsCopy & 0x400000) != 0)
  {
    flagsCopy |= 0x60uLL;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SFDeviceDiscovery_setDiscoveryFlags___block_invoke;
  v4[3] = &unk_1E788B260;
  if ((flagsCopy & 0x40000) != 0)
  {
    flagsCopy |= 0x20060uLL;
  }

  v4[4] = self;
  v4[5] = flagsCopy;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v4];
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF("Attempt to set dispatch queue after activate has been called");
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)setFastScanMode:(int64_t)mode
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__SFDeviceDiscovery_setFastScanMode___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = mode;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setOverrideScreenOff:(BOOL)off
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__SFDeviceDiscovery_setOverrideScreenOff___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  offCopy = off;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setOverrideScreenOffRescanInterval:(int64_t)interval
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__SFDeviceDiscovery_setOverrideScreenOffRescanInterval___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = interval;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setRssiChangeDetection:(BOOL)detection
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__SFDeviceDiscovery_setRssiChangeDetection___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  detectionCopy = detection;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setRssiThreshold:(int64_t)threshold
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__SFDeviceDiscovery_setRssiThreshold___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = threshold;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setScanCache:(BOOL)cache
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SFDeviceDiscovery_setScanCache___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  cacheCopy = cache;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setScanRate:(int64_t)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__SFDeviceDiscovery_setScanRate___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = rate;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setTimeout:(double)timeout
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__SFDeviceDiscovery_setTimeout___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  *&v3[5] = timeout;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

double __32__SFDeviceDiscovery_setTimeout___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 192) = result;
  return result;
}

- (void)setTrackPeers:(BOOL)peers
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__SFDeviceDiscovery_setTrackPeers___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  peersCopy = peers;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v3];
}

- (void)setUseCases:(id)cases
{
  casesCopy = cases;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__SFDeviceDiscovery_setUseCases___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = casesCopy;
  v5 = casesCopy;
  [(SFDeviceDiscovery *)self _invokeBlockActivateSafe:v6];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFDeviceDiscovery_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceDiscovery _activateWithCompletion:?];
  }

  if (self->_invalidateCalled)
  {
    [(SFDeviceDiscovery *)completionCopy _activateWithCompletion:v19, v20];
  }

  else
  {
    if (!self->_purpose)
    {
      v5 = getprogname();
      if (v5)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
        purpose = self->_purpose;
        self->_purpose = v6;
      }
    }

    self->_activateTicks = mach_absolute_time();
    _ensureXPCStarted = [(SFDeviceDiscovery *)self _ensureXPCStarted];
    if (_ensureXPCStarted)
    {
      if (gLogCategory_SFDeviceDiscovery <= 50)
      {
        v9 = _ensureXPCStarted;
        if (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize())
        {
          [SFDeviceDiscovery _activateWithCompletion:v9];
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v10, &state);
      xpcCnx = self->_xpcCnx;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __45__SFDeviceDiscovery__activateWithCompletion___block_invoke;
      v16[3] = &unk_1E788B6D8;
      v12 = completionCopy;
      v17 = v12;
      v13 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __45__SFDeviceDiscovery__activateWithCompletion___block_invoke_2;
      v14[3] = &unk_1E788B6D8;
      v15 = v12;
      [v13 deviceDiscoveryActivate:self completion:v14];

      os_activity_scope_leave(&state);
    }
  }
}

uint64_t __45__SFDeviceDiscovery__activateWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __45__SFDeviceDiscovery__activateWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fastScanTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryFastScanTrigger", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SFDeviceDiscovery_fastScanTrigger___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = triggerCopy;
  selfCopy = self;
  v7 = triggerCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __37__SFDeviceDiscovery_fastScanTrigger___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    __37__SFDeviceDiscovery_fastScanTrigger___block_invoke_cold_1(a1);
  }

  v2 = [*(*(a1 + 40) + 56) remoteObjectProxy];
  [v2 deviceDiscoveryFastScanTrigger:*(a1 + 32)];
}

- (void)fastScanCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryFastScanCancel", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SFDeviceDiscovery_fastScanCancel___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = cancelCopy;
  selfCopy = self;
  v7 = cancelCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __36__SFDeviceDiscovery_fastScanCancel___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    __36__SFDeviceDiscovery_fastScanCancel___block_invoke_cold_1(a1);
  }

  *(*(a1 + 40) + 128) = 0;
  v2 = [*(*(a1 + 40) + 56) remoteObjectProxy];
  [v2 deviceDiscoveryFastScanCancel:*(a1 + 32)];
}

- (void)triggerEnhancedDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryTrigggerEnhancedDiscovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SFDeviceDiscovery_triggerEnhancedDiscovery___block_invoke;
  v8[3] = &unk_1E788A658;
  v9 = discoveryCopy;
  selfCopy = self;
  v7 = discoveryCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __46__SFDeviceDiscovery_triggerEnhancedDiscovery___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    __46__SFDeviceDiscovery_triggerEnhancedDiscovery___block_invoke_cold_1(a1);
  }

  v2 = [*(*(a1 + 40) + 56) remoteObjectProxy];
  [v2 deviceDiscoveryTriggerEnhancedDiscovery:*(a1 + 32)];
}

- (void)triggerEnhancedDiscovery:(id)discovery useCase:(unsigned int)case completion:(id)completion
{
  discoveryCopy = discovery;
  completionCopy = completion;
  v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryTrigggerEnhancedDiscovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke;
  v14[3] = &unk_1E788EAB8;
  caseCopy = case;
  v15 = discoveryCopy;
  selfCopy = self;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = discoveryCopy;
  dispatch_async(dispatchQueue, v14);

  os_activity_scope_leave(&state);
}

void __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceDiscovery <= 30 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke_cold_1(a1);
  }

  v2 = [*(*(a1 + 40) + 56) remoteObjectProxy];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke_2;
  v5[3] = &unk_1E788BF88;
  v6 = v3;
  v7 = *(a1 + 48);
  [v2 deviceDiscoveryTriggerEnhancedDiscovery:v6 useCase:v4 completion:v5];
}

void __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    if (gLogCategory_SFDeviceDiscovery <= 60)
    {
      if (gLogCategory_SFDeviceDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery triggerEnhancedDiscovery:useCase:completion:]_block_invoke_2", 60, "### Trigger enhanced discovery '%@' error: %{error}\n", *(a1 + 32), v3);
        v3 = v6;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
    v3 = v6;
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 50)
  {
    if (gLogCategory_SFDeviceDiscovery != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(SFDeviceDiscovery *)v3 _interrupted];
    }
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;

  if (self->_activateCalled)
  {
    _ensureXPCStarted = [(SFDeviceDiscovery *)self _ensureXPCStarted];
    if (_ensureXPCStarted)
    {
      if (gLogCategory_SFDeviceDiscovery <= 50)
      {
        v9 = _ensureXPCStarted;
        if (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize())
        {
          [(SFDeviceDiscovery *)v9 _interrupted];
        }
      }
    }

    else
    {
      v10 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      v12.opaque[0] = 0;
      v12.opaque[1] = 0;
      os_activity_scope_enter(v10, &v12);
      if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery _interrupted]", 50, "Restarting after interruption\n");
      }

      remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
      [remoteObjectProxy deviceDiscoveryActivate:self completion:&__block_literal_global_41];

      os_activity_scope_leave(&v12);
    }
  }
}

void __33__SFDeviceDiscovery__interrupted__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFDeviceDiscovery <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFDeviceDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __33__SFDeviceDiscovery__interrupted__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

- (void)_invokeBlockActivateSafe:(id)safe
{
  safeCopy = safe;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    v6 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v6, &state);
    dispatchQueue = selfCopy->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__SFDeviceDiscovery__invokeBlockActivateSafe___block_invoke;
    v8[3] = &unk_1E788B318;
    v8[4] = selfCopy;
    v9 = safeCopy;
    dispatch_async(dispatchQueue, v8);

    os_activity_scope_leave(&state);
  }

  else
  {
    safeCopy[2](safeCopy);
  }

  objc_sync_exit(selfCopy);
}

uint64_t __46__SFDeviceDiscovery__invokeBlockActivateSafe___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 56) remoteObjectProxy];
  [v2 deviceDiscoveryUpdate:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 _startTimeoutIfNeeded];
}

- (void)_retryConsole
{
  consoleUserTimer = self->_consoleUserTimer;
  if (consoleUserTimer)
  {
    v4 = consoleUserTimer;
    dispatch_source_cancel(v4);
    v5 = self->_consoleUserTimer;
    self->_consoleUserTimer = 0;
  }

  _ensureXPCStarted = [(SFDeviceDiscovery *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (gLogCategory_SFDeviceDiscovery <= 50)
    {
      v7 = _ensureXPCStarted;
      if (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize())
      {
        [(SFDeviceDiscovery *)v7 _retryConsole];
      }
    }
  }

  else
  {
    v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFDeviceDiscovery/deviceDiscoveryActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10.opaque[0] = 0;
    v10.opaque[1] = 0;
    os_activity_scope_enter(v8, &v10);
    if (gLogCategory_SFDeviceDiscovery <= 50 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery _retryConsole]", 50, "Starting after console retry\n");
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy deviceDiscoveryActivate:self completion:&__block_literal_global_311];

    os_activity_scope_leave(&v10);
  }
}

void __34__SFDeviceDiscovery__retryConsole__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFDeviceDiscovery <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFDeviceDiscovery != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __34__SFDeviceDiscovery__retryConsole__block_invoke_cold_1(v3);
      v3 = v5;
    }
  }
}

- (void)_timeoutTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 20 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceDiscovery _timeoutTimerFired];
  }

  self->_timeoutFired = 1;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v4 = timeoutTimer;
    dispatch_source_cancel(v4);
    v5 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  timeoutHandler = self->_timeoutHandler;
  if (timeoutHandler)
  {
    timeoutHandler[2]();
    timeoutHandler = self->_timeoutHandler;
  }

  self->_timeoutHandler = 0;
}

- (void)deviceDiscoveryScanStateChanged:(int64_t)changed
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_scanState = changed;
  scanStateChangedHandler = self->_scanStateChangedHandler;
  if (scanStateChangedHandler)
  {
    scanStateChangedHandler[2](scanStateChangedHandler, changed);
  }

  [(SFDeviceDiscovery *)self _startTimeoutIfNeeded];
}

- (SFDeviceDiscovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = SFDeviceDiscovery;
  v5 = [(SFDeviceDiscovery *)&v31 init];
  if (v5)
  {
    v6 = SFMainQueue();
    v7 = *(v5 + 15);
    *(v5 + 15) = v6;

    *(v5 + 168) = xmmword_1A998F650;
    if ([coderCopy containsValueForKey:@"changeFlags"])
    {
      *(v5 + 18) = [coderCopy decodeIntegerForKey:@"changeFlags"];
    }

    v8 = [coderCopy containsValueForKey:@"deviceFilter"];
    v9 = MEMORY[0x1E695D940];
    if (v8)
    {
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"deviceFilter"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = MEMORY[0x1E695DF30];
        v15 = *v9;
        v16 = _NSMethodExceptionProem();
        [v14 raise:v15 format:{@"%@: non-set value for key %@ : %@", v16, @"deviceFilter", v13}];

        v9 = MEMORY[0x1E695D940];
      }

      v17 = *(v5 + 10);
      *(v5 + 10) = v13;
    }

    if ([coderCopy containsValueForKey:@"discoveryFlags"])
    {
      *(v5 + 14) = [coderCopy decodeIntegerForKey:@"discoveryFlags"];
    }

    v18 = coderCopy;
    if ([v18 containsValueForKey:@"fastScanMode"])
    {
      *(v5 + 16) = [v18 decodeIntegerForKey:@"fastScanMode"];
    }

    if ([v18 containsValueForKey:@"legacy"])
    {
      v5[42] = [v18 decodeBoolForKey:@"legacy"];
    }

    if ([v18 containsValueForKey:@"overrideScreenOff"])
    {
      v5[64] = [v18 decodeBoolForKey:@"overrideScreenOff"];
    }

    if ([v18 containsValueForKey:@"osoitvl"])
    {
      *(v5 + 19) = [v18 decodeIntegerForKey:@"osoitvl"];
    }

    v19 = v18;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if ([v19 containsValueForKey:@"rssiChangeDetection"])
    {
      v5[65] = [v19 decodeBoolForKey:@"rssiChangeDetection"];
    }

    if ([v19 containsValueForKey:@"rssiThreshold"])
    {
      *(v5 + 21) = [v19 decodeIntegerForKey:@"rssiThreshold"];
    }

    if ([v19 containsValueForKey:@"scanCache"])
    {
      v5[66] = [v19 decodeBoolForKey:@"scanCache"];
    }

    if ([v19 containsValueForKey:@"scanRate"])
    {
      *(v5 + 22) = [v19 decodeIntegerForKey:@"scanRate"];
    }

    v20 = v19;
    if ([v20 containsValueForKey:@"trackPeers"])
    {
      v5[68] = [v20 decodeBoolForKey:@"trackPeers"];
    }

    if ([v20 containsValueForKey:@"useCases"])
    {
      v21 = MEMORY[0x1E695DFD8];
      v22 = objc_opt_class();
      v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
      v24 = [v20 decodeObjectOfClasses:v23 forKey:@"useCases"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = MEMORY[0x1E695DF30];
        v26 = *v9;
        v27 = _NSMethodExceptionProem();
        [v25 raise:v26 format:{@"%@: non-set value for key %@ : %@", v27, @"deviceFilter", v24}];
      }

      v28 = *(v5 + 26);
      *(v5 + 26) = v24;
    }

    v29 = v5;
  }

  return v5;
}

- (void)deviceDiscoveryFoundDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 9 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery deviceDiscoveryFoundDevice:]", 9, "Found device %@\n", deviceCopy);
  }

  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

    devices = self->_devices;
    if (v5)
    {
      [(NSMutableDictionary *)devices setObject:deviceCopy forKeyedSubscript:identifier];
      v7 = _Block_copy(self->_deviceChangedHandler);
      if (!v7)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v8 = deviceCopy;
      if (!devices)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = self->_devices;
        self->_devices = v9;

        v8 = deviceCopy;
        devices = self->_devices;
      }

      [(NSMutableDictionary *)devices setObject:v8 forKeyedSubscript:identifier];
      v7 = _Block_copy(self->_deviceFoundHandler);
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v11 = OUTLINED_FUNCTION_2_11();
    v12(v11);
    goto LABEL_13;
  }

LABEL_14:
}

- (void)deviceDiscoveryLostDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 9 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery deviceDiscoveryLostDevice:]", 9, "Lost device %@\n", deviceCopy);
  }

  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
    if (v5)
    {
      [(NSMutableDictionary *)self->_devices removeObjectForKey:identifier];
      [v5 setIsBLEDeviceReplaced:{objc_msgSend(deviceCopy, "isBLEDeviceReplaced")}];
      deviceLostHandler = self->_deviceLostHandler;
      if (deviceLostHandler)
      {
        deviceLostHandler[2](deviceLostHandler, v5);
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

- (void)deviceDiscoveryDeviceChanged:(id)changed changes:(unsigned int)changes
{
  v4 = *&changes;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDeviceDiscovery <= 9 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery deviceDiscoveryDeviceChanged:changes:]", 9, "Device changed %@, Changes %#{flags}\n", changedCopy, v4, &unk_1A998F77C);
  }

  identifier = [changedCopy identifier];
  if (identifier)
  {
    [(NSMutableDictionary *)self->_devices setObject:changedCopy forKeyedSubscript:identifier];
    if (self->_legacy)
    {
      deviceFoundHandler = self->_deviceFoundHandler;
      if (deviceFoundHandler)
      {
        deviceFoundHandler[2](deviceFoundHandler, changedCopy);
      }
    }

    deviceChangedHandler = self->_deviceChangedHandler;
    if (deviceChangedHandler)
    {
      deviceChangedHandler[2](deviceChangedHandler, changedCopy, v4);
    }
  }
}

- (uint64_t)_activateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (*(a1 + 67))
  {
    v1 = "(TargetUserSession)";
  }

  else
  {
    v1 = "";
  }

  return LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery _activateWithCompletion:]", 30, "Activate %s\n", v1);
}

- (void)_activateWithCompletion:(__CFString *)a3 .cold.3(uint64_t a1, void *a2, __CFString **a3)
{
  if (gLogCategory_SFDeviceDiscovery <= 60 && (gLogCategory_SFDeviceDiscovery != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery _activateWithCompletion:]", 60, "### Activate failed: %#m\n", 4294960572);
  }

  if (a1)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    *a2 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v9 = v8;
    v10 = @"?";
    if (v8)
    {
      v10 = v8;
    }

    *a3 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:1];
    v12 = [v6 errorWithDomain:v7 code:-6724 userInfo:v11];
    (*(a1 + 16))(a1, v12);
  }
}

uint64_t __65__SFDeviceDiscovery_triggerEnhancedDiscovery_useCase_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *(a1 + 56);
  if (!v2 & v1)
  {
    switch(v5)
    {
      case 196608:
        v6 = "DigitalIDTSA";
        break;
      case 262144:
        v6 = "DigitalCarKeyThirdParty";
        break;
      case 327680:
        v6 = "RapportThirdParty";
        break;
      case 458752:
        v6 = "PrecisionFindingFinder";
        break;
      case 458753:
        v6 = "PrecisionFindingFindee";
        break;
      case 458754:
        v6 = "SpatialHandoffHome";
        break;
      case 589824:
        v6 = "FindNearbyRemote";
        break;
      case 589825:
        v6 = "FindNearbyPencil";
        break;
      case 655360:
        v6 = "AccessDigitalHomeKey";
        break;
      case 720896:
        v6 = "SoftwareUpdateBTWake";
        break;
      case 720897:
        v6 = "SofrwareUpdateOutboxControllerAuth";
        break;
      case 786432:
        v6 = "ProxControlDeviceClose";
        break;
      case 851968:
        v6 = "DCTProtocolTelephony";
        break;
      case 851969:
        v6 = "DCTProtocolDataAndTelephony";
        break;
      case 917504:
        v6 = "NearbyFaceTime";
        break;
      case 917505:
        v6 = "NearbyFaceTimeData";
        break;
      case 1048576:
        v6 = "DOS";
        break;
      case 1048577:
        v6 = "DOD";
        break;
      case 1114112:
        v6 = "ProximityServiceDeviceSetup";
        break;
      default:
        v6 = "?";
        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 65536:
        v6 = "FindMyAction";
        break;
      case 65537:
        v6 = "FindMyBackground";
        break;
      case 65538:
        v6 = "FindMyActionHELE";
        break;
      case 65539:
        v6 = "FindMyBackgroundHELE";
        break;
      case 65540:
        v6 = "FindMyActionTransient";
        break;
      case 65541:
        v6 = "FindMyBackgroundTransient";
        break;
      case 65542:
        v6 = "FindMyActionHELETransient";
        break;
      case 65543:
        v6 = "FindMyBackgroundHELETransient";
        break;
      case 65544:
        v6 = "FindMyNotOptedIn";
        break;
      case 65545:
        v6 = "FindMyOptedIn";
        break;
      case 65546:
        v6 = "FindMySepAlertsEnabled";
        break;
      case 65547:
        v6 = "FindMyTemporaryAggressiveLegacy";
        break;
      case 65548:
        v6 = "FindMyTemporaryLongAggressive";
        break;
      case 65549:
        v6 = "FindMyBTFindingUserInitiated";
        break;
      case 65550:
        v6 = "FindMyHELE";
        break;
      case 65551:
        v6 = "FindMyBeaconOnDemand";
        break;
      case 65552:
        v6 = "FindMyWildTimedScan";
        break;
      case 65553:
        v6 = "FindMyBackgroundLeechScan";
        break;
      case 65554:
        v6 = "FindMySnifferMode";
        break;
      case 65555:
        v6 = "FindMyUnpair";
        break;
      case 65556:
        v6 = "FindMyUnpairHELE";
        break;
      case 65557:
        v6 = "FindMyPlaySound";
        break;
      case 65558:
        v6 = "FindMyPlaySoundHELE";
        break;
      case 65559:
        v6 = "FindMyNotOptedInBeepOnMoveWaking";
        break;
      case 65560:
        v6 = "FindMyUTTransient";
        break;
      case 65561:
        v6 = "FindMyUTHELETransient";
        break;
      case 65562:
        v6 = "FindMyActionExtendedRange";
        break;
      case 65563:
        v6 = "FindMyActionExtendedRangeLE2M";
        break;
      case 65564:
        v6 = "FindMyActionExtendedRangeTransient";
        break;
      case 65565:
        v6 = "FindMyPlaySoundExtendedRange";
        break;
      case 65566:
        v6 = "FindMyPair";
        break;
      case 65567:
        v6 = "FindMyTemporaryAggressiveLegacyExtendedRange";
        break;
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t __33__SFDeviceDiscovery__interrupted__block_invoke_cold_1(__CFString *a1)
{
  v1 = @"no error";
  if (a1)
  {
    v1 = a1;
  }

  return LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery _interrupted]_block_invoke", 30, "Restart completed: %@\n", v1);
}

uint64_t __34__SFDeviceDiscovery__retryConsole__block_invoke_cold_1(__CFString *a1)
{
  v1 = @"no error";
  if (a1)
  {
    v1 = a1;
  }

  return LogPrintF(&gLogCategory_SFDeviceDiscovery, "[SFDeviceDiscovery _retryConsole]_block_invoke", 30, "Start after console retry completed: %@\n", v1);
}

@end