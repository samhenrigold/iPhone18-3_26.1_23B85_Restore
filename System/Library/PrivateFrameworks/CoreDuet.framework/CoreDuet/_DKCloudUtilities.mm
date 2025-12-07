@interface _DKCloudUtilities
+ (BOOL)isSyncAvailableAndEnabledWithVerboseLogging:(BOOL)logging;
+ (id)sharedInstance;
+ (void)setCloudKitEnabled:(BOOL)enabled;
+ (void)setUnitTesting:(BOOL)testing;
- (BOOL)isSingleDevice;
- (BOOL)isSiriCloudSyncEnabled;
- (_DKCloudUtilities)init;
- (id)containerKeyValueStore;
- (id)keyValueStore;
- (void)_accountDidChange:(id)change;
- (void)_fetchAccountInfoWithCompletionHandler:(void *)handler;
- (void)_fetchCloudKitConfigurationAndStatus;
- (void)_performUpdateNumberOfSyncedDevicesWithAttempt:(void *)attempt completionHandler:;
- (void)_updateAccountInfo:(void *)info error:;
- (void)_updateNumberOfSyncedDevicesWithCompletionHandler:(uint64_t)handler;
- (void)dealloc;
- (void)deleteRemoteStateWithReply:(id)reply;
- (void)init;
@end

@implementation _DKCloudUtilities

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___DKCloudUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_initialized != -1)
  {
    dispatch_once(&sharedInstance_initialized, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

+ (void)setCloudKitEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = *MEMORY[0x1E69E9840];
  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"disabled";
    if (enabledCopy)
    {
      v5 = @"enabled";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "Cloud kit is being %@", &v6, 0xCu);
  }

  _DKIsCloudKitEnabled = enabledCopy;
}

+ (void)setUnitTesting:(BOOL)testing
{
  testingCopy = testing;
  v8 = *MEMORY[0x1E69E9840];
  v4 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"disabled";
    if (testingCopy)
    {
      v5 = @"enabled";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_INFO, "Unit tesing is being %@", &v6, 0xCu);
  }

  _DKIsUnitTesting = testingCopy;
}

+ (BOOL)isSyncAvailableAndEnabledWithVerboseLogging:(BOOL)logging
{
  loggingCopy = logging;
  v27 = *MEMORY[0x1E69E9840];
  v5 = +[_DKCloudUtilities sharedInstance];
  isCloudSyncAvailable = [v5 isCloudSyncAvailable];

  v7 = +[_DKCloudUtilities sharedInstance];
  [v7 isSiriCloudSyncEnabled];

  LODWORD(v7) = [self isCloudKitEnabled];
  v8 = ([self isUnitTesting] ^ 1) & v7 & isCloudSyncAvailable;
  if (loggingCopy)
  {
    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if ([self isCloudKitEnabled])
      {
        v10 = @"yes";
      }

      else
      {
        v10 = @"no";
      }

      if (isCloudSyncAvailable)
      {
        v11 = @"yes";
      }

      else
      {
        v11 = @"no";
      }

      v15 = 138413570;
      if ([self isUnitTesting])
      {
        v12 = @"yes";
      }

      else
      {
        v12 = @"no";
      }

      v16 = v10;
      if (v8)
      {
        v13 = @"yes";
      }

      else
      {
        v13 = @"no";
      }

      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = @"yes";
      v21 = 2112;
      v22 = @"yes";
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "isCloudKitEnabled = %@, isCloudSyncAvailable = %@, syncEnabledByPolicy = %@, siriCloudSyncEnabled = %@, isUnitTesting = %@, isSyncAvailableAndEnabled = %@", &v15, 0x3Eu);
    }
  }

  return v8;
}

- (_DKCloudUtilities)init
{
  v16.receiver = self;
  v16.super_class = _DKCloudUtilities;
  v2 = [(_DKCloudUtilities *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.coreduet.cloud.utilities", v3);
    fetchQueue = v2->_fetchQueue;
    v2->_fetchQueue = v4;

    if ((_DKIsUnitTesting & 1) != 0 || !+[_DKCloudUtilities isCloudKitEnabled])
    {
      v2->_supportsDeviceToDeviceEncryption = 0;
    }

    else
    {
      v2->_supportsDeviceToDeviceEncryption = 0;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel__accountDidChange_ name:*MEMORY[0x1E695B710] object:0];

      v7 = v2->_fetchQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __25___DKCloudUtilities_init__block_invoke;
      v14[3] = &unk_1E7367440;
      v15 = v2;
      v8 = v14;
      v9 = v7;
      v10 = os_transaction_create();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __cd_dispatch_async_capture_tx_block_invoke_0;
      block[3] = &unk_1E7367818;
      v18 = v10;
      v19 = v8;
      v11 = v10;
      dispatch_async(v9, block);
    }

    v12 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(_DKCloudUtilities *)v2 init];
    }
  }

  return v2;
}

- (void)dealloc
{
  if ((_DKIsUnitTesting & 1) == 0 && +[_DKCloudUtilities isCloudKitEnabled])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E695B710] object:0];
  }

  v4.receiver = self;
  v4.super_class = _DKCloudUtilities;
  [(_DKCloudUtilities *)&v4 dealloc];
}

- (BOOL)isSiriCloudSyncEnabled
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  cloudSyncEnabled = [sharedPreferences cloudSyncEnabled];

  return cloudSyncEnabled;
}

- (void)_accountDidChange:(id)change
{
  fetchQueue = self->_fetchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39___DKCloudUtilities__accountDidChange___block_invoke;
  v8[3] = &unk_1E7367440;
  v8[4] = self;
  v4 = v8;
  v5 = fetchQueue;
  v6 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_0;
  block[3] = &unk_1E7367818;
  v10 = v6;
  v11 = v4;
  v7 = v6;
  dispatch_async(v5, block);
}

- (void)_fetchAccountInfoWithCompletionHandler:(void *)handler
{
  location[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (handler)
  {
    v4 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [_DKCloudUtilities _fetchAccountInfoWithCompletionHandler:];
    }

    v5 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.knowledgestore4"];
    if (v5)
    {
      objc_initWeak(location, handler);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __60___DKCloudUtilities__fetchAccountInfoWithCompletionHandler___block_invoke;
      v6[3] = &unk_1E7367898;
      objc_copyWeak(&v8, location);
      v7 = v3;
      [v5 accountInfoWithCompletionHandler:v6];

      objc_destroyWeak(&v8);
      objc_destroyWeak(location);
    }
  }
}

- (void)deleteRemoteStateWithReply:(id)reply
{
  v21[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (+[_DKCloudUtilities isUnitTesting](_DKCloudUtilities, "isUnitTesting") || !+[_DKCloudUtilities isCloudKitEnabled])
  {
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v4 = os_transaction_create();
    v5 = MEMORY[0x1E695B888];
    v6 = +[_DKCloudUtilities containerIdentifier];
    v7 = [v5 containerWithIdentifier:v6];

    privateCloudDatabase = [v7 privateCloudDatabase];
    v9 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneName:@"com.apple.coredata.cloudkit.zone"];
    v10 = objc_alloc(MEMORY[0x1E695B9B0]);
    zoneID = [v9 zoneID];
    v21[0] = zoneID;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v13 = [v10 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v12];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __48___DKCloudUtilities_deleteRemoteStateWithReply___block_invoke;
    v18 = &unk_1E73678C0;
    v19 = v4;
    v20 = replyCopy;
    v14 = v4;
    [v13 setModifyRecordZonesCompletionBlock:&v15];
    [privateCloudDatabase addOperation:{v13, v15, v16, v17, v18}];
  }
}

- (id)keyValueStore
{
  if (self)
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = [_DKSync2Coordinator keyValueStoreForDomain:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_fetchCloudKitConfigurationAndStatus
{
  if (self)
  {
    v2 = *(self + 16);
    v3 = +[_DKSyncSerializer underlyingQueue];
    OUTLINED_FUNCTION_0_1();
    v5 = 3221225472;
    v6 = __57___DKCloudUtilities__fetchCloudKitConfigurationAndStatus__block_invoke;
    v7 = &unk_1E7367440;
    selfCopy = self;
    [v2 performWithMinimumIntervalInSecondsOf:@"FetchAccountInfo" name:v3 queue:v4 activityBlock:60.0];
  }
}

- (id)containerKeyValueStore
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v10[0] = v4;
    v5 = +[_DKCloudUtilities containerIdentifier];
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v2 pathWithComponents:v6];

    v8 = [_DKSync2Coordinator keyValueStoreForDomain:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSingleDevice
{
  keyValueStore = [(_DKCloudUtilities *)self keyValueStore];
  v4 = [keyValueStore arrayForKey:@"_DKCloudSyncDevices"];

  if (v4)
  {
    v5 = [v4 count] < 2;
  }

  else
  {
    v5 = 0;
  }

  if (isSingleDevice_firstTime != 1 || self->_isSingleDevice != v5)
  {
    isSingleDevice_firstTime = 1;
    v6 = +[_CDLogging syncChannel];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v7)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
        OUTLINED_FUNCTION_0_5();
        _os_log_debug_impl(v8, v9, v10, v11, v12, 0xCu);
      }
    }

    else if (v7)
    {
      OUTLINED_FUNCTION_0_5();
      _os_log_debug_impl(v14, v15, v16, v17, v18, 2u);
    }
  }

  self->_isSingleDevice = v5;

  return v5;
}

- (void)_updateNumberOfSyncedDevicesWithCompletionHandler:(uint64_t)handler
{
  v3 = a2;
  if (handler)
  {
    v4 = *(handler + 16);
    OUTLINED_FUNCTION_2_4();
    v12 = 3221225472;
    v13 = __71___DKCloudUtilities__updateNumberOfSyncedDevicesWithCompletionHandler___block_invoke;
    v14 = &unk_1E73674E0;
    handlerCopy = handler;
    v16 = v3;
    OUTLINED_FUNCTION_0_1();
    v7 = 3221225472;
    v8 = __71___DKCloudUtilities__updateNumberOfSyncedDevicesWithCompletionHandler___block_invoke_2;
    v9 = &unk_1E73678E8;
    v10 = v5;
    [v4 performNoMoreOftenInDaysThan:@"UpdateNumberOfSyncedDevices" name:v11 activityBlock:v6 throttleBlock:1.0];
  }
}

- (void)_updateAccountInfo:(void *)info error:
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  infoCopy = info;
  if (self)
  {
    v7 = +[_CDLogging syncChannel];
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v33) = 0;
        OUTLINED_FUNCTION_0_5();
        _os_log_debug_impl(v15, v16, v17, v18, v19, 2u);
      }

      v9 = *(self + 24);
      if (v9 != [v5 supportsDeviceToDeviceEncryption])
      {
        [_DKCloudUtilities isSyncAvailableAndEnabledWithVerboseLogging:1];
        v10 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          supportsDeviceToDeviceEncryption = [v5 supportsDeviceToDeviceEncryption];
          v22 = @"disabled";
          if (supportsDeviceToDeviceEncryption)
          {
            v22 = @"enabled";
          }

          LODWORD(v33) = 138412290;
          *(&v33 + 4) = v22;
          OUTLINED_FUNCTION_0_5();
          _os_log_debug_impl(v23, v24, v25, v26, v27, 0xCu);
        }

        *(self + 24) = [v5 supportsDeviceToDeviceEncryption];
        [_DKCloudUtilities isSyncAvailableAndEnabledWithVerboseLogging:1];
      }

      *(self + 24) = [v5 supportsDeviceToDeviceEncryption];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        domain = [infoCopy domain];
        [infoCopy code];
        LODWORD(v33) = 138543874;
        *(&v33 + 4) = domain;
        OUTLINED_FUNCTION_4_3();
        _os_log_error_impl(&dword_191750000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch account info: %{public}@:%lld (%@)", &v33, 0x20u);
      }

      if (*(self + 24) == 1)
      {
        v11 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v33) = 0;
          OUTLINED_FUNCTION_0_5();
          _os_log_debug_impl(v28, v29, v30, v31, v32, 2u);
        }
      }

      *(self + 24) = 0;
    }

    v12 = dispatch_get_global_queue(2, 0);
    v13 = os_transaction_create();
    *&v33 = MEMORY[0x1E69E9820];
    *(&v33 + 1) = 3221225472;
    v34 = __cd_dispatch_async_capture_tx_block_invoke_0;
    v35 = &unk_1E7367818;
    v36 = v13;
    v37 = &__block_literal_global_566;
    v14 = v13;
    dispatch_async(v12, &v33);
  }
}

- (void)_performUpdateNumberOfSyncedDevicesWithAttempt:(void *)attempt completionHandler:
{
  v56[1] = *MEMORY[0x1E69E9840];
  attemptCopy = attempt;
  if (self)
  {
    v30 = os_transaction_create();
    v6 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v53 = 0;
      OUTLINED_FUNCTION_5_2(&dword_191750000, v6, v7, "Fetching number of sync devices", v53);
    }

    v33 = attemptCopy;

    v32 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.knowledgestore4"];
    privateCloudDatabase = [v32 privateCloudDatabase];
    keyValueStore = [(_DKCloudUtilities *)self keyValueStore];
    v10 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneName:@"metadata_zone"];
    zoneID = [v10 zoneID];
    containerKeyValueStore = [(_DKCloudUtilities *)self containerKeyValueStore];
    v14 = [containerKeyValueStore dataForKey:@"_DKCloudSyncMetadataChangeToken"];
    v56[0] = zoneID;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v16 = objc_opt_new();
    if (v14)
    {
      v17 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0];
      [v16 setPreviousServerChangeToken:v17];
    }

    v54 = zoneID;
    v55 = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v29 = v14;
    v19 = [objc_alloc(MEMORY[0x1E695B918]) initWithRecordZoneIDs:v15 optionsByRecordZoneID:v18];
    [v19 setFetchAllChanges:1];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke;
    v50[3] = &unk_1E7367910;
    v20 = keyValueStore;
    v51 = v20;
    selfCopy = self;
    [v19 setRecordChangedBlock:v50];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_596;
    v47[3] = &unk_1E7367938;
    v21 = v20;
    v48 = v21;
    selfCopy2 = self;
    [v19 setRecordWithIDWasDeletedBlock:v47];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_2;
    v45[3] = &unk_1E7367960;
    v28 = zoneID;
    v22 = v15;
    v23 = containerKeyValueStore;
    v46 = v23;
    [v19 setRecordZoneFetchCompletionBlock:v45];
    OUTLINED_FUNCTION_2_4();
    v35 = 3221225472;
    v36 = __86___DKCloudUtilities__performUpdateNumberOfSyncedDevicesWithAttempt_completionHandler___block_invoke_3;
    v37 = &unk_1E7367988;
    v38 = v21;
    v39 = v10;
    v44 = a2;
    v40 = v23;
    selfCopy3 = self;
    v42 = v30;
    v43 = v33;
    v24 = v30;
    v25 = v23;
    v26 = v10;
    v27 = v21;
    [v19 setFetchRecordZoneChangesCompletionBlock:v34];
    [privateCloudDatabase addOperation:v19];

    attemptCopy = v33;
  }
}

- (void)init
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(self + 24))
  {
    v2 = @"enabled";
  }

  else
  {
    v2 = @"disabled";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Cloud sync initialized to %@", &v3, 0xCu);
}

- (void)_fetchAccountInfoWithCompletionHandler:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_191750000, a2, OS_LOG_TYPE_FAULT, "Failed to fetch account info: %@", &v2, 0xCu);
}

@end