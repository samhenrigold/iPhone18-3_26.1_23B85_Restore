@interface FCCKMultiFeedQueryOperation
- (BOOL)validateOperation;
- (id)_feedRelativeDictionaryFromResultsArray:(uint64_t)array;
- (id)_predicateForPerFeedFieldName:(void *)name key:(void *)key defaultValue:;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
- (void)resetForRetry;
- (void)setResultError:(uint64_t)error;
@end

@implementation FCCKMultiFeedQueryOperation

- (BOOL)validateOperation
{
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  if (self && self->_database)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed query must have a database"];
    v10 = 136315906;
    v11 = "[FCCKMultiFeedQueryOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKMultiFeedQueryOperation.m";
    v14 = 1024;
    v15 = 81;
    v16 = 2114;
    v17 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

    if (selfCopy)
    {
      goto LABEL_5;
    }

LABEL_21:
    feedRequests = 0;
    goto LABEL_6;
  }

  if (!selfCopy)
  {
    goto LABEL_21;
  }

LABEL_5:
  feedRequests = selfCopy->_feedRequests;
LABEL_6:
  if (![(NSArray *)feedRequests count]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed query must have at least one feed request"];
    v10 = 136315906;
    v11 = "[FCCKMultiFeedQueryOperation validateOperation]";
    v12 = 2080;
    v13 = "FCCKMultiFeedQueryOperation.m";
    v14 = 1024;
    v15 = 82;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
  }

  if (!selfCopy || !selfCopy->_resultsLimit)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed query must have a non-zero results limit"];
      v10 = 136315906;
      v11 = "[FCCKMultiFeedQueryOperation validateOperation]";
      v12 = 2080;
      v13 = "FCCKMultiFeedQueryOperation.m";
      v14 = 1024;
      v15 = 83;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);

      if (!selfCopy)
      {
        return selfCopy;
      }
    }

    else if (!selfCopy)
    {
      return selfCopy;
    }
  }

  v4 = selfCopy->_database;
  if (v4)
  {
    v5 = v4;
    if ([(NSArray *)selfCopy->_feedRequests count])
    {
      LOBYTE(selfCopy) = selfCopy->_resultsLimit != 0;
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
  selfCopy = self;
  v19 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_feedRequests;
  }

  if ([(FCCKMultiFeedQueryOperation *)self count]>= 0x191 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"exceeded maximum number of feed requests"];
    v11 = 136315906;
    v12 = "[FCCKMultiFeedQueryOperation prepareOperation]";
    v13 = 2080;
    v14 = "FCCKMultiFeedQueryOperation.m";
    v15 = 1024;
    v16 = 91;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);

    if (selfCopy)
    {
      goto LABEL_6;
    }
  }

  else if (selfCopy)
  {
LABEL_6:
    feedRequests = selfCopy->_feedRequests;
    goto LABEL_7;
  }

  feedRequests = 0;
LABEL_7:
  if ([(NSArray *)feedRequests count]>= 0x191)
  {
    if (selfCopy)
    {
      v4 = selfCopy->_feedRequests;
    }

    else
    {
      v4 = 0;
    }

    v6 = [(NSArray *)v4 fc_subarrayWithMaxCount:400];
    if (selfCopy)
    {
      objc_setProperty_nonatomic_copy(selfCopy, v5, v6, 376);
    }

    v7 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      shortOperationDescription = [(FCOperation *)selfCopy shortOperationDescription];
      v11 = 138543362;
      v12 = shortOperationDescription;
      _os_log_error_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_ERROR, "%{public}@ dropping feeds because the limit was exeeded", &v11, 0xCu);
    }
  }
}

- (void)performOperation
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    v33 = shortOperationDescription;
    if (self)
    {
      feedRequests = self->_feedRequests;
    }

    else
    {
      feedRequests = 0;
    }

    *buf = 138543618;
    *&buf[4] = shortOperationDescription;
    *&buf[12] = 2112;
    *&buf[14] = feedRequests;
    _os_log_debug_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ started with feed requests: %@", buf, 0x16u);
  }

  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [(FCCKMultiFeedQueryOperation *)self _predicateForPerFeedFieldName:@"feedID" key:0 defaultValue:?];
    [array addObject:v5];

    data = [MEMORY[0x1E695DEF0] data];
    v7 = [(FCCKMultiFeedQueryOperation *)self _predicateForPerFeedFieldName:@"startCursor" key:data defaultValue:?];
    [array addObject:v7];

    v8 = [(FCCKMultiFeedQueryOperation *)self _predicateForPerFeedFieldName:@"startOrder" key:&unk_1F2E6FFC0 defaultValue:?];
    [array addObject:v8];

    v9 = [(FCCKMultiFeedQueryOperation *)self _predicateForPerFeedFieldName:@"orderLimit" key:&unk_1F2E6FFD8 defaultValue:?];
    [array addObject:v9];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_resultsLimit];
    v11 = [(FCCKMultiFeedQueryOperation *)self _predicateForPerFeedFieldName:@"softResultsLimit" key:v10 defaultValue:?];
    [array addObject:v11];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_resultsLimit];
    v13 = [(FCCKMultiFeedQueryOperation *)self _predicateForPerFeedFieldName:@"hardResultsLimit" key:v12 defaultValue:?];
    [array addObject:v13];

    if (self->_sortingFunction == 1)
    {
      v14 = @"relativeNewness";
    }

    else
    {
      v14 = @"order";
    }

    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"sortingFunction", v14];
    [array addObject:v15];

    v16 = MEMORY[0x1E696AE18];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_queryPriority];
    v18 = [v16 predicateWithFormat:@"%K == %@", @"priority", v17];
    [array addObject:v18];

    if ([(NSArray *)self->_articleLinkKeys count])
    {
      v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"tagField", self->_articleLinkKeys];
      [array addObject:v19];
    }

    v20 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
    v21 = [objc_alloc(MEMORY[0x1E695BA30]) initWithRecordType:@"MultiFeed" predicate:v20];
  }

  else
  {
    v21 = 0;
  }

  v22 = FCOperationLog;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    shortOperationDescription2 = [(FCOperation *)self shortOperationDescription];
    v36 = shortOperationDescription2;
    if (self)
    {
      resultsLimit = self->_resultsLimit;
    }

    else
    {
      resultsLimit = 0;
    }

    *buf = 138543874;
    *&buf[4] = shortOperationDescription2;
    *&buf[12] = 2048;
    *&buf[14] = resultsLimit;
    *&buf[22] = 2112;
    v52 = v21;
    _os_log_debug_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ issuing query with results limit %lu: %@", buf, 0x20u);
  }

  v23 = objc_alloc_init(FCCKContentQueryOperation);
  v24 = v23;
  if (self)
  {
    [(FCCKContentQueryOperation *)v23 setDatabase:?];
    [(FCCKContentQueryOperation *)v24 setQuery:v21];
    if (v24)
    {
      *(v24 + 400) = self->_resultsLimit;
    }

    v25 = self->_desiredKeys;
    if (v25)
    {
      v27 = v25;
      v28 = self->_desiredKeys;
      if (qword_1EB95A870 != -1)
      {
        dispatch_once(&qword_1EB95A870, &__block_literal_global_75_1);
      }

      v29 = _MergedGlobals_29;
      v30 = [(NSArray *)v28 arrayByAddingObjectsFromArray:v29];

      if (v24)
      {
        objc_setProperty_nonatomic_copy(v24, v31, v30, 408);

        *(v24 + 372) = 11;
      }

      else
      {
      }

LABEL_30:
      queryPriority = self->_queryPriority;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    [(FCCKContentQueryOperation *)v23 setDatabase:?];
    [(FCCKContentQueryOperation *)v24 setQuery:v21];
    if (!v24)
    {
      goto LABEL_29;
    }

    *(v24 + 400) = 0;
  }

  if (v24)
  {
    objc_setProperty_nonatomic_copy(v24, v26, 0, 408);
    *(v24 + 372) = 11;
  }

LABEL_29:
  if (self)
  {
    goto LABEL_30;
  }

  queryPriority = 0;
  if (v24)
  {
LABEL_31:
    *(v24 + 464) = queryPriority;
  }

LABEL_32:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v52 = __Block_byref_object_copy__22;
  v53 = __Block_byref_object_dispose__22;
  array2 = [MEMORY[0x1E695DF70] array];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__22;
  v49[4] = __Block_byref_object_dispose__22;
  array3 = [MEMORY[0x1E695DF70] array];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__22;
  v47[4] = __Block_byref_object_dispose__22;
  array4 = [MEMORY[0x1E695DF70] array];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__22;
  v45[4] = __Block_byref_object_dispose__22;
  v46 = 0;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __47__FCCKMultiFeedQueryOperation_performOperation__block_invoke;
  newValue[3] = &unk_1E7C3B3B0;
  newValue[4] = v45;
  newValue[5] = v49;
  newValue[6] = v47;
  newValue[7] = buf;
  if (v24)
  {
    objc_setProperty_nonatomic_copy(v24, v39, newValue, 416);
  }

  objc_initWeak(&location, v24);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __47__FCCKMultiFeedQueryOperation_performOperation__block_invoke_2;
  v41[3] = &unk_1E7C3B3D8;
  v41[4] = self;
  v41[5] = buf;
  v41[6] = v49;
  v41[7] = v45;
  v41[8] = v47;
  objc_copyWeak(&v42, &location);
  if (v24)
  {
    objc_setProperty_nonatomic_copy(v24, v40, v41, 424);
  }

  [(FCOperation *)self associateChildOperation:v24];
  [v24 start];
  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(buf, 8);
}

void __47__FCCKMultiFeedQueryOperation_performOperation__block_invoke(void *a1, void *a2)
{
  v11 = a2;
  v4 = [v11 recordType];
  v5 = [v4 isEqualToString:@"Results"];

  if (v5)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
  }

  else
  {
    v6 = [v11 recordType];
    v7 = [v6 isEqualToString:@"Tag"];

    if (v7)
    {
      v8 = a1[5];
    }

    else
    {
      v9 = [v11 recordType];
      v10 = [v9 isEqualToString:@"Issue"];

      if (v10)
      {
        v8 = a1[6];
      }

      else
      {
        v8 = a1[7];
      }
    }

    [*(*(v8 + 8) + 40) addObject:v11];
  }
}

void __47__FCCKMultiFeedQueryOperation_performOperation__block_invoke_2(void *a1, void *a2, void *a3)
{
  v189 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEBUG))
  {
    v110 = a1[4];
    v111 = v7;
    v112 = [v110 shortOperationDescription];
    v113 = v6;
    v114 = [*(*(a1[5] + 8) + 40) count];
    v115 = [*(*(a1[6] + 8) + 40) count];
    v116 = *(*(a1[7] + 8) + 40);
    *buf = 138544130;
    v184 = v112;
    v185 = 2048;
    v186 = v114;
    v6 = v113;
    v187 = 2048;
    *v188 = v115;
    *&v188[8] = 2112;
    *&v188[10] = v116;
    _os_log_debug_impl(&dword_1B63EF000, v111, OS_LOG_TYPE_DEBUG, "%{public}@ received response with %lu FeedItemAndArticleRecords, %lu TagRecords and Results record: %@", buf, 0x2Au);
  }

  v145 = a1;
  if (v6)
  {
    v8 = FCErrorForCKError(v6);
    [(FCCKMultiFeedQueryOperation *)a1[4] setResultError:v8];

    goto LABEL_109;
  }

  v9 = *(*(a1[7] + 8) + 40);
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must always have a Results record"];
      *buf = 136315906;
      v184 = "[FCCKMultiFeedQueryOperation performOperation]_block_invoke";
      v185 = 2080;
      v186 = "FCCKMultiFeedQueryOperation.m";
      v187 = 1024;
      *v188 = 147;
      *&v188[4] = 2114;
      *&v188[6] = v117;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      v9 = *(*(a1[7] + 8) + 40);
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = a1[4];
  v11 = *(*(a1[5] + 8) + 40);
  v12 = *(*(a1[6] + 8) + 40);
  v13 = *(*(a1[8] + 8) + 40);
  v14 = v9;
  v139 = v11;
  v15 = v11;
  v140 = v12;
  v143 = v12;
  v141 = v13;
  v142 = v13;
  v150 = v10;
  if (v10)
  {
    v144 = [v14 objectForKeyedSubscript:@"droppedFeeds"];
    if ([v144 unsignedIntegerValue])
    {
      v16 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        [v150 shortOperationDescription];
        v19 = v18 = v14;
        v20 = [v144 unsignedIntegerValue];
        v21 = v5;
        v22 = *(v150 + 376);
        v23 = [v22 count];
        *buf = 138543874;
        v184 = v19;
        v185 = 2048;
        v186 = v20;
        v6 = 0;
        v187 = 2048;
        *v188 = v23;
        _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ %lu of %lu feeds were dropped", buf, 0x20u);

        v5 = v21;
        v14 = v18;
      }
    }

    v137 = v6;
    v156 = [MEMORY[0x1E695DF70] array];
    v24 = [v14 objectForKeyedSubscript:@"reachedMinOrder"];
    v149 = [(FCCKMultiFeedQueryOperation *)v150 _feedRelativeDictionaryFromResultsArray:v24];

    v25 = [v14 objectForKeyedSubscript:@"reachedEnd"];
    v148 = [(FCCKMultiFeedQueryOperation *)v150 _feedRelativeDictionaryFromResultsArray:v25];

    v26 = [v14 objectForKeyedSubscript:@"cursor"];
    v147 = [(FCCKMultiFeedQueryOperation *)v150 _feedRelativeDictionaryFromResultsArray:v26];

    v27 = [v14 objectForKeyedSubscript:@"topOrder"];
    v146 = [(FCCKMultiFeedQueryOperation *)v150 _feedRelativeDictionaryFromResultsArray:v27];

    v136 = v14;
    v28 = [v14 objectForKeyedSubscript:@"feedDropped"];
    v155 = [(FCCKMultiFeedQueryOperation *)v150 _feedRelativeDictionaryFromResultsArray:v28];

    v29 = [MEMORY[0x1E695DF90] dictionary];
    v30 = [MEMORY[0x1E695DF90] dictionary];
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v135 = v15;
    obj = v15;
    v31 = [obj countByEnumeratingWithState:&v163 objects:buf count:16];
    v157 = v30;
    v138 = v5;
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v153 = *v164;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v164 != v153)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v163 + 1) + 8 * i);
          v36 = [v35 objectForKeyedSubscript:@"articleID"];

          if (!v36 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feedItemAndArticle must always have an ArticleID, this is a CloudKit issue please file a radar, record: %@", v35];
            *v175 = 136315906;
            v176 = "[FCCKMultiFeedQueryOperation _processResultsRecord:feedItemAndArticleRecords:tagRecords:issueRecords:]";
            v177 = 2080;
            v178 = "FCCKMultiFeedQueryOperation.m";
            v179 = 1024;
            v180 = 289;
            v181 = 2114;
            v182 = v49;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v175, 0x26u);
          }

          v37 = [v35 objectForKeyedSubscript:@"tagID"];

          if (!v37 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feedItemAndArticle must always have a FeedID (currently named TagID), this is a CloudKit issue please file a radar, record: %@", v35];
            *v175 = 136315906;
            v176 = "[FCCKMultiFeedQueryOperation _processResultsRecord:feedItemAndArticleRecords:tagRecords:issueRecords:]";
            v177 = 2080;
            v178 = "FCCKMultiFeedQueryOperation.m";
            v179 = 1024;
            v180 = 290;
            v181 = 2114;
            v182 = v50;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v175, 0x26u);
          }

          v38 = [v35 objectForKeyedSubscript:@"tagID"];
          v39 = [v29 objectForKeyedSubscript:v38];

          if (!v39)
          {
            v40 = [MEMORY[0x1E695DF70] array];
            [v29 setObject:v40 forKeyedSubscript:v38];
          }

          v41 = [v29 objectForKeyedSubscript:v38];
          [v41 addObject:v35];

          v42 = [v35 objectForKeyedSubscript:@"order"];
          v43 = [v30 objectForKeyedSubscript:v38];
          if (v43)
          {
            v44 = [v30 objectForKeyedSubscript:v38];
            v45 = [v44 fc_smallerNumber:v42];
            v46 = v30;
            v47 = v45;
            [v46 setObject:v45 forKeyedSubscript:v38];
          }

          else
          {
            [v30 setObject:v42 forKeyedSubscript:v38];
          }

          if (v33)
          {
            v48 = [v33 fc_smallerNumber:v42];

            v33 = v48;
          }

          else
          {
            v33 = v42;
          }

          v30 = v157;
        }

        v32 = [obj countByEnumeratingWithState:&v163 objects:buf count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v154 = *(v150 + 376);
    v51 = [v154 countByEnumeratingWithState:&v159 objects:v175 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v160;
      v54 = off_1E7C34000;
      v151 = *v160;
      do
      {
        v55 = 0;
        v152 = v52;
        do
        {
          if (*v160 != v53)
          {
            objc_enumerationMutation(v154);
          }

          v56 = *(*(&v159 + 1) + 8 * v55);
          v57 = objc_alloc_init(v54[21]);
          if (v56)
          {
            v58 = *(v56 + 8);
          }

          else
          {
            v58 = 0;
          }

          v60 = v58;
          if (v57)
          {
            objc_setProperty_nonatomic_copy(v57, v59, v60, 16);
          }

          if (v56)
          {
            v61 = *(v56 + 8);
          }

          else
          {
            v61 = 0;
          }

          v62 = v61;
          v63 = [v155 objectForKeyedSubscript:v62];
          v64 = [v63 BOOLValue];
          if (v57)
          {
            *(v57 + 10) = v64;

            if (*(v57 + 10))
            {
              goto LABEL_90;
            }

            if (v56)
            {
LABEL_49:
              v65 = *(v56 + 8);
              goto LABEL_50;
            }
          }

          else
          {

            if (v56)
            {
              goto LABEL_49;
            }
          }

          v65 = 0;
LABEL_50:
          v66 = v65;
          v67 = [v29 objectForKeyedSubscript:v66];

          if (v56)
          {
            v68 = *(v56 + 8);
          }

          else
          {
            v68 = 0;
          }

          v69 = v68;
          v70 = [v146 objectForKeyedSubscript:v69];

          if (!v70 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"topOrder should never be nil in 15E or later"];
            *v167 = 136315906;
            v168 = "[FCCKMultiFeedQueryOperation _processResultsRecord:feedItemAndArticleRecords:tagRecords:issueRecords:]";
            v169 = 2080;
            v170 = "FCCKMultiFeedQueryOperation.m";
            v171 = 1024;
            v172 = 317;
            v173 = 2114;
            v174 = v97;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v167, 0x26u);
          }

          v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@min.%@", @"order"];
          v72 = [v67 valueForKeyPath:v71];

          if (![v67 count])
          {
            v73 = v70;

            v72 = v73;
          }

          if (v56)
          {
            v74 = *(v56 + 8);
          }

          else
          {
            v74 = 0;
          }

          v75 = v74;
          v77 = [v29 objectForKeyedSubscript:v75];
          if (v57)
          {
            objc_setProperty_nonatomic_copy(v57, v76, v77, 24);
          }

          if (v56)
          {
            v78 = *(v56 + 8);
          }

          else
          {
            v78 = 0;
          }

          v79 = v78;
          v80 = [v148 objectForKeyedSubscript:v79];
          v81 = [v80 BOOLValue];
          if (v57)
          {
            *(v57 + 8) = v81;
          }

          if (v56)
          {
            v82 = *(v56 + 8);
          }

          else
          {
            v82 = 0;
          }

          v83 = v82;
          v84 = [v149 objectForKeyedSubscript:v83];
          v85 = [v84 BOOLValue];
          if (v57)
          {
            *(v57 + 9) = v85;

            v86 = v57[3];
          }

          else
          {

            v86 = 0;
          }

          v87 = v86;
          if ([v87 count])
          {
            v88 = [v72 unsignedLongLongValue];
            if (!v57)
            {
              goto LABEL_72;
            }

LABEL_71:
            v57[4] = v88;
            goto LABEL_72;
          }

          v88 = [v70 unsignedLongLongValue] + 1;
          if (v57)
          {
            goto LABEL_71;
          }

LABEL_72:

          if (v56)
          {
            v89 = *(v56 + 8);
          }

          else
          {
            v89 = 0;
          }

          v90 = v89;
          v91 = [v147 objectForKeyedSubscript:v90];
          v93 = v91;
          if (v57)
          {
            objc_setProperty_nonatomic_copy(v57, v92, v91, 40);

            if (*(v57 + 8) == 1)
            {
              v57[4] = 0;
            }
          }

          else
          {
          }

          v53 = v151;
          if (*(v150 + 400) || !v33)
          {
            v96 = [obj count];
            if (v57)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v94 = [v33 unsignedLongLongValue];
            if (v57)
            {
              if (v94 + 1 < v57[4])
              {
                v95 = v94 + 1;
              }

              else
              {
                v95 = v57[4];
              }

              v57[4] = v95;
              v96 = [obj count];
LABEL_85:
              if (!v96 && (v57[1] & 1) == 0 && (*(v57 + 9) & 1) == 0)
              {
                *(v57 + 4) = 257;
              }

              goto LABEL_89;
            }

            [obj count];
          }

LABEL_89:

          v54 = off_1E7C34000;
          v52 = v152;
LABEL_90:
          [v156 addObject:v57];

          ++v55;
        }

        while (v52 != v55);
        v98 = [v154 countByEnumeratingWithState:&v159 objects:v175 count:16];
        v52 = v98;
      }

      while (v98);
    }

    objc_storeStrong((v150 + 440), v139);
    objc_storeStrong((v150 + 464), v156);
    objc_storeStrong((v150 + 448), v140);
    objc_storeStrong((v150 + 456), v141);

    v6 = v137;
    v5 = v138;
    v15 = v135;
    v14 = v136;
  }

  a1 = v145;
LABEL_109:
  v99 = a1[4];
  if (v99)
  {
    v100 = FCOperationLog;
    if (v99[59])
    {
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
      {
        v101 = v6;
        v102 = v100;
        v103 = [v99 shortOperationDescription];
        WeakRetained = objc_loadWeakRetained(v145 + 9);
        v105 = WeakRetained;
        v106 = v5;
        if (WeakRetained)
        {
          v107 = *(WeakRetained + 54);
        }

        else
        {
          v107 = 0;
        }

        v108 = v107;
        v109 = [v108 firstObject];
        *buf = 138543874;
        v184 = v103;
        v185 = 2114;
        v186 = v101;
        v187 = 2114;
        *v188 = v109;
        _os_log_error_impl(&dword_1B63EF000, v102, OS_LOG_TYPE_ERROR, "%{public}@ query failed with error: %{public}@, request UUID: %{public}@", buf, 0x20u);

        v6 = v101;
        v5 = v106;
      }

      goto LABEL_121;
    }
  }

  else
  {
    v100 = FCOperationLog;
  }

  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    v118 = v6;
    v119 = v100;
    v120 = [v99 shortOperationDescription];
    v121 = objc_loadWeakRetained(v145 + 9);
    v122 = v121;
    v123 = v5;
    if (v121)
    {
      v124 = *(v121 + 54);
    }

    else
    {
      v124 = 0;
    }

    v125 = v124;
    v126 = [v125 firstObject];
    *buf = 138543618;
    v184 = v120;
    v185 = 2114;
    v186 = v126;
    _os_log_impl(&dword_1B63EF000, v119, OS_LOG_TYPE_DEFAULT, "%{public}@ query succeeded with request UUID: %{public}@", buf, 0x16u);

    v5 = v123;
    v6 = v118;
  }

LABEL_121:
  v127 = objc_loadWeakRetained(v145 + 9);
  v128 = v127;
  if (v127)
  {
    v129 = *(v127 + 59);
  }

  else
  {
    v129 = 0;
  }

  v131 = v129;
  v132 = v145[4];
  if (v132)
  {
    objc_setProperty_nonatomic_copy(v132, v130, v131, 432);
  }

  v133 = v145[4];
  if (v133)
  {
    v134 = v133[59];
  }

  else
  {
    v134 = 0;
  }

  [v133 finishedPerformingOperationWithError:v134];
}

- (void)setResultError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 472), a2);
  }
}

- (void)resetForRetry
{
  if (self)
  {
    objc_storeStrong(&self->_resultFeedItemAndArticleRecords, 0);
    objc_storeStrong(&self->_resultTagRecords, 0);
    objc_storeStrong(&self->_resultIssueRecords, 0);
    objc_storeStrong(&self->_resultFeedResponses, 0);
  }

  [(FCCKMultiFeedQueryOperation *)self setResultError:?];
}

- (void)operationWillFinishWithError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = FCOperationLog;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    if (self)
    {
      resultFeedResponses = self->_resultFeedResponses;
    }

    else
    {
      resultFeedResponses = 0;
    }

    v15 = resultFeedResponses;
    v16 = [(NSArray *)v15 description];
    v17 = 138543618;
    v18 = shortOperationDescription;
    v19 = 2112;
    v20 = v16;
    _os_log_debug_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ finished with feed responses: %@", &v17, 0x16u);
  }

  if (self)
  {
    queryCompletionHandler = self->_queryCompletionHandler;
    if (queryCompletionHandler)
    {
      v7 = queryCompletionHandler;
      v8 = self->_resultFeedItemAndArticleRecords;
      v9 = self->_resultFeedResponses;
      v10 = self->_resultTagRecords;
      v11 = self->_resultIssueRecords;
      if (self->_resultError)
      {
        resultError = self->_resultError;
      }

      else
      {
        resultError = errorCopy;
      }

      v7[2](v7, v8, v9, v10, v11, resultError);
    }
  }
}

- (id)_predicateForPerFeedFieldName:(void *)name key:(void *)key defaultValue:
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = a2;
  nameCopy = name;
  keyCopy = key;
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = *(self + 376);
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    v14 = MEMORY[0x1E69E9C10];
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v24 + 1) + 8 * v15) valueForKey:nameCopy];
        if (v16)
        {
          v17 = array;
          v18 = v16;
LABEL_10:
          [v17 addObject:v18];
          goto LABEL_11;
        }

        if (keyCopy)
        {
          v17 = array;
          v18 = keyCopy;
          goto LABEL_10;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "defaultValue"];
          *buf = 136315906;
          v29 = "[FCCKMultiFeedQueryOperation _predicateForPerFeedFieldName:key:defaultValue:]";
          v30 = 2080;
          v31 = "FCCKMultiFeedQueryOperation.m";
          v32 = 1024;
          v33 = 240;
          v34 = 2114;
          v35 = v19;
          _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

LABEL_11:

        ++v15;
      }

      while (v12 != v15);
      v20 = [v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
      v12 = v20;
    }

    while (v20);
  }

  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", array, v23];

  return v21;
}

uint64_t __44__FCCKMultiFeedQueryOperation__requiredKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"reachedMinOrder", @"reachedEnd", @"cursor", @"feedDropped", @"droppedFeeds", @"droppedItems", @"topOrder", @"articleID", @"tagID", @"order", 0}];
  v1 = _MergedGlobals_29;
  _MergedGlobals_29 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_feedRelativeDictionaryFromResultsArray:(uint64_t)array
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 count];
    if (v4 != [*(array + 376) count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"results don't align with feed IDs"];
      *buf = 136315906;
      v13 = "[FCCKMultiFeedQueryOperation _feedRelativeDictionaryFromResultsArray:]";
      v14 = 2080;
      v15 = "FCCKMultiFeedQueryOperation.m";
      v16 = 1024;
      v17 = 361;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([v3 count])
  {
    v6 = *(array + 376);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__FCCKMultiFeedQueryOperation__feedRelativeDictionaryFromResultsArray___block_invoke;
    v9[3] = &unk_1E7C3B400;
    v10 = v3;
    v11 = dictionary;
    [v6 enumerateObjectsUsingBlock:v9];
  }

  return dictionary;
}

void __71__FCCKMultiFeedQueryOperation__feedRelativeDictionaryFromResultsArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) objectAtIndex:a3];
  if (v7)
  {
    v6 = v7[1];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) setObject:v5 forKey:v6];
}

@end