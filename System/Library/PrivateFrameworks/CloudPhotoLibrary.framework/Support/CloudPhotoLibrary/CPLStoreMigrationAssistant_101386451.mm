@interface CPLStoreMigrationAssistant_101386451
- (BOOL)_isCloudScopedIdentifier:(id)identifier aSuspiciousRemappingToCloudScopedIdentifier:(id)scopedIdentifier primaryScope:(id)scope;
- (BOOL)_isSuspiciousAsset:(id)asset isBadAsset:(BOOL *)badAsset;
- (BOOL)_performMigrationForRemappedRecord:(id)record primaryScope:(id)scope sharingScope:(id)sharingScope revertedCount:(unint64_t *)count error:(id *)error;
- (BOOL)_performMigrationWithPrimaryScope:(id)scope sharingScope:(id)sharingScope error:(id *)error;
- (BOOL)_revertRecordWithLocalScopedIdentifier:(id)identifier class:(Class)class revertedCount:(unint64_t *)count error:(id *)error;
- (BOOL)performMigrationWithError:(id *)error;
- (CPLStoreMigrationAssistant_101386451)initWithStore:(id)store;
- (int64_t)checkPushedChange:(id)change;
@end

@implementation CPLStoreMigrationAssistant_101386451

- (CPLStoreMigrationAssistant_101386451)initWithStore:(id)store
{
  storeCopy = store;
  v25.receiver = self;
  v25.super_class = CPLStoreMigrationAssistant_101386451;
  v5 = [(CPLStoreMigrationAssistant_101386451 *)&v25 initWithStore:storeCopy];
  if (v5)
  {
    scopes = [storeCopy scopes];
    scopes = v5->_scopes;
    v5->_scopes = scopes;

    remappedRecords = [storeCopy remappedRecords];
    remappedRecords = v5->_remappedRecords;
    v5->_remappedRecords = remappedRecords;

    idMapping = [storeCopy idMapping];
    idMapping = v5->_idMapping;
    v5->_idMapping = idMapping;

    revertRecords = [storeCopy revertRecords];
    revertRecords = v5->_revertRecords;
    v5->_revertRecords = revertRecords;

    cloudCache = [storeCopy cloudCache];
    cloudCache = v5->_cloudCache;
    v5->_cloudCache = cloudCache;

    pushRepository = [storeCopy pushRepository];
    pushRepository = v5->_pushRepository;
    v5->_pushRepository = pushRepository;

    pullQueue = [storeCopy pullQueue];
    pullQueue = v5->_pullQueue;
    v5->_pullQueue = pullQueue;

    platformObject = [storeCopy platformObject];
    pqStore = v5->_pqStore;
    v5->_pqStore = platformObject;

    pqlConnection = [(CPLPrequeliteStore *)v5->_pqStore pqlConnection];
    db = v5->_db;
    v5->_db = pqlConnection;
  }

  return v5;
}

- (BOOL)_isCloudScopedIdentifier:(id)identifier aSuspiciousRemappingToCloudScopedIdentifier:(id)scopedIdentifier primaryScope:(id)scope
{
  scopeCopy = scope;
  scopedIdentifierCopy = scopedIdentifier;
  identifierCopy = identifier;
  v11 = [CPLScopedIdentifier alloc];
  scopeIdentifier = [scopeCopy scopeIdentifier];
  identifier = [identifierCopy identifier];

  v14 = [v11 initWithScopeIdentifier:scopeIdentifier identifier:identifier scopeIndex:{objc_msgSend(scopeCopy, "cloudIndex")}];
  v15 = [CPLScopedIdentifier alloc];
  scopeIdentifier2 = [scopeCopy scopeIdentifier];
  identifier2 = [scopedIdentifierCopy identifier];

  cloudIndex = [scopeCopy cloudIndex];
  v19 = [v15 initWithScopeIdentifier:scopeIdentifier2 identifier:identifier2 scopeIndex:cloudIndex];

  v24 = 0;
  v20 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v14 isFinal:&v24];
  if (v20)
  {
    v21 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v19 isFinal:&v24];
    v22 = v21 != 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)_isSuspiciousAsset:(id)asset isBadAsset:(BOOL *)badAsset
{
  assetCopy = asset;
  if ([assetCopy isAssetChange])
  {
    *badAsset = 0;
    scopedIdentifier = [assetCopy scopedIdentifier];
    scopeIdentifier = [scopedIdentifier scopeIdentifier];
    mainScopeIdentifier = [(CPLEngineScopeStorage *)self->_scopes mainScopeIdentifier];
    v10 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

    LOBYTE(v11) = 0;
    if (v10)
    {
      primaryScope = [(CPLEngineScopeStorage *)self->_scopes primaryScope];
      v13 = [(CPLEngineScopeStorage *)self->_scopes sharingScopeForScope:primaryScope];
      v14 = v13;
      if (primaryScope)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        LOBYTE(v11) = 0;
      }

      else
      {
        v34 = 0;
        v16 = [(CPLEngineIDMapping *)self->_idMapping cloudScopedIdentifierForLocalScopedIdentifier:scopedIdentifier isFinal:&v34];
        v17 = v16;
        if (v16)
        {
          v18 = [CPLScopedIdentifier alloc];
          scopeIdentifier2 = [v14 scopeIdentifier];
          v29 = v17;
          identifier = [v17 identifier];
          v21 = [v18 initWithScopeIdentifier:scopeIdentifier2 identifier:identifier scopeIndex:{objc_msgSend(v14, "cloudIndex")}];

          v22 = [(CPLEngineRemappedRecords *)self->_remappedRecords realScopedIdentifierForRemappedScopedIdentifier:v21];
          if ([v22 isEqual:v21])
          {
            v28 = v22;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v23 = [(CPLEngineRemappedRecords *)self->_remappedRecords scopedIdentifiersRemappedToScopedIdentifier:v21];
            v11 = [v23 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v11)
            {
              v27 = v14;
              v24 = *v31;
              while (2)
              {
                for (i = 0; i != v11; i = i + 1)
                {
                  if (*v31 != v24)
                  {
                    objc_enumerationMutation(v23);
                  }

                  if ([(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:*(*(&v30 + 1) + 8 * i) aSuspiciousRemappingToCloudScopedIdentifier:v21 primaryScope:primaryScope])
                  {
                    LOBYTE(v11) = 1;
                    *badAsset = 1;
                    goto LABEL_24;
                  }
                }

                v11 = [v23 countByEnumeratingWithState:&v30 objects:v35 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }

LABEL_24:
              v14 = v27;
            }

            v22 = v28;
            v17 = v29;
          }

          else
          {
            LOBYTE(v11) = [(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:v21 aSuspiciousRemappingToCloudScopedIdentifier:v22 primaryScope:primaryScope];
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (int64_t)checkPushedChange:(id)change
{
  changeCopy = change;
  v8 = 0;
  if ([(CPLStoreMigrationAssistant_101386451 *)self _isSuspiciousAsset:changeCopy isBadAsset:&v8])
  {
    if (v8)
    {
      v5 = 1;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = CPLStoreMigrationAssistant_101386451;
      v5 = [(CPLStoreMigrationAssistant_101386451 *)&v7 checkPushedChange:changeCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_revertRecordWithLocalScopedIdentifier:(id)identifier class:(Class)class revertedCount:(unint64_t *)count error:(id *)error
{
  v8 = [(CPLEngineRevertRecords *)self->_revertRecords addRecordsToRevertWithLocalScopedIdentifier:identifier class:class error:error];
  if (v8)
  {
    *count += [(PQLConnection *)self->_db changes];
  }

  return v8;
}

- (BOOL)_performMigrationForRemappedRecord:(id)record primaryScope:(id)scope sharingScope:(id)sharingScope revertedCount:(unint64_t *)count error:(id *)error
{
  recordCopy = record;
  scopeCopy = scope;
  sharingScopeCopy = sharingScope;
  pqStore = self->_pqStore;
  scopeIdentifier = [scopeCopy scopeIdentifier];
  scopeIdentifier2 = [sharingScopeCopy scopeIdentifier];
  [(CPLPrequeliteStore *)pqStore recordUpgradeEvent:@"Inspecting local state for %@ + %@", scopeIdentifier, scopeIdentifier2];

  v19 = sub_1001941F8(recordCopy);
  v20 = sub_100194210(recordCopy);
  LODWORD(scopeIdentifier2) = [(CPLStoreMigrationAssistant_101386451 *)self _isCloudScopedIdentifier:v19 aSuspiciousRemappingToCloudScopedIdentifier:v20 primaryScope:scopeCopy];

  if (!scopeIdentifier2)
  {
    v31 = 0;
    goto LABEL_57;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v22 = sub_10014BE6C(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_100194210(recordCopy);
      *buf = 138412546;
      v104 = recordCopy;
      v105 = 2112;
      v106 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ is suspicious: will make sure to drop %@ in client", buf, 0x16u);
    }
  }

  v83 = a2;
  countCopy = count;
  v24 = [CPLScopedIdentifier alloc];
  scopeIdentifier3 = [scopeCopy scopeIdentifier];
  v26 = sub_100194210(recordCopy);
  identifier = [v26 identifier];
  v28 = [v24 initWithScopeIdentifier:scopeIdentifier3 identifier:identifier scopeIndex:{objc_msgSend(scopeCopy, "cloudIndex")}];

  v29 = v28;
  v30 = [(CPLEngineCloudCache *)self->_cloudCache recordWithScopedIdentifier:v28 isFinal:0];
  v31 = v30;
  v89 = v30;
  if (!v30)
  {
    goto LABEL_19;
  }

  isAssetChange = [v30 isAssetChange];
  if (!isAssetChange)
  {
    v31 = 0;
LABEL_19:
    errorCopy = error;
    v98 = 0;
    v44 = [CPLScopedIdentifier alloc];
    scopeIdentifier4 = [scopeCopy scopeIdentifier];
    v46 = sub_1001941F8(recordCopy);
    identifier2 = [v46 identifier];
    v48 = [v44 initWithScopeIdentifier:scopeIdentifier4 identifier:identifier2 scopeIndex:{objc_msgSend(scopeCopy, "cloudIndex")}];

    v49 = v48;
    v50 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v48 isFinal:&v98];
    [v50 setScopeIndex:{objc_msgSend(scopeCopy, "localIndex")}];
    v51 = [(CPLEnginePushRepository *)self->_pushRepository changeWithScopedIdentifier:v50];
    if (!v51)
    {
      goto LABEL_38;
    }

    v97.receiver = self;
    v97.super_class = CPLStoreMigrationAssistant_101386451;
    v52 = [(CPLStoreMigrationAssistant_101386451 *)&v97 checkPushedChange:v51];
    if (v52 == 2)
    {
      v79 = v49;
      v82 = v29;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v62 = sub_10014BE6C(2);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v104 = v51;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Modifying %@ in push repository and reverting in client", buf, 0xCu);
        }
      }

      v85 = sharingScopeCopy;
      platformObject = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
      _pushContext = [v51 _pushContext];
      v91 = v31;
      v65 = [platformObject _overwriteChange:v51 pushContext:_pushContext error:&v91];
      v66 = v91;

      if (!v65)
      {
        v61 = 0;
        v31 = v66;
        v49 = v79;
        v29 = v82;
        sharingScopeCopy = v85;
        goto LABEL_56;
      }

      v90 = v66;
      v61 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v50 class:objc_opt_class() revertedCount:countCopy error:&v90];
      v67 = v90;
      v49 = v79;
      v29 = v82;
      v31 = v66;
      sharingScopeCopy = v85;
      goto LABEL_54;
    }

    if (v52 != 1)
    {
LABEL_38:
      v61 = 1;
      goto LABEL_56;
    }

    v78 = v49;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v53 = sub_10014BE6C(1);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v104 = v51;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Dropping %@ from push repository", buf, 0xCu);
      }
    }

    v81 = v29;
    if ([v51 isDelete] && objc_msgSend(v51, "isAssetChange"))
    {
      platformObject2 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
      v96 = 0;
      v76 = [platformObject2 getRelatedScopedIdentifier:&v96 forRecordWithScopedIdentifier:v50];
      v55 = v96;

      if ((v76 & 1) == 0)
      {
        sub_1001B7EE4(v83, self, v50);
      }

      if (v55)
      {
        v56 = [(CPLEnginePushRepository *)self->_pushRepository changeWithScopedIdentifier:v55];
        isDelete = [v56 isDelete];
        if (isDelete)
        {
          v84 = v55;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v58 = sub_10014BE6C(isDelete);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v104 = v56;
              v105 = 2112;
              v106 = v50;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Also dropping %@ (master of %@) from pushRepository", buf, 0x16u);
            }
          }

          v77 = v56;
          platformObject3 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
          v95 = v31;
          v60 = [platformObject3 deleteChangeWithScopedIdentifier:v84 error:&v95];
          v75 = v95;

          if ((v60 & 1) == 0)
          {

            v61 = 0;
            v49 = v78;
            v29 = v81;
            v31 = v84;
            v67 = v75;
            goto LABEL_54;
          }

          v94 = v75;
          v74 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v84 class:objc_opt_class() revertedCount:countCopy error:&v94];
          v31 = v94;

          if (!v74)
          {
            goto LABEL_55;
          }
        }

        else
        {
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001B7FD0(v51);
      }
    }

    v68 = v31;
    platformObject4 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
    v93 = v31;
    v70 = [platformObject4 deleteChangeWithScopedIdentifier:v50 error:&v93];
    v31 = v93;

    if (!v70)
    {
LABEL_55:
      v61 = 0;
      v49 = v78;
      v29 = v81;
LABEL_56:

      if ((v61 & 1) == 0)
      {
        error = errorCopy;
        goto LABEL_59;
      }

LABEL_57:
      v71 = 1;
      goto LABEL_64;
    }

    v92 = v31;
    v61 = [(CPLStoreMigrationAssistant_101386451 *)self _revertRecordWithLocalScopedIdentifier:v50 class:objc_opt_class() revertedCount:countCopy error:&v92];
    v67 = v92;
    v49 = v78;
    v29 = v81;
LABEL_54:

    v31 = v67;
    goto LABEL_56;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v33 = sub_10014BE6C(isAssetChange);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v104 = v31;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ should not have been served to the client - removing it", buf, 0xCu);
    }
  }

  platformObject5 = [(CPLEngineCloudCache *)self->_cloudCache platformObject];
  v102 = 0;
  v35 = [platformObject5 _deleteRecordWithScopedIdentifier:v29 error:&v102];
  v31 = v102;

  if (!v35)
  {
    goto LABEL_48;
  }

  errorCopy2 = error;
  platformObject6 = [(CPLEngineChangePipe *)self->_pullQueue platformObject];
  v101 = v31;
  v37 = [platformObject6 _deleteAllChangesWithScopedIdentifier:v29 error:&v101];
  v38 = v101;

  if (v37)
  {
    buf[0] = 0;
    v80 = v29;
    v39 = [(CPLEngineIDMapping *)self->_idMapping localScopedIdentifierForCloudScopedIdentifier:v29 isFinal:buf];
    [v39 setScopeIndex:{objc_msgSend(scopeCopy, "localIndex")}];
    platformObject7 = [(CPLEnginePushRepository *)self->_pushRepository platformObject];
    v100 = v38;
    v41 = [platformObject7 deleteChangeWithScopedIdentifier:v39 error:&v100];
    v31 = v100;

    if (v41)
    {
      v99 = v31;
      v42 = -[CPLStoreMigrationAssistant_101386451 _revertRecordWithLocalScopedIdentifier:class:revertedCount:error:](self, "_revertRecordWithLocalScopedIdentifier:class:revertedCount:error:", v39, [v89 recordClass], countCopy, &v99);
      v43 = v99;

      v31 = v43;
      error = errorCopy2;
      v29 = v80;
      if (!v42)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }

    error = errorCopy2;
    v29 = v80;
  }

  else
  {
    v31 = v38;
    error = errorCopy2;
  }

LABEL_48:

LABEL_59:
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001B806C(recordCopy);
  }

  if (error)
  {
    v72 = v31;
    v71 = 0;
    *error = v31;
  }

  else
  {
    v71 = 0;
  }

LABEL_64:

  return v71;
}

- (BOOL)_performMigrationWithPrimaryScope:(id)scope sharingScope:(id)sharingScope error:(id *)error
{
  scopeCopy = scope;
  sharingScopeCopy = sharingScope;
  platformObject = [(CPLEngineRemappedRecords *)self->_remappedRecords platformObject];
  [(CPLEngineIDMapping *)self->_idMapping platformObject];
  v49 = v48 = platformObject;
  v59 = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v9 = [platformObject remappedRecordEnumeratorInScope:sharingScopeCopy];
  v10 = [v9 countByEnumeratingWithState:&v55 objects:v64 count:16];
  v45 = v10;
  v11 = 0;
  v12 = 0;
  if (v10)
  {
    v13 = *v56;
    v14 = v10;
    while (2)
    {
      v15 = 0;
      v46 = &v14[v11];
      v16 = v12;
      do
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v55 + 1) + 8 * v15);
        v18 = objc_autoreleasePoolPush();
        v54 = v16;
        LODWORD(v17) = [(CPLStoreMigrationAssistant_101386451 *)self _performMigrationForRemappedRecord:v17 primaryScope:scopeCopy sharingScope:sharingScopeCopy revertedCount:&v59 error:&v54];
        v12 = v54;

        if (!v17)
        {
          objc_autoreleasePoolPop(v18);

          v24 = v12;
          goto LABEL_18;
        }

        [v49 _clearScopedIdentifiersCache];
        objc_autoreleasePoolPop(v18);
        ++v15;
        v16 = v12;
      }

      while (v14 != v15);
      v14 = [v9 countByEnumeratingWithState:&v55 objects:v64 count:16];
      v11 = v46;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v20 = sub_10014BE6C(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v61 = v11;
      v62 = 2048;
      v63 = v59;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Inspected %lu remapped records for migration and scheduled %lu reverted changes", buf, 0x16u);
    }
  }

  v21 = [(CPLPrequeliteStore *)self->_pqStore recordUpgradeEvent:@"Inspected %lu remapped records for migration and scheduled %lu reverted changes", v11, v59];
  if (v59)
  {
    store = [(CPLStoreMigrationAssistant_101386451 *)self store];
    v53 = v12;
    v23 = [store addPushPullGatekeeper:self error:&v53];
    v24 = v53;

    if (!v45 || (v23 & 1) == 0)
    {
      if (!v23)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

    v12 = v24;
    goto LABEL_24;
  }

  v24 = v12;
  if (v45)
  {
LABEL_24:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v28 = sub_10014BE6C(v21);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = sharingScopeCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor for %@ to ensure all remapped records have been refreshed", buf, 0xCu);
      }
    }

    [(CPLPrequeliteStore *)self->_pqStore recordUpgradeEvent:@"Resetting sync anchor for shared scope"];
    scopes = self->_scopes;
    v52 = v12;
    v30 = [(CPLEngineScopeStorage *)scopes resetSyncAnchorForScope:sharingScopeCopy error:&v52];
    v24 = v52;

    if ((v30 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_31:
  platformObject2 = [(CPLEngineScopeStorage *)self->_scopes platformObject];
  v32 = [platformObject2 creationDateForScope:scopeCopy];
  v33 = [platformObject2 creationDateForScope:sharingScopeCopy];
  v34 = +[NSUserDefaults standardUserDefaults];
  [v34 doubleForKey:@"CPLRewindForSparseRecordsInterval"];
  v36 = v35;

  if (v32 && v33)
  {
    if (v36 <= 0.0)
    {
      v36 = 86400.0;
    }

    [v33 timeIntervalSinceDate:v32];
    if (v37 < 0.0)
    {
      v37 = -v37;
    }

    if (v37 >= v36)
    {

LABEL_49:
      v27 = 1;
      v25 = v48;
      goto LABEL_50;
    }
  }

  v38 = [(CPLEngineScopeStorage *)self->_scopes scopeChangeForScope:scopeCopy];
  if (v38 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v40 = sub_10014BE6C(isKindOfClass);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = scopeCopy;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Resetting sync anchor for %@ to ensure we catch up with missing sparse private records and relationships to them", buf, 0xCu);
      }
    }

    [(CPLPrequeliteStore *)self->_pqStore recordUpgradeEvent:@"Resetting sync anchor for private scope"];
    v41 = self->_scopes;
    v51 = v24;
    v42 = [(CPLEngineScopeStorage *)v41 resetSyncAnchorForScope:scopeCopy error:&v51];
    v43 = v51;

    v24 = v43;
  }

  else
  {
    v42 = 1;
  }

  if (v42)
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001B8128(v24);
  }

  v25 = v48;
  if (error)
  {
    v26 = v24;
    v27 = 0;
    *error = v24;
  }

  else
  {
    v27 = 0;
  }

LABEL_50:

  return v27;
}

- (BOOL)performMigrationWithError:(id *)error
{
  store = [(CPLStoreMigrationAssistant_101386451 *)self store];
  scopes = [store scopes];
  primaryScope = [scopes primaryScope];
  v8 = primaryScope;
  if (primaryScope && (primaryScope = [scopes valueForFlag:16 forScope:primaryScope], (primaryScope & 1) == 0) && (objc_msgSend(scopes, "sharingScopeForScope:", v8), (primaryScope = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = primaryScope;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10014BE6C(primaryScope);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_100021CFC();
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Migration is needed because store contains active %@/%@", v13, 0x16u);
      }
    }

    if ([store forceApplyPendingChangeSessionUpdateWithError:error])
    {
      v11 = [(CPLStoreMigrationAssistant_101386451 *)self _performMigrationWithPrimaryScope:v8 sharingScope:v9 error:error];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (_CPLSilentLogging)
    {
      v11 = 1;
      goto LABEL_15;
    }

    v9 = sub_10014BE6C(primaryScope);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No need to perform any migration work", v13, 2u);
    }

    v11 = 1;
  }

LABEL_15:
  return v11;
}

@end