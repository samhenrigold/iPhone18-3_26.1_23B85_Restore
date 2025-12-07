@interface NSOperationQueue(HMFOperation)
- (void)cancelAllOperationsWithError:()HMFOperation;
@end

@implementation NSOperationQueue(HMFOperation)

- (void)cancelAllOperationsWithError:()HMFOperation
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  operations = [self operations];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [operations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(operations);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 cancelWithError:v4];
        }

        else
        {
          [v10 cancel];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [operations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end