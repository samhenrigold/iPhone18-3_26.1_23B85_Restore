@interface HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation
- (HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation)initWithConfiguration:(id)configuration participants:(id)participants;
- (void)_deleteLocalProfileIfNecessaryForParticipant:(id)participant completion:(id)completion;
- (void)main;
- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors;
@end

@implementation HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation

- (HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation)initWithConfiguration:(id)configuration participants:(id)participants
{
  participantsCopy = participants;
  v13.receiver = self;
  v13.super_class = HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation;
  v7 = [(HDCloudSyncOperation *)&v13 initWithConfiguration:configuration cloudState:0];
  if (v7)
  {
    v8 = objc_msgSend_copy(participantsCopy);
    participantRecords = v7->_participantRecords;
    v7->_participantRecords = v8;

    v10 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = v7->_taskGroup;
    v7->_taskGroup = v10;

    [(HDSynchronousTaskGroup *)v7->_taskGroup setDelegate:v7];
  }

  return v7;
}

- (void)main
{
  selfCopy = self;
  v30 = *MEMORY[0x277D85DE8];
  v3 = 112;
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = selfCopy->_participantRecords;
  v22 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v22)
  {
    v5 = *v26;
    v6 = v24;
    v21 = selfCopy;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        relationshipDirection = [v8 relationshipDirection];
        if ([relationshipDirection longValue] == 1)
        {
          relationshipType = [v8 relationshipType];
          if (![relationshipType longValue])
          {
            [v8 relationshipStatus];
            v13 = v5;
            v15 = v14 = v3;
            v16 = v6;
            v17 = v4;
            longValue = [v15 longValue];

            v3 = v14;
            v5 = v13;

            v19 = longValue == 1;
            v4 = v17;
            v6 = v16;
            selfCopy = v21;
            if (v19)
            {
              goto LABEL_12;
            }

            goto LABEL_10;
          }
        }

LABEL_10:
        relationshipStatus = [v8 relationshipStatus];
        longValue2 = [relationshipStatus longValue];

        if (longValue2)
        {
          [*(&selfCopy->super.super.isa + v3) beginTask];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v24[0] = __75__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation_main__block_invoke;
          v24[1] = &unk_2786130B0;
          v24[2] = selfCopy;
          [(HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation *)selfCopy _deleteLocalProfileIfNecessaryForParticipant:v8 completion:v23];
        }

LABEL_12:
        ++v7;
      }

      while (v22 != v7);
      v20 = [(NSArray *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v22 = v20;
    }

    while (v20);
  }

  [*(&selfCopy->super.super.isa + v3) finishTask];
}

uint64_t __75__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation_main__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(*(a1 + 32) + 112) failTaskWithError:?];
  }

  v4 = *(*(a1 + 32) + 112);

  return [v4 finishTask];
}

- (void)_deleteLocalProfileIfNecessaryForParticipant:(id)participant completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CCD7C8];
  uUID = [participant UUID];
  v9 = [v7 _profileWithUUID:uUID type:2];

  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profileIdentifier = [repository profileIdentifier];
  v13 = [v9 isEqual:profileIdentifier];

  if (v13)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration2 repository];
    cloudSyncShimProvider = [repository2 cloudSyncShimProvider];
    profileManagementShim = [cloudSyncShimProvider profileManagementShim];

    configuration3 = [(HDCloudSyncOperation *)self configuration];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __127__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation__deleteLocalProfileIfNecessaryForParticipant_completion___block_invoke;
    v20[3] = &unk_278615320;
    v24 = completionCopy;
    v21 = profileManagementShim;
    v22 = v9;
    selfCopy = self;
    v19 = profileManagementShim;
    [v19 profileExistsForProfileIdentifier:v22 configuration:configuration3 completion:v20];
  }
}

void __127__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation__deleteLocalProfileIfNecessaryForParticipant_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    v6 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (a2)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) configuration];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __127__HDCloudSyncSharedSummaryInactiveParticipantProfileDeletionOperation__deleteLocalProfileIfNecessaryForParticipant_completion___block_invoke_2;
      v10[3] = &unk_2786130D8;
      v11 = *(a1 + 56);
      [v7 deleteProfile:v8 configuration:v9 completion:v10];

      goto LABEL_7;
    }

    v6 = *(*(a1 + 56) + 16);
  }

  v6();
LABEL_7:
}

- (void)synchronousTaskGroup:(id)group didFinishWithSuccess:(BOOL)success errors:(id)errors
{
  successCopy = success;
  firstObject = [errors firstObject];
  [(HDCloudSyncOperation *)self finishWithSuccess:successCopy error:firstObject];
}

@end