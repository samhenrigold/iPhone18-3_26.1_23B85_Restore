@interface HDCloudSyncValidatePushTargetOperation
+ (id)operationTagDependencies;
- (HDCloudSyncValidatePushTargetOperation)initWithConfiguration:(id)configuration;
- (uint64_t)_validateAnchorRangesForSequenceRecord:(void *)record target:(void *)target errorOut:;
- (uint64_t)_validateCurrentSequenceForTarget:(void *)target errorOut:;
- (uint64_t)_validateTargets:(void *)targets errorOut:;
- (void)_requireRebaseForTarget:(void *)target;
- (void)_rollOwnershipIdentiferAndFinish;
- (void)main;
@end

@implementation HDCloudSyncValidatePushTargetOperation

+ (id)operationTagDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"compute-push-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (HDCloudSyncValidatePushTargetOperation)initWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = HDCloudSyncValidatePushTargetOperation;
  v3 = [(HDCloudSyncOperation *)&v7 initWithConfiguration:configuration cloudState:0];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    targetsBySequenceToDelete = v3->_targetsBySequenceToDelete;
    v3->_targetsBySequenceToDelete = v4;
  }

  return v3;
}

- (void)main
{
  v46 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  computedState = [configuration computedState];
  pushTargets = [computedState pushTargets];
  targets = self->_targets;
  self->_targets = pushTargets;

  if ([(NSArray *)self->_targets count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = self->_targets;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:&buf count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          store = [v13 store];

          if (!store)
          {
            v20 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Target's %@ push store not set when beginning push target validation.", v13}];
            v19 = v20;
            if (v20)
            {
              v21 = v20;
            }

            v18 = 0;
            goto LABEL_16;
          }

          store2 = [v13 store];
          shardPredicate = [store2 shardPredicate];
          type = [shardPredicate type];

          if (type != 2)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:&buf count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = v7;
    v19 = 0;
LABEL_16:

    v22 = v19;
    if (v18)
    {
      if ([v18 count])
      {
        v37 = v22;
        v23 = [(HDCloudSyncValidatePushTargetOperation *)self _validateTargets:v18 errorOut:&v37];
        v24 = v37;

        if (v23)
        {
          if (self->_requiresOwnershipRoll)
          {
            [(HDCloudSyncValidatePushTargetOperation *)self _rollOwnershipIdentiferAndFinish];
LABEL_33:
            v22 = v24;
            goto LABEL_34;
          }

          if ([(NSMutableDictionary *)self->_targetsBySequenceToDelete count])
          {
            v33 = [HDCloudSyncDeleteSequenceOperation alloc];
            configuration2 = [(HDCloudSyncOperation *)self configuration];
            v35 = objc_msgSend_copy(self->_targetsBySequenceToDelete);
            v36 = [(HDCloudSyncDeleteSequenceOperation *)v33 initWithConfiguration:configuration2 targetsBySequence:v35];

            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v43 = __76__HDCloudSyncValidatePushTargetOperation__deleteOldSequenceRecordsAndFinish__block_invoke;
            v44 = &unk_278613088;
            selfCopy = self;
            [(HDCloudSyncOperation *)v36 setOnError:&buf];
            *&v38 = MEMORY[0x277D85DD0];
            *(&v38 + 1) = 3221225472;
            *&v39 = __76__HDCloudSyncValidatePushTargetOperation__deleteOldSequenceRecordsAndFinish__block_invoke_2;
            *(&v39 + 1) = &unk_278613060;
            *&v40 = self;
            [(HDCloudSyncOperation *)v36 setOnSuccess:&v38];
            [(HDCloudSyncOperation *)v36 start];

            goto LABEL_33;
          }

          selfCopy3 = self;
          v31 = 1;
          v32 = 0;
        }

        else
        {
          selfCopy3 = self;
          v31 = 0;
          v32 = v24;
        }

        [(HDCloudSyncOperation *)selfCopy3 finishWithSuccess:v31 error:v32];
        goto LABEL_33;
      }

      _HKInitializeLogging();
      v29 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = self;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: No filtered targets to validate.", &buf, 0xCu);
      }

      selfCopy5 = self;
      v27 = 1;
      v28 = 0;
    }

    else
    {
      selfCopy5 = self;
      v27 = 0;
      v28 = v22;
    }

    [(HDCloudSyncOperation *)selfCopy5 finishWithSuccess:v27 error:v28];
LABEL_34:

    return;
  }

  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: No targets to validate.", &buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
}

- (uint64_t)_validateTargets:(void *)targets errorOut:
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (self)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = v5;
      v9 = *v24;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(self + 120);
        if (v11)
        {
LABEL_21:
          v5 = v21;
          goto LABEL_23;
        }

        v12 = *(*(&v23 + 1) + 8 * v10);
        storeRecord = [v12 storeRecord];
        currentSequenceHeaderRecord = [storeRecord currentSequenceHeaderRecord];

        if (currentSequenceHeaderRecord)
        {
          storeRecord2 = [v12 storeRecord];
          oldSequenceHeaderRecord = [storeRecord2 oldSequenceHeaderRecord];

          if (!oldSequenceHeaderRecord)
          {
            v19 = [(HDCloudSyncValidatePushTargetOperation *)self _validateCurrentSequenceForTarget:v12 errorOut:targets];

            if ((v19 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_18;
          }

          isActive = [currentSequenceHeaderRecord isActive];
          if (isActive != [oldSequenceHeaderRecord isActive] && (!objc_msgSend(currentSequenceHeaderRecord, "isActive") || (objc_msgSend(oldSequenceHeaderRecord, "isActive") & 1) != 0))
          {
            v18 = [(HDCloudSyncValidatePushTargetOperation *)self _validateCurrentSequenceForTarget:v12 errorOut:targets];

            if ((v18 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_18;
          }

          [*(self + 112) setObject:v12 forKeyedSubscript:{oldSequenceHeaderRecord, v21}];
        }

LABEL_18:
        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          v11 = 1;
          goto LABEL_21;
        }
      }
    }

    v11 = 1;
LABEL_23:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_rollOwnershipIdentiferAndFinish
{
  if (self)
  {
    profile = [self profile];
    cloudSyncManager = [profile cloudSyncManager];
    ownerIdentifierManager = [cloudSyncManager ownerIdentifierManager];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__HDCloudSyncValidatePushTargetOperation__rollOwnershipIdentiferAndFinish__block_invoke;
    v5[3] = &unk_2786130B0;
    v5[4] = self;
    [ownerIdentifierManager rollOwnerDifferentiatorForReason:@"Found anchors from the future" completion:v5];
  }
}

- (uint64_t)_validateCurrentSequenceForTarget:(void *)target errorOut:
{
  v158 = *MEMORY[0x277D85DE8];
  v4 = a2;
  storeRecord = [v4 storeRecord];
  currentSequenceHeaderRecord = [storeRecord currentSequenceHeaderRecord];

  if ([currentSequenceHeaderRecord childRecordCount] >= 501)
  {
    configuration = [self configuration];
    rebaseProhibited = [configuration rebaseProhibited];

    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    v10 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
    if (rebaseProhibited)
    {
      if (v10)
      {
        v11 = v9;
        v12 = HDCloudSyncRebaseReasonToString(0);
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2114;
        v145 = currentSequenceHeaderRecord;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: rebase required but prohibited (%{public}@) for sequence record %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (v10)
      {
        v13 = v9;
        v14 = HDCloudSyncRebaseReasonToString(0);
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        *&buf[22] = 2114;
        v145 = currentSequenceHeaderRecord;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: rebase required (%{public}@) for sequence record %{public}@", buf, 0x20u);
      }

      v15 = kHDEventNameCloudSync;
      v139 = @"operation";
      v140 = @"rebase-reason";
      *buf = &unk_283CB0BE8;
      *&buf[8] = &unk_283CB0BE8;
      v141 = @"record-count";
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(currentSequenceHeaderRecord, "childRecordCount")}];
      *&buf[16] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v139 count:3];
      HDPowerLog(v15, v17, 2);

      [(HDCloudSyncValidatePushTargetOperation *)self _requireRebaseForTarget:v4];
    }
  }

  v122 = v4;
  storeRecord2 = [v122 storeRecord];
  currentSequenceHeaderRecord2 = [storeRecord2 currentSequenceHeaderRecord];

  v20 = v122;
  if (currentSequenceHeaderRecord2 && ([(HDCloudSyncValidatePushTargetOperation *)self _validateAnchorRangesForSequenceRecord:currentSequenceHeaderRecord2 target:v122 errorOut:target]& 1) == 0)
  {
    goto LABEL_16;
  }

  storeRecord3 = [v122 storeRecord];
  oldSequenceHeaderRecord = [storeRecord3 oldSequenceHeaderRecord];

  v20 = v122;
  if (oldSequenceHeaderRecord && ([(HDCloudSyncValidatePushTargetOperation *)self _validateAnchorRangesForSequenceRecord:oldSequenceHeaderRecord target:v122 errorOut:target]& 1) == 0)
  {

LABEL_16:
    v28 = 0;
    goto LABEL_71;
  }

  v23 = v122;
  store = [v23 store];
  v134[0] = 0;
  v25 = [store persistedStateWithError:v134];
  v26 = v134[0];

  if (v25)
  {
    configuration2 = [self configuration];
    if ([configuration2 rebaseProhibited])
    {
    }

    else
    {
      rebaseDeadline = [v25 rebaseDeadline];
      v33 = rebaseDeadline == 0;

      if (!v33)
      {
        rebaseDeadline2 = [v25 rebaseDeadline];
        configuration3 = [self configuration];
        syncDate = [configuration3 syncDate];
        [rebaseDeadline2 timeIntervalSinceDate:syncDate];
        v38 = v37;

        v39 = MEMORY[0x277CCE2B8];
        if (v38 < *MEMORY[0x277CCE2B8])
        {
          _HKInitializeLogging();
          v40 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
            store2 = [v23 store];
            v43 = HDCloudSyncRebaseReasonToString(1);
            rebaseDeadline3 = [v25 rebaseDeadline];
            v45 = *v39;
            *buf = 138544642;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = store2;
            *&buf[22] = 2114;
            v145 = v43;
            v146 = 2114;
            v147 = rebaseDeadline3;
            v148 = 2048;
            v149 = v45;
            v150 = 2048;
            v151 = v38;
            _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] rebase required (%{public}@), rebase deadline of %{public}@ (trigger threshold is %0.1lfs, remaining interval is %0.1lfs)", buf, 0x3Eu);
          }

          v46 = kHDEventNameCloudSync;
          *&v152 = @"operation";
          *(&v152 + 1) = @"rebase-reason";
          v139 = &unk_283CB0BE8;
          v140 = &unk_283CB0C00;
          *&v153 = @"deadline";
          v47 = MEMORY[0x277CCABB0];
          rebaseDeadline4 = [v25 rebaseDeadline];
          [rebaseDeadline4 timeIntervalSinceReferenceDate];
          v49 = [v47 numberWithDouble:?];
          v141 = v49;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v152 count:3];
          HDPowerLog(v46, v50, 2);

          [(HDCloudSyncValidatePushTargetOperation *)self _requireRebaseForTarget:v23];
        }
      }
    }

LABEL_26:
    v121 = v23;
    configuration4 = [self configuration];
    repository = [configuration4 repository];
    zoneIdentifier = [v121 zoneIdentifier];
    containerIdentifier = [zoneIdentifier containerIdentifier];
    *&v120[4] = [repository containerForContainerIdentifier:containerIdentifier];

    if (!*&v120[4])
    {
      v86 = MEMORY[0x277CCA9B8];
      zoneIdentifier2 = [v121 zoneIdentifier];
      containerIdentifier2 = [zoneIdentifier2 containerIdentifier];
      v89 = [v86 hk_error:723 format:{@"Unable to find container for identifier %@", containerIdentifier2}];
      *v120 = v89 == 0;
      if (v89)
      {
        if (target)
        {
          v90 = v89;
          *target = v89;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_70;
    }

    storeRecord4 = [v121 storeRecord];
    currentSequenceHeaderRecord3 = [storeRecord4 currentSequenceHeaderRecord];

    if (!currentSequenceHeaderRecord3)
    {
      *v120 = 1;
LABEL_70:

      v20 = v122;
      v28 = *v120;
      goto LABEL_71;
    }

    storeRecord5 = [v121 storeRecord];
    v58 = [HDCloudSyncCachedZone alloc];
    zoneIdentifier3 = [v121 zoneIdentifier];
    configuration5 = [self configuration];
    repository2 = [configuration5 repository];
    configuration6 = [self configuration];
    accessibilityAssertion = [configuration6 accessibilityAssertion];
    v64 = [(HDCloudSyncCachedZone *)v58 initForZoneIdentifier:zoneIdentifier3 repository:repository2 accessibilityAssertion:accessibilityAssertion];

    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v66 = objc_opt_class();
    v129 = 0;
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __92__HDCloudSyncValidatePushTargetOperation__validateCurrentSequenceChangesForTarget_errorOut___block_invoke;
    v126[3] = &unk_27861D8D0;
    v126[4] = self;
    v116 = storeRecord5;
    v127 = v116;
    v119 = v65;
    v128 = v119;
    v117 = v64;
    *v120 = [v64 recordsForClass:v66 epoch:0 error:&v129 enumerationHandler:v126];
    v118 = v129;
    if ((v120[0] & 1) == 0)
    {
      _HKInitializeLogging();
      v91 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v108 = v91;
        zoneIdentifier4 = [v64 zoneIdentifier];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = zoneIdentifier4;
        _os_log_error_impl(&dword_228986000, v108, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve cached change records from zone %{public}@", buf, 0x16u);
      }

      v92 = v118;
      v93 = v92;
      if (v92)
      {
        if (target)
        {
          v94 = v92;
          *target = v93;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_69;
    }

    [v119 sortUsingSelector:sel_compare_];
    v67 = v119;
    lastObject = [v67 lastObject];
    v115 = lastObject;
    if (lastObject)
    {
      finalForSequence = [lastObject finalForSequence];
      _HKInitializeLogging();
      v70 = *MEMORY[0x277CCC328];
      v71 = *MEMORY[0x277CCC328];
      if (finalForSequence)
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = v70;
          v73 = [v67 count];
          *v156 = 138543618;
          *&v156[4] = self;
          *&v156[12] = 2048;
          *&v156[14] = v73;
          _os_log_impl(&dword_228986000, v72, OS_LOG_TYPE_INFO, "%{public}@: Checking for hole in %ld fetched records", v156, 0x16u);
        }

        *v156 = 0;
        *&v156[8] = v156;
        *&v156[16] = 0x2020000000;
        v157 = 0;
        v114 = objc_opt_new();
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        obj = v67;
        v74 = 0;
        v75 = [obj countByEnumeratingWithState:&v152 objects:buf count:16];
        if (v75)
        {
          v76 = *v153;
          while (2)
          {
            for (i = 0; i != v75; ++i)
            {
              if (*v153 != v76)
              {
                objc_enumerationMutation(obj);
              }

              v78 = *(*(&v152 + 1) + 8 * i);
              decodedSyncAnchorRangeMap = [v78 decodedSyncAnchorRangeMap];
              _HKInitializeLogging();
              v80 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
              {
                v81 = v80;
                if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                {
                  record = [v78 record];
                  recordID = [record recordID];
                  recordName = [recordID recordName];
                  *v142 = 67109634;
                  *v143 = v74;
                  *&v143[4] = 2114;
                  *&v143[6] = recordName;
                  *&v143[14] = 2114;
                  *&v143[16] = decodedSyncAnchorRangeMap;
                  _os_log_impl(&dword_228986000, v81, OS_LOG_TYPE_INFO, "\t%02d: [Record: %{public}@] %{public}@", v142, 0x1Cu);

                  ++v74;
                }
              }

              if (!decodedSyncAnchorRangeMap || ![decodedSyncAnchorRangeMap anchorRangeCount])
              {
                _HKInitializeLogging();
                v96 = *MEMORY[0x277CCC328];
                if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                {
                  record2 = [v78 record];
                  recordID2 = [record2 recordID];
                  recordName2 = [recordID2 recordName];
                  *v142 = 138543618;
                  *v143 = self;
                  *&v143[8] = 2114;
                  *&v143[10] = recordName2;
                  _os_log_error_impl(&dword_228986000, v96, OS_LOG_TYPE_ERROR, "%{public}@: [Record: %{public}@]: ordered change record with nil or empty anchor range map found, this may indicate a hole in the sequence", v142, 0x16u);
                }

                *(*&v156[8] + 24) = 1;
LABEL_75:

                goto LABEL_76;
              }

              v134[0] = MEMORY[0x277D85DD0];
              v134[1] = 3221225472;
              v134[2] = __85__HDCloudSyncValidatePushTargetOperation__orderedChangeRecordSequenceRequiresRebase___block_invoke;
              v134[3] = &unk_27861D8F8;
              v135 = v114;
              selfCopy = self;
              v137 = v78;
              v138 = v156;
              [decodedSyncAnchorRangeMap enumerateAnchorRangesAndEntityIdentifiersWithBlock:v134];
              v85 = *(*&v156[8] + 24);

              if (v85)
              {
                goto LABEL_75;
              }
            }

            v75 = [obj countByEnumeratingWithState:&v152 objects:buf count:16];
            if (v75)
            {
              continue;
            }

            break;
          }
        }

LABEL_76:

        if (*(*&v156[8] + 24) != 1)
        {

          _Block_object_dispose(v156, 8);
          goto LABEL_69;
        }

        _HKInitializeLogging();
        v97 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          v110 = [obj count];
          *v142 = 138543618;
          *v143 = self;
          *&v143[8] = 2048;
          *&v143[10] = v110;
          _os_log_error_impl(&dword_228986000, v97, OS_LOG_TYPE_ERROR, "%{public}@: Found hole in %ld fetched records", v142, 0x16u);
        }

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v124 = obj;
        v98 = [v124 countByEnumeratingWithState:&v130 objects:&v139 count:16];
        if (v98)
        {
          v99 = *v131;
          do
          {
            for (j = 0; j != v98; ++j)
            {
              if (*v131 != v99)
              {
                objc_enumerationMutation(v124);
              }

              v101 = *(*(&v130 + 1) + 8 * j);
              decodedSyncAnchorRangeMap2 = [v101 decodedSyncAnchorRangeMap];
              _HKInitializeLogging();
              v103 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                record3 = [v101 record];
                recordID3 = [record3 recordID];
                recordName3 = [recordID3 recordName];
                *v142 = 67109634;
                *v143 = v74;
                *&v143[4] = 2114;
                *&v143[6] = recordName3;
                *&v143[14] = 2114;
                *&v143[16] = decodedSyncAnchorRangeMap2;
                _os_log_impl(&dword_228986000, v103, OS_LOG_TYPE_DEFAULT, "\t%02d: [Record: %{public}@] %{public}@", v142, 0x1Cu);

                ++v74;
              }
            }

            v98 = [v124 countByEnumeratingWithState:&v130 objects:&v139 count:16];
          }

          while (v98);
        }

        v107 = *(*&v156[8] + 24);
        _Block_object_dispose(v156, 8);

        if ((v107 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *v156 = 138543618;
          *&v156[4] = self;
          *&v156[12] = 2114;
          *&v156[14] = v115;
          _os_log_error_impl(&dword_228986000, v70, OS_LOG_TYPE_ERROR, "%{public}@: Final ordered change record (%{public}@) is not final for sequence; rebase required to repair damage.", v156, 0x16u);
        }
      }

      [(HDCloudSyncValidatePushTargetOperation *)self _requireRebaseForTarget:v121];
    }

    else
    {
    }

LABEL_69:

    goto LABEL_70;
  }

  v29 = v26;
  if (!v29)
  {

    goto LABEL_26;
  }

  v30 = v29;
  if (target)
  {
    v31 = v29;
    *target = v30;
  }

  else
  {
    _HKLogDroppedError();
  }

  v28 = 0;
  v20 = v122;
LABEL_71:

  return v28;
}

void __76__HDCloudSyncValidatePushTargetOperation__deleteOldSequenceRecordsAndFinish__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(v2 + 112) allValues];
  v9 = 0;
  v4 = [(HDCloudSyncValidatePushTargetOperation *)v2 _validateTargets:v3 errorOut:&v9];
  v5 = v9;

  v6 = *(a1 + 32);
  if ((v4 & 1) == 0)
  {
    v7 = 0;
    v8 = v5;
LABEL_6:
    [v6 finishWithSuccess:v7 error:v8];
    goto LABEL_7;
  }

  if (v6[120] != 1)
  {
    v7 = 1;
    v8 = 0;
    goto LABEL_6;
  }

  [(HDCloudSyncValidatePushTargetOperation *)v6 _rollOwnershipIdentiferAndFinish];
LABEL_7:
}

void __74__HDCloudSyncValidatePushTargetOperation__rollOwnershipIdentiferAndFinish__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v7 = [v4[13] hk_map:&__block_literal_global_75];
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 computedState];
    [v6 replaceTargets:v7];

    [*(a1 + 32) finishWithSuccess:1 error:0];
  }

  else
  {

    [v4 finishWithSuccess:0 error:a3];
  }
}

- (uint64_t)_validateAnchorRangesForSequenceRecord:(void *)record target:(void *)target errorOut:
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  recordCopy = record;
  configuration = [self configuration];
  rebaseProhibited = [configuration rebaseProhibited];

  if ((rebaseProhibited & 1) == 0)
  {
    store = [recordCopy store];
    v13 = [store syncStoreForEpoch:{objc_msgSend(v7, "baselineEpoch")}];

    v40 = 0;
    v14 = [v13 getPersistedAnchorMapWithError:&v40];
    v15 = v40;
    v16 = v15;
    if (v14)
    {
      configuration2 = [self configuration];
      v18 = [HDCloudSyncPushSequenceOperation unfrozenChangeRecordsForPushTarget:recordCopy sequenceRecord:v7 configuration:configuration2 error:target];

      if (v18)
      {
        configuration3 = [self configuration];
        v20 = [HDCloudSyncPushSequenceOperation shouldPerformRecentRecordRollingForUnfrozenRecords:v18 configuration:configuration3];

        if (v20)
        {
          [v7 frozenSyncAnchorMap];
        }

        else
        {
          [v7 syncAnchorMap];
        }
        v23 = ;
        if (([v14 isEqual:v23] & 1) == 0)
        {
          v24 = @"pushed";
          if (v20)
          {
            v24 = @"frozen";
          }

          v25 = v24;
          v36 = 0;
          v37 = &v36;
          v38 = 0x2020000000;
          v39 = 0;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __97__HDCloudSyncValidatePushTargetOperation__validateAnchorRangesForSequenceRecord_target_errorOut___block_invoke;
          v29[3] = &unk_27861D8A8;
          v35 = v20;
          v30 = v14;
          selfCopy = self;
          v26 = v25;
          v32 = v26;
          v33 = v13;
          v34 = &v36;
          [v23 enumerateAnchorsAndEntityIdentifiersWithBlock:v29];
          if (*(v37 + 24) == 1)
          {
            self[120] = 1;
            _HKInitializeLogging();
            v27 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy2 = self;
              v43 = 2112;
              v44 = v26;
              _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Found %@ anchors from the future", buf, 0x16u);
            }
          }

          _Block_object_dispose(&v36, 8);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v21 = v15;
      v18 = v21;
      if (!v21)
      {
LABEL_19:
        v11 = 1;
        goto LABEL_22;
      }

      if (target)
      {
        v22 = v21;
        v11 = 0;
        *target = v18;
LABEL_22:

        goto LABEL_23;
      }

      _HKLogDroppedError();
    }

    v11 = 0;
    goto LABEL_22;
  }

  v11 = 1;
LABEL_23:

  return v11;
}

void __97__HDCloudSyncValidatePushTargetOperation__validateAnchorRangesForSequenceRecord_target_errorOut___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) anchorForSyncEntityIdentifier:v5];
  v7 = v6;
  if (v6 <= a3)
  {
    if (v6 < a3)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v15 = 138544386;
        v16 = v13;
        v17 = 2114;
        v18 = v14;
        v19 = 2048;
        v20 = a3;
        v21 = 2048;
        v22 = v7;
        v23 = 2114;
        v24 = v5;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Sequence Record %{public}@ sync anchor (%lld) greater than local sync anchor (%lld) for sync entity %{public}@. Invalid state can be fixed with a forced ownership change", &v15, 0x34u);
      }
    }
  }

  else if ((*(a1 + 72) & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v15 = 138544642;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2048;
      v20 = a3;
      v21 = 2048;
      v22 = v7;
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Sequence Record %{public}@ sync anchor (%lld) less than local sync anchor (%lld) for sync entity %{public}@. Last upload to store %{public}@ must have failed", &v15, 0x3Eu);
    }
  }
}

- (void)_requireRebaseForTarget:(void *)target
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 targetByAddingOptions:1];

  configuration = [target configuration];
  computedState = [configuration computedState];
  v8[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [computedState replaceTargets:v7];
}

uint64_t __92__HDCloudSyncValidatePushTargetOperation__validateCurrentSequenceChangesForTarget_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 record];
  v6 = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  if (v4 && [HDCloudSyncChangeRecord isChangeRecord:v7])
  {
    v9 = [v8 currentSequenceHeaderRecord];
    v10 = [HDCloudSyncChangeRecord isChangeRecord:v7 inSequence:v9];

    if (v10)
    {
      [*(a1 + 48) addObject:v3];
    }
  }

  else
  {
  }

  return 1;
}

void __85__HDCloudSyncValidatePushTargetOperation__orderedChangeRecordSequenceRequiresRebase___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = [*(a1 + 32) anchorForSyncEntityIdentifier:v9];
  if (a3 <= v10)
  {
    [*(a1 + 32) setAnchor:a4 forSyncEntityIdentifier:v9];
  }

  else
  {
    v11 = v10;
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v13 = *(a1 + 48);
      v15 = v12;
      v16 = [v13 record];
      v17 = [v16 recordID];
      v18 = [v17 recordName];
      v19 = 138544386;
      v20 = v14;
      v21 = 2114;
      v22 = v18;
      v23 = 2114;
      v24 = v9;
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = v11;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [Record: %{public}@]: hole found for %{public}@: %lld != %lld", &v19, 0x34u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a5 = 1;
  }
}

@end