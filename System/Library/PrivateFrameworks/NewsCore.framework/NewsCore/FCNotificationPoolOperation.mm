@interface FCNotificationPoolOperation
- (FCNotificationPoolOperation)init;
- (FCNotificationPoolOperation)initWithContext:(id)context contentVariantProvider:(id)provider;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCNotificationPoolOperation

- (FCNotificationPoolOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationPoolOperation init]";
    v10 = 2080;
    v11 = "FCNotificationPoolOperation.m";
    v12 = 1024;
    v13 = 47;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationPoolOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationPoolOperation)initWithContext:(id)context contentVariantProvider:(id)provider
{
  contextCopy = context;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = FCNotificationPoolOperation;
  v9 = [(FCOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_contentVariantProvider, provider);
  }

  return v10;
}

- (void)performOperation
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__FCNotificationPoolOperation_performOperation__block_invoke;
  v13[3] = &unk_1E7C396C0;
  v13[4] = self;
  v3 = [MEMORY[0x1E69B68F8] firstly:v13];
  v4 = zalgo();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__FCNotificationPoolOperation_performOperation__block_invoke_2;
  v12[3] = &unk_1E7C3B298;
  v12[4] = self;
  v5 = [v3 thenOn:v4 then:v12];
  v6 = zalgo();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__FCNotificationPoolOperation_performOperation__block_invoke_3;
  v11[3] = &unk_1E7C3B2C0;
  v11[4] = self;
  v7 = [v5 thenOn:v6 then:v11];
  v8 = zalgo();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__FCNotificationPoolOperation_performOperation__block_invoke_10;
  v10[3] = &unk_1E7C36E50;
  v10[4] = self;
  v9 = [v7 errorOn:v8 error:v10];
}

id __47__FCNotificationPoolOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(v1 + 384) configurationManager];
    v3 = FCCoreConfigurationPromise(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __47__FCNotificationPoolOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = NewsCoreUserDefaults();
  v5 = [v4 BOOLForKey:@"simulate_notification_pool_with_esl"];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = v3;
    if (v6)
    {
      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v9 = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke;
LABEL_6:
      v14 = v9;
      v15 = &unk_1E7C3B310;
      v16 = v6;
      v17 = v7;
      v10 = [v8 initWithResolver:&v12];

      goto LABEL_7;
    }
  }

  else
  {
    v7 = v3;
    if (v6)
    {
      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v9 = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

uint64_t __47__FCNotificationPoolOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 shortOperationDescription];
    v12 = 138543618;
    v13 = v8;
    v14 = 2048;
    v15 = [v4 count];
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will finish with %lu notification items", &v12, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    objc_storeStrong((v9 + 400), a2);
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
  }

  [v10 finishedPerformingOperationWithError:0];

  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  itemHandler = [(FCNotificationPoolOperation *)self itemHandler];

  if (itemHandler)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    if (self)
    {
      resultNotificationItems = self->_resultNotificationItems;
    }

    else
    {
      resultNotificationItems = 0;
    }

    v7 = resultNotificationItems;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          itemHandler2 = [(FCNotificationPoolOperation *)self itemHandler];
          itemHandler2[2](itemHandler2, v12);

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  completionHandler = [(FCNotificationPoolOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(FCNotificationPoolOperation *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }
}

void __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_2;
  v42[3] = &unk_1E7C3C728;
  v7 = *(a1 + 40);
  v42[4] = *(a1 + 32);
  v43 = v7;
  v8 = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_2(v42);
  if ([v8 count])
  {
    v9 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 shortOperationDescription];
      *buf = 138543618;
      v45 = v12;
      v46 = 2114;
      v47 = v8;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch from notification item list IDs: %{public}@", buf, 0x16u);
    }

    v13 = objc_alloc_init(FCCKBatchedMultiFetchQueryOperation);
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 384);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 internalContentContext];
    v17 = [v16 contentDatabase];
    [(FCCKBatchedMultiFetchQueryOperation *)v13 setDatabase:v17];

    v18 = +[FCEdgeCacheHint edgeCacheHintForNotificationPool];
    v20 = v18;
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v19, v18, 424);

      objc_storeStrong(&v13->_recordIDs, v8);
      v13->_maxBatchSize = 1;
    }

    else
    {
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_24;
    v39[3] = &unk_1E7C36D40;
    v39[4] = *(a1 + 32);
    v21 = [MEMORY[0x1E695DEC8] fc_array:v39];
    [(FCCKBatchedMultiFetchQueryOperation *)v13 setRecordSpecs:v21];

    v22 = objc_opt_new();
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_2_29;
    newValue[3] = &unk_1E7C36D68;
    v24 = v22;
    v38 = v24;
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v23, newValue, 448);
    }

    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_3_31;
    v32 = &unk_1E7C3C750;
    v25 = v6;
    v26 = *(a1 + 32);
    v33 = v24;
    v34 = v26;
    v35 = v25;
    v36 = v5;
    v28 = v24;
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v27, &v29, 464);
    }

    [*(a1 + 32) associateChildOperation:{v13, v29, v30, v31, v32}];
    [(FCOperation *)v13 start];
  }

  else
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_5;
    v40[3] = &unk_1E7C37BC0;
    v40[4] = *(a1 + 32);
    v41 = v5;
    __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_5(v40);
  }
}

id __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 392);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 preferredContentVariant];
  if (v4 == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 40) paidNotificationItemListIDs];
      goto LABEL_10;
    }
  }

  else
  {
    if (v4)
    {
      goto LABEL_10;
    }

    if (objc_opt_respondsToSelector())
    {
      v4 = [*(a1 + 40) freeNotificationItemListIDs];
      goto LABEL_10;
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_5(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will end early because there are no notification item list IDs", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_24(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, @"NotificationItemList", 16);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 384);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 internalContentContext];
  v10 = [v9 notificationItemListRecordSource];
  v12 = [v10 desiredKeys];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v11, v12, 24);
  }

  v39[0] = @"notificationItemIDs";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v13, v14, 32);
  }

  [v3 addObject:v6];
  v15 = objc_opt_new();
  v17 = v15;
  if (v15)
  {
    objc_setProperty_nonatomic_copy(v15, v16, @"NotificationItem", 16);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 384);
  }

  else
  {
    v19 = 0;
  }

  v20 = [v19 internalContentContext];
  v21 = [v20 notificationItemRecordSource];
  v23 = [v21 desiredKeys];
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v22, v23, 24);
  }

  v38 = @"articleID";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v24, v25, 32);
  }

  [v3 addObject:v17];
  v26 = objc_opt_new();
  v28 = v26;
  if (v26)
  {
    objc_setProperty_nonatomic_copy(v26, v27, @"Article", 16);
  }

  v29 = MEMORY[0x1E69B6E30];
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(v30 + 384);
  }

  else
  {
    v31 = 0;
  }

  v32 = [v31 internalContentContext];
  v33 = [v32 articleRecordSource];
  v34 = [v29 keysForArticleRecordWithRecordSource:v33];
  v36 = v34;
  if (v28)
  {
    objc_setProperty_nonatomic_copy(v28, v35, v34, 24);

    objc_setProperty_nonatomic_copy(v28, v37, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v28];
}

void __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_3_31(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = [*(a1 + 32) readOnlyArray];
    v7 = [v6 fc_dictionaryWithKeyBlock:&__block_literal_global_36_0];
    v8 = [v6 fc_dictionaryWithKeyBlock:&__block_literal_global_38_1];
    v42 = v6;
    v9 = [v6 fc_arrayOfObjectsPassingTest:&__block_literal_global_41_0];
    v47 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v9;
    v45 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (!v45)
    {
      goto LABEL_31;
    }

    v44 = *v59;
    v49 = v7;
    v50 = v8;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v10;
        v11 = *(*(&v58 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        if (v12)
        {
          v12 = v12[48];
        }

        v13 = v12;
        v14 = [v13 internalContentContext];
        v15 = [v14 notificationItemListRecordSource];
        v16 = [v15 recordFromCKRecord:v11];

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v48 = v16;
        v51 = [v16 notificationItemIDs];
        v8 = v50;
        v53 = [v51 countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v53)
        {
          v52 = *v55;
          do
          {
            v17 = 0;
            do
            {
              if (*v55 != v52)
              {
                objc_enumerationMutation(v51);
              }

              v18 = [v8 objectForKeyedSubscript:*(*(&v54 + 1) + 8 * v17)];
              v19 = *(a1 + 40);
              if (v19)
              {
                v20 = *(v19 + 384);
              }

              else
              {
                v20 = 0;
              }

              v21 = [v20 internalContentContext];
              v22 = [v21 notificationItemRecordSource];
              v23 = [v22 recordFromCKRecord:v18];

              v24 = [v23 articleID];

              if (v24)
              {
                v25 = [v23 articleID];
                v26 = [v7 objectForKeyedSubscript:v25];

                v27 = *(a1 + 40);
                v28 = v26;
                v29 = v28;
                v30 = 0;
                v31 = v28;
                if (v27 && v28)
                {
                  v32 = a1;
                  v33 = MEMORY[0x1E69B6E30];
                  v34 = *(v27 + 384);
                  v35 = [v34 contentStoreFrontID];
                  v36 = [*(v27 + 384) internalContentContext];
                  v37 = [v36 articleRecordSource];
                  v30 = [v33 feedItemFromCKRecord:v29 storefrontID:v35 recordSource:v37];

                  if (v30)
                  {
                    v38 = objc_alloc(MEMORY[0x1E69B6EC8]);
                    v39 = [v48 notificationSource];
                    v40 = [v48 algoID];
                    v31 = [v38 initWithRecord:v23 feedItem:v30 source:v39 algoID:v40];

                    [v47 addObject:v31];
                    a1 = v32;
                    v7 = v49;
                    v8 = v50;
                    goto LABEL_22;
                  }

                  a1 = v32;
                  v7 = v49;
                  v8 = v50;
                }

                else
                {
LABEL_22:
                }
              }

              ++v17;
            }

            while (v53 != v17);
            v41 = [v51 countByEnumeratingWithState:&v54 objects:v68 count:16];
            v53 = v41;
          }

          while (v41);
        }

        v10 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (!v45)
      {
LABEL_31:

        (*(*(a1 + 56) + 16))();
        v5 = v42;
        v4 = 0;
        goto LABEL_32;
      }
    }
  }

  v62 = MEMORY[0x1E69E9820];
  v63 = 3221225472;
  v64 = __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_4_32;
  v65 = &unk_1E7C37778;
  v67 = *(a1 + 48);
  v66 = v4;
  v67[2](v67, v66);

  v5 = v67;
LABEL_32:
}

id __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_5_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recordType];
  if ([v3 isEqualToString:@"Article"])
  {
    v4 = [v2 recordID];
    v5 = [v4 recordName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recordType];
  if ([v3 isEqualToString:@"NotificationItem"])
  {
    v4 = [v2 recordID];
    v5 = [v4 recordName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __74__FCNotificationPoolOperation__promiseNotificationItemsWithConfiguration___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"NotificationItemList"];

  return v3;
}

void __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 shortOperationDescription];
    *buf = 138543362;
    v33 = v10;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ will simulate notification pool using global ESL inventory", buf, 0xCu);
  }

  v11 = [FCGlobalCuratedESLArticlesOperation alloc];
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 384);
    v14 = *(v12 + 392);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = *(a1 + 40);
  v16 = v13;
  v17 = [(FCGlobalCuratedESLArticlesOperation *)v11 initWithContext:v16 configuration:v15 contentVariantProvider:v14];

  v18 = objc_opt_new();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_47;
  v30[3] = &unk_1E7C3C778;
  v19 = v18;
  v31 = v19;
  [(FCGlobalCuratedESLArticlesOperation *)v17 setFeedItemHandler:v30];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_2;
  v26 = &unk_1E7C3C7C8;
  v27 = v19;
  v28 = v6;
  v29 = v5;
  v20 = v5;
  v21 = v19;
  v22 = v6;
  [(FCGlobalCuratedESLArticlesOperation *)v17 setCompletionHandler:&v23];
  [*(a1 + 32) associateChildOperation:{v17, v23, v24, v25, v26}];
  [(FCOperation *)v17 start];
}

void __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_3;
    v14 = &unk_1E7C37778;
    v16 = *(a1 + 40);
    v15 = v3;
    v16[2](v16, v15);

    v4 = v16;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = [*(a1 + 32) readOnlyArray];
    v7 = [v6 fc_subarrayWithMaxCount:2000];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_4;
    v9[3] = &unk_1E7C3C7A0;
    v10 = v5;
    v4 = v5;
    v8 = [v7 fc_arrayByTransformingWithBlock:v9];

    (*(*(a1 + 48) + 16))();
  }
}

id __90__FCNotificationPoolOperation__promiseSimulatedNotificationItemsFromESLWithConfiguration___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B6EC8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = FCRandomNotificationItemCloudKitID();
  v7 = [v4 articleID];
  v8 = [v4 clusterID];
  LODWORD(v12) = 0;
  LODWORD(v11) = 7;
  v9 = [v5 initWithIdentifier:v6 canonicalID:v7 clusterID:v8 notabilityScores:*(a1 + 32) suppressIfFollowingTagIDs:MEMORY[0x1E695E0F0] targetMinNewsVersion:0 targetDeviceTypes:v11 feedItem:v4 source:v12 algoID:@"client_simulation"];

  return v9;
}

@end