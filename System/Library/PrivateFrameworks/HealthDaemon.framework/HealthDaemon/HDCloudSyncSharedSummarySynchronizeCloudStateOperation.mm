@interface HDCloudSyncSharedSummarySynchronizeCloudStateOperation
- (BOOL)_isActiveParticipant:(id)participant;
- (BOOL)_updateOwnerParticipantForParticipantRecord:(id)record zone:(id)zone error:(id *)error;
- (BOOL)_updateShareForAllNonOwnerParticipantsInZone:(id)zone error:(id *)error;
- (BOOL)_validateCloudStateForParticipantRecord:(id)record error:(id *)error;
- (BOOL)_validateParticipantRecordCloudStateWithError:(id *)error;
- (id)_currentZoneStateForParticipant:(id)participant zone:(id)zone error:(id *)error;
- (id)_deleteInvalidZonesOperationWithError:(id *)error;
- (id)_removeInvalidSharesOperationWithError:(id *)error;
- (id)_zoneIdentifierForParticipant:(id)participant;
- (id)_zonesForParticipant:(id)participant error:(id *)error;
- (void)main;
@end

@implementation HDCloudSyncSharedSummarySynchronizeCloudStateOperation

- (void)main
{
  v80 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncAvailability = [repository syncAvailability];
  shouldSyncSummarySharingPush = [syncAvailability shouldSyncSummarySharingPush];

  if (shouldSyncSummarySharingPush)
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration2 cachedCloudState];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    primaryCKContainer = [repository2 primaryCKContainer];
    containerIdentifier = [primaryCKContainer containerIdentifier];
    v75 = 0;
    v13 = [cachedCloudState privateMetadataZoneForContainerID:containerIdentifier error:&v75];
    v14 = v75;
    privateMetadataZone = self->_privateMetadataZone;
    self->_privateMetadataZone = v13;

    if (!self->_privateMetadataZone && v14)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v14];
LABEL_38:

      return;
    }

    v69 = v14;
    participantRecords = self->_participantRecords;
    self->_participantRecords = MEMORY[0x277CBEBF8];

    participantRecordsByUUID = self->_participantRecordsByUUID;
    self->_participantRecordsByUUID = MEMORY[0x277CBEC10];

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sharesToDelete = self->_sharesToDelete;
    self->_sharesToDelete = v19;

    v21 = self->_privateMetadataZone;
    if (v21)
    {
      v74 = 0;
      v22 = [(HDCloudSyncCachedZone *)v21 recordsForClass:objc_opt_class() error:&v74];
      v23 = v74;
      v24 = self->_participantRecords;
      self->_participantRecords = v22;

      if (!self->_participantRecords)
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v23];

        goto LABEL_38;
      }

      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_participantRecords;
        v27 = v25;
        v28 = [(NSArray *)v26 count];
        *buf = 138543618;
        selfCopy5 = self;
        v78 = 2048;
        v79 = v28;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] Found %lu participant records in private metadata zone", buf, 0x16u);
      }

      v29 = [(NSArray *)self->_participantRecords hk_mapToDictionary:&__block_literal_global_93];
      v30 = self->_participantRecordsByUUID;
      self->_participantRecordsByUUID = v29;
    }

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    updatedParticipantRecordIDs = self->_updatedParticipantRecordIDs;
    self->_updatedParticipantRecordIDs = v31;

    v73 = 0;
    v33 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _validateParticipantRecordCloudStateWithError:&v73];
    v34 = v73;
    v35 = v34;
    if (v33)
    {
      v72 = v34;
      v36 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _removeInvalidSharesOperationWithError:&v72];
      v37 = v72;

      if (v36)
      {
        v71 = v37;
        v38 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _deleteInvalidZonesOperationWithError:&v71];
        v39 = v71;

        if (v38)
        {
          v68 = v39;
          v40 = [HDCloudSyncCompoundOperation alloc];
          configuration4 = [(HDCloudSyncOperation *)self configuration];
          v42 = [(HDCloudSyncCompoundOperation *)v40 initWithConfiguration:configuration4 cloudState:0 name:@"Synchronize Cloud Summary State" continueOnSubOperationError:0];

          deletedRecordIDs = [v36 deletedRecordIDs];
          v44 = [deletedRecordIDs count];

          if (v44)
          {
            [(HDCloudSyncCompoundOperation *)v42 addOperation:v36 transitionHandler:0];
          }

          recordZoneIDsToDelete = [v38 recordZoneIDsToDelete];
          v46 = [recordZoneIDsToDelete count];

          if (v46)
          {
            [(HDCloudSyncCompoundOperation *)v42 addOperation:v38 transitionHandler:0];
          }

          if ([(NSMutableSet *)self->_updatedParticipantRecordIDs count])
          {
            v47 = self->_participantRecords;
            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v70[2] = __62__HDCloudSyncSharedSummarySynchronizeCloudStateOperation_main__block_invoke_298;
            v70[3] = &unk_278620400;
            v70[4] = self;
            v48 = [(NSArray *)v47 hk_map:v70];
            v49 = [HDCloudSyncModifyRecordsOperation alloc];
            [(HDCloudSyncOperation *)self configuration];
            v67 = v38;
            v51 = v50 = v42;
            configuration5 = [(HDCloudSyncOperation *)self configuration];
            repository3 = [configuration5 repository];
            primaryCKContainer2 = [repository3 primaryCKContainer];
            v55 = [(HDCloudSyncModifyRecordsOperation *)v49 initWithConfiguration:v51 container:primaryCKContainer2 recordsToSave:v48 recordIDsToDelete:0];

            v42 = v50;
            v38 = v67;
            [(HDCloudSyncCompoundOperation *)v42 addOperation:v55 transitionHandler:0];
          }

          if ([(NSMutableSet *)self->_sharesToDelete count])
          {
            v56 = [(NSMutableSet *)self->_sharesToDelete hk_map:&__block_literal_global_303_0];
            allObjects = [v56 allObjects];

            v58 = [HDCloudSyncModifyRecordsOperation alloc];
            configuration6 = [(HDCloudSyncOperation *)self configuration];
            configuration7 = [(HDCloudSyncOperation *)self configuration];
            repository4 = [configuration7 repository];
            primaryCKContainer3 = [repository4 primaryCKContainer];
            v63 = [(HDCloudSyncModifyRecordsOperation *)v58 initWithConfiguration:configuration6 container:primaryCKContainer3 scope:3 recordsToSave:0 recordIDsToDelete:allObjects];

            [(HDCloudSyncCompoundOperation *)v42 addOperation:v63 transitionHandler:0];
          }

          [(HDCloudSyncOperation *)self delegateToOperation:v42];

          v39 = v68;
          v14 = v69;
        }

        else
        {
          _HKInitializeLogging();
          v66 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy5 = self;
            v78 = 2114;
            v79 = v39;
            _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to compute invalid zones for removal: %{public}@", buf, 0x16u);
          }

          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v39];
        }

        v37 = v39;
      }

      else
      {
        _HKInitializeLogging();
        v65 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy5 = self;
          v78 = 2114;
          v79 = v37;
          _os_log_error_impl(&dword_228986000, v65, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to compute invalid shares for removal: %{public}@", buf, 0x16u);
        }

        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v37];
      }

      v35 = v37;
    }

    else
    {
      _HKInitializeLogging();
      v64 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy5 = self;
        v78 = 2114;
        v79 = v35;
        _os_log_error_impl(&dword_228986000, v64, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to validate participant records: %{public}@", buf, 0x16u);
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v35];
    }

    goto LABEL_38;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping operation because platform/profile does not support summary sharing", buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
}

void __62__HDCloudSyncSharedSummarySynchronizeCloudStateOperation_main__block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 UUID];
  (a3)[2](v5, v7, v6);
}

id __62__HDCloudSyncSharedSummarySynchronizeCloudStateOperation_main__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 128);
  v5 = [v3 recordID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 record];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_validateCloudStateForParticipantRecord:(id)record error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  relationshipType = [recordCopy relationshipType];
  if (relationshipType)
  {
    v8 = relationshipType;
    relationshipType2 = [recordCopy relationshipType];
    longValue = [relationshipType2 longValue];

    if (!longValue)
    {
      relationshipStatus = [recordCopy relationshipStatus];
      longValue2 = [relationshipStatus longValue];

      v14 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _zonesForParticipant:recordCopy error:error];
      v15 = v14;
      if (!v14)
      {
        v11 = 0;
LABEL_20:

        goto LABEL_21;
      }

      firstObject = [v14 firstObject];
      v17 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _currentZoneStateForParticipant:recordCopy zone:firstObject error:error];
      v18 = v17;
      if (!v17)
      {
        goto LABEL_10;
      }

      longValue3 = [v17 longValue];
      relationshipStatus2 = [recordCopy relationshipStatus];

      if (relationshipStatus2)
      {
        if ((longValue2 - 2) < 3)
        {
          relationshipDirection = [recordCopy relationshipDirection];
          if ([relationshipDirection longValue] == 1)
          {
            v22 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _updateShareForAllNonOwnerParticipantsInZone:firstObject error:error];

            if (!v22)
            {
LABEL_10:
              v11 = 0;
LABEL_19:

              goto LABEL_20;
            }

LABEL_18:
            v11 = 1;
            goto LABEL_19;
          }

LABEL_17:

          goto LABEL_18;
        }

        if (longValue2 == 1)
        {
          if (longValue3 >= 2)
          {
            _HKInitializeLogging();
            v31 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v32 = v31;
              v33 = HKStringForSharingStatus();
              v34 = HKStringForSharingStatus();
              *v46 = 138544130;
              *&v46[4] = self;
              *&v46[12] = 2112;
              *&v46[14] = recordCopy;
              *&v46[22] = 2114;
              v47 = v33;
              LOWORD(v48) = 2114;
              *(&v48 + 2) = v34;
              _os_log_impl(&dword_228986000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] %@: Updating status from %{public}@ to %{public}@ due to zone state.", v46, 0x2Au);
            }

            [recordCopy setRelationshipStatus:v18];
          }

          relationshipDirection2 = [recordCopy relationshipDirection];
          if ([relationshipDirection2 longValue] == 1)
          {
            ownerParticipant = [recordCopy ownerParticipant];

            if (!ownerParticipant)
            {
              if (![(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _updateOwnerParticipantForParticipantRecord:recordCopy zone:firstObject error:error])
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }

          else
          {
          }

          if (longValue3 < 2)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        if (longValue2)
        {
          goto LABEL_18;
        }

        relationshipDirection3 = [recordCopy relationshipDirection];
        longValue4 = [relationshipDirection3 longValue];

        if (!longValue3)
        {
          goto LABEL_18;
        }

        if (longValue4)
        {
          if (longValue3 == 4)
          {
            goto LABEL_18;
          }

          _HKInitializeLogging();
          v30 = *MEMORY[0x277CCC328];
          if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          entryInvitationDate = [recordCopy entryInvitationDate];
          [entryInvitationDate timeIntervalSinceReferenceDate];
          v40 = Current - v39;

          _HKInitializeLogging();
          v30 = *MEMORY[0x277CCC328];
          v41 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
          if (v40 < 3600.0 && longValue3 != 1)
          {
            if (v41)
            {
              v42 = v30;
              v43 = HKStringForSharingStatus();
              *v46 = 138543874;
              *&v46[4] = self;
              *&v46[12] = 2112;
              *&v46[14] = recordCopy;
              *&v46[22] = 2114;
              v47 = v43;
              _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] %@: Ignoring new pending participant despite mismatch with zone status %{public}@.", v46, 0x20u);
            }

            goto LABEL_18;
          }

          if (!v41)
          {
            goto LABEL_15;
          }
        }

        v24 = v30;
        v44 = HKStringForSharingStatus();
        v45 = HKStringForSharingStatus();
        *v46 = 138544130;
        *&v46[4] = self;
        *&v46[12] = 2112;
        *&v46[14] = recordCopy;
        *&v46[22] = 2114;
        v47 = v44;
        LOWORD(v48) = 2114;
        *(&v48 + 2) = v45;
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] %@: Updating status from %{public}@ to %{public}@ due to zone state.", v46, 0x2Au);
      }

      else
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC328];
        if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
LABEL_15:
          [recordCopy setRelationshipStatus:{v18, *v46, *&v46[8], v47, v48}];
LABEL_16:
          updatedParticipantRecordIDs = self->_updatedParticipantRecordIDs;
          relationshipDirection = [recordCopy recordID];
          [(NSMutableSet *)updatedParticipantRecordIDs addObject:relationshipDirection];
          goto LABEL_17;
        }

        v24 = v23;
        v25 = HKStringForSharingStatus();
        *v46 = 138543874;
        *&v46[4] = self;
        *&v46[12] = 2112;
        *&v46[14] = recordCopy;
        *&v46[22] = 2114;
        v47 = v25;
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] %@: Filling out initial status from zone state: %{public}@.", v46, 0x20u);
      }

      goto LABEL_15;
    }
  }

  v11 = 1;
LABEL_21:

  return v11;
}

- (id)_zoneIdentifierForParticipant:(id)participant
{
  participantCopy = participant;
  relationshipDirection = [participantCopy relationshipDirection];
  if (relationshipDirection)
  {
    relationshipDirection2 = [participantCopy relationshipDirection];
    longValue = [relationshipDirection2 longValue];
    v8 = 2;
    if (longValue)
    {
      v8 = 3;
    }

    v20 = v8;
  }

  else
  {
    v20 = 2;
  }

  v9 = MEMORY[0x277CBC5F8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  syncContainerPrefix = [configuration syncContainerPrefix];
  uUID = [participantCopy UUID];
  v13 = [v9 hd_sharedSummaryZoneIDWithSyncCircleIdentifier:syncContainerPrefix userIdentifier:uUID];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v18 = [HDCloudSyncZoneIdentifier identifierForZone:v13 container:containerIdentifier scope:v20];

  return v18;
}

- (BOOL)_validateParticipantRecordCloudStateWithError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_participantRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _validateCloudStateForParticipantRecord:*(*(&v12 + 1) + 8 * i) error:error, v12])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (id)_zonesForParticipant:(id)participant error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v7 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _zoneIdentifierForParticipant:participantCopy];
  relationshipDirection = [participantCopy relationshipDirection];
  v22 = v7;
  if (relationshipDirection)
  {
    relationshipDirection2 = [participantCopy relationshipDirection];
    if ([relationshipDirection2 longValue])
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 2;
  }

  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v17 = [cachedCloudState zoneIdentifiersForContainerIdentifier:containerIdentifier databaseScope:v10 error:error];

  if (v17)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __85__HDCloudSyncSharedSummarySynchronizeCloudStateOperation__zonesForParticipant_error___block_invoke;
    v23[3] = &unk_278620448;
    v18 = v22;
    v24 = v22;
    selfCopy = self;
    v19 = [v17 hk_map:v23];
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    v18 = v22;
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v28 = 2112;
      v29 = participantCopy;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[summary-sharing] %{public}@: Failed to load zones when looking for state for participant %@", buf, 0x16u);
    }

    v19 = 0;
  }

  return v19;
}

id __85__HDCloudSyncSharedSummarySynchronizeCloudStateOperation__zonesForParticipant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEquivalentIgnoringOwnerToZone:*(a1 + 32)])
  {
    v4 = [HDCloudSyncCachedZone alloc];
    v5 = [*(a1 + 40) configuration];
    v6 = [v5 repository];
    v7 = [*(a1 + 40) configuration];
    v8 = [v7 accessibilityAssertion];
    v9 = [(HDCloudSyncCachedZone *)v4 initForZoneIdentifier:v3 repository:v6 accessibilityAssertion:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_currentZoneStateForParticipant:(id)participant zone:(id)zone error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  v9 = participantCopy;
  if (zone)
  {
    v39 = 0;
    v10 = [zone zoneShareWithError:&v39];
    v11 = v39;
    v12 = v11;
    if (v10)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      participants = [v10 participants];
      v14 = [participants countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v36;
        v17 = &unk_283CB20D0;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v36 != v16)
            {
              objc_enumerationMutation(participants);
            }

            v19 = *(*(&v35 + 1) + 8 * i);
            if ([v19 role] != 1)
            {
              if ([v19 acceptanceStatus] == 2)
              {
                goto LABEL_23;
              }

              if ([v19 acceptanceStatus] == 1)
              {
                v17 = &unk_283CB20E8;
LABEL_23:

                goto LABEL_35;
              }
            }
          }

          v15 = [participants countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      relationshipStatus = [v9 relationshipStatus];
      if ([relationshipStatus longValue] == 1)
      {
      }

      else
      {
        relationshipStatus2 = [v9 relationshipStatus];
        longValue = [relationshipStatus2 longValue];

        if (longValue)
        {
LABEL_29:
          v17 = &unk_283CB2100;
LABEL_35:

          goto LABEL_36;
        }
      }

      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v43 = 2112;
        v44 = v9;
        _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to find participant on share for %@: Marking as declined.", buf, 0x16u);
      }

      goto LABEL_29;
    }

    if (v11)
    {
      if (error)
      {
        v26 = v11;
        v17 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }

      goto LABEL_35;
    }

    relationshipStatus3 = [v9 relationshipStatus];
    if ([relationshipStatus3 longValue] == 1)
    {
    }

    else
    {
      relationshipStatus4 = [v9 relationshipStatus];
      longValue2 = [relationshipStatus4 longValue];

      if (longValue2)
      {
LABEL_34:
        v17 = &unk_283CB20B8;
        goto LABEL_35;
      }
    }

    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v43 = 2112;
      v44 = v9;
      _os_log_impl(&dword_228986000, v33, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to find share for %@: Marking as revoked.", buf, 0x16u);
    }

    goto LABEL_34;
  }

  relationshipStatus5 = [participantCopy relationshipStatus];
  longValue3 = [relationshipStatus5 longValue];

  if (longValue3 == 1)
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _zoneIdentifierForParticipant:v9];
      *buf = 138543874;
      selfCopy3 = self;
      v43 = 2114;
      v44 = v25;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to find zone %{public}@ for %@: Marking as revoked", buf, 0x20u);
    }
  }

  v17 = &unk_283CB20B8;
LABEL_36:

  return v17;
}

- (BOOL)_updateShareForAllNonOwnerParticipantsInZone:(id)zone error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v7 = zoneCopy;
  if (zoneCopy)
  {
    v32 = 0;
    v8 = [zoneCopy zoneShareWithError:&v32];
    v9 = v32;
    if (v8)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      participants = [v8 participants];
      v11 = objc_msgSend_copy(participants);

      v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v25 = v9;
        v26 = v8;
        v27 = v7;
        v14 = 0;
        v15 = MEMORY[0x277CCC328];
        v16 = *v29;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            if ([v18 role] != 1)
            {
              _HKInitializeLogging();
              v19 = *v15;
              if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                selfCopy3 = self;
                _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] Participant on the share is not an owner.", buf, 0xCu);
              }

              if ([v18 acceptanceStatus] == 1 || objc_msgSend(v18, "acceptanceStatus") == 2)
              {
                _HKInitializeLogging();
                v20 = *v15;
                if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  selfCopy3 = self;
                  v36 = 2112;
                  v37 = v18;
                  _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Deleting share for participant %@.", buf, 0x16u);
                }

                v14 = 1;
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v13);

        v9 = v25;
        if (v14)
        {
          v8 = v26;
          [(NSMutableSet *)self->_sharesToDelete addObject:v26];
          v21 = 1;
        }

        else
        {
          v21 = 1;
          v8 = v26;
        }

        v7 = v27;
        goto LABEL_31;
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy3 = self;
        v36 = 2112;
        v37 = v7;
        v38 = 2114;
        v39 = v9;
        _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to find share for zone %@ with error %{public}@.", buf, 0x20u);
      }

      if (v9)
      {
        if (error)
        {
          v23 = v9;
          v21 = 0;
          *error = v9;
        }

        else
        {
          _HKLogDroppedError();
          v21 = 0;
        }

        goto LABEL_31;
      }
    }

    v21 = 1;
LABEL_31:

    goto LABEL_32;
  }

  v21 = 1;
LABEL_32:

  return v21;
}

- (BOOL)_updateOwnerParticipantForParticipantRecord:(id)record zone:(id)zone error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (zone)
  {
    v20 = 0;
    v9 = [zone zoneShareWithError:&v20];
    v10 = v20;
    v11 = v10;
    if (v9)
    {
      participants = [v9 participants];
      v13 = [participants hk_firstObjectPassingTest:&__block_literal_global_317_3];

      if (v13)
      {
        [recordCopy setOwnerParticipant:v13];
      }

      else
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v23 = 2112;
          v24 = recordCopy;
          _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Share contains no owner attempting to update owner participant for %@.", buf, 0x16u);
        }
      }
    }

    else
    {
      if (v10)
      {
        if (error)
        {
          v16 = v10;
          v15 = 0;
          *error = v11;
        }

        else
        {
          _HKLogDroppedError();
          v15 = 0;
        }

        goto LABEL_15;
      }

      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v23 = 2112;
        v24 = recordCopy;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: No share for participant %@ when attempting to update owner participant.", buf, 0x16u);
      }
    }

    v15 = 1;
LABEL_15:

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v23 = 2112;
    v24 = recordCopy;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: No zone for participant %@ when attempting to update owner participant.", buf, 0x16u);
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (id)_removeInvalidSharesOperationWithError:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v12 = [cachedCloudState zoneIdentifiersForContainerIdentifier:containerIdentifier databaseScope:3 error:error];

  if (v12)
  {
    v41 = v5;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v39 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      v40 = *MEMORY[0x277CBC020];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v45 + 1) + 8 * i);
          zoneIdentifier = [v17 zoneIdentifier];
          v43 = 0;
          v44 = 0;
          v19 = [zoneIdentifier hd_isSharedSummaryZoneIDForUserIdentifier:&v44 syncCircleIdentifier:&v43];
          v20 = v44;
          v21 = v43;

          if (v19)
          {
            configuration3 = [(HDCloudSyncOperation *)self configuration];
            syncContainerPrefix = [configuration3 syncContainerPrefix];
            v24 = [v21 isEqualToString:syncContainerPrefix];

            if (v24)
            {
              v25 = [(NSDictionary *)self->_participantRecordsByUUID objectForKeyedSubscript:v20];
              relationshipDirection = [v25 relationshipDirection];
              longValue = [relationshipDirection longValue];

              if (longValue == 1 && ![(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _isActiveParticipant:v25])
              {
                v28 = objc_alloc(MEMORY[0x277CBC5D0]);
                zoneIdentifier2 = [v17 zoneIdentifier];
                v30 = [v28 initWithRecordName:v40 zoneID:zoneIdentifier2];

                [v41 addObject:v30];
              }
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v14);
    }

    v31 = [HDCloudSyncModifyRecordsOperation alloc];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration5 repository];
    primaryCKContainer2 = [repository2 primaryCKContainer];
    v36 = v31;
    v5 = v41;
    v37 = [(HDCloudSyncModifyRecordsOperation *)v36 initWithConfiguration:configuration4 container:primaryCKContainer2 scope:3 recordsToSave:0 recordIDsToDelete:v41];

    v12 = v39;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)_deleteInvalidZonesOperationWithError:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  configuration = [(HDCloudSyncOperation *)self configuration];
  cachedCloudState = [configuration cachedCloudState];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration2 repository];
  primaryCKContainer = [repository primaryCKContainer];
  containerIdentifier = [primaryCKContainer containerIdentifier];
  v12 = [cachedCloudState zoneIdentifiersForContainerIdentifier:containerIdentifier databaseScope:2 error:error];

  if (v12)
  {
    v36 = v12;
    v37 = v5;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v42;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          zoneIdentifier = [v17 zoneIdentifier];
          v39 = 0;
          v40 = 0;
          v19 = [zoneIdentifier hd_isSharedSummaryZoneIDForUserIdentifier:&v40 syncCircleIdentifier:&v39];
          v20 = v40;
          v21 = v39;

          if (v19)
          {
            configuration3 = [(HDCloudSyncOperation *)self configuration];
            syncContainerPrefix = [configuration3 syncContainerPrefix];
            v24 = [v21 isEqualToString:syncContainerPrefix];

            if (v24)
            {
              v25 = [(NSDictionary *)self->_participantRecordsByUUID objectForKeyedSubscript:v20];
              relationshipDirection = [v25 relationshipDirection];
              longValue = [relationshipDirection longValue];

              if (!longValue && ![(HDCloudSyncSharedSummarySynchronizeCloudStateOperation *)self _isActiveParticipant:v25])
              {
                zoneIdentifier2 = [v17 zoneIdentifier];
                [v37 addObject:zoneIdentifier2];
              }
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v14);
    }

    v29 = [HDCloudSyncModifyRecordZonesOperation alloc];
    configuration4 = [(HDCloudSyncOperation *)self configuration];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration5 repository];
    primaryCKContainer2 = [repository2 primaryCKContainer];
    v5 = v37;
    v34 = [(HDCloudSyncModifyRecordZonesOperation *)v29 initWithConfiguration:configuration4 container:primaryCKContainer2 scope:2 recordZonesToSave:0 recordZoneIDsToDelete:v37];

    v12 = v36;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (BOOL)_isActiveParticipant:(id)participant
{
  participantCopy = participant;
  v4 = participantCopy;
  if (participantCopy)
  {
    relationshipStatus = [participantCopy relationshipStatus];
    if ([relationshipStatus longValue])
    {
      relationshipStatus2 = [v4 relationshipStatus];
      v7 = [relationshipStatus2 longValue] == 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end