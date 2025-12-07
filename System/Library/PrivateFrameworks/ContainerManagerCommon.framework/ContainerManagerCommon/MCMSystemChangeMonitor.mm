@interface MCMSystemChangeMonitor
- (MCMSystemChangeMonitor)initWithQueue:(id)queue flushables:(id)flushables;
- (void)userIdentityCache:(id)cache didAddUserIdentity:(id)identity;
- (void)userIdentityCache:(id)cache didInvalidateUserIdentity:(id)identity;
@end

@implementation MCMSystemChangeMonitor

- (void)userIdentityCache:(id)cache didAddUserIdentity:(id)identity
{
  v14 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  identityCopy = identity;
  queue = [(MCMSystemChangeMonitor *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__MCMSystemChangeMonitor_userIdentityCache_didAddUserIdentity___block_invoke;
  v11[3] = &unk_1E86B0898;
  v11[4] = self;
  v12 = identityCopy;
  v13 = cacheCopy;
  v9 = cacheCopy;
  v10 = identityCopy;
  dispatch_async(queue, v11);
}

void __63__MCMSystemChangeMonitor_userIdentityCache_didAddUserIdentity___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) flushables];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if ([v7 conformsToProtocol:&unk_1F5A8B818])
        {
          [v7 didAddUserIdentity:*(a1 + 40)];
        }

        else
        {
          [v7 flush];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = [*(a1 + 48) libraryRepairForUserIdentity:*(a1 + 40)];
  v13 = 0;
  v9 = [v8 createPathsIfNecessaryWithError:&v13];
  v10 = v13;
  if ((v9 & 1) == 0)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      *buf = 138412546;
      v15 = v12;
      v16 = 2114;
      v17 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed creating working directories for %@: %{public}@", buf, 0x16u);
    }
  }
}

- (void)userIdentityCache:(id)cache didInvalidateUserIdentity:(id)identity
{
  v10 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  queue = [(MCMSystemChangeMonitor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MCMSystemChangeMonitor_userIdentityCache_didInvalidateUserIdentity___block_invoke;
  block[3] = &unk_1E86B0CC8;
  block[4] = self;
  v9 = identityCopy;
  v7 = identityCopy;
  dispatch_async(queue, block);
}

void __70__MCMSystemChangeMonitor_userIdentityCache_didInvalidateUserIdentity___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) flushables];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 conformsToProtocol:&unk_1F5A8B818])
        {
          [v7 didInvalidateUserIdentity:*(a1 + 40)];
        }

        else
        {
          [v7 flush];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }
}

- (MCMSystemChangeMonitor)initWithQueue:(id)queue flushables:(id)flushables
{
  v13 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  flushablesCopy = flushables;
  v12.receiver = self;
  v12.super_class = MCMSystemChangeMonitor;
  v9 = [(MCMSystemChangeMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_flushables, flushables);
  }

  return v10;
}

@end