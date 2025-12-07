@interface CPLBeforeUploadCheckItems
- (BOOL)checkBatchWithFoundRecords:(id)records error:(id *)error;
- (BOOL)prepareBatchBeforeUploadWithError:(id *)error;
- (BOOL)requestFetchOfRecordWithScopedIdentifier:(id)identifier forItem:(id)item rule:(id)rule error:(id *)error;
- (BOOL)shouldResetExceedingQuotaOnSuccessfulUpload;
- (BOOL)transportHasRecordWithScopedIdentifier:(id)identifier;
- (CPLBeforeUploadCheckItems)initWithBatch:(id)batch targetMapping:(id)mapping ruleGroups:(int64_t)groups pushRepositoryPriority:(unint64_t)priority fingerprintContext:(id)context provider:(id)provider;
- (CPLChangeBatch)batchToUpload;
- (NSArray)recordsNeedingGeneratedDerivatives;
- (NSDictionary)itemsToReinject;
- (id)recordFromTransportWithScopedIdentifier:(id)identifier;
- (id)willUploadCloudResource:(id)resource localResource:(id)localResource forItem:(id)item error:(id *)error;
- (unint64_t)estimatedUploadResourceSize;
- (void)addAdditionalRecordWithScopedIdentifierToUploadBatch:(id)batch;
- (void)itemShouldBeReinjectedInPushRepository:(id)repository;
- (void)itemWillDropResourceChange:(id)change;
@end

@implementation CPLBeforeUploadCheckItems

- (void)addAdditionalRecordWithScopedIdentifierToUploadBatch:(id)batch
{
  batchCopy = batch;
  v4 = [(NSMutableDictionary *)self->_additionalRecords objectForKeyedSubscript:?];
  if (!v4)
  {
    if (!self->_additionalRecords)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      additionalRecords = self->_additionalRecords;
      self->_additionalRecords = v5;
    }

    v7 = [(CPLBeforeUploadCheckItemsProvider *)self->_provider knownCloudRecordWithScopedIdentifier:batchCopy];
    if (v7)
    {
      v4 = v7;
      [(NSMutableDictionary *)self->_additionalRecords setObject:v7 forKeyedSubscript:batchCopy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableDictionary *)self->_additionalRecords setObject:null forKeyedSubscript:batchCopy];

      v4 = 0;
    }
  }
}

- (id)recordFromTransportWithScopedIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  foundRecords = self->_foundRecords;
  if (!foundRecords)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@ should only be called within -checkBatchWithFoundRecords:error:", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBeforeUploadCheckItems.m"];
    v13 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v12 lineNumber:305 description:{@"%@ should only be called within -checkBatchWithFoundRecords:error:", v13}];

    abort();
  }

  v7 = [(NSDictionary *)foundRecords objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (BOOL)transportHasRecordWithScopedIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  foundRecords = self->_foundRecords;
  if (!foundRecords)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%@ should only be called within -checkBatchWithFoundRecords:error:", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBeforeUploadCheckItems.m"];
    v14 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:v13 lineNumber:300 description:{@"%@ should only be called within -checkBatchWithFoundRecords:error:", v14}];

    abort();
  }

  v7 = [(NSDictionary *)foundRecords objectForKeyedSubscript:identifierCopy];
  v8 = v7 != 0;

  return v8;
}

- (void)itemShouldBeReinjectedInPushRepository:(id)repository
{
  repositoryCopy = repository;
  itemsToReinject = self->_itemsToReinject;
  v9 = repositoryCopy;
  if (!itemsToReinject)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = self->_itemsToReinject;
    self->_itemsToReinject = v6;

    repositoryCopy = v9;
    itemsToReinject = self->_itemsToReinject;
  }

  scopedIdentifier = [repositoryCopy scopedIdentifier];
  [(NSMutableDictionary *)itemsToReinject setObject:v9 forKeyedSubscript:scopedIdentifier];
}

- (void)itemWillDropResourceChange:(id)change
{
  changeCopy = change;
  if ([changeCopy isAsset])
  {
    v5 = [(NSMutableDictionary *)self->_assetsWithResourcesToUpload count];
    assetsWithResourcesToUpload = self->_assetsWithResourcesToUpload;
    scopedIdentifier = [changeCopy scopedIdentifier];

    [(NSMutableDictionary *)assetsWithResourcesToUpload removeObjectForKey:scopedIdentifier];
    v8 = self->_assetsWithResourcesToUpload;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_nonAssetsWithResourcesToUpload count];
    nonAssetsWithResourcesToUpload = self->_nonAssetsWithResourcesToUpload;
    scopedIdentifier2 = [changeCopy scopedIdentifier];

    [(NSMutableDictionary *)nonAssetsWithResourcesToUpload removeObjectForKey:scopedIdentifier2];
    v8 = self->_nonAssetsWithResourcesToUpload;
  }

  if ([(NSMutableDictionary *)v8 count]< v5)
  {
    self->_hasDroppedSomeResources = 1;
  }
}

- (id)willUploadCloudResource:(id)resource localResource:(id)localResource forItem:(id)item error:(id *)error
{
  itemCopy = item;
  v11 = [(CPLBeforeUploadCheckItemsProvider *)self->_provider willUploadCloudResource:resource localResource:localResource error:error];
  if (v11)
  {
    isAsset = [itemCopy isAsset];
    v13 = 32;
    if (isAsset)
    {
      v13 = 40;
    }

    v14 = *(&self->super.isa + v13);
    scopedIdentifier = [itemCopy scopedIdentifier];
    [v14 setObject:itemCopy forKeyedSubscript:scopedIdentifier];
  }

  return v11;
}

- (BOOL)requestFetchOfRecordWithScopedIdentifier:(id)identifier forItem:(id)item rule:(id)rule error:(id *)error
{
  identifierCopy = identifier;
  ruleCopy = rule;
  if (([(NSMutableSet *)self->_recordsToFetch containsObject:identifierCopy]& 1) == 0)
  {
    if (![(CPLBeforeUploadCheckItemsProvider *)self->_provider willNeedToAccessRecordWithScopedIdentifier:identifierCopy error:error])
    {
      v17 = 0;
      goto LABEL_10;
    }

    recordsToFetch = self->_recordsToFetch;
    if (!recordsToFetch)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v13 = self->_recordsToFetch;
      self->_recordsToFetch = v12;

      recordsToFetch = self->_recordsToFetch;
    }

    [(NSMutableSet *)recordsToFetch addObject:identifierCopy];
  }

  fetchRules = self->_fetchRules;
  if (!fetchRules)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = self->_fetchRules;
    self->_fetchRules = v15;

    fetchRules = self->_fetchRules;
  }

  [(NSMutableSet *)fetchRules addObject:ruleCopy];
  v17 = 1;
LABEL_10:

  return v17;
}

- (BOOL)checkBatchWithFoundRecords:(id)records error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  objc_storeStrong(&self->_foundRecords, records);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = self->_originalBatch;
  v10 = [(CPLChangeBatch *)v9 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v10)
  {
    v11 = v10;
    v52 = 0;
    obj = v9;
    v46 = a2;
    errorCopy = error;
    v48 = recordsCopy;
    v51 = 0;
    v54 = 0;
    v12 = *v57;
    v50 = 1;
    selfCopy = self;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v57 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v56 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      scopedIdentifier = [v14 scopedIdentifier];
      v17 = [(NSDictionary *)self->_items objectForKeyedSubscript:scopedIdentifier];
      if (!v17)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v43 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy2 = scopedIdentifier;
            _os_log_impl(&dword_1DC05A000, v43, OS_LOG_TYPE_ERROR, "Failed to find %@ in items to check", buf, 0xCu);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBeforeUploadCheckItems.m"];
        [currentHandler handleFailureInMethod:v46 object:self file:v45 lineNumber:203 description:{@"Failed to find %@ in items to check", scopedIdentifier}];

        abort();
      }

      v18 = v17;
      v55 = 0;
      v19 = [(CPLBeforeUploadCheckItems *)v17 checkBeforeUploadWithError:&v55];
      v20 = v55;
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v22 = __CPLCheckOSLogDomain();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            selfCopy2 = v18;
            v66 = 2112;
            v67 = v20;
            _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Failed to check %@: %@", buf, 0x16u);
          }
        }

        if ([v20 isCPLErrorWithCode:18])
        {
          userInfo = [v20 userInfo];
          v24 = [userInfo objectForKeyedSubscript:@"CPLErrorRejectedReasonKey"];
          v25 = v24;
          v26 = @"change was rejected before being sent to transport";
          if (v24)
          {
            v26 = v24;
          }

          v27 = v26;

          v28 = v54;
          if (v54)
          {
            v29 = v52;
          }

          else
          {
            v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);

            v29 = v30;
          }

          v52 = v29;
          [v29 addObject:v27];
          v54 = v28;
          [v28 setObject:v27 forKeyedSubscript:scopedIdentifier];
          v21 = 1;
          self = selfCopy;
        }

        else
        {
          v50 = 0;
          v21 = 0;
          v27 = v51;
          v51 = v20;
        }
      }

      objc_autoreleasePoolPop(v15);
      if (!v21)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v56 objects:v68 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    if ((v50 & (v54 != 0)) == 1)
    {
      v31 = v51;
      v32 = errorCopy;
      if ([v54 count] == 1)
      {
        v62 = @"CPLErrorRejectedRecordIdentifiersAndReasons";
        v63 = v54;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        allValues = [v54 allValues];
        firstObject = [(__CFString *)allValues firstObject];
        v36 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v33 description:@"%@", firstObject];

        self = selfCopy;
        v31 = allValues;
      }

      else
      {
        v60 = @"CPLErrorRejectedRecordIdentifiersAndReasons";
        v61 = v54;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v36 = +[CPLErrors cplErrorWithCode:underlyingError:userInfo:description:](CPLErrors, "cplErrorWithCode:underlyingError:userInfo:description:", 18, 0, v33, @"%lu changes were rejected before sending them to the transport", [v54 count]);
      }

      recordsCopy = v48;

      v37 = v52;
      goto LABEL_37;
    }

    v32 = errorCopy;
    recordsCopy = v48;
    v36 = v51;
    v37 = v52;
    if ((v50 & 1) == 0)
    {
LABEL_37:
      if (v32)
      {
        v40 = v36;
        v39 = 0;
        *v32 = v36;
      }

      else
      {
        v39 = 0;
      }

      goto LABEL_40;
    }
  }

  else
  {

    v36 = 0;
    v37 = 0;
    v54 = 0;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v38 = __CPLCheckOSLogDomain();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1DC05A000, v38, OS_LOG_TYPE_DEBUG, "Checked %@", buf, 0xCu);
    }
  }

  v39 = 1;
LABEL_40:
  foundRecords = self->_foundRecords;
  self->_foundRecords = 0;

  return v39;
}

- (BOOL)prepareBatchBeforeUploadWithError:(id *)error
{
  selfCopy = self;
  v64 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[CPLChangeBatch count](self->_originalBatch, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = selfCopy->_originalBatch;
  v49 = [(CPLChangeBatch *)v6 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v49)
  {
    v46 = 0;
    obj = v6;
    errorCopy = error;
    v7 = 0;
    v45 = 0;
    v48 = *v52;
    v44 = 1;
    v43 = selfCopy;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v52 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v51 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      scopedIdentifier = [v9 scopedIdentifier];
      v12 = [[CPLBeforeUploadCheckItem alloc] initWithChange:v9 checkItems:selfCopy];
      v50 = 0;
      LOBYTE(v9) = [(CPLBeforeUploadCheckItem *)v12 prepareWithError:&v50];
      v13 = v50;
      if (v9)
      {
        [v5 setObject:v12 forKeyedSubscript:scopedIdentifier];
        v14 = 1;
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v15 = __CPLCheckOSLogDomain();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v60 = v12;
            v61 = 2112;
            v62 = v13;
            _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Failed to prepare %@: %@", buf, 0x16u);
          }
        }

        if ([v13 isCPLErrorWithCode:18])
        {
          v16 = v7;
          v17 = v5;
          userInfo = [v13 userInfo];
          v19 = [userInfo objectForKeyedSubscript:@"CPLErrorRejectedReasonKey"];
          v20 = v19;
          v21 = @"change was rejected before being sent to transport";
          if (v19)
          {
            v21 = v19;
          }

          v22 = v21;

          v23 = v46;
          if (v46)
          {
            v5 = v17;
            v24 = v45;
          }

          else
          {
            v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);

            v24 = v27;
            v23 = v26;
            v5 = v17;
          }

          v45 = v24;
          [v24 addObject:v22];
          v46 = v23;
          [v23 setObject:v22 forKeyedSubscript:scopedIdentifier];

          v14 = 1;
          v7 = v16;
          selfCopy = v43;
        }

        else
        {
          v25 = v13;

          v44 = 0;
          v14 = 0;
          v7 = v25;
        }
      }

      objc_autoreleasePoolPop(v10);
      if (!v14)
      {
        break;
      }

      if (v49 == ++v8)
      {
        v49 = [(CPLChangeBatch *)obj countByEnumeratingWithState:&v51 objects:v63 count:16];
        if (v49)
        {
          goto LABEL_3;
        }

        break;
      }
    }

    v28 = v46;
    if ((v44 & (v46 != 0)) == 1)
    {
      if ([v46 count] == 1)
      {
        v57 = @"CPLErrorRejectedRecordIdentifiersAndReasons";
        v58 = v46;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        allValues = [v46 allValues];
        [allValues firstObject];
        v32 = v31 = v5;
        v33 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v29 description:@"%@", v32];

        v5 = v31;
        v7 = allValues;
        v28 = v46;
      }

      else
      {
        v55 = @"CPLErrorRejectedRecordIdentifiersAndReasons";
        v56 = v46;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v33 = +[CPLErrors cplErrorWithCode:underlyingError:userInfo:description:](CPLErrors, "cplErrorWithCode:underlyingError:userInfo:description:", 18, 0, v29, @"%lu changes were rejected before sending them to the transport", [v46 count]);
      }

      v35 = errorCopy;

      v7 = v33;
      v34 = v45;
      goto LABEL_35;
    }

    v34 = v45;
    v35 = errorCopy;
    if ((v44 & 1) == 0)
    {
LABEL_35:
      if (v35)
      {
        v40 = v7;
        v39 = 0;
        *v35 = v7;
      }

      else
      {
        v39 = 0;
      }

      goto LABEL_38;
    }
  }

  else
  {

    v7 = 0;
    v34 = 0;
    v28 = 0;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v36 = __CPLCheckOSLogDomain();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v60 = selfCopy;
      _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_DEBUG, "Prepared %@", buf, 0xCu);
    }
  }

  v37 = [v5 copy];
  items = selfCopy->_items;
  selfCopy->_items = v37;

  v39 = 1;
LABEL_38:

  return v39;
}

- (unint64_t)estimatedUploadResourceSize
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  assetsWithResourcesToUpload = self->_assetsWithResourcesToUpload;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CPLBeforeUploadCheckItems_estimatedUploadResourceSize__block_invoke;
  v8[3] = &unk_1E861F620;
  v8[4] = &v9;
  [(NSMutableDictionary *)assetsWithResourcesToUpload enumerateKeysAndObjectsUsingBlock:v8];
  nonAssetsWithResourcesToUpload = self->_nonAssetsWithResourcesToUpload;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CPLBeforeUploadCheckItems_estimatedUploadResourceSize__block_invoke_2;
  v7[3] = &unk_1E861F620;
  v7[4] = &v9;
  [(NSMutableDictionary *)nonAssetsWithResourcesToUpload enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __56__CPLBeforeUploadCheckItems_estimatedUploadResourceSize__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 estimatedResourceUploadSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __56__CPLBeforeUploadCheckItems_estimatedUploadResourceSize__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 estimatedResourceUploadSize];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (BOOL)shouldResetExceedingQuotaOnSuccessfulUpload
{
  if (self->_pushRepositoryPriority < 0x7D0)
  {
    v3 = 0;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 1;
    items = self->_items;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __72__CPLBeforeUploadCheckItems_shouldResetExceedingQuotaOnSuccessfulUpload__block_invoke;
    v5[3] = &unk_1E861F620;
    v5[4] = &v6;
    [(NSDictionary *)items enumerateKeysAndObjectsUsingBlock:v5];
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return v3 & 1;
}

void *__72__CPLBeforeUploadCheckItems_shouldResetExceedingQuotaOnSuccessfulUpload__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isTrashedOrDeletedAsset];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (NSArray)recordsNeedingGeneratedDerivatives
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__20154;
  v11 = __Block_byref_object_dispose__20155;
  v12 = 0;
  items = self->_items;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__CPLBeforeUploadCheckItems_recordsNeedingGeneratedDerivatives__block_invoke;
  v6[3] = &unk_1E861F5F8;
  v6[5] = &v7;
  v6[6] = a2;
  v6[4] = self;
  [(NSDictionary *)items enumerateKeysAndObjectsUsingBlock:v6];
  v3 = v8[5];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __63__CPLBeforeUploadCheckItems_recordsNeedingGeneratedDerivatives__block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = a3;
  if ([v5 needsToGenerateDerivatives])
  {
    v6 = [v5 change];
    if (!v6)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [v5 changeClass];
          v14 = [v5 scopedIdentifier];
          *buf = 138412546;
          v23 = v13;
          v24 = 2112;
          v25 = v14;
          _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "<%@ %@> needs to generate derivatives yet has no change to upload", buf, 0x16u);
        }
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = a1[6];
      v17 = a1[4];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLBeforeUploadCheckItems.m"];
      v19 = [v5 changeClass];
      v20 = [v5 scopedIdentifier];
      [v15 handleFailureInMethod:v16 object:v17 file:v18 lineNumber:99 description:{@"<%@ %@> needs to generate derivatives yet has no change to upload", v19, v20}];

      abort();
    }

    v7 = v6;
    v8 = *(*(a1[5] + 8) + 40);
    if (!v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1[4] + 8), "count")}];
      v10 = *(a1[5] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(a1[5] + 8) + 40);
    }

    [v8 addObject:v7];
  }
}

- (NSDictionary)itemsToReinject
{
  if (self->_itemsToReinject)
  {
    return self->_itemsToReinject;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (CPLChangeBatch)batchToUpload
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CPLChangeBatch);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_originalBatch;
  v5 = [(CPLChangeBatch *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        items = self->_items;
        scopedIdentifier = [*(*(&v17 + 1) + 8 * i) scopedIdentifier];
        v11 = [(NSDictionary *)items objectForKeyedSubscript:scopedIdentifier];

        change = [v11 change];
        if (change)
        {
          [(CPLChangeBatch *)v3 addRecord:change];
        }
      }

      v6 = [(CPLChangeBatch *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if ([(NSMutableDictionary *)self->_additionalRecords count])
  {
    additionalRecords = self->_additionalRecords;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__CPLBeforeUploadCheckItems_batchToUpload__block_invoke;
    v15[3] = &unk_1E8620358;
    v16 = v3;
    [(NSMutableDictionary *)additionalRecords enumerateKeysAndObjectsUsingBlock:v15];
  }

  return v3;
}

void __42__CPLBeforeUploadCheckItems_batchToUpload__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [MEMORY[0x1E695DFB0] null];

  v5 = v6;
  if (v4 != v6)
  {
    [*(a1 + 32) _addAdditionalRecord:v6];
    v5 = v6;
  }
}

- (CPLBeforeUploadCheckItems)initWithBatch:(id)batch targetMapping:(id)mapping ruleGroups:(int64_t)groups pushRepositoryPriority:(unint64_t)priority fingerprintContext:(id)context provider:(id)provider
{
  batchCopy = batch;
  mappingCopy = mapping;
  contextCopy = context;
  providerCopy = provider;
  v26.receiver = self;
  v26.super_class = CPLBeforeUploadCheckItems;
  v18 = [(CPLBeforeUploadCheckItems *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_originalBatch, batch);
    objc_storeStrong(&v19->_targetMapping, mapping);
    objc_storeStrong(&v19->_fingerprintContext, context);
    objc_storeStrong(&v19->_provider, provider);
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nonAssetsWithResourcesToUpload = v19->_nonAssetsWithResourcesToUpload;
    v19->_nonAssetsWithResourcesToUpload = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetsWithResourcesToUpload = v19->_assetsWithResourcesToUpload;
    v19->_assetsWithResourcesToUpload = v22;

    v19->_ruleGroups = groups;
    v19->_pushRepositoryPriority = priority;
  }

  return v19;
}

@end