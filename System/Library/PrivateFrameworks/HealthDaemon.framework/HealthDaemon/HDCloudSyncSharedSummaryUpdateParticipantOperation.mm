@interface HDCloudSyncSharedSummaryUpdateParticipantOperation
- (BOOL)_containsOnlyCategoriesToAddWithError:(id *)error;
- (HDCloudSyncSharedSummaryUpdateParticipantOperation)initWithConfiguration:(id)configuration codableEntry:(id)entry authorizationIdentifiersToAdd:(id)add authorizationIdentifiersToDelete:(id)delete;
- (id)_createOrUpdateAuthorizationRecordInZone:(id)zone participantRecord:(id)record error:(id *)error;
- (id)_createOrUpdateParticipantRecordInZone:(id)zone entry:(id)entry error:(id *)error;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryUpdateParticipantOperation

- (HDCloudSyncSharedSummaryUpdateParticipantOperation)initWithConfiguration:(id)configuration codableEntry:(id)entry authorizationIdentifiersToAdd:(id)add authorizationIdentifiersToDelete:(id)delete
{
  entryCopy = entry;
  addCopy = add;
  deleteCopy = delete;
  v21.receiver = self;
  v21.super_class = HDCloudSyncSharedSummaryUpdateParticipantOperation;
  v13 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:configuration cloudState:0];
  if (v13)
  {
    v14 = objc_msgSend_copy(entryCopy);
    entry = v13->_entry;
    v13->_entry = v14;

    v16 = objc_msgSend_copy(addCopy);
    authorizationIdentifiersToAdd = v13->_authorizationIdentifiersToAdd;
    v13->_authorizationIdentifiersToAdd = v16;

    v18 = objc_msgSend_copy(deleteCopy);
    authorizationIdentifiersToDelete = v13->_authorizationIdentifiersToDelete;
    v13->_authorizationIdentifiersToDelete = v18;
  }

  return v13;
}

- (void)main
{
  v48 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v40 = 0;
  v9 = [cachedCloudState privateMetadataZoneForContainerID:containerIdentifier error:&v40];
  v10 = v40;

  if (v9)
  {
    entry = self->_entry;
    v39 = 0;
    v12 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)self _createOrUpdateParticipantRecordInZone:v9 entry:entry error:&v39];
    v13 = v39;
    if (v12)
    {
      v38 = 0;
      v14 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)self _createOrUpdateAuthorizationRecordInZone:v9 participantRecord:v12 error:&v38];
      v15 = v38;
      if (v14)
      {
        v36 = [HDCloudSyncModifyRecordsOperation alloc];
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        configuration4 = [(HDCloudSyncOperation *)self configuration];
        repository2 = [configuration4 repository];
        [repository2 primaryCKContainer];
        v18 = v35 = v13;
        [v12 record];
        v19 = v34 = v15;
        v41[0] = v19;
        [v14 record];
        v33 = v12;
        v21 = v20 = v14;
        v41[1] = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
        v23 = [(HDCloudSyncModifyRecordsOperation *)v36 initWithConfiguration:configuration3 container:v18 recordsToSave:v22 recordIDsToDelete:0];
        v37 = v10;
        v24 = v23;

        v14 = v20;
        v12 = v33;

        v15 = v34;
        v13 = v35;

        [(HDCloudSyncOperation *)self delegateToOperation:v24];
        v10 = v37;
      }

      else
      {
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v29 = v26;
          [v9 zoneIdentifier];
          v31 = v30 = v12;
          *buf = 138543874;
          selfCopy2 = self;
          v44 = 2114;
          v45 = v31;
          v46 = 2114;
          v47 = v15;
          _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to create or update authorization record for %{public}@, %{public}@", buf, 0x20u);

          v12 = v30;
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v15];
      }
    }

    else
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v27 = v25;
        zoneIdentifier = [v9 zoneIdentifier];
        *buf = 138543874;
        selfCopy2 = self;
        v44 = 2114;
        v45 = zoneIdentifier;
        v46 = 2114;
        v47 = v13;
        _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to create or update relationship record for %{public}@, %{public}@", buf, 0x20u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v13];
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

- (id)_createOrUpdateParticipantRecordInZone:(id)zone entry:(id)entry error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  entryCopy = entry;
  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  uuid = [entryCopy uuid];
  v12 = [v10 initWithUUIDString:uuid];

  v13 = objc_opt_class();
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __105__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateParticipantRecordInZone_entry_error___block_invoke;
  v27[3] = &unk_27861AD28;
  v14 = v12;
  v28 = v14;
  v15 = [zoneCopy recordsForClass:v13 error:error filter:v27];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_12;
  }

  firstObject = [v15 firstObject];
  if (firstObject)
  {
    v18 = firstObject;
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      selfCopy2 = self;
      v31 = 2113;
      v32 = entryCopy;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Updating participant with entry %{private}@.", buf, 0x16u);
    }

    if ([v18 updateWithLocalEntry:entryCopy error:error])
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    goto LABEL_13;
  }

  if (![(HDCloudSyncSharedSummaryUpdateParticipantOperation *)self _containsOnlyCategoriesToAddWithError:error])
  {
LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v22 = [HDCloudSyncSharedSummaryParticipantRecord alloc];
  zoneIdentifier = [zoneCopy zoneIdentifier];
  v23ZoneIdentifier = [zoneIdentifier zoneIdentifier];
  v21 = [(HDCloudSyncSharedSummaryParticipantRecord *)v22 initInZone:v23ZoneIdentifier codableEntry:entryCopy];

  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Adding new participant.", buf, 0xCu);
  }

LABEL_13:

  return v21;
}

uint64_t __105__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateParticipantRecordInZone_entry_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_createOrUpdateAuthorizationRecordInZone:(id)zone participantRecord:(id)record error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  recordCopy = record;
  authorizationRecordIdentifier = [recordCopy authorizationRecordIdentifier];
  v12 = off_27860E000;
  if (!authorizationRecordIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
LABEL_18:
    v27 = objc_alloc(v12[5]);
    zoneIdentifier = [zoneCopy zoneIdentifier];
    v28ZoneIdentifier = [zoneIdentifier zoneIdentifier];
    error = [v27 initInZone:v28ZoneIdentifier UUID:uUID authorizationIdentifiers:self->_authorizationIdentifiersToAdd participantRecord:recordCopy];

    [recordCopy setAuthorizationRecord:error];
    goto LABEL_19;
  }

  v13 = authorizationRecordIdentifier;
  v14 = objc_opt_class();
  v37 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __119__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateAuthorizationRecordInZone_participantRecord_error___block_invoke;
  v35[3] = &unk_27861AD50;
  uUID = v13;
  v36 = uUID;
  v16 = [zoneCopy recordsForClass:v14 error:&v37 filter:v35];
  v17 = v37;
  if (v16)
  {
    firstObject = [v16 firstObject];
    v19 = firstObject;
    v34 = firstObject == 0;
    if (firstObject)
    {
      v33 = v17;
      [firstObject updateAuthorizationWithIdentifiersToAdd:self->_authorizationIdentifiersToAdd identifiersToDelete:self->_authorizationIdentifiersToDelete];
      [v19 authorizationIdentifiers];
      v21 = v20 = self;
      v22 = [v21 count];

      if (v22)
      {
        error = v19;
        self = v20;
        v12 = off_27860E000;
        v17 = v33;
      }

      else
      {
        v25 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"There are no remaining authorization categories. You must remove the participant from the share instead."];
        self = v20;
        v12 = off_27860E000;
        v17 = v33;
        if (v25)
        {
          if (error)
          {
            v26 = v25;
            *error = v25;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        error = 0;
      }
    }

    v24 = v34;
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v31 = v23;
      zoneIdentifier2 = [zoneCopy zoneIdentifier];
      *buf = 138543874;
      selfCopy = self;
      v40 = 2114;
      v41 = zoneIdentifier2;
      v42 = 2114;
      v43 = v17;
      _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@ Failed to get authorization records for %{public}@, %{public}@", buf, 0x20u);
    }

    v24 = 0;
    error = 0;
  }

  if (v24)
  {
    goto LABEL_18;
  }

LABEL_19:

  return error;
}

uint64_t __119__HDCloudSyncSharedSummaryUpdateParticipantOperation__createOrUpdateAuthorizationRecordInZone_participantRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_containsOnlyCategoriesToAddWithError:(id *)error
{
  v5 = [(NSArray *)self->_authorizationIdentifiersToDelete count];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:@"Deleting authorization categories is not supported for new records"];
    if (v6)
    {
      if (error)
      {
        v7 = v6;
        *error = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v5 == 0;
}

@end