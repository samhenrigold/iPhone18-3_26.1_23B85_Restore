@interface SLDCloudKitSyncBase
- (BOOL)recordSupportsOurVersion:(id)version;
- (SLDCloudKitSyncBase)initWithConfiguration:(id)configuration;
- (double)currentTimestamp;
- (id)container;
- (id)database;
- (id)idStringForType:(id)type uniqueData:(id)data;
- (id)idStringForType:(id)type uniqueString:(id)string;
- (id)salt;
- (id)syncEngine;
- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d;
- (unint64_t)getIncrementedBatchNumber;
- (void)accountChangedNotification:(id)notification;
- (void)addMetadataToRecord:(id)record;
- (void)checkForAccountChanges;
- (void)checkForAccountChangesNowWithCompletion:(id)completion;
- (void)createSyncEngine;
- (void)fetchContainerInformationWithCompletion:(id)completion;
- (void)getIncrementedBatchNumber;
- (void)handleMetadataSizeBecomingEligibleForSync;
- (void)reset;
- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecord:(id)record;
- (void)syncEngine:(id)engine didUpdateMetadata:(id)metadata;
- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type;
@end

@implementation SLDCloudKitSyncBase

void __45__SLDCloudKitSyncBase_checkForAccountChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[56] = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__SLDCloudKitSyncBase_checkForAccountChanges__block_invoke_2;
    v4[3] = &unk_278925D90;
    v4[4] = *(a1 + 32);
    [WeakRetained checkForAccountChangesNowWithCompletion:v4];
  }
}

- (unint64_t)getIncrementedBatchNumber
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v5 = [persistence objectForKeyedSubscript:@"batchNumber"];

  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  persistence2 = [(SLDCloudKitSyncBase *)self persistence];
  [persistence2 setObject:v7 forKeyedSubscript:@"batchNumber"];

  v10 = SLDaemonLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncBase getIncrementedBatchNumber];
  }

  return unsignedIntegerValue;
}

void __27__SLDCloudKitSyncBase_salt__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[57] = 0;
  }
}

- (SLDCloudKitSyncBase)initWithConfiguration:(id)configuration
{
  v51 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v44.receiver = self;
  v44.super_class = SLDCloudKitSyncBase;
  v6 = [(SLDCloudKitSyncBase *)&v44 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("SLDCloudKitSync", v8);
    v10 = *(v6 + 5);
    *(v6 + 5) = v9;

    *(v6 + 28) = 0;
    *(v6 + 6) = 0;
    objc_storeStrong(v6 + 3, configuration);
    v11 = [SLDCloudKitSyncPersistence alloc];
    name = [configurationCopy name];
    v13 = [(SLDCloudKitSyncPersistence *)v11 initWithName:name];
    v14 = *(v6 + 4);
    *(v6 + 4) = v13;

    persistence = [v6 persistence];
    v16 = [persistence objectForKeyedSubscript:@"version"];

    if (v16)
    {
      v18 = [v16 compare:&unk_28469BD08];
      if (v18 == -1)
      {
        v26 = SLDaemonLogHandle(-1);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [configurationCopy name];
          *buf = 138412802;
          v46 = name2;
          v47 = 2112;
          v48 = v16;
          v49 = 2112;
          v50 = &unk_28469BD08;
          _os_log_impl(&dword_231772000, v26, OS_LOG_TYPE_DEFAULT, "#SLDCK %@ previous version = %@, migrating to new version %@", buf, 0x20u);
        }

        if ([v16 compare:&unk_28469BD20] == -1)
        {
          v28 = SLDaemonLogHandle(-1);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            name3 = [configurationCopy name];
            *buf = 138412290;
            v46 = name3;
            _os_log_impl(&dword_231772000, v28, OS_LOG_TYPE_DEFAULT, "#SLDCK %@ updating to production CK environment", buf, 0xCu);
          }

          persistence2 = [v6 persistence];
          [persistence2 reset];
        }

        if ([v16 compare:&unk_28469BD08] == -1)
        {
          v31 = SLDaemonLogHandle(-1);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            name4 = [configurationCopy name];
            *buf = 138412290;
            v46 = name4;
            _os_log_impl(&dword_231772000, v31, OS_LOG_TYPE_DEFAULT, "#SLDCK %@ will sync fresh highlights for kPPSHVariantTVSync adoption", buf, 0xCu);
          }

          persistence3 = [v6 persistence];
          [persistence3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"writerDone"];
        }

        persistence4 = [v6 persistence];
        [persistence4 setObject:&unk_28469BD08 forKeyedSubscript:@"version"];

        persistence5 = [v6 persistence];
        v19 = persistence5;
        v24 = MEMORY[0x277CBEC28];
        v25 = @"incompatibleVersion";
        goto LABEL_25;
      }

      if (v18 != 1)
      {
        if (v18)
        {
LABEL_27:
          v35 = objc_opt_new();
          v36 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.SocialLayer" environment:1];
          v37 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v36 options:v35];
          v38 = *(v6 + 1);
          *(v6 + 1) = v37;

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter addObserver:v6 selector:sel_accountChangedNotification_ name:*MEMORY[0x277CBBF00] object:0];

          v40 = *(v6 + 5);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __45__SLDCloudKitSyncBase_initWithConfiguration___block_invoke;
          block[3] = &unk_278925D90;
          v43 = v6;
          dispatch_sync(v40, block);

          goto LABEL_28;
        }

        v19 = SLDaemonLogHandle(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [SLDCloudKitSyncBase initWithConfiguration:];
        }

LABEL_26:

        goto LABEL_27;
      }

      v22 = SLDaemonLogHandle(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [SLDCloudKitSyncBase initWithConfiguration:];
      }

      persistence6 = [v6 persistence];
      [persistence6 reset];
    }

    else
    {
      persistence6 = SLDaemonLogHandle(v17);
      if (os_log_type_enabled(persistence6, OS_LOG_TYPE_DEFAULT))
      {
        name5 = [configurationCopy name];
        *buf = 138412546;
        v46 = name5;
        v47 = 2112;
        v48 = &unk_28469BD08;
        _os_log_impl(&dword_231772000, persistence6, OS_LOG_TYPE_DEFAULT, "#SLDCK %@ no existing persistence, setting version to %@ for new persistence", buf, 0x16u);
      }
    }

    persistence5 = [v6 persistence];
    v19 = persistence5;
    v24 = &unk_28469BD08;
    v25 = @"version";
LABEL_25:
    [persistence5 setObject:v24 forKeyedSubscript:v25];
    goto LABEL_26;
  }

LABEL_28:

  return v6;
}

uint64_t __45__SLDCloudKitSyncBase_initWithConfiguration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) checkForAccountChanges];
  [*(a1 + 32) createSyncEngine];
  v2 = *(a1 + 32);

  return [v2 initializeState];
}

- (void)checkForAccountChanges
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!self->_accountChangesCheckScheduled)
  {
    self->_accountChangesCheckScheduled = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 5000000000);
    queue2 = [(SLDCloudKitSyncBase *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SLDCloudKitSyncBase_checkForAccountChanges__block_invoke;
    block[3] = &unk_278925C00;
    objc_copyWeak(&v7, &location);
    block[4] = self;
    dispatch_after(v4, queue2, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __45__SLDCloudKitSyncBase_checkForAccountChanges__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v1);

  v3 = SLDaemonLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "#SLDCK Finished checking for account changes.", v4, 2u);
  }
}

- (void)fetchContainerInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = SLDaemonLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "#SLDCK Fetching container information", buf, 2u);
  }

  v8 = self->_container;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__SLDCloudKitSyncBase_fetchContainerInformationWithCompletion___block_invoke;
  v11[3] = &unk_278927220;
  v12 = v8;
  v13 = completionCopy;
  v9 = v8;
  v10 = completionCopy;
  [(CKContainer *)v9 accountStatusWithCompletionHandler:v11];
}

void __63__SLDCloudKitSyncBase_fetchContainerInformationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLDaemonLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "#SLDCK Received accountStatus: %@, error: %@", buf, 0x16u);
  }

  if (v5)
  {
    v9 = SLDaemonLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __63__SLDCloudKitSyncBase_fetchContainerInformationWithCompletion___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
    goto LABEL_12;
  }

  if (a2 != 1)
  {
    v10 = *(*(a1 + 40) + 16);
LABEL_12:
    v10();
    goto LABEL_13;
  }

  v11 = SLDaemonLogHandle(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "#SLDCK Fetching userRecordID", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SLDCloudKitSyncBase_fetchContainerInformationWithCompletion___block_invoke_220;
  v13[3] = &unk_2789271F8;
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = 1;
  [v12 fetchUserRecordIDWithCompletionHandler:v13];

LABEL_13:
}

void __63__SLDCloudKitSyncBase_fetchContainerInformationWithCompletion___block_invoke_220(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SLDaemonLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "#SLDCK Received userRecordID: %@, error: %@", &v11, 0x16u);
  }

  if (v6)
  {
    v9 = SLDaemonLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __63__SLDCloudKitSyncBase_fetchContainerInformationWithCompletion___block_invoke_220_cold_1();
    }

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

- (void)checkForAccountChangesNowWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = SLDaemonLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_DEFAULT, "#SLDCK Checking for account changed.", buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SLDCloudKitSyncBase_checkForAccountChangesNowWithCompletion___block_invoke;
  v9[3] = &unk_278927270;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(SLDCloudKitSyncBase *)self fetchContainerInformationWithCompletion:v9];
}

void __63__SLDCloudKitSyncBase_checkForAccountChangesNowWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = SLDaemonLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __63__SLDCloudKitSyncBase_checkForAccountChangesNowWithCompletion___block_invoke_cold_1();
    }

    v11 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SLDCloudKitSyncBase_checkForAccountChangesNowWithCompletion___block_invoke_223;
    block[3] = &unk_2789261C8;
    v19 = *(a1 + 40);
    dispatch_async(v11, block);

    v12 = v19;
  }

  else
  {
    v13 = [*(a1 + 32) queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__SLDCloudKitSyncBase_checkForAccountChangesNowWithCompletion___block_invoke_2;
    v14[3] = &unk_278927248;
    v14[4] = *(a1 + 32);
    v17 = a2;
    v15 = v7;
    v16 = *(a1 + 40);
    dispatch_async(v13, v14);

    v12 = v15;
  }
}

void __63__SLDCloudKitSyncBase_checkForAccountChangesNowWithCompletion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistence];
  v3 = [v2 objectForKeyedSubscript:@"accountAvailable"];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 56);
  v6 = [*(a1 + 32) persistence];
  v7 = [v6 objectForKeyedSubscript:@"accountLastKnownUserRecordID"];

  v8 = [*(a1 + 40) recordName];
  v9 = SLDaemonLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    *v22 = 138413058;
    if (v4)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *&v22[4] = v11;
    *&v22[12] = 2112;
    if (v5 == 1)
    {
      v10 = @"YES";
    }

    *&v22[14] = v10;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "#SLDCK account status: availability %@ -> %@, user record id %@ -> %@", v22, 0x2Au);
  }

  if (!v4 || v5 == 1)
  {
    v15 = [v7 isEqualToString:{v8, *v22, *&v22[8]}];
    if (v15)
    {
      v14 = 0;
      goto LABEL_19;
    }

    v13 = SLDaemonLogHandle(v15);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 138412546;
      *&v22[4] = v7;
      *&v22[12] = 2112;
      *&v22[14] = v8;
      _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "#SLDCK user record id changed (last known user record id: %@, new user record id: %@)", v22, 0x16u);
    }

    v14 = v4;
  }

  else
  {
    v13 = SLDaemonLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 138412290;
      *&v22[4] = v7;
      _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "#SLDCK account no longer available (last known user record id: %@)", v22, 0xCu);
    }

    v14 = 1;
  }

LABEL_19:
  v16 = [*(a1 + 32) persistence];
  [v16 setObject:v8 forKeyedSubscript:@"accountLastKnownUserRecordID"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 1];
  v18 = [*(a1 + 32) persistence];
  [v18 setObject:v17 forKeyedSubscript:@"accountAvailable"];

  if (v14)
  {
    [*(a1 + 32) reset];
    v19 = [*(a1 + 32) persistence];
    [v19 setObject:v8 forKeyedSubscript:@"accountLastKnownUserRecordID"];

    v20 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 1];
    v21 = [*(a1 + 32) persistence];
    [v21 setObject:v20 forKeyedSubscript:@"accountAvailable"];
  }

  else if (((v4 ^ (v5 == 1)) & 1) != 0 || ([v7 isEqualToString:v8] & 1) == 0)
  {
    [*(a1 + 32) accountStatusChanged];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)accountChangedNotification:(id)notification
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SLDCloudKitSyncBase_accountChangedNotification___block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)recordSupportsOurVersion:(id)version
{
  v3 = [version objectForKeyedSubscript:@"minVersion"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 compare:&unk_28469BD08] != 1;
  }

  else
  {
    v6 = SLDaemonLogHandle(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLDCloudKitSyncBase recordSupportsOurVersion:];
    }

    v5 = 0;
  }

  return v5;
}

- (void)createSyncEngine
{
  v3 = objc_alloc(MEMORY[0x277CBC6F0]);
  privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v6 = [persistence objectForKeyedSubscript:@"syncEngineMetadata"];
  v9 = [v3 initWithDatabase:privateCloudDatabase dataSource:self metadata:v6];

  [v9 setApsMachServiceName:@"com.apple.aps.sociallayerd"];
  v7 = [objc_alloc(MEMORY[0x277CBC6E8]) initWithConfiguration:v9];
  syncEngine = self->_syncEngine;
  self->_syncEngine = v7;
}

- (void)reset
{
  persistence = [(SLDCloudKitSyncBase *)self persistence];
  [persistence reset];

  [(SLDCloudKitSyncBase *)self createSyncEngine];

  [(SLDCloudKitSyncBase *)self initializeState];
}

- (id)syncEngine
{
  dispatch_assert_queue_V2(self->_queue);
  syncEngine = self->_syncEngine;

  return syncEngine;
}

- (id)container
{
  dispatch_assert_queue_V2(self->_queue);
  container = self->_container;

  return container;
}

- (id)database
{
  dispatch_assert_queue_V2(self->_queue);
  container = self->_container;

  return [(CKContainer *)container privateCloudDatabase];
}

- (id)salt
{
  dispatch_assert_queue_V2(self->_queue);
  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v4 = [persistence objectForKeyedSubscript:@"saltData"];
  if (!self->_saltLocked)
  {
    self->_saltLocked = 1;
    objc_initWeak(&location, self);
    queue = self->_queue;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __27__SLDCloudKitSyncBase_salt__block_invoke;
    v17 = &unk_278925C50;
    objc_copyWeak(&v18, &location);
    dispatch_async(queue, &v14);
    if (v4)
    {
      v6 = objc_alloc(MEMORY[0x277CBEAA8]);
      v7 = [persistence objectForKeyedSubscript:{@"saltDataCreated", v14, v15, v16, v17}];
      [v7 doubleValue];
      v8 = [v6 initWithTimeIntervalSinceReferenceDate:?];

      [v8 timeIntervalSinceNow];
      if (v9 > 0.0 || v9 < -2592000.0)
      {

        v4 = 0;
      }
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
    arc4random_buf([v4 mutableBytes], 0x20uLL);
    [persistence setObject:v4 forKeyedSubscript:@"saltData"];
    v10 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    v12 = [v10 numberWithDouble:?];
    [persistence setObject:v12 forKeyedSubscript:@"saltDataCreated"];
  }

  return v4;
}

- (id)idStringForType:(id)type uniqueString:(id)string
{
  typeCopy = type;
  stringCopy = string;
  dispatch_assert_queue_V2(self->_queue);
  v8 = objc_autoreleasePoolPush();
  v9 = [stringCopy dataUsingEncoding:4];
  v10 = [(SLDCloudKitSyncBase *)self idStringForType:typeCopy uniqueData:v9];

  objc_autoreleasePoolPop(v8);

  return v10;
}

- (id)idStringForType:(id)type uniqueData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  v8 = objc_autoreleasePoolPush();
  salt = [(SLDCloudKitSyncBase *)self salt];
  v10 = salt;
  if (dataCopy)
  {
    v11 = salt;
    v12 = dataCopy;
    bytes = [v10 bytes];
    v14 = [v10 length];
    bytes2 = [v12 bytes];
    v16 = [v12 length];

    CCHmac(2u, bytes, v14, bytes2, v16, macOut);
    v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:macOut length:32];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 base64EncodedStringWithOptions:0];
  v19 = [v18 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v20 = [v19 length];
  do
  {
    v21 = v20;
    if (!v20)
    {
      break;
    }

    --v20;
  }

  while ([v19 characterAtIndex:v21 - 1] == 61);
  v22 = [v19 substringToIndex:v21];

  v26[0] = typeCopy;
  v26[1] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v24 = [v23 componentsJoinedByString:@"!"];

  objc_autoreleasePoolPop(v8);

  return v24;
}

- (double)currentTimestamp
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  result = self->_timestamp;
  if (result == 0.0)
  {
    v5 = objc_autoreleasePoolPush();
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    self->_timestamp = v7;

    objc_initWeak(&location, self);
    queue2 = [(SLDCloudKitSyncBase *)self queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__SLDCloudKitSyncBase_currentTimestamp__block_invoke;
    v9[3] = &unk_278925C50;
    objc_copyWeak(&v10, &location);
    dispatch_async(queue2, v9);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v5);
    return self->_timestamp;
  }

  return result;
}

void __39__SLDCloudKitSyncBase_currentTimestamp__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[6] = 0;
  }
}

- (void)addMetadataToRecord:(id)record
{
  recordCopy = record;
  [recordCopy setObject:&unk_28469BD08 forKeyedSubscript:@"version"];
  [recordCopy setObject:&unk_28469BD38 forKeyedSubscript:@"minVersion"];
  v5 = MEMORY[0x277CCABB0];
  [(SLDCloudKitSyncBase *)self currentTimestamp];
  v6 = [v5 numberWithDouble:?];
  [recordCopy setObject:v6 forKeyedSubscript:@"recordTimestamp"];
}

- (void)syncEngine:(id)engine didUpdateMetadata:(id)metadata
{
  engineCopy = engine;
  metadataCopy = metadata;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SLDCloudKitSyncBase_syncEngine_didUpdateMetadata___block_invoke;
  block[3] = &unk_278927298;
  v12 = engineCopy;
  selfCopy = self;
  v14 = metadataCopy;
  v9 = metadataCopy;
  v10 = engineCopy;
  dispatch_sync(queue, block);
}

void __52__SLDCloudKitSyncBase_syncEngine_didUpdateMetadata___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) persistence];
    v5 = [v4 objectForKeyedSubscript:@"syncEngineMetadata"];
    v6 = [v5 length];

    v7 = *(a1 + 48);
    v8 = [*(a1 + 40) persistence];
    [v8 setObject:v7 forKeyedSubscript:@"syncEngineMetadata"];

    v10 = SLDaemonLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __52__SLDCloudKitSyncBase_syncEngine_didUpdateMetadata___block_invoke_cold_1();
    }

    if (v6 > 0x80000 && [*(a1 + 48) length] <= 0x80000)
    {
      [*(a1 + 40) handleMetadataSizeBecomingEligibleForSync];
    }
  }
}

- (void)handleMetadataSizeBecomingEligibleForSync
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);
}

- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d
{
  engineCopy = engine;
  result = d;
  __break(1u);
  return result;
}

- (void)syncEngine:(id)engine didSaveRecord:(id)record
{
  engineCopy = engine;
  recordCopy = record;
  __break(1u);
}

- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error
{
  engineCopy = engine;
  recordCopy = record;
  errorCopy = error;
  __break(1u);
}

- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d
{
  engineCopy = engine;
  dCopy = d;
  __break(1u);
}

- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error
{
  engineCopy = engine;
  dCopy = d;
  errorCopy = error;
  __break(1u);
}

- (void)syncEngine:(id)engine didFetchRecord:(id)record
{
  engineCopy = engine;
  recordCopy = record;
  __break(1u);
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  engineCopy = engine;
  deletedCopy = deleted;
  typeCopy = type;
  __break(1u);
}

- (void)initWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x277D85DE8];
  v3 = [v2 name];
  OUTLINED_FUNCTION_0_11();
  v6 = v1;
  v7 = v4;
  v8 = &unk_28469BD08;
  _os_log_fault_impl(&dword_231772000, v0, OS_LOG_TYPE_FAULT, "#SLDCK %@ previous version = %@, downgrading to version %@", v5, 0x20u);
}

- (void)initWithConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __63__SLDCloudKitSyncBase_fetchContainerInformationWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__SLDCloudKitSyncBase_fetchContainerInformationWithCompletion___block_invoke_220_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__SLDCloudKitSyncBase_checkForAccountChangesNowWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)recordSupportsOurVersion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getIncrementedBatchNumber
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __52__SLDCloudKitSyncBase_syncEngine_didUpdateMetadata___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  [OUTLINED_FUNCTION_8(v0) length];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end