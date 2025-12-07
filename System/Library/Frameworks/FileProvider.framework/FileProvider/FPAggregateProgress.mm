@interface FPAggregateProgress
- (void)addChild:(id)child;
- (void)cancel;
- (void)startReportingProgress;
@end

@implementation FPAggregateProgress

- (void)addChild:(id)child
{
  childCopy = child;
  if ([(FPAggregateProgress *)self totalUnitCount]&& [(FPAggregateProgress *)self totalUnitCount])
  {
    [(FPAggregateProgress *)a2 addChild:?];
  }

  if ([(FPAggregateProgress *)self isCancelled])
  {
    [childCopy cancel];
  }

  else
  {
    childProgresses = self->_childProgresses;
    v6 = childCopy;
    if (!childProgresses)
    {
      v7 = objc_opt_new();
      v8 = self->_childProgresses;
      self->_childProgresses = v7;

      v6 = childCopy;
      childProgresses = self->_childProgresses;
    }

    [(NSMutableArray *)childProgresses addObject:v6];
  }
}

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_childProgresses;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = FPAggregateProgress;
  [(FPAggregateProgress *)&v8 cancel];
}

- (void)startReportingProgress
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(FPAggregateProgress *)self totalUnitCount]<= 0 && ([(FPAggregateProgress *)self isCancelled]& 1) == 0)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    childProgresses = self->_childProgresses;
    v4 = 0;
    v5 = [(NSMutableArray *)childProgresses countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v5)
    {
      v6 = *v28;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(childProgresses);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          if (![v8 totalUnitCount])
          {
            v21 = 0;
            v22 = &v21;
            v23 = 0x3032000000;
            v24 = __Block_byref_object_copy__8;
            v25 = __Block_byref_object_dispose__8;
            v26 = 0;
            v13 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v8 path:"totalUnitCount"];
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __45__FPAggregateProgress_startReportingProgress__block_invoke;
            v20[3] = &unk_1E793B820;
            v20[5] = self;
            v20[6] = &v21;
            v20[4] = v8;
            v14 = [v13 addObserverBlock:v20];
            v15 = v22[5];
            v22[5] = v14;

            _Block_object_dispose(&v21, 8);
            goto LABEL_20;
          }

          v4 += [v8 totalUnitCount];
        }

        v5 = [(NSMutableArray *)childProgresses countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [(FPAggregateProgress *)self setTotalUnitCount:v4];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_childProgresses;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v31 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          -[FPAggregateProgress addChild:withPendingUnitCount:](self, "addChild:withPendingUnitCount:", *(*(&v16 + 1) + 8 * j), [*(*(&v16 + 1) + 8 * j) totalUnitCount]);
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v31 count:16];
      }

      while (v10);
    }

    childProgresses = self->_childProgresses;
    self->_childProgresses = 0;
LABEL_20:
  }
}

uint64_t __45__FPAggregateProgress_startReportingProgress__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) totalUnitCount];
  if (result >= 1)
  {
    [*(*(*(a1 + 48) + 8) + 40) finishObserving];
    v3 = *(a1 + 40);

    return [v3 startReportingProgress];
  }

  return result;
}

- (void)addChild:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPAggregateProgress.m" lineNumber:20 description:@"addChild: method should only be invoked while progress is indeterminate"];
}

@end