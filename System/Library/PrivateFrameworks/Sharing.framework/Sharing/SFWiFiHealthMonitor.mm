@interface SFWiFiHealthMonitor
- (SFWiFiHealthMonitor)init;
- (id)description;
- (uint64_t)_update;
- (void)_activate;
- (void)_invalidate;
- (void)_update;
- (void)_wifiAutoJoinNotification:(id)notification;
- (void)_wifiEnsureStarted;
- (void)_wifiEnsureStopped;
- (void)_wifiStatusChangedExternal:(int64_t)external;
- (void)_wifiStatusChangedInternal:(int64_t)internal;
- (void)activate;
- (void)invalidate;
- (void)reset;
@end

@implementation SFWiFiHealthMonitor

- (SFWiFiHealthMonitor)init
{
  v6.receiver = self;
  v6.super_class = SFWiFiHealthMonitor;
  v2 = [(SFWiFiHealthMonitor *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    v4 = *(v2 + 14);
    *(v2 + 14) = v3;

    *(v2 + 12) = -1;
  }

  return v2;
}

- (id)description
{
  v19 = 0;
  NSAppendPrintF(&v19, "SFWiFiHealthMonitor %{ptr}", self);
  v3 = v19;
  v18 = v3;
  wifiStatusInternal = self->_wifiStatusInternal;
  if (wifiStatusInternal > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E78913F8[wifiStatusInternal];
  }

  NSAppendPrintF(&v18, ", iStatus %s", v5);
  v6 = v18;

  v17 = v6;
  wifiStatusExternal = self->_wifiStatusExternal;
  if (wifiStatusExternal > 3)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1E78913F8[wifiStatusExternal];
  }

  NSAppendPrintF(&v17, ", eStatus %s", v8);
  v9 = v17;

  if (self->_wifiStatusGoodTicks)
  {
    v16 = v9;
    mach_absolute_time();
    v10 = UpTicksToSeconds();
    NSAppendPrintF(&v16, ", Good %ll{dur}", v10);
    v11 = v16;

    v9 = v11;
  }

  if (self->_wifiStatusBadTicks)
  {
    v15 = v9;
    mach_absolute_time();
    v12 = UpTicksToSeconds();
    NSAppendPrintF(&v15, ", Bad %ll{dur}", v12);
    v13 = v15;

    v9 = v13;
  }

  return v9;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SFWiFiHealthMonitor_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (gLogCategory_SFWiFiHealthMonitor <= 30)
  {
    if (gLogCategory_SFWiFiHealthMonitor != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFWiFiHealthMonitor *)self _activate];
    }
  }

  v9 = 0;
  CFPrefs_GetDouble();
  v5 = v4;
  wifiStatusDebounceSecs = selfCopy->_wifiStatusDebounceSecs;
  if (v5 != wifiStatusDebounceSecs)
  {
    if (gLogCategory_SFWiFiHealthMonitor <= 40)
    {
      if (gLogCategory_SFWiFiHealthMonitor == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        wifiStatusDebounceSecs = selfCopy->_wifiStatusDebounceSecs;
      }

      LogPrintF(&gLogCategory_SFWiFiHealthMonitor, "[SFWiFiHealthMonitor _activate]", 40, "Debounce seconds: %.3f -> %.3f\n", wifiStatusDebounceSecs, v5);
    }

LABEL_9:
    selfCopy->_wifiStatusDebounceSecs = v5;
  }

  if (selfCopy->_lockdownActivationNotifyToken == -1)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __32__SFWiFiHealthMonitor__activate__block_invoke;
    handler[3] = &unk_1E788CB60;
    handler[4] = selfCopy;
    notify_register_dispatch("com.apple.mobile.lockdown.activation_state", &selfCopy->_lockdownActivationNotifyToken, dispatchQueue, handler);
  }

  [(SFWiFiHealthMonitor *)selfCopy _update];
}

void *__32__SFWiFiHealthMonitor__activate__block_invoke(void *result)
{
  v1 = *(result + 4);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 12) = -1;
    return [*(result + 4) _update];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFWiFiHealthMonitor_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (!self->_invalidateCalled && gLogCategory_SFWiFiHealthMonitor <= 30)
  {
    if (gLogCategory_SFWiFiHealthMonitor != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFWiFiHealthMonitor *)self _invalidate];
    }
  }

  selfCopy->_invalidateCalled = 1;
  lockdownActivationNotifyToken = selfCopy->_lockdownActivationNotifyToken;
  if (lockdownActivationNotifyToken != -1)
  {
    notify_cancel(lockdownActivationNotifyToken);
    selfCopy->_lockdownActivationNotifyToken = -1;
  }

  [(CURetrier *)selfCopy->_wifiRetrier invalidateDirect];
  wifiRetrier = selfCopy->_wifiRetrier;
  selfCopy->_wifiRetrier = 0;

  [(SFWiFiHealthMonitor *)selfCopy _wifiEnsureStopped];
  invalidationHandler = selfCopy->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    v7 = selfCopy->_invalidationHandler;
  }

  else
  {
    v7 = 0;
  }

  selfCopy->_invalidationHandler = 0;

  statusHandler = selfCopy->_statusHandler;
  selfCopy->_statusHandler = 0;
}

- (void)reset
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFWiFiHealthMonitor_reset__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__SFWiFiHealthMonitor_reset__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFWiFiHealthMonitor <= 30)
  {
    if (gLogCategory_SFWiFiHealthMonitor != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __28__SFWiFiHealthMonitor_reset__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _wifiStatusChangedInternal:1];
}

- (void)_update
{
  selfCopy = self;
  lockdownActivated = self->_lockdownActivated;
  if (lockdownActivated < 0)
  {
    self = MAGetActivationState();
    lockdownActivated = self;
    if (selfCopy->_lockdownActivated != self)
    {
      if (gLogCategory_SFWiFiHealthMonitor <= 30)
      {
        if (gLogCategory_SFWiFiHealthMonitor != -1 || (self = _LogCategory_Initialize(), self))
        {
          self = [(SFWiFiHealthMonitor *)lockdownActivated _update];
        }
      }

      selfCopy->_lockdownActivated = lockdownActivated;
    }
  }

  wifiRetrier = selfCopy->_wifiRetrier;
  if (lockdownActivated)
  {
    if (!wifiRetrier)
    {
      if (gLogCategory_SFWiFiHealthMonitor <= 30)
      {
        if (gLogCategory_SFWiFiHealthMonitor != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFWiFiHealthMonitor *)self _update];
        }
      }

      v6 = objc_alloc_init(MEMORY[0x1E6999520]);
      v7 = selfCopy->_wifiRetrier;
      selfCopy->_wifiRetrier = v6;

      [(CURetrier *)selfCopy->_wifiRetrier setDispatchQueue:selfCopy->_dispatchQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __30__SFWiFiHealthMonitor__update__block_invoke;
      v9[3] = &unk_1E788B198;
      v9[4] = selfCopy;
      [(CURetrier *)selfCopy->_wifiRetrier setActionHandler:v9];
      [(CURetrier *)selfCopy->_wifiRetrier startDirect];
    }
  }

  else
  {
    if (wifiRetrier)
    {
      if (gLogCategory_SFWiFiHealthMonitor <= 30)
      {
        if (gLogCategory_SFWiFiHealthMonitor != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFWiFiHealthMonitor *)self _update];
        }
      }

      [(CURetrier *)selfCopy->_wifiRetrier invalidateDirect];
      v8 = selfCopy->_wifiRetrier;
      selfCopy->_wifiRetrier = 0;
    }

    [(SFWiFiHealthMonitor *)selfCopy _wifiEnsureStopped];
  }
}

- (void)_wifiEnsureStarted
{
  *&self->_wifiStatusExternal = vdupq_n_s64(1uLL);
  v3 = mach_absolute_time();
  self->_wifiStatusBadTicks = 0;
  self->_wifiStatusGoodTicks = v3;
  if (self->_wifiManager)
  {
    goto LABEL_39;
  }

  v4 = WiFiManagerClientCreate();
  self->_wifiManager = v4;
  if (v4)
  {
    goto LABEL_39;
  }

  if (gLogCategory_SFWiFiHealthMonitor <= 60)
  {
    if (gLogCategory_SFWiFiHealthMonitor != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      [(SFWiFiHealthMonitor *)v4 _wifiEnsureStarted];
    }

    if (self->_wifiManager)
    {
LABEL_39:
      if (!self->_wifiManagerSetup)
      {
        CFRunLoopGetMain();
        WiFiManagerClientScheduleWithRunLoop();
        WiFiManagerClientRegisterDeviceAttachmentCallback();
        restarted = WiFiManagerClientRegisterServerRestartCallback();
        self->_wifiManagerSetup = 1;
        if (gLogCategory_SFWiFiHealthMonitor <= 30)
        {
          if (gLogCategory_SFWiFiHealthMonitor != -1 || (restarted = _LogCategory_Initialize(), restarted))
          {
            [(SFWiFiHealthMonitor *)restarted _wifiEnsureStarted];
          }
        }
      }

      if (self->_wifiManager && !self->_wifiDevice)
      {
        v10 = WiFiManagerClientCopyDevices();
        v11 = v10;
        if (v10 && CFArrayGetCount(v10) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
          self->_wifiDevice = ValueAtIndex;
          CFRetain(ValueAtIndex);
          goto LABEL_21;
        }

        if (gLogCategory_SFWiFiHealthMonitor <= 60 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
        {
          [(SFWiFiHealthMonitor *)v11 _wifiEnsureStarted];
          if (!v11)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (v11)
        {
LABEL_21:
          CFRelease(v11);
        }
      }
    }
  }

LABEL_22:
  if (self->_wifiDevice && !self->_wifiDeviceSetup)
  {
    WiFiDeviceClientRegisterAutoJoinNotificationCallback();
    v13 = WiFiDeviceClientRegisterRemovalCallback();
    self->_wifiDeviceSetup = 1;
    if (gLogCategory_SFWiFiHealthMonitor <= 30)
    {
      if (gLogCategory_SFWiFiHealthMonitor != -1 || (v13 = _LogCategory_Initialize(), v13))
      {
        [(SFWiFiHealthMonitor *)v13 _wifiEnsureStarted];
      }
    }

    [(CURetrier *)self->_wifiRetrier succeededDirect];
  }

  if (!self->_wifiDeviceSetup)
  {
    wifiRetrier = self->_wifiRetrier;

    [(CURetrier *)wifiRetrier failedDirect];
  }
}

- (void)_wifiEnsureStopped
{
  wifiStatusDebounceTimer = self->_wifiStatusDebounceTimer;
  if (wifiStatusDebounceTimer)
  {
    v4 = wifiStatusDebounceTimer;
    dispatch_source_cancel(v4);
    v5 = self->_wifiStatusDebounceTimer;
    self->_wifiStatusDebounceTimer = 0;
  }

  self->_wifiDeviceSetup = 0;
  if (self->_wifiDevice)
  {
    WiFiDeviceClientRegisterAutoJoinNotificationCallback();
    WiFiDeviceClientRegisterRemovalCallback();
    CFRelease(self->_wifiDevice);
    self->_wifiDevice = 0;
    if (gLogCategory_SFWiFiHealthMonitor <= 30)
    {
      if (gLogCategory_SFWiFiHealthMonitor != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        [(SFWiFiHealthMonitor *)v6 _wifiEnsureStopped];
      }
    }
  }

  self->_wifiManagerSetup = 0;
  if (self->_wifiManager)
  {
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    WiFiManagerClientRegisterServerRestartCallback();
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
    if (gLogCategory_SFWiFiHealthMonitor <= 30)
    {
      if (gLogCategory_SFWiFiHealthMonitor != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        [(SFWiFiHealthMonitor *)v9 _wifiEnsureStopped];
      }
    }
  }
}

- (void)_wifiAutoJoinNotification:(id)notification
{
  notificationCopy = notification;
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
  {
    [SFWiFiHealthMonitor _wifiAutoJoinNotification:v4];
  }

  if (([v4 isEqual:*MEMORY[0x1E69B2040]] & 1) != 0 || (objc_msgSend(v4, "isEqual:", *MEMORY[0x1E69B2038]) & 1) != 0 || objc_msgSend(v4, "isEqual:", *MEMORY[0x1E69B2020]))
  {
    if (CFDictionaryGetInt64())
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    goto LABEL_10;
  }

  if ([v4 isEqual:*MEMORY[0x1E69B2048]])
  {
    v5 = 1;
LABEL_10:
    [(SFWiFiHealthMonitor *)self _wifiStatusChangedInternal:v5];
  }
}

- (void)_wifiStatusChangedExternal:(int64_t)external
{
  wifiStatusExternal = self->_wifiStatusExternal;
  if (wifiStatusExternal == external)
  {
    return;
  }

  if (gLogCategory_SFWiFiHealthMonitor <= 30)
  {
    if (gLogCategory_SFWiFiHealthMonitor == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      wifiStatusExternal = self->_wifiStatusExternal;
    }

    if (wifiStatusExternal > 3)
    {
      v6 = "?";
    }

    else
    {
      v6 = off_1E78913F8[wifiStatusExternal];
    }

    if (external > 3)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_1E78913F8[external];
    }

    LogPrintF(&gLogCategory_SFWiFiHealthMonitor, "[SFWiFiHealthMonitor _wifiStatusChangedExternal:]", 30, "External status changed: %s -> %s\n", v6, v7);
  }

LABEL_13:
  self->_wifiStatusExternal = external;
  statusHandler = self->_statusHandler;
  if (statusHandler)
  {
    v9 = *(statusHandler + 2);

    v9();
  }
}

- (void)_wifiStatusChangedInternal:(int64_t)internal
{
  wifiStatusInternal = self->_wifiStatusInternal;
  if (wifiStatusInternal == internal)
  {
    return;
  }

  if (gLogCategory_SFWiFiHealthMonitor <= 30)
  {
    if (gLogCategory_SFWiFiHealthMonitor == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      wifiStatusInternal = self->_wifiStatusInternal;
    }

    if (wifiStatusInternal > 3)
    {
      v6 = "?";
    }

    else
    {
      v6 = off_1E78913F8[wifiStatusInternal];
    }

    if (internal > 3)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_1E78913F8[internal];
    }

    LogPrintF(&gLogCategory_SFWiFiHealthMonitor, "[SFWiFiHealthMonitor _wifiStatusChangedInternal:]", 30, "Internal status changed: %s -> %s\n", v6, v7);
  }

LABEL_14:
  self->_wifiStatusInternal = internal;
  if (internal == 1)
  {
    self->_wifiStatusBadTicks = 0;
    self->_wifiStatusGoodTicks = mach_absolute_time();
    wifiStatusDebounceTimer = self->_wifiStatusDebounceTimer;
    if (wifiStatusDebounceTimer)
    {
      v9 = wifiStatusDebounceTimer;
      dispatch_source_cancel(v9);
      v10 = self->_wifiStatusDebounceTimer;
      self->_wifiStatusDebounceTimer = 0;
    }

    v11 = self->_wifiStatusInternal;

    [(SFWiFiHealthMonitor *)self _wifiStatusChangedExternal:v11];
  }

  else if ((internal & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    self->_wifiStatusBadTicks = mach_absolute_time();
    self->_wifiStatusGoodTicks = 0;
    if (!self->_wifiStatusDebounceTimer)
    {
      v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      v13 = self->_wifiStatusDebounceTimer;
      self->_wifiStatusDebounceTimer = v12;

      v14 = self->_wifiStatusDebounceTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __50__SFWiFiHealthMonitor__wifiStatusChangedInternal___block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v14, handler);
      SFDispatchTimerSet(self->_wifiStatusDebounceTimer, self->_wifiStatusDebounceSecs, -1.0, -4.0);
      dispatch_resume(self->_wifiStatusDebounceTimer);
    }
  }
}

void *__50__SFWiFiHealthMonitor__wifiStatusChangedInternal___block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 8) & 1) == 0)
  {
    v4 = result;
    if (gLogCategory_SFWiFiHealthMonitor <= 30)
    {
      if (gLogCategory_SFWiFiHealthMonitor != -1 || (result = _LogCategory_Initialize(), result))
      {
        __50__SFWiFiHealthMonitor__wifiStatusChangedInternal___block_invoke_cold_1(result, a2, a3);
      }
    }

    v5 = *(v4[4] + 88);
    if (v5)
    {
      v6 = v5;
      dispatch_source_cancel(v6);
      v7 = v4[4];
      v8 = *(v7 + 88);
      *(v7 + 88) = 0;
    }

    v9 = v4[4];
    v10 = v9[13];

    return [v9 _wifiStatusChangedExternal:v10];
  }

  return result;
}

- (uint64_t)_update
{
  v1 = "yes";
  if (self)
  {
    v2 = "no";
  }

  else
  {
    v2 = "yes";
  }

  if ((self & 1) == 0)
  {
    v1 = "no";
  }

  return LogPrintF(&gLogCategory_SFWiFiHealthMonitor, "[SFWiFiHealthMonitor _update]", 30, "Lockdown activation changed: %s -> %s\n", v2, v1);
}

@end