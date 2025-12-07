@interface FCCKContentFetchOperation
- (BOOL)validateOperation;
- (FCCKContentFetchOperation)init;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)setDatabase:(uint64_t)database;
- (void)setRecordIDsToETags:(uint64_t)tags;
@end

@implementation FCCKContentFetchOperation

- (FCCKContentFetchOperation)init
{
  v3.receiver = self;
  v3.super_class = FCCKContentFetchOperation;
  result = [(FCOperation *)&v3 init];
  if (result)
  {
    result->_networkEventType = 9;
  }

  return result;
}

- (BOOL)validateOperation
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  if (!self || (v3 = self->_database) == 0 || (recordIDs = selfCopy->_recordIDs, v3, !recordIDs))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid operation"];
      v8 = 136315906;
      v9 = "[FCCKContentFetchOperation validateOperation]";
      v10 = 2080;
      v11 = "FCCKContentFetchOperation.m";
      v12 = 1024;
      v13 = 52;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);

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

  v5 = selfCopy->_database;
  if (v5)
  {
    LOBYTE(selfCopy) = selfCopy->_recordIDs != 0;
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy;
}

- (void)performOperation
{
  location[16] = *MEMORY[0x1E69E9840];
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke;
  v88[3] = &unk_1E7C36EC8;
  v88[4] = self;
  v64 = [MEMORY[0x1E695DF20] fc_dictionary:v88];
  if (self)
  {
    database = self->_database;
  }

  else
  {
    database = 0;
  }

  if ([(FCCKContentDatabase *)database shouldUseCloudd])
  {
    v3 = objc_alloc(MEMORY[0x1E695B938]);
    if (self)
    {
      newValue = [v3 initWithRecordIDs:self->_recordIDs];
      [newValue setRecordIDsToETags:self->_recordIDsToETags];
      [newValue setDesiredKeys:self->_desiredKeys];
      selfCopy = self;
      perRecordCompletionBlock = self->_perRecordCompletionBlock;
    }

    else
    {
      newValue = [v3 initWithRecordIDs:0];
      [newValue setRecordIDsToETags:0];
      [newValue setDesiredKeys:0];
      perRecordCompletionBlock = 0;
      selfCopy = 0;
    }

    v6 = selfCopy == 0;
    [newValue setPerRecordCompletionBlock:perRecordCompletionBlock];
    [newValue setAdditionalRequestHTTPHeaders:v65];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_2;
    v87[3] = &unk_1E7C45048;
    v87[4] = self;
    [newValue setPerRecordCompletionBlock:v87];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_4;
    v86[3] = &unk_1E7C39358;
    v86[4] = self;
    [newValue setFetchRecordsCompletionBlock:v86];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_5;
    v85[3] = &unk_1E7C3F4C8;
    v85[4] = self;
    [newValue setRequestCompletedBlock:v85];
    [(FCOperation *)self associateChildOperation:newValue];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = self->_database;
    }

    [(FCCKContentDatabase *)v7 addOperation:newValue];
    goto LABEL_56;
  }

  newValue = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  if (self)
  {
    recordIDs = self->_recordIDs;
  }

  else
  {
    recordIDs = 0;
  }

  obj = recordIDs;
  v69 = [(NSArray *)obj countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v69)
  {
    v67 = *v82;
    do
    {
      v9 = 0;
      do
      {
        if (*v82 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v81 + 1) + 8 * v9);
        if (self)
        {
          v10 = objc_opt_new();
          v11 = objc_opt_new();
          [v10 setRequest:v11];

          v12 = CKCreateGUID();
          request = [v10 request];
          [request setOperationUUID:v12];

          request2 = [v10 request];
          [request2 setType:211];

          v15 = objc_opt_new();
          [v10 setRecordRetrieveRequest:v15];

          v16 = +[FCCKProtocolTranslator sharedInstance];
          v17 = [(FCCKProtocolTranslator *)v16 pRecordIdentifierFromRecordID:v72];
          recordRetrieveRequest = [v10 recordRetrieveRequest];
          [recordRetrieveRequest setRecordIdentifier:v17];

          v19 = [(NSDictionary *)self->_recordIDsToETags objectForKeyedSubscript:v72];
          recordRetrieveRequest2 = [v10 recordRetrieveRequest];
          [recordRetrieveRequest2 setClientVersionETag:v19];

          if (self->_desiredKeys)
          {
            v21 = objc_opt_new();
            recordRetrieveRequest3 = [v10 recordRetrieveRequest];
            [recordRetrieveRequest3 setRequestedFields:v21];

            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v23 = self->_desiredKeys;
            v24 = [(NSArray *)v23 countByEnumeratingWithState:&v89 objects:location count:16];
            if (v24)
            {
              v25 = *v90;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v90 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = *(*(&v89 + 1) + 8 * i);
                  v28 = objc_opt_new();
                  [v28 setName:v27];
                  recordRetrieveRequest4 = [v10 recordRetrieveRequest];
                  requestedFields = [recordRetrieveRequest4 requestedFields];
                  [requestedFields addFields:v28];
                }

                v24 = [(NSArray *)v23 countByEnumeratingWithState:&v89 objects:location count:16];
              }

              while (v24);
            }
          }
        }

        else
        {
          v10 = 0;
        }

        [newValue addObject:v10];
        request3 = [v10 request];
        operationUUID = [request3 operationUUID];
        [dictionary setObject:v72 forKey:operationUUID];

        ++v9;
      }

      while (v9 != v69);
      v33 = [(NSArray *)obj countByEnumeratingWithState:&v81 objects:v93 count:16];
      v69 = v33;
    }

    while (v33);
  }

  v34 = [FCCKDirectRequestOperation alloc];
  if (self)
  {
    v35 = self->_database;
  }

  else
  {
    v35 = 0;
  }

  networkReachability = [(FCCKContentDatabase *)v35 networkReachability];
  v37 = [(FCCKDirectRequestOperation *)v34 initWithNetworkReachability:networkReachability];

  if (v37)
  {
    *(v37 + 408) = 1;
  }

  if (self)
  {
    baseURLForRecordFetch = [(FCCKContentDatabase *)self->_database baseURLForRecordFetch];
    if (v37)
    {
      objc_setProperty_nonatomic_copy(v37, v38, baseURLForRecordFetch, 392);
    }

    v40 = self->_database;
  }

  else
  {
    baseURLForRecordFetch2 = [0 baseURLForRecordFetch];
    if (v37)
    {
      objc_setProperty_nonatomic_copy(v37, v59, baseURLForRecordFetch2, 392);
    }

    v40 = 0;
  }

  containerIdentifier = [(FCCKContentDatabase *)v40 containerIdentifier];
  if (v37)
  {
    objc_setProperty_nonatomic_copy(v37, v41, containerIdentifier, 400);
  }

  if (self)
  {
    isProductionEnvironment = [(FCCKContentDatabase *)self->_database isProductionEnvironment];
    if (v37)
    {
      *(v37 + 376) = isProductionEnvironment;
      objc_setProperty_nonatomic_copy(v37, v44, newValue, 384);
      objc_setProperty_nonatomic_copy(v37, v45, v65, 416);
    }

    selfCopy2 = self;
    v47 = self->_database;
  }

  else
  {
    isProductionEnvironment2 = [0 isProductionEnvironment];
    if (v37)
    {
      *(v37 + 376) = isProductionEnvironment2;
      objc_setProperty_nonatomic_copy(v37, v62, newValue, 384);
      objc_setProperty_nonatomic_copy(v37, v63, v65, 416);
    }

    v47 = 0;
    selfCopy2 = 0;
  }

  v48 = selfCopy2 == 0;
  networkBehaviorMonitor = [(FCCKContentDatabase *)v47 networkBehaviorMonitor];
  [(FCCKDirectRequestOperation *)v37 setNetworkBehaviorMonitor:networkBehaviorMonitor];

  if (v48)
  {
    if (!v37)
    {
      goto LABEL_48;
    }

    optimizationPolicy = 0;
    *(v37 + 380) = 0;
    goto LABEL_47;
  }

  if (v37)
  {
    *(v37 + 380) = self->_networkEventType;
    optimizationPolicy = self->_optimizationPolicy;
LABEL_47:
    *(v37 + 440) = optimizationPolicy;
    objc_setProperty_nonatomic_copy(v37, v50, &__block_literal_global_23_0, 448);
  }

LABEL_48:
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_8;
  v78[3] = &unk_1E7C47AD0;
  v54 = dictionary2;
  v79 = v54;
  selfCopy3 = self;
  if (v37)
  {
    objc_setProperty_nonatomic_copy(v37, v53, v78, 456);
  }

  objc_initWeak(location, v37);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __45__FCCKContentFetchOperation_performOperation__block_invoke_10;
  v73[3] = &unk_1E7C47AF8;
  v55 = dictionary;
  v74 = v55;
  selfCopy4 = self;
  v56 = v54;
  v76 = v56;
  objc_copyWeak(&v77, location);
  if (v37)
  {
    objc_setProperty_nonatomic_copy(v37, v57, v73, 464);
  }

  [(FCOperation *)self associateChildOperation:v37];
  if ([(FCOperation *)self relativePriority]< 1)
  {
    fc_throttledCKRequestOperationQueue = [MEMORY[0x1E696ADC8] fc_throttledCKRequestOperationQueue];
    [fc_throttledCKRequestOperationQueue addOperation:v37];
  }

  else
  {
    [v37 start];
  }

  objc_destroyWeak(&v77);

  objc_destroyWeak(location);
LABEL_56:
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) relativePriority];
  v5 = 300;
  if (!v4)
  {
    v5 = 200;
  }

  if (v4 == -1)
  {
    v5 = 100;
  }

  v6 = [v3 stringWithFormat:@"%lu", v5];
  [v8 setObject:v6 forKeyedSubscript:@"X-Apple-CloudKit-Request-Priority"];

  v7 = *(a1 + 32);
  if (v7 && *(v7 + 368) == 1)
  {
    [v8 setObject:@"true" forKeyedSubscript:@"X-Apple-Permanent-Asset-URLs"];
  }
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 416);
      if (v10)
      {
        (*(v10 + 16))(v10, v11, v7, v8);
      }
    }
  }
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke_5(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 requestUUID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    if (v6 && (v7 = *(v6 + 432)) != 0)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (v9)
      {
        v9 = v9[54];
      }

      v10 = v9;
      v12 = [v10 arrayByAddingObject:v5];
      v13 = 0;
    }

    else
    {
      v15[0] = v5;
      v13 = 1;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v8 = 0;
      v12 = v10;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      objc_setProperty_nonatomic_copy(v14, v11, v12, 432);
    }

    if ((v13 & 1) == 0)
    {
    }
  }
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[FCCKProtocolTranslator sharedInstance];
  v13 = [(FCCKProtocolTranslator *)v4 recordFromPRecord:v3];

  v5 = v13;
  if (v13)
  {
    v6 = v13;
    v7 = *(a1 + 32);
    v8 = [v6 recordID];
    [v7 setObject:v6 forKey:v8];

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 416);
      if (v10)
      {
        v11 = v10;
        v12 = [v6 recordID];
        (v10)[2](v11, v6, v12, 0);
      }
    }

    v5 = v13;
  }
}

void __45__FCCKContentFetchOperation_performOperation__block_invoke_10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v40 = a3;
  v8 = a4;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v39 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v42;
      do
      {
        v14 = 0;
        do
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v41 + 1) + 8 * v14);
          v16 = *(a1 + 32);
          v17 = [v15 response];
          v18 = [v17 operationUUID];
          v19 = [v16 objectForKey:v18];

          if (v19)
          {
            v20 = [v15 response];
            v21 = [v20 operationUUID];
            v22 = [v40 objectForKey:v21];

            if (v22)
            {
              [v9 setObject:v22 forKey:v19];
              v23 = *(a1 + 40);
              if (v23)
              {
                v24 = *(v23 + 416);
                if (v24)
                {
                  v25 = *(v24 + 16);
                  goto LABEL_12;
                }
              }
            }

            else
            {
              v26 = [*(a1 + 48) objectForKey:v19];

              if (!v26)
              {
                v27 = *(a1 + 40);
                if (v27)
                {
                  v28 = *(v27 + 416);
                  if (v28)
                  {
                    v25 = *(v28 + 16);
LABEL_12:
                    v25();
                  }
                }
              }
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v29 = [v10 countByEnumeratingWithState:&v41 objects:v48 count:16];
        v12 = v29;
      }

      while (v29);
    }

    if ([v9 count])
    {
      v46 = *MEMORY[0x1E695B798];
      v47 = v9;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v31 = [MEMORY[0x1E695B978] errorWithCode:1011 userInfo:v30 format:@"Failed to fetch some records"];
      v8 = [v31 CKClientSuitableError];
    }

    else
    {
      v8 = 0;
    }

    v7 = v39;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v33 = WeakRetained;
  if (WeakRetained)
  {
    v34 = *(WeakRetained + 59);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v45 = v35;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v38 = *(a1 + 40);
  if (v38)
  {
    objc_setProperty_nonatomic_copy(v38, v36, v37, 432);
  }

  [*(a1 + 40) finishedPerformingOperationWithError:v8];
}

- (void)operationWillFinishWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E695B778]];

  if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't return errors from the internal domain"];
    v11 = 136315906;
    v12 = "[FCCKContentFetchOperation operationWillFinishWithError:]";
    v13 = 2080;
    v14 = "FCCKContentFetchOperation.m";
    v15 = 1024;
    v16 = 188;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_10:
    database = 0;
    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_10;
  }

LABEL_4:
  database = self->_database;
LABEL_5:
  [(FCCKContentDatabase *)database maximumRetryAfterForCK];
  v8 = [errorCopy fc_errorWithMaximumRetryAfter:?];

  if (self)
  {
    fetchRecordsCompletionBlock = self->_fetchRecordsCompletionBlock;
    if (fetchRecordsCompletionBlock)
    {
      fetchRecordsCompletionBlock[2](fetchRecordsCompletionBlock, v8);
    }
  }
}

- (void)setDatabase:(uint64_t)database
{
  if (database)
  {
    objc_storeStrong((database + 376), a2);
  }
}

- (void)setRecordIDsToETags:(uint64_t)tags
{
  if (tags)
  {
    objc_storeStrong((tags + 392), a2);
  }
}

@end