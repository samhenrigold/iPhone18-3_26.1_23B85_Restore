@interface HDCloudSyncShareToParticipantOperation
- (HDCloudSyncShareToParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncShareToParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state identityLookupInfo:(id)info requireExistingRelationship:(BOOL)relationship requireZoneDeviceMode:(id)mode;
- (void)main;
@end

@implementation HDCloudSyncShareToParticipantOperation

- (HDCloudSyncShareToParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncShareToParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state identityLookupInfo:(id)info requireExistingRelationship:(BOOL)relationship requireZoneDeviceMode:(id)mode
{
  infoCopy = info;
  modeCopy = mode;
  v21.receiver = self;
  v21.super_class = HDCloudSyncShareToParticipantOperation;
  v14 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:configuration cloudState:state];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    v16 = objc_msgSend_copy(infoCopy);
    identityLookupInfo = v15->_identityLookupInfo;
    v15->_identityLookupInfo = v16;

    v15->_requireExistingRelationship = relationship;
    v18 = objc_msgSend_copy(modeCopy);
    expectedDeviceMode = v15->_expectedDeviceMode;
    v15->_expectedDeviceMode = v18;
  }

  return v15;
}

- (void)main
{
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:0 name:@"Add Sharing Participant" continueOnSubOperationError:0];

  v6 = [HDCloudSyncLookupParticipantOperation alloc];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  v8 = [(HDCloudSyncLookupParticipantOperation *)v6 initWithConfiguration:configuration2 cloudState:0 identityLookupInfo:self->_identityLookupInfo];

  [(HDCloudSyncCompoundOperation *)v5 addOperation:v8 transitionHandler:0];
  v9 = [HDCloudSyncRemoveInvalidShareParticipantsOperation alloc];
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  v11 = [(HDCloudSyncRemoveInvalidShareParticipantsOperation *)v9 initWithConfiguration:configuration3 cloudState:0];

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke;
  v46[3] = &unk_278614D48;
  v12 = v8;
  v47 = v12;
  v48 = v11;
  v38 = v11;
  [(HDCloudSyncCompoundOperation *)v5 addOperation:v38 transitionHandler:v46];
  v13 = objc_alloc(MEMORY[0x277CBC5E8]);
  v14 = MEMORY[0x277CBC5F8];
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration4 repository];
  syncCircleIdentifier = [repository syncCircleIdentifier];
  v18 = [v14 hd_unifiedSyncZoneIDForSyncCircleIdentifier:syncCircleIdentifier];
  v19 = [v13 initWithZoneID:v18];

  v20 = [HDCloudSyncCreateZonesOperation alloc];
  configuration5 = [(HDCloudSyncOperation *)self configuration];
  v49[0] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  configuration6 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration6 repository];
  primaryCKContainer = [repository2 primaryCKContainer];
  v26 = [(HDCloudSyncCreateZonesOperation *)v20 initWithConfiguration:configuration5 cloudState:0 zones:v22 container:primaryCKContainer];

  [(HDCloudSyncCompoundOperation *)v5 addOperation:v26 transitionHandler:0];
  v27 = [HDCloudSyncAddSharingParticipantOperation alloc];
  configuration7 = [(HDCloudSyncOperation *)self configuration];
  v29 = [(HDCloudSyncAddSharingParticipantOperation *)v27 initWithConfiguration:configuration7 cloudState:0];

  [(HDCloudSyncAddSharingParticipantOperation *)v29 setRequireExistingRelationship:self->_requireExistingRelationship];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_2;
  v42[3] = &unk_2786261A0;
  v30 = v29;
  v43 = v30;
  v44 = v12;
  selfCopy = self;
  v31 = v12;
  [(HDCloudSyncCompoundOperation *)v5 addOperation:v30 transitionHandler:v42];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_307;
  v40[3] = &unk_278614BA8;
  v40[4] = self;
  v41 = v30;
  v32 = v30;
  [(HDCloudSyncOperation *)v5 setOnSuccess:v40];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_2_313;
  v39[3] = &unk_278613088;
  v39[4] = self;
  [(HDCloudSyncOperation *)v5 setOnError:v39];
  [(HDCloudSyncCompoundOperation *)v5 start];
  progress = [(HDCloudSyncOperation *)v5 progress];
  totalUnitCount = [progress totalUnitCount];

  progress2 = [(HDCloudSyncOperation *)self progress];
  [progress2 setTotalUnitCount:{objc_msgSend(progress2, "totalUnitCount") + totalUnitCount}];

  progress3 = [(HDCloudSyncOperation *)self progress];
  progress4 = [(HDCloudSyncOperation *)v5 progress];
  [progress3 addChild:progress4 withPendingUnitCount:totalUnitCount];
}

void __46__HDCloudSyncShareToParticipantOperation_main__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) participant];

  if (v2)
  {
    v3 = [*(a1 + 32) participant];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [*(a1 + 40) setParticipantsToCheck:v4];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = MEMORY[0x277CBEBF8];

    [v5 setParticipantsToCheck:v6];
  }
}

void __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_2(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1[5] participant];
  [a1[4] setParticipant:v2];

  v3 = [a1[6] configuration];
  v4 = [v3 cachedCloudState];
  v10 = 0;
  v5 = [v4 zonesByIdentifierWithError:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [v5 allKeys];
    [a1[4] setZoneIdentifiers:v7];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v9 = a1[6];
      *buf = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
    }
  }
}

void __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_307(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 repository];

  v4 = [*(a1 + 32) configuration];
  v5 = [v4 cachedCloudState];
  v6 = [v3 primaryCKContainer];
  v7 = [v6 containerIdentifier];
  v38 = 0;
  v8 = [v5 unifiedSyncZoneForContainerID:v7 error:&v38];
  v9 = v38;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  v11 = MEMORY[0x277CCC328];
  if (!v10)
  {
    _HKInitializeLogging();
    v12 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      *buf = 138543618;
      v40 = v25;
      v41 = 2114;
      v42 = v9;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", buf, 0x16u);
    }
  }

  v37 = 0;
  v13 = [v8 recordsForClass:objc_opt_class() error:&v37];
  v14 = v37;
  v15 = v14;
  if (!v13)
  {
    if (v14)
    {
      _HKInitializeLogging();
      v16 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 32);
        v30 = v16;
        v31 = [v8 zoneIdentifier];
        *buf = 138543874;
        v40 = v29;
        v41 = 2114;
        v42 = v31;
        v43 = 2114;
        v44 = v15;
        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
      }
    }
  }

  if ([v13 count] >= 2)
  {
    _HKInitializeLogging();
    v17 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_FAULT))
    {
      v26 = *(a1 + 32);
      v27 = v17;
      v28 = [v8 zoneIdentifier];
      *buf = 138543618;
      v40 = v26;
      v41 = 2114;
      v42 = v28;
      _os_log_fault_impl(&dword_228986000, v27, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple registry records for %{public}@. This is unexpected.", buf, 0x16u);
    }
  }

  v18 = [v13 firstObject];
  v19 = [v18 sharedProfileIdentifier];
  if (!v19)
  {
    _HKInitializeLogging();
    v20 = *v11;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 32);
      *buf = 138543362;
      v40 = v32;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieved shared profile identifier for registry record when adding a sharing participant.", buf, 0xCu);
    }
  }

  v21 = [v3 primaryCKContainer];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_309;
  v33[3] = &unk_2786261C8;
  v22 = *(a1 + 40);
  v33[4] = *(a1 + 32);
  v34 = v3;
  v35 = v19;
  v36 = v22;
  v23 = v19;
  v24 = v3;
  [v21 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v33];
}

void __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_309(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v19 = a3;
  if (a4)
  {
    v6 = *(a1 + 32);
    v7 = 0;
    v8 = a4;
  }

  else
  {
    v9 = [HDCloudSyncShareSetupMetadata alloc];
    v10 = [*(a1 + 40) syncCircleIdentifier];
    v11 = *(a1 + 48);
    v12 = v11;
    if (!v11)
    {
      v12 = [*(a1 + 40) profileIdentifier];
    }

    v13 = [*(a1 + 56) shareURLs];
    v14 = [*(a1 + 56) participant];
    v15 = [*(a1 + 56) invitationTokensByShareURL];
    v16 = [(HDCloudSyncShareSetupMetadata *)v9 initWithSyncCircleIdentifier:v10 profileIdentifier:v12 shareURLs:v13 ownerCloudKitEmailAddress:v19 shareParticipant:v14 invitationTokensByShareURL:v15];
    v17 = *(a1 + 32);
    v18 = *(v17 + 168);
    *(v17 + 168) = v16;

    if (!v11)
    {
    }

    v6 = *(a1 + 32);
    v7 = 1;
    v8 = 0;
  }

  [v6 finishWithSuccess:v7 error:v8];
}

@end