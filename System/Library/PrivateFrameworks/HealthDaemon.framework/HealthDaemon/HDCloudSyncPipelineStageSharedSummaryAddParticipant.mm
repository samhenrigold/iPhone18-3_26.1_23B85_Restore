@interface HDCloudSyncPipelineStageSharedSummaryAddParticipant
- (HDCloudSyncPipelineStageSharedSummaryAddParticipant)initWithConfiguration:(id)configuration cloudState:(id)state codableEntry:(id)entry authorizationIdentifiers:(id)identifiers;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummaryAddParticipant

- (HDCloudSyncPipelineStageSharedSummaryAddParticipant)initWithConfiguration:(id)configuration cloudState:(id)state codableEntry:(id)entry authorizationIdentifiers:(id)identifiers
{
  entryCopy = entry;
  identifiersCopy = identifiers;
  v18.receiver = self;
  v18.super_class = HDCloudSyncPipelineStageSharedSummaryAddParticipant;
  v12 = [(HDCloudSyncPipelineStage *)&v18 initWithConfiguration:configuration cloudState:state];
  if (v12)
  {
    v13 = objc_msgSend_copy(entryCopy);
    codableEntry = v12->_codableEntry;
    v12->_codableEntry = v13;

    v15 = objc_msgSend_copy(identifiersCopy);
    authorizationIdentifiers = v12->_authorizationIdentifiers;
    v12->_authorizationIdentifiers = v15;
  }

  return v12;
}

- (void)main
{
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];

  primaryContactIdentifier = [(HDCodableSummarySharingEntry *)self->_codableEntry primaryContactIdentifier];
  if ([primaryContactIdentifier _appearsToBeEmail])
  {
    v7 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithEmailAddress:primaryContactIdentifier];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if ([primaryContactIdentifier _appearsToBePhoneNumber])
  {
    v7 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithPhoneNumber:primaryContactIdentifier];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  if (v8)
  {
    primaryCKContainer = [repository primaryCKContainer];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HDCloudSyncPipelineStageSharedSummaryAddParticipant_main__block_invoke;
    v11[3] = &unk_278627748;
    v11[4] = self;
    v12 = v8;
    [primaryCKContainer fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v11];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"_codableEntry.primaryContactIdentifier" class:objc_opt_class() selector:a2 format:@"Unable to create lookup info from contact identifier"];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v10];
  }
}

void __59__HDCloudSyncPipelineStageSharedSummaryAddParticipant_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v94[2] = *MEMORY[0x277D85DE8];
  v71 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v70 = v7;
  if (v7)
  {
    v61 = v8;
    v10 = *(a1 + 32);
    v68 = *(a1 + 40);
    v62 = v71;
    v65 = v7;
    if (v10)
    {
      v11 = [v10 configuration];
      v12 = [v11 repository];

      v13 = [HDCloudSyncCompoundOperation alloc];
      v14 = [v10 configuration];
      v15 = [(HDCloudSyncCompoundOperation *)v13 initWithConfiguration:v14 cloudState:0 name:@"Add Summary Sharing Participant" continueOnSubOperationError:0];

      v16 = [HDCloudSyncLookupParticipantOperation alloc];
      v17 = [v10 configuration];
      v18 = [(HDCloudSyncLookupParticipantOperation *)v16 initWithConfiguration:v17 cloudState:0 identityLookupInfo:v68];

      [(HDCloudSyncCompoundOperation *)v15 addOperation:v18 transitionHandler:0];
      v19 = [HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation alloc];
      v20 = [v10 configuration];
      v21 = [(HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation *)v19 initWithConfiguration:v20 cloudState:0];

      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke;
      v92[3] = &unk_278625240;
      v22 = v18;
      v93 = v22;
      v60 = v21;
      [(HDCloudSyncCompoundOperation *)v15 addOperation:v21 transitionHandler:v92];
      v23 = objc_alloc(MEMORY[0x277CBC5E8]);
      v24 = MEMORY[0x277CBC5F8];
      v25 = [v10 configuration];
      v26 = [v25 syncContainerPrefix];
      v27 = [v24 hd_privateMetadataZoneIDForSyncCircleIdentifier:v26];
      v67 = [v23 initWithZoneID:v27];

      v28 = objc_alloc(MEMORY[0x277CCAD78]);
      v29 = [*(v10 + 128) uuid];
      v69 = [v28 initWithUUIDString:v29];

      v30 = MEMORY[0x277CBC5F8];
      v31 = [v12 syncCircleIdentifier];
      v32 = [v30 hd_sharedSummaryZoneIDWithSyncCircleIdentifier:v31 userIdentifier:v69];

      v66 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v32];
      v33 = [HDCloudSyncCreateZonesOperation alloc];
      v34 = [v10 configuration];
      v94[0] = v67;
      v94[1] = v66;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
      v36 = [v12 primaryCKContainer];
      v64 = [(HDCloudSyncCreateZonesOperation *)v33 initWithConfiguration:v34 cloudState:0 zones:v35 container:v36];

      [(HDCloudSyncCompoundOperation *)v15 addOperation:v64 transitionHandler:0];
      v37 = [HDCloudSyncRemoveInvalidShareParticipantsOperation alloc];
      v38 = [v10 configuration];
      v39 = [v10 cloudState];
      v63 = [(HDCloudSyncRemoveInvalidShareParticipantsOperation *)v37 initWithConfiguration:v38 cloudState:v39];

      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_2;
      v90[3] = &unk_278625240;
      v40 = v22;
      v91 = v40;
      [(HDCloudSyncCompoundOperation *)v15 addOperation:v63 transitionHandler:v90];
      v41 = [HDCloudSyncAddSharingParticipantOperation alloc];
      v42 = [v10 configuration];
      v43 = [(HDCloudSyncAddSharingParticipantOperation *)v41 initWithConfiguration:v42 cloudState:0];

      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_3;
      v86[3] = &unk_2786261A0;
      v44 = v40;
      v87 = v44;
      v59 = v32;
      v88 = v59;
      v45 = v12;
      v89 = v45;
      [(HDCloudSyncCompoundOperation *)v15 addOperation:v43 transitionHandler:v86];
      v84[0] = 0;
      v84[1] = v84;
      v84[2] = 0x3032000000;
      v84[3] = __Block_byref_object_copy__149;
      v84[4] = __Block_byref_object_dispose__149;
      v85 = 0;
      v46 = [HDCloudSyncSharedSummaryUpdateParticipantOperation alloc];
      v47 = [v10 configuration];
      v48 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)v46 initWithConfiguration:v47 codableEntry:*(v10 + 128) authorizationIdentifiersToAdd:*(v10 + 136) authorizationIdentifiersToDelete:MEMORY[0x277CBEBF8]];

      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_321;
      v76[3] = &unk_278627770;
      v83 = v84;
      v49 = v45;
      v77 = v49;
      v50 = v69;
      v78 = v50;
      v51 = v43;
      v79 = v51;
      v80 = v65;
      v81 = v10;
      v52 = v48;
      v82 = v52;
      [(HDCloudSyncCompoundOperation *)v15 addOperation:v52 transitionHandler:v76];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_324;
      v73[3] = &unk_278627798;
      v73[4] = v10;
      v75 = v84;
      v53 = v44;
      v74 = v53;
      [(HDCloudSyncOperation *)v15 setOnSuccess:v73];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_2_326;
      v72[3] = &unk_278613088;
      v72[4] = v10;
      [(HDCloudSyncOperation *)v15 setOnError:v72];
      v54 = [(HDCloudSyncOperation *)v15 progress];
      v55 = [v54 totalUnitCount];

      v56 = [v10 progress];
      [v56 setTotalUnitCount:{objc_msgSend(v56, "totalUnitCount") + v55}];

      v57 = [v10 progress];
      v58 = [(HDCloudSyncOperation *)v15 progress];
      [v57 addChild:v58 withPendingUnitCount:v55];

      [(HDCloudSyncCompoundOperation *)v15 start];
      _Block_object_dispose(v84, 8);
    }

    v9 = v61;
  }

  else
  {
    if (!v8)
    {
      v9 = [MEMORY[0x277CCA9B8] hk_error:124 format:@"Failed to fetch account info but recieved no error."];
    }

    [*(a1 + 32) finishWithSuccess:0 error:v9];
  }
}

void __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 participant];
  v5 = [v6 userIdentity];
  [v4 setUserIdentity:v5];
}

void __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(a1 + 32) participant];

  if (v5)
  {
    v6 = [*(a1 + 32) participant];
    v8[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v4 setParticipantsToCheck:v7];
  }

  else
  {
    [v4 setParticipantsToCheck:MEMORY[0x277CBEBF8]];
  }
}

void __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 participant];
  [v5 setParticipant:v6];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) primaryCKContainer];
  v9 = [v8 containerIdentifier];
  v10 = [HDCloudSyncZoneIdentifier identifierForZone:v7 container:v9 scope:2];

  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v5 setZoneIdentifiers:v11];
}

void __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_321(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [HDCloudSyncShareSetupMetadata alloc];
  v3 = [*(a1 + 32) syncCircleIdentifier];
  v4 = [MEMORY[0x277CCD7C8] _profileWithUUID:*(a1 + 40) type:2];
  v5 = [*(a1 + 48) shareURLs];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 48) participant];
  v8 = [*(a1 + 48) invitationTokensByShareURL];
  v9 = [(HDCloudSyncShareSetupMetadata *)v2 initWithSyncCircleIdentifier:v3 profileIdentifier:v4 shareURLs:v5 ownerCloudKitEmailAddress:v6 shareParticipant:v7 invitationTokensByShareURL:v8];
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 80) + 8) + 40);
  v18 = 0;
  v13 = [v12 codableSharingSetupMetadataWithError:&v18];
  v14 = v18;
  [*(*(a1 + 64) + 128) setSharingSetupMetadata:v13];

  v15 = [*(*(a1 + 64) + 128) sharingSetupMetadata];

  if (!v15)
  {
    _HKInitializeLogging();
    v16 = HKLogSharing();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 64);
      *buf = 138543618;
      v20 = v17;
      v21 = 2114;
      v22 = v14;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to create codable sharing setup metadata: %{public}@", buf, 0x16u);
    }
  }

  [*(a1 + 72) setEntry:*(*(a1 + 64) + 128)];
}

uint64_t __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_324(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 144), *(*(*(a1 + 48) + 8) + 40));
  v2 = [*(a1 + 40) participant];
  v3 = [v2 userIdentity];
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = v3;

  v6 = *(a1 + 32);

  return [v6 finishWithSuccess:1 error:0];
}

@end