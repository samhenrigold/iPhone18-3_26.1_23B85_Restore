@interface FAChecklistStore
- (BOOL)screenTimeEnabledForChild:(id)child;
- (FAChecklistStore)init;
- (NSNumber)incompleteItems;
- (id)_getLocationSharedService:(id)service;
- (int64_t)contactManagementEnabledForChild:(id)child;
- (unint64_t)_handleSubscriptionListResponse:(id)response;
- (void)clearChecklistCounts;
- (void)familyLocationSharingStatus:(id)status;
- (void)fetchIcloudPlusMembership:(id)membership;
- (void)fetchMedicalIDData:(id)data;
- (void)fetchMyCustodians:(id)custodians;
- (void)finishSetup;
- (void)incompleteItems;
- (void)notifyObservable;
- (void)refreshChecklistCount:(id)count account:(id)account iCloudService:(id)service completionHandler:(id)handler;
- (void)setIncompleteCountFor:(unint64_t)for count:(int)count;
@end

@implementation FAChecklistStore

- (void)finishSetup
{
  if (!self->_healthStore)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v3 = getHKHealthStoreClass_softClass_1;
    v35 = getHKHealthStoreClass_softClass_1;
    if (!getHKHealthStoreClass_softClass_1)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __getHKHealthStoreClass_block_invoke_1;
      v30 = &unk_2782F2988;
      v31 = &v32;
      __getHKHealthStoreClass_block_invoke_1(&v27);
      v3 = v33[3];
    }

    v4 = v3;
    _Block_object_dispose(&v32, 8);
    v5 = objc_alloc_init(v3);
    healthStore = self->_healthStore;
    self->_healthStore = v5;

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v7 = getHKMedicalIDStoreClass_softClass_1;
    v35 = getHKMedicalIDStoreClass_softClass_1;
    if (!getHKMedicalIDStoreClass_softClass_1)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __getHKMedicalIDStoreClass_block_invoke_1;
      v30 = &unk_2782F2988;
      v31 = &v32;
      __getHKMedicalIDStoreClass_block_invoke_1(&v27);
      v7 = v33[3];
    }

    v8 = v7;
    _Block_object_dispose(&v32, 8);
    v9 = [[v7 alloc] initWithHealthStore:self->_healthStore];
    medicalIDStore = self->_medicalIDStore;
    self->_medicalIDStore = v9;

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v11 = get_HKMedicalIDDataClass_softClass_0;
    v35 = get_HKMedicalIDDataClass_softClass_0;
    if (!get_HKMedicalIDDataClass_softClass_0)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __get_HKMedicalIDDataClass_block_invoke_0;
      v30 = &unk_2782F2988;
      v31 = &v32;
      __get_HKMedicalIDDataClass_block_invoke_0(&v27);
      v11 = v33[3];
    }

    v12 = v11;
    _Block_object_dispose(&v32, 8);
    v13 = objc_alloc_init(v11);
    medicalIDData = self->_medicalIDData;
    self->_medicalIDData = v13;

    v15 = objc_alloc_init(_TtC14FamilyCircleUI19FindMyLocateSession);
    session = self->_session;
    self->_session = v15;

    v17 = objc_alloc_init(MEMORY[0x277CEC798]);
    custodianController = self->_custodianController;
    self->_custodianController = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB98]);
    membersWithLocation = self->_membersWithLocation;
    self->_membersWithLocation = v19;

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v21 = getSTSetupClientClass_softClass;
    v35 = getSTSetupClientClass_softClass;
    if (!getSTSetupClientClass_softClass)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __getSTSetupClientClass_block_invoke;
      v30 = &unk_2782F2988;
      v31 = &v32;
      __getSTSetupClientClass_block_invoke(&v27);
      v21 = v33[3];
    }

    v22 = v21;
    _Block_object_dispose(&v32, 8);
    v23 = objc_opt_new();
    setupClient = self->_setupClient;
    self->_setupClient = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    incompleteCounts = self->_incompleteCounts;
    self->_incompleteCounts = v25;
  }
}

- (FAChecklistStore)init
{
  v9.receiver = self;
  v9.super_class = FAChecklistStore;
  v2 = [(FAChecklistStore *)&v9 init];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v2->_deviceType = [currentDevice userInterfaceIdiom];

  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  accountManager = v2->_accountManager;
  v2->_accountManager = mEMORY[0x277CF0130];

  primaryAuthKitAccount = [(AKAccountManager *)v2->_accountManager primaryAuthKitAccount];
  authKitAccount = v2->_authKitAccount;
  v2->_authKitAccount = primaryAuthKitAccount;

  return v2;
}

- (NSNumber)incompleteItems
{
  v37 = *MEMORY[0x277D85DE8];
  p_computedIncompleteCount = &self->_computedIncompleteCount;
  if (self->_computedIncompleteCount)
  {
    v3 = _FALogSystem(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(FAChecklistStore *)p_computedIncompleteCount incompleteItems];
    }

    v4 = *p_computedIncompleteCount;
  }

  else
  {
    incompleteCounts = self->_incompleteCounts;
    if (incompleteCounts)
    {
      v6 = incompleteCounts;
      v7 = [(NSMutableDictionary *)v6 count];
      if (v7 > 5)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        allKeys = [(NSMutableDictionary *)v6 allKeys];
        v10 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v12 = v10;
          v13 = 0;
          v14 = *v29;
          *&v11 = 138412290;
          v27 = v11;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(allKeys);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              v17 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v16, v27];
              v18 = v17;
              if (v17)
              {
                intValue = [v17 intValue];
                v13 = (intValue + v13);
                v20 = _FALogSystem(intValue);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  intValue2 = [v18 intValue];
                  *buf = 138412546;
                  v33 = v16;
                  v34 = 1024;
                  v35 = intValue2;
                  _os_log_debug_impl(&dword_21BB35000, v20, OS_LOG_TYPE_DEBUG, "FAChecklistStore value for key %@ is %d", buf, 0x12u);
                }
              }

              else
              {
                v20 = _FALogSystem(0);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = v27;
                  v33 = v16;
                  _os_log_error_impl(&dword_21BB35000, v20, OS_LOG_TYPE_ERROR, "FAChecklistStore invalid value for key %@", buf, 0xCu);
                }
              }
            }

            v12 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v12);
        }

        else
        {
          v13 = 0;
        }

        v23 = _FALogSystem(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [(FAChecklistStore *)v13 incompleteItems];
        }

        v24 = [MEMORY[0x277CCABB0] numberWithInt:v13];
        v25 = *p_computedIncompleteCount;
        *p_computedIncompleteCount = v24;

        v4 = *p_computedIncompleteCount;
      }

      else
      {
        v8 = _FALogSystem(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(FAChecklistStore *)v8 incompleteItems];
        }

        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)clearChecklistCounts
{
  computedIncompleteCount = self->_computedIncompleteCount;
  self->_computedIncompleteCount = 0;

  incompleteCounts = self->_incompleteCounts;

  [(NSMutableDictionary *)incompleteCounts removeAllObjects];
}

- (void)setIncompleteCountFor:(unint64_t)for count:(int)count
{
  if (for - 1 >= 6)
  {
    forCopy = for;
    v7 = _FALogSystem(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FAChecklistStore setIncompleteCountFor:forCopy count:v7];
    }
  }

  else
  {
    v5 = off_2782F34E8[for - 1];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:*&count];
    [(NSMutableDictionary *)self->_incompleteCounts setObject:v8 forKeyedSubscript:v5];
  }
}

- (void)refreshChecklistCount:(id)count account:(id)account iCloudService:(id)service completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  countCopy = count;
  accountCopy = account;
  serviceCopy = service;
  handlerCopy = handler;
  [(FAChecklistStore *)self clearChecklistCounts];
  [(FAChecklistStore *)self finishSetup];
  [(FAChecklistStore *)self setFamilyCircle:countCopy];
  [(FAChecklistStore *)self setIcloudService:serviceCopy];
  [(FAChecklistStore *)self setAppleAccount:accountCopy];
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke;
  v43[3] = &unk_2782F3358;
  v43[4] = self;
  v15 = v14;
  v44 = v15;
  [(FAChecklistStore *)self familyLocationSharingStatus:v43];
  dispatch_group_enter(v15);
  if (self->_deviceType)
  {
    [(FAChecklistStore *)self setIncompleteCountFor:1 count:0];
    dispatch_group_leave(v15);
  }

  else
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_2;
    v41[3] = &unk_2782F3380;
    v41[4] = self;
    v42 = v15;
    [(FAChecklistStore *)self fetchMedicalIDData:v41];
  }

  dispatch_group_enter(v15);
  v29 = accountCopy;
  v30 = countCopy;
  v28 = serviceCopy;
  if (([(AKAccountManager *)self->_accountManager canHaveCustodianForAccount:self->_authKitAccount]& 1) != 0)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_3;
    v39[3] = &unk_2782F33A8;
    v39[4] = self;
    v40 = v15;
    [(FAChecklistStore *)self fetchMyCustodians:v39];
  }

  else
  {
    [(FAChecklistStore *)self setIncompleteCountFor:3 count:0];
    dispatch_group_leave(v15);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  members = [(FAFamilyCircle *)self->_familyCircle members];
  v17 = [members countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(members);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        if ([v22 memberType] == 1 || objc_msgSend(v22, "memberType") == 2)
        {
          if ([v22 isMe])
          {
            goto LABEL_22;
          }

          v23 = [(FAChecklistStore *)self contactManagementEnabledForChild:v22];
          v24 = [(FAChecklistStore *)self screenTimeEnabledForChild:v22];
          if (v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = v24;
          }

          v19 = (v19 + v25);
        }
      }

      v18 = [members countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v18);
  }

  else
  {
LABEL_22:
    v19 = 0;
  }

  [(FAChecklistStore *)self setIncompleteCountFor:5 count:v19];
  dispatch_group_enter(v15);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_4;
  v33[3] = &unk_2782F33D0;
  v33[4] = self;
  v34 = v15;
  v26 = v15;
  [(FAChecklistStore *)self fetchIcloudPlusMembership:v33];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_6;
  block[3] = &unk_2782F3088;
  block[4] = self;
  v32 = handlerCopy;
  v27 = handlerCopy;
  dispatch_group_notify(v26, MEMORY[0x277D85CD0], block);
}

void __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_storeStrong((*(a1 + 32) + 64), a3);
  [*(a1 + 32) setIncompleteCountFor:2 count:0];
  if (!a2)
  {
    [*(a1 + 32) setIncompleteCountFor:2 count:1];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [*(*(a1 + 32) + 144) members];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 memberType] == 1 || objc_msgSend(v13, "memberType") == 2)
        {
          if ([v13 isMe])
          {
            goto LABEL_19;
          }

          if (([*(a1 + 32) screenTimeEnabledForChild:v13] & 1) == 0 && (objc_msgSend(v13, "hasAskToBuyEnabled") & 1) == 0)
          {
            if (![*(*(a1 + 32) + 64) count] || (v14 = *(*(a1 + 32) + 64), objc_msgSend(v13, "appleID"), v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v14) = objc_msgSend(v14, "containsObject:", v15), v15, (v14 & 1) == 0))
            {
              v10 = (v10 + 1);
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
LABEL_19:
    v10 = 0;
  }

  [*(a1 + 32) setIncompleteCountFor:4 count:v10];
  dispatch_group_leave(*(a1 + 40));
}

void __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setIncompleteCountFor:1 count:a3 == 0];
  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setIncompleteCountFor:3 count:0];
  v5 = [v4 count];

  if (!v5)
  {
    [*(a1 + 32) setIncompleteCountFor:3 count:1];
  }

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_5;
  block[3] = &unk_2782F2F00;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setCountMembersIcloudPlus:*(a1 + 48)];
  if ([*(*(a1 + 32) + 80) aa_isCloudSubscriber])
  {
    v2 = *(a1 + 48) == 0;
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 32) setIncompleteCountFor:6 count:v2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = _FALogSystem([*(a1 + 32) notifyObservable]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_6_cold_1(v2);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)familyLocationSharingStatus:(id)status
{
  statusCopy = status;
  session = self->_session;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__FAChecklistStore_familyLocationSharingStatus___block_invoke;
  v7[3] = &unk_2782F33F8;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  [(FindMyLocateSession *)session handlesFollowingMyLocationWithCompletionHandler:v7];
}

void __48__FAChecklistStore_familyLocationSharingStatus___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:*(*(&v23 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [*(*(a1 + 32) + 144) members];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v20;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v19 + 1) + 8 * j);
          if (([v16 isMe] & 1) == 0)
          {
            v17 = [v16 appleID];
            v18 = [v4 containsObject:v17];

            v13 += v18 & 1;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v12);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchMedicalIDData:(id)data
{
  dataCopy = data;
  medicalIDStore = self->_medicalIDStore;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__FAChecklistStore_fetchMedicalIDData___block_invoke;
  v7[3] = &unk_2782F3448;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  [(HKMedicalIDStore *)medicalIDStore fetchMedicalIDDataWithCompletion:v7];
}

void __39__FAChecklistStore_fetchMedicalIDData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__FAChecklistStore_fetchMedicalIDData___block_invoke_2;
  v10[3] = &unk_2782F3420;
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __39__FAChecklistStore_fetchMedicalIDData___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = [v3 isEmpty];
    if (!v3)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = a1;
      v5 = [*(a1 + 32) emergencyContacts];
      v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v35;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v35 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v34 + 1) + 8 * i);
            v11 = [v10 nameContactIdentifier];
            v12 = [v11 length];

            if (v12)
            {
              v13 = [v10 nameContactIdentifier];
              [v2 addObject:v13];
            }

            v14 = [v10 name];
            v15 = [v14 length];

            if (v15)
            {
              v16 = [v10 name];
              [v29 addObject:v16];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v7);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      a1 = v28;
      v17 = [*(v28 + 48) familyCircle];
      v4 = [v17 members];

      v18 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (!v18)
      {
        goto LABEL_30;
      }

      v19 = v18;
      v20 = 0;
      v21 = *v31;
LABEL_19:
      v22 = 0;
      while (1)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v4);
        }

        v23 = *(*(&v30 + 1) + 8 * v22);
        if ([v23 isMe])
        {
          goto LABEL_27;
        }

        v24 = [v23 contact];
        v25 = [v24 identifier];
        if ([v2 containsObject:v25])
        {
          break;
        }

        v26 = [v23 fullName];
        v27 = [v29 containsObject:v26];

        if (v27)
        {
          goto LABEL_26;
        }

LABEL_27:
        if (v19 == ++v22)
        {
          v19 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (!v19)
          {
            a1 = v28;
            goto LABEL_30;
          }

          goto LABEL_19;
        }
      }

LABEL_26:
      ++v20;
      goto LABEL_27;
    }
  }

  if (*(a1 + 40))
  {
    v4 = _FALogSystem(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __39__FAChecklistStore_fetchMedicalIDData___block_invoke_2_cold_1((a1 + 40));
    }

LABEL_30:
  }

  (*(*(a1 + 56) + 16))();
}

- (void)fetchMyCustodians:(id)custodians
{
  custodiansCopy = custodians;
  custodianController = self->_custodianController;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__FAChecklistStore_fetchMyCustodians___block_invoke;
  v7[3] = &unk_2782F2CE8;
  v8 = custodiansCopy;
  v6 = custodiansCopy;
  [(AACustodianController *)custodianController fetchTrustedContactsWithCompletion:v7];
}

void __38__FAChecklistStore_fetchMyCustodians___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__FAChecklistStore_fetchMyCustodians___block_invoke_2;
  v5[3] = &unk_2782F3088;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __38__FAChecklistStore_fetchMyCustodians___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) count];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)screenTimeEnabledForChild:(id)child
{
  childCopy = child;
  dsid = [childCopy dsid];

  if (dsid)
  {
    v5 = objc_alloc(MEMORY[0x277D4BAE0]);
    dsid2 = [childCopy dsid];
    v7 = [v5 initWithDSID:dsid2];

    v8 = objc_opt_new();
    v15 = 0;
    v9 = [v8 currentConfigurationForUser:v7 error:&v15];
    v10 = v15;
    screenTimeState = [v9 screenTimeState];
    v12 = screenTimeState == 1;
    if (v10)
    {
      v13 = _FALogSystem(screenTimeState);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [FAChecklistStore screenTimeEnabledForChild:v10];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)contactManagementEnabledForChild:(id)child
{
  childCopy = child;
  dsid = [childCopy dsid];

  if (dsid)
  {
    v6 = objc_alloc(MEMORY[0x277D4BAE0]);
    dsid2 = [childCopy dsid];
    v8 = [v6 initWithDSID:dsid2];

    setupClient = self->_setupClient;
    v16 = 0;
    v10 = [(STSetupClient *)setupClient currentConfigurationForUser:v8 error:&v16];
    v11 = v16;
    v12 = v11;
    if (v11)
    {
      v13 = _FALogSystem(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [FAChecklistStore contactManagementEnabledForChild:];
      }

      contactManagementState = 0;
    }

    else
    {
      contactManagementState = [v10 contactManagementState];
    }
  }

  else
  {
    contactManagementState = 0;
  }

  return contactManagementState;
}

- (void)fetchIcloudPlusMembership:(id)membership
{
  membershipCopy = membership;
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__FAChecklistStore_fetchIcloudPlusMembership___block_invoke;
  v7[3] = &unk_2782F3498;
  v7[4] = self;
  v8 = membershipCopy;
  v6 = membershipCopy;
  [v5 fetchAAURLConfigurationWithCompletion:v7];
}

void __46__FAChecklistStore_fetchIcloudPlusMembership___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 urlForEndpoint:@"getFamilySubscriptions"];
  v4 = [FASharedServicesRequest alloc];
  v5 = *(*(a1 + 32) + 80);
  v6 = [v3 absoluteString];
  v7 = [(FASharedServicesRequest *)v4 initWithAppleAccount:v5 urlString:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__FAChecklistStore_fetchIcloudPlusMembership___block_invoke_2;
  v9[3] = &unk_2782F3470;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [(AARequest *)v7 performRequestWithHandler:v9];
}

void __46__FAChecklistStore_fetchIcloudPlusMembership___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__FAChecklistStore_fetchIcloudPlusMembership___block_invoke_3;
  v12[3] = &unk_2782F3420;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

uint64_t __46__FAChecklistStore_fetchIcloudPlusMembership___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _FALogSystem(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__FAChecklistStore_fetchIcloudPlusMembership___block_invoke_3_cold_1(v2);
    }
  }

  else
  {
    [*(a1 + 40) _handleSubscriptionListResponse:*(a1 + 48)];
    v4 = [*(a1 + 40) _getLocationSharedService:*(a1 + 48)];
    [*(a1 + 40) setLocationSharedService:v4];
  }

  return (*(*(a1 + 56) + 16))();
}

- (unint64_t)_handleSubscriptionListResponse:(id)response
{
  v30 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  statusCode = [responseCopy statusCode];
  if (statusCode != 200)
  {
    v5 = _FALogSystem(statusCode);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FAChecklistStore _handleSubscriptionListResponse:responseCopy];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = responseCopy;
  responseDictionary = [responseCopy responseDictionary];
  v7 = [responseDictionary objectForKeyedSubscript:@"familySharedServices"];

  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = 0;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"name"];
        v14 = [v13 isEqual:@"ICLOUD_STORAGE"];

        if (v14)
        {
          v15 = MEMORY[0x277CBEBC0];
          v16 = [v12 objectForKeyedSubscript:@"url"];
          v17 = [v15 URLWithString:v16];
          [(FAChecklistStore *)self setIcloudPlusUrl:v17];

          v18 = [v12 objectForKeyedSubscript:@"subscriberDSIDs"];
          v19 = [v18 count];

          if (v19)
          {
            v20 = [v12 objectForKeyedSubscript:@"subscriberDSIDs"];
            v23 = [v20 count];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_getLocationSharedService:(id)service
{
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  statusCode = [serviceCopy statusCode];
  if (statusCode != 200)
  {
    v5 = _FALogSystem(statusCode);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FAChecklistStore _handleSubscriptionListResponse:serviceCopy];
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [serviceCopy services];
  v7 = [services countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(services);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name isEqual:@"SHARE_MY_LOCATION"];

        if (v13)
        {
          v14 = v11;
          goto LABEL_15;
        }
      }

      v8 = [services countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (void)notifyObservable
{
  selfCopy = self;
  FAChecklistStore.notifyObservable()();
}

- (void)incompleteItems
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_debug_impl(&dword_21BB35000, a2, OS_LOG_TYPE_DEBUG, "FAChecklistStore computed count %d", v2, 8u);
}

- (void)setIncompleteCountFor:(int)a1 count:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "FAChecklistStore invalid key %d", v2, 8u);
}

void __82__FAChecklistStore_refreshChecklistCount_account_iCloudService_completionHandler___block_invoke_6_cold_1(id *a1)
{
  v1 = [*a1 incompleteItems];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __39__FAChecklistStore_fetchMedicalIDData___block_invoke_2_cold_1(id *a1)
{
  v1 = [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)screenTimeEnabledForChild:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21BB35000, v2, v3, "Checklist:CurrentConfigurationForUser error: %@", v4, v5, v6, v7);
}

- (void)contactManagementEnabledForChild:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21BB35000, v0, OS_LOG_TYPE_ERROR, "Checking contact management for child, CurrentConfigurationForUser error:%@", v1, 0xCu);
}

void __46__FAChecklistStore_fetchIcloudPlusMembership___block_invoke_3_cold_1(id *a1)
{
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_21BB35000, v2, v3, "Failed to fetch family subscription details with error: %@", v4, v5, v6, v7);
}

- (void)_handleSubscriptionListResponse:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end