@interface HMDHomeOwnerCloudShareManager
+ (id)logCategory;
- (HMDHomeOwnerCloudShareManager)initWithContainer:(id)container sharedStore:(id)store privateStore:(id)privateStore moc:(id)moc cloudTransform:(id)transform homeManager:(id)manager;
- (HMDHomeOwnerCloudShareManager)initWithShareService:(id)service homeManager:(id)manager cloudTransform:(id)transform modelSelectionBlock:(id)block;
- (double)shareAgeForHome:(id)home;
- (id)_allExistingSharesForHomeWithModelID:(id)d error:(id *)error;
- (id)_canonicalModelFromSharedHomes:(id)homes;
- (id)_canonicalShareFromSharesToSharedHomes:(id)homes shareMap:(id)map;
- (id)_createShareForHome:(id)home;
- (id)_existingShareForHomeWithModelID:(id)d error:(id *)error;
- (id)_existingSharedHomeWithoutShareWithHomeModelID:(id)d error:(id *)error;
- (id)_existingSharedHomesWithModelID:(id)d error:(id *)error;
- (id)_removeShare:(id)share usingShareService:(id)service forHomeWithUUID:(id)d;
- (id)_shareForHome:(id)home;
- (id)auditAccessForUsers:(id)users home:(id)home;
- (id)fetchUserRecordIDForUser:(id)user home:(id)home;
- (id)grantAccessForUser:(id)user home:(id)home logEventBuilder:(id)builder;
- (id)removeSharesForHome:(id)home;
- (id)revokeAccessForUser:(id)user home:(id)home;
- (id)validateGrantingAccessForUserWithAccountHandle:(id)handle home:(id)home;
- (void)didDeleteModelWithID:(id)d tombstone:(id)tombstone context:(id)context;
- (void)updateSharedOwnerAccountHandleForHome:(id)home;
@end

@implementation HMDHomeOwnerCloudShareManager

- (id)fetchUserRecordIDForUser:(id)user home:(id)home
{
  userCopy = user;
  homeCopy = home;
  v8 = MEMORY[0x277D0F7C0];
  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke;
  v14[3] = &unk_278686828;
  v14[4] = self;
  v15 = homeCopy;
  v16 = userCopy;
  v10 = userCopy;
  v11 = homeCopy;
  v12 = [v8 inContext:managedObjectContext perform:v14];

  return v12;
}

double __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shareForHome:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke_2;
  v8[3] = &unk_278686800;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v3 = [v2 then:v8];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke_2(v6, v7);
  }

  return result;
}

double __63__HMDHomeOwnerCloudShareManager_fetchUserRecordIDForUser_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [*(a1 + 40) accountHandle];
  v6 = [v4 fetchUserRecordIDForUserWithAccountHandle:v5 share:v3];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDHomeOwnerCloudShareManager *)v9 shareAgeForHome:v10, v11];
  }

  return result;
}

- (double)shareAgeForHome:(id)home
{
  v53 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__256571;
  v45 = __Block_byref_object_dispose__256572;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__256571;
  v39 = __Block_byref_object_dispose__256572;
  v40 = 0;
  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __49__HMDHomeOwnerCloudShareManager_shareAgeForHome___block_invoke;
  v30 = &unk_2786869D8;
  v33 = &v35;
  selfCopy = self;
  v6 = homeCopy;
  v32 = v6;
  v34 = &v41;
  [managedObjectContext performBlockAndWait:&v27];

  if (*(v42 + 5))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [v6 shortDescription];
      v12 = v42[5];
      *buf = 138543874;
      v48 = v10;
      v49 = 2112;
      v50 = shortDescription;
      v51 = 2114;
      v52 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error trying to find existing share for home %@ due to %{public}@", buf, 0x20u);
    }

LABEL_4:

    v13 = 0.0;
    objc_autoreleasePoolPop(v7);
    goto LABEL_9;
  }

  if (!v36[5])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      shortDescription2 = [v6 shortDescription];
      v26 = v42[5];
      *buf = 138543874;
      v48 = v24;
      v49 = 2112;
      v50 = shortDescription2;
      v51 = 2114;
      v52 = v26;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to find existing share for home %@ due to %{public}@. This is normal if home hasn't been shared yet", buf, 0x20u);
    }

    goto LABEL_4;
  }

  date = [MEMORY[0x277CBEAA8] date];
  creationDate = [v36[5] creationDate];
  [date timeIntervalSinceDate:creationDate];
  v13 = v16;

  v17 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    shortDescription3 = [v6 shortDescription];
    *buf = 138543874;
    v48 = v20;
    v49 = 2112;
    v50 = shortDescription3;
    v51 = 2048;
    v52 = v13;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@CKShare age for home %@ is %f", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_9:

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v13;
}

void __49__HMDHomeOwnerCloudShareManager_shareAgeForHome___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _existingShareForHomeWithModelID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)didDeleteModelWithID:(id)d tombstone:(id)tombstone context:(id)context
{
  dCopy = d;
  v7 = [tombstone objectForKeyedSubscript:@"modelID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    entity = [dCopy entity];
    v11 = +[MKFCKSharedUserDataRoot entity];
    v12 = [entity isKindOfEntity:v11];

    if (v12)
    {
      WeakRetained = objc_loadWeakRetained(&self->_homeManager);
      [WeakRetained auditAccessForUsersForHome:v9];
    }
  }
}

- (void)updateSharedOwnerAccountHandleForHome:(id)home
{
  homeCopy = home;
  if ([homeCopy isOwnerUser])
  {
    managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__HMDHomeOwnerCloudShareManager_updateSharedOwnerAccountHandleForHome___block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = homeCopy;
    [managedObjectContext performBlock:v6];
  }
}

void __71__HMDHomeOwnerCloudShareManager_updateSharedOwnerAccountHandleForHome___block_invoke(uint64_t a1)
{
  v1 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v42 = 0;
  v4 = [v2 _existingSharedHomesWithModelID:v3 error:&v42];
  v5 = v42;

  if (v4 && ([v4 hmf_isEmpty] & 1) == 0)
  {
    v33 = v5;
    v6 = [*(v1 + 40) owner];
    v7 = [v6 accountHandle];
    v8 = [v7 value];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v53 count:16];
    v35 = v1;
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        v13 = 0;
        v36 = v11;
        do
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * v13);
          v15 = [v14 ownerAccountHandle];
          v16 = [v15 isEqualToString:v8];

          if ((v16 & 1) == 0)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = *(v1 + 32);
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v20 = v12;
              v22 = v21 = v9;
              v23 = [v14 homeModelID];
              *buf = 138544386;
              v44 = v22;
              v45 = 2160;
              v46 = 1752392040;
              v47 = 2112;
              v48 = v23;
              v49 = 2160;
              v50 = 1752392040;
              v51 = 2112;
              v52 = v8;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating account handle on shared home model %{mask.hash}@ to %{mask.hash}@", buf, 0x34u);

              v1 = v35;
              v9 = v21;
              v12 = v20;
              v11 = v36;
            }

            objc_autoreleasePoolPop(v17);
            [v14 setOwnerAccountHandle:v8];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v38 objects:v53 count:16];
      }

      while (v11);
    }

    v24 = [*(*(v1 + 32) + 8) managedObjectContext];
    v25 = [v24 hasChanges];

    if (v25)
    {
      v26 = [*(*(v1 + 32) + 8) managedObjectContext];
      v37 = v33;
      [v26 hmd_saveWithTransactionAuthor:9 error:&v37];
      v5 = v37;

      if (v5)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = *(v1 + 32);
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          v31 = [*(v1 + 40) shortDescription];
          *buf = 138543874;
          v44 = v30;
          v45 = 2112;
          v46 = v31;
          v47 = 2114;
          v48 = v5;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to update owner account handle on shared home model for home %@ due to %{public}@", buf, 0x20u);

          v1 = v35;
        }

        objc_autoreleasePoolPop(v27);
      }
    }

    else
    {
      v5 = v33;
    }

    v4 = v34;
    v32 = [*(*(v1 + 32) + 8) managedObjectContext];
    [v32 reset];
  }
}

- (id)_existingSharedHomeWithoutShareWithHomeModelID:(id)d error:(id *)error
{
  v6 = [(HMDHomeOwnerCloudShareManager *)self _existingSharedHomesWithModelID:d error:?];
  v7 = v6;
  if (*error || ![v6 count])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v7 na_map:&__block_literal_global_41_256584];
    container = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v11 = [container fetchSharesMatchingObjectIDs:v9 error:error];

    if (*error)
    {
      v8 = 0;
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __86__HMDHomeOwnerCloudShareManager__existingSharedHomeWithoutShareWithHomeModelID_error___block_invoke_2;
      v13[3] = &unk_2786869B0;
      v14 = v11;
      v8 = [v7 na_filter:v13];
    }
  }

  return v8;
}

BOOL __86__HMDHomeOwnerCloudShareManager__existingSharedHomeWithoutShareWithHomeModelID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 == 0;

  return v5;
}

- (id)_createShareForHome:(id)home
{
  v56 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  uuid = [homeCopy uuid];
  v49 = 0;
  v6 = [(HMDHomeOwnerCloudShareManager *)self _existingSharedHomeWithoutShareWithHomeModelID:uuid error:&v49];
  v7 = v49;

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v11;
      v52 = 2114;
      v53 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Checking for existing shared home model failed with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D0F7C0];
    v13 = HMDSanitizeCoreDataError(v7);
    v14 = [v12 futureWithError:v13];
  }

  else
  {
    v15 = [v6 count];
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        uuid2 = [homeCopy uuid];
        v22 = [v6 count];
        *buf = 138543874;
        *&buf[4] = v20;
        v52 = 2112;
        v53 = uuid2;
        v54 = 2048;
        v55 = v22;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Will attempt to re-share first MKFCKSharedHome for home %@ that doesn't have an associated share out of %lu found", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v23 = [(HMDHomeOwnerCloudShareManager *)selfCopy2 _canonicalModelFromSharedHomes:v6];
    }

    else
    {
      if (v19)
      {
        v24 = HMFGetLogIdentifier();
        uuid3 = [homeCopy uuid];
        *buf = 138543618;
        *&buf[4] = v24;
        v52 = 2112;
        v53 = uuid3;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Creating MKFCKSharedHome for home %@ since none was found", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      uuid4 = [homeCopy uuid];
      privateStore = [(HMDCoreDataCloudShareService *)selfCopy2->_shareService privateStore];
      managedObjectContext = [(HMDCoreDataCloudShareService *)selfCopy2->_shareService managedObjectContext];
      v23 = [MKFCKSharedHome createWithModelID:uuid4 persistentStore:privateStore context:managedObjectContext];

      name = [homeCopy name];
      [v23 setName:name];

      owner = [homeCopy owner];
      uuid5 = [owner uuid];
      [v23 setOwnerModelID:uuid5];

      owner2 = [homeCopy owner];
      accountHandle = [owner2 accountHandle];
      value = [accountHandle value];
      [v23 setOwnerAccountHandle:value];

      roomForEntireHome = [homeCopy roomForEntireHome];
      uuid6 = [roomForEntireHome uuid];
      [v23 setDefaultRoomModelID:uuid6];
    }

    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy2;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      shortDescription = [homeCopy shortDescription];
      *buf = 138543618;
      *&buf[4] = v40;
      v52 = 2112;
      v53 = shortDescription;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Creating share for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    *buf = 0;
    v14 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    container = [v38[1] container];
    v50 = v23;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __53__HMDHomeOwnerCloudShareManager__createShareForHome___block_invoke;
    v45[3] = &unk_278686988;
    v45[4] = v38;
    v46 = homeCopy;
    v47 = *buf;
    v48 = v23;
    v13 = v23;
    [container shareManagedObjects:v43 toShare:0 completion:v45];
  }

  return v14;
}

void __53__HMDHomeOwnerCloudShareManager__createShareForHome___block_invoke(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = a1[4];
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [a1[5] shortDescription];
      v27 = 138543874;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to create share for home %@ due to %@. Leaving model alone to reuse next time we share it.", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [a1[6] rejectWithError:v12];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [a1[5] shortDescription];
      v27 = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Successfully created share for home %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v21 = [a1[7] objectID];
    if (([v9 containsObject:v21] & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1[4];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v25;
        v29 = 2112;
        v30 = v21;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Sharing MKFCKSharedHome succeeded but returned object IDs don't match expected. Expected: %@, Got: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v26 = +[HMDTTRManager sharedManager];
      [v26 requestRadarWithDisplayReason:@"detected issue related to HomeKit Shared User functionality" radarTitle:@"shareManagedObjects returned unexpected object IDs for MKFCKSharedHome" componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];
    }

    [a1[6] fulfillWithValue:v10];
  }
}

- (id)_existingSharedHomesWithModelID:(id)d error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = +[MKFCKSharedHome fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"modelID", dCopy];
  [v7 setPredicate:dCopy];

  privateStore = [(HMDCoreDataCloudShareService *)self->_shareService privateStore];
  v27[0] = privateStore;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v7 setAffectedStores:v10];

  managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
  v12 = [managedObjectContext executeFetchRequest:v7 error:error];

  if (*error)
  {
    v13 = 0;
  }

  else
  {
    if ([v12 hmf_isEmpty])
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    else
    {
      if ([v12 count] >= 2)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
          *buf = 138543874;
          v22 = v18;
          v23 = 2112;
          v24 = v19;
          v25 = 2112;
          v26 = dCopy;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Found multiple (%@) shared homes with modelID %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
      }

      array = v12;
    }

    v13 = array;
  }

  return v13;
}

- (id)_allExistingSharesForHomeWithModelID:(id)d error:(id *)error
{
  v6 = [(HMDHomeOwnerCloudShareManager *)self _existingSharedHomesWithModelID:d error:?];
  v7 = v6;
  if (*error)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    array = 0;
  }

  else if ([v6 hmf_isEmpty])
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v10 = [v7 na_map:&__block_literal_global_26_256608];
    container = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v12 = [container fetchSharesMatchingObjectIDs:v10 error:error];

    array = [v12 allValues];
  }

  return array;
}

- (id)_canonicalModelFromSharedHomes:(id)homes
{
  if (self)
  {
    self = self->_modelSelectionBlock;
  }

  return (self->_cloudTransform)(self, homes);
}

- (id)_canonicalShareFromSharesToSharedHomes:(id)homes shareMap:(id)map
{
  homesCopy = homes;
  mapCopy = map;
  if ([homesCopy count])
  {
    if (self)
    {
      modelSelectionBlock = self->_modelSelectionBlock;
    }

    else
    {
      modelSelectionBlock = 0;
    }

    v9 = modelSelectionBlock;
    allValues = [homesCopy allValues];
    v11 = (*(modelSelectionBlock + 2))(v9, allValues);

    objectID = [v11 objectID];
    v13 = [mapCopy objectForKeyedSubscript:objectID];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_existingShareForHomeWithModelID:(id)d error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(HMDHomeOwnerCloudShareManager *)self _existingSharedHomesWithModelID:dCopy error:error];
  v8 = v7;
  if (*error || ([v7 hmf_isEmpty] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v30 = dCopy;
    v34 = objc_opt_new();
    v11 = [v8 na_map:&__block_literal_global_24_256611];
    container = [(HMDCoreDataCloudShareService *)self->_shareService container];
    v28 = v11;
    v13 = [container fetchSharesMatchingObjectIDs:v11 error:error];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = v8;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      selfCopy = self;
      v32 = v14;
      v33 = v13;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if (!*error)
          {
            v19 = *(*(&v35 + 1) + 8 * i);
            objectID = [v19 objectID];
            v21 = [v13 objectForKeyedSubscript:objectID];

            if (v21)
            {
              [v34 setObject:v19 forKeyedSubscript:v21];
            }

            else
            {
              v22 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v24 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = HMFGetLogIdentifier();
                objectID2 = [v19 objectID];
                *buf = 138543618;
                v40 = v25;
                v41 = 2112;
                v42 = objectID2;
                _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@No CKShare for objectID %@ in map", buf, 0x16u);

                self = selfCopy;
              }

              objc_autoreleasePoolPop(v22);
              v14 = v32;
              v13 = v33;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v16);
    }

    v27 = objc_msgSend_copy(v34);
    v9 = [(HMDHomeOwnerCloudShareManager *)self _canonicalShareFromSharesToSharedHomes:v27 shareMap:v13];

    v8 = v29;
    dCopy = v30;
  }

  return v9;
}

- (id)_shareForHome:(id)home
{
  homeCopy = home;
  uuid = [homeCopy uuid];
  v11 = 0;
  v6 = [(HMDHomeOwnerCloudShareManager *)self _existingShareForHomeWithModelID:uuid error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = [MEMORY[0x277D0F7C0] futureWithError:v7];
  }

  else
  {
    if (v6)
    {
      [MEMORY[0x277D0F7C0] futureWithValue:v6];
    }

    else
    {
      [(HMDHomeOwnerCloudShareManager *)self _createShareForHome:homeCopy];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (id)_removeShare:(id)share usingShareService:(id)service forHomeWithUUID:(id)d
{
  shareCopy = share;
  dCopy = d;
  v24 = 0;
  v10 = MEMORY[0x277D0F7C0];
  serviceCopy = service;
  v12 = [v10 futureWithPromise:&v24];
  container = [serviceCopy container];
  recordID = [shareCopy recordID];
  zoneID = [recordID zoneID];
  privateStore = [serviceCopy privateStore];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__HMDHomeOwnerCloudShareManager__removeShare_usingShareService_forHomeWithUUID___block_invoke;
  v20[3] = &unk_278686940;
  v20[4] = self;
  v21 = shareCopy;
  v22 = dCopy;
  v23 = v24;
  v17 = dCopy;
  v18 = shareCopy;
  [container purgeObjectsAndRecordsInZoneWithID:zoneID inPersistentStore:privateStore completion:v20];

  return v12;
}

void __80__HMDHomeOwnerCloudShareManager__removeShare_usingShareService_forHomeWithUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v17 = 138544130;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Removing share %@ for home %@ failed with %@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) rejectWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = 138543874;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Removed share %@ for home %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) fulfillWithNoValue];
  }
}

- (id)removeSharesForHome:(id)home
{
  v26 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  isOwnerUser = [homeCopy isOwnerUser];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (isOwnerUser)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [homeCopy shortDescription];
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = shortDescription;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing shares for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = selfCopy->_shareService;
    v13 = MEMORY[0x277D0F7C0];
    managedObjectContext = [(HMDCoreDataCloudShareService *)v12 managedObjectContext];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke;
    v19[3] = &unk_278686828;
    v19[4] = selfCopy;
    v20 = homeCopy;
    v21 = v12;
    v15 = v12;
    futureWithNoValue = [v13 inContext:managedObjectContext perform:v19];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not removing the home as this is not owner user", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    futureWithNoValue = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

  return futureWithNoValue;
}

uint64_t __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke(id *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v43 = 0;
  v28 = [v2 _allExistingSharesForHomeWithModelID:v3 error:&v43];
  v29 = v43;

  if (v29)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [a1[5] shortDescription];
      *buf = 138543874;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v46 = v29;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Fetching existing shares for home %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = v29;
    v10 = 2;
  }

  else if (v28 && ([v28 hmf_isEmpty] & 1) == 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy__256571;
    v47 = __Block_byref_object_dispose__256572;
    v48 = 0;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v28;
    v16 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    v17 = 0;
    if (v16)
    {
      v18 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          if (v17)
          {
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_17;
            v36[3] = &unk_2786868C8;
            v36[4] = a1[4];
            v36[5] = v20;
            v37 = a1[6];
            v38 = a1[5];
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_2;
            v32[3] = &unk_2786868F0;
            v35 = buf;
            v32[4] = a1[4];
            v32[5] = v20;
            v33 = a1[6];
            v34 = a1[5];
            v21 = [v17 then:v36 orRecover:v32];

            v17 = v21;
          }

          else
          {
            v22 = a1[6];
            v23 = a1[4];
            v24 = [a1[5] uuid];
            v17 = [v23 _removeShare:v20 usingShareService:v22 forHomeWithUUID:v24];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_3;
    v31[3] = &unk_278686918;
    v31[4] = buf;
    v25 = [v17 then:v31];
    if (!v25)
    {
      _HMFPreconditionFailure();
      __break(1u);
    }

    v26 = v25;

    _Block_object_dispose(buf, 8);
    v10 = 3;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[4];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] shortDescription];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@No share for home %@ to remove", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 1;
  }

  return v10;
}

uint64_t __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) uuid];
  v8 = [v4 _removeShare:v5 usingShareService:v6 forHomeWithUUID:v7];
  if (v8)
  {
    v9 = v8;

    return 3;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_2(v11, v12);
  }
}

uint64_t __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) uuid];
  v11 = [v7 _removeShare:v8 usingShareService:v9 forHomeWithUUID:v10];
  if (v11)
  {
    v12 = v11;

    return 3;
  }

  else
  {
    v14 = _HMFPreconditionFailure();
    return __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_3(v14);
  }
}

uint64_t __53__HMDHomeOwnerCloudShareManager_removeSharesForHome___block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  return 2;
}

- (id)auditAccessForUsers:(id)users home:(id)home
{
  usersCopy = users;
  homeCopy = home;
  isOwnerUser = [homeCopy isOwnerUser];
  v9 = MEMORY[0x277D0F7C0];
  if (isOwnerUser)
  {
    managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HMDHomeOwnerCloudShareManager_auditAccessForUsers_home___block_invoke;
    v13[3] = &unk_278686828;
    v14 = homeCopy;
    v15 = usersCopy;
    selfCopy = self;
    v11 = [v9 inContext:managedObjectContext perform:v13];
  }

  else
  {
    managedObjectContext = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v11 = [v9 futureWithError:managedObjectContext];
  }

  return v11;
}

uint64_t __58__HMDHomeOwnerCloudShareManager_auditAccessForUsers_home___block_invoke(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v3 = [a1[4] users];
  v4 = [v2 setWithCapacity:{objc_msgSend(v3, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = a1[5];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        if (([v10 isOwner] & 1) == 0)
        {
          v11 = [v10 accountHandle];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v7);
  }

  v12 = a1[6];
  v13 = [a1[4] uuid];
  v30 = 0;
  v14 = [v12 _existingShareForHomeWithModelID:v13 error:&v30];
  v15 = v30;

  if (v15 || !v14)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = a1[6];
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [a1[4] shortDescription];
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch share, cannot audit shared users for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 1;
  }

  else
  {
    v16 = *(a1[6] + 1);
    v17 = [v4 allObjects];
    v18 = [v16 auditUsersForRevokedAccessWithAccountHandles:v17 share:v14];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __58__HMDHomeOwnerCloudShareManager_auditAccessForUsers_home___block_invoke_15;
    v28[3] = &unk_2786868A0;
    v29 = a1[5];
    v19 = [v18 then:v28];
    if (!v19)
    {
      _HMFPreconditionFailure();
    }

    v20 = v19;
    v21 = 3;
  }

  return v21;
}

uint64_t __58__HMDHomeOwnerCloudShareManager_auditAccessForUsers_home___block_invoke_15(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 accountHandle];
        v12 = [v3 containsObject:v11];

        if (v12)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v4 allObjects];
  objc_claimAutoreleasedReturnValue();

  return 1;
}

- (id)revokeAccessForUser:(id)user home:(id)home
{
  userCopy = user;
  homeCopy = home;
  isOwnerUser = [homeCopy isOwnerUser];
  v9 = MEMORY[0x277D0F7C0];
  if (isOwnerUser)
  {
    managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HMDHomeOwnerCloudShareManager_revokeAccessForUser_home___block_invoke;
    v13[3] = &unk_278686828;
    v13[4] = self;
    v14 = homeCopy;
    v15 = userCopy;
    v11 = [v9 inContext:managedObjectContext perform:v13];
  }

  else
  {
    managedObjectContext = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v11 = [v9 futureWithError:managedObjectContext];
  }

  return v11;
}

uint64_t __58__HMDHomeOwnerCloudShareManager_revokeAccessForUser_home___block_invoke(id *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v37 = 0;
  v4 = [v2 _allExistingSharesForHomeWithModelID:v3 error:&v37];
  v5 = v37;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[4];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [a1[5] shortDescription];
      *buf = 138543874;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Fetching existing share for home %@ failed with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = v5;
    v12 = 2;
  }

  else if (v4 && ([v4 hmf_isEmpty] & 1) == 0)
  {
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = v4;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          v25 = *(a1[4] + 1);
          v26 = [a1[6] accountHandle];
          v27 = [v25 revokeAccessForUserWithAccountHandle:v26 share:v24];
          [v18 addObject:v27];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v21);
    }

    v28 = [MEMORY[0x277D0F7C0] all:v18];
    v29 = [v28 ignoreResult];
    if (!v29)
    {
      _HMFPreconditionFailure();
    }

    v30 = v29;
    v12 = 3;

    v4 = v32;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [a1[5] shortDescription];
      *buf = 138543618;
      v40 = v16;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Nothing to do, no existing share for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 1;
  }

  return v12;
}

- (id)grantAccessForUser:(id)user home:(id)home logEventBuilder:(id)builder
{
  userCopy = user;
  homeCopy = home;
  builderCopy = builder;
  if ([homeCopy isOwnerUser])
  {
    v11 = [(HMDHomeOwnerCloudShareManager *)self validateGrantingAccessForUserWithAccountHandle:userCopy home:homeCopy];
    managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke;
    v15[3] = &unk_278686878;
    v16 = builderCopy;
    selfCopy = self;
    v18 = homeCopy;
    v19 = userCopy;
    v13 = [v11 inContext:managedObjectContext then:v15];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v13 = [MEMORY[0x277D0F7C0] futureWithError:v11];
  }

  return v13;
}

uint64_t __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] markCreateShareBegin];
  v4 = [a1[5] _shareForHome:a1[6]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke_2;
  v16[3] = &unk_278686850;
  v5 = a1[4];
  v6 = a1[6];
  v15 = a1[5];
  v7 = a1[7];
  *&v8 = v15;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v17 = v9;
  v18 = v8;
  v10 = [v4 then:v16];
  if (v10)
  {
    v11 = v10;

    return 3;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke_2(v13, v14);
  }
}

uint64_t __73__HMDHomeOwnerCloudShareManager_grantAccessForUser_home_logEventBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) markCreateShareEnd];
  v4 = +[HMDCoreData sharedInstance];
  v5 = +[MKFCKSharedHome entity];
  v6 = [*(a1 + 40) uuid];
  v7 = [v4 applyVoucherForModel:v5 withModelID:v6 eventType:2 storeType:0];

  v8 = *(*(a1 + 48) + 8);
  v9 = [*(a1 + 56) accountHandle];
  v10 = [v8 grantAccessForUserWithAccountHandle:v9 share:v3 logEventBuilder:*(a1 + 32)];
  if (v10)
  {
    v11 = v10;

    return 3;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return [(HMDHomeOwnerCloudShareManager *)v13 validateGrantingAccessForUserWithAccountHandle:v14 home:v15, v16];
  }
}

- (id)validateGrantingAccessForUserWithAccountHandle:(id)handle home:(id)home
{
  handleCopy = handle;
  homeCopy = home;
  if ([homeCopy isOwnerUser])
  {
    v8 = MEMORY[0x277D0F7C0];
    managedObjectContext = [(HMDCoreDataCloudShareService *)self->_shareService managedObjectContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke;
    v12[3] = &unk_278686828;
    v12[4] = self;
    v13 = homeCopy;
    v14 = handleCopy;
    v10 = [v8 inContext:managedObjectContext perform:v12];
  }

  else
  {
    managedObjectContext = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
    v10 = [MEMORY[0x277D0F7C0] futureWithError:managedObjectContext];
  }

  return v10;
}

HMDHomeOwnerCloudShareManager *__85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shareForHome:*(a1 + 40)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke_2;
  v8[3] = &unk_278686800;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v3 = [v2 then:v8];
  if (v3)
  {
    v4 = v3;

    return 3;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return __85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke_2(v6, v7);
  }
}

HMDHomeOwnerCloudShareManager *__85__HMDHomeOwnerCloudShareManager_validateGrantingAccessForUserWithAccountHandle_home___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [*(a1 + 40) accountHandle];
  v6 = [v4 validateGrantingAccessForUserWithAccountHandle:v5 share:v3];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDHomeOwnerCloudShareManager *)v9 initWithContainer:v10 sharedStore:v11 privateStore:v12 moc:v13 cloudTransform:v14 homeManager:v15, v16];
  }
}

- (HMDHomeOwnerCloudShareManager)initWithContainer:(id)container sharedStore:(id)store privateStore:(id)privateStore moc:(id)moc cloudTransform:(id)transform homeManager:(id)manager
{
  managerCopy = manager;
  transformCopy = transform;
  mocCopy = moc;
  privateStoreCopy = privateStore;
  storeCopy = store;
  containerCopy = container;
  v20 = [[HMDCoreDataCloudShareService alloc] initWithContainer:containerCopy sharedStore:storeCopy privateStore:privateStoreCopy moc:mocCopy];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__HMDHomeOwnerCloudShareManager_initWithContainer_sharedStore_privateStore_moc_cloudTransform_homeManager___block_invoke;
  aBlock[3] = &unk_2786867D8;
  v26 = v20;
  v21 = v20;
  v22 = _Block_copy(aBlock);
  v23 = [(HMDHomeOwnerCloudShareManager *)self initWithShareService:v21 homeManager:managerCopy cloudTransform:transformCopy modelSelectionBlock:v22];

  return v23;
}

id __107__HMDHomeOwnerCloudShareManager_initWithContainer_sharedStore_privateStore_moc_cloudTransform_homeManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  v5 = [MKFCKModel canonicalModelForModels:v3 context:v4];

  return v5;
}

- (HMDHomeOwnerCloudShareManager)initWithShareService:(id)service homeManager:(id)manager cloudTransform:(id)transform modelSelectionBlock:(id)block
{
  v23[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  managerCopy = manager;
  transformCopy = transform;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = HMDHomeOwnerCloudShareManager;
  v15 = [(HMDHomeOwnerCloudShareManager *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_shareService, service);
    objc_storeStrong(&v16->_cloudTransform, transform);
    objc_storeWeak(&v16->_homeManager, managerCopy);
    v17 = _Block_copy(blockCopy);
    modelSelectionBlock = v16->_modelSelectionBlock;
    v16->_modelSelectionBlock = v17;

    v19 = +[MKFCKSharedUserDataRoot entity];
    v23[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [transformCopy registerCloudChangeListener:v16 forEntities:v20];
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_256640 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_256640, &__block_literal_global_256641);
  }

  v3 = logCategory__hmf_once_v1_256642;

  return v3;
}

void __44__HMDHomeOwnerCloudShareManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_256642;
  logCategory__hmf_once_v1_256642 = v0;
}

@end