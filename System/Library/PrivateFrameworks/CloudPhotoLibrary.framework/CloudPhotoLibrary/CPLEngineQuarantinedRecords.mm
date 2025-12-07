@interface CPLEngineQuarantinedRecords
+ (unint64_t)quarantineRetryCount;
- (BOOL)_addQuarantinedRecordWithScopedIdentifier:(id)identifier related:(BOOL)related recordClass:(Class)class reason:(id)reason error:(id *)error;
- (BOOL)_quarantineRejectedRecords:(id)records error:(id *)error;
- (BOOL)bumpRejectedRecords:(id)records error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)isRecordWithScopedIdentifierQuarantined:(id)quarantined;
- (BOOL)performMaintenanceWithError:(id *)error;
- (BOOL)removeQuarantinedRecordWithScopedIdentifier:(id)identifier notify:(BOOL)notify error:(id *)error;
- (BOOL)resetRejectedRecordsWithError:(id *)error;
- (Class)classForQuarantinedRecordWithScopedIdentifier:(id)identifier;
- (unint64_t)countOfQuarantinedRecords;
- (unint64_t)countOfQuarantinedRecordsInScopeWithIdentifier:(id)identifier;
- (void)_sendQuarantineFeedbackWithRecordClass:(Class)class reason:(id)reason;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineQuarantinedRecords

- (void)writeTransactionDidSucceed
{
  v8.receiver = self;
  v8.super_class = CPLEngineQuarantinedRecords;
  [(CPLEngineStorage *)&v8 writeTransactionDidSucceed];
  if (self->_rejectedRecordsHasChanges)
  {
    self->_rejectedRecordsHasChanges = 0;
    objc_storeStrong(&self->_rejectedRecords, self->_newRejectedRecords);
    self->_rejectedCount = self->_newRejectedCount;
    newRejectedRecords = self->_newRejectedRecords;
    self->_newRejectedRecords = 0;

    self->_newRejectedCount = 0;
  }

  if ([(NSMutableArray *)self->_quarantineMessages count])
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    feedback = [engineLibrary feedback];
    [feedback reportMessages:self->_quarantineMessages];
  }

  quarantineMessages = self->_quarantineMessages;
  self->_quarantineMessages = 0;
}

- (void)writeTransactionDidFail
{
  v5.receiver = self;
  v5.super_class = CPLEngineQuarantinedRecords;
  [(CPLEngineStorage *)&v5 writeTransactionDidFail];
  if (self->_rejectedRecordsHasChanges)
  {
    self->_rejectedRecordsHasChanges = 0;
    newRejectedRecords = self->_newRejectedRecords;
    self->_newRejectedRecords = 0;

    self->_newRejectedCount = 0;
  }

  quarantineMessages = self->_quarantineMessages;
  self->_quarantineMessages = 0;
}

- (BOOL)performMaintenanceWithError:(id *)error
{
  engineStore = [(CPLEngineStorage *)self engineStore];
  statusCenter = [engineStore statusCenter];
  isEmpty = [statusCenter isEmpty];

  if (isEmpty)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v13 = 0;
    v9 = [platformObject removeRelatedRecordsFromQuarantineWithError:&v13];
    v10 = v13;

    if (error && (v9 & 1) == 0)
    {
      v11 = v10;
      v9 = 0;
      *error = v10;
    }
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  return v9;
}

- (BOOL)resetRejectedRecordsWithError:(id *)error
{
  if (self->_rejectedRecords)
  {
    self->_rejectedRecordsHasChanges = 1;
    self->_newRejectedCount = 0;
    newRejectedRecords = self->_newRejectedRecords;
    self->_newRejectedRecords = 0;
  }

  return 1;
}

- (BOOL)bumpRejectedRecords:(id)records error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  if (!+[CPLEngineQuarantinedRecords quarantineRetryCount])
  {
    v14 = [(CPLEngineQuarantinedRecords *)self _quarantineRejectedRecords:recordsCopy error:error];
LABEL_15:
    v15 = v14;
    goto LABEL_16;
  }

  if (!recordsCopy)
  {
    v14 = [(CPLEngineQuarantinedRecords *)self resetRejectedRecordsWithError:error];
    goto LABEL_15;
  }

  if (self->_rejectedRecords && ([recordsCopy rejectsTheSameRecordsAs:?] & 1) != 0)
  {
    self->_rejectedRecordsHasChanges = 1;
    v8 = self->_rejectedCount + 1;
    self->_newRejectedCount = v8;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_22181();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [recordsCopy count];
        newRejectedCount = self->_newRejectedCount;
        rejectedDescriptions = [recordsCopy rejectedDescriptions];
        v12 = [rejectedDescriptions componentsJoinedByString:@"\n\t"];
        *buf = 134218498;
        v19 = v10;
        v20 = 2048;
        v21 = newRejectedCount;
        v22 = 2114;
        v23 = v12;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "%lu records have been rejected (%lu):\n\t%{public}@", buf, 0x20u);
      }

      v8 = self->_newRejectedCount;
    }

    if (v8 <= +[CPLEngineQuarantinedRecords quarantineRetryCount])
    {
      objc_storeStrong(&self->_newRejectedRecords, self->_rejectedRecords);
    }

    else
    {
      if (![(CPLEngineQuarantinedRecords *)self _quarantineRejectedRecords:recordsCopy error:error])
      {
        v15 = 0;
        goto LABEL_16;
      }

      self->_newRejectedCount = 0;
      newRejectedRecords = self->_newRejectedRecords;
      self->_newRejectedRecords = 0;
    }

    v15 = 1;
  }

  else
  {
    v15 = 1;
    self->_rejectedRecordsHasChanges = 1;
    objc_storeStrong(&self->_newRejectedRecords, records);
    self->_newRejectedCount = 1;
  }

LABEL_16:

  return v15;
}

- (BOOL)_quarantineRejectedRecords:(id)records error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  engineStore = [(CPLEngineStorage *)self engineStore];
  if ([engineStore forceApplyPendingChangeSessionUpdateWithError:error])
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 1;
    pushRepository = [engineStore pushRepository];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLStorageOSLogDomain_22181();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [recordsCopy count];
        rejectedDescriptions = [recordsCopy rejectedDescriptions];
        v12 = [rejectedDescriptions componentsJoinedByString:@"\n\t"];
        *buf = 134218242;
        *&buf[4] = v10;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%lu records have been rejected too many times. Quarantining them:\n\t%{public}@", buf, 0x16u);
      }
    }

    v13 = [recordsCopy count];
    Mutable = CFDictionaryCreateMutable(0, v13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = __Block_byref_object_copy__22194;
    v59 = __Block_byref_object_dispose__22195;
    v60 = 0;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke;
    v49[3] = &unk_1E861FDC8;
    v16 = Mutable;
    v50 = v16;
    v17 = v15;
    v51 = v17;
    v52 = buf;
    v18 = MEMORY[0x1E128EBA0](v49);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_2;
    v45[3] = &unk_1E861FDF0;
    v19 = pushRepository;
    v46 = v19;
    v20 = v16;
    v47 = v20;
    v21 = v18;
    v48 = v21;
    v22 = MEMORY[0x1E128EBA0](v45);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_42;
    v41[3] = &unk_1E861FE18;
    v41[4] = self;
    v23 = v21;
    v43 = v23;
    v24 = v19;
    v42 = v24;
    v25 = v22;
    v44 = v25;
    [recordsCopy enumerateRecordsAndReasonsUsingBlock:v41];
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__22194;
    v39 = __Block_byref_object_dispose__22195;
    v40 = 0;
    if (*(v54 + 24) == 1)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_47;
      v28[3] = &unk_1E861FE40;
      v29 = recordsCopy;
      selfCopy = self;
      v32 = &v53;
      v33 = buf;
      v34 = &v35;
      v31 = v17;
      [(__CFDictionary *)v20 enumerateKeysAndObjectsUsingBlock:v28];

      v26 = *(v54 + 24);
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v26 = 0;
      if (!error)
      {
LABEL_13:
        _Block_object_dispose(&v35, 8);

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v53, 8);
        goto LABEL_14;
      }
    }

    if ((v26 & 1) == 0)
    {
      *error = v36[5];
      v26 = *(v54 + 24);
    }

    goto LABEL_13;
  }

  v26 = 0;
LABEL_14:

  return v26 & 1;
}

void __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5)
{
  v15 = a2;
  v9 = a4;
  v10 = [*(a1 + 32) objectForKeyedSubscript:v15];

  if (!v10)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v15];
    [*(a1 + 40) setObject:a5 forKeyedSubscript:v15];
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (a3)
    {
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v11 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v11 addObject:v15];
    }

    else
    {
      [v11 removeObject:v15];
    }
  }
}

void __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_2(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = *(a1 + 32);
  v5 = 0x1E8619000uLL;
  v6 = objc_opt_class();
  v29 = v3;
  v7 = [v3 scopedIdentifier];
  v8 = [v4 allChangesWithClass:v6 relatedScopedIdentifier:v7];

  v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v32;
    v13 = &propertiesForChangeType__facesProperties;
    v14 = @"Master has been quarantined";
    *&v10 = 138412546;
    v28 = v10;
    do
    {
      v15 = 0;
      v30 = v11;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v16 = [*(*(&v31 + 1) + 8 * v15) scopedIdentifier];
        v17 = [*(a1 + 40) objectForKeyedSubscript:v16];

        if (!v17)
        {
          if ((v13[51] & 1) == 0)
          {
            v18 = __CPLStorageOSLogDomain_22181();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [v29 scopedIdentifier];
              v19 = a1;
              v20 = v12;
              v21 = v8;
              v22 = v14;
              v23 = v13;
              v25 = v24 = v5;
              *buf = v28;
              v36 = v16;
              v37 = 2112;
              v38 = v25;
              _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Automatically adding %@ to quarantine because %@ has been quarantined", buf, 0x16u);

              v5 = v24;
              v13 = v23;
              v14 = v22;
              v8 = v21;
              v12 = v20;
              a1 = v19;
              v11 = v30;
            }
          }

          v26 = *(a1 + 48);
          v27 = objc_opt_class();
          (*(v26 + 16))(v26, v16, 0, v14, v27);
        }

        ++v15;
      }

      while (v11 != v15);
      v11 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v11);
  }
}

void __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_42(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1[4];
  v7 = a3;
  [v6 _sendQuarantineFeedbackWithRecordClass:objc_opt_class() reason:v7];
  v8 = [v5 scopedIdentifier];
  v9 = a1[6];
  v10 = objc_opt_class();
  (*(v9 + 16))(v9, v8, 0, v7, v10);

  if ([v5 isAssetChange] && objc_msgSend(v5, "isFullRecord"))
  {
    v11 = a1[5];
    v12 = [v5 relatedScopedIdentifier];
    v13 = [v11 changeWithScopedIdentifier:v12];

    if (v13 && [v13 isFullRecord])
    {
      v14 = [v13 scopedIdentifier];
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLStorageOSLogDomain_22181();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [v5 scopedIdentifier];
          v19 = 138412546;
          v20 = v14;
          v21 = 2112;
          v22 = v16;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Automatically adding %@ to quarantine because %@ has been quarantined", &v19, 0x16u);
        }
      }

      v17 = a1[6];
      v18 = objc_opt_class();
      (*(v17 + 16))(v17, v14, 1, @"Asset has been quarantined", v18);
      (*(a1[7] + 16))();
    }
  }

  else if ([v5 isMasterChange] && objc_msgSend(v5, "isFullRecord"))
  {
    (*(a1[7] + 16))();
  }
}

void __64__CPLEngineQuarantinedRecords__quarantineRejectedRecords_error___block_invoke_47(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) recordWithScopedIdentifier:v7];
  v10 = v9;
  if (!v9)
  {
    v16 = [*(a1 + 48) objectForKeyedSubscript:v7];
    v17 = *(a1 + 40);
    v18 = [*(*(*(a1 + 64) + 8) + 40) containsObject:v7];
    v19 = *(*(a1 + 72) + 8);
    v21 = *(v19 + 40);
    v20 = (v19 + 40);
    v30 = v21;
    v22 = [v17 _addQuarantinedRecordWithScopedIdentifier:v7 related:v18 recordClass:v16 reason:v8 error:&v30];
    v23 = v30;
LABEL_10:
    objc_storeStrong(v20, v23);
    *(*(*(a1 + 56) + 8) + 24) = v22;
    goto LABEL_11;
  }

  if (([v9 isDelete] & 1) == 0)
  {
    v24 = *(a1 + 40);
    v25 = [*(*(*(a1 + 64) + 8) + 40) containsObject:v7];
    v26 = objc_opt_class();
    v27 = *(*(a1 + 72) + 8);
    v28 = *(v27 + 40);
    v20 = (v27 + 40);
    v31 = v28;
    v22 = [v24 _addQuarantinedRecordWithScopedIdentifier:v7 related:v25 recordClass:v26 reason:v8 error:&v31];
    v23 = v31;
    goto LABEL_10;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = __CPLStorageOSLogDomain_22181();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v10;
      _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Removing %@ from push repository", buf, 0xCu);
    }
  }

  v12 = [*(a1 + 40) engineStore];
  v13 = [v12 pushRepository];
  v14 = *(*(a1 + 72) + 8);
  obj = *(v14 + 40);
  v15 = [v13 discardChangeWithScopedIdentifier:v7 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v15;

LABEL_11:
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (void)_sendQuarantineFeedbackWithRecordClass:(Class)class reason:(id)reason
{
  reasonCopy = reason;
  if (!self->_quarantineMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    quarantineMessages = self->_quarantineMessages;
    self->_quarantineMessages = v6;
  }

  v8 = [CPLQuarantineFeedbackMessage alloc];
  engineStore = [(CPLEngineStorage *)self engineStore];
  engineLibrary = [engineStore engineLibrary];
  libraryIdentifier = [engineLibrary libraryIdentifier];
  v12 = [(CPLQuarantineFeedbackMessage *)v8 initWithClass:class reason:reasonCopy libraryIdentifier:libraryIdentifier];

  [(NSMutableArray *)self->_quarantineMessages addObject:v12];
}

- (unint64_t)countOfQuarantinedRecordsInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject countOfQuarantinedRecordsInScopeWithIdentifier:identifierCopy];

  return v6;
}

- (unint64_t)countOfQuarantinedRecords
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfQuarantinedRecords = [platformObject countOfQuarantinedRecords];

  return countOfQuarantinedRecords;
}

- (Class)classForQuarantinedRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject classForQuarantinedRecordWithScopedIdentifier:identifierCopy];

  return v6;
}

- (BOOL)isRecordWithScopedIdentifierQuarantined:(id)quarantined
{
  quarantinedCopy = quarantined;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject isRecordWithScopedIdentifierQuarantined:quarantinedCopy];

  return v6;
}

- (BOOL)removeQuarantinedRecordWithScopedIdentifier:(id)identifier notify:(BOOL)notify error:(id *)error
{
  notifyCopy = notify;
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18 = 0;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject removeQuarantinedRecordWithScopedIdentifier:identifierCopy removed:&v18 error:error];

  v11 = 0;
  if (v10)
  {
    if (v18 != 1 || !notifyCopy)
    {
      v11 = 1;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = __CPLStorageOSLogDomain_22181();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = identifierCopy;
          _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ from quarantine", buf, 0xCu);
        }
      }

      engineStore = [(CPLEngineStorage *)self engineStore];
      statusCenter = [engineStore statusCenter];

      v16 = [statusCenter recordViewForStatusWithScopedIdentifier:identifierCopy];
      v11 = [statusCenter notifyStatusForRecordViewHasChanged:v16 persist:1 error:error];
    }
  }

  return v11;
}

- (BOOL)_addQuarantinedRecordWithScopedIdentifier:(id)identifier related:(BOOL)related recordClass:(Class)class reason:(id)reason error:(id *)error
{
  relatedCopy = related;
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  reasonCopy = reason;
  engineStore = [(CPLEngineStorage *)self engineStore];
  if (![engineStore forceApplyPendingChangeSessionUpdateWithError:error])
  {
    goto LABEL_11;
  }

  if (([(objc_class *)class shouldReallyQuarantineRecord]& 1) != 0)
  {
    platformObject = [(CPLEngineStorage *)self platformObject];
    v16 = [platformObject addQuarantinedRecordWithScopedIdentifier:identifierCopy related:relatedCopy recordClass:class reason:reasonCopy error:error];

    if (!v16)
    {
      goto LABEL_11;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = __CPLStorageOSLogDomain_22181();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412546;
      classCopy = class;
      v27 = 2114;
      v28 = identifierCopy;
      _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_DEFAULT, "Dropping but not quarantining <%@ %{public}@>", &v25, 0x16u);
    }
  }

  engineStore2 = [(CPLEngineStorage *)self engineStore];
  pushRepository = [engineStore2 pushRepository];
  v20 = [pushRepository discardChangeWithScopedIdentifier:identifierCopy error:error];

  if (!v20)
  {
LABEL_11:
    v23 = 0;
    goto LABEL_12;
  }

  engineStore3 = [(CPLEngineStorage *)self engineStore];
  statusCenter = [engineStore3 statusCenter];

  v23 = [statusCenter notifyStatusForRecordWithScopedIdentifierHasChanged:identifierCopy recordClass:class persist:1 error:error];
LABEL_12:

  return v23;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  LOBYTE(error) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount error:error];

  return error;
}

+ (unint64_t)quarantineRetryCount
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"CPLQuarantineRetryCount"];

  return v3;
}

@end