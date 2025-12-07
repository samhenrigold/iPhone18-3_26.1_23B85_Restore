@interface HDDatabaseValidationTaskServer
- (void)remote_validateDatabase:(int64_t)database clientCompletionHandler:(id)handler errorHandlerIdentifier:(id)identifier;
- (void)remote_validateEntitiesWithClientCompletionHandler:(id)handler errorHandlerIdentifier:(id)identifier;
@end

@implementation HDDatabaseValidationTaskServer

- (void)remote_validateDatabase:(int64_t)database clientCompletionHandler:(id)handler errorHandlerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke;
  v23[3] = &unk_2786138D0;
  v23[4] = self;
  handlerCopy = handler;
  v10 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v23];
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v13 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  databaseCopy = database;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_293;
  v18[3] = &unk_278614698;
  v19 = v10;
  v20 = identifierCopy;
  v14 = identifierCopy;
  v15 = v10;
  v16 = [database performTransactionWithContext:v13 error:&v22 block:v18 inaccessibilityHandler:0];
  v17 = v22;

  [v15 clientRemote_synchronizeWithCompletion:handlerCopy success:v16 error:v17];
}

void __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = HKSensitiveLogItem();
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call HKDatabaseValidationClient clientRemote_processIntegrityErrorString, with error: %{public}@", &v8, 0x16u);
  }
}

uint64_t __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_293(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 unprotectedDatabase];
  v7 = *MEMORY[0x277CCCE28];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_2;
  v15[3] = &unk_278619438;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v8 = [v6 performIntegrityCheckOnDatabase:v7 error:a3 integrityErrorHandler:v15];

  if (*(a1 + 48) && v8)
  {
    v9 = [v5 protectedDatabase];
    v10 = *MEMORY[0x277CCC8E8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_295;
    v12[3] = &unk_278619438;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v8 = [v9 performIntegrityCheckOnDatabase:v10 error:a3 integrityErrorHandler:v12];
  }

  return v8;
}

void __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Integrity issues in unprotected database: %{public}@.", &v5, 0xCu);
  }

  [*(a1 + 32) clientRemote_processIntegrityErrorString:v3 errorHandlerIdentifier:*(a1 + 40)];
}

void __105__HDDatabaseValidationTaskServer_remote_validateDatabase_clientCompletionHandler_errorHandlerIdentifier___block_invoke_295(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Integrity issues in protected database: %{public}@.", &v5, 0xCu);
  }

  [*(a1 + 32) clientRemote_processIntegrityErrorString:v3 errorHandlerIdentifier:*(a1 + 40)];
}

- (void)remote_validateEntitiesWithClientCompletionHandler:(id)handler errorHandlerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke;
  v20[3] = &unk_2786138D0;
  v20[4] = self;
  handlerCopy = handler;
  v8 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v20];
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v11 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  v18 = identifierCopy;
  v19 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke_297;
  v16[3] = &unk_278615D40;
  v16[4] = self;
  v17 = v8;
  v12 = identifierCopy;
  v13 = v8;
  v14 = [database performTransactionWithContext:v11 error:&v19 block:v16 inaccessibilityHandler:0];
  v15 = v19;

  [v13 clientRemote_synchronizeWithCompletion:handlerCopy success:v14 error:v15];
}

void __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = HKSensitiveLogItem();
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call HKDatabaseValidationClient clientRemote_processValidationError, with error: %{public}@", &v8, 0x16u);
  }
}

uint64_t __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke_297(id *a1, uint64_t a2, uint64_t *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  +[HDDatabase allCurrentAndFutureEntityClasses];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = objc_opt_class();
        if ([v10 isSubclassOfClass:objc_opt_class()])
        {
          v11 = objc_opt_class();
          v12 = [a1[4] profile];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke_2;
          v16[3] = &unk_278619460;
          v17 = a1[5];
          v18 = a1[6];
          [v11 validateEntityWithProfile:v12 error:a3 validationErrorHandler:v16];

          v13 = *a3;
          if (v13)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  return v14;
}

void __108__HDDatabaseValidationTaskServer_remote_validateEntitiesWithClientCompletionHandler_errorHandlerIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277CCA7E8]];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 objectForKey:*MEMORY[0x277CCBD78]];
  v8 = [v5 localizedDescription];
  v9 = [v4 objectForKey:*MEMORY[0x277CCBD80]];
  v10 = [v4 objectForKey:*MEMORY[0x277CCBD70]];
  v11 = [v4 objectForKey:*MEMORY[0x277CCBD88]];
  v12 = [v6 stringWithFormat:@"%@ %@ %@ %@ (%@)", v7, v8, v9, v10, v11];

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v12;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@.", buf, 0xCu);
  }

  [*(a1 + 32) clientRemote_processValidationError:v3 errorHandlerIdentifier:*(a1 + 40)];
}

@end