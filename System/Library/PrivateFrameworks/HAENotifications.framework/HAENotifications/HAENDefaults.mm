@interface HAENDefaults
+ (BOOL)HAENSupportedForCurrentDeviceClass;
+ (BOOL)isCurrentProcessMediaserverd;
+ (BOOL)isRunningCITests;
+ (id)sharedInstance;
- (BOOL)_shouldRepromptSinceDate:(id)date;
- (BOOL)isConnectedUnknownWiredDeviceHeadphone;
- (BOOL)isCurrentAudioAccessoryHeadphone;
- (BOOL)isCurrentAudioAccessoryHeadphoneWithKey:(id)key;
- (BOOL)isHAENFeatureEnabled;
- (BOOL)isHAENFeatureMandatory;
- (BOOL)isHAENFeatureOptedIn;
- (BOOL)isHAEOtherDevicesEnabled;
- (BOOL)isHKWriteEnabled;
- (BOOL)isReduceLoudSoundEnabled;
- (HAENDefaults)init;
- (double)getLiveMonitorTimeWindowInSeconds;
- (double)getLiveMonitoringThreshold;
- (double)volumeReductionDelta;
- (id)_generateAccessoryKeyWithManufacture:(id)manufacture andSerialNumber:(id)number;
- (int)getReduceLoudSoundThreshold;
- (int64_t)getAudioAccessoryConnectionInfo;
- (int64_t)getAudioAccessoryConnectionInfoWithKey:(id)key;
- (void)_registerNotification:(id)notification;
- (void)_updateSetting:(id)setting value:(id)value notify:(BOOL)notify;
- (void)forceReadDefaults;
- (void)getAudioAccessoryConnectionInfo;
- (void)removeAllAdapters;
- (void)setAudioAccessoryIsConnectedToHeadphones:(int64_t)headphones withKey:(id)key name:(id)name;
- (void)setAudioAccessoryIsConnectedToHeadphones:(int64_t)headphones withName:(id)name;
- (void)setUserVolumeWithValue:(float)value mininum:(float)mininum;
- (void)updateAudioAccessoryIsConnectedToHeadphones:(int64_t)headphones;
- (void)updateAudioAccessoryIsConnectedToHeadphones:(int64_t)headphones WithKey:(id)key;
- (void)updateRLSSettings;
- (void)updateUserVolumeForVolumeLimit;
- (void)wiredDeviceStatusDidChange;
@end

@implementation HAENDefaults

+ (BOOL)isRunningCITests
{
  if (isRunningCITests_once != -1)
  {
    +[HAENDefaults isRunningCITests];
  }

  return isRunningCITests_ans;
}

+ (BOOL)isCurrentProcessMediaserverd
{
  if (isCurrentProcessMediaserverd_once != -1)
  {
    +[HAENDefaults isCurrentProcessMediaserverd];
  }

  return isCurrentProcessMediaserverd_ans;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_5 != -1)
  {
    +[HAENDefaults sharedInstance];
  }

  v3 = sharedInstance_instance_5;

  return v3;
}

uint64_t __30__HAENDefaults_sharedInstance__block_invoke()
{
  sharedInstance_instance_5 = objc_alloc_init(HAENDefaults);

  return MEMORY[0x2821F96F8]();
}

- (HAENDefaults)init
{
  v8.receiver = self;
  v8.super_class = HAENDefaults;
  v2 = [(HAENDefaults *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    if (+[HAENDefaults isCurrentProcessMediaserverd])
    {
      v4 = objc_alloc_init(MEMORY[0x277CEFB38]);
      [v4 removePreferenceFor:*MEMORY[0x277CEFAB0] notify:0];
    }

    [(HAENDefaults *)v3 forceReadDefaults];
    [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA80]];
    [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA68]];
    [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA88]];
    if (+[HAENDefaults isCurrentProcessMediaserverd])
    {
      [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA70]];
      [(HAENDefaults *)v3 _registerNotification:*MEMORY[0x277CEFA90]];
    }

    v5 = MGGetStringAnswer();
    if (-[HAENDefaults isHAENFeatureEnabled](v3, "isHAENFeatureEnabled") || ([v5 isEqualToString:@"iPad"] & 1) == 0)
    {
      v3->_EUVolumeLimitFlag = MGGetBoolAnswer();
      v6 = MGGetBoolAnswer();
    }

    else
    {
      v6 = 0;
      v3->_EUVolumeLimitFlag = 0;
    }

    v3->_SKVolumeLimitFlag = v6;
  }

  return v3;
}

- (void)forceReadDefaults
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = HAENotificationsLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"re-load";
    if (!self->_domainSettings)
    {
      v4 = @"load";
    }

    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "%@ defaults...", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v6 = *MEMORY[0x277CEFB10];
  v18[0] = *MEMORY[0x277CEFAF0];
  v18[1] = v6;
  v7 = *MEMORY[0x277CEFB00];
  v18[2] = *MEMORY[0x277CEFB30];
  v18[3] = v7;
  v8 = *MEMORY[0x277CEFAE8];
  v18[4] = *MEMORY[0x277CEFAE0];
  v18[5] = v8;
  v9 = *MEMORY[0x277CEFAB0];
  v18[6] = *MEMORY[0x277CEFB08];
  v18[7] = v9;
  v10 = *MEMORY[0x277CEFB28];
  v18[8] = *MEMORY[0x277CEFB20];
  v18[9] = v10;
  v18[10] = *MEMORY[0x277CEFB18];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:11];
  v12 = [v5 getPreferencesFor:v11];
  v13 = [v12 mutableCopy];
  domainSettings = self->_domainSettings;
  self->_domainSettings = v13;

  os_unfair_lock_unlock(&self->_lock);
  v16 = HAENotificationsLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_domainSettings;
    *buf = 138412290;
    v20 = v17;
    _os_log_impl(&dword_25081E000, v16, OS_LOG_TYPE_DEFAULT, "HAEN Defaults: %@", buf, 0xCu);
  }
}

- (void)updateUserVolumeForVolumeLimit
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = *MEMORY[0x277CEFB20];
  v5 = [v3 getPreferenceFor:*MEMORY[0x277CEFB20]];
  v6 = HAENotificationsLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSMutableDictionary *)self->_domainSettings objectForKey:v4];
    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_25081E000, v6, OS_LOG_TYPE_DEFAULT, "VolumeLimit: %@ -> %@", buf, 0x16u);
  }

  v8 = [(NSMutableDictionary *)self->_domainSettings objectForKey:v4];
  if (![v8 BOOLValue])
  {
    goto LABEL_6;
  }

  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HAENDefaults_updateUserVolumeForVolumeLimit__block_invoke;
    block[3] = &unk_27969F218;
    block[4] = self;
    dispatch_async(v8, block);
LABEL_6:
  }
}

uint64_t __46__HAENDefaults_updateUserVolumeForVolumeLimit__block_invoke(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = 0.5;
  LODWORD(a3) = 0.5;
  return [*(a1 + 32) setUserVolumeWithValue:a2 mininum:a3];
}

- (void)setUserVolumeWithValue:(float)value mininum:(float)mininum
{
  v14 = *MEMORY[0x277D85DE8];
  getpid();
  v5 = CMSessionManagerPerformVolumeOperationWithSequenceNumber();
  v6 = v5;
  v7 = HAENotificationsLog(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults setUserVolumeWithValue:mininum:];
    }

LABEL_4:

    return;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = -1.0;
    _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, "[VolumeLimit] current Volume  %f", buf, 0xCu);
  }

  if (mininum < -1.0)
  {
    getpid();
    v9 = CMSessionManagerPerformVolumeOperationWithSequenceNumber();
    v10 = v9;
    v11 = HAENotificationsLog(v9);
    v8 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [HAENDefaults setUserVolumeWithValue:mininum:];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = -1.0;
      _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, "setUserVolumeWithValue success to %f", buf, 0xCu);
    }

    goto LABEL_4;
  }
}

- (double)getLiveMonitoringThreshold
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFB00]];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 100.0;
  }

  return v5;
}

- (BOOL)isHAENFeatureEnabled
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = [v3 getPreferenceFor:*MEMORY[0x277CEFAF8]];

  v5 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAF0]];
  os_unfair_lock_unlock(&self->_lock);
  v6 = _os_feature_enabled_impl();
  bOOLValue = +[HAENDefaults HAENSupportedForCurrentDeviceClass];
  v8 = bOOLValue;
  v9 = 0;
  if (v6 && bOOLValue)
  {
    bOOLValue = [v5 BOOLValue];
    v9 = bOOLValue;
  }

  v10 = HAENotificationsLog(bOOLValue);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v15 = 138413314;
    v16 = v11;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_25081E000, v10, OS_LOG_TYPE_DEFAULT, "hean feature status: [%@] mandatory: %@, enabled: %@, feature flag: %@ device supported: %@", &v15, 0x34u);
  }

  return v9;
}

- (BOOL)isHAENFeatureOptedIn
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = [v3 getPreferenceFor:*MEMORY[0x277CEFAF8]];

  v5 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAF0]];
  os_unfair_lock_unlock(&self->_lock);
  if ([v4 BOOLValue])
  {
    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v5 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)isHAENFeatureMandatory
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = [v3 getPreferenceFor:*MEMORY[0x277CEFAF8]];

  os_unfair_lock_unlock(&selfCopy->_lock);
  LOBYTE(selfCopy) = [v4 BOOLValue];

  return selfCopy;
}

- (BOOL)isConnectedUnknownWiredDeviceHeadphone
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)selfCopy->_domainSettings objectForKey:*MEMORY[0x277CEFAB0]];
  os_unfair_lock_unlock(&selfCopy->_lock);
  LOBYTE(selfCopy) = [v3 BOOLValue];

  return selfCopy;
}

- (double)getLiveMonitorTimeWindowInSeconds
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFB08]];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  return v5;
}

- (BOOL)isReduceLoudSoundEnabled
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)selfCopy->_domainSettings objectForKey:*MEMORY[0x277CEFB20]];
  os_unfair_lock_unlock(&selfCopy->_lock);
  LOBYTE(selfCopy) = [v3 BOOLValue];

  return selfCopy;
}

- (BOOL)isHKWriteEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFAB8]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHAEOtherDevicesEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v3 = [v2 getPreferenceFor:*MEMORY[0x277CEFAC0]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int)getReduceLoudSoundThreshold
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)selfCopy->_domainSettings objectForKey:*MEMORY[0x277CEFB28]];
  os_unfair_lock_unlock(&selfCopy->_lock);
  LODWORD(selfCopy) = [v3 intValue];

  return selfCopy;
}

- (void)updateRLSSettings
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = *MEMORY[0x277CEFB20];
  v5 = [v3 getPreferenceFor:*MEMORY[0x277CEFB20]];
  v6 = *MEMORY[0x277CEFB28];
  v7 = [v3 getPreferenceFor:*MEMORY[0x277CEFB28]];
  os_unfair_lock_lock(&self->_lock);
  domainSettings = self->_domainSettings;
  if (v5)
  {
    [(NSMutableDictionary *)domainSettings setObject:v5 forKey:v4];
  }

  else
  {
    [(NSMutableDictionary *)domainSettings removeObjectForKey:v4];
  }

  v9 = self->_domainSettings;
  if (v7)
  {
    [(NSMutableDictionary *)v9 setObject:v7 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = HAENotificationsLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_DEFAULT, "updated RLS status, enabled: (%@), threshold: (%@)", &v12, 0x16u);
  }
}

- (double)volumeReductionDelta
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFB30]];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    [v3 doubleValue];
    if (v4 > 1.0 || v4 < 0.0)
    {
      v6 = 0.125;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0.125;
  }

  return v6;
}

- (id)_generateAccessoryKeyWithManufacture:(id)manufacture andSerialNumber:(id)number
{
  v5 = MEMORY[0x277CCACA8];
  numberCopy = number;
  manufactureCopy = manufacture;
  numberCopy = [[v5 alloc] initWithFormat:@"%@_%@", manufactureCopy, numberCopy];

  return numberCopy;
}

- (int64_t)getAudioAccessoryConnectionInfoWithKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAE0]];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v12 = -1;
    goto LABEL_25;
  }

  v6 = [v5 objectForKey:keyCopy];
  v7 = v6;
  if (!v6)
  {
    v12 = -1;
LABEL_24:

    goto LABEL_25;
  }

  v8 = [v6 objectForKey:@"value"];
  intValue = [v8 intValue];

  if (intValue == 1)
  {
    v12 = 1;
    goto LABEL_24;
  }

  if (intValue)
  {
    v11 = HAENotificationsLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults getAudioAccessoryConnectionInfoWithKey:];
    }

    v12 = -1;
    goto LABEL_23;
  }

  v11 = MGGetStringAnswer();
  if (![v11 isEqualToString:@"iPad"]|| (MGGetBoolAnswer() & 1) == 0)
  {
    v13 = [v7 objectForKey:@"count"];
    intValue2 = [v13 intValue];

    if (intValue2 <= 2 && ([v7 objectForKey:@"date"], v16 = objc_claimAutoreleasedReturnValue(), v17 = -[HAENDefaults _shouldRepromptSinceDate:](self, "_shouldRepromptSinceDate:", v16), v16, v17))
    {
      v18 = HAENotificationsLog(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 67109120;
        v21 = intValue2;
        _os_log_impl(&dword_25081E000, v18, OS_LOG_TYPE_DEFAULT, "re-surfacing prompt for not headphone. query count: %d", &v20, 8u);
      }

      v12 = -1;
    }

    else
    {
      v18 = HAENotificationsLog(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 67109120;
        v21 = intValue2;
        _os_log_impl(&dword_25081E000, v18, OS_LOG_TYPE_DEFAULT, "skipped re-surfacing prompt for not headphone. query count: %d", &v20, 8u);
      }

      v12 = 0;
    }

LABEL_23:
    goto LABEL_24;
  }

  v12 = 0;
LABEL_25:

  return v12;
}

- (int64_t)getAudioAccessoryConnectionInfo
{
  v16 = 0;
  v3 = [HAENAccessoryInfo getAccessoryInfo:&v16];
  v4 = v16;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    manufacturer = [v3 manufacturer];
    serialNumber = [v3 serialNumber];
    v14 = [(HAENDefaults *)self _generateAccessoryKeyWithManufacture:manufacturer andSerialNumber:serialNumber];

    v11 = [(HAENDefaults *)self getAudioAccessoryConnectionInfoWithKey:v14];
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = HAENAccessoryInfoErrorDomain;
    domain = [v4 domain];
    if (([(__CFString *)v7 isEqualToString:domain]& 1) != 0)
    {
      code = [v5 code];

      if (code == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v14 = HAENotificationsLog(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults getAudioAccessoryConnectionInfo];
    }

    v11 = -2;
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v11 = -2;
LABEL_15:

  return v11;
}

- (BOOL)isCurrentAudioAccessoryHeadphoneWithKey:(id)key
{
  keyCopy = key;
  if (+[HAENDefaults isRunningCITests])
  {
    [(HAENDefaults *)self forceReadDefaults];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAE0]];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    LOBYTE(intValue) = 1;
    goto LABEL_12;
  }

  v6 = [v5 objectForKey:keyCopy];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = [v6 objectForKey:@"value"];
  intValue = [v8 intValue];

  if (intValue >= 2)
  {
    v11 = HAENotificationsLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults getAudioAccessoryConnectionInfoWithKey:];
    }

LABEL_9:
    LOBYTE(intValue) = 1;
  }

LABEL_12:
  return intValue;
}

- (BOOL)isCurrentAudioAccessoryHeadphone
{
  v16 = 0;
  v3 = [HAENAccessoryInfo getAccessoryInfo:&v16];
  v4 = v16;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    manufacturer = [v3 manufacturer];
    serialNumber = [v3 serialNumber];
    v14 = [(HAENDefaults *)self _generateAccessoryKeyWithManufacture:manufacturer andSerialNumber:serialNumber];

    v11 = [(HAENDefaults *)self isCurrentAudioAccessoryHeadphoneWithKey:v14];
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = HAENAccessoryInfoErrorDomain;
    domain = [v4 domain];
    if (([(__CFString *)v7 isEqualToString:domain]& 1) != 0)
    {
      code = [v5 code];

      if (code == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v14 = HAENotificationsLog(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults getAudioAccessoryConnectionInfo];
    }

    v11 = 0;
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v11 = 0;
LABEL_15:

  return v11;
}

- (BOOL)_shouldRepromptSinceDate:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  v6 = [v4 now];
  [v6 timeIntervalSinceDate:dateCopy];
  v8 = v7;

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAE8]];
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    v11 = HAENotificationsLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = 0;
      _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_DEFAULT, "invalid expiryDays %@", &v17, 0xCu);
    }

    v9 = &unk_2862C9760;
  }

  doubleValue = [v9 doubleValue];
  v14 = v13 * 24.0 * 60.0 * 60.0;
  if (v8 >= v14)
  {
    v15 = HAENotificationsLog(doubleValue);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "re-surface prompt", &v17, 2u);
    }
  }

  return v8 >= v14;
}

- (void)setAudioAccessoryIsConnectedToHeadphones:(int64_t)headphones withKey:(id)key name:(id)name
{
  v35[4] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  v33 = *MEMORY[0x277CEFAE0];
  v10 = [(NSMutableDictionary *)self->_domainSettings objectForKey:?];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v12 = v11;
  v13 = [v11 objectForKey:keyCopy];
  v32 = v13;
  if (v13 && (v14 = v13, [v13 objectForKey:@"value"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, v16 == headphones))
  {
    v17 = [v14 mutableCopy];
    v18 = [v14 objectForKey:@"count"];
    intValue = [v18 intValue];

    v20 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
    [v17 setObject:v20 forKey:@"count"];

    v21 = [MEMORY[0x277CBEAA8] now];
    [v17 setObject:v21 forKey:@"date"];

    [v17 setObject:nameCopy forKey:@"name"];
  }

  else
  {
    v22 = MEMORY[0x277CBEB38];
    v35[0] = &unk_2862C9778;
    v34[0] = @"count";
    v34[1] = @"date";
    v23 = [MEMORY[0x277CBEAA8] now];
    v35[1] = v23;
    v34[2] = @"value";
    [MEMORY[0x277CCABB0] numberWithInteger:headphones];
    headphonesCopy = headphones;
    v25 = v10;
    v26 = keyCopy;
    v28 = v27 = nameCopy;
    v34[3] = @"name";
    v35[2] = v28;
    v35[3] = v27;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v17 = [v22 dictionaryWithDictionary:v29];

    nameCopy = v27;
    keyCopy = v26;
    v10 = v25;
    headphones = headphonesCopy;
  }

  [v12 setValue:v17 forKey:keyCopy];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_domainSettings setObject:v12 forKey:v33];
  os_unfair_lock_unlock(&self->_lock);
  [(HAENDefaults *)self _updateSetting:v33 value:v12 notify:1];
  v30 = *MEMORY[0x277CEFAB0];
  v31 = [MEMORY[0x277CCABB0] numberWithBool:headphones == 1];
  [(HAENDefaults *)self _updateSetting:v30 value:v31 notify:1];
}

- (void)setAudioAccessoryIsConnectedToHeadphones:(int64_t)headphones withName:(id)name
{
  nameCopy = name;
  v14 = 0;
  v7 = [HAENAccessoryInfo getAccessoryInfo:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    manufacturer = [v7 manufacturer];
    serialNumber = [v7 serialNumber];
    v11 = [(HAENDefaults *)self _generateAccessoryKeyWithManufacture:manufacturer andSerialNumber:serialNumber];

    [(HAENDefaults *)self setAudioAccessoryIsConnectedToHeadphones:headphones withKey:v11 name:nameCopy];
  }

  else
  {
    v11 = HAENotificationsLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults setAudioAccessoryIsConnectedToHeadphones:withName:];
    }
  }
}

- (void)updateAudioAccessoryIsConnectedToHeadphones:(int64_t)headphones WithKey:(id)key
{
  v23[3] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v7 = *MEMORY[0x277CEFAE0];
  v8 = [(NSMutableDictionary *)self->_domainSettings objectForKey:*MEMORY[0x277CEFAE0]];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v10 = v9;
  v11 = [v9 objectForKey:keyCopy];
  v12 = v11;
  if (!v11 || ([v11 objectForKey:@"value"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "intValue"), v13, v14 != headphones))
  {
    v15 = HAENotificationsLog(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "reset accessory info...", v21, 2u);
    }

    v16 = MEMORY[0x277CBEB38];
    v23[0] = &unk_2862C9778;
    v22[0] = @"count";
    v22[1] = @"date";
    v17 = [MEMORY[0x277CBEAA8] now];
    v23[1] = v17;
    v22[2] = @"value";
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:headphones];
    v23[2] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v20 = [v16 dictionaryWithDictionary:v19];

    [v10 setValue:v20 forKey:keyCopy];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_domainSettings setObject:v10 forKey:v7];
    os_unfair_lock_unlock(&self->_lock);
    [(HAENDefaults *)self _updateSetting:v7 value:v10 notify:1];
  }
}

- (void)updateAudioAccessoryIsConnectedToHeadphones:(int64_t)headphones
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = HAENotificationsLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    headphonesCopy = headphones;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "Update AudioAccessory Is Connected To Headphones %d", buf, 8u);
  }

  isHAENFeatureEnabled = [(HAENDefaults *)self isHAENFeatureEnabled];
  if (isHAENFeatureEnabled)
  {
    if (MGGetBoolAnswer())
    {
      v7 = +[HAENUnknownDeviceManager sharedInstance];
      getDeviceUID = [v7 getDeviceUID];
    }

    else
    {
      v15 = 0;
      v9 = [HAENAccessoryInfo getAccessoryInfo:&v15];
      v10 = v15;
      v7 = v10;
      if (!v9 || v10)
      {
        manufacturer = HAENotificationsLog(v10);
        if (os_log_type_enabled(manufacturer, OS_LOG_TYPE_ERROR))
        {
          [HAENDefaults setAudioAccessoryIsConnectedToHeadphones:withName:];
        }

        getDeviceUID = 0;
      }

      else
      {
        manufacturer = [v9 manufacturer];
        serialNumber = [v9 serialNumber];
        getDeviceUID = [(HAENDefaults *)self _generateAccessoryKeyWithManufacture:manufacturer andSerialNumber:serialNumber];
      }
    }

    if (getDeviceUID)
    {
      [(HAENDefaults *)self updateAudioAccessoryIsConnectedToHeadphones:headphones WithKey:getDeviceUID];
    }

    else
    {
      v14 = HAENotificationsLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HAENDefaults updateAudioAccessoryIsConnectedToHeadphones:];
      }
    }
  }

  else
  {
    getDeviceUID = HAENotificationsLog(isHAENFeatureEnabled);
    if (os_log_type_enabled(getDeviceUID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25081E000, getDeviceUID, OS_LOG_TYPE_DEFAULT, "do not update accessory database since HAEN is disabled", buf, 2u);
    }
  }
}

- (void)removeAllAdapters
{
  v3 = HAENotificationsLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25081E000, v3, OS_LOG_TYPE_DEFAULT, "removing all adapters...", v6, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  v4 = *MEMORY[0x277CEFAE0];
  [(NSMutableDictionary *)self->_domainSettings removeObjectForKey:*MEMORY[0x277CEFAE0]];
  os_unfair_lock_unlock(&self->_lock);
  v5 = objc_alloc_init(MEMORY[0x277CEFB38]);
  [v5 removePreferenceFor:v4 notify:1];
}

- (void)wiredDeviceStatusDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v4 = *MEMORY[0x277CEFAB0];
  v5 = [v3 getPreferenceFor:*MEMORY[0x277CEFAB0]];

  os_unfair_lock_lock(&self->_lock);
  domainSettings = self->_domainSettings;
  if (v5)
  {
    [(NSMutableDictionary *)domainSettings setObject:v5 forKey:v4];
    os_unfair_lock_unlock(&self->_lock);
    -[HAENDefaults updateAudioAccessoryIsConnectedToHeadphones:](self, "updateAudioAccessoryIsConnectedToHeadphones:", [v5 BOOLValue]);
    v7 = +[HAENUnknownDeviceManager sharedInstance];
    bOOLValue = [v5 BOOLValue];
    v9 = v7;
  }

  else
  {
    [(NSMutableDictionary *)domainSettings removeObjectForKey:v4];
    os_unfair_lock_unlock(&self->_lock);
    v9 = +[HAENUnknownDeviceManager sharedInstance];
    v7 = v9;
    bOOLValue = 0;
  }

  [v9 unknownWiredConnectionDidChange:bOOLValue];

  v11 = HAENotificationsLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_25081E000, v11, OS_LOG_TYPE_DEFAULT, "wired device is headphone: %@ ", &v12, 0xCu);
  }
}

- (void)_updateSetting:(id)setting value:(id)value notify:(BOOL)notify
{
  notifyCopy = notify;
  settingCopy = setting;
  valueCopy = value;
  v9 = objc_alloc_init(MEMORY[0x277CEFB38]);
  v10 = [v9 setPreferenceFor:settingCopy value:valueCopy notify:notifyCopy];

  if (v10)
  {
    v12 = HAENotificationsLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HAENDefaults _updateSetting:value:notify:];
    }
  }
}

- (void)_registerNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, settingsChanged, notificationCopy, 0, 0);
  v7 = HAENotificationsLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = notificationCopy;
    _os_log_impl(&dword_25081E000, v7, OS_LOG_TYPE_DEFAULT, "HAENDefaults registered darwin notification: %@", &v8, 0xCu);
  }
}

+ (BOOL)HAENSupportedForCurrentDeviceClass
{
  if (HAENSupportedForCurrentDeviceClass_once != -1)
  {
    +[HAENDefaults HAENSupportedForCurrentDeviceClass];
  }

  return HAENSupportedForCurrentDeviceClass_ans;
}

void __50__HAENDefaults_HAENSupportedForCurrentDeviceClass__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MGGetStringAnswer();
  if ([v3 isEqualToString:@"iPhone"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"iPad") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"iPod"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v3 isEqualToString:@"Watch"];
  }

  HAENSupportedForCurrentDeviceClass_ans = v2;
}

void __44__HAENDefaults_isCurrentProcessMediaserverd__block_invoke()
{
  v0 = _os_feature_enabled_impl();
  v1 = @"mediaserverd";
  if (v0)
  {
    v1 = @"audiomxd";
  }

  v2 = MEMORY[0x277CCAC38];
  v3 = v1;
  v6 = [v2 processInfo];
  v4 = [v6 processName];
  v5 = [v4 isEqualToString:v3];

  isCurrentProcessMediaserverd_ans = v5;
}

void __32__HAENDefaults_isRunningCITests__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  isRunningCITests_ans = [v0 isEqualToString:@"xctest"];
}

- (void)getAudioAccessoryConnectionInfoWithKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getAudioAccessoryConnectionInfo
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end