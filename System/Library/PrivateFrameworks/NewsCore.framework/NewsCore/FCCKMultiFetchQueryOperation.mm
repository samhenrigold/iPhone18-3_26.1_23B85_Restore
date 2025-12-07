@interface FCCKMultiFetchQueryOperation
- (BOOL)validateOperation;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)setDatabase:(uint64_t)database;
- (void)setKnownRecordIDsToEtags:(uint64_t)etags;
- (void)setRecordIDs:(uint64_t)ds;
- (void)setRecordSpecs:(uint64_t)specs;
@end

@implementation FCCKMultiFetchQueryOperation

- (BOOL)validateOperation
{
  selfCopy = self;
  v20 = *MEMORY[0x1E69E9840];
  if (self && self->_database)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"multi-fetch query requires a database"];
    v12 = 136315906;
    v13 = "[FCCKMultiFetchQueryOperation validateOperation]";
    v14 = 2080;
    v15 = "FCCKMultiFetchQueryOperation.m";
    v16 = 1024;
    v17 = 35;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);

    if (selfCopy)
    {
      goto LABEL_5;
    }

LABEL_22:
    recordIDs = 0;
    goto LABEL_6;
  }

  if (!selfCopy)
  {
    goto LABEL_22;
  }

LABEL_5:
  recordIDs = selfCopy->_recordIDs;
LABEL_6:
  if (![(NSArray *)recordIDs count]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"multi-fetch query requires at least one record ID"];
    v12 = 136315906;
    v13 = "[FCCKMultiFetchQueryOperation validateOperation]";
    v14 = 2080;
    v15 = "FCCKMultiFetchQueryOperation.m";
    v16 = 1024;
    v17 = 36;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);
  }

  if (selfCopy)
  {
    recordSpecs = selfCopy->_recordSpecs;
  }

  else
  {
    recordSpecs = 0;
  }

  if (![(NSArray *)recordSpecs count]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"multi-fetch query requires at least one record spec"];
    v12 = 136315906;
    v13 = "[FCCKMultiFetchQueryOperation validateOperation]";
    v14 = 2080;
    v15 = "FCCKMultiFetchQueryOperation.m";
    v16 = 1024;
    v17 = 37;
    v18 = 2114;
    v19 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v12, 0x26u);

    if (!selfCopy)
    {
      return selfCopy;
    }
  }

  else if (!selfCopy)
  {
    return selfCopy;
  }

  v5 = selfCopy->_database;
  if (v5)
  {
    v6 = v5;
    v7 = selfCopy->_recordIDs;
    if ([(NSArray *)v7 count])
    {
      LOBYTE(selfCopy) = [(NSArray *)selfCopy->_recordSpecs count]!= 0;
    }

    else
    {
      LOBYTE(selfCopy) = 0;
    }
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy;
}

- (void)prepareOperation
{
  if (self)
  {
    v3 = [(NSArray *)self->_recordSpecs fc_dictionaryWithKeyBlock:&__block_literal_global_162];
    objc_storeStrong(&self->_recordSpecsByType, v3);

    v4 = [MEMORY[0x1E695DFA8] set];
    objc_storeStrong(&self->_resultMissingRecordIDs, v4);

    if (!self->_networkEventType)
    {
      self->_networkEventType = 12;
    }
  }

  else
  {
    [0 fc_dictionaryWithKeyBlock:&__block_literal_global_162];

    v5 = [MEMORY[0x1E695DFA8] set];
  }
}

id __48__FCCKMultiFetchQueryOperation_prepareOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 16);
  }

  else
  {
    return 0;
  }
}

- (void)performOperation
{
  location[16] = *MEMORY[0x1E69E9840];
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    array5 = [MEMORY[0x1E695DF70] array];
    array6 = [MEMORY[0x1E695DF70] array];
    [(NSArray *)self->_recordSpecs sortedArrayUsingComparator:&__block_literal_global_16_1];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    obj = v75 = 0u;
    v2 = [obj countByEnumeratingWithState:&v74 objects:location count:16];
    if (v2)
    {
      v3 = *v75;
      do
      {
        v4 = 0;
        do
        {
          if (*v75 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v74 + 1) + 8 * v4);
          if (v5)
          {
            [array addObject:*(v5 + 16)];
            v6 = *(v5 + 32);
          }

          else
          {
            [array addObject:0];
            v6 = 0;
          }

          v7 = [v6 sortedArrayUsingSelector:sel_compare_];
          v8 = [v7 componentsJoinedByString:{@", "}];
          v9 = v8;
          if (v8)
          {
            v10 = v8;
          }

          else
          {
            v10 = &stru_1F2DC7DC0;
          }

          [array2 addObject:v10];

          if (v5)
          {
            v11 = *(v5 + 24);
          }

          else
          {
            v11 = 0;
          }

          v12 = [v11 sortedArrayUsingSelector:sel_compare_];
          v13 = [v12 componentsJoinedByString:{@", "}];
          [array3 addObject:v13];

          if (v5)
          {
            v14 = *(v5 + 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = [MEMORY[0x1E696AD98] numberWithBool:v14 & 1];
          [array4 addObject:v15];

          ++v4;
        }

        while (v2 != v4);
        v16 = [obj countByEnumeratingWithState:&v74 objects:location count:16];
        v2 = v16;
      }

      while (v16);
    }

    v17 = self->_knownRecordIDsToEtags;
    allKeys = [(NSDictionary *)v17 allKeys];
    v19 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v73 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v21)
    {
      v22 = *v71;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v71 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v70 + 1) + 8 * i);
          [array5 addObject:v24];
          v25 = [(NSDictionary *)self->_knownRecordIDsToEtags objectForKeyedSubscript:v24];
          [array6 addObject:v25];
        }

        v21 = [v20 countByEnumeratingWithState:&v70 objects:v78 count:16];
      }

      while (v21);
    }

    v26 = [(NSArray *)self->_recordIDs sortedArrayUsingSelector:sel_compare_];
    array7 = [MEMORY[0x1E695DF70] array];
    v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", v26, @"recordIDs"];
    [array7 addObject:v28];

    v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", array, @"recordTypes"];
    [array7 addObject:v29];

    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", array2, @"fetchFields"];
    [array7 addObject:v30];

    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", array3, @"requestedFields"];
    [array7 addObject:v31];

    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", array4, @"shortcut"];
    [array7 addObject:v32];

    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", array5, @"knownRecordIDs"];
    [array7 addObject:v33];

    v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", array6, @"knownEtags"];
    [array7 addObject:v34];

    v35 = MEMORY[0x1E696AE18];
    v36 = MEMORY[0x1E696AD98];
    relativePriority = [(FCOperation *)self relativePriority];
    v38 = 300;
    if (!relativePriority)
    {
      v38 = 200;
    }

    if (relativePriority == -1)
    {
      v39 = 100;
    }

    else
    {
      v39 = v38;
    }

    v40 = [v36 numberWithUnsignedInteger:v39];
    v41 = [v35 predicateWithFormat:@"%K == %@", @"priority", v40];
    [array7 addObject:v41];

    v42 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array7];
    v43 = [objc_alloc(MEMORY[0x1E695BA30]) initWithRecordType:@"MultiFetch" predicate:v42];
  }

  else
  {
    v43 = 0;
  }

  v44 = objc_alloc_init(FCCKContentQueryOperation);
  v45 = v44;
  if (self)
  {
    [(FCCKContentQueryOperation *)v44 setDatabase:?];
    [(FCCKContentQueryOperation *)v45 setQuery:v43];
    v47 = v45 == 0;
    if (v45)
    {
      *(v45 + 372) = self->_networkEventType;
      objc_setProperty_nonatomic_copy(v45, v46, self->_networkActivityBlock, 480);
      objc_setProperty_nonatomic_copy(v45, v48, self->_edgeCacheHint, 448);
      *(v45 + 368) = self->_ignoreCache;
      *(v45 + 456) = self->_optimizationPolicy;
      relativePriority2 = [(FCOperation *)self relativePriority];
      v50 = 300;
      if (!relativePriority2)
      {
        v50 = 200;
      }

      if (relativePriority2 == -1)
      {
        v50 = 100;
      }

      *(v45 + 464) = v50;
    }

    else
    {
      [(FCOperation *)self relativePriority];
    }

    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __44__FCCKMultiFetchQueryOperation__desiredKeys__block_invoke;
    location[3] = &unk_1E7C371F8;
    location[4] = self;
    v51 = [MEMORY[0x1E695DFD8] fc_set:location];
    allObjects = [v51 allObjects];
  }

  else
  {
    [(FCCKContentQueryOperation *)v44 setDatabase:?];
    [(FCCKContentQueryOperation *)v45 setQuery:v43];
    if (v45)
    {
      *(v45 + 372) = 0;
      objc_setProperty_nonatomic_copy(v45, v57, 0, 480);
      objc_setProperty_nonatomic_copy(v45, v58, 0, 448);
      v47 = 0;
      allObjects = 0;
      *(v45 + 368) = 0;
      *(v45 + 456) = 0;
      *(v45 + 464) = 0;
    }

    else
    {
      allObjects = 0;
      v47 = 1;
    }
  }

  v54 = [allObjects sortedArrayUsingSelector:sel_compare_];
  if (!v47)
  {
    objc_setProperty_nonatomic_copy(v45, v53, v54, 408);
  }

  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __48__FCCKMultiFetchQueryOperation_performOperation__block_invoke;
  newValue[3] = &unk_1E7C37FE0;
  newValue[4] = self;
  if (!v47)
  {
    objc_setProperty_nonatomic_copy(v45, v55, newValue, 416);
  }

  objc_initWeak(location, v45);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __48__FCCKMultiFetchQueryOperation_performOperation__block_invoke_2;
  v67[3] = &unk_1E7C46098;
  v67[4] = self;
  objc_copyWeak(&v68, location);
  if (!v47)
  {
    objc_setProperty_nonatomic_copy(v45, v56, v67, 424);
  }

  [(FCOperation *)self associateChildOperation:v45];
  [v45 start];
  objc_destroyWeak(&v68);
  objc_destroyWeak(location);
}

void __44__FCCKMultiFetchQueryOperation__desiredKeys__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[49];
  }

  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10)
        {
          v11 = *(v10 + 24);
        }

        else
        {
          v11 = 0;
        }

        [v3 addObjectsFromArray:{v11, v13}];
        ++v9;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = v12;
    }

    while (v12);
  }

  [v3 addObject:@"notFound"];
}

void __48__FCCKMultiFetchQueryOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 recordType];
  v4 = [v3 isEqualToString:@"Results"];

  if (v4)
  {
    v5 = [v13 objectForKeyedSubscript:@"notFound"];
    v6 = v5;
    v7 = MEMORY[0x1E695E0F0];
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 464);
    }

    else
    {
      v10 = 0;
    }

    [v10 addObjectsFromArray:v8];
  }

  else
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 440);
      if (v12)
      {
        (*(v12 + 16))(v12, v13);
      }
    }
  }
}

void __48__FCCKMultiFetchQueryOperation_performOperation__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 59);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  v9 = *(a1 + 32);
  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v7, v8, 424);
  }

  [*(a1 + 32) finishedPerformingOperationWithError:v10];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    queryCompletionHandler = self->_queryCompletionHandler;
    if (queryCompletionHandler)
    {
      v7 = errorCopy;
      v6 = queryCompletionHandler;
      v6[2](v6, self->_resultMissingRecordIDs, v7);

      errorCopy = v7;
    }
  }
}

uint64_t __47__FCCKMultiFetchQueryOperation__constructQuery__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (!a2)
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_4;
  }

  v6 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v4[2];
LABEL_4:
  v8 = v6;
  v9 = [v8 compare:v7];

  return v9;
}

- (void)setDatabase:(uint64_t)database
{
  if (database)
  {
    objc_storeStrong((database + 376), a2);
  }
}

- (void)setRecordIDs:(uint64_t)ds
{
  if (ds)
  {
    objc_storeStrong((ds + 384), a2);
  }
}

- (void)setRecordSpecs:(uint64_t)specs
{
  if (specs)
  {
    objc_storeStrong((specs + 392), a2);
  }
}

- (void)setKnownRecordIDsToEtags:(uint64_t)etags
{
  if (etags)
  {
    objc_storeStrong((etags + 400), a2);
  }
}

@end