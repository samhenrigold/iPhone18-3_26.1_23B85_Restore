@interface MSDKManagedDevice
+ (id)sharedInstance;
- (BOOL)_isContentFrozen_xpc:(id *)frozen_xpc checkDemo:(BOOL)demo;
- (BOOL)_isEnrolled:(id *)enrolled checkDemo:(BOOL)demo;
- (BOOL)_manageWallpaperSettingsWithAction:(const char *)action;
- (BOOL)_needOwnershipWarning:(id *)warning error:(id *)error;
- (BOOL)_prepareWithOptions:(id)options;
- (BOOL)_unenrollWithOptions:(id)options outError:(id *)error;
- (BOOL)_unlockDemoContentWithOptions:(id)options outError:(id *)error;
- (BOOL)cancelOperation;
- (BOOL)checkInBlockingUI;
- (BOOL)clearCurrentSafariHistory;
- (BOOL)clearOwnershipWarning;
- (BOOL)closeRunningAppsExcept:(id)except;
- (BOOL)collectAppUsageWithSessionStart:(id)start andEnd:(id)end;
- (BOOL)commitNewDemoContent;
- (BOOL)configureWiFi:(id)fi password:(id)password;
- (BOOL)deleteDataBlob;
- (BOOL)disconnectAndForgetWiFi:(id *)fi;
- (BOOL)enterOfflineModeWithOptions:(id)options error:(id *)error;
- (BOOL)inferContentFrozenFromPreferencesFile;
- (BOOL)initializeAppSwitcherContent;
- (BOOL)initializeDeviceSettingsWithOverwrite:(BOOL)overwrite;
- (BOOL)isBetterTogetherDemoDevice;
- (BOOL)isContentFrozen;
- (BOOL)isDeviceClassSupported;
- (BOOL)isDigitalSecurityEnabled;
- (BOOL)isFeatureFlagEnabled:(id)enabled;
- (BOOL)isOfflineMode:(id *)mode;
- (BOOL)isStoreOpen:(id)open withError:(id *)error;
- (BOOL)lockDemoContent;
- (BOOL)prepareWithWiFi:(id)fi password:(id)password;
- (BOOL)preserveAppDataToPersistentStorageWithReturnError:(id *)error;
- (BOOL)refreshDeviceSettings;
- (BOOL)reloadDemodsPreferencesFile;
- (BOOL)revertDemoContent;
- (BOOL)saveBluetoothPairingInfo;
- (BOOL)sendAutoEnrollmentAbortEvent:(id)event countryCode:(id)code;
- (BOOL)sendAutoEnrollmentResult:(double)result withStoreId:(id)id withHelpMenuRowSelection:(id)selection;
- (BOOL)setDeviceLanguage:(id)language andRegion:(id)region;
- (BOOL)setDeviceLanguageWithoutSystemLanguageMatching:(id)matching andRegion:(id)region;
- (BOOL)setIdleDelay:(int64_t)delay;
- (BOOL)setLastShallowRefreshTime:(id)time;
- (BOOL)setSEPDemoMode:(BOOL)mode;
- (BOOL)setStoreOpenAt:(int64_t)at openMinute:(int64_t)minute closeHour:(int64_t)hour closeMinute:(int64_t)closeMinute;
- (BOOL)setupConnection:(id)connection withMachService:(id)service;
- (BOOL)storeDataBlob:(id)blob;
- (BOOL)unenroll:(BOOL)unenroll;
- (MSDKManagedDevice)init;
- (MSDKManagedDeviceDelegate)delegate;
- (id)_getCurrentNetworkInfoForKeys:(id)keys outError:(id *)error;
- (id)_getDeviceOptions:(id *)options checkDemo:(BOOL)demo;
- (id)_getStoreID:(id *)d checkDemo:(BOOL)demo;
- (id)_readOwnershipWarningFromNvram;
- (id)errorWithXPCDictionary:(id)dictionary;
- (id)getAppDataFolderPathWithReturnError:(id *)error;
- (id)getCacheIdentifier;
- (id)getCurrentAppUsageSessionUUID;
- (id)getDeviceLanguageandRegion;
- (id)getFriendlyDeviceName;
- (id)getPersistentWiFiSsid;
- (id)getStoreType:(id *)type;
- (id)nextStoreCloseDate:(id)date withError:(id *)error;
- (id)nextStoreOpenDate:(id)date withError:(id *)error;
- (id)readNVRam:(id)ram;
- (id)readPreferencesFileObjectForKey:(id)key;
- (id)retrieveDataBlob;
- (id)retrieveXPCConnectionToPeerService;
- (id)saveScreenSaverIdleDelay:(id)delay;
- (id)saveStoreHour:(id)hour;
- (int64_t)getDemoInstallState;
- (unint64_t)_typeOfDemoDevice:(id *)device checkDemo:(BOOL)demo;
- (void)_handleCheckInXPCResponse:(id)response withCompletion:(id)completion;
- (void)_handleMarkAsNotDemoXPCResponse:(id)response withCompletion:(id)completion;
- (void)_handleSearchXPCResponse:(id)response withCompletion:(id)completion;
- (void)cancelOperation;
- (void)checkInBlockingUI;
- (void)checkInWithCompletion:(id)completion;
- (void)clearOwnershipWarning;
- (void)commitNewDemoContent;
- (void)deleteDataBlob;
- (void)getDemoInstallState;
- (void)getDeviceLanguageandRegion;
- (void)getFriendlyDeviceName;
- (void)handleContentUpdateStatus:(const char *)status event:(id)event;
- (void)handleMessage:(id)message;
- (void)isBetterTogetherDemoDevice;
- (void)launchApp:(id)app;
- (void)lockDemoContent;
- (void)markAsNotDemoWithCompletion:(id)completion;
- (void)retrieveDataBlob;
- (void)revertDemoContent;
- (void)saveBluetoothPairingInfo;
- (void)searchStoreWithOptions:(id)options completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)updateStoreHours:(id)hours evaluateAgainstDate:(id)date;
@end

@implementation MSDKManagedDevice

uint64_t __35__MSDKManagedDevice_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MSDKManagedDevice);
  v1 = sharedInstance_device;
  sharedInstance_device = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[MSDKManagedDevice sharedInstance];
  }

  v3 = sharedInstance_device;

  return v3;
}

- (MSDKManagedDevice)init
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = MSDKManagedDevice;
  v2 = [(MSDKManagedDevice *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = defaultLogHandle(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, &unk_259BB58B6, buf, 2u);
    }

    v6 = defaultLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];
      *buf = 138543362;
      v14 = processName;
      _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ started to use MobileStoreDemoKit.", buf, 0xCu);
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MSDKManagedDevice *)v3 setXpc_cache:v9];

    v10 = v3;
  }

  return v3;
}

- (BOOL)isBetterTogetherDemoDevice
{
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v3 = +[MSDKDemoState sharedInstance];
    LODWORD(connection2) = [v3 _isStoreDemoModeEnabled:0];

    if (connection2)
    {
      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v5, "RequestOperation", "GetDeviceOptions");
      xpc_dictionary_set_string(v5, "SubKey", [@"enable_better_together" UTF8String]);
      [(MSDKManagedDevice *)self setupConnection];
      connection = [(MSDKManagedDevice *)self connection];

      if (connection)
      {
        connection2 = [(MSDKManagedDevice *)self connection];
        v8 = xpc_connection_send_message_with_reply_sync(connection2, v5);

        LOBYTE(connection2) = xpc_dictionary_get_BOOL(v8, [@"enable_better_together" UTF8String]);
      }

      else
      {
        v8 = defaultLogHandle(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(MSDKManagedDevice *)v8 isBetterTogetherDemoDevice:v10];
        }

        LOBYTE(connection2) = 0;
      }
    }
  }

  else
  {
    LOBYTE(connection2) = 0;
  }

  return connection2;
}

- (BOOL)isDeviceClassSupported
{
  v2 = MGCopyAnswer();
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPhone", @"iPad", @"iPod", @"Watch", @"AppleTV", @"RealityDevice", 0}];
  v4 = v3;
  v5 = v2 && ([v3 containsObject:v2] & 1) != 0;

  return v5;
}

- (id)getAppDataFolderPathWithReturnError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v5 = [defaultManager URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:&v13];
  v6 = v13;

  if (v5)
  {
    path = [v5 path];
    v9 = [path stringByAppendingPathComponent:@"MSDPersistentData"];

    v11 = defaultLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "appDataFolderPath:  %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (error)
    {
      v7 = v6;
      *error = v6;
    }

    v11 = defaultLogHandle(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(PersistentStorage) *)v6 getAppDataFolderPathWithReturnError:v11];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)preserveAppDataToPersistentStorageWithReturnError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v5 = [(MSDKManagedDevice *)self getAppDataFolderPathWithReturnError:&v23];
  v6 = v23;
  v7 = v6;
  if (!v5)
  {
    if (error)
    {
      v15 = v6;
      v14 = 0;
      *error = v7;
      goto LABEL_20;
    }

LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "RequestOperation", "preserveSecondPartyAppDataToShelter");
  xpc_dictionary_set_string(v8, "SourcePath", [v5 UTF8String]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    v16 = safeAssignErrorWithReason(error, 3727744774, @"Error preserving data to shelter.", @"Failed to setup XPC connection.");
    v17 = defaultLogHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(PersistentStorage) preserveAppDataToPersistentStorageWithReturnError:v17];
    }

    goto LABEL_18;
  }

  connection2 = [(MSDKManagedDevice *)self connection];
  v11 = xpc_connection_send_message_with_reply_sync(connection2, v8);

  v12 = xpc_dictionary_get_BOOL(v11, "Result");
  if (!v12)
  {
    string = xpc_dictionary_get_string(v11, "ErrorMsg");
    if (string)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    }

    else
    {
      v19 = @"Error preserving data to shelter.";
    }

    v20 = safeAssignErrorWithReason(error, 3727744774, @"Error preserving data to shelter.", v19);
    v21 = defaultLogHandle(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(PersistentStorage) *)v5 preserveAppDataToPersistentStorageWithReturnError:error, v21];
    }

LABEL_18:
    goto LABEL_19;
  }

  v13 = defaultLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_259B7D000, v13, OS_LOG_TYPE_DEFAULT, "Successfully preserved app data from %{public}@ to persistent storage.", buf, 0xCu);
  }

  v14 = 1;
LABEL_20:

  return v14;
}

- (BOOL)closeRunningAppsExcept:(id)except
{
  exceptCopy = except;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "CloseRunningApps");
  xpcArrayFromArray = [exceptCopy xpcArrayFromArray];

  xpc_dictionary_set_value(v5, "ScreenSaverAppIDs", xpcArrayFromArray);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v10 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v11 = xpc_dictionary_get_BOOL(v10, "Result");
  }

  else
  {
    v10 = defaultLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(CloseApps) closeRunningAppsExcept:v10];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)initializeAppSwitcherContent
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "InitializeAppSwitcherContent");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Result");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(CloseApps) *)v7 initializeAppSwitcherContent];
    }

    v8 = 0;
  }

  return v8;
}

- (void)checkInWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__1;
  v33[4] = __Block_byref_object_dispose__1;
  v34 = MEMORY[0x259CB0780]();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__10;
  v31[4] = __Block_byref_object_dispose__11;
  selfCopy = self;
  v32 = selfCopy;
  isDeviceClassSupported = [(MSDKManagedDevice *)selfCopy isDeviceClassSupported];
  if (isDeviceClassSupported)
  {
    v7 = defaultLogHandle(isDeviceClassSupported);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[MSDKManagedDevice(DemoUnitRequest) checkInWithCompletion:]";
      _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "RequestOperation", "DeviceCheckIn");
    [(MSDKManagedDevice *)selfCopy setupConnection];
    connection = [(MSDKManagedDevice *)selfCopy connection];
    v10 = connection == 0;

    if (!v10)
    {
      connection2 = [(MSDKManagedDevice *)selfCopy connection];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __60__MSDKManagedDevice_DemoUnitRequest__checkInWithCompletion___block_invoke;
      v28[3] = &unk_2798EF500;
      v28[4] = v31;
      v28[5] = v33;
      xpc_connection_send_message_with_reply(connection2, v8, 0, v28);

      v12 = 0;
      goto LABEL_6;
    }

    v29 = 0;
    safeAssignError(&v29, 3727741186, @"Failed to establish xpc connection to demod.");
    v12 = v29;
    v13 = defaultLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v13 checkInWithCompletion:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  else
  {
    v30 = 0;
    safeAssignError(&v30, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v12 = v30;
    v13 = defaultLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v13 checkInWithCompletion:v14, v15, v16, v17, v18, v19, v20];
    }

    v8 = 0;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, v12);
  }

LABEL_6:
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(v33, 8);
}

- (void)markAsNotDemoWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__1;
  v33[4] = __Block_byref_object_dispose__1;
  v34 = MEMORY[0x259CB0780]();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__10;
  v31[4] = __Block_byref_object_dispose__11;
  selfCopy = self;
  v32 = selfCopy;
  isDeviceClassSupported = [(MSDKManagedDevice *)selfCopy isDeviceClassSupported];
  if (isDeviceClassSupported)
  {
    v7 = defaultLogHandle(isDeviceClassSupported);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[MSDKManagedDevice(DemoUnitRequest) markAsNotDemoWithCompletion:]";
      _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "RequestOperation", "MarkAsNotDemo");
    [(MSDKManagedDevice *)selfCopy setupConnection];
    connection = [(MSDKManagedDevice *)selfCopy connection];
    v10 = connection == 0;

    if (!v10)
    {
      connection2 = [(MSDKManagedDevice *)selfCopy connection];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__MSDKManagedDevice_DemoUnitRequest__markAsNotDemoWithCompletion___block_invoke;
      v28[3] = &unk_2798EF500;
      v28[4] = v31;
      v28[5] = v33;
      xpc_connection_send_message_with_reply(connection2, v8, 0, v28);

      v12 = 0;
      goto LABEL_6;
    }

    v29 = 0;
    safeAssignError(&v29, 3727741186, @"Failed to establish xpc connection to demod.");
    v12 = v29;
    v13 = defaultLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v13 markAsNotDemoWithCompletion:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  else
  {
    v30 = 0;
    safeAssignError(&v30, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v12 = v30;
    v13 = defaultLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v13 markAsNotDemoWithCompletion:v14, v15, v16, v17, v18, v19, v20];
    }

    v8 = 0;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

LABEL_6:

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

- (void)searchStoreWithOptions:(id)options completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__1;
  v37[4] = __Block_byref_object_dispose__1;
  v38 = MEMORY[0x259CB0780]();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__10;
  v35[4] = __Block_byref_object_dispose__11;
  selfCopy = self;
  v36 = selfCopy;
  isDeviceClassSupported = [(MSDKManagedDevice *)selfCopy isDeviceClassSupported];
  if (isDeviceClassSupported)
  {
    v10 = defaultLogHandle(isDeviceClassSupported);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "[MSDKManagedDevice(DemoUnitRequest) searchStoreWithOptions:completion:]";
      _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
    }

    if (optionsCopy)
    {
      createXPCDictionary = [optionsCopy createXPCDictionary];
    }

    else
    {
      createXPCDictionary = xpc_dictionary_create(0, 0, 0);
    }

    v12 = createXPCDictionary;
    xpc_dictionary_set_string(createXPCDictionary, "RequestOperation", "StoreSearch");
    [(MSDKManagedDevice *)selfCopy setupConnection];
    connection = [(MSDKManagedDevice *)selfCopy connection];
    v14 = connection == 0;

    if (!v14)
    {
      connection2 = [(MSDKManagedDevice *)selfCopy connection];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__MSDKManagedDevice_DemoUnitRequest__searchStoreWithOptions_completion___block_invoke;
      v32[3] = &unk_2798EF500;
      v32[4] = v35;
      v32[5] = v37;
      xpc_connection_send_message_with_reply(connection2, v12, 0, v32);

      v16 = 0;
      goto LABEL_9;
    }

    v33 = 0;
    safeAssignError(&v33, 3727741186, @"Failed to establish xpc connection to demod.");
    v16 = v33;
    v17 = defaultLogHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v17 searchStoreWithOptions:v25 completion:v26, v27, v28, v29, v30, v31];
    }
  }

  else
  {
    v34 = 0;
    safeAssignError(&v34, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v16 = v34;
    v17 = defaultLogHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v17 searchStoreWithOptions:v18 completion:v19, v20, v21, v22, v23, v24];
    }

    v12 = 0;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v16);
  }

LABEL_9:

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
}

- (void)_handleCheckInXPCResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  v7 = MEMORY[0x259CB0BB0](responseCopy);
  if (v7 != MEMORY[0x277D86468])
  {
    [MSDKManagedDevice(DemoUnitRequest) _handleCheckInXPCResponse:v7 withCompletion:?];
LABEL_7:
    v11 = 0;
    safeAssignError(&v11, 3727741189, @"Unexpected demod xpc response.");
    v10 = v11;
    v8 = 0;
    v9 = 0;
    if (!completionCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!xpc_dictionary_get_BOOL(responseCopy, "Result"))
  {
    goto LABEL_7;
  }

  v8 = xpc_dictionary_get_BOOL(responseCopy, "Eligible");
  v9 = xpc_dictionary_get_BOOL(responseCopy, "ShowUI");
  v10 = 0;
  if (completionCopy)
  {
LABEL_4:
    completionCopy[2](completionCopy, v8, v9, v10);
  }

LABEL_5:
}

- (void)_handleMarkAsNotDemoXPCResponse:(id)response withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = xpc_dictionary_get_BOOL(response, "Result");
  if (v6)
  {
    v7 = 0;
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  safeAssignError(&v8, 3727741189, @"Unexpected demod xpc response.");
  v7 = v8;
  if (completionCopy)
  {
LABEL_5:
    completionCopy[2](completionCopy, v6, v7);
  }

LABEL_6:
}

- (void)_handleSearchXPCResponse:(id)response withCompletion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  completionCopy = completion;
  length = 0;
  v7 = MEMORY[0x259CB0BB0](responseCopy);
  if (v7 != MEMORY[0x277D86468])
  {
    v18 = defaultLogHandle(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v18 _handleSearchXPCResponse:v19 withCompletion:v20, v21, v22, v23, v24, v25];
    }

    goto LABEL_18;
  }

  v8 = xpc_dictionary_get_BOOL(responseCopy, "Result");
  if (!v8)
  {
    v18 = defaultLogHandle(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v18 _handleSearchXPCResponse:v26 withCompletion:v27, v28, v29, v30, v31, v32];
    }

LABEL_18:
    v13 = 0;
    v15 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_28;
  }

  data = xpc_dictionary_get_data(responseCopy, "ResultData", &length);
  if (data)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
    v48 = 0;
    v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v48];
    v12 = v48;
    v13 = v12;
    if (v11)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v15 = 1;
        goto LABEL_7;
      }

      v18 = defaultLogHandle(isKindOfClass);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MSDKManagedDevice(DemoUnitRequest) _handleSearchXPCResponse:v11 withCompletion:v18];
      }
    }

    else
    {
      v18 = defaultLogHandle(v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice(DemoUnitRequest) *)v18 _handleSearchXPCResponse:v40 withCompletion:v41, v42, v43, v44, v45, v46];
      }

      v11 = 0;
    }
  }

  else
  {
    v18 = defaultLogHandle(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(DemoUnitRequest) *)v18 _handleSearchXPCResponse:v33 withCompletion:v34, v35, v36, v37, v38, v39];
    }

    v13 = 0;
    v11 = 0;
    v10 = 0;
  }

  v15 = 1;
LABEL_28:

LABEL_7:
  v16 = defaultLogHandle(isKindOfClass);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[MSDKManagedDevice(DemoUnitRequest) _handleSearchXPCResponse:withCompletion:]";
    v52 = 2114;
    v53 = v11;
    _os_log_impl(&dword_259B7D000, v16, OS_LOG_TYPE_DEFAULT, "%s - Store Search return with result list - %{public}@", buf, 0x16u);
  }

  if ((v15 & 1) == 0)
  {
    v47 = v13;
    safeAssignError(&v47, 3727741189, @"Unexpected demod xpc response.");
    v17 = v47;

    v13 = v17;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11, v13);
  }
}

- (id)getCurrentAppUsageSessionUUID
{
  if ([(MSDKManagedDevice *)self isEnrolled]&& [(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, "RequestOperation", "GetAppUsageSessionUUID");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

      v8 = xpc_dictionary_get_BOOL(v7, "Result");
      if (v8)
      {
        string = xpc_dictionary_get_string(v7, "SessionUUID");
        if (string)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
LABEL_7:

          goto LABEL_9;
        }

        [(MSDKManagedDevice(dataCollection) *)0 getCurrentAppUsageSessionUUID];
      }

      else
      {
        [(MSDKManagedDevice(dataCollection) *)v8 getCurrentAppUsageSessionUUID];
      }
    }

    else
    {
      v7 = defaultLogHandle(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice(dataCollection) *)v7 getCurrentAppUsageSessionUUID];
      }
    }

    v10 = 0;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (BOOL)collectAppUsageWithSessionStart:(id)start andEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  if ([(MSDKManagedDevice *)self isEnrolled]&& [(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    [startCopy timeIntervalSince1970];
    v9 = xpc_double_create(v8);
    [endCopy timeIntervalSince1970];
    v11 = xpc_double_create(v10);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v12, "RequestOperation", "CollectAppUsageData");
    xpc_dictionary_set_value(v12, "StartTime", v9);
    xpc_dictionary_set_value(v12, "EndTime", v11);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v16 = xpc_connection_send_message_with_reply_sync(connection2, v12);

      v17 = xpc_dictionary_get_BOOL(v16, "Result");
    }

    else
    {
      v16 = defaultLogHandle(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MSDKManagedDevice(dataCollection) collectAppUsageWithSessionStart:v16 andEnd:?];
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)sendAutoEnrollmentResult:(double)result withStoreId:(id)id withHelpMenuRowSelection:(id)selection
{
  idCopy = id;
  selectionCopy = selection;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "RequestOperation", "AutoEnrollmentResults");
  xpc_dictionary_set_double(v10, "AutoEnrollmentTimeStamp", result);
  if (!idCopy)
  {
    idCopy = &stru_286AD9A18;
  }

  xpc_dictionary_set_string(v10, "AutoEnrollmentSelectedStoreID", [(__CFString *)idCopy cStringUsingEncoding:4]);
  if (selectionCopy)
  {
    xpc_dictionary_set_data(v10, "AutoEnrollmentHelpMenuUserTapped", [selectionCopy bytes], objc_msgSend(selectionCopy, "length"));
  }

  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v14 = xpc_connection_send_message_with_reply_sync(connection2, v10);

    v15 = xpc_dictionary_get_BOOL(v14, "Result");
  }

  else
  {
    v14 = defaultLogHandle(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(AutoEnrollmentResult) sendAutoEnrollmentResult:v14 withStoreId:? withHelpMenuRowSelection:?];
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)sendAutoEnrollmentAbortEvent:(id)event countryCode:(id)code
{
  eventCopy = event;
  codeCopy = code;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "RequestOperation", "AutoEnrollmentAbortEvent");
  if (!eventCopy)
  {
    eventCopy = &stru_286AD9A18;
  }

  xpc_dictionary_set_string(v8, "AutoEnrollmentAbortLanguageCodeInfo", [(__CFString *)eventCopy cStringUsingEncoding:4]);
  if (!codeCopy)
  {
    codeCopy = &stru_286AD9A18;
  }

  xpc_dictionary_set_string(v8, "AutoEnrollmentAbortCountryCodeInfo", [(__CFString *)codeCopy cStringUsingEncoding:4]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v12 = xpc_connection_send_message_with_reply_sync(connection2, v8);

    v13 = xpc_dictionary_get_BOOL(v12, "Result");
  }

  else
  {
    v12 = defaultLogHandle(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(AutoEnrollmentResult) sendAutoEnrollmentAbortEvent:v12 countryCode:?];
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)setLastShallowRefreshTime:(id)time
{
  v4 = MEMORY[0x277CCA968];
  timeCopy = time;
  v6 = objc_alloc_init(v4);
  [v6 setDateFormat:@"dd-MM-yyyy_HH:mm:ss:SSS"];
  v7 = [v6 stringFromDate:timeCopy];

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "RequestOperation", "SetLastShallowRefreshTime");
  xpc_dictionary_set_string(v8, "LastShallowRefreshTime", [v7 cStringUsingEncoding:4]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v12 = xpc_connection_send_message_with_reply_sync(connection2, v8);

    v13 = xpc_dictionary_get_BOOL(v12, "Result");
  }

  else
  {
    v12 = defaultLogHandle(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(SetLastShallowRefreshTime) setLastShallowRefreshTime:v12];
    }

    v13 = 0;
  }

  return v13;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (delegate)
  {

    [(MSDKManagedDevice *)self setupConnection];
  }

  else
  {
    connection = [(MSDKManagedDevice *)self connection];
    xpc_connection_cancel(connection);

    [(MSDKManagedDevice *)self setConnection:0];
  }
}

- (MSDKManagedDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)setSEPDemoMode:(BOOL)mode
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "SetSEPDemoMode");
  xpc_dictionary_set_BOOL(v5, "SEPDemoMode", mode);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v10 = xpc_dictionary_get_BOOL(v9, "Result");
  }

  else
  {
    v9 = defaultLogHandle(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v9 setSEPDemoMode:v12, v13, v14, v15, v16, v17, v18];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)enterOfflineModeWithOptions:(id)options error:(id *)error
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    safeAssignError(error, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v8 = 0;
    v9 = 0;
    v6 = 0;
    LOBYTE(connection) = 0;
    goto LABEL_6;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "RequestOperation", "EnterOfflineMode");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    [MSDKManagedDevice enterOfflineModeWithOptions:error:];
    v8 = 0;
    v9 = v11;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  connection = [(MSDKManagedDevice *)self connection];
  v8 = xpc_connection_send_message_with_reply_sync(connection, v6);

  LOBYTE(connection) = xpc_dictionary_get_BOOL(v8, "Acknowledged");
  v9 = 0;
  if (error)
  {
LABEL_4:
    v9 = v9;
    *error = v9;
  }

LABEL_6:

  return connection;
}

- (BOOL)isOfflineMode:(id *)mode
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = defaultLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[MSDKManagedDevice isOfflineMode:]";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "QueryDeviceInfo", "MSDDeviceInOfflineMode");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, v6);

    LOBYTE(v10) = xpc_dictionary_get_BOOL(v9, "QueryDeviceInfoResult") && xpc_dictionary_get_BOOL(v9, "MSDDeviceInOfflineMode");
  }

  else
  {
    v21 = 0;
    safeAssignError(&v21, 3727741186, @"Failed to establish xpc connection to demod.");
    v10 = v21;
    v12 = defaultLogHandle(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v12 isOfflineMode:v13, v14, v15, v16, v17, v18, v19];
    }

    if (v10)
    {
      v20 = v10;
      *mode = v10;

      LOBYTE(v10) = 0;
    }

    v9 = 0;
  }

  return v10;
}

- (BOOL)prepareWithWiFi:(id)fi password:(id)password
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"SSID";
  v11[1] = @"Password";
  v12[0] = fi;
  v12[1] = password;
  v6 = MEMORY[0x277CBEAC0];
  passwordCopy = password;
  fiCopy = fi;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:2];

  LOBYTE(fiCopy) = [(MSDKManagedDevice *)self _prepareWithOptions:v9];
  return fiCopy;
}

- (int64_t)getDemoInstallState
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v7 = 0;
    v3 = 0;
LABEL_6:
    int64 = 0;
    goto LABEL_7;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "QueryDeviceInfo", "MSDDemoDeviceInstallState");
  [(MSDKManagedDevice *)self setupConnection];
  int64 = [(MSDKManagedDevice *)self connection];

  if (!int64)
  {
    [(MSDKManagedDevice *)v5 getDemoInstallState];
    v7 = 0;
    goto LABEL_7;
  }

  connection = [(MSDKManagedDevice *)self connection];
  v7 = xpc_connection_send_message_with_reply_sync(connection, v3);

  if (!xpc_dictionary_get_BOOL(v7, "QueryDeviceInfoResult"))
  {
    goto LABEL_6;
  }

  int64 = xpc_dictionary_get_int64(v7, "MSDDemoDeviceInstallState");
LABEL_7:

  return int64;
}

- (BOOL)isContentFrozen
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.plist"];

  if (!v4)
  {
    return 0;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager2 fileExistsAtPath:@"/var/mobile/Library/Preferences/com.apple.demo-settings.plist"];

  if (!v6)
  {
    return 0;
  }

  return [(MSDKManagedDevice *)self inferContentFrozenFromPreferencesFile];
}

- (BOOL)lockDemoContent
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "Demo");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Acknowledged");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v7 lockDemoContent:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)revertDemoContent
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "DemoSnapshotRevert");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Acknowledged");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v7 revertDemoContent:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)commitNewDemoContent
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "DemoSnapshotCommit");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Acknowledged");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v7 commitNewDemoContent:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)unenroll:(BOOL)unenroll
{
  if (unenroll)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:MEMORY[0x277CBEC38] forKey:@"ObliterateDevice"];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MSDKManagedDevice *)self _unenrollWithOptions:v4 outError:0];

  return v5;
}

- (id)getStoreType:(id *)type
{
  v4 = [(MSDKManagedDevice *)self _getDeviceOptions:type checkDemo:1];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"store_type"];
    if (!v6)
    {
      safeAssignError(type, 3727744773, @"Invalid device options.");
    }
  }

  else
  {
    safeAssignErrorNoOverwrite(type, 3727744768, @"An error has occurred.");
    v6 = 0;
  }

  return v6;
}

- (id)getFriendlyDeviceName
{
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, "QueryDeviceInfo", "MSDFriendlyDeviceName");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

      v8 = xpc_dictionary_get_BOOL(v7, "QueryDeviceInfoResult");
      string = xpc_dictionary_get_string(v7, "MSDFriendlyDeviceName");
      connection = 0;
      if (v8 && string)
      {
        connection = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      }
    }

    else
    {
      [(MSDKManagedDevice *)v5 getFriendlyDeviceName];
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v3 = 0;
    connection = 0;
  }

  return connection;
}

- (BOOL)setStoreOpenAt:(int64_t)at openMinute:(int64_t)minute closeHour:(int64_t)hour closeMinute:(int64_t)closeMinute
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = defaultLogHandle(self);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315138;
    v29 = "[MSDKManagedDevice setStoreOpenAt:openMinute:closeHour:closeMinute:]";
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v28, 0xCu);
  }

  isDeviceClassSupported = [(MSDKManagedDevice *)self isDeviceClassSupported];
  if (isDeviceClassSupported)
  {
    if (at < 0x18)
    {
      if (hour < 0x18)
      {
        if (minute < 0x3C)
        {
          if (closeMinute < 0x3C)
          {
            v13 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_string(v13, "RequestOperation", "SetStoreHour");
            xpc_dictionary_set_int64(v13, "OpenHour", at);
            xpc_dictionary_set_int64(v13, "OpenMinute", minute);
            xpc_dictionary_set_int64(v13, "CloseHour", hour);
            xpc_dictionary_set_int64(v13, "CloseMinute", closeMinute);
            [(MSDKManagedDevice *)self setupConnection];
            connection = [(MSDKManagedDevice *)self connection];

            v19 = defaultLogHandle(v18);
            v20 = v19;
            if (connection)
            {
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v28) = 0;
                _os_log_impl(&dword_259B7D000, v20, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: sending xpc...", &v28, 2u);
              }

              connection2 = [(MSDKManagedDevice *)self connection];
              v22 = xpc_connection_send_message_with_reply_sync(connection2, v13);

              v24 = defaultLogHandle(v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v28) = 0;
                _os_log_impl(&dword_259B7D000, v24, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: received response from xpc...", &v28, 2u);
              }

              v26 = defaultLogHandle(v25);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = MEMORY[0x259CB0A20](v22);
                v28 = 136315138;
                v29 = v27;
                _os_log_impl(&dword_259B7D000, v26, OS_LOG_TYPE_DEFAULT, "xpc dictionary from reply: %s", &v28, 0xCu);
              }

              v15 = xpc_dictionary_get_BOOL(v22, "Result");
              goto LABEL_19;
            }

            [MSDKManagedDevice setStoreOpenAt:v19 openMinute:? closeHour:? closeMinute:?];
          }

          else
          {
            v13 = defaultLogHandle(isDeviceClassSupported);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v28) = 0;
              v14 = "Close minute out of range.";
              goto LABEL_17;
            }
          }
        }

        else
        {
          v13 = defaultLogHandle(isDeviceClassSupported);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v28) = 0;
            v14 = "Open minute out of range.";
            goto LABEL_17;
          }
        }
      }

      else
      {
        v13 = defaultLogHandle(isDeviceClassSupported);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          v14 = "Close hour out of range.";
          goto LABEL_17;
        }
      }
    }

    else
    {
      v13 = defaultLogHandle(isDeviceClassSupported);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        v14 = "Open hour out of range.";
LABEL_17:
        _os_log_impl(&dword_259B7D000, v13, OS_LOG_TYPE_DEFAULT, v14, &v28, 2u);
      }
    }

    v15 = 0;
LABEL_19:

    return v15;
  }

  return 0;
}

- (BOOL)setIdleDelay:(int64_t)delay
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = defaultLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "[MSDKManagedDevice setIdleDelay:]";
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v26, 0xCu);
  }

  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "RequestOperation", "SetScreenSaverIdleDelay");
  xpc_dictionary_set_int64(v6, "IdleDelay", delay);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  v9 = defaultLogHandle(v8);
  v10 = v9;
  if (connection)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_259B7D000, v10, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: sending xpc...", &v26, 2u);
    }

    connection2 = [(MSDKManagedDevice *)self connection];
    v10 = xpc_connection_send_message_with_reply_sync(connection2, v6);

    v13 = defaultLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_259B7D000, v13, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: received response from xpc...", &v26, 2u);
    }

    v15 = defaultLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = MEMORY[0x259CB0A20](v10);
      v26 = 136446210;
      v27 = v16;
      _os_log_impl(&dword_259B7D000, v15, OS_LOG_TYPE_DEFAULT, "xpc dictionary from reply: %{public}s", &v26, 0xCu);
    }

    v17 = xpc_dictionary_get_BOOL(v10, "Result");
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v10 setIdleDelay:v19, v20, v21, v22, v23, v24, v25];
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)configureWiFi:(id)fi password:(id)password
{
  fiCopy = fi;
  passwordCopy = password;
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "RequestOperation", "ConfigureWiFi");
    xpc_dictionary_set_string(v8, "SSID", [fiCopy UTF8String]);
    if (passwordCopy)
    {
      xpc_dictionary_set_string(v8, "Password", [passwordCopy UTF8String]);
    }

    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v12 = xpc_connection_send_message_with_reply_sync(connection2, v8);

      v13 = xpc_dictionary_get_BOOL(v12, "Result");
    }

    else
    {
      v12 = defaultLogHandle(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v12 configureWiFi:v15 password:v16, v17, v18, v19, v20, v21];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)disconnectAndForgetWiFi:(id *)fi
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    safeAssignError(fi, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v8 = 0;
    v10 = 0;
    v5 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "DisconnectAndForgetWiFi");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    v21 = 0;
    safeAssignError(&v21, 3727741186, @"Failed to establish xpc connection to demod.");
    v10 = v21;
    v12 = defaultLogHandle(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v12 disconnectAndForgetWiFi:v13, v14, v15, v16, v17, v18, v19];
    }

    if (fi)
    {
      v20 = v10;
      v8 = 0;
      v9 = 0;
      *fi = v10;
      goto LABEL_6;
    }

    v8 = 0;
    goto LABEL_5;
  }

  connection2 = [(MSDKManagedDevice *)self connection];
  v8 = xpc_connection_send_message_with_reply_sync(connection2, v5);

  v9 = xpc_dictionary_get_BOOL(v8, "Result");
  v10 = 0;
LABEL_6:

  return v9;
}

- (BOOL)setDeviceLanguage:(id)language andRegion:(id)region
{
  languageCopy = language;
  regionCopy = region;
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "RequestOperation", "SetLanguageAndRegion");
    xpc_dictionary_set_string(v8, "languageIdentifier", [languageCopy UTF8String]);
    xpc_dictionary_set_string(v8, "regionCode", [regionCopy UTF8String]);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v12 = xpc_connection_send_message_with_reply_sync(connection2, v8);

      v13 = xpc_dictionary_get_BOOL(v12, "Result");
    }

    else
    {
      v12 = defaultLogHandle(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v12 setDeviceLanguage:v15 andRegion:v16, v17, v18, v19, v20, v21];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getDeviceLanguageandRegion
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[MSDKManagedDevice getDeviceLanguageandRegion]";
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", buf, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "RequestOperation", "GetLanguageAndRegion");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v8 = xpc_connection_send_message_with_reply_sync(connection2, v4);

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(v8, "languageIdentifier")}];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(v8, "regionCode")}];
    v20[0] = @"languageIdentifier";
    v20[1] = @"regionCode";
    v21[0] = v9;
    v21[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v8 = defaultLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v8 getDeviceLanguageandRegion:v13];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)saveBluetoothPairingInfo
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "SaveBTPairingInfo");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Result");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v7 saveBluetoothPairingInfo:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)checkInBlockingUI
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "UICheckIn");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Acknowledged");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v7 checkInBlockingUI:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)cancelOperation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "Cancel");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Acknowledged");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v7 cancelOperation:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isStoreOpen:(id)open withError:(id *)error
{
  openCopy = open;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "RequestOperation", "IsStoreOpen");
  if (openCopy)
  {
    [openCopy timeIntervalSince1970];
    xpc_dictionary_set_date(v7, "EvaluateAgainstDate", v8);
  }

  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v11 = xpc_connection_send_message_with_reply_sync(connection2, v7);

    v12 = xpc_dictionary_get_BOOL(v11, "ResultData");
    v13 = defaultLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [MSDKManagedDevice isStoreOpen:withError:];
    }

    v14 = 0;
    if (error)
    {
      *error = 0;
    }
  }

  else
  {
    v19 = 0;
    safeAssignError(&v19, 3727741186, @"Failed to establish xpc connection to demod.");
    v16 = v19;
    v14 = v16;
    if (error)
    {
      v17 = v16;
      *error = v14;
      if (v14)
      {
        v18 = defaultLogHandle(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [MSDKManagedDevice isStoreOpen:error withError:?];
        }
      }
    }

    v11 = 0;
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (id)nextStoreOpenDate:(id)date withError:(id *)error
{
  dateCopy = date;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "RequestOperation", "NextStoreOpenDate");
  if (dateCopy)
  {
    [dateCopy timeIntervalSince1970];
    xpc_dictionary_set_date(v7, "EvaluateAgainstDate", v8);
  }

  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v11 = xpc_connection_send_message_with_reply_sync(connection2, v7);

    connection = [MEMORY[0x277CBEAC0] dictionaryWithXPCDictionary:v11];
    v12 = [connection objectForKey:@"Result"];
    v13 = v12;
    if (v12 && ([v12 BOOLValue] & 1) != 0)
    {
      v14 = [connection objectForKey:@"NextStoreHour"];
      if (v14)
      {
        v15 = v14;
        v16 = defaultLogHandle(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [MSDKManagedDevice nextStoreOpenDate:withError:];
        }

        v17 = 0;
        if (error)
        {
          *error = 0;
        }

        goto LABEL_11;
      }

      v21 = 0;
      safeAssignError(&v21, 3727744768, @"Invalid value for nextStoreOpenDate returned by demod");
      v17 = v21;
    }

    else
    {
      [MSDKManagedDevice nextStoreOpenDate:connection withError:?];
      v17 = v23[1];
    }
  }

  else
  {
    v23[0] = 0;
    safeAssignError(v23, 3727741186, @"Failed to establish xpc connection to demod.");
    v17 = v23[0];
    v13 = 0;
    v11 = 0;
  }

  if (error)
  {
    v19 = v17;
    *error = v17;
    if (v17)
    {
      v20 = defaultLogHandle(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MSDKManagedDevice nextStoreOpenDate:error withError:?];
      }
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)nextStoreCloseDate:(id)date withError:(id *)error
{
  dateCopy = date;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "RequestOperation", "NextStoreCloseDate");
  if (dateCopy)
  {
    [dateCopy timeIntervalSince1970];
    xpc_dictionary_set_date(v7, "EvaluateAgainstDate", v8);
  }

  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v11 = xpc_connection_send_message_with_reply_sync(connection2, v7);

    connection = [MEMORY[0x277CBEAC0] dictionaryWithXPCDictionary:v11];
    v12 = [connection objectForKey:@"Result"];
    v13 = v12;
    if (v12 && ([v12 BOOLValue] & 1) != 0)
    {
      v14 = [connection objectForKey:@"NextStoreHour"];
      if (v14)
      {
        v15 = v14;
        v16 = defaultLogHandle(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [MSDKManagedDevice nextStoreCloseDate:withError:];
        }

        v17 = 0;
        if (error)
        {
          *error = 0;
        }

        goto LABEL_11;
      }

      v21 = 0;
      safeAssignError(&v21, 3727744768, @"Invalid value for nextStoreCloseDate returned by demod");
      v17 = v21;
    }

    else
    {
      [MSDKManagedDevice nextStoreOpenDate:connection withError:?];
      v17 = v23[1];
    }
  }

  else
  {
    v23[0] = 0;
    safeAssignError(v23, 3727741186, @"Failed to establish xpc connection to demod.");
    v17 = v23[0];
    v13 = 0;
    v11 = 0;
  }

  if (error)
  {
    v19 = v17;
    *error = v17;
    if (v17)
    {
      v20 = defaultLogHandle(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MSDKManagedDevice nextStoreCloseDate:error withError:?];
      }
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (void)updateStoreHours:(id)hours evaluateAgainstDate:(id)date
{
  dateCopy = date;
  xpcArrayFromArray = [hours xpcArrayFromArray];
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "RequestOperation", "UpdateStoreHours");
  xpc_dictionary_set_value(v8, "RawStoreHours", xpcArrayFromArray);
  [dateCopy timeIntervalSince1970];
  v10 = v9;

  xpc_dictionary_set_date(v8, "EvaluateAgainstDate", v10);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v14 = xpc_connection_send_message_with_reply_sync(connection2, v8);

    v15 = xpc_dictionary_get_BOOL(v14, "Result");
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [MSDKManagedDevice updateStoreHours:v12 evaluateAgainstDate:?];
    v14 = 0;
  }

  v16 = defaultLogHandle(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [MSDKManagedDevice updateStoreHours:evaluateAgainstDate:];
  }

LABEL_6:
}

- (id)readPreferencesFileObjectForKey:(id)key
{
  keyCopy = key;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:keyCopy];

  return v5;
}

- (BOOL)storeDataBlob:(id)blob
{
  v19 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  isDeviceClassSupported = [(MSDKManagedDevice *)self isDeviceClassSupported];
  if (!isDeviceClassSupported)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if (!blobCopy)
  {
    v9 = defaultLogHandle(isDeviceClassSupported);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice storeDataBlob:];
    }

    goto LABEL_19;
  }

  v6 = [blobCopy length];
  if (v6 > 0x400000)
  {
    v9 = defaultLogHandle(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice storeDataBlob:blobCopy];
    }

    goto LABEL_19;
  }

  getCacheIdentifier = [(MSDKManagedDevice *)self getCacheIdentifier];
  v8 = defaultLogHandle(getCacheIdentifier);
  v9 = v8;
  if (!getCacheIdentifier)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice storeDataBlob:];
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = getCacheIdentifier;
    v17 = 2048;
    v18 = [blobCopy length];
    _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "uniqueIdentifier:%{public}@ %lu", &v15, 0x16u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "RequestOperation", "StoreDataBlob");
  xpc_dictionary_set_string(v9, "ContainerUniqueIdentifier", [getCacheIdentifier UTF8String]);
  xpc_dictionary_set_data(v9, "PersistentDataBlob", [blobCopy bytes], objc_msgSend(blobCopy, "length"));
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    [MSDKManagedDevice storeDataBlob:getCacheIdentifier];
LABEL_19:
    v13 = 0;
    goto LABEL_9;
  }

  connection2 = [(MSDKManagedDevice *)self connection];
  v12 = xpc_connection_send_message_with_reply_sync(connection2, v9);

  v13 = xpc_dictionary_get_BOOL(v12, "Acknowledged");
LABEL_9:

LABEL_11:
  return v13;
}

- (id)retrieveDataBlob
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v8 = 0;
    connection = 0;
    getCacheIdentifier = 0;
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  getCacheIdentifier = [(MSDKManagedDevice *)self getCacheIdentifier];
  if (!getCacheIdentifier)
  {
    v8 = 0;
    connection = 0;
    goto LABEL_8;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "RequestOperation", "RetrieveSavedDataBlob");
  xpc_dictionary_set_string(v4, "ContainerUniqueIdentifier", [getCacheIdentifier UTF8String]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v8 = xpc_connection_send_message_with_reply_sync(connection2, v4);

    connection = xpc_dictionary_get_value(v8, "SavedDataBlob");
    bytes_ptr = xpc_data_get_bytes_ptr(connection);
    length = xpc_data_get_length(connection);
    if (length)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:bytes_ptr length:length];
      goto LABEL_10;
    }
  }

  else
  {
    [(MSDKManagedDevice *)v6 retrieveDataBlob];
    v8 = 0;
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
}

- (BOOL)deleteDataBlob
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  getCacheIdentifier = [(MSDKManagedDevice *)self getCacheIdentifier];
  if (!getCacheIdentifier)
  {
    return 0;
  }

  v4 = getCacheIdentifier;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "DeleteDataBlob");
  xpc_dictionary_set_string(v5, "ContainerUniqueIdentifier", [v4 UTF8String]);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v10 = xpc_dictionary_get_BOOL(v9, "Acknowledged");
    v11 = v4;
    v4 = v9;
  }

  else
  {
    v11 = defaultLogHandle(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v11 deleteDataBlob:v13];
    }

    v10 = 0;
  }

  return v10;
}

- (id)getPersistentWiFiSsid
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = @"PersistentWiFiSSID";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [(MSDKManagedDevice *)self _getCurrentNetworkInfoForKeys:v3 outError:0];

  if (v4)
  {
    v5 = [v4 objectForKey:@"PersistentWiFiSSID"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDigitalSecurityEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[MSDKManagedDevice isDigitalSecurityEnabled]";
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v9, 0xCu);
  }

  _readOwnershipWarningFromNvram = [(MSDKManagedDevice *)self _readOwnershipWarningFromNvram];
  v5 = _readOwnershipWarningFromNvram;
  if (!_readOwnershipWarningFromNvram)
  {
    goto LABEL_9;
  }

  v6 = defaultLogHandle(_readOwnershipWarningFromNvram);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[MSDKManagedDevice isDigitalSecurityEnabled]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "%s - ownershipWarning:  %{public}@", &v9, 0x16u);
  }

  if ([v5 isEqualToString:@"1"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"2"))
  {
    v7 = 1;
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  return v7;
}

- (BOOL)clearOwnershipWarning
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    v21 = "[MSDKManagedDevice clearOwnershipWarning]";
    _os_log_impl(&dword_259B7D000, v3, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v20, 0xCu);
  }

  v4 = [(MSDKManagedDevice *)self readNVRam:@"ownership-warning"];
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "command", "deleteNvram:");
    xpc_dictionary_set_string(v5, "payload", [@"ownership-warning" cStringUsingEncoding:4]);
    [(MSDKManagedDevice *)self setupHelperConnection];
    helperConnection = [(MSDKManagedDevice *)self helperConnection];

    v8 = defaultLogHandle(v7);
    v9 = v8;
    if (helperConnection)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: sending xpc...", &v20, 2u);
      }

      helperConnection2 = [(MSDKManagedDevice *)self helperConnection];
      v9 = xpc_connection_send_message_with_reply_sync(helperConnection2, v5);

      v11 = xpc_dictionary_get_BOOL(v9, "result");
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v9 clearOwnershipWarning:v13];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)saveStoreHour:(id)hour
{
  v23 = *MEMORY[0x277D85DE8];
  hourCopy = hour;
  v4 = defaultLogHandle(hourCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[MSDKManagedDevice saveStoreHour:]";
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", buf, 0xCu);
  }

  int64 = xpc_dictionary_get_int64(hourCopy, "OpenHour");
  v6 = xpc_dictionary_get_int64(hourCopy, "OpenMinute");
  v20 = xpc_dictionary_get_int64(hourCopy, "CloseHour");
  v7 = xpc_dictionary_get_int64(hourCopy, "CloseMinute");
  v8 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.ScreenSaverConfig.plist"];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  }

  v9 = MEMORY[0x277CBEAC0];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:int64];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v12 = [v9 dictionaryWithObjectsAndKeys:{v10, @"Hour", v11, @"Minute", 0}];

  [v8 setObject:v12 forKey:@"StoreOpenAt"];
  v13 = MEMORY[0x277CBEAC0];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v16 = [v13 dictionaryWithObjectsAndKeys:{v14, @"Hour", v15, @"Minute", 0}];

  [v8 setObject:v16 forKey:@"StoreCloseAt"];
  v17 = defaultLogHandle([v8 writeToFile:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.ScreenSaverConfig.plist" atomically:1]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[MSDKManagedDevice saveStoreHour:]";
    _os_log_impl(&dword_259B7D000, v17, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s will return", buf, 0xCu);
  }

  reply = xpc_dictionary_create_reply(hourCopy);
  xpc_dictionary_set_BOOL(reply, "Result", 1);

  return reply;
}

- (id)saveScreenSaverIdleDelay:(id)delay
{
  v13 = *MEMORY[0x277D85DE8];
  delayCopy = delay;
  v4 = defaultLogHandle(delayCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[MSDKManagedDevice saveScreenSaverIdleDelay:]";
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", &v11, 0xCu);
  }

  int64 = xpc_dictionary_get_int64(delayCopy, "IdleDelay");
  v6 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.ScreenSaverConfig.plist"];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:int64];
  [v6 setObject:v7 forKey:@"IdleDelayInMinutes"];

  v8 = defaultLogHandle([v6 writeToFile:@"/var/mobile/Library/Preferences/com.apple.MobileStoreDemo.ScreenSaverConfig.plist" atomically:1]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[MSDKManagedDevice saveScreenSaverIdleDelay:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s will return", &v11, 0xCu);
  }

  reply = xpc_dictionary_create_reply(delayCopy);
  xpc_dictionary_set_BOOL(reply, "Result", 1);

  return reply;
}

- (BOOL)setupConnection:(id)connection withMachService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(MSDKManagedDevice *)selfCopy valueForKey:connectionCopy];

  if (!v9)
  {
    mach_service = xpc_connection_create_mach_service([serviceCopy cStringUsingEncoding:4], 0, 0);
    [(MSDKManagedDevice *)selfCopy setValue:mach_service forKey:connectionCopy];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke;
    v19 = &unk_2798EF8D8;
    v20 = selfCopy;
    v11 = connectionCopy;
    v21 = v11;
    xpc_connection_set_event_handler(mach_service, &v16);
    if (mach_service)
    {
      v12 = [(MSDKManagedDevice *)selfCopy valueForKey:v11, v16, v17, v18, v19, v20];
      xpc_connection_resume(v12);
    }
  }

  objc_sync_exit(selfCopy);

  v13 = [(MSDKManagedDevice *)selfCopy valueForKey:connectionCopy];
  v14 = v13 != 0;

  return v14;
}

void __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x259CB0BB0]();
  v5 = defaultLogHandle(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_1();
  }

  v7 = defaultLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_2(v3, v7);
  }

  if (v4 == MEMORY[0x277D86480])
  {
    v8 = [*(a1 + 32) setValue:0 forKey:*(a1 + 40)];
    if (v3 == MEMORY[0x277D863F8])
    {
      v9 = defaultLogHandle(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "XPC_ERROR_CONNECTION_INVALID";
        v11 = buf;
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 != MEMORY[0x277D863F0])
      {
        goto LABEL_16;
      }

      v9 = defaultLogHandle(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v10 = "XPC_ERROR_CONNECTION_INTERRUPTED";
        v11 = &v12;
LABEL_14:
        _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    goto LABEL_16;
  }

  if (v4 != MEMORY[0x277D86468])
  {
    __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_3();
  }

  [*(a1 + 32) handleMessage:v3];
LABEL_16:
}

- (void)handleMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "ContentUpdateStatus");
  if (string)
  {
    [(MSDKManagedDevice *)self handleContentUpdateStatus:string event:messageCopy];
  }
}

- (void)handleContentUpdateStatus:(const char *)status event:(id)event
{
  v57 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (!strncmp(status, "Error", 6uLL))
  {
    v10 = [(MSDKManagedDevice *)self errorWithXPCDictionary:eventCopy];
    v11 = defaultLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      userInfo = [v10 userInfo];
      *buf = 138543362;
      *&buf[4] = userInfo;
      _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "Received an error: %{public}@", buf, 0xCu);
    }

    v14 = defaultLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "Will call didReceiveError with %{public}@", buf, 0xCu);
    }

    delegate = [(MSDKManagedDevice *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(MSDKManagedDevice *)self delegate];
      [delegate2 didReceiveError:v10];
    }
  }

  else
  {
    v7 = strncmp(status, "Progress", 9uLL);
    if (!v7)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v56 = 0;
      v18 = defaultLogHandle(v7);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [MSDKManagedDevice handleContentUpdateStatus:event:];
      }

      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke;
      applier[3] = &unk_2798EF900;
      applier[4] = buf;
      v19 = xpc_dictionary_apply(eventCopy, applier);
      v20 = defaultLogHandle(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(*&buf[8] + 24);
        *v53 = 134217984;
        v54 = v21;
        _os_log_impl(&dword_259B7D000, v20, OS_LOG_TYPE_DEFAULT, "Will call didReceiveProgress with %td", v53, 0xCu);
      }

      delegate3 = [(MSDKManagedDevice *)self delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        delegate4 = [(MSDKManagedDevice *)self delegate];
        [delegate4 didReceiveProgress:*(*&buf[8] + 24)];
      }

      goto LABEL_34;
    }

    if (strncmp(status, "Completed", 0xAuLL))
    {
      if (!strncmp(status, "AllowContentUpdateCancel", 0x19uLL))
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v56) = 0;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke_195;
        v51[3] = &unk_2798EF900;
        v51[4] = buf;
        v32 = xpc_dictionary_apply(eventCopy, v51);
        v33 = defaultLogHandle(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(*&buf[8] + 24);
          *v53 = 67109120;
          LODWORD(v54) = v34;
          _os_log_impl(&dword_259B7D000, v33, OS_LOG_TYPE_DEFAULT, "Will call didReceiveAllowCancel with %d", v53, 8u);
        }

        delegate5 = [(MSDKManagedDevice *)self delegate];
        v36 = objc_opt_respondsToSelector();

        if (v36)
        {
          delegate6 = [(MSDKManagedDevice *)self delegate];
          [delegate6 didReceiveAllowCancel:*(*&buf[8] + 24)];
        }
      }

      else
      {
        v8 = strncmp(status, "ContentUpdateDisableIdleTimer", 0x1EuLL);
        if (v8)
        {
          v9 = defaultLogHandle(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *&buf[4] = status;
            _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "Unknown message from xpc: %{public}s", buf, 0xCu);
          }

          goto LABEL_35;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v56) = 0;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke_200;
        v50[3] = &unk_2798EF900;
        v50[4] = buf;
        v38 = xpc_dictionary_apply(eventCopy, v50);
        v39 = defaultLogHandle(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(*&buf[8] + 24);
          *v53 = 67109120;
          LODWORD(v54) = v40;
          _os_log_impl(&dword_259B7D000, v39, OS_LOG_TYPE_DEFAULT, "Will call didReceiveDisableIdleTimer with %d", v53, 8u);
        }

        delegate7 = [(MSDKManagedDevice *)self delegate];
        v42 = objc_opt_respondsToSelector();

        if (v42)
        {
          delegate8 = [(MSDKManagedDevice *)self delegate];
          [delegate8 didReceiveDisableIdleTimer:*(*&buf[8] + 24)];
        }
      }

LABEL_34:
      _Block_object_dispose(buf, 8);
LABEL_35:
      v10 = 0;
      goto LABEL_36;
    }

    v10 = [(MSDKManagedDevice *)self errorWithXPCDictionary:eventCopy];
    v25 = defaultLogHandle(v10);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (!v10)
    {
      if (v26)
      {
        *buf = 0;
        _os_log_impl(&dword_259B7D000, v25, OS_LOG_TYPE_DEFAULT, "Will call operationCompleted.", buf, 2u);
      }

      delegate9 = [(MSDKManagedDevice *)self delegate];
      v45 = objc_opt_respondsToSelector();

      delegate10 = [(MSDKManagedDevice *)self delegate];
      v47 = delegate10;
      if (v45)
      {
        [delegate10 blockingStateChanged:0];
      }

      else
      {
        v48 = objc_opt_respondsToSelector();

        if (v48)
        {
          delegate11 = [(MSDKManagedDevice *)self delegate];
          [delegate11 operationCompleted];
        }
      }

      goto LABEL_35;
    }

    if (v26)
    {
      code = [v10 code];
      localizedDescription = [v10 localizedDescription];
      *buf = 134218242;
      *&buf[4] = code;
      *&buf[12] = 2114;
      *&buf[14] = localizedDescription;
      _os_log_impl(&dword_259B7D000, v25, OS_LOG_TYPE_DEFAULT, "Will call operationFailed: with error %tx:%{public}@.", buf, 0x16u);
    }

    delegate12 = [(MSDKManagedDevice *)self delegate];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      delegate13 = [(MSDKManagedDevice *)self delegate];
      [delegate13 operationFailed:v10];
    }
  }

LABEL_36:
}

uint64_t __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke(uint64_t a1, char *__s1, void *a3)
{
  if (!strncmp(__s1, "Percentage", 0xBuLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_int64_get_value(a3);
  }

  return 1;
}

uint64_t __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke_195(uint64_t a1, char *__s1, void *a3)
{
  if (!strncmp(__s1, "allowCancel", 0xCuLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_BOOL_get_value(a3);
  }

  return 1;
}

uint64_t __53__MSDKManagedDevice_handleContentUpdateStatus_event___block_invoke_200(uint64_t a1, char *__s1, void *a3)
{
  if (!strncmp(__s1, "disableIdleTimer", 0x11uLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_BOOL_get_value(a3);
  }

  return 1;
}

- (id)errorWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __44__MSDKManagedDevice_errorWithXPCDictionary___block_invoke;
  applier[3] = &unk_2798EF928;
  applier[4] = &v20;
  applier[5] = &v14;
  applier[6] = &v8;
  xpc_dictionary_apply(dictionaryCopy, applier);
  v4 = v21[3];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:v15[5] code:v4 userInfo:v9[5]];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v5;
}

uint64_t __44__MSDKManagedDevice_errorWithXPCDictionary___block_invoke(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  if (!strncmp(a2, "ErrorCode", 0xAuLL))
  {
    *(*(a1[4] + 8) + 24) = xpc_int64_get_value(v5);
  }

  else if (!strncmp(a2, "ErrorDomain", 0xCuLL))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    v11 = *(a1[5] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else if (strncmp(a2, "ContentUpdateStatus", 0x14uLL))
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    if (string_ptr)
    {
      v7 = *(*(a1[6] + 8) + 40);
      v8 = [MEMORY[0x277CCACA8] stringWithCString:string_ptr encoding:4];
      v9 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:4];
      [v7 setObject:v8 forKey:v9];
    }
  }

  return 1;
}

- (BOOL)inferContentFrozenFromPreferencesFile
{
  v2 = +[MSDPreferencesFile sharedInstance];
  v3 = [v2 objectForKey:@"demo-install-state"];

  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:@"device_options"];
  v6 = [v5 objectForKey:@"disable_snapshot_mode"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v3 integerValue] == 5;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (!v6)
    {
LABEL_8:
      LOBYTE(v8) = 1;
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = [v6 BOOLValue] ^ 1;
LABEL_9:

  return v7 & v8;
}

- (id)getCacheIdentifier
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      if (CFEqual(v4, @"Internal"))
      {
        processInfo = [MEMORY[0x277CCAC38] processInfo];
        bundleIdentifier = [processInfo processName];
      }

      else
      {
        bundleIdentifier = 0;
      }

      CFRelease(v5);
    }

    else
    {
      bundleIdentifier = 0;
    }
  }

  return bundleIdentifier;
}

- (id)readNVRam:(id)ram
{
  ramCopy = ram;
  mainPort = 0;
  if (IOMasterPort(*MEMORY[0x277D85F18], &mainPort))
  {
    NSLog(&cfstr_CouldnTLocateB.isa);
  }

  else
  {
    v4 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v4)
    {
      v5 = v4;
      CFProperty = IORegistryEntryCreateCFProperty(v4, ramCopy, *MEMORY[0x277CBECE8], 0);
      IOObjectRelease(v5);
      goto LABEL_4;
    }

    NSLog(&cfstr_CouldnTLocateO.isa);
  }

  CFProperty = 0;
LABEL_4:

  return CFProperty;
}

- (BOOL)_isEnrolled:(id *)enrolled checkDemo:(BOOL)demo
{
  demoCopy = demo;
  v47 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MSDKManagedDevice _isEnrolled:checkDemo:]"];
  if (![(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    safeAssignError(enrolled, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(enrolled) = 0;
    goto LABEL_7;
  }

  xpc_cache = [(MSDKManagedDevice *)selfCopy xpc_cache];
  v9 = [xpc_cache objectForKey:v7];

  if (v9)
  {
    xpc_cache2 = [(MSDKManagedDevice *)selfCopy xpc_cache];
    v12 = [xpc_cache2 objectForKey:v7];
    LODWORD(enrolled) = [v12 BOOLValue];

    v14 = defaultLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v44 = "[MSDKManagedDevice _isEnrolled:checkDemo:]";
      v45 = 1024;
      enrolledCopy3 = enrolled;
      _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "%s - Found cached result: %d", buf, 0x12u);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_7;
  }

  if (demoCopy)
  {
    v20 = +[MSDKDemoState sharedInstance];
    v42 = 0;
    v21 = [v20 _isDeviceEnrolledWithDeKOTA:&v42];
    v16 = v42;

    if (v16)
    {
      v18 = 0;
LABEL_20:
      if (enrolled)
      {
        v34 = v16;
        v15 = 0;
        v17 = 0;
        enrolledCopy2 = enrolled;
        LOBYTE(enrolled) = 0;
        *enrolledCopy2 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      goto LABEL_7;
    }

    if ((v21 & 1) == 0)
    {
      v36 = defaultLogHandle(v10);
      [MSDKManagedDevice _isEnrolled:v36 checkDemo:?];
      v17 = 0;
      v18 = 0;
      goto LABEL_24;
    }
  }

  v22 = defaultLogHandle(v10);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[MSDKManagedDevice _isEnrolled:checkDemo:]";
    _os_log_impl(&dword_259B7D000, v22, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
  }

  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v18, "QueryDeviceInfo", "MSDDemoDeviceManaged");
  [(MSDKManagedDevice *)selfCopy setupConnection];
  connection = [(MSDKManagedDevice *)selfCopy connection];
  v24 = connection == 0;

  if (v24)
  {
    v41 = 0;
    safeAssignError(&v41, 3727741186, @"Failed to establish xpc connection to demod.");
    v16 = v41;
    v26 = defaultLogHandle(v16);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v26 _isEnrolled:v27 checkDemo:v28, v29, v30, v31, v32, v33];
    }

    goto LABEL_20;
  }

  connection2 = [(MSDKManagedDevice *)selfCopy connection];
  v17 = xpc_connection_send_message_with_reply_sync(connection2, v18);

  if (!xpc_dictionary_get_BOOL(v17, "QueryDeviceInfoResult"))
  {
LABEL_24:
    enrolled = 0;
    goto LABEL_25;
  }

  enrolled = xpc_dictionary_get_BOOL(v17, "MSDDemoDeviceManaged");
LABEL_25:
  v15 = MAEGetActivationStateWithError();
  v16 = 0;
  if (!v16 && v15)
  {
    v37 = [v15 isEqualToString:*MEMORY[0x277D288B0]];
    if (v37)
    {
      v38 = defaultLogHandle(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v44 = "[MSDKManagedDevice _isEnrolled:checkDemo:]";
        v45 = 1024;
        enrolledCopy3 = enrolled;
        _os_log_impl(&dword_259B7D000, v38, OS_LOG_TYPE_DEFAULT, "%s - caching value %d", buf, 0x12u);
      }

      xpc_cache3 = [(MSDKManagedDevice *)selfCopy xpc_cache];
      v40 = [MEMORY[0x277CCABB0] numberWithBool:enrolled];
      [xpc_cache3 setObject:v40 forKey:v7];
    }

    v16 = 0;
  }

LABEL_7:

  objc_sync_exit(selfCopy);
  return enrolled;
}

- (BOOL)_isContentFrozen_xpc:(id *)frozen_xpc checkDemo:(BOOL)demo
{
  demoCopy = demo;
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]"];
  if (![(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    safeAssignError(frozen_xpc, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_7:
    LOBYTE(frozen_xpc) = 0;
    goto LABEL_28;
  }

  xpc_cache = [(MSDKManagedDevice *)selfCopy xpc_cache];
  v9 = [xpc_cache objectForKey:v7];

  if (v9)
  {
    xpc_cache2 = [(MSDKManagedDevice *)selfCopy xpc_cache];
    v12 = [xpc_cache2 objectForKey:v7];
    LODWORD(frozen_xpc) = [v12 BOOLValue];

    v14 = defaultLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]";
      v43 = 1024;
      frozen_xpcCopy2 = frozen_xpc;
      _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "%s - Found cached result: %d", buf, 0x12u);
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_28;
  }

  if (demoCopy)
  {
    v18 = +[MSDKDemoState sharedInstance];
    v40 = 0;
    v19 = [v18 _isDeviceEnrolledWithDeKOTA:&v40];
    v15 = v40;

    if (v15)
    {
      v17 = 0;
LABEL_20:
      if (!frozen_xpc)
      {
        v16 = 0;
        goto LABEL_28;
      }

      v33 = v15;
      v16 = 0;
      *frozen_xpc = v15;
      goto LABEL_7;
    }

    if ((v19 & 1) == 0)
    {
      v34 = defaultLogHandle(v10);
      [MSDKManagedDevice _isContentFrozen_xpc:v34 checkDemo:?];
      v16 = 0;
      v17 = 0;
      goto LABEL_24;
    }
  }

  v20 = defaultLogHandle(v10);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]";
    _os_log_impl(&dword_259B7D000, v20, OS_LOG_TYPE_DEFAULT, "%s - making XPC call", buf, 0xCu);
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v17, "QueryDeviceInfo", "MSDDemoDeviceFrozen");
  [(MSDKManagedDevice *)selfCopy setupConnection];
  connection = [(MSDKManagedDevice *)selfCopy connection];
  v22 = connection == 0;

  if (v22)
  {
    v39 = 0;
    safeAssignError(&v39, 3727741186, @"Failed to establish xpc connection to demod.");
    v15 = v39;
    v25 = defaultLogHandle(v15);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v25 _isContentFrozen_xpc:v26 checkDemo:v27, v28, v29, v30, v31, v32];
    }

    goto LABEL_20;
  }

  connection2 = [(MSDKManagedDevice *)selfCopy connection];
  v16 = xpc_connection_send_message_with_reply_sync(connection2, v17);

  v24 = xpc_dictionary_get_BOOL(v16, "QueryDeviceInfoResult");
  if (!v24)
  {
LABEL_24:
    frozen_xpc = 0;
    goto LABEL_25;
  }

  v24 = xpc_dictionary_get_BOOL(v16, "MSDDemoDeviceFrozen");
  frozen_xpc = v24;
LABEL_25:
  v35 = defaultLogHandle(v24);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]";
    v43 = 1024;
    frozen_xpcCopy2 = frozen_xpc;
    _os_log_impl(&dword_259B7D000, v35, OS_LOG_TYPE_DEFAULT, "%s - caching value %d", buf, 0x12u);
  }

  xpc_cache3 = [(MSDKManagedDevice *)selfCopy xpc_cache];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:frozen_xpc];
  [xpc_cache3 setObject:v37 forKey:v7];

  v15 = 0;
LABEL_28:

  objc_sync_exit(selfCopy);
  return frozen_xpc;
}

- (unint64_t)_typeOfDemoDevice:(id *)device checkDemo:(BOOL)demo
{
  demoCopy = demo;
  v44 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]"];
  v8 = defaultLogHandle(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", buf, 0xCu);
  }

  if (![(MSDKManagedDevice *)selfCopy isDeviceClassSupported])
  {
    safeAssignError(device, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v17 = 0;
    device = 0;
    v18 = 0;
    goto LABEL_9;
  }

  xpc_cache = [(MSDKManagedDevice *)selfCopy xpc_cache];
  v10 = [xpc_cache objectForKey:v7];

  if (v10)
  {
    xpc_cache2 = [(MSDKManagedDevice *)selfCopy xpc_cache];
    v12 = [xpc_cache2 objectForKey:v7];
    bOOLValue = [v12 BOOLValue];

    v15 = defaultLogHandle(v14);
    uint64 = bOOLValue;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v41 = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
      v42 = 2048;
      v43 = bOOLValue;
      _os_log_impl(&dword_259B7D000, v15, OS_LOG_TYPE_DEFAULT, "%s - Found cached result: %lu", buf, 0x16u);
    }

    v17 = 0;
    device = 0;
    v18 = 0;
    goto LABEL_10;
  }

  if (!demoCopy || (v20 = MGGetBoolAnswer(), (v20 & 1) != 0))
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v18, "QueryDeviceInfo", "MSDTypeOfDemoDevice");
    [(MSDKManagedDevice *)selfCopy setupConnection];
    connection = [(MSDKManagedDevice *)selfCopy connection];
    v22 = connection == 0;

    if (v22)
    {
      v39 = 0;
      safeAssignError(&v39, 3727741186, @"Failed to establish xpc connection to demod.");
      v17 = v39;
      v30 = defaultLogHandle(v17);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v30 _typeOfDemoDevice:v31 checkDemo:v32, v33, v34, v35, v36, v37];
      }

      if (device)
      {
        v38 = v17;
        uint64 = 0;
        *device = v17;
        device = 0;
        goto LABEL_10;
      }
    }

    else
    {
      connection2 = [(MSDKManagedDevice *)selfCopy connection];
      device = xpc_connection_send_message_with_reply_sync(connection2, v18);

      if (xpc_dictionary_get_BOOL(device, "QueryDeviceInfoResult"))
      {
        uint64 = xpc_dictionary_get_uint64(device, "MSDTypeOfDemoDevice");
        if (uint64 != 1)
        {
          v17 = 0;
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      v17 = 0;
    }

LABEL_9:
    uint64 = 0;
    goto LABEL_10;
  }

  v24 = defaultLogHandle(v20);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v41 = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
    _os_log_impl(&dword_259B7D000, v24, OS_LOG_TYPE_DEFAULT, "%s - Device is not demo device", buf, 0xCu);
  }

  v18 = 0;
  device = 0;
LABEL_21:
  v25 = MAEGetActivationStateWithError();
  v17 = 0;
  if (!v17)
  {
    if (v25)
    {
      v26 = [v25 isEqualToString:*MEMORY[0x277D288B0]];
      if (v26)
      {
        v27 = defaultLogHandle(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v41 = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
          v42 = 2048;
          v43 = 1;
          _os_log_impl(&dword_259B7D000, v27, OS_LOG_TYPE_DEFAULT, "%s - caching value %lu", buf, 0x16u);
        }

        xpc_cache3 = [(MSDKManagedDevice *)selfCopy xpc_cache];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
        [xpc_cache3 setObject:v29 forKey:v7];
      }
    }
  }

  uint64 = 1;
LABEL_10:

  objc_sync_exit(selfCopy);
  return uint64;
}

- (BOOL)_unlockDemoContentWithOptions:(id)options outError:(id *)error
{
  optionsCopy = options;
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    if (optionsCopy)
    {
      createXPCDictionary = [optionsCopy createXPCDictionary];
      if (!createXPCDictionary)
      {
        v12[0] = 0;
        safeAssignError(v12, 3727744769, @"Input is invalid");
        v8 = v12[0];
        v9 = 0;
        LOBYTE(connection) = 0;
        if (!error)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      createXPCDictionary = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_string(createXPCDictionary, "RequestOperation", "DemoMaualUpdate");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (!connection)
    {
      [MSDKManagedDevice _unlockDemoContentWithOptions:outError:];
      v9 = 0;
      v8 = v12[1];
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    connection = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection, createXPCDictionary);

    LOBYTE(connection) = xpc_dictionary_get_BOOL(v9, "Acknowledged");
    v8 = 0;
    if (error)
    {
LABEL_10:
      v8 = v8;
      *error = v8;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    createXPCDictionary = 0;
    LOBYTE(connection) = 0;
  }

LABEL_11:

  return connection;
}

- (BOOL)_unenrollWithOptions:(id)options outError:(id *)error
{
  optionsCopy = options;
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    if (optionsCopy)
    {
      createXPCDictionary = [optionsCopy createXPCDictionary];
      if (!createXPCDictionary)
      {
        v12[0] = 0;
        safeAssignError(v12, 3727744769, @"Input is invalid");
        v8 = v12[0];
        v9 = 0;
        LOBYTE(connection) = 0;
        if (!error)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else
    {
      createXPCDictionary = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_string(createXPCDictionary, "RequestOperation", "Virgin");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (!connection)
    {
      [MSDKManagedDevice _unenrollWithOptions:outError:];
      v9 = 0;
      v8 = v12[1];
      if (!error)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    connection = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection, createXPCDictionary);

    LOBYTE(connection) = xpc_dictionary_get_BOOL(v9, "Acknowledged");
    v8 = 0;
    if (error)
    {
LABEL_10:
      v8 = v8;
      *error = v8;
    }
  }

  else
  {
    safeAssignError(error, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v9 = 0;
    v8 = 0;
    createXPCDictionary = 0;
    LOBYTE(connection) = 0;
  }

LABEL_11:

  return connection;
}

- (id)_getDeviceOptions:(id *)options checkDemo:(BOOL)demo
{
  demoCopy = demo;
  v24 = *MEMORY[0x277D85DE8];
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    safeAssignError(options, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
LABEL_9:
    v9 = 0;
    v12 = 0;
    v13 = 0;
LABEL_10:
    v14 = 0;
    goto LABEL_19;
  }

  if (!demoCopy)
  {
    goto LABEL_13;
  }

  v7 = +[MSDKDemoState sharedInstance];
  v22 = 0;
  v8 = [v7 _isDeviceEnrolledWithDeKOTA:&v22];
  v9 = v22;

  if (!v9 && (v8 & 1) == 0)
  {
    v11 = defaultLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[MSDKManagedDevice _getDeviceOptions:checkDemo:]";
      _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s - Device is not demo device", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
LABEL_13:
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v13, "RequestOperation", "GetDeviceOptions");
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v12 = xpc_connection_send_message_with_reply_sync(connection2, v13);

      string = xpc_dictionary_get_string(v12, "device_options");
      v9 = string;
      if (string)
      {
        v18 = [MEMORY[0x277CBEA90] dataWithBytes:string length:strlen(string)];
        v21 = 0;
        v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v18 options:0 error:&v21];
        v9 = v21;

        goto LABEL_19;
      }
    }

    else
    {
      [MSDKManagedDevice _getDeviceOptions:checkDemo:];
      v12 = 0;
      v9 = *buf;
    }
  }

  if (!options)
  {
    goto LABEL_10;
  }

  v19 = v9;
  v14 = 0;
  *options = v9;
LABEL_19:

  return v14;
}

- (id)_getCurrentNetworkInfoForKeys:(id)keys outError:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"CurrentWiFiSSID", @"PersistentWiFiSSID", @"EmbeddedSIMInstalled", @"ActiveNetworkInterface", 0}];
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    if (keysCopy && ([MEMORY[0x277CBEB98] setWithArray:keysCopy], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isSubsetOfSet:", v7), v8, (v9 & 1) != 0))
    {
      errorCopy = error;
      v10 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v10, "RequestOperation", "GetCurrentNetworkInfo");
      empty = xpc_array_create_empty();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v12 = keysCopy;
      v13 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v44;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v44 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = xpc_string_create([*(*(&v43 + 1) + 8 * i) UTF8String]);
            xpc_array_append_value(empty, v17);
          }

          v14 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v14);
      }

      xpc_dictionary_set_value(v10, "NetworkInfoKeys", empty);
      [(MSDKManagedDevice *)self setupConnection];
      connection = [(MSDKManagedDevice *)self connection];

      if (connection)
      {
        connection2 = [(MSDKManagedDevice *)self connection];
        v20 = xpc_connection_send_message_with_reply_sync(connection2, v10);

        if (v20 == MEMORY[0x277D863F8] || !v20 || v20 == MEMORY[0x277D863F0])
        {
          [(MSDKManagedDevice *)errorCopy _getCurrentNetworkInfoForKeys:v20 outError:?];
        }

        else
        {
          v21 = objc_alloc(MEMORY[0x277CBEAC0]);
          v22 = xpc_dictionary_get_value(v20, "Result");
          v23 = [v21 initWithXPCDictionary:v22];

          if (v23)
          {
            v24 = v23;

            v10 = v24;
            goto LABEL_20;
          }

          [(MSDKManagedDevice *)errorCopy _getCurrentNetworkInfoForKeys:v20 outError:?];
        }
      }

      else
      {
        [MSDKManagedDevice _getCurrentNetworkInfoForKeys:errorCopy outError:empty];
      }
    }

    else
    {
      v25 = safeAssignError(error, 3727744769, @"Input is invalid");
      v10 = defaultLogHandle(v25);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice *)v10 _getCurrentNetworkInfoForKeys:v26 outError:v27, v28, v29, v30, v31, v32];
      }
    }
  }

  else
  {
    v34 = safeAssignError(error, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
    v10 = defaultLogHandle(v34);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice *)v10 _getCurrentNetworkInfoForKeys:v35 outError:v36, v37, v38, v39, v40, v41];
    }
  }

  v24 = 0;
LABEL_20:

  return v24;
}

- (id)_getStoreID:(id *)d checkDemo:(BOOL)demo
{
  demoCopy = demo;
  v22 = *MEMORY[0x277D85DE8];
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    safeAssignError(d, 3727741188, @"Device is unsupported by MobileStoreDemoKit.");
LABEL_9:
    v9 = 0;
    v12 = 0;
    v13 = 0;
LABEL_10:
    v14 = 0;
    goto LABEL_19;
  }

  if (!demoCopy)
  {
    goto LABEL_14;
  }

  v7 = +[MSDKDemoState sharedInstance];
  v20 = 0;
  v8 = [v7 _isDeviceEnrolledWithDeKOTA:&v20];
  v9 = v20;

  if (!v9 && (v8 & 1) == 0)
  {
    v11 = defaultLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[MSDKManagedDevice _getStoreID:checkDemo:]";
      _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "%s - Device is not demo device", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v12 = 0;
    v13 = 0;
    if (!d)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_14:
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v13, "RequestOperation", "GetDeviceOptions");
    xpc_dictionary_set_string(v13, "SubKey", [@"store_id" UTF8String]);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v12 = xpc_connection_send_message_with_reply_sync(connection2, v13);

      string = xpc_dictionary_get_string(v12, [@"store_id" UTF8String]);
      if (string)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        v9 = 0;
        goto LABEL_19;
      }

      v9 = 0;
      if (!d)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [MSDKManagedDevice _getStoreID:checkDemo:];
      v12 = 0;
      v9 = *buf;
      if (!d)
      {
        goto LABEL_10;
      }
    }
  }

  v18 = v9;
  v14 = 0;
  *d = v9;
LABEL_19:

  return v14;
}

- (BOOL)_needOwnershipWarning:(id *)warning error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = defaultLogHandle(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[MSDKManagedDevice _needOwnershipWarning:error:]";
    _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "MobileStoreDemoKit: %s called.", buf, 0xCu);
  }

  v8 = MAEGetActivationStateWithError();
  v9 = 0;
  if (!v9 && v8 && (([v8 isEqualToString:*MEMORY[0x277D288B0]] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D288B8]) & 1) != 0))
  {
    v10 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_17;
  }

  _readOwnershipWarningFromNvram = [(MSDKManagedDevice *)self _readOwnershipWarningFromNvram];
  v10 = _readOwnershipWarningFromNvram;
  if (!_readOwnershipWarningFromNvram)
  {
    goto LABEL_18;
  }

  v13 = defaultLogHandle(_readOwnershipWarningFromNvram);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[MSDKManagedDevice _needOwnershipWarning:error:]";
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_259B7D000, v13, OS_LOG_TYPE_DEFAULT, "%s - ownershipWarning:  %{public}@", buf, 0x16u);
  }

  if (([v10 isEqualToString:@"1"] & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", @"2"))
  {
LABEL_18:
    if (error)
    {
      v15 = v9;
      v11 = 0;
      *error = v9;
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (warning)
  {
    *warning = [MSDLocalization getLocalizedOwnershipWarnings:v10];
  }

  v11 = 1;
LABEL_17:

  return v11;
}

- (BOOL)_manageWallpaperSettingsWithAction:(const char *)action
{
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "ManageWallpaperSettings");
  xpc_dictionary_set_string(v5, "Action", action);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v10 = xpc_dictionary_get_BOOL(v9, "Result");
  }

  else
  {
    v9 = defaultLogHandle(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(Wallpaper) _manageWallpaperSettingsWithAction:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (id)retrieveXPCConnectionToPeerService
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "SetUpPeerService");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = MEMORY[0x259CB0BB0](v7);
    if (v8 == MEMORY[0x277D86480])
    {
      [(MSDKManagedDevice(PeerService) *)v8 retrieveXPCConnectionToPeerService];
    }

    else
    {
      v9 = xpc_dictionary_get_BOOL(v7, "Result");
      if (v9)
      {
        v10 = xpc_dictionary_get_value(v7, "PeerServiceXPCEndpoint");
        if (v10)
        {
          v11 = v10;
          v12 = objc_alloc_init(MEMORY[0x277CCAEA0]);
          [v12 _setEndpoint:v11];
          v13 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v12];

          v7 = v12;
          goto LABEL_6;
        }

        [(MSDKManagedDevice(PeerService) *)0 retrieveXPCConnectionToPeerService];
      }

      else
      {
        [(MSDKManagedDevice(PeerService) *)v9 retrieveXPCConnectionToPeerService];
      }
    }
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(PeerService) *)v7 retrieveXPCConnectionToPeerService];
    }
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (BOOL)isFeatureFlagEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "queryFeatureFlag");
  v6 = [enabledCopy cStringUsingEncoding:4];

  xpc_dictionary_set_string(v5, "FeatureFlag", v6);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v10 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v11 = xpc_dictionary_get_BOOL(v10, "Result");
  }

  else
  {
    v10 = defaultLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(FeatureFlag) isFeatureFlagEnabled:v10];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)refreshDeviceSettings
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "RefreshDeviceSettings");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Result");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(RefreshSettings) *)v7 refreshDeviceSettings];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)initializeDeviceSettingsWithOverwrite:(BOOL)overwrite
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "RequestOperation", "InitializeDeviceSettings");
  xpc_dictionary_set_BOOL(v5, "InitializeSettingsOverwrite", overwrite);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v9 = xpc_connection_send_message_with_reply_sync(connection2, v5);

    v10 = xpc_dictionary_get_BOOL(v9, "Result");
  }

  else
  {
    v9 = defaultLogHandle(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSDKManagedDevice(RefreshSettings) initializeDeviceSettingsWithOverwrite:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (void)launchApp:(id)app
{
  appCopy = app;
  v5 = xpc_dictionary_create(0, 0, 0);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    v8 = defaultLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(Test) *)v8 launchApp:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  xpc_dictionary_set_string(v5, "RequestOperation", "LaunchApp");
  uTF8String = [appCopy UTF8String];

  xpc_dictionary_set_string(v5, "BundleID", uTF8String);
  connection2 = [(MSDKManagedDevice *)self connection];
  xpc_connection_send_message(connection2, v5);
}

- (BOOL)reloadDemodsPreferencesFile
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (!connection)
  {
    v6 = defaultLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(Test) *)v6 reloadDemodsPreferencesFile:v7];
    }
  }

  xpc_dictionary_set_string(v3, "RequestOperation", "ReloadDemodsPreferencesFile");
  connection2 = [(MSDKManagedDevice *)self connection];
  v15 = xpc_connection_send_message_with_reply_sync(connection2, v3);

  LOBYTE(connection2) = xpc_dictionary_get_BOOL(v15, "Result");
  return connection2;
}

- (BOOL)setDeviceLanguageWithoutSystemLanguageMatching:(id)matching andRegion:(id)region
{
  matchingCopy = matching;
  regionCopy = region;
  NSLog(&cfstr_S_0.isa, "[MSDKManagedDevice(Test) setDeviceLanguageWithoutSystemLanguageMatching:andRegion:]");
  if ([(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "RequestOperation", "SetLanguageAndRegionWithoutSystemLanguageMatching");
    xpc_dictionary_set_string(v8, "languageIdentifier", [matchingCopy UTF8String]);
    xpc_dictionary_set_string(v8, "regionCode", [regionCopy UTF8String]);
    [(MSDKManagedDevice *)self setupConnection];
    connection = [(MSDKManagedDevice *)self connection];

    if (connection)
    {
      connection2 = [(MSDKManagedDevice *)self connection];
      v12 = xpc_connection_send_message_with_reply_sync(connection2, v8);

      v13 = xpc_dictionary_get_BOOL(v12, "Result");
    }

    else
    {
      v12 = defaultLogHandle(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(MSDKManagedDevice(Test) *)v12 setDeviceLanguageWithoutSystemLanguageMatching:v15 andRegion:v16, v17, v18, v19, v20, v21];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)clearCurrentSafariHistory
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "RequestOperation", "ClearSafariHistory");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v7 = xpc_connection_send_message_with_reply_sync(connection2, v3);

    v8 = xpc_dictionary_get_BOOL(v7, "Result");
  }

  else
  {
    v7 = defaultLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSDKManagedDevice(ClearSafariHistory) *)v7 clearCurrentSafariHistory];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_prepareWithOptions:(id)options
{
  v15 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (![(MSDKManagedDevice *)self isDeviceClassSupported])
  {
    goto LABEL_4;
  }

  if (optionsCopy)
  {
    createXPCDictionary = [optionsCopy createXPCDictionary];
    if (!createXPCDictionary)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    createXPCDictionary = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_string(createXPCDictionary, "RequestOperation", "DemoPrepare");
  [(MSDKManagedDevice *)self setupConnection];
  connection = [(MSDKManagedDevice *)self connection];

  if (connection)
  {
    connection2 = [(MSDKManagedDevice *)self connection];
    v10 = xpc_connection_send_message_with_reply_sync(connection2, createXPCDictionary);

    v6 = xpc_dictionary_get_BOOL(v10, "DemoPrepareAcknowledged");
  }

  else
  {
    v10 = defaultLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = "[MSDKManagedDevice _prepareWithOptions:]";
      OUTLINED_FUNCTION_3_1(&dword_259B7D000, v10, v12, "%s - Failed to setup XPC connection.", &v13);
    }

    v6 = 0;
  }

LABEL_9:
  return v6;
}

- (id)_readOwnershipWarningFromNvram
{
  v2 = [(MSDKManagedDevice *)self readNVRam:@"ownership-warning"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithCString:objc_msgSend(v2 encoding:{"bytes"), 4}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSEPDemoMode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice setSEPDemoMode:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s: Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)enterOfflineModeWithOptions:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_4_3(v2, v3, @"Failed to establish xpc connection to demod.");
  v4 = OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

- (void)isOfflineMode:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice isOfflineMode:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getDemoInstallState
{
  v2 = defaultLogHandle(self);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)lockDemoContent
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice lockDemoContent]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)revertDemoContent
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice revertDemoContent]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)commitNewDemoContent
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice commitNewDemoContent]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)isBetterTogetherDemoDevice
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice isBetterTogetherDemoDevice]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getFriendlyDeviceName
{
  v2 = defaultLogHandle(self);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)setStoreOpenAt:(NSObject *)a1 openMinute:closeHour:closeMinute:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)setIdleDelay:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice setIdleDelay:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)configureWiFi:(uint64_t)a3 password:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice configureWiFi:password:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)disconnectAndForgetWiFi:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice disconnectAndForgetWiFi:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setDeviceLanguage:(uint64_t)a3 andRegion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice setDeviceLanguage:andRegion:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getDeviceLanguageandRegion
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice getDeviceLanguageandRegion]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)saveBluetoothPairingInfo
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice saveBluetoothPairingInfo]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)checkInBlockingUI
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice checkInBlockingUI]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)cancelOperation
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice cancelOperation]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)isStoreOpen:(id *)a1 withError:.cold.2(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)nextStoreOpenDate:withError:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)nextStoreOpenDate:(void *)a1 withError:(void *)a2 .cold.2(void *a1, void *a2)
{
  *a1 = 0;
  v3 = [a2 objectForKey:@"ErrorMessage"];
  OUTLINED_FUNCTION_11(v3);
  OUTLINED_FUNCTION_9_0();
}

- (void)nextStoreOpenDate:(id *)a1 withError:.cold.3(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)nextStoreCloseDate:withError:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)nextStoreCloseDate:(id *)a1 withError:.cold.3(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateStoreHours:(id *)a1 evaluateAgainstDate:(uint64_t)a2 .cold.1(id *a1, uint64_t a2)
{
  *a1 = 0;
  OUTLINED_FUNCTION_4_3(a1, a2, @"Failed to establish xpc connection to demod.");
}

- (void)storeDataBlob:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[MSDKManagedDevice storeDataBlob:]";
    OUTLINED_FUNCTION_3_1(&dword_259B7D000, v2, v3, "%s - Failed to setup XPC connection.", &v4);
  }
}

- (void)storeDataBlob:(void *)a1 .cold.3(void *a1)
{
  [a1 length];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)retrieveDataBlob
{
  v2 = defaultLogHandle(self);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)deleteDataBlob
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice deleteDataBlob]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)clearOwnershipWarning
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice clearOwnershipWarning]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, self, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __53__MSDKManagedDevice_setupConnection_withMachService___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136446210;
  v4 = MEMORY[0x259CB0A20](a1);
  _os_log_debug_impl(&dword_259B7D000, a2, OS_LOG_TYPE_DEBUG, "description of xpc reply: %{public}s", &v3, 0xCu);
}

- (void)handleContentUpdateStatus:event:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_isEnrolled:(NSObject *)a1 checkDemo:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "[MSDKManagedDevice _isEnrolled:checkDemo:]";
    OUTLINED_FUNCTION_13(&dword_259B7D000, v2, v3, "%s - Device is not demo device", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

- (void)_isEnrolled:(uint64_t)a3 checkDemo:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice _isEnrolled:checkDemo:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_isContentFrozen_xpc:(NSObject *)a1 checkDemo:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]";
    OUTLINED_FUNCTION_13(&dword_259B7D000, v2, v3, "%s - Device is not demo device", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

- (void)_isContentFrozen_xpc:(uint64_t)a3 checkDemo:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice _isContentFrozen_xpc:checkDemo:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_typeOfDemoDevice:(uint64_t)a3 checkDemo:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice _typeOfDemoDevice:checkDemo:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Failed to setup XPC connection.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_unlockDemoContentWithOptions:outError:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_4_3(v2, v3, @"Failed to establish xpc connection to demod.");
  v4 = OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

- (void)_unenrollWithOptions:outError:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_4_3(v2, v3, @"Failed to establish xpc connection to demod.");
  v4 = OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

- (void)_getDeviceOptions:checkDemo:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_4_3(v2, v3, @"Failed to establish xpc connection to demod.");
  v4 = OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

- (void)_getCurrentNetworkInfoForKeys:(uint64_t)a3 outError:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice _getCurrentNetworkInfoForKeys:outError:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Device class is not supported.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_getCurrentNetworkInfoForKeys:(void *)a3 outError:.cold.2(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = safeAssignError(a1, 3727741189, @"Unexpected demod xpc response.");
  v6 = defaultLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[MSDKManagedDevice _getCurrentNetworkInfoForKeys:outError:]";
    OUTLINED_FUNCTION_3_1(&dword_259B7D000, v6, v7, "%s - Failed to extract network info from XPC response.", &v8);
  }
}

- (void)_getCurrentNetworkInfoForKeys:(void *)a3 outError:.cold.3(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = OUTLINED_FUNCTION_4_3(a1, a2, @"Failed to establish xpc connection to demod.");
  v6 = defaultLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[MSDKManagedDevice _getCurrentNetworkInfoForKeys:outError:]";
    OUTLINED_FUNCTION_3_1(&dword_259B7D000, v6, v7, "%s - Failed to send XPC message.", &v8);
  }
}

- (void)_getCurrentNetworkInfoForKeys:(void *)a1 outError:(void *)a2 .cold.4(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_4_3(a1, a2, @"Failed to establish xpc connection to demod.");
  v4 = defaultLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[MSDKManagedDevice _getCurrentNetworkInfoForKeys:outError:]";
    OUTLINED_FUNCTION_3_1(&dword_259B7D000, v4, v5, "%s - Failed to setup XPC connection.", &v6);
  }
}

- (void)_getCurrentNetworkInfoForKeys:(uint64_t)a3 outError:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MSDKManagedDevice _getCurrentNetworkInfoForKeys:outError:]";
  OUTLINED_FUNCTION_0_1(&dword_259B7D000, a1, a3, "%s - Received nil array or invalid key.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_getStoreID:checkDemo:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_4_3(v2, v3, @"Failed to establish xpc connection to demod.");
  v4 = OUTLINED_FUNCTION_9_0();
  v5 = defaultLogHandle(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);
  }
}

@end