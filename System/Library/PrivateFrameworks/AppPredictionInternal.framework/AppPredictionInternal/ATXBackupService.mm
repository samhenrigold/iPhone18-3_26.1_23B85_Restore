@interface ATXBackupService
+ (BOOL)isBackupRestore;
+ (BOOL)isCloudKitError:(id)error;
+ (BOOL)isManateeDecryptionError:(id)error;
+ (id)allErrorsFromCloudKitError:(id)error;
+ (id)backupService;
+ (id)queryForBackupsWithDeviceID:(id)d;
- (ATXBackupService)initWithContainerIdentifier:(id)identifier backupFileManager:(id)manager;
- (ATXCloudStorageSettingsListener)cloudStorageSettingsListener;
- (BOOL)retryIfNeededInResponseToError:(id)error withBlock:(id)block;
- (void)backupWithCompletionHandler:(id)handler;
- (void)fetchBackupAssetWithCompletionHandler:(id)handler;
- (void)getDeviceIDWithCompletionHandler:(id)handler;
- (void)handleDeleteDataRequest;
- (void)initializeCloudKitClientWithCompletionHandler:(id)handler withRetryBlock:(id)block;
- (void)isManateeAvailableWithCompletionHandler:(id)handler withRetryBlock:(id)block;
- (void)restoreFromBackupIfNeccessary:(id)neccessary;
- (void)restoreFromBackupWithRetries:(unint64_t)retries fromContainerID:(id)d completionHandler:(id)handler;
- (void)saveBackupAsset:(id)asset completionHandler:(id)handler;
- (void)setupRecordZoneWithName:(id)name completionHandler:(id)handler;
- (void)updateIsRestoreStarted:(BOOL)started;
- (void)writeBackupToiCloud:(id)cloud;
@end

@implementation ATXBackupService

+ (BOOL)isBackupRestore
{
  v11 = *MEMORY[0x277D85DE8];
  LOBYTE(v8[0]) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ATXBackupStateUserDefault", *MEMORY[0x277CEBD00], v8);
  v3 = AppBooleanValue;
  v4 = _ATXRestoreIsInProgress(AppBooleanValue);
  v5 = v4;
  v6 = __atxlog_handle_backup(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = v3 != 0;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "db restore state - %{BOOL}u, mobile backup restore state - %{BOOL}u", v8, 0xEu);
  }

  return (v3 != 0) | v5 & 1;
}

- (ATXBackupService)initWithContainerIdentifier:(id)identifier backupFileManager:(id)manager
{
  identifierCopy = identifier;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = ATXBackupService;
  v9 = [(ATXBackupService *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerIdentifier, identifier);
    objc_storeStrong(&v10->_backupFileManager, manager);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.duetexpertd.atxbackup", v11);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v12;

    v14 = +[ATXCloudStorageSettingsListener sharedInstance];
    objc_storeWeak(&v10->_cloudStorageSettingsListener, v14);

    WeakRetained = objc_loadWeakRetained(&v10->_cloudStorageSettingsListener);
    [WeakRetained setDelegate:v10];

    v16 = objc_alloc(MEMORY[0x277CBEBD0]);
    v17 = [v16 initWithSuiteName:*MEMORY[0x277CEBD00]];
    atxDefaults = v10->_atxDefaults;
    v10->_atxDefaults = v17;

    [(ATXBackupService *)v10 updateIsRestoreStarted:0];
  }

  return v10;
}

- (void)updateIsRestoreStarted:(BOOL)started
{
  startedCopy = started;
  v7 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_backup(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = startedCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "DB restore state is: %{BOOL}u", v6, 8u);
  }

  [(NSUserDefaults *)self->_atxDefaults setBool:startedCopy forKey:@"ATXBackupStateUserDefault"];
}

- (void)backupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ATXBackupService_backupWithCompletionHandler___block_invoke;
  v7[3] = &unk_2785968C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(serialQueue, v7);
}

void __48__ATXBackupService_backupWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  [*(*(a1 + 32) + 24) writeBackupFileForD2D];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__ATXBackupService_backupWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_2785968A0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 writeBackupToiCloud:v6];
}

- (void)restoreFromBackupIfNeccessary:(id)neccessary
{
  neccessaryCopy = neccessary;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ATXBackupService_restoreFromBackupIfNeccessary___block_invoke;
  v7[3] = &unk_2785968C8;
  v7[4] = self;
  v8 = neccessaryCopy;
  v6 = neccessaryCopy;
  dispatch_async(serialQueue, v7);
}

void __50__ATXBackupService_restoreFromBackupIfNeccessary___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  LOBYTE(keyExistsAndHasValidFormat[0]) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ATXBackupStateUserDefault", *MEMORY[0x277CEBD00], keyExistsAndHasValidFormat);
  if (AppBooleanValue)
  {
    v4 = __atxlog_handle_backup(AppBooleanValue);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __50__ATXBackupService_restoreFromBackupIfNeccessary___block_invoke_cold_1();
    }

    [*(a1 + 32) updateIsRestoreStarted:0];
  }

  v5 = [*(*(a1 + 32) + 24) isMobileBackupRestoreNeeded];
  if (v5)
  {
    v6 = __atxlog_handle_backup(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(keyExistsAndHasValidFormat[0]) = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "restoring from MobileBackup", keyExistsAndHasValidFormat, 2u);
    }

    [*(a1 + 32) updateIsRestoreStarted:1];
    [*(*(a1 + 32) + 24) restoreFromMobileBackup];
LABEL_13:
    [*(a1 + 32) updateIsRestoreStarted:0];
    v9 = *(*(a1 + 40) + 16);
LABEL_14:
    v9();
    goto LABEL_15;
  }

  v7 = [*(*(a1 + 32) + 24) isD2DRestoreNeeded];
  if (v7)
  {
    v8 = __atxlog_handle_backup(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(keyExistsAndHasValidFormat[0]) = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "restoring from D2D", keyExistsAndHasValidFormat, 2u);
    }

    [*(a1 + 32) updateIsRestoreStarted:1];
    [*(*(a1 + 32) + 24) restoreFromD2D];
    goto LABEL_13;
  }

  v10 = [*(*(a1 + 32) + 24) isRestoreNeeded];
  if (!v10)
  {
    v9 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  v11 = __atxlog_handle_backup(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(keyExistsAndHasValidFormat[0]) = 0;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "restoring from iCloud", keyExistsAndHasValidFormat, 2u);
  }

  [*(a1 + 32) updateIsRestoreStarted:1];
  v12 = [*(*(a1 + 32) + 24) containerIDForCloudKitRestore];
  objc_initWeak(keyExistsAndHasValidFormat, *(a1 + 32));
  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__ATXBackupService_restoreFromBackupIfNeccessary___block_invoke_28;
  v14[3] = &unk_2785968F0;
  objc_copyWeak(&v17, keyExistsAndHasValidFormat);
  v16 = *(a1 + 40);
  v15 = v2;
  [v13 restoreFromBackupWithRetries:10 fromContainerID:v12 completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(keyExistsAndHasValidFormat);

LABEL_15:
}

void __50__ATXBackupService_restoreFromBackupIfNeccessary___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [WeakRetained updateIsRestoreStarted:0];
  }

  (*(*(a1 + 40) + 16))();
  v2 = objc_opt_self();
}

- (void)writeBackupToiCloud:(id)cloud
{
  cloudCopy = cloud;
  dispatch_assert_queue_V2(self->_serialQueue);
  WeakRetained = objc_loadWeakRetained(&self->_cloudStorageSettingsListener);
  isBackupForSiriEnabled = [objc_opt_class() isBackupForSiriEnabled];

  if (isBackupForSiriEnabled)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__ATXBackupService_writeBackupToiCloud___block_invoke;
    v9[3] = &unk_278596968;
    v9[4] = self;
    v10 = cloudCopy;
    [(ATXBackupService *)self initializeCloudKitClientWithCompletionHandler:v9 withRetryBlock:&__block_literal_global_2];
  }

  else
  {
    v8 = __atxlog_handle_backup(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "iCloud backup is not enabled for Siri dataclass, not backing up...", buf, 2u);
    }

    (*(cloudCopy + 2))(cloudCopy, 0);
  }
}

void __40__ATXBackupService_writeBackupToiCloud___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__ATXBackupService_writeBackupToiCloud___block_invoke_2;
    v8[3] = &unk_278596940;
    v8[4] = v7;
    v9 = v5;
    v10 = *(a1 + 40);
    [v7 getDeviceIDWithCompletionHandler:v8];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __40__ATXBackupService_writeBackupToiCloud___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 24) writeBackupFileForDeviceID:a2 pareDown:(*(*(a1 + 32) + 16) & 1) == 0];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ATXBackupService_writeBackupToiCloud___block_invoke_3;
  v7[3] = &unk_278596918;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 48);
  [v4 saveBackupAsset:v5 completionHandler:v7];
}

void __40__ATXBackupService_writeBackupToiCloud___block_invoke_3(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = __atxlog_handle_backup(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "backup file succesfully uploaded to container", v8, 2u);
    }

    [*(a1[4] + 24) commitWithContainerIdentifier:a1[5]];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __40__ATXBackupService_writeBackupToiCloud___block_invoke_3_cold_1();
    }
  }

  (*(a1[6] + 16))();
}

- (void)initializeCloudKitClientWithCompletionHandler:(id)handler withRetryBlock:(id)block
{
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  blockCopy = block;
  dispatch_assert_queue_V2(serialQueue);
  v9 = [ATXCloudKitClient clientWithContainerIdentifier:self->_containerIdentifier useManatee:1 callbackQueue:self->_serialQueue];
  ckClient = self->_ckClient;
  self->_ckClient = v9;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__ATXBackupService_initializeCloudKitClientWithCompletionHandler_withRetryBlock___block_invoke;
  v12[3] = &unk_278596990;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(ATXBackupService *)self isManateeAvailableWithCompletionHandler:v12 withRetryBlock:blockCopy];
}

void __81__ATXBackupService_initializeCloudKitClientWithCompletionHandler_withRetryBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v12 = v5;
  if (!v5 || (a2 & 1) != 0)
  {
    if (a2)
    {
      *(v6 + 16) = 1;
      v8 = *(*(a1 + 32) + 48);
    }

    else
    {
      v8 = [*(v6 + 48) stringByAppendingString:@".non-manatee"];
      *(*(a1 + 32) + 16) = 0;
      v9 = [ATXCloudKitClient clientWithContainerIdentifier:v8 useManatee:0 callbackQueue:*(*(a1 + 32) + 64)];
      v10 = *(a1 + 32);
      v11 = *(v10 + 32);
      *(v10 + 32) = v9;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;

    (*(*(a1 + 40) + 16))();
  }
}

- (void)isManateeAvailableWithCompletionHandler:(id)handler withRetryBlock:(id)block
{
  handlerCopy = handler;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_serialQueue);
  ckClient = self->_ckClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke;
  v11[3] = &unk_278596A08;
  v11[4] = self;
  v12 = handlerCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = handlerCopy;
  [(ATXCloudKitClient *)ckClient fetchAccountInfoWithCompletionHandler:v11];
}

void __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_24;
  }

  v7 = [v5 accountStatus];
  v8 = v7;
  if (v7 > 1)
  {
    if ((v7 - 2) >= 2)
    {
      if (v7 == 4)
      {
        v9 = __atxlog_handle_backup(4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke_cold_1();
        }

        *buf = 0;
        v35 = buf;
        v36 = 0x3032000000;
        v37 = __Block_byref_object_copy_;
        v38 = __Block_byref_object_dispose_;
        v39 = 0;
        v10 = [MEMORY[0x277CCAB98] defaultCenter];
        v11 = *MEMORY[0x277CBBF00];
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke_45;
        v30 = &unk_2785969E0;
        v12 = *(a1 + 32);
        v33 = buf;
        v31 = v12;
        v32 = *(a1 + 48);
        v13 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:&v27];
        v14 = *(v35 + 5);
        *(v35 + 5) = v13;

        _Block_object_dispose(buf, 8);
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v7)
  {
LABEL_15:
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"CloudKit container is not accessible. Status: %ld", v7];
    v20 = __atxlog_handle_backup(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke_cold_3();
    }

    v42 = *MEMORY[0x277CCA450];
    v43[0] = v19;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATXBackupService" code:1 userInfo:v21];
    (*(*(a1 + 40) + 16))();

    goto LABEL_24;
  }

  if (v7 != 1)
  {
LABEL_18:
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"iCloud account status: %ld", v8, v27, v28, v29, v30, v31];
    v24 = __atxlog_handle_backup(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke_cold_3();
    }

    v40 = *MEMORY[0x277CCA450];
    v41 = v23;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATXBackupService" code:1 userInfo:v25];
    (*(*(a1 + 40) + 16))();

    goto LABEL_24;
  }

  v15 = [v5 deviceToDeviceEncryptionAvailability];
  v16 = (v15 & 1) == 0;
  v17 = __atxlog_handle_backup(v15);
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Manatee is available", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

LABEL_24:
}

void __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke_45(uint64_t a1)
{
  v2 = __atxlog_handle_backup(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "CKAccountChangedNotification notification received", buf, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 48) + 8) + 40)];

  v4 = *(*(a1 + 32) + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke_46;
  block[3] = &unk_2785969B8;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (void)setupRecordZoneWithName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  nameCopy = name;
  dispatch_assert_queue_V2(serialQueue);
  v9 = objc_alloc(MEMORY[0x277CBC5F8]);
  v10 = [v9 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];

  ckClient = self->_ckClient;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ATXBackupService_setupRecordZoneWithName_completionHandler___block_invoke;
  v14[3] = &unk_278596A30;
  v15 = v10;
  selfCopy = self;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = v10;
  [(ATXCloudKitClient *)ckClient fetchRecordZone:v13 completionHandler:v14];
}

void __62__ATXBackupService_setupRecordZoneWithName_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    (*(a1[6] + 16))();
LABEL_3:

    goto LABEL_4;
  }

  v8 = __atxlog_handle_backup(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __62__ATXBackupService_setupRecordZoneWithName_completionHandler___block_invoke_cold_1();
  }

  if (+[ATXBackupService isCloudKitError:](ATXBackupService, "isCloudKitError:", v7) && [v7 code] == 26)
  {
    v5 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:a1[4]];
    [*(a1[5] + 32) saveRecordZone:v5 completionHandler:a1[6]];
    goto LABEL_3;
  }

  v9 = [ATXBackupService isManateeDecryptionError:v7];
  if (v9)
  {
    v10 = __atxlog_handle_backup(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __62__ATXBackupService_setupRecordZoneWithName_completionHandler___block_invoke_cold_2();
    }

    v11 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:a1[4]];
    v13 = a1[5];
    v12 = a1[6];
    v14 = *(v13 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__ATXBackupService_setupRecordZoneWithName_completionHandler___block_invoke_55;
    v16[3] = &unk_278596918;
    v16[4] = v13;
    v17 = v11;
    v18 = v12;
    v15 = v11;
    [v14 deleteRecordZone:v15 completionHandler:v16];
  }

  else
  {
    (*(a1[6] + 16))();
  }

LABEL_4:
}

- (void)saveBackupAsset:(id)asset completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (assetCopy)
  {
    deviceID = self->_deviceID;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__ATXBackupService_saveBackupAsset_completionHandler___block_invoke;
    v9[3] = &unk_278596A80;
    v11 = handlerCopy;
    v9[4] = self;
    v10 = assetCopy;
    [(ATXBackupService *)self setupRecordZoneWithName:deviceID completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __54__ATXBackupService_saveBackupAsset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [ATXBackupService queryForBackupsWithDeviceID:*(*(a1 + 32) + 56)];
    v9 = *(*(a1 + 32) + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__ATXBackupService_saveBackupAsset_completionHandler___block_invoke_57;
    v14[3] = &unk_278596A58;
    v15 = v7;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = *(a1 + 48);
    [v9 fetchRecords:v8 inZone:v10 completionHandler:v14];
  }

  else
  {
    v13 = __atxlog_handle_backup(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __54__ATXBackupService_saveBackupAsset_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __54__ATXBackupService_saveBackupAsset_completionHandler___block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = __atxlog_handle_backup(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __54__ATXBackupService_saveBackupAsset_completionHandler___block_invoke_57_cold_1(a1, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if ([v5 count])
  {
    v15 = [v5 objectAtIndexedSubscript:0];
    v16 = v15;
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CBC5A0]);
    v18 = [*(a1 + 40) zoneID];
    v16 = [v17 initWithRecordType:@"backups" zoneID:v18];

    v15 = [v16 setObject:*(*(a1 + 48) + 56) forKeyedSubscript:@"deviceUUID"];
  }

  v19 = __atxlog_handle_backup(v15);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 56);
    v23 = 138412290;
    v24 = v20;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "backup url %@", &v23, 0xCu);
  }

  v21 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:*(a1 + 56)];
  v22 = __atxlog_handle_backup([v16 setObject:v21 forKeyedSubscript:@"backupFile"]);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "uploading asset...", &v23, 2u);
  }

  [*(*(a1 + 48) + 32) saveRecord:v16 completionHandler:*(a1 + 64)];
}

- (void)fetchBackupAssetWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = __atxlog_handle_backup(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "fetching backup asset", buf, 2u);
  }

  deviceID = [(ATXBackupFileManager *)self->_backupFileManager deviceID];
  if ([deviceID length])
  {
    v7 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:deviceID];
    v8 = [ATXBackupService queryForBackupsWithDeviceID:deviceID];
    ckClient = self->_ckClient;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__ATXBackupService_fetchBackupAssetWithCompletionHandler___block_invoke;
    v12[3] = &unk_278596AA8;
    v13 = handlerCopy;
    [(ATXCloudKitClient *)ckClient fetchRecords:v8 inZone:v7 completionHandler:v12];
    v10 = v13;
  }

  else
  {
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"Unable to fetch backup asset. No device identifier set or is empty string";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ATXBackupService" code:1 userInfo:v7];
    v11 = (*(handlerCopy + 2))(handlerCopy, 0, v8);
    v10 = __atxlog_handle_backup(v11);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXBackupService fetchBackupAssetWithCompletionHandler:];
    }
  }
}

void __58__ATXBackupService_fetchBackupAssetWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_backup(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__ATXBackupService_fetchBackupAssetWithCompletionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    if ([v5 count])
    {
      v9 = [v5 objectAtIndexedSubscript:0];
      v10 = [v9 objectForKeyedSubscript:@"backupFile"];
      v11 = [v10 fileURL];
      v12 = [v11 path];

      (*(*(a1 + 32) + 16))();
      goto LABEL_7;
    }

    v8 = __atxlog_handle_backup(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__ATXBackupService_fetchBackupAssetWithCompletionHandler___block_invoke_cold_2();
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_7:
}

- (void)restoreFromBackupWithRetries:(unint64_t)retries fromContainerID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (retries)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__ATXBackupService_restoreFromBackupWithRetries_fromContainerID_completionHandler___block_invoke;
    aBlock[3] = &unk_278596AD0;
    aBlock[4] = self;
    retriesCopy = retries;
    v11 = dCopy;
    v30 = v11;
    v12 = handlerCopy;
    v31 = v12;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (v11)
    {
      v15 = [(NSString *)self->_containerIdentifier stringByAppendingString:@".non-manatee"];
      v16 = [v11 isEqualToString:v15];
      if (v16 & 1) != 0 || (v17 = [v11 isEqualToString:self->_containerIdentifier], (v17))
      {
        v18 = [ATXCloudKitClient clientWithContainerIdentifier:self->_containerIdentifier useManatee:v16 ^ 1u callbackQueue:self->_serialQueue];
        ckClient = self->_ckClient;
        self->_ckClient = v18;

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __83__ATXBackupService_restoreFromBackupWithRetries_fromContainerID_completionHandler___block_invoke_73;
        v26[3] = &unk_278596AF8;
        v26[4] = self;
        v27 = v14;
        v28 = v12;
        [(ATXBackupService *)self fetchBackupAssetWithCompletionHandler:v26];
      }

      else
      {
        v22 = __atxlog_handle_backup(v17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [ATXBackupService restoreFromBackupWithRetries:fromContainerID:completionHandler:];
        }

        (*(v12 + 2))(v12, 0);
      }
    }

    else
    {
      v21 = __atxlog_handle_backup(v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ATXBackupService restoreFromBackupWithRetries:fromContainerID:completionHandler:];
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __83__ATXBackupService_restoreFromBackupWithRetries_fromContainerID_completionHandler___block_invoke_75;
      v23[3] = &unk_278596B20;
      v23[4] = self;
      v24 = v14;
      v25 = v12;
      [(ATXBackupService *)self initializeCloudKitClientWithCompletionHandler:v23 withRetryBlock:v24];
    }
  }

  else
  {
    v20 = __atxlog_handle_backup(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [ATXBackupService restoreFromBackupWithRetries:fromContainerID:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __83__ATXBackupService_restoreFromBackupWithRetries_fromContainerID_completionHandler___block_invoke_73(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) retryIfNeededInResponseToError:a3 withBlock:*(a1 + 40)];
  if ((v6 & 1) == 0)
  {
    v7 = __atxlog_handle_backup(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "backup asset successfully fetched", v8, 2u);
    }

    [*(*(a1 + 32) + 24) restoreFromBackup:v5];
    (*(*(a1 + 48) + 16))();
  }
}

void __83__ATXBackupService_restoreFromBackupWithRetries_fromContainerID_completionHandler___block_invoke_75(uint64_t a1)
{
  v2 = __atxlog_handle_backup(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "initialized CloudKit client", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__ATXBackupService_restoreFromBackupWithRetries_fromContainerID_completionHandler___block_invoke_76;
  v4[3] = &unk_278596AF8;
  v4[4] = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 fetchBackupAssetWithCompletionHandler:v4];
}

void __83__ATXBackupService_restoreFromBackupWithRetries_fromContainerID_completionHandler___block_invoke_76(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) retryIfNeededInResponseToError:a3 withBlock:*(a1 + 40)];
  if ((v6 & 1) == 0)
  {
    v7 = __atxlog_handle_backup(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "backup asset successfully fetched", v8, 2u);
    }

    [*(*(a1 + 32) + 24) restoreFromBackup:v5];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)getDeviceIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_deviceID)
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    ckClient = self->_ckClient;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__ATXBackupService_getDeviceIDWithCompletionHandler___block_invoke;
    v6[3] = &unk_278596B48;
    v6[4] = self;
    v7 = handlerCopy;
    [(ATXCloudKitClient *)ckClient fetchCurrentDeviceIDWithCompletionHandler:v6];
  }
}

void __53__ATXBackupService_getDeviceIDWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53__ATXBackupService_getDeviceIDWithCompletionHandler___block_invoke_cold_2();
    }

    goto LABEL_7;
  }

  if (![v5 length])
  {
    v8 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __53__ATXBackupService_getDeviceIDWithCompletionHandler___block_invoke_cold_1();
    }

LABEL_7:
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = v5;
  v11 = v5;

  (*(*(a1 + 40) + 16))();
}

+ (id)queryForBackupsWithDeviceID:(id)d
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceUUID == %@", d];
  v4 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"backups" predicate:v3];

  return v4;
}

- (BOOL)retryIfNeededInResponseToError:(id)error withBlock:(id)block
{
  v56 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  blockCopy = block;
  if (errorCopy)
  {
    v8 = [ATXBackupService isCloudKitError:errorCopy];
    if (v8)
    {
      [objc_opt_class() allErrorsFromCloudKitError:errorCopy];
      v9 = memset(v54, 0, 64);
      v10 = [v9 countByEnumeratingWithState:v54 objects:v55 count:16];
      v11 = v10 != 0;
      if (v10)
      {
        v12 = *v54[1];
        if ([*v54[1] code] == 111)
        {
          v13 = __atxlog_handle_backup(111);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [ATXBackupService retryIfNeededInResponseToError:withBlock:];
          }

          v48 = 0;
          v49 = &v48;
          v50 = 0x3032000000;
          v51 = __Block_byref_object_copy_;
          v52 = __Block_byref_object_dispose_;
          v53 = 0;
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v15 = *MEMORY[0x277CBBF90];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke;
          v45[3] = &unk_2785969E0;
          v47 = &v48;
          v45[4] = self;
          v46 = blockCopy;
          v16 = [defaultCenter addObserverForName:v15 object:0 queue:0 usingBlock:v45];
          v17 = v49[5];
          v49[5] = v16;

          _Block_object_dispose(&v48, 8);
        }

        else if ([v12 code] == 110)
        {
          v18 = __atxlog_handle_backup(110);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [ATXBackupService retryIfNeededInResponseToError:withBlock:];
          }

          v48 = 0;
          v49 = &v48;
          v50 = 0x3032000000;
          v51 = __Block_byref_object_copy_;
          v52 = __Block_byref_object_dispose_;
          v53 = 0;
          defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
          v20 = *MEMORY[0x277CBBF00];
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke_83;
          v42[3] = &unk_2785969E0;
          v44 = &v48;
          v42[4] = self;
          v43 = blockCopy;
          v21 = [defaultCenter2 addObserverForName:v20 object:0 queue:0 usingBlock:v42];
          v22 = v49[5];
          v49[5] = v21;

          _Block_object_dispose(&v48, 8);
        }

        else if (CKCanRetryForError())
        {
          v23 = CKRetryAfterSecondsForError();
          if (v24 >= 1.0)
          {
            v25 = v24;
          }

          else
          {
            v25 = 1.0;
          }

          v26 = __atxlog_handle_backup(v23);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [ATXBackupService retryIfNeededInResponseToError:withBlock:];
          }

          v27 = MEMORY[0x277D425A0];
          serialQueue = self->_serialQueue;
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke_86;
          v40[3] = &unk_2785969B8;
          v41 = blockCopy;
          [v27 runAsyncOnQueue:serialQueue afterDelaySeconds:v40 block:v25];
        }

        else
        {
          code = [v12 code];
          if (code == 9)
          {
            v30 = MEMORY[0x277D425A0];
            v31 = self->_serialQueue;
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke_2;
            v38[3] = &unk_2785969B8;
            v39 = blockCopy;
            [v30 runAsyncOnQueue:v31 afterDelaySeconds:v38 block:1.0];
          }

          else
          {
            v32 = __atxlog_handle_backup(code);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              [ATXBackupService retryIfNeededInResponseToError:withBlock:];
            }

            v33 = MEMORY[0x277D425A0];
            v34 = self->_serialQueue;
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke_87;
            v36[3] = &unk_2785969B8;
            v37 = blockCopy;
            [v33 runAsyncOnQueue:v34 afterDelaySeconds:v36 block:10.0];
          }
        }
      }
    }

    else
    {
      v9 = __atxlog_handle_backup(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXBackupService retryIfNeededInResponseToError:withBlock:];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_backup(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "CKIdentityUpdateNotification notification received", buf, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 48) + 8) + 40)];

  v4 = *(*(a1 + 32) + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke_82;
  block[3] = &unk_2785969B8;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke_83(uint64_t a1)
{
  v2 = __atxlog_handle_backup(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "CKAccountChangedNotification notification received", buf, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 48) + 8) + 40)];

  v4 = *(*(a1 + 32) + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ATXBackupService_retryIfNeededInResponseToError_withBlock___block_invoke_84;
  block[3] = &unk_2785969B8;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

+ (id)allErrorsFromCloudKitError:(id)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([errorCopy code] == 2)
  {
    userInfo = [errorCopy userInfo];
    v5 = *MEMORY[0x277CBBFB0];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      userInfo2 = [errorCopy userInfo];
      v9 = [userInfo2 objectForKeyedSubscript:v5];
      allValues = [v9 allValues];
    }

    else
    {
      allValues = 0;
    }
  }

  else if ([errorCopy code] == 1)
  {
    userInfo3 = [errorCopy userInfo];
    v12 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    domain = [v12 domain];
    v14 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

    if (v14)
    {
      v17[0] = v12;
      allValues = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    }

    else
    {
      allValues = 0;
    }
  }

  else
  {
    v16 = errorCopy;
    allValues = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  }

  return allValues;
}

+ (BOOL)isCloudKitError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CBC120]])
  {
    v5 = 1;
  }

  else
  {
    domain2 = [errorCopy domain];
    v5 = [domain2 isEqualToString:*MEMORY[0x277CBBF50]];
  }

  return v5;
}

+ (BOOL)isManateeDecryptionError:(id)error
{
  errorCopy = error;
  if (![ATXBackupService isCloudKitError:errorCopy])
  {
    v4 = 0;
    goto LABEL_14;
  }

  if ([errorCopy code] != 112)
  {
    v5 = errorCopy;
    domain = [v5 domain];
    if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
    {
      code = [v5 code];

      if (code == 1)
      {
        userInfo = [v5 userInfo];
        v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

        code2 = [v9 code];
        v4 = 1;
        if ((code2 - 5000) < 5 || code2 == 112)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v9 = v5;
LABEL_12:
    v4 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v4 = 1;
LABEL_14:

  return v4;
}

- (void)handleDeleteDataRequest
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ATXBackupService_handleDeleteDataRequest__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __43__ATXBackupService_handleDeleteDataRequest__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_backup(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Deleting all backups", buf, 2u);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ATXBackupService_handleDeleteDataRequest__block_invoke_89;
  v5[3] = &unk_278596B90;
  v5[4] = v3;
  return [v3 initializeCloudKitClientWithCompletionHandler:v5 withRetryBlock:&__block_literal_global_95];
}

void __43__ATXBackupService_handleDeleteDataRequest__block_invoke_89(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2)
  {
    v8 = [*(*(a1 + 32) + 24) deviceID];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:v8];
      [*(*(a1 + 32) + 32) deleteRecordZone:v9 completionHandler:&__block_literal_global_92];
    }

    else
    {
      v10 = __atxlog_handle_backup(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "Skipping iCloud deletion because no backup has been made", v11, 2u);
      }
    }
  }

  else
  {
    v8 = __atxlog_handle_backup(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43__ATXBackupService_handleDeleteDataRequest__block_invoke_89_cold_1();
    }
  }
}

void __43__ATXBackupService_handleDeleteDataRequest__block_invoke_90(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = __atxlog_handle_backup(v4);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Backups deleted", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __43__ATXBackupService_handleDeleteDataRequest__block_invoke_90_cold_1();
  }
}

- (ATXCloudStorageSettingsListener)cloudStorageSettingsListener
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudStorageSettingsListener);

  return WeakRetained;
}

+ (id)backupService
{
  v3 = [ATXBackupFileManager alloc];
  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v5 = +[_ATXDataStore sharedInstance];
  v6 = [(ATXBackupFileManager *)v3 initWithBackupDirectory:appPredictionDirectory dataProviderDelegate:v5];

  v7 = [[self alloc] initWithContainerIdentifier:@"com.apple.ProactivePredictionsBackup" backupFileManager:v6];

  return v7;
}

void __50__ATXBackupService_restoreFromBackupIfNeccessary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__ATXBackupService_isManateeAvailableWithCompletionHandler_withRetryBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__ATXBackupService_saveBackupAsset_completionHandler___block_invoke_57_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "Error fetching records %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)fetchBackupAssetWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __58__ATXBackupService_fetchBackupAssetWithCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)restoreFromBackupWithRetries:fromContainerID:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)restoreFromBackupWithRetries:fromContainerID:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)restoreFromBackupWithRetries:fromContainerID:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__ATXBackupService_getDeviceIDWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retryIfNeededInResponseToError:withBlock:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)retryIfNeededInResponseToError:withBlock:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)retryIfNeededInResponseToError:withBlock:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)retryIfNeededInResponseToError:withBlock:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end