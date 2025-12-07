@interface _HDHealthConceptAuthorizationPromptSession
- (os_unfair_lock_s)requestCount;
- (void)addCompletion:(uint64_t)completion;
- (void)endPromptTransactionWithSuccess:(void *)success error:;
@end

@implementation _HDHealthConceptAuthorizationPromptSession

- (void)endPromptTransactionWithSuccess:(void *)success error:
{
  v35 = *MEMORY[0x277D85DE8];
  successCopy = success;
  if (self)
  {
    v6 = *(self + 40);
    if (v6)
    {
      v22 = _Block_copy(v6);
      v7 = *(self + 40);
      *(self + 40) = 0;

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = *(self + 16);
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            v14 = successCopy;
            if (v13)
            {
              v15 = *(v13 + 8);
              if (v15)
              {
                (*(v15 + 16))(v15, *(v13 + 16), a2, v14);
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v10);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = *(self + 24);
      v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v26;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v24 = successCopy;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v18);
      }

      v23 = successCopy;
      v21 = v22;
      HKDispatchAsyncOnGlobalConcurrentQueue();
    }
  }
}

- (os_unfair_lock_s)requestCount
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 9);
    v2 = [*&v1[4]._os_unfair_lock_opaque count];
    os_unfair_lock_unlock(v1 + 9);
    return v2;
  }

  return result;
}

- (void)addCompletion:(uint64_t)completion
{
  if (completion)
  {
    v3 = a2;
    os_unfair_lock_lock((completion + 36));
    v4 = *(completion + 24);
    v5 = _Block_copy(v3);

    [v4 addObject:v5];

    os_unfair_lock_unlock((completion + 36));
  }
}

@end