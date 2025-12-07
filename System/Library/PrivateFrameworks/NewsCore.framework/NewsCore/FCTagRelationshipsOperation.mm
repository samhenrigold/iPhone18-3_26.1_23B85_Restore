@interface FCTagRelationshipsOperation
- (FCTagRelationshipsOperation)initWithContext:(id)context tag:(id)tag;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCTagRelationshipsOperation

- (FCTagRelationshipsOperation)initWithContext:(id)context tag:(id)tag
{
  contextCopy = context;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = FCTagRelationshipsOperation;
  v9 = [(FCOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    v11 = [tagCopy copy];
    tag = v10->_tag;
    v10->_tag = v11;
  }

  return v10;
}

- (void)performOperation
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = @"relatedChannelTagIDsForOnboarding";
  v4 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v4 contentStoreFrontID];
  v6 = FCCKLocalizedRecordKey(v3, contentStoreFrontID);

  v7 = objc_alloc_init(FCCKContentFetchOperation);
  context = [(FCTagRelationshipsOperation *)self context];
  internalContentContext = [context internalContentContext];
  contentDatabase = [internalContentContext contentDatabase];
  [(FCCKContentFetchOperation *)v7 setDatabase:contentDatabase];

  v11 = objc_alloc(MEMORY[0x1E695BA70]);
  v12 = [(FCTagRelationshipsOperation *)self tag];
  identifier = [v12 identifier];
  v14 = [v11 initWithRecordName:identifier];
  v35[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v15, v16, 384);
  }

  v34[0] = v3;
  v34[1] = v6;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v17, v18, 400);
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__97;
  v32[4] = __Block_byref_object_dispose__97;
  v33 = 0;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __47__FCTagRelationshipsOperation_performOperation__block_invoke;
  newValue[3] = &unk_1E7C39CA8;
  newValue[4] = v32;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v19, newValue, 416);
  }

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __47__FCTagRelationshipsOperation_performOperation__block_invoke_2;
  v26 = &unk_1E7C47A80;
  selfCopy = self;
  v30 = v32;
  v20 = v6;
  v28 = v20;
  v22 = v3;
  v29 = v22;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v21, &v23, 424);
  }

  [(FCOperation *)self associateChildOperation:v7, v23, v24, v25, v26, selfCopy];
  [(FCOperation *)v7 start];

  _Block_object_dispose(v32, 8);
}

void __47__FCTagRelationshipsOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __47__FCTagRelationshipsOperation_performOperation__block_invoke_3;
    v22 = &unk_1E7C36C58;
    v23 = *(a1 + 32);
    v24 = v3;
    [v23 finishedPerformingOperationWithError:v24];
  }

  else
  {
    v5 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:*(a1 + 40)];
    v6 = [v5 count];
    v7 = 40;
    if (!v6)
    {
      v7 = 48;
    }

    v8 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:*(a1 + v7)];

    v9 = [*(a1 + 32) context];
    v10 = [v9 tagController];
    v11 = [v10 fetchOperationForTagsWithIDs:v8];

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __47__FCTagRelationshipsOperation_performOperation__block_invoke_4;
    v16 = &unk_1E7C36CD0;
    v17 = *(a1 + 32);
    v18 = v8;
    v12 = v8;
    [v11 setFetchCompletionBlock:&v13];
    [*(a1 + 32) associateChildOperation:{v11, v13, v14, v15, v16, v17}];
    [v11 start];
  }
}

void __47__FCTagRelationshipsOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status])
  {
    v9 = MEMORY[0x1E69E9820];
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = [v10 error];
    [v4 finishedPerformingOperationWithError:v5];
  }

  else
  {
    v6 = [v3 fetchedObject];
    v7 = [v6 nf_objectsForKeysWithoutMarker:*(a1 + 40)];
    v8 = [[FCTagRelationships alloc] initWithRelatedChannelsForOnboarding:v7];
    [*(a1 + 32) setResultTagRelationships:v8];

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

void __47__FCTagRelationshipsOperation_performOperation__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) error];
  [v1 finishedPerformingOperationWithError:v2];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(FCTagRelationshipsOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(FCTagRelationshipsOperation *)self completionHandler];
    resultTagRelationships = [(FCTagRelationshipsOperation *)self resultTagRelationships];
    (completionHandler2)[2](completionHandler2, resultTagRelationships, errorCopy);
  }
}

@end