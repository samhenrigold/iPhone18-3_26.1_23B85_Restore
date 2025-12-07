@interface FCRecordChainFetchOperation
- (BOOL)_shouldIgnoreCache;
- (BOOL)validateOperation;
- (FCRecordChainFetchOperation)init;
- (NSArray)networkEvents;
- (id)_errorForMissingRecordNames:(uint64_t)names;
- (id)_partialFetchErrorForMissingRecordName:(uint64_t)name;
- (id)_pbRecordTypeForRecordType:(id *)result;
- (id)_recordSourceForRecordType:(id *)type;
- (id)_recordTypeForRecordID:(uint64_t)d;
- (void)_collectActualTopLevelRecordIDsFromRecordIDs:(void *)ds visitedRecordIDs:;
- (void)_finalizeResultFromCachedRecords;
- (void)_walkRecordChainStartingWithRecordIDs:(void *)ds visitedRecordIDs:(void *)iDs recordsLookupBlock:(void *)block visitorBlock:;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)setCachedRecords:(uint64_t)records;
@end

@implementation FCRecordChainFetchOperation

- (FCRecordChainFetchOperation)init
{
  v12.receiver = self;
  v12.super_class = FCRecordChainFetchOperation;
  v2 = [(FCOperation *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    actualTopLevelRecordIDs = v2->_actualTopLevelRecordIDs;
    v2->_actualTopLevelRecordIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    skippedTopLevelRecordIDs = v2->_skippedTopLevelRecordIDs;
    v2->_skippedTopLevelRecordIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    missingCachedOnlyTopLevelRecordIDs = v2->_missingCachedOnlyTopLevelRecordIDs;
    v2->_missingCachedOnlyTopLevelRecordIDs = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableNetworkEvents = v2->_mutableNetworkEvents;
    v2->_mutableNetworkEvents = v9;
  }

  return v2;
}

- (BOOL)validateOperation
{
  v20 = *MEMORY[0x1E69E9840];
  context = [(FCRecordChainFetchOperation *)self context];

  if (!context && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record chain fetch operation requires a context"];
    v12 = 136315906;
    v13 = "[FCRecordChainFetchOperation validateOperation]";
    v14 = 2080;
    v15 = "FCRecordChainFetchOperation.m";
    v16 = 1024;
    v17 = 60;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  linkKeysByRecordType = [(FCRecordChainFetchOperation *)self linkKeysByRecordType];
  v5 = [linkKeysByRecordType count];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record chain fetch operation requires a list of link keys for each record type in the chain"];
    v12 = 136315906;
    v13 = "[FCRecordChainFetchOperation validateOperation]";
    v14 = 2080;
    v15 = "FCRecordChainFetchOperation.m";
    v16 = 1024;
    v17 = 61;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  context2 = [(FCRecordChainFetchOperation *)self context];
  if (context2)
  {
    linkKeysByRecordType2 = [(FCRecordChainFetchOperation *)self linkKeysByRecordType];
    v8 = [linkKeysByRecordType2 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)prepareOperation
{
  v29 = *MEMORY[0x1E69E9840];
  context = [(FCRecordChainFetchOperation *)self context];
  internalContentContext = [context internalContentContext];
  recordSources = [internalContentContext recordSources];
  additionalRecordSources = [(FCRecordChainFetchOperation *)self additionalRecordSources];
  v7 = [recordSources arrayByAddingObjectsFromArray:additionalRecordSources];

  v23 = v7;
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_60];
  if (self)
  {
    objc_storeStrong(&self->_recordSources, v8);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (self)
  {
    recordSources = self->_recordSources;
  }

  else
  {
    recordSources = 0;
  }

  v12 = recordSources;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        recordType = [v17 recordType];
        [dictionary setObject:v17 forKey:recordType];

        v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "pbRecordType")}];
        recordType2 = [v17 recordType];
        [dictionary2 setObject:v19 forKey:recordType2];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (self)
  {
    objc_storeStrong(&self->_recordSourcesByRecordType, dictionary);
    objc_storeStrong(&self->_pbRecordTypesByRecordType, dictionary2);
  }

  cachePolicy = [(FCRecordChainFetchOperation *)self cachePolicy];

  if (!cachePolicy)
  {
    v22 = +[FCCachePolicy defaultCachePolicy];
    [(FCRecordChainFetchOperation *)self setCachePolicy:v22];
  }
}

uint64_t __47__FCRecordChainFetchOperation_prepareOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E58C0];
  v5 = a2;
  v6 = [a3 recordIDPrefixes];
  v7 = [v6 firstObject];
  v8 = [v5 recordIDPrefixes];

  v9 = [v8 firstObject];
  v10 = [v4 nf_compareObject:v7 toObject:v9];

  return v10;
}

- (void)performOperation
{
  v106 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  topLevelRecordIDs = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
  v5 = [v3 setWithArray:topLevelRecordIDs];
  if (self)
  {
    if ([(FCRecordChainFetchOperation *)self _shouldIgnoreCache])
    {
      aBlock = MEMORY[0x1E69E9820];
      v102 = 3221225472;
      v103 = __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke;
      v104 = &unk_1E7C36EA0;
      selfCopy2 = self;
      __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke(&aBlock);
    }

    else
    {
      aBlock = MEMORY[0x1E69E9820];
      v102 = 3221225472;
      v103 = __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_2;
      v104 = &unk_1E7C3F658;
      selfCopy2 = self;
      v6 = _Block_copy(&aBlock);
      cachedRecordsLookupBlock = [(FCRecordChainFetchOperation *)self cachedRecordsLookupBlock];
      v8 = cachedRecordsLookupBlock == 0;

      v75 = MEMORY[0x1E69E9820];
      v76 = 3221225472;
      if (v8)
      {
        v9 = __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_4;
      }

      else
      {
        v9 = __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_3;
      }

      v77 = v9;
      v78 = &unk_1E7C3F680;
      selfCopy5 = self;
      v10 = _Block_copy(&v75);
      v11 = MEMORY[0x1E695DFD8];
      topLevelRecordIDs2 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
      v13 = [v11 setWithArray:topLevelRecordIDs2];
      v14 = [MEMORY[0x1E695DFA8] set];
      [(FCRecordChainFetchOperation *)self _walkRecordChainStartingWithRecordIDs:v13 visitedRecordIDs:v14 recordsLookupBlock:v10 visitorBlock:v6];
    }
  }

  v15 = MEMORY[0x1E695DFD8];
  topLevelRecordIDs3 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
  v17 = [v15 setWithArray:topLevelRecordIDs3];
  v18 = [MEMORY[0x1E695DFA8] set];
  [(FCRecordChainFetchOperation *)&self->super.super.super.isa _collectActualTopLevelRecordIDsFromRecordIDs:v17 visitedRecordIDs:v18];

  if (self)
  {
    if ([(NSMutableSet *)self->_actualTopLevelRecordIDs count])
    {
      allObjects = [(NSMutableSet *)self->_actualTopLevelRecordIDs allObjects];
      v19 = objc_opt_new();
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke;
      v100[3] = &unk_1E7C3F6A8;
      v100[4] = self;
      v71 = [allObjects fc_dictionaryOfSortedObjectsWithKeyBlock:v100];
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2;
      v98[3] = &unk_1E7C3F6D0;
      v98[4] = self;
      v72 = v19;
      v99 = v72;
      [v71 enumerateKeysAndObjectsUsingBlock:v98];
      if ([v72 count])
      {
        v20 = objc_alloc_init(FCCKBatchedMultiFetchQueryOperation);
        context = [(FCRecordChainFetchOperation *)self context];
        internalContentContext = [context internalContentContext];
        contentDatabase = [internalContentContext contentDatabase];
        [(FCCKBatchedMultiFetchQueryOperation *)v20 setDatabase:contentDatabase];

        edgeCacheHint = [(FCRecordChainFetchOperation *)self edgeCacheHint];
        v26 = edgeCacheHint;
        if (v20)
        {
          objc_setProperty_nonatomic_copy(v20, v25, edgeCacheHint, 424);

          v20->_networkEventType = [(FCRecordChainFetchOperation *)self networkEventType];
          networkActivityBlock = [(FCRecordChainFetchOperation *)self networkActivityBlock];
          objc_setProperty_nonatomic_copy(v20, v28, networkActivityBlock, 440);
        }

        else
        {

          [(FCRecordChainFetchOperation *)self networkEventType];
          networkActivityBlock = [(FCRecordChainFetchOperation *)self networkActivityBlock];
        }

        cachePolicy = [(FCRecordChainFetchOperation *)self cachePolicy];
        v29CachePolicy = [cachePolicy cachePolicy];
        if (v20)
        {
          v20->_ignoreCache = v29CachePolicy == 1;
        }

        v31 = objc_opt_new();
        edgeCacheHint2 = [(FCRecordChainFetchOperation *)self edgeCacheHint];
        v33 = edgeCacheHint2 == 0;

        if (v33)
        {
          [v31 addObjectsFromArray:v72];
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3;
          v97[3] = &unk_1E7C36EC8;
          v97[4] = self;
          v47 = [MEMORY[0x1E695DF20] fc_dictionary:v97];
          [(FCCKBatchedMultiFetchQueryOperation *)v20 setKnownRecordIDsToEtags:v47];
        }

        else
        {
          topLevelRecordIDs4 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
          [v31 addObjectsFromArray:topLevelRecordIDs4];
        }

        v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v31];
        linkKeysByRecordType = [(FCRecordChainFetchOperation *)self linkKeysByRecordType];
        allKeys = [linkKeysByRecordType allKeys];
        [v48 addObjectsFromArray:allKeys];

        v51 = [MEMORY[0x1E695DFA8] set];
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v52 = v48;
        v53 = [v52 countByEnumeratingWithState:&v93 objects:&aBlock count:16];
        if (v53)
        {
          v54 = *v94;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v94 != v54)
              {
                objc_enumerationMutation(v52);
              }

              v56 = [(FCRecordChainFetchOperation *)&self->super.super.super.isa _recordSourceForRecordType:?];
              v57 = objc_opt_class();

              if ([v57 supportsDeletions])
              {
                canaryRecordName = [v57 canaryRecordName];
                [v31 addObject:canaryRecordName];
                [v51 addObject:canaryRecordName];
              }
            }

            v53 = [v52 countByEnumeratingWithState:&v93 objects:&aBlock count:16];
          }

          while (v53);
        }

        [(FCCKBatchedMultiFetchQueryOperation *)v20 setRecordIDs:v31];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_27;
        v92[3] = &unk_1E7C36D40;
        v92[4] = self;
        v59 = [MEMORY[0x1E695DEC8] fc_array:v92];
        [(FCCKBatchedMultiFetchQueryOperation *)v20 setRecordSpecs:v59];

        objc_initWeak(&location, v20);
        v89[0] = 0;
        v89[1] = v89;
        v89[2] = 0x2020000000;
        v90 = 0;
        newValue[0] = MEMORY[0x1E69E9820];
        newValue[1] = 3221225472;
        newValue[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_5;
        newValue[3] = &unk_1E7C3F6F8;
        v61 = v51;
        v87 = v61;
        v88 = v89;
        if (v20)
        {
          objc_setProperty_nonatomic_copy(v20, v60, newValue, 456);
        }

        v62 = objc_opt_new();
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_41;
        v84[3] = &unk_1E7C36D68;
        v64 = v62;
        v85 = v64;
        if (v20)
        {
          objc_setProperty_nonatomic_copy(v20, v63, v84, 448);
        }

        v75 = MEMORY[0x1E69E9820];
        v76 = 3221225472;
        v77 = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2_43;
        v78 = &unk_1E7C3F7E8;
        selfCopy5 = self;
        objc_copyWeak(&v83, &location);
        v65 = v64;
        v80 = v65;
        v67 = v61;
        v81 = v67;
        v82 = v89;
        if (v20)
        {
          objc_setProperty_nonatomic_copy(v20, v66, &v75, 464);
        }

        [(FCOperation *)self associateChildOperation:v20];
        [(FCOperation *)v20 start];

        objc_destroyWeak(&v83);
        _Block_object_dispose(v89, 8);
        objc_destroyWeak(&location);

        goto LABEL_43;
      }

      [(FCRecordChainFetchOperation *)self _finalizeResultFromCachedRecords];
      v45 = self->_cachedRecords;
      if ([(FCHeldRecords *)v45 count])
      {
        shouldReturnErrorWhenSomeRecordsMissing = [(FCRecordChainFetchOperation *)self shouldReturnErrorWhenSomeRecordsMissing];

        if (!shouldReturnErrorWhenSomeRecordsMissing)
        {
          [(FCOperation *)self finishedPerformingOperationWithError:0];
LABEL_43:

          return;
        }
      }

      else
      {
      }

      v68 = [(FCRecordChainFetchOperation *)self _errorForMissingRecordNames:allObjects];
      [(FCOperation *)self finishedPerformingOperationWithError:v68];

      goto LABEL_43;
    }

    [(FCRecordChainFetchOperation *)self _finalizeResultFromCachedRecords];
    v35 = [MEMORY[0x1E695DFA8] set];
    aBlock = MEMORY[0x1E69E9820];
    v102 = 3221225472;
    v103 = __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke;
    v104 = &unk_1E7C3F658;
    v36 = v35;
    selfCopy2 = v36;
    v37 = _Block_copy(&aBlock);
    v75 = MEMORY[0x1E69E9820];
    v76 = 3221225472;
    v77 = __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke_2;
    v78 = &unk_1E7C3F680;
    selfCopy5 = self;
    v38 = _Block_copy(&v75);
    v39 = MEMORY[0x1E695DFD8];
    topLevelRecordIDs5 = [(FCRecordChainFetchOperation *)self topLevelRecordIDs];
    v41 = [v39 setWithArray:topLevelRecordIDs5];
    v42 = [MEMORY[0x1E695DFA8] set];
    [(FCRecordChainFetchOperation *)self _walkRecordChainStartingWithRecordIDs:v41 visitedRecordIDs:v42 recordsLookupBlock:v38 visitorBlock:v37];

    v74 = v36;
    if (![(FCRecordChainFetchOperation *)v74 count])
    {
      goto LABEL_20;
    }

    v43 = self->_cachedRecords;
    if ([(FCHeldRecords *)v43 count])
    {
      shouldReturnErrorWhenSomeRecordsMissing2 = [(FCRecordChainFetchOperation *)self shouldReturnErrorWhenSomeRecordsMissing];

      if (!shouldReturnErrorWhenSomeRecordsMissing2)
      {
LABEL_20:
        [(FCOperation *)self finishedPerformingOperationWithError:0];
LABEL_47:

        return;
      }
    }

    else
    {
    }

    allObjects2 = [(FCRecordChainFetchOperation *)v74 allObjects];
    v70 = [(FCRecordChainFetchOperation *)self _errorForMissingRecordNames:allObjects2];

    [(FCOperation *)self finishedPerformingOperationWithError:v70];
    goto LABEL_47;
  }
}

- (BOOL)_shouldIgnoreCache
{
  cachePolicy = [self cachePolicy];
  v2CachePolicy = [cachePolicy cachePolicy];

  if (v2CachePolicy != 1)
  {
    return 0;
  }

  cachePoliciesByRecordID = [self cachePoliciesByRecordID];
  v5 = [cachePoliciesByRecordID count];

  if (v5)
  {
    return 0;
  }

  cachePoliciesByRecordType = [self cachePoliciesByRecordType];
  v7 = [cachePoliciesByRecordType count];

  if (v7)
  {
    return 0;
  }

  dynamicCachePolicyBlock = [self dynamicCachePolicyBlock];
  v8 = dynamicCachePolicyBlock == 0;

  return v8;
}

- (void)_finalizeResultFromCachedRecords
{
  if (self)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke;
    aBlock[3] = &unk_1E7C3A618;
    aBlock[4] = self;
    v2 = _Block_copy(aBlock);
    v3 = v2[2]();
    v4 = (v2[2])(v2);
    v5 = *(self + 496);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_4;
    v16[3] = &unk_1E7C3F8C8;
    v6 = v3;
    v17 = v6;
    v7 = v4;
    v18 = v7;
    [v5 enumerateRecordsAndInterestTokensWithBlock:v16];
    v8 = MEMORY[0x1E695DF20];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_5;
    v13[3] = &unk_1E7C37D00;
    v14 = v6;
    v15 = v7;
    v9 = v7;
    v10 = v6;
    v11 = [v8 fc_dictionary:v13];
    v12 = *(self + 528);
    *(self + 528) = v11;
  }
}

id __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) linkKeysByRecordType];
  v3 = [v2 allKeys];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_2;
  v6[3] = &unk_1E7C3F880;
  v6[4] = *(a1 + 32);
  v4 = [v3 fc_dictionaryWithKeyBlock:v6 valueBlock:&__block_literal_global_63_0];

  return v4;
}

uint64_t __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(FCRecordChainFetchOperation *)*(a1 + 32) _pbRecordTypeForRecordType:a2];

  return [v2 numberWithInt:v3];
}

id __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_3()
{
  v0 = objc_opt_new();

  return v0;
}

void __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v11 = [v6 base];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "recordType")}];
  v8 = [v11 identifier];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  [v9 setObject:v6 forKeyedSubscript:v8];

  v10 = [*(a1 + 40) objectForKeyedSubscript:v7];
  [v10 setObject:v5 forKeyedSubscript:v8];
}

void __63__FCRecordChainFetchOperation__finalizeResultFromCachedRecords__block_invoke_5(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [FCHeldRecords alloc];
        v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
        v11 = [*(a1 + 40) objectForKeyedSubscript:v8];
        v12 = [(FCHeldRecords *)v9 initWithRecordsByID:v10 interestTokensByID:v11];

        [v3 setObject:v12 forKeyedSubscript:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

id __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [(FCRecordChainFetchOperation *)*(a1 + 32) _pbRecordTypeForRecordType:a2];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[62];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke_3;
  v7[3] = &__block_descriptor_36_e8_B16__0_8l;
  v8 = v3;
  v5 = [v4 heldRecordsPassingTest:v7];

  return v5;
}

BOOL __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 base];
  v4 = [v3 recordType] == *(a1 + 32);

  return v4;
}

void __65__FCRecordChainFetchOperation__recordIDsMissingFromCachedRecords__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a3;
  v8 = [v5 setWithArray:a2];
  v7 = [v6 allRecordIDs];

  [v8 fc_removeObjectsFromArray:v7];
  [*(a1 + 32) unionSet:v8];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(FCRecordChainFetchOperation *)*(a1 + 32) _recordSourceForRecordType:a2];
  v7 = [v6 fetchErrorsByKey];
  v8 = [v7 readOnlyDictionary];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:{v14, v17}];
        v16 = v15;
        if (!v15 || ([v15 fc_isCKUnknownItemError] & 1) == 0)
        {
          [*(a1 + 40) addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) linkKeysByRecordType];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2_28;
  v6[3] = &unk_1E7C3F6D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2_28(uint64_t a1, void *a2, void *a3)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [(FCRecordChainFetchOperation *)v5 _recordSourceForRecordType:v7];
  v9 = [v8 localizedLanguageSpecificKeysByOriginalKey];
  v10 = [v8 localizedKeysByOriginalKey];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3_29;
  v29[3] = &unk_1E7C38D38;
  v30 = v10;
  v11 = v10;
  v12 = [v6 fc_arrayByTransformingWithBlock:v29];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_4;
  v27 = &unk_1E7C38D38;
  v28 = v9;
  v13 = v9;
  v14 = [v6 fc_arrayByTransformingWithBlock:&v24];
  v31[0] = v6;
  v31[1] = v12;
  v31[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:{3, v24, v25, v26, v27}];
  v16 = [v15 fc_arrayByFlattening];

  v17 = objc_opt_new();
  v19 = v17;
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v18, v7, 16);
  }

  v20 = [v8 desiredKeys];
  v22 = v20;
  if (v19)
  {
    objc_setProperty_nonatomic_copy(v19, v21, v20, 24);

    objc_setProperty_nonatomic_copy(v19, v23, v16, 32);
  }

  else
  {
  }

  [*(a1 + 40) addObject:v19];
}

- (void)_collectActualTopLevelRecordIDsFromRecordIDs:(void *)ds visitedRecordIDs:
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dsCopy = ds;
  if (self)
  {
    if ([(FCRecordChainFetchOperation *)self _shouldIgnoreCache])
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __93__FCRecordChainFetchOperation__collectActualTopLevelRecordIDsFromRecordIDs_visitedRecordIDs___block_invoke;
      v57[3] = &unk_1E7C36C58;
      v57[4] = self;
      v58 = v5;
      __93__FCRecordChainFetchOperation__collectActualTopLevelRecordIDsFromRecordIDs_visitedRecordIDs___block_invoke(v57);
    }

    else
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v38 = dsCopy;
      [dsCopy unionSet:v5];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v39 = v5;
      obj = v5;
      v46 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      if (v46)
      {
        selfCopy = self;
        v45 = *v54;
        do
        {
          v47 = 0;
          do
          {
            if (*v54 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v53 + 1) + 8 * v47);
            v9 = [self[62] recordWithID:v8];
            v10 = [(FCRecordChainFetchOperation *)self _recordTypeForRecordID:v8];
            v11 = [(FCRecordChainFetchOperation *)self _recordSourceForRecordType:v10];
            dynamicCachePolicyBlock = [self dynamicCachePolicyBlock];

            if (!dynamicCachePolicyBlock || ([self dynamicCachePolicyBlock], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "base"), v14 = v11, v15 = v10, v16 = v9, v17 = objc_claimAutoreleasedReturnValue(), (v13)[2](v13, objc_msgSend(v17, "recordType"), v16), v18 = v8, v19 = objc_claimAutoreleasedReturnValue(), v17, v9 = v16, v10 = v15, v11 = v14, self = selfCopy, v13, cachePolicy = v19, v8 = v18, !cachePolicy))
            {
              cachePoliciesByRecordID = [self cachePoliciesByRecordID];
              v22 = v8;
              v23 = [cachePoliciesByRecordID objectForKey:v8];

              if (v23 || ([self cachePoliciesByRecordType], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectForKey:", v10), v23 = objc_claimAutoreleasedReturnValue(), v24, v23))
              {
                cachePolicy = v23;
              }

              else
              {
                cachePolicy = [self cachePolicy];
              }

              v8 = v22;
            }

            v48 = cachePolicy;
            if (v9)
            {
              v25 = [v11 isRecordStale:v9 withCachePolicy:cachePolicy];
              cachePolicy = v48;
              v26 = v25 ^ 1;
            }

            else
            {
              v26 = 0;
            }

            v20CachePolicy = [cachePolicy cachePolicy];
            if ((v26 & 1) != 0 || v20CachePolicy == 3)
            {
              if (!v9 && v20CachePolicy == 3)
              {
                [self[65] addObject:v8];
              }

              [self[64] addObject:v8];
              linkKeysByRecordType = [self linkKeysByRecordType];
              v29 = [linkKeysByRecordType objectForKey:v10];

              if ([v29 count])
              {
                v41 = v11;
                v42 = v10;
                v43 = v9;
                v30 = [v11 keyValueRepresentationOfRecord:v9];
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v31 = v29;
                v32 = [v31 countByEnumeratingWithState:&v49 objects:v59 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v50;
                  do
                  {
                    for (i = 0; i != v33; ++i)
                    {
                      if (*v50 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      v36 = [v30 valueForKey:*(*(&v49 + 1) + 8 * i)];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v7 addObject:v36];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v7 addObjectsFromArray:v36];
                        }
                      }
                    }

                    v33 = [v31 countByEnumeratingWithState:&v49 objects:v59 count:16];
                  }

                  while (v33);
                }

                v9 = v43;
                self = selfCopy;
                v11 = v41;
                v10 = v42;
              }
            }

            else
            {
              [self[63] addObject:v8];
            }

            ++v47;
          }

          while (v47 != v46);
          v37 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
          v46 = v37;
        }

        while (v37);
      }

      dsCopy = v38;
      [v7 minusSet:v38];
      if ([v7 count])
      {
        [(FCRecordChainFetchOperation *)self _collectActualTopLevelRecordIDsFromRecordIDs:v7 visitedRecordIDs:v38];
      }

      v5 = v39;
    }
  }
}

- (NSArray)networkEvents
{
  if (self)
  {
    self = self->_mutableNetworkEvents;
  }

  return self;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  recordChainCompletionHandler = [(FCRecordChainFetchOperation *)self recordChainCompletionHandler];

  if (recordChainCompletionHandler)
  {
    recordChainCompletionHandler2 = [(FCRecordChainFetchOperation *)self recordChainCompletionHandler];
    v6 = recordChainCompletionHandler2;
    if (self)
    {
      resultHeldRecordsByType = self->_resultHeldRecordsByType;
    }

    else
    {
      resultHeldRecordsByType = 0;
    }

    (*(recordChainCompletionHandler2 + 16))(recordChainCompletionHandler2, resultHeldRecordsByType, errorCopy);
  }
}

void __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(FCHeldRecords);
  [(FCRecordChainFetchOperation *)*(a1 + 32) setCachedRecords:v2];
}

- (void)setCachedRecords:(uint64_t)records
{
  if (records)
  {
    objc_storeStrong((records + 496), a2);
  }
}

void __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[62];
  }

  v6 = v5;
  v7 = [FCHeldRecords heldRecordsByMerging:v6 with:a3];
  [(FCRecordChainFetchOperation *)*(a1 + 32) setCachedRecords:v7];
}

id __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithInt:{-[FCRecordChainFetchOperation _pbRecordTypeForRecordType:](v6, a2)}];
  v9 = [*(a1 + 32) cachedRecordsLookupBlock];
  v10 = (v9)[2](v9, v8, v7);

  return v10;
}

- (id)_pbRecordTypeForRecordType:(id *)result
{
  if (result)
  {
    v2 = [result[61] objectForKey:a2];
    intValue = [v2 intValue];

    return intValue;
  }

  return result;
}

id __66__FCRecordChainFetchOperation__collectCachedRecordsFromRecordIDs___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [(FCRecordChainFetchOperation *)v4 _recordSourceForRecordType:a2];
  v7 = [v6 cachedRecordsWithIDs:v5];

  return v7;
}

- (id)_recordSourceForRecordType:(id *)type
{
  if (type)
  {
    type = [type[60] objectForKey:a2];
    v2 = vars8;
  }

  return type;
}

- (void)_walkRecordChainStartingWithRecordIDs:(void *)ds visitedRecordIDs:(void *)iDs recordsLookupBlock:(void *)block visitorBlock:
{
  v85 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dsCopy = ds;
  iDsCopy = iDs;
  blockCopy = block;
  v10 = [v9 mutableCopy];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0x1E69E9C10];
    v14 = *v70;
    do
    {
      v15 = 0;
      do
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v69 + 1) + 8 * v15);
        v17 = [(FCRecordChainFetchOperation *)self _recordTypeForRecordID:v16];
        if (v17)
        {
          linkKeysByRecordType = [self linkKeysByRecordType];
          v19 = [linkKeysByRecordType objectForKeyedSubscript:v17];

          if (v19)
          {
            goto LABEL_12;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"missing link entry for record ID %@", v16];
            *buf = 136315906;
            v77 = "[FCRecordChainFetchOperation _walkRecordChainStartingWithRecordIDs:visitedRecordIDs:recordsLookupBlock:visitorBlock:]";
            v78 = 2080;
            v79 = "FCRecordChainFetchOperation.m";
            v80 = 1024;
            v81 = 631;
            v82 = 2114;
            v83 = v20;
            v21 = v13;
LABEL_15:
            _os_log_error_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown type for record ID %@", v16];
          *buf = 136315906;
          v77 = "[FCRecordChainFetchOperation _walkRecordChainStartingWithRecordIDs:visitedRecordIDs:recordsLookupBlock:visitorBlock:]";
          v78 = 2080;
          v79 = "FCRecordChainFetchOperation.m";
          v80 = 1024;
          v81 = 626;
          v82 = 2114;
          v83 = v20;
          v21 = v13;
          goto LABEL_15;
        }

        [v10 removeObject:v16];
LABEL_12:

        ++v15;
      }

      while (v12 != v15);
      v22 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
      v12 = v22;
    }

    while (v22);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  linkKeysByRecordType2 = [self linkKeysByRecordType];
  v23 = [linkKeysByRecordType2 countByEnumeratingWithState:&v65 objects:v75 count:16];
  v24 = iDsCopy;
  if (v23)
  {
    v25 = v23;
    v26 = *v66;
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v66 != v26)
        {
          objc_enumerationMutation(linkKeysByRecordType2);
        }

        v28 = *(*(&v65 + 1) + 8 * i);
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __118__FCRecordChainFetchOperation__walkRecordChainStartingWithRecordIDs_visitedRecordIDs_recordsLookupBlock_visitorBlock___block_invoke;
        v64[3] = &unk_1E7C3F810;
        v64[4] = selfCopy;
        v64[5] = v28;
        v29 = [v10 fc_arrayOfObjectsPassingTest:v64];
        if ([v29 count])
        {
          [v10 fc_removeObjectsFromArray:v29];
          [dsCopy addObjectsFromArray:v29];
          v30 = objc_autoreleasePoolPush();
          v31 = (*(iDsCopy + 2))(iDsCopy, v28, v29);
          blockCopy[2](blockCopy, v29, v31);
          self = selfCopy;
          linkKeysByRecordType3 = [selfCopy linkKeysByRecordType];
          v33 = [linkKeysByRecordType3 objectForKey:v28];

          v53 = v33;
          if ([v33 count])
          {
            v43 = v30;
            v44 = v29;
            v52 = [(FCRecordChainFetchOperation *)selfCopy _recordSourceForRecordType:v28];
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v42 = v31;
            allRecords = [v31 allRecords];
            v54 = [allRecords countByEnumeratingWithState:&v60 objects:v74 count:16];
            if (v54)
            {
              v51 = *v61;
              do
              {
                for (j = 0; j != v54; ++j)
                {
                  if (*v61 != v51)
                  {
                    objc_enumerationMutation(allRecords);
                  }

                  v35 = [v52 keyValueRepresentationOfRecord:*(*(&v60 + 1) + 8 * j)];
                  v56 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  v59 = 0u;
                  v36 = v53;
                  v37 = [v36 countByEnumeratingWithState:&v56 objects:v73 count:16];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = *v57;
                    do
                    {
                      for (k = 0; k != v38; ++k)
                      {
                        if (*v57 != v39)
                        {
                          objc_enumerationMutation(v36);
                        }

                        v41 = [v35 valueForKey:*(*(&v56 + 1) + 8 * k)];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [v10 addObject:v41];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [v10 addObjectsFromArray:v41];
                          }
                        }
                      }

                      v38 = [v36 countByEnumeratingWithState:&v56 objects:v73 count:16];
                    }

                    while (v38);
                  }
                }

                v54 = [allRecords countByEnumeratingWithState:&v60 objects:v74 count:16];
              }

              while (v54);
            }

            v29 = v44;
            v24 = iDsCopy;
            self = selfCopy;
            v31 = v42;
            v30 = v43;
          }

          objc_autoreleasePoolPop(v30);
          goto LABEL_47;
        }
      }

      v25 = [linkKeysByRecordType2 countByEnumeratingWithState:&v65 objects:v75 count:16];
      self = selfCopy;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_47:

  [v10 minusSet:dsCopy];
  if ([v10 count])
  {
    [(FCRecordChainFetchOperation *)self _walkRecordChainStartingWithRecordIDs:v10 visitedRecordIDs:dsCopy recordsLookupBlock:v24 visitorBlock:blockCopy];
  }
}

uint64_t __93__FCRecordChainFetchOperation__collectActualTopLevelRecordIDsFromRecordIDs_visitedRecordIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v2;
    objc_storeStrong((v4 + 504), v2);
    v3 = v6;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (id)_recordTypeForRecordID:(uint64_t)d
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (d)
  {
    v4 = *(d + 472);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ([v10 recognizesRecordID:v3])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v14 objects:v26 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      recordType = [v10 recordType];

      if (recordType)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_10:
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unrecognized record ID %@", v3];
      *buf = 136315906;
      v19 = "[FCRecordChainFetchOperation _recordTypeForRecordID:]";
      v20 = 2080;
      v21 = "FCRecordChainFetchOperation.m";
      v22 = 1024;
      v23 = 824;
      v24 = 2114;
      v25 = v13;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    recordType = 0;
LABEL_15:
  }

  else
  {
    recordType = 0;
  }

  return recordType;
}

- (id)_errorForMissingRecordNames:(uint64_t)names
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (names)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__FCRecordChainFetchOperation__errorForMissingRecordNames___block_invoke_2;
    v8[3] = &unk_1E7C3F910;
    v8[4] = names;
    v2 = [a2 fc_dictionaryWithKeyBlock:&__block_literal_global_78 valueBlock:v8];
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E695B740];
    v9 = *MEMORY[0x1E695B798];
    v10[0] = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v3 errorWithDomain:v4 code:2 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 496);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 allRecords];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = MEMORY[0x1E69E9C10];
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v18 + 1) + 8 * v11) base];
        v13 = [v12 changeTag];

        if (!v13 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "base.changeTag"];
          *buf = 136315906;
          v23 = "[FCRecordChainFetchOperation _issueCloudRequestIfNeeded]_block_invoke_3";
          v24 = 2080;
          v25 = "FCRecordChainFetchOperation.m";
          v26 = 1024;
          v27 = 356;
          v28 = 2114;
          v29 = v17;
          _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v14 = [v12 changeTag];

        if (v14)
        {
          v15 = [v12 changeTag];
          v16 = [v12 identifier];
          [v3 setObject:v15 forKey:v16];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v8);
  }
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([*(a1 + 32) containsObject:v15] && objc_msgSend(v8, "containsObject:", v15))
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          if (!NSClassFromString(&cfstr_Xctest.isa) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v16 = objc_alloc(MEMORY[0x1E696AEC0]);
            v17 = [v9 requestUUID];
            v18 = [v16 initWithFormat:@"a canary was missing from a MultiFetch response, canary=%@, uuid=%@", v15, v17, v19];
            *buf = 136315906;
            v24 = "[FCRecordChainFetchOperation _issueCloudRequestIfNeeded]_block_invoke_5";
            v25 = 2080;
            v26 = "FCRecordChainFetchOperation.m";
            v27 = 1024;
            v28 = 419;
            v29 = 2114;
            v30 = v18;
            _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingCanary) : %s %s:%d %{public}@", buf, 0x26u);
          }

          goto LABEL_14;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v31 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_2_43(uint64_t a1, void *a2, void *a3)
{
  v115 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[67];
  }

  v8 = v7;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = [(FCCKBatchedMultiFetchQueryOperation *)WeakRetained networkEvents];
  [v8 addObjectsFromArray:v10];

  if (!v6 || (![*(a1 + 32) shouldFailOnLimitExceededError] || !objc_msgSend(v6, "fc_isCKErrorWithCode:", 27)) && !objc_msgSend(*(a1 + 32), "shouldReturnErrorWhenSomeRecordsMissing"))
  {
    v85 = v5;
    v87 = [MEMORY[0x1E695DFA8] set];
    v86 = [MEMORY[0x1E695DFA8] set];
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v12 = [*(a1 + 40) readOnlyArray];
    v13 = [v12 countByEnumeratingWithState:&v104 objects:v114 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v105;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v105 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v104 + 1) + 8 * i);
          v18 = [v17 recordID];
          v19 = [v18 recordName];
          v20 = [v87 containsObject:v19];

          if ((v20 & 1) == 0)
          {
            v21 = *(a1 + 48);
            v22 = [v17 recordID];
            v23 = [v22 recordName];
            LOBYTE(v21) = [v21 containsObject:v23];

            v24 = v86;
            if ((v21 & 1) == 0)
            {
              v25 = [v17 recordType];
              v26 = [v11 objectForKeyedSubscript:v25];

              if (!v26)
              {
                v27 = [MEMORY[0x1E695DF70] array];
                v28 = [v17 recordType];
                [v11 setObject:v27 forKeyedSubscript:v28];
              }

              v29 = [v17 recordType];
              v30 = [v11 objectForKeyedSubscript:v29];
              [v30 addObject:v17];

              v24 = v87;
            }

            v31 = [v17 recordID];
            v32 = [v31 recordName];
            [v24 addObject:v32];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v104 objects:v114 count:16];
      }

      while (v14);
    }

    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3_44;
    v103[3] = &unk_1E7C3F720;
    v103[4] = *(a1 + 32);
    [v11 enumerateKeysAndObjectsUsingBlock:v103];

    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = [MEMORY[0x1E695DFA8] set];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke;
      aBlock[3] = &unk_1E7C3F658;
      v35 = v34;
      v112 = v35;
      v36 = _Block_copy(aBlock);
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_2;
      v110[3] = &unk_1E7C3F680;
      v110[4] = v33;
      v37 = _Block_copy(v110);
      v38 = MEMORY[0x1E695DFD8];
      v39 = [v33 topLevelRecordIDs];
      v40 = [v38 setWithArray:v39];
      v41 = [MEMORY[0x1E695DFA8] set];
      [(FCRecordChainFetchOperation *)v33 _walkRecordChainStartingWithRecordIDs:v40 visitedRecordIDs:v41 recordsLookupBlock:v37 visitorBlock:v36];

      v42 = v33[62];
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_4;
      v108[3] = &unk_1E7C3F858;
      v109 = v35;
      v43 = v35;
      v44 = v42;
      v45 = [v44 heldRecordsPassingTest:v108];
      v46 = v33[62];
      v33[62] = v45;
    }

    v6 = v84;
    v5 = v85;
    if (v84 && ((v47 = *(a1 + 32)) == 0 ? (v48 = 0) : (v48 = *(v47 + 496)), ![v48 count]))
    {
      v79 = *(a1 + 32);
      v80 = v84;
    }

    else
    {
      v49 = [MEMORY[0x1E695DF90] dictionary];
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v50 = *(a1 + 32);
      if (v50)
      {
        v51 = *(v50 + 496);
      }

      else
      {
        v51 = 0;
      }

      v52 = [v51 allRecords];
      v53 = [v52 countByEnumeratingWithState:&v99 objects:v113 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v100;
        do
        {
          v56 = 0;
          do
          {
            if (*v100 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = [*(*(&v99 + 1) + 8 * v56) base];
            v58 = [v57 identifier];

            v59 = [(FCRecordChainFetchOperation *)*(a1 + 32) _recordTypeForRecordID:v58];
            if (([v87 containsObject:v58] & 1) == 0)
            {
              v60 = *(a1 + 32);
              v61 = v60 ? *(v60 + 512) : 0;
              if (([v61 containsObject:v58] & 1) == 0)
              {
                v62 = [v49 objectForKeyedSubscript:v59];

                if (!v62)
                {
                  v63 = [MEMORY[0x1E695DF70] array];
                  [v49 setObject:v63 forKeyedSubscript:v59];
                }

                v64 = [v49 objectForKeyedSubscript:v59];
                [v64 addObject:v58];
              }
            }

            ++v56;
          }

          while (v54 != v56);
          v65 = [v52 countByEnumeratingWithState:&v99 objects:v113 count:16];
          v54 = v65;
        }

        while (v65);
      }

      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_4_45;
      v98[3] = &unk_1E7C3F720;
      v98[4] = *(a1 + 32);
      [v49 enumerateKeysAndObjectsUsingBlock:v98];

      v5 = v85;
      if ([v85 count])
      {
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_5_46;
        v97[3] = &unk_1E7C3F6A8;
        v97[4] = *(a1 + 32);
        v66 = [v85 fc_dictionaryOfSortedSetsWithKeyBlock:v97];
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_6;
        v96[3] = &unk_1E7C3F748;
        v67 = *(a1 + 56);
        v96[4] = *(a1 + 32);
        v96[5] = v67;
        [v66 enumerateKeysAndObjectsUsingBlock:v96];
      }

      [(FCRecordChainFetchOperation *)*(a1 + 32) _finalizeResultFromCachedRecords];
      v6 = v84;
      if ([v85 count])
      {
        v68 = [v85 allObjects];
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_7;
        v93[3] = &unk_1E7C3F770;
        v69 = v84;
        v70 = *(a1 + 32);
        v94 = v69;
        v95 = v70;
        v71 = [v68 fc_dictionaryWithValueBlock:v93];

        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_8;
        v92[3] = &unk_1E7C3F798;
        v92[4] = *(a1 + 32);
        v72 = [v71 fc_sortedEntriesWithKeyBlock:v92];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_9;
        v88[3] = &unk_1E7C3F7C0;
        v73 = v69;
        v74 = *(a1 + 56);
        v75 = *(a1 + 32);
        v89 = v73;
        v90 = v75;
        v91 = v74;
        [v72 enumerateKeysAndObjectsUsingBlock:v88];
        v76 = *(a1 + 32);
        if (v76)
        {
          v76 = v76[62];
        }

        v77 = v76;
        if ([v77 count])
        {
          v78 = [*(a1 + 32) shouldReturnErrorWhenSomeRecordsMissing];

          if ((v78 & 1) == 0)
          {
            [*(a1 + 32) finishedPerformingOperationWithError:0];
LABEL_58:

            goto LABEL_59;
          }
        }

        else
        {
        }

        v81 = *(a1 + 32);
        v82 = [v85 allObjects];
        v83 = [(FCRecordChainFetchOperation *)v81 _errorForMissingRecordNames:v82];

        [*(a1 + 32) finishedPerformingOperationWithError:v83];
        goto LABEL_58;
      }

      v79 = *(a1 + 32);
      v80 = 0;
    }

    [v79 finishedPerformingOperationWithError:v80];
LABEL_59:

    goto LABEL_60;
  }

  [*(a1 + 32) finishedPerformingOperationWithError:v6];
LABEL_60:
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_3_44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v11 = [(FCRecordChainFetchOperation *)v5 _recordSourceForRecordType:a2];
  if ([*(a1 + 32) shouldBypassRecordSourcePersistence])
  {
    [v11 convertRecords:v6];
  }

  else
  {
    [v11 saveRecords:v6];
  }
  v7 = ;

  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[62];
  }

  v9 = v8;
  v10 = [FCHeldRecords heldRecordsByMerging:v7 with:v9];
  [(FCRecordChainFetchOperation *)*(a1 + 32) setCachedRecords:v10];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_4_45(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [(FCRecordChainFetchOperation *)v4 _recordSourceForRecordType:a2];
  [v6 updateFetchDateForRecordIDs:v5];
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [(FCRecordChainFetchOperation *)*(a1 + 32) _recordSourceForRecordType:a2];
  if ([objc_opt_class() supportsDeletions] && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v6 = [v5 deleteRecordsWithIDs:v10];
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[62];
    }

    v8 = v7;
    v9 = [FCHeldRecords heldRecordsByMerging:v6 with:v8];
    [(FCRecordChainFetchOperation *)*(a1 + 32) setCachedRecords:v9];
  }
}

id __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [(FCRecordChainFetchOperation *)*(a1 + 40) _partialFetchErrorForMissingRecordName:a2];
  }

  return v3;
}

- (id)_partialFetchErrorForMissingRecordName:(uint64_t)name
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (name)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Record %@ missing from MultiFetch query", a2];
    v3 = MEMORY[0x1E696ABC0];
    v4 = *MEMORY[0x1E695B740];
    v8 = *MEMORY[0x1E696A578];
    v9[0] = v2;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [v3 errorWithDomain:v4 code:11 userInfo:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __57__FCRecordChainFetchOperation__issueCloudRequestIfNeeded__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(a1 + 32) || (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v6 = [(FCRecordChainFetchOperation *)*(a1 + 40) _recordSourceForRecordType:v8];
    v7 = [v6 fetchErrorsByKey];
    [v7 addEntriesFromDictionary:v5];
  }
}

uint64_t __118__FCRecordChainFetchOperation__walkRecordChainStartingWithRecordIDs_visitedRecordIDs_recordsLookupBlock_visitorBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [(FCRecordChainFetchOperation *)*(a1 + 32) _recordTypeForRecordID:a2];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  return v4;
}

void __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allRecordIDs];
  [v3 addObjectsFromArray:v4];
}

id __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [(FCRecordChainFetchOperation *)*(a1 + 32) _pbRecordTypeForRecordType:a2];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[62];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_3;
  v7[3] = &__block_descriptor_36_e8_B16__0_8l;
  v8 = v3;
  v5 = [v4 heldRecordsPassingTest:v7];

  return v5;
}

BOOL __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 base];
  v4 = [v3 recordType] == *(a1 + 32);

  return v4;
}

uint64_t __62__FCRecordChainFetchOperation__filterOrphansFromCachedRecords__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 base];
  v4 = [v3 identifier];
  v5 = [v2 containsObject:v4];

  return v5;
}

id __59__FCRecordChainFetchOperation__errorForMissingRecordNames___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v4 fc_initSafeWithRecordName:v3];

  return v5;
}

id __59__FCRecordChainFetchOperation__errorForMissingRecordNames___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 520);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 containsObject:v3];
  v7 = *(a1 + 32);
  if (v6)
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Record %@ not cached", v3];
      v9 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v9 errorWithDomain:@"FCErrorDomain" code:5 userInfo:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(FCRecordChainFetchOperation *)v7 _partialFetchErrorForMissingRecordName:v3];
  }

  return v11;
}

@end