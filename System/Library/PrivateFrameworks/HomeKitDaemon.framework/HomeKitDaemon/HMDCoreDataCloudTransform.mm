@interface HMDCoreDataCloudTransform
+ (BOOL)detectExcessiveHistoryPruningInContext:(id)context;
+ (BOOL)transactionIsCloudStoreReset:(id)reset context:(id)context;
+ (Class)exportTransformableClassFromEntity:(id)entity;
+ (Class)importTransformableClassFromEntity:(id)entity;
+ (HMDCoreDataCloudTransform)new;
+ (HMDCoreDataCloudTransform)sharedInstance;
+ (id)exportTransformableEntityFromEntity:(id)entity;
+ (id)localTransformableEntityFromEntity:(id)entity;
+ (id)logCategory;
+ (void)wipeCoreDataStorageDueToPCSIdentityLossAndRelaunchHomeKitDaemon;
- (BOOL)badCDPState;
- (BOOL)cloudTransform:(id)transform isPermittedForHomeWithModelID:(id)d isImport:(BOOL)import;
- (BOOL)runTransformWithError:(id *)error;
- (HMDCoreDataCloudTransform)init;
- (HMDCoreDataCloudTransform)initWithCoreData:(id)data fakeRecordsEnabled:(BOOL)enabled logEventSubmitter:(id)submitter userDefaults:(id)defaults;
- (HMDCoreDataCloudTransform)initWithCoreData:(id)data logEventSubmitter:(id)submitter;
- (HMDCoreDataCloudTransformDelegate)delegate;
- (MKFCloudSyncMetadata)_fetchOrCreateMetadataForManagedObjectContext:(MKFCloudSyncMetadata *)context;
- (_BYTE)_changeSetForHome:(uint64_t)home isImport:(void *)import clientIdentifier:(void *)identifier qualityOfService:(void *)service cache:;
- (__CFString)_homeModelIDPropertyNameForObjectID:(void *)d;
- (id)_managedObjectContext;
- (id)cloudImportInProgressStoreIdentifiers;
- (id)fakeHomeChangeSetModelID;
- (id)managedObjectContext;
- (id)newCloudMirrorExportStatusMonitor;
- (id)pendingChangedStoreIdentifiers;
- (uint64_t)_processChangeSet:(int)set isImport:(void *)import context:;
- (uint64_t)_processExportUpdateForObjectID:(void *)d updatedProperties:(void *)properties additionalUpdates:(void *)updates context:;
- (uint64_t)_processImportUpdateForObjectID:(void *)d updatedProperties:(int)properties transform:(void *)transform additionalUpdates:(void *)updates context:;
- (uint64_t)_saveContextToWorkingStore:(uint64_t)store error:;
- (uint64_t)_shouldProcessChange:(void *)change homeModelID:(int)d isImport:(void *)import context:;
- (void)_delayContextDestruction:(uint64_t)destruction;
- (void)_enumerateCloudChangeListenersForEntity:(void *)entity usingBlock:;
- (void)_processHistoryForStore:(id)store context:(id)context;
- (void)_runTransformOnContext:(void *)context storeIdentifiers:(void *)identifiers completeMergeHomeModelID:(void *)d completion:;
- (void)_runTransformWhilePerformingBlockOnContext:(void *)context storeIdentifiers:(void *)identifiers completeMergeHomeModelID:;
- (void)_saveHomeManagerChangesToWorkingStoreWithContext:(void *)context;
- (void)_updateWriterPropertiesForCloudObjects:(void *)objects timestamp:(void *)timestamp version:(void *)version;
- (void)coreData:(id)data cloudKitExportFinishedForStoreWithIdentifier:(id)identifier duration:(double)duration error:(id)error;
- (void)coreData:(id)data cloudKitExportStartedForStoreWithIdentifier:(id)identifier;
- (void)coreData:(id)data cloudKitImportFinishedForStoreWithIdentifier:(id)identifier duration:(double)duration error:(id)error;
- (void)coreData:(id)data cloudKitImportStartedForStoreWithIdentifier:(id)identifier;
- (void)coreData:(id)data persistentStoreWithIdentifierDidChange:(id)change;
- (void)countResidentsInHomeWithUUID:(id)d completion:(id)completion;
- (void)registerCloudChangeListener:(id)listener forEntities:(id)entities;
- (void)runCompleteMergeTransformForHomeWithModelID:(id)d completion:(id)completion;
- (void)runTransformWithCompletion:(id)completion;
@end

@implementation HMDCoreDataCloudTransform

- (void)countResidentsInHomeWithUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  managedObjectContext = [(HMDCoreDataCloudTransform *)self managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HMDCoreDataCloudTransform_Home__countResidentsInHomeWithUUID_completion___block_invoke;
  v12[3] = &unk_278689AB8;
  v13 = dCopy;
  v14 = managedObjectContext;
  selfCopy = self;
  v16 = completionCopy;
  v9 = completionCopy;
  v10 = managedObjectContext;
  v11 = dCopy;
  [v10 performBlock:v12];
}

void __75__HMDCoreDataCloudTransform_Home__countResidentsInHomeWithUUID_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = [(MKFCKModel *)MKFCKHome modelWithModelID:v2 context:v3 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = *(a1 + 56);
    v7 = [v4 residents];
    (*(v6 + 16))(v6, [v7 count], 0);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 48);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138544130;
      v15 = v11;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2112;
      v19 = v12;
      v20 = 2114;
      v21 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not find the home for UUID: %{mask.hash}@. Error: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 56) + 16))();
  }
}

- (HMDCoreDataCloudTransformDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_processHistoryForStore:(id)store context:(id)context
{
  v182[2] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  contextCopy = context;
  identifier = [storeCopy identifier];
  hmd_cloudPrivateStoreIdentifier = [contextCopy hmd_cloudPrivateStoreIdentifier];
  v7 = [identifier isEqualToString:hmd_cloudPrivateStoreIdentifier];

  v145 = v7;
  if (v7)
  {
    v141 = 0;
    v150 = 1;
    v8 = @"cloud private";
  }

  else
  {
    identifier2 = [storeCopy identifier];
    hmd_cloudSharedStoreIdentifier = [contextCopy hmd_cloudSharedStoreIdentifier];
    v11 = [identifier2 isEqualToString:hmd_cloudSharedStoreIdentifier];

    if (v11)
    {
      v141 = 1;
      v142 = @"cloud shared";
      v150 = 1;
      goto LABEL_7;
    }

    v141 = 0;
    v150 = 0;
    v8 = @"working";
  }

  v142 = v8;
LABEL_7:
  context = objc_autoreleasePoolPush();
  if (self)
  {
    historyTokensByStoreIdentifier = self->_historyTokensByStoreIdentifier;
  }

  else
  {
    historyTokensByStoreIdentifier = 0;
  }

  v13 = historyTokensByStoreIdentifier;
  identifier3 = [storeCopy identifier];
  v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:identifier3];

  v16 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v15];
  [v16 setFetchBatchSize:10];
  v168 = storeCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v168 count:1];
  [v16 setAffectedStores:v17];

  v164 = 0;
  v18 = [contextCopy executeRequest:v16 error:&v164];
  v146 = v164;
  if (v18)
  {
    result = [v18 result];
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [result count];
      *buf = 138543874;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      *&buf[22] = 2114;
      v170 = v142;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Fetched %zd transaction(s) for %{public}@ store", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    lastObject = [result lastObject];
    token = [lastObject token];

    v26 = result;
    v27 = contextCopy;
    v28 = v27;
    if (self)
    {
      v29 = v27;
      v30 = MEMORY[0x277D0F850];
      v31 = v26;
      v32 = objc_alloc_init(v30);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      if (v150)
      {
        *&buf[16] = __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke;
        v170 = &unk_2786829F8;
        *&v171 = selfCopy;
        v33 = v29;
        *(&v171 + 1) = v33;
        v172 = v32;
      }

      else
      {
        *&buf[16] = __71__HMDCoreDataCloudTransform__changeSetsFromExportTransactions_context___block_invoke;
        v170 = &unk_2786829F8;
        *&v171 = selfCopy;
        *(&v171 + 1) = v32;
        v33 = v29;
        v172 = v33;
      }

      v34 = v32;
      [v31 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];

      allValues = [(HMDCoreDataCloudTransform *)v34 allValues];
    }

    else
    {
      allValues = 0;
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v142;
      *&buf[22] = 2114;
      v170 = v15;
      LOWORD(v171) = 2114;
      *(&v171 + 2) = v146;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch history for %{public}@ store with token %{public}@: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v35);
    allValues = 0;
    token = 0;
  }

  objc_autoreleasePoolPop(context);
  if (v18)
  {
    v160 = 0;
    v161 = &v160;
    v162 = 0x2020000000;
    v163 = 0;
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = __61__HMDCoreDataCloudTransform__processHistoryForStore_context___block_invoke;
    v156[3] = &unk_278678F38;
    v156[4] = self;
    v159 = v150;
    v39 = contextCopy;
    v157 = v39;
    v158 = &v160;
    [allValues hmf_enumerateWithAutoreleasePoolUsingBlock:v156];
    if ([v39 hmd_homeManagerApplicationDataChanged])
    {
      [v39 setHmd_homeManagerApplicationDataChanged:0];
      v40 = v39;
      v41 = v40;
      if (self)
      {
        v42 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          *v178 = 138543362;
          *&v178[4] = v45;
          _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Running check to see if home manager application data has changed", v178, 0xCu);
        }

        objc_autoreleasePoolPop(v42);
        v46 = +[MKFCKHome fetchRequest];
        [v46 setFetchBatchSize:10];
        v182[0] = @"primaryHomeCounter";
        v182[1] = @"homeManagerApplicationData";
        v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:2];
        v48 = [(MKFCKModel *)MKFCKHome appendDefaultPreloadedPropertiesTo:v47];
        [v46 setPropertiesToFetch:v48];

        v167 = 0;
        v49 = [v41 executeFetchRequest:v46 error:&v167];
        v50 = v167;
        if (!v49)
        {
          v59 = objc_autoreleasePoolPush();
          v60 = selfCopy3;
          v61 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = HMFGetLogIdentifier();
            *v178 = 138543618;
            *&v178[4] = v62;
            *&v178[12] = 2114;
            *&v178[14] = v50;
            _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch homes: %{public}@", v178, 0x16u);
          }

          objc_autoreleasePoolPop(v59);
          v63 = 0;
          goto LABEL_41;
        }

        *v178 = 0;
        *&v178[8] = v178;
        *&v178[16] = 0x3032000000;
        v179 = __Block_byref_object_copy__121531;
        v180 = __Block_byref_object_dispose__121532;
        v181 = 0;
        v166[0] = MEMORY[0x277D85DD0];
        v166[1] = 3221225472;
        v166[2] = __74__HMDCoreDataCloudTransform__updateHomeManagerApplicationDataWithContext___block_invoke;
        v166[3] = &unk_278679278;
        v166[4] = v178;
        [v49 hmf_enumerateWithAutoreleasePoolUsingBlock:v166];
        v165 = v50;
        v51 = [_MKFHomeManager fetchWithContext:v41 error:&v165];
        v147 = v165;

        if (v51)
        {
          appDataDictionary = [v51 appDataDictionary];
          homeManagerApplicationData = [*(*&v178[8] + 40) homeManagerApplicationData];
          v54 = isEqualDeepCompare(appDataDictionary, homeManagerApplicationData);

          if (!v54)
          {
            homeManagerApplicationData2 = [*(*&v178[8] + 40) homeManagerApplicationData];
            v67 = objc_msgSend_copy(homeManagerApplicationData2);

            hmd_homeManagerContext = [v41 hmd_homeManagerContext];

            v69 = [objc_opt_class() _homeManagerContextFromContext:v41];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __74__HMDCoreDataCloudTransform__updateHomeManagerApplicationDataWithContext___block_invoke_245;
            v170 = &unk_278689D20;
            v173 = v178;
            v70 = v67;
            *&v171 = v70;
            v71 = v69;
            *(&v171 + 1) = v71;
            v172 = selfCopy3;
            [v71 performBlockAndWait:buf];
            if (!hmd_homeManagerContext)
            {
              [v41 setHmd_homeManagerContext:0];
            }

            v63 = 1;
            goto LABEL_40;
          }

          v55 = objc_autoreleasePoolPush();
          v56 = selfCopy3;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v58 = HMFGetLogIdentifier();
            *v174 = 138543362;
            v175 = v58;
            _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_DEBUG, "%{public}@Home manager application data is unchanged", v174, 0xCu);
          }
        }

        else
        {
          v55 = objc_autoreleasePoolPush();
          v64 = selfCopy3;
          v57 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v65 = HMFGetLogIdentifier();
            *v174 = 138543618;
            v175 = v65;
            v176 = 2114;
            v177 = v147;
            _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home manager: %{public}@", v174, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v55);
        v63 = 0;
LABEL_40:

        _Block_object_dispose(v178, 8);
        v50 = v147;
LABEL_41:

        v72 = v161;
        if (v63)
        {
          *(v161 + 24) = 1;
        }

LABEL_47:
        if ((v145 | *(v72 + 24)))
        {
          v73 = [(HMDCoreDataCloudTransform *)self _fetchOrCreateMetadataForManagedObjectContext:v39];
          v74 = v73;
          if (v145)
          {
            historyTokenForCloudStore = [v73 historyTokenForCloudStore];
            v76 = (historyTokenForCloudStore | token) == 0;

            if (v76)
            {
              v148 = storeCopy;
              v77 = v39;
              contexta = v77;
              if (self)
              {
                [v77 hmd_assertIsExecuting];
                v78 = objc_autoreleasePoolPush();
                selfCopy4 = self;
                v80 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                {
                  v81 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  *&buf[4] = v81;
                  _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_DEBUG, "%{public}@Fetching NSPersistentCloudKitContainerEvents for first import check", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v78);
                fetchRequestForEvents = [MEMORY[0x277CBE488] fetchRequestForEvents];
                v83 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(succeeded == YES) AND (type == %ld) AND (endDate != nil)", 1];
                [fetchRequestForEvents setPredicate:v83];

                v84 = [MEMORY[0x277CBE488] fetchEventsMatchingFetchRequest:fetchRequestForEvents];
                [v84 setResultType:1];
                *v178 = v148;
                v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:1];
                [v84 setAffectedStores:v85];

                v166[0] = 0;
                v86 = [contexta executeRequest:v84 error:v166];
                v140 = v166[0];
                if (v86)
                {
                  v139 = v86;
                  result2 = [v139 result];
                  if ([result2 count] && (objc_msgSend(result2, "firstObject"), v88 = objc_claimAutoreleasedReturnValue(), v89 = objc_msgSend(v88, "unsignedIntegerValue"), v88, v89))
                  {
                    v152 = objc_autoreleasePoolPush();
                    v90 = selfCopy4;
                    v91 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                    {
                      v92 = HMFGetLogIdentifier();
                      v93 = "s";
                      *buf = 138543874;
                      *&buf[4] = v92;
                      if (v89 == 1)
                      {
                        v93 = "";
                      }

                      *&buf[12] = 2048;
                      *&buf[14] = v89;
                      *&buf[22] = 2080;
                      v170 = v93;
                      _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_INFO, "%{public}@Found %ld import NSPersistentCloudKitContainerEvent%s, using current history token for store", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v152);
                    v94 = contexta;
                    v95 = v148;
                    [v94 hmd_assertIsExecuting];
                    persistentStoreCoordinator = [v94 persistentStoreCoordinator];

                    *buf = v95;
                    v97 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];

                    token = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:v97];
                  }

                  else
                  {
                    v131 = objc_autoreleasePoolPush();
                    v132 = selfCopy4;
                    v133 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
                    {
                      v134 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      *&buf[4] = v134;
                      _os_log_impl(&dword_229538000, v133, OS_LOG_TYPE_INFO, "%{public}@Found no import NSPersistentCloudKitContainerEvents", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v131);
                    token = 0;
                  }
                }

                else
                {
                  v135 = objc_autoreleasePoolPush();
                  v136 = selfCopy4;
                  v137 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                  {
                    v138 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    *&buf[4] = v138;
                    *&buf[12] = 2114;
                    *&buf[14] = v140;
                    _os_log_impl(&dword_229538000, v137, OS_LOG_TYPE_ERROR, "%{public}@NSPersistentCloudKitContainerEventRequest failed: %{public}@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v135);
                  token = 0;
                }
              }

              else
              {
                token = 0;
              }

              if (token)
              {
                *(v161 + 24) = 1;
              }

              else
              {
                token = 0;
              }
            }
          }
        }

        else
        {
          v74 = 0;
        }

        os_unfair_lock_lock_with_options();
        v98 = v150;
        if (!self)
        {
          v98 = 1;
        }

        if ((v98 & 1) == 0 && [(NSMutableSet *)self->_cloudImportInProgressStoreIdentifiers count])
        {
          v99 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v101 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v102 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v102;
            _os_log_impl(&dword_229538000, v101, OS_LOG_TYPE_DEFAULT, "%{public}@Cloud import is in progress, move the current export to pending and abort", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v99);
          v103 = selfCopy5->_pendingChangedStoreIdentifiers;
          hmd_workingStoreIdentifier = [v39 hmd_workingStoreIdentifier];
          [(NSMutableSet *)v103 addObject:hmd_workingStoreIdentifier];
          goto LABEL_96;
        }

        if (*(v161 + 24) == 1)
        {
          if (v145)
          {
            historyTokenForCloudStore2 = [v74 historyTokenForCloudStore];
            v106 = HMFEqualObjects();

            if ((v106 & 1) == 0)
            {
              [v74 setHistoryTokenForCloudStore:token];
              goto LABEL_78;
            }
          }

          if (v141)
          {
            historyTokenForCloudSharedStore = [v74 historyTokenForCloudSharedStore];
            v108 = HMFEqualObjects();

            if ((v108 & 1) == 0)
            {
              [v74 setHistoryTokenForCloudSharedStore:token];
              goto LABEL_78;
            }
          }

          historyTokenForWorkingStore = [v74 historyTokenForWorkingStore];
          v110 = HMFEqualObjects();

          if ((v110 & 1) == 0)
          {
            [v74 setHistoryTokenForWorkingStore:token];
LABEL_78:
            v111 = v39;
            if (self)
            {
              v112 = @"export";
              if (v150)
              {
                v112 = @"import";
              }

              v113 = v112;
              [v111 setMergePolicy:*MEMORY[0x277CBE160]];
              v114 = objc_autoreleasePoolPush();
              selfCopy6 = self;
              v116 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
              {
                v117 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v117;
                *&buf[12] = 2114;
                *&buf[14] = v113;
                _os_log_impl(&dword_229538000, v116, OS_LOG_TYPE_DEBUG, "%{public}@Saving history tokens after processing %{public}@ changes", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v114);
              *v178 = 0;
              v118 = [v111 hmd_saveWithTransactionAuthor:4 error:v178];
              v119 = *v178;
              v120 = objc_autoreleasePoolPush();
              v121 = selfCopy6;
              v122 = HMFGetOSLogHandle();
              v123 = v122;
              if (v118)
              {
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
                {
                  v124 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v124;
                  *&buf[12] = 2114;
                  *&buf[14] = v113;
                  _os_log_impl(&dword_229538000, v123, OS_LOG_TYPE_DEBUG, "%{public}@Finished saving history tokens after processing %{public}@ changes", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
              {
                v125 = HMFGetLogIdentifier();
                *buf = 138543874;
                *&buf[4] = v125;
                *&buf[12] = 2114;
                *&buf[14] = v113;
                *&buf[22] = 2114;
                v170 = v119;
                _os_log_impl(&dword_229538000, v123, OS_LOG_TYPE_ERROR, "%{public}@Failed to save change tokens after processing %{public}@ changes: %{public}@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v120);
            }
          }
        }

        if (!token)
        {
LABEL_97:
          os_unfair_lock_unlock(&self->_lock.lock);

          _Block_object_dispose(&v160, 8);
          goto LABEL_98;
        }

        v126 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v128 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
        {
          v129 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v129;
          *&buf[12] = 2114;
          *&buf[14] = v142;
          *&buf[22] = 2114;
          v170 = token;
          _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_DEBUG, "%{public}@Advancing in-memory history token for %{public}@ store: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v126);
        selfCopy8 = self;
        if (self)
        {
          selfCopy8 = selfCopy7->_historyTokensByStoreIdentifier;
        }

        v103 = selfCopy8;
        hmd_workingStoreIdentifier = [storeCopy identifier];
        [(NSMutableSet *)v103 setObject:token forKeyedSubscript:hmd_workingStoreIdentifier];
LABEL_96:

        goto LABEL_97;
      }
    }

    v72 = v161;
    goto LABEL_47;
  }

LABEL_98:
}

uint64_t __61__HMDCoreDataCloudTransform__processHistoryForStore_context___block_invoke(uint64_t a1, void *a2)
{
  result = [(HMDCoreDataCloudTransform *)*(a1 + 32) _processChangeSet:a2 isImport:*(a1 + 56) context:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (MKFCloudSyncMetadata)_fetchOrCreateMetadataForManagedObjectContext:(MKFCloudSyncMetadata *)context
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!context)
  {
    goto LABEL_12;
  }

  v5 = v3;
  v6 = +[MKFCloudSyncMetadata fetchRequest];
  [v6 setReturnsObjectsAsFaults:0];
  v18 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    if ([v7 count] < 2)
    {
      goto LABEL_10;
    }

    v9 = objc_autoreleasePoolPush();
    contextCopy = context;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v7;
      v13 = "%{public}@More than one metadata object (using first): %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_FAULT;
LABEL_8:
      _os_log_impl(&dword_229538000, v14, v15, v13, buf, 0x16u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    contextCopy2 = context;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v8;
      v13 = "%{public}@Failed to fetch metadata objects: %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_10:
  context = [v7 firstObject];

  if (!context)
  {
    context = [[MKFCloudSyncMetadata alloc] initWithContext:v5];
  }

LABEL_12:

  return context;
}

- (id)pendingChangedStoreIdentifiers
{
  if (self)
  {
    self = self[7];
    v1 = vars8;
  }

  return self;
}

void __74__HMDCoreDataCloudTransform__updateHomeManagerApplicationDataWithContext___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = v4;
  if (*(v5 + 40))
  {
    v6 = [v4 primaryHomeCounter];
    if (v6 <= [*(*(*(a1 + 32) + 8) + 40) primaryHomeCounter])
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

void __74__HMDCoreDataCloudTransform__updateHomeManagerApplicationDataWithContext___block_invoke_245(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(*(a1 + 56) + 8) + 40) _importHomeManagerNewHome:0 newPrimaryHome:0 newApplicationData:*(a1 + 32) context:*(a1 + 40)];
  [(HMDCoreDataCloudTransform *)*(a1 + 48) _saveHomeManagerChangesToWorkingStoreWithContext:?];
  [*(a1 + 40) reset];

  objc_autoreleasePoolPop(v2);
}

- (void)_saveHomeManagerChangesToWorkingStoreWithContext:(void *)context
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (context)
  {
    v15 = 0;
    v4 = [(HMDCoreDataCloudTransform *)context _saveContextToWorkingStore:v3 error:&v15];
    v5 = v15;
    v6 = objc_autoreleasePoolPush();
    contextCopy = context;
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (v4)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v17 = v10;
        v11 = "%{public}@Saved home manager changes";
        v12 = v9;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 12;
LABEL_7:
        _os_log_impl(&dword_229538000, v12, v13, v11, buf, v14);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v5;
      v11 = "%{public}@Failed to save home manager changes: %{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (uint64_t)_saveContextToWorkingStore:(uint64_t)store error:
{
  v4 = *(self + 32);
  v5 = a2;
  [v5 setMergePolicy:v4];
  v6 = [v5 hmd_saveWithTransactionAuthor:4 error:store];

  return v6;
}

- (uint64_t)_processChangeSet:(int)set isImport:(void *)import context:
{
  v250 = *MEMORY[0x277D85DE8];
  v7 = a2;
  importCopy = import;
  v193 = v7;
  if (self)
  {
    v8 = @"export";
    setCopy = set;
    if (set)
    {
      v8 = @"import";
    }

    v189 = v8;
    if (v7)
    {
      LOBYTE(v7) = [v7[3] count] || objc_msgSend(v7[2], "count") || objc_msgSend(v7[1], "count") != 0;
    }

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        if (v193)
        {
          v13 = v193[6];
          v14 = v13;
          v15 = v193[1];
          v16 = [v15 count];
          v17 = v193[2];
          v18 = [v17 count];
          v19 = v193[3];
        }

        else
        {
          v16 = [0 count];
          v18 = [0 count];
          v19 = 0;
          v17 = 0;
          v13 = 0;
          v15 = 0;
          v14 = 0;
        }

        *buf = 138544898;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v189;
        *&buf[22] = 2160;
        v230 = 1752392040;
        *v231 = 2112;
        *&v231[2] = v13;
        *&v231[10] = 2048;
        *&v231[12] = v16;
        *&v231[20] = 2048;
        *&v231[22] = v18;
        *&v231[30] = 2048;
        v232 = [v19 count];
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Processing %{public}@ changes for home %{mask.hash}@: %zd insert(s), %zd update(s), %zd delete(s)", buf, 0x48u);
      }

      objc_autoreleasePoolPop(v9);
      [importCopy setHmd_currentChangeSet:v193];
      if (setCopy)
      {
        v20 = v193;
        v21 = importCopy;
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2114;
          *&buf[14] = v20;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Processing import changes: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v225 = 0;
        v226 = &v225;
        v227 = 0x2020000000;
        v228 = 0;
        inserts = [(HMDCoreDataCloudTransformChangeSet *)v20 inserts];
        v219 = MEMORY[0x277D85DD0];
        v220 = 3221225472;
        v221 = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke;
        v222 = &unk_278679020;
        v27 = v21;
        v223 = v27;
        v224 = &v225;
        [inserts hmf_enumerateWithAutoreleasePoolUsingBlock:&v219];

        updates = [(HMDCoreDataCloudTransformChangeSet *)v20 updates];
        *v246 = MEMORY[0x277D85DD0];
        *&v246[8] = 3221225472;
        *&v246[16] = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_2;
        v247 = &unk_278679048;
        v29 = v27;
        v248 = v29;
        v249 = &v225;
        [updates enumerateKeysAndObjectsUsingBlock:v246];

        [v29 processPendingChanges];
        if (*(v226 + 24) == 1)
        {
          v30 = [[HMDLogEventCoreDataSignificantEvent alloc] initWithReason:4];
          [(HMDLogEventCoreDataSignificantEvent *)v30 setContext:@"DuplicateModelID"];
          v31 = v23[10];
          [v31 submitLogEvent:v30];
        }

        v32 = v193;
        if (v193)
        {
          v33 = *(v20 + 32);
        }

        else
        {
          v33 = 0;
        }

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v35 = v33 & 1;
        v215 = 0;
        v216 = &v215;
        v217 = 0x2020000000;
        v218 = 1;
        if (v193)
        {
          v32 = v20[3];
        }

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_3;
        v230 = &unk_278679070;
        *&v231[24] = &v215;
        *v231 = v23;
        LOBYTE(v232) = v35;
        v36 = dictionary;
        *&v231[8] = v36;
        v185 = v29;
        *&v231[16] = v185;
        [v32 enumerateKeysAndObjectsUsingBlock:buf];

        if (v216[3])
        {
          inserts2 = [(HMDCoreDataCloudTransformChangeSet *)v20 inserts];
          v206 = MEMORY[0x277D85DD0];
          v207 = 3221225472;
          v208 = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_4;
          v209 = &unk_278679098;
          v213 = &v215;
          v210 = v23;
          v214 = v35;
          v36 = v36;
          v211 = v36;
          v38 = v185;
          v212 = v38;
          [inserts2 hmf_enumerateWithAutoreleasePoolUsingBlock:&v206];

          if (v216[3])
          {
            updates2 = [(HMDCoreDataCloudTransformChangeSet *)v20 updates];
            v237 = MEMORY[0x277D85DD0];
            v238 = 3221225472;
            v239 = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_5;
            v240 = &unk_2786790C0;
            v244 = &v215;
            v241 = v23;
            v245 = v35;
            v36 = v36;
            v242 = v36;
            v40 = v38;
            v243 = v40;
            [updates2 enumerateKeysAndObjectsUsingBlock:&v237];

            if (v216[3])
            {
              v184 = 138543618;
              while ([v36 count])
              {
                v41 = objc_autoreleasePoolPush();
                v42 = v23;
                v43 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  v44 = HMFGetLogIdentifier();
                  *v233 = v184;
                  v234 = v44;
                  v235 = 2114;
                  v236 = v20;
                  _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Processing import additional updates: %{public}@", v233, 0x16u);
                }

                objc_autoreleasePoolPop(v41);
                v45 = v36;
                dictionary2 = [MEMORY[0x277CBEB38] dictionary];

                v197 = MEMORY[0x277D85DD0];
                v198 = 3221225472;
                v199 = __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_216;
                v200 = &unk_2786790E8;
                v204 = &v215;
                v201 = v42;
                v205 = v35;
                v36 = dictionary2;
                v202 = v36;
                v203 = v40;
                [v45 enumerateKeysAndObjectsUsingBlock:&v197];
                LOBYTE(dictionary2) = v216[3] == 0;

                if (dictionary2)
                {
                  goto LABEL_30;
                }
              }

              v47 = v216[3];
            }

            else
            {
LABEL_30:
              v47 = 0;
            }
          }

          else
          {
            v47 = 0;
          }
        }

        else
        {
          v47 = 0;
        }

        _Block_object_dispose(&v215, 8);
        _Block_object_dispose(&v225, 8);
      }

      else
      {
        v51 = v193;
        v52 = importCopy;
        if (v193 && *(v51 + 32) == 1)
        {
          v53 = objc_autoreleasePoolPush();
          v54 = selfCopy;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v56;
            *&buf[12] = 2114;
            *&buf[14] = v51;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Processing export changes: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v53);
          dictionary3 = [MEMORY[0x277CBEB38] dictionary];
          v219 = 0;
          v220 = &v219;
          v221 = 0x2020000000;
          v222 = 1;
          v58 = v51[3];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke;
          v230 = &unk_278679160;
          *&v231[24] = &v219;
          *v231 = v54;
          v59 = dictionary3;
          *&v231[8] = v59;
          v60 = v52;
          *&v231[16] = v60;
          [v58 enumerateKeysAndObjectsUsingBlock:buf];

          if (*(v220 + 24))
          {
            v61 = v51[1];
            v206 = MEMORY[0x277D85DD0];
            v207 = 3221225472;
            v208 = __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_2;
            v209 = &unk_278679188;
            v213 = &v219;
            v210 = v54;
            v59 = v59;
            v211 = v59;
            v62 = v60;
            v212 = v62;
            [v61 hmf_enumerateWithAutoreleasePoolUsingBlock:&v206];

            if (*(v220 + 24))
            {
              v63 = v51[2];
              v237 = MEMORY[0x277D85DD0];
              v238 = 3221225472;
              v239 = __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_3;
              v240 = &unk_2786791B0;
              v244 = &v219;
              v241 = v54;
              v59 = v59;
              v242 = v59;
              v64 = v62;
              v243 = v64;
              [v63 enumerateKeysAndObjectsUsingBlock:&v237];

              if (*(v220 + 24))
              {
                while ([v59 count])
                {
                  v65 = objc_autoreleasePoolPush();
                  v66 = v54;
                  v67 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                  {
                    v68 = v52;
                    v69 = HMFGetLogIdentifier();
                    allKeys = [v59 allKeys];
                    *v246 = 138543618;
                    *&v246[4] = v69;
                    *&v246[12] = 2114;
                    *&v246[14] = allKeys;
                    _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Processing export additional updates: %{public}@", v246, 0x16u);

                    v52 = v68;
                  }

                  objc_autoreleasePoolPop(v65);
                  v71 = v59;
                  dictionary4 = [MEMORY[0x277CBEB38] dictionary];

                  v197 = MEMORY[0x277D85DD0];
                  v198 = 3221225472;
                  v199 = __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_223;
                  v200 = &unk_2786791D8;
                  v204 = &v219;
                  v201 = v66;
                  v59 = dictionary4;
                  v202 = v59;
                  v203 = v64;
                  [v71 enumerateKeysAndObjectsUsingBlock:&v197];
                  v73 = *(v220 + 24) == 0;

                  if (v73)
                  {
                    goto LABEL_47;
                  }
                }

                v47 = *(v220 + 24);
              }

              else
              {
LABEL_47:
                v47 = 0;
              }
            }

            else
            {
              v47 = 0;
            }
          }

          else
          {
            v47 = 0;
          }

          _Block_object_dispose(&v219, 8);
        }

        else
        {
          v47 = 1;
        }
      }

      [importCopy setHmd_currentChangeSet:0];
      if (!v47)
      {
        v74 = objc_autoreleasePoolPush();
        v75 = selfCopy;
        v76 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          v77 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v77;
          *&buf[12] = 2114;
          *&buf[14] = v189;
          *&buf[22] = 2114;
          v230 = v193;
          _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@Rolling back managed objects after processing %{public}@ changes: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v74);
        [importCopy rollback];
      }

      v78 = objc_autoreleasePoolPush();
      v79 = selfCopy;
      v80 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = HMFGetLogIdentifier();
        v82 = v81;
        if (v193)
        {
          v83 = v193[6];
        }

        else
        {
          v83 = 0;
        }

        *buf = 138544130;
        *&buf[4] = v81;
        *&buf[12] = 2114;
        *&buf[14] = v189;
        *&buf[22] = 2160;
        v230 = 1752392040;
        *v231 = 2112;
        *&v231[2] = v83;
        _os_log_impl(&dword_229538000, v80, OS_LOG_TYPE_INFO, "%{public}@Finished processing %{public}@ changes for home %{mask.hash}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v78);
      if ([importCopy hasChanges])
      {
        v84 = v193;
        if (v193 && (v85 = v193[6]) != 0)
        {
          v86 = HMDWorkingContextNameForHomeUUID(v85);
          [importCopy setName:v86];

          v191 = 0;
          v84 = v193;
        }

        else
        {
          v191 = 1;
        }

        if (setCopy)
        {
          v93 = v84;
          v94 = importCopy;
          v206 = 0;
          v95 = [(HMDCoreDataCloudTransform *)v79 _saveContextToWorkingStore:v94 error:&v206];
          v96 = v206;
          v97 = objc_autoreleasePoolPush();
          v98 = v79;
          v99 = HMFGetOSLogHandle();
          v100 = v99;
          if (v95)
          {
            if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
            {
              v101 = HMFGetLogIdentifier();
              v102 = v101;
              if (v193)
              {
                v103 = v93[6];
              }

              else
              {
                v103 = 0;
              }

              *buf = 138543874;
              *&buf[4] = v101;
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2112;
              v230 = v103;
              _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_INFO, "%{public}@Saved after processing import changes for home %{mask.hash}@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v131 = HMFGetLogIdentifier();
            v132 = v131;
            if (v193)
            {
              v133 = v93[6];
            }

            else
            {
              v133 = 0;
            }

            *buf = 138544130;
            *&buf[4] = v131;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v230 = v133;
            *v231 = 2114;
            *&v231[2] = v96;
            _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_ERROR, "%{public}@Failed to save after processing import changes for home %{mask.hash}@: %{public}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v97);
          hmd_homeManagerContext = [v94 hmd_homeManagerContext];
          if (hmd_homeManagerContext)
          {
            [v94 setHmd_homeManagerContext:0];
            v194[0] = MEMORY[0x277D85DD0];
            v194[1] = 3221225472;
            v194[2] = __64__HMDCoreDataCloudTransform__processChangeSet_isImport_context___block_invoke;
            v194[3] = &unk_278688BD0;
            v196 = v95;
            v194[4] = v98;
            v195 = hmd_homeManagerContext;
            [v195 performBlockAndWait:v194];
          }
        }

        else
        {
          v104 = v84;
          v105 = importCopy;
          v106 = objc_autoreleasePoolPush();
          v107 = v79;
          v108 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            v109 = HMFGetLogIdentifier();
            if (v193)
            {
              v110 = v104[6];
              v111 = v104[8];
              v112 = v110;
            }

            else
            {
              v110 = 0;
              v112 = 0;
              v111 = 0;
            }

            *buf = 138544130;
            *&buf[4] = v109;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v230 = v110;
            *v231 = 2114;
            *&v231[2] = v111;
            _os_log_impl(&dword_229538000, v108, OS_LOG_TYPE_DEBUG, "%{public}@Saving to cloud store after processing export changes for home %{mask.hash}@ on behalf of client identifier: %{public}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v106);
          updatedObjects = [v105 updatedObjects];
          insertedObjects = [v105 insertedObjects];
          deletedObjects = [v105 deletedObjects];
          transactionAuthor = [v105 transactionAuthor];
          v188 = [HMDCoreDataCloudStoreTransactionLogEvent eventForUpdates:updatedObjects inserts:insertedObjects deletes:deletedObjects transactionAuthor:transactionAuthor];

          if (v188)
          {
            [v107[10] submitLogEvent:v188];
          }

          v117 = v105;
          insertedObjects2 = [v117 insertedObjects];
          updatedObjects2 = [v117 updatedObjects];

          if ([insertedObjects2 count] || objc_msgSend(updatedObjects2, "count"))
          {
            v120 = [MEMORY[0x277CBEAA8] now];
            v121 = MKFCKModelCurrentWriterVersionString();
            [HMDCoreDataCloudTransform _updateWriterPropertiesForCloudObjects:insertedObjects2 timestamp:v120 version:v121];
            [HMDCoreDataCloudTransform _updateWriterPropertiesForCloudObjects:updatedObjects2 timestamp:v120 version:v121];
          }

          v122 = v104;
          v123 = v117;
          v124 = v123;
          if (v193 && v122[7] > 24)
          {
            v135 = v123;
            v136 = +[MKFCKAppleMediaAccessory entity];
            v237 = v136;
            v137 = +[MKFCKHome entity];
            v238 = v137;
            v138 = +[MKFCKUser entity];
            v239 = v138;
            v139 = [MEMORY[0x277CBEA60] arrayWithObjects:&v237 count:3];

            v140 = MEMORY[0x277CBEB58];
            insertedObjects3 = [v135 insertedObjects];
            v142 = [v140 setWithSet:insertedObjects3];

            updatedObjects3 = [v135 updatedObjects];
            [v142 unionSet:updatedObjects3];

            deletedObjects2 = [v135 deletedObjects];
            [v142 unionSet:deletedObjects2];

            v206 = 0;
            v207 = &v206;
            v208 = 0x3032000000;
            v209 = __Block_byref_object_copy__121531;
            v210 = __Block_byref_object_dispose__121532;
            v211 = 0;
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __75__HMDCoreDataCloudTransform__fetchRequestForCriticalObjectExportInContext___block_invoke;
            v230 = &unk_278678F88;
            v145 = v139;
            *v231 = v145;
            *&v231[8] = v107;
            *&v231[16] = &v206;
            [v142 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
            v146 = *(v207 + 40);

            _Block_object_dispose(&v206, 8);
            v186 = v146 != 0;
            if (v146)
            {
              v147 = v122[8];
              if (v147)
              {
                v148 = v147;
                v149 = [@"HomeKitCloudExportVoucher/" stringByAppendingString:v148];
              }

              else
              {
                v149 = @"HomeKitCloudExportVoucher/";
              }

              v184 = [HMDCoreData userInitiatedVoucherWithLabel:v149 forEventsOfType:2 affectingObjectsMatching:v146];
              v154 = objc_autoreleasePoolPush();
              v155 = v107;
              v156 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
              {
                v157 = HMFGetLogIdentifier();
                v158 = v122[8];
                *buf = 138543618;
                *&buf[4] = v157;
                *&buf[12] = 2114;
                *&buf[14] = v158;
                _os_log_impl(&dword_229538000, v156, OS_LOG_TYPE_DEFAULT, "%{public}@Applying export voucher on behalf of client identifier: %{public}@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v154);
              coreData = [v155 coreData];
              container = [coreData container];

              coreData2 = [v155 coreData];
              cloudPrivateStore = [coreData2 cloudPrivateStore];
              *buf = cloudPrivateStore;
              v163 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
              [container applyActivityVoucher:v184 toStores:v163];
            }

            else
            {
              v150 = objc_autoreleasePoolPush();
              v151 = v107;
              v152 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
              {
                v153 = HMFGetLogIdentifier();
                *buf = 138543362;
                *&buf[4] = v153;
                _os_log_impl(&dword_229538000, v152, OS_LOG_TYPE_INFO, "%{public}@No export voucher necessary since no critical object was detected", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v150);
            }
          }

          else
          {
            v125 = objc_autoreleasePoolPush();
            v126 = v107;
            v127 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
            {
              v128 = HMFGetLogIdentifier();
              v129 = HMFQualityOfServiceToString();
              if (v193)
              {
                v130 = v122[8];
              }

              else
              {
                v130 = 0;
              }

              *buf = 138543874;
              *&buf[4] = v128;
              *&buf[12] = 2112;
              *&buf[14] = v129;
              *&buf[22] = 2112;
              v230 = v130;
              _os_log_impl(&dword_229538000, v127, OS_LOG_TYPE_DEBUG, "%{public}@No export voucher necessary for change set with QoS %@ for clientIdentifier: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v125);
            v186 = 0;
          }

          [v124 setMergePolicy:v107[4]];
          if (v193)
          {
            v164 = v122[8];
          }

          else
          {
            v164 = 0;
          }

          v206 = 0;
          v165 = v164;
          v166 = [v124 hmd_saveWithTransactionAuthor:4 clientIdentifier:v165 allowQoSEscalation:v186 error:&v206];
          v167 = v206;

          v168 = objc_autoreleasePoolPush();
          v169 = v107;
          v170 = HMFGetOSLogHandle();
          v171 = v170;
          if (v166)
          {
            if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
            {
              v172 = HMFGetLogIdentifier();
              if (v193)
              {
                v173 = v122[6];
                v174 = v122[8];
                v175 = v173;
              }

              else
              {
                v173 = 0;
                v175 = 0;
                v174 = 0;
              }

              *buf = 138544130;
              *&buf[4] = v172;
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              *&buf[22] = 2112;
              v230 = v173;
              *v231 = 2114;
              *&v231[2] = v174;
              _os_log_impl(&dword_229538000, v171, OS_LOG_TYPE_INFO, "%{public}@Saved after processing export changes for home %{mask.hash}@ on behalf of client identifier %{public}@", buf, 0x2Au);
            }
          }

          else if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
          {
            v176 = HMFGetLogIdentifier();
            if (v193)
            {
              v177 = v122[6];
              v178 = v122[8];
              v179 = v177;
            }

            else
            {
              v177 = 0;
              v179 = 0;
              v178 = 0;
            }

            *buf = 138544386;
            *&buf[4] = v176;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v230 = v177;
            *v231 = 2114;
            *&v231[2] = v178;
            *&v231[10] = 2114;
            *&v231[12] = v167;
            _os_log_impl(&dword_229538000, v171, OS_LOG_TYPE_ERROR, "%{public}@Failed to save after processing export changes for home %{mask.hash}@ on behalf of client identifier %{public}@: %{public}@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v168);
        }

        if ((v191 & 1) == 0)
        {
          objc_opt_class();
          v180 = objc_opt_self();
          v181 = NSStringFromClass(v180);
          [importCopy setName:v181];
        }

        hasChanges = [importCopy hasChanges];
        if (hasChanges)
        {
          [importCopy rollback];
        }

        self = hasChanges ^ 1u;
      }

      else
      {
        v87 = objc_autoreleasePoolPush();
        v88 = v79;
        v89 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
        {
          v90 = HMFGetLogIdentifier();
          v91 = v90;
          if (v193)
          {
            v92 = v193[6];
          }

          else
          {
            v92 = 0;
          }

          *buf = 138544130;
          *&buf[4] = v90;
          *&buf[12] = 2114;
          *&buf[14] = v189;
          *&buf[22] = 2160;
          v230 = 1752392040;
          *v231 = 2112;
          *&v231[2] = v92;
          _os_log_impl(&dword_229538000, v89, OS_LOG_TYPE_DEBUG, "%{public}@No changes to managed objects after processing %{public}@ changes for home %{mask.hash}@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v87);
        self = 0;
      }
    }

    else
    {
      if (v11)
      {
        v48 = HMFGetLogIdentifier();
        v49 = v48;
        if (v193)
        {
          v50 = v193[6];
        }

        else
        {
          v50 = 0;
        }

        *buf = 138544130;
        *&buf[4] = v48;
        *&buf[12] = 2114;
        *&buf[14] = v189;
        *&buf[22] = 2160;
        v230 = 1752392040;
        *v231 = 2112;
        *&v231[2] = v50;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@No %{public}@ changes for home %{mask.hash}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      self = 1;
    }
  }

  return self;
}

void __64__HMDCoreDataCloudTransform__processChangeSet_isImport_context___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 48) == 1)
  {
    [(HMDCoreDataCloudTransform *)*(a1 + 32) _saveHomeManagerChangesToWorkingStoreWithContext:?];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Discarding home manager changes after previous working store save failure", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  [*(a1 + 40) reset];
  objc_autoreleasePoolPop(v2);
}

void __75__HMDCoreDataCloudTransform__fetchRequestForCriticalObjectExportInContext___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v27 = *MEMORY[0x277D85DE8];
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
    v9 = [v7 entity];
    LODWORD(v8) = [v8 containsObject:v9];

    if (v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 40);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v13;
        v25 = 2112;
        v26 = v7;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Detected dirty critical object for export: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = MEMORY[0x277CBE428];
      v15 = [v7 entity];
      v16 = [v15 name];
      v17 = [v14 fetchRequestWithEntityName:v16];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v20 = MEMORY[0x277CCAC30];
      v21 = [v7 modelID];
      v22 = [v20 predicateWithFormat:@"(%K == %@)", @"modelID", v21];
      [*(*(*(a1 + 48) + 8) + 40) setPredicate:v22];

      *a3 = 1;
    }
  }
}

- (void)_updateWriterPropertiesForCloudObjects:(void *)objects timestamp:(void *)timestamp version:(void *)version
{
  timestampCopy = timestamp;
  versionCopy = version;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__HMDCoreDataCloudTransform__updateWriterPropertiesForCloudObjects_timestamp_version___block_invoke;
  v9[3] = &unk_278678F60;
  v7 = timestampCopy;
  v10 = v7;
  v8 = versionCopy;
  v11 = v8;
  [objects hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

void __86__HMDCoreDataCloudTransform__updateWriterPropertiesForCloudObjects_timestamp_version___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 hasPersistentChangedValues];
  v4 = v12;
  if (v3)
  {
    v5 = v12;
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
      v8 = [v7 writerTimestamp];
      v9 = [v8 isEqualToDate:*(a1 + 32)];

      if ((v9 & 1) == 0)
      {
        [v7 setWriterTimestamp:*(a1 + 32)];
      }

      v10 = [v7 writerVersion];
      v11 = [v10 isEqualToString:*(a1 + 40)];

      if ((v11 & 1) == 0)
      {
        [v7 setWriterVersion:*(a1 + 40)];
      }
    }

    v4 = v12;
  }
}

void __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = a2;
  v11 = a3;
  v12 = v7;
  v13 = v9;
  if (v8)
  {
    v14 = [v11 objectForKeyedSubscript:@"modelID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v13 objectWithID:v10];
    v18 = [v17 isDeleted];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v22 = v49 = a4;
        v23 = [v10 hmd_debugIdentifier];
        v47 = v13;
        v24 = v11;
        v25 = v12;
        v26 = v23;
        *buf = 138544386;
        v27 = ": ";
        v53 = v22;
        if (!v16)
        {
          v27 = "";
        }

        v54 = 2112;
        v55 = v23;
        v56 = 2080;
        v28 = &stru_283CF9D50;
        if (v16)
        {
          v28 = v16;
        }

        v57 = v27;
        v58 = 2160;
        v59 = 1752392040;
        v60 = 2112;
        v61 = v28;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Skipping processing export delete for already-deleted object: <%@%s%{mask.hash}@>", buf, 0x34u);

        v12 = v25;
        v11 = v24;
        v13 = v47;

        a4 = v49;
      }

      objc_autoreleasePoolPop(v19);
      v29 = 1;
    }

    else
    {
      v48 = v12;
      v30 = objc_opt_class();
      v31 = [v10 entity];
      v32 = [v30 exportTransformableClassFromEntity:v31];

      if (v32)
      {
        v50 = a4;
        v33 = objc_autoreleasePoolPush();
        v34 = v8;
        v35 = HMFGetOSLogHandle();
        v36 = v35;
        v12 = v48;
        if (v16)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v37 = HMFGetLogIdentifier();
            [v10 hmd_debugIdentifier];
            v38 = v46 = v33;
            *buf = 138544130;
            v53 = v37;
            v54 = 2112;
            v55 = v38;
            v56 = 2160;
            v57 = 1752392040;
            v58 = 2112;
            v59 = v16;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@Processing export delete: <%@: %{mask.hash}@>", buf, 0x2Au);

            v33 = v46;
            v12 = v48;
          }

          objc_autoreleasePoolPop(v33);
          v29 = [v32 exportDeleteWithObjectID:v10 modelID:v16 additionalUpdates:v12 context:v13];
        }

        else
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            v45 = [v10 hmd_debugIdentifier];
            *buf = 138543874;
            v53 = v44;
            v54 = 2112;
            v55 = v45;
            v56 = 2112;
            v57 = v11;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Not processing export delete for transformable %@ due to missing modelID in tombstone: %@", buf, 0x20u);

            v12 = v48;
          }

          objc_autoreleasePoolPop(v33);
          v29 = 1;
        }

        a4 = v50;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = v8;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = HMFGetLogIdentifier();
          [v10 hmd_debugIdentifier];
          v43 = v51 = a4;
          *buf = 138543618;
          v53 = v42;
          v54 = 2112;
          v55 = v43;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring export delete: <%@>", buf, 0x16u);

          a4 = v51;
        }

        objc_autoreleasePoolPop(v39);
        v29 = 1;
        v12 = v48;
      }
    }
  }

  else
  {
    v29 = 0;
  }

  *(*(a1[7] + 8) + 24) = v29;
  if (!*(*(a1[7] + 8) + 24))
  {
    *a4 = 1;
  }
}

void __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a2;
  v9 = v5;
  v10 = v7;
  v11 = v10;
  if (v6)
  {
    v12 = [v10 objectWithID:v8];
    v13 = [v12 isDeleted];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v6;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        [v8 hmd_debugIdentifier];
        v19 = v18 = a3;
        *buf = 138543618;
        v32 = v17;
        v33 = 2112;
        v34 = v19;
        v20 = "%{public}@Skipping processing export insert for already-deleted object: <%@>";
        v21 = v16;
        v22 = OS_LOG_TYPE_INFO;
LABEL_11:
        _os_log_impl(&dword_229538000, v21, v22, v20, buf, 0x16u);

        a3 = v18;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v23 = objc_opt_class();
    v24 = [v8 entity];
    v25 = [v23 exportTransformableClassFromEntity:v24];

    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    v26 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (!v25)
    {
      if (v26)
      {
        v17 = HMFGetLogIdentifier();
        [v8 hmd_debugIdentifier];
        v19 = v18 = a3;
        *buf = 138543618;
        v32 = v17;
        v33 = 2112;
        v34 = v19;
        v20 = "%{public}@Ignoring export insert: <%@>";
        v21 = v16;
        v22 = OS_LOG_TYPE_DEBUG;
        goto LABEL_11;
      }

LABEL_12:

      objc_autoreleasePoolPop(v14);
      v29 = 1;
      goto LABEL_13;
    }

    if (v26)
    {
      HMFGetLogIdentifier();
      v27 = v30 = a3;
      v28 = [v8 hmd_debugIdentifier];
      *buf = 138543618;
      v32 = v27;
      v33 = 2112;
      v34 = v28;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Processing export insert: <%@>", buf, 0x16u);

      a3 = v30;
    }

    objc_autoreleasePoolPop(v14);
    v29 = [v25 exportInsertWithObjectID:v8 additionalUpdates:v9 context:v11];
  }

  else
  {
    v29 = 0;
  }

LABEL_13:

  *(*(a1[7] + 8) + 24) = v29;
  if (!*(*(a1[7] + 8) + 24))
  {
    *a3 = 1;
  }
}

uint64_t __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  result = [(HMDCoreDataCloudTransform *)a1[4] _processExportUpdateForObjectID:a2 updatedProperties:a3 additionalUpdates:a1[5] context:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  if (!*(*(a1[7] + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

void __61__HMDCoreDataCloudTransform__processExportChangeSet_context___block_invoke_223(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a2;
  v9 = objc_msgSend_copy(a3);
  v10 = [(HMDCoreDataCloudTransform *)v7 _processExportUpdateForObjectID:v8 updatedProperties:v9 additionalUpdates:a1[5] context:a1[6]];

  *(*(a1[7] + 8) + 24) = v10;
  if (!*(*(a1[7] + 8) + 24))
  {
    *a4 = 1;
  }
}

- (uint64_t)_processExportUpdateForObjectID:(void *)d updatedProperties:(void *)properties additionalUpdates:(void *)updates context:
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dCopy = d;
  propertiesCopy = properties;
  updatesCopy = updates;
  v13 = updatesCopy;
  if (!self)
  {
    v31 = 0;
    goto LABEL_13;
  }

  v14 = [updatesCopy objectWithID:v9];
  isDeleted = [v14 isDeleted];

  if (isDeleted)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      hmd_debugIdentifier = [v9 hmd_debugIdentifier];
      *buf = 138543618;
      v35 = v19;
      v36 = 2112;
      v37 = hmd_debugIdentifier;
      v21 = "%{public}@Skipping processing export update for already-deleted object: <%@>";
      v22 = v18;
      v23 = OS_LOG_TYPE_INFO;
LABEL_11:
      _os_log_impl(&dword_229538000, v22, v23, v21, buf, 0x16u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v24 = objc_opt_class();
  entity = [v9 entity];
  v26 = [v24 exportTransformableClassFromEntity:entity];

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  v27 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (!v26)
  {
    if (v27)
    {
      v19 = HMFGetLogIdentifier();
      hmd_debugIdentifier = [v9 hmd_debugIdentifier];
      *buf = 138543618;
      v35 = v19;
      v36 = 2112;
      v37 = hmd_debugIdentifier;
      v21 = "%{public}@Ignoring export update: <%@>";
      v22 = v18;
      v23 = OS_LOG_TYPE_DEBUG;
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v16);
    v31 = 1;
    goto LABEL_13;
  }

  if (v27)
  {
    v28 = HMFGetLogIdentifier();
    v29 = MKFPropertyNamesFromDescriptions(dCopy);
    [v9 hmd_debugIdentifier];
    v30 = v33 = v16;
    *buf = 138543874;
    v35 = v28;
    v36 = 2114;
    v37 = v29;
    v38 = 2112;
    v39 = v30;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Processing export update [%{public}@]: <%@>", buf, 0x20u);

    v16 = v33;
  }

  objc_autoreleasePoolPop(v16);
  v31 = [v26 exportUpdateWithObjectID:v9 updatedProperties:dCopy additionalUpdates:propertiesCopy context:v13];
LABEL_13:

  return v31;
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectWithID:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 ensureCanonicalModel];
  if (v6 == -1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectWithID:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 ensureCanonicalModel];
  if (v6 == -1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 64);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a2;
  v11 = a3;
  v37 = v7;
  v12 = v9;
  if (v8)
  {
    v13 = [v11 objectForKeyedSubscript:@"modelID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v38 = v14;

    v15 = [v12 objectWithID:v10];
    v16 = [v15 isDeleted];

    v17 = objc_autoreleasePoolPush();
    v18 = v8;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      v21 = v38;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v10 hmd_debugIdentifier];
        *buf = 138544130;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        *&buf[22] = 2160;
        v40 = 1752392040;
        LOWORD(v41) = 2112;
        *(&v41 + 2) = v38;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import delete for already-deleted object: <%@: %{mask.hash}@>", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v17);
      v24 = 1;
      v25 = v37;
      goto LABEL_21;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v10 hmd_debugIdentifier];
      *buf = 138543874;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v27;
      *&buf[22] = 2114;
      v40 = v38;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Processing import delete: <%@: %{public}@>", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v28 = [v10 entity];
    v25 = v37;
    if (v6)
    {
      v29 = [objc_opt_class() importTransformableClassFromEntity:v28];
      if (v29)
      {
        if (v38)
        {
          if (![v29 importDeleteWithObjectID:v10 modelID:v38 additionalUpdates:v37 context:v12])
          {
            v24 = 0;
LABEL_20:

            v21 = v38;
LABEL_21:

            goto LABEL_22;
          }
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          v31 = v18;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v33 = v35 = v31;
            v34 = [v10 hmd_debugIdentifier];
            *buf = 138543874;
            *&buf[4] = v33;
            *&buf[12] = 2112;
            *&buf[14] = v34;
            *&buf[22] = 2112;
            v40 = v11;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Not processing import delete for object <%@> due to missing modelID in tombstone: %@", buf, 0x20u);

            v25 = v37;
            v31 = v35;
          }

          objc_autoreleasePoolPop(v30);
        }
      }
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __107__HMDCoreDataCloudTransform__processImportDeleteForObjectID_tombstone_transform_additionalUpdates_context___block_invoke;
    v40 = &unk_278679138;
    *&v41 = v10;
    *(&v41 + 1) = v11;
    v42 = v12;
    [(HMDCoreDataCloudTransform *)v18 _enumerateCloudChangeListenersForEntity:v28 usingBlock:buf];

    v24 = 1;
    goto LABEL_20;
  }

  v24 = 0;
  v25 = v37;
LABEL_22:

  *(*(*(a1 + 56) + 8) + 24) = v24;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_4(uint64_t a1, void *a2, _BYTE *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = a2;
  v10 = v7;
  v11 = v8;
  v12 = v11;
  if (v6)
  {
    v13 = [v11 objectWithID:v9];
    if ([v13 isDeleted])
    {
      v14 = v12;
      v15 = v10;
      v16 = objc_autoreleasePoolPush();
      v17 = v6;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v38 = a3;
        v20 = [v9 hmd_debugIdentifier];
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import insert for already-deleted object: <%@>", buf, 0x16u);

        a3 = v38;
      }

      objc_autoreleasePoolPop(v16);
      v6 = 1;
      v10 = v15;
      v12 = v14;
    }

    else
    {
      v41 = v10;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v21 = [v13 ensureCanonicalModel], v21 != 1))
      {
        v29 = v21;
        v30 = objc_autoreleasePoolPush();
        v31 = v6;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v40 = v30;
          v33 = a3;
          v34 = HMFGetLogIdentifier();
          if ((v29 + 2) > 3)
          {
            v35 = @"unknown";
          }

          else
          {
            v35 = off_27867D3C0[v29 + 2];
          }

          v36 = v35;
          v37 = [v9 hmd_debugIdentifier];
          *buf = 138543874;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v36;
          *&buf[22] = 2112;
          v43 = v37;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import insert for non-canonical (%{public}@) model: <%@>", buf, 0x20u);

          a3 = v33;
          v30 = v40;
        }

        objc_autoreleasePoolPop(v30);
        v6 = 1;
        v10 = v41;
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v6;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = HMFGetLogIdentifier();
          [v9 hmd_debugIdentifier];
          v26 = v39 = a3;
          *buf = 138543618;
          *&buf[4] = v25;
          *&buf[12] = 2112;
          *&buf[14] = v26;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Processing import insert: <%@>", buf, 0x16u);

          a3 = v39;
        }

        objc_autoreleasePoolPop(v22);
        v27 = [v9 entity];
        v10 = v41;
        if (v5 && (v28 = [objc_opt_class() importTransformableClassFromEntity:v27]) != 0 && !objc_msgSend(v28, "importInsertWithObjectID:additionalUpdates:context:", v9, v41, v12))
        {
          v6 = 0;
        }

        else
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __97__HMDCoreDataCloudTransform__processImportInsertForObjectID_transform_additionalUpdates_context___block_invoke;
          v43 = &unk_278679110;
          v44 = v12;
          v45 = v9;
          [(HMDCoreDataCloudTransform *)v23 _enumerateCloudChangeListenersForEntity:v27 usingBlock:buf];

          v6 = 1;
        }
      }
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a3 = 1;
  }
}

uint64_t __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_5(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [(HMDCoreDataCloudTransform *)*(a1 + 32) _processImportUpdateForObjectID:a2 updatedProperties:a3 transform:*(a1 + 64) additionalUpdates:*(a1 + 40) context:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

void __61__HMDCoreDataCloudTransform__processImportChangeSet_context___block_invoke_216(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = objc_msgSend_copy(a3);
  v10 = [(HMDCoreDataCloudTransform *)v7 _processImportUpdateForObjectID:v8 updatedProperties:v9 transform:*(a1 + 64) additionalUpdates:*(a1 + 40) context:*(a1 + 48)];

  *(*(*(a1 + 56) + 8) + 24) = v10;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }
}

- (uint64_t)_processImportUpdateForObjectID:(void *)d updatedProperties:(int)properties transform:(void *)transform additionalUpdates:(void *)updates context:
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a2;
  dCopy = d;
  transformCopy = transform;
  updatesCopy = updates;
  if (!self)
  {
    v24 = 0;
    goto LABEL_17;
  }

  v14 = MKFPropertyNamesFromDescriptions(dCopy);
  v15 = [updatesCopy objectWithID:v11];
  if ([v15 isDeleted])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      [v11 hmd_debugIdentifier];
      v20 = dCopy;
      v22 = v21 = v14;
      *buf = 138543874;
      v51 = v19;
      v52 = 2048;
      v53 = v21;
      v54 = 2112;
      v55 = v22;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import update [%public@] for already-deleted object: <%@>", buf, 0x20u);

      v14 = v21;
      dCopy = v20;
    }

    v23 = v16;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v25 = [v15 ensureCanonicalModel], v25 == 1))
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v44 = dCopy;
        v30 = v29 = v14;
        hmd_debugIdentifier = [v11 hmd_debugIdentifier];
        *buf = 138543874;
        v51 = v30;
        v52 = 2048;
        v53 = v29;
        v54 = 2112;
        v55 = hmd_debugIdentifier;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Processing import update [%public@]: <%@>", buf, 0x20u);

        v14 = v29;
        dCopy = v44;
      }

      objc_autoreleasePoolPop(v26);
      entity = [v11 entity];
      if (properties && (v33 = [objc_opt_class() importTransformableClassFromEntity:entity]) != 0 && !objc_msgSend(v33, "importUpdateWithObjectID:updatedProperties:additionalUpdates:context:", v11, dCopy, transformCopy, updatesCopy))
      {
        v24 = 0;
      }

      else
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __115__HMDCoreDataCloudTransform__processImportUpdateForObjectID_updatedProperties_transform_additionalUpdates_context___block_invoke;
        v46[3] = &unk_278679138;
        v47 = updatesCopy;
        v48 = v11;
        v49 = dCopy;
        [(HMDCoreDataCloudTransform *)selfCopy2 _enumerateCloudChangeListenersForEntity:entity usingBlock:v46];

        v24 = 1;
      }

      goto LABEL_16;
    }

    v35 = v25;
    v36 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = HMFGetLogIdentifier();
      v43 = v14;
      if ((v35 + 2) > 3)
      {
        v40 = @"unknown";
      }

      else
      {
        v40 = off_27867D3C0[v35 + 2];
      }

      v41 = v40;
      hmd_debugIdentifier2 = [v11 hmd_debugIdentifier];
      *buf = 138543874;
      v51 = v39;
      v52 = 2048;
      v53 = v41;
      v54 = 2112;
      v55 = hmd_debugIdentifier2;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping processing import update for non-canonical (%public@) model: <%@>", buf, 0x20u);

      v14 = v43;
    }

    v23 = v36;
  }

  objc_autoreleasePoolPop(v23);
  v24 = 1;
LABEL_16:

LABEL_17:
  return v24;
}

void __115__HMDCoreDataCloudTransform__processImportUpdateForObjectID_updatedProperties_transform_additionalUpdates_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) objectWithID:*(a1 + 40)];
    [v4 didInsertOrUpdateModel:v3 changedProperties:*(a1 + 48)];
  }
}

- (void)_enumerateCloudChangeListenersForEntity:(void *)entity usingBlock:
{
  v5 = a2;
  entityCopy = entity;
  v7 = [*(self + 96) objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v15 = 0;
    v9 = [v7 count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      do
      {
        while (1)
        {
          v13 = [v8 pointerAtIndex:v12];
          if (v13)
          {
            break;
          }

          if (++v12 < v10)
          {
            v11 = 1;
            if ((v15 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_12;
        }

        v14 = v13;
        entityCopy[2](entityCopy, v13, &v15);

        ++v12;
      }

      while (v12 < v10 && (v15 & 1) == 0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_12:
      [v8 compact];
      if (![v8 count])
      {
        [*(self + 96) removeObjectForKey:v5];
      }
    }
  }

LABEL_14:
}

void __97__HMDCoreDataCloudTransform__processImportInsertForObjectID_transform_additionalUpdates_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) objectWithID:*(a1 + 40)];
    [v4 didInsertOrUpdateModel:v3 changedProperties:0];
  }
}

void __107__HMDCoreDataCloudTransform__processImportDeleteForObjectID_tombstone_transform_additionalUpdates_context___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didDeleteModelWithID:a1[4] tombstone:a1[5] context:a1[6]];
  }
}

void __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() transactionIsCloudStoreReset:v3 context:*(a1 + 40)];
  v5 = *(a1 + 32);
  if (v4)
  {
    [objc_opt_class() wipeCoreDataStorageDueToPCSIdentityLossAndRelaunchHomeKitDaemon];
    goto LABEL_12;
  }

  v6 = v3;
  v7 = v6;
  if (!v5)
  {
LABEL_8:

    goto LABEL_12;
  }

  if ([v6 hmd_transactionAuthor])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v5;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v7 transactionNumber];
      v13 = [v7 author];
      *buf = 138544130;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      v29 = 2160;
      v30 = 1752392040;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not importing transaction %lld with author %{mask.hash}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_8;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v7 transactionNumber];
    v19 = [v7 changes];
    *buf = 138543874;
    v26 = v17;
    v27 = 2048;
    v28 = v18;
    v29 = 2048;
    v30 = [v19 count];
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing import transaction %lld with %zd change(s)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v20 = [v7 changes];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke_233;
  v22[3] = &unk_278679250;
  v21 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v23 = v21;
  v24 = *(a1 + 48);
  [v20 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

LABEL_12:
}

void __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke_233(void **a1, void *a2)
{
  v160[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = v3;
  v7 = v5;
  if (!v4)
  {
    goto LABEL_17;
  }

  v8 = [v6 changeType];
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      v26 = v6;
      v27 = [v26 changedObjectID];
      v28 = [v27 entity];
      v29 = [v28 managedObjectClassName];
      v30 = NSClassFromString(v29);
      LOBYTE(v30) = [(objc_class *)v30 isSubclassOfClass:objc_opt_class()];

      if ((v30 & 1) == 0)
      {
        v47 = objc_autoreleasePoolPush();
        v48 = v4;
        v49 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = HMFGetLogIdentifier();
          [v27 entity];
          v51 = v147 = a1;
          [v51 name];
          v53 = v52 = v27;
          *buf = 138543874;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = v53;
          v154 = 2114;
          v155 = v26;
          _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Unexpected entity type in change: %{public}@, %{public}@", buf, 0x20u);

          v27 = v52;
          a1 = v147;
        }

        objc_autoreleasePoolPop(v47);
        v38 = 0;
        goto LABEL_52;
      }

      v143 = v7;
      v31 = [v26 tombstone];
      v32 = [v31 objectForKeyedSubscript:@"flags"];
      v139 = v32;
      v141 = v31;
      if (v32)
      {
        v33 = v27;
        v34 = v32;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        v37 = v36;

        if (isKindOfClass)
        {
          *buf = 0;
          *&buf[8] = 0;
          [v34 getUUIDBytes:buf];
          if ((buf[13] & 8) != 0)
          {
            v88 = objc_autoreleasePoolPush();
            v89 = v4;
            v90 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              v91 = HMFGetLogIdentifier();
              [v33 hmd_debugIdentifier];
              v93 = v92 = a1;
              *buf = 138543874;
              *&buf[4] = v91;
              *&buf[12] = 2112;
              *&buf[14] = v93;
              v154 = 2112;
              v155 = v141;
              _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring import delete of fake model: %@, %@", buf, 0x20u);

              a1 = v92;
            }

            objc_autoreleasePoolPop(v88);
            v38 = [HMDCoreDataCloudTransform fakeHomeChangeSetModelID];
            v83 = v141;
            v7 = v143;
            v27 = v33;
            goto LABEL_51;
          }
        }

        v146 = a1;

        v27 = v33;
      }

      else
      {
        v61 = objc_autoreleasePoolPush();
        v62 = v4;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v64 = v31;
          v65 = v26;
          v67 = v66 = v27;
          *buf = 138543618;
          *&buf[4] = v67;
          *&buf[12] = 2114;
          *&buf[14] = v65;
          _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Flags missing from tombstone: %{public}@", buf, 0x16u);

          v27 = v66;
          v26 = v65;
          v31 = v64;
        }

        v146 = a1;

        objc_autoreleasePoolPop(v61);
      }

      v34 = [HMDCoreDataCloudTransform _homeModelIDPropertyNameForObjectID:v27];
      v68 = [v31 objectForKeyedSubscript:v34];
      v69 = v68;
      if (v68)
      {
        v137 = v27;
        v70 = v68;
        objc_opt_class();
        v71 = objc_opt_isKindOfClass() & 1;
        if (v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = 0;
        }

        v73 = v72;

        if (v71)
        {
          v38 = v70;
          v7 = v143;
        }

        else
        {
          v135 = v73;
          v79 = objc_autoreleasePoolPush();
          v80 = v4;
          v81 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = HMFGetLogIdentifier();
            *buf = 138544130;
            *&buf[4] = v82;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            v154 = 2112;
            v155 = v70;
            v156 = 2114;
            v157 = v26;
            _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_ERROR, "%{public}@Home model ID is unexpected type in tombstone: %{mask.hash}@, %{public}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v79);
          v38 = 0;
          v7 = v143;
          v73 = v135;
          v27 = v137;
        }
      }

      else
      {
        v74 = objc_autoreleasePoolPush();
        v75 = v4;
        v76 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v78 = v77 = v27;
          *buf = 138543618;
          *&buf[4] = v78;
          *&buf[12] = 2114;
          *&buf[14] = v26;
          _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_ERROR, "%{public}@Home model ID missing from tombstone: %{public}@", buf, 0x16u);

          v27 = v77;
        }

        objc_autoreleasePoolPop(v74);
        v38 = 0;
        v7 = v143;
      }

      v83 = v141;

      a1 = v146;
LABEL_51:

LABEL_52:
      goto LABEL_77;
    }

LABEL_17:
    v38 = 0;
    goto LABEL_77;
  }

  v145 = a1;
  v9 = v6;
  v10 = v7;
  v11 = [v9 changedObjectID];
  v12 = [v11 entity];
  v13 = [v12 managedObjectClassName];
  v14 = NSClassFromString(v13);
  LOBYTE(v14) = [(objc_class *)v14 isSubclassOfClass:objc_opt_class()];

  if ((v14 & 1) == 0)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v4;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      [v11 entity];
      v144 = v11;
      v44 = v43 = v9;
      [v44 name];
      v46 = v45 = v7;
      *buf = 138543874;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      v154 = 2114;
      v155 = v43;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unexpected entity type in change: %{public}@, %{public}@", buf, 0x20u);

      v7 = v45;
      v9 = v43;
      v11 = v144;
    }

    objc_autoreleasePoolPop(v39);
    v38 = 0;
    a1 = v145;
    goto LABEL_76;
  }

  v138 = v9;
  v142 = v7;
  v15 = [HMDCoreDataCloudTransform _homeModelIDPropertyNameForObjectID:v11];
  v160[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:1];
  v17 = [MKFCKModel appendDefaultPreloadedPropertiesTo:v16];

  v152 = 0;
  v136 = v10;
  v18 = [v10 hmd_fetchExistingObjectWithID:v11 propertiesToFetch:v17 error:&v152];
  v140 = v152;
  if (v140)
  {
    v129 = v18;
    v131 = v15;
    v133 = v17;
    v19 = objc_autoreleasePoolPush();
    v20 = v4;
    v21 = HMFGetOSLogHandle();
    v22 = v140;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v11 hmd_debugIdentifier];
      *buf = 138543874;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      v154 = 2114;
      v155 = v140;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch object %@: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = 0;
    v7 = v142;
    v9 = v138;
    v15 = v131;
    v17 = v133;
    v18 = v129;
    goto LABEL_75;
  }

  if (v18)
  {
    v134 = v17;
    v54 = v18;
    objc_opt_class();
    v55 = objc_opt_isKindOfClass() & 1;
    if (v55)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0;
    }

    v128 = v56;

    v9 = v138;
    v130 = v18;
    v132 = v15;
    if (v55)
    {
      if (![v54 isFake])
      {
        v94 = [v54 valueForKey:v15];
        v127 = v94;
        if (v94)
        {
          v95 = v94;
          objc_opt_class();
          LODWORD(v125) = objc_opt_isKindOfClass() & 1;
          if (v125)
          {
            v96 = v95;
          }

          else
          {
            v96 = 0;
          }

          v126 = v96;

          if (v125)
          {
            v25 = v95;
          }

          else
          {
            v125 = v95;
            v101 = objc_autoreleasePoolPush();
            v102 = v4;
            v103 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              v104 = HMFGetLogIdentifier();
              *buf = 138544386;
              *&buf[4] = v104;
              *&buf[12] = 2160;
              *&buf[14] = 1752392040;
              v154 = 2112;
              v155 = v125;
              v156 = 2112;
              v157 = v54;
              v158 = 2114;
              v159 = v138;
              _os_log_impl(&dword_229538000, v103, OS_LOG_TYPE_ERROR, "%{public}@Home model ID is unexpected type (%{mask.hash}@) in object: %@, %{public}@", buf, 0x34u);
            }

            objc_autoreleasePoolPop(v101);
            v25 = 0;
            v18 = v130;
            v15 = v132;
          }

          v22 = 0;

          v7 = v142;
          v17 = v134;
        }

        else
        {
          v97 = objc_autoreleasePoolPush();
          v98 = v4;
          v99 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v100 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v100;
            *&buf[12] = 2112;
            *&buf[14] = v54;
            v154 = 2114;
            v155 = v138;
            _os_log_impl(&dword_229538000, v99, OS_LOG_TYPE_ERROR, "%{public}@Home model ID is missing in object: %@, %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v97);
          v25 = 0;
          v22 = 0;
          v7 = v142;
          v15 = v132;
          v17 = v134;
          v18 = v130;
        }

        goto LABEL_74;
      }

      v57 = objc_autoreleasePoolPush();
      v58 = v4;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v60;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring import of fake model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v57);
      v25 = [HMDCoreDataCloudTransform fakeHomeChangeSetModelID];
    }

    else
    {
      v84 = objc_autoreleasePoolPush();
      v85 = v4;
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v87;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        v154 = 2114;
        v155 = v138;
        _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type of object in change: %@, %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v84);
      v25 = 0;
    }

    v22 = 0;
    v7 = v142;
    v15 = v132;
    v17 = v134;
    v18 = v130;
LABEL_74:

    goto LABEL_75;
  }

  v25 = 0;
  v9 = v138;
  v22 = 0;
LABEL_75:

  v38 = v25;
  v10 = v136;
LABEL_76:

LABEL_77:
  v105 = [(HMDCoreDataCloudTransform *)a1[4] _changeSetForHome:v38 isImport:1 clientIdentifier:0 qualityOfService:0xFFFFFFFFFFFFFFFFLL cache:a1[6]];
  v106 = [v6 changedObjectID];
  v107 = [v106 entity];
  v108 = +[MKFCKHome entity];
  v109 = [v107 isKindOfEntity:v108];

  if (v109)
  {
    if ([v6 changeType] == 2)
    {
      if (v105)
      {
        *(v105 + 32) = 1;
      }
    }

    else
    {
      v110 = [v6 updatedProperties];
      v149[0] = MEMORY[0x277D85DD0];
      v149[1] = 3221225472;
      v149[2] = __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke_2;
      v149[3] = &unk_278679228;
      v149[4] = a1[4];
      v150 = v38;
      v151 = a1[5];
      [v110 hmf_enumerateWithAutoreleasePoolUsingBlock:v149];
    }
  }

  v111 = [v6 changedObjectID];
  v112 = [v111 entity];
  v113 = +[MKFCKSharedHome entity];
  if (([v112 isKindOfEntity:v113] & 1) == 0)
  {

LABEL_89:
    if (!v105)
    {
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v114 = [v6 transaction];
  v115 = [v114 storeID];
  [a1[5] hmd_cloudSharedStoreIdentifier];
  v116 = v105;
  v117 = v38;
  v118 = v6;
  v120 = v119 = a1;
  v148 = [v115 isEqualToString:v120];

  a1 = v119;
  v6 = v118;
  v38 = v117;
  v105 = v116;

  if (!v148)
  {
    goto LABEL_89;
  }

  v121 = objc_autoreleasePoolPush();
  v122 = a1[4];
  v123 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
  {
    v124 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v124;
    _os_log_impl(&dword_229538000, v123, OS_LOG_TYPE_INFO, "%{public}@Allowing import processing of MKFCKSharedHome that have been shared with this account", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v121);
  if (v105)
  {
    *(v105 + 32) = 1;
LABEL_90:
    if ([(HMDCoreDataCloudTransform *)a1[4] _shouldProcessChange:v6 homeModelID:v38 isImport:1 context:a1[5]])
    {
      [(HMDCoreDataCloudTransformChangeSet *)v105 processChange:v6];
    }
  }

LABEL_92:
}

- (_BYTE)_changeSetForHome:(uint64_t)home isImport:(void *)import clientIdentifier:(void *)identifier qualityOfService:(void *)service cache:
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a2;
  importCopy = import;
  serviceCopy = service;
  if (!self || !v11 && (home & 1) != 0)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v15 = *MEMORY[0x277CBEEE8];
  if (v11)
  {
    v15 = v11;
  }

  v16 = v15;
  v14 = [serviceCopy objectForKeyedSubscript:v16];
  if (!v14)
  {
    v14 = [[HMDCoreDataCloudTransformChangeSet alloc] initWithHomeModelID:v11 clientIdentifier:importCopy qualityOfService:identifier];
    [serviceCopy setObject:v14 forKeyedSubscript:v16];
    if (v11)
    {
      selfCopy = [self delegate];
      v18 = selfCopy;
      if (!selfCopy)
      {
        selfCopy = self;
      }

      v19 = [selfCopy cloudTransform:self isPermittedForHomeWithModelID:v11 isImport:home];

      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        HMFGetLogIdentifier();
        v23 = v27 = v20;
        v24 = @"denied";
        *buf = 138544386;
        v29 = v23;
        if (v19)
        {
          v24 = @"allowed";
        }

        v31 = v24;
        v25 = @"import";
        v30 = 2114;
        v32 = 2114;
        if (!home)
        {
          v25 = @"export";
        }

        v33 = v25;
        v34 = 2160;
        v35 = 1752392040;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Delegate has %{public}@ %{public}@ transform for home %{mask.hash}@", buf, 0x34u);

        v20 = v27;
      }

      objc_autoreleasePoolPop(v20);
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v14)
    {
      LOBYTE(v19) = 1;
LABEL_21:
      v14[32] = v19;
    }
  }

LABEL_22:

LABEL_23:

  return v14;
}

void __71__HMDCoreDataCloudTransform__changeSetsFromImportTransactions_context___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"homeManagerApplicationData"];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = 138543874;
      v14 = v11;
      v15 = 2160;
      v16 = 1752392040;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Detected home manager application data change on home %{mask.hash}@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 48) setHmd_homeManagerApplicationDataChanged:1];
    *a3 = 1;
  }
}

- (uint64_t)_shouldProcessChange:(void *)change homeModelID:(int)d isImport:(void *)import context:
{
  v68 = *MEMORY[0x277D85DE8];
  v9 = a2;
  changeCopy = change;
  importCopy = import;
  if (!self)
  {
    v16 = 0;
    goto LABEL_28;
  }

  changedObjectID = [v9 changedObjectID];
  entity = [changedObjectID entity];

  if (!d)
  {
LABEL_6:
    v19 = +[MKFCKSharedHome entity];
    if ([entity isKindOfEntity:v19])
    {
      transaction = [v9 transaction];
      storeID = [transaction storeID];
      hmd_cloudPrivateStoreIdentifier = [importCopy hmd_cloudPrivateStoreIdentifier];
      selfCopy = self;
      v23 = v9;
      v24 = entity;
      v25 = changeCopy;
      v26 = importCopy;
      v27 = [storeID isEqualToString:hmd_cloudPrivateStoreIdentifier];

      v16 = v27 ^ 1u;
      if (v27)
      {
        importCopy = v26;
        changeCopy = v25;
        entity = v24;
        v9 = v23;
        goto LABEL_27;
      }

      importCopy = v26;
      changeCopy = v25;
      entity = v24;
      v9 = v23;
      self = selfCopy;
      if (d)
      {
        goto LABEL_27;
      }

LABEL_12:
      v28 = v9;
      v49 = changeCopy;
      v50 = importCopy;
      v51 = v28;
      changedObjectID2 = [v28 changedObjectID];
      entity2 = [changedObjectID2 entity];

      userInfo = [entity2 userInfo];
      v31 = [userInfo objectForKeyedSubscript:@"cloudSyncInclude"];
      v32 = v31;
      if (v31 && ([v31 BOOLValue] & 1) == 0)
      {
        v48 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v46 = HMFGetLogIdentifier();
          name = [entity2 name];
          *v64 = 138544130;
          *&v64[4] = v46;
          *&v64[12] = 2112;
          *&v64[14] = name;
          *&v64[22] = 2112;
          v65 = @"cloudSyncInclude";
          LOWORD(v66) = 2112;
          *(&v66 + 2) = v32;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring update to %@ as it is marked with '%@' = '%@'", v64, 0x2Au);
        }

        objc_autoreleasePoolPop(v48);
        v16 = 0;
      }

      else
      {
        v33 = [userInfo objectForKeyedSubscript:@"cloudSyncEntity"];

        if (v33 && [v51 changeType] == 1)
        {
          v47 = importCopy;
          v54 = 0;
          v55 = &v54;
          v56 = 0x2020000000;
          v57 = 0;
          updatedProperties = [v51 updatedProperties];
          *v64 = MEMORY[0x277D85DD0];
          *&v64[8] = 3221225472;
          *&v64[16] = __76__HMDCoreDataCloudTransform__shouldProcessExportChange_homeModelID_context___block_invoke;
          v65 = &unk_278678FF8;
          *&v66 = self;
          v45 = entity2;
          *(&v66 + 1) = v45;
          v67 = &v54;
          [updatedProperties hmf_enumerateWithAutoreleasePoolUsingBlock:v64];

          v16 = *(v55 + 24);
          if ((v16 & 1) == 0)
          {
            context = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v37 = selfCopy3;
              v38 = HMFGetLogIdentifier();
              name2 = [v45 name];
              *buf = 138543874;
              v59 = v38;
              v60 = 2112;
              v61 = name2;
              v62 = 2112;
              v63 = v51;
              _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEBUG, "%{public}@No relevant updates to %@, skipping change: %@", buf, 0x20u);

              selfCopy3 = v37;
            }

            objc_autoreleasePoolPop(context);
          }

          importCopy = v47;
          _Block_object_dispose(&v54, 8);
        }

        else
        {
          v16 = 1;
        }
      }

      goto LABEL_27;
    }

    if ((d & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v16 = 1;
    goto LABEL_27;
  }

  fakeHomeChangeSetModelID = [HMDCoreDataCloudTransform fakeHomeChangeSetModelID];
  v15 = [changeCopy isEqual:fakeHomeChangeSetModelID];

  if ((v15 & 1) == 0)
  {
    v17 = [self[12] objectForKey:entity];
    v18 = [v17 count];

    if (v18)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v16 = 0;
LABEL_27:

LABEL_28:
  return v16;
}

- (id)fakeHomeChangeSetModelID
{
  if (fakeHomeChangeSetModelID__hmf_once_t13 != -1)
  {
    dispatch_once(&fakeHomeChangeSetModelID__hmf_once_t13, &__block_literal_global_111_121635);
  }

  v1 = fakeHomeChangeSetModelID__hmf_once_v14;

  return v1;
}

void __76__HMDCoreDataCloudTransform__shouldProcessExportChange_homeModelID_context___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"cloudSyncInclude"];
  v6 = v5;
  if (!v5 || ([v5 BOOLValue] & 1) != 0)
  {
    v7 = v3;
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
      if (([v6 BOOLValue] & 1) == 0)
      {
        v10 = [v4 objectForKeyedSubscript:@"cloudSyncCustomCopy"];
        v11 = [v10 BOOLValue];

        if (!v11)
        {
          v12 = [v9 name];
          v13 = [v12 isEqualToString:@"writerTimestamp"];

          if ((v13 & 1) == 0)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 32);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v17 = HMFGetLogIdentifier();
              v18 = [*(a1 + 40) name];
              v19 = [v7 name];
              v28 = 138543874;
              v29 = v17;
              v30 = 2112;
              v31 = v18;
              v32 = 2112;
              v33 = v19;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring update to %@.%@ as it is not included in cloud sync", &v28, 0x20u);
            }

            objc_autoreleasePoolPop(v14);
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v26 = v7;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (!v26 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_19:

    goto LABEL_20;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [*(a1 + 40) name];
    v25 = [v3 name];
    v28 = 138544386;
    v29 = v23;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v25;
    v34 = 2112;
    v35 = @"cloudSyncInclude";
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring update to %@.%@ as it is marked with '%@' = '%@'", &v28, 0x34u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_20:
}

void __53__HMDCoreDataCloudTransform_fakeHomeChangeSetModelID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FA40BC4C-1D19-499A-BE28-6CE8F1A9EF66"];
  v1 = fakeHomeChangeSetModelID__hmf_once_v14;
  fakeHomeChangeSetModelID__hmf_once_v14 = v0;
}

- (__CFString)_homeModelIDPropertyNameForObjectID:(void *)d
{
  entity = [d entity];
  v2 = +[MKFCKHome entity];
  v3 = [entity isKindOfEntity:v2];

  v4 = @"modelID";
  if ((v3 & 1) == 0)
  {
    v5 = +[MKFCKSharedHome entity];
    v6 = [entity isKindOfEntity:v5];

    if (!v6)
    {
      v4 = @"homeModelID";
    }
  }

  return v4;
}

void __71__HMDCoreDataCloudTransform__changeSetsFromExportTransactions_context___block_invoke(id *a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[4];
  v5 = v3;
  v6 = v5;
  v7 = v5;
  if (!v4)
  {
    goto LABEL_11;
  }

  v8 = [v5 contextName];

  if (!v8)
  {
    v10 = objc_autoreleasePoolPush();
    v16 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v13;
      v50 = 2112;
      v51 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Can't process transaction with no context name: %@", buf, 0x16u);
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v10);
    v7 = v6;
    goto LABEL_11;
  }

  v9 = [v6 hmd_transactionAuthor];
  if (v9 <= 0xB && ((1 << v9) & 0xB30) != 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v6 transactionNumber];
      v15 = [v6 author];
      *buf = 138543874;
      v49 = v13;
      v50 = 2048;
      v51 = v14;
      v52 = 2114;
      v53 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not exporting transaction %lld with author %{public}@", buf, 0x20u);

LABEL_9:
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v7 = [v6 contextName];
  if ([v7 isEqualToString:@"HomeManager"])
  {
    v17 = 0;
    goto LABEL_15;
  }

  v17 = HMDHomeUUIDFromWorkingContextName(v7);
  if (v17)
  {
LABEL_15:
    v18 = [v6 author];
    v19 = [HMDCoreDataContextTransactionAuthor contextAuthorWithString:v18];

    v20 = a1[4];
    v21 = [v19 clientIdentifier];
    v22 = -[HMDCoreDataCloudTransform _changeSetForHome:isImport:clientIdentifier:qualityOfService:cache:](v20, v17, 0, v21, [v19 qualityOfService], a1[5]);

    if (!v22 || (v22[32] & 1) == 0)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = a1[4];
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v27 = v26 = v19;
        *buf = 138543874;
        v49 = v27;
        v50 = 2160;
        v51 = 1752392040;
        v52 = 2112;
        v53 = v17;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Delegate has denied transform for home %{mask.hash}@ but allowing transform because the transaction is a force update", buf, 0x20u);

        v19 = v26;
      }

      objc_autoreleasePoolPop(v23);
      if (v22)
      {
        v22[32] = 1;
      }
    }

    v28 = objc_autoreleasePoolPush();
    v29 = a1[4];
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v31 = v43 = v19;
      v32 = [v6 transactionNumber];
      [v6 changes];
      v33 = v42 = v17;
      v34 = [v33 count];
      *buf = 138543874;
      v49 = v31;
      v50 = 2048;
      v51 = v32;
      v52 = 2048;
      v53 = v34;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Processing export transaction %lld with %zd change(s)", buf, 0x20u);

      v17 = v42;
      v19 = v43;
    }

    objc_autoreleasePoolPop(v28);
    v35 = [v6 changes];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __71__HMDCoreDataCloudTransform__changeSetsFromExportTransactions_context___block_invoke_230;
    v44[3] = &unk_278679200;
    v44[4] = a1[4];
    v45 = v17;
    v46 = a1[6];
    v47 = v22;
    v36 = v22;
    v37 = v17;
    [v35 hmf_enumerateWithAutoreleasePoolUsingBlock:v44];

    goto LABEL_11;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = a1[4];
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138544130;
    v49 = v41;
    v50 = 2048;
    v51 = [v6 transactionNumber];
    v52 = 2160;
    v53 = 1752392040;
    v54 = 2112;
    v55 = v7;
    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Refusing to process export transaction %lld with context name %{mask.hash}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v38);
LABEL_11:
}

void __71__HMDCoreDataCloudTransform__changeSetsFromExportTransactions_context___block_invoke_230(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([(HMDCoreDataCloudTransform *)*(a1 + 32) _shouldProcessChange:v3 homeModelID:*(a1 + 40) isImport:0 context:*(a1 + 48)])
  {
    [(HMDCoreDataCloudTransformChangeSet *)*(a1 + 56) processChange:v3];
  }
}

- (BOOL)cloudTransform:(id)transform isPermittedForHomeWithModelID:(id)d isImport:(BOOL)import
{
  v20 = *MEMORY[0x277D85DE8];
  transformCopy = transform;
  dCopy = d;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543874;
    v15 = v12;
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@No delegate assigned, presuming that transform is allowed for home %{mask.hash}@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  return 1;
}

- (void)coreData:(id)data cloudKitExportFinishedForStoreWithIdentifier:(id)identifier duration:(double)duration error:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  errorCopy = error;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (errorCopy)
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    v25 = 138544130;
    v26 = v17;
    v27 = 2114;
    v28 = identifierCopy;
    v29 = 2048;
    durationCopy2 = duration;
    v31 = 2114;
    v32 = errorCopy;
    v18 = "%{public}@CloudKit export for store %{public}@ failed after %f seconds: %{public}@";
    v19 = v16;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 42;
  }

  else
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v17 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v17;
    v27 = 2114;
    v28 = identifierCopy;
    v29 = 2048;
    durationCopy2 = duration;
    v18 = "%{public}@CloudKit export for store %{public}@ finished after %f seconds";
    v19 = v16;
    v20 = OS_LOG_TYPE_INFO;
    v21 = 32;
  }

  _os_log_impl(&dword_229538000, v19, v20, v18, &v25, v21);

LABEL_7:
  objc_autoreleasePoolPop(v13);
  if (selfCopy)
  {
    logEventSubmitter = selfCopy->_logEventSubmitter;
  }

  else
  {
    logEventSubmitter = 0;
  }

  v23 = logEventSubmitter;
  v24 = [[HMDCoreDataCloudKitOperationLogEvent alloc] initWithOperationType:2];
  [(HMMLogEventSubmitting *)v23 submitLogEvent:v24 error:errorCopy];
}

- (void)coreData:(id)data cloudKitExportStartedForStoreWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2114;
    v15 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@CloudKit export started for store %{public}@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

- (void)coreData:(id)data cloudKitImportFinishedForStoreWithIdentifier:(id)identifier duration:(double)duration error:(id)error
{
  v42 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  errorCopy = error;
  v13 = self->_logger;
  v14 = v13;
  importSignpostID = self->_importSignpostID;
  if (importSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v16 = HMFBooleanToString();
    if (errorCopy)
    {
      null = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      [errorCopy domain];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      [MEMORY[0x277CBEB68] null];
    }
    v18 = ;
    v34 = 138413058;
    v35 = identifierCopy;
    v36 = 2112;
    v37 = v16;
    v38 = 2112;
    durationCopy2 = *&null;
    v40 = 2112;
    v41 = v18;
    _os_signpost_emit_with_name_impl(&dword_229538000, v14, OS_SIGNPOST_INTERVAL_END, importSignpostID, "CoreDataCloudTransformImport", "storeIdentifier=%{signpost.description:attribute}@ succeeded=%{signpost.description:attribute}@ errorCode=%{signpost.description:attribute}@ errorDomain=%{signpost.description:attribute}@ ", &v34, 0x2Au);
  }

  self->_importSignpostID = 0;
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  v22 = v21;
  if (errorCopy)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v34 = 138544130;
      v35 = v23;
      v36 = 2114;
      v37 = identifierCopy;
      v38 = 2048;
      durationCopy2 = duration;
      v40 = 2114;
      v41 = errorCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@CloudKit import for store %{public}@ failed after %f seconds: %{public}@", &v34, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v34 = 138543874;
    v35 = v24;
    v36 = 2114;
    v37 = identifierCopy;
    v38 = 2048;
    durationCopy2 = duration;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@CloudKit import for store %{public}@ finished after %f seconds", &v34, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
  v25 = selfCopy->_logEventSubmitter;
  v26 = [[HMDCoreDataCloudKitOperationLogEvent alloc] initWithOperationType:1];
  [(HMMLogEventSubmitting *)v25 submitLogEvent:v26 error:errorCopy];

  os_unfair_lock_lock_with_options();
  v27 = selfCopy->_cloudImportInProgressStoreIdentifiers;
  [(NSMutableSet *)v27 removeObject:identifierCopy];

  if ([(NSMutableSet *)selfCopy->_cloudImportInProgressStoreIdentifiers count]|| (v28 = selfCopy->_pendingChangedStoreIdentifiers, v29 = [(NSMutableSet *)v28 count]== 0, v28, v29))
  {
    os_unfair_lock_unlock(&selfCopy->_lock.lock);
  }

  else
  {
    _managedObjectContext = [(HMDCoreDataCloudTransform *)&selfCopy->super.super.isa _managedObjectContext];
    v31 = selfCopy->_pendingChangedStoreIdentifiers;
    v32 = objc_msgSend_copy(v31);

    v33 = selfCopy->_pendingChangedStoreIdentifiers;
    [(NSMutableSet *)v33 removeAllObjects];

    os_unfair_lock_unlock(&selfCopy->_lock.lock);
    [(HMDCoreDataCloudTransform *)selfCopy _runTransformOnContext:_managedObjectContext storeIdentifiers:v32 completeMergeHomeModelID:0 completion:0];
  }
}

- (id)cloudImportInProgressStoreIdentifiers
{
  if (self)
  {
    self = self[8];
    v1 = vars8;
  }

  return self;
}

- (id)_managedObjectContext
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 6);
    if (!WeakRetained)
    {
      coreData = [self coreData];
      newManagedObjectContext = [coreData newManagedObjectContext];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __50__HMDCoreDataCloudTransform__managedObjectContext__block_invoke;
      v7[3] = &unk_27868A010;
      WeakRetained = newManagedObjectContext;
      v8 = WeakRetained;
      selfCopy = self;
      v10 = coreData;
      v5 = coreData;
      [WeakRetained performBlockAndWait:v7];
      objc_storeWeak(self + 6, WeakRetained);
    }
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (void)_runTransformOnContext:(void *)context storeIdentifiers:(void *)identifiers completeMergeHomeModelID:(void *)d completion:
{
  v9 = a2;
  contextCopy = context;
  identifiersCopy = identifiers;
  dCopy = d;
  v13 = dCopy;
  if (self)
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy__121531;
    v27[4] = __Block_byref_object_dispose__121532;
    v28 = 0;
    if (dCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__HMDCoreDataCloudTransform__runTransformOnContext_storeIdentifiers_completeMergeHomeModelID_completion___block_invoke;
      block[3] = &unk_278678E98;
      v25 = dCopy;
      v26 = v27;
      v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    }

    else
    {
      v14 = 0;
    }

    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __105__HMDCoreDataCloudTransform__runTransformOnContext_storeIdentifiers_completeMergeHomeModelID_completion___block_invoke_125;
    v16[3] = &unk_278678EC0;
    objc_copyWeak(&v22, &location);
    v15 = v14;
    v20 = v15;
    v21 = v27;
    v17 = v9;
    v18 = contextCopy;
    v19 = identifiersCopy;
    [v17 performBlock:v16];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);

    _Block_object_dispose(v27, 8);
  }
}

void __105__HMDCoreDataCloudTransform__runTransformOnContext_storeIdentifiers_completeMergeHomeModelID_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_class();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Running completion handler", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
}

void __105__HMDCoreDataCloudTransform__runTransformOnContext_storeIdentifiers_completeMergeHomeModelID_completion___block_invoke_125(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(HMDCoreDataCloudTransform *)WeakRetained _runTransformWhilePerformingBlockOnContext:*(a1 + 40) storeIdentifiers:*(a1 + 48) completeMergeHomeModelID:?];
    if (*(a1 + 56))
    {
      v4 = objc_autoreleasePoolPush();
      v5 = v3;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v7;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Dispatching completion handler", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = *(*(a1 + 64) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;

      v10 = dispatch_get_global_queue(21, 0);
      dispatch_async(v10, *(a1 + 56));
    }

    [(HMDCoreDataCloudTransform *)v3 _delayContextDestruction:?];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_class();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@HMDCoreDataCloudTransform deallocated before running transform", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    if (*(a1 + 56))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Dispatching completion handler", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v18 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
      v19 = *(*(a1 + 64) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = dispatch_get_global_queue(21, 0);
      dispatch_async(v21, *(a1 + 56));
    }
  }
}

- (void)_runTransformWhilePerformingBlockOnContext:(void *)context storeIdentifiers:(void *)identifiers completeMergeHomeModelID:
{
  v146[1] = *MEMORY[0x277D85DE8];
  v107 = a2;
  contextCopy = context;
  identifiersCopy = identifiers;
  if (!self)
  {
    goto LABEL_82;
  }

  if (![self badCDPState])
  {
    v102 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"com.apple.homed.cloud-transform"];
    if (identifiersCopy)
    {
      v104 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CBEB18];
      if (contextCopy)
      {
        v13 = [contextCopy count];
      }

      else
      {
        v13 = 3;
      }

      v14 = [v12 arrayWithCapacity:v13];
      persistentStoreCoordinator = [v107 persistentStoreCoordinator];
      persistentStores = [persistentStoreCoordinator persistentStores];
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = __114__HMDCoreDataCloudTransform__runTransformWhilePerformingBlockOnContext_storeIdentifiers_completeMergeHomeModelID___block_invoke;
      v111[3] = &unk_278678EE8;
      v112 = contextCopy;
      v113 = v107;
      v104 = v14;
      v114 = v104;
      [persistentStores hmf_enumerateWithAutoreleasePoolUsingBlock:v111];

      if (![v104 count])
      {
LABEL_81:

        goto LABEL_82;
      }
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v20;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2112;
      v142 = identifiersCopy;
      LOWORD(v143) = 2114;
      *(&v143 + 2) = contextCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Starting transform: completeMergeHomeModelID = %{mask.hash}@, storeIdentifiers = %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v106 = v107;
    currentQueryGenerationToken = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
    v126 = 0;
    v22 = [v106 setQueryGenerationFromToken:currentQueryGenerationToken error:&v126];
    v23 = v126;

    if ((v22 & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v23;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to pin context to current query generation: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }

    if (!selfCopy[1].super.super._cd_rawData)
    {
      v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
      v29 = [(HMDCoreDataCloudTransform *)selfCopy _fetchOrCreateMetadataForManagedObjectContext:v106];
      historyTokenForCloudStore = [v29 historyTokenForCloudStore];

      if (historyTokenForCloudStore)
      {
        historyTokenForCloudStore2 = [v29 historyTokenForCloudStore];
        hmd_cloudPrivateStoreIdentifier = [v106 hmd_cloudPrivateStoreIdentifier];
        [v28 setObject:historyTokenForCloudStore2 forKeyedSubscript:hmd_cloudPrivateStoreIdentifier];
      }

      historyTokenForCloudSharedStore = [v29 historyTokenForCloudSharedStore];

      if (historyTokenForCloudSharedStore)
      {
        historyTokenForCloudSharedStore2 = [v29 historyTokenForCloudSharedStore];
        hmd_cloudSharedStoreIdentifier = [v106 hmd_cloudSharedStoreIdentifier];
        [v28 setObject:historyTokenForCloudSharedStore2 forKeyedSubscript:hmd_cloudSharedStoreIdentifier];
      }

      historyTokenForWorkingStore = [v29 historyTokenForWorkingStore];

      if (historyTokenForWorkingStore)
      {
        historyTokenForWorkingStore2 = [v29 historyTokenForWorkingStore];
        hmd_workingStoreIdentifier = [v106 hmd_workingStoreIdentifier];
        [v28 setObject:historyTokenForWorkingStore2 forKeyedSubscript:hmd_workingStoreIdentifier];
      }

      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Fetched metadata for the first time: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      cd_rawData = v40[1].super.super._cd_rawData;
      v40[1].super.super._cd_rawData = v28;
    }

    if (!identifiersCopy)
    {
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __114__HMDCoreDataCloudTransform__runTransformWhilePerformingBlockOnContext_storeIdentifiers_completeMergeHomeModelID___block_invoke_133;
      v108[3] = &unk_278678EE8;
      v108[4] = selfCopy;
      v109 = v106;
      v110 = v104;
      [v110 hmf_enumerateWithAutoreleasePoolUsingBlock:v108];

LABEL_76:
      v88 = objc_autoreleasePoolPush();
      v89 = selfCopy;
      v90 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        v91 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v91;
        _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_DEBUG, "%{public}@Resetting after transform", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v88);
      [v106 reset];
      v92 = objc_autoreleasePoolPush();
      v93 = v89;
      v94 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        v95 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v95;
        _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_DEBUG, "%{public}@Finished transform", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v92);
      goto LABEL_81;
    }

    v44 = objc_autoreleasePoolPush();
    v45 = selfCopy;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v47;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2112;
      v142 = identifiersCopy;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Starting complete merge transform for home with modelID %{mask.hash}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v44);
    v48 = v106;
    v49 = identifiersCopy;
    [v48 hmd_assertIsExecuting];
    v50 = v49;
    v51 = v48;
    [v51 hmd_assertIsExecuting];
    hmd_coreData = [v51 hmd_coreData];
    v101 = hmd_coreData;
    if (!hmd_coreData)
    {
      v62 = objc_autoreleasePoolPush();
      v63 = v45;
      v64 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v65;
        _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@HMDCoreData deallocated before running complete merge import", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v62);
      goto LABEL_73;
    }

    cloudPrivateStore = [hmd_coreData cloudPrivateStore];
    v103 = +[MKFCKHome fetchRequest];
    v53 = [(MKFCKModel *)MKFCKHome predicateWithModelID:v50];
    [v103 setPredicate:v53];

    v54 = +[(MKFCKModel *)MKFCKHome];
    [v103 setPropertiesToFetch:v54];

    v146[0] = cloudPrivateStore;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:1];
    [v103 setAffectedStores:v55];

    v132 = 0;
    v99 = [v51 executeFetchRequest:v103 error:&v132];
    v56 = v132;
    if (!v99)
    {
      v66 = objc_autoreleasePoolPush();
      v67 = v45;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        *buf = 138544130;
        *&buf[4] = v69;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v142 = v50;
        LOWORD(v143) = 2114;
        *(&v143 + 2) = v56;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud home with modelID %{mask.hash}@: %{public}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v66);
      goto LABEL_72;
    }

    firstObject = [v99 firstObject];
    v126 = 0;
    v127 = &v126;
    v128 = 0x3032000000;
    v129 = __Block_byref_object_copy__121531;
    v130 = __Block_byref_object_dispose__121532;
    v131 = 0;
    v120 = 0;
    v121 = &v120;
    v122 = 0x3032000000;
    v123 = __Block_byref_object_copy__121531;
    v124 = __Block_byref_object_dispose__121532;
    v125 = 0;
    if (firstObject)
    {
      v98 = v56;
      goto LABEL_35;
    }

    v70 = +[MKFCKHome entity];
    v119 = v56;
    v71 = [cloudPrivateStore hmd_tombstonesForEntity:v70 duration:v51 context:&v119 error:0.0];
    v98 = v119;

    if (!v71)
    {
      v58 = objc_autoreleasePoolPush();
      v59 = v45;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v81 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v81;
        *&buf[12] = 2114;
        *&buf[14] = v98;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch tombstones for cloud homes: %{public}@", buf, 0x16u);
      }

      goto LABEL_38;
    }

    v115 = 0;
    v116 = &v115;
    v117 = 0x2020000000;
    v118 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __83__HMDCoreDataCloudTransform__performCompleteMergeImportForHomeWithModelID_context___block_invoke;
    v142 = &unk_278678F10;
    v72 = v50;
    *&v143 = v72;
    *(&v143 + 1) = &v126;
    v144 = &v120;
    v145 = &v115;
    [v71 enumerateKeysAndObjectsUsingBlock:buf];
    if (v127[5])
    {
      if (*(v116 + 24) != 1)
      {

        _Block_object_dispose(&v115, 8);
LABEL_35:
        if ([firstObject isFake])
        {
          v58 = objc_autoreleasePoolPush();
          v59 = v45;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = HMFGetLogIdentifier();
            *v133 = 138543618;
            v134 = v61;
            v135 = 2112;
            v136 = firstObject;
            _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Refusing to merge fake home: %@", v133, 0x16u);
          }

LABEL_38:

          objc_autoreleasePoolPop(v58);
LABEL_71:
          _Block_object_dispose(&v120, 8);

          _Block_object_dispose(&v126, 8);
          v56 = v98;
LABEL_72:

LABEL_73:
          v84 = objc_autoreleasePoolPush();
          v85 = v45;
          v86 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v87 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v87;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v142 = v50;
            _os_log_impl(&dword_229538000, v86, OS_LOG_TYPE_INFO, "%{public}@Finished complete merge transform for home with modelID %{mask.hash}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v84);
          goto LABEL_76;
        }

        v77 = [HMDCoreDataCloudTransformChangeSet alloc];
        if (v77)
        {
          v71 = [(HMDCoreDataCloudTransformChangeSet *)&v77->super.isa initWithHomeModelID:v50 clientIdentifier:0 qualityOfService:0xFFFFFFFFFFFFFFFFLL];
          if (firstObject)
          {
LABEL_53:
            v78 = [firstObject fetchLocalModelWithContext:v51];
            if (v78)
            {
              objectID = [firstObject objectID];
              v80 = [MEMORY[0x277CBEB98] set];
              [(HMDCoreDataCloudTransformChangeSet *)v71 processUpdate:objectID updatedProperties:v80];
            }

            else
            {
              objectID = [firstObject objectID];
              if (v71)
              {
                [*(v71 + 8) addObject:objectID];
              }
            }

            goto LABEL_67;
          }
        }

        else
        {
          v71 = 0;
          if (firstObject)
          {
            goto LABEL_53;
          }
        }

        [(HMDCoreDataCloudTransformChangeSet *)v71 processDelete:v121[5] tombstone:?];
LABEL_67:
        if (v71)
        {
          *(v71 + 32) = 1;
        }

        [(HMDCoreDataCloudTransform *)v45 _processChangeSet:v71 isImport:1 context:v51];
        [v51 rollback];
        [v51 refreshAllObjects];
        goto LABEL_70;
      }

      v96 = v72;
      context = objc_autoreleasePoolPush();
      v73 = v45;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = HMFGetLogIdentifier();
        v76 = v127[5];
        *v133 = 138544130;
        v134 = v75;
        v135 = 2112;
        v136 = v76;
        v137 = 2160;
        v138 = 1752392040;
        v139 = 2112;
        v140 = v96;
        _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@Refusing to merge deleted fake home: <%@: %{mask.hash}@>", v133, 0x2Au);
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v82 = v45;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v83 = HMFGetLogIdentifier();
        *v133 = 138543874;
        v134 = v83;
        v135 = 2160;
        v136 = 1752392040;
        v137 = 2112;
        v138 = v72;
        _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Didn't find home with modelID %{mask.hash}@", v133, 0x20u);
      }
    }

    objc_autoreleasePoolPop(context);
    _Block_object_dispose(&v115, 8);
LABEL_70:

    goto LABEL_71;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not running transform due operating in bad CDP state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
LABEL_82:
}

- (void)_delayContextDestruction:(uint64_t)destruction
{
  v3 = a2;
  if (destruction)
  {
    v4 = dispatch_get_global_queue(9, 0);
    v5 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDCoreDataCloudTransform__delayContextDestruction___block_invoke;
    block[3] = &unk_27868A728;
    v7 = v3;
    dispatch_after(v5, v4, block);
  }
}

void __114__HMDCoreDataCloudTransform__runTransformWhilePerformingBlockOnContext_storeIdentifiers_completeMergeHomeModelID___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 identifier];
  v4 = *(a1 + 32);
  if (!v4 || [v4 containsObject:v3])
  {
    v5 = [*(a1 + 40) hmd_cloudPrivateStoreIdentifier];
    if ([v3 isEqualToString:v5])
    {
LABEL_6:

LABEL_7:
      [*(a1 + 48) addObject:v9];
      goto LABEL_8;
    }

    v6 = [*(a1 + 40) hmd_cloudSharedStoreIdentifier];
    if ([v3 isEqualToString:v6])
    {

      goto LABEL_6;
    }

    v7 = [*(a1 + 40) hmd_workingStoreIdentifier];
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

void __114__HMDCoreDataCloudTransform__runTransformWhilePerformingBlockOnContext_storeIdentifiers_completeMergeHomeModelID___block_invoke_133(id *a1, void *a2, _BYTE *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 configurationName];
    v11 = [v5 identifier];
    v24 = 138543874;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting transform for store [%{public}@] with identifier: %{public}@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  [a1[4] _processHistoryForStore:v5 context:a1[5]];
  v12 = objc_autoreleasePoolPush();
  v13 = a1[4];
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v5 configurationName];
    v17 = [v5 identifier];
    v24 = 138543874;
    v25 = v15;
    v26 = 2114;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Finished transform for store [%{public}@] with identifier: %{public}@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (([a1[6] count] - 1) != a3)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v5 configurationName];
      v23 = [v5 identifier];
      v24 = 138543874;
      v25 = v21;
      v26 = 2114;
      v27 = v22;
      v28 = 2114;
      v29 = v23;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Cleaning up after transform for store [%{public}@] with identifier: %{public}@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [a1[5] rollback];
    [a1[5] refreshAllObjects];
  }
}

void __83__HMDCoreDataCloudTransform__performCompleteMergeImportForHomeWithModelID_context___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v8 = a3;
  v9 = [v8 hmf_UUIDForKey:@"modelID"];
  if ([v9 isEqual:a1[4]])
  {
    *a4 = 1;
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    v10 = [v8 hmf_UUIDForKey:@"flags"];
    v11 = v10;
    if (v10)
    {
      v13 = 0;
      v14 = 0;
      [v10 getUUIDBytes:&v13];
      if ((v14 & 0x80000000000) != 0)
      {
        *(*(a1[7] + 8) + 24) = 1;
      }
    }
  }
}

void __50__HMDCoreDataCloudTransform__managedObjectContext__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_opt_class();
  v3 = objc_opt_self();
  v4 = NSStringFromClass(v3);
  [*(a1 + 32) setName:v4];

  v5 = [*(a1 + 48) cloudPrivateStore];
  v6 = [v5 identifier];
  [*(a1 + 32) setHmd_cloudPrivateStoreIdentifier:v6];

  v7 = [*(a1 + 48) cloudSharedStore];
  v8 = [v7 identifier];
  [*(a1 + 32) setHmd_cloudSharedStoreIdentifier:v8];

  v9 = [*(a1 + 48) workingStore];
  v10 = [v9 identifier];
  [*(a1 + 32) setHmd_workingStoreIdentifier:v10];

  v11 = *(a1 + 40);
  if (v11)
  {
    LOBYTE(v11) = *(v11 + 40);
  }

  [*(a1 + 32) setHmd_fakeRecordsEnabled:v11 & 1];

  objc_autoreleasePoolPop(v2);
}

- (void)coreData:(id)data cloudKitImportStartedForStoreWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  cloudImportInProgressStoreIdentifiers = [(HMDCoreDataCloudTransform *)&self->super.super.isa cloudImportInProgressStoreIdentifiers];
  [cloudImportInProgressStoreIdentifiers addObject:identifierCopy];

  os_unfair_lock_unlock(&self->_lock.lock);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = identifierCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@CloudKit import started for store %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  logger = selfCopy->_logger;
  if (os_signpost_enabled(logger))
  {
    v14 = 138412290;
    v15 = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CoreDataCloudTransformImport", "storeIdentifier=%{signpost.description:attribute}@ ", &v14, 0xCu);
  }

  selfCopy->_importSignpostID = 0xEEEEB0B5B2B2EEEELL;
}

- (void)coreData:(id)data persistentStoreWithIdentifierDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  changeCopy = change;
  os_unfair_lock_lock_with_options();
  if (self && [(NSMutableSet *)self->_cloudImportInProgressStoreIdentifiers count])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = changeCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Waiting for cloud import to finish before running transform on store %{public}@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = selfCopy->_pendingChangedStoreIdentifiers;
    [(NSMutableSet *)v12 addObject:changeCopy];

    os_unfair_lock_unlock(&self->_lock.lock);
  }

  else
  {
    _managedObjectContext = [(HMDCoreDataCloudTransform *)&self->super.super.isa _managedObjectContext];
    pendingChangedStoreIdentifiers = [(HMDCoreDataCloudTransform *)&self->super.super.isa pendingChangedStoreIdentifiers];
    v15 = [pendingChangedStoreIdentifiers setByAddingObject:changeCopy];

    pendingChangedStoreIdentifiers2 = [(HMDCoreDataCloudTransform *)&self->super.super.isa pendingChangedStoreIdentifiers];
    [pendingChangedStoreIdentifiers2 removeAllObjects];

    os_unfair_lock_unlock(&self->_lock.lock);
    [(HMDCoreDataCloudTransform *)self _runTransformOnContext:_managedObjectContext storeIdentifiers:v15 completeMergeHomeModelID:0 completion:0];
  }
}

- (BOOL)badCDPState
{
  userDefaults = [(HMDCoreDataCloudTransform *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"badCDPState"];

  return v3;
}

- (id)newCloudMirrorExportStatusMonitor
{
  v3 = [HMDCoreDataCloudMirroringExportStatusMonitor alloc];
  coreData = [(HMDCoreDataCloudTransform *)self coreData];
  managedObjectContext = [(HMDCoreDataCloudTransform *)self managedObjectContext];
  v6 = [(HMDCoreDataCloudMirroringExportStatusMonitor *)v3 initWithCoreData:coreData managedObjectContext:managedObjectContext];

  return v6;
}

- (void)registerCloudChangeListener:(id)listener forEntities:(id)entities
{
  listenerCopy = listener;
  entitiesCopy = entities;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke;
  v20[3] = &unk_278678E48;
  v9 = v8;
  v21 = v9;
  [entitiesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v20];
  managedObjectContext = [(HMDCoreDataCloudTransform *)self managedObjectContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_3;
  v15[3] = &unk_278689550;
  v15[4] = self;
  v16 = listenerCopy;
  v17 = entitiesCopy;
  v18 = v9;
  v19 = managedObjectContext;
  v11 = managedObjectContext;
  v12 = v9;
  v13 = entitiesCopy;
  v14 = listenerCopy;
  [v11 performBlock:v15];
}

void __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_2;
  v3[3] = &unk_278678E20;
  v4 = *(a1 + 32);
  [a2 hmd_recursivelyEnumerateSubentitiesUsingBlock:v3];
}

void __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) valueForKeyPath:@"name"];
    *buf = 138543874;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Adding listener %@ for entity types %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 56);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_105;
  v18 = &unk_278678E70;
  v9 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v9;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      *buf = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Starting listener %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 40) willStartListeningWithContext:{*(a1 + 64), v15, v16, v17, v18, v19}];
  }
}

void __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_105(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 96);
  }

  else
  {
    v5 = 0;
  }

  v9 = v3;
  v6 = [v5 objectForKey:v3];
  if (!v6)
  {
    v6 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 96);
    }

    else
    {
      v8 = 0;
    }

    [v8 setObject:v6 forKey:v9];
  }

  [v6 hmf_addObject:*(a1 + 40)];
}

void __69__HMDCoreDataCloudTransform_registerCloudChangeListener_forEntities___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isAbstract] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)runCompleteMergeTransformForHomeWithModelID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Complete merge requested", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  managedObjectContext = [(HMDCoreDataCloudTransform *)selfCopy managedObjectContext];
  [(HMDCoreDataCloudTransform *)selfCopy _runTransformOnContext:managedObjectContext storeIdentifiers:0 completeMergeHomeModelID:dCopy completion:completionCopy];
}

- (void)runTransformWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Manual run requested", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  managedObjectContext = [(HMDCoreDataCloudTransform *)selfCopy managedObjectContext];
  [(HMDCoreDataCloudTransform *)selfCopy _runTransformOnContext:managedObjectContext storeIdentifiers:0 completeMergeHomeModelID:0 completion:completionCopy];
}

- (BOOL)runTransformWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Synchronous manual run requested", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  managedObjectContext = [(HMDCoreDataCloudTransform *)selfCopy managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HMDCoreDataCloudTransform_runTransformWithError___block_invoke;
  v10[3] = &unk_27868A728;
  v10[4] = selfCopy;
  [managedObjectContext performBlockAndWait:v10];

  return 1;
}

void __51__HMDCoreDataCloudTransform_runTransformWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 managedObjectContext];
  [(HMDCoreDataCloudTransform *)v2 _runTransformWhilePerformingBlockOnContext:v3 storeIdentifiers:0 completeMergeHomeModelID:0];

  v4 = *(a1 + 32);
  v5 = [v4 managedObjectContext];
  [(HMDCoreDataCloudTransform *)v4 _delayContextDestruction:v5];
}

- (id)managedObjectContext
{
  os_unfair_lock_lock_with_options();
  _managedObjectContext = [(HMDCoreDataCloudTransform *)&self->super.super.isa _managedObjectContext];
  os_unfair_lock_unlock(&self->_lock.lock);

  return _managedObjectContext;
}

- (HMDCoreDataCloudTransform)initWithCoreData:(id)data fakeRecordsEnabled:(BOOL)enabled logEventSubmitter:(id)submitter userDefaults:(id)defaults
{
  dataCopy = data;
  submitterCopy = submitter;
  defaultsCopy = defaults;
  v26.receiver = self;
  v26.super_class = HMDCoreDataCloudTransform;
  v14 = [(HMDCoreDataCloudTransform *)&v26 init];
  if (v14)
  {
    v15 = HMFGetOSLogHandle();
    logger = v14->_logger;
    v14->_logger = v15;

    v14->_lock.lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_coreData, data);
    v17 = [MEMORY[0x277CBEB58] set];
    pendingChangedStoreIdentifiers = v14->_pendingChangedStoreIdentifiers;
    v14->_pendingChangedStoreIdentifiers = v17;

    v19 = objc_opt_new();
    cloudImportInProgressStoreIdentifiers = v14->_cloudImportInProgressStoreIdentifiers;
    v14->_cloudImportInProgressStoreIdentifiers = v19;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    cloudChangeListeners = v14->_cloudChangeListeners;
    v14->_cloudChangeListeners = strongToStrongObjectsMapTable;

    v14->_fakeRecordsEnabled = enabled;
    objc_storeStrong(&v14->_logEventSubmitter, submitter);
    v23 = objc_alloc_init(HMDCoreDataCloudTransformMergePolicy);
    mergePolicy = v14->_mergePolicy;
    v14->_mergePolicy = v23;

    objc_storeStrong(&v14->_userDefaults, defaults);
    [dataCopy addNotificationListener:v14];
  }

  return v14;
}

- (HMDCoreDataCloudTransform)initWithCoreData:(id)data logEventSubmitter:(id)submitter
{
  v6 = MEMORY[0x277CBEBD0];
  submitterCopy = submitter;
  dataCopy = data;
  standardUserDefaults = [v6 standardUserDefaults];
  v10 = [(HMDCoreDataCloudTransform *)self initWithCoreData:dataCopy fakeRecordsEnabled:1 logEventSubmitter:submitterCopy userDefaults:standardUserDefaults];

  return v10;
}

- (HMDCoreDataCloudTransform)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (BOOL)transactionIsCloudStoreReset:(id)reset context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  contextCopy = context;
  author = [resetCopy author];
  v9 = [author isEqualToString:@"NSCloudKitMirroringDelegate.reset"];

  if (v9)
  {
    storeID = [resetCopy storeID];
    hmd_coreData = [contextCopy hmd_coreData];
    cloudSharedStore = [hmd_coreData cloudSharedStore];
    identifier = [cloudSharedStore identifier];
    v14 = [storeID isEqualToString:identifier];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(resetCopy, "transactionNumber")}];
        v26 = 138543618;
        v27 = v18;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Not processing reset on shared store : %@", &v26, 0x16u);
      }

      v20 = 0;
    }

    else
    {
      changes = [resetCopy changes];
      v20 = [changes na_any:&__block_literal_global_195];

      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v24 = HMFBooleanToString();
        v26 = 138543874;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        v30 = 2114;
        v31 = resetCopy;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Reset detected : %@, Transaction: %{public}@", &v26, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

BOOL __66__HMDCoreDataCloudTransform_transactionIsCloudStoreReset_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 changedObjectID];
  v4 = [v3 entity];
  v5 = +[MKFCKHome entity];
  if ([v4 isKindOfEntity:v5])
  {
    v6 = [v2 changeType] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)detectExcessiveHistoryPruningInContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDCoreDataCloudTransform_detectExcessiveHistoryPruningInContext___block_invoke;
  v7[3] = &unk_2786852B8;
  v5 = contextCopy;
  v9 = &v11;
  selfCopy = self;
  v8 = v5;
  [v5 performBlockAndWait:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __68__HMDCoreDataCloudTransform_detectExcessiveHistoryPruningInContext___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = +[MKFCloudSyncMetadata fetchRequest];
  v3 = *(a1 + 32);
  v35 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v35];
  v5 = v35;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      objc_autoreleasePoolPop(v6);
      goto LABEL_17;
    }

    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = v5;
    v10 = "%{public}@Excessive history pruning: failed to fetch cloud sync metadata: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
LABEL_4:
    _os_log_impl(&dword_229538000, v11, v12, v10, buf, v13);

    goto LABEL_5;
  }

  if (![v4 count])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v9;
    v10 = "%{public}@Excessive history pruning: No cloud sync metadata found, skipping history pruning check";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 12;
    goto LABEL_4;
  }

  v14 = [v4 firstObject];
  v15 = [*(a1 + 32) hmd_coreData];
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [v14 historyTokenForCloudStore];
  if (v17)
  {
    v18 = v17;
    v19 = [v15 cloudPrivateStore];

    if (v19)
    {
      v20 = [v15 cloudPrivateStore];
      v21 = [v14 historyTokenForCloudStore];
      [v16 setObject:v20 forKeyedSubscript:v21];
    }
  }

  v22 = [v14 historyTokenForCloudSharedStore];
  if (v22)
  {
    v23 = v22;
    v24 = [v15 cloudSharedStore];

    if (v24)
    {
      v25 = [v15 cloudSharedStore];
      v26 = [v14 historyTokenForCloudSharedStore];
      [v16 setObject:v25 forKeyedSubscript:v26];
    }
  }

  v27 = [v14 historyTokenForWorkingStore];
  if (v27)
  {
    v28 = v27;
    v29 = [v15 workingStore];

    if (v29)
    {
      v30 = [v15 workingStore];
      v31 = [v14 historyTokenForWorkingStore];
      [v16 setObject:v30 forKeyedSubscript:v31];
    }
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __68__HMDCoreDataCloudTransform_detectExcessiveHistoryPruningInContext___block_invoke_188;
  v32[3] = &unk_278678FB0;
  v33 = *(a1 + 32);
  v34 = *(a1 + 40);
  [v16 enumerateKeysAndObjectsUsingBlock:v32];

LABEL_17:
}

void __68__HMDCoreDataCloudTransform_detectExcessiveHistoryPruningInContext___block_invoke_188(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v7];
  v36[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v9 setAffectedStores:v10];

  [v9 setFetchBatchSize:1];
  v11 = *(a1 + 32);
  v27 = 0;
  v12 = [v11 executeRequest:v9 error:&v27];
  v13 = v27;
  v14 = [v13 domain];
  if ([v14 isEqual:*MEMORY[0x277CCA050]])
  {
    v15 = [v13 code];

    if (v15 == 134301)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 48);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        [v8 identifier];
        v20 = v26 = v16;
        *buf = 138544130;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        v32 = 2112;
        v33 = v7;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Expired token for store %@ with token %@: %@", buf, 0x2Au);

        v16 = v26;
      }

      objc_autoreleasePoolPop(v16);
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  if (v13)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 48);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v8 identifier];
      *buf = 138544130;
      v29 = v24;
      v30 = 2112;
      v31 = v25;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_FAULT, "%{public}@Fetching history for store %@ with token %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
  }

LABEL_11:
}

+ (void)wipeCoreDataStorageDueToPCSIdentityLossAndRelaunchHomeKitDaemon
{
  v14 = *MEMORY[0x277D85DE8];
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (aa_primaryAppleAccount)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@PCS identities lost: Will be removing working, cloud, shared cloud, and client stores", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [HMDResetConfigPostCleanup writePostCleanupRecordWithReason:5 steps:278];
    v10 = +[HMDMainDriver driver];
    [v10 relaunch];
  }

  else
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@PCS identities lost: Not going to remove the CD stores as user is in the process of signing out.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [HMDResetConfigPostCleanup writePostCleanupRecordWithReason:2 steps:-1];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_121807 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_121807, &__block_literal_global_117);
  }

  v3 = logCategory__hmf_once_v16_121808;

  return v3;
}

void __40__HMDCoreDataCloudTransform_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v16_121808;
  logCategory__hmf_once_v16_121808 = v0;
}

+ (id)localTransformableEntityFromEntity:(id)entity
{
  entityCopy = entity;
  managedObjectModel = [entityCopy managedObjectModel];
  if (localTransformableEntityFromEntity___hmf_once_t4 != -1)
  {
    dispatch_once(&localTransformableEntityFromEntity___hmf_once_t4, &__block_literal_global_91_121812);
  }

  v6 = localTransformableEntityFromEntity___hmf_once_v5;
  name = [entityCopy name];
  v8 = [v6 objectForKey:name];

  if (v8)
  {
    v9 = *MEMORY[0x277CBEEE8];
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__121531;
    v28 = __Block_byref_object_dispose__121532;
    v29 = 0;
    entities = [managedObjectModel entities];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__HMDCoreDataCloudTransform_localTransformableEntityFromEntity___block_invoke_93;
    v20[3] = &unk_278678DF8;
    selfCopy = self;
    v11 = entityCopy;
    v21 = v11;
    v22 = &v24;
    [entities hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

    v12 = v25[5];
    v9 = *MEMORY[0x277CBEEE8];
    if (!v12)
    {
      v12 = *MEMORY[0x277CBEEE8];
    }

    v8 = v12;
    name2 = [v11 name];
    [v6 setObject:v8 forKey:name2];

    _Block_object_dispose(&v24, 8);
  }

  if (v9 == v8)
  {
    v18 = 0;
  }

  else
  {
    v14 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    entitiesByName = [managedObjectModel entitiesByName];
    v18 = [entitiesByName objectForKeyedSubscript:v16];
  }

  return v18;
}

uint64_t __64__HMDCoreDataCloudTransform_localTransformableEntityFromEntity___block_invoke_93(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  v6 = [v16 managedObjectClassName];
  v7 = NSClassFromString(v6);
  LODWORD(v7) = [(objc_class *)v7 isSubclassOfClass:objc_opt_class()];

  if (v7)
  {
    v8 = [*(a1 + 48) exportTransformableEntityFromEntity:v16];
    v9 = [v8 name];
    v10 = [*(a1 + 32) name];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [v16 name];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      *a4 = 1;
    }
  }

  return MEMORY[0x2821F9730]();
}

void __64__HMDCoreDataCloudTransform_localTransformableEntityFromEntity___block_invoke()
{
  v0 = objc_opt_new();
  v1 = localTransformableEntityFromEntity___hmf_once_v5;
  localTransformableEntityFromEntity___hmf_once_v5 = v0;
}

+ (Class)exportTransformableClassFromEntity:(id)entity
{
  entityCopy = entity;
  v5 = [self exportTransformableEntityFromEntity:entityCopy];
  v6 = v5;
  if (v5)
  {
    managedObjectClassName = [v5 managedObjectClassName];
LABEL_4:
    v9 = NSClassFromString(managedObjectClassName);

    goto LABEL_5;
  }

  userInfo = [entityCopy userInfo];
  managedObjectClassName = [userInfo objectForKeyedSubscript:@"cloudSyncClass"];

  if (managedObjectClassName)
  {
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

+ (id)exportTransformableEntityFromEntity:(id)entity
{
  entityCopy = entity;
  userInfo = [entityCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"cloudSyncEntity"];
  if (v5)
  {
    managedObjectModel = [entityCopy managedObjectModel];
    entitiesByName = [managedObjectModel entitiesByName];
    v8 = [entitiesByName objectForKeyedSubscript:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (Class)importTransformableClassFromEntity:(id)entity
{
  managedObjectClassName = [entity managedObjectClassName];
  v4 = NSClassFromString(managedObjectClassName);
  if (importTransformableClassFromEntity___hmf_once_t2 != -1)
  {
    dispatch_once(&importTransformableClassFromEntity___hmf_once_t2, &__block_literal_global_121816);
  }

  if (![importTransformableClassFromEntity___hmf_once_v3 classConforms:v4])
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __64__HMDCoreDataCloudTransform_importTransformableClassFromEntity___block_invoke()
{
  v0 = [[HMCConformanceCache alloc] initWithProtocol:&unk_283EB9AD0];
  v1 = importTransformableClassFromEntity___hmf_once_v3;
  importTransformableClassFromEntity___hmf_once_v3 = v0;
}

+ (HMDCoreDataCloudTransform)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDCoreDataCloudTransform_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__hmf_once_t0_121819 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0_121819, block);
  }

  v2 = sharedInstance__hmf_once_v1_121820;

  return v2;
}

void __43__HMDCoreDataCloudTransform_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v5 = +[HMDCoreData sharedInstance];
  v2 = +[HMDMetricsManager sharedLogEventSubmitter];
  v3 = [v1 initWithCoreData:v5 logEventSubmitter:v2];
  v4 = sharedInstance__hmf_once_v1_121820;
  sharedInstance__hmf_once_v1_121820 = v3;
}

+ (HMDCoreDataCloudTransform)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end