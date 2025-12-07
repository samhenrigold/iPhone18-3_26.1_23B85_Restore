@interface FPEvictOperation
- (FPEvictOperation)initWithItems:(id)items;
- (void)actionMain;
@end

@implementation FPEvictOperation

- (FPEvictOperation)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = FPEvictOperation;
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__26;
  v20[4] = __Block_byref_object_dispose__26;
  v21 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_items;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        dispatch_group_enter(v3);
        v8 = +[FPDaemonConnection sharedConnection];
        itemID = [v7 itemID];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __30__FPEvictOperation_actionMain__block_invoke;
        v13[3] = &unk_1E793CA60;
        v15 = v20;
        v14 = v3;
        [v8 evictItemWithID:itemID evictionReason:2 completionHandler:v13];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  callbackQueue = [(FPOperation *)self callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPEvictOperation_actionMain__block_invoke_2;
  block[3] = &unk_1E793AD20;
  block[4] = self;
  block[5] = v20;
  dispatch_group_notify(v3, callbackQueue, block);

  _Block_object_dispose(v20, 8);
}

void __30__FPEvictOperation_actionMain__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

@end