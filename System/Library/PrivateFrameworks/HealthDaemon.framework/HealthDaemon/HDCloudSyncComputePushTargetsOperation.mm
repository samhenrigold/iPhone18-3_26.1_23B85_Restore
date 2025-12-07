@interface HDCloudSyncComputePushTargetsOperation
+ (id)finishedOperationTags;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncComputePushTargetsOperation

+ (id)finishedOperationTags
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)main
{
  v181 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v3;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v150 = 0;
  v9 = HDUpgradedToSyncIdentity(legacyRepositoryProfile, &v150);
  v10 = v150;
  self->_hasUpgradedToSyncIdentity = v9;

  if (v10)
  {
    v11 = self->_taskGroup;
    goto LABEL_3;
  }

  if (self->_hasUpgradedToSyncIdentity)
  {
    profile2 = [(HDCloudSyncOperation *)self profile];
    syncIdentityManager = [profile2 syncIdentityManager];
    currentSyncIdentity = [syncIdentityManager currentSyncIdentity];
    identity = [currentSyncIdentity identity];
    currentSyncIdentity = self->_currentSyncIdentity;
    self->_currentSyncIdentity = identity;
  }

  v149 = 0;
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration2 repository];
  primaryCKContainer = [repository2 primaryCKContainer];

  configuration3 = [(HDCloudSyncOperation *)self configuration];
  repository3 = [configuration3 repository];
  v22 = [repository3 cachedOwnerIdentifierForContainer:primaryCKContainer];
  string = [v22 string];

  v24 = primaryCKContainer;
  v148 = string;
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  repository4 = [configuration4 repository];
  profileIdentifier = [repository4 profileIdentifier];
  v147 = v24;
  v28 = HDDatabaseForContainer(v24, profileIdentifier);
  databaseScope = [v28 databaseScope];

  configuration5 = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration5 cachedCloudState];
  v165 = 0;
  v31 = [cachedCloudState zonesByIdentifierWithError:&v165];
  v32 = v165;

  if (!v31 && v32)
  {
    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy8 = self;
      v174 = 2114;
      v175 = v32;
      _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached zone identifiers while generating push targets, %{public}@", buf, 0x16u);
    }

    v34 = v32;
    v35 = v32;
    v36 = 0;
    v149 = v35;
LABEL_41:
    v85 = v148;
    goto LABEL_73;
  }

  if (!v31)
  {
    v35 = v32;
    _HKInitializeLogging();
    v86 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      selfCopy8 = self;
      _os_log_debug_impl(&dword_228986000, v86, OS_LOG_TYPE_DEBUG, "%{public}@ No cached zones found while generating push targets.", buf, 0xCu);
    }

    v36 = MEMORY[0x277CBEBF8];
    goto LABEL_41;
  }

  v133 = v32;
  selfCopy3 = self;
  v146 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v132 = v31;
  obj = [v31 allValues];
  v37 = [obj countByEnumeratingWithState:&v161 objects:buf count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v162;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v162 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v161 + 1) + 8 * i);
        v42 = objc_opt_class();
        v160 = 0;
        v157[0] = MEMORY[0x277D85DD0];
        v157[1] = 3221225472;
        v157[2] = __89__HDCloudSyncComputePushTargetsOperation__pushTargetsForContainer_ownerIdentifier_error___block_invoke;
        v157[3] = &unk_278623B68;
        v157[4] = self;
        v157[5] = v41;
        v158 = v148;
        v159 = v146;
        v43 = [v41 recordsForClass:v42 epoch:0 error:&v160 enumerationHandler:v157];
        v44 = v160;
        if ((v43 & 1) == 0)
        {
          _HKInitializeLogging();
          v81 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v129 = v81;
            zoneIdentifier = [v41 zoneIdentifier];
            *v166 = 138543874;
            selfCopy7 = self;
            v168 = 2114;
            v169 = zoneIdentifier;
            v170 = 2114;
            v171 = v44;
            _os_log_error_impl(&dword_228986000, v129, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve records for zone identifier: %{public}@, %{public}@", v166, 0x20u);
          }

          v82 = v44;
          v83 = v82;
          v31 = v132;
          if (v82)
          {
            v84 = v82;
            v149 = v83;
          }

          v36 = 0;
          v85 = v148;
          goto LABEL_72;
        }
      }

      v38 = [obj countByEnumeratingWithState:&v161 objects:buf count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  configuration6 = [(HDCloudSyncOperation *)self configuration];
  syncDate = [configuration6 syncDate];
  v47 = [v146 hk_foldRightFrom:syncDate with:&__block_literal_global_132];

  profile3 = [(HDCloudSyncOperation *)self profile];
  containerIdentifier = [v147 containerIdentifier];
  obj = v47;
  v50 = [HDCloudSyncStore createOrUpdateShardStoresForProfile:profile3 throughDate:v47 ownerIdentifier:v148 containerIdentifier:containerIdentifier syncIdentity:self->_currentSyncIdentity error:&v149];

  if (v50)
  {
    v131 = v50;
    v144 = [v50 hk_mapToDictionary:&__block_literal_global_314];
    v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v52 = v51;
    v135 = v146;
    v141 = [v135 countByEnumeratingWithState:&v153 objects:v166 count:16];
    if (v141)
    {
      v140 = *v154;
      v134 = v51;
LABEL_23:
      v53 = 0;
      while (1)
      {
        if (*v154 != v140)
        {
          objc_enumerationMutation(v135);
        }

        v54 = *(*(&v153 + 1) + 8 * v53);
        recordID = [v54 recordID];
        zoneID = [recordID zoneID];
        containerIdentifier2 = [v147 containerIdentifier];
        v58 = [HDCloudSyncZoneIdentifier identifierForZone:zoneID container:containerIdentifier2 scope:databaseScope];

        storeIdentifier = [v54 storeIdentifier];
        v60 = [v144 objectForKeyedSubscript:storeIdentifier];

        if (v60)
        {
          v61 = [HDCloudSyncTarget alloc];
          configuration7 = [(HDCloudSyncOperation *)self configuration];
          repository5 = [configuration7 repository];
          primaryCKContainer2 = [repository5 primaryCKContainer];
          v65 = [(HDCloudSyncTarget *)v61 initWithPurpose:0 container:primaryCKContainer2 zoneIdentifier:v58 storeRecord:v54 store:v60 options:0];

          [v52 addObject:v65];
        }

        else
        {
          configuration8 = [(HDCloudSyncOperation *)self configuration];
          repository6 = [configuration8 repository];
          profile4 = [repository6 profile];
          legacyRepositoryProfile2 = [profile4 legacyRepositoryProfile];
          storeIdentifier2 = [v54 storeIdentifier];
          ownerIdentifier = [v54 ownerIdentifier];
          syncIdentity = [v54 syncIdentity];
          v71 = v58;
          selfCopy5 = self;
          v73 = syncIdentity;
          v138 = v71;
          containerIdentifier3 = [v71 containerIdentifier];
          v152 = 0;
          v65 = [HDCloudSyncStore syncStoreForProfile:legacyRepositoryProfile2 storeIdentifier:storeIdentifier2 ownerIdentifier:ownerIdentifier syncIdentity:v73 containerIdentifier:containerIdentifier3 error:&v152];
          v139 = v152;

          if (!v65)
          {
            v151 = 0;
            v88 = v54;
            v89 = v138;
            storeIdentifier3 = [v88 storeIdentifier];
            v91 = selfCopy5;
            configuration9 = [(HDCloudSyncOperation *)selfCopy5 configuration];
            repository7 = [configuration9 repository];
            profile5 = [repository7 profile];
            legacyRepositoryProfile3 = [profile5 legacyRepositoryProfile];
            v96 = [HDCloudSyncStoreEntity persistedStateForStoreUUID:storeIdentifier3 profile:legacyRepositoryProfile3 error:&v151];

            if (v96)
            {
              ownerIdentifier2 = [v96 ownerIdentifier];
              ownerIdentifier3 = [v88 ownerIdentifier];
              v99 = [ownerIdentifier2 isEqualToString:ownerIdentifier3];

              containerIdentifier4 = [v96 containerIdentifier];
              containerIdentifier5 = [v89 containerIdentifier];
              v102 = [containerIdentifier4 isEqualToString:containerIdentifier5];

              hasUpgradedToSyncIdentity = v91->_hasUpgradedToSyncIdentity;
              self = v91;
              v104 = v139;
              if (hasUpgradedToSyncIdentity)
              {
                syncIdentity2 = [v96 syncIdentity];
                syncIdentity3 = [v88 syncIdentity];
                v107 = [syncIdentity2 isEqual:syncIdentity3];

                self = selfCopy3;
              }

              else
              {
                v107 = 1;
              }

              if (v99 & v102) == 1 && (v107)
              {

                v113 = v151;
                _HKInitializeLogging();
                v114 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  v115 = v114;
                  storeIdentifier4 = [v88 storeIdentifier];
                  *v178 = 138543874;
                  *&v178[4] = self;
                  *&v178[12] = 2114;
                  *&v178[14] = storeIdentifier4;
                  *&v178[22] = 2114;
                  v179 = v139;
                  _os_log_impl(&dword_228986000, v115, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not create local push store: %{public}@ error: %{public}@", v178, 0x20u);
                }

                v112 = v139;
                v31 = v132;
                if (v112)
                {
                  v112 = v112;
                  v149 = v112;
                }

                goto LABEL_60;
              }

              v117 = @"no";
              if (v99)
              {
                v118 = @"YES";
              }

              else
              {
                v118 = @"no";
              }

              if (v102)
              {
                v119 = @"YES";
              }

              else
              {
                v119 = @"no";
              }

              if (v107)
              {
                v117 = @"YES";
              }

              v117 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid push store found: sameOwnerID=%@, sameContainerID=%@, sameSyncIdentity=%@", v118, v119, v117];
              [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
              profile6 = [(HDCloudSyncOperation *)self profile];
              cloudSyncManager = [profile6 cloudSyncManager];
              ownerIdentifierManager = [cloudSyncManager ownerIdentifierManager];
              *v178 = MEMORY[0x277D85DD0];
              *&v178[8] = 3221225472;
              *&v178[16] = __103__HDCloudSyncComputePushTargetsOperation__hasStateMismatchForStoreForStoreRecord_zoneIdentifier_error___block_invoke;
              v179 = &unk_2786130B0;
              selfCopy6 = self;
              [ownerIdentifierManager rollOwnerDifferentiatorForReason:v117 completion:v178];

              v113 = v151;
              v36 = MEMORY[0x277CBEBF8];
              v31 = v132;
            }

            else
            {

              v108 = v151;
              _HKInitializeLogging();
              v109 = *MEMORY[0x277CCC328];
              self = v91;
              v104 = v139;
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
              {
                v110 = v109;
                storeIdentifier5 = [v88 storeIdentifier];
                *v178 = 138543874;
                *&v178[4] = self;
                *&v178[12] = 2114;
                *&v178[14] = storeIdentifier5;
                *&v178[22] = 2114;
                v179 = v108;
                _os_log_impl(&dword_228986000, v110, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not validate state mismatch error when looking up local push store: %{public}@ error: %{public}@", v178, 0x20u);
              }

              v112 = v108;
              v113 = v112;
              if (v112)
              {
                v112 = v112;
                v149 = v113;
              }

              v31 = v132;
LABEL_60:

              v36 = 0;
            }

            v80 = v134;
            goto LABEL_71;
          }

          v75 = [HDCloudSyncTarget alloc];
          self = selfCopy5;
          configuration10 = [(HDCloudSyncOperation *)selfCopy5 configuration];
          repository8 = [configuration10 repository];
          primaryCKContainer3 = [repository8 primaryCKContainer];
          v58 = v138;
          v79 = -[HDCloudSyncTarget initWithPurpose:container:zoneIdentifier:storeRecord:store:options:](v75, "initWithPurpose:container:zoneIdentifier:storeRecord:store:options:", 0, primaryCKContainer3, v138, v54, v65, 4 * ([v144 count] != 0));

          [v134 addObject:v79];
          v52 = v134;
          v60 = v139;
        }

        if (v141 == ++v53)
        {
          v141 = [v135 countByEnumeratingWithState:&v153 objects:v166 count:16];
          if (v141)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    v36 = v52;
    v80 = v52;
    v31 = v132;
LABEL_71:

    v85 = v148;
    v83 = v131;
  }

  else
  {
    _HKInitializeLogging();
    v87 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *v166 = 138543362;
      selfCopy7 = self;
      _os_log_error_impl(&dword_228986000, v87, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create or update push shards.", v166, 0xCu);
    }

    v83 = 0;
    v36 = 0;
    v85 = v148;
    v31 = v132;
  }

LABEL_72:

  v35 = v133;
LABEL_73:

  if (v36)
  {
    configuration11 = [(HDCloudSyncOperation *)self configuration];
    computedState = [configuration11 computedState];
    [computedState addTargets:v36];

    _HKInitializeLogging();
    v126 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v127 = v126;
      v128 = [v36 count];
      *buf = 138543874;
      selfCopy8 = self;
      v174 = 2048;
      v175 = v128;
      v176 = 2114;
      v177 = v85;
      _os_log_impl(&dword_228986000, v127, OS_LOG_TYPE_DEFAULT, "%{public}@: Found %ld push targets for owner %{public}@", buf, 0x20u);
    }
  }

  v10 = v149;
  v11 = self->_taskGroup;
  if (v36)
  {
    [(HDSynchronousTaskGroup *)v11 finishTask];
    goto LABEL_78;
  }

LABEL_3:
  [(HDSynchronousTaskGroup *)v11 failTaskWithError:v10];
LABEL_78:
}

uint64_t __103__HDCloudSyncComputePushTargetsOperation__hasStateMismatchForStoreForStoreRecord_zoneIdentifier_error___block_invoke(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 104);
  if (a2)
  {
    return [v2 finishTask];
  }

  else
  {
    return [v2 failTaskWithError:?];
  }
}

uint64_t __89__HDCloudSyncComputePushTargetsOperation__pushTargetsForContainer_ownerIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) zoneIdentifier];
  v6 = *(a1 + 48);
  v7 = v3;
  v8 = v5;
  v9 = v6;
  v10 = v9;
  if (!v4)
  {
    goto LABEL_11;
  }

  v11 = v7;
  v12 = v9;
  v13 = v8;
  v14 = [v8 containerIdentifier];
  v32 = v4;
  v15 = [v4 configuration];
  v16 = [v15 repository];
  v17 = [v16 primaryCKContainer];
  v18 = [v17 containerIdentifier];
  v19 = [v14 isEqualToString:v18];

  if (v19)
  {
    v7 = v11;
    v20 = [v11 ownerIdentifier];
    v10 = v12;
    v21 = [v20 isEqualToString:v12];

    v8 = v13;
    if (v21)
    {
      if ((v32[120] & 1) == 0)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v34 = v32;
          v35 = 2114;
          v36 = v13;
          v26 = "%{public}@: %{public}@: Valid push candidate. Upgrade to Sync Identity unavailable.";
          goto LABEL_15;
        }

LABEL_16:

        [*(a1 + 56) addObject:v11];
        goto LABEL_12;
      }

      v22 = [v11 syncIdentity];
      v23 = [v22 isEqual:*(v32 + 14)];

      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC328];
      v25 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          *buf = 138543618;
          v34 = v32;
          v35 = 2114;
          v36 = v13;
          v26 = "%{public}@: %{public}@: Valid push candidate.";
LABEL_15:
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      if (v25)
      {
        v28 = v24;
        v29 = [v11 syncIdentity];
        *buf = 138543874;
        v34 = v32;
        v35 = 2114;
        v36 = v13;
        v37 = 2114;
        v38 = v29;
        v30 = "%{public}@: %{public}@: Not a push candidate, wrong sync identity '%{public}@'";
        goto LABEL_10;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC328];
    v10 = v12;
    v7 = v11;
    v8 = v13;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = [v13 containerIdentifier];
      *buf = 138543874;
      v34 = v32;
      v35 = 2114;
      v36 = v13;
      v37 = 2114;
      v38 = v29;
      v30 = "%{public}@: %{public}@: Not a push candidate, wrong container '%{public}@'";
LABEL_10:
      _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 0x20u);
    }
  }

LABEL_11:

LABEL_12:
  return 1;
}

id __89__HDCloudSyncComputePushTargetsOperation__pushTargetsForContainer_ownerIdentifier_error___block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 shardPredicate];
  v6 = [v5 endDate];

  if (v6)
  {
    v7 = [v5 endDate];
    if ([v4 hk_isBeforeDate:v7])
    {
      v8 = [v5 endDate];
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

void __89__HDCloudSyncComputePushTargetsOperation__pushTargetsForContainer_ownerIdentifier_error___block_invoke_311(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 storeIdentifier];
  (a3)[2](v5, v7, v6);
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end