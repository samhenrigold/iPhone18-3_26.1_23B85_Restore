@interface ENConfigurationManager
+ (BOOL)isRampModeEnabledFromServerResponse:(id)response;
+ (BOOL)serverResponse:(id)response isOnRampMode:(unint64_t)mode;
+ (BOOL)verifyAppleServerResponse:(id)response signatureHeader:(id)header;
+ (double)randomSelectPercentagePerDayFromServerResponse:(id)response;
+ (id)iCloudServerEndpoint;
+ (id)staticRegionForBundleID:(id)d;
+ (unint64_t)rampModeFromServerResponse:(id)response;
+ (void)_printServerConfiguration:(id)configuration;
- (BOOL)isInGracePeriodTransition;
- (BOOL)regionSupportsFeatures:(id)features featureFlags:(unsigned int)flags;
- (BOOL)updateRampModeForRegion:(id)region rampMode:(unint64_t)mode;
- (ENConfigurationManager)initWithDelegate:(id)delegate activeEntity:(id)entity;
- (ENConfigurationManagerDelegate)delegate;
- (uint64_t)_scheduleRegionConfigurationRefresh;
- (uint64_t)prefsChanged;
- (unint64_t)readCachedRampModeForRegion:(id)region;
- (void)_activate;
- (void)_fetchServerConfigurationsForRegion:(id)region userInitiated:(BOOL)initiated completion:(id)completion;
- (void)_processServerConfiguration:(id)configuration forceUpdate:(BOOL)update;
- (void)_reportErrorMetricForHTTPStatus:(int64_t)status;
- (void)_saveAndRemoveStaleConfigurations:(id)configurations region:(id)region error:(id)error;
- (void)_scheduleRegionConfigurationRefresh;
- (void)_serverFetchRegionConfiguration:(id)configuration userInitiated:(BOOL)initiated completion:(id)completion;
- (void)activate;
- (void)dealloc;
- (void)fetchServerConfigurationsForRegion:(id)region userInitiated:(BOOL)initiated withCompletion:(id)completion;
- (void)overrideRampModeForRegion:(id)region rampMode:(unint64_t)mode;
- (void)prefsChanged;
- (void)refreshServerConfigurationsUponProfileChange;
- (void)regionMonitor:(id)monitor authorizationStateDidChange:(unint64_t)change;
- (void)regionMonitor:(id)monitor regionDidChange:(id)change;
- (void)resetConfigurationCache;
- (void)resetConfigurationManager;
- (void)serverFetchRegionConfiguration:(id)configuration userInitiated:(BOOL)initiated completion:(id)completion;
- (void)setActiveEntity:(id)entity;
- (void)setRegionMonitor:(id)monitor;
- (void)setupGracePeriodFetchTimerWithDelay:(double)delay;
- (void)stopGracePeriodTimer;
- (void)updateRegionMonitorModeForCurrentRegion;
@end

@implementation ENConfigurationManager

- (ENConfigurationManager)initWithDelegate:(id)delegate activeEntity:(id)entity
{
  delegateCopy = delegate;
  entityCopy = entity;
  v14.receiver = self;
  v14.super_class = ENConfigurationManager;
  v8 = [(ENConfigurationManager *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.exposureNotification.configManager.serialQueue", v9);
    [(ENConfigurationManager *)v8 setSerialQueue:v10];

    v11 = objc_alloc_init(ENCloudServerChannel);
    [(ENConfigurationManager *)v8 setCloudServerChannel:v11];

    v12 = objc_alloc_init(ENConfigurationStore);
    [(ENConfigurationManager *)v8 setConfigurationStore:v12];

    [(ENConfigurationManager *)v8 setDelegate:delegateCopy];
    [(ENConfigurationManager *)v8 setActiveEntity:entityCopy];
  }

  return v8;
}

- (void)activate
{
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ENConfigurationManager_activate__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)_activate
{
  if (_MergedGlobals_0 <= 50 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager _activate];
  }

  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();
  CFPrefs_RemoveValue();

  [(ENConfigurationManager *)self _scheduleRegionConfigurationRefresh];
}

- (void)dealloc
{
  selfCopy = self;
  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(ENConfigurationManager *)self dealloc];
    }
  }

  [(ENRegionMonitor *)selfCopy->_regionMonitor setDelegate:0];
  regionMonitor = selfCopy->_regionMonitor;
  selfCopy->_regionMonitor = 0;

  serverConfigurationFetchTimer = [(ENConfigurationManager *)selfCopy serverConfigurationFetchTimer];
  [serverConfigurationFetchTimer invalidate];

  [(ENConfigurationManager *)selfCopy setServerConfigurationFetchTimer:0];
  v6.receiver = selfCopy;
  v6.super_class = ENConfigurationManager;
  [(ENConfigurationManager *)&v6 dealloc];
}

- (void)_reportErrorMetricForHTTPStatus:(int64_t)status
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (status <= 0x3E7)
  {
    v6 = (status + 10000);
  }

  else
  {
    v6 = 10000;
  }

  [WeakRetained configurationManager:self errorDetected:v6];
}

- (void)serverFetchRegionConfiguration:(id)configuration userInitiated:(BOOL)initiated completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__ENConfigurationManager_serverFetchRegionConfiguration_userInitiated_completion___block_invoke;
  v13[3] = &unk_278FD24C8;
  v13[4] = self;
  v14 = configurationCopy;
  initiatedCopy = initiated;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = configurationCopy;
  dispatch_async(serialQueue, v13);
}

- (void)_serverFetchRegionConfiguration:(id)configuration userInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  configurationCopy = configuration;
  completionCopy = completion;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    v10 = "no";
    if (initiatedCopy)
    {
      v10 = "yes";
    }

    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:]", 30, "Fetching server configuration for region: %@ userInitiated: %s", configurationCopy, v10);
  }

  countryCode = [configurationCopy countryCode];

  if (!countryCode)
  {
    [ENConfigurationManager _serverFetchRegionConfiguration:completionCopy userInitiated:? completion:?];
    goto LABEL_40;
  }

  countryCode2 = [configurationCopy countryCode];
  uppercaseString = [countryCode2 uppercaseString];

  Int64 = CFPrefs_GetInt64();
  if (!Int64)
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager _serverFetchRegionConfiguration:uppercaseString userInitiated:? completion:?];
    }

    v19 = +[ENConfigurationManager iCloudServerEndpoint];
    v56 = [v19 URLByAppendingPathComponent:@"/v2/app/config"];

    dictionary = [MEMORY[0x277CBEB30] dictionary];
    date = [MEMORY[0x277CBEAA0] date];
    [date timeIntervalSince1970];
    v23 = (v22 * 1000.0);

    v55 = [MEMORY[0x277CCACA0] stringWithFormat:@"%lld", v23];
    [dictionary setObject:? forKey:?];
    v13UppercaseString = [uppercaseString uppercaseString];
    [dictionary setObject:v13UppercaseString forKey:@"x-apple-ct-region-identifier"];

    configurationStore = [(ENConfigurationManager *)self configurationStore];
    v26 = [configurationStore regionHashForRegion:configurationCopy];

    if (v26)
    {
      [dictionary setObject:v26 forKey:@"x-apple-ct-region-hash"];
    }

    string = [MEMORY[0x277CCAB60] string];
    v28 = GestaltCopyAnswer();
    v29 = v28;
    if (v28)
    {
      [string appendFormat:@"%@/", v28];
    }

    v30 = GestaltCopyAnswer();
    if (v30)
    {
      [string appendString:v30];
    }

    if ([string length])
    {
      [dictionary setObject:string forKey:@"x-apple-en-os-version"];
    }

    v53 = v30;
    v54 = v29;
    if (CFPrefs_GetInt64())
    {
      [dictionary setObject:@"true" forKey:@"x-apple-test-application"];
    }

    regionRampModeOverride = [(ENConfigurationManager *)self regionRampModeOverride];
    v32 = [regionRampModeOverride objectForKeyedSubscript:configurationCopy];

    if (v32)
    {
      regionRampModeOverride2 = [(ENConfigurationManager *)self regionRampModeOverride];
      v34 = [regionRampModeOverride2 objectForKeyedSubscript:configurationCopy];
      unsignedIntegerValue = [v34 unsignedIntegerValue];

      regionRampModeOverride3 = [(ENConfigurationManager *)self regionRampModeOverride];
      [regionRampModeOverride3 setObject:0 forKeyedSubscript:configurationCopy];

      if (!unsignedIntegerValue)
      {
LABEL_35:
        v41 = [ENCloudNetworkRequest requestWithURL:v56 httpMethod:0 headers:dictionary parameters:MEMORY[0x277CBEC08] andBody:0];
        delegate = [(ENConfigurationManager *)self delegate];
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:v41 userInitiated:? completion:?];
        }

        cloudServerChannel = [(ENConfigurationManager *)self cloudServerChannel];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3;
        v57[3] = &unk_278FD28B0;
        v57[4] = v41;
        v57[5] = delegate;
        v59 = completionCopy;
        v57[6] = self;
        v58 = configurationCopy;
        [cloudServerChannel enqueueRequest:v41 withCompletion:v57];

        v18 = v56;
        goto LABEL_39;
      }

LABEL_34:
      v40 = [MEMORY[0x277CCACA0] stringWithFormat:@"%lu", unsignedIntegerValue];
      [dictionary setObject:v40 forKey:@"x-apple-ramp-mode"];

      goto LABEL_35;
    }

    v37 = CFPrefs_GetInt64();
    if (v37)
    {
      if (_MergedGlobals_0 <= 30)
      {
        if (_MergedGlobals_0 != -1 || (v37 = _LogCategory_Initialize(), v37))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:v37 userInitiated:v38 completion:v39];
        }
      }

      unsignedIntegerValue = 1;
      goto LABEL_34;
    }

    if (_MergedGlobals_0 <= 30)
    {
      if (_MergedGlobals_0 != -1 || (v37 = _LogCategory_Initialize(), v37))
      {
        [ENConfigurationManager _serverFetchRegionConfiguration:v37 userInitiated:v38 completion:v39];
      }
    }

    activeEntity = [(ENConfigurationManager *)self activeEntity];
    entity = [activeEntity entity];
    region = [entity region];

    if (!region)
    {
      goto LABEL_64;
    }

    activeEntity2 = [(ENConfigurationManager *)self activeEntity];
    entity2 = [activeEntity2 entity];
    region2 = [entity2 region];
    v49 = [(ENConfigurationManager *)self readCachedRampModeForRegion:region2];

    if (v49 > 1)
    {
      if (v49 == 2)
      {
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:? userInitiated:? completion:?];
        }

LABEL_84:
        unsignedIntegerValue = 2;
        goto LABEL_34;
      }

      if (v49 == 3)
      {
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:? userInitiated:? completion:?];
        }

        unsignedIntegerValue = 3;
        goto LABEL_34;
      }

      goto LABEL_64;
    }

    if (v49)
    {
      if (v49 != 1)
      {
        goto LABEL_64;
      }

      if (_MergedGlobals_0 > 30)
      {
        goto LABEL_67;
      }

      if (_MergedGlobals_0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_64;
      }

      v50 = "activeEntity %@ was on profile-select, but profile got uninstalled, will fall back to check if requested region has cached ramp mode";
    }

    else
    {
      if (_MergedGlobals_0 > 30)
      {
        goto LABEL_67;
      }

      if (_MergedGlobals_0 == -1 && !_LogCategory_Initialize())
      {
LABEL_64:
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:configurationCopy userInitiated:? completion:?];
        }

LABEL_67:
        v51 = [(ENConfigurationManager *)self readCachedRampModeForRegion:configurationCopy];
        if (!v51)
        {
          goto LABEL_80;
        }

        unsignedIntegerValue = v51;
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:]", 30, "Found cached ramp mode for region %@ : %lu", configurationCopy, unsignedIntegerValue);
        }

        if (unsignedIntegerValue != 1)
        {
          if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:]", 30, "Found valid cached ramp mode for region %@ : %lu, requesting with this mode", configurationCopy, unsignedIntegerValue);
          }

          goto LABEL_34;
        }

        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:configurationCopy userInitiated:? completion:?];
          if (!initiatedCopy)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_80:
          if (!initiatedCopy)
          {
            goto LABEL_35;
          }
        }

        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _serverFetchRegionConfiguration:configurationCopy userInitiated:? completion:?];
        }

        goto LABEL_84;
      }

      v50 = "activeEntity %@ is not on ramp, will fall back to check if requested region has cached ramp mode";
    }

    [ENConfigurationManager _serverFetchRegionConfiguration:v50 userInitiated:? completion:?];
    goto LABEL_64;
  }

  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (Int64 = _LogCategory_Initialize(), Int64))
    {
      [ENConfigurationManager _serverFetchRegionConfiguration:v15 userInitiated:v16 completion:?];
    }
  }

  configurationStore2 = [(ENConfigurationManager *)self configurationStore];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke;
  v60[3] = &unk_278FD27B8;
  v60[4] = self;
  v61 = completionCopy;
  [configurationStore2 allCachedServerResponseConfigurationsWithCompletion:v60];

  v18 = v61;
LABEL_39:

LABEL_40:
}

void __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_2;
  v6[3] = &unk_278FD1490;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_2(uint64_t a1)
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_2_cold_1(a1);
  }

  if (![*(a1 + 32) count])
  {
    NSErrorF(@"ENConfigurationManagerErrorDomain", 5, "Unable to find Server Configurations");
    objc_claimAutoreleasedReturnValue();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  return MEMORY[0x2821F9730]();
}

void __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    if (a2 == 200 && v10)
    {
      if ([v10 length])
      {
        v14 = [v9 objectForKeyedSubscript:@"Content-Type"];
        v15 = [v14 containsString:@"application/json"];

        if (v15)
        {
          if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
          {
            __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_1(v10);
          }

          v16 = [v9 objectForKeyedSubscript:@"x-apple-ct-region-identifier"];
          v17 = [v9 objectForKeyedSubscript:@"x-apple-pt-server-sign1"];
          v18 = v10;
          if ([ENConfigurationManager verifyAppleServerResponse:v18 signatureHeader:v17])
          {
            v19 = [*(a1 + 56) countryCode];
            v20 = [v16 isEqualToString:v19];

            if (v20)
            {
              v21 = [v9 objectForKeyedSubscript:@"x-apple-ct-region-hash"];
              v22 = [*(a1 + 48) configurationStore];
              v23 = *(a1 + 56);
              v53 = 0;
              v51 = v21;
              LOBYTE(v21) = [v22 saveRegionHash:v21 region:v23 error:&v53];
              v50 = v53;

              if ((v21 & 1) == 0 && dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
              {
                __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_3((a1 + 56), v51);
              }

              v24 = [MEMORY[0x277CCAA98] JSONObjectWithData:v18 options:0 error:0];
              v25 = +[ENLoggingPrefs sharedENLoggingPrefs];
              v26 = [v25 isSensitiveLoggingAllowed];

              if (v26 && _MergedGlobals_0 <= 10 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
              {
                __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_4(v24);
              }

              v27 = [v24 objectForKeyedSubscript:@"subdivisions"];
              objc_opt_class();
              v52 = v27;
              if (objc_opt_isKindOfClass())
              {
                v28 = [*(a1 + 48) configurationStore];
                [v28 saveCountrySubdivisionList:v52 region:*(a1 + 56) error:0];
              }

              v29 = [v24 objectForKeyedSubscript:@"appConfigs"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v29 count])
              {
                v30 = *(a1 + 64);
                if (v30)
                {
                  (*(v30 + 16))(v30, v29, 0);
                }
              }

              else
              {
                v49 = v24;
                v47 = *(a1 + 64);
                if (v47)
                {
                  v48 = NSErrorF(@"ENConfigurationManagerErrorDomain", 3, "Invalid Server Configuration Response");
                  (*(v47 + 16))(v47, 0, v48);
                }

                [*(a1 + 40) configurationManager:*(a1 + 48) errorDetected:6002];
                v24 = v49;
              }

              goto LABEL_57;
            }

            if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
            {
              __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_2((a1 + 56), v16);
            }

            v45 = *(a1 + 64);
            if (v45)
            {
              v46 = NSErrorF(@"ENConfigurationManagerErrorDomain", 2, "Invalid Country Code in response: %@", v16);
              (*(v45 + 16))(v45, 0, v46);
            }

            v42 = *(a1 + 40);
            v43 = *(a1 + 48);
            v44 = 6004;
          }

          else
          {
            v40 = *(a1 + 64);
            if (v40)
            {
              v41 = NSErrorF(@"ENConfigurationManagerErrorDomain", 3, "Unable to verify server configuration signature");
              (*(v40 + 16))(v40, 0, v41);
            }

            v42 = *(a1 + 40);
            v43 = *(a1 + 48);
            v44 = 6001;
          }

          [v42 configurationManager:v43 errorDetected:v44];
LABEL_57:

          goto LABEL_58;
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 503:
          v16 = [v9 objectForKeyedSubscript:@"Retry-After"];
          v38 = *(a1 + 64);
          if (v38)
          {
            v39 = NSErrorF(@"ENConfigurationManagerErrorDomain", 4, "Config Fetch Request Throttled for %@", v16);
            (*(v38 + 16))(v38, 0, v39);
          }

          [*(a1 + 48) _reportErrorMetricForHTTPStatus:503];
          goto LABEL_58;
        case 404:
          v37 = *(a1 + 64);
          if (!v37)
          {
            goto LABEL_59;
          }

          v16 = NSErrorF(@"ENConfigurationManagerErrorDomain", 5, "No Server Configuration available");
          (*(v37 + 16))(v37, 0, v16);
LABEL_58:

          goto LABEL_59;
        case 304:
          v31 = *(a1 + 64);
          if (v31)
          {
            v32 = NSErrorF(@"ENConfigurationManagerErrorDomain", 6, "Config Not Modified");
            (*(v31 + 16))(v31, 0, v32);
          }

          v33 = *(a1 + 48);
          v34 = 304;
          goto LABEL_37;
      }
    }

    v35 = *(a1 + 64);
    if (v35)
    {
      v36 = NSErrorF(@"ENConfigurationManagerErrorDomain", 2, "Unknown Error");
      (*(v35 + 16))(v35, 0, v36);
    }

    v33 = *(a1 + 48);
    v34 = a2;
LABEL_37:
    [v33 _reportErrorMetricForHTTPStatus:v34];
    goto LABEL_59;
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = NSErrorNestedF(@"ENConfigurationManagerErrorDomain", 2, v11, "Network error fetching server configuration for request - %@", *(a1 + 32));
    (*(v12 + 16))(v12, 0, v13);
  }

  [*(a1 + 40) configurationManager:*(a1 + 48) errorDetected:6000];
LABEL_59:
}

- (BOOL)updateRampModeForRegion:(id)region rampMode:(unint64_t)mode
{
  regionCopy = region;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager updateRampModeForRegion:rampMode:]", 30, "### updateRampModeForRegion: %@ rampMode: %lu", regionCopy, mode);
  }

  if (!regionCopy)
  {
    [ENConfigurationManager updateRampModeForRegion:? rampMode:?];
    v10 = v14;
    goto LABEL_23;
  }

  configurationStore = [(ENConfigurationManager *)self configurationStore];
  v8 = [configurationStore configurationForRegion:regionCopy];

  if (v8)
  {
    if (mode <= 3)
    {
      [v8 setEnRampMode:mode];
      configurationStore2 = [(ENConfigurationManager *)self configurationStore];
      v13 = 0;
      v10 = [configurationStore2 saveRegionConfiguration:v8 error:&v13];
      v11 = v13;

      if ((v10 & 1) == 0 && _MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
      {
        [ENConfigurationManager updateRampModeForRegion:v11 rampMode:?];
      }

      goto LABEL_22;
    }

    if (_MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager updateRampModeForRegion:rampMode:]", 90, "### rampMode for region %@ is not updated to %lu because it's not supported.", regionCopy, mode);
    }
  }

  else if (_MergedGlobals_0 <= 40 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager updateRampModeForRegion:regionCopy rampMode:?];
  }

  v10 = 0;
LABEL_22:

LABEL_23:
  return v10;
}

- (BOOL)regionSupportsFeatures:(id)features featureFlags:(unsigned int)flags
{
  v4 = *&flags;
  featuresCopy = features;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager regionSupportsFeatures:featureFlags:]", 30, "### regionSupportsFeatures: Check if region %@ supports featureFlags: %lu", featuresCopy, v4);
  }

  if (featuresCopy)
  {
    configurationStore = [(ENConfigurationManager *)self configurationStore];
    v8 = [configurationStore serverConfigurationForRegion:featuresCopy];

    if (v8)
    {
      v9 = [v8 supportsFeatures:v4];
    }

    else
    {
      [ENConfigurationManager regionSupportsFeatures:featuresCopy featureFlags:&v11];
      v9 = v11;
    }
  }

  else
  {
    [ENConfigurationManager regionSupportsFeatures:? featureFlags:?];
    v9 = v12;
  }

  return v9;
}

- (unint64_t)readCachedRampModeForRegion:(id)region
{
  regionCopy = region;
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager readCachedRampModeForRegion:regionCopy];
    if (regionCopy)
    {
      goto LABEL_5;
    }

LABEL_14:
    [ENConfigurationManager readCachedRampModeForRegion:?];
    enRampMode = v9;
    goto LABEL_12;
  }

  if (!regionCopy)
  {
    goto LABEL_14;
  }

LABEL_5:
  configurationStore = [(ENConfigurationManager *)self configurationStore];
  v6 = [configurationStore configurationForRegion:regionCopy];

  if (v6)
  {
    enRampMode = [v6 enRampMode];
  }

  else
  {
    if (_MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager readCachedRampModeForRegion:regionCopy];
    }

    enRampMode = 0;
  }

LABEL_12:
  return enRampMode;
}

+ (id)iCloudServerEndpoint
{
  v2 = [MEMORY[0x277CBEBC8] URLWithString:@"https://gateway.icloud.com/enservice"];
  if (CFPrefs_GetInt64())
  {
    v3 = IsAppleInternalBuild();
    if (v3)
    {
      if (_MergedGlobals_0 <= 30)
      {
        if (_MergedGlobals_0 != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          +[(ENConfigurationManager *)v3];
        }
      }

      v6 = [MEMORY[0x277CBEBC8] URLWithString:@"https://gateway-ic3.icloud.com/enservice"];

      v2 = v6;
    }
  }

  return v2;
}

- (void)_scheduleRegionConfigurationRefresh
{
  countryCode = [self countryCode];
  LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _scheduleRegionConfigurationRefresh]", 30, "Scheduling %@'s Server Configuration Refresh - %f", countryCode, *&a2);
}

void __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_2_cold_1(v3, v4, v5);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained serialQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_3;
  v9[3] = &unk_278FD1030;
  objc_copyWeak(&v10, (a1 + 40));
  v9[4] = *(a1 + 32);
  dispatch_async(v8, v9);

  objc_destroyWeak(&v10);
}

void __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_3(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  val = objc_loadWeakRetained((a1 + 40));
  v1 = [val activeEntity];
  v2 = [v1 entity];
  v3 = [v2 region];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v18 = 0;
  }

  else
  {
    v6 = [val regionMonitor];
    v28 = 0;
    v7 = [v6 getCurrentRegionVisitWithError:&v28];
    v18 = v28;
    v5 = [v7 region];
  }

  if (v5)
  {
    objc_initWeak(&location, val);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4;
    v25[3] = &unk_278FD28D8;
    objc_copyWeak(&v26, &location);
    v25[4] = v5;
    [val fetchServerConfigurationsForRegion:v5 userInitiated:0 withCompletion:v25];
    v8 = [*(a1 + 32) configurationStore];
    v9 = [v8 allCachedCountries];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v5 countryCode];
          v16 = [v14 isEqualToString:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v14];
            if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _scheduleRegionConfigurationRefresh]_block_invoke_3", 30, "refreshing server config for cached region: %@", v17, v18);
            }

            [*(a1 + 32) fetchServerConfigurationsForRegion:v17 userInitiated:0 withCompletion:&__block_literal_global_194];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v11);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_3_cold_1(v18);
  }
}

void __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v9)
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4_cold_1(v9);
    }
  }

  else
  {
    v5 = [WeakRetained configurationStore];
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = [v5 serverConfigurationForRegion:v7];

    if (v8)
    {
      if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
      {
        __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4_cold_2(v6);
      }

      [WeakRetained _processServerConfiguration:v8 forceUpdate:1];
    }

    else if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_4_cold_3(v6);
    }
  }
}

- (void)resetConfigurationCache
{
  selfCopy = self;
  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(ENConfigurationManager *)self resetConfigurationCache];
    }
  }

  configurationStore = [(ENConfigurationManager *)selfCopy configurationStore];
  [configurationStore resetStore];

  [(ENConfigurationManager *)selfCopy resetConfigurationManager];
}

- (void)resetConfigurationManager
{
  selfCopy = self;
  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(ENConfigurationManager *)self resetConfigurationManager];
    }
  }

  serialQueue = [(ENConfigurationManager *)selfCopy serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ENConfigurationManager_resetConfigurationManager__block_invoke;
  block[3] = &unk_278FD0F90;
  block[4] = selfCopy;
  dispatch_async(serialQueue, block);
}

uint64_t __51__ENConfigurationManager_resetConfigurationManager__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConfigurationFetchTimer];
  [v2 invalidate];

  [*(a1 + 32) setServerConfigurationFetchTimer:0];
  v3 = *(a1 + 32);

  return [v3 stopGracePeriodTimer];
}

+ (void)_printServerConfiguration:(id)configuration
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = configurationCopy;
  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (configurationCopy = _LogCategory_Initialize(), configurationCopy))
    {
      [(ENConfigurationManager *)configurationCopy _printServerConfiguration:v4, v5];
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [v6 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        if (_MergedGlobals_0 <= 30)
        {
          v12 = *(*(&v14 + 1) + 8 * v11);
          if (_MergedGlobals_0 != -1 || _LogCategory_Initialize())
          {
            [(ENConfigurationManager *)v6 _printServerConfiguration:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v13 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      v9 = v13;
    }

    while (v13);
  }
}

- (BOOL)isInGracePeriodTransition
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__ENConfigurationManager_isInGracePeriodTransition__block_invoke;
  v5[3] = &unk_278FD2370;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __51__ENConfigurationManager_isInGracePeriodTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) gracePeriodConfigurationFetchTimer];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)setupGracePeriodFetchTimerWithDelay:(double)delay
{
  selfCopy = self;
  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(ENConfigurationManager *)self setupGracePeriodFetchTimerWithDelay:a2, v3];
    }
  }

  gracePeriodConfigurationFetchTimer = [(ENConfigurationManager *)selfCopy gracePeriodConfigurationFetchTimer];

  if (gracePeriodConfigurationFetchTimer)
  {
    gracePeriodConfigurationFetchTimer2 = [(ENConfigurationManager *)selfCopy gracePeriodConfigurationFetchTimer];
    [gracePeriodConfigurationFetchTimer2 invalidate];

    [(ENConfigurationManager *)selfCopy setGracePeriodConfigurationFetchTimer:0];
  }

  serialQueue = [(ENConfigurationManager *)selfCopy serialQueue];
  regionMonitor = [(ENConfigurationManager *)selfCopy regionMonitor];
  objc_initWeak(&location, selfCopy);
  v10 = [ENXPCTimer alloc];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke;
  v17 = &unk_278FD2950;
  v11 = serialQueue;
  v18 = v11;
  objc_copyWeak(&v20, &location);
  v12 = regionMonitor;
  v19 = v12;
  v13 = [(ENXPCTimer *)v10 initWithName:@"com.apple.bluetooth.exposureNotification.gracePeriodConfigurationFetchTimer" delay:1 gracePeriod:193 priority:&v14 options:delay block:30.0];
  [(ENConfigurationManager *)selfCopy setGracePeriodConfigurationFetchTimer:v13, v14, v15, v16, v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_cold_1(v3, v4, v5);
    }
  }

  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2;
  block[3] = &unk_278FD2928;
  v10 = v6;
  v8 = v6;
  objc_copyWeak(&v12, (a1 + 48));
  v11 = *(a1 + 40);
  dispatch_async(v7, block);

  objc_destroyWeak(&v12);
}

void __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2(id *a1)
{
  [a1[4] invalidate];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained stopGracePeriodTimer];
  CFDataGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  if ([v3 length])
  {
    v18 = 0;
    v4 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v18];
    v5 = v18;
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2_cold_1(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = [v4 entity];
  v7 = [v6 region];

  v8 = [a1[5] getCurrentRegionVisitWithError:0];
  v9 = [v8 region];

  v10 = v7;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
  }

  else
  {
    if ((v10 != 0) == (v11 == 0))
    {

LABEL_17:
      v14 = [WeakRetained configurationStore];
      v15 = [v14 serverConfigurationForRegion:v12];

      if (v15)
      {
        v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v17 = [v16 isSensitiveLoggingAllowed];

        if (v17 && _MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2_cold_2(v15);
        }

        [WeakRetained _processServerConfiguration:v15 forceUpdate:1];
      }

      else if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
      {
        __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2_cold_3();
      }

      goto LABEL_27;
    }

    v13 = [v10 isEqual:v11];

    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __62__ENConfigurationManager_setupGracePeriodFetchTimerWithDelay___block_invoke_2_cold_4();
  }

LABEL_27:
}

- (void)stopGracePeriodTimer
{
  gracePeriodConfigurationFetchTimer = [(ENConfigurationManager *)self gracePeriodConfigurationFetchTimer];

  if (gracePeriodConfigurationFetchTimer)
  {
    if (_MergedGlobals_0 <= 30)
    {
      if (_MergedGlobals_0 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        [(ENConfigurationManager *)v4 stopGracePeriodTimer];
      }
    }

    gracePeriodConfigurationFetchTimer2 = [(ENConfigurationManager *)self gracePeriodConfigurationFetchTimer];
    [gracePeriodConfigurationFetchTimer2 invalidate];

    [(ENConfigurationManager *)self setGracePeriodConfigurationFetchTimer:0];
  }

  CFPrefs_RemoveValue();
}

- (void)_processServerConfiguration:(id)configuration forceUpdate:(BOOL)update
{
  updateCopy = update;
  configurationCopy = configuration;
  activeEntity = [(ENConfigurationManager *)self activeEntity];
  entity = [activeEntity entity];
  region = [entity region];

  if (region)
  {
    configurationStore = [(ENConfigurationManager *)self configurationStore];
    v10 = [configurationStore serverConfigurationForRegion:region];
  }

  else
  {
    v10 = 0;
  }

  [(ENConfigurationManager *)self updateRegionMonitorModeForCurrentRegion];
  v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v11 isSensitiveLoggingAllowed];

  if ((isSensitiveLoggingAllowed & 1) != 0 && _MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager _processServerConfiguration:configurationCopy forceUpdate:updateCopy];
  }

  if ([v10 enEnabled])
  {
    if (updateCopy)
    {
LABEL_20:
      configurationStore2 = [(ENConfigurationManager *)self configurationStore];
      region2 = [configurationCopy region];
      v21 = [configurationStore2 configurationForRegion:region2];

      delegate = [(ENConfigurationManager *)self delegate];
      [delegate configurationManager:self exposureNotificationRegionConfigurationChanged:v21];

      goto LABEL_28;
    }
  }

  else if (([configurationCopy enEnabled] & 1) != 0 || updateCopy)
  {
    goto LABEL_20;
  }

  gracePeriodConfigurationFetchTimer = [(ENConfigurationManager *)self gracePeriodConfigurationFetchTimer];

  v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed2 = [v14 isSensitiveLoggingAllowed];

  if (gracePeriodConfigurationFetchTimer)
  {
    [(ENConfigurationManager *)isSensitiveLoggingAllowed2 _processServerConfiguration:configurationCopy forceUpdate:?];
  }

  else
  {
    v16 = configurationCopy;
    if (isSensitiveLoggingAllowed2)
    {
      if (_MergedGlobals_0 <= 30)
      {
        if (_MergedGlobals_0 != -1 || (v17 = _LogCategory_Initialize(), v16 = configurationCopy, v17))
        {
          [ENConfigurationManager _processServerConfiguration:v16 forceUpdate:?];
          v16 = configurationCopy;
        }
      }
    }

    if ([v16 enEnabled])
    {
      [configurationCopy regionTransitionGracePeriod];
    }

    else
    {
      [configurationCopy regionDisabledTransitionGracePeriod];
    }

    v23 = v18;
    if (IsAppleInternalBuild())
    {
      CFPrefs_GetDouble();
      if (v24 > 0.0)
      {
        CFPrefs_GetDouble();
        v23 = v25;
        if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          [ENConfigurationManager _processServerConfiguration:v23 forceUpdate:?];
        }
      }
    }

    date = [MEMORY[0x277CBEAA0] date];
    v27 = [date dateByAddingTimeInterval:v23];
    [v27 timeIntervalSince1970];
    CFPrefs_SetDouble();

    [(ENConfigurationManager *)self setupGracePeriodFetchTimerWithDelay:v23];
  }

LABEL_28:
}

- (void)refreshServerConfigurationsUponProfileChange
{
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke;
  v5[3] = &unk_278FD11C8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(serialQueue, v5);
}

void __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) activeEntity];
  v2 = [v1 entity];
  v3 = [v2 region];

  if (v3)
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_1(v3);
    }

    [*(a1 + 32) fetchServerConfigurationsForRegion:v3 userInitiated:0 withCompletion:&__block_literal_global_224];
  }

  v4 = [*(a1 + 32) regionMonitor];
  v32 = 0;
  v5 = [v4 getCurrentRegionVisitWithError:&v32];
  v23 = v32;
  v6 = [v5 region];

  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_2(a1, v6, v23);
  }

  if (v6 && ([v6 isEqual:v3] & 1) == 0)
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_3(v6);
    }

    v7 = [v6 countryCode];
    v8 = [v3 countryCode];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      [*(a1 + 32) updateRegionMonitorModeForCurrentRegion];
      v10 = [*(a1 + 32) configurationStore];
      v11 = [v10 serverConfigurationForRegion:v6];

      if (v11)
      {
        [*(a1 + 32) _processServerConfiguration:v11 forceUpdate:1];
      }
    }

    else
    {
      objc_initWeak(&location, *(a1 + 32));
      v12 = *(a1 + 32);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_3;
      v29[3] = &unk_278FD28D8;
      objc_copyWeak(&v30, &location);
      v29[4] = v6;
      [v12 fetchServerConfigurationsForRegion:v6 userInitiated:0 withCompletion:v29];
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }
  }

  v13 = [*(a1 + 32) configurationStore];
  v14 = [v13 allCachedCountries];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = [v3 countryCode];
        if (([v19 isEqualToString:v20] & 1) == 0)
        {
          v21 = [v6 countryCode];
          v22 = [v19 isEqualToString:v21];

          if (v22)
          {
            continue;
          }

          v20 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v19];
          if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
          {
            __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_4(v20);
          }

          [*(a1 + 32) fetchServerConfigurationsForRegion:v20 userInitiated:0 withCompletion:&__block_literal_global_230];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }
}

void __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateRegionMonitorModeForCurrentRegion];
  if (v7)
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager refreshServerConfigurationsUponProfileChange]_block_invoke_3", 90, "Unable to fetch server configuration for %@ - %@", *(a1 + 32), v7);
    }
  }

  else
  {
    v5 = [WeakRetained configurationStore];
    v6 = [v5 serverConfigurationForRegion:*(a1 + 32)];

    if (v6)
    {
      [WeakRetained _processServerConfiguration:v6 forceUpdate:1];
    }
  }
}

- (void)fetchServerConfigurationsForRegion:(id)region userInitiated:(BOOL)initiated withCompletion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__ENConfigurationManager_fetchServerConfigurationsForRegion_userInitiated_withCompletion___block_invoke;
  v13[3] = &unk_278FD24C8;
  v13[4] = self;
  v14 = regionCopy;
  initiatedCopy = initiated;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = regionCopy;
  dispatch_async(serialQueue, v13);
}

- (void)_fetchServerConfigurationsForRegion:(id)region userInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  regionCopy = region;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__ENConfigurationManager__fetchServerConfigurationsForRegion_userInitiated_completion___block_invoke;
  v12[3] = &unk_278FD17B0;
  v12[4] = self;
  v13 = regionCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = regionCopy;
  [(ENConfigurationManager *)self _serverFetchRegionConfiguration:v11 userInitiated:initiatedCopy completion:v12];
}

void __87__ENConfigurationManager__fetchServerConfigurationsForRegion_userInitiated_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__ENConfigurationManager__fetchServerConfigurationsForRegion_userInitiated_completion___block_invoke_2;
  block[3] = &unk_278FD2978;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v15 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __87__ENConfigurationManager__fetchServerConfigurationsForRegion_userInitiated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _saveAndRemoveStaleConfigurations:*(a1 + 40) region:*(a1 + 48) error:*(a1 + 56)];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_saveAndRemoveStaleConfigurations:(id)configurations region:(id)region error:(id)error
{
  v64 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  regionCopy = region;
  errorCopy = error;
  val = self;
  delegate = [(ENConfigurationManager *)self delegate];
  if (errorCopy)
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      [ENConfigurationManager _saveAndRemoveStaleConfigurations:regionCopy region:errorCopy error:?];
    }

    configurationStore = [(ENConfigurationManager *)self configurationStore];
    v9 = [configurationStore configurationForRegion:regionCopy];
    if (v9)
    {
      v10 = errorCopy;
      domain = [v10 domain];
      if ([domain isEqualToString:@"ENConfigurationManagerErrorDomain"])
      {
        code = [v10 code];

        if (code == 5)
        {
          configurationStore2 = [(ENConfigurationManager *)val configurationStore];
          v62 = 0;
          v14 = [configurationStore2 removeConfigurationsForRegion:regionCopy includingSubdivisions:1 error:&v62];
          v15 = v62;

          if (v14)
          {
            [delegate configurationManager:val exposureNotificationRegionConfigurationRemovedForRegion:regionCopy];
          }

          else if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 90, "Error Removing %@'s Server Configuration: %@", regionCopy, v15);
          }
        }

        goto LABEL_118;
      }
    }

    goto LABEL_118;
  }

  if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
  {
    [ENConfigurationManager _saveAndRemoveStaleConfigurations:configurationsCopy region:regionCopy error:?];
  }

  context = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  configurationStore3 = [(ENConfigurationManager *)self configurationStore];
  countryCode = [regionCopy countryCode];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke;
  v56[3] = &unk_278FD29C8;
  objc_copyWeak(&v60, &location);
  v18 = configurationsCopy;
  v57 = v18;
  v19 = regionCopy;
  v58 = v19;
  v59 = delegate;
  [configurationStore3 enumerateCachedRegionServerConfigurationsWithCountryCode:countryCode handler:v56];

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_3;
  v55[3] = &unk_278FD29F0;
  v55[4] = val;
  v55[5] = delegate;
  v49 = MEMORY[0x24C214430](v55);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v18;
  v20 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v20)
  {
    v21 = 0;
    v22 = *v52;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v52 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v51 + 1) + 8 * v23);
        v25 = [objc_alloc(MEMORY[0x277CC5CD0]) initWithServerResponseDictionary:v24];
        if (v25)
        {
          if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
          {
            region = [v25 region];
            LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "Examining serverResponse for %@", region);
          }

          if ([ENConfigurationManager isRampModeEnabledFromServerResponse:v24])
          {
            region2 = [v25 region];
            v28 = [region2 isEqual:v19];

            if (v28)
            {
              v29 = [ENConfigurationManager rampModeFromServerResponse:v24];
              if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "intended region %@ is on ramp mode: %lu", v19, v29);
              }

              switch(v29)
              {
                case 1uLL:
                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "saving server response for region %@, ramp mode: %lu", v19, 1);
                  }

                  v49[2](v49, v24);
                  v40 = [(ENConfigurationManager *)val readCachedRampModeForRegion:v19];
                  if (v40 != 1 && _MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 90, "Weird: Previously cached ramp mode (%lu) is not profile-select when server responded with profile-select", v40);
                  }

                  break;
                case 2uLL:
                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "saving server response for region %@, ramp mode: %lu", v19, 2);
                  }

                  v49[2](v49, v24);
                  v39 = [(ENConfigurationManager *)val readCachedRampModeForRegion:v19];
                  if (v39 != 2 && _MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 90, "Weird: Previously cached ramp mode (%lu) is not manual-select when server responded with manual-select", v39);
                  }

                  break;
                case 3uLL:
                  configurationStore4 = [(ENConfigurationManager *)val configurationStore];
                  region3 = [v25 region];
                  v36 = [configurationStore4 serverConfigurationForRegion:region3];

                  if (v36)
                  {
                    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "This device has already been randomly selected before for %@, refreshing server response", v19);
                    }

                    goto LABEL_88;
                  }

                  [ENConfigurationManager randomSelectPercentagePerDayFromServerResponse:v24];
                  v38 = v37;
                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "Running random algorithm for %@, probability: %f", v19, *&v38);
                  }

                  v41 = vcvtd_n_f64_u32(arc4random(), 0x20uLL);
                  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "DiceRoll: %f", v41);
                  }

                  if (v41 < v38)
                  {
                    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "Device won the lottery for %@, saving server response ", v19);
                    }

LABEL_88:
                    v49[2](v49, v24);
                    [(ENConfigurationManager *)val updateRampModeForRegion:v19 rampMode:3];
                  }

                  break;
                default:
                  if (_MergedGlobals_0 <= 90 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 90, "Unknown ramp mode not supported by client. region %@, ramp mode: %lu", v19, v29);
                  }

                  break;
              }

LABEL_69:
              v21 = 1;
              goto LABEL_70;
            }

            if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
            {
              region4 = [v25 region];
              LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "Skipping ramp region config for %@ (rampMode: %lu) because it's not the intended region %@", region4, [ENConfigurationManager rampModeFromServerResponse:v24], v19, context);
            }
          }

          else
          {
            v49[2](v49, v24);
            if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
            {
              region5 = [v25 region];
              LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "Saving live (not on ramp) config for %@", region5);
            }

            region6 = [v25 region];
            v33 = [region6 isEqual:v19];

            if (v33)
            {
              if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "Intended region %@ is not on ramp, removing the cached ramp mode if there's any", v19);
              }

              [(ENConfigurationManager *)val updateRampModeForRegion:v19 rampMode:0];
              goto LABEL_69;
            }
          }
        }

        else if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "Skipping invalid server response: %@", v24);
        }

LABEL_70:

        ++v23;
      }

      while (v20 != v23);
      v42 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
      v20 = v42;
      if (!v42)
      {

        if (v21)
        {
          goto LABEL_115;
        }

        goto LABEL_108;
      }
    }
  }

LABEL_108:
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "No config on the server for intended region %@", v19);
  }

LABEL_115:

  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(context);
LABEL_118:
}

void __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v5 = *(a1 + 32);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_2;
  v22[3] = &unk_278FD29A0;
  v6 = v3;
  v23 = v6;
  v24 = &v25;
  [v5 enumerateObjectsUsingBlock:v22];
  if (*(v26 + 24) == 1)
  {
    v7 = [v6 region];
    v8 = [v7 isCountryCodeEqualToRegion:*(a1 + 40)];

    if (v8)
    {
      v9 = [WeakRetained configurationStore];
      v10 = [v6 region];
      v21 = 0;
      v11 = [v9 removeConfigurationsForRegion:v10 includingSubdivisions:0 error:&v21];
      v12 = v21;

      if (v11)
      {
        if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
        {
          v13 = [v6 region];
          LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]_block_invoke", 30, "Removed Stale %@'s Configurations with %@'s fetch", v13, *(a1 + 40));
        }

        v14 = [WeakRetained activeEntity];
        v15 = [v14 entity];
        v16 = [v15 region];
        v17 = [v6 region];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          v19 = *(a1 + 48);
          v20 = [v6 region];
          [v19 configurationManager:WeakRetained exposureNotificationRegionConfigurationRemovedForRegion:v20];
        }
      }

      else if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]_block_invoke", 90, "Error Removing Stale %@'s Configurations: %@", *(a1 + 40), v12);
      }
    }
  }

  _Block_object_dispose(&v25, 8);
}

void __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277CC5CD0];
  v7 = a2;
  v11 = [[v6 alloc] initWithServerResponseDictionary:v7];

  v8 = [*(a1 + 32) region];
  v9 = [v11 region];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configurationStore];
  v7 = 0;
  v5 = [v4 saveServerConfigurationResponse:v3 error:&v7];
  v6 = v7;

  if (v5)
  {
    [ENConfigurationManager _printServerConfiguration:v3];
  }

  else
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_3_cold_1(v3, v6);
    }

    [*(a1 + 40) configurationManager:*(a1 + 32) errorDetected:6003];
  }
}

- (void)overrideRampModeForRegion:(id)region rampMode:(unint64_t)mode
{
  regionCopy = region;
  regionRampModeOverride = [(ENConfigurationManager *)self regionRampModeOverride];

  if (!regionRampModeOverride)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB30]);
    [(ENConfigurationManager *)self setRegionRampModeOverride:v8];
  }

  v10 = [MEMORY[0x277CCABA8] numberWithUnsignedInteger:mode];
  regionRampModeOverride2 = [(ENConfigurationManager *)self regionRampModeOverride];
  [regionRampModeOverride2 setObject:v10 forKeyedSubscript:regionCopy];
}

+ (BOOL)isRampModeEnabledFromServerResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CFDictionaryGetTypeID();
    v4 = CFDictionaryGetTypedValue();
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v8 = Int64Ranged;
    if (Int64Ranged > 1)
    {
      v5 = CFDictionaryGetInt64() != 0;
    }

    else
    {
      if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
      {
        [ENConfigurationManager isRampModeEnabledFromServerResponse:v8];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)serverResponse:(id)response isOnRampMode:(unint64_t)mode
{
  responseCopy = response;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && [ENConfigurationManager isRampModeEnabledFromServerResponse:responseCopy]&& [ENConfigurationManager rampModeFromServerResponse:responseCopy]== mode;

  return v6;
}

+ (unint64_t)rampModeFromServerResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CFDictionaryGetTypeID();
    v4 = CFDictionaryGetTypedValue();
    Int64 = CFDictionaryGetInt64();
  }

  else
  {
    Int64 = 0;
  }

  return Int64;
}

+ (double)randomSelectPercentagePerDayFromServerResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  v4 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [ENConfigurationManager serverResponse:responseCopy isOnRampMode:3])
  {
    CFDictionaryGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    CFDictionaryGetDouble();
    v4 = v6 / 100.0;
  }

  return v4;
}

- (void)setActiveEntity:(id)entity
{
  entityCopy = entity;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ENConfigurationManager_setActiveEntity___block_invoke;
  v7[3] = &unk_278FD1120;
  v7[4] = self;
  v8 = entityCopy;
  v6 = entityCopy;
  dispatch_sync(serialQueue, v7);
}

void *__42__ENConfigurationManager_setActiveEntity___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = (a1 + 40);
  result = [*(*(a1 + 32) + 32) isEqual:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v4 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v5 = [v4 isSensitiveLoggingAllowed];

    if (v5 && _MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      __42__ENConfigurationManager_setActiveEntity___block_invoke_cold_1(v1, v1 + 1);
    }

    objc_storeStrong(*v1 + 4, *v2);
    [*v1 _scheduleRegionConfigurationRefresh];
    v6 = *v1;

    return [v6 stopGracePeriodTimer];
  }

  return result;
}

- (void)updateRegionMonitorModeForCurrentRegion
{
  v5 = NSStringFromSelector(self);
  LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager updateRegionMonitorModeForCurrentRegion]", 30, "%@, currentRegion, %@, error, %@", v5, a2, a3);
}

- (void)prefsChanged
{
  selfCopy = self;
  if (_MergedGlobals_0 <= 30)
  {
    if (_MergedGlobals_0 != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(ENConfigurationManager *)self prefsChanged];
    }
  }

  Int64 = CFPrefs_GetInt64();
  v5 = Int64 != 0;
  if (selfCopy->_prefTestHeaderEnabled != v5)
  {
    if (_MergedGlobals_0 <= 30)
    {
      v6 = Int64;
      if (_MergedGlobals_0 != -1 || _LogCategory_Initialize())
      {
        [(ENConfigurationManager *)v6 != 0 prefsChanged];
      }
    }

    selfCopy->_prefTestHeaderEnabled = v5;
    [(ENConfigurationManager *)selfCopy refreshServerConfigurationsUponProfileChange];
  }

  v7 = CFPrefs_GetInt64();
  v8 = v7 != 0;
  if (selfCopy->_prefRampTrialPeriodProfile != v8)
  {
    if (_MergedGlobals_0 <= 30)
    {
      v9 = v7;
      if (_MergedGlobals_0 != -1 || _LogCategory_Initialize())
      {
        [(ENConfigurationManager *)v9 != 0 prefsChanged];
      }
    }

    selfCopy->_prefRampTrialPeriodProfile = v8;

    [(ENConfigurationManager *)selfCopy refreshServerConfigurationsUponProfileChange];
  }
}

- (void)setRegionMonitor:(id)monitor
{
  monitorCopy = monitor;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ENConfigurationManager_setRegionMonitor___block_invoke;
  v7[3] = &unk_278FD1120;
  v8 = monitorCopy;
  selfCopy = self;
  v6 = monitorCopy;
  dispatch_sync(serialQueue, v7);
}

void __43__ENConfigurationManager_setRegionMonitor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    objc_storeStrong((v3 + 40), v2);
    v4 = *(*(a1 + 40) + 40);

    [v4 setDelegate:?];
  }

  else
  {
    [*(v3 + 40) setDelegate:0];
    v5 = *(a1 + 40);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

- (void)regionMonitor:(id)monitor regionDidChange:(id)change
{
  changeCopy = change;
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke;
  block[3] = &unk_278FD1558;
  v10 = changeCopy;
  selfCopy = self;
  v12 = a2;
  v8 = changeCopy;
  dispatch_async(serialQueue, block);
}

void __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke_cold_1();
    return;
  }

  v3 = v1;
  v4 = [*(a1 + 40) configurationStore];
  v5 = [v4 serverConfigurationForRegion:v3];

  v6 = [*(a1 + 40) configurationStore];
  v7 = [v6 subdivisionListForRegion:v3];
  v8 = [v7 count];

  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    v10 = [*(a1 + 40) activeEntity];
    v11 = v10;
    v12 = "yes";
    if (v5)
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (!v8)
    {
      v12 = "no";
    }

    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager regionMonitor:regionDidChange:]_block_invoke", 30, "%@, currentRegion, %@, activeEntity, %@, hasCachedCountryConfiguration, %s, hasCachedSubdivisionConfigurations, %s", v9, v3, v10, v13, v12);
  }

  v14 = [*(a1 + 40) activeEntity];
  v15 = [v14 entity];
  v16 = [v15 region];
  v17 = [v16 isEqual:v3];

  if (v17)
  {
    [*(a1 + 40) stopGracePeriodTimer];
  }

  v18 = [*(a1 + 40) serverConfigurationFetchTimer];

  if (!v18)
  {
    [*(a1 + 40) _scheduleRegionConfigurationRefresh];
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_17:
    if (v8)
    {
      [*(a1 + 40) updateRegionMonitorModeForCurrentRegion];
    }

    else
    {
      objc_initWeak(&location, *(a1 + 40));
      v21 = *(a1 + 40);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke_2;
      v23[3] = &unk_278FD28D8;
      objc_copyWeak(&v25, &location);
      v24 = v3;
      [v21 fetchServerConfigurationsForRegion:v24 userInitiated:0 withCompletion:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    goto LABEL_20;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_15:
  v19 = *(a1 + 40);
  v20 = [v19 activeEntity];
  [v19 _processServerConfiguration:v5 forceUpdate:v20 == 0];

LABEL_20:
  v22 = [*(a1 + 40) delegate];
  [v22 configurationManager:*(a1 + 40) didResolveCurrentRegion:1];
}

void __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateRegionMonitorModeForCurrentRegion];
  if (v8)
  {
    if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager regionMonitor:regionDidChange:]_block_invoke_2", 90, "Unable to fetch server configuration for %@ - %@", *(a1 + 32), v8);
    }
  }

  else
  {
    v5 = [WeakRetained configurationStore];
    v6 = [v5 serverConfigurationForRegion:*(a1 + 32)];

    if (v6)
    {
      v7 = [WeakRetained activeEntity];
      [WeakRetained _processServerConfiguration:v6 forceUpdate:v7 == 0];
    }
  }
}

- (void)regionMonitor:(id)monitor authorizationStateDidChange:(unint64_t)change
{
  serialQueue = [(ENConfigurationManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ENConfigurationManager_regionMonitor_authorizationStateDidChange___block_invoke;
  v7[3] = &unk_278FD11C8;
  v7[4] = self;
  v7[5] = change;
  dispatch_async(serialQueue, v7);
}

void __68__ENConfigurationManager_regionMonitor_authorizationStateDidChange___block_invoke(uint64_t a1)
{
  if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    __68__ENConfigurationManager_regionMonitor_authorizationStateDidChange___block_invoke_cold_1(a1);
  }

  v8 = [*(a1 + 32) activeEntity];
  if ([v8 activeStatus] == 1)
  {
    v2 = *(a1 + 40);

    if (v2 == 1)
    {
      v3 = [*(a1 + 32) activeEntity];
      v4 = [v3 entity];
      v5 = [v4 region];

      if (v5)
      {
        v6 = [*(a1 + 32) delegate];
        [v6 configurationManager:*(a1 + 32) exposureNotificationRegionConfigurationRemovedForRegion:v5];
      }

      v7 = *(a1 + 32);

      [v7 stopGracePeriodTimer];
    }
  }

  else
  {
  }
}

- (ENConfigurationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (BOOL)verifyAppleServerResponse:(id)response signatureHeader:(id)header
{
  v23[3] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  headerCopy = header;
  if (IsAppleInternalBuild() && CFPrefs_GetInt64())
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals_0, "+[ENConfigurationManager verifyAppleServerResponse:signatureHeader:]", 30, "Overriding to defaults value to disable verification");
    }

    v7 = 1;
    goto LABEL_49;
  }

  v7 = 0;
  if (!responseCopy || !headerCopy)
  {
    goto LABEL_49;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBase64EncodedString:@"BP6sTAdk49vlNzoEmFS15HX3QjglGJLaTUl1JwGVSn9nAEiZa1dPc811nQVQFKtnYVYhnZswXx63UUM8L/O9aF4=" options:0];
  if (IsAppleInternalBuild() && CFPrefs_GetInt64())
  {
    if (_MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals_0, "+[ENConfigurationManager verifyAppleServerResponse:signatureHeader:]", 30, "Overriding to iCloud3 env Public Key");
    }

    v10 = [objc_alloc(MEMORY[0x277CBEA98]) initWithBase64EncodedString:@"BLZMQHP6FNq1JzrOft1byshgng28vue0mruB3/Nzx0hhKQA2++MecTBcMWJhh+juPNhjmnKGM/Mpi2WxH8/L5AA=" options:0];

    v9 = v10;
  }

  if (dword_2813465E8 <= 30 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_2813465E8, "+[ENConfigurationManager verifyAppleServerResponse:signatureHeader:]", 30, "Verify server config response with public key: %lu", [v9 length]);
  }

  error = 0;
  v11 = *MEMORY[0x277CDC038];
  v12 = *MEMORY[0x277CDBFE8];
  v22[0] = *MEMORY[0x277CDC020];
  v22[1] = v12;
  v13 = *MEMORY[0x277CDBFF8];
  v23[0] = v11;
  v23[1] = v13;
  v22[2] = *MEMORY[0x277CDC010];
  v23[2] = &unk_285D6E4C8;
  v14 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v15 = SecKeyCreateWithData(v9, v14, &error);
  v16 = error;
  if (error)
  {
    if (dword_2813465E8 > 90)
    {
      v7 = 0;
LABEL_45:
      CFRelease(v16);
      goto LABEL_46;
    }

    if (dword_2813465E8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_30;
      }

      v16 = error;
    }

    LogPrintF_safe(&dword_2813465E8, "+[ENConfigurationManager verifyAppleServerResponse:signatureHeader:]", 90, "Invalid server config response signature: %@", v16);
LABEL_30:
    v7 = 0;
    goto LABEL_44;
  }

  [headerCopy utf8ValueSafe];
  v17 = NSDataWithHex();
  if (_MergedGlobals_0 <= 10 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&_MergedGlobals_0, "+[ENConfigurationManager verifyAppleServerResponse:signatureHeader:]", 10, "Verify server config response signature: %lu", [v17 length]);
  }

  v18 = SecKeyVerifySignature(v15, *MEMORY[0x277CDC2F8], responseCopy, v17, &error);
  v7 = v18 != 0;
  if (v18)
  {
    if (_MergedGlobals_0 <= 50 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&_MergedGlobals_0, "+[ENConfigurationManager verifyAppleServerResponse:signatureHeader:]", 50, "Valid server config response signature", v20);
    }
  }

  else if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_2813465E8, "+[ENConfigurationManager verifyAppleServerResponse:signatureHeader:]", 90, "Cannot verify server config response signature: %@", error);
  }

LABEL_44:
  v16 = error;
  if (error)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (v15)
  {
    CFRelease(v15);
  }

  objc_autoreleasePoolPop(v8);
LABEL_49:

  return v7;
}

+ (id)staticRegionForBundleID:(id)d
{
  dCopy = d;
  v4 = ENDaemonBundle();
  v5 = [v4 URLForResource:@"RegionBundleID" withExtension:@".plist"];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC8] dictionaryWithContentsOfURL:v5];
    v7 = [v6 objectForKeyedSubscript:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_serverFetchRegionConfiguration:(void *)a1 userInitiated:completion:.cold.5(void *a1)
{
  v3 = [a1 activeEntity];
  v1 = [v3 entity];
  v2 = [v1 region];
  LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:]", 30, "activeEntity %@ is on random-select, keep using this mode for request", v2);
}

- (void)_serverFetchRegionConfiguration:(void *)a1 userInitiated:completion:.cold.6(void *a1)
{
  v3 = [a1 activeEntity];
  v1 = [v3 entity];
  v2 = [v1 region];
  LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:]", 30, "activeEntity %@ is on manual-select, keep using this mode for request", v2);
}

- (void)_serverFetchRegionConfiguration:(void *)a1 userInitiated:(const char *)a2 completion:.cold.7(void *a1, const char *a2)
{
  v5 = [a1 activeEntity];
  v3 = [v5 entity];
  v4 = [v3 region];
  LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:]", 30, a2, v4);
}

- (void)_serverFetchRegionConfiguration:(uint64_t)a1 userInitiated:completion:.cold.12(uint64_t a1)
{
  if (a1)
  {
    v2 = ENErrorF(15, "No region provided for configuration request");
    (*(a1 + 16))(a1, 0, v2);
  }
}

void __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_2(id *a1, uint64_t a2)
{
  v3 = [*a1 countryCode];
  LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:]_block_invoke_3", 30, "Invalid Country Code in response: %@ for requested region: %@", a2, v3);
}

void __83__ENConfigurationManager__serverFetchRegionConfiguration_userInitiated_completion___block_invoke_3_cold_3(id *a1, uint64_t a2)
{
  v3 = [*a1 countryCode];
  LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _serverFetchRegionConfiguration:userInitiated:completion:]_block_invoke_3", 30, "Failed to save region hash %@ for requested region: %@", a2, v3);
}

- (_BYTE)updateRampModeForRegion:(_BYTE *)result rampMode:.cold.3(_BYTE *result)
{
  v1 = result;
  if (_MergedGlobals_0 <= 90)
  {
    if (_MergedGlobals_0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager updateRampModeForRegion:rampMode:]", 90, "### Requires non-NULL region to update ramp mode for");
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)regionSupportsFeatures:(uint64_t)result featureFlags:(_BYTE *)a2 .cold.1(uint64_t result, _BYTE *a2)
{
  if (_MergedGlobals_0 <= 90)
  {
    v3 = result;
    if (_MergedGlobals_0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager regionSupportsFeatures:featureFlags:]", 90, "### No server configuration found for region: %@", v3);
    }
  }

  *a2 = 0;
  return result;
}

- (_BYTE)regionSupportsFeatures:(_BYTE *)result featureFlags:.cold.2(_BYTE *result)
{
  v1 = result;
  if (_MergedGlobals_0 <= 90)
  {
    if (_MergedGlobals_0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager regionSupportsFeatures:featureFlags:]", 90, "### Requires non-NULL region to check feature support for");
    }
  }

  *v1 = 0;
  return result;
}

- (void)readCachedRampModeForRegion:(void *)result .cold.3(void *result)
{
  v1 = result;
  if (_MergedGlobals_0 <= 90)
  {
    if (_MergedGlobals_0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager readCachedRampModeForRegion:]", 90, "### Requires non-NULL region to read ramp mode for");
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_scheduleRegionConfigurationRefresh
{
  if (_MergedGlobals_0 <= 10)
  {
    v1 = result;
    if (_MergedGlobals_0 != -1)
    {
      return LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _scheduleRegionConfigurationRefresh]", 10, "No region available to start configuration refresh, currentRegionVisitError, %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _scheduleRegionConfigurationRefresh]", 10, "No region available to start configuration refresh, currentRegionVisitError, %@", v1);
    }
  }

  return result;
}

uint64_t __61__ENConfigurationManager__scheduleRegionConfigurationRefresh__block_invoke_3_cold_1(uint64_t result)
{
  if (dword_2813465E8 <= 90)
  {
    v1 = result;
    if (dword_2813465E8 != -1)
    {
      return LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _scheduleRegionConfigurationRefresh]_block_invoke_3", 90, "No region available to fetch configuration refresh, currentRegionVisitError, %@", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _scheduleRegionConfigurationRefresh]_block_invoke_3", 90, "No region available to fetch configuration refresh, currentRegionVisitError, %@", v1);
    }
  }

  return result;
}

+ (void)_printServerConfiguration:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  LogPrintF_safe(&_MergedGlobals_0, "+[ENConfigurationManager _printServerConfiguration:]", 30, "%@ - %@", a2, v3);
}

- (void)_processServerConfiguration:(void *)a1 forceUpdate:(char)a2 .cold.1(void *a1, char a2)
{
  v4 = [a1 region];
  LogPrintF_safe(&_MergedGlobals_0, "-[ENConfigurationManager _processServerConfiguration:forceUpdate:]", 30, "Process New Server Configuration for Region: %@, forced: %i, hasSubdivisions: %i", v4, a2 & 1, [a1 hasSubdivisions]);
}

- (void)_processServerConfiguration:(uint64_t)a3 forceUpdate:.cold.2(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 1) != 0 && _MergedGlobals_0 <= 30 && (_MergedGlobals_0 != -1 || _LogCategory_Initialize()))
  {
    v5 = [a2 gracePeriodConfigurationFetchTimer];
    LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager _processServerConfiguration:forceUpdate:]", 30, "Grace Period (%p) Configuration fetch in-progress: %@", v5, a3);
  }
}

- (void)_processServerConfiguration:(void *)a1 forceUpdate:.cold.3(void *a1)
{
  v2 = [a1 region];
  LogPrintF_safe(&_MergedGlobals_0, "-[ENConfigurationManager _processServerConfiguration:forceUpdate:]", 30, "Process Grace Period for New Server Configuration for Region: %@, EN Version: %ld, Enabled: %d", v2, [a1 enVersion], objc_msgSend(a1, "enEnabled"));
}

void __70__ENConfigurationManager_refreshServerConfigurationsUponProfileChange__block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = NSStringFromSelector(*(a1 + 40));
  LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager refreshServerConfigurationsUponProfileChange]_block_invoke", 30, "%@, currentRegion, %@, error, %@", v5, a2, a3);
}

- (void)_saveAndRemoveStaleConfigurations:(void *)a1 region:(uint64_t)a2 error:.cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 regionCode];
  LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 90, "Error fetching (%@)'s Configuration: %@", v3, a2);
}

- (void)_saveAndRemoveStaleConfigurations:(void *)a1 region:(void *)a2 error:.cold.2(void *a1, void *a2)
{
  v3 = [a1 count];
  v4 = [a2 regionCode];
  LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]", 30, "Fetched (%ld) Configurations for region: %@", v3, v4);
}

void __73__ENConfigurationManager__saveAndRemoveStaleConfigurations_region_error___block_invoke_3_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 allKeys];
  LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager _saveAndRemoveStaleConfigurations:region:error:]_block_invoke_3", 90, "Error Writing %@'s Server Configuration: %@", v3, a2);
}

- (uint64_t)prefsChanged
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

  return LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager prefsChanged]", 30, "Ramp Trial Period Profile Installed: %s -> %s", v2, v1);
}

void __56__ENConfigurationManager_regionMonitor_regionDidChange___block_invoke_cold_1()
{
  if (dword_2813465E8 <= 90 && (dword_2813465E8 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF_safe(&dword_2813465E8, "[ENConfigurationManager regionMonitor:regionDidChange:]_block_invoke", 90, "Dropping null region update.");
  }
}

void __68__ENConfigurationManager_regionMonitor_authorizationStateDidChange___block_invoke_cold_1(uint64_t a1)
{
  v3 = [ENRegionMonitor regionMonitorAuthorizationStateToString:*(a1 + 40)];
  v2 = [*(a1 + 32) activeEntity];
  LogPrintF_safe(&_MergedGlobals_0, "[ENConfigurationManager regionMonitor:authorizationStateDidChange:]_block_invoke", 30, "Region Monitoring State, %@, Active Entity: %@", v3, v2);
}

@end