@interface _EFMergingObservable
+ (void)subscribeObserver:(id)observer toObservables:(id)observables unless:(id)unless;
@end

@implementation _EFMergingObservable

+ (void)subscribeObserver:(id)observer toObservables:(id)observables unless:(id)unless
{
  v43 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  observablesCopy = observables;
  unlessCopy = unless;
  v7 = objc_alloc_init(EFManualCancelationToken);
  v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(observablesCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = observablesCopy;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v8)
  {
    v9 = *v39;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = +[EFPromise promise];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke;
        v36[3] = &unk_1E8248648;
        v37 = observerCopy;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_2;
        v34[3] = &unk_1E8248580;
        v35 = v12;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_3;
        v32[3] = &unk_1E82485A8;
        v13 = v35;
        v33 = v13;
        v14 = [EFObserver observerWithResultBlock:v36 completionBlock:v34 failureBlock:v32];
        v15 = [v11 subscribe:v14];

        [v25 addObject:v13];
        [(EFManualCancelationToken *)v7 addCancelable:v13];
        [(EFManualCancelationToken *)v7 addCancelable:v15];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

  v16 = [EFFuture join:v25];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_4;
  v29[3] = &unk_1E82484E0;
  v17 = v7;
  v30 = v17;
  v18 = observerCopy;
  v31 = v18;
  [v16 addSuccessBlock:v29];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63___EFMergingObservable_subscribeObserver_toObservables_unless___block_invoke_5;
  v26[3] = &unk_1E8248530;
  v19 = v17;
  v27 = v19;
  v20 = v18;
  v28 = v20;
  [v16 addFailureBlock:v26];
  [unlessCopy addCancelable:v19];
}

@end