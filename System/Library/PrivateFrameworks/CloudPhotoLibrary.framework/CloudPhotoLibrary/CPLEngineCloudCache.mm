@interface CPLEngineCloudCache
- (BOOL)ackownledgeRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)addRecord:(id)record isFinal:(BOOL)final error:(id *)error;
- (BOOL)applyBatch:(id)batch isFinal:(BOOL)final direction:(unint64_t)direction withError:(id *)error;
- (BOOL)commitStagedChangesForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)confirmAllRecordsWithError:(id *)error;
- (BOOL)deleteRecordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)discardStagedChangesForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)discardStagedChangesWithScopeFilter:(id)filter error:(id *)error;
- (BOOL)hasAnyRecordWithRelatedScopedIdentifier:(id)identifier;
- (BOOL)hasRecordAcknowledgedByClientWithScopedIdentifier:(id)identifier;
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (BOOL)remapAllRecordsWithPreviousScopedIdentifier:(id)identifier newScopedIdentifier:(id)scopedIdentifier error:(id *)error;
- (BOOL)updateFinalRecord:(id)record confirmed:(BOOL)confirmed error:(id *)error;
- (BOOL)updateStagedRecord:(id)record error:(id *)error;
- (id)_invalidCloudCacheErrorWithInvalidRecord:(id)record method:(id)method;
- (id)_otherScopedIdentifierForCloudScopedIdentifier:(id)identifier sharedScoped:(id)scoped;
- (id)_targetWithRecord:(id)record cloudScopedIdentifier:(id)identifier trustRecordChangeData:(BOOL)data;
- (id)_targetWithShareableRecord:(id)record cloudScopedIdentifier:(id)identifier otherScopedIdentifier:(id)scopedIdentifier sharedScope:(id)scope trustRecordChangeData:(BOOL)data;
- (id)allRecordsIsFinal:(BOOL)final;
- (id)cloudChangeBatchFromBatch:(id)batch usingMapping:(id)mapping isFinal:(BOOL)final withError:(id *)error;
- (id)recordAcknowledgedByClientWithScopedIdentifier:(id)identifier;
- (id)recordWithScopedIdentifier:(id)identifier isConfirmed:(BOOL *)confirmed isStaged:(BOOL *)staged;
- (id)recordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final;
- (id)recordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (id)recordsOfClass:(Class)class isFinal:(BOOL)final;
- (id)recordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class isFinal:(BOOL)final;
- (id)recordsWithRelatedScopedIdentifier:(id)identifier isFinal:(BOOL)final;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final;
- (id)resourceOfType:(unint64_t)type forRecordWithScopedIdentifier:(id)identifier record:(id *)record target:(id *)target error:(id *)error;
- (id)targetForRecordWithCloudScopedIdentifier:(id)identifier trustRecordChangeData:(BOOL)data;
- (id)targetForRecordWithSharedCloudScopedIdentifier:(id)identifier trustRecordChangeData:(BOOL)data;
- (unint64_t)countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (void)getCommittedRecord:(id *)record stagedRecord:(id *)stagedRecord forScopedIdentifier:(id)identifier;
- (void)updateStoredTargetsFromTargetMapping:(id)mapping;
@end

@implementation CPLEngineCloudCache

- (id)allRecordsIsFinal:(BOOL)final
{
  finalCopy = final;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v5 = [platformObject allRecordsIsFinal:finalCopy];

  return v5;
}

- (id)recordsOfClass:(Class)class isFinal:(BOOL)final
{
  finalCopy = final;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v7 = [platformObject recordsOfClass:class isFinal:finalCopy];

  return v7;
}

- (void)getCommittedRecord:(id *)record stagedRecord:(id *)stagedRecord forScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  *record = [platformObject recordWithScopedIdentifier:identifierCopy isFinal:1 isConfirmed:0];

  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v11 = [platformObject2 recordWithScopedIdentifier:identifierCopy isFinal:0 isConfirmed:0];

  v12 = v11;
  *stagedRecord = v11;

  v13 = *record;
  v14 = v13;
  v15 = *stagedRecord;
  if (!v13 || !v15)
  {
    v17 = v13 | v15;

    if (v17)
    {
      return;
    }

    goto LABEL_6;
  }

  v16 = [v13 isEqual:?];

  if (v16)
  {
LABEL_6:
    *stagedRecord = 0;
  }
}

- (id)resourceOfType:(unint64_t)type forRecordWithScopedIdentifier:(id)identifier record:(id *)record target:(id *)target error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = [(CPLEngineCloudCache *)self recordWithScopedIdentifier:identifierCopy isFinal:0];
  *target = [(CPLEngineCloudCache *)self _targetWithRecord:v13 cloudScopedIdentifier:identifierCopy trustRecordChangeData:1];
  if (!v13)
  {
    if (error)
    {
      v21 = @"Record does not exist";
      v22 = 25;
LABEL_23:
      v23 = [CPLErrors cplErrorWithCode:v22 description:v21];
      goto LABEL_24;
    }

LABEL_18:
    v20 = 0;
    goto LABEL_25;
  }

  if (record)
  {
    *record = [[CPLPlaceholderRecord alloc] initWithRecord:v13];
  }

  if (([v13 supportsResources] & 1) == 0)
  {
    if (error)
    {
      v23 = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
LABEL_24:
      v20 = 0;
      *error = v23;
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  resources = [v13 resources];
  v15 = [resources countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(resources);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        if ([v19 resourceType] == type)
        {
          v20 = v19;
          goto LABEL_20;
        }
      }

      v16 = [resources countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_20:

  if (error && !v20)
  {
    v21 = @"Record does not have this type of resource";
    v22 = 26;
    goto LABEL_23;
  }

LABEL_25:

  return v20;
}

- (void)updateStoredTargetsFromTargetMapping:(id)mapping
{
  v8 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  if ([mappingCopy hasUpdatedTargets])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        updatedTargetsDescription = [mappingCopy updatedTargetsDescription];
        v6 = 138543362;
        v7 = updatedTargetsDescription;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "Updating targets:\n%{public}@", &v6, 0xCu);
      }
    }

    [mappingCopy startTrackingUpdates];
  }
}

- (id)targetForRecordWithSharedCloudScopedIdentifier:(id)identifier trustRecordChangeData:(BOOL)data
{
  dataCopy = data;
  v67 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  engineStore = [(CPLEngineStorage *)self engineStore];
  sharingScopeIdentifier = [engineStore sharingScopeIdentifier];
  if (!sharingScopeIdentifier || (v10 = sharingScopeIdentifier, [identifierCopy scopeIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v10), v11, (v12 & 1) == 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v41 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v66 = identifierCopy;
        _os_log_impl(&dword_1DC05A000, v41, OS_LOG_TYPE_ERROR, "Trying to find target for %@ but sharing is not enabled", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineCloudCache.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v43 lineNumber:940 description:{@"Trying to find target for %@ but sharing is not enabled", identifierCopy}];
LABEL_38:

    abort();
  }

  scopes = [engineStore scopes];
  v14 = [scopes scopeWithIdentifier:v10];
  if (!v14)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v44 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v44, OS_LOG_TYPE_ERROR, "We should have a shared scope here", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineCloudCache.m"];
    v45 = @"We should have a shared scope here";
    v46 = currentHandler;
    v47 = a2;
    selfCopy2 = self;
    v49 = v43;
    v50 = 943;
    goto LABEL_37;
  }

  v15 = v14;
  v16 = [scopes scopeForSharingScope:v14];
  if (!v16)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v51 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v51, OS_LOG_TYPE_ERROR, "We should have a main scope here", buf, 2u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineCloudCache.m"];
    v45 = @"We should have a main scope here";
    v46 = currentHandler;
    v47 = a2;
    selfCopy2 = self;
    v49 = v43;
    v50 = 945;
LABEL_37:
    [v46 handleFailureInMethod:v47 object:selfCopy2 file:v49 lineNumber:v50 description:{v45, v52}];
    goto LABEL_38;
  }

  v17 = v16;
  v58 = v15;
  v59 = scopes;
  v18 = [CPLScopedIdentifier alloc];
  scopeIdentifier = [v17 scopeIdentifier];
  identifier = [identifierCopy identifier];
  scopedIdentifier = [(CPLScopedIdentifier *)v18 initWithScopeIdentifier:scopeIdentifier identifier:identifier];

  v22 = [(CPLEngineCloudCache *)self recordWithScopedIdentifier:scopedIdentifier isFinal:0];
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v57 = v10;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    engineStore2 = [(CPLEngineStorage *)self engineStore];
    remappedRecords = [engineStore2 remappedRecords];
    v26 = [remappedRecords scopedIdentifiersRemappedToScopedIdentifier:identifierCopy];

    v27 = [v26 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v27)
    {
      v28 = v27;
      v53 = scopedIdentifier;
      v54 = dataCopy;
      v55 = engineStore;
      v56 = identifierCopy;
      v29 = *v61;
      v30 = off_1E861A000;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          selfCopy3 = self;
          if (*v61 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v33 = *(*(&v60 + 1) + 8 * i);
          v34 = objc_alloc(v30[101]);
          scopeIdentifier2 = [v17 scopeIdentifier];
          identifier2 = [v33 identifier];
          v37 = [v34 initWithScopeIdentifier:scopeIdentifier2 identifier:identifier2];

          self = selfCopy3;
          v38 = [(CPLEngineCloudCache *)selfCopy3 recordWithScopedIdentifier:v37 isFinal:0];
          if (v38)
          {
            v23 = v38;
            scopedIdentifier = [v38 scopedIdentifier];

            engineStore = v55;
            identifierCopy = v56;
            dataCopy = v54;
            goto LABEL_18;
          }

          v30 = off_1E861A000;
        }

        v28 = [v26 countByEnumeratingWithState:&v60 objects:v64 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }

      v23 = 0;
      engineStore = v55;
      identifierCopy = v56;
      dataCopy = v54;
      scopedIdentifier = v53;
    }

    else
    {
      v23 = 0;
    }

LABEL_18:

    v10 = v57;
  }

  v39 = [(CPLEngineCloudCache *)self _targetWithShareableRecord:v23 cloudScopedIdentifier:scopedIdentifier otherScopedIdentifier:identifierCopy sharedScope:v58 trustRecordChangeData:dataCopy];

  return v39;
}

- (id)targetForRecordWithCloudScopedIdentifier:(id)identifier trustRecordChangeData:(BOOL)data
{
  dataCopy = data;
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
  v9 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v9)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    scopes = [engineStore scopes];

    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    v13 = [scopes scopeWithIdentifier:scopeIdentifier2];

    if (v13)
    {
      v14 = [scopes sharingScopeForScope:v13];
      if (v14)
      {
        v15 = v14;
        v16 = [(CPLEngineCloudCache *)self recordWithScopedIdentifier:identifierCopy isFinal:0];
        v17 = [(CPLEngineCloudCache *)self _otherScopedIdentifierForCloudScopedIdentifier:identifierCopy sharedScoped:v15];
        v18 = [(CPLEngineCloudCache *)self _targetWithShareableRecord:v16 cloudScopedIdentifier:identifierCopy otherScopedIdentifier:v17 sharedScope:v15 trustRecordChangeData:dataCopy];

        goto LABEL_7;
      }
    }
  }

  v18 = [[CPLRecordTarget alloc] initWithScopedIdentifier:identifierCopy];
LABEL_7:

  return v18;
}

- (id)_targetWithRecord:(id)record cloudScopedIdentifier:(id)identifier trustRecordChangeData:(BOOL)data
{
  dataCopy = data;
  recordCopy = record;
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  mainScopeIdentifier = [(CPLEngineStorage *)self mainScopeIdentifier];
  v12 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

  if (v12)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    scopes = [engineStore scopes];

    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    v16 = [scopes scopeWithIdentifier:scopeIdentifier2];

    if (v16)
    {
      v17 = [scopes sharingScopeForScope:v16];
      if (v17)
      {
        v18 = v17;
        v19 = [(CPLEngineCloudCache *)self _otherScopedIdentifierForCloudScopedIdentifier:identifierCopy sharedScoped:v17];
        v20 = [(CPLEngineCloudCache *)self _targetWithShareableRecord:recordCopy cloudScopedIdentifier:identifierCopy otherScopedIdentifier:v19 sharedScope:v18 trustRecordChangeData:dataCopy];

        goto LABEL_7;
      }
    }
  }

  v20 = [[CPLRecordTarget alloc] initWithScopedIdentifier:identifierCopy];
LABEL_7:

  return v20;
}

- (id)_targetWithShareableRecord:(id)record cloudScopedIdentifier:(id)identifier otherScopedIdentifier:(id)scopedIdentifier sharedScope:(id)scope trustRecordChangeData:(BOOL)data
{
  dataCopy = data;
  v49 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  scopeCopy = scope;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  if (recordCopy)
  {
    if ([recordCopy isMasterChange])
    {
      recordChangeData = [recordCopy recordChangeData];
      sharingRecordChangeData = [recordCopy sharingRecordChangeData];
      v43 = recordChangeData;
      if (recordChangeData && sharingRecordChangeData)
      {
        v19 = 3;
      }

      else
      {
        v42 = sharingRecordChangeData;
        scopedIdentifier = [recordCopy scopedIdentifier];
        v22 = [(CPLEngineCloudCache *)self recordsWithRelatedScopedIdentifier:scopedIdentifier class:objc_opt_class() isFinal:0];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v23 = v22;
        v19 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v19)
        {
          v38 = dataCopy;
          v39 = scopeCopy;
          v40 = scopedIdentifierCopy;
          v41 = identifierCopy;
          v24 = 0;
          v25 = 0;
          v26 = *v45;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v45 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v44 + 1) + 8 * i);
              v29 = objc_autoreleasePoolPush();
              v30 = [v28 isSharedInScopeWithIdentifier:scopeIdentifier];
              v25 |= v30;
              v24 |= v30 ^ 1;
              objc_autoreleasePoolPop(v29);
              if (v25 & 1) != 0 && (v24)
              {

                v19 = 3;
                goto LABEL_27;
              }
            }

            v19 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          if (v24)
          {
            v19 = 3;
          }

          else
          {
            v19 = 2;
          }

          if ((v25 & 1) == 0)
          {
            v19 = v24 & 1;
          }

LABEL_27:
          scopedIdentifierCopy = v40;
          identifierCopy = v41;
          scopeCopy = v39;
          dataCopy = v38;
        }

        else
        {
        }

        sharingRecordChangeData = v42;
      }

      goto LABEL_32;
    }

    if (![recordCopy supportsSharingScopedIdentifier])
    {
      v31 = [[CPLRecordTarget alloc] initWithScopedIdentifier:identifierCopy];
      goto LABEL_40;
    }

    if (![recordCopy isSharedInScopeWithIdentifier:scopeIdentifier])
    {
      v19 = 1;
LABEL_32:
      if (v19 == 1 && dataCopy)
      {
        sharingRecordChangeData2 = [recordCopy sharingRecordChangeData];

        recordChangeData2 = [recordCopy recordChangeData];

        v34 = 2;
        if (recordChangeData2)
        {
          v34 = 3;
        }

        if (sharingRecordChangeData2)
        {
          v19 = v34;
        }

        else
        {
          v19 = recordChangeData2 != 0;
        }
      }

      goto LABEL_39;
    }

    recordChangeData3 = [recordCopy recordChangeData];

    if (recordChangeData3)
    {
      v19 = 3;
    }

    else
    {
      sharingRecordChangeData3 = [recordCopy sharingRecordChangeData];

      if (sharingRecordChangeData3)
      {
        v19 = 2;
      }

      else
      {
        v19 = 3;
      }
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_39:
  v31 = [[CPLRecordTarget alloc] initWithScopedIdentifier:identifierCopy otherScopedIdentifier:scopedIdentifierCopy targetState:v19];
LABEL_40:
  v35 = v31;

  return v35;
}

- (id)_otherScopedIdentifierForCloudScopedIdentifier:(id)identifier sharedScoped:(id)scoped
{
  scopedCopy = scoped;
  identifierCopy = identifier;
  v8 = [CPLScopedIdentifier alloc];
  scopeIdentifier = [scopedCopy scopeIdentifier];
  identifier = [identifierCopy identifier];

  cloudIndex = [scopedCopy cloudIndex];
  v12 = [(CPLScopedIdentifier *)v8 initWithScopeIdentifier:scopeIdentifier identifier:identifier scopeIndex:cloudIndex];

  engineStore = [(CPLEngineStorage *)self engineStore];
  remappedRecords = [engineStore remappedRecords];
  v15 = [remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v12];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  return v17;
}

- (BOOL)discardStagedChangesWithScopeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject discardStagedChangesWithScopeFilter:filterCopy error:error];

  if (v8)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    scopes = [engineStore scopes];

    v11 = [scopes discardStagedSyncAnchorWithScopeFilter:filterCopy error:error];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)discardStagedChangesForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Discarding staged changes", v14, 2u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject discardStagedChangesForScopeWithIdentifier:identifierCopy error:error];

  if (v9)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    scopes = [engineStore scopes];

    v12 = [scopes scopeWithIdentifier:identifierCopy];
    if (v12)
    {
      LOBYTE(v9) = [scopes discardStagedSyncAnchorForScope:v12 error:error];
    }

    else if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
      *error = LOBYTE(v9) = 0;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)commitStagedChangesForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Committing staged changes", v14, 2u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject commitStagedChangesForScopeWithIdentifier:identifierCopy error:error];

  if (v9)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    scopes = [engineStore scopes];

    v12 = [scopes scopeWithIdentifier:identifierCopy];
    if (v12)
    {
      LOBYTE(v9) = [scopes commitSyncAnchorForScope:v12 error:error];
      if ([scopes hasFinishedAFullSyncForScope:v12])
      {
        LOBYTE(v9) = [scopes clearTransportGroupsForScope:v12 error:error];
      }
    }

    else if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
      *error = LOBYTE(v9) = 0;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)remapAllRecordsWithPreviousScopedIdentifier:(id)identifier newScopedIdentifier:(id)scopedIdentifier error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = scopedIdentifierCopy;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Remapping %@ -> %@", buf, 0x16u);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v17 = 0;
  v12 = [platformObject remapAllRecordsWithPreviousScopedIdentifier:identifierCopy newScopedIdentifier:scopedIdentifierCopy error:&v17];
  v13 = v17;

  if ((v12 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Can't remap: %@", buf, 0xCu);
      }
    }

    if (error)
    {
      v15 = v13;
      *error = v13;
    }
  }

  return v12;
}

- (BOOL)ackownledgeRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject ackownledgeRecordWithScopedIdentifier:identifierCopy error:error];

  return error;
}

- (unint64_t)countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:identifierCopy class:class];

  return v8;
}

- (id)recordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject recordsAcknowledgedByClientWithRelatedScopedIdentifier:identifierCopy class:class];

  return v8;
}

- (BOOL)hasRecordAcknowledgedByClientWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasRecordAcknowledgedByClientWithScopedIdentifier:identifierCopy];

  return v6;
}

- (id)recordAcknowledgedByClientWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject recordAcknowledgedByClientWithScopedIdentifier:identifierCopy];

  return v6;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final
{
  finalCopy = final;
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject relatedScopedIdentifierForRecordWithScopedIdentifier:identifierCopy isFinal:finalCopy];

  return v8;
}

- (id)recordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class isFinal:(BOOL)final
{
  finalCopy = final;
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject recordsWithRelatedScopedIdentifier:identifierCopy class:class isFinal:finalCopy];

  return v10;
}

- (id)recordsWithRelatedScopedIdentifier:(id)identifier isFinal:(BOOL)final
{
  finalCopy = final;
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject recordsWithRelatedScopedIdentifier:identifierCopy isFinal:finalCopy];

  return v8;
}

- (BOOL)hasAnyRecordWithRelatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasAnyRecordWithRelatedScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject hasRecordWithScopedIdentifier:identifierCopy];

  return v6;
}

- (id)recordWithScopedIdentifier:(id)identifier isConfirmed:(BOOL *)confirmed isStaged:(BOOL *)staged
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject recordWithScopedIdentifier:identifierCopy isConfirmed:confirmed isStaged:staged];

  return v10;
}

- (id)recordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final
{
  finalCopy = final;
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v8 = [platformObject recordWithScopedIdentifier:identifierCopy isFinal:finalCopy isConfirmed:0];

  return v8;
}

- (BOOL)deleteRecordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final error:(id *)error
{
  finalCopy = final;
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Deleting record %@", &v13, 0xCu);
    }
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v11 = [platformObject deleteRecordWithScopedIdentifier:identifierCopy isFinal:finalCopy error:error];

  return v11;
}

- (BOOL)confirmAllRecordsWithError:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject confirmAllRecordsWithError:error];

  return error;
}

- (id)cloudChangeBatchFromBatch:(id)batch usingMapping:(id)mapping isFinal:(BOOL)final withError:(id *)error
{
  finalCopy = final;
  v245 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  mappingCopy = mapping;
  selfCopy = self;
  engineStore = [(CPLEngineStorage *)self engineStore];
  v228 = 0;
  v229 = &v228;
  v230 = 0x3032000000;
  v231 = __Block_byref_object_copy__17856;
  v232 = __Block_byref_object_dispose__17857;
  v233 = 0;
  v9 = 1;
  if (!mappingCopy)
  {
    v9 = 2;
  }

  v172 = v9;
  scopes = [engineStore scopes];
  statusCenter = [engineStore statusCenter];
  v222 = 0;
  v223 = &v222;
  v224 = 0x3032000000;
  v225 = __Block_byref_object_copy__17856;
  v226 = __Block_byref_object_dispose__17857;
  v227 = objc_alloc_init(CPLChangeBatch);
  if (mappingCopy)
  {
    transientPullRepository = [engineStore transientPullRepository];
    v166 = 0;
    transactionClientCacheView = 0;
    quarantinedRecords = 0;
    remappedRecords = 0;
    pullQueue = 0;
    v175 = 0;
  }

  else
  {
    idMapping = [engineStore idMapping];
    remappedRecords = [engineStore remappedRecords];
    v12 = idMapping;
    transactionClientCacheView = [engineStore transactionClientCacheView];
    pullQueue = [engineStore pullQueue];
    quarantinedRecords = [engineStore quarantinedRecords];
    v13 = v12;
    v166 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v175 = v13;

    transientPullRepository = 0;
  }

  v216 = 0;
  v217 = &v216;
  v218 = 0x3032000000;
  v219 = __Block_byref_object_copy__17856;
  v220 = __Block_byref_object_dispose__17857;
  v221 = 0;
  v214[0] = 0;
  v214[1] = v214;
  v214[2] = 0x2020000000;
  v215 = 0;
  v212[0] = 0;
  v212[1] = v212;
  v212[2] = 0x2020000000;
  v213 = 0;
  v207[0] = MEMORY[0x1E69E9820];
  v207[1] = 3221225472;
  v207[2] = __80__CPLEngineCloudCache_cloudChangeBatchFromBatch_usingMapping_isFinal_withError___block_invoke;
  v207[3] = &unk_1E861F310;
  v209 = &v216;
  v210 = v214;
  v211 = v212;
  v177 = scopes;
  v208 = v177;
  v180 = MEMORY[0x1E128EBA0](v207);
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  obj = batchCopy;
  v14 = [obj countByEnumeratingWithState:&v203 objects:v244 count:16];
  v15 = 0;
  if (v14)
  {
    v182 = *v204;
    v16 = "cloud";
    if (mappingCopy)
    {
      v16 = "local";
    }

    v173 = v16;
    do
    {
      v17 = 0;
      v183 = v14;
      do
      {
        if (*v204 != v182)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v203 + 1) + 8 * v17);
        context = objc_autoreleasePoolPush();
        scopedIdentifier = [v18 scopedIdentifier];
        scopeIdentifier = [scopedIdentifier scopeIdentifier];
        v15 = v15;
        v21 = scopeIdentifier;
        v22 = v21;
        if (v15 && v21)
        {
          v23 = [v15 isEqual:v21];

          if (v23)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v24 = (v15 | v21) != 0;

          if (!v24)
          {
            v15 = 0;
LABEL_21:
            v27 = v180[2];
            if (mappingCopy)
            {
              v28 = 0;
              v179 = v27(v180) ^ 1;
            }

            else
            {
              v179 = 0;
              v28 = v27(v180) ^ 1;
            }

            v202 = 0;
            v29 = [v18 validateChangeWithError:&v202];
            v185 = v202;
            if ((v29 & 1) == 0)
            {
              if (mappingCopy)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v35 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v235 = v18;
                    v236 = 2112;
                    v237 = v185;
                    _os_log_impl(&dword_1DC05A000, v35, OS_LOG_TYPE_ERROR, "Incorrect change %@ in push repository: %@", buf, 0x16u);
                  }
                }

                v36 = [CPLErrors cplErrorWithCode:20 underlyingError:v185 description:@"Incorrect change %@ in push repository", v18];
                v37 = v223[5];
                v223[5] = 0;

                v38 = 0;
                v33 = v229[5];
                v229[5] = v36;
                v39 = 2;
              }

              else
              {
                realIdentifier = [v18 realIdentifier];
                v51 = realIdentifier == 0;

                if (!v51)
                {
                  goto LABEL_25;
                }

                if (_CPLSilentLogging)
                {
                  goto LABEL_287;
                }

                v33 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v235 = v18;
                  v236 = 2112;
                  v237 = v185;
                  _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_ERROR, "Incorrect change coming from the cloud %@: %@", buf, 0x16u);
                }

LABEL_48:
                v38 = 0;
                v39 = 3;
              }

              goto LABEL_270;
            }

LABEL_25:
            realIdentifier2 = [v18 realIdentifier];
            if (realIdentifier2)
            {
              _ignoredRecord = [v18 _ignoredRecord];
              v32 = _ignoredRecord == 0;

              if (!v32)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v33 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    _ignoredRecord2 = [v18 _ignoredRecord];
                    *buf = 138412546;
                    v235 = v18;
                    v236 = 2112;
                    v237 = _ignoredRecord2;
                    _os_log_impl(&dword_1DC05A000, v33, OS_LOG_TYPE_DEFAULT, "Ignoring already known remapped record %@ (shadowing %@)", buf, 0x16u);
                  }

                  goto LABEL_48;
                }

LABEL_287:
                v38 = 0;
                v39 = 3;
LABEL_271:

                goto LABEL_272;
              }
            }

            if ((_CPLSilentLogging & 1) == 0)
            {
              v40 = __CPLStorageOSLogDomain_17824();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                v41 = objc_opt_class();
                scopedIdentifier2 = [v18 scopedIdentifier];
                cplFullDescription = [v18 cplFullDescription];
                *buf = 136315906;
                v235 = v173;
                v236 = 2112;
                v237 = v41;
                v238 = 2112;
                v239 = scopedIdentifier2;
                v240 = 2112;
                v241 = cplFullDescription;
                _os_log_impl(&dword_1DC05A000, v40, OS_LOG_TYPE_DEBUG, "Filtering %s <%@ %@> against cloud cache:\n%@", buf, 0x2Au);
              }
            }

            realIdentifier3 = [v18 realIdentifier];
            v45 = realIdentifier3 == 0;

            if (!v45)
            {
              if ((_CPLSilentLogging & 1) == 0)
              {
                v153 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v235 = v18;
                  _os_log_impl(&dword_1DC05A000, v153, OS_LOG_TYPE_ERROR, "Trying to mingle a remapped record %@", buf, 0xCu);
                }
              }

              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              v155 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineCloudCache.m"];
              [currentHandler handleFailureInMethod:a2 object:selfCopy file:v155 lineNumber:328 description:{@"Trying to mingle a remapped record %@", v18}];

              abort();
            }

            if (mappingCopy)
            {
              v46 = (v229 + 5);
              v201 = v229[5];
              v47 = [v18 translateToCloudChangeUsingIDMapping:mappingCopy error:&v201];
              objc_storeStrong(v46, v201);
              v33 = v47;
            }

            else
            {
              v33 = v18;
            }

            scopedIdentifier3 = [v33 scopedIdentifier];
            v200 = 1;
            if (!v33)
            {
              v38 = 0;
              goto LABEL_67;
            }

            platformObject = [(CPLEngineStorage *)selfCopy platformObject];
            v38 = [platformObject recordWithScopedIdentifier:scopedIdentifier3 isFinal:finalCopy isConfirmed:&v200];

            if (v38)
            {
              v53 = objc_opt_class();
              if (v53 != objc_opt_class())
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v54 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    v55 = [CPLRecordChange descriptionForDirection:v172];
                    *buf = 138412802;
                    v235 = v55;
                    v236 = 2112;
                    v237 = v33;
                    v238 = 2112;
                    v239 = v38;
                    _os_log_impl(&dword_1DC05A000, v54, OS_LOG_TYPE_ERROR, "Trying to diff %@ %@ against mismatched %@", buf, 0x20u);
                  }
                }

                v56 = objc_alloc(MEMORY[0x1E696AEC0]);
                v57 = [CPLRecordChange descriptionForDirection:v172];
                v58 = objc_opt_class();
                v59 = [v56 initWithFormat:@"Mismatch diff %@ %@ against %@", v57, v58, objc_opt_class()];

                if (mappingCopy)
                {
                  [CPLErrors invalidClientCacheErrorWithReason:v59];
                }

                else
                {
                  [CPLErrors invalidCloudCacheErrorWithReason:v59];
                }
                v60 = ;
                v79 = v229[5];
                v229[5] = v60;

                v80 = v223[5];
                v223[5] = 0;

                goto LABEL_107;
              }
            }

            if ([v33 isDelete])
            {
              if (v38)
              {
                if (mappingCopy)
                {
                  [v33 restoreRelationshipsFromFullRecord:v38];
                  goto LABEL_63;
                }

LABEL_208:
                v77 = v33;
LABEL_209:
                recordChangeData = [v18 recordChangeData];
                [v77 setRecordChangeData:recordChangeData];

                sharingRecordChangeData = [v18 sharingRecordChangeData];
                [v77 setSharingRecordChangeData:sharingRecordChangeData];

                [v77 setServerRecordIsCorrupted:[v18 serverRecordIsCorrupted]];
LABEL_210:
                v122 = 0;
LABEL_240:
                v188[0] = MEMORY[0x1E69E9820];
                v188[1] = 3221225472;
                v188[2] = __80__CPLEngineCloudCache_cloudChangeBatchFromBatch_usingMapping_isFinal_withError___block_invoke_35;
                v188[3] = &unk_1E861F338;
                v138 = v175;
                v194 = v200;
                v189 = v138;
                v190 = v18;
                v191 = statusCenter;
                v192 = &v228;
                v193 = &v222;
                v139 = MEMORY[0x1E128EBA0](v188);
                if (v122)
                {
                  if (!-[NSObject supportsResources](v18, "supportsResources") || !-[NSObject hasChangeType:](v18, "hasChangeType:", 8) || (-[NSObject resources](v18, "resources"), v140 = objc_claimAutoreleasedReturnValue(), v141 = [v140 count] == 0, v140, v141))
                  {
                    if (mappingCopy)
                    {
                      goto LABEL_264;
                    }

                    goto LABEL_265;
                  }

                  v142 = v139[2](v139);
                  if (mappingCopy)
                  {
                    v143 = v142;
                  }

                  else
                  {
                    v143 = 0;
                  }

                  if (v142)
                  {
                    v39 = 0;
                  }

                  else
                  {
                    v39 = 2;
                  }

                  if ((v143 & 1) == 0)
                  {
LABEL_268:

                    v59 = v189;
                    v33 = v77;
                    goto LABEL_269;
                  }

LABEL_264:
                  v147 = (v229 + 5);
                  v187 = v229[5];
                  v148 = [(CPLEngineCloudCache *)selfCopy ackownledgeRecordWithScopedIdentifier:scopedIdentifier3 error:&v187];
                  objc_storeStrong(v147, v187);
                  if (v148)
                  {
LABEL_265:
                    v39 = 0;
                    goto LABEL_268;
                  }

                  _pushContext = v223[5];
                  v223[5] = 0;
                  v39 = 2;
                }

                else
                {
                  if ([v18 supportsResources])
                  {
                    if ([v18 hasChangeType:8])
                    {
                      if (([v77 hasChangeType:8]& 1) == 0)
                      {
                        resources = [v18 resources];
                        v145 = [resources count] == 0;

                        if (!v145 && (v139[2](v139) & 1) == 0)
                        {
                          v39 = 2;
                          goto LABEL_268;
                        }
                      }
                    }
                  }

                  if (v179 && [v77 hasChangeType:2])
                  {
                    [v77 setShouldFilterDefaultValuesForNewProperties:1];
                  }

                  _pushContext = [v18 _pushContext];
                  [v77 _setPushContext:_pushContext];
                  [v77 _setShouldNotTrustCloudCache:[v18 _shouldNotTrustCloudCache]];
                  if (mappingCopy)
                  {
                    [v77 _setRecordKnownByCloudCache:v38];
                  }

                  [v223[5] addRecord:v77];
                  v39 = 0;
                }

                goto LABEL_268;
              }

              if (v28)
              {
                v199 = 0;
                v81 = [v175 localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier3 isFinal:&v199];
                if (v81 && [transactionClientCacheView hasRecordWithScopedIdentifier:v81])
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v82 = __CPLStorageOSLogDomain_17824();
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v235 = v18;
                      _os_log_impl(&dword_1DC05A000, v82, OS_LOG_TYPE_DEBUG, "%@ is already known to the cloud cache but not from the client cache - keeping", buf, 0xCu);
                    }
                  }

                  v83 = 0;
                }

                else
                {
                  v83 = 1;
                }

LABEL_185:
                if (v83 && mappingCopy == 0)
                {
                  v199 = 0;
                  v114 = [v175 localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier3 isFinal:&v199];
                  if (v114 && [quarantinedRecords isRecordWithScopedIdentifierQuarantined:v114])
                  {
                    if ((_CPLSilentLogging & 1) == 0)
                    {
                      v115 = __CPLStorageOSLogDomain_17824();
                      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v235 = v18;
                        _os_log_impl(&dword_1DC05A000, v115, OS_LOG_TYPE_DEFAULT, "%@ is already known to the cloud cache but the record is quarantined - keeping", buf, 0xCu);
                      }
                    }

                    v83 = 0;
                  }

                  else
                  {
                    v83 = 1;
                  }
                }
              }

              else
              {
                if (!mappingCopy)
                {
                  v83 = 1;
                  goto LABEL_185;
                }

                v83 = (-[NSObject _shouldNotTrustCloudCache](v18, "_shouldNotTrustCloudCache") & 1) == 0 && ![transientPullRepository hasRecordWithScopedIdentifier:scopedIdentifier3];
              }

              if (remappedRecords)
              {
                v198 = 0;
                v116 = [remappedRecords removeRemappedRecordWithScopedIdentifier:scopedIdentifier3 error:&v198];
                v117 = v198;
                if (!v116)
                {
                  v118 = v223[5];
                  v223[5] = 0;

                  v38 = 0;
                  v59 = v229[5];
                  v229[5] = v117;
                  goto LABEL_107;
                }
              }

              else
              {
                v117 = 0;
              }

              if (v83)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v119 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v235 = v18;
                    _os_log_impl(&dword_1DC05A000, v119, OS_LOG_TYPE_DEBUG, "%@ is already known to the cache. Ignoring", buf, 0xCu);
                  }
                }

                v33 = 0;
                if (!mappingCopy)
                {
LABEL_215:

                  v38 = 0;
                  goto LABEL_239;
                }
              }

              else
              {

                if (!mappingCopy)
                {
                  v38 = 0;
                  goto LABEL_208;
                }
              }

LABEL_63:
              scopedIdentifier4 = [v18 scopedIdentifier];
              v197 = 0;
              v62 = [mappingCopy addDeleteEventForRecordWithLocalScopedIdentifier:scopedIdentifier4 direction:1 error:&v197];
              v63 = v197;

              if ((v62 & 1) == 0)
              {
                v89 = v223[5];
                v223[5] = 0;

                v59 = v229[5];
                v229[5] = v63;
                goto LABEL_107;
              }

              if (!v33)
              {
                goto LABEL_239;
              }

LABEL_121:
              v77 = v33;
LABEL_181:
              recordChangeData2 = [(CPLRecordChangeDiffTracker *)v38 recordChangeData];
              [v77 setRecordChangeData:recordChangeData2];

              sharingRecordChangeData2 = [(CPLRecordChangeDiffTracker *)v38 sharingRecordChangeData];
              [v77 setSharingRecordChangeData:sharingRecordChangeData2];

              [v77 setServerRecordIsCorrupted:[(CPLRecordChangeDiffTracker *)v38 serverRecordIsCorrupted]];
              [v77 restoreRelationshipsFromFullRecord:v38];
              goto LABEL_210;
            }

            if (((v38 != 0) & v28) == 1)
            {
              v199 = 0;
              v64 = [v175 localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier3 isFinal:&v199];
              if (v64 && ([transactionClientCacheView hasRecordWithScopedIdentifier:v64] & 1) == 0 && (objc_msgSend(pullQueue, "hasSomeChangeWithScopedIdentifier:", scopedIdentifier3) & 1) == 0)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v65 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v235 = v18;
                    _os_log_impl(&dword_1DC05A000, v65, OS_LOG_TYPE_DEFAULT, "%@ is already known to the cloud cache but not from the client cache. Forcing change to client cache", buf, 0xCu);
                  }
                }

                v38 = 0;
              }
            }

            if (v38)
            {
              if (mappingCopy)
              {
                goto LABEL_97;
              }

              relatedScopedIdentifier = [v33 relatedScopedIdentifier];
              if (!relatedScopedIdentifier)
              {
                goto LABEL_88;
              }

              if ([v166 containsObject:relatedScopedIdentifier])
              {
                goto LABEL_88;
              }

              platformObject2 = [(CPLEngineStorage *)selfCopy platformObject];
              v67 = [platformObject2 hasRecordWithScopedIdentifier:relatedScopedIdentifier];

              if (v67)
              {
                goto LABEL_88;
              }

              if ([v33 relatedRelationshipIsWeak])
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v68 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v235 = v33;
                    v236 = 2112;
                    v237 = relatedScopedIdentifier;
                    _os_log_impl(&dword_1DC05A000, v68, OS_LOG_TYPE_DEFAULT, "%@ is referencing a related record %@ which is unknown to the cache", buf, 0x16u);
                  }
                }

LABEL_88:
                secondaryScopedIdentifier = [v33 secondaryScopedIdentifier];
                if (secondaryScopedIdentifier)
                {
                  if (([v166 containsObject:secondaryScopedIdentifier] & 1) == 0)
                  {
                    platformObject3 = [(CPLEngineStorage *)selfCopy platformObject];
                    v71 = [platformObject3 hasRecordWithScopedIdentifier:secondaryScopedIdentifier];

                    if ((v71 & 1) == 0)
                    {
                      if ([v33 secondaryRelationshipIsWeak])
                      {
                        if ((_CPLSilentLogging & 1) == 0)
                        {
                          v72 = __CPLStorageOSLogDomain_17824();
                          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            v235 = v33;
                            v236 = 2112;
                            v237 = secondaryScopedIdentifier;
                            _os_log_impl(&dword_1DC05A000, v72, OS_LOG_TYPE_DEFAULT, "%@ is referencing a secondary record %@ which is unknown to the cache", buf, 0x16u);
                          }
                        }

                        goto LABEL_96;
                      }

                      if ((_CPLSilentLogging & 1) == 0)
                      {
                        v123 = __CPLStorageOSLogDomain_17824();
                        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v235 = v33;
                          v236 = 2112;
                          v237 = secondaryScopedIdentifier;
                          _os_log_impl(&dword_1DC05A000, v123, OS_LOG_TYPE_ERROR, "%@ is referencing a secondary record %@ which is unknown to the cache", buf, 0x16u);
                        }
                      }

LABEL_224:

                      goto LABEL_225;
                    }
                  }
                }

LABEL_96:

LABEL_97:
                _shouldNotTrustCloudCache = [v18 _shouldNotTrustCloudCache];
                v74 = _shouldNotTrustCloudCache;
                if (mappingCopy)
                {
                  v75 = 1;
                }

                else
                {
                  v75 = _shouldNotTrustCloudCache;
                }

                if (v75)
                {
                  v76 = v33;
                  v77 = v76;
                  if ((v74 & 1) == 0)
                  {
                    if (mappingCopy && [v76 hasChangeType:2])
                    {
                      v170 = [[CPLRecordChangeDiffTracker alloc] initWithTrackingChangeTypeMask:2];
                      v78 = 1;
                      goto LABEL_158;
                    }

                    goto LABEL_157;
                  }

LABEL_125:
                  v170 = 0;
                  v163 = 0;
                  goto LABEL_161;
                }

                buf[0] = 0;
                v86 = [v175 localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier3 isFinal:buf];
                if (!v86)
                {
                  v102 = v33;
                  goto LABEL_157;
                }

                v87 = [quarantinedRecords isRecordWithScopedIdentifierQuarantined:v86];

                v88 = v33;
                if (v87)
                {
                  v77 = v88;
                  goto LABEL_125;
                }

LABEL_157:
                v170 = objc_alloc_init(CPLRecordChangeDiffTracker);
                v78 = 0;
LABEL_158:
                v196 = 0;
                v77 = [(CPLRecordChangeDiffTracker *)v38 realRecordChangeFromRecordChange:v33 direction:v172 newRecord:&v196 diffTracker:v170];
                v163 = v196;

                if (v78)
                {
                  [v77 attachDiffTracker:v170];
                }

                if (v77)
                {
LABEL_161:
                  recordModificationDate = [v77 recordModificationDate];
                  if (recordModificationDate)
                  {
                    goto LABEL_164;
                  }

                  recordModificationDate2 = [v33 recordModificationDate];
                  v105 = recordModificationDate2 == 0;

                  if (!v105)
                  {
                    recordModificationDate = [v33 recordModificationDate];
                    [v77 setRecordModificationDate:recordModificationDate];
LABEL_164:
                  }

                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v106 = __CPLStorageOSLogDomain_17824();
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                    {
                      v157 = v106;
                      v158 = objc_opt_class();
                      scopedIdentifier5 = [v33 scopedIdentifier];
                      cplFullDescription2 = [v33 cplFullDescription];
                      cplFullDescription3 = [v38 cplFullDescription];
                      *buf = 138413314;
                      v235 = v158;
                      v236 = 2112;
                      v237 = scopedIdentifier5;
                      v238 = 2112;
                      v239 = v170;
                      v240 = 2112;
                      v241 = cplFullDescription2;
                      v242 = 2112;
                      v243 = cplFullDescription3;
                      _os_log_impl(&dword_1DC05A000, v157, OS_LOG_TYPE_DEBUG, "<%@ %@> is a real diff for cloud cache (%@): %@\nvs.:\n%@", buf, 0x34u);

                      v109 = 1;
                      v106 = v157;
                    }

                    else
                    {
                      v109 = 1;
                    }

                    goto LABEL_173;
                  }

                  v109 = 1;
                }

                else if (_CPLSilentLogging)
                {
                  v109 = 0;
                  v77 = 0;
                }

                else
                {
                  v106 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v235 = v18;
                    _os_log_impl(&dword_1DC05A000, v106, OS_LOG_TYPE_DEBUG, "%@ is already known to the cache. Ignoring", buf, 0xCu);
                  }

                  v109 = 0;
                  v77 = 0;
LABEL_173:
                }

                if (mappingCopy && [v33 supportsResources]&& (v109 & [v33 hasChangeType:8]) == 1 && [v77 hasChangeType:8])
                {
                  v110 = v223[5];
                  resources2 = [v18 resources];
                  [v110 appendLocalResources:resources2 forItemWithCloudScopedIdentifier:scopedIdentifier3];
                }

                if (v77)
                {
                  if (!mappingCopy)
                  {
                    goto LABEL_209;
                  }

                  goto LABEL_181;
                }

                if (mappingCopy)
                {
LABEL_239:
                  v77 = 0;
                  v122 = 1;
                  goto LABEL_240;
                }
              }

              else
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  secondaryScopedIdentifier = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(secondaryScopedIdentifier, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v235 = v33;
                    v236 = 2112;
                    v237 = relatedScopedIdentifier;
                    _os_log_impl(&dword_1DC05A000, secondaryScopedIdentifier, OS_LOG_TYPE_ERROR, "%@ is referencing a related record %@ which is unknown to the cache", buf, 0x16u);
                  }

                  goto LABEL_224;
                }

LABEL_225:
              }

              recordChangeData3 = [(CPLRecordChangeDiffTracker *)v38 recordChangeData];
              recordChangeData4 = [v18 recordChangeData];
              v126 = recordChangeData4;
              if (recordChangeData3 && recordChangeData4)
              {
                v127 = [recordChangeData3 isEqual:recordChangeData4];

                if (v127)
                {
                  goto LABEL_232;
                }

LABEL_231:
                recordChangeData5 = [v18 recordChangeData];
                [(CPLRecordChangeDiffTracker *)v38 setRecordChangeData:recordChangeData5];

                [(CPLRecordChangeDiffTracker *)v38 setServerRecordIsCorrupted:[v18 serverRecordIsCorrupted]];
              }

              else
              {
                v128 = (recordChangeData3 | recordChangeData4) != 0;

                if (v128)
                {
                  goto LABEL_231;
                }
              }

LABEL_232:
              sharingRecordChangeData3 = [(CPLRecordChangeDiffTracker *)v38 sharingRecordChangeData];
              sharingRecordChangeData4 = [v18 sharingRecordChangeData];
              v132 = sharingRecordChangeData4;
              if (sharingRecordChangeData3 && sharingRecordChangeData4)
              {
                v133 = [sharingRecordChangeData3 isEqual:sharingRecordChangeData4];

                if (v133)
                {
LABEL_238:
                  v136 = (v229 + 5);
                  v195 = v229[5];
                  v137 = [(CPLEngineCloudCache *)selfCopy updateStagedRecord:v38 error:&v195];
                  objc_storeStrong(v136, v195);
                  if (v137)
                  {
                    goto LABEL_239;
                  }

                  v33 = 0;
LABEL_67:
                  v59 = v223[5];
                  v223[5] = 0;
                  goto LABEL_107;
                }
              }

              else
              {
                v134 = (sharingRecordChangeData3 | sharingRecordChangeData4) != 0;

                if (!v134)
                {
                  goto LABEL_238;
                }
              }

              sharingRecordChangeData5 = [v18 sharingRecordChangeData];
              [(CPLRecordChangeDiffTracker *)v38 setSharingRecordChangeData:sharingRecordChangeData5];

              [(CPLRecordChangeDiffTracker *)v38 setServerRecordIsCorrupted:[v18 serverRecordIsCorrupted]];
              goto LABEL_238;
            }

            if (mappingCopy)
            {
              if (([v33 isFullRecord]& 1) != 0)
              {
                if ([v33 supportsResources])
                {
                  v84 = v223[5];
                  resources3 = [v18 resources];
                  [v84 appendLocalResources:resources3 forItemWithCloudScopedIdentifier:scopedIdentifier3];
                }

                v38 = 0;
                goto LABEL_121;
              }

              if ((_CPLSilentLogging & 1) == 0)
              {
                v98 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v235 = v18;
                  _os_log_impl(&dword_1DC05A000, v98, OS_LOG_TYPE_ERROR, "Got a partial record %@ from the client which is new to the cache", buf, 0xCu);
                }
              }

              v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Partial %@ from client but new to the cache", objc_opt_class()];
              v99 = [CPLErrors invalidClientCacheErrorWithReason:v59];
              v100 = v229[5];
              v229[5] = v99;

              v101 = v223[5];
              v223[5] = 0;

              v38 = 0;
LABEL_107:
              v39 = 2;
LABEL_269:

LABEL_270:
              goto LABEL_271;
            }

            if (([v33 isFullRecord]& 1) != 0)
            {
              relatedScopedIdentifier2 = [v33 relatedScopedIdentifier];
              if (!relatedScopedIdentifier2)
              {
                goto LABEL_140;
              }

              if ([v166 containsObject:relatedScopedIdentifier2])
              {
                goto LABEL_140;
              }

              platformObject4 = [(CPLEngineStorage *)selfCopy platformObject];
              v92 = [platformObject4 hasRecordWithScopedIdentifier:relatedScopedIdentifier2];

              if (v92)
              {
                goto LABEL_140;
              }

              if ([v18 relatedRelationshipIsWeak])
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v93 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v235 = v18;
                    v236 = 2112;
                    v237 = relatedScopedIdentifier2;
                    _os_log_impl(&dword_1DC05A000, v93, OS_LOG_TYPE_DEFAULT, "%@ is referencing a related record %@ which is unknown to the cache", buf, 0x16u);
                  }
                }

LABEL_140:
                secondaryScopedIdentifier2 = [v33 secondaryScopedIdentifier];
                if (!secondaryScopedIdentifier2 || ([v166 containsObject:secondaryScopedIdentifier2] & 1) != 0 || (-[CPLEngineStorage platformObject](selfCopy, "platformObject"), v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(v95, "hasRecordWithScopedIdentifier:", secondaryScopedIdentifier2), v95, (v96 & 1) != 0))
                {
LABEL_148:

                  [v166 addObject:scopedIdentifier3];
                  v38 = 0;
                  goto LABEL_208;
                }

                if ([v33 secondaryRelationshipIsWeak])
                {
                  if ((_CPLSilentLogging & 1) == 0)
                  {
                    v97 = __CPLStorageOSLogDomain_17824();
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v235 = v33;
                      v236 = 2112;
                      v237 = secondaryScopedIdentifier2;
                      _os_log_impl(&dword_1DC05A000, v97, OS_LOG_TYPE_DEFAULT, "%@ is referencing a secondary record %@ which is unknown to the cache", buf, 0x16u);
                    }
                  }

                  goto LABEL_148;
                }

                if ((_CPLSilentLogging & 1) == 0)
                {
                  v149 = __CPLStorageOSLogDomain_17824();
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v235 = v33;
                    v236 = 2112;
                    v237 = secondaryScopedIdentifier2;
                    _os_log_impl(&dword_1DC05A000, v149, OS_LOG_TYPE_ERROR, "%@ is referencing a secondary record %@ which is unknown to the cache", buf, 0x16u);
                  }
                }

LABEL_281:
              }

              else if ((_CPLSilentLogging & 1) == 0)
              {
                secondaryScopedIdentifier2 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(secondaryScopedIdentifier2, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v235 = v18;
                  v236 = 2112;
                  v237 = relatedScopedIdentifier2;
                  _os_log_impl(&dword_1DC05A000, secondaryScopedIdentifier2, OS_LOG_TYPE_ERROR, "%@ is referencing a related record %@ which is unknown to the cache", buf, 0x16u);
                }

                goto LABEL_281;
              }
            }

            else
            {
              if (_CPLSilentLogging)
              {
                goto LABEL_215;
              }

              relatedScopedIdentifier2 = __CPLStorageOSLogDomain_17824();
              if (os_log_type_enabled(relatedScopedIdentifier2, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v235 = v18;
                _os_log_impl(&dword_1DC05A000, relatedScopedIdentifier2, OS_LOG_TYPE_ERROR, "Got a partial record %@ from the cloud which is new to the cache", buf, 0xCu);
              }
            }

            goto LABEL_215;
          }
        }

        v25 = [v177 scopeWithIdentifier:v22];
        if (v25)
        {
          v26 = v22;

          objc_storeStrong(v217 + 5, v25);
          v15 = v26;
          goto LABEL_21;
        }

        v48 = [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
        v49 = v229[5];
        v229[5] = v48;

        v38 = v223[5];
        v223[5] = 0;
        v39 = 2;
LABEL_272:

        objc_autoreleasePoolPop(context);
        if (v39 != 3 && v39)
        {
          goto LABEL_291;
        }

        ++v17;
      }

      while (v183 != v17);
      v14 = [obj countByEnumeratingWithState:&v203 objects:v244 count:16];
    }

    while (v14);
  }

LABEL_291:

  v150 = v223[5];
  if (error && !v150)
  {
    *error = v229[5];
    v150 = v223[5];
  }

  v151 = v150;

  _Block_object_dispose(v212, 8);
  _Block_object_dispose(v214, 8);

  _Block_object_dispose(&v216, 8);
  _Block_object_dispose(&v222, 8);

  _Block_object_dispose(&v228, 8);

  return v151;
}

uint64_t __80__CPLEngineCloudCache_cloudChangeBatchFromBatch_usingMapping_isFinal_withError___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v2 = a1 + 56;
    }

    else
    {
      v4 = [*(a1 + 32) hasFinishedAFullSyncForScope:?];
      v5 = *(a1 + 56);
      v2 = a1 + 56;
      *(*(v5 + 8) + 24) = v4;
      *(*(*(v2 - 8) + 8) + 24) = 1;
    }

    v3 = *(*(*v2 + 8) + 24);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t __80__CPLEngineCloudCache_cloudChangeBatchFromBatch_usingMapping_isFinal_withError___block_invoke_35(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(a1 + 72))
    {
      v3 = 0;
LABEL_11:
      v6 = 1;
      goto LABEL_12;
    }

    v14 = 0;
    v10 = [*(a1 + 40) scopedIdentifier];
    v11 = [v2 localScopedIdentifierForCloudScopedIdentifier:v10 isFinal:&v14];

    if (v11)
    {
      v3 = [objc_opt_class() newRecordWithScopedIdentifier:v11];
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v4 = *(a1 + 48);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = 1;
  v7 = [v4 notifyStatusForRecordHasChanged:v3 persist:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v7 & 1) == 0)
  {
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (BOOL)applyBatch:(id)batch isFinal:(BOOL)final direction:(unint64_t)direction withError:(id *)error
{
  finalCopy = final;
  v79 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v78 = batchCopy;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEBUG, "Applying %@", buf, 0xCu);
    }
  }

  engineStore = [(CPLEngineStorage *)self engineStore];
  quarantinedRecords = [engineStore quarantinedRecords];
  idMapping = [engineStore idMapping];
  pushRepository = [engineStore pushRepository];
  v52 = engineStore;
  scopes = [engineStore scopes];
  v54 = pushRepository;
  isEmpty = [pushRepository isEmpty];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v14 = batchCopy;
  v61 = [v14 countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v61)
  {
    errorCopy = error;
    v15 = 0;
    v60 = *v73;
    v16 = !finalCopy;
    if (direction != 2)
    {
      v16 = 1;
    }

    v58 = v16 | isEmpty;
    v55 = idMapping;
    obj = v14;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v73 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v72 + 1) + 8 * v17);
        scopedIdentifier = [v18 scopedIdentifier];
        changeType = [v18 changeType];
        v21 = [(CPLEngineCloudCache *)self recordWithScopedIdentifier:scopedIdentifier isFinal:finalCopy];
        v22 = v21;
        if (changeType != 1024)
        {
          if (!v21)
          {
            if (changeType)
            {
              v47 = errorCopy;
              v14 = obj;
              if ((_CPLSilentLogging & 1) == 0)
              {
                v50 = __CPLStorageOSLogDomain_17824();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v78 = v18;
                  _os_log_impl(&dword_1DC05A000, v50, OS_LOG_TYPE_ERROR, "%@ is a new record but is not a full record", buf, 0xCu);
                }
              }

              [CPLErrors invalidCloudCacheErrorWithReason:@"New record but not full record"];
              v15 = v22 = v15;
              goto LABEL_67;
            }

            v69 = v15;
            v23 = [(CPLEngineCloudCache *)self addRecord:v18 isFinal:finalCopy error:&v69];
            v36 = v69;

            v15 = v36;
LABEL_39:
            if ((v23 & 1) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_48;
          }

          v68 = 0;
          v25 = [v21 realRecordChangeFromRecordChange:v18 direction:direction newRecord:&v68];
          v26 = v68;
          if (v25)
          {
            recordChangeData = [v18 recordChangeData];
            [v26 setRecordChangeData:recordChangeData];

            sharingRecordChangeData = [v18 sharingRecordChangeData];
            [v26 setSharingRecordChangeData:sharingRecordChangeData];

            [v26 setServerRecordIsCorrupted:{objc_msgSend(v18, "serverRecordIsCorrupted")}];
            recordModificationDate = [v18 recordModificationDate];

            if (recordModificationDate)
            {
              recordModificationDate2 = [v18 recordModificationDate];
              [v26 setRecordModificationDate:recordModificationDate2];
            }

            if (finalCopy)
            {
              if ([v18 supportsResources] && objc_msgSend(v18, "hasChangeType:", 8))
              {
                resources = [v18 resources];
                v32 = [resources count] == 0;
              }

              else
              {
                v32 = 1;
              }

              v67 = v15;
              v37 = &v67;
              v38 = [(CPLEngineCloudCache *)self updateFinalRecord:v26 confirmed:v32 error:&v67];
            }

            else
            {
              v66 = v15;
              v37 = &v66;
              v38 = [(CPLEngineCloudCache *)self updateStagedRecord:v26 error:&v66];
            }

LABEL_46:
            v23 = v38;
            v39 = *v37;

            v15 = v39;
            idMapping = v55;
          }

          else
          {
            if (finalCopy)
            {
              v65 = v15;
              v37 = &v65;
              v38 = [(CPLEngineCloudCache *)self ackownledgeRecordWithScopedIdentifier:scopedIdentifier error:&v65];
              goto LABEL_46;
            }

            v23 = 1;
          }

          if ((v23 & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_48;
        }

        if (v21)
        {
          v71 = v15;
          v23 = [(CPLEngineCloudCache *)self deleteRecordWithScopedIdentifier:scopedIdentifier isFinal:finalCopy error:&v71];
          v24 = v15;
          v15 = v71;
        }

        else
        {
          if (_CPLSilentLogging)
          {
            v23 = 1;
            goto LABEL_28;
          }

          v24 = __CPLStorageOSLogDomain_17824();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v78 = v18;
            _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEBUG, "Ignoring %@ as it is already known", buf, 0xCu);
          }

          v23 = 1;
        }

LABEL_28:
        if (v58)
        {
          goto LABEL_39;
        }

        buf[0] = 0;
        v33 = [idMapping localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier isFinal:buf];
        if (!v33)
        {
          v33 = [scopedIdentifier copy];
        }

        if (![v33 scopeIndex])
        {
          scopeIdentifier = [v33 scopeIdentifier];
          [v33 setScopeIndex:{objc_msgSend(scopes, "indexForLocalScopeIdentifier:", scopeIdentifier)}];
        }

        if ([v33 scopeIndex] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v70 = v15;
          v23 = [v54 discardChangeWithScopedIdentifier:v33 error:&v70];
          v35 = v70;

          v15 = v35;
        }

        if ((v23 & 1) == 0)
        {
LABEL_52:
          if ((v23 & 1) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_58;
        }

LABEL_48:
        if (!finalCopy)
        {
          goto LABEL_52;
        }

        v64 = 0;
        v40 = [idMapping localScopedIdentifierForCloudScopedIdentifier:scopedIdentifier isFinal:&v64];
        if (v40)
        {
          v41 = v40;
          v63 = v15;
          v42 = [quarantinedRecords removeQuarantinedRecordWithScopedIdentifier:v40 notify:1 error:&v63];
          v43 = v63;

          v15 = v43;
          if ((v42 & 1) == 0)
          {
            v15 = v43;
LABEL_66:
            v47 = errorCopy;
            v14 = obj;
LABEL_67:

            if (v47)
            {
              v48 = v15;
              v46 = 0;
              *v47 = v15;
            }

            else
            {
              v46 = 0;
            }

            goto LABEL_70;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v44 = __CPLStorageOSLogDomain_17824();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v78 = v18;
            _os_log_impl(&dword_1DC05A000, v44, OS_LOG_TYPE_ERROR, "Failed to find local scoped identifier for %@ in ID mapping to unquarantine", buf, 0xCu);
          }
        }

LABEL_58:

        ++v17;
      }

      while (v61 != v17);
      v14 = obj;
      v45 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
      v61 = v45;
      if (!v45)
      {
        goto LABEL_65;
      }
    }
  }

  v15 = 0;
LABEL_65:

  v46 = 1;
LABEL_70:

  return v46;
}

- (BOOL)updateStagedRecord:(id)record error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = recordCopy;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Updating %@", &v15, 0xCu);
    }
  }

  if (([recordCopy isFullRecord] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = recordCopy;
      _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Updating a non full record: %@", &v15, 0xCu);
    }
  }

  if ([recordCopy validateFullRecord])
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v11 = [platformObject updateStagedRecord:recordCopy error:error];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = recordCopy;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@: invalid record %@", &v15, 0x16u);
      }
    }

    if (error)
    {
      [(CPLEngineCloudCache *)self _invalidCloudCacheErrorWithInvalidRecord:recordCopy method:@"update staged"];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)updateFinalRecord:(id)record confirmed:(BOOL)confirmed error:(id *)error
{
  confirmedCopy = confirmed;
  v21 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = recordCopy;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Updating %@", &v17, 0xCu);
    }
  }

  if (([recordCopy isFullRecord] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = recordCopy;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Updating a non full record: %@", &v17, 0xCu);
    }
  }

  if ([recordCopy validateFullRecord])
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v13 = [platformObject updateFinalRecord:recordCopy confirmed:confirmedCopy error:error];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = recordCopy;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "%@: invalid record %@", &v17, 0x16u);
      }
    }

    if (error)
    {
      [(CPLEngineCloudCache *)self _invalidCloudCacheErrorWithInvalidRecord:recordCopy method:@"update final"];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)addRecord:(id)record isFinal:(BOOL)final error:(id *)error
{
  finalCopy = final;
  v21 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = recordCopy;
      _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEBUG, "Adding %@", &v17, 0xCu);
    }
  }

  if (([recordCopy isFullRecord] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStorageOSLogDomain_17824();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = recordCopy;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Storing a non full record: %@", &v17, 0xCu);
    }
  }

  if ([recordCopy validateFullRecord])
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v13 = [platformObject addRecord:recordCopy isFinal:finalCopy error:error];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLStorageOSLogDomain_17824();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = recordCopy;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "%@: invalid record %@", &v17, 0x16u);
      }
    }

    if (error)
    {
      [(CPLEngineCloudCache *)self _invalidCloudCacheErrorWithInvalidRecord:recordCopy method:@"add"];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)_invalidCloudCacheErrorWithInvalidRecord:(id)record method:(id)method
{
  v5 = MEMORY[0x1E696AEC0];
  methodCopy = method;
  recordCopy = record;
  v8 = [v5 alloc];
  v9 = objc_opt_class();

  v10 = [v8 initWithFormat:@"Trying to %@ an invalid %@", methodCopy, v9];
  v11 = [CPLErrors invalidCloudCacheErrorWithReason:v10];

  return v11;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  v12 = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  if (!v12)
  {
    return 0;
  }

  if (*deletedCount)
  {
    return 1;
  }

  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v20 = 0;
  v15 = [platformObject2 popCloudScopedIdentifiersToCheck:&v20 otherScopeIndex:index maxCount:count deletedCount:deletedCount error:error];
  v16 = v20;

  if (v15)
  {
    if ([v16 count])
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      pendingRecordChecks = [engineStore pendingRecordChecks];

      v13 = [pendingRecordChecks enqueueCloudScopedIdentifiersToCheck:v16 error:error];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end