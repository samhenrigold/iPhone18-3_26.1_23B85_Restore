@interface HDCloudSyncComputePullTargetsOperation
+ (id)finishedOperationTags;
+ (id)operationTagDependencies;
- (BOOL)performWithError:(id *)error;
@end

@implementation HDCloudSyncComputePullTargetsOperation

+ (id)operationTagDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)finishedOperationTags
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-pull-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)performWithError:(id *)error
{
  selfCopy = self;
  v125 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profile = [repository profile];
  cloudSyncManager = [profile cloudSyncManager];
  isChild = [cloudSyncManager isChild];

  if ((isChild & 1) == 0)
  {
    configuration2 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository2 = [configuration2 repository];
    primaryCKContainer = [repository2 primaryCKContainer];

    configuration3 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository3 = [configuration3 repository];
    v16 = [repository3 cachedOwnerIdentifierForContainer:primaryCKContainer];
    string = [v16 string];

    if (!selfCopy)
    {
      goto LABEL_61;
    }

    configuration4 = [(HDCloudSyncOperation *)selfCopy configuration];
    computedState = [configuration4 computedState];
    pushTargets = [computedState pushTargets];
    v80 = [pushTargets hk_mapToSet:&__block_literal_global_162];

    v21 = selfCopy;
    configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
    cachedCloudState = [configuration5 cachedCloudState];
    v111 = 0;
    v24 = [cachedCloudState zonesByIdentifierWithError:&v111];
    v25 = v111;

    if (v24 || !v25)
    {
      if (v24)
      {
        v75 = v25;
        v87 = selfCopy;
        v77 = string;
        v78 = primaryCKContainer;
        v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v76 = v24;
        obj = [v24 allValues];
        v28 = [obj countByEnumeratingWithState:&v107 objects:v122 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v108;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v108 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v107 + 1) + 8 * i);
              v33 = objc_opt_class();
              v106 = 0;
              v102[0] = MEMORY[0x277D85DD0];
              v102[1] = 3221225472;
              v102[2] = __64__HDCloudSyncComputePullTargetsOperation__pullTargetsWithError___block_invoke_301;
              v102[3] = &unk_27861D8D0;
              v103 = v80;
              v104 = v79;
              v105 = v32;
              v34 = [v32 recordsForClass:v33 epoch:0 error:&v106 enumerationHandler:v102];
              v35 = v106;
              if ((v34 & 1) == 0)
              {
                _HKInitializeLogging();
                v59 = *MEMORY[0x277CCC328];
                v21 = selfCopy;
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                {
                  v73 = v59;
                  zoneIdentifier = [v32 zoneIdentifier];
                  *buf = 138543874;
                  v113 = selfCopy;
                  v114 = 2114;
                  v115 = zoneIdentifier;
                  v116 = 2114;
                  v117 = v35;
                  _os_log_error_impl(&dword_228986000, v73, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
                }

                v25 = v75;
                v24 = v76;
                if (v35)
                {
                  if (error)
                  {
                    v60 = v35;
                    *error = v35;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                selfCopy = 0;
                goto LABEL_50;
              }
            }

            v29 = [obj countByEnumeratingWithState:&v107 objects:v122 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        selfCopy = objc_alloc_init(MEMORY[0x277CBEB18]);
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        obj = v79;
        v82 = [obj countByEnumeratingWithState:&v98 objects:v121 count:16];
        if (v82)
        {
          v86 = selfCopy;
          v81 = *v99;
          v36 = v87;
          do
          {
            v37 = 0;
            do
            {
              if (*v99 != v81)
              {
                objc_enumerationMutation(obj);
              }

              v84 = v37;
              v38 = *(*(&v98 + 1) + 8 * v37);
              v39 = [obj objectForKeyedSubscript:v38];
              v94 = 0u;
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v85 = v39;
              v90 = [v39 countByEnumeratingWithState:&v94 objects:v120 count:16];
              if (v90)
              {
                v88 = v38;
                v89 = *v95;
                do
                {
                  for (j = 0; j != v90; ++j)
                  {
                    if (*v95 != v89)
                    {
                      objc_enumerationMutation(v85);
                    }

                    v41 = *(*(&v94 + 1) + 8 * j);
                    configuration6 = [(HDCloudSyncOperation *)v36 configuration];
                    repository4 = [configuration6 repository];
                    profile2 = [repository4 profile];
                    legacyRepositoryProfile = [profile2 legacyRepositoryProfile];
                    storeIdentifier = [v41 storeIdentifier];
                    ownerIdentifier = [v41 ownerIdentifier];
                    syncIdentity = [v41 syncIdentity];
                    containerIdentifier = [v38 containerIdentifier];
                    v93 = 0;
                    v49 = [HDCloudSyncStore syncStoreForProfile:legacyRepositoryProfile storeIdentifier:storeIdentifier ownerIdentifier:ownerIdentifier syncIdentity:syncIdentity containerIdentifier:containerIdentifier error:&v93];
                    v92 = v93;

                    v50 = v49;
                    if (v49)
                    {
                      v51 = [HDCloudSyncTarget alloc];
                      configuration7 = [(HDCloudSyncOperation *)v87 configuration];
                      repository5 = [configuration7 repository];
                      containerIdentifier2 = [v88 containerIdentifier];
                      v55 = [repository5 containerForContainerIdentifier:containerIdentifier2];
                      v56 = [(HDCloudSyncTarget *)v51 initWithPurpose:1 container:v55 zoneIdentifier:v88 storeRecord:v41 store:v50 options:0];

                      [(HDCloudSyncComputePullTargetsOperation *)v86 addObject:v56];
                      v36 = v87;
                      v38 = v88;
                      v57 = v92;
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v58 = *MEMORY[0x277CCC328];
                      v36 = v87;
                      v38 = v88;
                      v57 = v92;
                      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138544130;
                        v113 = v87;
                        v114 = 2114;
                        v115 = v41;
                        v116 = 2114;
                        v117 = v88;
                        v118 = 2114;
                        v119 = v92;
                        _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup store for store record: %{public}@ zone: %{public}@ error: %{public}@", buf, 0x2Au);
                      }
                    }
                  }

                  v90 = [v85 countByEnumeratingWithState:&v94 objects:v120 count:16];
                }

                while (v90);
              }

              v37 = v84 + 1;
            }

            while (v84 + 1 != v82);
            v82 = [obj countByEnumeratingWithState:&v98 objects:v121 count:16];
          }

          while (v82);
          v21 = v36;
          string = v77;
          primaryCKContainer = v78;
          v25 = v75;
          v24 = v76;
          selfCopy = v86;
        }

        else
        {
          v21 = v87;
          v25 = v75;
          v24 = v76;
        }

LABEL_50:
      }

      else
      {
        _HKInitializeLogging();
        v61 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v113 = selfCopy;
          _os_log_debug_impl(&dword_228986000, v61, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found while generating pull targets.", buf, 0xCu);
        }

        selfCopy = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v113 = selfCopy;
        v114 = 2114;
        v115 = v25;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers while generating pull targets, %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v27 = v25;
        selfCopy = 0;
        *error = v25;
      }

      else
      {
        _HKLogDroppedError();
        selfCopy = 0;
      }
    }

    if (!selfCopy)
    {
LABEL_61:
      v10 = 0;
LABEL_65:

      return v10;
    }

    configuration8 = [(HDCloudSyncOperation *)v21 configuration];
    computedState2 = [configuration8 computedState];
    [computedState2 addTargets:selfCopy];

    _HKInitializeLogging();
    v64 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v65 = v64;
      v66 = [(HDCloudSyncComputePullTargetsOperation *)selfCopy count];
      *v122 = 138543874;
      *&v122[4] = v21;
      *&v122[12] = 2048;
      *&v122[14] = v66;
      *&v122[22] = 2114;
      v123 = string;
      _os_log_impl(&dword_228986000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %ld pull targets for owner %{public}@", v122, 0x20u);
    }

    if (!+[HDCloudSyncTapToRadar isTapToRadarAllowed])
    {
LABEL_64:
      v10 = 1;
      goto LABEL_65;
    }

    v67 = [(HDCloudSyncComputePullTargetsOperation *)selfCopy count];
    if (v67 <= *MEMORY[0x277CCE480])
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults removeObjectForKey:*MEMORY[0x277CCE488]];
      goto LABEL_63;
    }

    standardUserDefaults = [MEMORY[0x277CCACA8] stringWithFormat:@"Found %lu pull stores for the current device.\nPlease answer the following questions to the best of your knowledge.\nIs this a test device? If yes, is it associated with a test iCloud account?\nHow many devices are signed into this account?\nHave you recently erase installed any devices associated with this device's iCloud account?", -[HDCloudSyncComputePullTargetsOperation count](selfCopy, "count")];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (([standardUserDefaults2 BOOLForKey:*MEMORY[0x277CCE490]] & 1) == 0)
    {
      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v71 = [standardUserDefaults3 BOOLForKey:*MEMORY[0x277CCE488]];

      if (v71)
      {
LABEL_60:

LABEL_63:
        goto LABEL_64;
      }

      *v122 = MEMORY[0x277D85DD0];
      *&v122[8] = 3221225472;
      *&v122[16] = __76__HDCloudSyncComputePullTargetsOperation__requestTapToRadarWithDescription___block_invoke;
      v123 = &unk_278613968;
      v124 = standardUserDefaults;
      [HDCloudSyncTapToRadar showTapToRadarRequestWithTitle:@"Health Cloud Sync Encountered too many pull stores" message:@"Please file a radar." proceed:v122 disable:&__block_literal_global_317_4 completion:&__block_literal_global_320];
      standardUserDefaults2 = v124;
    }

    goto LABEL_60;
  }

  return 1;
}

id __64__HDCloudSyncComputePullTargetsOperation__pullTargetsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 storeRecord];
  v3 = [v2 storeIdentifier];

  return v3;
}

uint64_t __64__HDCloudSyncComputePullTargetsOperation__pullTargetsWithError___block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 storeIdentifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) zoneIdentifier];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      [v8 addObject:v3];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v3, 0}];
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) zoneIdentifier];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }
  }

  return 1;
}

void __76__HDCloudSyncComputePullTargetsOperation__requestTapToRadarWithDescription___block_invoke(uint64_t a1)
{
  [HDCloudSyncTapToRadar openTapToRadarWithTitle:@"[Cloud Sync] Changes Sync: Encountered too many pull stores" description:*(a1 + 32)];
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v1 setBool:1 forKey:*MEMORY[0x277CCE488]];
}

void __76__HDCloudSyncComputePullTargetsOperation__requestTapToRadarWithDescription___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 setBool:1 forKey:*MEMORY[0x277CCE490]];
}

@end