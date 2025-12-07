@interface iCloudStorageController
- (iCloudStorageController)initWithAccount:(id)account;
- (void)calculateExtraQuotaNeededToSyncIsAccountFull:(BOOL)full completion:(id)completion;
- (void)fetchCloudStorageInfo:(BOOL)info completion:(id)completion;
- (void)fetchStorageSummary:(id)summary;
@end

@implementation iCloudStorageController

- (iCloudStorageController)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = iCloudStorageController;
  v6 = [(iCloudStorageController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (void)calculateExtraQuotaNeededToSyncIsAccountFull:(BOOL)full completion:(id)completion
{
  fullCopy = full;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v7 = getICQStoragePlanRecommendationClass_softClass;
  v24 = getICQStoragePlanRecommendationClass_softClass;
  if (!getICQStoragePlanRecommendationClass_softClass)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __getICQStoragePlanRecommendationClass_block_invoke;
    v20[3] = &unk_278DE0310;
    v20[4] = &v21;
    __getICQStoragePlanRecommendationClass_block_invoke(v20);
    v7 = v22[3];
  }

  v8 = v7;
  _Block_object_dispose(&v21, 8);
  v19 = [[v7 alloc] initWithAccount:self->_account];
  v9 = v15[5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__iCloudStorageController_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke;
  v11[3] = &unk_278DE0458;
  v11[4] = self;
  v10 = completionCopy;
  v12 = v10;
  v13 = &v14;
  [v9 calculateExtraQuotaNeededToSyncIsAccountFull:fullCopy completion:v11];

  _Block_object_dispose(&v14, 8);
}

- (void)fetchStorageSummary:(id)summary
{
  summaryCopy = summary;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v5 = getICQCloudStorageDataControllerClass_softClass;
  v22 = getICQCloudStorageDataControllerClass_softClass;
  if (!getICQCloudStorageDataControllerClass_softClass)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getICQCloudStorageDataControllerClass_block_invoke;
    v18[3] = &unk_278DE0310;
    v18[4] = &v19;
    __getICQCloudStorageDataControllerClass_block_invoke(v18);
    v5 = v20[3];
  }

  v6 = v5;
  _Block_object_dispose(&v19, 8);
  v17 = [[v5 alloc] initWithAccount:self->_account];
  v7 = v13[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__iCloudStorageController_fetchStorageSummary___block_invoke;
  v9[3] = &unk_278DE0480;
  v9[4] = self;
  v8 = summaryCopy;
  v10 = v8;
  v11 = &v12;
  [v7 fetchStorageSummaryWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

- (void)fetchCloudStorageInfo:(BOOL)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v7 = getICSHomeDataControllerClass_softClass;
  v18 = getICSHomeDataControllerClass_softClass;
  if (!getICSHomeDataControllerClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getICSHomeDataControllerClass_block_invoke;
    v14[3] = &unk_278DE0310;
    v14[4] = &v15;
    __getICSHomeDataControllerClass_block_invoke(v14);
    v7 = v16[3];
  }

  v8 = v7;
  _Block_object_dispose(&v15, 8);
  v9 = [[v7 alloc] initWithAccount:self->_account];
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__iCloudStorageController_fetchCloudStorageInfo_completion___block_invoke;
    v12[3] = &unk_278DE04A8;
    v13 = completionCopy;
    [v9 fetchCloudStorageInfo:infoCopy completion:v12];
  }

  else
  {
    v11 = _CELogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [iCloudStorageController fetchCloudStorageInfo:v11 completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

@end