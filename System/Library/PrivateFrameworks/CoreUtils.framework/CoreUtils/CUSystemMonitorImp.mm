@interface CUSystemMonitorImp
- ($A3B2E143E1A03423F9FC703C010436DC)_callInfoUncached;
- (BOOL)_hasMonitorPassingTest:(id)test;
- (BOOL)_meDeviceOverride;
- (CUSystemMonitorImp)init;
- (id)_primaryAppleIDAccount;
- (int)_connectedCallCountUnached;
- (unsigned)_callFlagsUncached;
- (void)_bluetoothAddressMonitorStart;
- (void)_bluetoothAddressMonitorStop;
- (void)_callCenterStatusChanged:(id)changed;
- (void)_callInfoChanged;
- (void)_callMonitorStart;
- (void)_callMonitorStop;
- (void)_familyGetMembers:(BOOL)members;
- (void)_familyMonitorStart;
- (void)_familyMonitorStop;
- (void)_familyNetworkChanged;
- (void)_familyUpdated:(id)updated;
- (void)_firstUnlockMonitorCheck:(BOOL)check;
- (void)_firstUnlockMonitorStart;
- (void)_firstUnlockMonitorStop;
- (void)_forceManateeStateRefresh;
- (void)_invokeBlock:(id)block passingTest:(id)test;
- (void)_locationVisitUpdate:(id)update arrived:(BOOL)arrived;
- (void)_locationVisitsMonitorStart;
- (void)_locationVisitsMonitorStop;
- (void)_locationsOfInterestDidChange:(BOOL)change;
- (void)_manateeMonitorStart;
- (void)_manateeMonitorStop;
- (void)_manateeRead;
- (void)_manatreeUpdateRetryTimer:(BOOL)timer;
- (void)_meDeviceCheckCompletion:(id)completion error:(id)error firstCheck:(BOOL)check;
- (void)_meDeviceCheckStart:(BOOL)start;
- (void)_meDeviceMonitorStart;
- (void)_meDeviceMonitorStop;
- (void)_meDeviceMonitorStopFMF;
- (void)_meDeviceRetryTimerUpdate:(BOOL)update;
- (void)_meDeviceUpdate:(id)update;
- (void)_motionMonitorHandleActivity:(id)activity;
- (void)_motionMonitorOrientationChanged:(id)changed;
- (void)_motionMonitorStart;
- (void)_motionMonitorStop;
- (void)_netInterfaceMonitorStart;
- (void)_netInterfaceMonitorStop;
- (void)_powerUnlimitedMonitorStart;
- (void)_powerUnlimitedMonitorStop;
- (void)_primaryAppleIDChanged2:(BOOL)changed2;
- (void)_primaryAppleIDChanged:(id)changed;
- (void)_primaryAppleIDMonitorStart;
- (void)_primaryAppleIDMonitorStop;
- (void)_regionMonitorGet;
- (void)_regionMonitorStart;
- (void)_regionMonitorStop;
- (void)_regionMonitorUpdateLocationsOfInterest:(id)interest;
- (void)_regionMonitorUpdateMCC:(id)c;
- (void)_rotatingIdentifierMonitorStart;
- (void)_rotatingIdentifierMonitorStop;
- (void)_rotatingIdentifierTimerFired;
- (void)_screenChanged:(BOOL)changed;
- (void)_screenLockedChanged;
- (void)_screenLockedMonitorStart;
- (void)_screenLockedMonitorStop;
- (void)_screenOnMonitorStartiOS;
- (void)_screenOnMonitorStop;
- (void)_screenStateMonitorStart;
- (void)_screenStateMonitorStop;
- (void)_screenStateMonitorUpdateWithLayout:(id)layout;
- (void)_systemConfigChanged:(id)changed initial:(BOOL)initial;
- (void)_systemConfigNetInterfaceChanged:(id)changed initial:(BOOL)initial;
- (void)_systemConfigSystemNameChanged:(BOOL)changed;
- (void)_systemConfigUpdateKeyPtr:(id *)ptr name:(id)name enabled:(BOOL)enabled creator:(id)creator;
- (void)_systemConfigUpdateNotifications;
- (void)_systemLockStateMonitorStart;
- (void)_systemLockStateMonitorStop;
- (void)_systemLockStateUpdate:(BOOL)update;
- (void)_systemUIMonitorChangedFlags:(unsigned int)flags;
- (void)_systemUIMonitorStart;
- (void)_systemUIMonitorStop;
- (void)_update;
- (void)_wifiMonitorStart;
- (void)_wifiMonitorStateChanged:(BOOL)changed;
- (void)_wifiMonitorStop;
- (void)addMonitor:(id)monitor completion:(id)completion;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)locationManager:(id)manager didArrive:(id)arrive completion:(id)completion;
- (void)locationManager:(id)manager didDepart:(id)depart completion:(id)completion;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)removeMonitor:(id)monitor;
- (void)updateWithQueue:(id)queue completion:(id)completion;
@end

@implementation CUSystemMonitorImp

void __43__CUSystemMonitorImp__systemUIMonitorStart__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [a3 elements];
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 identifier];
        if (v11)
        {
          v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
          v13 = v12;
          v14 = v12 != 0;
          if (v12)
          {
            v7 |= [v12 unsignedIntValue];
          }
        }

        else
        {
          v14 = 0;
        }

        v19 = [v10 bundleIdentifier];
        if (v19 && ([*(a1 + 32) objectForKeyedSubscript:v19], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v21 = v20;
          v7 |= [v20 unsignedIntValue];
        }

        else if (!v14 && gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemUIMonitorStart]_block_invoke", 30, "SystemUI unknown identifier: '%@' / '%@'", v15, v16, v17, v18, v11);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v22 = *(a1 + 40);
  v23 = *(v22 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CUSystemMonitorImp__systemUIMonitorStart__block_invoke_2;
  block[3] = &unk_1E73A42A0;
  block[4] = v22;
  v25 = v7;
  dispatch_async(v23, block);
}

void __46__CUSystemMonitorImp__screenStateMonitorStart__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CUSystemMonitorImp__screenStateMonitorStart__block_invoke_2;
  v8[3] = &unk_1E73A49F0;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void *__46__CUSystemMonitorImp__screenStateMonitorStart__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[66])
  {
    return [result _screenStateMonitorUpdateWithLayout:*(a1 + 40)];
  }

  return result;
}

- (void)_manateeRead
{
  if (_manateeRead_sOnce != -1)
  {
    dispatch_once(&_manateeRead_sOnce, &__block_literal_global_182);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CUSystemMonitorImp__manateeRead__block_invoke_2;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(_manateeRead_cdpQueue, block);
}

void __34__CUSystemMonitorImp__manateeRead__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(getCDPStateControllerClass());
  v3 = [(objc_class *)getCDPContextClass() contextForPrimaryAccount];
  v4 = [v2 initWithContext:v3];

  v12 = 0;
  LOBYTE(v3) = [v4 isManateeAvailable:&v12];
  v5 = v12;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__CUSystemMonitorImp__manateeRead__block_invoke_3;
  v9[3] = &unk_1E73A3CE8;
  v9[4] = v6;
  v10 = v5;
  v11 = v3;
  v8 = v5;
  dispatch_async(v7, v9);
}

void __34__CUSystemMonitorImp__manateeRead__block_invoke_3(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__CUSystemMonitorImp__manateeRead__block_invoke_4;
  aBlock[3] = &unk_1E73A49F0;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v31 = v2;
  v9 = _Block_copy(aBlock);
  v10 = *(a1 + 32);
  v11 = *(v10 + 148);
  if (v11 == 1)
  {
    v12 = *(a1 + 48);
    if (*(a1 + 48))
    {
      v11 = 2;
    }

    if (*(v10 + 144) == v11)
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        v14 = 30;
      }

      else
      {
        v14 = 10;
      }

      if (v14 >= gLogCategory_CUSystemMonitor)
      {
        if (gLogCategory_CUSystemMonitor == -1)
        {
          if (!_LogCategory_Initialize(&gLogCategory_CUSystemMonitor, v14))
          {
            goto LABEL_30;
          }

          v13 = *(a1 + 40);
        }

        v19 = NSPrintF("%{error}", v14, v3, v4, v5, v6, v7, v8, v13);
        v20 = "Unavailable";
        if (v12)
        {
          v20 = "Available";
        }

        if (v13)
        {
          v21 = 30;
        }

        else
        {
          v21 = 10;
        }

        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _manateeRead]_block_invoke_3", v21, "Manatee State unchanged: %s, error=%@", v15, v16, v17, v18, v20);
      }
    }

    else
    {
      pthread_mutex_lock(&gCUSystemMonitorLock);
      v22 = *(a1 + 48);
      *(*(a1 + 32) + 140) = v22;
      if (v22)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      *(*(a1 + 32) + 144) = v23;
      pthread_mutex_unlock(&gCUSystemMonitorLock);
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        v28 = *(*(a1 + 32) + 144);
        if (v28 > 2)
        {
          v29 = "?";
        }

        else
        {
          v29 = off_1E73A3EC0[v28];
        }

        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _manateeRead]_block_invoke_3", 30, "Manatee read: %s, %{error}\n", v24, v25, v26, v27, v29);
      }

      [*(a1 + 32) _invokeBlock:&__block_literal_global_187 passingTest:&__block_literal_global_189];
    }
  }

LABEL_30:
  v9[2](v9);
}

uint64_t __34__CUSystemMonitorImp__manateeRead__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[148] == 1 && *(a1 + 40) != 0;
  return [v2 _manatreeUpdateRetryTimer:v3];
}

- (void)_forceManateeStateRefresh
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CUSystemMonitorImp__forceManateeStateRefresh__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

_BYTE *__47__CUSystemMonitorImp__forceManateeStateRefresh__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[148] == 1)
  {
    return [result _manateeRead];
  }

  return result;
}

- (void)_screenLockedChanged
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
  }

  v3 = SpringBoardServicesLibrary_sLib && dlsym(SpringBoardServicesLibrary_sLib, "SBSGetScreenLockStatus") && softLinkSBSGetScreenLockStatus(0) != 0;
  pthread_mutex_lock(&gCUSystemMonitorLock);
  screenLocked = self->_screenLocked;
  self->_screenLocked = v3;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (screenLocked == v3)
  {
    if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {
      v9 = "no";
      if (v3)
      {
        v9 = "yes";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenLockedChanged]", 10, "ScreenLocked unchanged (%s)\n", v5, v6, v7, v8, v9);
    }
  }

  else
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      if (screenLocked)
      {
        v10 = "yes";
      }

      else
      {
        v10 = "no";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenLockedChanged]", 30, "ScreenLocked changed: %s -> %s\n", v5, v6, v7, v8, v10);
    }

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_362 passingTest:&__block_literal_global_364];
  }
}

uint64_t __46__CUSystemMonitorImp__screenOnMonitorStartiOS__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) _screenChanged:state64 == 0];
}

- (unsigned)_callFlagsUncached
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  currentAudioAndVideoCalls = [(TUCallCenter *)self->_callCenter currentAudioAndVideoCalls];
  v3 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        service = [*(*(&v10 + 1) + 8 * i) service];
        switch(service)
        {
          case 3:
            v5 |= 4u;
            break;
          case 2:
            v5 |= 2u;
            break;
          case 1:
            v5 |= 1u;
            break;
        }
      }

      v4 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- ($A3B2E143E1A03423F9FC703C010436DC)_callInfoUncached
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(TUCallCenter *)self->_callCenter currentAudioAndVideoCalls];
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    LODWORD(v5) = 0;
    LODWORD(v6) = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        isConnected = [v9 isConnected];
        isOutgoing = [v9 isOutgoing];
        v6 = v6 + (isConnected & (isOutgoing ^ 1));
        v5 = v5 + (((isConnected | isOutgoing) & 1) == 0);
        v12 = (v4 + 1) | v4 & 0xFFFFFFFF00000000;
        if ((isConnected & isOutgoing) == 0)
        {
          v12 = v4;
        }

        v13 = v4 & 0xFFFFFFFF00000000 | v12;
        if ((isConnected | isOutgoing ^ 1))
        {
          v4 = v12;
        }

        else
        {
          v4 = v13 + 0x100000000;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
    v14 = v5 << 32;
  }

  else
  {
    v4 = 0;
    v14 = 0;
    v6 = 0;
  }

  v15 = v14 | v6;
  v16 = v4;
  result.var2 = v16;
  result.var3 = HIDWORD(v16);
  result.var0 = v15;
  result.var1 = HIDWORD(v15);
  return result;
}

BOOL __38__CUSystemMonitorImp__callInfoChanged__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 callChangedHandler];
  v3 = v2 != 0;

  return v3;
}

- (void)_callInfoChanged
{
  _activeCallCountUnached = [(CUSystemMonitorImp *)self _activeCallCountUnached];
  _connectedCallCountUnached = [(CUSystemMonitorImp *)self _connectedCallCountUnached];
  _callFlagsUncached = [(CUSystemMonitorImp *)self _callFlagsUncached];
  callCountIncomingConnected = self->_callInfo.callCountIncomingConnected;
  callCountOutgoingConnected = self->_callInfo.callCountOutgoingConnected;
  callCountOutgoingUnconnected = self->_callInfo.callCountOutgoingUnconnected;
  callCountIncomingUnconnected = self->_callInfo.callCountIncomingUnconnected;
  _callInfoUncached = [(CUSystemMonitorImp *)self _callInfoUncached];
  v9 = v8;
  pthread_mutex_lock(&gCUSystemMonitorLock);
  connectedCallCount = self->_connectedCallCount;
  activeCallCount = self->_activeCallCount;
  callFlags = self->_callFlags;
  self->_connectedCallCount = _connectedCallCountUnached;
  self->_activeCallCount = _activeCallCountUnached;
  self->_callFlags = _callFlagsUncached;
  *&self->_callInfo.callCountIncomingConnected = _callInfoUncached;
  *&self->_callInfo.callCountOutgoingConnected = v9;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  v15 = _activeCallCountUnached != activeCallCount;
  if (_activeCallCountUnached == activeCallCount)
  {
    if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callInfoChanged]", 10, "Active calls unchanged (%d)\n", v11, v12, v13, v14, _activeCallCountUnached);
    }
  }

  else if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callInfoChanged]", 30, "Active calls changed: %d -> %d\n", v11, v12, v13, v14, activeCallCount);
  }

  v16 = gLogCategory_CUSystemMonitor;
  if (__PAIR64__(callCountIncomingUnconnected, callCountIncomingConnected) == _callInfoUncached && __PAIR64__(callCountOutgoingUnconnected, callCountOutgoingConnected) == v9)
  {
    v17 = connectedCallCount;
    if (gLogCategory_CUSystemMonitor > 10)
    {
      v19 = _connectedCallCountUnached;
      v18 = callFlags;
      goto LABEL_26;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callInfoChanged]", 10, "Call info unchanged: incoming connected %d, incoming unconnected %d, outcoming connected %d, outcoming unconnected %d", v11, v12, v13, v14, callCountIncomingConnected);
    }

    v19 = _connectedCallCountUnached;
    v18 = callFlags;
  }

  else
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      v15 = 1;
      v19 = _connectedCallCountUnached;
      v18 = callFlags;
      v17 = connectedCallCount;
      goto LABEL_26;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callInfoChanged]", 30, "Call info changed: incoming connected %d -> %d, incoming unconnected %d -> %d, outcoming connected %d -> %d, outcoming unconnected %d -> %d", v11, v12, v13, v14, callCountIncomingConnected);
    }

    v15 = 1;
    v19 = _connectedCallCountUnached;
    v18 = callFlags;
    v17 = connectedCallCount;
  }

  v16 = gLogCategory_CUSystemMonitor;
LABEL_26:
  if (v19 == v17)
  {
    if (v16 <= 10 && (v16 != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callInfoChanged]", 10, "Connected calls unchanged (%d)\n", v11, v12, v13, v14, v19);
    }
  }

  else
  {
    if (v16 <= 30 && (v16 != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callInfoChanged]", 30, "Connected calls changed: %d -> %d\n", v11, v12, v13, v14, v17);
    }

    v15 = 1;
  }

  if (_callFlagsUncached != v18)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callInfoChanged]", 30, "Call flags changed: %#{flags} -> %#{flags}\n", v11, v12, v13, v14, v18);
    }

    goto LABEL_48;
  }

  if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callInfoChanged]", 10, "Call flags unchanged: %#{flags}\n", v11, v12, v13, v14, _callFlagsUncached);
  }

  if (v15)
  {
LABEL_48:

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_121 passingTest:&__block_literal_global_123];
  }
}

- (int)_connectedCallCountUnached
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  currentAudioAndVideoCalls = [(TUCallCenter *)self->_callCenter currentAudioAndVideoCalls];
  v3 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        isConnected = [v8 isConnected];
        isOutgoing = [v8 isOutgoing];
        if (isConnected)
        {
          v5 += isOutgoing + (isConnected & (isOutgoing ^ 1));
        }
      }

      v4 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __38__CUSystemMonitorImp__callInfoChanged__block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 callChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_wifiMonitorStateChanged:(BOOL)changed
{
  changedCopy = changed;
  wifiFlags = [(CUWiFiManager *)self->_wifiManager wifiFlags];
  wifiState = [(CUWiFiManager *)self->_wifiManager wifiState];
  pthread_mutex_lock(&gCUSystemMonitorLock);
  wifiFlags = self->_wifiFlags;
  wifiState = self->_wifiState;
  self->_wifiFlags = wifiFlags;
  self->_wifiState = wifiState;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (wifiState == wifiState && wifiFlags == wifiFlags)
  {
    if (changedCopy)
    {
      if (gLogCategory_CUSystemMonitor > 10 || gLogCategory_CUSystemMonitor == -1 && !_LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu))
      {
        return;
      }

      if (wifiState <= 19)
      {
        if (!wifiState)
        {
          v15 = "Unknown";
          goto LABEL_69;
        }

        if (wifiState == 10)
        {
          v15 = "Off";
          goto LABEL_69;
        }
      }

      else
      {
        switch(wifiState)
        {
          case 20:
            v15 = "NotConnected";
            goto LABEL_69;
          case 30:
            v15 = "Connecting";
            goto LABEL_69;
          case 40:
            v15 = "Connected";
LABEL_69:
            LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _wifiMonitorStateChanged:]", 10, "WiFi state unchanged: %s, %#{flags}\n", v9, v10, v11, v12, v15);
            return;
        }
      }

      v15 = "?";
      goto LABEL_69;
    }

    if (gLogCategory_CUSystemMonitor > 30 || gLogCategory_CUSystemMonitor == -1 && !_LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      return;
    }

    if (wifiState <= 19)
    {
      if (!wifiState)
      {
        v17 = "Unknown";
        goto LABEL_73;
      }

      if (wifiState == 10)
      {
        v17 = "Off";
        goto LABEL_73;
      }
    }

    else
    {
      switch(wifiState)
      {
        case 20:
          v17 = "NotConnected";
          goto LABEL_73;
        case 30:
          v17 = "Connecting";
          goto LABEL_73;
        case 40:
          v17 = "Connected";
LABEL_73:
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _wifiMonitorStateChanged:]", 30, "WiFi state initial: %s\n", v9, v10, v11, v12, v17);
          return;
      }
    }

    v17 = "?";
    goto LABEL_73;
  }

  if (!changedCopy)
  {
    if (gLogCategory_CUSystemMonitor > 30 || gLogCategory_CUSystemMonitor == -1 && !_LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      goto LABEL_76;
    }

    if (wifiState <= 19)
    {
      if (!wifiState)
      {
        v16 = "Unknown";
        goto LABEL_71;
      }

      if (wifiState == 10)
      {
        v16 = "Off";
        goto LABEL_71;
      }
    }

    else
    {
      switch(wifiState)
      {
        case 20:
          v16 = "NotConnected";
          goto LABEL_71;
        case 30:
          v16 = "Connecting";
          goto LABEL_71;
        case 40:
          v16 = "Connected";
LABEL_71:
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _wifiMonitorStateChanged:]", 30, "WiFi state initial: %s, %#{flags}\n", v9, v10, v11, v12, v16);
          goto LABEL_76;
      }
    }

    v16 = "?";
    goto LABEL_71;
  }

  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    if (wifiState <= 19)
    {
      if (!wifiState)
      {
        v14 = "Unknown";
        goto LABEL_75;
      }

      if (wifiState == 10)
      {
        v14 = "Off";
        goto LABEL_75;
      }
    }

    else
    {
      switch(wifiState)
      {
        case 20:
          v14 = "NotConnected";
          goto LABEL_75;
        case 30:
          v14 = "Connecting";
          goto LABEL_75;
        case 40:
          v14 = "Connected";
LABEL_75:
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _wifiMonitorStateChanged:]", 30, "WiFi state changed: %s -> %s, %#{flags}\n", v9, v10, v11, v12, v14);
          goto LABEL_76;
      }
    }

    v14 = "?";
    goto LABEL_75;
  }

LABEL_76:

  [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_551 passingTest:&__block_literal_global_553];
}

BOOL __47__CUSystemMonitorImp__wifiMonitorStateChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 wifiStateChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __47__CUSystemMonitorImp__wifiMonitorStateChanged___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 wifiStateChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_wifiMonitorStop
{
  if (self->_wifiManager && gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _wifiMonitorStop]", 30, "WiFi monitoring stop\n", v2, v3, v4, v5, v8);
  }

  [(CUWiFiManager *)self->_wifiManager invalidate];
  wifiManager = self->_wifiManager;
  self->_wifiManager = 0;
}

- (void)_wifiMonitorStart
{
  if (!self->_wifiManager)
  {
    v15[5] = v9;
    v15[6] = v8;
    v15[9] = v6;
    v15[10] = v7;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _wifiMonitorStart]", 30, "WiFi monitoring start\n", v2, v3, v4, v5, v14[0]);
    }

    v11 = objc_alloc_init(CUWiFiManager);
    wifiManager = self->_wifiManager;
    self->_wifiManager = v11;

    [(CUWiFiManager *)self->_wifiManager setControlFlags:[(CUWiFiManager *)self->_wifiManager controlFlags]| 0x100];
    [(CUWiFiManager *)self->_wifiManager setDispatchQueue:self->_dispatchQueue];
    [(CUWiFiManager *)self->_wifiManager setLabel:@"SysMon"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39__CUSystemMonitorImp__wifiMonitorStart__block_invoke;
    v15[3] = &unk_1E73A4F68;
    v15[4] = self;
    [(CUWiFiManager *)self->_wifiManager setWifiStateChangedHandler:v15];
    v13 = self->_wifiManager;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__CUSystemMonitorImp__wifiMonitorStart__block_invoke_2;
    v14[3] = &unk_1E73A3E78;
    v14[4] = self;
    [(CUWiFiManager *)v13 activateWithCompletion:v14];
  }
}

void __39__CUSystemMonitorImp__wifiMonitorStart__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7 && gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _wifiMonitorStart]_block_invoke_2", 90, "### WiFi monitoring start failed: %{error}\n", v3, v4, v5, v6, v7);
  }

  [*(a1 + 32) _wifiMonitorStateChanged:0];
}

- (void)_firstUnlockMonitorCheck:(BOOL)check
{
  checkCopy = check;
  v5 = MKBDeviceUnlockedSinceBoot();
  v10 = v5 == 1;
  if (checkCopy)
  {
    v11 = v5;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v12 = "no";
      if (v11 == 1)
      {
        v12 = "yes";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _firstUnlockMonitorCheck:]", 30, "FirstUnlock initial: %s\n", v6, v7, v8, v9, v12);
    }

    if (v11 == 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v5 == 1)
    {
LABEL_15:
      pthread_mutex_lock(&gCUSystemMonitorLock);
      self->_firstUnlocked = v10;
      pthread_mutex_unlock(&gCUSystemMonitorLock);
      if (!checkCopy)
      {
        if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _firstUnlockMonitorCheck:]", 30, "FirstUnlock changed: No -> Yes\n", v13, v14, v15, v16, v22);
        }

        [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_536 passingTest:&__block_literal_global_538_8137];
      }

      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _firstUnlockMonitorCheck:]", 30, "FirstUnlock monitoring stop after unlock\n", v13, v14, v15, v16, v22);
      }

      firstUnlockToken = self->_firstUnlockToken;
      if (firstUnlockToken != -1)
      {
        notify_cancel(firstUnlockToken);
        self->_firstUnlockToken = -1;
      }

      firstUnlockTimer = self->_firstUnlockTimer;
      if (firstUnlockTimer)
      {
        v19 = firstUnlockTimer;
        dispatch_source_cancel(v19);
        v20 = self->_firstUnlockTimer;
        self->_firstUnlockTimer = 0;
      }

      if (checkCopy)
      {
        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __47__CUSystemMonitorImp__firstUnlockMonitorCheck___block_invoke_3;
        block[3] = &unk_1E73A4F68;
        block[4] = self;
        dispatch_async(dispatchQueue, block);
      }

      else
      {

        [(CUSystemMonitorImp *)self _update];
      }

      return;
    }

    if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _firstUnlockMonitorCheck:]", 10, "FirstUnlock unchanged (No)\n", v6, v7, v8, v9, v25);
    }
  }
}

BOOL __47__CUSystemMonitorImp__firstUnlockMonitorCheck___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 firstUnlockHandler];
  v3 = v2 != 0;

  return v3;
}

void __47__CUSystemMonitorImp__firstUnlockMonitorCheck___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 firstUnlockHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_firstUnlockMonitorStop
{
  firstUnlockToken = self->_firstUnlockToken;
  if (firstUnlockToken != -1)
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _firstUnlockMonitorStop]", 30, "FirstUnlock monitoring stop\n", v2, v3, v4, v5, v10);
    }

    firstUnlockToken = self->_firstUnlockToken;
    if (firstUnlockToken != -1)
    {
LABEL_7:
      notify_cancel(firstUnlockToken);
      self->_firstUnlockToken = -1;
    }
  }

  firstUnlockTimer = self->_firstUnlockTimer;
  if (firstUnlockTimer)
  {
    v11 = firstUnlockTimer;
    dispatch_source_cancel(v11);
    v9 = self->_firstUnlockTimer;
    self->_firstUnlockTimer = 0;
  }
}

- (void)_firstUnlockMonitorStart
{
  if (!self->_firstUnlocked && self->_firstUnlockToken == -1)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _firstUnlockMonitorStart]", 30, "FirstUnlock monitoring start\n", v2, v3, v4, v5, v9);
    }

    v7 = *MEMORY[0x1E69B1A70];
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __46__CUSystemMonitorImp__firstUnlockMonitorStart__block_invoke;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch(v7, &self->_firstUnlockToken, dispatchQueue, handler);
    [(CUSystemMonitorImp *)self _firstUnlockMonitorCheck:1];
  }
}

- (void)_systemUIMonitorChangedFlags:(unsigned int)flags
{
  v8 = *&flags;
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    v10 = NSPrintF("%#{flags}", a2, *&flags, v3, v4, v5, v6, v7, v8);
    v23 = NSPrintF("%#{flags}", v11, v12, v13, v14, v15, v16, v17, self->_systemUIFlags ^ v8);
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemUIMonitorChangedFlags:]", 30, "SystemUI changed: %@, diff %@", v18, v19, v20, v21, v10);
  }

  systemUIFlags = self->_systemUIFlags;
  pthread_mutex_lock(&gCUSystemMonitorLock);
  self->_systemUIFlags = v8;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (systemUIFlags != v8)
  {

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_527 passingTest:&__block_literal_global_529];
  }
}

BOOL __51__CUSystemMonitorImp__systemUIMonitorChangedFlags___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 systemUIChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __51__CUSystemMonitorImp__systemUIMonitorChangedFlags___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 systemUIChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_systemUIMonitorStop
{
  if (self->_systemUIMonitor && gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemUIMonitorStop]", 30, "SystemUI monitoring stop", v2, v3, v4, v5, v10);
  }

  [(FBSDisplayLayoutMonitor *)self->_systemUIMonitor invalidate];
  systemUIMonitor = self->_systemUIMonitor;
  self->_systemUIMonitor = 0;

  systemUIIdentifierMap = self->_systemUIIdentifierMap;
  self->_systemUIIdentifierMap = 0;

  systemUIBluetoothNotifyToken = self->_systemUIBluetoothNotifyToken;
  if (systemUIBluetoothNotifyToken != -1)
  {
    notify_cancel(systemUIBluetoothNotifyToken);
    self->_systemUIBluetoothNotifyToken = -1;
  }
}

- (void)_systemUIMonitorStart
{
  v57[20] = *MEMORY[0x1E69E9840];
  v3 = self->_systemUIIdentifierMap;
  if (!v3)
  {
    v4 = getFBSDisplayLayoutElementControlCenterIdentifier();
    v51 = v4;
    v5 = @"com.apple.control-center";
    if (v4)
    {
      v5 = v4;
    }

    v56[0] = v5;
    v57[0] = &unk_1F06A2FF8;
    v6 = getFBSDisplayLayoutElementLockScreenIdentifier();
    v50 = v6;
    v7 = @"com.apple.lock-screen";
    if (v6)
    {
      v7 = v6;
    }

    v56[1] = v7;
    v57[1] = &unk_1F06A3010;
    v8 = getFBSDisplayLayoutElementNotificationCenterIdentifier();
    v49 = v8;
    v9 = @"com.apple.notification-center";
    if (v8)
    {
      v9 = v8;
    }

    v56[2] = v9;
    v57[2] = &unk_1F06A3028;
    v10 = getFBSDisplayLayoutElementSiriIdentifier();
    v48 = v10;
    v11 = @"com.apple.Siri";
    if (v10)
    {
      v11 = v10;
    }

    v56[3] = v11;
    v57[3] = &unk_1F06A3040;
    v12 = getSBSDisplayLayoutElementAppSwitcherIdentifier();
    v47 = v12;
    v13 = @"com.apple.springboard.app-switcher";
    if (v12)
    {
      v13 = v12;
    }

    v56[4] = v13;
    v57[4] = &unk_1F06A3058;
    v14 = getSBSDisplayLayoutElementCarPlayOEMIdentifier();
    v15 = v14;
    v16 = @"com.apple.carplay.oem";
    if (v14)
    {
      v16 = v14;
    }

    v56[5] = v16;
    v57[5] = &unk_1F06A3070;
    v17 = getSBSDisplayLayoutElementHomeScreenIdentifier();
    v18 = v17;
    v19 = @"com.apple.springboard.home-screen";
    if (v17)
    {
      v19 = v17;
    }

    v56[6] = v19;
    v57[6] = &unk_1F06A3088;
    v20 = getSBSDisplayLayoutElementLockScreenNavigationIdentifier();
    v21 = v20;
    v22 = @"com.apple.springboard.lockscreen.navigation";
    if (v20)
    {
      v22 = v20;
    }

    v56[7] = v22;
    v57[7] = &unk_1F06A30A0;
    v23 = getSBSDisplayLayoutElementLoginIdentifier();
    v24 = v23;
    v25 = @"com.apple.springboard.login";
    if (v23)
    {
      v25 = v23;
    }

    v56[8] = v25;
    v57[8] = &unk_1F06A30B8;
    v26 = getSBSDisplayLayoutElementNowPlayingIdentifier();
    v27 = v26;
    v28 = @"com.apple.now-playing";
    if (v26)
    {
      v28 = v26;
    }

    v56[9] = v28;
    v57[9] = &unk_1F06A30D0;
    v29 = getSBSDisplayLayoutElementPasscodeIdentifier();
    v30 = v29;
    v31 = @"com.apple.springboard.passcode";
    if (v29)
    {
      v31 = v29;
    }

    v56[10] = v31;
    v57[10] = &unk_1F06A30E8;
    v32 = getSBSDisplayLayoutElementSpotlightIdentifier();
    v33 = v32;
    v34 = @"com.apple.springboard.spotlight";
    if (v32)
    {
      v34 = v32;
    }

    v56[11] = v34;
    v57[11] = &unk_1F06A3100;
    v35 = getSBSDisplayLayoutElementTodayViewIdentifier();
    v36 = v35;
    v37 = @"com.apple.springboard.today-view";
    if (v35)
    {
      v37 = v35;
    }

    v56[12] = v37;
    v56[13] = @"com.apple.camera";
    v57[12] = &unk_1F06A3118;
    v57[13] = &unk_1F06A3130;
    v56[14] = @"com.apple.CoreAuthUI";
    v56[15] = @"com.apple.InCallService";
    v57[14] = &unk_1F06A3148;
    v57[15] = &unk_1F06A3160;
    v56[16] = @"com.apple.LocalAuthenticationUIService";
    v56[17] = @"com.apple.SharingViewService";
    v57[16] = &unk_1F06A3148;
    v57[17] = &unk_1F06A3178;
    v56[18] = @"SBSpotlightAlert";
    v56[19] = @"SBVoiceControlAlert";
    v57[18] = &unk_1F06A3100;
    v57[19] = &unk_1F06A3190;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:{20, v47}];

    objc_storeStrong(&self->_systemUIIdentifierMap, v3);
  }

  v38 = self->_systemUIMonitor;
  if (!v38)
  {
    FBSDisplayLayoutMonitorConfigurationClass = getFBSDisplayLayoutMonitorConfigurationClass(0);
    if (FBSDisplayLayoutMonitorConfigurationClass && getFBSDisplayLayoutMonitorClass(FBSDisplayLayoutMonitorConfigurationClass))
    {
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemUIMonitorStart]", 30, "SystemUI monitoring start", v40, v41, v42, v43, v46);
      }

      configurationForDefaultMainDisplayMonitor = [(objc_class *)(getFBSDisplayLayoutMonitorConfigurationClass)() configurationForDefaultMainDisplayMonitor];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __43__CUSystemMonitorImp__systemUIMonitorStart__block_invoke;
      v53[3] = &unk_1E73A3E50;
      v54 = v3;
      selfCopy = self;
      [configurationForDefaultMainDisplayMonitor setTransitionHandler:v53];
      v38 = [(objc_class *)(getFBSDisplayLayoutMonitorClass)() monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
      objc_storeStrong(&self->_systemUIMonitor, v38);
    }

    else
    {
      v38 = 0;
    }
  }

  if (self->_systemUIBluetoothNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __43__CUSystemMonitorImp__systemUIMonitorStart__block_invoke_3;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch("com.apple.bluetooth.systemFlags", &self->_systemUIBluetoothNotifyToken, dispatchQueue, handler);
  }
}

uint64_t __43__CUSystemMonitorImp__systemUIMonitorStart__block_invoke_3(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) _systemUIMonitorChangedFlags:*(*(a1 + 32) + 620) & 0xFFFBFFFF | ((state64 & 1) << 18)];
}

- (void)_systemLockStateUpdate:(BOOL)update
{
  updateCopy = update;
  v5 = MKBGetDeviceLockState();
  if (v5 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 3;
  }

  if (v5 == 1)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 4;
  }

  v9 = v5 <= 1 && v5 == 0;
  if (v5 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  pthread_mutex_lock(&gCUSystemMonitorLock);
  systemLockState = self->_systemLockState;
  self->_systemLockState = v10;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (updateCopy)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemLockStateUpdate:]", 30, "SystemLockState initial: %s\n", v12, v13, v14, v15, off_1E73A3F28[v10]);
    }
  }

  else if (v10 == systemLockState)
  {
    if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemLockStateUpdate:]", 10, "SystemLockState unchanged: %s\n", v12, v13, v14, v15, off_1E73A3F28[v10]);
    }
  }

  else
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      if (systemLockState > 4)
      {
        v16 = "?";
      }

      else
      {
        v16 = off_1E73A3F28[systemLockState];
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemLockStateUpdate:]", 30, "SystemLockState changed: %s -> %s\n", v12, v13, v14, v15, v16);
    }

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_422 passingTest:&__block_literal_global_424];
    if (v9)
    {

      [(CUSystemMonitorImp *)self _forceManateeStateRefresh];
    }
  }
}

BOOL __45__CUSystemMonitorImp__systemLockStateUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 systemLockStateChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __45__CUSystemMonitorImp__systemLockStateUpdate___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 systemLockStateChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_systemLockStateMonitorStop
{
  systemLockStateToken = self->_systemLockStateToken;
  if (systemLockStateToken != -1)
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemLockStateMonitorStop]", 30, "SystemLockState monitoring stop\n", v2, v3, v4, v5, v8);
    }

    systemLockStateToken = self->_systemLockStateToken;
    if (systemLockStateToken != -1)
    {
LABEL_7:
      notify_cancel(systemLockStateToken);
      self->_systemLockStateToken = -1;
    }
  }
}

- (void)_systemLockStateMonitorStart
{
  if (self->_systemLockStateToken == -1)
  {
    handler[7] = v6;
    handler[8] = v7;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemLockStateMonitorStart]", 30, "SystemLockState monitoring start\n", v2, v3, v4, v5, v11);
    }

    v9 = *MEMORY[0x1E69B1A70];
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __50__CUSystemMonitorImp__systemLockStateMonitorStart__block_invoke;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch(v9, &self->_systemLockStateToken, dispatchQueue, handler);
    [(CUSystemMonitorImp *)self _systemLockStateUpdate:1];
  }
}

- (void)_systemConfigSystemNameChanged:(BOOL)changed
{
  v5 = SCDynamicStoreCopyComputerName(0, 0);
  obj = v5;
  if (changed)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigSystemNameChanged:]", 30, "SystemName initial: '%@'\n", v6, v7, v8, v9, obj);
    }

LABEL_23:
    pthread_mutex_lock(&gCUSystemMonitorLock);
    objc_storeStrong(&self->_systemName, obj);
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    if (!changed)
    {
      [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_412 passingTest:&__block_literal_global_414];
    }

    goto LABEL_25;
  }

  systemName = self->_systemName;
  v11 = v5;
  v12 = systemName;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if ((v11 != 0) == (v12 == 0))
    {

LABEL_14:
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigSystemNameChanged:]", 30, "SystemName changed: '%@' -> '%@'\n", v15, v16, v17, v18, self->_systemName);
      }

      goto LABEL_23;
    }

    v14 = [(__CFString *)v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigSystemNameChanged:]", 10, "SystemName unchanged '%@'\n", v15, v16, v17, v18, v11);
  }

LABEL_25:
}

BOOL __53__CUSystemMonitorImp__systemConfigSystemNameChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 systemNameChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __53__CUSystemMonitorImp__systemConfigSystemNameChanged___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 systemNameChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_systemConfigNetInterfaceChanged:(id)changed initial:(BOOL)initial
{
  changedCopy = changed;
  if (!initial)
  {
    v11 = changedCopy;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigNetInterfaceChanged:initial:]", 30, "NetInterfaces changed: %##@\n", v7, v8, v9, v10, v11);
    }

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_406 passingTest:&__block_literal_global_408];
    changedCopy = v11;
  }
}

BOOL __63__CUSystemMonitorImp__systemConfigNetInterfaceChanged_initial___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 netInterfacesChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __63__CUSystemMonitorImp__systemConfigNetInterfaceChanged_initial___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 netInterfacesChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_systemConfigChanged:(id)changed initial:(BOOL)initial
{
  initialCopy = initial;
  v25 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [changedCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v19 = initialCopy;
    v9 = 0;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(changedCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 hasPrefix:@"State:/Network/Interface/"])
        {
          v10 = 1;
        }

        else if (([(NSString *)self->_scKeySystemName isEqual:v13]& 1) != 0)
        {
          v9 = 1;
        }

        else if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigChanged:initial:]", 30, "SystemConfig unknown key changed: '%@'\n", v14, v15, v16, v17, v13);
        }
      }

      v8 = [changedCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
    if (v10)
    {
      v18 = v19;
      [(CUSystemMonitorImp *)self _systemConfigNetInterfaceChanged:changedCopy initial:v19];
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v18 = v19;
    if (v9)
    {
LABEL_20:
      [(CUSystemMonitorImp *)self _systemConfigSystemNameChanged:v18];
    }
  }

LABEL_21:
}

- (void)_systemConfigUpdateNotifications
{
  scPatternNetInterfaceIPv4 = self->_scPatternNetInterfaceIPv4;
  if (scPatternNetInterfaceIPv4)
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = scPatternNetInterfaceIPv4;
    v6 = objc_alloc_init(v4);
    [v6 addObject:v5];

    v7 = self->_scPatternNetInterfaceIPv6;
    if (!v7)
    {
      goto LABEL_8;
    }

    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = self->_scPatternNetInterfaceIPv6;
  if (v7)
  {
LABEL_6:
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
LABEL_7:
    [v6 addObject:v7];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:

  scKeySystemName = self->_scKeySystemName;
  if (scKeySystemName)
  {
    v9 = MEMORY[0x1E695DF70];
    v10 = scKeySystemName;
    v11 = objc_alloc_init(v9);
    [v11 addObject:v10];
  }

  else
  {
    v11 = 0;
  }

  if (![v11 count] && !objc_msgSend(v6, "count"))
  {
    if (self->_scDynamicStore)
    {
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigUpdateNotifications]", 30, "SystemConfig monitoring stop\n", v12, v13, v14, v15, v60);
      }

      SCDynamicStoreSetDispatchQueue(self->_scDynamicStore, 0);
      scDynamicStore = self->_scDynamicStore;
      if (scDynamicStore)
      {
        CFRelease(scDynamicStore);
        self->_scDynamicStore = 0;
      }
    }

    scNotificationKeys = self->_scNotificationKeys;
    self->_scNotificationKeys = 0;

    scNotificationPatterns = self->_scNotificationPatterns;
    self->_scNotificationPatterns = 0;

    goto LABEL_57;
  }

  v16 = self->_scDynamicStore;
  if (!v16)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigUpdateNotifications]", 30, "SystemConfig monitoring start\n", v12, v13, v14, v15, v60);
    }

    v17 = getprogname();
    v25 = NSPrintF("%s:CUSystemMonitor", v18, v19, v20, v21, v22, v23, v24, v17);
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = self;
    v26 = SCDynamicStoreCreate(0, v25, _systemConfigChanged, &context);
    if (!v26)
    {
      if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
      {
        v32 = SCError();
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigUpdateNotifications]", 90, "### SCDynamicStoreCreate failed: %#m\n", v33, v34, v35, v36, v32);
      }

      goto LABEL_61;
    }

    v16 = v26;
    self->_scDynamicStore = v26;
    if (!SCDynamicStoreSetDispatchQueue(v26, self->_dispatchQueue) && gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
    {
      v27 = SCError();
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigUpdateNotifications]", 90, "### SCDynamicStoreSetDispatchQueue failed: %#m\n", v28, v29, v30, v31, v27);
    }
  }

  v40 = self->_scNotificationKeys;
  v41 = v11;
  v42 = v40;
  v43 = v42;
  if (v41 == v42)
  {

    goto LABEL_44;
  }

  if ((v41 != 0) == (v42 == 0))
  {
    v50 = v41;
LABEL_49:

    goto LABEL_50;
  }

  v44 = [(NSArray *)v41 isEqual:v42];

  if (v44)
  {
LABEL_44:
    v49 = self->_scNotificationPatterns;
    v50 = v6;
    v51 = v49;
    v43 = v51;
    if (v50 == v51)
    {

LABEL_57:
      scInitialKeys = self->_scInitialKeys;
      if (scInitialKeys)
      {
        [(CUSystemMonitorImp *)self _systemConfigChanged:scInitialKeys initial:1];
        v54 = self->_scInitialKeys;
      }

      else
      {
        v54 = 0;
      }

      self->_scInitialKeys = 0;

      self->_scChangesPending = 0;
      goto LABEL_61;
    }

    if ((v50 != 0) != (v51 == 0))
    {
      v52 = [(NSArray *)v50 isEqual:v51];

      if (v52)
      {
        goto LABEL_57;
      }

      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_50:
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigUpdateNotifications]", 30, "SystemConfig watch: Keys %##@, Patterns %##@\n", v45, v46, v47, v48, v41);
  }

  if (SCDynamicStoreSetNotificationKeys(v16, v41, v6))
  {
    objc_storeStrong(&self->_scNotificationKeys, v11);
    objc_storeStrong(&self->_scNotificationPatterns, v6);
    goto LABEL_57;
  }

  if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
  {
    v55 = SCError();
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigUpdateNotifications]", 90, "### SCDynamicStoreSetNotificationKeys failed: %#m\n", v56, v57, v58, v59, v55);
  }

LABEL_61:
}

- (void)_systemConfigUpdateKeyPtr:(id *)ptr name:(id)name enabled:(BOOL)enabled creator:(id)creator
{
  enabledCopy = enabled;
  nameCopy = name;
  creatorCopy = creator;
  v15 = *ptr;
  if (enabledCopy)
  {
    if (!v15)
    {
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigUpdateKeyPtr:name:enabled:creator:]", 30, "SystemConfig monitoring add: %@\n", v10, v11, v12, v13, nameCopy);
      }

      v17 = creatorCopy[2](creatorCopy);
      objc_storeStrong(ptr, v17);
      self->_scChangesPending = 1;
      scInitialKeys = self->_scInitialKeys;
      if (!scInitialKeys)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v20 = self->_scInitialKeys;
        self->_scInitialKeys = v19;

        scInitialKeys = self->_scInitialKeys;
      }

      [(NSMutableArray *)scInitialKeys addObject:v17];
    }
  }

  else if (v15)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _systemConfigUpdateKeyPtr:name:enabled:creator:]", 30, "SystemConfig monitoring remove: %@\n", v10, v11, v12, v13, nameCopy);
    }

    v16 = *ptr;
    *ptr = 0;

    self->_scChangesPending = 1;
  }
}

- (void)_screenStateMonitorUpdateWithLayout:(id)layout
{
  layoutCopy = layout;
  if (objc_opt_respondsToSelector())
  {
    backlightState = [layoutCopy backlightState];
    if (backlightState >= 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_191FF9630[backlightState];
    }
  }

  else
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      v9 = 0;
      goto LABEL_28;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenStateMonitorUpdateWithLayout:]", 30, "ScreenState update no layout/backlight", v4, v5, v6, v7, v13);
    }

    v9 = 0;
  }

  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    screenState = self->_screenState;
    if (screenState <= 19)
    {
      if (!screenState)
      {
        v11 = @"Unknown";
        goto LABEL_27;
      }

      if (screenState == 10)
      {
        v11 = @"Off";
        goto LABEL_27;
      }
    }

    else
    {
      switch(screenState)
      {
        case 20:
          v11 = @"InactiveOn";
          goto LABEL_27;
        case 30:
          v11 = @"ActiveDimmed";
          goto LABEL_27;
        case 40:
          v11 = @"ActiveOn";
LABEL_27:
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenStateMonitorUpdateWithLayout:]", 30, "ScreenState changed: %@ -> %@ (raw %d)", v4, v5, v6, v7, v11);
          goto LABEL_28;
      }
    }

    v11 = @"?";
    goto LABEL_27;
  }

LABEL_28:
  v12 = self->_screenState;
  pthread_mutex_lock(&gCUSystemMonitorLock);
  self->_screenState = v9;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (v9 != v12)
  {
    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_387_8175 passingTest:&__block_literal_global_389];
  }
}

BOOL __58__CUSystemMonitorImp__screenStateMonitorUpdateWithLayout___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 screenStateChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __58__CUSystemMonitorImp__screenStateMonitorUpdateWithLayout___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 screenStateChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_screenStateMonitorStop
{
  if (self->_screenStateMonitor)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenStateMonitorStop]", 30, "ScreenState monitor stop", v2, v3, v4, v5, v8);
    }

    [(FBSDisplayLayoutMonitor *)self->_screenStateMonitor invalidate];
    screenStateMonitor = self->_screenStateMonitor;
    self->_screenStateMonitor = 0;

    self->_screenState = 0;
  }
}

- (void)_screenStateMonitorStart
{
  if (!self->_screenStateMonitor)
  {
    v22[9] = v6;
    v22[10] = v7;
    selfCopy = self;
    if (gLogCategory_CUSystemMonitor <= 30)
    {
      if (gLogCategory_CUSystemMonitor != -1 || (self = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu), self))
      {
        self = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenStateMonitorStart]", 30, "ScreenState monitor start", v2, v3, v4, v5, v21);
      }
    }

    configurationForDefaultMainDisplayMonitor = [getFBSDisplayLayoutMonitorConfigurationClass(self) configurationForDefaultMainDisplayMonitor];
    v14 = configurationForDefaultMainDisplayMonitor;
    if (configurationForDefaultMainDisplayMonitor)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __46__CUSystemMonitorImp__screenStateMonitorStart__block_invoke;
      v22[3] = &unk_1E73A3E28;
      v22[4] = selfCopy;
      v15 = [configurationForDefaultMainDisplayMonitor setTransitionHandler:v22];
      v20 = [getFBSDisplayLayoutMonitorClass(v15) monitorWithConfiguration:v14];
      if (v20)
      {
        objc_storeStrong(&selfCopy->_screenStateMonitor, v20);
      }

      else if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenStateMonitorStart]", 90, "### ScreenState no monitor", v16, v17, v18, v19, v21);
      }
    }

    else if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenStateMonitorStart]", 90, "### ScreenState no monitor config", v10, v11, v12, v13, v21);
    }
  }
}

- (void)_screenChanged:(BOOL)changed
{
  changedCopy = changed;
  pthread_mutex_lock(&gCUSystemMonitorLock);
  screenOn = self->_screenOn;
  self->_screenOn = changedCopy;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (screenOn == changedCopy)
  {
    if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {
      v10 = "off";
      if (changedCopy)
      {
        v10 = "on";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenChanged:]", 10, "ScreenOn unchanged (%s)\n", v6, v7, v8, v9, v10);
    }
  }

  else
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      if (screenOn)
      {
        v11 = "on";
      }

      else
      {
        v11 = "off";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenChanged:]", 30, "ScreenOn changed: %s -> %s\n", v6, v7, v8, v9, v11);
    }

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_374 passingTest:&__block_literal_global_376];
  }
}

BOOL __37__CUSystemMonitorImp__screenChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 screenOnChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __37__CUSystemMonitorImp__screenChanged___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 screenOnChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_screenOnMonitorStop
{
  screenBlankedToken = self->_screenBlankedToken;
  if (screenBlankedToken != -1)
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenOnMonitorStop]", 30, "ScreenOn monitoring stop\n", v2, v3, v4, v5, v8);
    }

    screenBlankedToken = self->_screenBlankedToken;
    if (screenBlankedToken != -1)
    {
LABEL_7:
      notify_cancel(screenBlankedToken);
      self->_screenBlankedToken = -1;
    }
  }
}

- (void)_screenOnMonitorStartiOS
{
  if (self->_screenBlankedToken == -1)
  {
    state64[7] = v6;
    state64[8] = v7;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenOnMonitorStartiOS]", 30, "ScreenOn monitoring start\n", v2, v3, v4, v5, v18);
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __46__CUSystemMonitorImp__screenOnMonitorStartiOS__block_invoke;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_screenBlankedToken, dispatchQueue, handler);
    screenBlankedToken = self->_screenBlankedToken;
    state64[0] = 0;
    notify_get_state(screenBlankedToken, state64);
    v11 = state64[0];
    v12 = state64[0] == 0;
    pthread_mutex_lock(&gCUSystemMonitorLock);
    self->_screenOn = v12;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v17 = "off";
      if (!v11)
      {
        v17 = "on";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenOnMonitorStartiOS]", 30, "ScreenOn initial: %s\n", v13, v14, v15, v16, v17);
    }
  }
}

BOOL __42__CUSystemMonitorImp__screenLockedChanged__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 screenLockedChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __42__CUSystemMonitorImp__screenLockedChanged__block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 screenLockedChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_screenLockedMonitorStop
{
  screenLockedToken = self->_screenLockedToken;
  if (screenLockedToken != -1)
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenLockedMonitorStop]", 30, "ScreenLocked monitoring stop\n", v2, v3, v4, v5, v8);
    }

    screenLockedToken = self->_screenLockedToken;
    if (screenLockedToken != -1)
    {
LABEL_7:
      notify_cancel(screenLockedToken);
      self->_screenLockedToken = -1;
    }
  }

  self->_screenLocked = 1;
}

- (void)_screenLockedMonitorStart
{
  if (self->_screenLockedToken == -1)
  {
    handler[9] = v6;
    handler[10] = v7;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenLockedMonitorStart]", 30, "ScreenLocked monitoring start\n", v2, v3, v4, v5, v16);
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __47__CUSystemMonitorImp__screenLockedMonitorStart__block_invoke;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch("com.apple.springboard.lockstate", &self->_screenLockedToken, dispatchQueue, handler);
    if (SpringBoardServicesLibrary_sOnce != -1)
    {
      dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_1295);
    }

    v10 = SpringBoardServicesLibrary_sLib && dlsym(SpringBoardServicesLibrary_sLib, "SBSGetScreenLockStatus") && softLinkSBSGetScreenLockStatus(0) != 0;
    pthread_mutex_lock(&gCUSystemMonitorLock);
    self->_screenLocked = v10;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v15 = "no";
      if (v10)
      {
        v15 = "yes";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _screenLockedMonitorStart]", 30, "ScreenLocked initial: %s\n", v11, v12, v13, v14, v15);
    }
  }
}

- (void)_rotatingIdentifierTimerFired
{
  v17 = self->_rotatingIdentifierData;
  v9 = NSRandomData(6uLL, 0, v3, v4, v5, v6, v7, v8);
  pthread_mutex_lock(&gCUSystemMonitorLock);
  objc_storeStrong(&self->_rotatingIdentifierData, v9);
  bytes = [v9 bytes];
  v11 = *(bytes + 4);
  *self->_rotatingIdentifier48.bytes = *bytes;
  *&self->_rotatingIdentifier48.bytes[4] = v11;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    bytes2 = [(NSData *)v17 bytes];
    [v9 bytes];
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _rotatingIdentifierTimerFired]", 30, "Rotating identifier changed timer: %.6a -> %.6a\n", v13, v14, v15, v16, bytes2);
  }

  [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_351 passingTest:&__block_literal_global_353];
}

BOOL __51__CUSystemMonitorImp__rotatingIdentifierTimerFired__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 rotatingIdentifierChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __51__CUSystemMonitorImp__rotatingIdentifierTimerFired__block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 rotatingIdentifierChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_rotatingIdentifierMonitorStop
{
  rotatingIdentifierTimer = self->_rotatingIdentifierTimer;
  if (!rotatingIdentifierTimer)
  {
    return;
  }

  if (gLogCategory_CUSystemMonitor >= 31)
  {
    v8 = rotatingIdentifierTimer;
LABEL_8:
    v11 = v8;
    dispatch_source_cancel(v8);
    v9 = self->_rotatingIdentifierTimer;
    self->_rotatingIdentifierTimer = 0;

    return;
  }

  if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _rotatingIdentifierMonitorStop]", 30, "Rotating identifier monitor stop\n", v2, v3, v4, v5, v10);
  }

  v8 = self->_rotatingIdentifierTimer;
  if (v8)
  {
    goto LABEL_8;
  }
}

- (void)_rotatingIdentifierMonitorStart
{
  if (!self->_rotatingIdentifierTimer)
  {
    handler[9] = v8;
    handler[10] = v9;
    v11 = NSRandomData(6uLL, 0, v2, v3, v4, v5, v6, v7);
    pthread_mutex_lock(&gCUSystemMonitorLock);
    objc_storeStrong(&self->_rotatingIdentifierData, v11);
    bytes = [v11 bytes];
    v13 = *(bytes + 4);
    *self->_rotatingIdentifier48.bytes = *bytes;
    *&self->_rotatingIdentifier48.bytes[4] = v13;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      bytes2 = [v11 bytes];
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _rotatingIdentifierMonitorStart]", 30, "Rotating identifier monitor start: %.6a\n", v15, v16, v17, v18, bytes2);
    }

    v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    rotatingIdentifierTimer = self->_rotatingIdentifierTimer;
    self->_rotatingIdentifierTimer = v19;

    v21 = self->_rotatingIdentifierTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __53__CUSystemMonitorImp__rotatingIdentifierMonitorStart__block_invoke;
    handler[3] = &unk_1E73A4F68;
    handler[4] = self;
    dispatch_source_set_event_handler(v21, handler);
    v22 = self->_rotatingIdentifierTimer;
    v23 = dispatch_time(0x8000000000000000, 1020000000000);
    dispatch_source_set_timer(v22, v23, 0xED7CBCD800uLL, 0xB2D05E00uLL);
    dispatch_activate(self->_rotatingIdentifierTimer);
  }
}

- (void)_locationsOfInterestDidChange:(BOOL)change
{
  if (gLogCategory_CUSystemMonitor <= 30)
  {
    changeCopy = change;
    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      v9 = "(initial)";
      if (changeCopy)
      {
        v9 = "(changed)";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _locationsOfInterestDidChange:]", 30, "Region monitor LOI fetch start %s", v3, v4, v5, v6, v9);
    }
  }

  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-1209600.0];
  v11 = [MEMORY[0x1E695DF00] now];
  regionRoutineManager = self->_regionRoutineManager;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__CUSystemMonitorImp__locationsOfInterestDidChange___block_invoke;
  v13[3] = &unk_1E73A3E00;
  v13[4] = self;
  [(RTRoutineManager *)regionRoutineManager fetchLocationsOfInterestVisitedBetweenStartDate:v10 endDate:v11 withHandler:v13];
}

void __52__CUSystemMonitorImp__locationsOfInterestDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = v5;
  if (!v11 || v6)
  {
    if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _locationsOfInterestDidChange:]_block_invoke", 90, "### Region monitor LOI fetch failed: %{error}", v7, v8, v9, v10, v6);
    }
  }

  else
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v12 = [v11 count];
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _locationsOfInterestDidChange:]_block_invoke", 30, "Region monitor LOI fetch completed: %d total", v13, v14, v15, v16, v12);
    }

    v17 = *(a1 + 32);
    v18 = *(v17 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__CUSystemMonitorImp__locationsOfInterestDidChange___block_invoke_2;
    block[3] = &unk_1E73A49F0;
    block[4] = v17;
    block[5] = v11;
    dispatch_async(v18, block);
  }
}

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  v32 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_regionCTClient)
  {
    legacyInfo = [infoCopy legacyInfo];
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v7 = [legacyInfo count];
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp cellMonitorUpdate:info:]", 30, "Region monitor cell update: %d items", v8, v9, v10, v11, v7);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = legacyInfo;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      selfCopy = self;
      v15 = 0;
      v16 = *v28;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v18 objectForKeyedSubscript:getkCTCellMonitorMCC()];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              integerValue = [v19 integerValue];
              if (integerValue >= 1)
              {
                if (integerValue != 0xFFFF)
                {
                  stringValue = [v19 stringValue];
                  [(CUSystemMonitorImp *)selfCopy _regionMonitorUpdateMCC:stringValue];

                  goto LABEL_24;
                }

                v15 = 1;
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      if (v15)
      {
        if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp cellMonitorUpdate:info:]", 30, "Region monitor mapping %d -> null (update)", v21, v22, v23, v24, 0xFFFFLL);
        }

        [(CUSystemMonitorImp *)selfCopy _regionMonitorUpdateMCC:0];
      }
    }

    else
    {
LABEL_24:
    }
  }
}

- (void)_regionMonitorUpdateMCC:(id)c
{
  cCopy = c;
  v6 = self->_regionMobileCountryCode;
  v7 = cCopy;
  v8 = v6;
  v9 = v8;
  if (v8 == v7)
  {
    v10 = 1;
  }

  else if ((v7 != 0) == (v8 == 0))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(NSString *)v7 isEqual:v8];
  }

  v11 = self->_regionISOCountryCode;
  v12 = v11;
  if (v10)
  {
    if (v7)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    goto LABEL_26;
  }

  if (!v7)
  {
    goto LABEL_25;
  }

  regionCTServerCnx = self->_regionCTServerCnx;
  if (!regionCTServerCnx)
  {
    v16 = getprogname();
    v24 = NSPrintF("com.apple.CUSystemMonitor.%s", v17, v18, v19, v20, v21, v22, v23, v16);
    v25 = softLink_CTServerConnectionCreateOnTargetQueue(0, v24, self->_dispatchQueue, 0);
    if (v25)
    {
      regionCTServerCnx = v25;
      self->_regionCTServerCnx = v25;

      goto LABEL_15;
    }

    if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorUpdateMCC:]", 90, "### Region monitor CTServerConnectionCreate failed", v26, v27, v28, v29, v42);
    }

    self->_regionCTServerCnx = 0;

LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

LABEL_15:
  v43 = 0;
  softLink_CTServerConnectionCopyISOForMCC(regionCTServerCnx, v7, &v43);
  v14 = v43;
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorUpdateMCC:]", 30, "Region monitor CopyISOForMCC: %@, ISO %@, error %d/%d", v30, v31, v32, v33, v7);
  }

LABEL_26:
  pthread_mutex_lock(&gCUSystemMonitorLock);
  objc_storeStrong(&self->_regionISOCountryCode, v14);
  objc_storeStrong(&self->_regionMobileCountryCode, c);
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if ((v10 & 1) == 0)
  {
    goto LABEL_36;
  }

  v38 = v14;
  v39 = v12;
  v40 = v39;
  if (v38 == v39)
  {
  }

  else
  {
    if ((v39 == 0) == (v38 != 0))
    {

      goto LABEL_36;
    }

    v41 = [(NSString *)v38 isEqual:v39];

    if ((v41 & 1) == 0)
    {
LABEL_36:
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorUpdateMCC:]", 30, "Region changed: MCC %@, ISO %@", v34, v35, v36, v37, v7);
      }

      [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_333 passingTest:&__block_literal_global_335];
      goto LABEL_41;
    }
  }

  if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorUpdateMCC:]", 10, "Region unchanged: MCC %@, ISO %@", v34, v35, v36, v37, v7);
  }

LABEL_41:
}

BOOL __46__CUSystemMonitorImp__regionMonitorUpdateMCC___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 regionChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __46__CUSystemMonitorImp__regionMonitorUpdateMCC___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 regionChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_regionMonitorUpdateLocationsOfInterest:(id)interest
{
  v62 = *MEMORY[0x1E69E9840];
  interestCopy = interest;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = interestCopy;
  v50 = [v6 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v50)
  {
    selfCopy = self;
    obj = v6;
    v7 = 0;
    v49 = *v57;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        visits = [v9 visits];
        v11 = [visits countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v53;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v53 != v13)
              {
                objc_enumerationMutation(visits);
              }

              entryDate = [*(*(&v52 + 1) + 8 * j) entryDate];
              if ([entryDate compare:distantPast] <= 1)
              {
                v16 = v9;

                v17 = entryDate;
                distantPast = v17;
                v7 = v16;
              }
            }

            v12 = [visits countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v12);
        }
      }

      v6 = obj;
      v50 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v50);

    if (v7)
    {
      v22 = selfCopy->_regionRoutineCountry;
      mapItem = [v7 mapItem];
      address = [mapItem address];
      country = [address country];

      v26 = v22;
      v51 = country;
      v27 = country;
      v28 = v27;
      if (v26 == v27)
      {
        v29 = 1;
      }

      else if ((v26 != 0) == (v27 == 0))
      {
        v29 = 0;
      }

      else
      {
        v29 = [(NSString *)v26 isEqual:v27];
      }

      v30 = selfCopy->_regionRoutineState;
      mapItem2 = [v7 mapItem];
      address2 = [mapItem2 address];
      administrativeAreaCode = [address2 administrativeAreaCode];

      v34 = v30;
      v35 = administrativeAreaCode;
      v36 = v35;
      if (v34 == v35)
      {
        v37 = 1;
      }

      else
      {
        if ((v34 != 0) == (v35 == 0))
        {

          LOBYTE(v37) = 0;
          goto LABEL_36;
        }

        v37 = [(NSString *)v34 isEqual:v35];
      }

      if (v29 & v37)
      {
        if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorUpdateLocationsOfInterest:]", 10, "Region routine unchanged: Country %@, State %@", v38, v39, v40, v41, v28);
        }

LABEL_47:

        goto LABEL_48;
      }

LABEL_36:
      pthread_mutex_lock(&gCUSystemMonitorLock);
      if ((v29 & 1) == 0)
      {
        objc_storeStrong(&selfCopy->_regionRoutineCountry, v51);
      }

      if ((v37 & 1) == 0)
      {
        objc_storeStrong(&selfCopy->_regionRoutineState, administrativeAreaCode);
      }

      pthread_mutex_unlock(&gCUSystemMonitorLock);
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorUpdateLocationsOfInterest:]", 30, "Region routine changed: Country %@, State %@", v42, v43, v44, v45, v28);
      }

      [(CUSystemMonitorImp *)selfCopy _invokeBlock:&__block_literal_global_324 passingTest:&__block_literal_global_326];
      goto LABEL_47;
    }
  }

  else
  {
  }

  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorUpdateLocationsOfInterest:]", 30, "Region monitor LOI none found", v18, v19, v20, v21, v46);
  }

  v7 = 0;
LABEL_48:
}

BOOL __62__CUSystemMonitorImp__regionMonitorUpdateLocationsOfInterest___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 regionChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __62__CUSystemMonitorImp__regionMonitorUpdateLocationsOfInterest___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 regionChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_regionMonitorGet
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorGet]", 30, "Region monitor get CT subscription context", v2, v3, v4, v5, v9[0]);
  }

  regionCTClient = self->_regionCTClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__CUSystemMonitorImp__regionMonitorGet__block_invoke;
  v9[3] = &unk_1E73A3DD8;
  v9[4] = self;
  v9[5] = regionCTClient;
  v8 = regionCTClient;
  [(CoreTelephonyClient *)v8 getCurrentDataSubscriptionContext:v9];
}

void __39__CUSystemMonitorImp__regionMonitorGet__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if (*(a1 + 40) == *(*(a1 + 32) + 416))
  {
    v11 = v5;
    if (!v11 || v6)
    {
      if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorGet]_block_invoke", 90, "### Region monitor get CT subscription context failed: %{error}", v7, v8, v9, v10, v6);
      }
    }

    else
    {
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorGet]_block_invoke", 30, "Region monitor get MCC", v7, v8, v9, v10, v13);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__CUSystemMonitorImp__regionMonitorGet__block_invoke_2;
      v14[3] = &unk_1E73A3DB0;
      v12 = *(a1 + 40);
      v14[4] = *(a1 + 32);
      v14[5] = v12;
      [v12 copyMobileCountryCode:v11 completion:v14];
    }
  }
}

void __39__CUSystemMonitorImp__regionMonitorGet__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if (*(a1 + 40) == *(*(a1 + 32) + 416))
  {
    if (v5)
    {
      if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorGet]_block_invoke_2", 90, "### Region monitor get MCC failed: MCC %@, %{error}", v6, v7, v8, v9, v15);
      }
    }

    else
    {
      if ([v15 integerValue] == 0xFFFF)
      {
        if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorGet]_block_invoke_2", 30, "Region monitor mapping %@ -> null (get)", v10, v11, v12, v13, v15);
        }

        v14 = 0;
      }

      else
      {
        v14 = v15;
      }

      v15 = v14;
      [*(a1 + 32) _regionMonitorUpdateMCC:?];
    }
  }
}

- (void)_regionMonitorStop
{
  if (self->_regionCTClient)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorStop]", 30, "Region monitor stop", v2, v3, v4, v5, v15);
    }

    regionCTClient = self->_regionCTClient;
    self->_regionCTClient = 0;
  }

  regionCTServerCnx = self->_regionCTServerCnx;
  if (regionCTServerCnx)
  {
    CFRelease(regionCTServerCnx);
    self->_regionCTServerCnx = 0;
  }

  regionRoutineManager = self->_regionRoutineManager;
  if (regionRoutineManager)
  {
    self->_regionRoutineManager = 0;
  }

  regionRoutineNotifyToken = self->_regionRoutineNotifyToken;
  if (regionRoutineNotifyToken != -1)
  {
    notify_cancel(regionRoutineNotifyToken);
    self->_regionRoutineNotifyToken = -1;
  }

  pthread_mutex_lock(&gCUSystemMonitorLock);
  regionISOCountryCode = self->_regionISOCountryCode;
  self->_regionISOCountryCode = 0;

  regionMobileCountryCode = self->_regionMobileCountryCode;
  self->_regionMobileCountryCode = 0;

  regionRoutineCountry = self->_regionRoutineCountry;
  self->_regionRoutineCountry = 0;

  regionRoutineState = self->_regionRoutineState;
  self->_regionRoutineState = 0;

  pthread_mutex_unlock(&gCUSystemMonitorLock);
}

- (void)_regionMonitorStart
{
  v3 = self->_regionCTClient;
  v8 = v3;
  if (!v3)
  {
    if (gLogCategory_CUSystemMonitor <= 30)
    {
      if (gLogCategory_CUSystemMonitor != -1 || (v3 = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu), v3))
      {
        v3 = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _regionMonitorStart]", 30, "Region monitor start", v4, v5, v6, v7, v12);
      }
    }

    v8 = [objc_alloc(getCoreTelephonyClientClass(v3)) initWithQueue:self->_dispatchQueue];
    regionCTClient = self->_regionCTClient;
    self->_regionCTClient = v8;

    [(CoreTelephonyClient *)v8 setDelegate:self];
    [(CUSystemMonitorImp *)self _regionMonitorGet];
  }

  defaultManager = self->_regionRoutineManager;
  if (!defaultManager)
  {
    defaultManager = [(objc_class *)getRTRoutineManagerClass() defaultManager];
    objc_storeStrong(&self->_regionRoutineManager, defaultManager);
    if (self->_regionRoutineNotifyToken == -1)
    {
      dispatchQueue = self->_dispatchQueue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __41__CUSystemMonitorImp__regionMonitorStart__block_invoke;
      handler[3] = &unk_1E73A4228;
      handler[4] = self;
      notify_register_dispatch("RTLocationsOfInterestDidChangeNotification", &self->_regionRoutineNotifyToken, dispatchQueue, handler);
    }

    [(CUSystemMonitorImp *)self _locationsOfInterestDidChange:0];
  }
}

- (void)_primaryAppleIDChanged2:(BOOL)changed2
{
  changed2Copy = changed2;
  v33 = *MEMORY[0x1E69E9840];
  if (!changed2)
  {
    v5 = logger_8205();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "PrimaryAppleID change notification\n", &v25, 2u);
    }
  }

  _primaryAppleIDAccount = [(CUSystemMonitorImp *)self _primaryAppleIDAccount];
  v7 = _primaryAppleIDAccount;
  primaryAppleIDActive = self->_primaryAppleIDActive;
  self->_primaryAppleIDActive = _primaryAppleIDAccount != 0;
  if (_primaryAppleIDAccount && !primaryAppleIDActive && self->_familyFailed)
  {
    v9 = logger_8205();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_191EAF000, v9, OS_LOG_TYPE_DEFAULT, "Family re-check on PrimaryAppleID active\n", &v25, 2u);
    }

    _primaryAppleIDAccount = [(CUSystemMonitorImp *)self _familyGetMembers:0];
  }

  sharedInstance = [getAKAccountManagerClass_8208(_primaryAppleIDAccount) sharedInstance];
  v11 = [v7 accountPropertyForKey:@"altDSID"];
  if (v11 && ([sharedInstance authKitAccountWithAltDSID:v11 error:0], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = [sharedInstance securityLevelForAccount:v12] == 4;
  }

  else
  {
    v14 = 0;
  }

  username = [v7 username];
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v16 = self->_primaryAppleID;
  objc_storeStrong(&self->_primaryAppleID, username);
  primaryAppleIDIsHSA2 = self->_primaryAppleIDIsHSA2;
  self->_primaryAppleIDIsHSA2 = v14;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (changed2Copy)
  {
    v18 = logger_8205();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "no";
      if (v14)
      {
        v19 = "yes";
      }

      v25 = 138412546;
      v26 = username;
      v27 = 2080;
      v28 = v19;
      _os_log_impl(&dword_191EAF000, v18, OS_LOG_TYPE_DEFAULT, "PrimaryAppleID initial: %@, HSA2 %s\n", &v25, 0x16u);
    }
  }

  else
  {
    v20 = logger_8205();
    v21 = v20;
    if (primaryAppleIDIsHSA2 == v14)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = "no";
        if (v14)
        {
          v22 = "yes";
        }

        v25 = 138412546;
        v26 = username;
        v27 = 2080;
        v28 = v22;
        _os_log_impl(&dword_191EAF000, v21, OS_LOG_TYPE_INFO, "PrimaryAppleID unchanged (%@, HSA2 %s)\n", &v25, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = "no";
        v25 = 138413058;
        v26 = v16;
        if (primaryAppleIDIsHSA2)
        {
          v24 = "yes";
        }

        else
        {
          v24 = "no";
        }

        v27 = 2080;
        v28 = v24;
        if (v14)
        {
          v23 = "yes";
        }

        v29 = 2112;
        v30 = username;
        v31 = 2080;
        v32 = v23;
        _os_log_impl(&dword_191EAF000, v21, OS_LOG_TYPE_DEFAULT, "PrimaryAppleID changed: %@, HSA2 %s -> %@, HSA2 %s\n", &v25, 0x2Au);
      }

      [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_307 passingTest:&__block_literal_global_309];
    }
  }
}

BOOL __46__CUSystemMonitorImp__primaryAppleIDChanged2___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 primaryAppleIDChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __46__CUSystemMonitorImp__primaryAppleIDChanged2___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 primaryAppleIDChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_primaryAppleIDChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CUSystemMonitorImp__primaryAppleIDChanged___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_primaryAppleIDAccount
{
  if (AppleAccountLibrary_sOnce_8228 != -1)
  {
    dispatch_once(&AppleAccountLibrary_sOnce_8228, &__block_literal_global_1273);
  }

  defaultStore = [(objc_class *)getACAccountStoreClass_8229() defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

- (void)_primaryAppleIDMonitorStop
{
  if (self->_primaryAppleIDObserving)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter removeObserver:self name:@"com.apple.authkit.user-info-changed" object:0];
    primaryAppleIDNotifyToken = self->_primaryAppleIDNotifyToken;
    if (primaryAppleIDNotifyToken != -1)
    {
      notify_cancel(primaryAppleIDNotifyToken);
      self->_primaryAppleIDNotifyToken = -1;
    }

    self->_primaryAppleIDObserving = 0;
    primaryAppleID = self->_primaryAppleID;
    self->_primaryAppleID = 0;

    *&self->_primaryAppleIDActive = 0;
  }
}

- (void)_primaryAppleIDMonitorStart
{
  if (!self->_primaryAppleIDObserving)
  {
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:self selector:sel__primaryAppleIDChanged_ name:@"com.apple.authkit.user-info-changed" object:0];
    if (self->_primaryAppleIDNotifyToken == -1)
    {
      dispatchQueue = self->_dispatchQueue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __49__CUSystemMonitorImp__primaryAppleIDMonitorStart__block_invoke;
      handler[3] = &unk_1E73A4228;
      handler[4] = self;
      notify_register_dispatch("com.apple.rapport.primaryAccountChanged", &self->_primaryAppleIDNotifyToken, dispatchQueue, handler);
    }

    self->_primaryAppleIDObserving = 1;
    [(CUSystemMonitorImp *)self _primaryAppleIDChanged2:1];
  }
}

- (void)_powerUnlimitedMonitorStop
{
  powerSourceToken = self->_powerSourceToken;
  if (powerSourceToken != -1)
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _powerUnlimitedMonitorStop]", 30, "PowerUnlimited monitoring stop\n", v2, v3, v4, v5, v8);
    }

    powerSourceToken = self->_powerSourceToken;
    if (powerSourceToken != -1)
    {
LABEL_7:
      notify_cancel(powerSourceToken);
      self->_powerSourceToken = -1;
    }
  }
}

- (void)_powerUnlimitedMonitorStart
{
  if (self->_powerSourceToken == -1)
  {
    handler[9] = v6;
    handler[10] = v7;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _powerUnlimitedMonitorStart]", 30, "PowerUnlimited monitoring start\n", v2, v3, v4, v5, v16);
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __49__CUSystemMonitorImp__powerUnlimitedMonitorStart__block_invoke;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.powersources.source", &self->_powerSourceToken, dispatchQueue, handler);
    v10 = IOPSDrawingUnlimitedPower();
    pthread_mutex_lock(&gCUSystemMonitorLock);
    self->_powerUnlimited = v10;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v15 = "no";
      if (v10)
      {
        v15 = "yes";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _powerUnlimitedMonitorStart]", 30, "PowerUnlimited initial: %s\n", v11, v12, v13, v14, v15);
    }
  }
}

uint64_t __49__CUSystemMonitorImp__powerUnlimitedMonitorStart__block_invoke(uint64_t a1)
{
  v2 = IOPSDrawingUnlimitedPower();
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v3 = *(a1 + 32);
  v4 = *(v3 + 388);
  *(v3 + 388) = v2;
  result = pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (v4 == v2)
  {
    if (gLogCategory_CUSystemMonitor <= 10)
    {
      if (gLogCategory_CUSystemMonitor != -1 || (result = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu), result))
      {
        v10 = "no";
        if (v2)
        {
          v10 = "yes";
        }

        return LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _powerUnlimitedMonitorStart]_block_invoke", 10, "PowerUnlimited unchanged (%s)\n", v6, v7, v8, v9, v10);
      }
    }
  }

  else
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      if (v4)
      {
        v11 = "yes";
      }

      else
      {
        v11 = "no";
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _powerUnlimitedMonitorStart]_block_invoke", 30, "PowerUnlimited changed: %s -> %s\n", v6, v7, v8, v9, v11);
    }

    v12 = *(a1 + 32);

    return [v12 _invokeBlock:&__block_literal_global_292 passingTest:&__block_literal_global_294];
  }

  return result;
}

BOOL __49__CUSystemMonitorImp__powerUnlimitedMonitorStart__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 powerUnlimitedChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __49__CUSystemMonitorImp__powerUnlimitedMonitorStart__block_invoke_2(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 powerUnlimitedChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_netInterfaceMonitorStop
{
  if (self->_netInterfaceMonitor)
  {
    v3 = logger_8205();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "NetInterface monitoring stop", v6, 2u);
    }

    [(CUNetInterfaceMonitor *)self->_netInterfaceMonitor invalidate];
    netInterfaceMonitor = self->_netInterfaceMonitor;
    self->_netInterfaceMonitor = 0;

    self->_netFlags = 0;
    self->_primaryIPv4Addr.sa.sa_family = 0;
    self->_primaryIPv6Addr.sa.sa_family = 0;
    primaryNetworkSignature = self->_primaryNetworkSignature;
    self->_primaryNetworkSignature = 0;
  }
}

- (void)_netInterfaceMonitorStart
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_netInterfaceMonitor)
  {
    v3 = [(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_246];
    v4 = logger_8205();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "no";
      if (v3)
      {
        v5 = "yes";
      }

      *buf = 136315138;
      v14 = v5;
      _os_log_impl(&dword_191EAF000, v4, OS_LOG_TYPE_DEFAULT, "NetInterface monitoring start: useNW=%s", buf, 0xCu);
    }

    v6 = objc_alloc_init(CUNetInterfaceMonitor);
    netInterfaceMonitor = self->_netInterfaceMonitor;
    self->_netInterfaceMonitor = v6;

    if (v3)
    {
      [(CUNetInterfaceMonitor *)self->_netInterfaceMonitor setControlFlags:[(CUNetInterfaceMonitor *)self->_netInterfaceMonitor controlFlags]| 0x10];
    }

    [(CUNetInterfaceMonitor *)self->_netInterfaceMonitor setDispatchQueue:self->_dispatchQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_248;
    v12[3] = &unk_1E73A4F68;
    v12[4] = self;
    [(CUNetInterfaceMonitor *)self->_netInterfaceMonitor setFlagsChangedHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_3;
    v11[3] = &unk_1E73A4F68;
    v11[4] = self;
    [(CUNetInterfaceMonitor *)self->_netInterfaceMonitor setPrimaryIPChangedHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_3_264;
    v10[3] = &unk_1E73A4F68;
    v10[4] = self;
    [(CUNetInterfaceMonitor *)self->_netInterfaceMonitor setPrimaryNetworkChangedHandler:v10];
    v8 = self->_netInterfaceMonitor;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_3_271;
    v9[3] = &unk_1E73A4F68;
    v9[4] = self;
    [(CUNetInterfaceMonitor *)v8 activateWithCompletion:v9];
  }
}

uint64_t __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_248(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&gCUSystemMonitorLock);
  *(*(a1 + 32) + 288) = [*(*(a1 + 32) + 280) flags];
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  v2 = logger_8205();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSPrintF("%#{flags}", v3, v4, v5, v6, v7, v8, v9, *(*(a1 + 32) + 288));
    *buf = 138412290;
    v13 = v10;
    _os_log_impl(&dword_191EAF000, v2, OS_LOG_TYPE_DEFAULT, "Network interface flags changed: %@", buf, 0xCu);
  }

  return [*(a1 + 32) _invokeBlock:&__block_literal_global_252 passingTest:&__block_literal_global_254];
}

uint64_t __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_3(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v2 = *(a1 + 32);
  v3 = (v2 + 292);
  v4 = *(v2 + 280);
  if (v4)
  {
    objc_msgSend_primaryIPv4Addr(v4);
  }

  else
  {
    memset(buf, 0, 28);
  }

  *v3 = *buf;
  *(v3 + 12) = *&buf[12];
  v5 = *(a1 + 32);
  v6 = (v5 + 320);
  v7 = *(v5 + 280);
  if (v7)
  {
    objc_msgSend_primaryIPv6Addr(v7);
  }

  else
  {
    memset(buf, 0, 28);
  }

  *v6 = *buf;
  *(v6 + 12) = *&buf[12];
  v8 = [*(*(a1 + 32) + 280) primaryIPv4Signature];
  v9 = *(a1 + 32);
  v10 = *(v9 + 352);
  *(v9 + 352) = v8;

  v11 = [*(*(a1 + 32) + 280) primaryIPv6Signature];
  v12 = *(a1 + 32);
  v13 = *(v12 + 360);
  *(v12 + 360) = v11;

  *(*(a1 + 32) + 368) = [*(*(a1 + 32) + 280) primaryIPIsCellular];
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  v14 = logger_8205();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v29 = NSPrintF("%##a", v15, v16, v17, v18, v19, v20, v21, *(a1 + 32) + 292);
    v30 = *(a1 + 32);
    v31 = *(v30 + 352);
    if (v31)
    {
      v32 = CUPrintNSDataHex(*(v30 + 352), 100, 0);
      v30 = *(a1 + 32);
    }

    else
    {
      v32 = @"nil";
    }

    v33 = NSPrintF("%##a", v22, v23, v24, v25, v26, v27, v28, v30 + 320);
    v34 = *(a1 + 32);
    v35 = *(v34 + 360);
    if (v35)
    {
      v36 = CUPrintNSDataHex(*(v34 + 360), 100, 0);
      v34 = *(a1 + 32);
    }

    else
    {
      v36 = @"nil";
    }

    v37 = *(v34 + 368);
    *buf = 138413314;
    if (v37)
    {
      v38 = "yes";
    }

    else
    {
      v38 = "no";
    }

    *&buf[4] = v29;
    *&buf[12] = 2112;
    *&buf[14] = v32;
    *&buf[22] = 2112;
    *&buf[24] = v33;
    v41 = 2112;
    v42 = v36;
    v43 = 2080;
    v44 = v38;
    _os_log_impl(&dword_191EAF000, v14, OS_LOG_TYPE_DEFAULT, "PrimaryIP changed: IPv4=%@, IPv4Sig=%@, IPv6=%@, IPv6Sig=%@, cellular=%s", buf, 0x34u);
    if (v35)
    {
    }

    if (v31)
    {
    }
  }

  return [*(a1 + 32) _invokeBlock:&__block_literal_global_260 passingTest:&__block_literal_global_263];
}

void __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_3_264(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 280) primaryNetworkSignature];
  pthread_mutex_lock(&gCUSystemMonitorLock);
  objc_storeStrong((*(a1 + 32) + 376), v2);
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  v3 = logger_8205();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "PrimaryNetwork changed: %@", &v4, 0xCu);
  }

  [*(a1 + 32) _invokeBlock:&__block_literal_global_267 passingTest:&__block_literal_global_270];
}

void __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_3_271(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 280) flags];
  memset(v66, 0, 28);
  v3 = *(*(a1 + 32) + 280);
  if (v3 && (objc_msgSend_primaryIPv4Addr(v3), v4 = *(*(a1 + 32) + 280), memset(v65, 0, 28), v4))
  {
    objc_msgSend_primaryIPv6Addr(v4);
    v5 = *(*(a1 + 32) + 280);
  }

  else
  {
    v5 = 0;
    memset(v65, 0, 28);
  }

  v6 = [v5 primaryNetworkSignature];
  v7 = [*(*(a1 + 32) + 280) primaryIPv4Signature];
  v8 = [*(*(a1 + 32) + 280) primaryIPv6Signature];
  v64 = [*(*(a1 + 32) + 280) primaryIPIsCellular];
  pthread_mutex_lock(&gCUSystemMonitorLock);
  v9 = *(a1 + 32);
  v63 = *(v9 + 288);
  v10 = SockAddrCompareAddrEx(v66, v9 + 292, 1);
  v11 = (SockAddrCompareAddrEx(v65, *(a1 + 32) + 320, 1) | v10) != 0;
  v12 = *(*(a1 + 32) + 352);
  v13 = v7;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_12;
  }

  if ((v13 != 0) == (v14 == 0))
  {

    goto LABEL_11;
  }

  v16 = [v13 isEqual:v14];

  if (!v16)
  {
LABEL_11:
    v11 = 1;
  }

LABEL_12:
  v17 = *(*(a1 + 32) + 360);
  v18 = v8;
  v19 = v17;
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_17;
  }

  if ((v18 != 0) != (v19 == 0))
  {
    v21 = [v18 isEqual:v19];

    if (!v21)
    {
      goto LABEL_19;
    }

LABEL_17:
    v62 = v11;
    goto LABEL_20;
  }

LABEL_19:
  v62 = 1;
LABEL_20:
  v22 = *(*(a1 + 32) + 376);
  v23 = v6;
  v24 = v22;
  v25 = v24;
  if (v23 == v24)
  {

    goto LABEL_25;
  }

  if ((v23 != 0) != (v24 == 0))
  {
    v26 = [v23 isEqual:v24];

    if (!v26)
    {
      goto LABEL_27;
    }

LABEL_25:
    v27 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v27 = 1;
LABEL_28:
  v28 = *(a1 + 32);
  v61 = *(v28 + 368) != v64;
  *(v28 + 288) = v2;
  v29 = *(a1 + 32);
  *(v29 + 304) = *(v66 + 12);
  *(v29 + 292) = v66[0];
  v30 = (*(a1 + 32) + 320);
  *v30 = v65[0];
  *(v30 + 12) = *(v65 + 12);
  objc_storeStrong((*(a1 + 32) + 352), v7);
  objc_storeStrong((*(a1 + 32) + 360), v8);
  objc_storeStrong((*(a1 + 32) + 376), v6);
  *(*(a1 + 32) + 368) = v64;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  v31 = logger_8205();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v60 = v2;
    v39 = NSPrintF("%#{flags}", v32, v33, v34, v35, v36, v37, v38, *(*(a1 + 32) + 288));
    v54 = NSPrintF("%##a", v40, v41, v42, v43, v44, v45, v46, v66);
    if (v13)
    {
      v55 = CUPrintNSDataHex(v13, 100, 0);
    }

    else
    {
      v55 = @"nil";
    }

    v59 = v27;
    v56 = NSPrintF("%##a", v47, v48, v49, v50, v51, v52, v53, v65);
    if (v18)
    {
      v57 = CUPrintNSDataHex(v18, 100, 0);
    }

    else
    {
      v57 = @"nil";
    }

    v58 = "no";
    *buf = 138413826;
    v68 = v39;
    v69 = 2112;
    if (v64)
    {
      v58 = "yes";
    }

    v70 = v54;
    v71 = 2112;
    v72 = v55;
    v73 = 2112;
    v74 = v56;
    v75 = 2112;
    v76 = v57;
    v77 = 2112;
    v78 = v23;
    v79 = 2080;
    v80 = v58;
    _os_log_impl(&dword_191EAF000, v31, OS_LOG_TYPE_DEFAULT, "NetInterface initial: flags=%@, IPv4=%@, IPv4Sig=%@, IPv6=%@, IPv6Sig=%@, scSig=%@, cellular=%s", buf, 0x48u);
    if (v18)
    {
    }

    if (v13)
    {
    }

    v27 = v59;
    v2 = v60;
  }

  if (v2 == v63)
  {
    if (((v61 | v62) & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_48:
    [*(a1 + 32) _invokeBlock:&__block_literal_global_280 passingTest:&__block_literal_global_282];
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  [*(a1 + 32) _invokeBlock:&__block_literal_global_274 passingTest:&__block_literal_global_277];
  if ((v61 | v62))
  {
    goto LABEL_48;
  }

LABEL_44:
  if (v27)
  {
LABEL_45:
    [*(a1 + 32) _invokeBlock:&__block_literal_global_284 passingTest:&__block_literal_global_286_8257];
  }

LABEL_46:
}

BOOL __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 primaryNetworkChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_5(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 primaryNetworkChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

BOOL __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 primaryIPChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_3_278(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 primaryIPChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

BOOL __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_2_275(uint64_t a1, void *a2)
{
  v2 = [a2 netFlagsChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_272(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 netFlagsChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

BOOL __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_2_268(uint64_t a1, void *a2)
{
  v2 = [a2 primaryNetworkChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_265(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 primaryNetworkChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

BOOL __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_2_261(uint64_t a1, void *a2)
{
  v2 = [a2 primaryIPChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_258(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 primaryIPChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

BOOL __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 netFlagsChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __47__CUSystemMonitorImp__netInterfaceMonitorStart__block_invoke_250(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 netFlagsChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_motionMonitorOrientationChanged:(id)changed
{
  orientation = [changed orientation];
  motionOrientation = self->_motionOrientation;
  if (orientation == motionOrientation)
  {
    if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {
      if (orientation > 6)
      {
        v15 = "?";
      }

      else
      {
        v15 = off_1E73A3EF0[orientation];
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _motionMonitorOrientationChanged:]", 10, "Motion orientation unchanged: %s", v4, v5, v6, v7, v15);
    }
  }

  else
  {
    pthread_mutex_lock(&gCUSystemMonitorLock);
    self->_motionOrientation = orientation;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      if (motionOrientation > 6)
      {
        v14 = "?";
      }

      else
      {
        v14 = off_1E73A3EF0[motionOrientation];
      }

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _motionMonitorOrientationChanged:]", 30, "Motion orientation: %s -> %s", v10, v11, v12, v13, v14);
    }

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_242 passingTest:&__block_literal_global_244];
  }
}

BOOL __55__CUSystemMonitorImp__motionMonitorOrientationChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 motionHandler];
  v3 = v2 != 0;

  return v3;
}

void __55__CUSystemMonitorImp__motionMonitorOrientationChanged___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 motionHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_motionMonitorHandleActivity:(id)activity
{
  activityCopy = activity;
  stationary = [activityCopy stationary];
  if ([activityCopy walking])
  {
    stationary |= 2u;
  }

  if ([activityCopy running])
  {
    stationary |= 4u;
  }

  if ([activityCopy automotive])
  {
    stationary |= 8u;
  }

  if ([activityCopy cycling])
  {
    v12 = stationary | 0x10;
  }

  else
  {
    v12 = stationary;
  }

  motionFlags = self->_motionFlags;
  if (v12 == motionFlags)
  {
    if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {
      v34 = NSPrintF("%#{flags}", v5, v6, v7, v8, v9, v10, v11, v12);
      [activityCopy confidence];
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _motionMonitorHandleActivity:]", 10, "Motion unchanged: %@, confidence %s", v35, v36, v37, v38, v34);
    }
  }

  else
  {
    pthread_mutex_lock(&gCUSystemMonitorLock);
    self->_motionFlags = v12;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v21 = NSPrintF("%#{flags}", v14, v15, v16, v17, v18, v19, v20, motionFlags);
      v29 = NSPrintF("%#{flags}", v22, v23, v24, v25, v26, v27, v28, v12);
      [activityCopy confidence];
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _motionMonitorHandleActivity:]", 30, "Motion changed: %@ -> %@, confidence %s", v30, v31, v32, v33, v21);
    }

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_236 passingTest:&__block_literal_global_238];
  }
}

BOOL __51__CUSystemMonitorImp__motionMonitorHandleActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 motionHandler];
  v3 = v2 != 0;

  return v3;
}

void __51__CUSystemMonitorImp__motionMonitorHandleActivity___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 motionHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_motionMonitorStop
{
  if (self->_motionActivityManager)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _motionMonitorStop]", 30, "Motion monitor stop", v2, v3, v4, v5, v9);
    }

    [(CMMotionActivityManager *)self->_motionActivityManager stopActivityUpdates];
    motionActivityManager = self->_motionActivityManager;
    self->_motionActivityManager = 0;

    self->_motionFlags = 0;
    [(CMDeviceOrientationManager *)self->_orientationManager stopDeviceOrientationUpdates];
    orientationManager = self->_orientationManager;
    self->_orientationManager = 0;

    self->_motionOrientation = 0;
  }
}

- (void)_motionMonitorStart
{
  p_motionActivityManager = &self->_motionActivityManager;
  v4 = self->_motionActivityManager;
  v9 = v4;
  if (!*p_motionActivityManager)
  {
    if (gLogCategory_CUSystemMonitor <= 30)
    {
      if (gLogCategory_CUSystemMonitor != -1 || (v4 = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu), v4))
      {
        v4 = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _motionMonitorStart]", 30, "Motion monitor start", v5, v6, v7, v8, v16[0]);
      }
    }

    v10 = objc_alloc_init(getCMMotionActivityManagerClass(v4));

    objc_storeStrong(p_motionActivityManager, v10);
    v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v11 setUnderlyingQueue:self->_dispatchQueue];
    motionActivityManager = self->_motionActivityManager;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__CUSystemMonitorImp__motionMonitorStart__block_invoke;
    v19[3] = &unk_1E73A3D60;
    v9 = v10;
    v20 = v9;
    selfCopy = self;
    v13 = [(CMMotionActivityManager *)motionActivityManager startActivityUpdatesToQueue:v11 withHandler:v19];
    v14 = objc_alloc_init(getCMDeviceOrientationManagerClass(v13));
    objc_storeStrong(&self->_orientationManager, v14);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__CUSystemMonitorImp__motionMonitorStart__block_invoke_2;
    v16[3] = &unk_1E73A3D88;
    v17 = v14;
    selfCopy2 = self;
    v15 = v14;
    [v15 startDeviceOrientationUpdatesToQueue:v11 withHandler:v16];
  }
}

void *__41__CUSystemMonitorImp__motionMonitorStart__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[30])
  {
    return [result _motionMonitorHandleActivity:a2];
  }

  return result;
}

void __41__CUSystemMonitorImp__motionMonitorStart__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 272))
  {
    v13 = v19;
    if (v13)
    {
      [*(a1 + 40) _motionMonitorOrientationChanged:v13];
    }

    else if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
    {
      v14 = NSPrintF("%{error}", v6, v7, v8, v9, v10, v11, v12, v5);
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _motionMonitorStart]_block_invoke_2", 90, "### Motion orientation failed: %@", v15, v16, v17, v18, v14);
    }
  }
}

- (void)_meDeviceUpdate:(id)update
{
  updateCopy = update;
  findMyIdentifier = [updateCopy findMyIdentifier];
  idsID = [updateCopy idsID];
  name = [updateCopy name];
  isThisDevice = [updateCopy isThisDevice];

  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceUpdate:]", 30, "MeDevice updated: fml=<%.8@>, ids=<%.8@>, name='%@', isThisDevice=%s", v9, v10, v11, v12, findMyIdentifier);
  }

  pthread_mutex_lock(&gCUSystemMonitorLock);
  meDeviceFMFDeviceID = self->_meDeviceFMFDeviceID;
  self->_meDeviceFMFDeviceID = findMyIdentifier;
  v14 = findMyIdentifier;

  meDeviceIDSDeviceID = self->_meDeviceIDSDeviceID;
  self->_meDeviceIDSDeviceID = idsID;
  v16 = idsID;

  meDeviceName = self->_meDeviceName;
  self->_meDeviceName = name;

  self->_meDeviceIsMe = isThisDevice;
  self->_meDeviceValid = 1;
  pthread_mutex_unlock(&gCUSystemMonitorLock);

  [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_224 passingTest:&__block_literal_global_226];
}

BOOL __38__CUSystemMonitorImp__meDeviceUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 meDeviceChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __38__CUSystemMonitorImp__meDeviceUpdate___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 meDeviceChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_meDeviceRetryTimerUpdate:(BOOL)update
{
  if (update)
  {
    if (GestaltGetDeviceClass_sOnce != -1)
    {
      dispatch_once(&GestaltGetDeviceClass_sOnce, &__block_literal_global_13571);
    }

    v8 = GestaltGetDeviceClass_deviceClass > 7 || ((1 << GestaltGetDeviceClass_deviceClass) & 0x8A) == 0;
    if (!v8 || GestaltGetDeviceClass_deviceClass == 100)
    {
      if (!self->_meDeviceRetryTimer)
      {
        if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceRetryTimerUpdate:]", 30, "MeDevice retry timer start", v3, v4, v5, v6, v17);
        }

        v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
        meDeviceRetryTimer = self->_meDeviceRetryTimer;
        self->_meDeviceRetryTimer = v9;

        v11 = self->_meDeviceRetryTimer;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __48__CUSystemMonitorImp__meDeviceRetryTimerUpdate___block_invoke;
        handler[3] = &unk_1E73A4F68;
        handler[4] = self;
        dispatch_source_set_event_handler(v11, handler);
        v12 = self->_meDeviceRetryTimer;
        v13 = dispatch_time(0, 30000000000);
        dispatch_source_set_timer(v12, v13, 0x6FC23AC00uLL, 0x12A05F200uLL);
        dispatch_activate(self->_meDeviceRetryTimer);
      }

      return;
    }

    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceRetryTimerUpdate:]", 30, "MeDevice retry timer disabled on unsupported device", v3, v4, v5, v6, v17);
    }
  }

  v14 = self->_meDeviceRetryTimer;
  if (!v14)
  {
    return;
  }

  if (gLogCategory_CUSystemMonitor >= 31)
  {
    v15 = v14;
LABEL_27:
    v18 = v15;
    dispatch_source_cancel(v15);
    v16 = self->_meDeviceRetryTimer;
    self->_meDeviceRetryTimer = 0;

    return;
  }

  if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceRetryTimerUpdate:]", 30, "MeDevice retry timer stop", v3, v4, v5, v6, v17);
  }

  v15 = self->_meDeviceRetryTimer;
  if (v15)
  {
    goto LABEL_27;
  }
}

uint64_t __48__CUSystemMonitorImp__meDeviceRetryTimerUpdate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceRetryTimerUpdate:]_block_invoke", 30, "MeDevice retry timer fired", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _meDeviceCheckStart:0];
}

- (void)_meDeviceCheckCompletion:(id)completion error:(id)error firstCheck:(BOOL)check
{
  checkCopy = check;
  errorCopy = error;
  completionCopy = completion;
  deviceId = [completionCopy deviceId];
  idsDeviceId = [completionCopy idsDeviceId];
  deviceName = [completionCopy deviceName];
  isThisDevice = [completionCopy isThisDevice];

  if (errorCopy)
  {
    if (!deviceId || !idsDeviceId || !deviceName)
    {
      if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
      {
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceCheckCompletion:error:firstCheck:]", 90, "### MeDevice check failed: %{error}\n", v13, v14, v15, v16, errorCopy);
      }

      [(CUSystemMonitorImp *)self _meDeviceRetryTimerUpdate:1];
      goto LABEL_49;
    }

    if (gLogCategory_CUSystemMonitor <= 50 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x32u)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceCheckCompletion:error:firstCheck:]", 50, "MeDevice provided device info, but reported an error? : %{error}\n", v13, v14, v15, v16, errorCopy);
    }
  }

  [(CUSystemMonitorImp *)self _meDeviceRetryTimerUpdate:0];
  meDeviceFMFDeviceID = self->_meDeviceFMFDeviceID;
  v18 = deviceId;
  v19 = meDeviceFMFDeviceID;
  v20 = v19;
  v36 = isThisDevice;
  if (v18 == v19)
  {
  }

  else
  {
    if ((v18 != 0) == (v19 == 0))
    {
      v27 = v18;
      goto LABEL_36;
    }

    v21 = [(NSString *)v18 isEqual:v19];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  meDeviceIDSDeviceID = self->_meDeviceIDSDeviceID;
  v27 = idsDeviceId;
  v28 = meDeviceIDSDeviceID;
  v20 = v28;
  if (v27 == v28)
  {
  }

  else
  {
    if ((v27 != 0) == (v28 == 0))
    {
      goto LABEL_36;
    }

    v29 = [(NSString *)v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_37;
    }
  }

  meDeviceName = self->_meDeviceName;
  v31 = deviceName;
  v32 = meDeviceName;
  v20 = v32;
  if (v31 != v32)
  {
    if ((v31 != 0) != (v32 == 0))
    {
      v35 = [(NSString *)v31 isEqual:v32];

      if (!v35)
      {
LABEL_37:
        if (checkCopy)
        {
          v33 = v36;
          if (gLogCategory_CUSystemMonitor > 30 || gLogCategory_CUSystemMonitor == -1 && !_LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
          {
            goto LABEL_48;
          }

          v34 = "MeDevice initial: FMF <%.8@>, IDS <%.8@>, Name '%@', Me %s\n";
        }

        else
        {
          v33 = v36;
          if (gLogCategory_CUSystemMonitor > 30 || gLogCategory_CUSystemMonitor == -1 && !_LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
          {
            goto LABEL_48;
          }

          v34 = "MeDevice changed: FMF <%.8@>, IDS <%.8@>, Name '%@', Me %s\n";
        }

        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceCheckCompletion:error:firstCheck:]", 30, v34, v22, v23, v24, v25, v18);
LABEL_48:
        pthread_mutex_lock(&gCUSystemMonitorLock);
        objc_storeStrong(&self->_meDeviceFMFDeviceID, deviceId);
        objc_storeStrong(&self->_meDeviceIDSDeviceID, idsDeviceId);
        objc_storeStrong(&self->_meDeviceName, deviceName);
        self->_meDeviceIsMe = v33;
        self->_meDeviceValid = 1;
        pthread_mutex_unlock(&gCUSystemMonitorLock);
        [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_215 passingTest:&__block_literal_global_217];
        goto LABEL_49;
      }

      goto LABEL_30;
    }

    v27 = v31;
LABEL_36:

    goto LABEL_37;
  }

LABEL_30:
  if (self->_meDeviceIsMe != v36)
  {
    goto LABEL_37;
  }

  if (checkCopy)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceCheckCompletion:error:firstCheck:]", 30, "MeDevice initial: FMF <%.8@>, IDS <%.8@>, Name '%@', Me %s\n", v22, v23, v24, v25, v18);
    }
  }

  else if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceCheckCompletion:error:firstCheck:]", 10, "MeDevice unchanged: FMF <%.8@>, IDS <%.8@>, Name '%@', Me %s\n", v22, v23, v24, v25, v18);
  }

LABEL_49:
}

BOOL __64__CUSystemMonitorImp__meDeviceCheckCompletion_error_firstCheck___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 meDeviceChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __64__CUSystemMonitorImp__meDeviceCheckCompletion_error_firstCheck___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 meDeviceChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_meDeviceCheckStart:(BOOL)start
{
  if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceCheckStart:]", 10, "MeDevice check\n", v3, v4, v5, v6, v13);
  }

  v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v10 = [v9 setUnderlyingQueue:self->_dispatchQueue];
  v11 = [objc_alloc(getFMFSessionClass(v10)) initWithDelegate:self delegateQueue:v9];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__CUSystemMonitorImp__meDeviceCheckStart___block_invoke;
  v14[3] = &unk_1E73A3D38;
  startCopy = start;
  v14[4] = self;
  v15 = v11;
  v12 = v11;
  [v12 getActiveLocationSharingDevice:v14];
}

uint64_t __42__CUSystemMonitorImp__meDeviceCheckStart___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _meDeviceCheckCompletion:a2 error:a3 firstCheck:*(a1 + 48)];
  v4 = *(a1 + 40);

  return [v4 setDelegate:0];
}

- (void)_meDeviceMonitorStopFMF
{
  meDeviceChangedToken = self->_meDeviceChangedToken;
  if (meDeviceChangedToken != -1)
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceMonitorStopFMF]", 30, "MeDevice monitoring stop\n", v2, v3, v4, v5, v13);
    }

    meDeviceChangedToken = self->_meDeviceChangedToken;
    if (meDeviceChangedToken != -1)
    {
LABEL_7:
      notify_cancel(meDeviceChangedToken);
      self->_meDeviceChangedToken = -1;
    }
  }

  fmfDevicesChangedToken = self->_fmfDevicesChangedToken;
  if (fmfDevicesChangedToken != -1)
  {
    notify_cancel(fmfDevicesChangedToken);
    self->_fmfDevicesChangedToken = -1;
  }

  meDeviceRetryTimer = self->_meDeviceRetryTimer;
  if (meDeviceRetryTimer)
  {
    v10 = meDeviceRetryTimer;
    dispatch_source_cancel(v10);
    v11 = self->_meDeviceRetryTimer;
    self->_meDeviceRetryTimer = 0;
  }

  meDeviceRetryToken = self->_meDeviceRetryToken;
  if (meDeviceRetryToken != -1)
  {
    notify_cancel(meDeviceRetryToken);
    self->_meDeviceRetryToken = -1;
  }
}

- (void)_meDeviceMonitorStop
{
  if (self->_meDeviceFindMyLocateMonitor)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceMonitorStop]", 30, "MeDevice monitoring stop (FML)", v2, v3, v4, v5, v11);
    }

    [(CUFindMyLocateMeDeviceMonitor *)self->_meDeviceFindMyLocateMonitor invalidate];
    meDeviceFindMyLocateMonitor = self->_meDeviceFindMyLocateMonitor;
    self->_meDeviceFindMyLocateMonitor = 0;
  }

  meDeviceFMFDeviceID = self->_meDeviceFMFDeviceID;
  self->_meDeviceFMFDeviceID = 0;

  meDeviceIDSDeviceID = self->_meDeviceIDSDeviceID;
  self->_meDeviceIDSDeviceID = 0;

  meDeviceName = self->_meDeviceName;
  self->_meDeviceName = 0;

  self->_meDeviceIsMe = 0;
  self->_meDeviceValid = 0;

  [(CUSystemMonitorImp *)self _meDeviceMonitorStopFMF];
}

- (void)_meDeviceMonitorStart
{
  _meDeviceOverride = [(CUSystemMonitorImp *)self _meDeviceOverride];
  if ((_meDeviceOverride & 1) == 0)
  {
    if ((self->_meDeviceUseFindMyLocate || (_meDeviceOverride = -[CUSystemMonitorImp _hasMonitorPassingTest:](self, "_hasMonitorPassingTest:", &__block_literal_global_194), self->_meDeviceUseFindMyLocate = _meDeviceOverride, _meDeviceOverride)) && (_meDeviceOverride = [getCUFindMyLocateMeDeviceMonitorClass(_meDeviceOverride) supported], _meDeviceOverride))
    {
      _meDeviceMonitorStopFMF = [(CUSystemMonitorImp *)self _meDeviceMonitorStopFMF];
      if (!self->_meDeviceFindMyLocateMonitor)
      {
        if (gLogCategory_CUSystemMonitor <= 30)
        {
          if (gLogCategory_CUSystemMonitor != -1 || (_meDeviceMonitorStopFMF = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu), _meDeviceMonitorStopFMF))
          {
            _meDeviceMonitorStopFMF = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceMonitorStart]", 30, "MeDevice monitoring start (FML)", v5, v6, v7, v8, v22[0]);
          }
        }

        v20 = [objc_alloc(getCUFindMyLocateMeDeviceMonitorClass(_meDeviceMonitorStopFMF)) initWithDispatchQueue:self->_dispatchQueue];
        meDeviceFindMyLocateMonitor = self->_meDeviceFindMyLocateMonitor;
        self->_meDeviceFindMyLocateMonitor = v20;

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __43__CUSystemMonitorImp__meDeviceMonitorStart__block_invoke_2;
        v25[3] = &unk_1E73A3D10;
        v25[4] = self;
        [(CUFindMyLocateMeDeviceMonitor *)self->_meDeviceFindMyLocateMonitor setMeDeviceUpdatedHandler:v25];
        [(CUFindMyLocateMeDeviceMonitor *)self->_meDeviceFindMyLocateMonitor activate];
      }
    }

    else
    {
      if (self->_meDeviceChangedToken == -1)
      {
        v9 = getFMFMeDeviceChangedNotification();
        uTF8String = [v9 UTF8String];

        if (!uTF8String)
        {
          return;
        }

        if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceMonitorStart]", 30, "MeDevice monitoring start\n", v11, v12, v13, v14, v22[0]);
        }

        dispatchQueue = self->_dispatchQueue;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __43__CUSystemMonitorImp__meDeviceMonitorStart__block_invoke_3;
        handler[3] = &unk_1E73A4228;
        handler[4] = self;
        notify_register_dispatch(uTF8String, &self->_meDeviceChangedToken, dispatchQueue, handler);
        _meDeviceOverride = [(CUSystemMonitorImp *)self _meDeviceCheckStart:1];
      }

      if (self->_fmfDevicesChangedToken == -1)
      {
        v16 = getFMFDevicesChangedNotification(_meDeviceOverride);
        uTF8String2 = [v16 UTF8String];

        if (!uTF8String2)
        {
          return;
        }

        v18 = self->_dispatchQueue;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __43__CUSystemMonitorImp__meDeviceMonitorStart__block_invoke_4;
        v23[3] = &unk_1E73A4228;
        v23[4] = self;
        notify_register_dispatch(uTF8String2, &self->_fmfDevicesChangedToken, v18, v23);
      }

      if (self->_meDeviceRetryToken == -1)
      {
        v19 = self->_dispatchQueue;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __43__CUSystemMonitorImp__meDeviceMonitorStart__block_invoke_5;
        v22[3] = &unk_1E73A4228;
        v22[4] = self;
        notify_register_dispatch("com.apple.siri.personal.requests.companion.update", &self->_meDeviceRetryToken, v19, v22);
      }
    }
  }
}

uint64_t __43__CUSystemMonitorImp__meDeviceMonitorStart__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceMonitorStart]_block_invoke_3", 30, "MeDevice me device changed\n", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _meDeviceCheckStart:0];
}

uint64_t __43__CUSystemMonitorImp__meDeviceMonitorStart__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceMonitorStart]_block_invoke_4", 30, "MeDevice device list changed\n", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _meDeviceCheckStart:0];
}

uint64_t __43__CUSystemMonitorImp__meDeviceMonitorStart__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceMonitorStart]_block_invoke_5", 30, "MeDevice device retry notification\n", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _meDeviceCheckStart:0];
}

- (void)_manatreeUpdateRetryTimer:(BOOL)timer
{
  timerCopy = timer;
  manateeRetryTimer = self->_manateeRetryTimer;
  if (manateeRetryTimer)
  {
    if (gLogCategory_CUSystemMonitor >= 31)
    {
      v11 = manateeRetryTimer;
LABEL_8:
      dispatch_source_cancel(v11);
      v12 = self->_manateeRetryTimer;
      self->_manateeRetryTimer = 0;

      goto LABEL_9;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _manatreeUpdateRetryTimer:]", 30, "Manatee retry timer cancel", v4, v5, v6, v7, v23);
    }

    v11 = self->_manateeRetryTimer;
    if (v11)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if (timerCopy)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v13 = NSPrintF("%{dur}", a2, timer, v3, v4, v5, v6, v7, 300);
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _manatreeUpdateRetryTimer:]", 30, "Manatee retry timer start: %@", v14, v15, v16, v17, v13);
    }

    v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    v19 = self->_manateeRetryTimer;
    self->_manateeRetryTimer = v18;

    v20 = self->_manateeRetryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__CUSystemMonitorImp__manatreeUpdateRetryTimer___block_invoke;
    handler[3] = &unk_1E73A4F68;
    handler[4] = self;
    dispatch_source_set_event_handler(v20, handler);
    v21 = self->_manateeRetryTimer;
    v22 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0xDF8475800uLL);
    dispatch_activate(self->_manateeRetryTimer);
  }
}

void *__48__CUSystemMonitorImp__manatreeUpdateRetryTimer___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _manatreeUpdateRetryTimer:]_block_invoke", 30, "Manatee retry timer fired", a5, a6, a7, a8, v14);
  }

  result = *(a1 + 32);
  v10 = result[19];
  if (v10)
  {
    v11 = v10;
    dispatch_source_cancel(v11);
    v12 = *(a1 + 32);
    v13 = *(v12 + 152);
    *(v12 + 152) = 0;

    result = *(a1 + 32);
  }

  if (*(result + 148) == 1)
  {

    return [result _manateeRead];
  }

  return result;
}

BOOL __34__CUSystemMonitorImp__manateeRead__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 manateeChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __34__CUSystemMonitorImp__manateeRead__block_invoke_5(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 manateeChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

uint64_t __34__CUSystemMonitorImp__manateeRead__block_invoke()
{
  v0 = dispatch_queue_create("CUSystemMonitor-CDP", 0);
  v1 = _manateeRead_cdpQueue;
  _manateeRead_cdpQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)_meDeviceOverride
{
  meDeviceOverride = self->_meDeviceOverride;
  if (meDeviceOverride)
  {
    return meDeviceOverride == 1;
  }

  v9 = CFPreferencesCopyValue(@"meDeviceIDSDeviceID", *MEMORY[0x1E695E890], @"mobile", *MEMORY[0x1E695E898]);
  v3 = v9 != 0;
  if (v9)
  {
    self->_meDeviceOverride = 1;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _meDeviceOverride]", 30, "MeDevice override: IDS %@", v5, v6, v7, v8, v9);
    }

    pthread_mutex_lock(&gCUSystemMonitorLock);
    meDeviceFMFDeviceID = self->_meDeviceFMFDeviceID;
    self->_meDeviceFMFDeviceID = @"FakeFMF";

    objc_storeStrong(&self->_meDeviceIDSDeviceID, v9);
    meDeviceName = self->_meDeviceName;
    self->_meDeviceName = @"This Device";

    self->_meDeviceIsMe = 1;
    self->_meDeviceValid = 1;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
  }

  else
  {
    self->_meDeviceOverride = 2;
  }

  return v3;
}

- (void)_manateeMonitorStop
{
  if (self->_manateeObserving)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _manateeMonitorStop]", 30, "Manatee monitoring stop\n", v2, v3, v4, v5, v11);
    }

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:getCDPManateeAvailabilityNotification()];
    [defaultCenter removeObserver:self name:v8 object:0];
    self->_manateeObserving = 0;
  }

  manateeRetryTimer = self->_manateeRetryTimer;
  if (manateeRetryTimer)
  {
    v12 = manateeRetryTimer;
    dispatch_source_cancel(v12);
    v10 = self->_manateeRetryTimer;
    self->_manateeRetryTimer = 0;
  }
}

- (void)_manateeMonitorStart
{
  if (!self->_manateeObserving)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _manateeMonitorStart]", 30, "Manatee monitoring start\n", v2, v3, v4, v5, v9);
    }

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:getCDPManateeAvailabilityNotification()];
    [defaultCenter addObserver:self selector:sel__manateeChanged_ name:v8 object:0];
    self->_manateeObserving = 1;
    [(CUSystemMonitorImp *)self _manateeRead];
  }
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  visitCopy = visit;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  locationManager = self->_locationManager;

  if (locationManager == managerCopy)
  {
    _placeInference = [visitCopy _placeInference];
    userType = [_placeInference userType];
    if (gLogCategory_CUSystemMonitor <= 30)
    {
      v11 = userType;
      if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
      {
        if (v11 > 4)
        {
          v12 = "?";
        }

        else
        {
          v12 = off_1E73A3E98[v11];
        }

        [_placeInference confidence];
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp locationManager:didVisit:]", 30, "Location visited: %s, confidence %f", v13, v14, v15, v16, v12);
      }
    }

    [(CUSystemMonitorImp *)self _locationVisitUpdate:visitCopy arrived:1];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  locationManager = self->_locationManager;

  if (locationManager == managerCopy && gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp locationManager:didFailWithError:]", 30, "Location visit failed: %{error}", v9, v10, v11, v12, errorCopy);
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    v5 = [locationsCopy count];
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp locationManager:didUpdateLocations:]", 30, "Location updated locations: %d", v6, v7, v8, v9, v5);
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = authorizationCopy;
  if (self->_locationManager == authorizationCopy && gLogCategory_CUSystemMonitor <= 30)
  {
    if (gLogCategory_CUSystemMonitor != -1 || (v4 = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu), v5 = authorizationCopy, v4))
    {
      authorizationStatus = [(CLLocationManager *)v5 authorizationStatus];
      v4 = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp locationManagerDidChangeAuthorization:]", 30, "Location authorization changed: %d", v7, v8, v9, v10, authorizationStatus);
      v5 = authorizationCopy;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)locationManager:(id)manager didDepart:(id)depart completion:(id)completion
{
  departCopy = depart;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  locationManager = self->_locationManager;

  if (locationManager == managerCopy)
  {
    _placeInference = [departCopy _placeInference];
    userType = [_placeInference userType];
    if (gLogCategory_CUSystemMonitor <= 30)
    {
      v14 = userType;
      if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
      {
        if (v14 > 4)
        {
          v15 = "?";
        }

        else
        {
          v15 = off_1E73A3E98[v14];
        }

        [_placeInference confidence];
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp locationManager:didDepart:completion:]", 30, "Location visit departed: %s, confidence %f", v16, v17, v18, v19, v15);
      }
    }

    [(CUSystemMonitorImp *)self _locationVisitUpdate:departCopy arrived:0];
    completionCopy[2](completionCopy);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)locationManager:(id)manager didArrive:(id)arrive completion:(id)completion
{
  arriveCopy = arrive;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  managerCopy = manager;
  dispatch_assert_queue_V2(dispatchQueue);
  locationManager = self->_locationManager;

  if (locationManager == managerCopy)
  {
    _placeInference = [arriveCopy _placeInference];
    userType = [_placeInference userType];
    if (gLogCategory_CUSystemMonitor <= 30)
    {
      v14 = userType;
      if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
      {
        if (v14 > 4)
        {
          v15 = "?";
        }

        else
        {
          v15 = off_1E73A3E98[v14];
        }

        [_placeInference confidence];
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp locationManager:didArrive:completion:]", 30, "Location visit arrived: %s, confidence %f", v16, v17, v18, v19, v15);
      }
    }

    [(CUSystemMonitorImp *)self _locationVisitUpdate:arriveCopy arrived:1];
    completionCopy[2](completionCopy);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_locationVisitUpdate:(id)update arrived:(BOOL)arrived
{
  arrivedCopy = arrived;
  _placeInference = [update _placeInference];
  userType = [_placeInference userType];
  if ((userType - 1) > 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_191FF9620[userType - 1];
  }

  locationVisitsFlags = self->_locationVisitsFlags;
  v13 = locationVisitsFlags | v11;
  v14 = locationVisitsFlags & ~v11;
  if (arrivedCopy)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == locationVisitsFlags)
  {
    if (gLogCategory_CUSystemMonitor <= 10 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _locationVisitUpdate:arrived:]", 10, "Location visit unchanged: %#{flags}", v7, v8, v9, v10, locationVisitsFlags);
    }
  }

  else
  {
    pthread_mutex_lock(&gCUSystemMonitorLock);
    self->_locationVisitsFlags = v15;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _locationVisitUpdate:arrived:]", 30, "Location visit changed: %#{flags} -> %#{flags}\n", v16, v17, v18, v19, locationVisitsFlags);
    }

    [(CUSystemMonitorImp *)self _invokeBlock:&__block_literal_global_153 passingTest:&__block_literal_global_155_8320];
  }
}

BOOL __51__CUSystemMonitorImp__locationVisitUpdate_arrived___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 locationVisitsChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __51__CUSystemMonitorImp__locationVisitUpdate_arrived___block_invoke(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 locationVisitsChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_locationVisitsMonitorStop
{
  v3 = self->_locationManager;
  if (v3)
  {
    v10 = v3;
    locationManager = self->_locationManager;
    self->_locationManager = 0;

    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _locationVisitsMonitorStop]", 30, "Location visit monitoring stop", v5, v6, v7, v8, v9);
    }

    [(CLLocationManager *)v10 stopMonitoringVisits];
    pthread_mutex_lock(&gCUSystemMonitorLock);
    self->_locationVisitsFlags = 0;
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    v3 = v10;
  }
}

- (void)_locationVisitsMonitorStart
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self->_locationManager;
  if (!v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = self->_monitors;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          locationVisitsBundle = [*(*(&v23 + 1) + 8 * i) locationVisitsBundle];
          if (locationVisitsBundle)
          {
            v14 = locationVisitsBundle;

            if (gLogCategory_CUSystemMonitor <= 30)
            {
              if (gLogCategory_CUSystemMonitor != -1 || (v15 = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu), v15))
              {
                getkCLLocationAccuracyHundredMeters();
                v15 = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _locationVisitsMonitorStart]", 30, "Location visit monitoring start: %f", v16, v17, v18, v19, v20);
              }
            }

            v3 = [objc_alloc(getCLLocationManagerClass(v15)) initWithEffectiveBundle:v14 delegate:self onQueue:self->_dispatchQueue];
            locationManager = self->_locationManager;
            self->_locationManager = v3;

            getkCLLocationAccuracyHundredMeters();
            [(CLLocationManager *)v3 setDesiredAccuracy:?];
            [(CLLocationManager *)v3 startMonitoringVisits];

            goto LABEL_20;
          }
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _locationVisitsMonitorStart]", 90, "### Location visit no bundle", v10, v11, v12, v13, v22);
    }

    v3 = 0;
  }

LABEL_20:
}

- (void)_familyUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CUSystemMonitorImp__familyUpdated___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__37__CUSystemMonitorImp__familyUpdated___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result[4] + 104) == 1)
  {
    v10 = result;
    if (result[5] && gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyUpdated:]_block_invoke", 30, "Family updated\n", a5, a6, a7, a8, v8);
    }

    v11 = v10[4];

    return [v11 _familyGetMembers:{0, a4, a5, a6, a7, a8}];
  }

  return result;
}

- (void)_familyNetworkChanged
{
  familyPrimaryIPMonitor = self->_familyPrimaryIPMonitor;
  if (familyPrimaryIPMonitor && self->_familyFailed)
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0;
    objc_msgSend_primaryIPv4Addr(familyPrimaryIPMonitor, a2);
    v4 = self->_familyPrimaryIPMonitor;
    if (v4)
    {
      objc_msgSend_primaryIPv6Addr(v4);
    }

    if (BYTE1(v10[0]) == 2)
    {
      _primaryAppleIDAccount = [(CUSystemMonitorImp *)self _primaryAppleIDAccount];

      if (_primaryAppleIDAccount)
      {
        if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyNetworkChanged]", 30, "Family retry on network change: IPv4 %##a, IPv6 %##a\n", v6, v7, v8, v9, v10);
        }

        [(CUSystemMonitorImp *)self _familyGetMembers:0];
      }
    }
  }
}

- (void)_familyGetMembers:(BOOL)members
{
  membersCopy = members;
  selfCopy = self;
  if (SetupAssistantLibrary_sOnce != -1)
  {
    dispatch_once(&SetupAssistantLibrary_sOnce, &__block_literal_global_1216);
  }

  if (SetupAssistantLibrary_sLib && (self = dlsym(SetupAssistantLibrary_sLib, "BYSetupAssistantNeedsToRun")) != 0 && (self = softLinkBYSetupAssistantNeedsToRun(), self))
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {

      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyGetMembers:]", 30, "Family get members skipped when setup needs to run\n", v3, v4, v5, v6, v14);
    }
  }

  else
  {
    if (gLogCategory_CUSystemMonitor <= 30)
    {
      if (gLogCategory_CUSystemMonitor != -1 || (self = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu), self))
      {
        v9 = "";
        if (membersCopy)
        {
          v9 = "(first)";
        }

        self = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyGetMembers:]", 30, "Family get members %s\n", v3, v4, v5, v6, v9);
      }
    }

    selfCopy->_familyFailed = 0;
    v10 = objc_alloc_init(getFAFetchFamilyCircleRequestClass(self));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__CUSystemMonitorImp__familyGetMembers___block_invoke;
    v11[3] = &unk_1E73A3CC0;
    v11[4] = selfCopy;
    v12 = membersCopy;
    [v10 startRequestWithCompletionHandler:v11];
  }
}

void __40__CUSystemMonitorImp__familyGetMembers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__CUSystemMonitorImp__familyGetMembers___block_invoke_2;
  v11[3] = &unk_1E73A4090;
  v11[4] = v7;
  v12 = v6;
  v13 = v5;
  v14 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __40__CUSystemMonitorImp__familyGetMembers___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (*(v8 + 120) == -1)
  {
    return;
  }

  *(v8 + 92) = *(a1 + 40) != 0;
  v10 = *(a1 + 40);
  if (!v10)
  {
    v11 = [*(a1 + 48) members];
    v12 = [v11 copy];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          getFAFamilyMemberClass();
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (gLogCategory_CUSystemMonitor <= 90 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au)))
            {
              LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyGetMembers:]_block_invoke_2", 90, "### Family bad member type: %@\n", v19, v20, v21, v22, v18);
            }

            goto LABEL_33;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if (*(a1 + 56) == 1)
    {
      if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
      {
        v23 = "Family initial: %d family member(s)\n";
LABEL_26:
        v24 = [v13 count];
        LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyGetMembers:]_block_invoke_2", 30, v23, v25, v26, v27, v28, v24);
      }
    }

    else if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      v23 = "Family updated: %d family member(s)\n";
      goto LABEL_26;
    }

    pthread_mutex_lock(&gCUSystemMonitorLock);
    objc_storeStrong((*(a1 + 32) + 96), v12);
    pthread_mutex_unlock(&gCUSystemMonitorLock);
    [*(a1 + 32) _invokeBlock:&__block_literal_global_141_8337 passingTest:&__block_literal_global_143];
LABEL_33:

    return;
  }

  if (gLogCategory_CUSystemMonitor > 90)
  {
    return;
  }

  if (gLogCategory_CUSystemMonitor != -1)
  {
    goto LABEL_5;
  }

  if (_LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x5Au))
  {
    v10 = *(a1 + 40);
LABEL_5:
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyGetMembers:]_block_invoke_2", 90, "### Family get members failed: %{error}\n", a5, a6, a7, a8, v10);
  }
}

BOOL __40__CUSystemMonitorImp__familyGetMembers___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 familyUpdatedHandler];
  v3 = v2 != 0;

  return v3;
}

void __40__CUSystemMonitorImp__familyGetMembers___block_invoke_3(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 familyUpdatedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_familyMonitorStop
{
  self->_familyFailed = 0;
  [(CUSystemMonitor *)self->_familyPrimaryIPMonitor invalidate];
  familyPrimaryIPMonitor = self->_familyPrimaryIPMonitor;
  self->_familyPrimaryIPMonitor = 0;

  familyBuddyToken = self->_familyBuddyToken;
  if (familyBuddyToken != -1)
  {
    notify_cancel(familyBuddyToken);
    self->_familyBuddyToken = -1;
  }

  familyUpdatedToken = self->_familyUpdatedToken;
  if (familyUpdatedToken != -1)
  {
    if (gLogCategory_CUSystemMonitor > 30)
    {
      goto LABEL_9;
    }

    if (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyMonitorStop]", 30, "Family monitoring stop\n", v4, v5, v6, v7, v10);
    }

    familyUpdatedToken = self->_familyUpdatedToken;
    if (familyUpdatedToken != -1)
    {
LABEL_9:
      notify_cancel(familyUpdatedToken);
      self->_familyUpdatedToken = -1;
    }
  }
}

- (void)_familyMonitorStart
{
  selfCopy = self;
  if (!self->_familyPrimaryIPMonitor)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyMonitorStart]", 30, "Family monitoring start\n", v2, v3, v4, v5, v13[0]);
    }

    v7 = objc_alloc_init(CUSystemMonitor);
    familyPrimaryIPMonitor = selfCopy->_familyPrimaryIPMonitor;
    selfCopy->_familyPrimaryIPMonitor = v7;

    [(CUSystemMonitor *)selfCopy->_familyPrimaryIPMonitor setDispatchQueue:selfCopy->_dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__CUSystemMonitorImp__familyMonitorStart__block_invoke;
    v16[3] = &unk_1E73A4F68;
    v16[4] = selfCopy;
    [(CUSystemMonitor *)selfCopy->_familyPrimaryIPMonitor setPrimaryIPChangedHandler:v16];
    v9 = selfCopy->_familyPrimaryIPMonitor;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__CUSystemMonitorImp__familyMonitorStart__block_invoke_2;
    v15[3] = &unk_1E73A4F68;
    v15[4] = selfCopy;
    self = [(CUSystemMonitor *)v9 activateWithCompletion:v15];
  }

  if (selfCopy->_familyBuddyToken == -1)
  {
    v10 = [getBYSetupAssistantFinishedDarwinNotification(self a2)];
    if (v10)
    {
      dispatchQueue = selfCopy->_dispatchQueue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __41__CUSystemMonitorImp__familyMonitorStart__block_invoke_3;
      handler[3] = &unk_1E73A4228;
      handler[4] = selfCopy;
      notify_register_dispatch(v10, &selfCopy->_familyBuddyToken, dispatchQueue, handler);
    }
  }

  if (selfCopy->_familyUpdatedToken == -1)
  {
    v12 = selfCopy->_dispatchQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__CUSystemMonitorImp__familyMonitorStart__block_invoke_4;
    v13[3] = &unk_1E73A4228;
    v13[4] = selfCopy;
    notify_register_dispatch("com.apple.family.family_updated", &selfCopy->_familyUpdatedToken, v12, v13);
    [(CUSystemMonitorImp *)selfCopy _familyGetMembers:1];
  }
}

void *__41__CUSystemMonitorImp__familyMonitorStart__block_invoke_3(uint64_t a1, int token)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    state64 = 0;
    notify_get_state(token, &state64);
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyMonitorStart]_block_invoke_3", 30, "Family setup state changed: %llu\n", v4, v5, v6, v7, state64);
  }

  result = *(a1 + 32);
  if (!result[12])
  {
    return [result _familyGetMembers:0];
  }

  return result;
}

uint64_t __41__CUSystemMonitorImp__familyMonitorStart__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _familyMonitorStart]_block_invoke_4", 30, "Family updated\n", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _familyGetMembers:0];
}

- (void)_callCenterStatusChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CUSystemMonitorImp__callCenterStatusChanged___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__47__CUSystemMonitorImp__callCenterStatusChanged___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result[4] + 80) == 1)
  {
    v10 = result;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callCenterStatusChanged:]_block_invoke", 30, "TUCallCenter changed\n", a5, a6, a7, a8, v8);
    }

    v11 = v10[4];

    return [v11 _callInfoChanged];
  }

  return result;
}

- (void)_callMonitorStop
{
  if (self->_callCenter && gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callMonitorStop]", 30, "Call monitoring stop\n", v2, v3, v4, v5, v16);
  }

  callCenter = self->_callCenter;
  self->_callCenter = 0;

  if (self->_callStatusObserving)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = getTUCallCenterCallStatusChangedNotification();

    if (v8)
    {
      v9 = getTUCallCenterCallStatusChangedNotification();
      [defaultCenter removeObserver:self name:v9 object:0];
    }

    v10 = getTUCallCenterCallConnectedNotification();

    if (v10)
    {
      v12 = getTUCallCenterCallConnectedNotification();
      [defaultCenter removeObserver:self name:v12 object:0];
    }

    v13 = getTUCallCenterVideoCallStatusChangedNotification(v11);

    v14 = defaultCenter;
    if (v13)
    {
      v15 = (getTUCallCenterVideoCallStatusChangedNotification)();
      [defaultCenter removeObserver:self name:v15 object:0];

      v14 = defaultCenter;
    }

    self->_callStatusObserving = 0;
  }
}

- (void)_callMonitorStart
{
  if (self->_callCenter)
  {
    return;
  }

  selfCopy = self;
  if (gLogCategory_CUSystemMonitor <= 30)
  {
    if (gLogCategory_CUSystemMonitor != -1 || (self = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu), self))
    {
      self = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callMonitorStart]", 30, "Call monitoring start\n", v2, v3, v4, v5, v28);
    }
  }

  v7 = [getTUCallCenterClass(self) callCenterWithQueue:selfCopy->_dispatchQueue];
  callCenter = selfCopy->_callCenter;
  selfCopy->_callCenter = v7;

  v9 = getTUCallCenterCallStatusChangedNotification();
  if (v9)
  {
    defaultCenter = v9;
    v11 = getTUCallCenterCallConnectedNotification();
    if (!v11)
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = v11;
    v13 = getTUCallCenterVideoCallStatusChangedNotification(v11);

    if (v13)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = getTUCallCenterCallStatusChangedNotification();
      [defaultCenter addObserver:selfCopy selector:sel__callCenterStatusChanged_ name:v14 object:0];

      v15 = getTUCallCenterCallConnectedNotification();
      [defaultCenter addObserver:selfCopy selector:sel__callCenterStatusChanged_ name:v15 object:0];

      v17 = getTUCallCenterVideoCallStatusChangedNotification(v16);
      [defaultCenter addObserver:selfCopy selector:sel__callCenterStatusChanged_ name:v17 object:0];

      selfCopy->_callStatusObserving = 1;
      goto LABEL_10;
    }
  }

LABEL_11:
  _activeCallCountUnached = [(CUSystemMonitorImp *)selfCopy _activeCallCountUnached];
  _connectedCallCountUnached = [(CUSystemMonitorImp *)selfCopy _connectedCallCountUnached];
  _callFlagsUncached = [(CUSystemMonitorImp *)selfCopy _callFlagsUncached];
  _callInfoUncached = [(CUSystemMonitorImp *)selfCopy _callInfoUncached];
  v23 = v22;
  pthread_mutex_lock(&gCUSystemMonitorLock);
  selfCopy->_connectedCallCount = _connectedCallCountUnached;
  selfCopy->_activeCallCount = _activeCallCountUnached;
  selfCopy->_callFlags = _callFlagsUncached;
  *&selfCopy->_callInfo.callCountIncomingConnected = _callInfoUncached;
  *&selfCopy->_callInfo.callCountOutgoingConnected = v23;
  pthread_mutex_unlock(&gCUSystemMonitorLock);
  if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _callMonitorStart]", 30, "Calls initial: active %d, connected %d, call flags %#{flags}\n", v24, v25, v26, v27, _activeCallCountUnached);
  }
}

- (void)_bluetoothAddressMonitorStop
{
  if (self->_bluetoothClient)
  {
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _bluetoothAddressMonitorStop]", 30, "Bluetooth address monitor stop\n", v2, v3, v4, v5, v8);
    }

    [(CUBluetoothClient *)self->_bluetoothClient invalidate];
    bluetoothClient = self->_bluetoothClient;
    self->_bluetoothClient = 0;
  }
}

- (void)_bluetoothAddressMonitorStart
{
  if (!self->_bluetoothClient)
  {
    v12[7] = v6;
    v12[8] = v7;
    if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _bluetoothAddressMonitorStart]", 30, "Bluetooth address monitor start\n", v2, v3, v4, v5, v11);
    }

    v9 = objc_alloc_init(CUBluetoothClient);
    bluetoothClient = self->_bluetoothClient;
    self->_bluetoothClient = v9;

    [(CUBluetoothClient *)self->_bluetoothClient setDispatchQueue:self->_dispatchQueue];
    [(CUBluetoothClient *)self->_bluetoothClient setLabel:@"SysMon"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__CUSystemMonitorImp__bluetoothAddressMonitorStart__block_invoke;
    v12[3] = &unk_1E73A3C98;
    v12[4] = self;
    [(CUBluetoothClient *)self->_bluetoothClient setBluetoothAddressChangedHandler:v12];
    [(CUBluetoothClient *)self->_bluetoothClient activate];
  }
}

uint64_t __51__CUSystemMonitorImp__bluetoothAddressMonitorStart__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*(*(a1 + 32) + 40))
  {
    v23 = v4;
    v4 = [v4 length];
    v5 = v23;
    if (v4 == 6)
    {
      pthread_mutex_lock(&gCUSystemMonitorLock);
      v6 = *(*(a1 + 32) + 32);
      v7 = v23;
      v8 = v6;
      v9 = v8;
      if (v8 == v7)
      {
      }

      else
      {
        if ((v7 != 0) == (v8 == 0))
        {

          goto LABEL_12;
        }

        v10 = [v7 isEqual:v8];

        if (!v10)
        {
LABEL_12:
          v16 = *(*(a1 + 32) + 32);
          objc_storeStrong((*(a1 + 32) + 32), a2);
          pthread_mutex_unlock(&gCUSystemMonitorLock);
          if (gLogCategory_CUSystemMonitor <= 30 && (gLogCategory_CUSystemMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0x1Eu)))
          {
            v17 = [v16 bytes];
            [v7 bytes];
            LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _bluetoothAddressMonitorStart]_block_invoke", 30, "Bluetooth address changed: %.6a -> %.6a\n", v18, v19, v20, v21, v17);
          }

          memcpy((*(a1 + 32) + 24), [v7 bytes], objc_msgSend(v7, "length"));
          [*(a1 + 32) _invokeBlock:&__block_literal_global_99 passingTest:&__block_literal_global_101];

          goto LABEL_19;
        }
      }

      v4 = pthread_mutex_unlock(&gCUSystemMonitorLock);
      v5 = v23;
      if (gLogCategory_CUSystemMonitor <= 10)
      {
        if (gLogCategory_CUSystemMonitor != -1 || (v4 = _LogCategory_Initialize(&gLogCategory_CUSystemMonitor, 0xAu), v5 = v23, v4))
        {
          v11 = [v7 bytes];
          v4 = LogPrintF(&gLogCategory_CUSystemMonitor, "[CUSystemMonitorImp _bluetoothAddressMonitorStart]_block_invoke", 10, "Bluetooth address unchanged: %.6a\n", v12, v13, v14, v15, v11);
LABEL_19:
          v5 = v23;
        }
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

BOOL __51__CUSystemMonitorImp__bluetoothAddressMonitorStart__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 bluetoothAddressChangedHandler];
  v3 = v2 != 0;

  return v3;
}

void __51__CUSystemMonitorImp__bluetoothAddressMonitorStart__block_invoke_2(uint64_t a1, _BYTE *a2)
{
  if ((a2[24] & 1) == 0)
  {
    v3 = [a2 bluetoothAddressChangedHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

- (void)_update
{
  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_8367])
  {
    [(CUSystemMonitorImp *)self _bluetoothAddressMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _bluetoothAddressMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_29_8368])
  {
    [(CUSystemMonitorImp *)self _callMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _callMonitorStop];
  }

  v3 = [(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_31];
  v4 = v3;
  if (!v3)
  {
    [(CUSystemMonitorImp *)self _familyMonitorStop];
    goto LABEL_11;
  }

  if (self->_firstUnlocked)
  {
    [(CUSystemMonitorImp *)self _familyMonitorStart];
LABEL_11:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_13:
  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_33_8369])
  {
    [(CUSystemMonitorImp *)self _locationVisitsMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _locationVisitsMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_35])
  {
    [(CUSystemMonitorImp *)self _manateeMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _manateeMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_37])
  {
    [(CUSystemMonitorImp *)self _meDeviceMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _meDeviceMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_39])
  {
    [(CUSystemMonitorImp *)self _motionMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _motionMonitorStop];
  }

  v6 = [(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_41_8370];
  [(CUSystemMonitorImp *)self _systemConfigUpdateKeyPtr:&self->_scPatternNetInterfaceIPv4 name:@"NetIfIPv4" enabled:v6 creator:&__block_literal_global_47_8372];
  [(CUSystemMonitorImp *)self _systemConfigUpdateKeyPtr:&self->_scPatternNetInterfaceIPv6 name:@"NetIfIPv6" enabled:v6 creator:&__block_literal_global_52_8374];
  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_54]|| [(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_56]|| [(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_58_8375])
  {
    [(CUSystemMonitorImp *)self _netInterfaceMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _netInterfaceMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_60])
  {
    [(CUSystemMonitorImp *)self _powerUnlimitedMonitorStart];
    if (v4)
    {
      goto LABEL_34;
    }
  }

  else
  {
    [(CUSystemMonitorImp *)self _powerUnlimitedMonitorStop];
    if (v4)
    {
LABEL_34:
      [(CUSystemMonitorImp *)self _primaryAppleIDMonitorStart];
      goto LABEL_36;
    }
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_62])
  {
    goto LABEL_34;
  }

  [(CUSystemMonitorImp *)self _primaryAppleIDMonitorStop];
LABEL_36:
  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_64])
  {
    [(CUSystemMonitorImp *)self _regionMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _regionMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_66])
  {
    [(CUSystemMonitorImp *)self _rotatingIdentifierMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _rotatingIdentifierMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_68])
  {
    [(CUSystemMonitorImp *)self _screenLockedMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _screenLockedMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_70])
  {
    [(CUSystemMonitorImp *)self _screenOnMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _screenOnMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_72])
  {
    [(CUSystemMonitorImp *)self _screenSaverMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _screenSaverMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_74])
  {
    [(CUSystemMonitorImp *)self _screenStateMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _screenStateMonitorStop];
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_76])
  {
    [(CUSystemMonitorImp *)self _systemLockStateMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _systemLockStateMonitorStop];
  }

  [(CUSystemMonitorImp *)self _systemConfigUpdateKeyPtr:&self->_scKeySystemName name:@"SystemName" enabled:[(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_78] creator:&__block_literal_global_83];
  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_85])
  {
    [(CUSystemMonitorImp *)self _systemUIMonitorStart];
    if (v5)
    {
      goto LABEL_62;
    }
  }

  else
  {
    [(CUSystemMonitorImp *)self _systemUIMonitorStop];
    if (v5)
    {
LABEL_62:
      [(CUSystemMonitorImp *)self _firstUnlockMonitorStart];
      goto LABEL_64;
    }
  }

  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_87])
  {
    goto LABEL_62;
  }

  [(CUSystemMonitorImp *)self _firstUnlockMonitorStop];
LABEL_64:
  if ([(CUSystemMonitorImp *)self _hasMonitorPassingTest:&__block_literal_global_89])
  {
    [(CUSystemMonitorImp *)self _wifiMonitorStart];
  }

  else
  {
    [(CUSystemMonitorImp *)self _wifiMonitorStop];
  }

  if (self->_scChangesPending)
  {

    [(CUSystemMonitorImp *)self _systemConfigUpdateNotifications];
  }
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_27(uint64_t a1, void *a2)
{
  v2 = [a2 wifiStateChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_26(uint64_t a1, void *a2)
{
  v2 = [a2 firstUnlockHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = [a2 systemUIChangedHandler];
  v3 = v2 != 0;

  return v3;
}

__CFString *__29__CUSystemMonitorImp__update__block_invoke_24()
{
  ComputerName = SCDynamicStoreKeyCreateComputerName(0);

  return ComputerName;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_23(uint64_t a1, void *a2)
{
  v2 = [a2 systemNameChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = [a2 systemLockStateChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = [a2 screenStateChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = [a2 screenSaverChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_19(uint64_t a1, void *a2)
{
  v2 = [a2 screenOnChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_18(uint64_t a1, void *a2)
{
  v2 = [a2 screenLockedChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = [a2 rotatingIdentifierChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = [a2 regionChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = [a2 primaryAppleIDChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 powerUnlimitedChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 primaryNetworkChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 primaryIPChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 netFlagsChangedHandler];
  v3 = v2 != 0;

  return v3;
}

__CFString *__29__CUSystemMonitorImp__update__block_invoke_10()
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E69822E0], *MEMORY[0x1E6982340]);

  return NetworkInterfaceEntity;
}

__CFString *__29__CUSystemMonitorImp__update__block_invoke_9()
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E69822E0], *MEMORY[0x1E6982338]);

  return NetworkInterfaceEntity;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 netInterfacesChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 motionHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 meDeviceChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 manateeChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 locationVisitsChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 familyUpdatedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 callChangedHandler];
  v3 = v2 != 0;

  return v3;
}

BOOL __29__CUSystemMonitorImp__update__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bluetoothAddressChangedHandler];
  v3 = v2 != 0;

  return v3;
}

- (void)updateWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CUSystemMonitorImp_updateWithQueue_completion___block_invoke;
  block[3] = &unk_1E73A4BD8;
  v12 = queueCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = queueCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __49__CUSystemMonitorImp_updateWithQueue_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _update];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__CUSystemMonitorImp_updateWithQueue_completion___block_invoke_2;
    block[3] = &unk_1E73A4FD0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (void)_invokeBlock:(id)block passingTest:(id)test
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  testCopy = test;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_monitors;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (v13[9] == 1 && testCopy[2](testCopy, v13))
        {
          dispatchQueue = [v13 dispatchQueue];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __47__CUSystemMonitorImp__invokeBlock_passingTest___block_invoke;
          v15[3] = &unk_1E73A49A0;
          v16 = v13;
          v17 = blockCopy;
          dispatch_async(dispatchQueue, v15);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

uint64_t __47__CUSystemMonitorImp__invokeBlock_passingTest___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 24) & 1) == 0)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (BOOL)_hasMonitorPassingTest:(id)test
{
  v15 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_monitors;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (testCopy[2](testCopy, *(*(&v10 + 1) + 8 * i)))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removeMonitor:(id)monitor
{
  monitorCopy = monitor;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CUSystemMonitorImp_removeMonitor___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = monitorCopy;
  v6 = monitorCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __36__CUSystemMonitorImp_removeMonitor___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _update];
}

- (void)addMonitor:(id)monitor completion:(id)completion
{
  monitorCopy = monitor;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CUSystemMonitorImp_addMonitor_completion___block_invoke;
  block[3] = &unk_1E73A4BD8;
  block[4] = self;
  v12 = monitorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = monitorCopy;
  dispatch_async(dispatchQueue, block);
}

void __44__CUSystemMonitorImp_addMonitor_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  [*(a1 + 32) _update];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__CUSystemMonitorImp_addMonitor_completion___block_invoke_2;
    block[3] = &unk_1E73A4FD0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (CUSystemMonitorImp)init
{
  v10.receiver = self;
  v10.super_class = CUSystemMonitorImp;
  v2 = [(CUSystemMonitorImp *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CUSystemMonitor", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    *(v2 + 22) = -1;
    *(v2 + 30) = -1;
    *(v2 + 212) = -1;
    *(v2 + 58) = -1;
    *(v2 + 96) = -1;
    *(v2 + 101) = -1;
    *(v2 + 116) = -1;
    v2[504] = 1;
    *(v2 + 127) = -1;
    *(v2 + 129) = -1;
    *(v2 + 612) = -1;
    *(v2 + 161) = -1;
    v8 = v2;
  }

  return v2;
}

@end