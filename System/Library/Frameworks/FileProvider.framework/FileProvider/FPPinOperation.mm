@interface FPPinOperation
- (FPPinOperation)initWithItems:(id)items;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
@end

@implementation FPPinOperation

- (FPPinOperation)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = FPPinOperation;
  v6 = [(FPActionOperation *)&v9 initWithProvider:0 action:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
    [(FPActionOperation *)v7 setSourceItemsToPreflight:itemsCopy];
  }

  return v7;
}

- (void)actionMain
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v3)
  {
    v4 = *v33;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (!FPPinningSupportedForItem(*(*(&v32 + 1) + 8 * v5)))
        {
          v15 = FPNotSupportedError();
          [(FPOperation *)self completedWithResult:0 error:v15];

          goto LABEL_18;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v2 = dispatch_group_create();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__26;
  v30[4] = __Block_byref_object_dispose__26;
  v31 = 0;
  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_items;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        dispatch_group_enter(&v2->super);
        v11 = +[FPDaemonConnection sharedConnection];
        itemID = [v10 itemID];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __28__FPPinOperation_actionMain__block_invoke;
        v22[3] = &unk_1E793E080;
        v25 = v30;
        v23 = v6;
        v24 = v2;
        [v11 pinItemWithID:itemID completionHandler:v22];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v7);
  }

  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__FPPinOperation_actionMain__block_invoke_2;
  block[3] = &unk_1E793E0D0;
  v19 = v6;
  selfCopy = self;
  v21 = v30;
  v14 = v6;
  dispatch_group_notify(&v2->super, callbackQueue, block);

  _Block_object_dispose(v30, 8);
LABEL_18:
}

void __28__FPPinOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a3);
    }
  }

  if (v10)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(a1 + 32) addObject:v10];
    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __28__FPPinOperation_actionMain__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v11 + 1) + 8 * v6) isRecursivelyDownloaded])
        {

          v7 = [[FPDownloadOperation alloc] initWithItems:*(a1 + 32)];
          [(FPDownloadOperation *)v7 setRecursively:1];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __28__FPPinOperation_actionMain__block_invoke_3;
          v9[3] = &unk_1E793E0A8;
          v10 = *(a1 + 40);
          [(FPDownloadOperation *)v7 setDownloadCompletionBlock:v9];
          v8 = +[FPItemManager defaultManager];
          [v8 scheduleAction:v7];

          return;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 40) completedWithResult:*(a1 + 32) error:*(*(*(a1 + 48) + 8) + 40)];
}

uint64_t __28__FPPinOperation_actionMain__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (!a3)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }

  return [v5 completedWithResult:a2 error:v3];
}

- (void)presendNotifications
{
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  stitcher2 = [(FPActionOperation *)self stitcher];
  [stitcher2 transformItems:self->_items handler:&__block_literal_global_328];

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];
}

void __38__FPPinOperation_presendNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPinned:1];
  [v2 setInPinnedFolder:1];
  [v2 setCapabilities:{objc_msgSend(v2, "capabilities") & 0xFFFFFFFFEFFFFFFFLL}];
  [v2 setCapabilities:{objc_msgSend(v2, "capabilities") & 0xFFFFFFFFFFFFFFBFLL}];
  [v2 setCapabilities:{objc_msgSend(v2, "capabilities") | 0x8000000}];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItems:resultCopy error:errorCopy];

  v9.receiver = self;
  v9.super_class = FPPinOperation;
  [(FPActionOperation *)&v9 finishWithResult:resultCopy error:errorCopy];
}

@end