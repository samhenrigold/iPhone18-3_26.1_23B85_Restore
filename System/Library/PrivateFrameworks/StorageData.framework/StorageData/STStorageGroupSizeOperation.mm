@interface STStorageGroupSizeOperation
+ (id)operationForOperations:(id)operations;
- (void)cancel;
- (void)main;
@end

@implementation STStorageGroupSizeOperation

+ (id)operationForOperations:(id)operations
{
  operationsCopy = operations;
  v4 = objc_alloc_init(STStorageGroupSizeOperation);
  [(STStorageGroupSizeOperation *)v4 setOperations:operationsCopy];

  return v4;
}

- (void)main
{
  v20 = *MEMORY[0x277D85DE8];
  operations = [(STStorageGroupSizeOperation *)self operations];
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  [currentQueue addOperations:operations waitUntilFinished:1];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = operations;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        error = [v12 error];

        if (error)
        {
          error2 = [v12 error];

          v8 = error2;
        }

        v9 += [v12 size];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  [(STStorageSizeOperation *)self setSize:v9];
  [(STStorageOperation *)self setError:v8];
}

- (void)cancel
{
  v14 = *MEMORY[0x277D85DE8];
  operations = [(STStorageGroupSizeOperation *)self operations];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(operations);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = STStorageGroupSizeOperation;
  [(STStorageGroupSizeOperation *)&v8 cancel];
}

@end