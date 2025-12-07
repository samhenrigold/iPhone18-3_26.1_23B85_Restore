@interface HDCloudSyncPipelineStageCheckForRequiredProfileDeletion
- (void)main;
@end

@implementation HDCloudSyncPipelineStageCheckForRequiredProfileDeletion

- (void)main
{
  v26 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  context = [configuration context];
  options = [context options];

  if ((options & 0x200) == 0)
  {
    v6 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1];
    [v6 setCompletedUnitCount:{objc_msgSend(v6, "totalUnitCount")}];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration2 repository];
    profile = [repository profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];

    if ([legacyRepositoryProfile profileType] != 3 && objc_msgSend(legacyRepositoryProfile, "profileType") != 2)
    {
      [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
      goto LABEL_17;
    }

    configuration3 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration3 cachedCloudState];
    v21 = 0;
    v13 = [cachedCloudState zonesByIdentifierWithError:&v21];
    v14 = v21;

    if (v13 || !v14)
    {
      if (![v13 count])
      {
        [legacyRepositoryProfile triggerDeletion];
        v20 = [MEMORY[0x277CCA9B8] hk_error:714 format:{@"Profile does not have any zones. Deleting profile: %@", legacyRepositoryProfile}];
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v20];

        goto LABEL_15;
      }

      selfCopy3 = self;
      v17 = 1;
      v18 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v24 = 2114;
        v25 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve cached zones, %{public}@", buf, 0x16u);
      }

      selfCopy3 = self;
      v17 = 0;
      v18 = v14;
    }

    [(HDCloudSyncOperation *)selfCopy3 finishWithSuccess:v17 error:v18];
LABEL_15:

LABEL_17:
    return;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy4 = self;
    _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping stale profile deletion due to pipeline options.", buf, 0xCu);
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
}

@end