@interface IMCloudKitMockSyncState
- (id)convertToDictionary;
@end

@implementation IMCloudKitMockSyncState

- (id)convertToDictionary
{
  v37[15] = *MEMORY[0x1E69E9840];
  v36[0] = *MEMORY[0x1E69A6E00];
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitSyncingEnabled](self, "IMCloudKitSyncingEnabled")}];
  v37[0] = v35;
  v36[1] = *MEMORY[0x1E69A6D68];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitIsSyncing](self, "IMCloudKitIsSyncing")}];
  v37[1] = v34;
  v36[2] = *MEMORY[0x1E69A6D50];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitIsEligibleForTruthZone](self, "IMCloudKitIsEligibleForTruthZone")}];
  v37[2] = v33;
  v36[3] = *MEMORY[0x1E69A6D58];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitIsInExitState](self, "IMCloudKitIsInExitState")}];
  v37[3] = v32;
  v36[4] = *MEMORY[0x1E69A6D60];
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitIsRemovedFromBackup](self, "IMCloudKitIsRemovedFromBackup")}];
  v37[4] = v31;
  v36[5] = *MEMORY[0x1E69A6DA0];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitStartingPeriodicSync](self, "IMCloudKitStartingPeriodicSync")}];
  v37[5] = v30;
  v36[6] = *MEMORY[0x1E69A6D98];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitStartingInitialSync](self, "IMCloudKitStartingInitialSync")}];
  v37[6] = v29;
  v36[7] = *MEMORY[0x1E69A6D90];
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMCloudKitMockSyncState IMCloudKitStartingEnabledSettingChange](self, "IMCloudKitStartingEnabledSettingChange")}];
  v37[7] = v28;
  v36[8] = *MEMORY[0x1E69A6D88];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitStartingDisableDevices](self, "IMCloudKitStartingDisableDevices")}];
  v37[8] = v27;
  v36[9] = *MEMORY[0x1E69A6DB8];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMCloudKitMockSyncState IMCloudKitSyncControllerSyncState](self, "IMCloudKitSyncControllerSyncState")}];
  v37[9] = v3;
  v36[10] = *MEMORY[0x1E69A6DC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMCloudKitMockSyncState IMCloudKitSyncControllerSyncType](self, "IMCloudKitSyncControllerSyncType")}];
  v37[10] = v4;
  v36[11] = *MEMORY[0x1E69A6DB0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMCloudKitMockSyncState IMCloudKitSyncControllerSyncRecordType](self, "IMCloudKitSyncControllerSyncRecordType")}];
  v37[11] = v5;
  v36[12] = *MEMORY[0x1E69A6DE8];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMCloudKitMockSyncState IMCloudKitSyncPaused](self, "IMCloudKitSyncPaused")}];
  v37[12] = v6;
  v36[13] = *MEMORY[0x1E69A6DF0];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMCloudKitMockSyncState IMCloudKitSyncStatus](self, "IMCloudKitSyncStatus")}];
  v37[13] = v7;
  v36[14] = *MEMORY[0x1E69A6DE0];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMCloudKitMockSyncState IMCloudKitSyncJobState](self, "IMCloudKitSyncJobState")}];
  v37[14] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:15];
  v10 = [v9 mutableCopy];

  iMCloudKitSyncDate = [(IMCloudKitMockSyncState *)self IMCloudKitSyncDate];

  if (iMCloudKitSyncDate)
  {
    iMCloudKitSyncDate2 = [(IMCloudKitMockSyncState *)self IMCloudKitSyncDate];
    [v10 setObject:iMCloudKitSyncDate2 forKey:*MEMORY[0x1E69A6DC8]];
  }

  iMCloudKitFullSyncCompletedDate = [(IMCloudKitMockSyncState *)self IMCloudKitFullSyncCompletedDate];
  if (iMCloudKitFullSyncCompletedDate)
  {
  }

  else
  {
    iMCloudKitFullPartialSyncCompletedDate = [(IMCloudKitMockSyncState *)self IMCloudKitFullPartialSyncCompletedDate];

    if (!iMCloudKitFullPartialSyncCompletedDate)
    {
      goto LABEL_11;
    }
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  iMCloudKitFullPartialSyncCompletedDate2 = [(IMCloudKitMockSyncState *)self IMCloudKitFullPartialSyncCompletedDate];

  if (iMCloudKitFullPartialSyncCompletedDate2)
  {
    v17 = MEMORY[0x1E696AD98];
    iMCloudKitFullPartialSyncCompletedDate3 = [(IMCloudKitMockSyncState *)self IMCloudKitFullPartialSyncCompletedDate];
    [iMCloudKitFullPartialSyncCompletedDate3 timeIntervalSince1970];
    v19 = [v17 numberWithDouble:?];

    [v15 setObject:v19 forKey:*MEMORY[0x1E69A6D28]];
  }

  iMCloudKitFullSyncCompletedDate2 = [(IMCloudKitMockSyncState *)self IMCloudKitFullSyncCompletedDate];

  if (iMCloudKitFullSyncCompletedDate2)
  {
    v21 = MEMORY[0x1E696AD98];
    iMCloudKitFullSyncCompletedDate3 = [(IMCloudKitMockSyncState *)self IMCloudKitFullSyncCompletedDate];
    [iMCloudKitFullSyncCompletedDate3 timeIntervalSince1970];
    v23 = [v21 numberWithDouble:?];

    [v15 setObject:v23 forKey:*MEMORY[0x1E69A6D30]];
  }

  [v10 setObject:v15 forKey:*MEMORY[0x1E69A6D08]];

LABEL_11:
  iMCloudKitSyncErrors = [(IMCloudKitMockSyncState *)self IMCloudKitSyncErrors];

  if (iMCloudKitSyncErrors)
  {
    iMCloudKitSyncErrors2 = [(IMCloudKitMockSyncState *)self IMCloudKitSyncErrors];
    [v10 setObject:iMCloudKitSyncErrors2 forKey:*MEMORY[0x1E69A6DD8]];
  }

  return v10;
}

@end