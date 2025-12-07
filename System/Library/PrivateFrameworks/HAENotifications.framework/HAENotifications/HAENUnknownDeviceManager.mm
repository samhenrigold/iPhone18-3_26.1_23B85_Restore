@interface HAENUnknownDeviceManager
+ (id)sharedInstance;
- (BOOL)_isAlertSupported;
- (BOOL)_shouldSurfaceAlert:(id)alert;
- (BOOL)unknownWiredHeadsetConnectedThroughB204;
- (HAENUnknownDeviceManager)init;
- (void)_processPrompt:(id)prompt;
- (void)_processWiredDevice:(id)device;
- (void)_resetWiredStatus;
- (void)_updateMXVolumeLimitStatus:(id)status;
- (void)_wiredDeviceSessionCreated:(id)created SessionID:(unint64_t)d;
- (void)_wiredDeviceSessionDestroyed:(id)destroyed;
- (void)_wiredDeviceSessionInit:(id)init;
- (void)deviceSessionCreated:(id)created SessionID:(unint64_t)d;
- (void)deviceSessionDestroyed:(id)destroyed isWired:(BOOL)wired;
- (void)registerDevice:(id)device;
- (void)setDeviceConnectionState:(id)state isConnected:(BOOL)connected;
- (void)surfaceAlertBox;
- (void)unknownWiredConnectionDidChange:(BOOL)change;
- (void)updateWiredDeviceStatus;
@end

@implementation HAENUnknownDeviceManager

+ (id)sharedInstance
{
  if ((+[HAENDefaults isCurrentProcessMediaserverd](HAENDefaults, "isCurrentProcessMediaserverd") || +[HAENDefaults isRunningCITests]) && sharedInstance_once_6 != -1)
  {
    +[HAENUnknownDeviceManager sharedInstance];
  }

  v2 = sharedInstance_instance_6;

  return v2;
}

uint64_t __42__HAENUnknownDeviceManager_sharedInstance__block_invoke()
{
  sharedInstance_instance_6 = objc_alloc_init(HAENUnknownDeviceManager);

  return MEMORY[0x2821F96F8]();
}

- (HAENUnknownDeviceManager)init
{
  v7.receiver = self;
  v7.super_class = HAENUnknownDeviceManager;
  v2 = [(HAENUnknownDeviceManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_alertSupported = [(HAENUnknownDeviceManager *)v2 _isAlertSupported];
    deviceName = v3->_deviceName;
    v3->_deviceName = 0;

    deviceUID = v3->_deviceUID;
    v3->_deviceUID = 0;

    v3->_connectionCnt = 0;
    v3->_alertPending = 0;
    v3->_isWiredUnknown = 0;
    v3->_adamSessionID = 561211748;
  }

  return v3;
}

- (void)deviceSessionCreated:(id)created SessionID:(unint64_t)d
{
  createdCopy = created;
  v7 = createdCopy;
  if (createdCopy)
  {
    self->_isWiredUnknown = 0;
    v8 = [createdCopy objectForKey:@"_HAENMetadataIdentifierHeadsetIsWired"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      v10 = [v7 objectForKey:@"_HAENMetadataIdentifierDeviceName"];
      v11 = [v7 objectForKey:@"_HAENMetadataIdentifierHeadsetIsUnknown"];
      self->_isWiredUnknown = [v11 BOOLValue];

      v12 = [v7 objectForKey:@"_HAENMetadataIdentifierDeviceIdentifier"];
      deviceUID = self->_deviceUID;
      self->_deviceUID = v12;

      if (v10)
      {
        [(HAENUnknownDeviceManager *)self _wiredDeviceSessionCreated:v10 SessionID:d];
      }

      else
      {
        v15 = HAENotificationsLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(HAENUnknownDeviceManager *)v7 deviceSessionCreated:v15 SessionID:v16, v17, v18, v19, v20, v21];
        }
      }
    }

    v22 = +[HAENVolumeControl sharedInstance];
    [v22 setDeviceInfo:v7];
  }
}

- (void)registerDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  os_unfair_lock_lock(&self->_lock);
  isUSBCPort = [(HAENUnknownDeviceManager *)self isUSBCPort];
  if (!isUSBCPort)
  {
    v10 = HAENotificationsLog(isUSBCPort);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HAENUnknownDeviceManager *)deviceCopy registerDevice:v10, v11, v12, v13, v14, v15, v16];
    }

    goto LABEL_7;
  }

  if (deviceCopy)
  {
    v6 = [deviceCopy objectForKey:@"_HAENMetadataIdentifierDeviceIdentifier"];
    deviceUID = self->_deviceUID;
    self->_deviceUID = v6;

    v8 = [deviceCopy objectForKey:@"_HAENMetadataIdentifierHeadsetIsUnknown"];
    if ([v8 BOOLValue])
    {
      v9 = [deviceCopy objectForKey:@"_HAENMetadataIdentifierHeadsetIsWired"];
      self->_isWiredUnknown = [v9 BOOLValue];
    }

    else
    {
      self->_isWiredUnknown = 0;
    }

    v17 = [deviceCopy objectForKey:@"_HAENMetadataIdentifierDeviceName"];
    v10 = v17;
    if (self->_deviceUID)
    {
      v18 = [v17 copy];
      deviceName = self->_deviceName;
      self->_deviceName = v18;

      if (self->_alertSupported && [(HAENUnknownDeviceManager *)self _shouldSurfaceAlert:v10])
      {
        v20 = +[HAENDefaults sharedInstance];
        v21 = [v20 getAudioAccessoryConnectionInfoWithKey:self->_deviceUID];

        v23 = HAENotificationsLog(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v31 = 134217984;
          v32 = v21;
          _os_log_impl(&dword_25081E000, v23, OS_LOG_TYPE_DEFAULT, "accessory returned value: %ld", &v31, 0xCu);
        }

        if (v21 == -1)
        {
          [(HAENUnknownDeviceManager *)self surfaceAlertBox];
        }
      }

LABEL_7:

      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_8;
    }

    v24 = HAENotificationsLog(v17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(HAENUnknownDeviceManager *)deviceCopy deviceSessionCreated:v24 SessionID:v25, v26, v27, v28, v29, v30];
    }
  }

LABEL_8:
}

- (void)setDeviceConnectionState:(id)state isConnected:(BOOL)connected
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_lock);
  if ([(HAENUnknownDeviceManager *)self isUSBCPort])
  {
    v6 = +[HAENDefaults sharedInstance];
    v7 = [v6 getAudioAccessoryConnectionInfoWithKey:stateCopy];

    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CEFB38]);
      v9 = v8;
      v10 = *MEMORY[0x277CEFAB0];
      if (connected)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
        v12 = [v9 setPreferenceFor:v10 value:v11 notify:1];
      }

      else
      {
        [v8 removePreferenceFor:*MEMORY[0x277CEFAB0]];
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_wiredDeviceSessionCreated:(id)created SessionID:(unint64_t)d
{
  createdCopy = created;
  os_unfair_lock_lock(&self->_lock);
  [(HAENUnknownDeviceManager *)self _wiredDeviceSessionInit:createdCopy];
  if (self->_adamSessionID != d)
  {
    ++self->_connectionCnt;
    self->_adamSessionID = d;
  }

  [(HAENUnknownDeviceManager *)self _processWiredDevice:createdCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_wiredDeviceSessionInit:(id)init
{
  v19 = *MEMORY[0x277D85DE8];
  initCopy = init;
  v5 = [initCopy isEqualToString:self->_deviceName];
  if ((v5 & 1) == 0)
  {
    v6 = HAENotificationsLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = self->_deviceName;
      connectionCnt = self->_connectionCnt;
      v13 = 138412802;
      v14 = initCopy;
      v15 = 2112;
      v16 = deviceName;
      v17 = 1024;
      v18 = connectionCnt;
      _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "new wired headset [%@], previous [%@], session count [%d]", &v13, 0x1Cu);
    }

    if (self->_connectionCnt >= 1)
    {
      v10 = HAENotificationsLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "**** old device has not been released yet, but replacing with new device", &v13, 2u);
      }
    }

    [(HAENUnknownDeviceManager *)self _resetWiredStatus];
    v11 = [initCopy copy];
    v12 = self->_deviceName;
    self->_deviceName = v11;
  }
}

- (void)_processWiredDevice:(id)device
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  alertSupported = self->_alertSupported;
  v6 = HAENotificationsLog(deviceCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (alertSupported)
  {
    if (v7)
    {
      connectionCnt = self->_connectionCnt;
      v11 = 138412546;
      v12 = deviceCopy;
      v13 = 1024;
      v14 = connectionCnt;
      _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "wired headset connected [%@], session count [%d]", &v11, 0x12u);
    }

    if ([(HAENUnknownDeviceManager *)self _shouldSurfaceAlert:deviceCopy])
    {
      if ([(HAENUnknownDeviceManager *)self isUSBCPort])
      {
        deviceUID = self->_deviceUID;
        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = self;
        deviceUID = deviceCopy;
      }

      [(HAENUnknownDeviceManager *)selfCopy2 _processPrompt:deviceUID];
    }

    else
    {
      [(HAENUnknownDeviceManager *)self _updateMXVolumeLimitStatus:deviceCopy];
    }
  }

  else
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = deviceCopy;
      _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "Alert not supported: %@", &v11, 0xCu);
    }
  }
}

- (void)updateWiredDeviceStatus
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *self;
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "device [%@] alread released?", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (BOOL)unknownWiredHeadsetConnectedThroughB204
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:self->_deviceName];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)unknownWiredConnectionDidChange:(BOOL)change
{
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  if ([(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:self->_deviceName])
  {
    v5 = +[HAENVolumeControl sharedInstance];
    [v5 wiredHeadphoneConnected:changeCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_processPrompt:(id)prompt
{
  v22 = *MEMORY[0x277D85DE8];
  promptCopy = prompt;
  v5 = HAENotificationsLog(promptCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "found unknown wired headset!", &v20, 2u);
  }

  isUSBCPort = [(HAENUnknownDeviceManager *)self isUSBCPort];
  v7 = +[HAENDefaults sharedInstance];
  v8 = v7;
  if (isUSBCPort)
  {
    getAudioAccessoryConnectionInfo = [v7 getAudioAccessoryConnectionInfoWithKey:promptCopy];
  }

  else
  {
    getAudioAccessoryConnectionInfo = [v7 getAudioAccessoryConnectionInfo];
  }

  v10 = getAudioAccessoryConnectionInfo;

  v12 = HAENotificationsLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134217984;
    v21 = v10;
    _os_log_impl(&dword_25081E000, v12, OS_LOG_TYPE_DEFAULT, "accessory returned value: %ld", &v20, 0xCu);
  }

  if (v10 >= 2)
  {
    if (v10 == -1)
    {
      [(HAENUnknownDeviceManager *)self surfaceAlertBox];
      goto LABEL_13;
    }

    v17 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v18 = [v17 setPreferenceFor:*MEMORY[0x277CEFAB0] value:&unk_2862C9790 notify:1];

    v13 = HAENotificationsLog(v19);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = v10;
      _os_log_impl(&dword_25081E000, v13, OS_LOG_TYPE_DEFAULT, "notice: could not get accessory info: %ld, assumed to be headphone", &v20, 0xCu);
    }
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CEFB38]);
    v14 = *MEMORY[0x277CEFAB0];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v10 == 1];
    v16 = [v13 setPreferenceFor:v14 value:v15 notify:1];
  }

LABEL_13:
}

- (void)_updateMXVolumeLimitStatus:(id)status
{
  v20 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = [(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:statusCopy];
  if (v5)
  {
    v6 = +[HAENDefaults sharedInstance];
    if ([v6 softwareVersionEnabled])
    {
    }

    else
    {
      v11 = _os_feature_enabled_impl();

      if ((v11 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v13 = +[HAENDefaults sharedInstance];
    isConnectedUnknownWiredDeviceHeadphone = [v13 isConnectedUnknownWiredDeviceHeadphone];

    if ((isConnectedUnknownWiredDeviceHeadphone & 1) == 0)
    {
      v15 = objc_alloc_init(MEMORY[0x277CEFB38]);
      v16 = [v15 setPreferenceFor:*MEMORY[0x277CEFAB0] value:&unk_2862C9790];
    }

LABEL_9:
    v7 = HAENotificationsLog(v12);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      v8 = "assuming connected unknown device is headphone.";
      v9 = v7;
      v10 = 2;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = HAENotificationsLog(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = statusCopy;
    v8 = "Calibrated wired connection: %@";
    v9 = v7;
    v10 = 12;
LABEL_11:
    _os_log_impl(&dword_25081E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v18, v10);
  }

LABEL_12:

  v17 = +[HAENVolumeControl sharedInstance];
  [v17 wiredHeadphoneConnected:1];
}

- (void)surfaceAlertBox
{
  if (self->_alertPending)
  {
    v2 = HAENotificationsLog(self);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "alert box pending...", buf, 2u);
    }
  }

  else
  {
    self->_alertPending = 1;
    v4 = HAENotificationsLog(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25081E000, v4, OS_LOG_TYPE_DEFAULT, "surfacing alert box", buf, 2u);
    }

    *buf = 0;
    v7 = buf;
    v8 = 0x3042000000;
    v9 = __Block_byref_object_copy_;
    v10 = __Block_byref_object_dispose_;
    objc_initWeak(&v11, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__HAENUnknownDeviceManager_surfaceAlertBox__block_invoke;
    v5[3] = &unk_27969F308;
    v5[4] = self;
    v5[5] = buf;
    dispatch_async(MEMORY[0x277D85CD0], v5);
    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v11);
  }
}

void __43__HAENUnknownDeviceManager_surfaceAlertBox__block_invoke(uint64_t a1)
{
  v27 = MEMORY[0x277CBEAC0];
  v28 = HAENLocalizationUtilityGetBundle(a1);
  v1 = [v28 localizedStringForKey:@"AlertUnknownHeadsetTitle" value:&stru_2862C7158 table:0];
  v2 = *MEMORY[0x277CBF188];
  v3 = HAENLocalizationUtilityGetBundle(v1);
  if (MGGetBoolAnswer())
  {
    v4 = @"AlertUnknownHeadsetMessage";
  }

  else
  {
    v4 = @"AlertUnknownHeadsetMessageNoHaptics";
  }

  v5 = [v3 localizedStringForKey:v4 value:&stru_2862C7158 table:0];
  v6 = *MEMORY[0x277CBF198];
  v7 = HAENLocalizationUtilityGetBundle(v5);
  v8 = [v7 localizedStringForKey:@"AlertButtonHeadphone" value:&stru_2862C7158 table:0];
  v9 = *MEMORY[0x277CBF1E8];
  v10 = HAENLocalizationUtilityGetBundle(v8);
  v11 = [v10 localizedStringForKey:@"AlertButtonOtherDevice" value:&stru_2862C7158 table:0];
  v12 = [v27 dictionaryWithObjectsAndKeys:{v1, v2, v5, v6, v8, v9, v11, *MEMORY[0x277CBF1C0], 0}];

  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v14 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v12);
  WeakRetained[2] = v14;
  responseFlags = 0;
  v15 = CFUserNotificationReceiveResponse(v14, 0.0, &responseFlags);
  v16 = responseFlags;
  v17 = HAENotificationsLog(v15);
  v18 = v17;
  if (v16 == 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v31 = 0;
      _os_log_impl(&dword_25081E000, v18, OS_LOG_TYPE_INFO, "device is not a headphone", v31, 2u);
    }

    v24 = [*(a1 + 32) isUSBCPort];
    v20 = +[HAENDefaults sharedInstance];
    v18 = v20;
    if (v24)
    {
      v22 = WeakRetained[3];
      v21 = WeakRetained[4];
      v23 = 0;
      goto LABEL_14;
    }

    v25 = WeakRetained[3];
    v26 = 0;
LABEL_19:
    [v20 setAudioAccessoryIsConnectedToHeadphones:v26 withName:v25];
    goto LABEL_20;
  }

  if (!v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25081E000, v18, OS_LOG_TYPE_INFO, "device is a headphone", buf, 2u);
    }

    v19 = [*(a1 + 32) isUSBCPort];
    v20 = +[HAENDefaults sharedInstance];
    v18 = v20;
    if (v19)
    {
      v22 = WeakRetained[3];
      v21 = WeakRetained[4];
      v23 = 1;
LABEL_14:
      [v20 setAudioAccessoryIsConnectedToHeadphones:v23 withKey:v21 name:v22];
      goto LABEL_20;
    }

    v25 = WeakRetained[3];
    v26 = 1;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&dword_25081E000, v18, OS_LOG_TYPE_DEFAULT, "device is unknown", v30, 2u);
  }

LABEL_20:

  WeakRetained[2] = 0;
  *(WeakRetained + 48) = 0;
}

- (BOOL)_isAlertSupported
{
  v2 = MGGetStringAnswer();
  if ([v2 isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"iPad"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"iPod"];
  }

  return v3;
}

- (BOOL)_shouldSurfaceAlert:(id)alert
{
  alertCopy = alert;
  v5 = +[HAENDefaults sharedInstance];
  if ([v5 isHAENFeatureEnabled])
  {
    isUSBCPort = 1;
  }

  else
  {
    v7 = +[HAENDefaults sharedInstance];
    if ([v7 isReduceLoudSoundEnabled])
    {
      isUSBCPort = 1;
    }

    else
    {
      v8 = +[HAENDefaults sharedInstance];
      if ([v8 isHKWriteEnabled])
      {
        v9 = +[HAENDefaults sharedInstance];
        if ([v9 isHAEOtherDevicesEnabled])
        {
          isUSBCPort = 1;
        }

        else
        {
          isUSBCPort = (_os_feature_enabled_impl() & 1) != 0 && [(HAENUnknownDeviceManager *)self isUSBCPort];
        }
      }

      else if (_os_feature_enabled_impl())
      {
        isUSBCPort = [(HAENUnknownDeviceManager *)self isUSBCPort];
      }

      else
      {
        isUSBCPort = 0;
      }
    }
  }

  v10 = [(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:alertCopy];
  return v10 && isUSBCPort;
}

- (void)deviceSessionDestroyed:(id)destroyed isWired:(BOOL)wired
{
  wiredCopy = wired;
  destroyedCopy = destroyed;
  if (destroyedCopy)
  {
    if (wiredCopy)
    {
      [(HAENUnknownDeviceManager *)self _wiredDeviceSessionDestroyed:destroyedCopy];
    }

    v7 = +[HAENVolumeControl sharedInstance];
    [v7 applyVolumeLoweringAtNextSession];
  }

  else
  {
    v7 = HAENotificationsLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HAENUnknownDeviceManager deviceSessionDestroyed:v7 isWired:?];
    }
  }
}

- (void)_wiredDeviceSessionDestroyed:(id)destroyed
{
  v16 = *MEMORY[0x277D85DE8];
  destroyedCopy = destroyed;
  os_unfair_lock_lock(&self->_lock);
  v5 = [destroyedCopy isEqualToString:self->_deviceName];

  if (v5)
  {
    notification = self->_notification;
    if (notification)
    {
      notification = CFUserNotificationCancel(notification);
      self->_notification = 0;
      self->_alertPending = 0;
    }

    connectionCnt = self->_connectionCnt;
    v9 = __OFSUB__(connectionCnt--, 1);
    self->_connectionCnt = connectionCnt;
    if ((connectionCnt < 0) ^ v9 | (connectionCnt == 0))
    {
      v10 = HAENotificationsLog(notification);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_connectionCnt;
        v14 = 67109120;
        LODWORD(v15) = v11;
        _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "reset wire due to ZERO session count: %d", &v14, 8u);
      }

      [(HAENUnknownDeviceManager *)self _resetWiredStatus];
    }
  }

  else
  {
    v12 = HAENotificationsLog(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = self->_deviceName;
      v14 = 138412290;
      v15 = deviceName;
      _os_log_impl(&dword_25081E000, v12, OS_LOG_TYPE_DEFAULT, "**** device [%@] already released?", &v14, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_resetWiredStatus
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_deviceName)
  {
    v3 = HAENotificationsLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      deviceName = self->_deviceName;
      v7 = 138412290;
      v8 = deviceName;
      _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "reset wired status: %@", &v7, 0xCu);
    }

    if ([(HAENUnknownDeviceManager *)self _isUnknownWiredHeadset:self->_deviceName])
    {
      v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
      [v5 removePreferenceFor:*MEMORY[0x277CEFAB0]];
    }

    else
    {
      v5 = +[HAENVolumeControl sharedInstance];
      [v5 wiredHeadphoneConnected:0];
    }

    v6 = self->_deviceName;
    self->_deviceName = 0;
  }

  self->_connectionCnt = 0;
  self->_adamSessionID = 561211748;
}

- (void)deviceSessionCreated:(uint64_t)a3 SessionID:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "no device UID in device information for wired headset %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)registerDevice:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_25081E000, a2, a3, "device registration is only for unknown USBC ports %@ ", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end