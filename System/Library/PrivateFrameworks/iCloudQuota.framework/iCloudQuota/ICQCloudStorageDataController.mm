@interface ICQCloudStorageDataController
+ (id)_requestQueue;
- (BOOL)iCloudDetailsPageShown;
- (ICQCloudStorageDataController)initWithAccount:(id)account;
- (ICQiCloudDetailsPageInfo)cachediCloudDetailsPage;
- (id)cachedStorageSummary;
- (void)fetchAppsSyncingToiCloudDriveWithCompletion:(id)completion;
- (void)fetchBackupinfoWithCompletion:(id)completion;
- (void)fetchStorageAppsWithCompletion:(id)completion;
- (void)fetchStorageByApp:(id)app completion:(id)completion;
- (void)fetchStorageSummaryWithCompletion:(id)completion;
- (void)sendTipState:(int64_t)state forTip:(id)tip completion:(id)completion;
- (void)setICloudDetailsPageShown:(BOOL)shown;
@end

@implementation ICQCloudStorageDataController

+ (id)_requestQueue
{
  if (_requestQueue_onceToken_0 != -1)
  {
    +[ICQCloudStorageDataController _requestQueue];
  }

  v3 = _requestQueue_requestQueue_0;

  return v3;
}

void __46__ICQCloudStorageDataController__requestQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.quota.storage.request", v0);
  v2 = _requestQueue_requestQueue_0;
  _requestQueue_requestQueue_0 = v1;
}

- (ICQCloudStorageDataController)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = ICQCloudStorageDataController;
  v6 = [(ICQCloudStorageDataController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v7->_shouldIgnoreCache = 0;
  }

  return v7;
}

- (void)fetchStorageSummaryWithCompletion:(id)completion
{
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  if (aa_altDSID)
  {
    _requestQueue = [objc_opt_class() _requestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke;
    block[3] = &unk_27A6526D0;
    block[4] = self;
    v11 = completionCopy;
    v10 = aa_altDSID;
    dispatch_async(_requestQueue, block);
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v8 = ICQCreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shouldIgnoreCache];
    *buf = 67109120;
    v32 = v3;
    _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "Should ignore cache: %d", buf, 8u);
  }

  v4 = [*(a1 + 32) shouldIgnoreCache];
  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) cachedStorageSummary];
    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Returning cached cloud storage summary result.", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_17;
    }

    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "No cache exist. Reaching out to daemon to fetch the result from server.", buf, 2u);
    }
  }

  v8 = _ICQSignpostLogSystem(v4);
  v9 = objc_opt_new();
  v10 = _ICQSignpostCreateWithObject(v8, v9);
  v12 = v11;

  v14 = _ICQSignpostLogSystem(v13);
  v15 = v14;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v10, "StorageSummaryRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _ICQSignpostLogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_cold_1();
  }

  v5 = objc_alloc_init(getINDaemonConnectionClass_0());
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30;
  v27[3] = &unk_27A651998;
  v29 = v10;
  v30 = v12;
  v28 = *(a1 + 48);
  v18 = [v5 synchronousDaemonWithErrorHandler:v27];
  v19 = *(a1 + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_32;
  v21[3] = &unk_27A652C10;
  v25 = v10;
  v26 = v12;
  v22 = v19;
  v20 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v20;
  [v18 fetchStorageSummaryForAltDSID:v22 completion:v21];

LABEL_17:
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30(void *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_1();
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _ICQSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v7, OS_SIGNPOST_INTERVAL_END, v8, "StorageSummaryRequest", "", v11, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_2();
  }

  (*(a1[4] + 16))();
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Cloud storage summary request has been completed.", buf, 2u);
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
  v9 = _ICQSignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = *(a1 + 56);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v10, OS_SIGNPOST_INTERVAL_END, v11, "StorageSummaryRequest", "", v18, 2u);
  }

  v13 = _ICQSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_2();
  }

  if (v5)
  {
    v14 = +[ICQCloudStorageSummaryCache sharedInstance];
    [v14 setStorageSummary:v5 forAltDSID:*(a1 + 32)];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_32_cold_2();
    }

    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) cachedStorageSummary];
    (*(v16 + 16))(v16, v17, v6);
  }
}

- (id)cachedStorageSummary
{
  v3 = +[ICQCloudStorageSummaryCache sharedInstance];
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v5 = [v3 storageSummaryForAltDSID:aa_altDSID];

  return v5;
}

- (ICQiCloudDetailsPageInfo)cachediCloudDetailsPage
{
  v3 = +[ICQCloudStorageSummaryCache sharedInstance];
  hasDisplayedDetailsPage = [v3 hasDisplayedDetailsPage];

  if (hasDisplayedDetailsPage)
  {
    iCloudDetailsPageInfo = 0;
  }

  else
  {
    cachedStorageSummary = [(ICQCloudStorageDataController *)self cachedStorageSummary];
    iCloudDetailsPageInfo = [cachedStorageSummary iCloudDetailsPageInfo];
  }

  return iCloudDetailsPageInfo;
}

- (BOOL)iCloudDetailsPageShown
{
  v2 = +[ICQCloudStorageSummaryCache sharedInstance];
  hasDisplayedDetailsPage = [v2 hasDisplayedDetailsPage];

  return hasDisplayedDetailsPage;
}

- (void)setICloudDetailsPageShown:(BOOL)shown
{
  v3 = +[ICQCloudStorageSummaryCache sharedInstance];
  [v3 setHasDisplayedDetailsPage:1];
}

- (void)fetchStorageAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v6 = aa_altDSID;
  if (aa_altDSID)
  {
    v7 = _ICQSignpostLogSystem(aa_altDSID);
    v8 = objc_opt_new();
    v9 = _ICQSignpostCreateWithObject(v7, v8);
    v11 = v10;

    v13 = _ICQSignpostLogSystem(v12);
    v14 = v13;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v9, "StorageAppsRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v16 = _ICQSignpostLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageDataController fetchStorageAppsWithCompletion:];
    }

    v17 = objc_alloc_init(getINDaemonConnectionClass_0());
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke;
    v25[3] = &unk_27A651998;
    v27 = v9;
    v28 = v11;
    v18 = completionCopy;
    v26 = v18;
    v19 = [v17 daemonWithErrorHandler:v25];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_35;
    v21[3] = &unk_27A652C38;
    v23 = v9;
    v24 = v11;
    v22 = v18;
    [v19 fetchStorageAppsForAltDSID:v6 completion:v21];
  }

  else
  {
    v20 = _ICQGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v17 = ICQCreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_1();
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _ICQSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v7, OS_SIGNPOST_INTERVAL_END, v8, "StorageAppsRequest", "", v11, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_35(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Cloud storage apps request has been completed.", buf, 2u);
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v9 = _ICQSignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = a1[5];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v10, OS_SIGNPOST_INTERVAL_END, v11, "StorageAppsRequest", "", v15, 2u);
  }

  v13 = _ICQSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_2();
  }

  if (!v5)
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_35_cold_2();
    }
  }

  (*(a1[4] + 16))();
}

- (void)fetchStorageByApp:(id)app completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  appCopy = app;
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  v9 = _ICQGetLogSystem();
  v10 = v9;
  if (aa_altDSID)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      shouldIgnoreCache = [(ICQCloudStorageDataController *)self shouldIgnoreCache];
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Should ignore cache: %d", buf, 8u);
    }

    shouldIgnoreCache2 = [(ICQCloudStorageDataController *)self shouldIgnoreCache];
    if ((shouldIgnoreCache2 & 1) == 0)
    {
      v12 = +[ICQAppCloudStorageCache sharedInstance];
      v13 = [v12 cloudStorageByApp:appCopy forAltDSID:aa_altDSID];

      v14 = _ICQGetLogSystem();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "Returning cached app cloud storage result.", buf, 2u);
        }

        completionCopy[2](completionCopy, v13, 0);
        goto LABEL_21;
      }

      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "No cache exist. Reaching out to daemon to fetch the result from server.", buf, 2u);
      }
    }

    v16 = _ICQSignpostLogSystem(shouldIgnoreCache2);
    v17 = objc_opt_new();
    v18 = _ICQSignpostCreateWithObject(v16, v17);
    v20 = v19;

    v22 = _ICQSignpostLogSystem(v21);
    v23 = v22;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v18, "StorageByAppRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v25 = _ICQSignpostLogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageDataController fetchStorageByApp:completion:];
    }

    v13 = objc_alloc_init(getINDaemonConnectionClass_0());
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke;
    v34[3] = &unk_27A651998;
    v36 = v18;
    v37 = v20;
    v26 = completionCopy;
    v35 = v26;
    v27 = [v13 daemonWithErrorHandler:v34];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_38;
    v28[3] = &unk_27A652C60;
    v32 = v18;
    v33 = v20;
    v29 = appCopy;
    v30 = aa_altDSID;
    v31 = v26;
    [v27 fetchStorageByApp:v29 forAltDSID:v30 completion:v28];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v13 = ICQCreateError(12);
    (completionCopy)[2](completionCopy, 0, v13);
  }

LABEL_21:
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_1();
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _ICQSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v7, OS_SIGNPOST_INTERVAL_END, v8, "StorageByAppRequest", "", v11, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_38(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "App cloud storage request has been completed.", buf, 2u);
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[7], a1[8]);
  v9 = _ICQSignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = a1[7];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v10, OS_SIGNPOST_INTERVAL_END, v11, "StorageByAppRequest", "", v18, 2u);
  }

  v13 = _ICQSignpostLogSystem(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_2();
  }

  if (v5)
  {
    v14 = +[ICQAppCloudStorageCache sharedInstance];
    [v14 setCloudStorage:v5 byApp:a1[4] forAltDSID:a1[5]];

    (*(a1[6] + 16))();
  }

  else
  {
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_38_cold_2();
    }

    v16 = +[ICQAppCloudStorageCache sharedInstance];
    v17 = [v16 cloudStorageByApp:a1[4] forAltDSID:a1[5]];

    (*(a1[6] + 16))();
  }
}

- (void)fetchBackupinfoWithCompletion:(id)completion
{
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];

  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (aa_altDSID)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Reaching out to daemon to fetch backup info.", buf, 2u);
    }

    v9 = _ICQSignpostLogSystem(v8);
    v10 = objc_opt_new();
    v11 = _ICQSignpostCreateWithObject(v9, v10);
    v13 = v12;

    v15 = _ICQSignpostLogSystem(v14);
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v11, "BackupInfoRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v18 = _ICQSignpostLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageDataController fetchBackupinfoWithCompletion:];
    }

    v19 = objc_alloc_init(getINDaemonConnectionClass_0());
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke;
    v27[3] = &unk_27A651998;
    v20 = completionCopy;
    v28 = v20;
    v29 = v11;
    v30 = v13;
    v21 = [v19 daemonWithErrorHandler:v27];
    aa_altDSID2 = [(ACAccount *)self->_account aa_altDSID];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_40;
    v23[3] = &unk_27A652C88;
    v25 = v11;
    v26 = v13;
    v24 = v20;
    [v21 fetchBackupInfoForAltDSID:aa_altDSID2 completion:v23];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v19 = ICQCreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_1();
  }

  (*(a1[4] + 16))();
  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _ICQSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v7, OS_SIGNPOST_INTERVAL_END, v8, "BackupInfoRequest", "", v11, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_2();
  }
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_40(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "fetchBackupInfo request completed.", buf, 2u);
  }

  if (v5)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_40_cold_1();
    }
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v10 = _ICQSignpostLogSystem(Nanoseconds);
  v11 = v10;
  v12 = a1[5];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v11, OS_SIGNPOST_INTERVAL_END, v12, "BackupInfoRequest", "", v15, 2u);
  }

  v14 = _ICQSignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

- (void)sendTipState:(int64_t)state forTip:(id)tip completion:(id)completion
{
  tipCopy = tip;
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];

  v11 = _ICQGetLogSystem();
  v12 = v11;
  if (aa_altDSID)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Reaching out to daemon to send tip state.", buf, 2u);
    }

    v14 = _ICQSignpostLogSystem(v13);
    v15 = objc_opt_new();
    v16 = _ICQSignpostCreateWithObject(v14, v15);
    v18 = v17;

    v20 = _ICQSignpostLogSystem(v19);
    v21 = v20;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v16, "TipStateRequest", " enableTelemetry=YES ", buf, 2u);
    }

    v23 = _ICQSignpostLogSystem(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ICQCloudStorageDataController sendTipState:forTip:completion:];
    }

    v24 = objc_alloc_init(getINDaemonConnectionClass_0());
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke;
    v36[3] = &unk_27A651998;
    v38 = v16;
    v39 = v18;
    v25 = completionCopy;
    v37 = v25;
    v26 = [v24 daemonWithErrorHandler:v36];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_42;
    v32 = &unk_27A651998;
    v34 = v16;
    v35 = v18;
    v33 = v25;
    v27 = _Block_copy(&v29);
    if (state == 1)
    {
      v28 = [(ACAccount *)self->_account aa_altDSID:v29];
      [v26 sendTipDismissedNetworkRequestForAltDSID:v28 tip:tipCopy completion:v27];
    }

    else
    {
      if (state)
      {
LABEL_17:

        goto LABEL_18;
      }

      v28 = [(ACAccount *)self->_account aa_altDSID:v29];
      [v26 sendTipDisplayedNetworkRequestForAltDSID:v28 tip:tipCopy completion:v27];
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
  }

  v24 = ICQCreateError(12);
  (*(completionCopy + 2))(completionCopy, v24);
LABEL_18:
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_1();
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _ICQSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v7, OS_SIGNPOST_INTERVAL_END, v8, "TipStateRequest", "", v11, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_42(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_42_cold_1();
    }
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _ICQSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v7, OS_SIGNPOST_INTERVAL_END, v8, "TipStateRequest", "", v11, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
}

- (void)fetchAppsSyncingToiCloudDriveWithCompletion:(id)completion
{
  completionCopy = completion;
  aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
  if (aa_altDSID)
  {
    _requestQueue = [objc_opt_class() _requestQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke;
    block[3] = &unk_27A652458;
    block[4] = self;
    v10 = aa_altDSID;
    v11 = completionCopy;
    dispatch_async(_requestQueue, block);
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICQCloudStorageDataController fetchStorageSummaryWithCompletion:];
    }

    v8 = ICQCreateError(12);
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shouldIgnoreCache];
    *buf = 67109120;
    v31 = v3;
    _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "Should ignore cache: %d", buf, 8u);
  }

  if (([*(a1 + 32) shouldIgnoreCache] & 1) == 0)
  {
    v4 = +[ICQAppsSyncingToDriveCache sharedInstance];
    v5 = [v4 appsSyncingToDriveforAltDSID:*(a1 + 40)];

    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Returning cached apps syncing to drive result.", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_23;
    }

    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "No cache exist. Reaching out to daemon to fetch the result from server.", buf, 2u);
    }
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Reaching out to daemon to fetch apps syncing to icloud drive", buf, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  v11 = objc_opt_new();
  v12 = _ICQSignpostCreateWithObject(v10, v11);
  v14 = v13;

  v16 = _ICQSignpostLogSystem(v15);
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AppsSyncingToiCloudDrive", " enableTelemetry=YES ", buf, 2u);
  }

  v19 = _ICQSignpostLogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_cold_1();
  }

  v5 = objc_alloc_init(getINDaemonConnectionClass_0());
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44;
  v26[3] = &unk_27A651998;
  v28 = v12;
  v29 = v14;
  v27 = *(a1 + 48);
  v20 = [v5 daemonWithErrorHandler:v26];
  if (objc_opt_respondsToSelector())
  {
    v21 = *(a1 + 40);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_47;
    v23[3] = &unk_27A652CB0;
    v24 = v21;
    v25 = *(a1 + 48);
    [v20 fetchAppsSyncingToiCloudDriveForAltDSID:v24 completion:v23];

    v22 = v24;
  }

  else
  {
    v22 = _ICQGetLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_cold_2();
    }
  }

LABEL_23:
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44(void *a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44_cold_1();
  }

  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v6 = _ICQSignpostLogSystem(Nanoseconds);
  v7 = v6;
  v8 = a1[5];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v7, OS_SIGNPOST_INTERVAL_END, v8, "AppsSyncingToiCloudDrive", "", v11, 2u);
  }

  v10 = _ICQSignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44_cold_2();
  }

  (*(a1[4] + 16))();
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[ICQAppsSyncingToDriveCache sharedInstance];
    [v7 setAppsSyncingToDrive:v5 forAltDSID:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_47_cold_1();
    }

    v9 = *(a1 + 40);
    v10 = +[ICQAppsSyncingToDriveCache sharedInstance];
    v11 = [v10 appsSyncingToDriveforAltDSID:*(a1 + 32)];
    (*(v9 + 16))(v9, v11, v6);
  }
}

- (void)fetchStorageSummaryWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_30_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __67__ICQCloudStorageDataController_fetchStorageSummaryWithCompletion___block_invoke_32_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchStorageAppsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __64__ICQCloudStorageDataController_fetchStorageAppsWithCompletion___block_invoke_35_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchStorageByApp:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __62__ICQCloudStorageDataController_fetchStorageByApp_completion___block_invoke_38_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchBackupinfoWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __63__ICQCloudStorageDataController_fetchBackupinfoWithCompletion___block_invoke_40_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendTipState:forTip:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __64__ICQCloudStorageDataController_sendTipState_forTip_completion___block_invoke_42_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_44_cold_2()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __77__ICQCloudStorageDataController_fetchAppsSyncingToiCloudDriveWithCompletion___block_invoke_47_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end