@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirror
+ (BOOL)__errorIsNotFound:(id)found;
+ (id)__certificatesRecordID;
+ (id)__createSignatureVerificationPolicy;
+ (id)__overrideParentModelID;
+ (id)__publicKeyFromCertificateRecord:(id)record dataKey:(id)key assetKey:(id)assetKey;
+ (id)__recordKeyCertificatePrefix:(id)prefix;
+ (id)logCategory;
+ (id)publicKeysFromCertificateRecord:(id)record;
+ (unint64_t)__maxSizeForCKRecordSignatureVerificationCertificateChain;
- (BOOL)__addOverrides:(id)overrides replace:(BOOL)replace options:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__canRecoverFromFetchDatabaseChangesError:(id)error fetchInfo:(id)info;
- (BOOL)__canRecoverFromVerificationCertificatesError:(id)error fetchInfo:(id)info;
- (BOOL)__createCloudZonesForFetchInfo:(id)info error:(id *)error;
- (BOOL)__removeAllLocalRulesWithOptions:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__removeAllOverridesWithOptions:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__removeOverridesForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__removeOverridesForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options activity:(id)activity error:(id *)error;
- (BOOL)__shouldFailCloudRecordFetchError:(id)error error:(id)a4;
- (BOOL)_removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options error:(id *)error;
- (BOOL)addOverrides:(id)overrides replace:(BOOL)replace options:(id)options error:(id *)error;
- (BOOL)isRunning;
- (BOOL)isShuttingDown;
- (BOOL)removeAllLocalRulesWithOptions:(id)options error:(id *)error;
- (BOOL)removeAllOverridesWithOptions:(id)options error:(id *)error;
- (BOOL)removeOverridesForRecordIDs:(id)ds options:(id)options error:(id *)error;
- (BOOL)removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options error:(id *)error;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirror)initWithLocalDatabase:(id)database cloudDatabase:(id)cloudDatabase useAnonymousRequests:(BOOL)requests ownerQueue:(id)queue;
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel)internalState;
- (NAFuture)lastAsyncFuture;
- (NAFuture)shutdownFuture;
- (NAFuture)startupFuture;
- (id)__asyncFutureWithActivity:(id)activity ignoreErrors:(BOOL)errors block:(id)block;
- (id)__createCloudZoneIDForZoneID:(id)d;
- (id)__fetchAllDataForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error;
- (id)__fetchAllDataForZoneID:(id)d options:(id)options activity:(id)activity error:(id *)error;
- (id)__fetchAllDataForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error;
- (id)__fetchOverridesForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error;
- (id)__fetchOverridesForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error;
- (id)__loadOrCreateInternalStateModelWithLocalZone:(id)zone activity:(id)activity;
- (id)__localZonesForRecordIDs:(id)ds activity:(id)activity error:(id *)error;
- (id)__openLocalZoneForCloudZoneID:(id)d error:(id *)error;
- (id)_fetchAllDataForZoneName:(id)name options:(id)options error:(id *)error;
- (id)_fetchOverridesForZoneName:(id)name options:(id)options error:(id *)error;
- (id)cloudFetchNeededForRecordIDs:(id)ds error:(id *)error;
- (id)desiredKeys;
- (id)destroy;
- (id)fetchAllDataForRecordIDs:(id)ds options:(id)options error:(id *)error;
- (id)fetchAllDataForZoneName:(id)name options:(id)options error:(id *)error;
- (id)fetchAllDataWithOptions:(id)options error:(id *)error;
- (id)fetchOverridesForRecordIDs:(id)ds options:(id)options error:(id *)error;
- (id)flush;
- (id)shutdown;
- (id)triggerOutputForOutputRow:(unint64_t)row options:(id)options;
- (void)__fetchCloudRecordsWithFetchInfo:(id)info;
- (void)__fetchDatabaseChangesCompleted:(id)completed error:(id)error;
- (void)__fetchDatabaseChangesWithFetchInfo:(id)info;
- (void)__fetchRecordByID:(id)d;
- (void)__fetchRecordsByQuery:(id)query;
- (void)__fetchVerificationCertificatesCompleted:(id)completed record:(id)record error:(id)error;
- (void)__fetchVerificationCertificatesWithFetchInfo:(id)info;
- (void)__fetchZoneChangesWithFetchInfo:(id)info;
- (void)__performCloudZonePullsWithFetchInfo:(id)info;
- (void)__removeDeletedZonesWithFetchInfo:(id)info;
- (void)__retryFetchDatabaseChangesWithFetchInfo:(id)info;
- (void)__retryFetchVerificationCertificatesWithFetchInfo:(id)info;
- (void)__saveInternalStateWithActivity:(id)activity;
- (void)__shutdownLocalZones:(id)zones activity:(id)activity;
- (void)__shutdownWithActivity:(id)activity;
- (void)__startQueryOperation:(id)operation operation:(id)a4;
- (void)__startUpCloudZonesWithFetchInfo:(id)info;
- (void)__startupWithLocalZone:(id)zone activity:(id)activity;
- (void)__updateChangeTokenWithFetchInfo:(id)info;
- (void)_fetchCloudRecordsForZoneID:(id)d recordID:(id)iD options:(id)options desiredKeys:(id)keys completion:(id)completion;
- (void)fetchCloudChangesForRecordIDs:(id)ds options:(id)options ignoreLastSynchronizedRecords:(BOOL)records xpcActivity:(id)activity completion:(id)completion;
- (void)fetchCloudRecordIDsForZoneID:(id)d options:(id)options completion:(id)completion;
- (void)fetchCloudRecordsForZoneID:(id)d recordID:(id)iD options:(id)options completion:(id)completion;
- (void)fetchVerificationCertificatesRecordWithOperationGroup:(id)group completion:(id)completion;
- (void)setLastAsyncFuture:(id)future;
- (void)startUpWithLocalZone:(id)zone;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirror

- (void)__startQueryOperation:(id)operation operation:(id)a4
{
  operationCopy = operation;
  v7 = a4;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  [v7 setCallbackQueue:workQueue];
  operationGroup = [operationCopy operationGroup];
  [v7 setGroup:operationGroup];

  desiredKeys = [operationCopy desiredKeys];

  if (desiredKeys)
  {
    desiredKeys2 = [operationCopy desiredKeys];
    [v7 setDesiredKeys:desiredKeys2];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke;
  v22[3] = &unk_27866DCA8;
  v12 = operationCopy;
  v23 = v12;
  v13 = workQueue;
  v24 = v13;
  [v7 setRecordFetchedBlock:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_3;
  v18[3] = &unk_27866DCD0;
  v19 = v12;
  v20 = v13;
  selfCopy = self;
  v14 = v13;
  v15 = v12;
  [v7 setQueryCompletionBlock:v18];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  publicDatabase = [cloudDatabase publicDatabase];
  [publicDatabase addOperation:v7];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_2;
  v6[3] = &unk_27868A010;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_4;
  v10[3] = &unk_278689550;
  v11 = *(a1 + 40);
  v12 = v6;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v5;
  v8 = v5;
  v9 = v6;
  [v7 performBlock:v10];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_4(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  if (*(a1 + 40) && [*(a1 + 48) __shouldFailCloudRecordFetchError:*(a1 + 56) error:?])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 48);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch records: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 56) finishWithError:*(a1 + 40)];
  }

  else
  {
    v7 = *(a1 + 56);
    if (*(a1 + 64))
    {
      v8 = [*(a1 + 56) activity];
      [v8 markWithFormat:@"Previous fetch completed successfully, now fetching more records from cursor"];

      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 48);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v17 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Previous fetch completed successfully, now fetching more records from cursor", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [objc_alloc(MEMORY[0x277CBC590]) initWithCursor:*(a1 + 64)];
      [*(a1 + 48) __startQueryOperation:*(a1 + 56) operation:v13];
    }

    else
    {
      v15 = [*(a1 + 56) records];
      v14 = objc_msgSend_copy(v15);
      [v7 finishWithResult:v14];
    }
  }
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____startQueryOperation_operation___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = [*(a1 + 40) records];
  [v2 addObject:*(a1 + 48)];
}

- (void)__fetchRecordsByQuery:(id)query
{
  v35 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneID = [queryCopy zoneID];

  activity = [queryCopy activity];
  v8 = activity;
  if (zoneID)
  {
    zoneID2 = [queryCopy zoneID];
    hmbDescription = [zoneID2 hmbDescription];
    [v8 markWithFormat:@"Fetching records from zone %@", hmbDescription];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = HMFGetLogIdentifier();
    zoneID3 = [queryCopy zoneID];
    hmbDescription2 = [zoneID3 hmbDescription];
    *buf = 138543618;
    v32 = v14;
    v33 = 2112;
    v34 = hmbDescription2;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching records from zone %@", buf, 0x16u);
  }

  else
  {
    [activity markWithFormat:@"Fetching all records"];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching all records", buf, 0xCu);
  }

LABEL_7:
  objc_autoreleasePoolPop(v11);
  desiredKeys = [queryCopy desiredKeys];

  if (desiredKeys)
  {
    activity2 = [queryCopy activity];
    desiredKeys2 = [queryCopy desiredKeys];
    [activity2 markWithFormat:@"Only fetching specific fields: %@", desiredKeys2];

    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      desiredKeys3 = [queryCopy desiredKeys];
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = desiredKeys3;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Only fetching specific fields: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v27 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"CD_CloudAccessory" predicate:v26];
  v28 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v27];
  zoneID4 = [queryCopy zoneID];

  if (zoneID4)
  {
    zoneID5 = [queryCopy zoneID];
    [v28 setZoneID:zoneID5];
  }

  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __startQueryOperation:queryCopy operation:v28];
}

- (void)__fetchRecordByID:(id)d
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  activity = [dCopy activity];
  recordID = [dCopy recordID];
  hmbDescription = [recordID hmbDescription];
  [activity markWithFormat:@"Fetching record: %@", hmbDescription];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    recordID2 = [dCopy recordID];
    hmbDescription2 = [recordID2 hmbDescription];
    *buf = 138543618;
    v39 = v12;
    v40 = 2112;
    v41 = hmbDescription2;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching record: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x277CBC3E0]);
  recordID3 = [dCopy recordID];
  v37 = recordID3;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v18 = [v15 initWithRecordIDs:v17];

  [v18 setCallbackQueue:workQueue];
  operationGroup = [dCopy operationGroup];
  [v18 setGroup:operationGroup];

  desiredKeys = [dCopy desiredKeys];

  if (desiredKeys)
  {
    activity2 = [dCopy activity];
    desiredKeys2 = [dCopy desiredKeys];
    [activity2 markWithFormat:@"Only fetching specific fields: %@", desiredKeys2];

    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      desiredKeys3 = [dCopy desiredKeys];
      *buf = 138543618;
      v39 = v26;
      v40 = 2112;
      v41 = desiredKeys3;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Only fetching specific fields: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    desiredKeys4 = [dCopy desiredKeys];
    [v18 setDesiredKeys:desiredKeys4];
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____fetchRecordByID___block_invoke;
  v33[3] = &unk_278675508;
  v34 = dCopy;
  v35 = workQueue;
  v36 = selfCopy;
  v29 = workQueue;
  v30 = dCopy;
  [v18 setFetchRecordsCompletionBlock:v33];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
  publicDatabase = [cloudDatabase publicDatabase];
  [publicDatabase addOperation:v18];
}

void __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____fetchRecordByID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____fetchRecordByID___block_invoke_2;
  v10[3] = &unk_278689550;
  v11 = *(a1 + 40);
  v12 = v6;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v5;
  v8 = v5;
  v9 = v6;
  [v7 performBlock:v10];
}

void __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____fetchRecordByID___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  if (*(a1 + 40) && [*(a1 + 48) __shouldFailCloudRecordFetchError:*(a1 + 56) error:?])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 48);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch records: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 56) finishWithError:*(a1 + 40)];
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = MEMORY[0x277CBEB98];
    if (v7)
    {
      v9 = [v7 allValues];
      v10 = [v8 setWithArray:v9];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB98] set];
    }

    [*(a1 + 56) finishWithResult:v10];
  }
}

- (void)__fetchCloudRecordsWithFetchInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  recordID = [infoCopy recordID];

  if (recordID)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __fetchRecordByID:infoCopy];
  }

  else
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __fetchRecordsByQuery:infoCopy];
  }
}

- (BOOL)__shouldFailCloudRecordFetchError:(id)error error:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = a4;
  if ([v7 hmbIsCKZoneDeletedError])
  {
    activity = [errorCopy activity];
    zoneID = [errorCopy zoneID];
    hmbDescription = [zoneID hmbDescription];
    [activity markWithFormat:@"Zone '%@' does not exist", hmbDescription];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      zoneID2 = [errorCopy zoneID];
      hmbDescription2 = [zoneID2 hmbDescription];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = hmbDescription2;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Zone '%@' does not exist", buf, 0x16u);
    }

LABEL_4:

    objc_autoreleasePoolPop(v11);
    v17 = 0;
    goto LABEL_15;
  }

  if ([v7 hmbIsCloudKitError])
  {
    if ([v7 code] == 11)
    {
      activity2 = [errorCopy activity];
      recordID = [errorCopy recordID];
      hmbDescription3 = [recordID hmbDescription];
      [activity2 markWithFormat:@"Record '%@' does not exist", hmbDescription3];

      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        recordID2 = [errorCopy recordID];
        hmbDescription4 = [recordID2 hmbDescription];
        *buf = 138543618;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = hmbDescription4;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Record '%@' does not exist", buf, 0x16u);
      }

      goto LABEL_4;
    }

    if ([v7 code] == 2)
    {
      userInfo = [v7 userInfo];
      v25 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v37 = 0;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __116__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____shouldFailCloudRecordFetchError_error___block_invoke;
      v32[3] = &unk_27866DC80;
      v33 = errorCopy;
      selfCopy3 = self;
      v35 = buf;
      [v25 enumerateKeysAndObjectsUsingBlock:v32];
      v17 = *(*&buf[8] + 24);

      _Block_object_dispose(buf, 8);
      goto LABEL_15;
    }
  }

  activity3 = [errorCopy activity];
  [activity3 markWithFormat:@"Failed to fetch records: %@", v7];

  v27 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v30;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch records: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v17 = 1;
LABEL_15:

  return v17 & 1;
}

void __116__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchCloudRecords____shouldFailCloudRecordFetchError_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 hmbIsCloudKitError] && objc_msgSend(v6, "code") == 11)
  {
    v7 = [*(a1 + 32) activity];
    v8 = [v5 hmbDescription];
    [v7 markWithFormat:@"Record '%@' does not exist", v8];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v5 hmbDescription];
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Record '%@' does not exist", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v14 = [*(a1 + 32) activity];
    v15 = [v5 hmbDescription];
    [v14 markWithFormat:@"Failed to fetch record %@: %@", v15, v6];

    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v5 hmbDescription];
      *buf = 138543874;
      v22 = v19;
      v23 = 2112;
      v24 = v20;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch record %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)__shutdownWithActivity:(id)activity
{
  v39 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self isShuttingDown])
  {
    [activityCopy markWithFormat:@"Already shutting down"];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Already shutting down", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    shutdownFuture = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy shutdownFuture];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke;
    v35[3] = &unk_278687CC0;
    v36 = activityCopy;
    v11 = activityCopy;
    v12 = [shutdownFuture addCompletionBlock:v35];

    v13 = v36;
  }

  else
  {
    [activityCopy markWithFormat:@"Shutting down"];
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Shutting down", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 setShuttingDown:1];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 setLocalZone:0];
    startupPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 startupPromise];
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v20 = [startupPromise finishWithError:v19];

    if (v20)
    {
      [activityCopy markWithFormat:@"Shut down before startup completed"];
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy2;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v24;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Shut down before startup completed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
    }

    shutdownPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 shutdownPromise];
    cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 cloudDatabase];
    shutdown = [cloudDatabase shutdown];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_18;
    v30[3] = &unk_27866F578;
    v31 = activityCopy;
    v32 = workQueue;
    v33 = selfCopy2;
    v34 = shutdownPromise;
    v13 = shutdownPromise;
    v28 = activityCopy;
    v29 = [shutdown addCompletionBlock:v30];
  }
}

void __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_2;
  v8[3] = &unk_278689550;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v4;
  v6 = *(a1 + 56);
  v12 = *(a1 + 48);
  v13 = v6;
  v7 = v4;
  [v5 performBlock:v8];
}

void __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_3;
  block[3] = &unk_2786891E0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v7;
  dispatch_async(v2, block);
}

void __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_3(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_4;
  v8[3] = &unk_2786891E0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = *(a1 + 48);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v7;
  [v2 performBlock:v8];
}

uint64_t __91__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Lifecycle____shutdownWithActivity___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) markWithFormat:@"Failed to shut down cloud database: %@", v2];
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 48);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      *buf = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down cloud database: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  [*(a1 + 40) markWithFormat:@"Shutdown completed"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 48);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Shutdown completed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 56) finishWithNoResult];
  return [*(a1 + 40) invalidate];
}

- (void)__startupWithLocalZone:(id)zone activity:(id)activity
{
  v22 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self isShuttingDown])
  {
    [activityCopy markWithFormat:@"Already shutting down"];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Already shutting down", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    startupPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy startupPromise];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [startupPromise finishWithError:v14];
  }

  else
  {
    [activityCopy markWithFormat:@"Starting up"];
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Starting up", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 setLocalZone:zoneCopy];
    v19 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 __loadOrCreateInternalStateModelWithLocalZone:zoneCopy activity:activityCopy];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 setInternalState:v19];

    startupPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 startupPromise];
    [startupPromise finishWithNoResult];
  }

  [activityCopy invalidate];
}

- (id)__loadOrCreateInternalStateModelWithLocalZone:(id)zone activity:(id)activity
{
  v32 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = +[HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel modelID];
  v27 = 0;
  v10 = [zoneCopy fetchModelWithModelID:v9 ofType:objc_opt_class() error:&v27];
  v11 = v27;
  v12 = v11;
  if (v10)
  {
    [activityCopy markWithFormat:@"Loaded existing internal state model"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Loaded existing internal state model", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      lastSynchronizedRecordIDs = [v10 lastSynchronizedRecordIDs];
      *buf = 138543618;
      v29 = v20;
      v30 = 2112;
      v31 = lastSynchronizedRecordIDs;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Last synchronized recordIDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    [activityCopy markWithFormat:@"Creating new internal state model because existing one was not found: %@", v11];
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Creating new internal state model because existing one was not found: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v10 = objc_opt_new();
  }

  return v10;
}

- (void)__retryFetchVerificationCertificatesWithFetchInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activity = [infoCopy activity];
  [infoCopy retryIntervalSeconds];
  [activity markWithFormat:@"Will retry the fetch in %lu seconds", v7];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    [infoCopy retryIntervalSeconds];
    *buf = 138543618;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Will retry the fetch in %lu seconds", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [infoCopy retryIntervalSeconds];
  v14 = dispatch_time(0, (v13 * 1000000000.0));
  [infoCopy setShouldRetry:0];
  [infoCopy setRetryCount:{objc_msgSend(infoCopy, "retryCount") + 1}];
  objc_initWeak(buf, selfCopy);
  workQueue2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __138__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____retryFetchVerificationCertificatesWithFetchInfo___block_invoke;
  block[3] = &unk_278686B48;
  v18 = infoCopy;
  v16 = infoCopy;
  objc_copyWeak(&v19, buf);
  dispatch_after(v14, workQueue2, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __138__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____retryFetchVerificationCertificatesWithFetchInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __138__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____retryFetchVerificationCertificatesWithFetchInfo___block_invoke_2;
  v3[3] = &unk_278686B48;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  [v2 performBlock:v3];

  objc_destroyWeak(&v5);
}

void __138__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____retryFetchVerificationCertificatesWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) activity];
    [v3 markWithFormat:@"Retrying fetch for verification certificates"];

    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying fetch for verification certificates", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [v5 __fetchVerificationCertificatesWithFetchInfo:*(a1 + 32)];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [*(a1 + 32) finishWithError:v8];
  }
}

- (BOOL)__canRecoverFromVerificationCertificatesError:(id)error fetchInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([errorCopy hmd_isCKError] && (objc_msgSend(errorCopy, "hmd_isNonRecoverableCKError") & 1) == 0 && (objc_msgSend(errorCopy, "hmbCloudKitRetryDelay"), objc_msgSend(infoCopy, "setRetryIntervalSeconds:"), objc_msgSend(infoCopy, "shouldRetry")))
  {
    activity = [infoCopy activity];
    [activity markWithFormat:@"Ignoring non-fatal error: %@", errorCopy];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = errorCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Ignoring non-fatal error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)__fetchVerificationCertificatesCompleted:(id)completed record:(id)record error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  recordCopy = record;
  errorCopy = error;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (recordCopy)
  {
    v12 = [objc_opt_class() publicKeysFromCertificateRecord:recordCopy];
    if ([v12 count])
    {
      [completedCopy setSignatureVerificationPublicKeys:v12];
      [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __fetchZoneChangesWithFetchInfo:completedCopy];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        recordID = [recordCopy recordID];
        hmbDescription = [recordID hmbDescription];
        v26 = 138543618;
        v27 = v16;
        v28 = 2112;
        v29 = hmbDescription;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get any usable public keys from record: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [completedCopy finishWithError:v19];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (errorCopy && ![(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __canRecoverFromVerificationCertificatesError:errorCopy fetchInfo:completedCopy])
  {
    [completedCopy finishWithError:errorCopy];
    goto LABEL_15;
  }

  if (![completedCopy shouldRetry])
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      recordID2 = [0 recordID];
      hmbDescription2 = [recordID2 hmbDescription];
      v26 = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = hmbDescription2;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Fetch returned no verification certificates record: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [completedCopy finishWithError:v12];
    goto LABEL_14;
  }

  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __retryFetchVerificationCertificatesWithFetchInfo:completedCopy];
LABEL_15:
}

- (void)__fetchVerificationCertificatesWithFetchInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  operationGroup = [infoCopy operationGroup];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __133__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____fetchVerificationCertificatesWithFetchInfo___block_invoke;
  v13 = &unk_2786769A8;
  v7 = infoCopy;
  v14 = v7;
  selfCopy = self;
  objc_copyWeak(&v16, &location);
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self fetchVerificationCertificatesRecordWithOperationGroup:operationGroup completion:&v10];

  operationStartTime = [v7 operationStartTime];

  if (!operationStartTime)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v7 setOperationStartTime:v9];
  }

  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

void __133__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____fetchVerificationCertificatesWithFetchInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __133__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____fetchVerificationCertificatesWithFetchInfo___block_invoke_2;
  v12[3] = &unk_278676980;
  v8 = v6;
  v13 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  objc_copyWeak(&v17, (a1 + 48));
  v11 = v5;
  v16 = v11;
  [v7 performBlock:v12];

  objc_destroyWeak(&v17);
}

void __133__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____fetchVerificationCertificatesWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activity];
  v4 = v3;
  if (v2)
  {
    [v3 markWithFormat:@"Fetch records operation completed unsuccessfully: %@", *(a1 + 32)];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    *buf = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v10 = "%{public}@Fetch records operation completed unsuccessfully: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
  }

  else
  {
    [v3 markWithFormat:@"Fetch records operation completed successfully"];

    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v8;
    v10 = "%{public}@Fetch records operation completed successfully";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
  }

  _os_log_impl(&dword_229538000, v11, v12, v10, buf, v13);

LABEL_7:
  objc_autoreleasePoolPop(v5);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained __fetchVerificationCertificatesCompleted:*(a1 + 40) record:*(a1 + 56) error:*(a1 + 32)];
  }

  else
  {
    v16 = [*(a1 + 40) activity];
    [v16 markWithFormat:@"Mirror has been deallocated"];

    v17 = objc_autoreleasePoolPush();
    v18 = objc_opt_class();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Mirror has been deallocated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 32);
    if (!v21)
    {
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    }

    [*(a1 + 40) finishWithError:v21];
  }
}

- (void)fetchVerificationCertificatesRecordWithOperationGroup:(id)group completion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  __certificatesRecordID = [objc_opt_class() __certificatesRecordID];
  v10 = objc_alloc(MEMORY[0x277CBC3E0]);
  v21[0] = __certificatesRecordID;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v12 = [v10 initWithRecordIDs:v11];

  [v12 setCallbackQueue:workQueue];
  if (groupCopy)
  {
    [v12 setGroup:groupCopy];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __153__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates__fetchVerificationCertificatesRecordWithOperationGroup_completion___block_invoke;
  v17[3] = &unk_27867D108;
  v18 = workQueue;
  selfCopy = self;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = workQueue;
  [v12 setFetchRecordsCompletionBlock:v17];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  publicDatabase = [cloudDatabase publicDatabase];
  [publicDatabase addOperation:v12];
}

void __153__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates__fetchVerificationCertificatesRecordWithOperationGroup_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a1[4];
  v6 = a2;
  dispatch_assert_queue_V2(v5);
  v7 = [objc_opt_class() __certificatesRecordID];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = *(a1[6] + 16);
  }

  else
  {
    v10 = v11;
    if (!v11)
    {
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    v9 = *(a1[6] + 16);
    v11 = v10;
  }

  v9();
}

+ (id)publicKeysFromCertificateRecord:(id)record
{
  v22 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [recordCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = [objc_opt_class() __recordKeyCertificatePrefix:*(*(&v17 + 1) + 8 * i)];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 stringByAppendingString:@"_ckAsset"];
          v13 = [self __publicKeyFromCertificateRecord:recordCopy dataKey:v11 assetKey:v12];
          if (v13)
          {
            [v16 addObject:v13];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v16 count])
  {
    v14 = objc_msgSend_copy(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)__publicKeyFromCertificateRecord:(id)record dataKey:(id)key assetKey:(id)assetKey
{
  v93[2] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  keyCopy = key;
  assetKeyCopy = assetKey;
  v93[0] = keyCopy;
  v93[1] = assetKeyCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
  __maxSizeForCKRecordSignatureVerificationCertificateChain = [objc_opt_class() __maxSizeForCKRecordSignatureVerificationCertificateChain];
  v88 = 0;
  v13 = stringFromCKRecord(recordCopy, keyCopy, assetKeyCopy, __maxSizeForCKRecordSignatureVerificationCertificateChain, &v88);
  v14 = v88;
  v15 = v14;
  v83 = recordCopy;
  if (v13)
  {
    v82 = v13;
    v16 = [v13 componentsSeparatedByString:{@", "}];
    if ([v16 count])
    {
      v78 = v15;
      v81 = v11;
      v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v84 objects:v89 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v85;
        v79 = keyCopy;
        v77 = v16;
LABEL_5:
        v22 = 0;
        while (1)
        {
          if (*v85 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:*(*(&v84 + 1) + 8 * v22) options:0];
          if (!v23)
          {
            break;
          }

          v24 = v23;
          v25 = SecCertificateCreateWithData(0, v23);
          if (!v25)
          {
            v56 = objc_autoreleasePoolPush();
            selfCopy = self;
            v58 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              v59 = HMFGetLogIdentifier();
              *trust = 138543618;
              *&trust[4] = v59;
              v91 = 2112;
              *v92 = v81;
              _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, "%{public}@Failed to create certificate from data using keys: %@", trust, 0x16u);
            }

            objc_autoreleasePoolPop(v56);
            v39 = 0;
            v36 = v83;
            v15 = v78;
            v41 = v79;
LABEL_33:
            v16 = v77;
            goto LABEL_49;
          }

          v26 = v25;
          [v17 addObject:v25];

          if (v20 == ++v22)
          {
            v20 = [v18 countByEnumeratingWithState:&v84 objects:v89 count:16];
            keyCopy = v79;
            v16 = v77;
            if (v20)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }

        v52 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v54 = HMFGetOSLogHandle();
        v15 = v78;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v55 = HMFGetLogIdentifier();
          *trust = 138543874;
          *&trust[4] = v55;
          v91 = 2112;
          *v92 = v81;
          *&v92[8] = 2112;
          *&v92[10] = v78;
          _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Invalid certificate data in record using keys: %@: %@", trust, 0x20u);
        }

        objc_autoreleasePoolPop(v52);
        v39 = 0;
        v36 = v83;
        v41 = v79;
        goto LABEL_33;
      }

LABEL_12:

      __createSignatureVerificationPolicy = [self __createSignatureVerificationPolicy];
      if (__createSignatureVerificationPolicy)
      {
        v18 = __createSignatureVerificationPolicy;
        v80 = keyCopy;
        *trust = 0;
        v28 = SecTrustCreateWithCertificates(v17, __createSignatureVerificationPolicy, trust);
        v29 = v28;
        v30 = *trust;
        if (!*trust || v28)
        {
          v64 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v66 = HMFGetOSLogHandle();
          v15 = v78;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v67 = v76 = v64;
            *trust = 138543874;
            *&trust[4] = v67;
            v91 = 1024;
            *v92 = v29;
            *&v92[4] = 2112;
            *&v92[6] = v81;
            _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_ERROR, "%{public}@Failed to create trust (result %i) from certificate using keys: %@", trust, 0x1Cu);

            v64 = v76;
          }

          objc_autoreleasePoolPop(v64);
          v39 = 0;
          v36 = v83;
        }

        else
        {
          *trust = 0;
          v31 = SecTrustEvaluateWithError(v30, trust);
          v32 = *trust;
          context = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v34 = HMFGetOSLogHandle();
          v35 = v34;
          v75 = v32;
          if (!v31 || v32)
          {
            v36 = v83;
            v15 = v78;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v68 = HMFGetLogIdentifier();
              *trust = 138543874;
              *&trust[4] = v68;
              v91 = 2112;
              *v92 = v81;
              *&v92[8] = 2112;
              *&v92[10] = v75;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Certificate did not pass trust evaluation with keys: %@, error: %@", trust, 0x20u);
            }

            objc_autoreleasePoolPop(context);
            v39 = 0;
          }

          else
          {
            v36 = v83;
            v15 = v78;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v37 = HMFGetLogIdentifier();
              *trust = 138543618;
              *&trust[4] = v37;
              v91 = 2112;
              *v92 = v81;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Trusted certificate found in record using keys: %@", trust, 0x16u);
            }

            objc_autoreleasePoolPop(context);
            v38 = MEMORY[0x22AAD3110](v30);
            v39 = v38;
            if (v38)
            {
              v40 = v38;
            }

            else
            {
              v73 = objc_autoreleasePoolPush();
              v69 = selfCopy4;
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = HMFGetLogIdentifier();
                *trust = 138543618;
                *&trust[4] = v71;
                v91 = 2112;
                *v92 = v81;
                _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, "%{public}@Failed to get public key from trust in record using keys: %@", trust, 0x16u);
              }

              objc_autoreleasePoolPop(v73);
              v36 = v83;
            }
          }
        }

        v41 = v80;
      }

      else
      {
        v41 = keyCopy;
        v60 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = HMFGetLogIdentifier();
          *trust = 138543362;
          *&trust[4] = v63;
          _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Unable to create security policy to verify certificates", trust, 0xCu);
        }

        objc_autoreleasePoolPop(v60);
        v18 = 0;
        v39 = 0;
        v36 = v83;
        v15 = v78;
      }

LABEL_49:

      v11 = v81;
    }

    else
    {
      v41 = keyCopy;
      v48 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        *trust = 138543874;
        *&trust[4] = v51;
        v91 = 2112;
        *v92 = v11;
        *&v92[8] = 2112;
        *&v92[10] = v15;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@No certificates found on record using keys: %@: %@", trust, 0x20u);
      }

      objc_autoreleasePoolPop(v48);
      v39 = 0;
      v36 = v83;
    }

    v13 = v82;
  }

  else
  {
    v41 = keyCopy;
    v42 = assetKeyCopy;
    v43 = v14;
    v44 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *trust = 138543874;
      *&trust[4] = v47;
      v91 = 2112;
      *v92 = v11;
      *&v92[8] = 2112;
      *&v92[10] = v43;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to read data from certificate record using keys: %@: %@", trust, 0x20u);
    }

    objc_autoreleasePoolPop(v44);
    v39 = 0;
    v15 = v43;
    assetKeyCopy = v42;
    v36 = v83;
  }

  return v39;
}

+ (id)__recordKeyCertificatePrefix:(id)prefix
{
  prefixCopy = prefix;
  if (__recordKeyCertificatePrefix__onceToken != -1)
  {
    dispatch_once(&__recordKeyCertificatePrefix__onceToken, &__block_literal_global_23_83459);
  }

  v4 = [__recordKeyCertificatePrefix__prefixRegex firstMatchInString:prefixCopy options:0 range:{0, objc_msgSend(prefixCopy, "length")}];
  v5 = v4;
  if (v4 && [v4 numberOfRanges] >= 2)
  {
    v7 = [v5 rangeAtIndex:1];
    v6 = [prefixCopy substringWithRange:{v7, v8}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __117__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____recordKeyCertificatePrefix___block_invoke()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(CD_certificate(?:\\d+|))(?:$|_ckAsset$)" options:0 error:0];
  v1 = __recordKeyCertificatePrefix__prefixRegex;
  __recordKeyCertificatePrefix__prefixRegex = v0;
}

+ (id)__certificatesRecordID
{
  if (__certificatesRecordID_onceToken != -1)
  {
    dispatch_once(&__certificatesRecordID_onceToken, &__block_literal_global_83464);
  }

  v3 = __certificatesRecordID_certificatesRecordID;

  return v3;
}

void __110__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchVerificationCertificates____certificatesRecordID__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  v3 = [v0 initWithZoneName:@"certificates" ownerName:*MEMORY[0x277CBBF28]];
  v1 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"certificates" zoneID:v3];
  v2 = __certificatesRecordID_certificatesRecordID;
  __certificatesRecordID_certificatesRecordID = v1;
}

+ (id)__createSignatureVerificationPolicy
{
  ApplePinned = SecPolicyCreateApplePinned();

  return ApplePinned;
}

+ (unint64_t)__maxSizeForCKRecordSignatureVerificationCertificateChain
{
  if (!isInternalBuild())
  {
    return 0x200000;
  }

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorSignatureVerificationCertificateChainMaxSize"];

  numberValue = [v3 numberValue];

  if (numberValue)
  {
    numberValue2 = [v3 numberValue];
    unsignedIntegerValue = [numberValue2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x200000;
  }

  return unsignedIntegerValue;
}

- (BOOL)__removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options activity:(id)activity error:(id *)error
{
  nameCopy = name;
  recordNameCopy = recordName;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (nameCopy && recordNameCopy)
  {
    v17 = objc_alloc(MEMORY[0x277CBC5F8]);
    v18 = [v17 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];
    v19 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:recordNameCopy zoneID:v18];
    v20 = [MEMORY[0x277CBEB98] setWithObject:v19];
    v21 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeOverridesForRecordIDs:v20 options:optionsCopy activity:activityCopy error:error];
  }

  else
  {
    if (nameCopy)
    {
      v22 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeOverridesForZoneName:nameCopy options:optionsCopy activity:activityCopy error:error];
    }

    else
    {
      v22 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeAllOverridesWithOptions:optionsCopy activity:activityCopy error:error];
    }

    v21 = v22;
  }

  return v21;
}

- (BOOL)__removeOverridesForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error
{
  v117 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [activityCopy markWithFormat:@"Removing overrides for zone '%@'", nameCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v109 = v17;
    v110 = 2112;
    v111 = nameCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Removing overrides for zone '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = objc_opt_class();
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  v107 = 0;
  v20 = [localZone fetchModelsOfType:v18 error:&v107];
  v21 = v107;

  v97 = v21;
  if (!v20)
  {
    [activityCopy markWithFormat:@"Failed to fetch override models: %@", v21];
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v109 = v48;
      v110 = 2112;
      v111 = v97;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch override models: %@", buf, 0x16u);

      v20 = 0;
    }

    objc_autoreleasePoolPop(v45);
    v49 = 0;
    if (error)
    {
      *error = v97;
    }

    goto LABEL_62;
  }

  if (![v20 count])
  {
    v49 = 1;
    goto LABEL_62;
  }

  localZone2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  v23 = [localZone2 createMirrorInputWithError:error];

  v93 = v23;
  if (!v23)
  {
    v49 = 0;
    goto LABEL_61;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v89 = v20;
  v24 = v20;
  v95 = [v24 countByEnumeratingWithState:&v103 objects:v116 count:16];
  if (!v95)
  {

    v25 = 0;
    v49 = 1;
    goto LABEL_50;
  }

  obj = v24;
  errorCopy = error;
  v88 = optionsCopy;
  v94 = 0;
  v25 = 0;
  v96 = *v104;
  v90 = nameCopy;
  v91 = activityCopy;
  while (2)
  {
    for (i = 0; i != v95; ++i)
    {
      if (*v104 != v96)
      {
        objc_enumerationMutation(obj);
      }

      hmbModelID = [*(*(&v103 + 1) + 8 * i) hmbModelID];
      localZone3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
      v102 = v25;
      v98 = hmbModelID;
      v29 = [localZone3 externalIDForModelID:hmbModelID error:&v102];
      v30 = v102;

      if (!v29)
      {
        [activityCopy markWithFormat:@"Failed to fetch externalID for modelID %@: %@", v98, v30];
        v50 = objc_autoreleasePoolPush();
        v51 = selfCopy;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = HMFGetLogIdentifier();
          *buf = 138543874;
          v109 = v53;
          v110 = 2112;
          v111 = v98;
          v112 = 2112;
          v113 = v30;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch externalID for modelID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v50);
        goto LABEL_40;
      }

      v31 = selfCopy;
      v101 = v30;
      v32 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v29 error:&v101];
      v33 = v101;

      if (!v32)
      {
        [activityCopy markWithFormat:@"Failed to convert externalID (%@) to CKRecordID for modelID %@: %@", v29, v98, v33];
        v54 = objc_autoreleasePoolPush();
        v55 = v31;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138544130;
          v109 = v57;
          v110 = 2112;
          v111 = v29;
          v112 = 2112;
          v113 = v98;
          v114 = 2112;
          v115 = v33;
          _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert externalID (%@) to CKRecordID for modelID %@: %@", buf, 0x2Au);
        }

        v32 = 0;
LABEL_39:

        objc_autoreleasePoolPop(v54);
        selfCopy = v31;

        v30 = v33;
        nameCopy = v90;
LABEL_40:

        v25 = v30;
        goto LABEL_41;
      }

      zoneID = [v32 zoneID];
      zoneName = [zoneID zoneName];
      v36 = [zoneName isEqualToString:nameCopy];

      if (v36)
      {
        hmbDescription = [v32 hmbDescription];
        [activityCopy markWithFormat:@"Removing override for %@", hmbDescription];

        v38 = objc_autoreleasePoolPush();
        v39 = v31;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = HMFGetLogIdentifier();
          hmbDescription2 = [v32 hmbDescription];
          *buf = 138543618;
          v109 = v41;
          v110 = 2112;
          v111 = hmbDescription2;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Removing override for %@", buf, 0x16u);

          nameCopy = v90;
        }

        objc_autoreleasePoolPop(v38);
        v100 = v33;
        v43 = v98;
        v44 = [v93 stageRemovalForModelWithID:v98 error:&v100];
        v25 = v100;

        if ((v44 & 1) == 0)
        {
          hmbDescription3 = [v32 hmbDescription];
          [v91 markWithFormat:@"Failed to remove model %@: %@", hmbDescription3, v25];

          v54 = objc_autoreleasePoolPush();
          v59 = v39;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v60 = HMFGetLogIdentifier();
            hmbDescription4 = [v32 hmbDescription];
            *buf = 138543874;
            v109 = v60;
            v110 = 2112;
            v111 = hmbDescription4;
            v112 = 2112;
            v113 = v25;
            _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove model %@: %@", buf, 0x20u);
          }

          v33 = v25;
          activityCopy = v91;
          goto LABEL_39;
        }

        ++v94;
        activityCopy = v91;
      }

      else
      {
        v25 = v33;
        v43 = v98;
      }

      selfCopy = v31;
    }

    v95 = [obj countByEnumeratingWithState:&v103 objects:v116 count:16];
    if (v95)
    {
      continue;
    }

    break;
  }

LABEL_41:

  v49 = v25 == 0;
  if (!v25 && v94)
  {
    [activityCopy markWithFormat:@"Committing removal of %lu overrides", v94];
    v62 = objc_autoreleasePoolPush();
    v63 = selfCopy;
    v64 = HMFGetOSLogHandle();
    optionsCopy = v88;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v66 = v65 = activityCopy;
      *buf = 138543618;
      v109 = v66;
      v110 = 2048;
      v111 = v94;
      _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Committing removal of %lu overrides", buf, 0x16u);

      activityCopy = v65;
    }

    objc_autoreleasePoolPop(v62);
    v99 = 0;
    v49 = [v93 frmSyncCommitWithOptions:v88 error:&v99];
    v67 = v99;
    v68 = v67;
    if (v49)
    {
      [activityCopy markWithFormat:@"Committed removal of overrides successfully"];
      v69 = objc_autoreleasePoolPush();
      v70 = v63;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v73 = v72 = activityCopy;
        *buf = 138543362;
        v109 = v73;
        _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@Committed removal of overrides successfully", buf, 0xCu);

        activityCopy = v72;
      }

      objc_autoreleasePoolPop(v69);
    }

    else
    {
      [activityCopy markWithFormat:@"Failed to commit: %@", v67];
      v80 = objc_autoreleasePoolPush();
      v81 = v63;
      v82 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v84 = v83 = activityCopy;
        *buf = 138543618;
        v109 = v84;
        v110 = 2112;
        v111 = v68;
        _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit: %@", buf, 0x16u);

        activityCopy = v83;
      }

      objc_autoreleasePoolPop(v80);
      if (errorCopy)
      {
        v85 = v68;
        *errorCopy = v68;
      }
    }

    v25 = 0;
    goto LABEL_60;
  }

  error = errorCopy;
  optionsCopy = v88;
  if (!v94)
  {
LABEL_50:
    [activityCopy markWithFormat:@"No matching models found, aborting"];
    v74 = objc_autoreleasePoolPush();
    v75 = selfCopy;
    v76 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v78 = v77 = activityCopy;
      *buf = 138543362;
      v109 = v78;
      _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_INFO, "%{public}@No matching models found, aborting", buf, 0xCu);

      activityCopy = v77;
    }

    objc_autoreleasePoolPop(v74);
  }

  [v93 abort];
  if (error)
  {
    v79 = v25;
    *error = v25;
  }

LABEL_60:

  v20 = v89;
LABEL_61:

LABEL_62:
  return v49;
}

- (BOOL)__removeOverridesForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [activityCopy markWithFormat:@"Removing overrides for recordIDs: %@", dsCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v70 = v17;
    v71 = 2112;
    v72 = dsCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Removing overrides for recordIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  v19 = [localZone createMirrorInputWithError:error];

  v62 = v19;
  if (v19)
  {
    errorCopy = error;
    v61 = optionsCopy;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v20 = dsCopy;
    v21 = [v20 countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v21)
    {
      v22 = v21;
      v59 = selfCopy;
      v60 = activityCopy;
      v57 = dsCopy;
      v23 = 0;
      v24 = *v66;
      while (2)
      {
        v25 = 0;
        v26 = v23;
        do
        {
          if (*v66 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v65 + 1) + 8 * v25);
          v28 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel modelIDForRecordID:v27];
          v64 = v26;
          v29 = [v62 stageRemovalForModelWithID:v28 error:&v64];
          v23 = v64;

          if ((v29 & 1) == 0)
          {
            hmbDescription = [v27 hmbDescription];
            [v60 markWithFormat:@"Failed to remove model %@: %@", hmbDescription, v23];

            v31 = objc_autoreleasePoolPush();
            selfCopy = v59;
            v32 = v59;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = HMFGetLogIdentifier();
              hmbDescription2 = [v27 hmbDescription];
              *buf = 138543874;
              v70 = v34;
              v71 = 2112;
              v72 = hmbDescription2;
              v73 = 2112;
              v74 = v23;
              _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove model %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v31);
            goto LABEL_16;
          }

          ++v25;
          v26 = v23;
        }

        while (v22 != v25);
        v22 = [v20 countByEnumeratingWithState:&v65 objects:v75 count:16];
        selfCopy = v59;
        if (v22)
        {
          continue;
        }

        break;
      }

LABEL_16:

      dsCopy = v57;
      activityCopy = v60;
      if (v23)
      {
        [v62 abort];
        optionsCopy = v61;
        if (errorCopy)
        {
          v36 = v23;
          v37 = 0;
          *errorCopy = v23;
        }

        else
        {
          v37 = 0;
        }

LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
    }

    [activityCopy markWithFormat:@"Committing removal of overrides"];
    v38 = objc_autoreleasePoolPush();
    v39 = selfCopy;
    v40 = HMFGetOSLogHandle();
    optionsCopy = v61;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v42 = v41 = activityCopy;
      *buf = 138543362;
      v70 = v42;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Committing removal of overrides", buf, 0xCu);

      activityCopy = v41;
    }

    objc_autoreleasePoolPop(v38);
    v63 = 0;
    v37 = [v62 frmSyncCommitWithOptions:v61 error:&v63];
    v43 = v63;
    v44 = v43;
    if (v37)
    {
      [activityCopy markWithFormat:@"Committed removal of overrides successfully"];
      v45 = objc_autoreleasePoolPush();
      v46 = v39;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v49 = v48 = activityCopy;
        *buf = 138543362;
        v70 = v49;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Committed removal of overrides successfully", buf, 0xCu);

        activityCopy = v48;
      }

      objc_autoreleasePoolPop(v45);
    }

    else
    {
      [activityCopy markWithFormat:@"Failed to commit: %@", v43];
      v50 = objc_autoreleasePoolPush();
      v51 = v39;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v54 = v53 = activityCopy;
        *buf = 138543618;
        v70 = v54;
        v71 = 2112;
        v72 = v44;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit: %@", buf, 0x16u);

        activityCopy = v53;
      }

      objc_autoreleasePoolPop(v50);
      if (errorCopy)
      {
        v55 = v44;
        *errorCopy = v44;
      }
    }

    v23 = 0;
    goto LABEL_32;
  }

  v37 = 0;
LABEL_33:

  return v37;
}

- (BOOL)__removeAllOverridesWithOptions:(id)options activity:(id)activity error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [activityCopy markWithFormat:@"Removing all overrides"];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all overrides", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  v36[0] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v17 = [localZone removeAllModelsOfTypes:v16 options:optionsCopy];

  v31 = 0;
  v18 = [v17 blockAndWaitForCompletionWithError:&v31];
  v19 = v31;
  v20 = v19;
  if (v19)
  {
    [activityCopy markWithFormat:@"Failed to remove all previous overrides: %@", v19];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove all previous overrides: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    if (error)
    {
      v25 = v20;
      *error = v20;
    }
  }

  else
  {
    [activityCopy markWithFormat:@"Successfully removed all previous overrides"];
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Successfully removed all previous overrides", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

  return v20 == 0;
}

- (BOOL)__addOverrides:(id)overrides replace:(BOOL)replace options:(id)options activity:(id)activity error:(id *)error
{
  replaceCopy = replace;
  v55 = *MEMORY[0x277D85DE8];
  overridesCopy = overrides;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (replaceCopy)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeAllOverridesWithOptions:optionsCopy activity:activityCopy error:0];
  }

  __overrideParentModelID = [objc_opt_class() __overrideParentModelID];
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self localZone];
  v17 = [localZone createMirrorInputWithError:error];

  if (v17)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__144194;
    v49 = __Block_byref_object_dispose__144195;
    v50 = 0;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____addOverrides_replace_options_activity_error___block_invoke;
    v39[3] = &unk_27867B030;
    v18 = activityCopy;
    v40 = v18;
    selfCopy = self;
    v44 = &v45;
    v42 = __overrideParentModelID;
    v19 = v17;
    v43 = v19;
    [overridesCopy enumerateKeysAndObjectsUsingBlock:v39];
    if (v46[5])
    {
      [v19 abort];
      v20 = 0;
      if (error)
      {
        *error = v46[5];
      }
    }

    else
    {
      [v18 markWithFormat:@"Committing overrides"];
      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Committing overrides", buf, 0xCu);
      }

      objc_autoreleasePoolPop(context);
      v38 = 0;
      v20 = [v19 frmSyncCommitWithOptions:optionsCopy error:&v38];
      v24 = v38;
      contexta = v24;
      if (v20)
      {
        [v18 markWithFormat:@"Committed overrides successfully"];
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy2;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543362;
          v52 = v28;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Committed overrides successfully", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
      }

      else
      {
        [v18 markWithFormat:@"Failed to commit: %@", v24];
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy2;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v32;
          v53 = 2112;
          v54 = contexta;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to commit: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        if (error)
        {
          v33 = contexta;
          *error = contexta;
        }
      }
    }

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____addOverrides_replace_options_activity_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v35 = 0;
  v9 = [v7 externalID:&v35];
  v10 = v35;
  v11 = v35;
  if (v9)
  {
    v12 = [MEMORY[0x277CBEA90] data];
    v13 = [v8 objectForKeyedSubscript:@"networkDeclarations"];
    v14 = [v8 objectForKeyedSubscript:@"pairedMetadata"];
    if (v13 | v14)
    {
      v33 = a4;
      v32 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel modelIDForRecordID:v7];
      v31 = [[HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel alloc] initWithModelID:v32 parentModelID:*(a1 + 48) networkDeclarationsData:v13 pairedMetadataData:v14];
      v15 = [*(a1 + 56) stageAdditionForModel:? externalID:? externalData:? error:?];
      obj = v11;
      v16 = v11;

      if ((v15 & 1) == 0)
      {
        v17 = *(a1 + 32);
        v18 = [v7 hmbDescription];
        [v17 markWithFormat:@"Failed to update model for %@: %@", v18, v16];

        context = objc_autoreleasePoolPush();
        v19 = *(a1 + 40);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          v28 = v16;
          v21 = [v7 hmbDescription];
          *buf = 138543874;
          v37 = v27;
          v38 = 2112;
          v39 = v21;
          v22 = v21;
          v40 = 2112;
          v41 = v28;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to update model for %@: %@", buf, 0x20u);

          v16 = v28;
        }

        objc_autoreleasePoolPop(context);
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
        *v33 = 1;
      }

      v11 = v16;
    }
  }

  else
  {
    [*(a1 + 32) markWithFormat:@"Failed to determine externalID: %@", v11];
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 40);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v26 = v34 = a4;
      *buf = 138543618;
      v37 = v26;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine externalID: %@", buf, 0x16u);

      a4 = v34;
    }

    objc_autoreleasePoolPop(v23);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
    *a4 = 1;
  }
}

- (id)__fetchOverridesForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error
{
  v84 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  selfCopy = self;
  if (nameCopy)
  {
    [activityCopy markWithFormat:@"Fetching overrides for zone '%@'", nameCopy];
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v76 = v17;
    v77 = 2112;
    v78 = nameCopy;
    v18 = "%{public}@Fetching overrides for zone '%@'";
    v19 = v16;
    v20 = 22;
  }

  else
  {
    [activityCopy markWithFormat:@"Fetching all overrides"];
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v76 = v17;
    v18 = "%{public}@Fetching all overrides";
    v19 = v16;
    v20 = 12;
  }

  _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);

LABEL_7:
  objc_autoreleasePoolPop(v14);
  v22 = objc_opt_class();
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self localZone];
  v74 = 0;
  v24 = [localZone fetchModelsOfType:v22 error:&v74];
  v25 = v74;

  if (v24)
  {
    if ([v24 count])
    {
      v59 = v25;
      v64 = activityCopy;
      v61 = optionsCopy;
      v66 = nameCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v60 = v24;
      obj = v24;
      v26 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
      selfCopy4 = self;
      if (v26)
      {
        v28 = v26;
        v67 = *v71;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v71 != v67)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v70 + 1) + 8 * i);
            hmbModelID = [v30 hmbModelID];
            localZone2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy4 localZone];
            v69 = 0;
            v33 = [localZone2 externalIDForModelID:hmbModelID error:&v69];
            v34 = v69;

            if (v33)
            {
              v68 = v34;
              v35 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v33 error:&v68];
              v36 = v68;

              if (v35)
              {
                if (!v66 || ([v35 zoneID], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "zoneName"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", v66), v38, v37, v39))
                {
                  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
                  networkDeclarationsData = [v30 networkDeclarationsData];
                  [dictionary2 setObject:networkDeclarationsData forKeyedSubscript:@"networkDeclarations"];

                  pairedMetadataData = [v30 pairedMetadataData];
                  [dictionary2 setObject:pairedMetadataData forKeyedSubscript:@"pairedMetadata"];

                  v43 = objc_msgSend_copy(dictionary2);
                  [dictionary setObject:v43 forKeyedSubscript:v35];
                }
              }

              else
              {
                [v64 markWithFormat:@"Failed to convert externalID (%@) to CKRecordID for modelID %@: %@", v33, hmbModelID, v36];
                v48 = objc_autoreleasePoolPush();
                v49 = selfCopy4;
                v50 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  v51 = HMFGetLogIdentifier();
                  *buf = 138544130;
                  v76 = v51;
                  v77 = 2112;
                  v78 = v33;
                  v79 = 2112;
                  v80 = hmbModelID;
                  v81 = 2112;
                  v82 = v36;
                  _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert externalID (%@) to CKRecordID for modelID %@: %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v48);
              }

              selfCopy4 = selfCopy;
            }

            else
            {
              [v64 markWithFormat:@"Failed to fetch externalID for modelID %@: %@", hmbModelID, v34];
              v44 = objc_autoreleasePoolPush();
              v45 = selfCopy4;
              v46 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v47 = HMFGetLogIdentifier();
                *buf = 138543874;
                v76 = v47;
                v77 = 2112;
                v78 = hmbModelID;
                v79 = 2112;
                v80 = v34;
                _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch externalID for modelID %@: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v44);
              v36 = v34;
            }
          }

          v28 = [obj countByEnumeratingWithState:&v70 objects:v83 count:16];
        }

        while (v28);
      }

      v52 = objc_msgSend_copy(dictionary);
      nameCopy = v66;
      v24 = v60;
      optionsCopy = v61;
      activityCopy = v64;
      v25 = v59;
    }

    else
    {
      v52 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    [activityCopy markWithFormat:@"Failed to fetch override models: %@", v25];
    v53 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543618;
      v76 = v56;
      v77 = 2112;
      v78 = v25;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch override models: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    if (error)
    {
      v57 = v25;
      v52 = 0;
      *error = v25;
    }

    else
    {
      v52 = 0;
    }
  }

  return v52;
}

- (id)__fetchOverridesForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v40 = objc_opt_class();
  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = dsCopy;
  v42 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v42)
  {
    v39 = *v46;
    selfCopy = self;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v14 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel modelIDForRecordID:v12];
        localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self localZone];
        v44 = 0;
        v16 = [localZone fetchModelWithModelID:v14 ofType:v40 error:&v44];
        v17 = v44;

        hmbDescription = [v12 hmbDescription];
        v19 = hmbDescription;
        if (v16)
        {
          v43 = v17;
          [activityCopy markWithFormat:@"Model %@ (%@) found in override zone", v14, hmbDescription];

          v20 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = HMFGetLogIdentifier();
            hmbDescription2 = [v12 hmbDescription];
            *buf = 138543874;
            v50 = v23;
            v51 = 2112;
            v52 = v14;
            v53 = 2112;
            v54 = hmbDescription2;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Model %@ (%@) found in override zone", buf, 0x20u);

            self = selfCopy;
          }

          objc_autoreleasePoolPop(v20);
          networkDeclarationsData = [v16 networkDeclarationsData];
          [dictionary setObject:networkDeclarationsData forKeyedSubscript:@"networkDeclarations"];

          pairedMetadataData = [v16 pairedMetadataData];
          [dictionary setObject:pairedMetadataData forKeyedSubscript:@"pairedMetadata"];

          v27 = objc_msgSend_copy(dictionary);
          [v38 setObject:v27 forKeyedSubscript:v12];

          v17 = v43;
        }

        else
        {
          [activityCopy markWithFormat:@"No model %@ (%@) found in override zone: %@", v14, hmbDescription, v17, optionsCopy];

          v28 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = HMFGetLogIdentifier();
            hmbDescription3 = [v12 hmbDescription];
            *buf = 138544130;
            v50 = v31;
            v51 = 2112;
            v52 = v14;
            v53 = 2112;
            v54 = hmbDescription3;
            v55 = 2112;
            v56 = v17;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@No model %@ (%@) found in override zone: %@", buf, 0x2Au);

            self = selfCopy;
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      v42 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v42);
  }

  v33 = objc_msgSend_copy(v38);

  return v33;
}

- (BOOL)__removeAllLocalRulesWithOptions:(id)options activity:(id)activity error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  publicZoneIDs = [cloudDatabase publicZoneIDs];

  if ([publicZoneIDs count])
  {
    [activityCopy markWithFormat:@"Removing cloud zones: %@", publicZoneIDs];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = publicZoneIDs;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Removing cloud zones: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
    allObjects = [publicZoneIDs allObjects];
    [cloudDatabase2 handleRemovedZoneIDs:allObjects userInitiated:1];
  }

  [activityCopy markWithFormat:@"Resetting database change token"];
  v18 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting database change token", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  cloudDatabase3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 cloudDatabase];
  cloudDatabase4 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 cloudDatabase];
  publicDatabase = [cloudDatabase4 publicDatabase];
  [cloudDatabase3 updateServerChangeToken:0 forDatabaseWithScope:{objc_msgSend(publicDatabase, "scope")}];

  return 1;
}

- (id)__fetchAllDataForZoneName:(id)name options:(id)options activity:(id)activity error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (nameCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CBC5F8]);
    v11 = [v10 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v11];

LABEL_12:
    [activityCopy markWithFormat:@"Fetching models from zones: %@", v12];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v62 = v27;
      v63 = 2112;
      v64 = v12;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching models from zones: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v12;
    v28 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    if (v28)
    {
      v29 = *v54;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v54 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v53 + 1) + 8 * i);
          v52 = 0;
          v32 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy __fetchAllDataForZoneID:v31 options:optionsCopy activity:activityCopy error:&v52];
          v33 = v52;
          if (v32)
          {
            [dictionary addEntriesFromDictionary:v32];
          }

          else
          {
            hmbDescription = [v31 hmbDescription];
            [activityCopy markWithFormat:@"Failed to fetch models for zone %@: %@", hmbDescription, v33];

            v35 = objc_autoreleasePoolPush();
            v36 = selfCopy;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v38 = HMFGetLogIdentifier();
              hmbDescription2 = [v31 hmbDescription];
              *buf = 138543874;
              v62 = v38;
              v63 = 2112;
              v64 = hmbDescription2;
              v65 = 2112;
              v66 = v33;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch models for zone %@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v35);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
      }

      while (v28);
    }

    v40 = objc_msgSend_copy(dictionary);
    goto LABEL_27;
  }

  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  v14 = *MEMORY[0x277D17138];
  os_unfair_lock_lock_with_options();

  cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  zoneStateByZoneID = [cloudDatabase2 zoneStateByZoneID];
  allValues = [zoneStateByZoneID allValues];

  os_unfair_lock_unlock(&cloudDatabase[v14]);
  if ([allValues count])
  {
    v18 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(allValues, "count")}];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v19 = allValues;
    v20 = [v19 countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v20)
    {
      v21 = *v58;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v58 != v21)
          {
            objc_enumerationMutation(v19);
          }

          zoneID = [*(*(&v57 + 1) + 8 * j) zoneID];
          v23ZoneID = [zoneID zoneID];
          [v18 addObject:v23ZoneID];
        }

        v20 = [v19 countByEnumeratingWithState:&v57 objects:v68 count:16];
      }

      while (v20);
    }

    v12 = objc_msgSend_copy(v18);
    goto LABEL_12;
  }

  obj = allValues;
  [activityCopy markWithFormat:@"No local zones exist"];
  v42 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    v62 = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEBUG, "%{public}@No local zones exist", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  v40 = MEMORY[0x277CBEC10];
LABEL_27:

  return v40;
}

- (id)__fetchAllDataForZoneID:(id)d options:(id)options activity:(id)activity error:(id *)error
{
  v143 = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  hmbDescription = [dCopy hmbDescription];
  v122 = activityCopy;
  [activityCopy markWithFormat:@"Fetching all models for zone %@", hmbDescription];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v18 = v17 = selfCopy;
    hmbDescription2 = [dCopy hmbDescription];
    *buf = 138543618;
    v135 = v18;
    v136 = 2112;
    v137 = hmbDescription2;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching all models for zone %@", buf, 0x16u);

    selfCopy = v17;
  }

  objc_autoreleasePoolPop(v14);
  v20 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy __createCloudZoneIDForZoneID:dCopy];
  v133 = 0;
  v21 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy __openLocalZoneForCloudZoneID:v20 error:&v133];
  v22 = v133;
  if (v21)
  {
    v114 = v20;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v132 = v22;
    v23 = [v21 fetchModelsOfType:objc_opt_class() error:&v132];
    v24 = v132;

    hmbDescription3 = [dCopy hmbDescription];
    v26 = hmbDescription3;
    v113 = v23;
    if (v23)
    {
      v112 = optionsCopy;
      v123 = v24;
      v27 = v23;
      [v122 markWithFormat:@"Found models in local zone for %@: %@", hmbDescription3, v23];

      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v32 = v31 = selfCopy;
        hmbDescription4 = [dCopy hmbDescription];
        *buf = 138543874;
        v135 = v32;
        v136 = 2112;
        v137 = hmbDescription4;
        v138 = 2112;
        v139 = v27;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Found models in local zone for %@: %@", buf, 0x20u);

        selfCopy = v31;
      }

      v116 = v29;
      objc_autoreleasePoolPop(v28);
      v34 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v27, "count")}];
      v128 = 0u;
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      obj = v27;
      v120 = [obj countByEnumeratingWithState:&v128 objects:v142 count:16];
      if (v120)
      {
        v118 = *v129;
        v35 = v123;
        v110 = selfCopy;
        v111 = dCopy;
        v119 = v21;
        while (2)
        {
          v36 = 0;
          v37 = v116;
          do
          {
            if (*v129 != v118)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v128 + 1) + 8 * v36);
            hmbModelID = [v38 hmbModelID];
            v127 = v35;
            v40 = [v21 externalIDForModelID:hmbModelID error:&v127];
            v41 = v127;

            if (!v40)
            {
              hmbModelID2 = [v38 hmbModelID];
              dCopy = v111;
              hmbDescription5 = [v111 hmbDescription];
              [v122 markWithFormat:@"Failed to fetch external id for model %@ in %@: %@", hmbModelID2, hmbDescription5, v41];

              v82 = objc_autoreleasePoolPush();
              v83 = v37;
              v84 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                v85 = HMFGetLogIdentifier();
                hmbModelID3 = [v38 hmbModelID];
                hmbDescription6 = [v111 hmbDescription];
                *buf = 138544130;
                v135 = v85;
                v136 = 2112;
                v137 = hmbModelID3;
                v138 = 2112;
                v139 = hmbDescription6;
                v140 = 2112;
                v141 = v41;
                _os_log_impl(&dword_229538000, v84, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch external id for model %@ in %@: %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v82);
              v35 = v41;
              optionsCopy = v112;
              v21 = v119;
              selfCopy = v110;
              goto LABEL_41;
            }

            v126 = v41;
            v42 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v40 error:&v126];
            v35 = v126;

            if (!v42)
            {
              hmbModelID4 = [v38 hmbModelID];
              dCopy = v111;
              hmbDescription7 = [v111 hmbDescription];
              v90 = v35;
              [v122 markWithFormat:@"Failed to convert external id for model %@ in %@: %@", hmbModelID4, hmbDescription7, v35];

              v91 = objc_autoreleasePoolPush();
              v92 = v37;
              v93 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v95 = v94 = v40;
                hmbModelID5 = [v38 hmbModelID];
                hmbDescription8 = [v111 hmbDescription];
                *buf = 138544130;
                v135 = v95;
                v136 = 2112;
                v137 = hmbModelID5;
                v138 = 2112;
                v139 = hmbDescription8;
                v140 = 2112;
                v141 = v90;
                _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert external id for model %@ in %@: %@", buf, 0x2Au);

                dCopy = v111;
                v40 = v94;
              }

              objc_autoreleasePoolPop(v91);
              optionsCopy = v112;
              v21 = v119;
              selfCopy = v110;
              v35 = v90;
              goto LABEL_41;
            }

            v124 = v40;
            hmbDescription9 = [v42 hmbDescription];
            [v122 markWithFormat:@"Fetched model for %@", hmbDescription9];

            v44 = objc_autoreleasePoolPush();
            v45 = v37;
            v46 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v47 = v34;
              v49 = v48 = v35;
              hmbDescription10 = [v42 hmbDescription];
              *buf = 138543618;
              v135 = v49;
              v136 = 2112;
              v137 = hmbDescription10;
              _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Fetched model for %@", buf, 0x16u);

              v35 = v48;
              v34 = v47;
              v37 = v116;
            }

            objc_autoreleasePoolPop(v44);
            networkDeclarationsData = [v38 networkDeclarationsData];

            if (networkDeclarationsData)
            {
              networkDeclarationsData2 = [v38 networkDeclarationsData];
              [v34 setObject:networkDeclarationsData2 forKeyedSubscript:@"networkDeclarations"];
            }

            pairedMetadataData = [v38 pairedMetadataData];

            v21 = v119;
            if (pairedMetadataData)
            {
              pairedMetadataData2 = [v38 pairedMetadataData];
              [v34 setObject:pairedMetadataData2 forKeyedSubscript:@"pairedMetadata"];
            }

            [dictionary setObject:v34 forKeyedSubscript:v42];

            ++v36;
          }

          while (v120 != v36);
          dCopy = v111;
          optionsCopy = v112;
          selfCopy = v110;
          v120 = [obj countByEnumeratingWithState:&v128 objects:v142 count:16];
          if (v120)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v35 = v123;
        optionsCopy = v112;
      }

LABEL_41:
    }

    else
    {
      [v122 markWithFormat:@"Failed to fetch models from local zone for %@: %@", hmbDescription3, v24];

      v66 = objc_autoreleasePoolPush();
      v67 = selfCopy;
      v68 = selfCopy;
      v69 = HMFGetOSLogHandle();
      v35 = v24;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v71 = v70 = v24;
        hmbDescription11 = [dCopy hmbDescription];
        *buf = 138543874;
        v135 = v71;
        v136 = 2112;
        v137 = hmbDescription11;
        v138 = 2112;
        v139 = v70;
        _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch models from local zone for %@: %@", buf, 0x20u);

        v35 = v70;
      }

      objc_autoreleasePoolPop(v66);
      selfCopy = v67;
    }

    shutdown = [v21 shutdown];
    v125 = 0;
    v99 = [shutdown blockAndWaitForCompletionWithError:&v125];
    v100 = v125;

    if (v100)
    {
      v101 = v35;
      hmbDescription12 = [dCopy hmbDescription];
      [v122 markWithFormat:@"Failed to shut down local zone for %@: %@", hmbDescription12, v100];

      v103 = objc_autoreleasePoolPush();
      v104 = selfCopy;
      v105 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        v106 = HMFGetLogIdentifier();
        hmbDescription13 = [dCopy hmbDescription];
        *buf = 138543874;
        v135 = v106;
        v136 = 2112;
        v137 = hmbDescription13;
        v138 = 2112;
        v139 = v100;
        _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down local zone for %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v103);
      v35 = v101;
      if (!v101)
      {
        v35 = v100;
      }
    }

    else if (!v35)
    {
      v65 = objc_msgSend_copy(dictionary);
LABEL_52:

      v22 = v35;
      v20 = v114;
      goto LABEL_53;
    }

    if (error)
    {
      v108 = v35;
      v65 = 0;
      *error = v35;
    }

    else
    {
      v65 = 0;
    }

    goto LABEL_52;
  }

  v55 = selfCopy;
  v56 = [objc_opt_class() __errorIsNotFound:v22];
  hmbDescription14 = [dCopy hmbDescription];
  v58 = hmbDescription14;
  if (v56)
  {
    [v122 markWithFormat:@"Local zone does not exist for %@", hmbDescription14];

    v59 = objc_autoreleasePoolPush();
    v60 = v55;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v62 = HMFGetLogIdentifier();
      [dCopy hmbDescription];
      v64 = v63 = v20;
      *buf = 138543618;
      v135 = v62;
      v136 = 2112;
      v137 = v64;
      _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_DEBUG, "%{public}@Local zone does not exist for %@", buf, 0x16u);

      v20 = v63;
    }

    objc_autoreleasePoolPop(v59);
    v65 = MEMORY[0x277CBEC10];
  }

  else
  {
    [v122 markWithFormat:@"Failed to open local zone for %@: %@", hmbDescription14, v22];

    v73 = objc_autoreleasePoolPush();
    v74 = v55;
    v75 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = HMFGetLogIdentifier();
      [dCopy hmbDescription];
      v78 = v77 = v20;
      *buf = 138543874;
      v135 = v76;
      v136 = 2112;
      v137 = v78;
      v138 = 2112;
      v139 = v22;
      _os_log_impl(&dword_229538000, v75, OS_LOG_TYPE_ERROR, "%{public}@Failed to open local zone for %@: %@", buf, 0x20u);

      v20 = v77;
    }

    objc_autoreleasePoolPop(v73);
    if (error)
    {
      v79 = v22;
      v65 = 0;
      *error = v22;
    }

    else
    {
      v65 = 0;
    }
  }

LABEL_53:

  return v65;
}

- (id)__fetchAllDataForRecordIDs:(id)ds options:(id)options activity:(id)activity error:(id *)error
{
  v78 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v56 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __localZonesForRecordIDs:dsCopy activity:activityCopy error:error];
  if (v56)
  {
    v53 = optionsCopy;
    v59 = objc_opt_class();
    v57 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v54 = dsCopy;
    obj = dsCopy;
    v14 = v56;
    v62 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v62)
    {
      v60 = *v66;
      selfCopy = self;
      v55 = activityCopy;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v66 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v65 + 1) + 8 * i);
          v17 = [HMDNetworkRouterFirewallRuleManagerBackingStoreCloudAccessoryModel modelIDForRecordID:v16];
          zoneID = [v16 zoneID];
          v19 = [v14 objectForKeyedSubscript:zoneID];

          if (v19)
          {
            v64 = 0;
            v20 = [v19 fetchModelWithModelID:v17 ofType:v59 error:&v64];
            v21 = v64;
            hmbDescription = [v16 hmbDescription];
            v23 = hmbDescription;
            v63 = v21;
            if (v20)
            {
              [activityCopy markWithFormat:@"Model %@ found for record %@", v17, hmbDescription];

              v24 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v26 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v27 = HMFGetLogIdentifier();
                hmbDescription2 = [v16 hmbDescription];
                *buf = 138543874;
                v70 = v27;
                v71 = 2112;
                v72 = v17;
                v73 = 2112;
                v74 = hmbDescription2;
                _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Model %@ found for record %@", buf, 0x20u);

                activityCopy = v55;
                v14 = v56;
              }

              objc_autoreleasePoolPop(v24);
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              networkDeclarationsData = [v20 networkDeclarationsData];

              if (networkDeclarationsData)
              {
                networkDeclarationsData2 = [v20 networkDeclarationsData];
                [dictionary setObject:networkDeclarationsData2 forKeyedSubscript:@"networkDeclarations"];
              }

              pairedMetadataData = [v20 pairedMetadataData];

              self = selfCopy;
              if (pairedMetadataData)
              {
                pairedMetadataData2 = [v20 pairedMetadataData];
                [dictionary setObject:pairedMetadataData2 forKeyedSubscript:@"pairedMetadata"];
              }

              [v57 setObject:dictionary forKeyedSubscript:v16];
            }

            else
            {
              [activityCopy markWithFormat:@"No model %@ for record %@ found: %@", v17, hmbDescription, v21];

              v40 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v43 = HMFGetLogIdentifier();
                hmbDescription3 = [v16 hmbDescription];
                *buf = 138544130;
                v70 = v43;
                v71 = 2112;
                v72 = v17;
                v73 = 2112;
                v74 = hmbDescription3;
                v75 = 2112;
                v76 = v63;
                _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@No model %@ for record %@ found: %@", buf, 0x2Au);

                v14 = v56;
              }

              objc_autoreleasePoolPop(v40);
              self = selfCopy;
            }
          }

          else
          {
            hmbDescription4 = [v16 hmbDescription];
            [activityCopy markWithFormat:@"No local zone for model %@ for record %@ found", v17, hmbDescription4];

            v35 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = HMFGetLogIdentifier();
              hmbDescription5 = [v16 hmbDescription];
              *buf = 138543874;
              v70 = v38;
              v71 = 2112;
              v72 = v17;
              v73 = 2112;
              v74 = hmbDescription5;
              _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@No local zone for model %@ for record %@ found", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v35);
            self = selfCopy;
          }
        }

        v62 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v62);
    }

    allValues = [v14 allValues];
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __shutdownLocalZones:allValues activity:activityCopy];

    v46 = objc_msgSend_copy(v57);
    v47 = v14;
    optionsCopy = v53;
    dsCopy = v54;
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543362;
      v70 = v51;
      _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@localZones is nil, can't fetch paired metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v48);
    v46 = 0;
    v47 = 0;
  }

  return v46;
}

- (id)__localZonesForRecordIDs:(id)ds activity:(id)activity error:(id *)error
{
  v65 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  selfCopy = self;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = dsCopy;
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (!v12)
  {

LABEL_26:
    v45 = objc_msgSend_copy(dictionary);
    v14 = 0;
    goto LABEL_27;
  }

  v13 = v12;
  errorCopy = error;
  v14 = 0;
  v15 = *v55;
  v48 = dictionary;
  v49 = *v55;
  v16 = selfCopy;
  v50 = v11;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v55 != v15)
      {
        objc_enumerationMutation(v11);
      }

      zoneID = [*(*(&v54 + 1) + 8 * i) zoneID];
      v19 = [dictionary objectForKeyedSubscript:zoneID];

      if (!v19)
      {
        v20 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v16 __createCloudZoneIDForZoneID:zoneID];
        v53 = v14;
        v21 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v16 __openLocalZoneForCloudZoneID:v20 error:&v53];
        v22 = v53;

        if (v21)
        {
          hmbDescription = [zoneID hmbDescription];
          [activityCopy markWithFormat:@"Opened local zone for %@", hmbDescription];

          v24 = objc_autoreleasePoolPush();
          v25 = v16;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = HMFGetLogIdentifier();
            hmbDescription2 = [zoneID hmbDescription];
            *buf = 138543618;
            v59 = v27;
            v60 = 2112;
            v61 = hmbDescription2;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Opened local zone for %@", buf, 0x16u);

            v15 = v49;
            dictionary = v48;
          }

          objc_autoreleasePoolPop(v24);
          [dictionary setObject:v21 forKeyedSubscript:zoneID];
        }

        else
        {
          v29 = v16;
          v30 = [objc_opt_class() __errorIsNotFound:v22];
          hmbDescription3 = [zoneID hmbDescription];
          v32 = hmbDescription3;
          if (!v30)
          {
            [activityCopy markWithFormat:@"Failed to open local zone for %@: %@", hmbDescription3, v22];

            v38 = objc_autoreleasePoolPush();
            v39 = v29;
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = HMFGetLogIdentifier();
              hmbDescription4 = [zoneID hmbDescription];
              *buf = 138543874;
              v59 = v41;
              v60 = 2112;
              v61 = hmbDescription4;
              v62 = 2112;
              v63 = v22;
              _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to open local zone for %@: %@", buf, 0x20u);

              dictionary = v48;
            }

            objc_autoreleasePoolPop(v38);
            v14 = v22;
            v11 = v50;
            v16 = selfCopy;
            goto LABEL_22;
          }

          [activityCopy markWithFormat:@"No local zone for %@, skipping", hmbDescription3];

          v33 = objc_autoreleasePoolPush();
          v34 = v29;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = HMFGetLogIdentifier();
            hmbDescription5 = [zoneID hmbDescription];
            *buf = 138543618;
            v59 = v36;
            v60 = 2112;
            v61 = hmbDescription5;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEBUG, "%{public}@No local zone for %@, skipping", buf, 0x16u);

            dictionary = v48;
          }

          objc_autoreleasePoolPop(v33);
          v22 = 0;
          v15 = v49;
        }

        v14 = v22;
        v11 = v50;
        v16 = selfCopy;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  if (!v14)
  {
    goto LABEL_26;
  }

  allValues = [dictionary allValues];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v16 __shutdownLocalZones:allValues activity:activityCopy];

  if (errorCopy)
  {
    v44 = v14;
    v45 = 0;
    *errorCopy = v14;
  }

  else
  {
    v45 = 0;
  }

LABEL_27:

  return v45;
}

- (void)__shutdownLocalZones:(id)zones activity:(id)activity
{
  v29 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([zonesCopy count])
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(zonesCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = zonesCopy;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          shutdown = [*(*(&v24 + 1) + 8 * v14) shutdown];
          [v9 addObject:shutdown];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v16 = MEMORY[0x277D2C900];
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v18 = [v16 combineAllFutures:v9 ignoringErrors:1 scheduler:globalAsyncScheduler];

    v19 = [v18 blockAndWaitForCompletionWithError:0];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____shutdownLocalZones_activity___block_invoke;
    v20[3] = &unk_27867B008;
    v21 = activityCopy;
    v22 = v10;
    selfCopy = self;
    [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];
  }
}

void __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____shutdownLocalZones_activity___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v10 = [v9 zoneID];
    v11 = [v10 name];
    [v8 markWithFormat:@"Failed to shut down local zone %@", v11];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 48);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      v17 = [v16 zoneID];
      v18 = [v17 name];
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down local zone %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (id)__openLocalZoneForCloudZoneID:(id)d error:(id *)error
{
  dCopy = d;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self localDatabase];
  v9 = objc_alloc_init(MEMORY[0x277D17088]);
  v10 = [localDatabase openZoneWithZoneID:dCopy configuration:v9 error:error];

  [v10 startUp];

  return v10;
}

- (id)__createCloudZoneIDForZoneID:(id)d
{
  v4 = MEMORY[0x277D17070];
  dCopy = d;
  v6 = [v4 alloc];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  containerID = [cloudDatabase containerID];
  cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase];
  publicDatabase = [cloudDatabase2 publicDatabase];
  v11 = [v6 initWithContainerID:containerID scope:objc_msgSend(publicDatabase zoneID:{"scope"), dCopy}];

  return v11;
}

+ (BOOL)__errorIsNotFound:(id)found
{
  foundCopy = found;
  if ([foundCopy isHMFError] && objc_msgSend(foundCopy, "code") == 2)
  {
    v4 = 1;
  }

  else if ([foundCopy isHMError])
  {
    v4 = [foundCopy code] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)__overrideParentModelID
{
  if (__overrideParentModelID_onceToken != -1)
  {
    dispatch_once(&__overrideParentModelID_onceToken, &__block_literal_global_144316);
  }

  v3 = __overrideParentModelID_overrideParentModelID;

  return v3;
}

void __89__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_Records____overrideParentModelID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"56e3068a-cb39-4cef-b4a3-78d7cc58e7d5"];
  v1 = __overrideParentModelID_overrideParentModelID;
  __overrideParentModelID_overrideParentModelID = v0;
}

- (void)__updateChangeTokenWithFetchInfo:(id)info
{
  v61 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  originalDatabaseChangeToken = [infoCopy originalDatabaseChangeToken];
  databaseChangeToken = [infoCopy databaseChangeToken];
  v8 = HMFEqualObjects();

  if (v8)
  {
    activity = [infoCopy activity];
    databaseChangeToken2 = [infoCopy databaseChangeToken];
    hmbDescription = [databaseChangeToken2 hmbDescription];
    [activity markWithFormat:@"Database change token has not been updated: %@", hmbDescription];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      databaseChangeToken3 = [infoCopy databaseChangeToken];
      hmbDescription2 = [databaseChangeToken3 hmbDescription];
      *buf = 138543618;
      v58 = v15;
      v59 = 2112;
      v60 = hmbDescription2;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Database change token has not been updated: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    databaseChangeToken4 = [infoCopy databaseChangeToken];

    if (!databaseChangeToken4)
    {
      v50 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v53;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Should never have a nil change token here", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v54 = [[HMDAssertionLogEvent alloc] initWithReason:@"Should never have a nil change token here"];
      v55 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v55 submitLogEvent:v54];
    }

    activity2 = [infoCopy activity];
    databaseChangeToken5 = [infoCopy databaseChangeToken];
    hmbDescription3 = [databaseChangeToken5 hmbDescription];
    [activity2 markWithFormat:@"Updating database change token: %@", hmbDescription3];

    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      databaseChangeToken6 = [infoCopy databaseChangeToken];
      hmbDescription4 = [databaseChangeToken6 hmbDescription];
      *buf = 138543618;
      v58 = v25;
      v59 = 2112;
      v60 = hmbDescription4;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Updating database change token: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy3 cloudDatabase];
    v29 = *MEMORY[0x277D17138];
    os_unfair_lock_lock_with_options();

    cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy3 cloudDatabase];
    v31 = [cloudDatabase2 databaseStateForDatabaseScope:1];

    databaseChangeToken7 = [infoCopy databaseChangeToken];
    [v31 setServerChangeToken:databaseChangeToken7];

    cloudDatabase3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy3 cloudDatabase];
    stateZone = [cloudDatabase3 stateZone];
    v56 = v31;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v36 = [stateZone update:v35];

    os_unfair_lock_unlock(&cloudDatabase[v29]);
    activity3 = [infoCopy activity];
    v38 = activity3;
    if (v36)
    {
      [activity3 markWithFormat:@"Failed to update database state model: %@", v36];

      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy3;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v42;
        v59 = 2112;
        v60 = v36;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to update database state model: %@", buf, 0x16u);
      }
    }

    else
    {
      [activity3 markWithFormat:@"Updated database change token successfully"];

      v39 = objc_autoreleasePoolPush();
      v43 = selfCopy3;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v44;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Updated database change token successfully", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v39);
  }

  requestedRecordIDs = [infoCopy requestedRecordIDs];
  internalState = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self internalState];
  [internalState setLastSynchronizedRecordIDs:requestedRecordIDs];

  activity4 = [infoCopy activity];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __saveInternalStateWithActivity:activity4];

  modifiedRecordIDs = [infoCopy modifiedRecordIDs];
  v49 = objc_msgSend_copy(modifiedRecordIDs);
  [infoCopy finishWithResult:v49];
}

- (void)__removeDeletedZonesWithFetchInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  array = [MEMORY[0x277CBEB18] array];
  zoneInfoMap = [infoCopy zoneInfoMap];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __111__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_RemoveDeletedZones____removeDeletedZonesWithFetchInfo___block_invoke;
  v14 = &unk_27867DAB0;
  selfCopy = self;
  v16 = array;
  v8 = array;
  [zoneInfoMap enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self cloudDatabase:v11];
  v10 = objc_msgSend_copy(v8);
  [v9 handleRemovedZoneIDs:v10 userInitiated:0];

  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __updateChangeTokenWithFetchInfo:infoCopy];
}

void __111__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_RemoveDeletedZones____removeDeletedZonesWithFetchInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if ([a3 zoneWasDeleted])
  {
    v5 = objc_alloc(MEMORY[0x277D17070]);
    v6 = [*(a1 + 32) cloudDatabase];
    v7 = [v6 containerID];
    v8 = [*(a1 + 32) cloudDatabase];
    v9 = [v8 publicDatabase];
    v10 = [v5 initWithContainerID:v7 scope:objc_msgSend(v9 zoneID:{"scope"), v11}];

    [*(a1 + 40) addObject:v10];
  }
}

- (void)__saveInternalStateWithActivity:(id)activity
{
  v35[1] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalState = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self internalState];

  if (!internalState)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Must have internal state", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [[HMDAssertionLogEvent alloc] initWithReason:@"Must have internal state"];
    v28 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v28 submitLogEvent:v27];
  }

  [activityCopy markWithFormat:@"Saving internal state model"];
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Saving internal state model", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 localZone];
  internalState2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 internalState];
  v35[0] = internalState2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v14 = [localZone update:v13];

  if (v14)
  {
    internalState3 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy2 internalState];
    hmbModelID = [internalState3 hmbModelID];
    [activityCopy markWithFormat:@"Failed to save internal state model %@: %@", hmbModelID, v14];

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy2;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      internalState4 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v18 internalState];
      hmbModelID2 = [internalState4 hmbModelID];
      *buf = 138543874;
      v30 = v20;
      v31 = 2112;
      v32 = hmbModelID2;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to save internal state model %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (BOOL)_removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options error:(id *)error
{
  nameCopy = name;
  recordNameCopy = recordName;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__201765;
  v32 = __Block_byref_object_dispose__201766;
  v33 = 0;
  v14 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"RemoveOverrides"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __110__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__removeOverridesForZoneName_recordName_options_error___block_invoke;
  v21[3] = &unk_2786847E8;
  v21[4] = self;
  v26 = &v34;
  v15 = nameCopy;
  v22 = v15;
  v16 = recordNameCopy;
  v23 = v16;
  v17 = optionsCopy;
  v24 = v17;
  v18 = v14;
  v25 = v18;
  v27 = &v28;
  [v18 performBlock:v21];
  v19 = *(v35 + 24);
  if (error && (v35[3] & 1) == 0)
  {
    *error = v29[5];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

uint64_t __110__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__removeOverridesForZoneName_recordName_options_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(*(a1 + 80) + 8);
    obj = *(v7 + 40);
    v8 = [v2 __removeOverridesForZoneName:v3 recordName:v4 options:v5 activity:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    *(*(*(a1 + 72) + 8) + 24) = v8;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v10 = *(*(a1 + 80) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return [*(a1 + 64) invalidate];
}

- (BOOL)removeOverridesForZoneName:(id)name recordName:(id)recordName options:(id)options error:(id *)error
{
  optionsCopy = options;
  recordNameCopy = recordName;
  nameCopy = name;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(error) = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _removeOverridesForZoneName:nameCopy recordName:recordNameCopy options:optionsCopy error:error];
  return error;
}

- (BOOL)removeAllOverridesWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(error) = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _removeOverridesForZoneName:0 recordName:0 options:optionsCopy error:error];
  return error;
}

- (BOOL)removeOverridesForRecordIDs:(id)ds options:(id)options error:(id *)error
{
  dsCopy = ds;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__201765;
  v27 = __Block_byref_object_dispose__201766;
  v28 = 0;
  v11 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"RemoveOverridesForRecordIDs"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_removeOverridesForRecordIDs_options_error___block_invoke;
  v17[3] = &unk_27867F678;
  v17[4] = self;
  v21 = &v29;
  v12 = dsCopy;
  v18 = v12;
  v13 = optionsCopy;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  v22 = &v23;
  [v14 performBlock:v17];
  v15 = *(v30 + 24);
  if (error && (v30[3] & 1) == 0)
  {
    *error = v24[5];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

uint64_t __99__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_removeOverridesForRecordIDs_options_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 72) + 8);
    obj = *(v6 + 40);
    v7 = [v2 __removeOverridesForRecordIDs:v3 options:v4 activity:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return [*(a1 + 56) invalidate];
}

- (BOOL)addOverrides:(id)overrides replace:(BOOL)replace options:(id)options error:(id *)error
{
  overridesCopy = overrides;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__201765;
  v31 = __Block_byref_object_dispose__201766;
  v32 = 0;
  v13 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"AddOverrides"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_addOverrides_replace_options_error___block_invoke;
  v19[3] = &unk_27867F6A0;
  v14 = v13;
  v20 = v14;
  v15 = overridesCopy;
  v21 = v15;
  selfCopy = self;
  v24 = &v33;
  replaceCopy = replace;
  v16 = optionsCopy;
  v23 = v16;
  v25 = &v27;
  [v14 performBlock:v19];
  v17 = *(v34 + 24);
  if (error && (v34[3] & 1) == 0)
  {
    *error = v28[5];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

uint64_t __92__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_addOverrides_replace_options_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allKeys];
  v4 = __descriptionsForRecordIDArray(v3);
  [v2 markWithFormat:@"Applying overrides for recordIDs: %@", v4];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 48);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) allKeys];
    v10 = __descriptionsForRecordIDArray(v9);
    *buf = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Applying overrides for recordIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([*(a1 + 48) isRunning])
  {
    v11 = *(a1 + 80);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(*(a1 + 72) + 8);
    obj = *(v16 + 40);
    v17 = [v12 __addOverrides:v14 replace:v11 options:v13 activity:v15 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v17;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  return [*(a1 + 32) invalidate];
}

- (id)_fetchOverridesForZoneName:(id)name options:(id)options error:(id *)error
{
  nameCopy = name;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__201765;
  v36 = __Block_byref_object_dispose__201766;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__201765;
  v30 = __Block_byref_object_dispose__201766;
  v31 = 0;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v13 = [v11 initWithName:label];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchOverridesForZoneName_options_error___block_invoke;
  v20[3] = &unk_27867F678;
  v20[4] = self;
  v24 = &v32;
  v14 = nameCopy;
  v21 = v14;
  v15 = optionsCopy;
  v22 = v15;
  v16 = v13;
  v23 = v16;
  v25 = &v26;
  [v16 performBlock:v20];
  v17 = v33[5];
  if (v17)
  {
    v18 = v17;
  }

  else if (error)
  {
    *error = v27[5];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

uint64_t __98__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchOverridesForZoneName_options_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 72) + 8);
    obj = *(v6 + 40);
    v7 = [v2 __fetchOverridesForZoneName:v3 options:v4 activity:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v11 = *(*(a1 + 72) + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  return [*(a1 + 56) invalidate];
}

- (id)fetchOverridesForRecordIDs:(id)ds options:(id)options error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__201765;
  v42 = __Block_byref_object_dispose__201766;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__201765;
  v36 = __Block_byref_object_dispose__201766;
  v37 = 0;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v13 = [v11 initWithName:label];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchOverridesForRecordIDs_options_error___block_invoke;
  v25[3] = &unk_27867F678;
  v14 = v13;
  v26 = v14;
  v15 = dsCopy;
  v27 = v15;
  selfCopy = self;
  v30 = &v38;
  v16 = optionsCopy;
  v29 = v16;
  v31 = &v32;
  [v14 performBlock:v25];
  v17 = v39[5];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    if (error)
    {
      *error = v33[5];
    }

    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = v33[5];
      *buf = 138543618;
      v45 = v22;
      v46 = 2112;
      v47 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@No overrides fetched with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v17;
}

uint64_t __98__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchOverridesForRecordIDs_options_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = __descriptionsForRecordIDSet(*(a1 + 40));
  [v2 markWithFormat:@"Fetching overrides for recordIDs: %@", v3];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 48);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = __descriptionsForRecordIDSet(*(a1 + 40));
    *buf = 138543618;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching overrides for recordIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 48) isRunning])
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(*(a1 + 72) + 8);
    obj = *(v13 + 40);
    v14 = [v9 __fetchOverridesForRecordIDs:v11 options:v10 activity:v12 error:&obj];
    objc_storeStrong((v13 + 40), obj);
    v15 = 64;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 48);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@No local zone, can't fetch overrides", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v15 = 72;
  }

  v20 = *(*(a1 + v15) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v14;

  return [*(a1 + 32) invalidate];
}

- (BOOL)removeAllLocalRulesWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__201765;
  v25 = __Block_byref_object_dispose__201766;
  v26 = 0;
  v8 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v10 = [v8 initWithName:label];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_removeAllLocalRulesWithOptions_error___block_invoke;
  v15[3] = &unk_278687D38;
  v11 = v10;
  v16 = v11;
  selfCopy = self;
  v19 = &v27;
  v12 = optionsCopy;
  v18 = v12;
  v20 = &v21;
  [v11 performBlock:v15];
  if (error)
  {
    *error = v22[5];
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

uint64_t __94__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_removeAllLocalRulesWithOptions_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Removing all local rules"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all local rules", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 40) isRunning])
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(*(a1 + 64) + 8);
    obj = *(v9 + 40);
    v10 = [v6 __removeAllLocalRulesWithOptions:v7 activity:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v10;
    v11 = [MEMORY[0x277CBEB98] set];
    v12 = [*(a1 + 40) internalState];
    [v12 setLastSynchronizedRecordIDs:v11];

    [*(a1 + 40) __saveInternalStateWithActivity:*(a1 + 32)];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  return [*(a1 + 32) invalidate];
}

- (id)fetchAllDataForZoneName:(id)name options:(id)options error:(id *)error
{
  optionsCopy = options;
  nameCopy = name;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _fetchAllDataForZoneName:nameCopy options:optionsCopy error:error];

  return v11;
}

- (id)fetchAllDataWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _fetchAllDataForZoneName:0 options:optionsCopy error:error];

  return v8;
}

- (id)_fetchAllDataForZoneName:(id)name options:(id)options error:(id *)error
{
  nameCopy = name;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__201765;
  v37 = __Block_byref_object_dispose__201766;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__201765;
  v31 = __Block_byref_object_dispose__201766;
  v32 = 0;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v13 = [v11 initWithName:label];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchAllDataForZoneName_options_error___block_invoke;
  v20[3] = &unk_27867F678;
  v14 = v13;
  v21 = v14;
  v15 = nameCopy;
  v22 = v15;
  selfCopy = self;
  v25 = &v33;
  v16 = optionsCopy;
  v24 = v16;
  v26 = &v27;
  [v14 performBlock:v20];
  v17 = v34[5];
  if (v17)
  {
    v18 = v17;
  }

  else if (error)
  {
    *error = v28[5];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v17;
}

uint64_t __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchAllDataForZoneName_options_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Fetching records with zone name '%@'", *(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching records with zone name '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 48) isRunning])
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(*(a1 + 72) + 8);
    obj = *(v11 + 40);
    v12 = [v7 __fetchAllDataForZoneName:v9 options:v8 activity:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = 64;
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v13 = 72;
  }

  v14 = *(*(a1 + v13) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;

  return [*(a1 + 32) invalidate];
}

- (id)fetchAllDataForRecordIDs:(id)ds options:(id)options error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  optionsCopy = options;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__201765;
  v42 = __Block_byref_object_dispose__201766;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__201765;
  v36 = __Block_byref_object_dispose__201766;
  v37 = 0;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v13 = [v11 initWithName:label];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchAllDataForRecordIDs_options_error___block_invoke;
  v25[3] = &unk_27867F678;
  v14 = v13;
  v26 = v14;
  v15 = dsCopy;
  v27 = v15;
  selfCopy = self;
  v30 = &v38;
  v16 = optionsCopy;
  v29 = v16;
  v31 = &v32;
  [v14 performBlock:v25];
  v17 = v39[5];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    if (error)
    {
      *error = v33[5];
    }

    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = v33[5];
      *buf = 138543618;
      v45 = v22;
      v46 = 2112;
      v47 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch paired metadata dictionary with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v17;
}

uint64_t __96__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchAllDataForRecordIDs_options_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = __descriptionsForRecordIDSet(*(a1 + 40));
  [v2 markWithFormat:@"Fetching records for recordIDs: %@", v3];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 48);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = __descriptionsForRecordIDSet(*(a1 + 40));
    *buf = 138543618;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching records for recordIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if ([*(a1 + 48) isRunning])
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(*(a1 + 72) + 8);
    obj = *(v13 + 40);
    v14 = [v9 __fetchAllDataForRecordIDs:v11 options:v10 activity:v12 error:&obj];
    objc_storeStrong((v13 + 40), obj);
    v15 = 64;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 48);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch paired metadata dictionary due to nil local zone", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    v15 = 72;
  }

  v20 = *(*(a1 + v15) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v14;

  return [*(a1 + 32) invalidate];
}

- (void)fetchCloudRecordsForZoneID:(id)d recordID:(id)iD options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  iDCopy = iD;
  dCopy = d;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  desiredKeys = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self desiredKeys];
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _fetchCloudRecordsForZoneID:dCopy recordID:iDCopy options:optionsCopy desiredKeys:desiredKeys completion:completionCopy];
}

- (id)desiredKeys
{
  v4[12] = *MEMORY[0x277D85DE8];
  v4[0] = @"CD_productGroup";
  v4[1] = @"CD_productGroup_ckAsset";
  v4[2] = @"CD_productNumber";
  v4[3] = @"CD_productNumber_ckAsset";
  v4[4] = @"CD_networkDeclarations";
  v4[5] = @"CD_networkDeclarations_ckAsset";
  v4[6] = @"CD_networkDeclarationsSignature";
  v4[7] = @"CD_networkDeclarationsSignature_ckAsset";
  v4[8] = @"CD_pairedMetadata";
  v4[9] = @"CD_pairedMetadata_ckAsset";
  v4[10] = @"CD_pairedMetadataSignature";
  v4[11] = @"CD_pairedMetadataSignature_ckAsset";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:12];

  return v2;
}

- (void)fetchCloudRecordIDsForZoneID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudRecordIDsForZoneID_options_completion___block_invoke;
  v13[3] = &unk_27867F650;
  v14 = completionCopy;
  v12 = completionCopy;
  [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self _fetchCloudRecordsForZoneID:dCopy recordID:0 options:optionsCopy desiredKeys:MEMORY[0x277CBEBF8] completion:v13];
}

void __105__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudRecordIDsForZoneID_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) recordID];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = *(a1 + 32);
    v13 = objc_msgSend_copy(v5);
    (*(v12 + 16))(v12, v13, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_fetchCloudRecordsForZoneID:(id)d recordID:(id)iD options:(id)options desiredKeys:(id)keys completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  keysCopy = keys;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v18 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v20 = [v18 initWithName:label];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke;
  v27[3] = &unk_2786873D8;
  v28 = v20;
  selfCopy = self;
  v30 = optionsCopy;
  v31 = dCopy;
  v32 = iDCopy;
  v33 = keysCopy;
  v34 = completionCopy;
  v21 = completionCopy;
  v22 = keysCopy;
  v23 = iDCopy;
  v24 = dCopy;
  v25 = optionsCopy;
  v26 = v20;
  [v26 performBlock:v27];
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [a1[4] markWithFormat:@"Scheduling cloud fetch"];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling cloud fetch", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = a1[4];
  v7 = a1[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_212;
  v16[3] = &unk_27867F628;
  v17 = v6;
  v18 = a1[6];
  v19 = a1[7];
  v20 = a1[8];
  v21 = a1[9];
  v8 = [v7 __asyncFutureWithActivity:v17 ignoreErrors:0 block:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_2;
  v12[3] = &unk_278680470;
  v9 = a1[4];
  v10 = a1[5];
  v13 = v9;
  v14 = v10;
  v15 = a1[10];
  v11 = [v8 addCompletionBlock:v12];
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_212(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo alloc];
  v8 = a1[4];
  v9 = a1[5];
  v10 = [v6 cloudDatabase];
  v11 = -[HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchRecordsInfo initWithActivity:options:promise:database:useAnonymousRequests:zoneID:recordID:desiredKeys:](v7, "initWithActivity:options:promise:database:useAnonymousRequests:zoneID:recordID:desiredKeys:", v8, v9, v5, v10, [v6 useAnonymousRequests], a1[6], a1[7], a1[8]);

  [v6 __fetchCloudRecordsWithFetchInfo:v11];
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_3;
  v12[3] = &unk_278688978;
  v11 = *(a1 + 32);
  v7 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = v5;
  v8 = *(a1 + 48);
  v15 = v6;
  v16 = v8;
  v9 = v6;
  v10 = v5;
  [v7 performBlock:v12];
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_3(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_4;
  block[3] = &unk_278688978;
  v3 = a1[5];
  v4 = a1[6];
  v8 = a1[4];
  v12 = a1[8];
  v5 = a1[7];
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  dispatch_async(v2, block);
}

void __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_4(uint64_t a1)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_5;
  v9[3] = &unk_278688978;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = *(a1 + 48);
  v12 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v2 performBlock:v9];
}

uint64_t __125__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror__fetchCloudRecordsForZoneID_recordID_options_desiredKeys_completion___block_invoke_5(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 markWithFormat:@"Cloud fetch completed successfully"];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 48);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud fetch completed successfully", buf, 0xCu);
    }
  }

  else
  {
    [v2 markWithFormat:@"Cloud fetch completed unsuccessfully: %@", *(a1 + 56)];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 48);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 56);
      *buf = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cloud fetch completed unsuccessfully: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 64) + 16))();
  return [*(a1 + 40) invalidate];
}

- (void)fetchCloudChangesForRecordIDs:(id)ds options:(id)options ignoreLastSynchronizedRecords:(BOOL)records xpcActivity:(id)activity completion:(id)completion
{
  optionsCopy = options;
  activityCopy = activity;
  completionCopy = completion;
  dsCopy = ds;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17 = objc_msgSend_copy(dsCopy);
  v18 = objc_alloc(MEMORY[0x277D0F770]);
  label = [optionsCopy label];
  v20 = [v18 initWithName:label];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke;
  v26[3] = &unk_278685E70;
  v27 = v20;
  selfCopy = self;
  recordsCopy = records;
  v29 = v17;
  v30 = optionsCopy;
  v31 = activityCopy;
  v32 = completionCopy;
  v21 = completionCopy;
  v22 = activityCopy;
  v23 = optionsCopy;
  v24 = v17;
  v25 = v20;
  [v25 performBlock:v26];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Scheduling cloud sync"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling cloud sync", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_184;
  v16[3] = &unk_27867F600;
  v17 = v6;
  v18 = *(a1 + 48);
  v21 = *(a1 + 80);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v8 = [v7 __asyncFutureWithActivity:v17 ignoreErrors:0 block:v16];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_201;
  v12[3] = &unk_2786818A8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v9;
  v14 = v10;
  v15 = *(a1 + 72);
  v11 = [v8 addCompletionBlock:v12];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_184(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v47 = a3;
  [*(a1 + 32) markWithFormat:@"Beginning cloud sync"];
  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Beginning cloud sync", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if ([*(a1 + 40) count])
  {
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) markWithFormat:@"Ignoring last fetched accessories"];
      v10 = objc_autoreleasePoolPush();
      v11 = v7;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring last fetched accessories", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
LABEL_15:
      v27 = [v7 cloudDatabase];
      v28 = *MEMORY[0x277D17138];
      os_unfair_lock_lock_with_options();

      v29 = [v7 cloudDatabase];
      v30 = [v29 databaseStateForDatabaseScope:1];

      v46 = [v30 serverChangeToken];

      os_unfair_lock_unlock(&v27[v28]);
      v31 = [HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo alloc];
      v32 = *(a1 + 32);
      v34 = *(a1 + 48);
      v33 = *(a1 + 56);
      v35 = [v7 cloudDatabase];
      v36 = [v7 useAnonymousRequests];
      v37 = *(a1 + 40);
      v38 = [v7 internalState];
      v39 = [v38 lastSynchronizedRecordIDs];
      LOBYTE(v45) = v36;
      v40 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo *)v31 initWithActivity:v32 options:v34 databaseChangeToken:v46 promise:v47 xpcActivity:v33 database:v35 useAnonymousRequests:v45 recordIDs:v37 lastSynchronizedRecordIDs:v39];

      [v7 __fetchDatabaseChangesWithFetchInfo:v40];
      goto LABEL_16;
    }

    v18 = [*(a1 + 40) mutableCopy];
    v19 = [v7 internalState];
    v20 = [v19 lastSynchronizedRecordIDs];
    [v18 minusSet:v20];

    v21 = [v18 count];
    v22 = *(a1 + 32);
    if (v21)
    {
      [v22 markWithFormat:@"Set of interested accessories has grown since last fetch: %@", v18];
      v23 = objc_autoreleasePoolPush();
      v24 = v7;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v26;
        v50 = 2112;
        v51 = v18;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Set of interested accessories has grown since last fetch: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      goto LABEL_15;
    }

    [v22 markWithFormat:@"Set of interested accessories has not grown, skipping fetch"];
    v41 = objc_autoreleasePoolPush();
    v42 = v7;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v44;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Set of interested accessories has not grown, skipping fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
    [v47 finishWithNoResult];
  }

  else
  {
    [*(a1 + 32) markWithFormat:@"Not interested in any records, skipping fetch"];
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Not interested in any records, skipping fetch", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [v47 finishWithNoResult];
  }

LABEL_16:
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_201(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_2;
  v11[3] = &unk_278688978;
  v10 = *(a1 + 32);
  v7 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  [v7 performBlock:v11];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_2(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_3;
  block[3] = &unk_278688978;
  v3 = a1[5];
  v4 = a1[6];
  v8 = a1[4];
  v5 = a1[7];
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  v12 = a1[8];
  dispatch_async(v2, block);
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_3(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_4;
  v8[3] = &unk_278688978;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = *(a1 + 48);
  v5 = *(&v7 + 1);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v10 = v7;
  v9 = v6;
  v11 = *(a1 + 64);
  [v2 performBlock:v8];
}

void __148__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_fetchCloudChangesForRecordIDs_options_ignoreLastSynchronizedRecords_xpcActivity_completion___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = NAEmptyResult();
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;

  v6 = *(a1 + 40);
  if (v2)
  {
    [v6 markWithFormat:@"Cloud sync completed successfully: %@", v5];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud sync completed successfully: %@", buf, 0x16u);
    }
  }

  else
  {
    [v6 markWithFormat:@"Cloud sync completed unsuccessfully: %@", *(a1 + 56)];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 48);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 56);
      *buf = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cloud sync completed unsuccessfully: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 64) + 16))();
  [*(a1 + 40) invalidate];
}

- (id)cloudFetchNeededForRecordIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self isRunning])
  {
    if (dsCopy)
    {
      internalState = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self internalState];
      lastSynchronizedRecordIDs = [internalState lastSynchronizedRecordIDs];
      v10 = [dsCopy isSubsetOfSet:lastSynchronizedRecordIDs] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NAFuture)shutdownFuture
{
  shutdownPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self shutdownPromise];
  future = [shutdownPromise future];

  return future;
}

- (NAFuture)startupFuture
{
  startupPromise = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self startupPromise];
  future = [startupPromise future];

  return future;
}

- (id)shutdown
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__201765;
  v15 = __Block_byref_object_dispose__201766;
  v16 = 0;
  v3 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Shutdown"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_shutdown__block_invoke;
  v7[3] = &unk_27868A4D8;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  v10 = &v11;
  [v4 performBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __65__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_shutdown__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Scheduling shutdown"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling shutdown", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_shutdown__block_invoke_179;
  v11[3] = &unk_27867F5D8;
  v12 = v6;
  v8 = [v7 __asyncFutureWithActivity:v12 ignoreErrors:1 block:v11];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __65__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_shutdown__block_invoke_179(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = a2;
  v6 = [v9 shutdownFuture];
  v7 = [v5 completionHandlerAdapter];

  v8 = [v6 addCompletionBlock:v7];
  [v9 __shutdownWithActivity:*(a1 + 32)];
}

- (id)flush
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__201765;
  v15 = __Block_byref_object_dispose__201766;
  v16 = 0;
  v3 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Flush"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_flush__block_invoke;
  v7[3] = &unk_27868A4D8;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  v10 = &v11;
  [v4 performBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __62__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_flush__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Scheduling flush"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling flush", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_flush__block_invoke_168;
  v11[3] = &unk_27867F5D8;
  v12 = v6;
  v8 = [v7 __asyncFutureWithActivity:v12 ignoreErrors:1 block:v11];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __62__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_flush__block_invoke_168(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) markWithFormat:@"Flushed"];
  v7 = objc_autoreleasePoolPush();
  v8 = v5;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Flushed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [v6 finishWithNoResult];
  [*(a1 + 32) invalidate];
}

- (id)triggerOutputForOutputRow:(unint64_t)row options:(id)options
{
  v4 = MEMORY[0x277D2C900];
  v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{58, options}];
  v6 = [v4 futureWithError:v5];

  return v6;
}

- (id)destroy
{
  v2 = MEMORY[0x277D2C900];
  v3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58];
  v4 = [v2 futureWithError:v3];

  return v4;
}

- (void)startUpWithLocalZone:(id)zone
{
  zoneCopy = zone;
  v5 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Startup"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke;
  v8[3] = &unk_27868A010;
  v9 = v5;
  selfCopy = self;
  v11 = zoneCopy;
  v6 = zoneCopy;
  v7 = v5;
  [v7 performBlock:v8];
}

void __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) markWithFormat:@"Scheduling startup"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Scheduling startup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke_161;
  block[3] = &unk_27868A010;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(v6, block);
}

void __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke_161(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_startUpWithLocalZone___block_invoke_2;
  v4[3] = &unk_27868A010;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 32);
  [v2 performBlock:v4];
}

- (id)__asyncFutureWithActivity:(id)activity ignoreErrors:(BOOL)errors block:(id)block
{
  errorsCopy = errors;
  activityCopy = activity;
  blockCopy = block;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__201765;
  v27 = __Block_byref_object_dispose__201766;
  v28 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke;
  v19[3] = &unk_278686E40;
  v22 = &v23;
  v19[4] = self;
  v10 = activityCopy;
  v20 = v10;
  v11 = blockCopy;
  v21 = v11;
  [v10 performBlock:v19];
  if (errorsCopy)
  {
    v12 = v24[5];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_150;
    v17[3] = &unk_278682FB8;
    v18 = v10;
    v13 = [v12 recover:v17];
    v14 = v24[5];
    v24[5] = v13;
  }

  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 future];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_2;
  block[3] = &unk_27867F5B0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v15 = v2;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v16 = v9;
  v17 = v10;
  v11 = v2;
  dispatch_async(v6, block);
}

id __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_2_151;
  v8[3] = &unk_27868A728;
  v9 = v3;
  v5 = v3;
  [v4 performBlock:v8];
  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v6;
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_2_151(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_class();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring error from promise: %@", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_3;
  v6[3] = &unk_27867F5B0;
  v5 = *(a1 + 32);
  v2 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v9 = v3;
  v10 = v4;
  [v2 performBlock:v6];
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_3(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) lastAsyncFuture];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_4;
  v7[3] = &unk_27867F588;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  objc_copyWeak(&v12, &location);
  v9 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v10 = v4;
  v11 = v5;
  v6 = [v2 flatMap:v7];
  [*(a1 + 32) setLastAsyncFuture:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_5;
  v10 = &unk_278687E08;
  v11 = *(a1 + 40);
  objc_copyWeak(&v14, (a1 + 72));
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  dispatch_async(v4, &v7);

  v5 = [*(*(*(a1 + 64) + 8) + 40) recoverIgnoringError];

  objc_destroyWeak(&v14);

  return v5;
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_5(id *a1)
{
  v2 = a1[4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_6;
  v3[3] = &unk_278687E08;
  objc_copyWeak(&v7, a1 + 7);
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  [v2 performBlock:v3];

  objc_destroyWeak(&v7);
}

void __102__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror___asyncFutureWithActivity_ignoreErrors_block___block_invoke_6(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained isShuttingDown])
    {
      [*(a1 + 40) markWithFormat:@"Not running block because we're already shutting down"];
      v4 = objc_autoreleasePoolPush();
      v5 = v3;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v7;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Not running block because we're already shutting down", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = objc_autoreleasePoolPush();
      v9 = v5;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Not running block because we're already shutting down", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [v12 finishWithError:v13];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v14 finishWithError:v15];
  }
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorInternalStateModel)internalState
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self isRunning])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Should only get internal state while running", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [[HMDAssertionLogEvent alloc] initWithReason:@"Should only get internal state while running"];
    v11 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v11 submitLogEvent:v10];
  }

  internalState = self->_internalState;

  return internalState;
}

- (void)setLastAsyncFuture:(id)future
{
  futureCopy = future;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lastAsyncFuture = self->_lastAsyncFuture;
  self->_lastAsyncFuture = futureCopy;
}

- (NAFuture)lastAsyncFuture
{
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  lastAsyncFuture = self->_lastAsyncFuture;

  return lastAsyncFuture;
}

- (BOOL)isShuttingDown
{
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_shuttingDown;
}

- (BOOL)isRunning
{
  selfCopy = self;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy localZone];
  LOBYTE(selfCopy) = localZone != 0;

  return selfCopy;
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirror)initWithLocalDatabase:(id)database cloudDatabase:(id)cloudDatabase useAnonymousRequests:(BOOL)requests ownerQueue:(id)queue
{
  databaseCopy = database;
  cloudDatabaseCopy = cloudDatabase;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirror;
  v14 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)&v29 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_cloudDatabase, cloudDatabase);
    objc_storeStrong(&v15->_localDatabase, database);
    v15->_useAnonymousRequests = requests;
    objc_storeStrong(&v15->_workQueue, queue);
    v16 = [MEMORY[0x277D2C938] schedulerWithDispatchQueue:queueCopy];
    workQueueScheduler = v15->_workQueueScheduler;
    v15->_workQueueScheduler = v16;

    localZone = v15->_localZone;
    v15->_localZone = 0;

    v19 = +[HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorLocalZoneID sharedInstance];
    zoneID = v15->_zoneID;
    v15->_zoneID = v19;

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    lastAsyncFuture = v15->_lastAsyncFuture;
    v15->_lastAsyncFuture = futureWithNoResult;

    v23 = objc_opt_new();
    startupPromise = v15->_startupPromise;
    v15->_startupPromise = v23;

    v25 = objc_opt_new();
    shutdownPromise = v15->_shutdownPromise;
    v15->_shutdownPromise = v25;

    v27 = v15;
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_201896 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_201896, &__block_literal_global_201897);
  }

  v3 = logCategory__hmf_once_v5_201898;

  return v3;
}

void __68__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_201898;
  logCategory__hmf_once_v5_201898 = v0;
}

- (void)__retryFetchDatabaseChangesWithFetchInfo:(id)info
{
  v31 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [infoCopy retryIntervalSeconds];
  v7 = v6;
  v8 = v6 > 0.0;
  activity = [infoCopy activity];
  if (v8)
  {
    v10 = "retry the fetch";
  }

  else
  {
    v10 = "fetch the next batch of changed zones";
  }

  [infoCopy retryIntervalSeconds];
  [activity markWithFormat:@"Will %s in %lu seconds", v10, v11];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    [infoCopy retryIntervalSeconds];
    *buf = 138543874;
    v26 = v15;
    v27 = 2080;
    v28 = v10;
    v29 = 2048;
    v30 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Will %s in %lu seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  [infoCopy retryIntervalSeconds];
  v18 = dispatch_time(0, (v17 * 1000000000.0));
  [infoCopy setShouldRetry:0];
  [infoCopy setRetryCount:{objc_msgSend(infoCopy, "retryCount") + 1}];
  objc_initWeak(buf, selfCopy);
  workQueue2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____retryFetchDatabaseChangesWithFetchInfo___block_invoke;
  block[3] = &unk_278681A08;
  v22 = infoCopy;
  v20 = infoCopy;
  objc_copyWeak(&v23, buf);
  v24 = v7 > 0.0;
  dispatch_after(v18, workQueue2, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

void __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____retryFetchDatabaseChangesWithFetchInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____retryFetchDatabaseChangesWithFetchInfo___block_invoke_2;
  v3[3] = &unk_278681A08;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 performBlock:v3];

  objc_destroyWeak(&v5);
}

void __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____retryFetchDatabaseChangesWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) activity];
    if (*(a1 + 48))
    {
      v4 = "Retrying";
    }

    else
    {
      v4 = "Fetching the next batch of changed zones";
    }

    v5 = [*(a1 + 32) databaseChangeToken];
    v6 = [v5 hmbDescription];
    [v3 markWithFormat:@"%s, token: %@", v4, v6];

    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      if (*(a1 + 48))
      {
        v11 = "Retrying";
      }

      else
      {
        v11 = "Fetching the next batch of changed zones";
      }

      v12 = [*(a1 + 32) databaseChangeToken];
      v13 = [v12 hmbDescription];
      *buf = 138543874;
      v16 = v10;
      v17 = 2080;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@%s, token: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [v8 __fetchDatabaseChangesWithFetchInfo:*(a1 + 32)];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [*(a1 + 32) finishWithError:v14];
  }
}

- (BOOL)__canRecoverFromFetchDatabaseChangesError:(id)error fetchInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![errorCopy hmd_isCKError] || (objc_msgSend(errorCopy, "hmd_isNonRecoverableCKError") & 1) != 0)
  {
    goto LABEL_3;
  }

  if ([errorCopy code] == 21)
  {
    activity = [infoCopy activity];
    [activity markWithFormat:@"Change token has expired: %@", errorCopy];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v15;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Change token has expired: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [infoCopy setDatabaseChangeToken:0];
    v9 = 1;
    [infoCopy setShouldRetry:1];
  }

  else
  {
    [errorCopy hmbCloudKitRetryDelay];
    [infoCopy setRetryIntervalSeconds:?];
    if (![infoCopy shouldRetry])
    {
LABEL_3:
      v9 = 0;
      goto LABEL_4;
    }

    activity2 = [infoCopy activity];
    [activity2 markWithFormat:@"Ignoring non-fatal error: %@", errorCopy];

    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v20;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Ignoring non-fatal error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v9 = 1;
  }

LABEL_4:

  return v9;
}

- (void)__fetchDatabaseChangesCompleted:(id)completed error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (errorCopy && ![(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __canRecoverFromFetchDatabaseChangesError:errorCopy fetchInfo:completedCopy])
  {
    [completedCopy finishWithError:errorCopy];
  }

  else if ([completedCopy shouldRetry])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __retryFetchDatabaseChangesWithFetchInfo:completedCopy];
  }

  else if ([completedCopy zonesHaveChanged])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __fetchVerificationCertificatesWithFetchInfo:completedCopy];
  }

  else if ([completedCopy zonesWereDeleted])
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __removeDeletedZonesWithFetchInfo:completedCopy];
  }

  else
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __updateChangeTokenWithFetchInfo:completedCopy];
  }
}

- (void)__fetchDatabaseChangesWithFetchInfo:(id)info
{
  v53 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);
  activity = [infoCopy activity];
  databaseChangeToken = [infoCopy databaseChangeToken];
  hmbDescription = [databaseChangeToken hmbDescription];
  [activity markWithFormat:@"Checking for database changes with change token: %@", hmbDescription];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    databaseChangeToken2 = [infoCopy databaseChangeToken];
    hmbDescription2 = [databaseChangeToken2 hmbDescription];
    *buf = 138543618;
    v50 = v12;
    v51 = 2112;
    v52 = hmbDescription2;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Checking for database changes with change token: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x277CBC388]);
  databaseChangeToken3 = [infoCopy databaseChangeToken];
  v17 = [v15 initWithPreviousServerChangeToken:databaseChangeToken3];

  [v17 setCallbackQueue:workQueue];
  operationGroup = [infoCopy operationGroup];
  [v17 setGroup:operationGroup];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke;
  v45[3] = &unk_278681968;
  v19 = infoCopy;
  v46 = v19;
  v20 = workQueue;
  v47 = v20;
  v48 = selfCopy;
  [v17 setRecordZoneWithIDChangedBlock:v45];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_14;
  aBlock[3] = &unk_278681968;
  v21 = v19;
  v42 = v21;
  v22 = v20;
  v43 = v22;
  v44 = selfCopy;
  v23 = _Block_copy(aBlock);
  [v17 setRecordZoneWithIDWasDeletedBlock:v23];
  [v17 setRecordZoneWithIDWasPurgedBlock:v23];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_22;
  v37[3] = &unk_278681990;
  v24 = v21;
  v38 = v24;
  v25 = v22;
  v39 = v25;
  v40 = selfCopy;
  [v17 setChangeTokenUpdatedBlock:v37];
  objc_initWeak(buf, selfCopy);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_28;
  v32[3] = &unk_2786819E0;
  v26 = v24;
  v33 = v26;
  v27 = v25;
  v34 = v27;
  v35 = selfCopy;
  objc_copyWeak(&v36, buf);
  [v17 setFetchDatabaseChangesCompletionBlock:v32];
  cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
  publicDatabase = [cloudDatabase publicDatabase];
  [publicDatabase addOperation:v17];

  operationStartTime = [v26 operationStartTime];
  LODWORD(cloudDatabase) = operationStartTime == 0;

  if (cloudDatabase)
  {
    v31 = [MEMORY[0x277CBEAA8] now];
    [v26 setOperationStartTime:v31];
  }

  objc_destroyWeak(&v36);

  objc_destroyWeak(buf);
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2;
  v6[3] = &unk_2786891E0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 performBlock:v6];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_15;
  v6[3] = &unk_2786891E0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 performBlock:v6];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_23;
  v6[3] = &unk_2786891E0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 48);
  v5 = v3;
  [v4 performBlock:v6];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_28(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) activity];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_29;
  v13[3] = &unk_2786819B8;
  v14 = *(a1 + 40);
  v10 = v8;
  v15 = v10;
  v16 = *(a1 + 32);
  v11 = v7;
  v20 = a3;
  v12 = *(a1 + 48);
  v17 = v11;
  v18 = v12;
  objc_copyWeak(&v19, (a1 + 56));
  [v9 performBlock:v13];

  objc_destroyWeak(&v19);
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_29(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) activity];
  v4 = [*(a1 + 56) hmbDescription];
  if (v2)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
    [v3 markWithFormat:@"Database changes operation completed unsuccessfully, token: %@, error: %@, moreComing: %@", v4, v5, v6];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 64);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 56) hmbDescription];
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
    *buf = 138544130;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v14 = "%{public}@Database changes operation completed unsuccessfully, token: %@, error: %@, moreComing: %@";
    v15 = v9;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 42;
  }

  else
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
    [v3 markWithFormat:@"Database changes operation completed successfully, token: %@, moreComing: %@", v4, v18];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 64);
    v9 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 56) hmbDescription];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
    *buf = 138543874;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v13;
    v14 = "%{public}@Database changes operation completed successfully, token: %@, moreComing: %@";
    v15 = v9;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 32;
  }

  _os_log_impl(&dword_229538000, v15, v16, v14, buf, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v20 = *(a1 + 56);
    if (!*(a1 + 40) || v20)
    {
      [*(a1 + 48) setDatabaseChangeToken:v20];
    }

    if (*(a1 + 80) == 1)
    {
      [*(a1 + 48) setShouldRetry:1];
    }

    [WeakRetained __fetchDatabaseChangesCompleted:*(a1 + 48) error:*(a1 + 40)];
  }

  else
  {
    v21 = [*(a1 + 48) activity];
    [v21 markWithFormat:@"Mirror has been deallocated"];

    v22 = objc_autoreleasePoolPush();
    v23 = objc_opt_class();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Mirror has been deallocated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = *(a1 + 40);
    if (!v26)
    {
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    }

    [*(a1 + 48) finishWithError:v26];
  }
}

uint64_t __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_23(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = [*(a1 + 40) activity];
  v3 = [*(a1 + 48) hmbDescription];
  [v2 markWithFormat:@"Change token was updated: %@", v3];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 56);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 48) hmbDescription];
    *buf = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Change token was updated: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  return [*(a1 + 40) setDatabaseChangeToken:*(a1 + 48)];
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2_15(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = [*(a1 + 40) zoneInfoMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];

  v4 = [*(a1 + 40) activity];
  v5 = [*(a1 + 48) hmbDescription];
  v6 = v5;
  if (v3)
  {
    [v4 markWithFormat:@"Zone was deleted: %@", v5];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 56);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 48) hmbDescription];
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Zone was deleted: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v3 markDeleted];
    [*(a1 + 40) markZonesDeleted];
  }

  else
  {
    [v4 markWithFormat:@"Ignoring deleted zone: %@", v5];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 56);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 48) hmbDescription];
      *buf = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring deleted zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __115__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchDatabaseChanges____fetchDatabaseChangesWithFetchInfo___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = [*(a1 + 40) zoneInfoMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];

  if (v3 || ([*(a1 + 48) zoneName], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"certificates"), v4, v5))
  {
    v6 = [*(a1 + 40) activity];
    v7 = [*(a1 + 48) hmbDescription];
    [v6 markWithFormat:@"Zone has changes: %@", v7];

    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 56);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) hmbDescription];
      *buf = 138543618;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Zone has changes: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (v3)
    {
      [v3 markChanged];
    }

    else
    {
      v13 = [*(a1 + 40) activity];
      [v13 markWithFormat:@"Forcing all zones to drop change tokens and refresh"];

      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 56);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Forcing all zones to drop change tokens and refresh", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [*(a1 + 40) zoneInfoMap];
      [v18 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_223569];
    }

    [*(a1 + 40) markZonesChanged];
  }

  else
  {
    v19 = [*(a1 + 40) activity];
    v20 = [*(a1 + 48) hmbDescription];
    [v19 markWithFormat:@"Ignoring changes from zone: %@", v20];

    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 56);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 48) hmbDescription];
      *buf = 138543618;
      v27 = v24;
      v28 = 2112;
      v29 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring changes from zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }
}

- (void)__fetchZoneChangesWithFetchInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = 0;
  v6 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __createCloudZonesForFetchInfo:infoCopy error:&v8];
  v7 = v8;
  if (v6)
  {
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self __startUpCloudZonesWithFetchInfo:infoCopy];
  }

  else
  {
    [infoCopy finishWithError:v7];
  }
}

- (void)__performCloudZonePullsWithFetchInfo:(id)info
{
  v44 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activity = [infoCopy activity];
  [activity markWithFormat:@"Starting to pull from cloud zones"];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting to pull from cloud zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = MEMORY[0x277CBEB18];
  zoneInfoMap = [infoCopy zoneInfoMap];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(zoneInfoMap, "count")}];

  zoneInfoMap2 = [infoCopy zoneInfoMap];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke;
  v37[3] = &unk_278687948;
  v37[4] = selfCopy;
  v15 = infoCopy;
  v38 = v15;
  v16 = v13;
  v39 = v16;
  [zoneInfoMap2 enumerateKeysAndObjectsUsingBlock:v37];

  v17 = [v16 count];
  activity2 = [v15 activity];
  v19 = activity2;
  if (v17)
  {
    [activity2 markWithFormat:@"Waiting for %lu cloud zones to pull", objc_msgSend(v16, "count")];

    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v16 count];
      *buf = 138543618;
      v41 = v23;
      v42 = 2048;
      v43 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Waiting for %lu cloud zones to pull", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277D2C900];
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v27 = [v25 combineAllFutures:v16 ignoringErrors:1 scheduler:globalAsyncScheduler];
  }

  else
  {
    [activity2 markWithFormat:@"Not waiting for any cloud zones to pull"];

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Not waiting for any cloud zones to pull", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v27 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_76;
  v34[3] = &unk_278687998;
  v35 = v15;
  v36 = selfCopy;
  v32 = v15;
  v33 = [v27 addSuccessBlock:v34];
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke(id *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 cloudZone];
  if (v7)
  {
    v8 = [v6 mirroredLocalZone];

    if (v8)
    {
      v9 = [a1[4] cloudDatabase];
      v10 = [v7 cloudZoneID];
      v11 = [v9 serverChangeTokenForZoneWithID:v10];

      v12 = [v6 ignoreChangeToken];
      v13 = [a1[5] activity];
      v14 = [v5 hmbDescription];
      v15 = v14;
      if (v12)
      {
        [v13 markWithFormat:@"Fetching changes for zone %@ but ignoring change token", v14];

        v16 = objc_autoreleasePoolPush();
        v17 = a1[4];
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v5 hmbDescription];
          *buf = 138543618;
          v36 = v19;
          v37 = 2112;
          v38 = v20;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetching changes for zone %@ but ignoring change token", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v11 = 0;
      }

      else
      {
        [v13 markWithFormat:@"Fetching changes for zone %@", v14];

        v21 = objc_autoreleasePoolPush();
        v22 = a1[4];
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [v5 hmbDescription];
          *buf = 138543618;
          v36 = v24;
          v37 = 2112;
          v38 = v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Fetching changes for zone %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
      }

      v26 = [a1[5] options];
      v27 = [v7 fetchChangesWithToken:v11 options:v26];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_62;
      v31[3] = &unk_2786879C0;
      v32 = a1[5];
      v28 = v5;
      v29 = a1[4];
      v33 = v28;
      v34 = v29;
      v30 = [v27 addCompletionBlock:v31];
      [a1[6] addObject:v27];
    }
  }
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_2;
  v8[3] = &unk_27868A010;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = v3;
  v6 = v3;
  [v4 performBlock:v8];
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_2(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_3;
  block[3] = &unk_27868A010;
  v6 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  v7 = v3;
  v8 = v4;
  dispatch_async(v2, block);
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_4;
  v5[3] = &unk_27868A010;
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 performBlock:v5];
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneInfoMap];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_5;
  v11[3] = &unk_2786879E8;
  v12 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v11];

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__264865;
  v9 = __Block_byref_object_dispose__264866;
  v10 = 0;
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_6;
  v4[3] = &unk_278687970;
  v4[4] = &v5;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
  if (v6[5])
  {
    [*(a1 + 32) finishWithError:?];
  }

  else
  {
    [*(a1 + 48) __removeDeletedZonesWithFetchInfo:*(a1 + 32)];
  }

  _Block_object_dispose(&v5, 8);
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 cloudZone];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 modifiedRecordIDsFromLastPull];
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = [*(a1 + 32) modifiedRecordIDs];
      [v7 unionSet:v6];
    }

    v4 = v8;
  }
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
    *a4 = 1;
  }
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____performCloudZonePullsWithFetchInfo___block_invoke_62(id *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] activity];
  v8 = [a1[5] hmbDescription];
  v9 = v8;
  if (v6)
  {
    [v7 markWithFormat:@"Failed to fetch changes for zone %@: %@", v8, v6];

    v10 = objc_autoreleasePoolPush();
    v11 = a1[6];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] hmbDescription];
      *buf = 138543874;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v6;
      v15 = "%{public}@Failed to fetch changes for zone %@: %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v16, v17, v15, buf, v18);
    }
  }

  else
  {
    [v7 markWithFormat:@"Successfully fetched changes for zone %@", v8];

    v10 = objc_autoreleasePoolPush();
    v11 = a1[6];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] hmbDescription];
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v15 = "%{public}@Successfully fetched changes for zone %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 22;
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v10);
}

- (void)__startUpCloudZonesWithFetchInfo:(id)info
{
  v44 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  activity = [infoCopy activity];
  [activity markWithFormat:@"Starting up cloud zones"];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Starting up cloud zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = MEMORY[0x277CBEB18];
  zoneInfoMap = [infoCopy zoneInfoMap];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(zoneInfoMap, "count")}];

  zoneInfoMap2 = [infoCopy zoneInfoMap];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke;
  v37[3] = &unk_278687948;
  v37[4] = selfCopy;
  v15 = infoCopy;
  v38 = v15;
  v16 = v13;
  v39 = v16;
  [zoneInfoMap2 enumerateKeysAndObjectsUsingBlock:v37];

  v17 = [v16 count];
  activity2 = [v15 activity];
  v19 = activity2;
  if (v17)
  {
    [activity2 markWithFormat:@"Waiting for %lu cloud zones to start up", objc_msgSend(v16, "count")];

    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v16 count];
      *buf = 138543618;
      v41 = v23;
      v42 = 2048;
      v43 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Waiting for %lu cloud zones to start up", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = MEMORY[0x277D2C900];
    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v27 = [v25 combineAllFutures:v16 ignoringErrors:1 scheduler:globalAsyncScheduler];
  }

  else
  {
    [activity2 markWithFormat:@"Not waiting for any cloud zones to start up"];

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v41 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Not waiting for any cloud zones to start up", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v27 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_49;
  v34[3] = &unk_278687998;
  v35 = v15;
  v36 = selfCopy;
  v32 = v15;
  v33 = [v27 addSuccessBlock:v34];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke(id *a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 cloudZone];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D170F8]);
    [v8 setCreateIfNeeded:1];
    v9 = [a1[4] localDatabase];
    v46 = 0;
    v10 = [v9 openZoneWithMirror:v7 configuration:v8 error:&v46];
    v11 = v46;

    if (v10)
    {
      [v10 startUp];
      v12 = [v7 startUp];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_32;
      v40[3] = &unk_278687920;
      v41 = a1[5];
      v13 = v5;
      v14 = a1[4];
      v42 = v13;
      v43 = v14;
      v44 = v6;
      v45 = v10;
      v15 = [v12 flatMap:v40];

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_37;
      v36[3] = &unk_278688D58;
      v37 = a1[5];
      v16 = v13;
      v17 = a1[4];
      v38 = v16;
      v39 = v17;
      v18 = [v15 addFailureBlock:v36];
      [a1[6] addObject:v15];

      v19 = v41;
    }

    else
    {
      v35 = v5;
      v20 = [a1[5] activity];
      v21 = [v7 cloudZoneID];
      [v21 zoneID];
      v23 = v22 = v11;
      v24 = [v23 hmbDescription];
      [v20 markWithFormat:@"Failed to create mirrored local zone for %@: %@", v24, v22];

      v25 = objc_autoreleasePoolPush();
      v26 = a1[4];
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v33 = [v7 cloudZoneID];
        v32 = [v33 zoneID];
        [v32 hmbDescription];
        v29 = v34 = v25;
        *buf = 138543874;
        v48 = v28;
        v49 = 2112;
        v50 = v29;
        v51 = 2112;
        v52 = v22;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create mirrored local zone for %@: %@", buf, 0x20u);

        v25 = v34;
      }

      objc_autoreleasePoolPop(v25);
      v30 = [v7 startUp];
      [v30 cancel];

      v31 = a1[6];
      v19 = [MEMORY[0x277D2C900] futureWithError:v22];
      [v31 addObject:v19];
      v11 = v22;
      v5 = v35;
    }
  }
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_2;
  v8[3] = &unk_27868A010;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = v3;
  v6 = v3;
  [v4 performBlock:v8];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_2(id *a1)
{
  v2 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_3;
  block[3] = &unk_27868A010;
  v6 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  v7 = v3;
  v8 = v4;
  dispatch_async(v2, block);
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_4;
  v5[3] = &unk_27868A010;
  v6 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 performBlock:v5];
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_4(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__264865;
  v8 = __Block_byref_object_dispose__264866;
  v9 = 0;
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_5;
  v3[3] = &unk_278687970;
  v3[4] = &v4;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
  if (v5[5])
  {
    [*(a1 + 40) finishWithError:?];
  }

  else
  {
    [*(a1 + 48) __performCloudZonePullsWithFetchInfo:*(a1 + 40)];
  }

  _Block_object_dispose(&v4, 8);
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
    *a4 = 1;
  }
}

id __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_32(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) activity];
  v5 = [*(a1 + 40) hmbDescription];
  [v4 markWithFormat:@"Zone %@ started up", v5];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 48);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 40) hmbDescription];
    *buf = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Zone %@ started up", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 56) setMirroredLocalZone:*(a1 + 64)];
  v11 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v11;
}

void __108__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____startUpCloudZonesWithFetchInfo___block_invoke_37(id *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] activity];
  v5 = [a1[5] hmbDescription];
  [v4 markWithFormat:@"Zone %@ failed to start up: %@", v5, v3];

  v6 = objc_autoreleasePoolPush();
  v7 = a1[6];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [a1[5] hmbDescription];
    *buf = 138543874;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Zone %@ failed to start up: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
}

- (BOOL)__createCloudZonesForFetchInfo:(id)info error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  workQueue = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneInfoMap = [infoCopy zoneInfoMap];
  v9 = [zoneInfoMap count];

  if (v9)
  {
    activity = [infoCopy activity];
    [activity markWithFormat:@"Creating cloud zones"];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating cloud zones", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__264865;
    v31 = __Block_byref_object_dispose__264866;
    v32 = 0;
    cloudDatabase = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
    v16 = *MEMORY[0x277D17138];
    os_unfair_lock_lock_with_options();

    cloudDatabase2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)selfCopy cloudDatabase];
    v18 = [cloudDatabase2 databaseStateForDatabaseScope:1];

    zoneInfoMap2 = [infoCopy zoneInfoMap];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____createCloudZonesForFetchInfo_error___block_invoke;
    v23[3] = &unk_2786878F8;
    v24 = infoCopy;
    v25 = selfCopy;
    p_buf = &buf;
    v20 = v18;
    v26 = v20;
    [zoneInfoMap2 enumerateKeysAndObjectsUsingBlock:v23];

    os_unfair_lock_unlock(&cloudDatabase[v16]);
    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }

    v21 = *(*(&buf + 1) + 40) == 0;
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

void __112__HMDNetworkRouterFirewallRuleManagerBackingStoreMirror_FetchZoneChanges____createCloudZonesForFetchInfo_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v98 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([v8 zoneHasChanged])
  {
    v9 = [*(a1 + 40) __createCloudZoneIDForZoneID:v7];
    v10 = [*(a1 + 40) cloudDatabase];
    v11 = [v10 zoneStateByZoneID];
    v12 = [v11 objectForKeyedSubscript:v9];

    v13 = [*(a1 + 32) activity];
    v14 = [v7 hmbDescription];
    v15 = v14;
    if (v12)
    {
      v89 = v7;
      [v13 markWithFormat:@"Already have a model for zone %@", v14];

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v12;
        v20 = v8;
        v21 = v9;
        v23 = v22 = a4;
        v24 = [v89 hmbDescription];
        *buf = 138543618;
        v93 = v23;
        v94 = 2112;
        v95 = v24;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Already have a model for zone %@", buf, 0x16u);

        a4 = v22;
        v9 = v21;
        v8 = v20;
        v12 = v19;
      }

      objc_autoreleasePoolPop(v16);
      v25 = [v12 cloudZone];
      if (v25)
      {
        v26 = v25;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0;
        }

        v88 = v28;

        v29 = [*(a1 + 32) activity];
        v7 = v89;
        v30 = [v89 hmbDescription];
        v31 = v30;
        if (isKindOfClass)
        {
          [v29 markWithFormat:@"Already have an open HMDNetworkRouterFirewallRuleCloudZone for zone %@", v30];

          v32 = objc_autoreleasePoolPush();
          v33 = *(a1 + 40);
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = HMFGetLogIdentifier();
            v36 = [v89 hmbDescription];
            *buf = 138543618;
            v93 = v35;
            v94 = 2112;
            v95 = v36;
            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Already have an open HMDNetworkRouterFirewallRuleCloudZone for zone %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          [v8 setCloudZone:v26];
        }

        else
        {
          v87 = a4;
          [v29 markWithFormat:@"Another HMBCloudZone open for %@ that isn't one of ours: %@", v30, v26];

          v70 = objc_autoreleasePoolPush();
          v71 = *(a1 + 40);
          v72 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v73 = v86 = v70;
            v74 = [v89 hmbDescription];
            *buf = 138543874;
            v93 = v73;
            v94 = 2112;
            v95 = v74;
            v96 = 2112;
            v97 = v26;
            _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@Another HMBCloudZone open for %@ that isn't one of ours: %@", buf, 0x20u);

            v70 = v86;
          }

          objc_autoreleasePoolPop(v70);
          v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          v76 = *(*(a1 + 56) + 8);
          v77 = *(v76 + 40);
          *(v76 + 40) = v75;

          *v87 = 1;
        }

        goto LABEL_29;
      }

      v7 = v89;
    }

    else
    {
      [v13 markWithFormat:@"Saving new cloud zone model for zone %@", v14];

      v44 = objc_autoreleasePoolPush();
      v45 = *(a1 + 40);
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        v48 = [v7 hmbDescription];
        *buf = 138543618;
        v93 = v47;
        v94 = 2112;
        v95 = v48;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Saving new cloud zone model for zone %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      v49 = objc_alloc(MEMORY[0x277D17078]);
      v50 = [v9 modelID];
      v51 = [*(a1 + 48) hmbModelID];
      v12 = [v49 initWithModelID:v50 parentModelID:v51];

      [v12 setZoneID:v9];
      [v12 setNeedsZoneCreation:MEMORY[0x277CBEC28]];
      v52 = [*(a1 + 40) cloudDatabase];
      v53 = [v52 stateZone];
      v91 = v12;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
      v55 = [v53 update:v54];
      v56 = *(*(a1 + 56) + 8);
      v57 = *(v56 + 40);
      *(v56 + 40) = v55;

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v58 = [*(a1 + 32) activity];
        v59 = [v7 hmbDescription];
        [v58 markWithFormat:@"Failed to save new cloud zone model for zone %@: %@", v59, *(*(*(a1 + 56) + 8) + 40)];

        v60 = objc_autoreleasePoolPush();
        v61 = *(a1 + 40);
        v62 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = HMFGetLogIdentifier();
          [v7 hmbDescription];
          v90 = v7;
          v64 = v12;
          v65 = v8;
          v66 = v9;
          v68 = v67 = a4;
          v69 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138543874;
          v93 = v63;
          v94 = 2112;
          v95 = v68;
          v96 = 2112;
          v97 = v69;
          _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to save new cloud zone model for zone %@: %@", buf, 0x20u);

          a4 = v67;
          v9 = v66;
          v8 = v65;
          v12 = v64;
          v7 = v90;
        }

        objc_autoreleasePoolPop(v60);
        *a4 = 1;
        goto LABEL_29;
      }

      v78 = [*(a1 + 40) cloudDatabase];
      v79 = [v78 zoneStateByZoneID];
      [v79 setObject:v12 forKeyedSubscript:v9];
    }

    v80 = [HMDNetworkRouterFirewallRuleCloudZone alloc];
    v81 = [*(a1 + 40) cloudDatabase];
    v82 = [*(a1 + 40) useAnonymousRequests];
    v83 = [v8 recordIDs];
    v84 = [*(a1 + 32) signatureVerificationPublicKeys];
    v85 = [(HMDNetworkRouterFirewallRuleCloudZone *)v80 initWithCloudDatabase:v81 state:v12 useAnonymousRequests:v82 watchedRecordIDs:v83 signatureVerificationPublicKeys:v84];

    [v12 setCloudZone:v85];
    [v8 setCloudZone:v85];

LABEL_29:
    goto LABEL_30;
  }

  v37 = [*(a1 + 32) activity];
  v38 = [v7 hmbDescription];
  [v37 markWithFormat:@"Ignoring zone %@ that has no changes", v38];

  v39 = objc_autoreleasePoolPush();
  v40 = *(a1 + 40);
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    v42 = HMFGetLogIdentifier();
    v43 = [v7 hmbDescription];
    *buf = 138543618;
    v93 = v42;
    v94 = 2112;
    v95 = v43;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring zone %@ that has no changes", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v39);
LABEL_30:
}

@end