@interface REMDatabaseMigrationContext
- (BOOL)_cleanLocalDatabases:(id *)databases;
- (BOOL)ensureAccountsExist:(id *)exist;
- (BOOL)ensureAccountsExist:(id)exist error:(id *)error;
- (BOOL)ensureAccountsExistWithMigrationAccountInfos:(id)infos error:(id *)error;
- (BOOL)isDatabaseMigrated;
- (BOOL)shouldDeleteMigratedData;
- (REMDatabaseMigrationContext)init;
- (REMDatabaseMigrationContext)initWithSandboxDatabaseEnabled:(BOOL)enabled;
- (id)_migrationAccountInfosFromDEPRECATEDInfoDictionaryList:(id)list;
- (id)remStore;
- (void)_diagnosticReportWithStage:(unint64_t)stage failureIdentifier:(id)identifier error:(id)error;
- (void)_postMigrationLocalAccountCleanup;
- (void)dealloc;
- (void)destroySandboxContainerIfNecessary;
- (void)reportMigrationDidFinishWithSuccess:(BOOL)success;
- (void)reportMigrationErrorWithIdentifier:(id)identifier atStage:(unint64_t)stage error:(id)error objectLocator:(id)locator;
- (void)reportMigrationWillBegin;
- (void)setIsDatabaseMigrated:(BOOL)migrated;
- (void)setShouldDataAccessStopSyncingReminders:(BOOL)reminders;
@end

@implementation REMDatabaseMigrationContext

- (REMDatabaseMigrationContext)init
{
  v3 = +[REMUserDefaults daemonUserDefaults];
  databaseMigrationTestModeEnabled = [v3 databaseMigrationTestModeEnabled];

  return [(REMDatabaseMigrationContext *)self initWithSandboxDatabaseEnabled:databaseMigrationTestModeEnabled];
}

- (REMDatabaseMigrationContext)initWithSandboxDatabaseEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13.receiver = self;
  v13.super_class = REMDatabaseMigrationContext;
  v4 = [(REMDatabaseMigrationContext *)&v13 init];
  if (v4)
  {
    v5 = !enabledCopy;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v12 = 0;
  v6 = [REMStore createIsolatedStoreContainerWithError:&v12];
  v7 = v12;
  containerToken = v4->_containerToken;
  v4->_containerToken = v6;

  if (v4->_containerToken)
  {

LABEL_7:
    v9 = v4;
    goto LABEL_8;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [REMDatabaseMigrationContext initWithSandboxDatabaseEnabled:];
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)shouldDeleteMigratedData
{
  containerToken = [(REMDatabaseMigrationContext *)self containerToken];
  v3 = containerToken == 0;

  return v3;
}

- (BOOL)isDatabaseMigrated
{
  containerToken = [(REMDatabaseMigrationContext *)self containerToken];

  if (containerToken)
  {
    v3 = +[REMSystemUtilities systemBuildVersion];
    v4 = +[REMUserDefaults daemonUserDefaults];
    lastDatabaseMigrationSystemBuildVersion = [v4 lastDatabaseMigrationSystemBuildVersion];
    isDatabaseMigrated = [v3 isEqual:lastDatabaseMigrationSystemBuildVersion];
  }

  else
  {
    v3 = +[REMUserDefaults daemonUserDefaults];
    isDatabaseMigrated = [v3 isDatabaseMigrated];
  }

  return isDatabaseMigrated;
}

- (void)setIsDatabaseMigrated:(BOOL)migrated
{
  migratedCopy = migrated;
  containerToken = [(REMDatabaseMigrationContext *)self containerToken];

  if (!containerToken)
  {
    v5 = +[REMUserDefaults daemonUserDefaults];
    [v5 setIsDatabaseMigrated:migratedCopy];
  }
}

- (void)setShouldDataAccessStopSyncingReminders:(BOOL)reminders
{
  containerToken = [(REMDatabaseMigrationContext *)self containerToken];

  if (!containerToken)
  {
    v4 = +[REMUserDefaults daemonUserDefaults];
    [v4 dataaccessDaemonStopSyncingReminders];
  }
}

- (id)remStore
{
  cachedStore = [(REMDatabaseMigrationContext *)self cachedStore];
  if (!cachedStore)
  {
    containerToken = [(REMDatabaseMigrationContext *)self containerToken];
    if (containerToken)
    {
      v5 = [REMStore alloc];
      containerToken2 = [(REMDatabaseMigrationContext *)self containerToken];
      cachedStore = [(REMStore *)v5 initWithStoreContainerToken:containerToken2];
    }

    else
    {
      cachedStore = objc_alloc_init(REMStore);
    }

    [(REMStore *)cachedStore setMode:1];
    [(REMDatabaseMigrationContext *)self setCachedStore:cachedStore];
  }

  v7 = cachedStore;

  return v7;
}

- (void)destroySandboxContainerIfNecessary
{
  containerToken = [(REMDatabaseMigrationContext *)self containerToken];

  if (containerToken)
  {
    cachedStore = [(REMDatabaseMigrationContext *)self cachedStore];
    [cachedStore invalidate];

    containerToken2 = [(REMDatabaseMigrationContext *)self containerToken];
    v9 = 0;
    v6 = [REMStore destroyIsolatedStoreContainerWithToken:containerToken2 error:&v9];
    v7 = v9;

    if (!v6)
    {
      v8 = +[REMLogStore write];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [REMDatabaseMigrationContext destroySandboxContainerIfNecessary];
      }
    }

    [(REMDatabaseMigrationContext *)self setCachedStore:0];
    [(REMDatabaseMigrationContext *)self setContainerToken:0];
  }
}

- (void)dealloc
{
  [(REMDatabaseMigrationContext *)self destroySandboxContainerIfNecessary];
  v3.receiver = self;
  v3.super_class = REMDatabaseMigrationContext;
  [(REMDatabaseMigrationContext *)&v3 dealloc];
}

- (void)reportMigrationWillBegin
{
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_DEFAULT, "Database Migration will begin", v5, 2u);
  }

  AnalyticsSendEvent();
  date = [MEMORY[0x1E695DF00] date];
  [(REMDatabaseMigrationContext *)self setMigrationStartDate:date];
}

- (void)reportMigrationErrorWithIdentifier:(id)identifier atStage:(unint64_t)stage error:(id)error objectLocator:(id)locator
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  v11 = +[REMLogStore OVERSIZED];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = NSStringFromMigrationStage(stage);
    userInfo = [errorCopy userInfo];
    v16 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A278]];
    *buf = 138544130;
    v20 = identifierCopy;
    v21 = 2114;
    v22 = v14;
    v23 = 2114;
    v24 = errorCopy;
    v25 = 2112;
    v26 = v16;
    _os_log_error_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_ERROR, "Migration Error {identifier: %{public}@, stage: %{public}@, error: %{public}@, error.debugDescription: %@}", buf, 0x2Au);
  }

  v18 = errorCopy;
  v17 = identifierCopy;
  v12 = errorCopy;
  v13 = identifierCopy;
  AnalyticsSendEventLazy();
  [(REMDatabaseMigrationContext *)self setLastReportedErrorIdentifier:v13];
  [(REMDatabaseMigrationContext *)self setLastReportedError:v12];
  [(REMDatabaseMigrationContext *)self setLastReportedErrorStage:stage];
}

id __94__REMDatabaseMigrationContext_reportMigrationErrorWithIdentifier_atStage_error_objectLocator___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"identifier"];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  [v2 setObject:v3 forKeyedSubscript:@"stage"];

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 domain];
    [v2 setObject:v5 forKeyedSubscript:@"errorDomain"];

    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    [v2 setObject:v6 forKeyedSubscript:@"errorCode"];
  }

  return v2;
}

- (void)_postMigrationLocalAccountCleanup
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_DEFAULT, "_postMigrationLocalAccountCleanup: Trying to clean up local account after local migration", buf, 2u);
  }

  remStore = [(REMDatabaseMigrationContext *)self remStore];
  v5 = +[REMAccount localAccountID];
  v40 = 0;
  v6 = [remStore fetchAccountWithObjectID:v5 error:&v40];
  v7 = v40;

  if (v6)
  {
    v39 = v7;
    v8 = [v6 fetchListsWithError:&v39];
    v9 = v39;

    if (v8)
    {
      if ([v8 count]> 1)
      {
        v10 = +[REMList localAccountDefaultListID];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v11 = v8;
        v12 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
        if (v12)
        {
          v13 = v12;
          v30 = remStore;
          v31 = v9;
          v14 = *v36;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v36 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v35 + 1) + 8 * i);
              objectID = [v16 objectID];
              v18 = [objectID isEqual:v10];

              if (v18)
              {
                remStore = v30;
                v19 = [[REMRemindersDataView alloc] initWithStore:v30];
                objectID2 = [v16 objectID];
                v34 = v31;
                v29 = v19;
                v21 = [(REMRemindersDataView *)v19 fetchRemindersCountWithListID:objectID2 includingCompleted:1 error:&v34];
                v9 = v34;

                if (v21)
                {
                  intValue = [v21 intValue];
                  v23 = +[REMLogStore write];
                  v24 = os_log_type_enabled(&v23->super, OS_LOG_TYPE_DEFAULT);
                  if (intValue < 1)
                  {
                    if (v24)
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19A0DB000, &v23->super, OS_LOG_TYPE_DEFAULT, "_postMigrationLocalAccountCleanup: Removing empty default list because the local migration has copied some list(s) to the local account", buf, 2u);
                    }

                    v23 = [[REMSaveRequest alloc] initWithStore:v30];
                    v28 = [(REMSaveRequest *)v23 updateList:v16];
                    [v28 removeFromParent];
                    v33 = v9;
                    v25 = [(REMSaveRequest *)v23 saveSynchronouslyWithError:&v33];
                    v32 = v33;

                    if (!v25)
                    {
                      v26 = +[REMLogStore write];
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                      {
                        [REMDatabaseMigrationContext _postMigrationLocalAccountCleanup];
                      }
                    }

                    v27 = +[REMLogStore write];
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_19A0DB000, v27, OS_LOG_TYPE_DEFAULT, "_postMigrationLocalAccountCleanup: Empty default list removed", buf, 2u);
                    }

                    v9 = v32;
                  }

                  else if (v24)
                  {
                    *buf = 0;
                    _os_log_impl(&dword_19A0DB000, &v23->super, OS_LOG_TYPE_DEFAULT, "_postMigrationLocalAccountCleanup: Our default list isn't empty. Not going to remove it", buf, 2u);
                  }
                }

                else
                {
                  v23 = +[REMLogStore write];
                  if (os_log_type_enabled(&v23->super, OS_LOG_TYPE_ERROR))
                  {
                    [REMDatabaseMigrationContext _postMigrationLocalAccountCleanup];
                  }
                }

                goto LABEL_37;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v35 objects:v42 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          remStore = v30;
          v9 = v31;
        }

LABEL_37:
      }

      else
      {
        v10 = +[REMLogStore write];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "_postMigrationLocalAccountCleanup: No lists or only one list is found. No cleanup is necessary", buf, 2u);
        }
      }
    }

    else
    {
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [REMDatabaseMigrationContext _postMigrationLocalAccountCleanup];
      }
    }

    v7 = v9;
  }

  else
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [REMDatabaseMigrationContext _postMigrationLocalAccountCleanup];
    }
  }
}

- (void)reportMigrationDidFinishWithSuccess:(BOOL)success
{
  successCopy = success;
  v24 = *MEMORY[0x1E69E9840];
  migrationStartDate = [(REMDatabaseMigrationContext *)self migrationStartDate];
  [migrationStartDate timeIntervalSinceNow];
  v7 = v6;

  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v21 = successCopy;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "Database Migration did finish {success: %d, duration: %.2f}", buf, 0x12u);
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __67__REMDatabaseMigrationContext_reportMigrationDidFinishWithSuccess___block_invoke;
  v17 = &__block_descriptor_41_e19___NSDictionary_8__0l;
  LOBYTE(v19) = successCopy;
  v18 = v7;
  AnalyticsSendEventLazy();
  if (!successCopy)
  {
    v9 = [(REMDatabaseMigrationContext *)self lastReportedErrorStage:v14];
    lastReportedErrorIdentifier = [(REMDatabaseMigrationContext *)self lastReportedErrorIdentifier];
    lastReportedError = [(REMDatabaseMigrationContext *)self lastReportedError];
    [(REMDatabaseMigrationContext *)self _diagnosticReportWithStage:v9 failureIdentifier:lastReportedErrorIdentifier error:lastReportedError];
  }

  [(REMDatabaseMigrationContext *)self setIsDatabaseMigrated:1, v14, v15, v16, v17, v18, v19];
  [(REMDatabaseMigrationContext *)self setShouldDataAccessStopSyncingReminders:1];
  v12 = +[REMUserDefaults daemonUserDefaults];
  v13 = +[REMSystemUtilities systemBuildVersion];
  [v12 setLastDatabaseMigrationSystemBuildVersion:v13];

  [(REMDatabaseMigrationContext *)self _postMigrationLocalAccountCleanup];
}

id __67__REMDatabaseMigrationContext_reportMigrationDidFinishWithSuccess___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"success";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v6[1] = @"duration";
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:fabs(*(a1 + 32))];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)_diagnosticReportWithStage:(unint64_t)stage failureIdentifier:(id)identifier error:(id)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v8 = MEMORY[0x1E69D4F80];
  identifierCopy = identifier;
  v10 = objc_alloc_init(v8);
  v11 = NSStringFromMigrationStage(stage);
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v14 = [v10 signatureWithDomain:@"ReminderKit" type:@"EventKitMigration" subType:v11 subtypeContext:identifierCopy detectedProcess:processName triggerThresholdValues:0];

  if (errorCopy)
  {
    v18[0] = @"errorDomain";
    domain = [errorCopy domain];
    v18[1] = @"errorCode";
    v19[0] = domain;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v19[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  }

  else
  {
    v17 = 0;
  }

  [v10 snapshotWithSignature:v14 duration:v17 event:0 payload:&__block_literal_global_18 reply:0.0];
}

void __82__REMDatabaseMigrationContext__diagnosticReportWithStage_failureIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_DEFAULT, "AutoBugCapture did reply {response: %@}", &v4, 0xCu);
  }
}

- (BOOL)ensureAccountsExistWithMigrationAccountInfos:(id)infos error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  if ([(REMDatabaseMigrationContext *)self hasPerformedEnsureAccountsExist])
  {
    v7 = 1;
    goto LABEL_48;
  }

  if ([(REMDatabaseMigrationContext *)self isDatabaseMigrated])
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "ensureAccountsExist: There is no need to clean local database before we ensure accounts exist for local migration.";
LABEL_8:
      _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
    }
  }

  else
  {
    [(REMDatabaseMigrationContext *)self _cleanLocalDatabases:error];
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "ensureAccountsExist: Finished calling [_cleanLocalDatabases]";
      goto LABEL_8;
    }
  }

  [(REMDatabaseMigrationContext *)self setHasPerformedEnsureAccountsExist:1];
  if ([infosCopy count])
  {
    errorCopy = error;
    remStore = [(REMDatabaseMigrationContext *)self remStore];
    v42 = infosCopy;
    v43 = [[REMSaveRequest alloc] initWithStore:remStore];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = infosCopy;
    v12 = [v11 countByEnumeratingWithState:&v49 objects:v62 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
      v44 = v11;
      v45 = remStore;
      do
      {
        v15 = 0;
        v46 = v13;
        do
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v49 + 1) + 8 * v15);
          type = [v16 type];
          v18 = +[REMLogStore write];
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
          if (type == 1)
          {
            if (v19)
            {
              identifier = [v16 identifier];
              name = [v16 name];
              *buf = 138543618;
              v57 = identifier;
              v58 = 2112;
              v59 = name;
              _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_INFO, "ensureAccountsExist: Local account is ignored {accountID: %{public}@, name: %@}", buf, 0x16u);
            }
          }

          else
          {
            if (v19)
            {
              identifier2 = [v16 identifier];
              name2 = [v16 name];
              type2 = [v16 type];
              *buf = 138543874;
              v57 = identifier2;
              v58 = 2112;
              v59 = name2;
              v60 = 2048;
              v61 = type2;
              _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_INFO, "ensureAccountsExist: About to add account per request {accountID: %{public}@, name: %@, type: %ld}", buf, 0x20u);
            }

            identifier3 = [v16 identifier];
            v48 = 0;
            v26 = [remStore fetchAccountWithExternalIdentifier:identifier3 error:&v48];
            v18 = v48;

            if (v26)
            {
              v27 = remStore;
              name3 = +[REMLogStore write];
              if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
              {
                [REMDatabaseMigrationContext ensureAccountsExistWithMigrationAccountInfos:v55 error:v16];
              }
            }

            else
            {
              name3 = [v16 name];
              v29 = objc_alloc(MEMORY[0x1E696AFB0]);
              identifier4 = [v16 identifier];
              v31 = [v29 initWithUUIDString:identifier4];

              if (v31)
              {
                v32 = [REMAccount objectIDWithUUID:v31];
                v33 = -[REMSaveRequest __addAccountWithType:name:accountObjectID:](v43, "__addAccountWithType:name:accountObjectID:", [v16 type], name3, v32);
                if ([v16 isCloudKit])
                {
                  identifier5 = +[REMLogStore write];
                  if (os_log_type_enabled(identifier5, OS_LOG_TYPE_ERROR))
                  {
                    [REMDatabaseMigrationContext ensureAccountsExistWithMigrationAccountInfos:v53 error:v16];
                  }
                }

                else
                {
                  identifier5 = [v16 identifier];
                  [v33 setExternalIdentifier:identifier5];
                }
              }

              else
              {
                v32 = +[REMLogStore write];
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  [REMDatabaseMigrationContext ensureAccountsExistWithMigrationAccountInfos:v54 error:v16];
                }
              }

              v27 = v45;

              v11 = v44;
            }

            remStore = v27;
            v13 = v46;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v49 objects:v62 count:16];
      }

      while (v13);
    }

    v35 = +[REMLogStore write];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v35, OS_LOG_TYPE_INFO, "ensureAccountsExist: About to save pending changes to our database", buf, 2u);
    }

    v47 = 0;
    [(REMSaveRequest *)v43 saveSynchronouslyWithError:&v47];
    v36 = v47;
    v37 = v36;
    v7 = v36 == 0;
    if (v36)
    {
      if (errorCopy)
      {
        v38 = v36;
        *errorCopy = v37;
      }

      v39 = +[REMLogStore write];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [REMDatabaseMigrationContext ensureAccountsExistWithMigrationAccountInfos:error:];
      }
    }

    infosCopy = v42;
  }

  else
  {
    remStore = +[REMLogStore write];
    if (os_log_type_enabled(remStore, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, remStore, OS_LOG_TYPE_DEFAULT, "ensureAccountsExist: There's no input account info. There's nothing we need to do.", buf, 2u);
    }

    v7 = 1;
  }

LABEL_48:
  return v7;
}

- (BOOL)ensureAccountsExist:(id)exist error:(id *)error
{
  v6 = [(REMDatabaseMigrationContext *)self _migrationAccountInfosFromDEPRECATEDInfoDictionaryList:exist];
  LOBYTE(error) = [(REMDatabaseMigrationContext *)self ensureAccountsExistWithMigrationAccountInfos:v6 error:error];

  return error;
}

- (BOOL)ensureAccountsExist:(id *)exist
{
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [REMDatabaseMigrationContext ensureAccountsExist:v3];
  }

  return 0;
}

- (id)_migrationAccountInfosFromDEPRECATEDInfoDictionaryList:(id)list
{
  v36 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(listCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = listCopy;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v26 = 1;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = [v8 objectForKey:@"identifier"];
        v11 = REMDynamicCast(v9, v10);

        v12 = objc_opt_class();
        v13 = [v8 objectForKey:@"name"];
        v14 = REMDynamicCast(v12, v13);

        v15 = objc_opt_class();
        v16 = [v8 objectForKey:@"type"];
        v17 = REMDynamicCast(v15, v16);

        if (!v11)
        {
          v18 = +[REMLogStore write];
          if (!os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
          *buf = 138543618;
          v32 = v19;
          v33 = 2112;
          v34 = v8;
          p_super = &v18->super;
          v21 = "ensureAccountsExist: Given account info #(%{public}@) does not contain an identifier: %@";
          goto LABEL_15;
        }

        if (v17)
        {
          v18 = -[REMDatabaseMigrationAccountInfo initWithAccountType:identifier:name:]([REMDatabaseMigrationAccountInfo alloc], "initWithAccountType:identifier:name:", [v17 unsignedIntegerValue], v11, v14);
          [v24 addObject:v18];
          ++v26;
          goto LABEL_12;
        }

        v18 = +[REMLogStore write];
        if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
        {
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
          *buf = 138543618;
          v32 = v19;
          v33 = 2112;
          v34 = v8;
          p_super = &v18->super;
          v21 = "ensureAccountsExist: Given account info #(%{public}@) does not contain an account type: %@";
LABEL_15:
          _os_log_error_impl(&dword_19A0DB000, p_super, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
        }

LABEL_12:

        ++v7;
      }

      while (v5 != v7);
      v22 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      v5 = v22;
    }

    while (v22);
  }

  return v24;
}

- (BOOL)_cleanLocalDatabases:(id *)databases
{
  v72 = *MEMORY[0x1E69E9840];
  remStore = [(REMDatabaseMigrationContext *)self remStore];
  v62 = 0;
  v5 = [remStore fetchAccountsIncludingInactive:1 error:&v62];
  v6 = v62;
  if (v6)
  {
    v7 = v6;
    if (databases)
    {
      v8 = v6;
      *databases = v7;
    }

    v51 = +[REMLogStore write];
    if (os_log_type_enabled(&v51->super, OS_LOG_TYPE_ERROR))
    {
      [REMDatabaseMigrationContext _cleanLocalDatabases:];
    }

    v9 = 0;
    goto LABEL_47;
  }

  v51 = [[REMSaveRequest alloc] initWithStore:remStore];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
  v9 = v10 == 0;
  if (!v10)
  {
    v39 = 0;
    goto LABEL_45;
  }

  databasesCopy = databases;
  v43 = v10 == 0;
  v44 = v5;
  v45 = remStore;
  v11 = 0;
  v7 = 0;
  v12 = *v59;
  v13 = 0x1E7506000uLL;
  v14 = obj;
  v15 = v10;
  v46 = *v59;
  do
  {
    v16 = 0;
    v48 = v15;
    do
    {
      if (*v59 != v12)
      {
        objc_enumerationMutation(v14);
      }

      v50 = v16;
      v17 = *(*(&v58 + 1) + 8 * v16);
      accountTypeHost = [v17 accountTypeHost];
      v19 = accountTypeHost;
      if (([accountTypeHost isCalDav] & 1) != 0 || objc_msgSend(accountTypeHost, "isExchange"))
      {
        write = [*(v13 + 3368) write];
        if (os_log_type_enabled(write, OS_LOG_TYPE_ERROR))
        {
          name = [v17 name];
          objectID = [v17 objectID];
          externalIdentifier = [v17 externalIdentifier];
          *buf = 138412802;
          v66 = name;
          v67 = 2114;
          v68 = objectID;
          v69 = 2114;
          v70 = externalIdentifier;
          _os_log_error_impl(&dword_19A0DB000, write, OS_LOG_TYPE_ERROR, "REMDatabaseMigrationContext found existing CalDAV account locally before migration, deleting store: {name: %@, id: %{public}@, externalIdentifier: %{public}@}", buf, 0x20u);

          accountTypeHost = v19;
          v15 = v48;
        }

        v21 = [(REMSaveRequest *)v51 updateAccount:v17];
        [v21 removeFromStore];
        v11 = 1;
LABEL_17:

        goto LABEL_18;
      }

      if ([accountTypeHost isLocal])
      {
        write2 = [*(v13 + 3368) write];
        if (os_log_type_enabled(write2, OS_LOG_TYPE_ERROR))
        {
          [(REMDatabaseMigrationContext *)v64 _cleanLocalDatabases:v17];
        }

        v57 = v7;
        v23 = [v17 fetchListsWithError:&v57];
        v49 = v57;

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v21 = v23;
        v24 = [v21 countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v54;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v54 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v53 + 1) + 8 * i);
              objectID2 = [v28 objectID];
              v30 = +[REMList localAccountDefaultListID];
              v31 = [objectID2 isEqual:v30];

              if ((v31 & 1) == 0)
              {
                v32 = [(REMSaveRequest *)v51 updateList:v28];
                [v32 removeFromParent];

                v11 = 1;
              }
            }

            accountTypeHost = v19;
            v25 = [v21 countByEnumeratingWithState:&v53 objects:v63 count:16];
          }

          while (v25);
        }

        v15 = v48;
        v7 = v49;
        v13 = 0x1E7506000;
        v12 = v46;
        v14 = obj;
        goto LABEL_17;
      }

LABEL_18:

      v16 = v50 + 1;
    }

    while (v50 + 1 != v15);
    v36 = [v14 countByEnumeratingWithState:&v58 objects:v71 count:16];
    v15 = v36;
  }

  while (v36);

  if (v11)
  {
    write3 = [*(v13 + 3368) write];
    if (os_log_type_enabled(write3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, write3, OS_LOG_TYPE_INFO, "_cleanLocalDatabases saving changes", buf, 2u);
    }

    v52 = v7;
    v38 = [(REMSaveRequest *)v51 saveSynchronouslyWithError:&v52];
    v39 = v52;

    v5 = v44;
    remStore = v45;
    v9 = v43;
    if (v38)
    {
      v9 = 1;
      goto LABEL_46;
    }

    if (databasesCopy)
    {
      v40 = v39;
      *databasesCopy = v39;
    }

    obj = +[REMLogStore write];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [REMDatabaseMigrationContext _cleanLocalDatabases:];
    }

LABEL_45:

LABEL_46:
    v7 = v39;
  }

  else
  {
    v9 = 1;
    v5 = v44;
    remStore = v45;
  }

LABEL_47:

  return v9;
}

- (void)ensureAccountsExistWithMigrationAccountInfos:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  OUTLINED_FUNCTION_4_4(v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v3, v4, "ensureAccountsExist: Found unexpected existing account with external identifier we are about to use for creating new account {uuid: %{public}@}");
}

- (void)ensureAccountsExistWithMigrationAccountInfos:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  OUTLINED_FUNCTION_4_4(v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v3, v4, "ensureAccountsExist: CloudKit account type is not expected. {uuid: %{public}@}");
}

- (void)ensureAccountsExistWithMigrationAccountInfos:(uint64_t)a1 error:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  OUTLINED_FUNCTION_4_4(v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v3, v4, "ensureAccountsExist: Invalid UUID. Skip. {uuid: %{public}@}");
}

- (void)_cleanLocalDatabases:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  OUTLINED_FUNCTION_4_4(v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v3, v4, "REMDatabaseMigrationContext found existing local account locally before migration, emptying content: {id: %{public}@}");
}

@end