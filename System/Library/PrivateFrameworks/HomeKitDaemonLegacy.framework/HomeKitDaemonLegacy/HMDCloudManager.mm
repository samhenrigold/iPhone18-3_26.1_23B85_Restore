@interface HMDCloudManager
+ (id)logCategory;
- (BOOL)_processFetchedTransaction:(id)transaction;
- (BOOL)decryptionFailed;
- (BOOL)legacyZoneHasRecordsAvailable;
- (HMDCloudHomeManagerZone)homeManagerZone;
- (HMDCloudLegacyZone)legacyZone;
- (HMDCloudManager)initWithMessageDispatcher:(id)dispatcher cloudDataSyncStateFilter:(id)filter cloudCache:(id)cache delegate:(id)delegate dataSource:(id)source syncManager:(id)manager callbackQueue:(id)queue container:(id)self0 logEventSubmitter:(id)self1 workQueue:(id)self2;
- (HMDCloudManager)initWithMessageDispatcher:(id)dispatcher cloudDataSyncStateFilter:(id)filter cloudCache:(id)cache delegate:(id)delegate dataSource:(id)source syncManager:(id)manager logEventSubmitter:(id)submitter callbackQueue:(id)self0;
- (HMDCloudManagerDataSource)dataSource;
- (HMDCloudManagerDelegate)delegate;
- (HMDCloudMetadataZone)metadataZone;
- (HMDSyncOperationManager)syncManager;
- (NSData)serverTokenData;
- (id)_changeTokenFromData:(id)data;
- (id)_serverTokenData;
- (void)__addCKDatabaseOperation:(id)operation;
- (void)__deleteRecordWithID:(id)d completionHandler:(id)handler;
- (void)__deleteRecordZoneWithID:(id)d completionHandler:(id)handler;
- (void)__deleteRecordZonesWithIDs:(id)ds completionHandler:(id)handler;
- (void)__fetchAllRecordZonesWithCompletionHandler:(id)handler;
- (void)__fetchRecordZoneWithID:(id)d completionHandler:(id)handler;
- (void)__fetchSubscriptionWithID:(id)d completionHandler:(id)handler;
- (void)__saveRecordZone:(id)zone completionHandler:(id)handler;
- (void)__saveSubscription:(id)subscription completionHandler:(id)handler;
- (void)_accountIsActive;
- (void)_addHomeZoneName:(id)name owner:(id)owner;
- (void)_auditProxSetupNotification:(id)notification;
- (void)_checkZoneAndUploadTransaction:(id)transaction completionHandler:(id)handler;
- (void)_createZoneAndFetchChanges:(id)changes;
- (void)_createZoneAndUploadTransaction:(id)transaction completionHandler:(id)handler;
- (void)_fetchAndVerifyZoneRootRecord:(id)record completionHandler:(id)handler;
- (void)_fetchDatabaseZoneChangesCompletion:(id)completion;
- (void)_fetchLegacyTransaction:(id)transaction forceFetch:(BOOL)fetch accountCompletionHandler:(id)handler dataCompletionHandler:(id)completionHandler;
- (void)_fetchTransaction:(id)transaction completionHandler:(id)handler;
- (void)_forceCleanCloud:(BOOL)cloud fetchTransaction:(id)transaction completionHandler:(id)handler;
- (void)_handleAccountStatus:(int64_t)status completionHandler:(id)handler;
- (void)_handleControllerKeyAvailable;
- (void)_handleKeychainSyncStateChanged:(BOOL)changed;
- (void)_processFetchCompletedWithError:(id)error serverToken:(id)token fetchTransaction:(id)transaction migrationOptions:(unint64_t)options completionHandler:(id)handler moreRecordsComing:(BOOL)coming emptyRecord:(BOOL)record;
- (void)_registerForProxSetupNotifications;
- (void)_removeAllHomeZonesCompletionHandler:(id)handler;
- (void)_removeHomeZoneName:(id)name;
- (void)_removeZonesTransactions:(id)transactions completionHandler:(id)handler;
- (void)_resetCloudCache:(id)cache;
- (void)_resetCloudDataAndDeleteMetadataForCurrentAccount:(BOOL)account completionHandler:(id)handler;
- (void)_resetCloudServerTokenData;
- (void)_resetCloudZonesIgnoreHomeManager:(BOOL)manager completionHandler:(id)handler;
- (void)_resetHomeDataRecordState;
- (void)_scheduleZoneFetch:(id)fetch;
- (void)_setupSubscriptionForZone:(id)zone;
- (void)_startControllerKeyPollTimer;
- (void)_startControllerKeyPollTimerWithBackoff;
- (void)_startControllerKeyPollTimerWithValue:(int64_t)value;
- (void)_startFetchPollTimer;
- (void)_startFetchRetryTimer;
- (void)_startWatchdogControllerKeyPollTimer;
- (void)_stopControllerKeyPollTimer;
- (void)_stopFetchPollTimer;
- (void)_stopFetchRetryTimer;
- (void)_stopWatchdogControllerKeyPollTimer;
- (void)_updateServerTokenStatusOnCloudFilter;
- (void)_uploadLegacyTransaction:(id)transaction completionHandler:(id)handler;
- (void)_uploadTransaction:(id)transaction completionHandler:(id)handler;
- (void)_verifyAndRemoveAllHomeZonesCompletionHandler:(id)handler;
- (void)_verifyAndRemoveZone:(id)zone completionHandler:(id)handler;
- (void)_verifyHH2SentinelCloudZoneExist:(id)exist;
- (void)_verifyZoneHasBeenDeletedTransaction:(id)transaction completionHandler:(id)handler;
- (void)_verifyZonesExist:(id)exist zoneIndex:(unint64_t)index completion:(id)completion;
- (void)addHomeZoneName:(id)name owner:(id)owner;
- (void)cacheDatabaseServerToken;
- (void)dealloc;
- (void)fetchCurrentAccountStateWithCompletionHandler:(id)handler;
- (void)fetchDatabaseZoneChanges;
- (void)fetchLegacyTransaction:(id)transaction forceFetch:(BOOL)fetch accountCompletionHandler:(id)handler dataCompletionHandler:(id)completionHandler;
- (void)fetchTransaction:(id)transaction completionHandler:(id)handler;
- (void)handleKeychainStateChangedNotification:(id)notification;
- (void)handler:(id)handler didReceiveCKNotification:(id)notification;
- (void)handler:(id)handler didReceivePushForTopic:(id)topic;
- (void)initializeServerTokenStatusOnCloudFilter;
- (void)registerForPushNotifications;
- (void)removeHomeZoneName:(id)name;
- (void)removeZonesTransactions:(id)transactions completionHandler:(id)handler;
- (void)resetCloudCache:(id)cache;
- (void)resetCloudDataAndDeleteMetadataForCurrentAccount:(BOOL)account completionHandler:(id)handler;
- (void)resetCloudServerTokenData:(id)data;
- (void)setAccountActive:(BOOL)active;
- (void)setAccountActiveUpdateCallback:(id)callback;
- (void)setCloudDataDeletedNotificationBlock:(id)block;
- (void)setCloudMetadataDeletedNotificationBlock:(id)block;
- (void)setControllerKeyAvailableNotificationBlock:(id)block;
- (void)setDataAvailableFromCloudCompletionBlock:(id)block;
- (void)setDataDecryptionFailedCompletionBlock:(id)block;
- (void)updateAccountStatusChanged:(BOOL)changed completionHandler:(id)handler;
- (void)updateCloudDataSyncFilterState:(BOOL)state;
- (void)updateServerTokenStatusOnCloudFilter;
- (void)uploadLegacyTransaction:(id)transaction completionHandler:(id)handler;
- (void)uploadTransaction:(id)transaction completionHandler:(id)handler;
- (void)verifyAndRemoveZone:(id)zone completionHandler:(id)handler;
@end

@implementation HMDCloudManager

- (HMDSyncOperationManager)syncManager
{
  WeakRetained = objc_loadWeakRetained(&self->_syncManager);

  return WeakRetained;
}

- (HMDCloudManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDCloudManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handler:(id)handler didReceiveCKNotification:(id)notification
{
  containerIdentifier = [notification containerIdentifier];
  container = [(HMDCloudManager *)self container];
  containerIdentifier2 = [container containerIdentifier];
  v8 = [containerIdentifier isEqualToString:containerIdentifier2];

  if (v8)
  {
    workQueue = [(HMDCloudManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__HMDCloudManager_handler_didReceiveCKNotification___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __52__HMDCloudManager_handler_didReceiveCKNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountActive];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Did receive message from push, fetching new changes", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v8 = [*(a1 + 32) dataSource];
    if ([v8 isControllerKeyAvailable])
    {
    }

    else
    {
      v11 = [*(a1 + 32) keychainSyncEnabled];

      if (v11)
      {
        [*(a1 + 32) _startControllerKeyPollTimer];
      }
    }

    [*(a1 + 32) _stopFetchRetryTimer];
    [*(a1 + 32) fetchDatabaseZoneChanges];
  }

  else
  {
    if (v6)
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Did receive message from push, ignoring since account is not active", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v10 = [*(a1 + 32) delegate];
    [v10 kickAccountAvailabilityCheck];
  }
}

- (void)handler:(id)handler didReceivePushForTopic:(id)topic
{
  v5 = MEMORY[0x277D0F8C0];
  topicCopy = topic;
  sharedPowerLogger = [v5 sharedPowerLogger];
  [sharedPowerLogger reportIncomingCloudPush:topicCopy];

  logEventSubmitter = [(HMDCloudManager *)self logEventSubmitter];
  v8 = [HMDIncomingCloudPushLogEvent incomingCloudPush:topicCopy];

  [logEventSubmitter submitLogEvent:v8];
}

- (void)_fetchDatabaseZoneChangesCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    cloudCache = [(HMDCloudManager *)selfCopy cloudCache];
    databaseServerChangeToken = [cloudCache databaseServerChangeToken];
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = databaseServerChangeToken;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching zone changes for the database with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = objc_alloc(MEMORY[0x277CBC388]);
  cloudCache2 = [(HMDCloudManager *)selfCopy cloudCache];
  databaseServerChangeToken2 = [cloudCache2 databaseServerChangeToken];
  v14 = [v11 initWithPreviousServerChangeToken:databaseServerChangeToken2];

  [v14 setFetchAllChanges:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy__40007;
  v34 = __Block_byref_object_dispose__40008;
  array = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, selfCopy);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __55__HMDCloudManager__fetchDatabaseZoneChangesCompletion___block_invoke;
  v26[3] = &unk_279725730;
  v26[4] = selfCopy;
  v26[5] = buf;
  [v14 setRecordZoneWithIDChangedBlock:v26];
  logger = selfCopy->_logger;
  if (os_signpost_enabled(logger))
  {
    *v28 = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DBQuery", "", v28, 2u);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__HMDCloudManager__fetchDatabaseZoneChangesCompletion___block_invoke_203;
  v22[3] = &unk_279725D98;
  objc_copyWeak(v25, &location);
  v25[1] = 0xEEEEB0B5B2B2EEEELL;
  v24 = buf;
  v16 = completionCopy;
  v23 = v16;
  [v14 setFetchDatabaseChangesCompletionBlock:v22];
  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    operationID = [v14 operationID];
    *v28 = 138543618;
    v29 = v20;
    v30 = 2112;
    v31 = operationID;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetching database zone changes with operation ID: %@", v28, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  [(HMDCloudManager *)v18 __addCKDatabaseOperation:v14];

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

void __55__HMDCloudManager__fetchDatabaseZoneChangesCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v5 = a2;
    v4 = [v5 zoneName];
    [v3 _scheduleZoneFetch:v4];

    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

void __55__HMDCloudManager__fetchDatabaseZoneChangesCompletion___block_invoke_203(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Completed fetching database zone changes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [v10 workQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__HMDCloudManager__fetchDatabaseZoneChangesCompletion___block_invoke_204;
    v18[3] = &unk_279725D70;
    v14 = *(a1 + 56);
    v18[4] = v10;
    v23 = v14;
    v15 = v7;
    v16 = *(a1 + 40);
    v19 = v15;
    v22 = v16;
    v20 = v6;
    v21 = *(a1 + 32);
    dispatch_async(v13, v18);
  }

  else
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      (*(v17 + 16))(v17, v7);
    }
  }
}

void __55__HMDCloudManager__fetchDatabaseZoneChangesCompletion___block_invoke_204(uint64_t a1)
{
  v1 = a1;
  v114 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = v2;
  v4 = *(v1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v3, OS_SIGNPOST_INTERVAL_END, v4, "DBQuery", "", buf, 2u);
  }

  v5 = [*(v1 + 40) domain];
  if ([v5 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v6 = [*(v1 + 40) code];

    if (v6 == 21)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(v1 + 32);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v110 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Database zone change fetch failed due to expired token, resetting token and re-fetching", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [*(v1 + 32) cloudCache];
      [v11 setDatabaseServerChangeToken:0];

      v12 = [*(v1 + 32) cloudCache];
      [v12 persistDatabaseServerChangeToken];

      [*(v1 + 32) fetchDatabaseZoneChanges];
      return;
    }
  }

  else
  {
  }

  v91 = [*(v1 + 32) delegate];
  v89 = [*(v1 + 32) legacyZone];
  v13 = [v89 serverChangeToken];

  if (!v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(v1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v110 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Force Scheduling fetch for legacy zone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [v91 fetchHomeDataFromCloudWithCloudConflict:0 withDelay:0.0];
    v18 = [v89 zone];
    v19 = [v18 zoneID];

    if (([*(*(*(v1 + 64) + 8) + 40) containsObject:v19] & 1) == 0)
    {
      [*(*(*(v1 + 64) + 8) + 40) addObject:v19];
    }
  }

  v88 = [*(v1 + 32) homeManagerZone];
  v20 = [v88 serverChangeToken];

  if (!v20)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(v1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v110 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Force Scheduling fetch for home manager zone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    [v91 fetchHomeManagerCloudConflict:0 withDelay:0.0];
    v25 = [v88 zone];
    v26 = [v25 zoneID];

    if (([*(*(*(v1 + 64) + 8) + 40) containsObject:v26] & 1) == 0)
    {
      [*(*(*(v1 + 64) + 8) + 40) addObject:v26];
    }
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v27 = [*(v1 + 32) cloudCache];
  v28 = [v27 allHomeZones];

  obj = v28;
  v29 = [v28 countByEnumeratingWithState:&v98 objects:v113 count:16];
  v93 = v1;
  if (v29)
  {
    v30 = v29;
    v31 = *v99;
    v90 = *v99;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v99 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v98 + 1) + 8 * i);
        v34 = [v33 serverChangeToken];

        if (!v34)
        {
          v35 = objc_autoreleasePoolPush();
          v36 = *(v1 + 32);
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            v39 = [v33 zone];
            v40 = [v39 zoneID];
            v41 = [v40 zoneName];
            *buf = 138543618;
            v110 = v38;
            v111 = 2112;
            v112 = v41;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Scheduling fetch for home zone %@", buf, 0x16u);

            v1 = v93;
          }

          objc_autoreleasePoolPop(v35);
          v42 = objc_alloc(MEMORY[0x277CCAD78]);
          v43 = [v33 zone];
          v44 = [v43 zoneID];
          v45 = [v44 zoneName];
          v46 = [v42 initWithUUIDString:v45];

          [v91 fetchHomeFromCloudZone:v46 cloudConflict:0 withDelay:0.0];
          v47 = [v33 zone];
          v48 = [v47 zoneID];

          if (([*(*(*(v1 + 64) + 8) + 40) containsObject:v48] & 1) == 0)
          {
            [*(*(*(v1 + 64) + 8) + 40) addObject:v48];
          }

          v31 = v90;
        }
      }

      v30 = [obj countByEnumeratingWithState:&v98 objects:v113 count:16];
    }

    while (v30);
  }

  v49 = objc_autoreleasePoolPush();
  v50 = *(v1 + 32);
  v51 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = HMFGetLogIdentifier();
    v53 = *(v1 + 48);
    *buf = 138543618;
    v110 = v52;
    v111 = 2112;
    v112 = v53;
    _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Updating databaseServerChangeToken with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v49);
  v54 = *(v1 + 48);
  v55 = [*(v1 + 32) cloudCache];
  [v55 setDatabaseServerChangeToken:v54];

  [v91 schedulePostFetch];
  if (([*(v1 + 32) isFirstDBQueryRun] & 1) == 0)
  {
    [*(v1 + 32) setFirstDBQueryRun:1];
    v56 = [MEMORY[0x277CBEB18] array];
    v57 = *(*(*(v1 + 64) + 8) + 40);
    v58 = [v89 zone];
    v59 = [v58 zoneID];
    LOBYTE(v57) = [v57 containsObject:v59];

    v60 = MEMORY[0x277CBEC28];
    if ((v57 & 1) == 0)
    {
      [*(v1 + 32) setFirstV3FetchRun:1];
      v107[0] = @"HMDCR.stc";
      v107[1] = @"HMDCR.if";
      v108[0] = v60;
      v108[1] = v60;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
      [v56 addObject:v61];
    }

    v62 = *(*(*(v1 + 64) + 8) + 40);
    v63 = [v88 zone];
    v64 = [v63 zoneID];
    LOBYTE(v62) = [v62 containsObject:v64];

    if ((v62 & 1) == 0)
    {
      v105[0] = @"HMDCR.id";
      v105[1] = @"HMDCR.stc";
      v106[0] = @"1411CE6C-B4DE-4622-A49D-F66FE296D6B5";
      v106[1] = v60;
      v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];
      [v56 addObject:v65];
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v66 = [*(v1 + 32) cloudCache];
    v67 = [v66 allHomeZones];

    v68 = [v67 countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v95;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v95 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v94 + 1) + 8 * j);
          v73 = *(*(*(v93 + 64) + 8) + 40);
          v74 = [v72 zone];
          v75 = [v74 zoneID];
          LOBYTE(v73) = [v73 containsObject:v75];

          if ((v73 & 1) == 0)
          {
            v76 = [v72 zone];
            v77 = [v76 zoneID];
            v78 = [v77 zoneName];

            if (v78)
            {
              v102[0] = @"HMDCR.id";
              v102[1] = @"HMDCR.stc";
              v103[0] = v78;
              v103[1] = v60;
              v102[2] = @"HMDCR.if";
              v103[2] = v60;
              v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];
              [v56 addObject:v79];
            }
          }
        }

        v69 = [v67 countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v69);
    }

    if ([v56 count])
    {
      [v91 notifyZonesCloudZoneReady:v56];
    }

    v1 = v93;
  }

  if ([*(*(*(v1 + 64) + 8) + 40) count])
  {
    v80 = [*(v1 + 32) pollTimer];
    if (v80)
    {
      v81 = arc4random_uniform(0x1C21u) + 86400;
      v82 = objc_autoreleasePoolPush();
      v83 = *(v1 + 32);
      v84 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        v85 = HMFGetLogIdentifier();
        *buf = 138543618;
        v110 = v85;
        v111 = 2048;
        v112 = v81;
        _os_log_impl(&dword_2531F8000, v84, OS_LOG_TYPE_INFO, "%{public}@Resetting next cloud sync poll timer set to %lld secs since we just fetched", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v82);
      v86 = dispatch_walltime(0, 1000000000 * v81);
      dispatch_source_set_timer(v80, v86, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
    }
  }

  v87 = *(v1 + 56);
  if (v87)
  {
    (*(v87 + 16))(v87, *(v1 + 40));
  }
}

- (void)cacheDatabaseServerToken
{
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDCloudManager_cacheDatabaseServerToken__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __43__HMDCloudManager_cacheDatabaseServerToken__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Caching database server token", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) cloudCache];
  [v6 persistDatabaseServerChangeToken];
}

- (void)fetchDatabaseZoneChanges
{
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __43__HMDCloudManager_fetchDatabaseZoneChanges__block_invoke;
  v10 = &unk_279731CB0;
  objc_copyWeak(&v11, &location);
  v3 = _Block_copy(&v7);
  v4 = [(HMDCloudManager *)self dataSource:v7];
  v5 = [v4 queryDatabaseOperationWithBlock:v3];

  syncManager = [(HMDCloudManager *)self syncManager];
  [syncManager addOperation:v5];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __43__HMDCloudManager_fetchDatabaseZoneChanges__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (!a4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v11 = [WeakRetained workQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__HMDCloudManager_fetchDatabaseZoneChanges__block_invoke_2;
      v12[3] = &unk_279735738;
      v12[4] = v9;
      v13 = v7;
      dispatch_async(v11, v12);
    }

    goto LABEL_6;
  }

  if (v7)
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:@"Operation was cancelled before it could run" reason:@"HMDCloudManager cancelled the operation" suggestion:0];
    (*(v7 + 2))(v7, v9);
LABEL_6:
  }
}

- (void)_scheduleZoneFetch:(id)fetch
{
  v39 = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  if (fetchCopy)
  {
    delegate = [(HMDCloudManager *)self delegate];
    legacyZone = [(HMDCloudManager *)self legacyZone];
    v7 = [legacyZone zone];
    zoneID = [v7 zoneID];
    zoneName = [zoneID zoneName];
    v10 = [zoneName isEqualToString:fetchCopy];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Scheduling fetch for legacy zone", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [delegate fetchHomeDataFromCloudWithCloudConflict:0 withDelay:0.0];
    }

    else
    {
      homeManagerZone = [(HMDCloudManager *)self homeManagerZone];
      v20 = [homeManagerZone zone];
      zoneID2 = [v20 zoneID];
      zoneName2 = [zoneID2 zoneName];
      v23 = [zoneName2 isEqualToString:fetchCopy];

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          v35 = 138543362;
          v36 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Scheduling fetch for home manager zone", &v35, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        [delegate fetchHomeManagerCloudConflict:0 withDelay:0.0];
      }

      else
      {
        cloudCache = [(HMDCloudManager *)self cloudCache];
        v29 = [cloudCache homeZoneExists:fetchCopy];

        if (v29)
        {
          v30 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            v35 = 138543618;
            v36 = v33;
            v37 = 2112;
            v38 = fetchCopy;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Scheduling fetch for home zone %@", &v35, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v34 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:fetchCopy];
          [delegate fetchHomeFromCloudZone:v34 cloudConflict:0 withDelay:0.0];
        }
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Zone not specified, cannot fetch", &v35, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)registerForPushNotifications
{
  container = [(HMDCloudManager *)self container];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HMDCloudManager_registerForPushNotifications__block_invoke;
  v4[3] = &unk_27972EEB0;
  v4[4] = self;
  [container serverPreferredPushEnvironmentWithCompletionHandler:v4];
}

void __47__HMDCloudManager_registerForPushNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDCloudManager_registerForPushNotifications__block_invoke_2;
  block[3] = &unk_279734960;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __47__HMDCloudManager_registerForPushNotifications__block_invoke_2(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEE9F0];
  if (a1[4])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = a1[5];
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [a1[4] hmd_conciseCKError];
      v8 = [v7 shortDescription];
      v15 = 138543618;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[HMDCloudManager] Failed to resolve preferred CloudKit environment with error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else if ([a1[6] length])
  {
    v9 = a1[6];

    v2 = v9;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1[5];
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = v2;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Registering APS Connection for preferred environment: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [MEMORY[0x277D17058] sharedHandlerForEnvironment:v2];
  [v14 addObserver:a1[5] forBundleIdentifier:@"com.apple.willowd"];
}

- (void)_setupSubscriptionForZone:(id)zone
{
  v21 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  subscription = [zoneCopy subscription];

  if (!subscription)
  {
    subscriptionName = [zoneCopy subscriptionName];

    if (subscriptionName)
    {
      objc_initWeak(&location, self);
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        subscriptionName2 = [zoneCopy subscriptionName];
        *buf = 138543618;
        v18 = v10;
        v19 = 2112;
        v20 = subscriptionName2;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetching subscription with ID %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      subscriptionName3 = [zoneCopy subscriptionName];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __45__HMDCloudManager__setupSubscriptionForZone___block_invoke;
      v13[3] = &unk_279725D48;
      objc_copyWeak(&v15, &location);
      v14 = zoneCopy;
      [(HMDCloudManager *)selfCopy __fetchSubscriptionWithID:subscriptionName3 completionHandler:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __45__HMDCloudManager__setupSubscriptionForZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HMDCloudManager__setupSubscriptionForZone___block_invoke_2;
    block[3] = &unk_279727520;
    v11 = v6;
    v12 = v5;
    v13 = *(a1 + 32);
    v14 = v8;
    objc_copyWeak(&v15, (a1 + 40));
    dispatch_async(v9, block);

    objc_destroyWeak(&v15);
  }
}

void __45__HMDCloudManager__setupSubscriptionForZone___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v2 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    if (v4)
    {
      v5 = [v4 subscriptionID];
      v6 = [*(a1 + 48) subscriptionName];
      v7 = [v5 isEqualToString:v6];

      if (v7)
      {
        [*(a1 + 48) setSubscription:v4];
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 56);
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v12 = [*(a1 + 48) zone];
          v13 = [v12 zoneID];
          v14 = [v13 zoneName];
          *buf = 138543618;
          v28 = v11;
          v29 = 2112;
          v30 = v14;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Already have subscription for in zone %@, caching", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        goto LABEL_14;
      }
    }
  }

  v15 = objc_alloc(MEMORY[0x277CBC618]);
  v16 = [*(a1 + 48) zone];
  v17 = [v16 zoneID];
  v18 = [*(a1 + 48) subscriptionName];
  v4 = [v15 initWithZoneID:v17 subscriptionID:v18];

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 56);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Subscription not found, attempting to create one", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = *(a1 + 56);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__HMDCloudManager__setupSubscriptionForZone___block_invoke_186;
  v24[3] = &unk_279725D20;
  objc_copyWeak(&v26, (a1 + 64));
  v25 = *(a1 + 48);
  [v23 __saveSubscription:v4 completionHandler:v24];

  objc_destroyWeak(&v26);
LABEL_14:
}

void __45__HMDCloudManager__setupSubscriptionForZone___block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v6 hmd_conciseCKError];
        v13 = [v12 shortDescription];
        *buf = 138543618;
        v31 = v11;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not modify iCloud subscription: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v14 = [v9 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__HMDCloudManager__setupSubscriptionForZone___block_invoke_187;
      block[3] = &unk_279735D00;
      v15 = &v29;
      v29 = *(a1 + 32);
      dispatch_async(v14, block);
LABEL_10:

      goto LABEL_11;
    }

    if (v5)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 32) zone];
        v21 = [v20 zoneID];
        [v21 zoneName];
        v22 = v24 = v16;
        *buf = 138543618;
        v31 = v19;
        v32 = 2112;
        v33 = v22;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Registered for push notifications from record zone %@", buf, 0x16u);

        v16 = v24;
      }

      objc_autoreleasePoolPop(v16);
      v23 = [v17 workQueue];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __45__HMDCloudManager__setupSubscriptionForZone___block_invoke_188;
      v25[3] = &unk_2797359B0;
      v15 = &v26;
      v26 = *(a1 + 32);
      v27 = v5;
      dispatch_async(v23, v25);

      v14 = v27;
      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)_registerForProxSetupNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = +[HMDDeviceSetupManager sharedManager];
  [defaultCenter addObserver:self selector:sel__auditProxSetupNotification_ name:@"HMDDeviceSetupManagerUpdatedRunningNotification" object:v3];
}

- (void)_auditProxSetupNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo hmf_BOOLForKey:@"running"];

  if (v5)
  {
    [(HMDCloudManager *)self _startWatchdogControllerKeyPollTimer];
    controllerKeyPollTimer = [(HMDCloudManager *)self controllerKeyPollTimer];

    if (controllerKeyPollTimer)
    {
      [(HMDCloudManager *)self _stopControllerKeyPollTimer];
      [(HMDCloudManager *)self setCurrentBackoffTimerValuesInMinutes:0];
      [(HMDCloudManager *)self _startControllerKeyPollTimer];
      dataSource = [(HMDCloudManager *)self dataSource];
      isControllerKeyAvailable = [dataSource isControllerKeyAvailable];

      if (isControllerKeyAvailable)
      {
        [(HMDCloudManager *)self _handleControllerKeyAvailable];
      }

      cloudDataSyncStateFilter = [(HMDCloudManager *)self cloudDataSyncStateFilter];
      [cloudDataSyncStateFilter kickResetConfigDisplayTimer];
    }
  }

  else
  {

    [(HMDCloudManager *)self _stopWatchdogControllerKeyPollTimer];
  }
}

- (void)_stopControllerKeyPollTimer
{
  v11 = *MEMORY[0x277D85DE8];
  controllerKeyPollTimer = [(HMDCloudManager *)self controllerKeyPollTimer];

  if (controllerKeyPollTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cancelling controller key poll timer", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    controllerKeyPollTimer2 = [(HMDCloudManager *)selfCopy controllerKeyPollTimer];
    dispatch_source_cancel(controllerKeyPollTimer2);

    [(HMDCloudManager *)selfCopy setControllerKeyPollTimer:0];
  }
}

- (void)_startControllerKeyPollTimerWithValue:(int64_t)value
{
  v20 = *MEMORY[0x277D85DE8];
  [(HMDCloudManager *)self _stopControllerKeyPollTimer];
  workQueue = [(HMDCloudManager *)self workQueue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);
  [(HMDCloudManager *)self setControllerKeyPollTimer:v6];

  controllerKeyPollTimer = [(HMDCloudManager *)self controllerKeyPollTimer];
  v8 = dispatch_time(0, 1000000000 * value);
  dispatch_source_set_timer(controllerKeyPollTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);

  objc_initWeak(&location, self);
  controllerKeyPollTimer2 = [(HMDCloudManager *)self controllerKeyPollTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __57__HMDCloudManager__startControllerKeyPollTimerWithValue___block_invoke;
  handler[3] = &unk_279731C88;
  objc_copyWeak(v16, &location);
  v16[1] = value;
  dispatch_source_set_event_handler(controllerKeyPollTimer2, handler);

  controllerKeyPollTimer3 = [(HMDCloudManager *)self controllerKeyPollTimer];
  dispatch_resume(controllerKeyPollTimer3);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting controller key poll timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __57__HMDCloudManager__startControllerKeyPollTimerWithValue___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Controller key poll timer fired", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [v4 dataSource];
    v8 = [v7 isControllerKeyAvailable];

    if (v8)
    {
      [v4 _handleControllerKeyAvailable];
    }

    else
    {
      v9 = controllerKeyPollInterval;
      v10 = [v4 watchdogControllerKeyPollTimer];
      if (v10 && (v11 = v10, +[HMDDeviceSetupManager sharedManager](HMDDeviceSetupManager, "sharedManager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isRunning], v12, v11, v13))
      {
        v14 = aggressiveControllerKeyPollInterval;
      }

      else if (*(a1 + 40) <= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = *(a1 + 40);
      }

      v15 = [v4 controllerKeyPollTimer];
      v16 = dispatch_time(0, 1000000000 * v14);
      dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
    }
  }
}

- (void)_startControllerKeyPollTimerWithBackoff
{
  v23 = *MEMORY[0x277D85DE8];
  currentBackoffTimerValuesInMinutes = [(HMDCloudManager *)self currentBackoffTimerValuesInMinutes];
  v4 = [currentBackoffTimerValuesInMinutes count];

  if (v4)
  {
    currentBackoffTimerValuesInMinutes2 = [(HMDCloudManager *)self currentBackoffTimerValuesInMinutes];
    v6 = [currentBackoffTimerValuesInMinutes2 objectAtIndex:0];
    integerValue = [v6 integerValue];

    currentBackoffTimerValuesInMinutes3 = [(HMDCloudManager *)self currentBackoffTimerValuesInMinutes];
    v9 = [currentBackoffTimerValuesInMinutes3 count];

    if (v9 >= 2)
    {
      currentBackoffTimerValuesInMinutes4 = [(HMDCloudManager *)self currentBackoffTimerValuesInMinutes];
      [currentBackoffTimerValuesInMinutes4 removeObjectAtIndex:0];
    }

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2048;
      v22 = integerValue;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Starting a back off timer with %lld minutes timeout", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCloudManager *)selfCopy _startControllerKeyPollTimerWithValue:60 * integerValue];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Current back off timer values count is 0?", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)_startControllerKeyPollTimer
{
  v3 = controllerKeyPollInterval;
  watchdogControllerKeyPollTimer = [(HMDCloudManager *)self watchdogControllerKeyPollTimer];

  if (watchdogControllerKeyPollTimer)
  {
    v5 = aggressiveControllerKeyPollInterval;
  }

  else
  {
    v5 = v3;
  }

  [(HMDCloudManager *)self _startControllerKeyPollTimerWithValue:v5];
}

- (void)_stopWatchdogControllerKeyPollTimer
{
  v11 = *MEMORY[0x277D85DE8];
  watchdogControllerKeyPollTimer = [(HMDCloudManager *)self watchdogControllerKeyPollTimer];

  if (watchdogControllerKeyPollTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cancelling watchdog controller key poll timer", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    watchdogControllerKeyPollTimer2 = [(HMDCloudManager *)selfCopy watchdogControllerKeyPollTimer];
    dispatch_source_cancel(watchdogControllerKeyPollTimer2);

    [(HMDCloudManager *)selfCopy setWatchdogControllerKeyPollTimer:0];
  }
}

- (void)_startWatchdogControllerKeyPollTimer
{
  v22 = *MEMORY[0x277D85DE8];
  [(HMDCloudManager *)self _stopWatchdogControllerKeyPollTimer];
  v3 = watchdogControllerKeyPollTimeout;
  workQueue = [(HMDCloudManager *)self workQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);
  [(HMDCloudManager *)self setWatchdogControllerKeyPollTimer:v5];

  watchdogControllerKeyPollTimer = [(HMDCloudManager *)self watchdogControllerKeyPollTimer];
  v7 = dispatch_time(0, 1000000000 * v3);
  dispatch_source_set_timer(watchdogControllerKeyPollTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);

  objc_initWeak(&location, self);
  watchdogControllerKeyPollTimer2 = [(HMDCloudManager *)self watchdogControllerKeyPollTimer];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __55__HMDCloudManager__startWatchdogControllerKeyPollTimer__block_invoke;
  v17 = &unk_279732FD8;
  objc_copyWeak(&v18, &location);
  dispatch_source_set_event_handler(watchdogControllerKeyPollTimer2, &v14);

  v9 = [(HMDCloudManager *)self watchdogControllerKeyPollTimer:v14];
  dispatch_resume(v9);

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting watchdog controller key poll timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __55__HMDCloudManager__startWatchdogControllerKeyPollTimer__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Watchdog controller key poll timer fired", &v6, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [v3 _stopWatchdogControllerKeyPollTimer];
  }
}

- (void)_handleControllerKeyAvailable
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Controller key is available, fetching new changes", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  delegate = [(HMDCloudManager *)selfCopy delegate];
  [delegate reloadHomeDataFromLocalStore:0];

  controllerKeyAvailableNotificationHandler = [(HMDCloudManager *)selfCopy controllerKeyAvailableNotificationHandler];

  if (controllerKeyAvailableNotificationHandler)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Controller key is available, notifying availability", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    clientCallbackQueue = [(HMDCloudManager *)v10 clientCallbackQueue];
    controllerKeyAvailableNotificationHandler2 = [(HMDCloudManager *)v10 controllerKeyAvailableNotificationHandler];
    dispatch_async(clientCallbackQueue, controllerKeyAvailableNotificationHandler2);
  }

  [(HMDCloudManager *)selfCopy _stopControllerKeyPollTimer];
  [(HMDCloudManager *)selfCopy _stopFetchRetryTimer];
  [(HMDCloudManager *)selfCopy fetchDatabaseZoneChanges];
}

- (void)_handleKeychainSyncStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v17 = *MEMORY[0x277D85DE8];
  [(HMDCloudManager *)self setKeychainSyncEnabled:?];
  if (changedCopy)
  {
    if ([(HMDCloudManager *)self accountActive])
    {
      dataSource = [(HMDCloudManager *)self dataSource];
      isControllerKeyAvailable = [dataSource isControllerKeyAvailable];

      if (isControllerKeyAvailable)
      {

        [(HMDCloudManager *)self _handleControllerKeyAvailable];
      }

      else if ([(HMDCloudManager *)self cloudHomeDataRecordExists])
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = 138543362;
          v16 = v14;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Keychain is enabled and data in cloud. We don't have controller key as yet, starting poll timer", &v15, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        [(HMDCloudManager *)selfCopy _startControllerKeyPollTimer];
      }
    }
  }

  else
  {
    [(HMDCloudManager *)self _stopControllerKeyPollTimer];
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received message that keychain sync is not available", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)handleKeychainStateChangedNotification:(id)notification
{
  dataSource = [(HMDCloudManager *)self dataSource];
  isKeychainSyncEnabled = [dataSource isKeychainSyncEnabled];

  workQueue = [(HMDCloudManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDCloudManager_handleKeychainStateChangedNotification___block_invoke;
  v7[3] = &unk_279735D28;
  v7[4] = self;
  v8 = isKeychainSyncEnabled;
  dispatch_async(workQueue, v7);
}

- (void)_stopFetchPollTimer
{
  v11 = *MEMORY[0x277D85DE8];
  pollTimer = [(HMDCloudManager *)self pollTimer];

  if (pollTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cancelling cloud sync poll timer", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    pollTimer2 = [(HMDCloudManager *)selfCopy pollTimer];
    dispatch_source_cancel(pollTimer2);

    [(HMDCloudManager *)selfCopy setPollTimer:0];
  }
}

- (void)_startFetchPollTimer
{
  v29 = *MEMORY[0x277D85DE8];
  [(HMDCloudManager *)self _stopFetchPollTimer];
  workQueue = [(HMDCloudManager *)self workQueue];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);
  [(HMDCloudManager *)self setPollTimer:v4];

  v5 = arc4random_uniform(0x1C21u);
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v5 + 86400;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v10;
    v27 = 2048;
    v28 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Cloud sync initial poll timer set to %lld secs", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  pollTimer = [(HMDCloudManager *)selfCopy pollTimer];
  v12 = dispatch_walltime(0, 1000000000 * v9);
  dispatch_source_set_timer(pollTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);

  objc_initWeak(&location, selfCopy);
  pollTimer2 = [(HMDCloudManager *)selfCopy pollTimer];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __39__HMDCloudManager__startFetchPollTimer__block_invoke;
  v22 = &unk_279732FD8;
  objc_copyWeak(&v23, &location);
  dispatch_source_set_event_handler(pollTimer2, &v19);

  v14 = [(HMDCloudManager *)selfCopy pollTimer:v19];
  dispatch_resume(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Starting cloud sync poll timer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __39__HMDCloudManager__startFetchPollTimer__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Cloud sync poll timer fired, fetching any new changes", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [v3 _stopFetchRetryTimer];
    [v3 fetchDatabaseZoneChanges];
    v6 = arc4random_uniform(0x1C21u) + 86400;
    v7 = objc_autoreleasePoolPush();
    v8 = v3;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Next cloud sync poll timer set to %lld secs", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [v8 pollTimer];
    v12 = dispatch_walltime(0, 1000000000 * v6);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
  }
}

- (void)_stopFetchRetryTimer
{
  v11 = *MEMORY[0x277D85DE8];
  retryTimer = [(HMDCloudManager *)self retryTimer];

  if (retryTimer)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cancelling fetch retry timer", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    retryTimer2 = [(HMDCloudManager *)selfCopy retryTimer];
    dispatch_source_cancel(retryTimer2);

    [(HMDCloudManager *)selfCopy setRetryTimer:0];
  }
}

- (void)_startFetchRetryTimer
{
  v19 = *MEMORY[0x277D85DE8];
  retryTimer = [(HMDCloudManager *)self retryTimer];

  if (!retryTimer)
  {
    workQueue = [(HMDCloudManager *)self workQueue];
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);
    [(HMDCloudManager *)self setRetryTimer:v5];

    retryTimer2 = [(HMDCloudManager *)self retryTimer];
    v7 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(retryTimer2, v7, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);

    objc_initWeak(&location, self);
    retryTimer3 = [(HMDCloudManager *)self retryTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__HMDCloudManager__startFetchRetryTimer__block_invoke;
    handler[3] = &unk_279732E78;
    objc_copyWeak(&v15, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(retryTimer3, handler);

    retryTimer4 = [(HMDCloudManager *)self retryTimer];
    dispatch_resume(retryTimer4);

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting retry fetch timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __40__HMDCloudManager__startFetchRetryTimer__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetch retry timer fired, fetching any new changes", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) fetchDatabaseZoneChanges];
  }
}

- (void)_updateServerTokenStatusOnCloudFilter
{
  legacyZone = [(HMDCloudManager *)self legacyZone];
  serverChangeToken = [legacyZone serverChangeToken];
  v5 = serverChangeToken != 0;

  cloudDataSyncStateFilter = [(HMDCloudManager *)self cloudDataSyncStateFilter];
  [cloudDataSyncStateFilter updateServerTokenAvailable:v5];
}

- (void)updateServerTokenStatusOnCloudFilter
{
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDCloudManager_updateServerTokenStatusOnCloudFilter__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)initializeServerTokenStatusOnCloudFilter
{
  objc_initWeak(&location, self);
  workQueue = [(HMDCloudManager *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HMDCloudManager_initializeServerTokenStatusOnCloudFilter__block_invoke;
  v4[3] = &unk_279732FD8;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __59__HMDCloudManager_initializeServerTokenStatusOnCloudFilter__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained legacyZone];
    v3 = [v2 serverChangeToken];
    v4 = v3 != 0;

    v5 = [v6 cloudDataSyncStateFilter];
    [v5 updateWithoutDataSynCheckServerTokenAvailable:v4];

    WeakRetained = v6;
  }
}

- (void)_forceCleanCloud:(BOOL)cloud fetchTransaction:(id)transaction completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  cloudZone = [transactionCopy cloudZone];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = cloudZone;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    homeDataObjectID = [v12 homeDataObjectID];
    v14 = [transactionCopy doesRecordExistInCacheWithObjectID:homeDataObjectID];

    homeDataV3ObjectID = [v12 homeDataV3ObjectID];
    v16 = [transactionCopy doesRecordExistInCacheWithObjectID:homeDataV3ObjectID];

    objc_initWeak(location, self);
    homeManagerZone = [(HMDCloudManager *)self homeManagerZone];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke;
    v22[3] = &unk_279725CF8;
    objc_copyWeak(&v25, location);
    v24 = handlerCopy;
    cloudCopy = cloud;
    v23 = v12;
    v27 = (v14 | v16) & 1;
    [(HMDCloudManager *)self _fetchAndVerifyZoneRootRecord:homeManagerZone completionHandler:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Legacy zone does not exist, cannot process force clean", location, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }
}

void __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v6 hmd_conciseCKError];
        v13 = [v12 shortDescription];
        *buf = 138543618;
        v27 = v11;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine fetch zone information to determine local data should be cleaned %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v14 = *(a1 + 40);
      if (v14)
      {
        (*(v14 + 16))(v14, 0, v6);
      }
    }

    else if (a2)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke_180;
      v21[3] = &unk_279731D28;
      objc_copyWeak(&v24, (a1 + 48));
      v25 = *(a1 + 56);
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      [WeakRetained _resetCloudZonesIgnoreHomeManager:0 completionHandler:v21];

      objc_destroyWeak(&v24);
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke_182;
      v15[3] = &unk_279725CD0;
      objc_copyWeak(&v18, (a1 + 48));
      v19 = *(a1 + 56);
      v16 = *(a1 + 32);
      v20 = *(a1 + 57);
      v17 = *(a1 + 40);
      [WeakRetained _resetCloudZonesIgnoreHomeManager:1 completionHandler:v15];

      objc_destroyWeak(&v18);
    }
  }
}

void __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke_180(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_8;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v15 = [*(a1 + 32) homeDataV3RecordID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke_2;
    v16[3] = &unk_279725C80;
    objc_copyWeak(&v18, (a1 + 48));
    v17 = *(a1 + 40);
    [v5 __deleteRecordWithID:v15 completionHandler:v16];

    objc_destroyWeak(&v18);
    goto LABEL_11;
  }

  v6 = [WeakRetained cloudDataDeletedNotificationHandler];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Invoking cloud home data deleted notification block", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [v8 clientCallbackQueue];
    v12 = [v8 cloudDataDeletedNotificationHandler];
    dispatch_async(v11, v12);

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 1, v3);
    }
  }

  else
  {
LABEL_8:
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v3);
    }
  }

LABEL_11:
}

void __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke_182(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_9;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v15 = [*(a1 + 32) homeDataV3RecordID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke_2_183;
    v16[3] = &unk_279725CA8;
    objc_copyWeak(&v18, (a1 + 48));
    v19 = *(a1 + 57);
    v17 = *(a1 + 40);
    [v5 __deleteRecordWithID:v15 completionHandler:v16];

    objc_destroyWeak(&v18);
    goto LABEL_12;
  }

  if (*(a1 + 57) == 1 && ([WeakRetained cloudDataDeletedNotificationHandler], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Invoking cloud home data deleted notification block", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [v8 clientCallbackQueue];
    v12 = [v8 cloudDataDeletedNotificationHandler];
    dispatch_async(v11, v12);

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 1, v3);
    }
  }

  else
  {
LABEL_9:
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v3);
    }
  }

LABEL_12:
}

void __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke_2_183(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6 && WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 hmd_conciseCKError];
      v14 = [v13 shortDescription];
      v25 = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to delete Version 3 record due to error %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  if (*(a1 + 48) == 1 && ([v8 cloudDataDeletedNotificationHandler], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v8;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Invoking cloud home data deleted notification block", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [v17 clientCallbackQueue];
    v21 = [v17 cloudDataDeletedNotificationHandler];
    dispatch_async(v20, v21);

    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 16);
LABEL_14:
      v23();
    }
  }

  else
  {
    v24 = *(a1 + 32);
    if (v24)
    {
      v23 = *(v24 + 16);
      goto LABEL_14;
    }
  }
}

void __71__HMDCloudManager__forceCleanCloud_fetchTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6 && WeakRetained)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v8;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 hmd_conciseCKError];
      v14 = [v13 shortDescription];
      v25 = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to delete Version 3 record due to error %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = [v8 cloudDataDeletedNotificationHandler];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v8;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Invoking cloud home data deleted notification block", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [v17 clientCallbackQueue];
    v21 = [v17 cloudDataDeletedNotificationHandler];
    dispatch_async(v20, v21);

    v22 = *(a1 + 32);
    if (v22)
    {
      v23 = *(v22 + 16);
LABEL_13:
      v23();
    }
  }

  else
  {
    v24 = *(a1 + 32);
    if (v24)
    {
      v23 = *(v24 + 16);
      goto LABEL_13;
    }
  }
}

- (void)updateCloudDataSyncFilterState:(BOOL)state
{
  stateCopy = state;
  cloudDataSyncStateFilter = [(HMDCloudManager *)self cloudDataSyncStateFilter];
  [cloudDataSyncStateFilter updateCloudDataSyncState:stateCopy];
}

- (void)setAccountActive:(BOOL)active
{
  self->_accountActive = active;
  accountActiveUpdateHandler = [(HMDCloudManager *)self accountActiveUpdateHandler];

  if (accountActiveUpdateHandler)
  {
    accountActiveUpdateHandler2 = [(HMDCloudManager *)self accountActiveUpdateHandler];
    accountActiveUpdateHandler2[2](accountActiveUpdateHandler2, self->_accountActive);
  }
}

- (void)_accountIsActive
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Marking account is active", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCloudManager *)selfCopy setAccountActive:1];
  dataSource = [(HMDCloudManager *)selfCopy dataSource];
  -[HMDCloudManager _handleKeychainSyncStateChanged:](selfCopy, "_handleKeychainSyncStateChanged:", [dataSource isKeychainSyncEnabled]);

  [(HMDCloudManager *)selfCopy _startFetchPollTimer];
  [(HMDCloudManager *)selfCopy fetchDatabaseZoneChanges];
  legacyZone = [(HMDCloudManager *)selfCopy legacyZone];
  [(HMDCloudManager *)selfCopy _setupSubscriptionForZone:legacyZone];

  homeManagerZone = [(HMDCloudManager *)selfCopy homeManagerZone];
  [(HMDCloudManager *)selfCopy _setupSubscriptionForZone:homeManagerZone];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  cloudCache = [(HMDCloudManager *)selfCopy cloudCache];
  allHomeZones = [cloudCache allHomeZones];

  v12 = [allHomeZones countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(allHomeZones);
        }

        [(HMDCloudManager *)selfCopy _setupSubscriptionForZone:*(*(&v16 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [allHomeZones countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_createZoneAndFetchChanges:(id)changes
{
  v25[2] = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  [(HMDCloudManager *)self _stopControllerKeyPollTimer];
  [(HMDCloudManager *)self _stopFetchRetryTimer];
  homeManagerZone = [(HMDCloudManager *)self homeManagerZone];
  metadataZone = [(HMDCloudManager *)self metadataZone];
  legacyZone = [(HMDCloudManager *)self legacyZone];
  v8 = legacyZone;
  if (homeManagerZone && metadataZone && legacyZone)
  {
    objc_initWeak(&location, self);
    serverChangeToken = [v8 serverChangeToken];

    if (serverChangeToken)
    {
      v25[0] = @"84968B22-8974-4102-AAA6-7B9C763A14B5";
      v25[1] = @"9C3BF4D1-C7CF-4217-BCD2-0F7E96D5B300";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_2;
      v18[3] = &unk_279732250;
      objc_copyWeak(&v20, &location);
      v19 = changesCopy;
      [v8 cloudRecordWithNames:v10 completionHandler:v18];

      objc_destroyWeak(&v20);
    }

    else
    {
      v24[0] = homeManagerZone;
      v24[1] = metadataZone;
      v24[2] = v8;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_5;
      v14[3] = &unk_279730CC0;
      objc_copyWeak(&v17, &location);
      v16 = changesCopy;
      v13 = v12;
      v15 = v13;
      [(HMDCloudManager *)self _verifyHH2SentinelCloudZoneExist:v14];

      objc_destroyWeak(&v17);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    clientCallbackQueue = [(HMDCloudManager *)self clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke;
    block[3] = &unk_2797348C0;
    v23 = changesCopy;
    dispatch_async(clientCallbackQueue, block);
  }
}

void __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

void __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_3;
    block[3] = &unk_2797355D0;
    block[4] = v6;
    v9 = v4;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

void __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [WeakRetained clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_6;
      block[3] = &unk_279735738;
      v20 = *(a1 + 40);
      v19 = v5;
      dispatch_async(v8, block);

      v9 = v20;
    }

    else
    {
      if (!a2)
      {
        [WeakRetained _verifyZonesExist:*(a1 + 32) zoneIndex:0 completion:*(a1 + 40)];
        goto LABEL_9;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = v7;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot continue HH1 initial fetch because HH2 sentinel zone exists", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [v11 delegate];
      [v14 makeSureWeAreRunningInRightEnvironment:1];

      v15 = [v11 clientCallbackQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_179;
      v16[3] = &unk_2797348C0;
      v17 = *(a1 + 40);
      dispatch_async(v15, v16);

      v9 = v17;
    }
  }

LABEL_9:
}

uint64_t __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(a1 + 32));
  }

  return result;
}

void __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_179(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:77 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

void __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_3(id *a1)
{
  [a1[4] setCloudHomeDataRecordExists:{objc_msgSend(a1[5], "containsObject:", @"84968B22-8974-4102-AAA6-7B9C763A14B5"}];
  v2 = [a1[5] containsObject:@"9C3BF4D1-C7CF-4217-BCD2-0F7E96D5B300"] ^ 1;
  v3 = [a1[4] clientCallbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_4;
  block[3] = &unk_279733DB0;
  v4 = a1[6];
  block[4] = a1[4];
  v6 = v4;
  v7 = v2;
  dispatch_async(v3, block);

  [a1[4] _accountIsActive];
}

uint64_t __46__HMDCloudManager__createZoneAndFetchChanges___block_invoke_4(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    v3 = [*(result + 32) cloudHomeDataRecordExists];
    v4 = *(v2 + 48);
    v5 = *(v1 + 16);

    return v5(v1, v3, v4, 0);
  }

  return result;
}

- (void)_verifyZonesExist:(id)exist zoneIndex:(unint64_t)index completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  existCopy = exist;
  completionCopy = completion;
  if (existCopy && [existCopy count] - 1 >= index)
  {
    v16 = [existCopy objectAtIndex:index];
    objc_initWeak(buf, self);
    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VerifyZone", "", v25, 2u);
    }

    v18 = [v16 zone];
    zoneID = [v18 zoneID];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_163;
    v20[3] = &unk_279725C58;
    objc_copyWeak(v24, buf);
    v24[1] = 0xEEEEB0B5B2B2EEEELL;
    v15 = v16;
    v21 = v15;
    v23 = completionCopy;
    v24[2] = index;
    v22 = existCopy;
    [(HMDCloudManager *)self __fetchRecordZoneWithID:zoneID completionHandler:v20];

    objc_destroyWeak(v24);
    objc_destroyWeak(buf);
    goto LABEL_10;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No cloud zones to process", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  if (completionCopy)
  {
    clientCallbackQueue = [(HMDCloudManager *)selfCopy clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v27 = completionCopy;
    dispatch_async(clientCallbackQueue, block);

    v15 = v27;
LABEL_10:
  }
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_163(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v39 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[1];
    v9 = v8;
    v10 = *(a1 + 64);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v9, OS_SIGNPOST_INTERVAL_END, v10, "VerifyZone", "", buf, 2u);
    }

    if (v5)
    {
      IsZoneNotExistError = HMDCloudManagerIsZoneNotExistError(v5);
      v12 = objc_autoreleasePoolPush();
      v13 = v7;
      v14 = HMFGetOSLogHandle();
      v15 = v14;
      if (IsZoneNotExistError)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v17 = [*(a1 + 32) zone];
          v18 = [v17 zoneID];
          v19 = [v18 zoneName];
          *buf = 138543618;
          v52 = v16;
          v53 = 2114;
          v54 = v19;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch record zone %{public}@, creating", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
        v20 = [*(a1 + 32) zone];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_164;
        v46[3] = &unk_279725C30;
        objc_copyWeak(v50, (a1 + 56));
        v47 = *(a1 + 32);
        v21 = *(a1 + 48);
        v22 = *(a1 + 72);
        v49 = v21;
        v50[1] = v22;
        v48 = *(a1 + 40);
        [v13 __saveRecordZone:v20 completionHandler:v46];

        objc_destroyWeak(v50);
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          v38 = [*(a1 + 32) zone];
          v31 = [v38 zoneID];
          v32 = [v31 zoneName];
          v33 = [v5 hmd_conciseCKError];
          v34 = [v33 shortDescription];
          *buf = 138543874;
          v52 = v37;
          v53 = 2114;
          v54 = v32;
          v55 = 2114;
          v56 = v34;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch record zone %{public}@ due to error: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        if (*(a1 + 48))
        {
          v35 = [v13 clientCallbackQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_174;
          block[3] = &unk_279735738;
          v45 = *(a1 + 48);
          v44 = v5;
          dispatch_async(v35, block);
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v7;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [*(a1 + 32) zone];
        v28 = [v27 zoneID];
        v29 = [v28 zoneName];
        *buf = 138543618;
        v52 = v26;
        v53 = 2112;
        v54 = v29;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Verified record zone %@ exists", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v30 = *(a1 + 72);
      if (v30 >= [*(a1 + 40) count] - 1)
      {
        v36 = [v24 workQueue];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_175;
        v40[3] = &unk_279730E50;
        v40[4] = v24;
        v41 = *(a1 + 48);
        objc_copyWeak(&v42, (a1 + 56));
        dispatch_async(v36, v40);

        objc_destroyWeak(&v42);
      }

      else
      {
        [v24 _verifyZonesExist:*(a1 + 40) zoneIndex:*(a1 + 72) + 1 completion:*(a1 + 48)];
      }
    }
  }
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_164(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v25 = [*(a1 + 32) zone];
        [v25 zoneID];
        v13 = v26 = v5;
        [v13 zoneName];
        v14 = v27 = v8;
        v15 = [v6 hmd_conciseCKError];
        v16 = [v15 shortDescription];
        *buf = 138543874;
        v36 = v12;
        v37 = 2112;
        v38 = v14;
        v39 = 2112;
        v40 = v16;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to create record zone %@ due to error: %@", buf, 0x20u);

        v8 = v27;
        v5 = v26;
      }

      objc_autoreleasePoolPop(v8);
      if (*(a1 + 48))
      {
        v17 = [v9 clientCallbackQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_165;
        block[3] = &unk_279735738;
        v34 = *(a1 + 48);
        v33 = v6;
        dispatch_async(v17, block);

        v18 = v34;
LABEL_12:
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        [*(a1 + 32) zone];
        v20 = v28 = v8;
        v21 = [v20 zoneID];
        v22 = [v21 zoneName];
        *buf = 138543618;
        v36 = v19;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully created record zone %@", buf, 0x16u);

        v8 = v28;
      }

      objc_autoreleasePoolPop(v8);
      v23 = *(a1 + 64);
      if (v23 >= [*(a1 + 40) count] - 1)
      {
        v24 = [v9 workQueue];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_166;
        v29[3] = &unk_279730E50;
        v29[4] = v9;
        v30 = *(a1 + 48);
        objc_copyWeak(&v31, (a1 + 56));
        dispatch_async(v24, v29);

        objc_destroyWeak(&v31);
        v18 = v30;
        goto LABEL_12;
      }

      [v9 _verifyZonesExist:*(a1 + 40) zoneIndex:*(a1 + 64) + 1 completion:*(a1 + 48)];
    }
  }
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_174(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hmd_hmErrorFromCKError];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_175(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] delegate];
  if (v2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_176;
    v9[3] = &unk_279732368;
    v10 = a1[5];
    objc_copyWeak(&v11, a1 + 6);
    [v2 verifyHomeDataFromCloud:v9];
    objc_destroyWeak(&v11);
    v3 = v10;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Delegate is no longer valid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = a1[5];
    v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Delegate is missing" reason:@"Delegate is nil" suggestion:0 underlyingError:0];
    (*(v8 + 2))(v8, 0, 0, v3);
  }
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_176(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_2_177;
    block[3] = &unk_279735D00;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_165(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hmd_hmErrorFromCKError];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_166(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] delegate];
  if (v2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_173;
    v9[3] = &unk_279732368;
    v10 = a1[5];
    objc_copyWeak(&v11, a1 + 6);
    [v2 verifyHomeDataFromCloud:v9];
    objc_destroyWeak(&v11);
    v3 = v10;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[4];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Delegate is no longer valid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = a1[5];
    v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Delegate is missing" reason:@"Delegate is nil" suggestion:0 underlyingError:0];
    (*(v8 + 2))(v8, 0, 0, v3);
  }
}

void __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_173(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMDCloudManager__verifyZonesExist_zoneIndex_completion___block_invoke_2;
    block[3] = &unk_279735D00;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

- (void)_verifyHH2SentinelCloudZoneExist:(id)exist
{
  existCopy = exist;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CBC5F8]);
  v6 = [v5 initWithZoneName:@"HH2-CD9D5508-EAED-4462-A7CB-AFB779F35A71" ownerName:*MEMORY[0x277CBBF28]];
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VerifyZone", "", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HMDCloudManager__verifyHH2SentinelCloudZoneExist___block_invoke;
  v10[3] = &unk_279725C08;
  objc_copyWeak(v13, &location);
  v13[1] = 0xEEEEB0B5B2B2EEEELL;
  v8 = v6;
  v11 = v8;
  v9 = existCopy;
  v12 = v9;
  [(HMDCloudManager *)self __fetchRecordZoneWithID:v8 completionHandler:v10];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __52__HMDCloudManager__verifyHH2SentinelCloudZoneExist___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained[1];
  v9 = v8;
  v10 = *(a1 + 56);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, v9, OS_SIGNPOST_INTERVAL_END, v10, "VerifyZone", "", buf, 2u);
  }

  if (!v6)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 32) zoneName];
      *buf = 138543618;
      v40 = v24;
      v41 = 2114;
      v42 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Verified HH2 sentinel record zone exists: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v18 = [v22 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__HMDCloudManager__verifyHH2SentinelCloudZoneExist___block_invoke_162;
    block[3] = &unk_2797348C0;
    v19 = &v33;
    v33 = *(a1 + 40);
    v20 = block;
    goto LABEL_12;
  }

  IsZoneNotExistError = HMDCloudManagerIsZoneNotExistError(v6);
  v12 = objc_autoreleasePoolPush();
  v13 = WeakRetained;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (IsZoneNotExistError)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 32) zoneName];
      *buf = 138543618;
      v40 = v16;
      v41 = 2114;
      v42 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Verified HH2 sentinel record zone does not exist: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v18 = [v13 workQueue];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __52__HMDCloudManager__verifyHH2SentinelCloudZoneExist___block_invoke_160;
    v37[3] = &unk_2797348C0;
    v19 = &v38;
    v38 = *(a1 + 40);
    v20 = v37;
LABEL_12:
    dispatch_async(v18, v20);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [*(a1 + 32) zoneName];
    [v6 hmd_conciseCKError];
    v28 = v31 = v5;
    v29 = [v28 shortDescription];
    *buf = 138543874;
    v40 = v26;
    v41 = 2114;
    v42 = v27;
    v43 = 2114;
    v44 = v29;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch HH2 sentinel record zone %{public}@: %{public}@", buf, 0x20u);

    v5 = v31;
  }

  objc_autoreleasePoolPop(v12);
  v30 = [v13 workQueue];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __52__HMDCloudManager__verifyHH2SentinelCloudZoneExist___block_invoke_161;
  v34[3] = &unk_279735738;
  v19 = &v36;
  v36 = *(a1 + 40);
  v35 = v6;
  dispatch_async(v30, v34);

  v18 = v35;
LABEL_16:
}

uint64_t __52__HMDCloudManager__verifyHH2SentinelCloudZoneExist___block_invoke_160(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __52__HMDCloudManager__verifyHH2SentinelCloudZoneExist___block_invoke_161(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) hmd_hmErrorFromCKError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

uint64_t __52__HMDCloudManager__verifyHH2SentinelCloudZoneExist___block_invoke_162(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)_resetHomeDataRecordState
{
  legacyZone = [(HMDCloudManager *)self legacyZone];
  [legacyZone setRecordsAvailable:0];

  [(HMDCloudManager *)self setCloudHomeDataRecordExists:0];

  [(HMDCloudManager *)self _stopControllerKeyPollTimer];
}

- (id)_changeTokenFromData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v16 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v16];
    v6 = v16;
    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v10;
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive server change token from token data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Failed to decode client Token data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleAccountStatus:(int64_t)status completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (status == 1)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@iCloud account is available, going to start syncing data from the cloud", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDCloudManager *)selfCopy _createZoneAndFetchChanges:handlerCopy];
    [(HMDCloudManager *)selfCopy registerForPushNotifications];
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v12;
      v19 = 2048;
      statusCopy = status;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@iCloud account status (%tu) is not available", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDCloudManager *)selfCopy setAccountActive:0];
    [(HMDCloudManager *)selfCopy _stopFetchPollTimer];
    [(HMDCloudManager *)selfCopy _stopControllerKeyPollTimer];
    dataSource = [(HMDCloudManager *)selfCopy dataSource];
    -[HMDCloudManager setKeychainSyncEnabled:](selfCopy, "setKeychainSyncEnabled:", [dataSource isKeychainSyncEnabled]);

    if (handlerCopy)
    {
      clientCallbackQueue = [(HMDCloudManager *)selfCopy clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__HMDCloudManager__handleAccountStatus_completionHandler___block_invoke;
      block[3] = &unk_2797348C0;
      v16 = handlerCopy;
      dispatch_async(clientCallbackQueue, block);
    }
  }
}

void __58__HMDCloudManager__handleAccountStatus_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:75];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)updateAccountStatusChanged:(BOOL)changed completionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDCloudManager_updateAccountStatusChanged_completionHandler___block_invoke;
  block[3] = &unk_279733DB0;
  changedCopy = changed;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(workQueue, block);
}

uint64_t __64__HMDCloudManager_updateAccountStatusChanged_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Account status has changed (accountIsActive %@), re-kicking query of current account state", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    return [v7 fetchCurrentAccountStateWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    return [v7 _handleAccountStatus:3 completionHandler:*(a1 + 40)];
  }
}

- (void)_processFetchCompletedWithError:(id)error serverToken:(id)token fetchTransaction:(id)transaction migrationOptions:(unint64_t)options completionHandler:(id)handler moreRecordsComing:(BOOL)coming emptyRecord:(BOOL)record
{
  comingCopy = coming;
  v88 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  tokenCopy = token;
  transactionCopy = transaction;
  handlerCopy = handler;
  cloudZone = [transactionCopy cloudZone];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = cloudZone;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (!errorCopy)
  {
    if (comingCopy)
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v85 = v38;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@More records expected, auto fetch in progress", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      goto LABEL_47;
    }

    if (![(HMDCloudManager *)self decryptionFailed]&& !record)
    {
LABEL_37:
      dataSource = [(HMDCloudManager *)self dataSource];
      if ([dataSource isControllerKeyAvailable])
      {
      }

      else
      {
        cloudHomeDataRecordExists = [(HMDCloudManager *)self cloudHomeDataRecordExists];

        if (cloudHomeDataRecordExists)
        {
          v64 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543362;
            v85 = v67;
            _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_ERROR, "%{public}@We have data in the cloud, but no controller key yet, dropping downloaded record data", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v64);
          if (handlerCopy)
          {
            v68 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:77 userInfo:0];
            clientCallbackQueue = [(HMDCloudManager *)selfCopy2 clientCallbackQueue];
            v78[0] = MEMORY[0x277D85DD0];
            v78[1] = 3221225472;
            v78[2] = __145__HMDCloudManager__processFetchCompletedWithError_serverToken_fetchTransaction_migrationOptions_completionHandler_moreRecordsComing_emptyRecord___block_invoke_156;
            v78[3] = &unk_279735738;
            v79 = v68;
            v80 = handlerCopy;
            v70 = v68;
            dispatch_async(clientCallbackQueue, v78);
          }

          goto LABEL_47;
        }
      }

      if (!handlerCopy)
      {
        goto LABEL_47;
      }

      clientCallbackQueue2 = [(HMDCloudManager *)self clientCallbackQueue];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __145__HMDCloudManager__processFetchCompletedWithError_serverToken_fetchTransaction_migrationOptions_completionHandler_moreRecordsComing_emptyRecord___block_invoke_2;
      v74[3] = &unk_279734380;
      v76 = handlerCopy;
      optionsCopy = options;
      v75 = 0;
      dispatch_async(clientCallbackQueue2, v74);

      v52 = v76;
LABEL_46:

      goto LABEL_47;
    }

    decryptionFailed = [(HMDCloudManager *)self decryptionFailed];
    v54 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v56 = HMFGetOSLogHandle();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);
    if (decryptionFailed)
    {
      if (v57)
      {
        v58 = HMFGetLogIdentifier();
        *buf = 138543362;
        v85 = v58;
        v59 = "%{public}@Resetting the cloud server token since we failed to decrypt the data";
LABEL_33:
        _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, v59, buf, 0xCu);
      }
    }

    else if (v57)
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v58;
      v59 = "%{public}@Resetting the cloud server token since iCloud Switch is off";
      goto LABEL_33;
    }

    objc_autoreleasePoolPop(v54);
    if (v21)
    {
      homeDataObjectID = [v21 homeDataObjectID];
      [transactionCopy removeChangeWithObjectID:homeDataObjectID];

      homeDataV3ObjectID = [v21 homeDataV3ObjectID];
      [transactionCopy removeChangeWithObjectID:homeDataV3ObjectID];
    }

    [transactionCopy setUpdatedServerChangeToken:0];
    [(HMDCloudManager *)selfCopy3 _resetCloudServerTokenData];
    tokenCopy = v73;
    goto LABEL_37;
  }

  v22 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v85 = v25;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Resetting databaseServerChangeToken because legacy fetch failed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  cloudCache = [(HMDCloudManager *)selfCopy4 cloudCache];
  [cloudCache setDatabaseServerChangeToken:0];

  cloudCache2 = [(HMDCloudManager *)selfCopy4 cloudCache];
  [cloudCache2 persistDatabaseServerChangeToken];

  domain = [errorCopy domain];
  v29 = *MEMORY[0x277CBBF50];
  if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
    code = [errorCopy code];

    if (code == 21)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy4;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v85 = v34;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Fetch failed due to expired token, resetting token and re-fetching", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      [(HMDCloudManager *)v32 _resetCloudServerTokenData];
      [(HMDCloudManager *)v32 _fetchLegacyTransaction:transactionCopy forceFetch:0 accountCompletionHandler:0 dataCompletionHandler:handlerCopy];
      goto LABEL_47;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:v29])
  {
    v40 = -[HMDCloudManager _validFetchRetryCKErrorCode:](selfCopy4, "_validFetchRetryCKErrorCode:", [errorCopy code]);

    if (!handlerCopy && v40)
    {
      [(HMDCloudManager *)selfCopy4 _startFetchRetryTimer];
    }
  }

  else
  {
  }

  v41 = objc_autoreleasePoolPush();
  v42 = selfCopy4;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = HMFGetLogIdentifier();
    [errorCopy hmd_conciseCKError];
    v72 = errorCopy;
    v45 = handlerCopy;
    v46 = transactionCopy;
    v47 = v21;
    v49 = v48 = tokenCopy;
    shortDescription = [v49 shortDescription];
    *buf = 138543618;
    v85 = v44;
    v86 = 2112;
    v87 = shortDescription;
    _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Fetch failed with error: %@", buf, 0x16u);

    tokenCopy = v48;
    v21 = v47;
    transactionCopy = v46;
    handlerCopy = v45;
    errorCopy = v72;
  }

  objc_autoreleasePoolPop(v41);
  if (handlerCopy)
  {
    clientCallbackQueue3 = [(HMDCloudManager *)v42 clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __145__HMDCloudManager__processFetchCompletedWithError_serverToken_fetchTransaction_migrationOptions_completionHandler_moreRecordsComing_emptyRecord___block_invoke;
    block[3] = &unk_279735738;
    v83 = handlerCopy;
    v82 = errorCopy;
    dispatch_async(clientCallbackQueue3, block);

    v52 = v83;
    goto LABEL_46;
  }

LABEL_47:
}

- (BOOL)_processFetchedTransaction:(id)transaction
{
  v65 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v64 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received event that home data record has been modified", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  logEventSubmitter = [(HMDCloudManager *)selfCopy logEventSubmitter];
  v10 = [HMDDecryptionCompletedLogEvent decryptionCompletedWithFailure:[(HMDCloudManager *)selfCopy decryptionFailed]];
  [logEventSubmitter submitLogEvent:v10];

  delegate = [(HMDCloudManager *)selfCopy delegate];
  if ([transactionCopy decryptionFailed])
  {
    legacyZone = [(HMDCloudManager *)selfCopy legacyZone];
    [legacyZone setRecordsAvailable:0];

    dataSource = [(HMDCloudManager *)selfCopy dataSource];
    if ([dataSource supportsKeyTransferServer])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Attempting to start key transfer because of failed decryption.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      keyTransferAgent = [dataSource keyTransferAgent];
      [keyTransferAgent beginPairingWithCompletionHandler:0];
    }

    legacyZone2 = [(HMDCloudManager *)selfCopy legacyZone];
    serverChangeToken = [legacyZone2 serverChangeToken];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Resetting the server token data to nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDCloudManager *)v23 _resetCloudServerTokenData];
      [delegate archiveServerToken:0];
    }

    if ([transactionCopy iCloudSwitchStateEnabled])
    {
      watchdogControllerKeyPollTimer = [(HMDCloudManager *)selfCopy watchdogControllerKeyPollTimer];
      if (watchdogControllerKeyPollTimer && (+[HMDDeviceSetupManager sharedManager](HMDDeviceSetupManager, "sharedManager"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isRunning], v27, watchdogControllerKeyPollTimer, v28))
      {
        [(HMDCloudManager *)selfCopy _startControllerKeyPollTimer];
      }

      else
      {
        currentBackoffTimerValuesInMinutes = [(HMDCloudManager *)selfCopy currentBackoffTimerValuesInMinutes];
        v42 = currentBackoffTimerValuesInMinutes == 0;

        if (v42)
        {
          v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
          [(HMDCloudManager *)selfCopy setCurrentBackoffTimerValuesInMinutes:v43];

          for (i = 0; i != 5; ++i)
          {
            currentBackoffTimerValuesInMinutes2 = [(HMDCloudManager *)selfCopy currentBackoffTimerValuesInMinutes];
            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sBackoffTimerValuesInMinutes[i]];
            [currentBackoffTimerValuesInMinutes2 addObject:v46];
          }
        }

        [(HMDCloudManager *)selfCopy _startControllerKeyPollTimerWithBackoff];
      }
    }

    v47 = +[HMDDeviceSetupManager sharedManager];
    followUpManager = [v47 followUpManager];
    [followUpManager startAdvertising:1];

    v49 = objc_autoreleasePoolPush();
    v50 = selfCopy;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v52;
      _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Decryption has failed, updating to cloud data sync filter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v49);
    dataDecryptionFailedHandler = [(HMDCloudManager *)v50 dataDecryptionFailedHandler];

    if (dataDecryptionFailedHandler)
    {
      dataDecryptionFailedHandler2 = [(HMDCloudManager *)v50 dataDecryptionFailedHandler];
      dataDecryptionFailedHandler2[2]();
    }

    cloudDataSyncStateFilter = [(HMDCloudManager *)v50 cloudDataSyncStateFilter];
    [cloudDataSyncStateFilter setDecryptionFailed:1];

    LOBYTE(controllerIdentifierChanged) = 0;
  }

  else
  {
    controllerIdentifierChanged = [transactionCopy controllerIdentifierChanged];
    if (controllerIdentifierChanged)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Controller identifier has changed, erasing local home data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v34 = dispatch_group_create();
      dispatch_group_enter(v34);
      objc_initWeak(buf, v31);
      homeManagerZone = [(HMDCloudManager *)v31 homeManagerZone];
      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = __46__HMDCloudManager__processFetchedTransaction___block_invoke;
      v60 = &unk_279725BE0;
      objc_copyWeak(&v62, buf);
      v36 = v34;
      v61 = v36;
      [(HMDCloudManager *)v31 _verifyAndRemoveZone:homeManagerZone completionHandler:&v57];

      dispatch_group_wait(v36, 0xFFFFFFFFFFFFFFFFLL);
      objc_destroyWeak(&v62);
      objc_destroyWeak(buf);
    }

    else
    {
      [delegate reloadHomeDataFromLocalStore:1];
    }

    [(HMDCloudManager *)selfCopy setCurrentBackoffTimerValuesInMinutes:0, v57, v58, v59, v60];
    v37 = +[HMDDeviceSetupManager sharedManager];
    followUpManager2 = [v37 followUpManager];
    [followUpManager2 stopAdvertising:1];

    if ([(HMDCloudManager *)selfCopy decryptionFailed])
    {
      [delegate fetchAllZones];
    }

    legacyZone3 = [(HMDCloudManager *)selfCopy legacyZone];
    [legacyZone3 setRecordsAvailable:1];

    cloudDataSyncStateFilter2 = [(HMDCloudManager *)selfCopy cloudDataSyncStateFilter];
    [cloudDataSyncStateFilter2 setDecryptionFailed:0];

    dataSource = [MEMORY[0x277CFEC78] systemStore];
    [dataSource ensureControllerKeyExistsForAllViews];
  }

  return controllerIdentifierChanged;
}

void __46__HMDCloudManager__processFetchedTransaction___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained delegate];
    if (a2)
    {
      v9 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46__HMDCloudManager__processFetchedTransaction___block_invoke_2;
      v13[3] = &unk_279731988;
      v10 = &v14;
      objc_copyWeak(&v14, (a1 + 40));
      v13[4] = v8;
      v13[5] = *(a1 + 32);
      [v7 _removeAllHomeZonesCompletionHandler:v13];
    }

    else
    {
      v9 = v11;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __46__HMDCloudManager__processFetchedTransaction___block_invoke_3;
      v11[3] = &unk_279731988;
      v10 = &v12;
      objc_copyWeak(&v12, (a1 + 40));
      v11[4] = v8;
      v11[5] = *(a1 + 32);
      [v7 _verifyAndRemoveAllHomeZonesCompletionHandler:v11];
    }

    objc_destroyWeak(v10);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __46__HMDCloudManager__processFetchedTransaction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) eraseLocalHomeData];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __46__HMDCloudManager__processFetchedTransaction___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) eraseLocalHomeData];
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_fetchLegacyTransaction:(id)transaction forceFetch:(BOOL)fetch accountCompletionHandler:(id)handler dataCompletionHandler:(id)completionHandler
{
  fetchCopy = fetch;
  v133[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  dataSource = [(HMDCloudManager *)self dataSource];
  keyTransferAgent = [dataSource keyTransferAgent];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = keyTransferAgent;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v71 = v13;
  progressState = [v13 progressState];

  if (progressState)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Key transfer in progress. Not fetching from the cloud.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v73 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:12 userInfo:0];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v73);
    }

    if (completionHandlerCopy)
    {
      completionHandlerCopy[2]();
    }
  }

  else
  {
    cloudZone = [transactionCopy cloudZone];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = cloudZone;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v73 = v21;
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    v25 = v24;
    if (v21)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = v26;
        v28 = @"existing";
        if (!handlerCopy)
        {
          v28 = @"changed";
        }

        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Fetching %@ records from cloud", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      cloudDataSyncStateFilter = [(HMDCloudManager *)selfCopy2 cloudDataSyncStateFilter];
      [transactionCopy setICloudSwitchStateEnabled:{objc_msgSend(cloudDataSyncStateFilter, "isiCloudSwitchEnabled")}];

      v70 = objc_alloc_init(MEMORY[0x277CBC3A0]);
      if (fetchCopy)
      {
        [v70 setPreviousServerChangeToken:0];
      }

      else
      {
        legacyZone = [(HMDCloudManager *)selfCopy2 legacyZone];
        serverChangeToken = [legacyZone serverChangeToken];
        [v70 setPreviousServerChangeToken:serverChangeToken];
      }

      previousServerChangeToken = [v70 previousServerChangeToken];
      v68 = previousServerChangeToken == 0;

      v34 = objc_autoreleasePoolPush();
      val = selfCopy2;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        previousServerChangeToken2 = [v70 previousServerChangeToken];
        v38 = [previousServerChangeToken2 debugDescription];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v38;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Fetching legacy data with current server token: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      if (([transactionCopy iCloudSwitchStateEnabled] & 1) == 0)
      {
        v39 = objc_autoreleasePoolPush();
        v40 = val;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v42;
          _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Setting desired keys to empty since iCloud Switch is off", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
        [v70 setDesiredKeys:MEMORY[0x277CBEBF8]];
      }

      v43 = objc_alloc(MEMORY[0x277CBC3B8]);
      legacyZone2 = [(HMDCloudManager *)val legacyZone];
      v45 = [legacyZone2 zone];
      zoneID = [v45 zoneID];
      v133[0] = zoneID;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:1];
      legacyZone3 = [(HMDCloudManager *)val legacyZone];
      v49 = [legacyZone3 zone];
      zoneID2 = [v49 zoneID];
      v131 = zoneID2;
      v132 = v70;
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
      v52 = [v43 initWithRecordZoneIDs:v47 configurationsByRecordZoneID:v51];

      [v52 setFetchAllChanges:1];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v130 = 0;
      v123[0] = 0;
      v123[1] = v123;
      v123[2] = 0x2020000000;
      v124 = 0;
      objc_initWeak(&location, val);
      v116[0] = MEMORY[0x277D85DD0];
      v116[1] = 3221225472;
      v116[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke;
      v116[3] = &unk_279725AF0;
      objc_copyWeak(&v121, &location);
      v53 = v73;
      v117 = v53;
      v119 = buf;
      v54 = transactionCopy;
      v118 = v54;
      v120 = v123;
      [v52 setRecordChangedBlock:v116];
      v114[0] = 0;
      v114[1] = v114;
      v114[2] = 0x2020000000;
      v115 = 0;
      v112[0] = 0;
      v112[1] = v112;
      v112[2] = 0x2020000000;
      v113 = 0;
      v110[0] = 0;
      v110[1] = v110;
      v110[2] = 0x2020000000;
      v111 = 0;
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_142;
      v103[3] = &unk_279725B18;
      objc_copyWeak(&v109, &location);
      v55 = v53;
      v104 = v55;
      v106 = v114;
      v107 = v112;
      v108 = v110;
      v56 = v54;
      v105 = v56;
      [v52 setRecordWithIDWasDeletedBlock:v103];
      v101[0] = 0;
      v101[1] = v101;
      v101[2] = 0x2020000000;
      v102 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_143;
      aBlock[3] = &unk_279725B68;
      objc_copyWeak(&v99, &location);
      v94 = v114;
      v95 = v112;
      v57 = v56;
      v90 = v57;
      v58 = v55;
      v100 = v68;
      v91 = v58;
      v96 = buf;
      v59 = handlerCopy;
      v92 = v59;
      v97 = v110;
      v60 = completionHandlerCopy;
      v93 = v60;
      v98 = v123;
      v61 = _Block_copy(aBlock);
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_150;
      v85[3] = &unk_279725B90;
      objc_copyWeak(&v88, &location);
      v87 = v101;
      v62 = v61;
      v86 = v62;
      [v52 setRecordZoneFetchCompletionBlock:v85];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_151;
      v76[3] = &unk_279725BB8;
      objc_copyWeak(&v84, &location);
      v81 = v101;
      v79 = v59;
      v77 = v57;
      v78 = v58;
      v82 = v110;
      v83 = v114;
      v80 = v60;
      [v52 setFetchRecordZoneChangesCompletionBlock:v76];
      v63 = objc_autoreleasePoolPush();
      v64 = val;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = HMFGetLogIdentifier();
        operationID = [v52 operationID];
        *v125 = 138543618;
        v126 = v66;
        v127 = 2112;
        v128 = operationID;
        _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_INFO, "%{public}@[Legacy] Fetching record changes operation with ID: %@", v125, 0x16u);
      }

      objc_autoreleasePoolPop(v63);
      [(HMDCloudManager *)v64 __addCKDatabaseOperation:v52];

      objc_destroyWeak(&v84);
      objc_destroyWeak(&v88);

      objc_destroyWeak(&v99);
      _Block_object_dispose(v101, 8);

      objc_destroyWeak(&v109);
      _Block_object_dispose(v110, 8);
      _Block_object_dispose(v112, 8);
      _Block_object_dispose(v114, 8);

      objc_destroyWeak(&v121);
      objc_destroyWeak(&location);
      _Block_object_dispose(v123, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v30;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Legacy zone does not exist, cannot fetch", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v70 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v70);
      }

      if (completionHandlerCopy)
      {
        completionHandlerCopy[2]();
      }
    }
  }
}

void __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v45 = 138543618;
    v46 = v8;
    v47 = 2048;
    v48 = [v3 size];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[HomeKit Data Usage Metric Log] Fetched record with size (Legacy recordChangedBlock): %lu", &v45, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v6 logEventSubmitter];
  v10 = [HMDRecordChangedLogEvent legacyRecordChanged:v3];
  [v9 submitLogEvent:v10];

  v11 = [v3 recordID];
  v12 = [*(a1 + 32) homeDataRecordID];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Version 0 exists", &v45, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = *(a1 + 48);
LABEL_12:
    *(*(v18 + 8) + 24) = 1;
    goto LABEL_13;
  }

  v19 = [v3 recordID];
  v20 = [*(a1 + 32) homeDataV3RecordID];
  v21 = [v19 isEqual:v20];

  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v6;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Version 3 exists", &v45, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v18 = *(a1 + 56);
    goto LABEL_12;
  }

  v33 = [v3 recordID];
  v34 = [*(a1 + 32) metadataRecordID];
  v35 = [v33 isEqual:v34];

  v36 = objc_autoreleasePoolPush();
  v37 = v6;
  v38 = HMFGetOSLogHandle();
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
  if (!v35)
  {
    if (v39)
    {
      v41 = HMFGetLogIdentifier();
      v42 = [v3 recordType];
      v43 = [v3 recordID];
      v44 = [v43 recordName];
      v45 = 138543874;
      v46 = v41;
      v47 = 2112;
      v48 = v42;
      v49 = 2112;
      v50 = v44;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Ignoring unknown legacy record %@/%@", &v45, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    goto LABEL_14;
  }

  if (v39)
  {
    v40 = HMFGetLogIdentifier();
    v45 = 138543362;
    v46 = v40;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Metadata exists", &v45, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
LABEL_13:
  [*(a1 + 40) addChangeWithRecord:v3];
LABEL_14:
  v26 = objc_autoreleasePoolPush();
  v27 = v6;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [v3 recordType];
    v31 = [v3 recordID];
    v32 = [v31 recordName];
    v45 = 138543874;
    v46 = v29;
    v47 = 2112;
    v48 = v30;
    v49 = 2112;
    v50 = v32;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Received record changed event for record %@/%@", &v45, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
LABEL_17:
}

void __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_142(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v5 recordName];
      v40 = 138543618;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Received deleted record changed event for record %@", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 32) homeDataRecordID];
    v14 = [v5 isEqual:v13];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v9;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v40 = 138543362;
        v41 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Version 0 data was deleted", &v40, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = *(a1 + 48);
    }

    else
    {
      v20 = [*(a1 + 32) homeDataV3RecordID];
      v21 = [v5 isEqual:v20];

      if (!v21)
      {
        v26 = [*(a1 + 32) metadataRecordID];
        v27 = [v5 isEqual:v26];

        if (v27)
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v9;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            v40 = 138543362;
            v41 = v31;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Metadata record was deleted in the cloud", &v40, 0xCu);
          }

          objc_autoreleasePoolPop(v28);
          *(*(*(a1 + 64) + 8) + 24) = 1;
          v32 = *(a1 + 40);
          v33 = [*(a1 + 32) metadataObjectID];
          if ([v32 doesRecordExistInCacheWithObjectID:v33])
          {
            v34 = [v29 cloudMetadataDeletedNotificationHandler];

            if (!v34)
            {
              goto LABEL_13;
            }

            v35 = objc_autoreleasePoolPush();
            v36 = v29;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              v40 = 138543362;
              v41 = v38;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Invoking cloud metadata deleted notification block", &v40, 0xCu);
            }

            objc_autoreleasePoolPop(v35);
            v33 = [v36 clientCallbackQueue];
            v39 = [v36 cloudMetadataDeletedNotificationHandler];
            dispatch_async(v33, v39);
          }
        }

LABEL_13:
        [*(a1 + 40) addChangeWithDeletedRecordID:v5];
        goto LABEL_14;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = v9;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v40 = 138543362;
        v41 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Version 3 data was deleted", &v40, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v19 = *(a1 + 56);
    }

    *(*(v19 + 8) + 24) = 1;
    goto LABEL_13;
  }

LABEL_14:
}

void __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_143(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained logEventSubmitter];
    v12 = [HMDCloudSyncLegacyFetchLogEvent fetchCompletedWithError:v8];
    [v11 submitLogEvent:v12];

    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v42 = 0;
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v13 = dispatch_group_create();
      dispatch_group_enter(v13);
      v14 = *(*(*(a1 + 72) + 8) + 24);
      v15 = *(a1 + 32);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_2;
      v38[3] = &unk_2797259D8;
      v40 = v41;
      v16 = v13;
      v39 = v16;
      [v10 _forceCleanCloud:v14 fetchTransaction:v15 completionHandler:v38];
      dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    }

    v17 = [v10 workQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_3;
    v23[3] = &unk_279725B40;
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = v10;
    v36 = *(a1 + 112);
    v18 = *(a1 + 64);
    v31 = *(a1 + 80);
    v32 = v18;
    v19 = *(a1 + 48);
    v20 = *(a1 + 88);
    v29 = v19;
    v33 = v20;
    v27 = v8;
    v28 = v7;
    v34 = v41;
    v21 = *(a1 + 56);
    v22 = *(a1 + 96);
    v30 = v21;
    v35 = v22;
    v37 = a3;
    dispatch_async(v17, v23);

    _Block_object_dispose(v41, 8);
  }
}

void __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_150(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = WeakRetained;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v19 = v32 = v13;
      [v11 zoneName];
      v31 = v14;
      v20 = a5;
      v21 = v12;
      v23 = v22 = v11;
      *buf = 138543618;
      v34 = v19;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetch record completion for zone %@", buf, 0x16u);

      v11 = v22;
      v12 = v21;
      a5 = v20;
      v14 = v31;

      v13 = v32;
    }

    objc_autoreleasePoolPop(v16);
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v17;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v27 = v13;
        v28 = v12;
        v30 = v29 = v11;
        *buf = 138543362;
        v34 = v30;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Completion handler for fetch has already been called", buf, 0xCu);

        v11 = v29;
        v12 = v28;
        v13 = v27;
      }

      objc_autoreleasePoolPop(v24);
    }

    else
    {
      (*(*(a1 + 32) + 16))();
      if ((a5 & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }
}

void __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_151(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v5 = *(*(a1 + 64) + 8);
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      v6 = v3;
      if (!v6)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = WeakRetained;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543362;
          v40 = v10;
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Legacy zone fetch failed to return data, nothing to process", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v7);
        v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      }

      v11 = objc_autoreleasePoolPush();
      v12 = WeakRetained;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v6 hmd_conciseCKError];
        v16 = [v15 shortDescription];
        *buf = 138543618;
        v40 = v14;
        v41 = 2112;
        v42 = v16;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not fetch zone due to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v17 = objc_autoreleasePoolPush();
      v18 = v12;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Resetting databaseServerChangeToken because fetch failed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [v18 cloudCache];
      [v21 setDatabaseServerChangeToken:0];

      v22 = [v18 cloudCache];
      [v22 persistDatabaseServerChangeToken];

      if (*(a1 + 48))
      {
        v23 = *(a1 + 32);
        v24 = [*(a1 + 40) metadataObjectID];
        if ([v23 doesRecordExistWithObjectID:v24])
        {
          v25 = *(*(*(a1 + 72) + 8) + 24) ^ 1;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25 & 1;
        v27 = *(a1 + 32);
        v28 = [*(a1 + 40) homeDataObjectID];
        if ([v27 doesRecordExistWithObjectID:v28])
        {
          v29 = *(*(*(a1 + 80) + 8) + 24) ^ 1;
        }

        else
        {
          v29 = 0;
        }

        [v18 setCloudHomeDataRecordExists:v29 & 1];

        v30 = [v18 clientCallbackQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_152;
        block[3] = &unk_279732430;
        v37 = *(a1 + 48);
        block[4] = v18;
        v38 = v26;
        v36 = v6;
        dispatch_async(v30, block);
      }

      if (*(a1 + 56))
      {
        v31 = [v18 clientCallbackQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_2_153;
        v32[3] = &unk_279735738;
        v34 = *(a1 + 56);
        v33 = v6;
        dispatch_async(v31, v32);
      }
    }
  }
}

void __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_152(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) cloudHomeDataRecordExists];
  v4 = *(a1 + 56);
  v5 = [*(a1 + 40) hmd_hmErrorFromCKError];
  (*(v2 + 16))(v2, v3, v4, v5);
}

void __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_3(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) homeDataObjectID];
  v4 = [v2 changeWithObjectID:v3];

  if ([v4 isDeleted])
  {
    [*(a1 + 48) _resetHomeDataRecordState];
  }

  v5 = *(*(*(a1 + 88) + 8) + 24);
  if (*(a1 + 128) == 1)
  {
    [*(a1 + 48) setCloudHomeDataRecordExists:v5];
    if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) homeDataObjectID];
      LODWORD(v6) = [v6 doesRecordExistWithObjectID:v7];

      if (v6)
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) homeDataRecordID];
        [v8 setDeleteAsProcessedWithRecordID:v9];
      }
    }
  }

  else if (v5)
  {
    [*(a1 + 48) setCloudHomeDataRecordExists:1];
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) homeDataObjectID];
    if ([v10 doesRecordExistWithObjectID:v11])
    {
      v12 = *(*(*(a1 + 96) + 8) + 24) ^ 1;
    }

    else
    {
      v12 = 0;
    }

    [*(a1 + 48) setCloudHomeDataRecordExists:v12 & 1];
  }

  v13 = [*(a1 + 48) dataSource];
  if (*(a1 + 72))
  {
    v14 = *(a1 + 32);
    v15 = [*(a1 + 40) metadataObjectID];
    if ([v14 doesRecordExistWithObjectID:v15])
    {
      v16 = *(*(*(a1 + 104) + 8) + 24);

      if (v16 != 1)
      {
        v17 = 1;
LABEL_21:
        if (([v13 isControllerKeyAvailable] & 1) == 0 && objc_msgSend(*(a1 + 48), "keychainSyncEnabled"))
        {
          [*(a1 + 48) _startControllerKeyPollTimer];
        }

        v22 = [*(a1 + 48) clientCallbackQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_145;
        block[3] = &unk_279732430;
        v23 = *(a1 + 72);
        v24 = *(a1 + 48);
        v25 = *(a1 + 56);
        v74 = v23;
        block[4] = v24;
        v75 = v17;
        v73 = v25;
        dispatch_async(v22, block);

        goto LABEL_25;
      }
    }

    else
    {
    }

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 48);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch metadata record during initial fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
    goto LABEL_21;
  }

LABEL_25:
  v26 = [v13 dataMigrationOptions];
  [*(a1 + 32) setUpdatedServerChangeToken:*(a1 + 64)];
  v27 = [*(a1 + 48) legacyZone];
  v28 = [v27 serverChangeToken];
  v29 = HMFEqualObjects();

  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    [*(a1 + 48) _resetCloudServerTokenData];
    [*(a1 + 32) setUpdatedServerChangeToken:0];
    [*(a1 + 32) setOsTransaction:0];
    if (!*(a1 + 80))
    {
      goto LABEL_44;
    }

    v30 = [*(a1 + 48) clientCallbackQueue];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_2_146;
    v70[3] = &unk_2797348C0;
    v71 = *(a1 + 80);
    dispatch_async(v30, v70);

    v31 = v71;
    goto LABEL_43;
  }

  if ((*(*(*(a1 + 88) + 8) + 24) & 1) != 0 || *(*(*(a1 + 120) + 8) + 24) == 1)
  {
    v32 = [*(a1 + 48) _processFetchedTransaction:*(a1 + 32)];
    v33 = *(a1 + 48);
    if (!v32)
    {
      v35 = *(a1 + 56);
      v36 = *(a1 + 64);
      v37 = *(a1 + 32);
      v65 = v13;
      v38 = v4;
      v39 = v29;
      v40 = *(a1 + 80);
      v41 = *(a1 + 129);
      LOBYTE(v64) = [v37 iCloudSwitchStateEnabled] ^ 1;
      v42 = v40;
      v29 = v39;
      v4 = v38;
      v13 = v65;
      [v33 _processFetchCompletedWithError:v35 serverToken:v36 fetchTransaction:v37 migrationOptions:v26 completionHandler:v42 moreRecordsComing:v41 emptyRecord:v64];
      goto LABEL_44;
    }

    [*(a1 + 48) _resetCloudServerTokenData];
    [*(a1 + 32) setUpdatedServerChangeToken:0];
    [*(a1 + 32) setOsTransaction:0];
    if (!*(a1 + 80))
    {
      goto LABEL_44;
    }

    v34 = [*(a1 + 48) clientCallbackQueue];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_3_147;
    v68[3] = &unk_2797348C0;
    v69 = *(a1 + 80);
    dispatch_async(v34, v68);

    v31 = v69;
    goto LABEL_43;
  }

  if (([*(a1 + 32) iCloudSwitchStateEnabled] & 1) == 0)
  {
    [*(a1 + 32) setUpdatedServerChangeToken:0];
    [*(a1 + 48) _resetCloudServerTokenData];
  }

  if (([*(a1 + 48) cloudHomeDataRecordExists] & 1) == 0)
  {
    v43 = [*(a1 + 48) cloudDataSyncStateFilter];
    v44 = [v43 isLocalDataDecryptionFailed];

    if (v44)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = *(a1 + 48);
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v79 = v48;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@No data in the cloud and local decryption has failed, start reset timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v45);
      v49 = [*(a1 + 48) cloudDataSyncStateFilter];
      [v49 startDataConfigResetTimers];
    }
  }

  if (*(a1 + 80))
  {
    v50 = [*(a1 + 48) clientCallbackQueue];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_148;
    v66[3] = &unk_2797348C0;
    v67 = *(a1 + 80);
    dispatch_async(v50, v66);

    v31 = v67;
LABEL_43:
  }

LABEL_44:
  if ([*(a1 + 48) decryptionFailed])
  {
    v51 = objc_autoreleasePoolPush();
    v52 = *(a1 + 48);
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138543362;
      v79 = v54;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Decryption from V3 zone failed, do not notify of successful fetch, reset first fetch run and db query run", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v51);
    [*(a1 + 48) setFirstV3FetchRun:0];
    [*(a1 + 48) setFirstDBQueryRun:0];
  }

  else if (([*(a1 + 48) isFirstV3FetchRun] & 1) == 0 && !*(a1 + 56))
  {
    v55 = objc_autoreleasePoolPush();
    v56 = *(a1 + 48);
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      v59 = HMFBooleanToString();
      *buf = 138543618;
      v79 = v58;
      v80 = 2112;
      v81 = v59;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Zone ready determined for legacy zone; didServerTokenChange: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v55);
    [*(a1 + 48) setFirstV3FetchRun:1];
    v60 = [MEMORY[0x277CCAB98] defaultCenter];
    v76[0] = @"HMDCR.stc";
    v61 = [MEMORY[0x277CCABB0] numberWithBool:v29 ^ 1u];
    v76[1] = @"HMDCR.de";
    v77[0] = v61;
    v62 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 48), "cloudHomeDataRecordExists")}];
    v77[1] = v62;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
    [v60 postNotificationName:@"HMDCloudZoneReadyNotification" object:0 userInfo:v63];
  }
}

void __101__HMDCloudManager__fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_145(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) cloudHomeDataRecordExists];
  v4 = *(a1 + 56);
  v5 = [*(a1 + 40) hmd_hmErrorFromCKError];
  (*(v2 + 16))(v2, v3, v4, v5);
}

- (void)fetchLegacyTransaction:(id)transaction forceFetch:(BOOL)fetch accountCompletionHandler:(id)handler dataCompletionHandler:(id)completionHandler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HMDCloudManager_fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke;
  block[3] = &unk_279725AC8;
  v19 = handlerCopy;
  v20 = completionHandlerCopy;
  block[4] = self;
  v18 = transactionCopy;
  fetchCopy = fetch;
  v14 = transactionCopy;
  v15 = completionHandlerCopy;
  v16 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __100__HMDCloudManager_fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountActive];
  v3 = *(a1 + 48);
  if ((v2 & 1) != 0 || v3)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = *(a1 + 56);

    [v9 _fetchLegacyTransaction:v10 forceFetch:v11 accountCompletionHandler:v3 dataCompletionHandler:v12];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@User account is not active, failing request fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (*(a1 + 56))
    {
      v8 = [*(a1 + 32) clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__HMDCloudManager_fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_133;
      block[3] = &unk_2797348C0;
      v14 = *(a1 + 56);
      dispatch_async(v8, block);
    }
  }
}

void __100__HMDCloudManager_fetchLegacyTransaction_forceFetch_accountCompletionHandler_dataCompletionHandler___block_invoke_133(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:75];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)setAccountActiveUpdateCallback:(id)callback
{
  callbackCopy = callback;
  workQueue = [(HMDCloudManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDCloudManager_setAccountActiveUpdateCallback___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(workQueue, v7);
}

- (void)setDataDecryptionFailedCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMDCloudManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDCloudManager_setDataDecryptionFailedCompletionBlock___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)setControllerKeyAvailableNotificationBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMDCloudManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDCloudManager_setControllerKeyAvailableNotificationBlock___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)setCloudMetadataDeletedNotificationBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMDCloudManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDCloudManager_setCloudMetadataDeletedNotificationBlock___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)setCloudDataDeletedNotificationBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMDCloudManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDCloudManager_setCloudDataDeletedNotificationBlock___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)setDataAvailableFromCloudCompletionBlock:(id)block
{
  blockCopy = block;
  workQueue = [(HMDCloudManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDCloudManager_setDataAvailableFromCloudCompletionBlock___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)fetchCurrentAccountStateWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Start query for container account status", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  logger = selfCopy->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AccountStatus", "", buf, 2u);
  }

  objc_initWeak(buf, selfCopy);
  container = [(HMDCloudManager *)selfCopy container];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMDCloudManager_fetchCurrentAccountStateWithCompletionHandler___block_invoke;
  v12[3] = &unk_279725AA0;
  objc_copyWeak(v14, buf);
  v14[1] = 0xEEEEB0B5B2B2EEEELL;
  v11 = handlerCopy;
  v13 = v11;
  [container accountStatusWithCompletionHandler:v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __65__HMDCloudManager_fetchCurrentAccountStateWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 hmd_conciseCKError];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v21 = v10;
      v22 = 2048;
      v23 = a2;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Query for container account status completed with status (%lu) and error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = v8[1];
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v14, OS_SIGNPOST_INTERVAL_END, v15, "AccountStatus", "", buf, 2u);
    }

    v16 = [v8 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDCloudManager_fetchCurrentAccountStateWithCompletionHandler___block_invoke_131;
    block[3] = &unk_279734380;
    block[4] = v8;
    v19 = a2;
    v18 = *(a1 + 32);
    dispatch_async(v16, block);
  }
}

- (id)_serverTokenData
{
  legacyZone = [(HMDCloudManager *)self legacyZone];
  serverChangeToken = [legacyZone serverChangeToken];

  if (serverChangeToken)
  {
    v5 = MEMORY[0x277CCAAB0];
    legacyZone2 = [(HMDCloudManager *)self legacyZone];
    serverChangeToken2 = [legacyZone2 serverChangeToken];
    v8 = [v5 archivedDataWithRootObject:serverChangeToken2 requiringSecureCoding:1 error:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSData)serverTokenData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__40007;
  v11 = __Block_byref_object_dispose__40008;
  v12 = 0;
  workQueue = [(HMDCloudManager *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__HMDCloudManager_serverTokenData__block_invoke;
  v6[3] = &unk_279734898;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __34__HMDCloudManager_serverTokenData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _serverTokenData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)decryptionFailed
{
  cloudDataSyncStateFilter = [(HMDCloudManager *)self cloudDataSyncStateFilter];
  decryptionFailed = [cloudDataSyncStateFilter decryptionFailed];

  return decryptionFailed;
}

- (void)_resetCloudCache:(id)cache
{
  v17 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Cloud cache has been reset", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  cloudCache = [(HMDCloudManager *)selfCopy cloudCache];
  [cloudCache deleteAllZones];

  objc_initWeak(buf, selfCopy);
  cloudCache2 = [(HMDCloudManager *)selfCopy cloudCache];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__HMDCloudManager__resetCloudCache___block_invoke;
  v12[3] = &unk_279734508;
  objc_copyWeak(&v14, buf);
  v11 = cacheCopy;
  v13 = v11;
  [cloudCache2 createAndFetchZonesFromBackingStore:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __36__HMDCloudManager__resetCloudCache___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateServerTokenStatusOnCloudFilter];
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Completed resetting cloud cached with error %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (void)resetCloudCache:(id)cache
{
  cacheCopy = cache;
  workQueue = [(HMDCloudManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HMDCloudManager_resetCloudCache___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = cacheCopy;
  v6 = cacheCopy;
  dispatch_async(workQueue, v7);
}

- (void)_resetCloudServerTokenData
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Cloud server token has been reset", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  legacyZone = [(HMDCloudManager *)selfCopy legacyZone];
  [legacyZone setServerChangeToken:0];

  cloudCache = [(HMDCloudManager *)selfCopy cloudCache];
  [cloudCache setDatabaseServerChangeToken:0];

  cloudCache2 = [(HMDCloudManager *)selfCopy cloudCache];
  [cloudCache2 persistDatabaseServerChangeToken];

  [(HMDCloudManager *)selfCopy _updateServerTokenStatusOnCloudFilter];
}

- (void)resetCloudServerTokenData:(id)data
{
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDCloudManager_resetCloudServerTokenData___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_resetCloudDataAndDeleteMetadataForCurrentAccount:(BOOL)account completionHandler:(id)handler
{
  accountCopy = account;
  v34[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = MEMORY[0x277CBEB18];
  legacyZone = [(HMDCloudManager *)self legacyZone];
  homeDataRecordID = [legacyZone homeDataRecordID];
  v34[0] = homeDataRecordID;
  legacyZone2 = [(HMDCloudManager *)self legacyZone];
  homeDataV3RecordID = [legacyZone2 homeDataV3RecordID];
  v34[1] = homeDataV3RecordID;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v13 = [v7 arrayWithArray:v12];

  if (accountCopy)
  {
    legacyZone3 = [(HMDCloudManager *)self legacyZone];
    metadataRecordID = [legacyZone3 metadataRecordID];
    [v13 addObject:metadataRecordID];
  }

  v16 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:v13];
  [v16 setSavePolicy:1];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke;
  v29[3] = &unk_279725A28;
  v29[4] = self;
  [v16 setPerRecordProgressBlock:v29];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_126;
  v26[3] = &unk_279725A50;
  objc_copyWeak(&v27, &location);
  [v16 setPerRecordCompletionBlock:v26];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_127;
  v23[3] = &unk_279725A78;
  objc_copyWeak(&v25, &location);
  v17 = handlerCopy;
  v24 = v17;
  [v16 setModifyRecordsCompletionBlock:v23];
  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    operationID = [v16 operationID];
    *buf = 138543618;
    v31 = v21;
    v32 = 2112;
    v33 = operationID;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Adding deleting operation with ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [(HMDCloudManager *)selfCopy _stopFetchRetryTimer];
  [(HMDCloudManager *)selfCopy __addCKDatabaseOperation:v16];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke(uint64_t a1, void *a2, double a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 recordType];
    v11 = [v5 recordID];
    v12 = [v11 recordName];
    v13 = 138544130;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v12;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Record delete %@/%@ progress %f", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v6);
}

void __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_126(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v6 hmd_conciseCKError];
        v14 = [v13 shortDescription];
        v16 = 138543618;
        v17 = v12;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to delete record in the server, %@", &v16, 0x16u);
LABEL_7:
      }
    }

    else if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v5 recordType];
      v14 = [v5 recordID];
      v15 = [v14 recordName];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Deleted home data record %@/%@", &v16, 0x20u);

      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v8);
  }
}

void __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_127(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_2;
    v11[3] = &unk_279734578;
    v12 = v7;
    v13 = v9;
    v15 = *(a1 + 32);
    v14 = v6;
    dispatch_async(v10, v11);
  }
}

void __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_2(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = a1[5];
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [a1[4] hmd_conciseCKError];
      v7 = [v6 shortDescription];
      *buf = 138543618;
      v41 = v5;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Could not delete records due to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (a1[7])
    {
      v8 = [a1[5] clientCallbackQueue];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_128;
      v36[3] = &unk_279735738;
      v9 = &v38;
      v38 = a1[7];
      v10 = &v37;
      v37 = a1[4];
      v11 = v36;
      goto LABEL_21;
    }

    return;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = a1[6];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v15 = *v33;
  do
  {
    v16 = 0;
    do
    {
      if (*v33 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v32 + 1) + 8 * v16);
      v18 = [a1[5] legacyZone];
      v19 = [v18 homeDataRecordID];
      if ([v17 isEqual:v19])
      {
      }

      else
      {
        v20 = [a1[5] legacyZone];
        v21 = [v20 homeDataV3RecordID];
        v22 = [v17 isEqual:v21];

        if (!v22)
        {
          goto LABEL_15;
        }
      }

      v23 = [a1[5] legacyZone];
      [v23 setRecordsAvailable:0];

      [a1[5] setCloudHomeDataRecordExists:0];
LABEL_15:
      ++v16;
    }

    while (v14 != v16);
    v14 = [v12 countByEnumeratingWithState:&v32 objects:v39 count:16];
  }

  while (v14);
LABEL_17:

  v24 = objc_autoreleasePoolPush();
  v25 = a1[5];
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [a1[6] count];
    *buf = 138543618;
    v41 = v27;
    v42 = 2048;
    v43 = v28;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Deleted %ld records", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  [a1[5] _resetCloudServerTokenData];
  if (a1[7])
  {
    v8 = [a1[5] clientCallbackQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_129;
    v29[3] = &unk_279735738;
    v9 = &v31;
    v31 = a1[7];
    v10 = &v30;
    v30 = a1[4];
    v11 = v29;
LABEL_21:
    dispatch_async(v8, v11);
  }
}

void __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_128(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hmd_hmErrorFromCKError];
  (*(v1 + 16))(v1, v2);
}

void __87__HMDCloudManager__resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_129(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) hmd_hmErrorFromCKError];
  (*(v1 + 16))(v1, v2);
}

- (void)_resetCloudZonesIgnoreHomeManager:(BOOL)manager completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  accountActive = [(HMDCloudManager *)self accountActive];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (accountActive)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing all zones", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    objc_initWeak(buf, selfCopy);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke_124;
    v15[3] = &unk_279725A00;
    objc_copyWeak(&v17, buf);
    v16 = handlerCopy;
    managerCopy = manager;
    [(HMDCloudManager *)selfCopy __fetchAllRecordZonesWithCompletionHandler:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Ignoring request to reset cloud data since there is no active account", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    if (handlerCopy)
    {
      clientCallbackQueue = [(HMDCloudManager *)selfCopy clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke;
      block[3] = &unk_2797348C0;
      v20 = handlerCopy;
      dispatch_async(clientCallbackQueue, block);
    }
  }
}

void __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:75];
  (*(*(a1 + 32) + 16))();
}

void __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke_124(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v26 = a2;
  v27 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v25 = WeakRetained;
    if (!v27)
    {
      v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = v26;
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v14)
      {
        v15 = *v33;
        do
        {
          v16 = 0;
          do
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v32 + 1) + 8 * v16);
            if (*(a1 + 48) != 1 || ([*(*(&v32 + 1) + 8 * v16) zoneID], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "zoneName"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5", "isEqualToString:", v19), v19, v18, (v20 & 1) == 0))
            {
              v21 = [v17 zoneID];
              v22 = [v21 zoneName];

              v23 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v22];
              if (v23)
              {
                v24 = [v17 zoneID];
                [v28 addObject:v24];
              }
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v14);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke_2;
      v29[3] = &unk_279731300;
      objc_copyWeak(&v31, (a1 + 40));
      v30 = *(a1 + 32);
      [v25 __deleteRecordZonesWithIDs:v28 completionHandler:v29];

      objc_destroyWeak(&v31);
      v12 = v28;
      goto LABEL_20;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = v6;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch zone information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = v25;
    if (*(a1 + 32))
    {
      v11 = [v8 clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke_125;
      block[3] = &unk_2797348C0;
      v37 = *(a1 + 32);
      dispatch_async(v11, block);

      v12 = v37;
LABEL_20:

      v6 = v25;
    }
  }
}

void __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke_125(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  (*(*(a1 + 32) + 16))();
}

void __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v4 = [WeakRetained clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HMDCloudManager__resetCloudZonesIgnoreHomeManager_completionHandler___block_invoke_3;
    block[3] = &unk_2797348C0;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

- (void)_verifyAndRemoveAllHomeZonesCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  cloudCache = [(HMDCloudManager *)self cloudCache];
  allHomeZones = [cloudCache allHomeZones];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__40007;
  v25[4] = __Block_byref_object_dispose__40008;
  v26 = 0;
  v6 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = allHomeZones;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        dispatch_group_enter(v6);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __65__HMDCloudManager__verifyAndRemoveAllHomeZonesCompletionHandler___block_invoke;
        v18[3] = &unk_2797259D8;
        v20 = v25;
        v19 = v6;
        [(HMDCloudManager *)self _verifyAndRemoveZone:v10 completionHandler:v18];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  clientCallbackQueue = [(HMDCloudManager *)self clientCallbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDCloudManager__verifyAndRemoveAllHomeZonesCompletionHandler___block_invoke_2;
  block[3] = &unk_279731910;
  v16 = handlerCopy;
  v17 = v25;
  v12 = handlerCopy;
  dispatch_group_notify(v6, clientCallbackQueue, block);

  _Block_object_dispose(v25, 8);
}

void __65__HMDCloudManager__verifyAndRemoveAllHomeZonesCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __65__HMDCloudManager__verifyAndRemoveAllHomeZonesCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)_verifyAndRemoveZone:(id)zone completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (zoneCopy)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = zoneCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Verifying zone after controller key change: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    objc_initWeak(buf, selfCopy);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__HMDCloudManager__verifyAndRemoveZone_completionHandler___block_invoke_119;
    v14[3] = &unk_2797259B0;
    objc_copyWeak(&v17, buf);
    v15 = zoneCopy;
    v16 = v8;
    [(HMDCloudManager *)selfCopy _fetchAndVerifyZoneRootRecord:v15 completionHandler:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else if (handlerCopy)
  {
    clientCallbackQueue = [(HMDCloudManager *)self clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__HMDCloudManager__verifyAndRemoveZone_completionHandler___block_invoke;
    block[3] = &unk_2797348C0;
    v19 = v8;
    dispatch_async(clientCallbackQueue, block);
  }
}

void __58__HMDCloudManager__verifyAndRemoveZone_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(v1 + 16))(v1, 0, v2);
}

void __58__HMDCloudManager__verifyAndRemoveZone_completionHandler___block_invoke_119(id *a1, int a2, char a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (!a2 || (a3 & 1) != 0)
    {
      if (a1[5])
      {
        v19 = [WeakRetained clientCallbackQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__HMDCloudManager__verifyAndRemoveZone_completionHandler___block_invoke_2;
        block[3] = &unk_279735738;
        v22 = a1[5];
        v21 = v7;
        dispatch_async(v19, block);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v9;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [a1[4] zone];
        v15 = [v14 zoneID];
        v16 = [v15 zoneName];
        *buf = 138543618;
        v28 = v13;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Zone cannot be decrypted with current controller key, removing zone %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v17 = [a1[4] zone];
      v18 = [v17 zoneID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __58__HMDCloudManager__verifyAndRemoveZone_completionHandler___block_invoke_120;
      v23[3] = &unk_279725988;
      objc_copyWeak(&v26, a1 + 6);
      v24 = a1[4];
      v25 = a1[5];
      [v11 __deleteRecordZoneWithID:v18 completionHandler:v23];

      objc_destroyWeak(&v26);
    }
  }
}

void __58__HMDCloudManager__verifyAndRemoveZone_completionHandler___block_invoke_120(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v11 = v16 = v5;
      v12 = [a1[4] zone];
      v13 = [v12 zoneID];
      v14 = [v13 zoneName];
      *buf = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Removed zone %@ with error %@", buf, 0x20u);

      v5 = v16;
    }

    objc_autoreleasePoolPop(v8);
    if (a1[5])
    {
      v15 = [v9 clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__HMDCloudManager__verifyAndRemoveZone_completionHandler___block_invoke_121;
      block[3] = &unk_279735738;
      v19 = a1[5];
      v18 = v6;
      dispatch_async(v15, block);
    }
  }
}

- (void)verifyAndRemoveZone:(id)zone completionHandler:(id)handler
{
  zoneCopy = zone;
  handlerCopy = handler;
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDCloudManager_verifyAndRemoveZone_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = zoneCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = zoneCopy;
  dispatch_async(workQueue, block);
}

- (void)_removeAllHomeZonesCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  cloudCache = [(HMDCloudManager *)self cloudCache];
  allHomeZones = [cloudCache allHomeZones];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allHomeZones, "count")}];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = allHomeZones;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v22 + 1) + 8 * v11) zone];
        zoneID = [v12 zoneID];

        if (zoneID)
        {
          [v7 addObject:zoneID];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v17;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Removing zones %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  objc_initWeak(buf, selfCopy);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__HMDCloudManager__removeAllHomeZonesCompletionHandler___block_invoke;
  v19[3] = &unk_279731300;
  objc_copyWeak(&v21, buf);
  v18 = handlerCopy;
  v20 = v18;
  [(HMDCloudManager *)selfCopy __deleteRecordZonesWithIDs:v7 completionHandler:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

void __56__HMDCloudManager__removeAllHomeZonesCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v4 = [WeakRetained clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDCloudManager__removeAllHomeZonesCompletionHandler___block_invoke_2;
    block[3] = &unk_2797348C0;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

- (void)resetCloudDataAndDeleteMetadataForCurrentAccount:(BOOL)account completionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workQueue = [(HMDCloudManager *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HMDCloudManager_resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke;
  v9[3] = &unk_279725960;
  objc_copyWeak(&v11, &location);
  accountCopy = account;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(workQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __86__HMDCloudManager_resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMDCloudManager_resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_2;
  v4[3] = &unk_279731D28;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4[4] = WeakRetained;
  v5 = v3;
  [WeakRetained _resetCloudZonesIgnoreHomeManager:0 completionHandler:v4];

  objc_destroyWeak(&v6);
}

void __86__HMDCloudManager_resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = [*(a1 + 32) clientCallbackQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __86__HMDCloudManager_resetCloudDataAndDeleteMetadataForCurrentAccount_completionHandler___block_invoke_3;
      v6[3] = &unk_279735738;
      v8 = *(a1 + 40);
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _resetCloudDataAndDeleteMetadataForCurrentAccount:*(a1 + 56) completionHandler:*(a1 + 40)];
  }
}

- (void)_fetchAndVerifyZoneRootRecord:(id)record completionHandler:(id)handler
{
  v53[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  handlerCopy = handler;
  if (recordCopy)
  {
    v8 = [[HMDCloudTransaction alloc] initWithType:3 temporaryCache:1];
    [(HMDCloudTransaction *)v8 updateCloudZone:recordCopy];
    privateZoneRootRecordID = [(HMDCloudTransaction *)v8 privateZoneRootRecordID];
    if (privateZoneRootRecordID)
    {
      v10 = objc_alloc(MEMORY[0x277CBC3E0]);
      v53[0] = privateZoneRootRecordID;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
      v12 = [v10 initWithRecordIDs:v11];

      *v51 = 0;
      *&v51[8] = v51;
      *&v51[16] = 0x2020000000;
      v52 = 0;
      objc_initWeak(&location, self);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_2;
      v40[3] = &unk_2797258E8;
      objc_copyWeak(&v41, &location);
      [v12 setPerRecordProgressBlock:v40];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_101;
      v35[3] = &unk_279725910;
      objc_copyWeak(&v39, &location);
      v36 = privateZoneRootRecordID;
      v38 = v51;
      v13 = v8;
      v37 = v13;
      [v12 setPerRecordCompletionBlock:v35];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_103;
      v29[3] = &unk_279725938;
      objc_copyWeak(&v34, &location);
      v30 = recordCopy;
      v32 = handlerCopy;
      v33 = v51;
      v31 = v13;
      [v12 setFetchRecordsCompletionBlock:v29];
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        operationID = [v12 operationID];
        *buf = 138543618;
        v48 = v17;
        v49 = 2112;
        v50 = operationID;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Fetching zone root record operation with ID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [(HMDCloudManager *)selfCopy __addCKDatabaseOperation:v12];

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v39);
      objc_destroyWeak(&v41);
      objc_destroyWeak(&location);
      _Block_object_dispose(v51, 8);
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *v51 = 138543618;
        *&v51[4] = v27;
        *&v51[12] = 2112;
        *&v51[14] = recordCopy;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine root record for zone %@", v51, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      if (!handlerCopy)
      {
        goto LABEL_15;
      }

      clientCallbackQueue = [(HMDCloudManager *)selfCopy2 clientCallbackQueue];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_98;
      v43[3] = &unk_2797348C0;
      v44 = handlerCopy;
      dispatch_async(clientCallbackQueue, v43);

      v12 = v44;
    }

LABEL_15:
    goto LABEL_16;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *v51 = 138543362;
    *&v51[4] = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cloud zone need to be specified to verify root record", v51, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  if (handlerCopy)
  {
    clientCallbackQueue2 = [(HMDCloudManager *)selfCopy3 clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke;
    block[3] = &unk_2797348C0;
    v46 = handlerCopy;
    dispatch_async(clientCallbackQueue2, block);

    v8 = v46;
LABEL_16:
  }
}

void __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_98(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  (*(*(a1 + 32) + 16))();
}

void __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 recordName];
      v12 = 138543874;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetching %@ progress %f", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_101(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = [v9 domain];
      if ([v11 isEqualToString:*MEMORY[0x277CBBF50]] && objc_msgSend(v9, "code") == 11)
      {
        v12 = [*(a1 + 32) isEqual:v8];

        if (v12)
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
          v13 = objc_autoreleasePoolPush();
          v14 = WeakRetained;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            v17 = [*(a1 + 32) recordName];
            v25 = 138543618;
            v26 = v16;
            v27 = 2112;
            v28 = v17;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Root record %@ does not exist", &v25, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      else
      {
      }
    }

    else if (v7)
    {
      v18 = *(a1 + 32);
      v19 = [v7 recordID];
      LODWORD(v18) = [v18 isEqual:v19];

      if (v18)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v20 = objc_autoreleasePoolPush();
        v21 = WeakRetained;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [*(a1 + 32) recordName];
          v25 = 138543618;
          v26 = v23;
          v27 = 2112;
          v28 = v24;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Root record %@ does exist", &v25, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        [*(a1 + 40) addChangeWithRecord:v7];
      }
    }
  }
}

void __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_20;
  }

  if (v6)
  {
    v8 = [(__CFString *)v6 domain];
    if ([v8 isEqualToString:*MEMORY[0x277CBBF50]])
    {
      v9 = [(__CFString *)v6 code];

      if (v9 != 2)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = WeakRetained;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = HMFGetLogIdentifier();
          v14 = *(a1 + 32);
          *buf = 138543874;
          v34 = v13;
          v35 = 2112;
          v36 = v14;
          v37 = 2112;
          v38 = v6;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch root record for zone %@ with error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
        if (*(a1 + 48))
        {
          v15 = [v11 clientCallbackQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_104;
          block[3] = &unk_2797348C0;
          v16 = &v32;
          v32 = *(a1 + 48);
          dispatch_async(v15, block);
LABEL_19:

          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = WeakRetained;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v21 = @"exists";
    }

    else
    {
      v21 = @"does not exist";
    }

    v22 = *(a1 + 32);
    v23 = [*(a1 + 40) decryptionFailed];
    v24 = @"was";
    *buf = 138544130;
    v34 = v20;
    v35 = 2112;
    if (v23)
    {
      v24 = @"failed to";
    }

    v36 = v22;
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = v24;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetched zone %@ and record %@ and %@ to decrypt", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  if (*(a1 + 48))
  {
    v25 = [v18 clientCallbackQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_117;
    v28[3] = &unk_279731DC8;
    v16 = v30;
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v30[0] = v26;
    v30[1] = v27;
    v29 = *(a1 + 40);
    dispatch_async(v25, v28);

    v15 = v29;
    goto LABEL_19;
  }

LABEL_20:
}

void __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_104(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(*(a1 + 32) + 16))();
}

uint64_t __67__HMDCloudManager__fetchAndVerifyZoneRootRecord_completionHandler___block_invoke_117(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = [*(a1 + 32) decryptionFailed];
  v4 = *(v1 + 16);

  return v4(v1, v2, v3 ^ 1u, 0);
}

- (void)_uploadLegacyTransaction:(id)transaction completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  cloudZone = [transactionCopy cloudZone];
  if (cloudZone)
  {
    objc_initWeak(location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_2;
    v14[3] = &unk_2797258C0;
    objc_copyWeak(&v18, location);
    v17 = handlerCopy;
    v15 = cloudZone;
    v16 = transactionCopy;
    [v16 fetchBatchToUpload:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine zone to upload data", location, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (handlerCopy)
    {
      clientCallbackQueue = [(HMDCloudManager *)selfCopy clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke;
      block[3] = &unk_2797348C0;
      v20 = handlerCopy;
      dispatch_async(clientCallbackQueue, block);
    }
  }
}

void __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v86 = *MEMORY[0x277D85DE8];
  v51 = a2;
  v50 = a3;
  v52 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v52)
    {
      if (*(a1 + 48))
      {
        v48 = WeakRetained;
        v9 = [WeakRetained clientCallbackQueue];
        v10 = block;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_3;
        block[3] = &unk_2797348C0;
        block[4] = *(a1 + 48);
        dispatch_async(v9, block);

LABEL_5:
        v11 = v10[4];
LABEL_31:

        v8 = v48;
      }
    }

    else
    {
      v49 = a1;
      v48 = WeakRetained;
      if ([v51 count] || objc_msgSend(v50, "count"))
      {
        v12 = objc_autoreleasePoolPush();
        v13 = v8;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v16 = *(v49 + 32);
          *buf = 138544130;
          *&buf[4] = v15;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          *&buf[22] = 2048;
          v83 = [v51 count];
          v84 = 2048;
          v85 = [v50 count];
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Operations in zone %@ (%lu save, %lu delete)", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v12);
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        obj = v51;
        v17 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
        if (v17)
        {
          v18 = *v71;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v71 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v70 + 1) + 8 * i);
              v21 = objc_autoreleasePoolPush();
              v22 = v13;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = HMFGetLogIdentifier();
                v25 = [v20 recordID];
                *buf = 138543618;
                *&buf[4] = v24;
                *&buf[12] = 2112;
                *&buf[14] = v25;
                _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@     Saving: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v21);
            }

            v17 = [obj countByEnumeratingWithState:&v70 objects:v81 count:16];
          }

          while (v17);
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v26 = v50;
        v27 = [v26 countByEnumeratingWithState:&v66 objects:v80 count:16];
        if (v27)
        {
          v28 = *v67;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v67 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v66 + 1) + 8 * j);
              v31 = objc_autoreleasePoolPush();
              v32 = v13;
              v33 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v34;
                *&buf[12] = 2112;
                *&buf[14] = v30;
                _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@     Deleting: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v31);
            }

            v27 = [v26 countByEnumeratingWithState:&v66 objects:v80 count:16];
          }

          while (v27);
        }

        v35 = [v13 logEventSubmitter];
        v36 = [HMDRecordsSavedLogEvent legacyRecordsSaved:obj];
        [v35 submitLogEvent:v36];

        v11 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:obj recordIDsToDelete:v26];
        [v11 setSavePolicy:0];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_88;
        v64[3] = &unk_2797257D0;
        objc_copyWeak(&v65, (v49 + 56));
        [v11 setPerRecordProgressBlock:v64];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v83) = 0;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_89;
        v60[3] = &unk_2797257F8;
        objc_copyWeak(&v63, (v49 + 56));
        v62 = buf;
        v61 = *(v49 + 40);
        [v11 setPerRecordCompletionBlock:v60];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_91;
        v54[3] = &unk_279725898;
        objc_copyWeak(&v59, (v49 + 56));
        v58 = buf;
        v55 = *(v49 + 40);
        v57 = *(v49 + 48);
        v56 = obj;
        [v11 setModifyRecordsCompletionBlock:v54];
        v37 = objc_autoreleasePoolPush();
        v38 = v13;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          v41 = [v11 operationID];
          *v76 = 138543618;
          v77 = v40;
          v78 = 2112;
          v79 = v41;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Modifying records with operation ID: %@", v76, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        [v38 __addCKDatabaseOperation:v11];

        objc_destroyWeak(&v59);
        objc_destroyWeak(&v63);
        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&v65);
        goto LABEL_31;
      }

      v42 = objc_autoreleasePoolPush();
      v43 = v8;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v45 = HMFGetLogIdentifier();
        v46 = *(v49 + 32);
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2112;
        *&buf[14] = v46;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_DEBUG, "%{public}@There are no records to save or delete for zone %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v42);
      v8 = v48;
      if (*(v49 + 48))
      {
        v47 = [v43 clientCallbackQueue];
        v10 = v74;
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_87;
        v74[3] = &unk_2797348C0;
        v74[4] = *(v49 + 48);
        dispatch_async(v47, v74);

        goto LABEL_5;
      }
    }
  }
}

void __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_88(uint64_t a1, void *a2, double a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 recordType];
      v12 = [v5 recordID];
      v13 = [v12 recordName];
      v14 = 138544130;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v13;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Record modify %@/%@ progress %f", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_28;
  }

  if (v6)
  {
    v8 = [v6 domain];
    v9 = *MEMORY[0x277CBBF50];
    if ([v8 isEqualToString:*MEMORY[0x277CBBF50]])
    {
      v10 = [v6 code];

      if (v10 == 26)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v24 = [v6 domain];
    if ([v24 isEqualToString:v9])
    {
      v25 = [v6 code];

      if (v25 == 14)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = WeakRetained;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v6 hmd_conciseCKError];
          v31 = [v30 shortDescription];
          *buf = 138543618;
          v63 = v29;
          v64 = 2112;
          v65 = v31;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Failed to save record due to updated record in the server, need to resolve conflict, %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [*(a1 + 32) setNeedConflictResolution:1];
        v32 = *(a1 + 32);
        v33 = [v5 recordID];
        v34 = [v33 recordName];
        v35 = [v32 changeWithRecordName:v34];

        if (v35)
        {
          v36 = [v35 cloudRecord];
          v37 = [v36 isRecordCreated];

          if (v37)
          {
            v38 = objc_autoreleasePoolPush();
            v39 = v27;
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = HMFGetLogIdentifier();
              *buf = 138543362;
              v63 = v41;
              _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Conflict caused by new record, zone and cache can be out of sync, resetting token for fetch", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v38);
            v42 = [*(a1 + 32) cloudZone];
            [v42 setServerChangeToken:0];

            v43 = objc_autoreleasePoolPush();
            v44 = v39;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543362;
              v63 = v46;
              _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Resetting databaseServerChangeToken because legacy record conflict", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v43);
            v47 = [v44 cloudCache];
            [v47 setDatabaseServerChangeToken:0];

            v48 = [v44 cloudCache];
            [v48 persistDatabaseServerChangeToken];
          }
        }

        v49 = *(a1 + 32);
        v50 = [v5 recordID];
        [v49 resetRecordWithRecordID:v50];

        goto LABEL_28;
      }
    }

    else
    {
    }

    v51 = objc_autoreleasePoolPush();
    v52 = WeakRetained;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      v55 = [v5 recordType];
      v59 = [v5 recordID];
      v56 = [v59 recordName];
      [v6 hmd_conciseCKError];
      v57 = v61 = v51;
      v58 = [v57 shortDescription];
      *buf = 138544130;
      v63 = v54;
      v64 = 2112;
      v65 = v55;
      v66 = 2112;
      v67 = v56;
      v68 = 2112;
      v69 = v58;
      _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Could not save record %@/%@: %@", buf, 0x2Au);

      v51 = v61;
    }

    objc_autoreleasePoolPop(v51);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v5 recordType];
      v16 = [v5 recordID];
      [v16 recordName];
      v60 = v5;
      v18 = v17 = v11;
      *buf = 138543874;
      v63 = v14;
      v64 = 2112;
      v65 = v15;
      v66 = 2112;
      v67 = v18;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Saved record %@/%@", buf, 0x20u);

      v11 = v17;
      v5 = v60;
    }

    objc_autoreleasePoolPop(v11);
    v19 = [v5 recordID];
    v20 = [v12 legacyZone];
    v21 = [v20 homeDataRecordID];
    v22 = [v19 isEqual:v21];

    if (v22)
    {
      [v12 setCloudHomeDataRecordExists:1];
      v23 = [MEMORY[0x277CFEC78] systemStore];
      [v23 ensureControllerKeyExistsForAllViews];
    }

    [*(a1 + 32) setSaveAsProcessedWithRecord:v5];
  }

LABEL_28:
}

void __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_91(uint64_t a1, void *a2, void *a3, void *a4)
{
  v83 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v55 = a3;
  v56 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v57 = v56;
    v8 = [WeakRetained logEventSubmitter];
    v9 = [HMDCloudSyncLegacyUploadLogEvent uploadCompletedWithError:v57];
    [v8 submitLogEvent:v9];

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v10 = [*(a1 + 32) cloudZone];
      v11 = objc_autoreleasePoolPush();
      v12 = WeakRetained;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v10 zone];
        v16 = [v15 zoneID];
        v17 = [v16 zoneName];
        *buf = 138543618;
        v80 = v14;
        v81 = 2112;
        v82 = v17;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Failed to upload records to zone %@, creating", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v18 = [v10 zone];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_93;
      v73[3] = &unk_279725870;
      objc_copyWeak(&v76, (a1 + 64));
      v53 = v10;
      v74 = v53;
      v75 = *(a1 + 48);
      [v12 __saveRecordZone:v18 completionHandler:v73];

      objc_destroyWeak(&v76);
      goto LABEL_43;
    }

    v53 = [WeakRetained delegate];
    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v57)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v57 hmd_conciseCKError];
        v25 = [v24 shortDescription];
        *buf = 138543618;
        v80 = v23;
        v81 = 2114;
        v82 = v25;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed to save records due %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      if ([*(a1 + 32) needConflictResolution])
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v20;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v80 = v29;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Need conflict resolution for home manager, schedule zone fetch and repush.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v26);
        [v53 fetchHomeDataFromCloudWithCloudConflict:objc_msgSend(*(a1 + 32) withDelay:{"needConflictResolution"), 0.0}];
      }

      else
      {
        v41 = [v57 domain];
        v42 = [v41 isEqualToString:*MEMORY[0x277CBBF50]];

        if (v42)
        {
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v43 = *(a1 + 40);
          v44 = [v43 countByEnumeratingWithState:&v69 objects:v78 count:16];
          if (v44)
          {
            v45 = *v70;
            while (2)
            {
              for (i = 0; i != v44; ++i)
              {
                if (*v70 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                v47 = [*(*(&v69 + 1) + 8 * i) size];
                if (v47 > cloudRecordSizeLimit)
                {
                  v48 = objc_autoreleasePoolPush();
                  v49 = v20;
                  v50 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    v51 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v80 = v51;
                    _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Operations failed because of record size, ignoring error", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v48);
                  v57 = 0;
                  goto LABEL_40;
                }
              }

              v44 = [v43 countByEnumeratingWithState:&v69 objects:v78 count:16];
              if (v44)
              {
                continue;
              }

              break;
            }
          }

LABEL_40:
        }
      }
    }

    else
    {
      if (v22)
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v80 = v30;
        v81 = 2048;
        v82 = [v54 count];
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Saved %ld records", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v31 = v55;
      v32 = [v31 countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v32)
      {
        v33 = *v66;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v66 != v33)
            {
              objc_enumerationMutation(v31);
            }

            [*(a1 + 32) setDeleteAsProcessedWithRecordID:{*(*(&v65 + 1) + 8 * j), v53}];
          }

          v32 = [v31 countByEnumeratingWithState:&v65 objects:v77 count:16];
        }

        while (v32);
      }

      v35 = objc_autoreleasePoolPush();
      v36 = v20;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v39 = [v31 count];
        *buf = 138543618;
        v80 = v38;
        v81 = 2048;
        v82 = v39;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Deleted %ld records", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      if ([*(a1 + 32) moreChangesToProcess])
      {
        v40 = [v36 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_95;
        block[3] = &unk_279730E50;
        objc_copyWeak(&v64, (a1 + 64));
        v62 = *(a1 + 32);
        v63 = *(a1 + 48);
        dispatch_async(v40, block);

        objc_destroyWeak(&v64);
        v57 = 0;
LABEL_43:

        goto LABEL_44;
      }

      [v53 fetchHomeDataFromCloudWithCloudConflict:0 withDelay:0.0];
      v57 = 0;
    }

    if (*(a1 + 48))
    {
      v52 = [v20 clientCallbackQueue];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_2_96;
      v58[3] = &unk_279735738;
      v60 = *(a1 + 48);
      v57 = v57;
      v59 = v57;
      dispatch_async(v52, v58);
    }

    goto LABEL_43;
  }

LABEL_44:
}

void __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_93(id *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = v6;
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v13 = v22 = v6;
        v21 = [a1[4] zone];
        [v21 zoneID];
        v14 = v23 = v9;
        v15 = [v14 zoneName];
        [v8 hmd_conciseCKError];
        v16 = v24 = v5;
        v17 = [v16 shortDescription];
        *buf = 138543874;
        v29 = v13;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to create record zone %@ due to error: %@", buf, 0x20u);

        v5 = v24;
        v9 = v23;

        v6 = v22;
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v18;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Restarting legacy push", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v19 = [v10 delegate];
      [v19 uploadHomeConfigToCloud:0 withDelay:0.0];

      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    }

    if (a1[5])
    {
      v20 = [v10 clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_94;
      block[3] = &unk_279735738;
      v27 = a1[5];
      v26 = v8;
      dispatch_async(v20, block);
    }
  }
}

void __62__HMDCloudManager__uploadLegacyTransaction_completionHandler___block_invoke_95(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _uploadLegacyTransaction:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)uploadLegacyTransaction:(id)transaction completionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workQueue = [(HMDCloudManager *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HMDCloudManager_uploadLegacyTransaction_completionHandler___block_invoke;
  v11[3] = &unk_279730E50;
  objc_copyWeak(&v14, &location);
  v12 = transactionCopy;
  v13 = handlerCopy;
  v9 = transactionCopy;
  v10 = handlerCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __61__HMDCloudManager_uploadLegacyTransaction_completionHandler___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained accountActive] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@User account is not active, failing transaction upload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    if (a1[5])
    {
      v9 = [v6 clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__HMDCloudManager_uploadLegacyTransaction_completionHandler___block_invoke_86;
      block[3] = &unk_2797348C0;
      v15 = a1[5];
      dispatch_async(v9, block);
    }
  }

  else
  {
    v4 = a1[4];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__HMDCloudManager_uploadLegacyTransaction_completionHandler___block_invoke_2;
    v10[3] = &unk_2797346E0;
    objc_copyWeak(&v13, a1 + 6);
    v11 = a1[4];
    v12 = a1[5];
    [v4 loadCloudRecordsAndDetermineDeletesFromCache:v10];

    objc_destroyWeak(&v13);
  }
}

void __61__HMDCloudManager_uploadLegacyTransaction_completionHandler___block_invoke_86(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:75];
  (*(*(a1 + 32) + 16))();
}

void __61__HMDCloudManager_uploadLegacyTransaction_completionHandler___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__HMDCloudManager_uploadLegacyTransaction_completionHandler___block_invoke_3;
    block[3] = &unk_2797355D0;
    block[4] = v3;
    v6 = a1[4];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

- (void)_removeZonesTransactions:(id)transactions completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  handlerCopy = handler;
  cloudZone = [transactionsCopy cloudZone];
  v9 = [cloudZone zone];
  zoneID = [v9 zoneID];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v14;
    v25 = 2112;
    v26 = zoneID;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing zone %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, selfCopy);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__HMDCloudManager__removeZonesTransactions_completionHandler___block_invoke;
  v18[3] = &unk_279725780;
  objc_copyWeak(&v22, buf);
  v15 = zoneID;
  v19 = v15;
  v16 = handlerCopy;
  v21 = v16;
  v17 = transactionsCopy;
  v20 = v17;
  [(HMDCloudManager *)selfCopy __deleteRecordZoneWithID:v15 completionHandler:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __62__HMDCloudManager__removeZonesTransactions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = [v6 domain];
      if ([v8 isEqualToString:*MEMORY[0x277CBBF50]])
      {
        v9 = [v6 code];

        if (v9 == 26)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = WeakRetained;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = HMFGetLogIdentifier();
            v14 = *(a1 + 32);
            *buf = 138543618;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Zone %@ does not exist in cloud, nothing to delete", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          if (*(a1 + 48))
          {
            [*(a1 + 40) setZoneWasDeleted:1];
            v15 = [v11 clientCallbackQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __62__HMDCloudManager__removeZonesTransactions_completionHandler___block_invoke_85;
            block[3] = &unk_2797348C0;
            v21 = *(a1 + 48);
            dispatch_async(v15, block);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      [*(a1 + 40) setZoneWasDeleted:1];
    }

    if (*(a1 + 48))
    {
      v16 = [WeakRetained clientCallbackQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __62__HMDCloudManager__removeZonesTransactions_completionHandler___block_invoke_2;
      v17[3] = &unk_279735738;
      v19 = *(a1 + 48);
      v18 = v6;
      dispatch_async(v16, v17);
    }
  }
}

- (void)removeZonesTransactions:(id)transactions completionHandler:(id)handler
{
  transactionsCopy = transactions;
  handlerCopy = handler;
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDCloudManager_removeZonesTransactions_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = transactionsCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = transactionsCopy;
  v10 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __61__HMDCloudManager_removeZonesTransactions_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) accountActive])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    [v2 _removeZonesTransactions:v3 completionHandler:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@User account is not active, failing transaction to remove zone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    if (*(a1 + 48))
    {
      v9 = [*(a1 + 32) clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__HMDCloudManager_removeZonesTransactions_completionHandler___block_invoke_84;
      block[3] = &unk_2797348C0;
      v11 = *(a1 + 48);
      dispatch_async(v9, block);
    }
  }
}

void __61__HMDCloudManager_removeZonesTransactions_completionHandler___block_invoke_84(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:75];
  (*(*(a1 + 32) + 16))();
}

- (void)_uploadTransaction:(id)transaction completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  cloudZone = [transactionCopy cloudZone];
  if (cloudZone)
  {
    logger = self->_logger;
    if (os_signpost_enabled(logger))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UploadTransaction", "", buf, 2u);
    }

    objc_initWeak(buf, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_73;
    v15[3] = &unk_279725848;
    objc_copyWeak(v19, buf);
    v18 = handlerCopy;
    v16 = cloudZone;
    v17 = transactionCopy;
    v19[1] = 0xEEEEB0B5B2B2EEEELL;
    [v17 fetchBatchToUpload:v15];

    objc_destroyWeak(v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine zone to upload data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (handlerCopy)
    {
      clientCallbackQueue = [(HMDCloudManager *)selfCopy clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke;
      block[3] = &unk_2797348C0;
      v21 = handlerCopy;
      dispatch_async(clientCallbackQueue, block);
    }
  }
}

void __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_73(id *a1, void *a2, void *a3, void *a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v9)
    {
      if (a1[6])
      {
        v34 = WeakRetained;
        v12 = [WeakRetained clientCallbackQueue];
        v13 = block;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_2;
        block[3] = &unk_2797348C0;
        block[4] = a1[6];
        dispatch_async(v12, block);

LABEL_5:
        v14 = v13[4];
LABEL_13:

        v11 = v34;
      }
    }

    else
    {
      v34 = WeakRetained;
      if ([v7 count] || objc_msgSend(v8, "count"))
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v11;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = v16;
          v20 = a1[4];
          *buf = 138544130;
          *&buf[4] = v18;
          *&buf[12] = 2112;
          *&buf[14] = v20;
          v16 = v19;
          v9 = 0;
          *&buf[22] = 2048;
          v54 = [v7 count];
          v55 = 2048;
          v56 = [v8 count];
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Operations in zone %@ (%lu save, %lu delete)", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v15);
        v21 = [v16 logEventSubmitter];
        v22 = [HMDRecordsSavedLogEvent recordsSaved:v7];
        [v21 submitLogEvent:v22];

        v14 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v7 recordIDsToDelete:v8];
        [v14 setSavePolicy:0];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_76;
        v45[3] = &unk_2797257D0;
        objc_copyWeak(&v46, a1 + 7);
        [v14 setPerRecordProgressBlock:v45];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v54) = 0;
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_78;
        v41[3] = &unk_2797257F8;
        objc_copyWeak(&v44, a1 + 7);
        v43 = buf;
        v42 = a1[5];
        [v14 setPerRecordCompletionBlock:v41];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_80;
        v35[3] = &unk_279725820;
        objc_copyWeak(v40, a1 + 7);
        v40[1] = a1[8];
        v36 = a1[5];
        v39 = buf;
        v37 = a1[4];
        v38 = a1[6];
        [v14 setModifyRecordsCompletionBlock:v35];
        v23 = objc_autoreleasePoolPush();
        v24 = v16;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          v27 = [v14 operationID];
          *v49 = 138543618;
          v50 = v26;
          v51 = 2112;
          v52 = v27;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Modifying records with operation ID: %@", v49, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        [v24 __addCKDatabaseOperation:v14];

        objc_destroyWeak(v40);
        objc_destroyWeak(&v44);
        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&v46);
        goto LABEL_13;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = v11;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = HMFGetLogIdentifier();
        v32 = a1[4];
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v32;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@There are no records to save or delete for zone %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      if (a1[6])
      {
        v33 = [v29 clientCallbackQueue];
        v13 = v47;
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_74;
        v47[3] = &unk_2797348C0;
        v47[4] = a1[6];
        dispatch_async(v33, v47);

        goto LABEL_5;
      }
    }
  }
}

void __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_76(uint64_t a1, void *a2, double a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v5 recordType];
      v12 = [v5 recordID];
      v13 = [v12 recordName];
      v14 = 138544130;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v13;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Record modify %@/%@ progress %f", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_28;
  }

  if (v6)
  {
    v8 = [v6 domain];
    v9 = *MEMORY[0x277CBBF50];
    if ([v8 isEqualToString:*MEMORY[0x277CBBF50]])
    {
      v10 = [v6 code];

      if (v10 == 26)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v19 = [v6 domain];
    if ([v19 isEqualToString:v9])
    {
      if ([v6 code] == 14)
      {

LABEL_18:
        v29 = objc_autoreleasePoolPush();
        v30 = WeakRetained;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [v6 hmd_conciseCKError];
          v34 = [v33 shortDescription];
          *buf = 138543618;
          v58 = v32;
          v59 = 2112;
          v60 = v34;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Failed to save record due to updated record in the server, need to resolve conflict, %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        [*(a1 + 32) setNeedConflictResolution:1];
        v35 = *(a1 + 32);
        v36 = [v5 recordID];
        v37 = [v36 recordName];
        v38 = [v35 changeWithRecordName:v37];

        if (v38)
        {
          v39 = [v38 cloudRecord];
          v40 = [v39 isRecordCreated];

          if (v40)
          {
            v41 = objc_autoreleasePoolPush();
            v42 = v30;
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = HMFGetLogIdentifier();
              *buf = 138543362;
              v58 = v44;
              _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Conflict caused by new record, zone and cache can be out of sync, resetting token for fetch", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v41);
            v45 = [*(a1 + 32) cloudZone];
            [v45 setServerChangeToken:0];

            v46 = objc_autoreleasePoolPush();
            v47 = v42;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543362;
              v58 = v49;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Resetting databaseServerChangeToken because record conflict", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v46);
            v50 = [v47 cloudCache];
            [v50 setDatabaseServerChangeToken:0];

            v51 = [v47 cloudCache];
            [v51 persistDatabaseServerChangeToken];
          }
        }

        v52 = *(a1 + 32);
        v53 = [v5 recordID];
        [v52 resetRecordWithRecordID:v53];

        goto LABEL_28;
      }

      v28 = [v6 code];

      if (v28 == 11)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v20 = objc_autoreleasePoolPush();
    v21 = WeakRetained;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v5 recordType];
      v54 = [v5 recordID];
      v25 = [v54 recordName];
      [v6 hmd_conciseCKError];
      v26 = v56 = v20;
      v27 = [v26 shortDescription];
      *buf = 138544130;
      v58 = v23;
      v59 = 2112;
      v60 = v24;
      v61 = 2112;
      v62 = v25;
      v63 = 2112;
      v64 = v27;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Could not save record %@/%@: %@", buf, 0x2Au);

      v20 = v56;
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v5 recordType];
      v16 = [v5 recordID];
      [v16 recordName];
      v55 = v5;
      v18 = v17 = v11;
      *buf = 138543874;
      v58 = v14;
      v59 = 2112;
      v60 = v15;
      v61 = 2112;
      v62 = v18;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Saved record %@/%@", buf, 0x20u);

      v11 = v17;
      v5 = v55;
    }

    objc_autoreleasePoolPop(v11);
    [*(a1 + 32) setSaveAsProcessedWithRecord:v5];
  }

LABEL_28:
}

void __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v118 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[1];
    v13 = v12;
    v14 = *(a1 + 72);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v13, OS_SIGNPOST_INTERVAL_END, v14, "UploadTransaction", "", buf, 2u);
    }

    v15 = [v11 logEventSubmitter];
    v16 = [HMDCloudSyncUploadLogEvent uploadCompletedWithError:v9];
    [v15 submitLogEvent:v16];

    v90 = [v11 delegate];
    if ([*(a1 + 32) wasZoneCreated])
    {
      v17 = [*(a1 + 32) cloudZone];
      v18 = [v17 zone];
      v19 = [v18 zoneID];
      v20 = [v19 zoneName];
      [v17 owner];
      v22 = v21 = v9;
      [v11 _addHomeZoneName:v20 owner:v22];

      v9 = v21;
    }

    v92 = a1;
    v23 = objc_autoreleasePoolPush();
    v91 = v11;
    v24 = v11;
    v25 = HMFGetOSLogHandle();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    v94 = v24;
    if (v9)
    {
      if (v26)
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v9 hmd_conciseCKError];
        v29 = [v28 shortDescription];
        *buf = 138543618;
        v111 = v27;
        v112 = 2114;
        v113 = v29;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Failed to save records due %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v30 = v24;
      v31 = v92;
      if (*(*(*(v92 + 56) + 8) + 24) == 1)
      {
        v32 = v9;
        v33 = objc_autoreleasePoolPush();
        v34 = v30;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          v37 = [*(v92 + 40) zone];
          v38 = [v37 zoneID];
          v39 = [v38 zoneName];
          *buf = 138543618;
          v111 = v36;
          v112 = 2112;
          v113 = v39;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Failed to save records because zone %@ does not exist", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        [v34 _verifyZoneHasBeenDeletedTransaction:*(v92 + 32) completionHandler:*(v92 + 48)];
        v9 = v32;
        goto LABEL_34;
      }

      v58 = v90;
      v11 = v91;
      if ([*(v92 + 32) needConflictResolution])
      {
        if ([*(v92 + 32) isHomeManagerTransaction])
        {
          v59 = objc_autoreleasePoolPush();
          v60 = v94;
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v62 = v93 = v59;
            *buf = 138543362;
            v111 = v62;
            _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Need conflict resolution for home manager, schedule zone fetch and repush.", buf, 0xCu);

            v59 = v93;
          }

          objc_autoreleasePoolPop(v59);
          [v90 fetchHomeManagerCloudConflict:1 withDelay:0.0];
        }

        else if ([*(v92 + 32) isHomeTransaction])
        {
          v77 = objc_autoreleasePoolPush();
          v78 = v94;
          v79 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            v80 = HMFGetLogIdentifier();
            v81 = *(v92 + 40);
            *buf = 138543618;
            v111 = v80;
            v112 = 2112;
            v113 = v81;
            _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_INFO, "%{public}@Need conflict resolution for home %@, schedule zone fetch and repush.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v77);
          v82 = objc_alloc(MEMORY[0x277CCAD78]);
          v83 = [*(v92 + 40) zone];
          v84 = [v83 zoneID];
          v85 = [v84 zoneName];
          v86 = [v82 initWithUUIDString:v85];

          if (v86)
          {
            [v90 fetchHomeFromCloudZone:v86 cloudConflict:1 withDelay:0.0];
          }
        }
      }
    }

    else
    {
      if (v26)
      {
        v40 = HMFGetLogIdentifier();
        v41 = [v7 count];
        *buf = 138543618;
        v111 = v40;
        v112 = 2048;
        v113 = v41;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Saved %ld records", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v42 = v8;
      v43 = [v42 countByEnumeratingWithState:&v106 objects:v117 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v107;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v107 != v45)
            {
              objc_enumerationMutation(v42);
            }

            [*(v92 + 32) setDeleteAsProcessedWithRecordID:*(*(&v106 + 1) + 8 * i)];
          }

          v44 = [v42 countByEnumeratingWithState:&v106 objects:v117 count:16];
        }

        while (v44);
      }

      v88 = v8;
      v89 = v7;

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v47 = v42;
      v48 = [v47 countByEnumeratingWithState:&v102 objects:v116 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v103;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v103 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v102 + 1) + 8 * j);
            v53 = objc_autoreleasePoolPush();
            v54 = v24;
            v55 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = HMFGetLogIdentifier();
              *buf = 138543618;
              v111 = v56;
              v112 = 2112;
              v113 = v52;
              _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@   Deleting: %@", buf, 0x16u);

              v24 = v94;
            }

            objc_autoreleasePoolPop(v53);
          }

          v49 = [v47 countByEnumeratingWithState:&v102 objects:v116 count:16];
        }

        while (v49);
      }

      v31 = v92;
      if ([*(v92 + 32) moreChangesToProcess])
      {
        v57 = [v94 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_82;
        block[3] = &unk_279730E50;
        objc_copyWeak(&v101, (v92 + 64));
        v99 = *(v92 + 32);
        v100 = *(v92 + 48);
        dispatch_async(v57, block);

        objc_destroyWeak(&v101);
        v8 = v88;
        v7 = v89;
        v9 = 0;
LABEL_34:
        v58 = v90;
        v11 = v91;
LABEL_58:

        goto LABEL_59;
      }

      v9 = 0;
      v8 = v88;
      v58 = v90;
      v11 = v91;
      if ([*(v92 + 32) isHomeManagerTransaction])
      {
        v63 = objc_autoreleasePoolPush();
        v64 = v94;
        v65 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v66 = HMFGetLogIdentifier();
          *buf = 138543362;
          v111 = v66;
          _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_INFO, "%{public}@Scheduling fetch of home manager zone to update server token", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v63);
        [v90 fetchHomeManagerCloudConflict:0 withDelay:0.0];
        v7 = v89;
      }

      else
      {
        v7 = v89;
        if ([*(v92 + 32) isHomeTransaction])
        {
          v67 = objc_alloc(MEMORY[0x277CCAD78]);
          v68 = [*(v92 + 40) zone];
          v69 = [v68 zoneID];
          v70 = [v69 zoneName];
          v71 = [v67 initWithUUIDString:v70];

          v72 = objc_autoreleasePoolPush();
          v73 = v94;
          v74 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            v75 = HMFGetLogIdentifier();
            v76 = *(v92 + 40);
            *buf = 138543874;
            v111 = v75;
            v112 = 2112;
            v113 = v76;
            v114 = 2112;
            v115 = v71;
            _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@Scheduling fetch of zone %@/%@ to update server token", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v72);
          v58 = v90;
          if (v71)
          {
            [v90 fetchHomeFromCloudZone:v71 cloudConflict:0 withDelay:0.0];
          }

          v11 = v91;
          v31 = v92;
        }
      }
    }

    if (*(v31 + 48))
    {
      v87 = [v94 clientCallbackQueue];
      v95[0] = MEMORY[0x277D85DD0];
      v95[1] = 3221225472;
      v95[2] = __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_83;
      v95[3] = &unk_279735738;
      v97 = *(v31 + 48);
      v96 = v9;
      dispatch_async(v87, v95);
    }

    goto LABEL_58;
  }

LABEL_59:
}

void __56__HMDCloudManager__uploadTransaction_completionHandler___block_invoke_82(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _uploadTransaction:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)_checkZoneAndUploadTransaction:(id)transaction completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  cloudZone = [transactionCopy cloudZone];
  if (cloudZone)
  {
    objc_initWeak(location, self);
    if ([transactionCopy shouldDeleteZone])
    {
      v9 = [cloudZone zone];
      zoneID = [v9 zoneID];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke_2;
      v25[3] = &unk_279725780;
      v11 = &v29;
      objc_copyWeak(&v29, location);
      v26 = cloudZone;
      v28 = handlerCopy;
      v27 = transactionCopy;
      [(HMDCloudManager *)self __deleteRecordZoneWithID:zoneID completionHandler:v25];
      v12 = &v26;
      v13 = &v28;
      v14 = &v27;
    }

    else
    {
      if (![transactionCopy shouldCreateZone])
      {
        [(HMDCloudManager *)self _uploadTransaction:transactionCopy completionHandler:handlerCopy];
        goto LABEL_12;
      }

      v9 = [cloudZone zone];
      zoneID = [v9 zoneID];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke_3;
      v20[3] = &unk_2797257A8;
      v11 = &v24;
      objc_copyWeak(&v24, location);
      v21 = cloudZone;
      v22 = transactionCopy;
      v23 = handlerCopy;
      [(HMDCloudManager *)self __fetchRecordZoneWithID:zoneID completionHandler:v20];
      v12 = &v21;
      v13 = &v22;
      v14 = &v23;
    }

    objc_destroyWeak(v11);
LABEL_12:
    objc_destroyWeak(location);
    goto LABEL_13;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    LODWORD(location[0]) = 138543362;
    *(location + 4) = v18;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine zone to upload data", location, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  if (handlerCopy)
  {
    clientCallbackQueue = [(HMDCloudManager *)selfCopy clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke;
    block[3] = &unk_2797348C0;
    v31 = handlerCopy;
    dispatch_async(clientCallbackQueue, block);
  }

LABEL_13:
}

void __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = [v6 domain];
      if ([v8 isEqualToString:*MEMORY[0x277CBBF50]])
      {
        v9 = [v6 code];

        if (v9 == 26)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = WeakRetained;
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = HMFGetLogIdentifier();
            v14 = *(a1 + 32);
            *buf = 138543618;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Zone %@ does not exist in cloud, nothing to delete", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          if (*(a1 + 48))
          {
            v15 = [v11 clientCallbackQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke_69;
            block[3] = &unk_2797348C0;
            v21 = *(a1 + 48);
            dispatch_async(v15, block);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      [*(a1 + 40) setZoneWasDeleted:1];
    }

    if (*(a1 + 48))
    {
      v16 = [WeakRetained clientCallbackQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke_2_70;
      v17[3] = &unk_279735738;
      v19 = *(a1 + 48);
      v18 = v6;
      dispatch_async(v16, v17);
    }
  }
}

void __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  if (!v6)
  {
    [WeakRetained _uploadTransaction:*(a1 + 40) completionHandler:*(a1 + 48)];
    goto LABEL_14;
  }

  v9 = [v6 domain];
  if ([v9 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v10 = [v6 code];

    if (v10 == 26)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v8;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = *(a1 + 32);
        *buf = 138543618;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Create zone %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [v12 _createZoneAndUploadTransaction:*(a1 + 40) completionHandler:*(a1 + 48)];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v16 = objc_autoreleasePoolPush();
  v17 = v8;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(a1 + 32);
    *buf = 138543618;
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch zone %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (*(a1 + 48))
  {
    v21 = [v17 clientCallbackQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__HMDCloudManager__checkZoneAndUploadTransaction_completionHandler___block_invoke_72;
    v22[3] = &unk_279735738;
    v24 = *(a1 + 48);
    v23 = v6;
    dispatch_async(v21, v22);
  }

LABEL_14:
}

- (void)_verifyZoneHasBeenDeletedTransaction:(id)transaction completionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  cloudZone = [transactionCopy cloudZone];
  if (cloudZone)
  {
    v9 = [objc_alloc(MEMORY[0x277CBC388]) initWithPreviousServerChangeToken:0];
    [v9 setFetchAllChanges:1];
    *&v37 = 0;
    *(&v37 + 1) = &v37;
    v38 = 0x2020000000;
    v39 = 0;
    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__HMDCloudManager__verifyZoneHasBeenDeletedTransaction_completionHandler___block_invoke_2;
    v27[3] = &unk_279725730;
    v10 = cloudZone;
    v28 = v10;
    v29 = &v37;
    [v9 setRecordZoneWithIDWasDeletedBlock:v27];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__HMDCloudManager__verifyZoneHasBeenDeletedTransaction_completionHandler___block_invoke_3;
    v21[3] = &unk_279725758;
    objc_copyWeak(&v26, &location);
    v22 = v10;
    v24 = handlerCopy;
    v25 = &v37;
    v23 = transactionCopy;
    [v9 setFetchDatabaseChangesCompletionBlock:v21];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      operationID = [v9 operationID];
      *buf = 138543618;
      v34 = v14;
      v35 = 2112;
      v36 = operationID;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Verifying zone was deleted operation: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCloudManager *)selfCopy __addCKDatabaseOperation:v9];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v37, 8);
    goto LABEL_9;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    LODWORD(v37) = 138543362;
    *(&v37 + 4) = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine zone to determine if deleted", &v37, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  if (handlerCopy)
  {
    clientCallbackQueue = [(HMDCloudManager *)selfCopy2 clientCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDCloudManager__verifyZoneHasBeenDeletedTransaction_completionHandler___block_invoke;
    block[3] = &unk_2797348C0;
    v32 = handlerCopy;
    dispatch_async(clientCallbackQueue, block);

    v9 = v32;
LABEL_9:
  }
}

void __74__HMDCloudManager__verifyZoneHasBeenDeletedTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __74__HMDCloudManager__verifyZoneHasBeenDeletedTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zone];
  v6 = [v5 zoneID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __74__HMDCloudManager__verifyZoneHasBeenDeletedTransaction_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v7)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = WeakRetained;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = *(a1 + 32);
        *buf = 138543874;
        v32 = v12;
        v33 = 2112;
        v34 = v13;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine if zone %@ was deleted in the cloud with error %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      if (*(a1 + 48))
      {
        v14 = [v10 clientCallbackQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__HMDCloudManager__verifyZoneHasBeenDeletedTransaction_completionHandler___block_invoke_67;
        block[3] = &unk_279735738;
        v15 = &v30;
        v30 = *(a1 + 48);
        v29 = v7;
        dispatch_async(v14, block);

        v16 = v29;
LABEL_16:
      }
    }

    else
    {
      v17 = *(*(*(a1 + 56) + 8) + 24);
      v18 = objc_autoreleasePoolPush();
      v19 = WeakRetained;
      v20 = HMFGetOSLogHandle();
      v21 = v20;
      if (v17 == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          v23 = *(a1 + 32);
          *buf = 138543618;
          v32 = v22;
          v33 = 2112;
          v34 = v23;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Zone %@ was deleted in the cloud", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        [*(a1 + 40) setZoneWasDeleted:1];
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v25 = *(a1 + 32);
          *buf = 138543618;
          v32 = v24;
          v33 = 2112;
          v34 = v25;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Zone %@ does not exist in cloud and transaction is not marked to create, cannot upload records", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
      }

      if (*(a1 + 48))
      {
        v16 = [v19 clientCallbackQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __74__HMDCloudManager__verifyZoneHasBeenDeletedTransaction_completionHandler___block_invoke_68;
        v26[3] = &unk_2797348C0;
        v15 = &v27;
        v27 = *(a1 + 48);
        dispatch_async(v16, v26);
        goto LABEL_16;
      }
    }
  }
}

- (void)_createZoneAndUploadTransaction:(id)transaction completionHandler:(id)handler
{
  location[3] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  cloudZone = [transactionCopy cloudZone];
  if (cloudZone)
  {
    objc_initWeak(location, self);
    v9 = [cloudZone zone];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__HMDCloudManager__createZoneAndUploadTransaction_completionHandler___block_invoke_2;
    v15[3] = &unk_2797257A8;
    objc_copyWeak(&v19, location);
    v16 = cloudZone;
    v18 = handlerCopy;
    v17 = transactionCopy;
    [(HMDCloudManager *)self __saveRecordZone:v9 completionHandler:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine zone to upload data", location, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (handlerCopy)
    {
      clientCallbackQueue = [(HMDCloudManager *)selfCopy clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__HMDCloudManager__createZoneAndUploadTransaction_completionHandler___block_invoke;
      block[3] = &unk_2797348C0;
      v21 = handlerCopy;
      dispatch_async(clientCallbackQueue, block);
    }
  }
}

void __69__HMDCloudManager__createZoneAndUploadTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __69__HMDCloudManager__createZoneAndUploadTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v16 = v8;
        v12 = *(a1 + 32);
        v13 = [v6 hmd_conciseCKError];
        v14 = [v13 shortDescription];
        *buf = 138543874;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        v8 = v16;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to create zone %@ due to error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      if (*(a1 + 48))
      {
        v15 = [v9 clientCallbackQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__HMDCloudManager__createZoneAndUploadTransaction_completionHandler___block_invoke_63;
        block[3] = &unk_279735738;
        v19 = *(a1 + 48);
        v18 = v6;
        dispatch_async(v15, block);
      }
    }

    else
    {
      [*(a1 + 40) setZoneWasCreated:1];
      [WeakRetained _uploadTransaction:*(a1 + 40) completionHandler:*(a1 + 48)];
    }
  }
}

- (void)uploadTransaction:(id)transaction completionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workQueue = [(HMDCloudManager *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HMDCloudManager_uploadTransaction_completionHandler___block_invoke;
  v11[3] = &unk_279730E50;
  objc_copyWeak(&v14, &location);
  v12 = transactionCopy;
  v13 = handlerCopy;
  v9 = transactionCopy;
  v10 = handlerCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__HMDCloudManager_uploadTransaction_completionHandler___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained accountActive] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@User account is not active, failing transaction upload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    if (a1[5])
    {
      v9 = [v6 clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__HMDCloudManager_uploadTransaction_completionHandler___block_invoke_62;
      block[3] = &unk_2797348C0;
      v15 = a1[5];
      dispatch_async(v9, block);
    }
  }

  else
  {
    v4 = a1[4];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__HMDCloudManager_uploadTransaction_completionHandler___block_invoke_2;
    v10[3] = &unk_2797346E0;
    objc_copyWeak(&v13, a1 + 6);
    v11 = a1[4];
    v12 = a1[5];
    [v4 loadCloudRecordsAndDetermineDeletesFromCache:v10];

    objc_destroyWeak(&v13);
  }
}

void __55__HMDCloudManager_uploadTransaction_completionHandler___block_invoke_62(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:75];
  (*(*(a1 + 32) + 16))();
}

void __55__HMDCloudManager_uploadTransaction_completionHandler___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDCloudManager_uploadTransaction_completionHandler___block_invoke_3;
    block[3] = &unk_2797355D0;
    block[4] = v3;
    v6 = a1[4];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

- (void)_fetchTransaction:(id)transaction completionHandler:(id)handler
{
  v79[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  handlerCopy = handler;
  v48 = transactionCopy;
  cloudZone = [transactionCopy cloudZone];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (cloudZone)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = cloudZone;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Fetching changes from zone %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v47 = objc_alloc_init(MEMORY[0x277CBC3A0]);
    serverChangeToken = [cloudZone serverChangeToken];
    [v47 setPreviousServerChangeToken:serverChangeToken];

    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      previousServerChangeToken = [v47 previousServerChangeToken];
      v19 = [previousServerChangeToken debugDescription];
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Fetching data with current server token: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (([transactionCopy zoneHasNoLocalData] & 1) != 0 || objc_msgSend(transactionCopy, "isHomeManagerTransaction") && (objc_msgSend(transactionCopy, "doRecordsExistInCache") & 1) == 0)
    {
      [v47 setFetchNewestChangesFirst:1];
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    logger = v15->_logger;
    if (os_signpost_enabled(logger))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FetchTransaction", "", buf, 2u);
    }

    v24 = objc_alloc(MEMORY[0x277CBC3B8]);
    v25 = [cloudZone zone];
    zoneID = [v25 zoneID];
    v79[0] = zoneID;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
    v28 = [cloudZone zone];
    zoneID2 = [v28 zoneID];
    v77 = zoneID2;
    v78 = v47;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v31 = [v24 initWithRecordZoneIDs:v27 configurationsByRecordZoneID:v30];

    [v31 setFetchAllChanges:1];
    objc_initWeak(&location, v15);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_49;
    v65[3] = &unk_279725690;
    objc_copyWeak(v67, &location);
    v67[1] = 0xEEEEB0B5B2B2EEEELL;
    v32 = v48;
    v66 = v32;
    [v31 setRecordChangedBlock:v65];
    if (v20)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v15;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v36;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Ignoring deleted records while fetch zone", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
    }

    else
    {
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_52;
      v62[3] = &unk_2797256B8;
      objc_copyWeak(v64, &location);
      v64[1] = 0xEEEEB0B5B2B2EEEELL;
      v63 = v32;
      [v31 setRecordWithIDWasDeletedBlock:v62];

      objc_destroyWeak(v64);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v76 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_54;
    aBlock[3] = &unk_2797256E0;
    objc_copyWeak(&v61, &location);
    v37 = handlerCopy;
    v60 = v37;
    v38 = v32;
    v59 = v38;
    v39 = _Block_copy(aBlock);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_2;
    v54[3] = &unk_279725708;
    objc_copyWeak(v57, &location);
    v57[1] = 0xEEEEB0B5B2B2EEEELL;
    v56 = buf;
    v40 = v39;
    v55 = v40;
    [v31 setRecordZoneFetchCompletionBlock:v54];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_59;
    v49[3] = &unk_279732DB8;
    objc_copyWeak(&v53, &location);
    v52 = buf;
    v50 = v38;
    v51 = v37;
    [v31 setFetchRecordZoneChangesCompletionBlock:v49];
    v41 = objc_autoreleasePoolPush();
    v42 = v15;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      operationID = [v31 operationID];
      *v71 = 138543618;
      v72 = v44;
      v73 = 2112;
      v74 = operationID;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Fetching record changes operation with ID: %@", v71, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    [(HMDCloudManager *)v42 __addCKDatabaseOperation:v31];

    objc_destroyWeak(&v53);
    objc_destroyWeak(v57);

    objc_destroyWeak(&v61);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(v67);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine zone to fetch data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    if (handlerCopy)
    {
      clientCallbackQueue = [(HMDCloudManager *)selfCopy clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke;
      block[3] = &unk_2797348C0;
      v70 = handlerCopy;
      dispatch_async(clientCallbackQueue, block);
    }
  }
}

void __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(*(a1 + 32) + 16))();
}

void __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_49(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7 = v6;
    v8 = *(a1 + 48);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = [v3 recordID];
      v10 = [v9 recordName];
      v13 = 138412290;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v7, OS_SIGNPOST_EVENT, v8, "FetchTransaction", "recordcallbackrecordName=%{signpost.description:attribute}@ ", &v13, 0xCu);
    }

    v11 = [v5 logEventSubmitter];
    v12 = [HMDRecordChangedLogEvent recordChanged:v3];
    [v11 submitLogEvent:v12];

    [*(a1 + 32) addChangeWithRecord:v3];
  }
}

void __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v10 = v9;
    v11 = *(a1 + 48);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = [v5 recordName];
      v18 = 138412290;
      v19 = v12;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v10, OS_SIGNPOST_EVENT, v11, "FetchTransaction", "deletecallbackrecordName=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }

    v13 = objc_autoreleasePoolPush();
    v14 = v8;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v5 recordName];
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Received deleted record changed event for record %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [*(a1 + 32) addChangeWithDeletedRecordID:v5];
  }
}

void __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_54(id *a1, void *a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained logEventSubmitter];
    v11 = [HMDCloudSyncFetchLogEvent fetchCompletedWithError:v7];
    [v10 submitLogEvent:v11];

    if (a1[5])
    {
      v12 = [v7 domain];
      v13 = *MEMORY[0x277CBBF50];
      if ([v12 isEqualToString:*MEMORY[0x277CBBF50]])
      {
        v14 = [v7 code];

        if (v14 == 21)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = v9;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543362;
            v44 = v18;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Fetch failed due to expired token, resetting token and re-fetching", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          v19 = [a1[4] cloudZone];
          [v19 setServerChangeToken:0];
          v20 = [v16 delegate];
          if ([a1[4] isHomeManagerTransaction])
          {
            [v20 fetchHomeManagerCloudConflict:0 withDelay:0.0];
          }

          else if ([a1[4] isHomeTransaction])
          {
            v27 = objc_alloc(MEMORY[0x277CCAD78]);
            v28 = [v19 zone];
            [v28 zoneID];
            v29 = v39 = v20;
            v30 = [v29 zoneName];
            v31 = [v27 initWithUUIDString:v30];

            v20 = v39;
            if (v31)
            {
              [v39 fetchHomeFromCloudZone:v31 cloudConflict:0 withDelay:0.0];
            }
          }

          v32 = objc_autoreleasePoolPush();
          v33 = v16;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543362;
            v44 = v35;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Resetting databaseServerChangeToken because zone fetch failed", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v32);
          v36 = [v33 cloudCache];
          [v36 setDatabaseServerChangeToken:0];

          v37 = [v33 cloudCache];
          [v37 persistDatabaseServerChangeToken];

          goto LABEL_24;
        }
      }

      else
      {
      }

      v21 = [v7 domain];
      if ([v21 isEqualToString:v13])
      {
        v22 = [v7 code];

        if (v22 == 26)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v9;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543362;
            v44 = v26;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Zone does not exist in cloud, nothing to fetch", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v23);
          [a1[4] setZoneWasDeleted:1];
          goto LABEL_24;
        }
      }

      else
      {
      }

      [a1[4] setUpdatedServerChangeToken:v6];
LABEL_24:
      v38 = [v9 clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_56;
      block[3] = &unk_279735738;
      v42 = a1[5];
      v41 = v7;
      dispatch_async(v38, block);
    }
  }
}

void __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = objc_autoreleasePoolPush();
  v17 = WeakRetained;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v31 = a5;
    v19 = v14;
    v20 = v12;
    v22 = v21 = v13;
    v23 = [v11 zoneName];
    *buf = 138543618;
    v33 = v22;
    v34 = 2112;
    v35 = v23;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetch record completion for zone %@", buf, 0x16u);

    v13 = v21;
    v12 = v20;
    v14 = v19;
    a5 = v31;
  }

  objc_autoreleasePoolPop(v16);
  if (v17)
  {
    v24 = v17[1];
    v25 = v24;
    v26 = *(a1 + 56);
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2531F8000, v25, OS_SIGNPOST_INTERVAL_END, v26, "FetchTransaction", "", buf, 2u);
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v17;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Completion handler for fetch has already been called", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
    if ((a5 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_59(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained || (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    goto LABEL_14;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:*MEMORY[0x277CBBF50]])
  {

    goto LABEL_9;
  }

  v6 = [v3 code];

  if (v6 != 26)
  {
LABEL_9:
    v11 = objc_autoreleasePoolPush();
    v12 = WeakRetained;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Resetting databaseServerChangeToken because zone fetch failed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [v12 cloudCache];
    [v15 setDatabaseServerChangeToken:0];

    goto LABEL_12;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Zone does not exist in cloud, nothing to fetch", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) setZoneWasDeleted:1];
LABEL_12:
  if (*(a1 + 40))
  {
    v16 = [WeakRetained clientCallbackQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__HMDCloudManager__fetchTransaction_completionHandler___block_invoke_60;
    v17[3] = &unk_279735738;
    v19 = *(a1 + 40);
    v18 = v3;
    dispatch_async(v16, v17);
  }

LABEL_14:
}

- (void)fetchTransaction:(id)transaction completionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDCloudManager_fetchTransaction_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  v12 = transactionCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = transactionCopy;
  v10 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __54__HMDCloudManager_fetchTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) accountActive])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    [v2 _fetchTransaction:v3 completionHandler:v4];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@User account is not active, failing transaction fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    if (*(a1 + 48))
    {
      v9 = [*(a1 + 32) clientCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__HMDCloudManager_fetchTransaction_completionHandler___block_invoke_44;
      block[3] = &unk_2797348C0;
      v11 = *(a1 + 48);
      dispatch_async(v9, block);
    }
  }
}

void __54__HMDCloudManager_fetchTransaction_completionHandler___block_invoke_44(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:75];
  (*(*(a1 + 32) + 16))();
}

- (void)_removeHomeZoneName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = nameCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing zone %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (nameCopy)
  {
    cloudCache = [(HMDCloudManager *)selfCopy cloudCache];
    [cloudCache deleteHomeZoneWithName:nameCopy];
  }
}

- (void)removeHomeZoneName:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  workQueue = [(HMDCloudManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDCloudManager_removeHomeZoneName___block_invoke;
  block[3] = &unk_279732E78;
  objc_copyWeak(&v9, &location);
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__HMDCloudManager_removeHomeZoneName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeHomeZoneName:*(a1 + 32)];
}

- (void)_addHomeZoneName:(id)name owner:(id)owner
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  ownerCopy = owner;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = nameCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding home cloud zone %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (nameCopy)
  {
    cloudCache = [(HMDCloudManager *)selfCopy cloudCache];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__HMDCloudManager__addHomeZoneName_owner___block_invoke;
    v13[3] = &unk_279725668;
    v13[4] = selfCopy;
    v14 = nameCopy;
    [cloudCache homeZoneWithName:v14 owner:ownerCopy completion:v13];
  }
}

void __42__HMDCloudManager__addHomeZoneName_owner___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setupSubscriptionForZone:a2];
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 40)];
  v3 = [*(a1 + 32) delegate];
  [v3 fetchHomeFromCloudZone:v4 cloudConflict:0 withDelay:0.0];
}

- (void)addHomeZoneName:(id)name owner:(id)owner
{
  nameCopy = name;
  ownerCopy = owner;
  objc_initWeak(&location, self);
  workQueue = [(HMDCloudManager *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__HMDCloudManager_addHomeZoneName_owner___block_invoke;
  v11[3] = &unk_279732670;
  objc_copyWeak(&v14, &location);
  v12 = nameCopy;
  v13 = ownerCopy;
  v9 = ownerCopy;
  v10 = nameCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __41__HMDCloudManager_addHomeZoneName_owner___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _addHomeZoneName:*(a1 + 32) owner:*(a1 + 40)];
}

- (HMDCloudHomeManagerZone)homeManagerZone
{
  cloudCache = [(HMDCloudManager *)self cloudCache];
  homeManagerZone = [cloudCache homeManagerZone];

  return homeManagerZone;
}

- (HMDCloudMetadataZone)metadataZone
{
  cloudCache = [(HMDCloudManager *)self cloudCache];
  metadataZone = [cloudCache metadataZone];

  return metadataZone;
}

- (BOOL)legacyZoneHasRecordsAvailable
{
  cloudCache = [(HMDCloudManager *)self cloudCache];
  legacyZone = [cloudCache legacyZone];
  hasRecordsAvailable = [legacyZone hasRecordsAvailable];

  return hasRecordsAvailable;
}

- (HMDCloudLegacyZone)legacyZone
{
  cloudCache = [(HMDCloudManager *)self cloudCache];
  legacyZone = [cloudCache legacyZone];

  return legacyZone;
}

- (void)__deleteRecordWithID:(id)d completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CBC4A0]);
    v33[0] = dCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v10 = [v8 initWithRecordsToSave:0 recordIDsToDelete:v9];

    operationID = [v10 operationID];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __58__HMDCloudManager___deleteRecordWithID_completionHandler___block_invoke;
    v24 = &unk_279725618;
    selfCopy = self;
    v12 = operationID;
    v26 = v12;
    v27 = dCopy;
    v28 = handlerCopy;
    [v10 setModifyRecordsCompletionBlock:&v21];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Start deleting record with operation ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCloudManager *)selfCopy2 __addCKDatabaseOperation:v10, v21, v22, v23, v24, selfCopy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No recordID specified to delete", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __58__HMDCloudManager___deleteRecordWithID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v18 = 138543874;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Completed deleting record with operation ID %@ and error %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [v9 hmd_actualCKErrorFromCKErrorPartialFailure:*(a1 + 48)];
  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = [v8 firstObject];
    (*(v16 + 16))(v16, v17, v15);
  }
}

- (void)__deleteRecordZonesWithIDs:(id)ds completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBC490]) initWithRecordZonesToSave:0 recordZoneIDsToDelete:dsCopy];
    operationID = [v8 operationID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__HMDCloudManager___deleteRecordZonesWithIDs_completionHandler___block_invoke;
    v19[3] = &unk_279725640;
    v19[4] = self;
    v10 = operationID;
    v20 = v10;
    v21 = handlerCopy;
    [v8 setModifyRecordZonesCompletionBlock:v19];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Start deleting record zones with operation ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCloudManager *)selfCopy __addCKDatabaseOperation:v8];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@No zones specified to delete", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __64__HMDCloudManager___deleteRecordZonesWithIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543874;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Completed deleting record zones with operation ID %@ and error %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, v8, v9);
  }
}

- (void)__deleteRecordZoneWithID:(id)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    v16 = dCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__HMDCloudManager___deleteRecordZoneWithID_completionHandler___block_invoke;
    v13[3] = &unk_279734A00;
    v14 = dCopy;
    v15 = handlerCopy;
    [(HMDCloudManager *)self __deleteRecordZonesWithIDs:v8 completionHandler:v13];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@No zoneID specified to delete", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __62__HMDCloudManager___deleteRecordZoneWithID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 hmd_actualCKErrorFromCKErrorPartialFailure:*(a1 + 32)];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [v8 firstObject];
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)__saveRecordZone:(id)zone completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  handlerCopy = handler;
  if (zoneCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CBC490]);
    v33[0] = zoneCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v10 = [v8 initWithRecordZonesToSave:v9 recordZoneIDsToDelete:0];

    operationID = [v10 operationID];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __54__HMDCloudManager___saveRecordZone_completionHandler___block_invoke;
    v24 = &unk_279725618;
    selfCopy = self;
    v12 = operationID;
    v26 = v12;
    v27 = zoneCopy;
    v28 = handlerCopy;
    [v10 setModifyRecordZonesCompletionBlock:&v21];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Start saving record zone with operation ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCloudManager *)selfCopy2 __addCKDatabaseOperation:v10, v21, v22, v23, v24, selfCopy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No zone specified to create", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __54__HMDCloudManager___saveRecordZone_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v19 = 138543874;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Completed saving record zone with operation ID %@ and error %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [*(a1 + 48) zoneID];
  v16 = [v9 hmd_actualCKErrorFromCKErrorPartialFailure:v15];

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = [v7 firstObject];
    (*(v17 + 16))(v17, v18, v16);
  }
}

- (void)__fetchRecordZoneWithID:(id)d completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CBC3D0]);
    v33[0] = dCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v10 = [v8 initWithRecordZoneIDs:v9];

    operationID = [v10 operationID];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __61__HMDCloudManager___fetchRecordZoneWithID_completionHandler___block_invoke;
    v24 = &unk_2797255F0;
    selfCopy = self;
    v12 = operationID;
    v26 = v12;
    v27 = dCopy;
    v28 = handlerCopy;
    [v10 setFetchRecordZonesCompletionBlock:&v21];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Start fetching record zone with operation ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCloudManager *)selfCopy2 __addCKDatabaseOperation:v10, v21, v22, v23, v24, selfCopy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No zoneID specified to fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __61__HMDCloudManager___fetchRecordZoneWithID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v15 = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Completed fetching record zone with operation ID %@ and error %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v6 hmd_actualCKErrorFromCKErrorPartialFailure:*(a1 + 48)];
  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = [v5 objectForKeyedSubscript:*(a1 + 48)];
    (*(v13 + 16))(v13, v14, v12);
  }
}

- (void)__fetchAllRecordZonesWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  fetchAllRecordZonesOperation = [MEMORY[0x277CBC3D0] fetchAllRecordZonesOperation];
  operationID = [fetchAllRecordZonesOperation operationID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HMDCloudManager___fetchAllRecordZonesWithCompletionHandler___block_invoke;
  v13[3] = &unk_2797274F8;
  v13[4] = self;
  v7 = operationID;
  v14 = v7;
  v8 = handlerCopy;
  v15 = v8;
  [fetchAllRecordZonesOperation setFetchRecordZonesCompletionBlock:v13];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Start fetching all record zone with operation ID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDCloudManager *)selfCopy __addCKDatabaseOperation:fetchAllRecordZonesOperation];
}

void __62__HMDCloudManager___fetchAllRecordZonesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Completed fetching all record zone with operation ID %@ and error %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = [v5 allValues];
    (*(v12 + 16))(v12, v13, v6);
  }
}

- (void)__saveSubscription:(id)subscription completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  handlerCopy = handler;
  if (subscriptionCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CBC4B0]);
    v33[0] = subscriptionCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v10 = [v8 initWithSubscriptionsToSave:v9 subscriptionIDsToDelete:0];

    operationID = [v10 operationID];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __56__HMDCloudManager___saveSubscription_completionHandler___block_invoke;
    v24 = &unk_279725618;
    selfCopy = self;
    v12 = operationID;
    v26 = v12;
    v27 = subscriptionCopy;
    v28 = handlerCopy;
    [v10 setModifySubscriptionsCompletionBlock:&v21];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Start saving zone subscription with operation ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCloudManager *)selfCopy2 __addCKDatabaseOperation:v10, v21, v22, v23, v24, selfCopy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No subscription specified to save", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __56__HMDCloudManager___saveSubscription_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    *buf = 138543874;
    v39 = v13;
    v40 = 2112;
    v41 = v14;
    v42 = 2112;
    v43 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Completed saving zone subscription with operation ID %@ and error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [*(a1 + 48) subscriptionID];
  v16 = [v9 hmd_actualCKErrorFromCKErrorPartialFailure:v15];

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v7;
    v18 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v29 = v9;
      v20 = a1;
      v30 = v7;
      v31 = v8;
      v21 = *v34;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v17;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;

          if (v24)
          {
            v25 = [v24 subscriptionID];
            v26 = [*(v20 + 48) subscriptionID];
            v27 = [v25 isEqualToString:v26];

            if (v27)
            {
              v7 = v30;
              v8 = v31;
              goto LABEL_19;
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v8 = v31;
        if (v19)
        {
          continue;
        }

        break;
      }

      v17 = 0;
      v7 = v30;
LABEL_19:
      v16 = 0;
      v9 = v29;
      a1 = v20;
    }

    else
    {
      v17 = 0;
    }
  }

  v28 = *(a1 + 56);
  if (v28)
  {
    (*(v28 + 16))(v28, v17, v16);
  }
}

- (void)__fetchSubscriptionWithID:(id)d completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (dCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CBC418]);
    v33[0] = dCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v10 = [v8 initWithSubscriptionIDs:v9];

    operationID = [v10 operationID];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __63__HMDCloudManager___fetchSubscriptionWithID_completionHandler___block_invoke;
    v24 = &unk_2797255F0;
    selfCopy = self;
    v12 = operationID;
    v26 = v12;
    v27 = dCopy;
    v28 = handlerCopy;
    [v10 setFetchSubscriptionCompletionBlock:&v21];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Start fetching zone subscription with operation ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCloudManager *)selfCopy2 __addCKDatabaseOperation:v10, v21, v22, v23, v24, selfCopy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No subscriptionID specified to fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __63__HMDCloudManager___fetchSubscriptionWithID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v15 = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Completed fetching zone subscription with operation ID %@ and error %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v6 hmd_actualCKErrorFromCKErrorPartialFailure:*(a1 + 48)];
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v5 objectForKeyedSubscript:*(a1 + 48)];
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    (*(v14 + 16))(v14, v13, v12);
  }
}

- (void)__addCKDatabaseOperation:(id)operation
{
  v14 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v5 = operationCopy;
  if (operationCopy)
  {
    configuration = [operationCopy configuration];
    [configuration setQualityOfService:17];

    database = [(HMDCloudManager *)self database];
    [database addOperation:v5];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Operation no specified to submit to database", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDCloudManager;
  [(HMDCloudManager *)&v4 dealloc];
}

- (HMDCloudManager)initWithMessageDispatcher:(id)dispatcher cloudDataSyncStateFilter:(id)filter cloudCache:(id)cache delegate:(id)delegate dataSource:(id)source syncManager:(id)manager callbackQueue:(id)queue container:(id)self0 logEventSubmitter:(id)self1 workQueue:(id)self2
{
  v53 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  filterCopy = filter;
  cacheCopy = cache;
  delegateCopy = delegate;
  sourceCopy = source;
  managerCopy = manager;
  queueCopy = queue;
  containerCopy = container;
  submitterCopy = submitter;
  workQueueCopy = workQueue;
  v48.receiver = self;
  v48.super_class = HMDCloudManager;
  v21 = [(HMDCloudManager *)&v48 init];
  if (v21)
  {
    v22 = HMFGetOSLogHandle();
    logger = v21->_logger;
    v21->_logger = v22;

    objc_storeStrong(&v21->_workQueue, workQueue);
    objc_storeStrong(&v21->_container, container);
    privateCloudDatabase = [(CKContainer *)v21->_container privateCloudDatabase];
    database = v21->_database;
    v21->_database = privateCloudDatabase;

    objc_storeStrong(&v21->_cloudCache, cache);
    v21->_cloudHomeDataRecordExists = 0;
    objc_storeStrong(&v21->_clientCallbackQueue, queue);
    objc_storeStrong(&v21->_msgDispatcher, dispatcher);
    v26 = delegateCopy;
    objc_storeWeak(&v21->_delegate, delegateCopy);
    objc_storeWeak(&v21->_dataSource, sourceCopy);
    objc_storeWeak(&v21->_syncManager, managerCopy);
    retryTimer = v21->_retryTimer;
    v21->_retryTimer = 0;

    pollTimer = v21->_pollTimer;
    v21->_pollTimer = 0;

    controllerKeyPollTimer = v21->_controllerKeyPollTimer;
    v21->_controllerKeyPollTimer = 0;

    cloudDataDeletedNotificationHandler = v21->_cloudDataDeletedNotificationHandler;
    v21->_cloudDataDeletedNotificationHandler = 0;

    cloudMetadataDeletedNotificationHandler = v21->_cloudMetadataDeletedNotificationHandler;
    v21->_cloudMetadataDeletedNotificationHandler = 0;

    v21->_keychainSyncEnabled = [sourceCopy isKeychainSyncEnabled];
    v21->_firstV3FetchRun = 0;
    v21->_firstDBQueryRun = 0;
    objc_storeStrong(&v21->_cloudDataSyncStateFilter, filter);
    objc_storeStrong(&v21->_logEventSubmitter, submitter);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel_resetCloudServerTokenData_ name:@"kCloudServerTokenDataResetNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v21 selector:sel_handleKeychainStateChangedNotification_ name:@"HMDAppleAccountSettingsKeychainSyncStateUpdatedNotificationKey" object:0];

    [(HMDCloudManager *)v21 _registerForProxSetupNotifications];
    v34 = objc_autoreleasePoolPush();
    v35 = v21;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      containerIdentifier = [(CKContainer *)v21->_container containerIdentifier];
      *buf = 138543618;
      v50 = v37;
      v51 = 2112;
      v52 = containerIdentifier;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Using %@ as container identifier", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    delegateCopy = v26;
  }

  return v21;
}

- (HMDCloudManager)initWithMessageDispatcher:(id)dispatcher cloudDataSyncStateFilter:(id)filter cloudCache:(id)cache delegate:(id)delegate dataSource:(id)source syncManager:(id)manager logEventSubmitter:(id)submitter callbackQueue:(id)self0
{
  v40 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  filterCopy = filter;
  cacheCopy = cache;
  delegateCopy = delegate;
  sourceCopy = source;
  managerCopy = manager;
  submitterCopy = submitter;
  queueCopy = queue;
  v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v20 = dispatch_queue_create("com.apple.hmd.cksync", v19);

  v21 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.willow.config" environment:cloudKitContainerEnvironment];
  v22 = objc_autoreleasePoolPush();
  selfCopy = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v26 = v25 = delegateCopy;
    v27 = CKContainerEnvironmentString();
    *buf = 138543618;
    v37 = v26;
    v38 = 2112;
    v39 = v27;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Creating CloudKit container in '%@' environment", buf, 0x16u);

    delegateCopy = v25;
  }

  objc_autoreleasePoolPop(v22);
  v28 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v21];
  v30 = [(HMDCloudManager *)selfCopy initWithMessageDispatcher:dispatcherCopy cloudDataSyncStateFilter:filterCopy cloudCache:cacheCopy delegate:delegateCopy dataSource:sourceCopy syncManager:managerCopy callbackQueue:queueCopy container:v28 logEventSubmitter:submitterCopy workQueue:v20];

  return v30;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_40348 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_40348, &__block_literal_global_40349);
  }

  v3 = logCategory__hmf_once_v3_40350;

  return v3;
}

uint64_t __30__HMDCloudManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_40350;
  logCategory__hmf_once_v3_40350 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end