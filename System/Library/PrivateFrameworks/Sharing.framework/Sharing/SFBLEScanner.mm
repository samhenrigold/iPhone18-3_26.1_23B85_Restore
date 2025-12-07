@interface SFBLEScanner
- (BOOL)_needDups;
- (BOOL)_updateCounterpart:(id)counterpart;
- (BOOL)_watchSetupParseData:(id)data fields:(id)fields;
- (BOOL)pairingUpdatePairedInfo:(id)info fields:(id)fields bleDevice:(id)device;
- (BOOL)pairingUpdatePairedInfoMB:(id)b fields:(id)fields bleDevice:(id)device;
- (NSString)description;
- (SFBLEScanner)initWithType:(int64_t)type;
- (id)_useCasesToString:(id)string;
- (id)modelWithProductID:(unsigned __int16)d;
- (id)pairingParsePayload:(id)payload identifier:(id)identifier bleDevice:(id)device peerInfo:(id)info;
- (int)_btSessionEnsureStarted;
- (unsigned)statusToHeadsetStatus:(unsigned __int8)status forProductID:(unsigned __int16)d;
- (void)_activateWithCompletion:(id)completion;
- (void)_btSessionEnsureStopped;
- (void)_foundDevice:(id)device advertisementData:(id)data rssi:(int64_t)rssi fields:(id)fields;
- (void)_invalidate;
- (void)_invokeBlockActivateSafe:(id)safe;
- (void)_nearbyParseManufacturerData:(id)data fields:(id)fields;
- (void)_nearbyParseNearbyActionPtr:(const char *)ptr end:(const char *)end fields:(id)fields;
- (void)_nearbyParseNearbyInfoPtr:(const char *)ptr end:(const char *)end fields:(id)fields;
- (void)_poweredOff;
- (void)_poweredOn;
- (void)_recordDevice:(id)device data:(id)data rssi:(id)rssi info:(id)info;
- (void)_removeAllDevicesWithReason:(id)reason;
- (void)_rescanLostFired;
- (void)_rescanTimerFired;
- (void)_restartIfNeeded:(BOOL)needed;
- (void)_rssiLogClose;
- (void)_rssiLogOpen;
- (void)_startTimeoutIfNeeded;
- (void)_timeoutTimerFired;
- (void)_updateRescanTimer;
- (void)_updateTrackedPeers;
- (void)_watchSetupParseName:(id)name fields:(id)fields;
- (void)activateWithCompletion:(id)completion;
- (void)awdl:(id)awdl failedToStartScanningWithError:(id)error;
- (void)awdl:(id)awdl foundDevice:(id)device rssi:(id)rssi;
- (void)awdlDidUpdateState:(id)state;
- (void)awdlStartedScanning:(id)scanning;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)foundAWDLDevice:(id)device rssi:(id)rssi;
- (void)foundNearbyDevice:(id)device data:(id)data peerInfo:(id)info;
- (void)foundPairingDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info withTimeInMachContSeconds:(double)seconds;
- (void)foundPeripheralDevice:(id)device advertisementData:(id)data RSSI:(id)i;
- (void)invalidate;
- (void)nearby:(id)nearby didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info;
- (void)nearby:(id)nearby didFailToStartScanningForType:(int64_t)type WithError:(id)error;
- (void)nearby:(id)nearby didLosePeer:(id)peer type:(int64_t)type;
- (void)nearby:(id)nearby didStartScanningForType:(int64_t)type;
- (void)nearbyDidUpdateState:(id)state;
- (void)pairing:(id)pairing failedToStartScanningWithError:(id)error;
- (void)pairing:(id)pairing foundDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info;
- (void)pairingDidUpdateState:(id)state;
- (void)pairingParseAccessoryStatusPayloadPtr:(const char *)ptr end:(const char *)end fields:(id)fields;
- (void)pairingStartedScanning:(id)scanning;
- (void)parseStatus3:(unsigned __int8)status3 productID:(unsigned int)d caseLEDColor:(unsigned __int8 *)color caseLEDStatus:(char *)status;
- (void)performUpdate:(id)update;
- (void)setChangeFlags:(unsigned int)flags;
- (void)setDeviceFilter:(id)filter;
- (void)setDispatchQueue:(id)queue;
- (void)setPayloadFilterData:(id)data mask:(id)mask;
- (void)setRssiThreshold:(int64_t)threshold;
- (void)setScanCache:(BOOL)cache;
- (void)setScanRate:(int64_t)rate;
- (void)setTimeout:(double)timeout;
- (void)setTrackedPeers:(id)peers;
- (void)setUseCases:(id)cases;
@end

@implementation SFBLEScanner

- (void)_updateRescanTimer
{
  v3 = [(NSMutableDictionary *)self->_devices count];
  v4 = v3;
  if (self->_rescanInterval > 0.0 && v3 != 0)
  {
    if (v3 >= 0x15)
    {
      rescanIntervalScreenOff = 60;
    }

    else
    {
      rescanIntervalScreenOff = 10;
    }

    if (([gSFNearbyAgent screenOn] & 1) == 0 && rescanIntervalScreenOff <= SLODWORD(self->_rescanIntervalScreenOff))
    {
      rescanIntervalScreenOff = self->_rescanIntervalScreenOff;
    }

    if (self->_rescanTimer)
    {
      if (rescanIntervalScreenOff == self->_rescanSecondsActual)
      {
        return;
      }

      ucat = self->_ucat;
      if (ucat->var0 > 30)
      {
        goto LABEL_32;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFBLEScanner _updateRescanTimer]", 30, "Rescan timer update: %d seconds, %d device(s)\n", rescanIntervalScreenOff, v4);
LABEL_32:
      CUDispatchTimerSet();
      goto LABEL_33;
    }

    v9 = self->_ucat;
    if (v9->var0 <= 30)
    {
      if (v9->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v9 = self->_ucat;
      }

      LogPrintF(v9, "[SFBLEScanner _updateRescanTimer]", 30, "Rescan timer start: %d seconds, %d device(s)\n", rescanIntervalScreenOff, v4);
    }

LABEL_30:
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    rescanTimer = self->_rescanTimer;
    self->_rescanTimer = v12;

    v14 = self->_rescanTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __34__SFBLEScanner__updateRescanTimer__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    CUDispatchTimerSet();
    dispatch_activate(self->_rescanTimer);
LABEL_33:
    self->_rescanSecondsActual = rescanIntervalScreenOff;
    return;
  }

  if (!self->_rescanTimer)
  {
    return;
  }

  v6 = self->_ucat;
  if (v6->var0 <= 30)
  {
    if (v6->var0 != -1)
    {
LABEL_9:
      LogPrintF(v6, "[SFBLEScanner _updateRescanTimer]", 30, "Rescan timer stop: %d device(s)\n", v4);
      goto LABEL_25;
    }

    if (_LogCategory_Initialize())
    {
      v6 = self->_ucat;
      goto LABEL_9;
    }
  }

LABEL_25:
  v10 = self->_rescanTimer;
  if (v10)
  {
    v15 = v10;
    dispatch_source_cancel(v10);
    v11 = self->_rescanTimer;
    self->_rescanTimer = 0;
  }
}

- (void)_rescanLostFired
{
  v23 = *MEMORY[0x1E69E9840];
  lostTimer = self->_lostTimer;
  if (lostTimer)
  {
    v4 = lostTimer;
    dispatch_source_cancel(v4);
    v5 = self->_lostTimer;
    self->_lostTimer = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [(NSMutableDictionary *)self->_devices allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v11];
        [v12 lastSeen];
        if (v13 == 0.0)
        {
          ucat = self->_ucat;
          if (ucat->var0 <= 8)
          {
            if (ucat->var0 != -1)
            {
              goto LABEL_11;
            }

            if (_LogCategory_Initialize())
            {
              ucat = self->_ucat;
LABEL_11:
              LogPrintF(ucat, "[SFBLEScanner _rescanLostFired]", 8, "Lost aged %@\n", v12);
            }
          }

          v15 = _Block_copy(self->_deviceLostHandler);
          v16 = v15;
          if (v15)
          {
            (*(v15 + 2))(v15, v12);
          }

          [(NSMutableDictionary *)self->_devices removeObjectForKey:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v17 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v17;
    }

    while (v17);
  }
}

- (void)_updateTrackedPeers
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(NSSet *)self->_trackedPeers count]&& !self->_invalidateCalled)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = self->_trackedPeersApplied;
    v13 = [(NSSet *)v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = v13;
    v15 = *v38;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v37 + 1) + 8 * v16);
        if (![(NSSet *)self->_trackedPeers containsObject:v17])
        {
          ucat = self->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 != -1)
            {
              goto LABEL_26;
            }

            if (_LogCategory_Initialize())
            {
              ucat = self->_ucat;
LABEL_26:
              LogPrintF(ucat, "[SFBLEScanner _updateTrackedPeers]", 30, "Stop tracking peer %@\n", v17);
            }
          }

          [(WPNearby *)self->_wpNearby stopTrackingPeer:v17 forType:self->_wpNearbyType];
        }

        ++v16;
      }

      while (v14 != v16);
      v19 = [(NSSet *)v12 countByEnumeratingWithState:&v37 objects:v43 count:16];
      v14 = v19;
      if (!v19)
      {
LABEL_33:

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = self->_trackedPeers;
        v21 = [(NSSet *)v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (!v21)
        {
LABEL_48:

          v28 = self->_trackedPeers;
          trackedPeersApplied = self->_trackedPeersApplied;
          self->_trackedPeersApplied = v28;
LABEL_49:

          return;
        }

        v22 = v21;
        v23 = *v34;
        while (2)
        {
          v24 = 0;
LABEL_36:
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v33 + 1) + 8 * v24);
          if (![(NSSet *)self->_trackedPeersApplied containsObject:v25])
          {
            v26 = self->_ucat;
            if (v26->var0 <= 30)
            {
              if (v26->var0 != -1)
              {
                goto LABEL_41;
              }

              if (_LogCategory_Initialize())
              {
                v26 = self->_ucat;
LABEL_41:
                LogPrintF(v26, "[SFBLEScanner _updateTrackedPeers]", 30, "Start tracking peer %@\n", v25);
              }
            }

            [(WPNearby *)self->_wpNearby startTrackingPeer:v25 forType:self->_wpNearbyType];
          }

          if (v22 == ++v24)
          {
            v27 = [(NSSet *)v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
            v22 = v27;
            if (!v27)
            {
              goto LABEL_48;
            }

            continue;
          }

          goto LABEL_36;
        }
      }
    }
  }

  if ([(NSSet *)self->_trackedPeersApplied count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v3 = self->_trackedPeersApplied;
    v4 = [(NSSet *)v3 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = v4;
    v6 = *v30;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = self->_ucat;
        if (v9->var0 <= 30)
        {
          if (v9->var0 != -1)
          {
            goto LABEL_11;
          }

          if (_LogCategory_Initialize())
          {
            v9 = self->_ucat;
LABEL_11:
            LogPrintF(v9, "[SFBLEScanner _updateTrackedPeers]", 30, "Stop tracking peer %@\n", v8);
          }
        }

        [(WPNearby *)self->_wpNearby stopTrackingPeer:v8 forType:self->_wpNearbyType];
        ++v7;
      }

      while (v5 != v7);
      v10 = [(NSSet *)v3 countByEnumeratingWithState:&v29 objects:v41 count:16];
      v5 = v10;
      if (!v10)
      {
LABEL_17:

        trackedPeersApplied = self->_trackedPeersApplied;
        self->_trackedPeersApplied = 0;
        goto LABEL_49;
      }
    }
  }
}

- (BOOL)_needDups
{
  v34 = *MEMORY[0x1E69E9840];
  payloadType = self->_payloadType;
  if (payloadType != 15)
  {
    if (payloadType != 7)
    {
      LOBYTE(screenOn) = [(NSMutableDictionary *)self->_devices count]!= 0;
      return screenOn;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = self->_devices;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
          advertisementFields = [v9 advertisementFields];
          if (CFDictionaryGetInt64() || ((Int64Ranged = CFDictionaryGetInt64Ranged(), (Int64Ranged & 0x12) != 0) ? (v12 = (Int64Ranged & 0x200) == 0) : (v12 = 0), v12 || ((v13 = CFDictionaryGetInt64Ranged(), v13 != 5) ? (v14 = v13 == 9) : (v14 = 1), v14)))
          {

            goto LABEL_36;
          }
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_32;
  }

  screenOn = [gSFNearbyAgent screenOn];
  if (screenOn)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = self->_devices;
    v16 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v4);
          }

          v20 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v24 + 1) + 8 * j), v24];
          advertisementFields2 = [v20 advertisementFields];

          if (CFDictionaryGetInt64() || CFDictionaryGetInt64() && CFDictionaryGetInt64Ranged() - 50 > 0x1E)
          {

LABEL_36:
            LOBYTE(screenOn) = 1;
            return screenOn;
          }

          v22 = CFDictionaryGetInt64Ranged();

          if ((v22 & 0x10) != 0)
          {
            goto LABEL_36;
          }
        }

        v17 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    LOBYTE(screenOn) = 0;
  }

  return screenOn;
}

- (void)_rescanTimerFired
{
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!self->_poweredOffSleep)
  {
    if (var0 > 10)
    {
      goto LABEL_13;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_13:
        _needActiveScan = [(SFBLEScanner *)self _needActiveScan];
        activeScan = self->_activeScan;
        if (activeScan == _needActiveScan)
        {
LABEL_25:
          if (![(NSMutableDictionary *)self->_devices count])
          {
            if (!self->_needDups)
            {
              if (activeScan == _needActiveScan)
              {
                return;
              }

              goto LABEL_26;
            }

            self->_needDups = 0;
            v14 = self->_ucat;
            if (v14->var0 <= 30)
            {
              if (v14->var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_26;
                }

                v14 = self->_ucat;
              }

              LogPrintF(v14, "[SFBLEScanner _rescanTimerFired]", 30, "Enabling duplicate filter since rescan timer fired");
            }
          }

LABEL_26:
          if (!self->_lostTimer)
          {
            [(NSMutableDictionary *)self->_devices enumerateKeysAndObjectsUsingBlock:&__block_literal_global_33];
            v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
            lostTimer = self->_lostTimer;
            self->_lostTimer = v11;

            v13 = self->_lostTimer;
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __33__SFBLEScanner__rescanTimerFired__block_invoke_2;
            handler[3] = &unk_1E788B198;
            handler[4] = self;
            dispatch_source_set_event_handler(v13, handler);
            CUDispatchTimerSet();
            dispatch_activate(self->_lostTimer);
          }

          [(SFBLEScanner *)self _restartIfNeeded:1];
          return;
        }

        v7 = self->_ucat;
        if (v7->var0 <= 30)
        {
          if (v7->var0 != -1)
          {
            v8 = self->_activeScan;
LABEL_17:
            v9 = "no";
            if (v8)
            {
              v10 = "yes";
            }

            else
            {
              v10 = "no";
            }

            if (_needActiveScan)
            {
              v9 = "yes";
            }

            LogPrintF(v7, "[SFBLEScanner _rescanTimerFired]", 30, "Changing active scan %s -> %s on rescan timer\n", v10, v9);
            goto LABEL_24;
          }

          if (_LogCategory_Initialize())
          {
            v7 = self->_ucat;
            v8 = self->_activeScan;
            goto LABEL_17;
          }
        }

LABEL_24:
        self->_activeScan = _needActiveScan;
        goto LABEL_25;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner _rescanTimerFired]", 10, "Rescan timer: %d devices\n", [(NSMutableDictionary *)self->_devices count]);
    goto LABEL_13;
  }

  if (var0 > 30)
  {
    return;
  }

  if (var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      return;
    }

    ucat = self->_ucat;
  }

  LogPrintF(ucat, "[SFBLEScanner _rescanTimerFired]", 30, "Ignoring rescan timer during powered off sleep\n");
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SFBLEScanner_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (NSString)description
{
  v46 = 0;
  v3 = self->_payloadType + 1;
  if (v3 > 0x12)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E788E208[v3];
  }

  NSAppendPrintF(&v46, "SFBLEScanner %{ptr}, Type %s", self, v4);
  v5 = v46;
  v6 = v5;
  if (self->_invalidateCalled)
  {
    v45 = v5;
    NSAppendPrintF(&v45, ", Invalidated");
    v7 = v45;

    v6 = v7;
  }

  if (self->_activeScan)
  {
    v44 = v6;
    NSAppendPrintF(&v44, ", ActiveScan");
    v8 = v44;

    v6 = v8;
  }

  if (self->_needDups)
  {
    v43 = v6;
    NSAppendPrintF(&v43, ", NeedDups");
    v9 = v43;

    v6 = v9;
  }

  rssiThreshold = self->_rssiThreshold;
  if (rssiThreshold)
  {
    v42 = v6;
    NSAppendPrintF(&v42, ", RSSI >= %ld", rssiThreshold);
    v11 = v42;

    v6 = v11;
  }

  if (self->_scanCache)
  {
    v41 = v6;
    NSAppendPrintF(&v41, ", ScanCache");
    v12 = v41;

    v6 = v12;
  }

  v40 = v6;
  scanRate = self->_scanRate;
  if (scanRate > 9)
  {
    if (scanRate <= 29)
    {
      if (scanRate == 10)
      {
        v14 = "Background";
        goto LABEL_38;
      }

      if (scanRate == 20)
      {
        v14 = "Normal";
        goto LABEL_38;
      }
    }

    else
    {
      switch(scanRate)
      {
        case 30:
          v14 = "HighNormal";
          goto LABEL_38;
        case 40:
          v14 = "High";
          goto LABEL_38;
        case 50:
          v14 = "Aggressive";
          goto LABEL_38;
      }
    }
  }

  else if (scanRate <= 1)
  {
    if (!scanRate)
    {
      v14 = "Invalid";
      goto LABEL_38;
    }

    if (scanRate == 1)
    {
      v14 = "BackgroundOld";
      goto LABEL_38;
    }
  }

  else
  {
    switch(scanRate)
    {
      case 2:
        v14 = "NormalOld";
        goto LABEL_38;
      case 3:
        v14 = "HighOld";
        goto LABEL_38;
      case 4:
        v14 = "AggressiveOld";
        goto LABEL_38;
    }
  }

  v14 = "?";
LABEL_38:
  NSAppendPrintF(&v40, ", ScanRate %s", v14);
  v15 = v40;

  v39 = v15;
  NSAppendPrintF(&v39, ", %ld device(s)", [(NSMutableDictionary *)self->_devices count]);
  v16 = v39;

  v38 = v16;
  NSAppendPrintF(&v38, ", %ld dfilters(s)", [(NSArray *)self->_deviceFilter count]);
  v17 = v38;

  v37 = v17;
  NSAppendPrintF(&v37, ", %d Tracked", [(NSSet *)self->_trackedPeers count]);
  v18 = v37;

  payloadFilterData = self->_payloadFilterData;
  payloadFilterMask = self->_payloadFilterMask;
  if (!payloadFilterData)
  {
    if (!payloadFilterMask)
    {
      goto LABEL_44;
    }

    payloadFilterData = &stru_1F1D30528;
  }

  v36 = v18;
  if (!payloadFilterMask)
  {
    payloadFilterMask = &stru_1F1D30528;
  }

  NSAppendPrintF(&v36, ", blob <%@>/<%@>", payloadFilterData, payloadFilterMask);
  v21 = v36;

  v18 = v21;
LABEL_44:
  rescanSecondsActual = self->_rescanSecondsActual;
  if (rescanSecondsActual >= 1)
  {
    v35 = v18;
    NSAppendPrintF(&v35, ", rescan %d", rescanSecondsActual);
    v23 = v35;

    v18 = v23;
  }

  changeFlags = self->_changeFlags;
  if (changeFlags)
  {
    if (changeFlags == -1)
    {
      v34 = v18;
      v25 = &v34;
      NSAppendPrintF(&v34, ", cflags < All >", v30, v31);
    }

    else
    {
      v33 = v18;
      v25 = &v33;
      NSAppendPrintF(&v33, ", cflags %#{flags}", changeFlags, &unk_1A998F228);
    }

    v26 = *v25;

    v18 = v26;
  }

  if (!self->_useCases)
  {
    v32 = v18;
    v27 = [(SFBLEScanner *)self _useCasesToString:0];
    NSAppendPrintF(&v32, ", useCases <%@>", v27);
    v28 = v32;

    v18 = v28;
  }

  return v18;
}

- (int)_btSessionEnsureStarted
{
  if (self->_btStarted)
  {
    return 0;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucat, "[SFBLEScanner _btSessionEnsureStarted]", 30, "BTSession attach\n");
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  v11 = _btSessionEventHandler;
  selfCopy = self;
  v5 = softLinkBTSessionAttachWithQueue(self->_ucat->var4, &v11, selfCopy, selfCopy->_dispatchQueue);
  if (v5)
  {
    v6 = v5;
    CFRelease(selfCopy);
    v7 = v6 + 310000;
    if (v6 != -310000)
    {
      v8 = OUTLINED_FUNCTION_2_8();
      if (v9 <= 60)
      {
        if (v9 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return v7;
          }

          v8 = self->_ucat;
        }

        LogPrintF(v8, "[SFBLEScanner _btSessionEnsureStarted]", 60, "### BTSession attach failed: %#m\n", (v6 + 310000), v11);
      }
    }
  }

  else
  {
    v7 = 0;
    self->_btStarted = 1;
  }

  return v7;
}

- (void)_poweredOff
{
  IOPMConnectionGetSystemCapabilities();
  v3 = IOPMIsASleep();
  self->_poweredOffSleep = v3;
  if (v3)
  {
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

    LogPrintF(ucat, "[SFBLEScanner _poweredOff]", 30, "Bluetooth power off during sleep assuming still scanning\n");
  }

  else
  {

    [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTPowerOff"];
  }
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucat, "[SFBLEScanner _invalidate]", 30, "Invalidating\n");
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->_invalidateCalled = 1;
  devices = self->_devices;
  self->_devices = 0;

  lostTimer = self->_lostTimer;
  if (lostTimer)
  {
    v6 = lostTimer;
    dispatch_source_cancel(v6);
    v7 = self->_lostTimer;
    self->_lostTimer = 0;
  }

  rescanTimer = self->_rescanTimer;
  if (rescanTimer)
  {
    v9 = rescanTimer;
    dispatch_source_cancel(v9);
    v10 = self->_rescanTimer;
    self->_rescanTimer = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v12 = timeoutTimer;
    dispatch_source_cancel(v12);
    v13 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(CURetrier *)self->_startRetrier invalidateDirect];
  startRetrier = self->_startRetrier;
  self->_startRetrier = 0;

  payloadType = self->_payloadType;
  if (payloadType > 14)
  {
    switch(payloadType)
    {
      case 15:
        [(SFBLEScanner *)self _updateTrackedPeers];
        wpNearby = self->_wpNearby;
        v19 = 0;
        break;
      case 16:
        [(SFBLEScanner *)self _updateTrackedPeers];
        wpNearby = self->_wpNearby;
        v19 = 1;
        break;
      case 17:
LABEL_22:
        [(CBCentralManager *)self->_centralManager stopScan];
        centralManager = self->_centralManager;
        self->_centralManager = 0;
LABEL_35:

        goto LABEL_36;
      default:
        goto LABEL_24;
    }

    [(WPNearby *)wpNearby stopScanningForType:v19];
    centralManager = self->_wpNearby;
    if (centralManager)
    {
      v23 = +[SFBLEClient sharedClient];
      [v23 removeNearbyDelegate:self];

      centralManager = self->_wpNearby;
    }

    self->_wpNearby = 0;
    goto LABEL_35;
  }

  switch(payloadType)
  {
    case -1:
      goto LABEL_22;
    case 5:
      [(WPAWDL *)self->_wpAirDrop stopConnectionlessAWDLServiceScanning];
      centralManager = self->_wpAirDrop;
      if (centralManager)
      {
        v22 = +[SFBLEClient sharedClient];
        [v22 removeAirDropDelegate:self];

        centralManager = self->_wpAirDrop;
      }

      self->_wpAirDrop = 0;
      goto LABEL_35;
    case 7:
      [(WPPairing *)self->_wpPairing stopProximityPairingServiceScanning];
      centralManager = self->_wpPairing;
      if (centralManager)
      {
        v17 = +[SFBLEClient sharedClient];
        [v17 removePairingDelegate:self];

        centralManager = self->_wpPairing;
      }

      self->_wpPairing = 0;
      goto LABEL_35;
  }

LABEL_24:
  v20 = self->_ucat;
  if (v20->var0 > 60)
  {
    goto LABEL_36;
  }

  if (v20->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_36;
    }

    v20 = self->_ucat;
    payloadType = self->_payloadType;
  }

  if ((payloadType + 1) > 0x12)
  {
    v21 = "?";
  }

  else
  {
    v21 = off_1E788E208[payloadType + 1];
  }

  LogPrintF(v20, "[SFBLEScanner _invalidate]", 60, "### Invalidate unsupported type: %ld (%s)\n", payloadType, v21);
LABEL_36:
  self->_scanStarted = 0;
  [(SFBLEScanner *)self _btSessionEnsureStopped];
  v24 = self->_ucat;
  if (v24->var0 <= 30)
  {
    if (v24->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_40;
      }

      v24 = self->_ucat;
    }

    LogPrintF(v24, "[SFBLEScanner _invalidate]", 30, "Invalidated\n");
  }

LABEL_40:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  [(SFBLEScanner *)self _rssiLogClose];
  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  deviceChangedHandler = self->_deviceChangedHandler;
  self->_deviceChangedHandler = 0;

  v30 = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  scanStateChangedHandler = self->_scanStateChangedHandler;
  self->_scanStateChangedHandler = 0;

  timeoutHandler = self->_timeoutHandler;
  self->_timeoutHandler = 0;
}

- (void)_btSessionEnsureStopped
{
  p_btSession = &self->_btSession;
  if (self->_btSession)
  {
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

      LogPrintF(ucat, "[SFBLEScanner _btSessionEnsureStopped]", 30, "BTSession detach\n");
    }

LABEL_6:
    softLinkBTSessionDetachWithQueue(p_btSession);
    *p_btSession = 0;
  }

  self->_btStarted = 0;
}

- (void)_rssiLogClose
{
  if (self->_rssiEventLogFile)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFBLEScanner _rssiLogClose]", 50, "RSSI event log ended\n");
    }

LABEL_6:
    FPrintF(self->_rssiEventLogFile, "# <---\n");
    FPrintF(self->_rssiEventLogFile, "# RSSI event log ended at %##N\n");
    fclose(self->_rssiEventLogFile);
    self->_rssiEventLogFile = 0;
  }
}

- (void)dealloc
{
  if (self->_btSession)
  {
    [SFBLEScanner dealloc];
    goto LABEL_15;
  }

  if (self->_centralManager)
  {
LABEL_15:
    [SFBLEScanner dealloc];
    goto LABEL_16;
  }

  if (self->_rescanTimer)
  {
LABEL_16:
    [SFBLEScanner dealloc];
    goto LABEL_17;
  }

  if (self->_startRetrier)
  {
LABEL_17:
    [SFBLEAdvertiser dealloc];
    goto LABEL_18;
  }

  if (self->_wpAirDrop)
  {
LABEL_18:
    [SFBLEScanner dealloc];
    goto LABEL_19;
  }

  if (self->_wpNearby)
  {
LABEL_19:
    [SFBLEAdvertiser dealloc];
    goto LABEL_20;
  }

  if (self->_wpPairing)
  {
LABEL_20:
    v16 = [SFBLEScanner dealloc];
    [(SFBLEScanner *)v16 .cxx_destruct];
    return;
  }

  [(SFBLEScanner *)self _rssiLogClose];
  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  devices = self->_devices;
  self->_devices = 0;

  deviceFilter = self->_deviceFilter;
  self->_deviceFilter = 0;

  deviceFoundHandler = self->_deviceFoundHandler;
  self->_deviceFoundHandler = 0;

  deviceLostHandler = self->_deviceLostHandler;
  self->_deviceLostHandler = 0;

  deviceChangedHandler = self->_deviceChangedHandler;
  self->_deviceChangedHandler = 0;

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    self->_dispatchQueue = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  payloadFilterData = self->_payloadFilterData;
  self->_payloadFilterData = 0;

  payloadFilterMask = self->_payloadFilterMask;
  self->_payloadFilterMask = 0;

  scanStateChangedHandler = self->_scanStateChangedHandler;
  self->_scanStateChangedHandler = 0;

  timeoutHandler = self->_timeoutHandler;
  self->_timeoutHandler = 0;

  ucat = self->_ucat;
  if (ucat)
  {
    if ((ucat->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucat = 0;
    }
  }

  v18.receiver = self;
  v18.super_class = SFBLEScanner;
  [(SFBLEScanner *)&v18 dealloc];
}

- (void)_startTimeoutIfNeeded
{
  if (!self->_timeoutFired)
  {
    timeout = self->_timeout;
    if (timeout > 0.0 && !self->_timeoutTimer)
    {
      ucat = self->_ucat;
      if (ucat->var0 > 20)
      {
        goto LABEL_8;
      }

      if (ucat->var0 == -1)
      {
        if (_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }

      while (1)
      {
        LogPrintF(ucat, "[SFBLEScanner _startTimeoutIfNeeded]", 20, "Start timeout timer for %f seconds\n", timeout);
LABEL_8:
        v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
        timeoutTimer = self->_timeoutTimer;
        self->_timeoutTimer = v5;

        v7 = self->_timeoutTimer;
        if (v7)
        {
          break;
        }

        [SFBLEScanner _startTimeoutIfNeeded];
LABEL_12:
        ucat = self->_ucat;
        timeout = self->_timeout;
      }

      v8 = (self->_timeout * 1000000000.0);
      v9 = dispatch_time(0, v8);
      dispatch_source_set_timer(v7, v9, v8, v8 >> 2);
      v10 = self->_timeoutTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __37__SFBLEScanner__startTimeoutIfNeeded__block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(self->_timeoutTimer);
    }
  }
}

- (void)setChangeFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__SFBLEScanner_setChangeFlags___block_invoke;
  v3[3] = &unk_1E788D970;
  v3[4] = self;
  flagsCopy = flags;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

- (void)setDeviceFilter:(id)filter
{
  filterCopy = filter;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner setDeviceFilter:]", 30, "Update device filter to %@\n", filterCopy);
  }

LABEL_5:
  v6 = [filterCopy copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__SFBLEScanner_setDeviceFilter___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v8];
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

- (void)setPayloadFilterData:(id)data mask:(id)mask
{
  dataCopy = data;
  maskCopy = mask;
  ucat = self->_ucat;
  if (ucat->var0 > 30)
  {
    goto LABEL_5;
  }

  if (ucat->var0 == -1)
  {
    if (_LogCategory_Initialize())
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  while (1)
  {
    LogPrintF(ucat, "[SFBLEScanner setPayloadFilterData:mask:]", 30, "Update payload filter data to %@, mask %@\n", dataCopy, maskCopy);
LABEL_5:
    v9 = [dataCopy length];
    if (v9 == [maskCopy length])
    {
      break;
    }

    [SFBLEScanner setPayloadFilterData:dataCopy mask:maskCopy];
LABEL_8:
    ucat = self->_ucat;
  }

  v10 = [dataCopy copy];
  v11 = [maskCopy copy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__SFBLEScanner_setPayloadFilterData_mask___block_invoke;
  v14[3] = &unk_1E788BD88;
  v14[4] = self;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v14];
}

void __42__SFBLEScanner_setPayloadFilterData_mask___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 320), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 328);

  objc_storeStrong(v3, v2);
}

- (void)setRssiThreshold:(int64_t)threshold
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__SFBLEScanner_setRssiThreshold___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = threshold;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

- (void)setScanCache:(BOOL)cache
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__SFBLEScanner_setScanCache___block_invoke;
  v3[3] = &unk_1E788B700;
  cacheCopy = cache;
  v3[4] = self;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

uint64_t __29__SFBLEScanner_setScanCache___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 258))
  {
    *(v2 + 258) = v1;
    *(*(result + 32) + 104) = 0;
  }

  return result;
}

- (void)setScanRate:(int64_t)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__SFBLEScanner_setScanRate___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  v3[5] = rate;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

- (void)setTimeout:(double)timeout
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__SFBLEScanner_setTimeout___block_invoke;
  v3[3] = &unk_1E788B260;
  v3[4] = self;
  *&v3[5] = timeout;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v3];
}

double __27__SFBLEScanner_setTimeout___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = 0;
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 408) = result;
  return result;
}

- (void)setTrackedPeers:(id)peers
{
  peersCopy = peers;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner setTrackedPeers:]", 30, "Update tracked peers to %@\n", peersCopy);
  }

LABEL_5:
  v6 = [peersCopy copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__SFBLEScanner_setTrackedPeers___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v8];
}

- (void)setUseCases:(id)cases
{
  v4 = [cases copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__SFBLEScanner_setUseCases___block_invoke;
  v6[3] = &unk_1E788A658;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SFBLEScanner *)self _invokeBlockActivateSafe:v6];
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
  v8[2] = __39__SFBLEScanner_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v28[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  p_ucat = &self->_ucat;
  p_var0 = &self->_ucat->var0;
  if (*p_var0 <= 30)
  {
    if (*p_var0 != -1)
    {
LABEL_3:
      p_var0 = LogPrintF(p_var0, "[SFBLEScanner _activateWithCompletion:]", 30, "Activate\n");
      goto LABEL_5;
    }

    p_var0 = _LogCategory_Initialize();
    if (p_var0)
    {
      p_var0 = *p_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (self->_invalidateCalled)
  {
    v25 = 4294960572;
    goto LABEL_42;
  }

  if (self->_startRetrier)
  {
    v25 = 4294960575;
    goto LABEL_42;
  }

  payloadType = self->_payloadType;
  if (payloadType > 14)
  {
    if ((payloadType - 15) < 2)
    {
      self->_wpNearbyType = payloadType != 15;
      if (self->_wpNearby)
      {
        goto LABEL_26;
      }

      v11 = +[SFBLEClient sharedClient];
      v12 = [v11 addNearbyDelegate:self];
      wpNearby = self->_wpNearby;
      self->_wpNearby = v12;

      if (self->_wpNearby)
      {
        goto LABEL_26;
      }

LABEL_43:
      v25 = 4294960567;
      goto LABEL_42;
    }

    if (payloadType != 17)
    {
LABEL_33:
      ucat = *p_ucat;
      var0 = (*p_ucat)->var0;
      if (var0 <= 60)
      {
        if (var0 != -1)
        {
LABEL_37:
          if ((payloadType + 1) > 0x12)
          {
            v24 = "?";
          }

          else
          {
            v24 = off_1E788E208[payloadType + 1];
          }

          LogPrintF(ucat, "[SFBLEScanner _activateWithCompletion:]", 60, "### Activate with unsupported type: %ld (%s)\n", payloadType, v24);
          goto LABEL_41;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
          payloadType = self->_payloadType;
          goto LABEL_37;
        }
      }

LABEL_41:
      v25 = 4294960561;
LABEL_42:
      [(SFBLEScanner *)completionCopy _activateWithCompletion:v25, &v27, v28, &self->_ucat];
      goto LABEL_32;
    }

LABEL_21:
    if (self->_centralManager)
    {
      goto LABEL_26;
    }

    v14 = [objc_alloc(getCBCentralManagerClass(p_var0)) initWithDelegate:self queue:self->_dispatchQueue];
    centralManager = self->_centralManager;
    self->_centralManager = v14;

    if (self->_centralManager)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  if (payloadType == -1)
  {
    goto LABEL_21;
  }

  if (payloadType == 5)
  {
    if (self->_wpAirDrop)
    {
      goto LABEL_26;
    }

    v16 = +[SFBLEClient sharedClient];
    v17 = [v16 addAirDropDelegate:self];
    wpAirDrop = self->_wpAirDrop;
    self->_wpAirDrop = v17;

    if (self->_wpAirDrop)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  if (payloadType != 7)
  {
    goto LABEL_33;
  }

  if ([(SFBLEScanner *)self _btSessionUsable])
  {
    [(SFBLEScanner *)self _btSessionEnsureStarted];
  }

  if (!self->_wpPairing)
  {
    v8 = +[SFBLEClient sharedClient];
    v9 = [v8 addPairingDelegate:self];
    wpPairing = self->_wpPairing;
    self->_wpPairing = v9;

    if (!self->_wpPairing)
    {
      goto LABEL_43;
    }
  }

LABEL_26:
  if (self->_rssiLog && !self->_rssiEventLogFile)
  {
    [(SFBLEScanner *)self _rssiLogOpen];
  }

  v19 = objc_alloc_init(MEMORY[0x1E6999520]);
  startRetrier = self->_startRetrier;
  self->_startRetrier = v19;

  v21 = self->_startRetrier;
  if (!v21)
  {
    goto LABEL_43;
  }

  [(CURetrier *)v21 setDispatchQueue:self->_dispatchQueue];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __40__SFBLEScanner__activateWithCompletion___block_invoke;
  v26[3] = &unk_1E788B198;
  v26[4] = self;
  [(CURetrier *)self->_startRetrier setActionHandler:v26];
  [(CURetrier *)self->_startRetrier startDirect];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_32:
}

- (void)performUpdate:(id)update
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SFBLEScanner_performUpdate___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  updateCopy = update;
  dispatch_async(dispatchQueue, block);
  updateCopy[2](updateCopy);

  v6 = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__SFBLEScanner_performUpdate___block_invoke_2;
  v7[3] = &unk_1E788B198;
  v7[4] = self;
  dispatch_async(v6, v7);
}

_BYTE *__30__SFBLEScanner_performUpdate___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 0;
  result = *(a1 + 32);
  if (result[9] == 1 && (result[48] & 1) == 0)
  {
    return [result _restartIfNeeded];
  }

  return result;
}

- (void)_foundDevice:(id)device advertisementData:(id)data rssi:(int64_t)rssi fields:(id)fields
{
  deviceCopy = device;
  dataCopy = data;
  fieldsCopy = fields;
  if ((rssi - 20) >= 0x6B)
  {
    rssiCopy = rssi;
  }

  else
  {
    rssiCopy = rssi - 126;
  }

  if ((rssiCopy - 1) >= 0xFFFFFFFFFFFFFFA5)
  {
    v14 = rssiCopy;
  }

  else
  {
    v14 = 0;
  }

  v84 = v14;
  if ((v14 & 0x8000000000000000) == 0)
  {
    p_needDups = &self->_needDups;
    goto LABEL_28;
  }

  if (self->_rssiLogStdOut || self->_rssiEventLogFile)
  {
    v16 = dataCopy;
    v89[0] = 0;
    v88 = 0;
    v87 = 0;
    CFDictionaryGetHardwareAddress();
    v17 = [fieldsCopy objectForKeyedSubscript:@"ch"];
    integerValue = [v17 integerValue];

    CFStringGetTypeID();
    v19 = CFDictionaryGetTypedValue();
    rssiEventLogFile = self->_rssiEventLogFile;
    if (rssiEventLogFile)
    {
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = &stru_1F1D30528;
      }

      FPrintF(rssiEventLogFile, "%##N,%@,%.6a,%ld,%ld,%@,%''@\n", deviceCopy, &v87, v14, integerValue, v16, v21);
    }

    if (self->_rssiLogStdOut)
    {
      if (v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = &stru_1F1D30528;
      }

      FPrintF(*MEMORY[0x1E69E9858], "%##N,%@,%.6a,%ld,%ld,%@,%''@\n", deviceCopy, &v87, v14, integerValue, v16, v22);
    }

    dataCopy = v16;
  }

  p_needDups = &self->_needDups;
  if (!self->_needDups || (rssiThreshold = self->_rssiThreshold) == 0 || v14 >= rssiThreshold)
  {
LABEL_28:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__SFBLEScanner__foundDevice_advertisementData_rssi_fields___block_invoke;
    aBlock[3] = &unk_1E788E1A8;
    aBlock[4] = self;
    v25 = _Block_copy(aBlock);
    LOBYTE(v87) = 0;
    v26 = [gSFNearbyAgent idsDeviceForBluetoothDeviceID:deviceCopy conflictDetected:&v87];
    v27 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:deviceCopy];
    v83 = deviceCopy;
    if (v27)
    {
      v28 = v27;
      if (v26)
      {
        uniqueIDOverride = [v26 uniqueIDOverride];
        if (uniqueIDOverride)
        {
          [fieldsCopy setObject:uniqueIDOverride forKeyedSubscript:@"idsID"];
        }

        v30 = [MEMORY[0x1E696AD98] numberWithBool:v87];
        [fieldsCopy setObject:v30 forKeyedSubscript:@"idsIDCD"];
      }

      else
      {
        uniqueIDOverride = 0;
      }

      v81 = v25;
      advertisementFields = [(SFBLEDevice *)v28 advertisementFields];
      CFStringGetTypeID();
      v45 = CFDictionaryGetTypedValue();

      v78 = v45;
      if (uniqueIDOverride)
      {
        v46 = [v45 isEqual:uniqueIDOverride] - 1;
      }

      else
      {
        v46 = 0;
      }

      CFStringGetTypeID();
      v47 = CFDictionaryGetTypedValue();
      modelIdentifier = v47;
      if (v26)
      {
        if (!v47)
        {
          modelIdentifier = [v26 modelIdentifier];
          if (modelIdentifier)
          {
            [fieldsCopy setObject:modelIdentifier forKeyedSubscript:@"model"];
          }
        }
      }

      v82 = modelIdentifier;
      v49 = v26;
      advertisementFields2 = [(SFBLEDevice *)v28 advertisementFields];
      CFStringGetTypeID();
      v51 = CFDictionaryGetTypedValue();

      v79 = p_needDups;
      v77 = v51;
      if (v82 && ![v51 isEqual:?])
      {
        v46 |= 8u;
      }

      [(SFBLEDevice *)v28 setLastSeen:CFAbsoluteTimeGetCurrent()];
      advertisementData = [(SFBLEDevice *)v28 advertisementData];
      v53 = [advertisementData isEqual:dataCopy];

      v26 = v49;
      v80 = dataCopy;
      if (v53)
      {
        v54 = v46 | 0x20u;
      }

      else
      {
        [(SFBLEDevice *)v28 setAdvertisementData:dataCopy];
        v54 = v46 | 0x21u;
      }

      Int64Ranged = CFDictionaryGetInt64Ranged();
      v25 = v81;
      if ([(SFBLEDevice *)v28 connectedServices]!= Int64Ranged)
      {
        [(SFBLEDevice *)v28 setConnectedServices:Int64Ranged];
        v54 = v54 | 8;
      }

      if (v84 < 0)
      {
        [(SFBLEDevice *)v28 updateRSSI:v84];
        v54 = v54 | 4;
      }

      bluetoothAddress = [(SFBLEDevice *)v28 bluetoothAddress];
      if (bluetoothAddress)
      {
        v57 = bluetoothAddress;
      }

      else
      {
        CFDataGetTypeID();
        v57 = CFDictionaryGetTypedValue();
        if (v57)
        {
          [(SFBLEDevice *)v28 setBluetoothAddress:v57];
          v54 = v54 | 8;
        }
      }

      CFStringGetTypeID();
      v58 = CFDictionaryGetTypedValue();
      name = v58;
      if (v26 && !v58)
      {
        name = [v26 name];
      }

      if (name)
      {
        name2 = [(SFBLEDevice *)v28 name];
        v61 = [name2 isEqual:name];

        if ((v61 & 1) == 0)
        {
          [(SFBLEDevice *)v28 setName:name];
          v54 = v54 | 8;
        }

        v25 = v81;
      }

      Int64 = CFDictionaryGetInt64();
      if (v26)
      {
        [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
      }

      if (![(SFBLEDevice *)v28 paired]|| Int64)
      {
        if (![(SFBLEDevice *)v28 paired]&& Int64)
        {
          [(SFBLEDevice *)v28 setPaired:1];
          v54 = v54 | 8;
        }
      }

      else
      {
        [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
      }

      counterpartIdentifier = [(SFBLEDevice *)v28 counterpartIdentifier];
      if (counterpartIdentifier)
      {

        if (fieldsCopy)
        {
LABEL_93:
          [(SFBLEDevice *)v28 setAdvertisementFields:fieldsCopy];
        }
      }

      else
      {
        if ([(SFBLEScanner *)self _updateCounterpart:v28])
        {
          v54 = v54 | 8;
        }

        else
        {
          v54 = v54;
        }

        if (fieldsCopy)
        {
          goto LABEL_93;
        }
      }

      v25[2](v25, v28);
      changeFlags = self->_changeFlags;
      ucat = self->_ucat;
      var0 = ucat->var0;
      if (changeFlags != -1 && (changeFlags & v54) == 0)
      {
        if (var0 <= 8)
        {
          if (var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_118;
            }

            ucat = self->_ucat;
          }

          LogPrintF(ucat, "[SFBLEScanner _foundDevice:advertisementData:rssi:fields:]", 8, "Unchanged %@\n", v28);
        }

LABEL_118:

        p_needDups = v79;
        dataCopy = v80;
        v40 = uniqueIDOverride;
        goto LABEL_119;
      }

      if (var0 <= 8)
      {
        if (var0 != -1)
        {
LABEL_101:
          LogPrintF(ucat, "[SFBLEScanner _foundDevice:advertisementData:rssi:fields:]", 8, "Updated %@\n", v28);
          goto LABEL_115;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
          goto LABEL_101;
        }
      }

LABEL_115:
      deviceChangedHandler = self->_deviceChangedHandler;
      if (deviceChangedHandler)
      {
        deviceChangedHandler[2](deviceChangedHandler, v28, v54);
      }

      goto LABEL_118;
    }

    v31 = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v32 = CFDictionaryGetTypedValue();
    name3 = v32;
    if (v26)
    {
      if (!v32)
      {
        name3 = [v26 name];
      }

      CFStringGetTypeID();
      v34 = CFDictionaryGetTypedValue();
      if (v34 || ([v26 modelIdentifier], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v35 = v34;
        [fieldsCopy setObject:v34 forKeyedSubscript:@"model"];
      }

      v85 = name3;
      uniqueIDOverride2 = [v26 uniqueIDOverride];
      if (uniqueIDOverride2)
      {
        [fieldsCopy setObject:uniqueIDOverride2 forKeyedSubscript:@"idsID"];
      }

      v37 = [MEMORY[0x1E696AD98] numberWithBool:v87];
      [fieldsCopy setObject:v37 forKeyedSubscript:@"idsIDCD"];

      [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
      goto LABEL_42;
    }

    v85 = v32;
    if (!v31)
    {
      v38 = 0;
LABEL_43:
      v28 = objc_alloc_init(SFBLEDevice);
      [(SFBLEDevice *)v28 setAdvertisementData:dataCopy];
      if (fieldsCopy)
      {
        [(SFBLEDevice *)v28 setAdvertisementFields:fieldsCopy];
      }

      CFDataGetTypeID();
      [(SFBLEDevice *)v28 setBluetoothAddress:CFDictionaryGetTypedValue()];
      [(SFBLEDevice *)v28 setConnectedServices:CFDictionaryGetInt64Ranged()];
      [(SFBLEDevice *)v28 setFoundTicks:mach_absolute_time()];
      [(SFBLEDevice *)v28 setIdentifier:deviceCopy];
      [(SFBLEDevice *)v28 setLastSeen:CFAbsoluteTimeGetCurrent()];
      if (v85)
      {
        [(SFBLEDevice *)v28 setName:?];
      }

      [(SFBLEDevice *)v28 setPaired:v38];
      if (v84 < 0)
      {
        [(SFBLEDevice *)v28 updateRSSI:?];
      }

      [(SFBLEScanner *)self _updateCounterpart:v28];
      v25[2](v25, v28);
      devices = self->_devices;
      v40 = v85;
      if (!devices)
      {
        v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v42 = self->_devices;
        self->_devices = v41;

        devices = self->_devices;
      }

      [(NSMutableDictionary *)devices setObject:v28 forKeyedSubscript:deviceCopy];
      v43 = self->_ucat;
      if (v43->var0 > 8)
      {
        goto LABEL_112;
      }

      if (v43->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_112:
          deviceFoundHandler = self->_deviceFoundHandler;
          if (deviceFoundHandler)
          {
            deviceFoundHandler[2](deviceFoundHandler, v28);
          }

LABEL_119:

          _needActiveScan = [(SFBLEScanner *)self _needActiveScan];
          activeScan = self->_activeScan;
          if (activeScan == _needActiveScan)
          {
LABEL_131:
            deviceCopy = v83;
            if (*p_needDups || (self->_changeFlags & 0x16) == 0 || ![(SFBLEScanner *)self _needDups])
            {
              if (activeScan == _needActiveScan)
              {
                goto LABEL_143;
              }

              goto LABEL_142;
            }

            v76 = self->_ucat;
            if (v76->var0 <= 30)
            {
              if (v76->var0 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_141;
                }

                v76 = self->_ucat;
              }

              LogPrintF(v76, "[SFBLEScanner _foundDevice:advertisementData:rssi:fields:]", 30, "Disabling duplicate filter on found %@ with changeFlags 0x%x\n", v28, self->_changeFlags);
            }

LABEL_141:
            *p_needDups = 1;
LABEL_142:
            [(SFBLEScanner *)self _restartIfNeeded];
LABEL_143:
            [(SFBLEScanner *)self _updateRescanTimer];

            goto LABEL_144;
          }

          v72 = self->_ucat;
          if (v72->var0 <= 30)
          {
            if (v72->var0 != -1)
            {
              v73 = self->_activeScan;
LABEL_123:
              v74 = "no";
              if (v73)
              {
                v75 = "yes";
              }

              else
              {
                v75 = "no";
              }

              if (_needActiveScan)
              {
                v74 = "yes";
              }

              LogPrintF(v72, "[SFBLEScanner _foundDevice:advertisementData:rssi:fields:]", 30, "Changing active scan %s -> %s on found %@\n", v75, v74, v28);
              goto LABEL_130;
            }

            if (_LogCategory_Initialize())
            {
              v72 = self->_ucat;
              v73 = self->_activeScan;
              goto LABEL_123;
            }
          }

LABEL_130:
          self->_activeScan = _needActiveScan;
          goto LABEL_131;
        }

        v43 = self->_ucat;
      }

      LogPrintF(v43, "[SFBLEScanner _foundDevice:advertisementData:rssi:fields:]", 8, "Found %@\n", v28);
      goto LABEL_112;
    }

    v67 = self->_ucat;
    if (v67->var0 <= 60)
    {
      if (v67->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }

        v67 = self->_ucat;
      }

      LogPrintF(v67, "[SFBLEScanner _foundDevice:advertisementData:rssi:fields:]", 60, "### No IDS device found for paired ID %@\n", deviceCopy);
    }

LABEL_42:
    v38 = 1;
    goto LABEL_43;
  }

  v24 = self->_ucat;
  if (v24->var0 <= 10)
  {
    if (v24->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_144;
      }

      v24 = self->_ucat;
      rssiThreshold = self->_rssiThreshold;
    }

    LogPrintF(v24, "[SFBLEScanner _foundDevice:advertisementData:rssi:fields:]", 10, "Ignoring RSSI %ld below threshold %ld for %@\n", v14, rssiThreshold, deviceCopy);
  }

LABEL_144:
}

void __59__SFBLEScanner__foundDevice_advertisementData_rssi_fields___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 72) == 7)
  {
    v8 = v3;
    v4 = [v3 advertisementFields];
    v5 = CFDictionaryGetInt64Ranged() & 0x24;
    Int64 = CFDictionaryGetInt64();
    if (!(v5 | Int64))
    {
      if (![v8 proxPairingTicks])
      {
        [v8 setProxPairingTicks:mach_absolute_time()];
      }

      goto LABEL_10;
    }

    if (Int64)
    {
      if ([v8 proxPairingTicks])
      {
        [v8 setProxPairingTicks:0];
        v7 = *(*(a1 + 32) + 144);
        if (*v7 <= 50)
        {
          if (*v7 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_10;
            }

            v7 = *(*(a1 + 32) + 144);
          }

          LogPrintF(v7, "[SFBLEScanner _foundDevice:advertisementData:rssi:fields:]_block_invoke", 50, "Removing up ticks %@", v8);
        }
      }
    }

LABEL_10:

    v3 = v8;
  }
}

- (void)_invokeBlockActivateSafe:(id)safe
{
  safeCopy = safe;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__SFBLEScanner__invokeBlockActivateSafe___block_invoke;
    v7[3] = &unk_1E788B318;
    v7[4] = selfCopy;
    v8 = safeCopy;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    safeCopy[2](safeCopy);
  }

  objc_sync_exit(selfCopy);
}

_BYTE *__41__SFBLEScanner__invokeBlockActivateSafe___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if ((result[152] & 1) == 0)
  {

    return [result _restartIfNeeded];
  }

  return result;
}

- (void)_poweredOn
{
  if (self->_poweredOffSleep)
  {
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

      LogPrintF(ucat, "[SFBLEScanner _poweredOn]", 30, "Bluetooth power on after sleep deferring device aging\n");
    }

LABEL_6:
    self->_poweredOffSleep = 0;
    Current = CFAbsoluteTimeGetCurrent();
    devices = self->_devices;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26__SFBLEScanner__poweredOn__block_invoke;
    v6[3] = &__block_descriptor_40_e36_v32__0__NSUUID_8__SFBLEDevice_16_B24l;
    *&v6[4] = Current;
    [(NSMutableDictionary *)devices enumerateKeysAndObjectsUsingBlock:v6];
  }

  [(SFBLEScanner *)self _restartIfNeeded];
}

- (void)_removeAllDevicesWithReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  self->_scanStarted = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_devices;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v9)];
        ucat = self->_ucat;
        if (ucat->var0 <= 20)
        {
          if (ucat->var0 != -1)
          {
            goto LABEL_8;
          }

          if (_LogCategory_Initialize())
          {
            ucat = self->_ucat;
LABEL_8:
            LogPrintF(ucat, "[SFBLEScanner _removeAllDevicesWithReason:]", 20, "Force remove (%@): %@\n", reasonCopy, v10, v15);
          }
        }

        deviceLostHandler = self->_deviceLostHandler;
        if (deviceLostHandler)
        {
          deviceLostHandler[2](deviceLostHandler, v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v13 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v7 = v13;
    }

    while (v13);
  }

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  self->_activeScan = 0;
  self->_needDups = 0;
  v14 = self->_ucat;
  if (v14->var0 <= 30)
  {
    if (v14->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v14 = self->_ucat;
    }

    LogPrintF(v14, "[SFBLEScanner _removeAllDevicesWithReason:]", 30, "Enabling duplicate filter after removing all devices");
  }

LABEL_20:
  [(SFBLEScanner *)self _updateRescanTimer];
}

- (void)_rssiLogOpen
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(__filename, 0x400uLL);
  memset(v7, 0, 255);
  SNPrintF(__filename, 1024, "~/Library/Logs/CrashReporter/%s", self->_ucat->var14);
  NormalizePath();
  if (mkpath() && (!*__error() || *__error()))
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 != -1)
      {
LABEL_6:
        LogPrintF(ucat, "[SFBLEScanner _rssiLogOpen]", 90, "### Create RSSI event log parent '%s' failed: %#m\n", __filename);
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_6;
      }
    }
  }

LABEL_8:
  SNPrintF(v7, 255, "/%s.log", self->_ucat->var4);
  __strlcat_chk();
  v4 = fopen(__filename, "a");
  self->_rssiEventLogFile = v4;
  if (v4)
  {
    setlinebuf(v4);
    v5 = self->_ucat;
    if (v5->var0 <= 50)
    {
      if (v5->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v5 = self->_ucat;
      }

      LogPrintF(v5, "[SFBLEScanner _rssiLogOpen]", 50, "RSSI event log started\n");
    }

LABEL_16:
    FPrintF(self->_rssiEventLogFile, "\n");
    FPrintF(self->_rssiEventLogFile, "# RSSI event log started at %##N\n");
    FPrintF(self->_rssiEventLogFile, "# Timestamp,UUID,Addr,RSSI,Channel\n");
    FPrintF(self->_rssiEventLogFile, "# --->\n");
    return;
  }

  v6 = self->_ucat;
  if (v6->var0 > 90)
  {
    return;
  }

  if (v6->var0 != -1)
  {
LABEL_14:
    __error();
    LogPrintF(v6, "[SFBLEScanner _rssiLogOpen]", 90, "### Open RSSI event log file '%s' failed: %#m\n", __filename);
    return;
  }

  if (_LogCategory_Initialize())
  {
    v6 = self->_ucat;
    goto LABEL_14;
  }
}

- (void)_timeoutTimerFired
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[SFBLEScanner _timeoutTimerFired]", 20, "Timeout timer fired\n");
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_timeoutFired = 1;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
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

- (id)_useCasesToString:(id)string
{
  v20 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [stringCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = "%s";
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(stringCopy);
        }

        unsignedIntValue = [*(*(&v14 + 1) + 8 * i) unsignedIntValue];
        if (unsignedIntValue < 0x20000)
        {
          if (unsignedIntValue <= 0x20000)
          {
            switch(unsignedIntValue)
            {
              case 65536:
                v10 = "FindMyAction";
                break;
              case 65537:
                v10 = "FindMyBackground";
                break;
              case 65538:
                v10 = "FindMyActionHELE";
                break;
              case 65539:
                v10 = "FindMyBackgroundHELE";
                break;
              case 65540:
                v10 = "FindMyActionTransient";
                break;
              case 65541:
                v10 = "FindMyBackgroundTransient";
                break;
              case 65542:
                v10 = "FindMyActionHELETransient";
                break;
              case 65543:
                v10 = "FindMyBackgroundHELETransient";
                break;
              case 65544:
                v10 = "FindMyNotOptedIn";
                break;
              case 65545:
                v10 = "FindMyOptedIn";
                break;
              case 65546:
                v10 = "FindMySepAlertsEnabled";
                break;
              case 65547:
                v10 = "FindMyTemporaryAggressiveLegacy";
                break;
              case 65548:
                v10 = "FindMyTemporaryLongAggressive";
                break;
              case 65549:
                v10 = "FindMyBTFindingUserInitiated";
                break;
              case 65550:
                v10 = "FindMyHELE";
                break;
              case 65551:
                v10 = "FindMyBeaconOnDemand";
                break;
              case 65552:
                v10 = "FindMyWildTimedScan";
                break;
              case 65553:
                v10 = "FindMyBackgroundLeechScan";
                break;
              case 65554:
                v10 = "FindMySnifferMode";
                break;
              case 65555:
                v10 = "FindMyUnpair";
                break;
              case 65556:
                v10 = "FindMyUnpairHELE";
                break;
              case 65557:
                v10 = "FindMyPlaySound";
                break;
              case 65558:
                v10 = "FindMyPlaySoundHELE";
                break;
              case 65559:
                v10 = "FindMyNotOptedInBeepOnMoveWaking";
                break;
              case 65560:
                v10 = "FindMyUTTransient";
                break;
              case 65561:
                v10 = "FindMyUTHELETransient";
                break;
              case 65562:
                v10 = "FindMyActionExtendedRange";
                break;
              case 65563:
                v10 = "FindMyActionExtendedRangeLE2M";
                break;
              case 65564:
                v10 = "FindMyActionExtendedRangeTransient";
                break;
              case 65565:
                v10 = "FindMyPlaySoundExtendedRange";
                break;
              case 65566:
                v10 = "FindMyPair";
                break;
              case 65567:
                v10 = "FindMyTemporaryAggressiveLegacyExtendedRange";
                break;
              default:
                JUMPOUT(0);
            }
          }

          else
          {
            v10 = "Unspecified";
            switch(unsignedIntValue)
            {
              case 0:
                break;
              case 1:
                v10 = "HealthKit";
                break;
              case 2:
                v10 = "HomeKit";
                break;
              case 3:
                v10 = "FindMyObjectConnection";
                break;
              case 4:
                v10 = "FindMyObjectConnectionTransient";
                break;
              case 5:
                v10 = "MIDI";
                break;
              case 6:
                v10 = "Continuity";
                break;
              case 7:
                v10 = "InstantHotSpot";
                break;
              case 8:
                v10 = "NearBy";
                break;
              case 9:
                v10 = "Sharing";
                break;
              case 10:
                v10 = "HearingSupport";
                break;
              case 11:
                v10 = "Magnet";
                break;
              case 12:
                v10 = "HID";
                break;
              case 13:
                v10 = "LEA";
                break;
              case 14:
                v10 = "External";
                break;
              case 15:
                v10 = "ExternalMedical";
                break;
              case 16:
                v10 = "ExternalLock";
                break;
              case 17:
                v10 = "ExternalWatch";
                break;
              case 18:
                v10 = "SmartRouting";
                break;
              case 19:
                v10 = "DigitalID";
                break;
              case 20:
                v10 = "DigitalKey";
                break;
              case 21:
                v10 = "DigitalCarKey";
                break;
              case 22:
                v10 = "HeySiri";
                break;
              case 23:
                v10 = "ThirdPartyApp";
                break;
              case 24:
                v10 = "CNJ";
                break;
              default:
                switch(unsignedIntValue)
                {
                  case 256:
                    v10 = "DevicePresenceDetection";
                    break;
                  case 257:
                    v10 = "AudioBox";
                    break;
                  case 258:
                    v10 = "SIMTransfer";
                    break;
                  case 259:
                    v10 = "ProximityScreenOnLeechScan";
                    break;
                  case 260:
                    v10 = "MacMigrate";
                    break;
                  case 263:
                    v10 = "HIDUARTService";
                    break;
                  case 264:
                    v10 = "AccessibilitySwitchControlPairing";
                    break;
                  case 265:
                    v10 = "BaseBandFastConnect";
                    break;
                  case 266:
                    v10 = "SafetyAlerts";
                    break;
                  case 267:
                    v10 = "LECarPlay";
                    break;
                  case 268:
                    v10 = "TCCBluetooth";
                    break;
                  case 269:
                    v10 = "AOPBufferLeech";
                    break;
                  case 270:
                    v10 = "HighPriorityScanWiFi";
                    break;
                  default:
                    goto LABEL_215;
                }

                break;
            }
          }
        }

        else if (unsignedIntValue > 0x80000)
        {
          if (unsignedIntValue < 0x100000)
          {
            if (unsignedIntValue <= 851968)
            {
              if (unsignedIntValue >= 655360)
              {
                if (unsignedIntValue <= 720896)
                {
                  if (unsignedIntValue == 655360)
                  {
                    v10 = "AccessDigitalHomeKey";
                    goto LABEL_216;
                  }

                  if (unsignedIntValue == 720896)
                  {
                    v10 = "SoftwareUpdateBTWake";
                    goto LABEL_216;
                  }
                }

                else
                {
                  switch(unsignedIntValue)
                  {
                    case 720897:
                      v10 = "SofrwareUpdateOutboxControllerAuth";
                      goto LABEL_216;
                    case 786432:
                      v10 = "ProxControlDeviceClose";
                      goto LABEL_216;
                    case 851968:
                      v10 = "DCTProtocolTelephony";
                      goto LABEL_216;
                  }
                }

                goto LABEL_215;
              }

              if (unsignedIntValue > 524290)
              {
                switch(unsignedIntValue)
                {
                  case 524291:
                    v10 = "MicroLocationLeech";
                    goto LABEL_216;
                  case 589824:
                    v10 = "FindNearbyRemote";
                    goto LABEL_216;
                  case 589825:
                    v10 = "FindNearbyPencil";
                    goto LABEL_216;
                }

LABEL_215:
                v10 = "?";
                goto LABEL_216;
              }

              if (unsignedIntValue == 524289)
              {
                v10 = "ADPDBuffer";
              }

              else
              {
                v10 = "MicroLocation";
              }
            }

            else
            {
              if (unsignedIntValue <= 983041)
              {
                if (unsignedIntValue <= 917504)
                {
                  if (unsignedIntValue == 851969)
                  {
                    v10 = "DCTProtocolDataAndTelephony";
                    goto LABEL_216;
                  }

                  if (unsignedIntValue == 917504)
                  {
                    v10 = "NearbyFaceTime";
                    goto LABEL_216;
                  }
                }

                else
                {
                  switch(unsignedIntValue)
                  {
                    case 917505:
                      v10 = "NearbyFaceTimeData";
                      goto LABEL_216;
                    case 983040:
                      v10 = "SOSBeaconPartA";
                      goto LABEL_216;
                    case 983041:
                      v10 = "SOSBeaconPartB";
                      goto LABEL_216;
                  }
                }

                goto LABEL_215;
              }

              if (unsignedIntValue > 983044)
              {
                switch(unsignedIntValue)
                {
                  case 983045:
                    v10 = "SOSBeaconActivateScan";
                    goto LABEL_216;
                  case 983046:
                    v10 = "SOSBeaconActivateAdvA";
                    goto LABEL_216;
                  case 983047:
                    v10 = "SOSBeaconActivateAdvB";
                    goto LABEL_216;
                }

                goto LABEL_215;
              }

              if (unsignedIntValue == 983042)
              {
                v10 = "SOSBeaconPrecisionFindResponse";
              }

              else if (unsignedIntValue == 983043)
              {
                v10 = "SOSBeaconPrecisionFindRequest";
              }

              else
              {
                v10 = "SOSBeaconScan";
              }
            }
          }

          else
          {
            if (unsignedIntValue <= 2147418111)
            {
              switch(unsignedIntValue)
              {
                case 1048576:
                  v10 = "DOS";
                  goto LABEL_216;
                case 1048577:
                  v10 = "DOD";
                  goto LABEL_216;
                case 1114112:
                  v10 = "ProximityServiceDeviceSetup";
                  goto LABEL_216;
              }

              goto LABEL_215;
            }

            switch(unsignedIntValue)
            {
              case 2147418112:
                v10 = "InternalTestNoLockScan";
                break;
              case 2147418113:
                v10 = "InternalTestNoScreenOffScan";
                break;
              case 2147418114:
                v10 = "InternalTestScanWithNoDups";
                break;
              case 2147418115:
                v10 = "InternalTestScanWithDups";
                break;
              case 2147418116:
                v10 = "InternalTestScanFor20Seconds";
                break;
              case 2147418117:
                v10 = "InternalTestActiveScan";
                break;
              case 2147418118:
                v10 = "InternalTestUUIDScan";
                break;
              case 2147418119:
                v10 = "InternalTestScanFor10ClockSeconds";
                break;
              case 2147418120:
                v10 = "InternalTestScanBoost";
                break;
              case 2147418121:
                v10 = "InternalTestDiscoveryScanWithMRC";
                break;
              case 2147418122:
                v10 = "InternalTestAdvWithHigherPower";
                break;
              case 2147418123:
                v10 = "InternalTestScanLowDutyCycleMCOnly";
                break;
              case 2147418124:
                v10 = "InternalTestUUIDScanWithMinRSSI";
                break;
              case 2147418125:
                v10 = "InternalTestUUIDScanWithMinRSSIMediumLow";
                break;
              case 2147418126:
                v10 = "InternalTestAdvWithHigherPowerServiceDataConnectable";
                break;
              case 2147418127:
                v10 = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
                break;
              case 2147418128:
                v10 = "InternalTestAdvWithHigherPowerServiceDataS2";
                break;
              case 2147418129:
                v10 = "InternalTestAdvWithHigherPowerServiceDataS8";
                break;
              case 2147418130:
                v10 = "InternalTestDiscoveryScanCodedPHY";
                break;
              default:
                goto LABEL_215;
            }
          }
        }

        else if (unsignedIntValue >= 196608)
        {
          if (unsignedIntValue > 393218)
          {
            if (unsignedIntValue > 458752)
            {
              switch(unsignedIntValue)
              {
                case 0x70001:
                  v10 = "PrecisionFindingFindee";
                  goto LABEL_216;
                case 0x70002:
                  v10 = "SpatialHandoffHome";
                  goto LABEL_216;
                case 0x80000:
                  v10 = "ADPD";
                  goto LABEL_216;
              }
            }

            else
            {
              switch(unsignedIntValue)
              {
                case 393219:
                  v10 = "AppleIDSignIn";
                  goto LABEL_216;
                case 393220:
                  v10 = "AppleIDSignInSettings";
                  goto LABEL_216;
                case 458752:
                  v10 = "PrecisionFindingFinder";
                  goto LABEL_216;
              }
            }

            goto LABEL_215;
          }

          if (unsignedIntValue < 393216)
          {
            switch(unsignedIntValue)
            {
              case 196608:
                v10 = "DigitalIDTSA";
                goto LABEL_216;
              case 262144:
                v10 = "DigitalCarKeyThirdParty";
                goto LABEL_216;
              case 327680:
                v10 = "RapportThirdParty";
                goto LABEL_216;
            }

            goto LABEL_215;
          }

          if (unsignedIntValue == 393216)
          {
            v10 = "CaptiveNetworkJoin";
          }

          else if (unsignedIntValue == 393217)
          {
            v10 = "UseCaseSIMTransfer";
          }

          else
          {
            v10 = "MacSetup";
          }
        }

        else
        {
          switch(unsignedIntValue)
          {
            case 131072:
              v10 = "SharingDefault";
              break;
            case 131073:
              v10 = "SharingPhoneAutoUnlock";
              break;
            case 131074:
              v10 = "SharingSiriWatchAuth";
              break;
            case 131075:
              v10 = "SharingMacAutoUnlock";
              break;
            case 131076:
              v10 = "SharingEDTScreenOn";
              break;
            case 131077:
              v10 = "SharingEDTWiFiDisabled";
              break;
            case 131078:
              v10 = "SharingEDTWombatEligibleAsDefaultCamera";
              break;
            case 131079:
              v10 = "SharingEDTWombatCameraPicker";
              break;
            case 131080:
              v10 = "SharingWombatBackground";
              break;
            case 131081:
              v10 = "SharingUniversalControl";
              break;
            case 131082:
              v10 = "SharingPeopleProximity";
              break;
            case 131083:
              v10 = "SharingEDTEnsembleOpenDisplayPrefs";
              break;
            case 131084:
              v10 = "SharingEDTNearbydMotionStopped";
              break;
            case 131085:
              v10 = "SharingDoubleBoostGenericScan";
              break;
            case 131086:
              v10 = "SharingEDTIncomingAdvertisement ";
              break;
            case 131087:
              v10 = "SharingEDTWombatStreamStart";
              break;
            case 131088:
              v10 = "SharingOYAutoUnlock";
              break;
            case 131090:
              v10 = "SharingAirDrop";
              break;
            case 131091:
              v10 = "SharingNearbyInvitationHost";
              break;
            case 131092:
              v10 = "SharingNearbyInvitationParticipant";
              break;
            case 131093:
              v10 = "SharingAirDropAskToAirDrop";
              break;
            case 131094:
              v10 = "SharingAirDropTempIdentity";
              break;
            case 131095:
              v10 = "SharingAirDropNeedsCLink";
              break;
            case 131096:
              v10 = "SharingRemoteWidgetUpdate";
              break;
            case 131097:
              v10 = "SharingCountryCodeUpdate";
              break;
            case 131098:
              v10 = "SharingMacPhoneAutoUnlock";
              break;
            case 131099:
              v10 = "SharingVisionProDiscovery";
              break;
            case 131100:
              v10 = "SharingVisionProStateChange";
              break;
            case 131101:
              v10 = "SharingContinuityScreen";
              break;
            case 131102:
              v10 = "SharingEDTRemoteDisplay";
              break;
            case 131103:
              v10 = "SharingHomePodSetup";
              break;
            default:
              goto LABEL_215;
          }
        }

LABEL_216:
        NSAppendPrintF(&v18, v6, v10);
        v6 = ", %s";
      }

      v5 = [stringCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
      v6 = ", %s";
    }

    while (v5);
  }

  v11 = v18;
  if (!v18)
  {
    v11 = &stru_1F1D30528;
  }

  v12 = v11;

  return v12;
}

- (BOOL)_watchSetupParseData:(id)data fields:(id)fields
{
  dataCopy = data;
  fieldsCopy = fields;
  if ([dataCopy length] >= 0xD && *objc_msgSend(dataCopy, "bytes") == 6)
  {
    if (_os_feature_enabled_impl())
    {
      [fieldsCopy setObject:dataCopy forKeyedSubscript:@"wd"];
    }

    else
    {
      v8 = [dataCopy subdataWithRange:{2, 4}];
      v9 = [objc_alloc(getWatchSetupAdvertisementIdentifierClass()) initWithPackedIdentifierData:v8];
      humanReadableName = [v9 humanReadableName];
      [fieldsCopy setObject:humanReadableName forKeyedSubscript:@"name"];

      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v9, "advertisingIdentifier")}];
      [fieldsCopy setObject:v11 forKeyedSubscript:@"wi"];

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v9, "deviceSize")}];
      [fieldsCopy setObject:v12 forKeyedSubscript:@"ws"];

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v9, "enclosureMaterial")}];
      [fieldsCopy setObject:v13 forKeyedSubscript:@"wm"];

      v14 = [dataCopy subdataWithRange:{6, 7}];
      v15 = [objc_alloc(getWatchSetupExtendedMetadataClass()) initWithPackedExtendedMetadataData:v14];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v15, "pairingVersion")}];
      [fieldsCopy setObject:v16 forKeyedSubscript:@"wpv"];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)foundNearbyDevice:(id)device data:(id)data peerInfo:(id)info
{
  deviceCopy = device;
  dataCopy = data;
  infoCopy = info;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = getWPNearbyKeyRSSI(v10);
  v12 = [infoCopy objectForKeyedSubscript:v11];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isKindOfClass = [v12 integerValue];
    v14 = isKindOfClass;
  }

  else
  {
    v14 = 0;
  }

  v15 = getWPNearbyKeyManufacturerData(isKindOfClass);
  v16 = [infoCopy objectForKeyedSubscript:v15];

  if ([v16 length])
  {
    [v10 setObject:v16 forKeyedSubscript:@"mfrD"];
    [(SFBLEScanner *)self _nearbyParseManufacturerData:v16 fields:v10];
  }

  else
  {
    bytes = [dataCopy bytes];
    v23 = [dataCopy length];
    wpNearbyType = self->_wpNearbyType;
    if (wpNearbyType == 1)
    {
      [(SFBLEScanner *)self _nearbyParseNearbyInfoPtr:bytes end:bytes + v23 fields:v10];
    }

    else if (!wpNearbyType)
    {
      [(SFBLEScanner *)self _nearbyParseNearbyActionPtr:bytes end:bytes + v23 fields:v10];
    }
  }

  v17 = [infoCopy objectForKeyedSubscript:@"kDeviceChannel"];
  v18 = v17;
  if (v17)
  {
    v17 = [v10 setObject:v17 forKeyedSubscript:@"ch"];
  }

  v19 = getWPNearbyKeyDeviceAddress(v17);
  v20 = [infoCopy objectForKeyedSubscript:v19];

  v21 = [v20 length];
  if (v21 == 6)
  {
    v21 = [v10 setObject:v20 forKeyedSubscript:@"bdAddr"];
  }

  getWPNearbyKeyPaired(v21);
  if (CFDictionaryGetInt64())
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
  }

  [(SFBLEScanner *)self _foundDevice:deviceCopy advertisementData:dataCopy rssi:v14 fields:v10];
}

- (void)_nearbyParseNearbyActionPtr:(const char *)ptr end:(const char *)end fields:(id)fields
{
  fieldsCopy = fields;
  if (end - ptr < 1)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = *ptr++;
    v8 = v9;
    if (v9)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v8];
      [fieldsCopy setObject:v10 forKeyedSubscript:@"af1"];

      if ((v8 & 0x20) != 0)
      {
        [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"nk"];
      }

      if ((v8 & 0x40) != 0)
      {
        [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ns"];
      }
    }
  }

  if (end - ptr < 1)
  {
    v11 = 0;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = *ptr++;
  v11 = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v12];
  [fieldsCopy setObject:v13 forKeyedSubscript:@"dt"];

  if (v12 == 50)
  {
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"na"];
  }

  if ((v8 & 0x80) != 0)
  {
LABEL_14:
    if (end - ptr >= 3)
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:3];
      [fieldsCopy setObject:v14 forKeyedSubscript:@"at"];

      ptr += 3;
    }
  }

LABEL_16:
  if ((v11 <= 0x24 && ((1 << v11) & 0x1200480A00) != 0 || v11 == 90 || v11 == 84) && end - ptr >= 1)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*ptr >> 5];
    [fieldsCopy setObject:v15 forKeyedSubscript:@"cl"];

    v16 = *ptr++;
    0x1F = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v16 & 0x1F];
    [fieldsCopy setObject:0x1F forKeyedSubscript:@"md"];
  }

  if ((v11 - 33 <= 0x39 && ((1 << (v11 - 33)) & 0x208000000000009) != 0 || v11 - 9 < 3) && end - ptr >= 1)
  {
    v18 = *ptr++;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v18];
    [fieldsCopy setObject:v19 forKeyedSubscript:@"cc"];
  }

  if (v11 <= 0x2B && ((1 << v11) & 0x80100000242) != 0 || v11 == 84)
  {
    if (end - ptr <= 0)
    {
      v25 = v11 == 10;
      goto LABEL_45;
    }
  }

  else
  {
    v22 = end - ptr;
    v37 = v11 == 33 || v11 == 11;
    if (!v37 || v22 <= 0)
    {
      goto LABEL_29;
    }
  }

  v20 = *ptr++;
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v20];
  [fieldsCopy setObject:v21 forKeyedSubscript:@"ov"];

  v22 = end - ptr;
LABEL_29:
  if (v11 == 8 && v22 >= 9)
  {
    v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:9];
    [fieldsCopy setObject:v23 forKeyedSubscript:@"ach"];
    ptr += 9;

    v22 = end - ptr;
  }

  if (v11 == 8 && v22 >= 3)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr length:3];
    [fieldsCopy setObject:v24 forKeyedSubscript:@"ssidH"];
    ptr += 3;
LABEL_48:

    goto LABEL_49;
  }

  v25 = v11 == 10;
  if (v11 == 10 && v22 >= 1)
  {
    v26 = *ptr++;
    v27 = ((2 * v26) | (v26 << 11)) & 0x2000E | (((v26 >> 4) & 1) << 18) | (16 * ((v26 >> 3) & 1)) & 0xFFFEFFFF | (((v26 >> 5) & 1) << 16);
    if ((v26 & 0x80u) == 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 | 0x200000;
    }

    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v28];
    [fieldsCopy setObject:v29 forKeyedSubscript:@"pf"];

    v25 = 1;
  }

LABEL_45:
  if (v25 && end - ptr >= 1)
  {
    v30 = *ptr++;
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v30];
    [fieldsCopy setObject:v24 forKeyedSubscript:@"ov"];
    goto LABEL_48;
  }

LABEL_49:
  if (v11 == 51 || v11 == 9)
  {
    if (end - ptr >= 1)
    {
      v32 = *ptr;
      v31 = ptr + 1;
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v32];
      [fieldsCopy setObject:v33 forKeyedSubscript:@"af2"];

      if ((v32 & 4) != 0 && end - v31 >= 3)
      {
        v34 = [MEMORY[0x1E695DEF0] dataWithBytes:v31 length:3];
        v35 = @"tatag";
LABEL_73:
        [fieldsCopy setObject:v34 forKeyedSubscript:v35];

        goto LABEL_74;
      }
    }

    goto LABEL_74;
  }

  v36 = end - ptr;
  if (v11 == 1 && v36 >= 1)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*ptr];
    v35 = @"md";
    goto LABEL_73;
  }

  if (v11 == 90 && v36 >= 1)
  {
    v38 = *(ptr + 2);
    ucat = self->_ucat;
    if (ucat->var0 <= 40)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_72;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFBLEScanner _nearbyParseNearbyActionPtr:end:fields:]", 40, "Scanner read DovePeacePayload 0x%x\n", v38);
    }

LABEL_72:
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v38];
    v35 = @"dpp";
    goto LABEL_73;
  }

LABEL_74:
}

- (void)_nearbyParseNearbyInfoPtr:(const char *)ptr end:(const char *)end fields:(id)fields
{
  fieldsCopy = fields;
  if (end - ptr >= 1)
  {
    v9 = *ptr++;
    v8 = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v9 & 0xF];
    [fieldsCopy setObject:v10 forKeyedSubscript:@"al"];

    if ((v9 & 0x10) != 0)
    {
      [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"meD"];
      if ((v8 & 0x20) == 0)
      {
LABEL_4:
        if ((v8 & 0x40) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v8 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"rgC"];
    if ((v8 & 0x40) != 0)
    {
LABEL_5:
      [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"adU"];
    }
  }

LABEL_6:
  if (end - ptr < 1)
  {
    goto LABEL_30;
  }

  v11 = (ptr + 1);
  v12 = *ptr;
  if (*ptr < 0)
  {
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ue"];
    if ((v12 & 0x40) == 0)
    {
LABEL_9:
      if ((v12 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*ptr & 0x40) == 0)
  {
    goto LABEL_9;
  }

  [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"uw"];
  if ((v12 & 8) != 0)
  {
LABEL_10:
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ds"];
  }

LABEL_11:
  v13 = MEMORY[0x1E695E118];
  if ((v12 & 0x20) != 0)
  {
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wl"];
  }

  if ((v12 & 4) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E695E110];
  }

  [fieldsCopy setObject:v14 forKeyedSubscript:@"wp"];
  v15 = end - v11;
  if ((v12 & 0x10) != 0 && v15 >= 3)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:ptr + 1 length:3];
    [fieldsCopy setObject:v16 forKeyedSubscript:@"at"];

    v11 = (ptr + 4);
    v15 = end - (ptr + 4);
  }

  if ((v12 & 2) != 0 && v15 >= 1)
  {
    v17 = *v11++;
    v24 = v17;
    v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v24 length:1];
    [fieldsCopy setObject:v18 forKeyedSubscript:@"hsi"];

    v15 = end - v11;
  }

  if ((v12 & 1) == 0 || v15 < 1)
  {
    goto LABEL_30;
  }

  v19 = *v11;
  if (*v11 < 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2048];
    [fieldsCopy setObject:v21 forKeyedSubscript:@"df"];

    if ((v19 & 1) == 0)
    {
LABEL_26:
      if ((v19 & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_39;
    }
  }

  else if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:1];
  [fieldsCopy setObject:v22 forKeyedSubscript:@"camS"];

  if ((v19 & 2) == 0)
  {
LABEL_27:
    if ((v19 & 4) == 0)
    {
      goto LABEL_28;
    }

LABEL_40:
    [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"iLagS"];
    if ((v19 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_39:
  [fieldsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enD"];
  if ((v19 & 4) != 0)
  {
    goto LABEL_40;
  }

LABEL_28:
  if ((v19 & 8) != 0)
  {
LABEL_29:
    v23 = (v19 >> 4) & 7;
    v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v23 length:1];
    [fieldsCopy setObject:v20 forKeyedSubscript:@"ars"];
  }

LABEL_30:
}

- (void)foundPairingDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info withTimeInMachContSeconds:(double)seconds
{
  deviceCopy = device;
  payloadCopy = payload;
  rssiCopy = rssi;
  infoCopy = info;
  v15 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:deviceCopy];
  v16 = [(SFBLEScanner *)self pairingParsePayload:payloadCopy identifier:deviceCopy bleDevice:v15 peerInfo:infoCopy];
  if (v16)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:seconds];
    [v16 setObject:v18 forKeyedSubscript:@"sampleTimestamp"];

    v20 = getWPPairingKeyAdvertisingChannel(v19);
    v21 = [infoCopy objectForKeyedSubscript:v20];

    if (v21)
    {
      [v16 setObject:v21 forKeyedSubscript:@"ch"];
    }

    -[SFBLEScanner _foundDevice:advertisementData:rssi:fields:](self, "_foundDevice:advertisementData:rssi:fields:", deviceCopy, payloadCopy, [rssiCopy integerValue], v16);
  }

  else
  {
    ucat = self->_ucat;
    if (ucat->var0 > 10)
    {
      goto LABEL_8;
    }

    if (ucat->var0 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_4:
      LogPrintF(ucat, "[SFBLEScanner foundPairingDevice:payload:rssi:peerInfo:withTimeInMachContSeconds:]", 10, "pairingParsePayload failed to parse Pairing payload: <%@> for device: %@", payloadCopy, deviceCopy);
    }
  }

LABEL_8:
}

- (void)pairingParseAccessoryStatusPayloadPtr:(const char *)ptr end:(const char *)end fields:(id)fields
{
  v20[1] = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  if (end - ptr < 1 || ((v9 = *ptr, v8 = ptr + 1, [MEMORY[0x1E696AD98] numberWithInt:v9 & 7], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(fieldsCopy, "setObject:forKeyedSubscript:", v10, @"locP"), v10, (v9 & 4) != 0) ? (v11 = MEMORY[0x1E695E118]) : (v11 = MEMORY[0x1E695E110]), objc_msgSend(fieldsCopy, "setObject:forKeyedSubscript:", v11, @"lc"), end - v8 < 1))
  {
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  v12 = *v8;
  if (v12 != 254)
  {
    if (v12 == 255)
    {
      goto LABEL_20;
    }

    if ((v12 & 0x80) != 0)
    {
      v13 = 2;
LABEL_12:
      v14 = v12 & 0x7F;
      if (v14 >= 0x64)
      {
        v14 = 100;
      }

      v15 = v14 / 100.0;
      goto LABEL_15;
    }

LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v15 = 0.8;
  v13 = 2;
LABEL_15:
  v16 = objc_alloc_init(SFBatteryInfo);
  v17 = v16;
  v18 = 1.0;
  if (v15 <= 1.0)
  {
    v18 = v15;
  }

  if (v18 < 0.0001)
  {
    v18 = 0.0001;
  }

  [(SFBatteryInfo *)v16 setBatteryLevel:v18];
  [(SFBatteryInfo *)v17 setBatteryState:v13];
  [(SFBatteryInfo *)v17 setBatteryType:1];
  v20[0] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [fieldsCopy setObject:v19 forKeyedSubscript:@"batteryInfo"];

LABEL_20:
}

- (BOOL)pairingUpdatePairedInfo:(id)info fields:(id)fields bleDevice:(id)device
{
  infoCopy = info;
  fieldsCopy = fields;
  deviceCopy = device;
  if ([(SFBLEScanner *)self _btSessionUsable])
  {
    v11 = [(SFBLEScanner *)self pairingUpdatePairedInfoMB:infoCopy fields:fieldsCopy bleDevice:deviceCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)pairingUpdatePairedInfoMB:(id)b fields:(id)fields bleDevice:(id)device
{
  v54[2] = *MEMORY[0x1E69E9840];
  bCopy = b;
  fieldsCopy = fields;
  deviceCopy = device;
  paired = [deviceCopy paired];
  if (deviceCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [deviceCopy pairCheckTime];
    if (Current - v13 <= 1.0)
    {
LABEL_38:
      bluetoothAddress = [deviceCopy bluetoothAddress];
      if (bluetoothAddress)
      {
        [fieldsCopy setObject:bluetoothAddress forKeyedSubscript:@"publicAddress"];
      }

      if ([deviceCopy connectedServices])
      {
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(deviceCopy, "connectedServices")}];
        [fieldsCopy setObject:v27 forKeyedSubscript:@"CnSv"];
      }

      name = [deviceCopy name];

      if (name)
      {
        [fieldsCopy setObject:name forKeyedSubscript:@"name"];
      }

      v29 = [MEMORY[0x1E696AD98] numberWithBool:paired];
      [fieldsCopy setObject:v29 forKeyedSubscript:@"paired"];

      goto LABEL_45;
    }
  }

  if (!self->_btSession)
  {
    if (!self->_btStarted)
    {
      goto LABEL_34;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 60)
    {
      goto LABEL_34;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_34;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner pairingUpdatePairedInfoMB:fields:bleDevice:]", 60, "### No BTSession to look up device %@\n", bCopy);
LABEL_34:
    v15 = 0;
    goto LABEL_35;
  }

  v54[0] = 0;
  v54[1] = 0;
  v36 = 0;
  [bCopy getUUIDBytes:v54];
  v14 = softLinkBTDeviceFromIdentifier(self->_btSession, v54, &v36);
  v15 = v14 == 0;
  if (!v14)
  {
    memset(v53, 0, sizeof(v53));
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    memset(v37, 0, sizeof(v37));
    v34 = 0;
    v33 = 0;
    v38 = 0;
    if (!softLinkBTDeviceGetName(v36, &v38, 248) && v38)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v38];
      [fieldsCopy setObject:v16 forKeyedSubscript:@"name"];
    }

    v35 = 0;
    if (softLinkBTDeviceGetPairingStatus(v36, &v35))
    {
      paired = paired;
    }

    else
    {
      paired = v35 != 0;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithBool:paired];
    [fieldsCopy setObject:v17 forKeyedSubscript:@"paired"];

    v32 = 0;
    softLinkBTDeviceIsTemporaryPaired(v36, &v32);
    [deviceCopy setTempPaired:v32 != 0];
    v31 = 0;
    if (softLinkBTDeviceGetConnectedServices(v36, &v31))
    {
      v31 = 0;
    }

    else if (v31)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [fieldsCopy setObject:v19 forKeyedSubscript:@"CnSv"];
    }

    bluetoothAddress2 = [deviceCopy bluetoothAddress];
    if (bluetoothAddress2)
    {
      [fieldsCopy setObject:bluetoothAddress2 forKeyedSubscript:@"publicAddress"];
    }

    else
    {
      LOBYTE(v37[0]) = 0;
      if (!softLinkBTDeviceGetAddressString(v36, v37, 32) && LOBYTE(v37[0]) && !softLinkBTDeviceAddressFromString(v37, &v33))
      {
        v25 = [MEMORY[0x1E695DEF0] dataWithBytes:&v33 length:6];
        [fieldsCopy setObject:v25 forKeyedSubscript:@"publicAddress"];
      }
    }
  }

  v21 = self->_ucat;
  if (v21->var0 <= 8)
  {
    if (v21->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_35;
      }

      v21 = self->_ucat;
    }

    v22 = [fieldsCopy objectForKeyedSubscript:@"name"];
    v23 = v22;
    v24 = "no";
    if (paired)
    {
      v24 = "yes";
    }

    LogPrintF(v21, "[SFBLEScanner pairingUpdatePairedInfoMB:fields:bleDevice:]", 8, "Updated paired info for %#U: Name '%@', Paired %s\n", v54, v22, v24);
  }

LABEL_35:
  if (deviceCopy)
  {
    [deviceCopy setPairCheckTime:CFAbsoluteTimeGetCurrent()];
  }

  if (!v15)
  {
    goto LABEL_38;
  }

LABEL_45:

  return paired;
}

- (id)modelWithProductID:(unsigned __int16)d
{
  dCopy = d;
  v4 = [[SFHeadphoneProduct alloc] initWithProductID:d];
  v5 = v4;
  if (v4)
  {
    bluetoothModel = [(SFHeadphoneProduct *)v4 bluetoothModel];
LABEL_3:
    v7 = bluetoothModel;
    goto LABEL_4;
  }

  if (dCopy <= 788)
  {
    switch(dCopy)
    {
      case 0x266:
        v7 = @"ATVRemote1,1";
        break;
      case 0x26D:
        v7 = @"ATVRemote1,2";
        break;
      case 0x314:
        v7 = @"ATVRemote1,3";
        break;
      default:
LABEL_19:
        bluetoothModel = [MEMORY[0x1E696AEC0] stringWithFormat:@"Device1, %u", dCopy];
        goto LABEL_3;
    }
  }

  else
  {
    v7 = @"AirPods1,1";
    switch(dCopy)
    {
      case 8194:
        break;
      case 8195:
        v7 = @"PowerBeats3,1";
        break;
      case 8196:
      case 8199:
      case 8200:
      case 8209:
      case 8210:
      case 8211:
      case 8212:
      case 8213:
      case 8214:
      case 8216:
      case 8217:
      case 8219:
      case 8220:
      case 8221:
      case 8222:
      case 8223:
      case 8224:
      case 8225:
      case 8226:
      case 8227:
      case 8228:
        goto LABEL_19;
      case 8197:
        v7 = @"BeatsX1,1";
        break;
      case 8198:
        v7 = @"BeatsSolo3,1";
        break;
      case 8201:
        v7 = @"BeatsStudio3,2";
        break;
      case 8202:
        v7 = @"Device1,8202";
        break;
      case 8203:
        v7 = @"PowerbeatsPro1,1";
        break;
      case 8204:
        v7 = @"BeatsSoloPro1,1";
        break;
      case 8205:
        v7 = @"Powerbeats4,1";
        break;
      case 8206:
        v7 = @"AirPodsPro1,1";
        break;
      case 8207:
        v7 = @"AirPods1,3";
        break;
      case 8208:
        v7 = @"Device1,8208";
        break;
      case 8215:
        v7 = @"BeatsStudioPro1,1";
        break;
      case 8218:
        v7 = @"Device1,8218";
        break;
      case 8229:
        v7 = @"Device1,8229";
        break;
      default:
        if (dCopy == 789)
        {
          v7 = @"ATVRemote1,4";
        }

        else
        {
          if (dCopy != 21760)
          {
            goto LABEL_19;
          }

          v7 = @"Device1,21760";
        }

        break;
    }
  }

LABEL_4:

  return v7;
}

- (void)parseStatus3:(unsigned __int8)status3 productID:(unsigned int)d caseLEDColor:(unsigned __int8 *)color caseLEDStatus:(char *)status
{
  status3Copy = status3;
  v13 = [[SFHeadphoneProduct alloc] initWithProductID:*&d];
  if ([(SFHeadphoneProduct *)v13 isBeatsProductWithCase])
  {
    v9 = (status3Copy >> 4) & 3;
    if (v9 == 2)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      LOBYTE(v9) = 2 * (v9 != 1);
    }

    if (status3Copy >= 0x40)
    {
      LOBYTE(v10) = 4 * ((status3Copy & 0xC0) == 64);
    }

    else
    {
      LOBYTE(v10) = 3;
    }

    v11 = v13;
  }

  else
  {
    v12 = +[SFHeadphoneProduct airPodsMax];

    v10 = (status3Copy >> 5) & 3;
    v11 = v13;
    v9 = status3Copy >> 7;
    if (v13 == v12)
    {
      LOBYTE(v9) = (status3Copy & 0x10) != 0;
    }
  }

  *color = v10;
  *status = v9;
}

- (unsigned)statusToHeadsetStatus:(unsigned __int8)status forProductID:(unsigned __int16)d
{
  dCopy = d;
  statusCopy = status;
  v6 = [[SFHeadphoneProduct alloc] initWithProductID:d];
  v7 = +[SFHeadphoneProduct airPodsMax];
  altProductID = [v7 altProductID];

  if (altProductID == dCopy)
  {
    v9 = (statusCopy >> 1) & 3;
LABEL_18:
    v16 = dword_1A998F280[v9];
    goto LABEL_19;
  }

  v10 = +[SFHeadphoneProduct airPodsMax];

  if (v6 == v10)
  {
    v9 = (statusCopy >> 5) & 3;
    goto LABEL_18;
  }

  v11 = statusCopy & 1;
  v12 = (statusCopy >> 1) & 3;
  v13 = v11 | 2;
  if (v12 != 2)
  {
    v13 = statusCopy & 1 | 8;
  }

  if (v12)
  {
    v11 |= 4u;
  }

  if (((statusCopy >> 1) & 3) > 1)
  {
    v11 = v13;
  }

  v14 = (statusCopy >> 3) & 3;
  v15 = v11 | 0x10;
  if (v14 != 2)
  {
    v15 = v11 | 0x40;
  }

  if (v14)
  {
    v11 |= 0x20u;
  }

  if (((statusCopy >> 3) & 3) > 1)
  {
    v11 = v15;
  }

  v16 = (4 * statusCopy) & 0x180 ^ 0x100 | v11;
LABEL_19:
  if ((statusCopy & 0x80u) == 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 | 0x200;
  }

  return v17;
}

- (SFBLEScanner)initWithType:(int64_t)type
{
  v12 = 0;
  v11 = 0;
  v10.receiver = self;
  v10.super_class = SFBLEScanner;
  v4 = [(SFBLEScanner *)&v10 init];
  if (v4 && ((SFMainQueue(), v5 = objc_claimAutoreleasedReturnValue(), dispatchQueue = v4->_dispatchQueue, v4->_dispatchQueue = v5, dispatchQueue, v4->_payloadType = type, v4->_rescanInterval = 10.0, v4->_rescanIntervalScreenOff = -1, v4->_scanRate = 20, (type + 1) > 0x12) ? (v7 = "?") : (v7 = off_1E788E208[type + 1]), (ASPrintF(&v12, "SFBLEScanner-%s", v7), v12) && (v4->_ucat = LogCategoryCreateEx(), free(v12), !v11)))
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_restartIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v160[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    v49 = 4294960572;
LABEL_95:
    ucat = OUTLINED_FUNCTION_2_8();
    if (v51 <= 60)
    {
      if (v51 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_200;
        }

        ucat = self->_ucat;
      }

      v148 = v49;
      v52 = "### RestartIfNeeded failed: %#m\n";
      v53 = 60;
      goto LABEL_98;
    }

    goto LABEL_200;
  }

  v5 = OUTLINED_FUNCTION_2_8();
  if (v6 <= 9)
  {
    if (v6 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v5 = self->_ucat;
    }

    LogPrintF(v5, "[SFBLEScanner _restartIfNeeded:]", 9, "RestartIfNeeded\n");
  }

LABEL_6:
  if (self->_needDups)
  {
    changeFlags = self->_changeFlags;
    if ((changeFlags & 0x16) == 0)
    {
      v8 = self->_ucat;
      if (v8->var0 <= 30)
      {
        if (v8->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v8 = self->_ucat;
          changeFlags = self->_changeFlags;
        }

        LogPrintF(v8, "[SFBLEScanner _restartIfNeeded:]", 30, "Enabling duplicate filter on updated change flags: 0x%x\n", changeFlags);
      }

LABEL_12:
      self->_needDups = 0;
    }
  }

  payloadType = self->_payloadType;
  if ((payloadType - 15) < 2)
  {
    wpNearby = self->_wpNearby;
    if (!wpNearby)
    {
      goto LABEL_200;
    }

    if (self->_scanCache && self->_scanStarted)
    {
      OUTLINED_FUNCTION_0_13();
      if (!(v58 ^ v59 | v10) || v137 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_200;
      }

      OUTLINED_FUNCTION_30();

      LogPrintF(v138, v139, v140, v141);
      return;
    }

    state = [(WPNearby *)wpNearby state];
    if (state != 3)
    {
      goto LABEL_262;
    }

    if ([(SFBLEScanner *)self _needDups]|| !self->_needDups)
    {
LABEL_117:
      scanRate = self->_scanRate;
      v61 = 10;
      if (scanRate > 29)
      {
        v61 = 20;
      }

      if (scanRate <= 49)
      {
        v62 = v61;
      }

      else
      {
        v62 = 40;
      }

      v63 = neededCopy || !self->_scanStarted;
      scanParamFilterData = self->_scanParamFilterData;
      v65 = self->_payloadFilterData;
      v66 = scanParamFilterData;
      OUTLINED_FUNCTION_28();
      if (v10)
      {
      }

      else
      {
        OUTLINED_FUNCTION_26();
        if (v67 == (scanParamFilterData == 0))
        {
          goto LABEL_148;
        }

        v68 = [OUTLINED_FUNCTION_8_0() isEqual:?];

        if (!v68)
        {
          goto LABEL_149;
        }
      }

      scanParamFilterData = self->_scanParamFilterMask;
      v65 = self->_payloadFilterMask;
      v69 = scanParamFilterData;
      OUTLINED_FUNCTION_28();
      if (v10)
      {
      }

      else
      {
        OUTLINED_FUNCTION_26();
        if (v70 == (scanParamFilterData == 0))
        {
          goto LABEL_148;
        }

        v71 = [OUTLINED_FUNCTION_8_0() isEqual:?];

        if (!v71)
        {
          goto LABEL_149;
        }
      }

      scanParamFilterData = self->_scanParamPeers;
      v65 = self->_deviceFilter;
      v72 = scanParamFilterData;
      OUTLINED_FUNCTION_28();
      if (v10)
      {
      }

      else
      {
        OUTLINED_FUNCTION_26();
        if (v73 == (scanParamFilterData == 0))
        {
          goto LABEL_148;
        }

        v74 = [OUTLINED_FUNCTION_8_0() isEqual:?];

        if (!v74)
        {
          goto LABEL_149;
        }
      }

      if (v62 != self->_scanParamMode || self->_rssiThreshold != self->_scanParamRSSI || self->_needDups != self->_scanParamDups || self->_scanCache != self->_scanParamCache)
      {
        goto LABEL_149;
      }

      scanParamFilterData = self->_scanUseCases;
      v65 = self->_useCases;
      v75 = scanParamFilterData;
      OUTLINED_FUNCTION_28();
      if (v10)
      {

        goto LABEL_249;
      }

      OUTLINED_FUNCTION_26();
      if (v76 != (scanParamFilterData == 0))
      {
        v77 = [OUTLINED_FUNCTION_8_0() isEqual:?];

        if (v77)
        {
LABEL_249:
          if (!v63)
          {
            v133 = OUTLINED_FUNCTION_0_13();
            if (!(v58 ^ v59 | v10))
            {
              goto LABEL_198;
            }

            if (v134 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_198;
              }

              v133 = self->_ucat;
            }

            LogPrintF(v133, "[SFBLEScanner _restartIfNeeded:]", 20, "Scan restart skipped when unchanged\n");
LABEL_198:
            [(SFBLEScanner *)self _updateTrackedPeers];
            goto LABEL_199;
          }

          v78 = 0;
          if (!self->_scanStarted || !neededCopy)
          {
LABEL_150:
            v79 = self->_ucat;
            if (v79->var0 <= 30)
            {
              if (v79->var0 != -1)
              {
                goto LABEL_152;
              }

              if (_LogCategory_Initialize())
              {
                v79 = self->_ucat;
LABEL_152:
                if (self->_payloadFilterData)
                {
                  payloadFilterData = self->_payloadFilterData;
                }

                else
                {
                  payloadFilterData = &stru_1F1D30528;
                }

                if (self->_payloadFilterMask)
                {
                  payloadFilterMask = self->_payloadFilterMask;
                }

                else
                {
                  payloadFilterMask = &stru_1F1D30528;
                }

                v82 = [(NSArray *)self->_deviceFilter count];
                v83 = self->_scanRate;
                v156 = neededCopy;
                v152 = payloadFilterMask;
                v150 = v82;
                v84 = "Invalid";
                switch(v83)
                {
                  case 0:
                    break;
                  case 1:
                    v84 = "BackgroundOld";
                    break;
                  case 2:
                    v84 = "NormalOld";
                    break;
                  case 3:
                    v84 = "HighOld";
                    break;
                  case 4:
                    v84 = "AggressiveOld";
                    break;
                  case 5:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                    goto LABEL_167;
                  case 10:
                    v84 = "Background";
                    break;
                  default:
                    switch(v83)
                    {
                      case 20:
                        v84 = "Normal";
                        break;
                      case 30:
                        v84 = "HighNormal";
                        break;
                      case 40:
                        v84 = "High";
                        break;
                      case 50:
                        v84 = "Aggressive";
                        break;
                      default:
LABEL_167:
                        v84 = "?";
                        break;
                    }

                    break;
                }

                v149 = v84;
                rssiThreshold = self->_rssiThreshold;
                if (self->_needDups)
                {
                  v86 = "yes";
                }

                else
                {
                  v86 = "no";
                }

                if (self->_scanCache)
                {
                  v87 = "yes";
                }

                else
                {
                  v87 = "no";
                }

                v88 = [(NSSet *)self->_trackedPeers count];
                v89 = [(SFBLEScanner *)self _useCasesToString:self->_useCases];
                v90 = v89;
                if (v156)
                {
                  v91 = "yes";
                }

                else
                {
                  v91 = "no";
                }

                if (v78)
                {
                  v92 = "yes";
                }

                else
                {
                  v92 = "no";
                }

                LogPrintF(v79, "[SFBLEScanner _restartIfNeeded:]", 30, "Starting scan: blob <%@>/<%@>, devices %ld, rate %s, RSSI %ld, dups %s, cache %s, tracked %d, useCases <%@>, force %s, stop %s\n", payloadFilterData, v152, v150, v149, rssiThreshold, v86, v87, v88, v89, v91, v92);
              }
            }

            if (v78)
            {
              [(WPNearby *)self->_wpNearby stopScanningForType:self->_wpNearbyType];
            }

            v93 = self->_wpNearby;
            wpNearbyType = self->_wpNearbyType;
            v95 = self->_payloadFilterData;
            v96 = self->_payloadFilterMask;
            deviceFilter = self->_deviceFilter;
            v98 = self->_rssiThreshold;
            if (v98)
            {
              v99 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rssiThreshold];
            }

            else
            {
              v99 = 0;
            }

            BYTE1(v147) = self->_scanCache;
            LOBYTE(v147) = self->_needDups;
            [(WPNearby *)v93 startScanningForType:wpNearbyType data:v95 mask:v96 peers:deviceFilter scanMode:v62 rssi:v99 duplicates:v147 scanCache:self->_useCases useCaseList:?];
            if (v98)
            {
            }

            goto LABEL_197;
          }

          v131 = OUTLINED_FUNCTION_2_8();
          if (v132 <= 30)
          {
            if (v132 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_279;
              }

              v131 = self->_ucat;
            }

            LogPrintF(v131, "[SFBLEScanner _restartIfNeeded:]", 30, "Clearing duplicate cache");
          }

LABEL_279:
          [(WPNearby *)self->_wpNearby clearDuplicatesForType:self->_wpNearbyType];
LABEL_197:
          v100 = [(NSData *)self->_payloadFilterData copy];
          v101 = self->_scanParamFilterData;
          self->_scanParamFilterData = v100;

          v102 = [(NSData *)self->_payloadFilterMask copy];
          scanParamFilterMask = self->_scanParamFilterMask;
          self->_scanParamFilterMask = v102;

          v104 = [(NSArray *)self->_deviceFilter copy];
          scanParamPeers = self->_scanParamPeers;
          self->_scanParamPeers = v104;

          self->_scanParamMode = v62;
          OUTLINED_FUNCTION_24();
          self->_scanParamCache = self->_scanCache;
          v106 = [(NSSet *)self->_useCases copy];
          scanUseCases = self->_scanUseCases;
          self->_scanUseCases = v106;

          goto LABEL_198;
        }

LABEL_149:
        v78 = self->_scanStarted && neededCopy;
        goto LABEL_150;
      }

LABEL_148:

      goto LABEL_149;
    }

    v15 = OUTLINED_FUNCTION_2_8();
    if (v16 <= 30)
    {
      if (v16 != -1)
      {
LABEL_31:
        v17 = self->_payloadType + 1;
        if (v17 > 0x12)
        {
          v18 = "?";
        }

        else
        {
          v18 = off_1E788E208[v17];
        }

        LogPrintF(v15, "[SFBLEScanner _restartIfNeeded:]", 30, "Enabling duplicate filter on payload type %s\n", v18);
        goto LABEL_116;
      }

      if (_LogCategory_Initialize())
      {
        v15 = self->_ucat;
        goto LABEL_31;
      }
    }

LABEL_116:
    self->_needDups = 0;
    goto LABEL_117;
  }

  v10 = payloadType == -1 || payloadType == 17;
  if (!v10)
  {
    if (payloadType != 7)
    {
      if (payloadType == 5)
      {
        wpAirDrop = self->_wpAirDrop;
        if (wpAirDrop)
        {
          state2 = [(WPAWDL *)wpAirDrop state];
          if (state2 == 3)
          {
            [(WPAWDL *)self->_wpAirDrop stopConnectionlessAWDLServiceScanning];
            [(WPAWDL *)self->_wpAirDrop startConnectionlessAWDLServiceScanning];
            goto LABEL_199;
          }

          v143 = self->_ucat;
          if (v143->var0 > 20)
          {
            goto LABEL_200;
          }

          v144 = state2;
          if (v143->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_200;
            }

            v143 = self->_ucat;
          }

          v148 = SFBluetoothStateToString(v144);
          v52 = "Scan start deferred while in Bluetooth state: %s\n";
          ucat = v143;
          goto LABEL_277;
        }

LABEL_200:
        OUTLINED_FUNCTION_30();
        return;
      }

      v25 = self->_ucat;
      if (v25->var0 > 60)
      {
        goto LABEL_94;
      }

      if (v25->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_94:
          v49 = 4294960561;
          goto LABEL_95;
        }

        v25 = self->_ucat;
        payloadType = self->_payloadType;
      }

      if ((payloadType + 1) > 0x12)
      {
        v26 = "?";
      }

      else
      {
        v26 = off_1E788E208[payloadType + 1];
      }

      LogPrintF(v25, "[SFBLEScanner _restartIfNeeded:]", 60, "### Restart unsupported type: %ld (%s)\n", payloadType, v26);
      goto LABEL_94;
    }

    wpPairing = self->_wpPairing;
    if (!wpPairing)
    {
      goto LABEL_200;
    }

    state = [(WPPairing *)wpPairing state];
    if (state == 3)
    {
      v22 = self->_scanRate;
      if (v22 <= 49)
      {
        v23 = 2 * (v22 > 39);
      }

      else
      {
        v23 = 3;
      }

      v24 = neededCopy || !self->_scanStarted;
      v27 = self->_rssiThreshold;
      if (v27 == self->_scanParamRSSI && self->_needDups == self->_scanParamDups)
      {
        scanParamMode = self->_scanParamMode;
        if (((v23 == scanParamMode) & ~v24) != 0)
        {
          v56 = OUTLINED_FUNCTION_0_13();
          if (!(v58 ^ v59 | v10))
          {
            goto LABEL_199;
          }

          if (v57 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_199;
            }

            v56 = self->_ucat;
          }

          LogPrintF(v56, "[SFBLEScanner _restartIfNeeded:]", 20, "Scan restart skipped when unchanged\n");
LABEL_199:
          self->_scanStarted = 1;
          [(SFBLEScanner *)self _updateRescanTimer];
          [(CURetrier *)self->_startRetrier succeededDirect];
          goto LABEL_200;
        }

        v29 = self->_scanStarted && neededCopy;
        if (v23 == scanParamMode && self->_scanStarted && neededCopy)
        {
          v30 = OUTLINED_FUNCTION_2_8();
          if (v31 <= 30)
          {
            if (v31 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_247;
              }

              v30 = self->_ucat;
            }

            LogPrintF(v30, "[SFBLEScanner _restartIfNeeded:]", 30, "Clearing duplicate cache");
          }

LABEL_247:
          [(WPPairing *)self->_wpPairing clearProximityPairingServiceDuplicates];
LABEL_107:
          OUTLINED_FUNCTION_24();
          self->_scanParamMode = v23;
          goto LABEL_199;
        }
      }

      else
      {
        v29 = self->_scanStarted && neededCopy;
      }

      v32 = self->_ucat;
      if (v32->var0 <= 30)
      {
        if (v32->var0 != -1)
        {
          v155 = neededCopy;
LABEL_60:
          v33 = SFScanRateToString(v22);
          if (self->_needDups)
          {
            v34 = "yes";
          }

          else
          {
            v34 = "no";
          }

          v35 = [(SFBLEScanner *)self _useCasesToString:self->_useCases];
          v36 = v35;
          if (v155)
          {
            v37 = "yes";
          }

          else
          {
            v37 = "no";
          }

          if (v29)
          {
            v38 = "yes";
          }

          else
          {
            v38 = "no";
          }

          LogPrintF(v32, "[SFBLEScanner _restartIfNeeded:]", 30, "Starting scan: RSSI threshold %ld, ScanRate %s, Dups %s, useCases <%@>, Force %s, Stop %s\n", v27, v33, v34, v35, v37, v38);

          goto LABEL_102;
        }

        if (_LogCategory_Initialize())
        {
          v155 = neededCopy;
          v32 = self->_ucat;
          v27 = self->_rssiThreshold;
          v22 = self->_scanRate;
          goto LABEL_60;
        }
      }

LABEL_102:
      if (v29)
      {
        [(WPPairing *)self->_wpPairing stopProximityPairingServiceScanning];
      }

      v54 = self->_wpPairing;
      if (self->_rssiThreshold)
      {
        v55 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [(WPPairing *)v54 startProximityPairingServiceScanningWithRSSI:v55 duplicates:self->_needDups scanMode:v23];
      }

      else
      {
        [(WPPairing *)self->_wpPairing startProximityPairingServiceScanningWithRSSI:0 duplicates:self->_needDups scanMode:v23];
      }

      goto LABEL_107;
    }

LABEL_262:
    v135 = self->_ucat;
    if (v135->var0 > 20)
    {
      goto LABEL_200;
    }

    v136 = state;
    if (v135->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_200;
      }

      v135 = self->_ucat;
    }

    v148 = SFBluetoothStateToString(v136);
    v52 = "Scan start deferred while in Bluetooth state: %s\n";
    ucat = v135;
LABEL_277:
    v53 = 20;
LABEL_98:
    LogPrintF(ucat, "[SFBLEScanner _restartIfNeeded:]", v53, v52, v148);
    goto LABEL_200;
  }

  array = [MEMORY[0x1E695DF70] array];
  centralManager = self->_centralManager;
  if (centralManager)
  {
    switch([(CBCentralManager *)centralManager state])
    {
      case 1:
        v20 = 1;
        goto LABEL_83;
      case 2:
        v20 = 4;
        goto LABEL_83;
      case 3:
        v20 = 5;
        goto LABEL_83;
      case 4:
        v20 = 2;
        goto LABEL_83;
      case 5:
        if (self->_payloadType != 17)
        {
          goto LABEL_73;
        }

        v39 = [(objc_class *)_MergedGlobals_0() UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
        if (v39)
        {
          v40 = v39;
          [array addObject:v39];
          v41 = [(objc_class *)_MergedGlobals_0() UUIDWithString:@"FE25"];

          [array addObject:v41];
LABEL_73:
          scanInterval = self->_scanInterval;
          if (self->_scanWindow >= 1)
          {
            scanWindow = self->_scanWindow;
          }

          else
          {
            scanWindow = 30;
          }

          if (scanInterval <= 0)
          {
            v44 = self->_scanRate;
            if (v44 <= 49)
            {
              if (v44 <= 39)
              {
                if (v44 <= 19)
                {
                  scanInterval = 966;
                }

                else
                {
                  scanInterval = 300;
                }
              }

              else
              {
                scanInterval = 40;
              }
            }

            else
            {
              scanInterval = 30;
            }
          }

          if ([array count])
          {
            v108 = scanWindow;
          }

          else
          {
            scanInterval = 0;
            v108 = 0;
          }

          scanStarted = self->_scanStarted;
          if (!neededCopy && scanStarted)
          {
            if (self->_activeScan == self->_scanParamActive && self->_needDups == self->_scanParamDups && scanInterval == self->_scanParamInterval && v108 == self->_scanParamWindow)
            {
              v110 = OUTLINED_FUNCTION_0_13();
              if (!(v58 ^ v59 | v10))
              {
LABEL_240:
                OUTLINED_FUNCTION_29();
                if (!v10 && OUTLINED_FUNCTION_10_0())
                {
                  OUTLINED_FUNCTION_2_2();
                  v130();
                }

                [(SFBLEScanner *)self _startTimeoutIfNeeded];

                goto LABEL_199;
              }

              if (v111 == -1)
              {
                if (!_LogCategory_Initialize())
                {
                  goto LABEL_240;
                }

                v110 = self->_ucat;
              }

              LogPrintF(v110, "[SFBLEScanner _restartIfNeeded:]", 20, "Scan restart skipped when unchanged\n");
              goto LABEL_240;
            }

            scanStarted = 1;
          }

          v112 = scanStarted && neededCopy;
          stopScan = OUTLINED_FUNCTION_2_8();
          if (v114 <= 30)
          {
            if (v114 != -1)
            {
LABEL_220:
              v115 = self->_payloadType + 1;
              if (v115 > 0x12)
              {
                v116 = "?";
              }

              else
              {
                v116 = off_1E788E208[v115];
              }

              v117 = "no";
              if (self->_activeScan)
              {
                v118 = "yes";
              }

              else
              {
                v118 = "no";
              }

              if (self->_needDups)
              {
                v119 = "yes";
              }

              else
              {
                v119 = "no";
              }

              if (neededCopy)
              {
                v120 = "yes";
              }

              else
              {
                v120 = "no";
              }

              if (v112)
              {
                v117 = "yes";
              }

              stopScan = LogPrintF(stopScan, "[SFBLEScanner _restartIfNeeded:]", 30, "Starting scan: %s, %d/%d ms, active %s, dups %s, force %s, stop: %s\n", v116, v108, scanInterval, v118, v119, v120, v117);
              goto LABEL_237;
            }

            stopScan = _LogCategory_Initialize();
            if (stopScan)
            {
              stopScan = self->_ucat;
              goto LABEL_220;
            }
          }

LABEL_237:
          v121 = v108;
          if (v112)
          {
            stopScan = [(CBCentralManager *)self->_centralManager stopScan];
          }

          v153 = self->_centralManager;
          v157 = off_1EE741438(stopScan);
          v159[0] = v157;
          v154 = [MEMORY[0x1E696AD98] numberWithBool:self->_activeScan];
          v160[0] = v154;
          v122 = off_1EE741440(v154);
          v159[1] = v122;
          v123 = [MEMORY[0x1E696AD98] numberWithBool:self->_needDups];
          v160[1] = v123;
          v124 = off_1EE741448(v123);
          v159[2] = v124;
          v160[2] = MEMORY[0x1E695E118];
          v125 = off_1EE741450(v124);
          v159[3] = v125;
          [MEMORY[0x1E696AD98] numberWithInteger:scanInterval];
          v126 = v151 = scanInterval;
          v160[3] = v126;
          v127 = off_1EE741458(v126);
          v159[4] = v127;
          v128 = [MEMORY[0x1E696AD98] numberWithInteger:v121];
          v160[4] = v128;
          v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:v159 count:5];
          [(CBCentralManager *)v153 scanForPeripheralsWithServices:array options:v129];

          self->_scanParamActive = self->_activeScan;
          self->_scanParamDups = self->_needDups;
          self->_scanParamInterval = v151;
          self->_scanParamWindow = v121;
          goto LABEL_240;
        }

        v145 = OUTLINED_FUNCTION_2_8();
        if (v146 > 90)
        {
          goto LABEL_293;
        }

        if (v146 != -1)
        {
          goto LABEL_290;
        }

        if (_LogCategory_Initialize())
        {
          v145 = self->_ucat;
LABEL_290:
          LogPrintF(v145, "[SFBLEScanner _restartIfNeeded:]", 90, "### Bad service identifier '%@'\n", @"9AA4730F-B25C-4CC3-B821-C931559FC196");
        }

LABEL_293:

        v49 = 4294960591;
        goto LABEL_95;
      default:
        v20 = 0;
LABEL_83:
        v45 = self->_ucat;
        if (v45->var0 > 20)
        {
          break;
        }

        if (v45->var0 != -1)
        {
          goto LABEL_85;
        }

        if (_LogCategory_Initialize())
        {
          v45 = self->_ucat;
LABEL_85:
          v46 = SFBluetoothStateToString(v20);
          LogPrintF(v45, "[SFBLEScanner _restartIfNeeded:]", 20, "Scan start deferred while in Bluetooth state: %s\n", v46);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_30();
}

- (BOOL)_updateCounterpart:(id)counterpart
{
  v24 = *MEMORY[0x1E69E9840];
  counterpartCopy = counterpart;
  v5 = counterpartCopy;
  if (self->_payloadType == 7 && ([counterpartCopy bluetoothAddress], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_devices;
    v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i), v19];
          v14 = v13;
          if (v13 == v5)
          {
            bluetoothAddress = 0;
          }

          else
          {
            bluetoothAddress = [v13 bluetoothAddress];
            if ([bluetoothAddress isEqual:v7])
            {
              identifier = [v14 identifier];
              [v5 setCounterpartIdentifier:identifier];

              v17 = 1;
              goto LABEL_15;
            }
          }
        }

        v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v17 = 0;
LABEL_15:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  OUTLINED_FUNCTION_31();
  centralManager = self->_centralManager;
  if (centralManager)
  {
    v6 = centralManager == v12;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = [(CBCentralManager *)v12 state]- 1;
  if (v7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A998F258[v7];
  }

  ucat = OUTLINED_FUNCTION_2_8();
  if (v10 <= 40)
  {
    if (v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner centralManagerDidUpdateState:]", 40, "Bluetooth state updated: %s\n", off_1E788E2A0[v8]);
  }

LABEL_13:
  switch(v8)
  {
    case 1:
      [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTReset"];
      break;
    case 2:
      [(SFBLEScanner *)self _poweredOff];
      break;
    case 3:
      [(SFBLEScanner *)self _poweredOn];
      break;
  }

  if (self->_bluetoothStateChangedHandler)
  {
    OUTLINED_FUNCTION_3_8();
    v11();
  }

LABEL_21:
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  centralManager = self->_centralManager;

  if (centralManager && centralManager == managerCopy)
  {
    identifier = [peripheralCopy identifier];
    if (identifier)
    {
      [(SFBLEScanner *)self _recordDevice:identifier data:0 rssi:iCopy info:dataCopy];
      [(SFBLEScanner *)self foundPeripheralDevice:peripheralCopy advertisementData:dataCopy RSSI:iCopy];
    }
  }
}

- (void)foundPeripheralDevice:(id)device advertisementData:(id)data RSSI:(id)i
{
  deviceCopy = device;
  dataCopy = data;
  iCopy = i;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    off_1EE741460(v11);
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_8_1() objectForKeyedSubscript:?];

    if (v12)
    {
      v13 = [v11 setObject:v12 forKeyedSubscript:@"ch"];
    }

    off_1EE741468(v13);
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_8_1() objectForKeyedSubscript:?];

    v15 = [v14 length];
    if (v15 == 6)
    {
      v15 = [v11 setObject:v14 forKeyedSubscript:@"bdAddr"];
    }

    off_1EE741470(v15);
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_8_1() objectForKeyedSubscript:?];

    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (self->_payloadType != 17)
    {
      goto LABEL_21;
    }

    p_var0 = &self->_ucat->var0;
    if (*p_var0 <= 50)
    {
      if (*p_var0 == -1)
      {
        p_var0 = _LogCategory_Initialize();
        if (!p_var0)
        {
          goto LABEL_14;
        }

        p_var0 = &self->_ucat->var0;
      }

      p_var0 = LogPrintF(p_var0, "[SFBLEScanner foundPeripheralDevice:advertisementData:RSSI:]", 50, "Found peripheral watch: %@\n", deviceCopy);
    }

LABEL_14:
    v28 = v14;
    off_1EE741478(p_var0);
    objc_claimAutoreleasedReturnValue();
    v18 = [OUTLINED_FUNCTION_8_1() objectForKeyedSubscript:?];

    v19 = [MEMORY[0x1E695D2A0] UUIDWithString:@"FE25"];
    v20 = [v18 objectForKeyedSubscript:v19];
    v27 = identifier;
    if (v20)
    {
      if (![(SFBLEScanner *)self _watchSetupParseData:v20 fields:v11])
      {

        v14 = v28;
        goto LABEL_28;
      }

      v21 = v12;
      v22 = v16;
      v16 = v20;
    }

    else
    {
      v21 = v12;
      v26 = iCopy;
      v23 = off_1EE741480(0);
      v22 = [dataCopy objectForKeyedSubscript:v23];

      if (v22)
      {
        [v11 setObject:v22 forKeyedSubscript:@"name"];
        [(SFBLEScanner *)self _watchSetupParseName:v22 fields:v11];
      }

      iCopy = v26;
    }

    v12 = v21;
    identifier = v27;
    v14 = v28;
LABEL_21:
    integerValue = [iCopy integerValue];
    off_1EE741488(integerValue);
    if (!CFDictionaryGetInt64())
    {
LABEL_27:
      [(SFBLEScanner *)self _foundDevice:identifier advertisementData:v16 rssi:integerValue fields:v11];
LABEL_28:

      goto LABEL_29;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 20)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFBLEScanner foundPeripheralDevice:advertisementData:RSSI:]", 20, "Mapping saturated RSSI (%d) to +127 for %@\n", integerValue, identifier);
    }

LABEL_26:
    integerValue = 127;
    goto LABEL_27;
  }

LABEL_29:
}

- (void)_watchSetupParseName:(id)name fields:(id)fields
{
  nameCopy = name;
  fieldsCopy = fields;
  if (_os_feature_enabled_impl())
  {
    v6 = [nameCopy dataUsingEncoding:4];
    [OUTLINED_FUNCTION_12() setObject:? forKeyedSubscript:?];
    v7 = 0;
LABEL_24:

    goto LABEL_25;
  }

  if ([nameCopy length] < 8)
  {
    v7 = 0;
    goto LABEL_25;
  }

  v7 = [nameCopy substringWithRange:{0, 5}];
  if (v7)
  {
    [fieldsCopy setObject:v7 forKeyedSubscript:@"wi"];
  }

  v8 = [nameCopy characterAtIndex:5];
  if (v8 > 0x7Fu)
  {
    v9 = __maskrune(v8, 0x500uLL);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_1(v8);
  }

  if (v9)
  {
    v10 = memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890", v8, 0x3FuLL);
    if (v10)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v10 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"];
      [OUTLINED_FUNCTION_12() setObject:? forKeyedSubscript:?];
    }
  }

  v12 = [nameCopy characterAtIndex:6];
  if (v12 > 0x7Fu)
  {
    if (!__maskrune(v12, 0x500uLL))
    {
      goto LABEL_18;
    }
  }

  else if (!OUTLINED_FUNCTION_7_1(v12))
  {
    goto LABEL_18;
  }

  v13 = memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890", v12, 0x3FuLL);
  if (v13)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v13 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"];
    [OUTLINED_FUNCTION_12() setObject:? forKeyedSubscript:?];
  }

LABEL_18:
  v15 = [nameCopy characterAtIndex:7];
  if (v15 > 0x7Fu)
  {
    if (!__maskrune(v15, 0x500uLL))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (OUTLINED_FUNCTION_7_1(v15))
  {
LABEL_22:
    v16 = memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890", v15, 0x3FuLL);
    if (!v16)
    {
      goto LABEL_25;
    }

    v6 = [MEMORY[0x1E696AD98] numberWithInt:v16 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"];
    [OUTLINED_FUNCTION_12() setObject:? forKeyedSubscript:?];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)awdlDidUpdateState:(id)state
{
  stateCopy = state;
  OUTLINED_FUNCTION_31();
  wpAirDrop = self->_wpAirDrop;
  if (wpAirDrop)
  {
    v6 = wpAirDrop == v12;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  state = [(WPAWDL *)v12 state];
  ucat = OUTLINED_FUNCTION_2_8();
  if (v9 <= 40)
  {
    if (v9 != -1)
    {
LABEL_8:
      if (state > 5)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1E788E2A0[state];
      }

      LogPrintF(ucat, "[SFBLEScanner awdlDidUpdateState:]", 40, "Bluetooth state updated: %s\n", v10);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_14:
  switch(state)
  {
    case 1uLL:
      [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTReset"];
      break;
    case 2uLL:
      [(SFBLEScanner *)self _poweredOff];
      break;
    case 3uLL:
      [(SFBLEScanner *)self _poweredOn];
      break;
  }

  if (self->_bluetoothStateChangedHandler)
  {
    OUTLINED_FUNCTION_3_8();
    v11();
  }

LABEL_22:
}

- (void)awdlStartedScanning:(id)scanning
{
  dispatchQueue = self->_dispatchQueue;
  scanningCopy = scanning;
  dispatch_assert_queue_V2(dispatchQueue);
  wpAirDrop = self->_wpAirDrop;

  if (wpAirDrop)
  {
    v7 = wpAirDrop == scanningCopy;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return;
  }

  ucat = OUTLINED_FUNCTION_0_13();
  if (v10 ^ v11 | v7)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner awdlStartedScanning:]", 20, "Bluetooth scanning started\n");
  }

LABEL_11:
  OUTLINED_FUNCTION_29();
  if (!v7 && OUTLINED_FUNCTION_10_0())
  {
    OUTLINED_FUNCTION_2_2();
    v12();
  }

  [(SFBLEScanner *)self _startTimeoutIfNeeded];
}

- (void)awdl:(id)awdl failedToStartScanningWithError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  awdlCopy = awdl;
  dispatch_assert_queue_V2(dispatchQueue);
  wpAirDrop = self->_wpAirDrop;

  if (wpAirDrop)
  {
    v9 = wpAirDrop == awdlCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_2_8();
    if (v10 <= 60 && (v10 != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_27();
      LogPrintF(v11, "[SFBLEScanner awdl:failedToStartScanningWithError:]", 60, "### Bluetooth scan failed: %@\n");
    }

    self->_scanStarted = 0;
    [(CURetrier *)self->_startRetrier failedDirect];
  }
}

- (void)awdl:(id)awdl foundDevice:(id)device rssi:(id)rssi
{
  deviceCopy = device;
  rssiCopy = rssi;
  dispatchQueue = self->_dispatchQueue;
  awdlCopy = awdl;
  dispatch_assert_queue_V2(dispatchQueue);
  wpAirDrop = self->_wpAirDrop;

  if (wpAirDrop && wpAirDrop == awdlCopy)
  {
    [(SFBLEScanner *)self _recordDevice:0 data:deviceCopy rssi:rssiCopy info:0];
    [(SFBLEScanner *)self foundAWDLDevice:deviceCopy rssi:rssiCopy];
  }
}

- (void)foundAWDLDevice:(id)device rssi:(id)rssi
{
  v14 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  rssiCopy = rssi;
  v12 = 0;
  v13 = 0;
  if ([deviceCopy length] == 10)
  {
    bytes = [deviceCopy bytes];
    LODWORD(v12) = 0;
    WORD2(v12) = 0;
    HIBYTE(v12) = *(bytes + 1);
    BYTE1(v13) = *(bytes + 2);
    v9 = *(bytes + 3);
    HIWORD(v13) = *(bytes + 7);
    *(&v13 + 2) = v9;
    BYTE6(v12) = 16;
    LOBYTE(v13) = 0x80;
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v12];
    if (v10)
    {
      v11 = v10;
      -[SFBLEScanner _foundDevice:advertisementData:rssi:fields:](self, "_foundDevice:advertisementData:rssi:fields:", v10, deviceCopy, [rssiCopy integerValue], 0);
    }
  }
}

- (void)nearbyDidUpdateState:(id)state
{
  stateCopy = state;
  OUTLINED_FUNCTION_31();
  wpNearby = self->_wpNearby;
  if (wpNearby)
  {
    v6 = wpNearby == v12;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  state = [(WPNearby *)v12 state];
  ucat = OUTLINED_FUNCTION_2_8();
  if (v9 <= 40)
  {
    if (v9 != -1)
    {
LABEL_8:
      if (state > 5)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1E788E2A0[state];
      }

      LogPrintF(ucat, "[SFBLEScanner nearbyDidUpdateState:]", 40, "Bluetooth state updated: %s\n", v10);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_14:
  switch(state)
  {
    case 1uLL:
      [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTReset"];
      break;
    case 2uLL:
      [(SFBLEScanner *)self _poweredOff];
      break;
    case 3uLL:
      [(SFBLEScanner *)self _poweredOn];
      break;
  }

  if (self->_bluetoothStateChangedHandler)
  {
    OUTLINED_FUNCTION_3_8();
    v11();
  }

LABEL_22:
}

- (void)nearby:(id)nearby didStartScanningForType:(int64_t)type
{
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v9 = wpNearby == nearbyCopy;
  }

  else
  {
    v9 = 0;
  }

  if (!v9 || self->_wpNearbyType != type)
  {
    return;
  }

  ucat = OUTLINED_FUNCTION_0_13();
  if (v12 ^ v13 | v9)
  {
    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner nearby:didStartScanningForType:]", 20, "Bluetooth scanning started\n");
  }

LABEL_12:
  OUTLINED_FUNCTION_29();
  if (!v9 && OUTLINED_FUNCTION_10_0())
  {
    OUTLINED_FUNCTION_2_2();
    v14();
  }

  [(SFBLEScanner *)self _startTimeoutIfNeeded];
}

- (void)nearby:(id)nearby didFailToStartScanningForType:(int64_t)type WithError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v11 = wpNearby == nearbyCopy;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && self->_wpNearbyType == type)
  {
    OUTLINED_FUNCTION_2_8();
    if (v12 <= 60 && (v12 != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_27();
      LogPrintF(v13, "[SFBLEScanner nearby:didFailToStartScanningForType:WithError:]", 60, "### Bluetooth scan failed: %@\n");
    }

    self->_scanStarted = 0;
    [(CURetrier *)self->_startRetrier failedDirect];
  }
}

- (void)nearby:(id)nearby didDiscoverType:(int64_t)type withData:(id)data fromPeer:(id)peer peerInfo:(id)info
{
  dataCopy = data;
  peerCopy = peer;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby && wpNearby == nearbyCopy && self->_wpNearbyType == type)
  {
    [(SFBLEScanner *)self _recordDevice:peerCopy data:dataCopy rssi:0 info:infoCopy];
    [(SFBLEScanner *)self foundNearbyDevice:peerCopy data:dataCopy peerInfo:infoCopy];
  }
}

- (void)nearby:(id)nearby didLosePeer:(id)peer type:(int64_t)type
{
  peerCopy = peer;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v11 = wpNearby == nearbyCopy;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || self->_wpNearbyType != type)
  {
LABEL_22:
    v12 = 0;
    goto LABEL_25;
  }

  v12 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:peerCopy];
  ucat = OUTLINED_FUNCTION_2_8();
  if (!v12)
  {
    if (v14 <= 8 && (v14 != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_27();
      LogPrintF(v15, "[SFBLEScanner nearby:didLosePeer:type:]", 8, "Lost WP untracked %@\n");
    }

    goto LABEL_22;
  }

  if (v14 > 8)
  {
    goto LABEL_15;
  }

  if (v14 != -1)
  {
    goto LABEL_10;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_10:
    LogPrintF(ucat, "[SFBLEScanner nearby:didLosePeer:type:]", 8, "Lost WP %@\n", v12);
  }

LABEL_15:
  if (self->_deviceLostHandler)
  {
    OUTLINED_FUNCTION_3_8();
    v16();
  }

  [(NSMutableDictionary *)self->_devices removeObjectForKey:peerCopy];
  if (![(SFBLEScanner *)self _needDups])
  {
    v17 = OUTLINED_FUNCTION_2_8();
    if (v18 <= 30)
    {
      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v17 = self->_ucat;
      }

      LogPrintF(v17, "[SFBLEScanner nearby:didLosePeer:type:]", 30, "Enabling duplicate filter on lost %@\n", v12);
    }

LABEL_24:
    self->_needDups = 0;
    [(SFBLEScanner *)self _restartIfNeeded];
  }

LABEL_25:
  [(SFBLEScanner *)self _updateRescanTimer];
}

- (void)_nearbyParseManufacturerData:(id)data fields:(id)fields
{
  dataCopy = data;
  fieldsCopy = fields;
  v7 = dataCopy;
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  if (v9 >= 2 && *bytes == 76 && !bytes[1] && v9 >= 4)
  {
    v10 = &bytes[v9];
    v11 = bytes + 2;
    do
    {
      v12 = v11[1] & 0x1F;
      if (v10 - (v11 + 2) < v12)
      {
        break;
      }

      v13 = *v11;
      v11 += v12 + 2;
      if (v13 == 16)
      {
        [SFBLEScanner _nearbyParseNearbyInfoPtr:"_nearbyParseNearbyInfoPtr:end:fields:" end:? fields:?];
      }

      else if (v13 == 15)
      {
        [SFBLEScanner _nearbyParseNearbyActionPtr:"_nearbyParseNearbyActionPtr:end:fields:" end:? fields:?];
      }
    }

    while (v10 - v11 > 1);
  }
}

- (void)pairingDidUpdateState:(id)state
{
  stateCopy = state;
  OUTLINED_FUNCTION_31();
  wpPairing = self->_wpPairing;
  if (wpPairing)
  {
    v6 = wpPairing == v12;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  state = [(WPPairing *)v12 state];
  ucat = OUTLINED_FUNCTION_2_8();
  if (v9 <= 40)
  {
    if (v9 != -1)
    {
LABEL_8:
      if (state > 5)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1E788E2A0[state];
      }

      LogPrintF(ucat, "[SFBLEScanner pairingDidUpdateState:]", 40, "Bluetooth state updated: %s\n", v10);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_14:
  switch(state)
  {
    case 1uLL:
      [(SFBLEScanner *)self _removeAllDevicesWithReason:@"BTReset"];
      break;
    case 2uLL:
      [(SFBLEScanner *)self _poweredOff];
      break;
    case 3uLL:
      [(SFBLEScanner *)self _poweredOn];
      break;
  }

  if (self->_bluetoothStateChangedHandler)
  {
    OUTLINED_FUNCTION_3_8();
    v11();
  }

LABEL_22:
}

- (void)pairingStartedScanning:(id)scanning
{
  dispatchQueue = self->_dispatchQueue;
  scanningCopy = scanning;
  dispatch_assert_queue_V2(dispatchQueue);
  wpPairing = self->_wpPairing;

  if (wpPairing)
  {
    v7 = wpPairing == scanningCopy;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return;
  }

  ucat = OUTLINED_FUNCTION_0_13();
  if (v10 ^ v11 | v7)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner pairingStartedScanning:]", 20, "Bluetooth scanning started\n");
  }

LABEL_11:
  OUTLINED_FUNCTION_29();
  if (!v7 && OUTLINED_FUNCTION_10_0())
  {
    OUTLINED_FUNCTION_2_2();
    v12();
  }

  [(SFBLEScanner *)self _startTimeoutIfNeeded];
}

- (void)pairing:(id)pairing failedToStartScanningWithError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(dispatchQueue);
  wpPairing = self->_wpPairing;

  if (wpPairing)
  {
    v9 = wpPairing == pairingCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_2_8();
    if (v10 <= 60 && (v10 != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_27();
      LogPrintF(v11, "[SFBLEScanner pairing:failedToStartScanningWithError:]", 60, "### Bluetooth scan failed: %@\n");
    }

    self->_scanStarted = 0;
    [(CURetrier *)self->_startRetrier failedDirect];
  }
}

- (void)pairing:(id)pairing foundDevice:(id)device payload:(id)payload rssi:(id)rssi peerInfo:(id)info
{
  deviceCopy = device;
  payloadCopy = payload;
  rssiCopy = rssi;
  infoCopy = info;
  dispatchQueue = self->_dispatchQueue;
  pairingCopy = pairing;
  dispatch_assert_queue_V2(dispatchQueue);
  wpPairing = self->_wpPairing;

  if (wpPairing && wpPairing == pairingCopy)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 10)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFBLEScanner pairing:foundDevice:payload:rssi:peerInfo:]", 10, "WPPairing foundDevice: %@, with info: %@", deviceCopy, infoCopy);
    }

LABEL_7:
    [OUTLINED_FUNCTION_23() _recordDevice:? data:? rssi:? info:?];
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    [OUTLINED_FUNCTION_23() foundPairingDevice:? payload:? rssi:? peerInfo:? withTimeInMachContSeconds:?];
  }
}

- (id)pairingParsePayload:(id)payload identifier:(id)identifier bleDevice:(id)device peerInfo:(id)info
{
  v322[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  deviceCopy = device;
  infoCopy = info;
  payloadCopy = payload;
  payloadCopy2 = payload;
  bytes = [payloadCopy2 bytes];
  v15 = [payloadCopy2 length];

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v15 >= 7)
  {
    v17 = *(bytes + 4);
    v18 = *(bytes + 5);
    hasSplitBattery = 1;
    v19 = (v18 - 8194) > 0xD || ((1 << (v18 - 2)) & 0x3001) == 0;
    if (v19)
    {
      v34 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
      [(SFHeadphoneProduct *)v34 isAirPods];

      OUTLINED_FUNCTION_25();
      if (v19)
      {
        hasSplitBattery = 1;
      }

      else
      {
        v35 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
        hasSplitBattery = [(SFHeadphoneProduct *)v35 hasSplitBattery];
      }
    }

    v316 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v17];
    [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

    if (!v17 && v15 == 14)
    {
      v22 = [(SFBLEScanner *)self statusToHeadsetStatus:*(bytes + 7) forProductID:v18];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
      OUTLINED_FUNCTION_14_0();

      v24 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
      OUTLINED_FUNCTION_14_0();

      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
      OUTLINED_FUNCTION_14_0();

      v26 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes + 8 length:6];
      OUTLINED_FUNCTION_14_0();

      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ns"];
LABEL_324:
      v27 = v16;
      goto LABEL_325;
    }

    v27 = 0;
    v28 = (bytes + 7);
    switch(v17)
    {
      case 0:
      case 7:
        v302 = deviceCopy;
        if (v17)
        {
          if (v15 >= 0xD)
          {
            v299 = *(bytes + 7);
            v29 = *(bytes + 8);
            v288 = *(bytes + 9);
            v30 = *(bytes + 10);
            v31 = (bytes + 12);
            v303 = *(bytes + 11);
            v285 = 0;
            if (v17 == 7)
            {
              v32 = 0;
              v33 = 0;
              goto LABEL_62;
            }

            v92 = 7;
LABEL_61:
            v93 = bytes + v92;
            v33 = *v31;
            v31 = (v93 + 6);
            v32 = 1;
LABEL_62:
            v297 = v29;
            OUTLINED_FUNCTION_25();
            v307 = v95;
            if (v19)
            {
              hasSplitCaseColors = 1;
            }

            else
            {
              v292 = v33;
              v96 = v30;
              selfCopy = self;
              v98 = v94;
              v99 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
              hasSplitCaseColors = [(SFHeadphoneProduct *)v99 hasSplitCaseColors];

              v94 = v98;
              self = selfCopy;
              v30 = v96;
              v33 = v292;
            }

            v311 = v94;
            if ((v32 & hasSplitCaseColors) == 1)
            {
              if (v94 - v31 < 1)
              {
                v293 = v31;
                v101 = 0;
              }

              else
              {
                v293 = v31 + 1;
                v101 = *v31 >> 5;
              }

              v119 = v33 >> 4;
              v120 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v33 & 0xF];
              [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

              v121 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v119];
              [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

              v122 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v101];
              [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];
            }

            else
            {
              v293 = v31;
              v102 = +[SFHeadphoneProduct airPodsMax];

              if (v316 == v102)
              {
                [MEMORY[0x1E696AD98] numberWithInt:v33 & 0x1F];
              }

              else
              {
                [MEMORY[0x1E696AD98] numberWithUnsignedChar:v33];
              }
              v122 = ;
              [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];
            }

            LODWORD(v122) = [(SFBLEScanner *)self statusToHeadsetStatus:v299 forProductID:v18];
            if (v297 == 255)
            {
              v298 = 0;
            }

            else
            {
              v123 = OUTLINED_FUNCTION_19_0();
              v125 = v124 < 0;
              v126 = 1;
              if (v125)
              {
                v126 = 2;
              }

              v298 = v126;
            }

            if (v288 == 255)
            {
              v290 = 0;
            }

            else
            {
              v123 = OUTLINED_FUNCTION_19_0();
              v125 = v127 < 0;
              v128 = 1;
              if (v125)
              {
                v128 = 2;
              }

              v290 = v128;
            }

            if (v30 == 255)
            {
              v130 = 0;
            }

            else
            {
              v123 = OUTLINED_FUNCTION_19_0();
              if (v129 >= 0)
              {
                v130 = 1;
              }

              else
              {
                v130 = 2;
              }
            }

            if (v18 - 8194) < 0xE && ((0x3201u >> (v18 - 2)))
            {
              hasLid = 1;
            }

            else
            {
              v132 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
              hasLid = [(SFHeadphoneProduct *)v132 hasLid];
            }

            if ((v303 & 0x80u) == 0)
            {
              v133 = 1;
            }

            else
            {
              v133 = hasLid;
            }

            if (v133)
            {
              v122 = v122;
            }

            else
            {
              v122 = v122 | 0x400;
            }

            v134 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v122, v123}];
            [v16 setObject:v134 forKeyedSubscript:@"hsStatus"];

            if ((hasLid & ((v303 & 8) >> 3)) != 0)
            {
              v135 = MEMORY[0x1E695E118];
            }

            else
            {
              v135 = MEMORY[0x1E695E110];
            }

            [v16 setObject:v135 forKeyedSubscript:@"lc"];
            v136 = [MEMORY[0x1E696AD98] numberWithInt:v303 & 7];
            if ((v122 & 0x100) != 0)
            {
              OUTLINED_FUNCTION_17_0();

              advertisementFields = [v302 advertisementFields];
              v138 = [advertisementFields objectForKeyedSubscript:@"locS"];

              if (!v138)
              {
                goto LABEL_129;
              }
            }

            else
            {
              OUTLINED_FUNCTION_17_0();

              advertisementFields2 = [v302 advertisementFields];
              v138 = [advertisementFields2 objectForKeyedSubscript:@"locP"];

              if (!v138)
              {
                goto LABEL_129;
              }
            }

            OUTLINED_FUNCTION_17_0();
LABEL_129:
            identifierCopy = v307;

            [OUTLINED_FUNCTION_22() parseStatus3:v303 productID:v18 caseLEDColor:? caseLEDStatus:?];
            v140 = +[SFHeadphoneProduct airPodsMax];

            if (v316 == v140)
            {
              0x1F = [MEMORY[0x1E696AD98] numberWithInt:v299 & 0x1F];
            }

            else
            {
              if (v18 != 8207 && v18 != 8194)
              {
LABEL_138:
                if ([(SFHeadphoneProduct *)v316 supportsDigitalEngraving]&& v311 - v293 >= 17)
                {
                  v143 = [MEMORY[0x1E695DEF0] dataWithBytes:v293 length:17];
                  OUTLINED_FUNCTION_17_0();
                }

                v144 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v320];
                OUTLINED_FUNCTION_17_0();

                v145 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v318];
                OUTLINED_FUNCTION_17_0();

                v146 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
                OUTLINED_FUNCTION_17_0();

                v147 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
                OUTLINED_FUNCTION_17_0();

                v148 = [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ns"];
                if (v17)
                {
                  v149 = off_1EE741490(v148);
                  v150 = [infoCopy objectForKeyedSubscript:v149];
                  OUTLINED_FUNCTION_17_0();
                }

                else
                {
                  v149 = [MEMORY[0x1E695DEF0] dataWithBytes:v285 length:6];
                  OUTLINED_FUNCTION_14_0();
                }

                v151 = v298;
                v152 = v290;

                v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
                if (!hasSplitBattery)
                {
                  deviceCopy = v302;
                  v153 = objc_alloc_init(SFBatteryInfo);
                  v157 = OUTLINED_FUNCTION_4_6();
                  v158 = OUTLINED_FUNCTION_5_3(v157, 0.0001);
                  [v159 setBatteryLevel:v158];
                  [(SFBatteryInfo *)v153 setBatteryState:v298];
                  [(SFBatteryInfo *)v153 setBatteryType:4];
                  goto LABEL_160;
                }

                if (v130)
                {
                  v153 = objc_alloc_init(SFBatteryInfo);
                  v154 = OUTLINED_FUNCTION_20_0();
                  v155 = OUTLINED_FUNCTION_5_3(v154, 0.0001);
                  [v156 setBatteryLevel:v155];
                  [(SFBatteryInfo *)v153 setBatteryState:v130];
                  [(SFBatteryInfo *)v153 setBatteryType:1];
                  [OUTLINED_FUNCTION_12() addObject:?];
                  if (!(v298 | v290))
                  {
                    LOBYTE(v122) = 0x80;
                    v151 = 2;
                    v152 = 2;
                    goto LABEL_151;
                  }
                }

                else
                {
                  v153 = 0;
                }

                if (!v298)
                {
LABEL_155:
                  if (!v152)
                  {
                    deviceCopy = v302;
                    goto LABEL_161;
                  }

                  deviceCopy = v302;
                  v163 = objc_alloc_init(SFBatteryInfo);

                  v164 = OUTLINED_FUNCTION_21_0();
                  [(SFBatteryInfo *)v163 setBatteryLevel:OUTLINED_FUNCTION_5_3(v164, 0.0001)];
                  [(SFBatteryInfo *)v163 setBatteryState:v152];
                  if ((v122 & 0x80) != 0)
                  {
                    v165 = 3;
                  }

                  else
                  {
                    v165 = 2;
                  }

                  [(SFBatteryInfo *)v163 setBatteryType:v165];
                  v153 = v163;
LABEL_160:
                  [OUTLINED_FUNCTION_12() addObject:?];
LABEL_161:
                  OUTLINED_FUNCTION_14_0();

                  goto LABEL_162;
                }

LABEL_151:
                v160 = objc_alloc_init(SFBatteryInfo);

                v161 = OUTLINED_FUNCTION_4_6();
                [(SFBatteryInfo *)v160 setBatteryLevel:OUTLINED_FUNCTION_5_3(v161, 0.0001)];
                [(SFBatteryInfo *)v160 setBatteryState:v151];
                if ((v122 & 0x80) != 0)
                {
                  v162 = 2;
                }

                else
                {
                  v162 = 3;
                }

                [(SFBatteryInfo *)v160 setBatteryType:v162];
                [v43 addObject:v160];
                v153 = v160;
                goto LABEL_155;
              }

              0x1F = [MEMORY[0x1E696AD98] numberWithInt:(v303 >> 4) & 1];
            }

            OUTLINED_FUNCTION_17_0();

            goto LABEL_138;
          }
        }

        else if (v15 >= 0x13)
        {
          v299 = *(bytes + 13);
          v29 = *(bytes + 14);
          v288 = *(bytes + 15);
          v30 = *(bytes + 16);
          v31 = (bytes + 18);
          v92 = 13;
          v303 = *(bytes + 17);
          v285 = bytes + 7;
          goto LABEL_61;
        }

        v27 = 0;
        goto LABEL_325;
      case 1:
        if (v15 < 0xA)
        {
          goto LABEL_327;
        }

        v44 = *(bytes + 7);
        v304 = *(bytes + 9);
        v45 = deviceCopy;
        v286 = *(bytes + 8);
        if (v15 == 26)
        {
          v46 = identifierCopy;
          v284 = 0;
          v289 = 0;
          v300 = 0;
          v295 = 0;
          v47 = (bytes + 10);
          v48 = (bytes + 11);
          v49 = (bytes + 12);
          v50 = (bytes + 13);
          v281 = bytes + 17;
          v282 = bytes + 14;
        }

        else
        {
          if (v15 < 0x19)
          {
            goto LABEL_327;
          }

          v46 = identifierCopy;
          LODWORD(v284) = *(bytes + 10);
          HIDWORD(v284) = *(bytes + 11);
          v47 = (bytes + 13);
          v289 = *(bytes + 12);
          v48 = (bytes + 14);
          v49 = (bytes + 15);
          v50 = (bytes + 16);
          v281 = bytes + 20;
          v282 = bytes + 17;
          v300 = *(bytes + 23);
          v295 = *(bytes + 24);
        }

        v103 = *v50;
        v104 = *v49;
        v105 = *v48;
        v312 = *v47;
        v280 = v44;
        v106 = [SFBLEScanner statusToHeadsetStatus:"statusToHeadsetStatus:forProductID:" forProductID:?];
        v306 = v46;
        if ([(SFBLEScanner *)self pairingUpdatePairedInfo:v46 fields:v16 bleDevice:v45])
        {
          if (v15 == 26 || !BluetoothProductIDSupportsOBCState(v18))
          {
            v279 = 0;
          }

          else
          {
            if ((v312 & 0x20) != 0)
            {
              v108 = 2;
            }

            else
            {
              v108 = 1;
            }

            v279 = v108;
          }

          if (v105 == -1)
          {
            v294 = 0;
          }

          else
          {
            v202 = v105 & 0x7F;
            if (v202 >= 0x64)
            {
              v202 = 100;
            }

            v107 = OUTLINED_FUNCTION_11_0(v202);
            v203 = 1;
            if (v105 < 0)
            {
              v203 = 2;
            }

            v294 = v203;
          }

          v208 = 0x1E696A000uLL;
          if (v104 == -1)
          {
            v287 = 0;
          }

          else
          {
            v216 = v104 & 0x7F;
            if (v216 >= 0x64)
            {
              v216 = 100;
            }

            v107 = OUTLINED_FUNCTION_11_0(v216);
            v217 = 1;
            if (v104 < 0)
            {
              v217 = 2;
            }

            v287 = v217;
          }

          deviceCopy = v45;
          v207 = v106;
          v209 = v304;
          if (v103 == -1)
          {
            v283 = 0;
          }

          else
          {
            v218 = v103 & 0x7F;
            if (v218 >= 0x64)
            {
              v218 = 100;
            }

            v107 = OUTLINED_FUNCTION_11_0(v218);
            v219 = 1;
            if (v103 < 0)
            {
              v219 = 2;
            }

            v283 = v219;
          }

          v220 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v107];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          v221 = [MEMORY[0x1E696AD98] numberWithInteger:v312 & 3];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          v222 = [MEMORY[0x1E695DEF0] dataWithBytes:v281 length:3];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          v223 = [MEMORY[0x1E695DEF0] dataWithBytes:v282 length:3];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"paired"];
          v224 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v279];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];
        }

        else
        {
          v118 = v286;
          if ((v286 & 0xF) == 0xF)
          {
            v294 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            if (v177)
            {
              v204 = v205;
            }

            OUTLINED_FUNCTION_15_0(v204);
            v206 = 1;
            if ((v304 & 0x10) != 0)
            {
              v206 = 2;
            }

            v294 = v206;
          }

          deviceCopy = v45;
          v207 = v106;
          v208 = 0x1E696A000;
          if (v118 >> 4 == 15)
          {
            v287 = 0;
            v209 = v304;
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            if (v177)
            {
              v210 = v211;
            }

            OUTLINED_FUNCTION_15_0(v210);
            v209 = v304;
            v212 = 1;
            if ((v304 & 0x20) != 0)
            {
              v212 = 2;
            }

            v287 = v212;
          }

          if ((v209 & 0xF) == 0xF)
          {
            v283 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            if (v177)
            {
              v213 = v214;
            }

            OUTLINED_FUNCTION_15_0(v213);
            v215 = 1;
            if ((v209 & 0x40) != 0)
            {
              v215 = 2;
            }

            v283 = v215;
          }
        }

        v225 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v226 = [*(v208 + 3480) numberWithUnsignedShort:v18];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        if (v15 == 26)
        {
          goto LABEL_290;
        }

        [OUTLINED_FUNCTION_22() parseStatus3:v284 productID:v18 caseLEDColor:? caseLEDStatus:?];
        OUTLINED_FUNCTION_25();
        if (v19 || (v227 = [[SFHeadphoneProduct alloc] initWithProductID:v18], v228 = [(SFHeadphoneProduct *)v227 hasSplitCaseColors], v227, v228))
        {
          v229 = [*(v208 + 3480) numberWithUnsignedChar:BYTE4(v284) & 0xF];
          [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

          v208 = 0x1E696A000uLL;
          v230 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:HIDWORD(v284) >> 4];
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          v231 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v289 >> 5];
        }

        else
        {
          v232 = +[SFHeadphoneProduct airPodsMax];

          v233 = *(v208 + 3480);
          if (v316 == v232)
          {
            [v233 numberWithInt:BYTE4(v284) & 0x1F];
          }

          else
          {
            [v233 numberWithUnsignedChar:HIDWORD(v284)];
          }
          v231 = ;
        }

        OUTLINED_FUNCTION_17_0();

        v234 = +[SFHeadphoneProduct airPodsMax];

        if (v316 == v234)
        {
          v236 = v280 & 0x1F;
        }

        else
        {
          if (v18 != 8207)
          {
            OUTLINED_FUNCTION_25();
            if (v19 || v18 == 8206)
            {
              goto LABEL_273;
            }

            if (v18 != 8194)
            {
LABEL_274:
              v239 = [[SFHeadphoneProduct alloc] initWithProductID:v18];
              hasLid2 = [(SFHeadphoneProduct *)v239 hasLid];

LABEL_275:
              if ((v284 & 0x80u) == 0)
              {
                v240 = 1;
              }

              else
              {
                v240 = hasLid2;
              }

              if (v240)
              {
                v207 = v207;
              }

              else
              {
                v207 = v207 | 0x400;
              }

              v241 = [*(v208 + 3480) numberWithInt:v284 & 7];
              if ((v207 & 0x100) != 0)
              {
                [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

                advertisementFields3 = [deviceCopy advertisementFields];
                v243 = [advertisementFields3 objectForKeyedSubscript:@"locS"];

                if (v243)
                {
LABEL_285:
                  [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
                }
              }

              else
              {
                [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];

                advertisementFields4 = [deviceCopy advertisementFields];
                v243 = [advertisementFields4 objectForKeyedSubscript:@"locP"];

                if (v243)
                {
                  goto LABEL_285;
                }
              }

              if ((hasLid2 & ((v284 & 8) >> 3)) != 0)
              {
                v245 = MEMORY[0x1E695E118];
              }

              else
              {
                v245 = MEMORY[0x1E695E110];
              }

              [v16 setObject:v245 forKeyedSubscript:@"lc"];
              v208 = 0x1E696A000uLL;
              v246 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v320];
              OUTLINED_FUNCTION_14_0();

              v247 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v318];
              OUTLINED_FUNCTION_14_0();

LABEL_290:
              v248 = [*(v208 + 3480) numberWithUnsignedInt:v207];
              OUTLINED_FUNCTION_14_0();

              if (v209 < 0)
              {
                v249 = [*(v208 + 3480) numberWithUnsignedInt:2048];
                OUTLINED_FUNCTION_14_0();
              }

              v250 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if (!hasSplitBattery)
              {
                v251 = 0x1E7889000uLL;
                if (!v294)
                {
                  v253 = 0;
LABEL_311:
                  airPodsMax = [*(v251 + 1312) airPodsMax];

                  if (v316 == airPodsMax)
                  {
                    if ((v289 & 0x10) != 0)
                    {
                      v268 = MEMORY[0x1E695E118];
                    }

                    else
                    {
                      v268 = MEMORY[0x1E695E110];
                    }

                    [v16 setObject:v268 forKeyedSubscript:@"usbAudioConnected"];
                  }

                  OUTLINED_FUNCTION_14_0();
                  v269 = MEMORY[0x1E695E118];
                  v270 = MEMORY[0x1E695E110];
                  if ((v312 & 0x40) != 0)
                  {
                    v271 = MEMORY[0x1E695E118];
                  }

                  else
                  {
                    v271 = MEMORY[0x1E695E110];
                  }

                  [v16 setObject:v271 forKeyedSubscript:@"srConnected"];
                  v272 = [MEMORY[0x1E696AD98] numberWithInt:v300 & 0xF];
                  [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

                  v273 = [MEMORY[0x1E696AD98] numberWithInt:v300 >> 4];
                  [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

                  v274 = [MEMORY[0x1E696AD98] numberWithInt:v295 & 3];
                  [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

                  v275 = [MEMORY[0x1E696AD98] numberWithInt:(v295 >> 2) & 3];
                  [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

                  if ((v295 & 0x10) != 0)
                  {
                    v276 = v269;
                  }

                  else
                  {
                    v276 = v270;
                  }

                  [v16 setObject:v276 forKeyedSubscript:@"primaryiCloudSignIn"];

LABEL_323:
                  identifierCopy = v306;
                  goto LABEL_324;
                }

                v253 = objc_alloc_init(SFBatteryInfo);
                v258 = OUTLINED_FUNCTION_4_6();
                v259 = OUTLINED_FUNCTION_5_3(v258, 0.0001);
                [v260 setBatteryLevel:v259];
                [(SFBatteryInfo *)v253 setBatteryState:v294];
                [(SFBatteryInfo *)v253 setBatteryType:4];
LABEL_309:
                [OUTLINED_FUNCTION_12() addObject:?];
                goto LABEL_311;
              }

              v251 = 0x1E7889000;
              v252 = v294;
              if (v283)
              {
                v253 = objc_alloc_init(SFBatteryInfo);
                v254 = OUTLINED_FUNCTION_20_0();
                v255 = OUTLINED_FUNCTION_5_3(v254, 0.0001);
                [v256 setBatteryLevel:v255];
                [(SFBatteryInfo *)v253 setBatteryState:v283];
                [(SFBatteryInfo *)v253 setBatteryType:1];
                [OUTLINED_FUNCTION_12() addObject:?];
                v257 = v287;
                if (!(v294 | v287))
                {
                  LOBYTE(v207) = 0x80;
                  v257 = 2;
                  v252 = 2;
                  goto LABEL_300;
                }
              }

              else
              {
                v253 = 0;
                v257 = v287;
              }

              if (!v294)
              {
LABEL_304:
                if (!v257)
                {
                  goto LABEL_311;
                }

                v264 = objc_alloc_init(SFBatteryInfo);

                v265 = OUTLINED_FUNCTION_21_0();
                [(SFBatteryInfo *)v264 setBatteryLevel:OUTLINED_FUNCTION_5_3(v265, 0.0001)];
                [(SFBatteryInfo *)v264 setBatteryState:v257];
                if ((v207 & 0x80) != 0)
                {
                  v266 = 3;
                }

                else
                {
                  v266 = 2;
                }

                [(SFBatteryInfo *)v264 setBatteryType:v266];
                v253 = v264;
                goto LABEL_309;
              }

LABEL_300:
              v261 = objc_alloc_init(SFBatteryInfo);

              v262 = OUTLINED_FUNCTION_4_6();
              [(SFBatteryInfo *)v261 setBatteryLevel:OUTLINED_FUNCTION_5_3(v262, 0.0001)];
              [(SFBatteryInfo *)v261 setBatteryState:v252];
              if ((v207 & 0x80) != 0)
              {
                v263 = 2;
              }

              else
              {
                v263 = 3;
              }

              [(SFBatteryInfo *)v261 setBatteryType:v263];
              [v250 addObject:v261];
              v253 = v261;
              goto LABEL_304;
            }
          }

          v236 = (v284 >> 4) & 1;
        }

        v237 = [*(v208 + 3480) numberWithInt:v236];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        if (v18 - 8194) < 0xE && ((0x3201u >> (v18 - 2)))
        {
LABEL_273:
          hasLid2 = 1;
          goto LABEL_275;
        }

        goto LABEL_274;
      case 2:
        v51 = [OUTLINED_FUNCTION_18_0() numberWithUnsignedShort:?];
        OUTLINED_FUNCTION_14_0();

        v52 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        OUTLINED_FUNCTION_14_0();

        if (v15 == 7)
        {
          goto LABEL_327;
        }

        v53 = [MEMORY[0xD98] numberWithUnsignedChar:*v28];
        OUTLINED_FUNCTION_14_0();

        if (v15 < 0xE)
        {
          goto LABEL_327;
        }

        v54 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes + 8 length:6];
        OUTLINED_FUNCTION_14_0();

        if (v15 < 0x11)
        {
          goto LABEL_327;
        }

        LOBYTE(v55) = *(bytes + 14);
        v56 = [MEMORY[0xD98] numberWithDouble:v55 / 10.0];
        OUTLINED_FUNCTION_14_0();

        LOBYTE(v57) = *(bytes + 15);
        v58 = [MEMORY[0xD98] numberWithDouble:v57 / 10.0];
        OUTLINED_FUNCTION_14_0();

        LOBYTE(v59) = *(bytes + 16);
        v43 = [MEMORY[0xD98] numberWithDouble:v59 / 10.0];
        goto LABEL_46;
      case 3:
        v60 = [OUTLINED_FUNCTION_18_0() numberWithUnsignedShort:?];
        OUTLINED_FUNCTION_14_0();

        v61 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        OUTLINED_FUNCTION_14_0();

        if (v15 == 7)
        {
          goto LABEL_327;
        }

        v62 = [MEMORY[0xD98] numberWithUnsignedChar:*v28];
        OUTLINED_FUNCTION_14_0();

        if (v15 < 0xB)
        {
          goto LABEL_327;
        }

        v63 = *(bytes + 8);
        v64 = *(bytes + 9);
        if (v63 != 255 && (v64 & 3) == 1)
        {
          v66 = objc_alloc_init(SFBatteryInfo);
          if (v63 >= 0x64)
          {
            v67 = 100;
          }

          else
          {
            v67 = v63;
          }

          v68 = OUTLINED_FUNCTION_11_0(v67);
          [v70 setBatteryLevel:v68 / v69];
          if ((v64 & 0xC0) == 0x40)
          {
            v71 = 2;
          }

          else
          {
            v71 = 1;
          }

          [(SFBatteryInfo *)v66 setBatteryState:v71];
          [(SFBatteryInfo *)v66 setBatteryType:4];
          v322[0] = v66;
          v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v322 count:1];
          [OUTLINED_FUNCTION_8_0() setObject:? forKeyedSubscript:?];
        }

        if (v15 < 0xD)
        {
          goto LABEL_327;
        }

        v43 = [MEMORY[0x1E696AD98] numberWithDouble:*(bytes + 11) / 10.0];
        goto LABEL_46;
      case 4:
        v306 = identifierCopy;
        if (v15 < 0x1B)
        {
          v27 = 0;
          goto LABEL_325;
        }

        v81 = *(bytes + 7);
        v305 = *(bytes + 8);
        v310 = *(bytes + 9);
        v82 = *(bytes + 10);
        v83 = *(bytes + 11);
        v301 = *(bytes + 12);
        v320 = *(bytes + 13);
        v321 = *(bytes + 17);
        v318 = *(bytes + 19);
        v319 = *(bytes + 23);
        v296 = *(bytes + 25);
        v291 = v81;
        v84 = [SFBLEScanner statusToHeadsetStatus:"statusToHeadsetStatus:forProductID:" forProductID:?];
        v85 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v83];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v84];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        if ((v82 & 8) != 0)
        {
          v87 = MEMORY[0x1E695E118];
        }

        else
        {
          v87 = MEMORY[0x1E695E110];
        }

        [v16 setObject:v87 forKeyedSubscript:@"lc"];
        v88 = [MEMORY[0x1E696AD98] numberWithInt:v82 & 7];
        v89 = deviceCopy;
        v314 = v84;
        if ((v84 & 0x100) != 0)
        {
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          advertisementFields5 = [deviceCopy advertisementFields];
          v91 = [advertisementFields5 objectForKeyedSubscript:@"locS"];

          if (!v91)
          {
            goto LABEL_81;
          }
        }

        else
        {
          [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

          advertisementFields6 = [deviceCopy advertisementFields];
          v91 = [advertisementFields6 objectForKeyedSubscript:@"locP"];

          if (!v91)
          {
            goto LABEL_81;
          }
        }

        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];
LABEL_81:

        v317 = 0;
        [(SFBLEScanner *)self parseStatus3:v82 productID:v18 caseLEDColor:&v317 + 1 caseLEDStatus:&v317];
        isAirPodsPro = [(SFHeadphoneProduct *)v316 isAirPodsPro];
        v111 = +[SFHeadphoneProduct airPods];
        if ([v111 productID] == v18)
        {
          v112 = 1;
        }

        else
        {
          +[SFHeadphoneProduct airPodsSecondGeneration];
          v114 = v113 = deviceCopy;
          v112 = [v114 productID] == v18 || isAirPodsPro;

          v89 = v113;
        }

        v115 = +[SFHeadphoneProduct airPodsMax];

        if (v316 == v115)
        {
          0x1F2 = [MEMORY[0x1E696AD98] numberWithInt:v291 & 0x1F];
        }

        else
        {
          if ((v112 & 1) == 0)
          {
            goto LABEL_166;
          }

          if (isAirPodsPro)
          {
            v116 = (v82 >> 4) & 1 | 2;
          }

          else
          {
            v116 = (v82 >> 4) & 1;
          }

          0x1F2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v116];
        }

        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

LABEL_166:
        v166 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:HIBYTE(v317)];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v167 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v317];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v168 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v169 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v170 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v296];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v171 = [MEMORY[0x1E695DEF0] dataWithBytes:&v320 length:6];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v172 = [MEMORY[0x1E695DEF0] dataWithBytes:&v318 length:6];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        if (v301)
        {
          [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"notMyCase"];
        }

        [(SFBLEScanner *)self pairingUpdatePairedInfo:v306 fields:v16 bleDevice:v89];
        v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ((v310 & 0xF) == 0xF)
        {
          v174 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v177)
          {
            v175 = v176;
          }

          OUTLINED_FUNCTION_15_0(v175);
          if ((v178 & 0x40) != 0)
          {
            v174 = 2;
          }

          else
          {
            v174 = 1;
          }
        }

        v179 = v305;
        if ((v305 & 0xF) == 0xF)
        {
          v180 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v177)
          {
            v181 = v182;
          }

          OUTLINED_FUNCTION_15_0(v181);
          if ((v183 & 0x10) != 0)
          {
            v180 = 2;
          }

          else
          {
            v180 = 1;
          }
        }

        deviceCopy = v89;
        if (v179 >> 4 == 15)
        {
          v184 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_16_0();
          if (v177)
          {
            v185 = v186;
          }

          OUTLINED_FUNCTION_15_0(v185);
          if ((v187 & 0x20) != 0)
          {
            v184 = 2;
          }

          else
          {
            v184 = 1;
          }
        }

        if (v174)
        {
          v188 = objc_alloc_init(SFBatteryInfo);
          v189 = OUTLINED_FUNCTION_20_0();
          v190 = OUTLINED_FUNCTION_5_3(v189, 0.0001);
          [v191 setBatteryLevel:v190];
          [(SFBatteryInfo *)v188 setBatteryState:v174];
          [(SFBatteryInfo *)v188 setBatteryType:1];
          [v173 addObject:v188];
          if (!(v184 | v180))
          {
            v314 = 0x80;
            v180 = 2;
            v184 = 2;
          }
        }

        if (v180)
        {
          v192 = objc_alloc_init(SFBatteryInfo);
          v193 = OUTLINED_FUNCTION_21_0();
          v194 = OUTLINED_FUNCTION_5_3(v193, 0.0001);
          [v195 setBatteryLevel:v194];
          [(SFBatteryInfo *)v192 setBatteryState:v180];
          if (v314 < 0)
          {
            v196 = 2;
          }

          else
          {
            v196 = 3;
          }

          [(SFBatteryInfo *)v192 setBatteryType:v196];
          [v173 addObject:v192];
        }

        if (v184)
        {
          v197 = objc_alloc_init(SFBatteryInfo);
          v198 = OUTLINED_FUNCTION_4_6();
          v199 = OUTLINED_FUNCTION_5_3(v198, 0.0001);
          [v200 setBatteryLevel:v199];
          [(SFBatteryInfo *)v197 setBatteryState:v184];
          if (v314 < 0)
          {
            v201 = 3;
          }

          else
          {
            v201 = 2;
          }

          [(SFBatteryInfo *)v197 setBatteryType:v201];
          [v173 addObject:v197];
        }

        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        goto LABEL_323;
      case 5:
      case 9:
        v308 = bytes + v15;
        v36 = [OUTLINED_FUNCTION_18_0() numberWithUnsignedShort:?];
        OUTLINED_FUNCTION_14_0();

        v37 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        OUTLINED_FUNCTION_14_0();

        if (v15 != 7)
        {
          v28 = (bytes + 8);
          v38 = [MEMORY[0xD98] numberWithUnsignedChar:*(bytes + 7)];
          OUTLINED_FUNCTION_14_0();
        }

        if ((v308 - v28) < 1)
        {
          goto LABEL_324;
        }

        v39 = *v28;
        v40 = [MEMORY[0xD98] numberWithInt:v39 & 3];
        OUTLINED_FUNCTION_14_0();

        v41 = [MEMORY[0xD98] numberWithInt:(v39 >> 2) & 3];
        OUTLINED_FUNCTION_14_0();

        if ((~v28 + v308) < 1)
        {
          goto LABEL_324;
        }

        v42 = [MEMORY[0xD98] numberWithUnsignedChar:v28[1]];
        OUTLINED_FUNCTION_14_0();

        if ((v308 - v28 - 2) < 18)
        {
          goto LABEL_324;
        }

        v43 = [MEMORY[0x1E695DEF0] dataWithBytes:v28 + 3 length:18];
LABEL_46:
        OUTLINED_FUNCTION_14_0();
LABEL_162:

        goto LABEL_324;
      case 6:
        v309 = bytes + v15;
        off_1EE741498(v21);
        Int64 = CFDictionaryGetInt64();
        [(SFBLEScanner *)self pairingUpdatePairedInfo:identifierCopy fields:v16 bleDevice:deviceCopy];
        if (!Int64)
        {
          goto LABEL_324;
        }

        v74 = [OUTLINED_FUNCTION_13_0() modelWithProductID:?];
        OUTLINED_FUNCTION_14_0();

        v75 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v18];
        OUTLINED_FUNCTION_14_0();

        v77 = off_1EE741490(v76);
        v78 = [infoCopy objectForKeyedSubscript:v77];
        [OUTLINED_FUNCTION_1_11() setObject:? forKeyedSubscript:?];

        v79 = [MEMORY[0x1E696AD98] numberWithBool:1];
        OUTLINED_FUNCTION_14_0();

        ucat = self->_ucat;
        if (ucat->var0 > 20)
        {
          goto LABEL_259;
        }

        if (ucat->var0 != -1)
        {
          goto LABEL_50;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->_ucat;
LABEL_50:
          LogPrintF(ucat, "[SFBLEScanner pairingParsePayload:identifier:bleDevice:peerInfo:]", 20, "AccessoryStatus found: %@\n", v16);
        }

LABEL_259:
        [(SFBLEScanner *)self pairingParseAccessoryStatusPayloadPtr:v28 end:v309 fields:v16];
        goto LABEL_324;
      default:
        goto LABEL_325;
    }
  }

  v316 = 0;
LABEL_327:
  v27 = 0;
LABEL_325:
  v277 = v27;

  return v27;
}

- (void)_recordDevice:(id)device data:(id)data rssi:(id)rssi info:(id)info
{
  recorder = self->_recorder;
  if (recorder)
  {
    v12 = 0;
    v8 = [(SFBLERecorder *)recorder recordDevice:device data:data rssi:rssi info:info error:&v12];
    v9 = v12;
    if (v8)
    {
      goto LABEL_7;
    }

    ucat = OUTLINED_FUNCTION_2_8();
    if (v11 > 90)
    {
      goto LABEL_7;
    }

    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEScanner _recordDevice:data:rssi:info:]", 90, "### Failed to record advertisement with error: %@\n", v9);
LABEL_7:
  }
}

- (void)_activateWithCompletion:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, __CFString **a4, int **a5)
{
  v9 = *a5;
  v10 = **a5;
  if (v10 <= 60)
  {
    if (v10 != -1)
    {
LABEL_3:
      LogPrintF(v9, "[SFBLEScanner _activateWithCompletion:]", 60, "### Activate failed: %#m\n", a2);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v9 = *a5;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (a1)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A768];
    v14 = a2;
    *a3 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v16 = v15;
    v17 = @"?";
    if (v15)
    {
      v17 = v15;
    }

    *a4 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:1];
    v19 = [v12 errorWithDomain:v13 code:v14 userInfo:v18];
    (*(a1 + 16))(a1, v19);
  }
}

@end