@interface HDCloudSyncSharedSummaryRevokeParticipantOperation
- (HDCloudSyncSharedSummaryRevokeParticipantOperation)initWithConfiguration:(id)configuration codableEntry:(id)entry;
- (id)_deleteZonesOperationForParticipant:(id)participant error:(id *)error;
- (id)_updatedParticipantRecordInZone:(id)zone entry:(id)entry error:(id *)error;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryRevokeParticipantOperation

- (HDCloudSyncSharedSummaryRevokeParticipantOperation)initWithConfiguration:(id)configuration codableEntry:(id)entry
{
  entryCopy = entry;
  v11.receiver = self;
  v11.super_class = HDCloudSyncSharedSummaryRevokeParticipantOperation;
  v7 = [(HDCloudSyncOperation *)&v11 initWithConfiguration:configuration cloudState:0];
  if (v7)
  {
    v8 = objc_msgSend_copy(entryCopy);
    codableEntry = v7->_codableEntry;
    v7->_codableEntry = v8;
  }

  return v7;
}

- (void)main
{
  v53 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v45 = 0;
  v9 = [cachedCloudState privateMetadataZoneForContainerID:containerIdentifier error:&v45];
  v10 = v45;

  if (v9)
  {
    codableEntry = self->_codableEntry;
    v44 = 0;
    v12 = [(HDCloudSyncSharedSummaryRevokeParticipantOperation *)self _updatedParticipantRecordInZone:v9 entry:codableEntry error:&v44];
    v13 = v44;
    if (v12)
    {
      v43 = 0;
      v14 = [(HDCloudSyncSharedSummaryRevokeParticipantOperation *)self _deleteZonesOperationForParticipant:v12 error:&v43];
      v15 = v43;
      if (v14)
      {
        v16 = [HDCloudSyncCompoundOperation alloc];
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        v18 = [(HDCloudSyncCompoundOperation *)v16 initWithConfiguration:configuration3 cloudState:0 name:@"Revoke Participant" continueOnSubOperationError:0];

        [(HDCloudSyncCompoundOperation *)v18 addOperation:v14 transitionHandler:0];
        v39 = v15;
        v19 = [HDCloudSyncModifyRecordsOperation alloc];
        configuration4 = [(HDCloudSyncOperation *)self configuration];
        configuration5 = [(HDCloudSyncOperation *)self configuration];
        [configuration5 repository];
        v21 = v41 = v13;
        [v21 primaryCKContainer];
        v22 = v40 = v14;
        [v12 record];
        v23 = v42 = v10;
        v46 = v23;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v24 = v9;
        v26 = v25 = v12;
        v27 = v19;
        v28 = configuration4;
        v29 = [(HDCloudSyncModifyRecordsOperation *)v27 initWithConfiguration:configuration4 container:v22 recordsToSave:v26 recordIDsToDelete:0];

        v12 = v25;
        v9 = v24;

        v10 = v42;
        v14 = v40;

        v13 = v41;
        [(HDCloudSyncCompoundOperation *)v18 addOperation:v29 transitionHandler:0];
        [(HDCloudSyncOperation *)self delegateToOperation:v18];

        v15 = v39;
      }

      else
      {
        _HKInitializeLogging();
        v33 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v36 = v33;
          zoneIdentifier = [v9 zoneIdentifier];
          *buf = 138543874;
          selfCopy2 = self;
          v49 = 2114;
          v50 = zoneIdentifier;
          v51 = 2114;
          v52 = v15;
          _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to find zone for participant %{public}@, %{public}@", buf, 0x20u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v15];
      }
    }

    else
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v34 = v30;
        zoneIdentifier2 = [v9 zoneIdentifier];
        *buf = 138543874;
        selfCopy2 = self;
        v49 = 2114;
        v50 = zoneIdentifier2;
        v51 = 2114;
        v52 = v13;
        _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to find participant record for %{public}@, %{public}@", buf, 0x20u);
      }

      if (v13)
      {
        v31 = 0;
        v32 = v13;
      }

      else
      {
        v31 = 1;
        v32 = 0;
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:v31 error:v32];
    }
  }

  else
  {
    if (!v10)
    {
      v10 = [MEMORY[0x277CCA9B8] hk_error:724 format:@"Private metadata zone not present."];
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v10];
  }
}

- (id)_updatedParticipantRecordInZone:(id)zone entry:(id)entry error:(id *)error
{
  entryCopy = entry;
  v8 = MEMORY[0x277CCAD78];
  zoneCopy = zone;
  v10 = [v8 alloc];
  uuid = [entryCopy uuid];
  v12 = [v10 initWithUUIDString:uuid];

  v13 = objc_opt_class();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__HDCloudSyncSharedSummaryRevokeParticipantOperation__updatedParticipantRecordInZone_entry_error___block_invoke;
  v21[3] = &unk_27861AD28;
  v22 = v12;
  v14 = v12;
  v15 = [zoneCopy recordsForClass:v13 error:error filter:v21];

  if (v15)
  {
    firstObject = [v15 firstObject];
    v17 = firstObject;
    if (firstObject)
    {
      if ([firstObject updateWithLocalEntry:entryCopy error:error])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __98__HDCloudSyncSharedSummaryRevokeParticipantOperation__updatedParticipantRecordInZone_entry_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_deleteZonesOperationForParticipant:(id)participant error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];

  v9 = MEMORY[0x277CBC5F8];
  syncCircleIdentifier = [repository syncCircleIdentifier];
  uUID = [participantCopy UUID];

  v12 = [v9 hd_sharedSummaryZoneIDWithSyncCircleIdentifier:syncCircleIdentifier userIdentifier:uUID];

  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v15 = [HDCloudSyncZoneIdentifier identifierForZone:v12 container:containerIdentifier scope:2];

  configuration2 = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration2 cachedCloudState];
  v34 = 0;
  v18 = [cachedCloudState zonesByIdentifierWithError:&v34];
  v19 = v34;

  if (v18 || !v19)
  {
    allValues = [v18 allValues];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __96__HDCloudSyncSharedSummaryRevokeParticipantOperation__deleteZonesOperationForParticipant_error___block_invoke;
    v32[3] = &unk_2786147D0;
    v23 = v15;
    v33 = v23;
    v24 = [allValues hk_filter:v32];

    if ([v24 count] >= 2)
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v38 = 2114;
        v39 = v23;
        _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "[summary-sharing] %{public}@ Retrieved multiple cached participant zones for identifier %{public}@. This is unexpected.", buf, 0x16u);
      }
    }

    firstObject = [v24 firstObject];
    v27 = [HDCloudSyncDeleteZonesOperation alloc];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    v21 = [(HDCloudSyncDeleteZonesOperation *)v27 initWithConfiguration:configuration3 cloudState:0];

    if (firstObject)
    {
      zoneIdentifier = [firstObject zoneIdentifier];
      v35 = zoneIdentifier;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      [(HDCloudSyncDeleteZonesOperation *)v21 setZonesToDelete:v30];
    }
  }

  else if (error)
  {
    v20 = v19;
    v21 = 0;
    *error = v19;
  }

  else
  {
    _HKLogDroppedError();
    v21 = 0;
  }

  return v21;
}

uint64_t __96__HDCloudSyncSharedSummaryRevokeParticipantOperation__deleteZonesOperationForParticipant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 zoneType] == 3)
  {
    v4 = [v3 zoneIdentifier];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end