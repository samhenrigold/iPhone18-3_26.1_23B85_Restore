@interface CBExtensionsDaemon
- (BOOL)remoteAlertAllowedAndReturnReason:(id *)reason extension:(id)extension;
- (BOOL)remoteAlertStartWithCBExtension:(id)extension device:(id)device error:(id *)error;
- (BOOL)resetCBExtension:(id)extension error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)diagnosticControl:(id)control error:(id *)error;
- (void)_appRegistrationNotification:(id)notification;
- (void)_findExtensionsStart;
- (void)_screenLockedChanged;
- (void)_systemLockChanged;
- (void)_updateExtensions:(id)extensions;
- (void)activate;
- (void)invalidate;
- (void)prefsChanged;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)screenStateChanged;
- (void)setAssertionFlags:(unsigned int)flags;
@end

@implementation CBExtensionsDaemon

- (void)_systemLockChanged
{
  p_systemMonitor = &self->_systemMonitor;
  v4 = [(CUSystemMonitor *)self->_systemMonitor systemLockState]== 2 || [(CUSystemMonitor *)*p_systemMonitor systemLockState]== 3;
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_10009D99C(p_systemMonitor);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  extensionMap = self->_extensionMap;

  [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF660];
}

- (id)descriptionWithLevel:(int)level
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100042184;
  v35 = sub_100042554;
  v36 = 0;
  v30 = 12;
  levelCopy = level;
  v29 = 0;
  if (level >= 0x15u)
  {
    v6 = "%@";
  }

  else
  {
    v6 = "== %@";
  }

  v7 = [objc_opt_class() description];
  CUAppendF(&v29, &v30, v6, v7);
  objc_storeStrong(&v36, v29);

  v8 = v32;
  obj = v32[5];
  CUAppendF(&obj, &v30, "extensions %d", [(NSMutableDictionary *)self->_extensionMap count]);
  objc_storeStrong(v8 + 5, obj);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  extensionMap = self->_extensionMap;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000EBA34;
  v23[3] = &unk_100ADF518;
  v23[4] = &v24;
  [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:v23];
  v10 = *(v25 + 6);
  if (v10 >= 1)
  {
    v11 = v32;
    v22 = v32[5];
    CUAppendF(&v22, &v30, "triggered: %d", v10);
    objc_storeStrong(v11 + 5, v22);
  }

  if (self->_remoteAlertHandle)
  {
    v12 = v32;
    v21 = v32[5];
    CUAppendF(&v21, &v30, "UI active");
    objc_storeStrong(v12 + 5, v21);
  }

  if (levelCopy <= 0x14)
  {
    v13 = v32;
    v20 = v32[5];
    NSAppendPrintF_safe(&v20, " ==\n");
    objc_storeStrong(v13 + 5, v20);
    v14 = self->_extensionMap;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000EBA98;
    v18[3] = &unk_100ADF568;
    v18[4] = &v31;
    levelCopy2 = level;
    [(NSMutableDictionary *)v14 enumerateKeysAndObjectsUsingBlock:v18];
  }

  v15 = v32[5];
  if (!v15)
  {
    v15 = &stru_100B0F9E0;
  }

  v16 = v15;
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

- (void)activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50698 <= 30)
  {
    if (dword_100B50698 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1007FEFD8(v3, v4, v5);
    }
  }

  self->_prefEnforceApprovedExtensions = [(CBDaemonServer *)self->_daemonServer prefEnforceApprovedExtensions];
  if (!self->_appRegistrationObserving)
  {
    v6 = objc_alloc_init(CUCoalescer);
    updateExtensionsCoalescer = self->_updateExtensionsCoalescer;
    self->_updateExtensionsCoalescer = v6;
    v8 = v6;

    [(CUCoalescer *)v8 setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)v8 setMinDelay:5.0];
    [(CUCoalescer *)v8 setMaxDelay:60.0];
    [(CUCoalescer *)v8 setLeeway:1.0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000EBFB0;
    v17[3] = &unk_100ADF590;
    v17[4] = v8;
    v17[5] = self;
    [(CUCoalescer *)v8 setActionHandler:v17];
    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"_appRegistrationNotification:" name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v9 addObserver:self selector:"_appRegistrationNotification:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    self->_appRegistrationObserving = 1;
  }

  v10 = self->_systemMonitor;
  if (!v10)
  {
    v10 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v10;

    [(CUSystemMonitor *)v10 setDispatchQueue:self->_dispatchQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000EBFC8;
    v16[3] = &unk_100ADF5B8;
    v16[4] = self;
    [(CUSystemMonitor *)v10 setScreenLockedChangedHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000EBFD0;
    v15[3] = &unk_100ADF5B8;
    v15[4] = self;
    [(CUSystemMonitor *)v10 setScreenStateChangedHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009D8D8;
    v14[3] = &unk_100ADF5B8;
    v14[4] = self;
    [(CUSystemMonitor *)v10 setSystemLockStateChangedHandler:v14];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003198;
    v13[3] = &unk_100ADF5B8;
    v13[4] = self;
    [(CUSystemMonitor *)v10 setSystemUIChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000EBFD8;
    v12[3] = &unk_100ADF5B8;
    v12[4] = self;
    [(CUSystemMonitor *)v10 activateWithCompletion:v12];
  }

  [(CBExtensionsDaemon *)self _findExtensionsStart];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100B50698 <= 30)
  {
    if (dword_100B50698 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1007FEFF4(v3, v4, v5);
    }
  }

  self->_invalidateCalled = 1;
  if (self->_appRegistrationObserving)
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v6 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    self->_appRegistrationObserving = 0;
  }

  [(NSMutableDictionary *)self->_extensionMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF5F8];
  [(NSMutableDictionary *)self->_extensionMap removeAllObjects];
  extensionMap = self->_extensionMap;
  self->_extensionMap = 0;

  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    [(SBSRemoteAlertHandle *)remoteAlertHandle unregisterObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v9 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;

    self->_remoteAlertActivated = 0;
    [(CBDaemonServer *)self->_daemonServer setSystemFlags:0 mask:1];
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;

  [(CUCoalescer *)self->_updateExtensionsCoalescer invalidate];
  updateExtensionsCoalescer = self->_updateExtensionsCoalescer;
  self->_updateExtensionsCoalescer = 0;
}

- (id)diagnosticControl:(id)control error:(id *)error
{
  controlCopy = control;
  CFStringGetTypeID();
  uTF8String = [CFDictionaryGetTypedValue() UTF8String];
  if (!uTF8String)
  {
    if (error)
    {
      CBErrorF(4294960591, "No input string");
      goto LABEL_8;
    }

LABEL_31:
    v9 = 0;
    goto LABEL_26;
  }

  v8 = uTF8String;
  if (!strcasecmp(uTF8String, "extension-found"))
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      v11 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v10];
      if (v11)
      {
        v12 = objc_alloc_init(CBDevice);
        [v12 setIdentifier:@"Test Device"];
        [v11 _deviceFound:v12];

LABEL_23:
        v9 = &stru_100B0F9E0;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

LABEL_34:
      if (error)
      {
        CBErrorF(4294960569, "Extension not found");
        *error = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_24;
    }

LABEL_32:
    if (error)
    {
      CBErrorF(4294960591, "No extensionID specified");
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_25;
  }

  if (!strcasecmp(v8, "extension-launch"))
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      v11 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v10];
      if (v11)
      {
        v13 = objc_alloc_init(CBDevice);
        [v13 setIdentifier:@"Test Device"];
        v17 = 0;
        v14 = [(CBExtensionsDaemon *)self remoteAlertStartWithCBExtension:v11 device:v13 error:&v17];
        v15 = v17;
        if (v14)
        {
          v9 = &stru_100B0F9E0;
        }

        else if (error)
        {
          v15 = v15;
          v9 = 0;
          *error = v15;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_24;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!strcasecmp(v8, "extension-reset"))
  {
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    if (v10)
    {
      v11 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v10];
      if (v11)
      {
        if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
        {
          sub_1007FF050(v10);
        }

        [v11 reset];
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!strcasecmp(v8, "extension-update"))
  {
    [(CBExtensionsDaemon *)self _findExtensionsStart];
    v9 = &stru_100B0F9E0;
    goto LABEL_26;
  }

  if (!error)
  {
    goto LABEL_31;
  }

  CBErrorF(4294960561, "Unsupported command: '%s'");
LABEL_8:
  *error = v9 = 0;
LABEL_26:

  return v9;
}

- (void)prefsChanged
{
  prefEnforceApprovedExtensions = [(CBDaemonServer *)self->_daemonServer prefEnforceApprovedExtensions];
  if (self->_prefEnforceApprovedExtensions != prefEnforceApprovedExtensions)
  {
    self->_prefEnforceApprovedExtensions = prefEnforceApprovedExtensions;
    updateExtensionsCoalescer = self->_updateExtensionsCoalescer;

    [(CUCoalescer *)updateExtensionsCoalescer trigger];
  }
}

- (BOOL)resetCBExtension:(id)extension error:(id *)error
{
  extensionCopy = extension;
  extensionMap = self->_extensionMap;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EC5F0;
  v9[3] = &unk_100ADF620;
  v10 = extensionCopy;
  v7 = extensionCopy;
  [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:v9];
  [(CBExtensionsDaemon *)self _triggerPendingExtension];

  return 1;
}

- (void)_screenLockedChanged
{
  screenLockedSync = [(CUSystemMonitor *)self->_systemMonitor screenLockedSync];
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF090();
    if (screenLockedSync)
    {
      return;
    }
  }

  else if (screenLockedSync)
  {
    return;
  }

  [(CBExtensionsDaemon *)self _triggerPendingExtension];
}

- (void)screenStateChanged
{
  screenState = [(CUSystemMonitor *)self->_systemMonitor screenState];
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF0E0(screenState);
  }

  if (screenState < 30)
  {
    extensionMap = self->_extensionMap;

    [(NSMutableDictionary *)extensionMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF640];
  }

  else
  {

    [(CBExtensionsDaemon *)self _triggerPendingExtension];
  }
}

- (void)setAssertionFlags:(unsigned int)flags
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_assertionFlags = flags;

  [(CBExtensionsDaemon *)self _triggerPendingExtension];
}

- (void)_appRegistrationNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC854;
  block[3] = &unk_100ADF5B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_findExtensionsStart
{
  selfCopy = self;
  if (self->_findExtensionsRunning)
  {
    if (dword_100B50698 <= 30)
    {
      if (dword_100B50698 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1007FF1B0(self, a2, v2);
      }
    }

    selfCopy->_findExtensionsDeferred = 1;
  }

  else
  {
    if (dword_100B50698 <= 30)
    {
      if (dword_100B50698 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_1007FF194(self, a2, v2);
      }
    }

    selfCopy->_findExtensionsRunning = 1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("CBExtensionFindLatest", v5);

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000ECA10;
    v7[3] = &unk_100ADF688;
    v7[4] = selfCopy;
    v7[5] = mach_absolute_time();
    dispatch_async(v6, v7);
  }
}

- (void)_updateExtensions:(id)extensions
{
  extensionsCopy = extensions;
  p_info = &OBJC_METACLASS___BTVCDevice.info;
  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    sub_1007FF24C(extensionsCopy);
  }

  [(NSMutableDictionary *)self->_extensionMap enumerateKeysAndObjectsUsingBlock:&stru_100ADF6C8];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = extensionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
  v37 = v6;
  if (!v7)
  {
    v40 = 0;
    v38 = 0;
    goto LABEL_40;
  }

  v8 = v7;
  v38 = 0;
  v9 = *v46;
  v39 = *v46;
  v40 = 0;
  do
  {
    v10 = 0;
    do
    {
      if (*v46 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v45 + 1) + 8 * v10);
      v12 = [v6 objectForKeyedSubscript:v11];
      discoveryInfo = [v12 discoveryInfo];
      xpcDiscoveryInfo = [v12 xpcDiscoveryInfo];
      if (xpcDiscoveryInfo)
      {
        if ([(CBDaemonServer *)self->_daemonServer xpcEventAllowedInfo:xpcDiscoveryInfo])
        {
          v15 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v11];
          if (v15)
          {
            v16 = v15;
            ++v40;
            v17 = *(p_info + 422);
            if (v17 > 30 || v17 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_30;
            }

            v18 = "CBExtension: updated %@, %@";
          }

          else
          {
            v16 = objc_alloc_init(CBExtension);
            bundleID = [v12 bundleID];
            [(CBExtension *)v16 setBundleID:bundleID];

            [(CBExtension *)v16 setDispatchQueue:self->_dispatchQueue];
            [(CBExtension *)v16 setExtensionID:v11];
            [(CBExtension *)v16 setExtensionsDaemon:self];
            extensionMap = self->_extensionMap;
            if (!extensionMap)
            {
              v23 = objc_alloc_init(NSMutableDictionary);
              v24 = self->_extensionMap;
              self->_extensionMap = v23;

              extensionMap = self->_extensionMap;
            }

            [(NSMutableDictionary *)extensionMap setObject:v16 forKeyedSubscript:v11];
            ++v38;
            v25 = *(p_info + 422);
            if (v25 > 30 || v25 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_29;
            }

            v18 = "CBExtension: added %@, %@";
          }

          v26 = CUPrintNSObjectOneLine();
          LogPrintF_safe(&dword_100B50698, "[CBExtensionsDaemon _updateExtensions:]", 30, v18, v11, v26);

          p_info = (&OBJC_METACLASS___BTVCDevice + 32);
LABEL_29:
          v6 = v37;
LABEL_30:
          [(CBExtension *)v16 setPresent:1];
          CFStringGetTypeID();
          [(CBExtension *)v16 setSceneIdentifier:CFDictionaryGetTypedValue()];
          [(CBExtension *)v16 setScreenLocked:CFDictionaryGetInt64() != 0];
          [(CBExtension *)v16 setSystemUnlocked:CFDictionaryGetInt64() != 0];
          CFStringGetTypeID();
          [(CBExtension *)v16 setViewControllerClassName:CFDictionaryGetTypedValue()];
          [(CBExtension *)v16 updateWithXPCDiscoveryInfo:xpcDiscoveryInfo];

          v9 = v39;
          goto LABEL_31;
        }

        v20 = *(p_info + 422);
        if (v20 <= 30 && (v20 != -1 || _LogCategory_Initialize()))
        {
          sub_1007FF290(v11);
        }
      }

      else
      {
        v19 = *(p_info + 422);
        if (v19 <= 90 && (v19 != -1 || _LogCategory_Initialize()))
        {
          sub_1007FF2D0(v11);
        }
      }

LABEL_31:

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v27 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
    v8 = v27;
  }

  while (v27);
LABEL_40:

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  allKeys = [(NSMutableDictionary *)self->_extensionMap allKeys];
  v29 = [allKeys countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v42;
    do
    {
      v33 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(allKeys);
        }

        v34 = *(*(&v41 + 1) + 8 * v33);
        v35 = [(NSMutableDictionary *)self->_extensionMap objectForKeyedSubscript:v34];
        if (([v35 present] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_extensionMap setObject:0 forKeyedSubscript:v34];
          [v35 invalidate];
          ++v31;
          if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
          {
            sub_1007FF310(v34);
          }
        }

        v33 = v33 + 1;
      }

      while (v30 != v33);
      v36 = [allKeys countByEnumeratingWithState:&v41 objects:v49 count:16];
      v30 = v36;
    }

    while (v36);
  }

  else
  {
    v31 = 0;
  }

  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50698, "[CBExtensionsDaemon _updateExtensions:]", 30, "Update extensions done: added %d, updated %d, removed %d", v38, v40, v31);
  }
}

- (BOOL)remoteAlertAllowedAndReturnReason:(id *)reason extension:(id)extension
{
  extensionCopy = extension;
  if ([(CUSystemMonitor *)self->_systemMonitor screenState]<= 29)
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = *reason;
    v12 = @"Screen off";
    goto LABEL_25;
  }

  if (([extensionCopy screenLocked] & 1) == 0 && -[CUSystemMonitor screenLockedSync](self->_systemMonitor, "screenLockedSync"))
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = *reason;
    v12 = @"Screen locked";
LABEL_25:
    *reason = v12;
LABEL_26:

LABEL_27:
    LOBYTE(reason) = 0;
    goto LABEL_14;
  }

  if ([extensionCopy systemUnlocked])
  {
    systemLockStateSync = [(CUSystemMonitor *)self->_systemMonitor systemLockStateSync];
    if (systemLockStateSync != 1)
    {
      v8 = systemLockStateSync;
      if (systemLockStateSync != 4)
      {
        if (reason)
        {
          v9 = *reason;
          *reason = @"System locked";
        }

        if (v8 != 4)
        {
          goto LABEL_27;
        }
      }
    }
  }

  if (self->_remoteAlertActivated)
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = *reason;
    v12 = @"UI already active";
    goto LABEL_25;
  }

  if ((self->_assertionFlags & 2) != 0)
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = *reason;
    v12 = @"SuppressUIExtensions assertion";
    goto LABEL_25;
  }

  if (([(CUSystemMonitor *)self->_systemMonitor systemUIFlags]& 0x7E409) != 0)
  {
    if (!reason)
    {
      goto LABEL_14;
    }

    v11 = CUPrintFlags32();
    v13 = NSPrintF("SystemUI active: %@", v11);
    v14 = *reason;
    *reason = v13;

    goto LABEL_26;
  }

  LOBYTE(reason) = 1;
LABEL_14:

  return reason;
}

- (BOOL)remoteAlertStartWithCBExtension:(id)extension device:(id)device error:(id *)error
{
  extensionCopy = extension;
  deviceCopy = device;
  bundleID = [extensionCopy bundleID];
  if (!bundleID)
  {
    if (error)
    {
      CBErrorF(4294960534, "no bundleID");
LABEL_39:
      *error = v27 = 0;
      goto LABEL_28;
    }

LABEL_40:
    v27 = 0;
    goto LABEL_28;
  }

  if ([(CUSystemMonitor *)self->_systemMonitor screenState]<= 29)
  {
    if (!error)
    {
      goto LABEL_40;
    }

    v29 = "Screen off";
LABEL_38:
    CBErrorF(4294960587, v29);
    goto LABEL_39;
  }

  if (([extensionCopy screenLocked] & 1) == 0 && -[CUSystemMonitor screenLockedSync](self->_systemMonitor, "screenLockedSync"))
  {
    if (!error)
    {
      goto LABEL_40;
    }

    v29 = "Screen locked";
    goto LABEL_38;
  }

  if (self->_remoteAlertActivated)
  {
    if (error)
    {
      CBErrorF(4294960575, "UI already active");
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B50698, "[CBExtensionsDaemon remoteAlertStartWithCBExtension:device:error:]", 30, "Remote alert start: %@, %@", extensionCopy, deviceCopy);
  }

  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    [(SBSRemoteAlertHandle *)remoteAlertHandle unregisterObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v11 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;

    self->_remoteAlertActivated = 0;
    [(CBDaemonServer *)self->_daemonServer setSystemFlags:0 mask:1];
  }

  bundleID2 = [extensionCopy bundleID];
  sceneIdentifier = [extensionCopy sceneIdentifier];
  v14 = sceneIdentifier;
  if (bundleID2 && sceneIdentifier)
  {
    v15 = [RBSProcessIdentity identityForEmbeddedApplicationIdentifier:bundleID2];
    if (dword_100B50698 <= 30 && (dword_100B50698 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B50698, "[CBExtensionsDaemon remoteAlertStartWithCBExtension:device:error:]", 30, "$$$ Remote alert start: processIdentity=%@, bundleID=%@, scene=%@", v15, bundleID2, v14);
    }

    if (v15)
    {
      errorCopy2 = error;
      v18 = [[SBSRemoteAlertDefinition alloc] initWithSceneProvidingProcess:v15 configurationIdentifier:v14];
      goto LABEL_22;
    }

    if (error)
    {
      CBErrorF(4294960569, "RBSProcessIdentity failed: bundleID=%@", bundleID2);
      goto LABEL_45;
    }

LABEL_46:
    v27 = 0;
    goto LABEL_27;
  }

  viewControllerClassName = [extensionCopy viewControllerClassName];
  if (viewControllerClassName)
  {
    v15 = viewControllerClassName;
    errorCopy2 = error;
    v18 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:bundleID viewControllerClassName:viewControllerClassName];
LABEL_22:
    v19 = v18;

    v20 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    dictionaryRepresentation = [deviceCopy dictionaryRepresentation];
    v22 = dictionaryRepresentation;
    if (dictionaryRepresentation)
    {
      v32 = @"device";
      v33 = dictionaryRepresentation;
      v23 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      [v20 setUserInfo:v23];
    }

    v24 = [SBSRemoteAlertHandle newHandleWithDefinition:v19 configurationContext:v20];
    v25 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = v24;

    v26 = self->_remoteAlertHandle;
    v27 = v26 != 0;
    if (v26)
    {
      [(SBSRemoteAlertHandle *)v26 registerObserver:self];
      [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:0];
    }

    else
    {
      sub_1007FF350(errorCopy2);
    }

    goto LABEL_27;
  }

  if (!error)
  {
    goto LABEL_46;
  }

  CBErrorF(4294960591, "no viewControllerClassName", v30);
LABEL_45:
  *error = v27 = 0;
LABEL_27:

LABEL_28:
  return v27;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EDBF4;
  v7[3] = &unk_100ADF590;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EDD3C;
  v7[3] = &unk_100ADF590;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000EDE80;
  v8[3] = &unk_100ADF590;
  v9 = handleCopy;
  selfCopy = self;
  v7 = handleCopy;
  dispatch_async(dispatchQueue, v8);
}

@end