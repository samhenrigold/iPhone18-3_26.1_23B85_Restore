@interface HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo
- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo)initWithActivity:(id)activity options:(id)options databaseChangeToken:(id)token promise:(id)promise xpcActivity:(id)xpcActivity database:(id)database useAnonymousRequests:(BOOL)requests recordIDs:(id)self0 lastSynchronizedRecordIDs:(id)self1;
- (void)__cleanupMirroredZones:(id)zones cloudZones:(id)cloudZones result:(id)result error:(id)error;
- (void)finishWithResult:(id)result error:(id)error;
@end

@implementation HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo

- (void)__cleanupMirroredZones:(id)zones cloudZones:(id)cloudZones result:(id)result error:(id)error
{
  v70 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  cloudZonesCopy = cloudZones;
  resultCopy = result;
  errorCopy = error;
  v48 = cloudZonesCopy;
  v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(cloudZonesCopy, "count") + objc_msgSend(zonesCopy, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = zonesCopy;
  v12 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v61;
    v15 = @"Shutting down mirrored zone %@";
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v60 + 1) + 8 * i);
        activity = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
        [activity markWithFormat:v15, v17];

        v19 = objc_autoreleasePoolPush();
        selfCopy = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v22 = v13;
          v24 = v23 = v15;
          *buf = 138543618;
          v66 = v24;
          v67 = 2112;
          v68 = v17;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Shutting down mirrored zone %@", buf, 0x16u);

          v15 = v23;
          v13 = v22;
        }

        objc_autoreleasePoolPop(v19);
        shutdown = [v17 shutdown];
        [v51 addObject:shutdown];
      }

      v13 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v13);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v49 = v48;
  v26 = [v49 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v57;
    v29 = @"Shutting down cloud zone %@";
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v57 != v28)
        {
          objc_enumerationMutation(v49);
        }

        v31 = *(*(&v56 + 1) + 8 * j);
        activity2 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)self activity];
        [activity2 markWithFormat:v29, v31];

        v33 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v37 = v36 = v29;
          *buf = 138543618;
          v66 = v37;
          v67 = 2112;
          v68 = v31;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Shutting down cloud zone %@", buf, 0x16u);

          v29 = v36;
        }

        objc_autoreleasePoolPop(v33);
        shutdown2 = [v31 shutdown];
        [v51 addObject:shutdown2];
      }

      v27 = [v49 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v27);
  }

  v39 = MEMORY[0x277D2C900];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v41 = [v39 combineAllFutures:v51 ignoringErrors:1 scheduler:globalAsyncScheduler];

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo___cleanupMirroredZones_cloudZones_result_error___block_invoke;
  v52[3] = &unk_279735220;
  v52[4] = self;
  v53 = v49;
  v54 = resultCopy;
  v55 = errorCopy;
  v42 = errorCopy;
  v43 = resultCopy;
  v44 = v49;
  v45 = [v41 addSuccessBlock:v52];
}

void __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo___cleanupMirroredZones_cloudZones_result_error___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo___cleanupMirroredZones_cloudZones_result_error___block_invoke_2;
  v8[3] = &unk_27972D188;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7.receiver = *(a1 + 32);
  v7.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo;
  objc_msgSendSuper2(&v7, sel_finishWithResult_error_, v5, v6);
}

void __120__HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo___cleanupMirroredZones_cloudZones_result_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
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
    v8 = [*(a1 + 32) activity];
    v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    [v8 markWithFormat:@"Failed to shut down zone %@: %@", v9, v7];

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) objectAtIndexedSubscript:a3];
      *buf = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to shut down zone %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }
}

- (void)finishWithResult:(id)result error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  zoneInfoMap = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo *)self zoneInfoMap];
  allValues = [zoneInfoMap allValues];

  v11 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        mirroredLocalZone = [v15 mirroredLocalZone];

        if (mirroredLocalZone)
        {
          mirroredLocalZone2 = [v15 mirroredLocalZone];
          [array addObject:mirroredLocalZone2];

          [v15 setMirroredLocalZone:0];
        }

        else
        {
          cloudZone = [v15 cloudZone];

          if (!cloudZone)
          {
            continue;
          }

          cloudZone2 = [v15 cloudZone];
          [array2 addObject:cloudZone2];
        }

        [v15 setCloudZone:0];
      }

      v12 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  if ([array count] || objc_msgSend(array2, "count"))
  {
    v20 = objc_msgSend_copy(array);
    v21 = objc_msgSend_copy(array2);
    v22 = resultCopy;
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo *)self __cleanupMirroredZones:v20 cloudZones:v21 result:resultCopy error:errorCopy];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo;
    v22 = resultCopy;
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v24 finishWithResult:resultCopy error:errorCopy];
  }
}

- (HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo)initWithActivity:(id)activity options:(id)options databaseChangeToken:(id)token promise:(id)promise xpcActivity:(id)xpcActivity database:(id)database useAnonymousRequests:(BOOL)requests recordIDs:(id)self0 lastSynchronizedRecordIDs:(id)self1
{
  v75 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  optionsCopy = options;
  obj = token;
  tokenCopy = token;
  promiseCopy = promise;
  xpcActivityCopy = xpcActivity;
  dsCopy = ds;
  iDsCopy = iDs;
  container = [database container];
  v72.receiver = self;
  v72.super_class = HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorFetchChangesInfo;
  v63 = promiseCopy;
  v25 = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)&v72 initWithActivity:activityCopy options:optionsCopy container:container useAnonymousRequests:requests promise:promiseCopy];

  if (v25)
  {
    v62 = iDsCopy;
    v58 = tokenCopy;
    v59 = optionsCopy;
    v60 = activityCopy;
    if (xpcActivityCopy)
    {
      operationGroup = [(HMDNetworkRouterFirewallRuleManagerBackingStoreFetchHelper *)v25 operationGroup];
      defaultConfiguration = [operationGroup defaultConfiguration];
      [defaultConfiguration setXpcActivity:xpcActivityCopy];
    }

    v56 = v25;
    v57 = xpcActivityCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v55 = dsCopy;
    v29 = dsCopy;
    v30 = [v29 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v69;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v69 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v68 + 1) + 8 * i);
          zoneID = [v34 zoneID];
          v36 = [dictionary objectForKeyedSubscript:zoneID];
          if (!v36)
          {
            v36 = [[HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo alloc] initWithZoneID:zoneID];
            [dictionary setObject:v36 forKeyedSubscript:zoneID];
          }

          recordIDs = [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirrorZoneInfo *)v36 recordIDs];
          [recordIDs addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v31);
    }

    v38 = [v29 mutableCopy];
    [v38 minusSet:iDsCopy];
    v39 = [v38 count];
    if (v39)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v40 = v38;
      v41 = [v40 countByEnumeratingWithState:&v64 objects:v73 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v65;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v65 != v43)
            {
              objc_enumerationMutation(v40);
            }

            zoneID2 = [*(*(&v64 + 1) + 8 * j) zoneID];
            v46 = [dictionary objectForKeyedSubscript:zoneID2];
            [v46 forceRefresh];
          }

          v42 = [v40 countByEnumeratingWithState:&v64 objects:v73 count:16];
        }

        while (v42);
      }

      iDsCopy = v62;
    }

    v47 = objc_msgSend_copy(v29);
    v25 = v56;
    requestedRecordIDs = v56->_requestedRecordIDs;
    v56->_requestedRecordIDs = v47;

    v49 = objc_msgSend_copy(dictionary);
    zoneInfoMap = v56->_zoneInfoMap;
    v56->_zoneInfoMap = v49;

    objc_storeStrong(&v56->_databaseChangeToken, obj);
    objc_storeStrong(&v56->_originalDatabaseChangeToken, obj);
    v51 = [MEMORY[0x277CBEB58] set];
    modifiedRecordIDs = v56->_modifiedRecordIDs;
    v56->_modifiedRecordIDs = v51;

    v56->_zonesHaveChanged = v39 != 0;
    v53 = v56;

    optionsCopy = v59;
    activityCopy = v60;
    xpcActivityCopy = v57;
    tokenCopy = v58;
    dsCopy = v55;
  }

  return v25;
}

@end