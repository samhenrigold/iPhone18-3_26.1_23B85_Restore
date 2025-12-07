@interface HDCloudSyncPullStoreOperation
- (BOOL)_copyAnchorsOfType:(void *)type from:(void *)from to:(void *)to error:(uint64_t)error;
- (BOOL)finishWithSuccess:(BOOL)success error:(id)error;
- (HDCloudSyncPullStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPullStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target;
- (uint64_t)_requiresSyncForSequence:(uint64_t)sequence error:;
- (void)main;
@end

@implementation HDCloudSyncPullStoreOperation

- (HDCloudSyncPullStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncPullStoreOperation)initWithConfiguration:(id)configuration cloudState:(id)state target:(id)target
{
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = HDCloudSyncPullStoreOperation;
  v10 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:state];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_target, target);
    v11->_hasAppliedChange = 0;
  }

  return v11;
}

- (void)main
{
  v280 = *MEMORY[0x277D85DE8];
  storeRecord = [(HDCloudSyncTarget *)self->_target storeRecord];
  requiredProtocolVersion = [storeRecord requiredProtocolVersion];

  if (requiredProtocolVersion >= 2)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      target = self->_target;
      v53 = v4;
      storeRecord2 = [(HDCloudSyncTarget *)target storeRecord];
      requiredProtocolVersion2 = [storeRecord2 requiredProtocolVersion];
      storeRecord3 = [(HDCloudSyncTarget *)self->_target storeRecord];
      systemBuildVersion = [storeRecord3 systemBuildVersion];
      storeRecord4 = [(HDCloudSyncTarget *)self->_target storeRecord];
      productType = [storeRecord4 productType];
      storeRecord5 = [(HDCloudSyncTarget *)self->_target storeRecord];
      deviceName = [storeRecord5 deviceName];
      *buf = 138544386;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = requiredProtocolVersion2;
      *&buf[22] = 2114;
      v272 = systemBuildVersion;
      *v273 = 2114;
      *&v273[2] = productType;
      *&v273[10] = 2114;
      *&v273[12] = deviceName;
      _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, "%{public}@: Found incomprehensible required protocol version %ld (from %{public}@ on a %{public}@: '%{public}@')", buf, 0x34u);
    }

    v5 = [MEMORY[0x277CCA9B8] hk_error:703 format:@"Health data from a future system version is present in iCloud and cannot be handled by this device."];
    v263[0] = *MEMORY[0x277CCBD98];
    storeRecord6 = [(HDCloudSyncTarget *)self->_target storeRecord];
    deviceName2 = [storeRecord6 deviceName];
    v8 = deviceName2;
    if (deviceName2)
    {
      v9 = deviceName2;
    }

    else
    {
      v9 = &stru_283BF39C8;
    }

    v264[0] = v9;
    v263[1] = *MEMORY[0x277CCBDA0];
    storeRecord7 = [(HDCloudSyncTarget *)self->_target storeRecord];
    productType2 = [storeRecord7 productType];
    v12 = productType2;
    if (productType2)
    {
      v13 = productType2;
    }

    else
    {
      v13 = &stru_283BF39C8;
    }

    v264[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v264 forKeys:v263 count:2];
    v15 = [v5 hk_errorByAddingEntriesToUserInfo:v14];

    [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v15];
    return;
  }

  storeRecord8 = [(HDCloudSyncTarget *)self->_target storeRecord];
  orderedSequenceRecords = [storeRecord8 orderedSequenceRecords];
  v18 = [orderedSequenceRecords count];

  if (v18)
  {
    storeRecord9 = [(HDCloudSyncTarget *)self->_target storeRecord];
    orderedSequenceRecords2 = [storeRecord9 orderedSequenceRecords];
    v21 = [orderedSequenceRecords2 count];
    progress = [(HDCloudSyncOperation *)self progress];
    [progress setTotalUnitCount:300 * v21 + 200];

    store = [(HDCloudSyncTarget *)self->_target store];
    v239 = 0;
    v220 = [store persistedStateWithError:&v239];
    v218 = v239;

    if (!v220)
    {
      [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v218];
      goto LABEL_141;
    }

    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_target;
      v26 = v24;
      storeRecord10 = [(HDCloudSyncTarget *)v25 storeRecord];
      shortDescription = [storeRecord10 shortDescription];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = shortDescription;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Store: %{public}@", buf, 0x16u);
    }

    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_target;
      v31 = v29;
      storeRecord11 = [(HDCloudSyncTarget *)v30 storeRecord];
      activeSequenceHeaderRecord = [storeRecord11 activeSequenceHeaderRecord];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = activeSequenceHeaderRecord;
      _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Sequence: %{public}@", buf, 0x16u);
    }

    if ([v220 syncProtocolVersion] > 16)
    {
      v231 = v218;
      goto LABEL_34;
    }

    _HKInitializeLogging();
    v34 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      syncProtocolVersion = [v220 syncProtocolVersion];
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = syncProtocolVersion;
      *&buf[18] = 1024;
      *&buf[20] = 17;
      _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: detected sync protocol version change %d -> %d", buf, 0x18u);
    }

    v238 = v218;
    v37 = v220;
    v38 = [HDCloudSyncCachedZone alloc];
    zoneIdentifier = [(HDCloudSyncTarget *)self->_target zoneIdentifier];
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    accessibilityAssertion = [configuration2 accessibilityAssertion];
    v44 = [(HDCloudSyncCachedZone *)v38 initForZoneIdentifier:zoneIdentifier repository:repository accessibilityAssertion:accessibilityAssertion];

    v265 = 0;
    v266 = &v265;
    v267 = 0x2020000000;
    LOBYTE(v268) = 0;
    v45 = objc_opt_class();
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __55__HDCloudSyncPullStoreOperation__resetPullState_error___block_invoke;
    v272 = &unk_27862F118;
    *v273 = self;
    v46 = v37;
    *&v273[8] = v46;
    *&v273[16] = &v265;
    if ([v44 recordsForClass:v45 epoch:0 error:&v238 enumerationHandler:buf])
    {
      if (*(v266 + 24) != 1)
      {
        _HKInitializeLogging();
        v62 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *v274 = 138543362;
          *&v274[4] = self;
          _os_log_impl(&dword_228986000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@: detected sync protocol version, but none of the change records have a greater protocol version. Skipping re-ingest.", v274, 0xCu);
        }

        goto LABEL_32;
      }

      store2 = [(HDCloudSyncTarget *)self->_target store];
      v48 = [store2 resetReceivedSyncAnchorMapWithError:&v238];

      if (v48)
      {
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        operationGroup = [configuration3 operationGroup];
        [operationGroup setExpectedReceiveSize:3];

LABEL_32:
        v63 = [v46 stateWithSyncProtocolVersion:17];

        store3 = [(HDCloudSyncTarget *)self->_target store];
        v51 = [store3 persistState:v63 error:&v238];

        v46 = v63;
LABEL_33:

        _Block_object_dispose(&v265, 8);
        v231 = v238;

        if ((v51 & 1) == 0)
        {
          [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v231];
          v218 = v231;
          goto LABEL_141;
        }

LABEL_34:
        storeRecord12 = [(HDCloudSyncTarget *)self->_target storeRecord];
        activeSequenceHeaderRecord2 = [storeRecord12 activeSequenceHeaderRecord];
        baselineEpoch = [activeSequenceHeaderRecord2 baselineEpoch];
        LODWORD(baselineEpoch) = baselineEpoch > [v220 baselineEpoch];

        if (baselineEpoch)
        {
          v237 = v231;
          v233 = v220;
          _HKInitializeLogging();
          v68 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v69 = v68;
            baselineEpoch2 = [v233 baselineEpoch];
            storeRecord13 = [(HDCloudSyncTarget *)self->_target storeRecord];
            activeSequenceHeaderRecord3 = [storeRecord13 activeSequenceHeaderRecord];
            baselineEpoch3 = [activeSequenceHeaderRecord3 baselineEpoch];
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2048;
            *&buf[14] = baselineEpoch2;
            *&buf[22] = 2048;
            v272 = baselineEpoch3;
            _os_log_impl(&dword_228986000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@: detected this is a pull of a new epoch %llu -> %llu", buf, 0x20u);
          }

          v224 = [_HDCloudSyncStorePersistableState alloc];
          storeRecord14 = [(HDCloudSyncTarget *)self->_target storeRecord];
          activeSequenceHeaderRecord4 = [storeRecord14 activeSequenceHeaderRecord];
          baselineEpoch4 = [activeSequenceHeaderRecord4 baselineEpoch];
          rebaseDeadline = [v233 rebaseDeadline];
          lastSyncDate = [v233 lastSyncDate];
          emptyZoneDateByZoneID = [v233 emptyZoneDateByZoneID];
          lastCheckDate = [v233 lastCheckDate];
          storeRecord15 = [(HDCloudSyncTarget *)self->_target storeRecord];
          ownerIdentifier = [storeRecord15 ownerIdentifier];
          container = [(HDCloudSyncTarget *)self->_target container];
          containerIdentifier = [container containerIdentifier];
          storeRecord16 = [(HDCloudSyncTarget *)self->_target storeRecord];
          syncIdentity = [storeRecord16 syncIdentity];
          LODWORD(v206) = [v233 syncProtocolVersion];
          v84 = [(_HDCloudSyncStorePersistableState *)v224 initWithServerChangeToken:0 baselineEpoch:baselineEpoch4 rebaseDeadline:rebaseDeadline lastSyncDate:lastSyncDate emptyZones:emptyZoneDateByZoneID lastCheckDate:lastCheckDate ownerIdentifier:ownerIdentifier containerIdentifier:containerIdentifier syncIdentity:syncIdentity syncProtocolVersion:v206];

          store4 = [(HDCloudSyncTarget *)self->_target store];
          storeRecord17 = [(HDCloudSyncTarget *)self->_target storeRecord];
          activeSequenceHeaderRecord5 = [storeRecord17 activeSequenceHeaderRecord];
          v88 = [store4 syncStoreForEpoch:{objc_msgSend(activeSequenceHeaderRecord5, "baselineEpoch")}];

          if ([v233 hasEncounteredGapInCurrentEpoch])
          {
            v89 = [(_HDCloudSyncStorePersistableState *)v84 stateWithGapEncountered:0];

            if (([v88 resetReceivedSyncAnchorMapWithError:&v237] & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            store5 = [(HDCloudSyncTarget *)self->_target store];
            v97 = [HDCloudSyncPullStoreOperation _copyAnchorsOfType:store5 from:v88 to:&v237 error:?];

            if (!v97 || ([(HDCloudSyncTarget *)self->_target store], v98 = objc_claimAutoreleasedReturnValue(), v99 = [HDCloudSyncPullStoreOperation _copyAnchorsOfType:v98 from:v88 to:&v237 error:?], v98, !v99))
            {
              buf[0] = 0;
              v89 = v84;
              goto LABEL_58;
            }

            v89 = v84;
          }

          if (([v88 persistState:v89 error:&v237] & 1) == 0)
          {
LABEL_56:
            buf[0] = 0;
            goto LABEL_58;
          }

          serverChangeToken = [v89 serverChangeToken];
          v101 = serverChangeToken == 0;

          if (v101)
          {
            configuration4 = [(HDCloudSyncOperation *)self configuration];
            operationGroup2 = [configuration4 operationGroup];
            [operationGroup2 setExpectedReceiveSize:3];
          }

          buf[0] = 1;
LABEL_58:

          v104 = buf[0];
          v218 = v237;

          if ((v104 & 1) == 0)
          {
            [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v218];
            goto LABEL_141;
          }

          goto LABEL_59;
        }

        v236 = v231;
        storeRecord18 = [(HDCloudSyncTarget *)self->_target storeRecord];
        tombstoneSequenceRecord = [storeRecord18 tombstoneSequenceRecord];

        if (tombstoneSequenceRecord)
        {
          v92 = [(HDCloudSyncPullStoreOperation *)&self->super.super.isa _requiresSyncForSequence:tombstoneSequenceRecord error:&v236];
          if (!v92)
          {

            v218 = v236;
            goto LABEL_68;
          }

          if (v92 == 1)
          {

            v218 = v236;
LABEL_59:
            storeRecord19 = [(HDCloudSyncTarget *)self->_target storeRecord];
            isChild = [storeRecord19 isChild];

            if (isChild)
            {
              v235 = v218;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v272 = __Block_byref_object_copy__202;
              *v273 = __Block_byref_object_dispose__202;
              *&v273[8] = 0;
              v107 = +[HDDatabaseTransactionContext contextForReading];
              profile = [(HDCloudSyncOperation *)self profile];
              database = [profile database];
              v265 = MEMORY[0x277D85DD0];
              v266 = 3221225472;
              v267 = __63__HDCloudSyncPullStoreOperation__childSyncIdentitiesWithError___block_invoke;
              v268 = &unk_278619398;
              v270 = buf;
              selfCopy = self;
              v110 = [database performTransactionWithContext:v107 error:&v235 block:&v265 inaccessibilityHandler:0];

              if (v110)
              {
                v111 = *(*&buf[8] + 40);
              }

              else
              {
                v111 = 0;
              }

              _Block_object_dispose(buf, 8);
              if (v111 && (-[HDCloudSyncTarget storeRecord](self->_target, "storeRecord"), v113 = objc_claimAutoreleasedReturnValue(), [v113 syncIdentity], v114 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend(v111, "containsObject:", v114), v114, v113, v115))
              {
                v116 = objc_alloc_init(HDSyncAnchorMap);
                store6 = [(HDCloudSyncTarget *)self->_target store];
                configuration5 = [(HDCloudSyncOperation *)self configuration];
                repository2 = [configuration5 repository];
                profile2 = [repository2 profile];
                legacyRepositoryProfile = [profile2 legacyRepositoryProfile];
                v122 = [HDSyncAnchorEntity getSyncAnchorsOfType:4 anchorMap:v116 store:store6 profile:legacyRepositoryProfile error:&v235];

                if (v122)
                {
                  configuration6 = [(HDCloudSyncOperation *)self configuration];
                  syncDate = [configuration6 syncDate];
                  store7 = [(HDCloudSyncTarget *)self->_target store];
                  configuration7 = [(HDCloudSyncOperation *)self configuration];
                  repository3 = [configuration7 repository];
                  profile3 = [repository3 profile];
                  legacyRepositoryProfile2 = [profile3 legacyRepositoryProfile];
                  v122 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v116 type:3 updateDate:syncDate store:store7 updatePolicy:2 resetInvalid:0 profile:legacyRepositoryProfile2 error:&v235];
                }
              }

              else
              {
                v122 = 0;
              }

              v130 = v235;
              if (v122)
              {
                _HKInitializeLogging();
                v131 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = self;
                  _os_log_impl(&dword_228986000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping pull from own child, updated received anchors", buf, 0xCu);
                }

                [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:1 error:0];
                v218 = v130;
                goto LABEL_141;
              }

              v218 = v130;
            }

            v132 = [HDCloudSyncCachedZone alloc];
            zoneIdentifier2 = [(HDCloudSyncTarget *)self->_target zoneIdentifier];
            configuration8 = [(HDCloudSyncOperation *)self configuration];
            repository4 = [configuration8 repository];
            configuration9 = [(HDCloudSyncOperation *)self configuration];
            accessibilityAssertion2 = [configuration9 accessibilityAssertion];
            v208 = [(HDCloudSyncCachedZone *)v132 initForZoneIdentifier:zoneIdentifier2 repository:repository4 accessibilityAssertion:accessibilityAssertion2];

            v138 = objc_opt_class();
            v240[0] = MEMORY[0x277D85DD0];
            v240[1] = 3221225472;
            v240[2] = __52__HDCloudSyncPullStoreOperation__fetchChangeRecords__block_invoke;
            v240[3] = &unk_2786235E8;
            v240[4] = self;
            v241 = 0;
            v209 = [v208 recordsForClass:v138 error:&v241 filter:v240];
            v207 = v241;
            if (!v209)
            {
              _HKInitializeLogging();
              v198 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
                v203 = self->_target;
                v204 = v198;
                zoneIdentifier3 = [(HDCloudSyncTarget *)v203 zoneIdentifier];
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = zoneIdentifier3;
                *&buf[22] = 2114;
                v272 = v207;
                _os_log_error_impl(&dword_228986000, v204, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get change records for %{public}@, %{public}@", buf, 0x20u);
              }

              [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v207];
              goto LABEL_140;
            }

            if (![v209 count])
            {
              _HKInitializeLogging();
              v199 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
              {
                v200 = self->_target;
                v201 = v199;
                zoneIdentifier4 = [(HDCloudSyncTarget *)v200 zoneIdentifier];
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = zoneIdentifier4;
                *&buf[22] = 2114;
                v272 = v207;
                _os_log_impl(&dword_228986000, v201, OS_LOG_TYPE_DEFAULT, "%{public}@ No change records fetched from cache for %{public}@, %{public}@", buf, 0x20u);
              }

              [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:1 error:0];
              goto LABEL_140;
            }

            v139 = v209;
            storeRecord20 = [(HDCloudSyncTarget *)self->_target storeRecord];
            orderedSequenceRecords3 = [storeRecord20 orderedSequenceRecords];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __97__HDCloudSyncPullStoreOperation__orderedChangeRecordsBySequenceRecordIDWithFetchedChangeRecords___block_invoke;
            v272 = &unk_27862F168;
            v142 = v139;
            *v273 = v142;
            v213 = [orderedSequenceRecords3 hk_mapToDictionary:buf];

            v143 = [HDCloudSyncCompoundOperation alloc];
            configuration10 = [(HDCloudSyncOperation *)self configuration];
            v210 = [(HDCloudSyncCompoundOperation *)v143 initWithConfiguration:configuration10 cloudState:0 name:@"Pull Sequences" continueOnSubOperationError:0];

            v245 = 0u;
            v243 = 0u;
            v244 = 0u;
            v242 = 0u;
            storeRecord21 = [(HDCloudSyncTarget *)self->_target storeRecord];
            obj = [storeRecord21 orderedSequenceRecords];

            v214 = [obj countByEnumeratingWithState:&v242 objects:&v265 count:16];
            if (!v214)
            {
LABEL_131:

              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __55__HDCloudSyncPullStoreOperation__fetchedChangeRecords___block_invoke;
              v272 = &unk_278613088;
              *v273 = self;
              [(HDCloudSyncOperation *)v210 setOnError:buf];
              *v274 = MEMORY[0x277D85DD0];
              *&v274[8] = 3221225472;
              *&v274[16] = __55__HDCloudSyncPullStoreOperation__fetchedChangeRecords___block_invoke_2;
              v275 = &unk_278613060;
              *&v276 = self;
              [(HDCloudSyncOperation *)v210 setOnSuccess:v274];
              progress2 = [(HDCloudSyncOperation *)self progress];
              progress3 = [(HDCloudSyncOperation *)v210 progress];
              progress4 = [(HDCloudSyncOperation *)self progress];
              totalUnitCount = [progress4 totalUnitCount];
              progress5 = [(HDCloudSyncOperation *)self progress];
              [progress2 addChild:progress3 withPendingUnitCount:{totalUnitCount - objc_msgSend(progress5, "completedUnitCount")}];

              [(HDCloudSyncCompoundOperation *)v210 start];
              goto LABEL_139;
            }

            v212 = *v243;
            while (1)
            {
              v146 = 0;
              do
              {
                if (*v243 != v212)
                {
                  v147 = v146;
                  objc_enumerationMutation(obj);
                  v146 = v147;
                }

                v216 = v146;
                v148 = *(*(&v242 + 1) + 8 * v146);
                recordID = [v148 recordID];
                v219 = [v213 objectForKeyedSubscript:recordID];

                if ([v219 count])
                {
                  v150 = v219;
                  v217 = v148;
                  v223 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  store8 = [(HDCloudSyncTarget *)self->_target store];
                  v230 = [store8 syncStoreForEpoch:{objc_msgSend(v217, "baselineEpoch")}];

                  v252 = 0;
                  v232 = [v230 receivedSyncAnchorMapWithError:&v252];
                  v215 = v252;
                  v152 = v232;
                  if (!v232)
                  {
                    _HKInitializeLogging();
                    v153 = *MEMORY[0x277CCC328];
                    v152 = 0;
                    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      *&buf[4] = self;
                      *&buf[12] = 2114;
                      *&buf[14] = v215;
                      _os_log_error_impl(&dword_228986000, v153, OS_LOG_TYPE_ERROR, "%{public}@: error calling receivedSyncAnchorMapWithError: %{public}@", buf, 0x16u);
                    }
                  }

                  v228 = objc_msgSend_copy(v152);
                  v250 = 0u;
                  v251 = 0u;
                  v248 = 0u;
                  v249 = 0u;
                  v221 = v150;
                  v234 = [v221 countByEnumeratingWithState:&v248 objects:buf count:16];
                  if (v234)
                  {
                    v226 = *v249;
                    do
                    {
                      for (i = 0; i != v234; ++i)
                      {
                        if (*v249 != v226)
                        {
                          objc_enumerationMutation(v221);
                        }

                        v155 = *(*(&v248 + 1) + 8 * i);
                        decodedSyncAnchorRangeMap = [v155 decodedSyncAnchorRangeMap];
                        shardPredicate = [v230 shardPredicate];
                        v158 = [shardPredicate type] == 2;
                        v159 = decodedSyncAnchorRangeMap;
                        v160 = v228;
                        if (v159 && (![v159 anchorRangeCount] ? (v161 = 1) : (v161 = v228 == 0), !v161))
                        {
                          configuration11 = [(HDCloudSyncOperation *)self configuration];
                          repository5 = [configuration11 repository];
                          profile4 = [repository5 profile];
                          legacyRepositoryProfile3 = [profile4 legacyRepositoryProfile];

                          v259 = 0;
                          v260 = &v259;
                          v261 = 0x2020000000;
                          v262 = 1;
                          v253 = 0;
                          v254 = &v253;
                          v255 = 0x3032000000;
                          v256 = __Block_byref_object_copy__202;
                          v257 = __Block_byref_object_dispose__202;
                          v258 = 0;
                          *v274 = MEMORY[0x277D85DD0];
                          *&v274[8] = 3221225472;
                          *&v274[16] = __93__HDCloudSyncPullStoreOperation__isValidAnchorRangeMap_lastAnchorMap_allowStartingGap_error___block_invoke;
                          v275 = &unk_27862F190;
                          v168 = legacyRepositoryProfile3;
                          *&v276 = v168;
                          v169 = v160;
                          v279 = v158;
                          *(&v276 + 1) = v169;
                          v277 = &v253;
                          v278 = &v259;
                          [v159 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v274];
                          v170 = v254[5];
                          v162 = v170;
                          if (v170)
                          {
                            v171 = v170;
                          }

                          v163 = *(v260 + 24);
                          _Block_object_dispose(&v253, 8);

                          _Block_object_dispose(&v259, 8);
                        }

                        else
                        {
                          v162 = 0;
                          v163 = 1;
                        }

                        v172 = v162;
                        if ((v163 & 1) == 0)
                        {
                          _HKInitializeLogging();
                          v173 = *MEMORY[0x277CCC328];
                          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                          {
                            v182 = v173;
                            changeIndex = [v155 changeIndex];
                            *v274 = 138544130;
                            *&v274[4] = self;
                            *&v274[12] = 2048;
                            *&v274[14] = changeIndex;
                            *&v274[22] = 2114;
                            v275 = v159;
                            LOWORD(v276) = 2114;
                            *(&v276 + 2) = v172;
                            _os_log_error_impl(&dword_228986000, v182, OS_LOG_TYPE_ERROR, "%{public}@: %lld %{public}@ - failed validity check: %{public}@", v274, 0x2Au);
                          }
                        }

                        v174 = v159 == 0;
                        v246[0] = MEMORY[0x277D85DD0];
                        v246[1] = 3221225472;
                        v246[2] = __95__HDCloudSyncPullStoreOperation__requiredRecordsWithOrderedChangeRecords_sequenceRecord_error___block_invoke;
                        v246[3] = &unk_278615E50;
                        v247 = v160;
                        [v159 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v246];
                        v175 = v159;
                        v176 = v232;
                        if (!v174 && [v175 anchorRangeCount] && objc_msgSend(v176, "anchorCount"))
                        {
                          v253 = 0;
                          v254 = &v253;
                          v255 = 0x2020000000;
                          LOBYTE(v256) = 0;
                          *v274 = MEMORY[0x277D85DD0];
                          *&v274[8] = 3221225472;
                          *&v274[16] = __78__HDCloudSyncPullStoreOperation__shouldApplyAnchorRangeMap_receivedAnchorMap___block_invoke;
                          v275 = &unk_278616070;
                          v177 = v176;
                          *&v276 = v177;
                          *(&v276 + 1) = &v253;
                          [v175 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v274];
                          v178 = *(v254 + 24);

                          _Block_object_dispose(&v253, 8);
                          if ((v178 & 1) == 0)
                          {
                            goto LABEL_118;
                          }
                        }

                        else
                        {
                        }

                        _HKInitializeLogging();
                        v179 = *MEMORY[0x277CCC328];
                        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                        {
                          v180 = v179;
                          changeIndex2 = [v155 changeIndex];
                          *v274 = 138543874;
                          *&v274[4] = self;
                          *&v274[12] = 2048;
                          *&v274[14] = changeIndex2;
                          *&v274[22] = 2114;
                          v275 = v175;
                          _os_log_impl(&dword_228986000, v180, OS_LOG_TYPE_DEFAULT, "%{public}@: %lld %{public}@", v274, 0x20u);
                        }

                        [v223 addObject:v155];
LABEL_118:
                      }

                      v234 = [v221 countByEnumeratingWithState:&v248 objects:buf count:16];
                    }

                    while (v234);
                  }

                  if (!v223)
                  {
                    [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:0];

LABEL_139:
LABEL_140:

LABEL_141:
                    return;
                  }

                  _HKInitializeLogging();
                  v184 = *MEMORY[0x277CCC328];
                  if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
                  {
                    slot = [v217 slot];
                    if ((slot - 1) >= 3)
                    {
                      v185 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", slot];
                    }

                    else
                    {
                      v185 = off_27862F1B0[(slot - 1)];
                    }

                    v187 = v185;
                    v188 = [v223 count];
                    v189 = [v221 count];
                    *buf = 138544130;
                    *&buf[4] = self;
                    *&buf[12] = 2114;
                    *&buf[14] = v185;
                    *&buf[22] = 2048;
                    v272 = v188;
                    *v273 = 2048;
                    *&v273[2] = v189;
                    _os_log_impl(&dword_228986000, v184, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: %lu/%lu required changes.", buf, 0x2Au);
                  }

                  if ([v223 count])
                  {
                    v190 = [HDCloudSyncPullSequenceOperation alloc];
                    configuration12 = [(HDCloudSyncOperation *)self configuration];
                    v192 = [(HDCloudSyncPullSequenceOperation *)v190 initWithConfiguration:configuration12 cloudState:0 target:self->_target sequence:v217 changes:v223];

                    [(HDCloudSyncCompoundOperation *)v210 addOperation:v192 transitionHandler:0];
                  }
                }

                v146 = v216 + 1;
              }

              while (v216 + 1 != v214);
              v214 = [obj countByEnumeratingWithState:&v242 objects:&v265 count:16];
              if (!v214)
              {
                goto LABEL_131;
              }
            }
          }
        }

        storeRecord22 = [(HDCloudSyncTarget *)self->_target storeRecord];
        sequenceRecord = [storeRecord22 sequenceRecord];

        if (!sequenceRecord)
        {

          v218 = v236;
          goto LABEL_64;
        }

        v95 = [(HDCloudSyncPullStoreOperation *)&self->super.super.isa _requiresSyncForSequence:sequenceRecord error:&v236];

        v218 = v236;
        if (v95)
        {
          if (v95 != 2)
          {
            goto LABEL_59;
          }

LABEL_64:
          _HKInitializeLogging();
          v112 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_impl(&dword_228986000, v112, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping pull; local anchors are up-to-date.", buf, 0xCu);
          }

          [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:1 error:0];
          goto LABEL_141;
        }

LABEL_68:
        [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:0 error:v218];
        goto LABEL_141;
      }
    }

    v51 = 0;
    goto LABEL_33;
  }

  [(HDCloudSyncPullStoreOperation *)self finishWithSuccess:1 error:0];
}

- (BOOL)finishWithSuccess:(BOOL)success error:(id)error
{
  v16.receiver = self;
  v16.super_class = HDCloudSyncPullStoreOperation;
  v5 = [(HDCloudSyncOperation *)&v16 finishWithSuccess:success error:error]&& success;
  if (v5 == 1)
  {
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    profile = [repository profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];

    if ([legacyRepositoryProfile profileType] != 3 || (-[HDCloudSyncTarget storeRecord](self->_target, "storeRecord"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "deviceMode"), v10, v11 == 2))
    {
      storeRecord = [(HDCloudSyncTarget *)self->_target storeRecord];
      record = [storeRecord record];
      modificationDate = [record modificationDate];

      HDCloudSyncDidPullUpdateWithDate(modificationDate, legacyRepositoryProfile);
    }
  }

  return v5;
}

uint64_t __52__HDCloudSyncPullStoreOperation__fetchChangeRecords__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 record];
    v4 = [*(v2 + 112) storeRecord];
    v5 = [v4 tombstoneSequenceRecord];
    if (v5)
    {
      v6 = [*(v2 + 112) storeRecord];
      v7 = [v6 tombstoneSequenceRecord];
      v8 = [HDCloudSyncChangeRecord isChangeRecord:v3 inSequence:v7];
    }

    else
    {
      v8 = 0;
    }

    v9 = [*(v2 + 112) storeRecord];
    v10 = [v9 sequenceRecord];

    v11 = v8 | [HDCloudSyncChangeRecord isChangeRecord:v3 inSequence:v10];
    if ((v11 & 1) == 0)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        v14 = v12;
        v15 = [v3 recordID];
        v16 = 138543618;
        v17 = v2;
        v18 = 2114;
        v19 = v15;
        _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@: is not in tombstone sequence or pull sequence, do not add", &v16, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t __55__HDCloudSyncPullStoreOperation__resetPullState_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 record];
  v5 = [*(*(a1 + 32) + 112) storeRecord];
  v6 = [v5 currentSequenceHeaderRecord];
  if ([HDCloudSyncChangeRecord isChangeRecord:v4 inSequence:v6])
  {
  }

  else
  {
    v7 = [v3 record];
    v8 = [*(*(a1 + 32) + 112) storeRecord];
    v9 = [v8 oldSequenceHeaderRecord];
    v10 = [HDCloudSyncChangeRecord isChangeRecord:v7 inSequence:v9];

    if (!v10)
    {
      v12 = 1;
      goto LABEL_7;
    }
  }

  v11 = [v3 protocolVersion];
  v12 = 1;
  if (v11 > [*(a1 + 40) syncProtocolVersion])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = 0;
  }

LABEL_7:

  return v12;
}

- (BOOL)_copyAnchorsOfType:(void *)type from:(void *)from to:(void *)to error:(uint64_t)error
{
  toCopy = to;
  fromCopy = from;
  v8 = objc_alloc_init(HDSyncAnchorMap);
  configuration = [type configuration];
  repository = [configuration repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  v13 = [HDSyncAnchorEntity getSyncAnchorsOfType:3 anchorMap:v8 store:fromCopy profile:legacyRepositoryProfile error:error];

  if (v13)
  {
    configuration2 = [type configuration];
    syncDate = [configuration2 syncDate];
    configuration3 = [type configuration];
    repository2 = [configuration3 repository];
    profile2 = [repository2 profile];
    legacyRepositoryProfile2 = [profile2 legacyRepositoryProfile];
    v20 = toCopy;
    v21 = [HDSyncAnchorEntity updateSyncAnchorsWithMap:v8 type:3 updateDate:syncDate store:toCopy updatePolicy:2 resetInvalid:0 profile:legacyRepositoryProfile2 error:error];
  }

  else
  {
    v21 = 0;
    v20 = toCopy;
  }

  return v21;
}

- (uint64_t)_requiresSyncForSequence:(uint64_t)sequence error:
{
  v5 = a2;
  store = [self[14] store];
  v30 = v5;
  v7 = [store syncStoreForEpoch:{objc_msgSend(v5, "baselineEpoch")}];

  configuration = [self configuration];
  repository = [configuration repository];
  syncEngine = [repository syncEngine];
  configuration2 = [self configuration];
  repository2 = [configuration2 repository];
  profile = [repository2 profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];
  sequenceCopy = sequence;
  LODWORD(sequence) = [syncEngine updateLocalVersionsForStore:v7 profile:legacyRepositoryProfile error:sequence];

  if (sequence)
  {
    v15 = v30;
    syncAnchorMap = [v30 syncAnchorMap];
    v17 = objc_alloc_init(HDSyncAnchorMap);
    configuration3 = [self configuration];
    repository3 = [configuration3 repository];
    profile2 = [repository3 profile];
    legacyRepositoryProfile2 = [profile2 legacyRepositoryProfile];
    v22 = [HDSyncAnchorEntity getSyncAnchorsOfType:3 anchorMap:v17 store:v7 profile:legacyRepositoryProfile2 error:sequenceCopy];

    v23 = v7;
    if (v22)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__202;
      v38 = __Block_byref_object_dispose__202;
      v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
      orderedSyncEntities = [v7 orderedSyncEntities];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __64__HDCloudSyncPullStoreOperation__requiresSyncForSequence_error___block_invoke;
      v31[3] = &unk_278628868;
      v25 = orderedSyncEntities;
      v32 = v25;
      v33 = &v34;
      [syncAnchorMap enumerateAnchorsAndEntityIdentifiersWithBlock:v31];
      v26 = [HDSyncAnchorMap syncAnchorMapWithDictionary:v35[5]];
      if (HDSyncAnchorMapIsSuperset(v26, v17))
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      _Block_object_dispose(&v34, 8);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v15 = v30;
    v23 = v7;
  }

  return v27;
}

void __64__HDCloudSyncPullStoreOperation__requiresSyncForSequence_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HDCloudSyncPullStoreOperation__requiresSyncForSequence_error___block_invoke_2;
  v9[3] = &unk_278623A30;
  v7 = v5;
  v10 = v7;
  if ([v6 hk_containsObjectPassingTest:v9])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:v7];
  }
}

uint64_t __64__HDCloudSyncPullStoreOperation__requiresSyncForSequence_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 syncEntityIdentifier];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = 1;
  }

  else if (v5)
  {
    v6 = [a2 syncEntityIdentifier];
    v7 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __97__HDCloudSyncPullStoreOperation__orderedChangeRecordsBySequenceRecordIDWithFetchedChangeRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HDCloudSyncPullStoreOperation__orderedChangeRecordsBySequenceRecordIDWithFetchedChangeRecords___block_invoke_2;
  v12[3] = &unk_27862F140;
  v8 = v5;
  v13 = v8;
  v9 = [v7 hk_filter:v12];
  v10 = [v9 sortedArrayUsingSelector:sel_compare_];

  if ([v10 count])
  {
    v11 = [v8 recordID];
    v6[2](v6, v11, v10);
  }
}

uint64_t __97__HDCloudSyncPullStoreOperation__orderedChangeRecordsBySequenceRecordIDWithFetchedChangeRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sequenceRecordID];
  v4 = [*(a1 + 32) recordID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __93__HDCloudSyncPullStoreOperation__isValidAnchorRangeMap_lastAnchorMap_allowStartingGap_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = [*(a1 + 32) syncEngine];
  v11 = [v10 allSyncEntitiesByIdentifier];
  v12 = [v11 objectForKeyedSubscript:v9];

  if (v12)
  {
    v13 = [*(a1 + 40) anchorForSyncEntityIdentifier:v9];
    if (a3 > v13)
    {
      v14 = v13;
      if (v13 > 0 || (*(a1 + 64) & 1) == 0)
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = *(*(a1 + 48) + 8);
        obj = *(v16 + 40);
        v17 = HDSyncAnchorRangeDescription(a3, a4);
        [v15 hk_assignError:&obj code:1400 format:{@"anchor range %@ invalid for %@, last anchor %lld", v17, v9, v14}];
        objc_storeStrong((v16 + 40), obj);

        *(*(*(a1 + 56) + 8) + 24) = 0;
        *a5 = 1;
      }
    }
  }
}

void *__78__HDCloudSyncPullStoreOperation__shouldApplyAnchorRangeMap_receivedAnchorMap___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) anchorForSyncEntityIdentifier:a2];
  if (a4 > result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

BOOL __63__HDCloudSyncPullStoreOperation__childSyncIdentitiesWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 profile];
  v8 = [v7 syncIdentityManager];
  v9 = [v8 childIdentitiesForCurrentSyncIdentityWithTransaction:v6 error:a3];

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

@end