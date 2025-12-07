@interface MCMChildParentMapCache
- (MCMChildParentMapCache)initWithDB:(id)b queue:(id)queue;
- (id)childBundleIdentifiersForParentIdentifier:(id)identifier;
- (id)parentIdentifierForChildIdentifier:(id)identifier;
- (void)codeSigningDB:(id)b addChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier;
- (void)codeSigningDB:(id)b removeParentIdentifier:(id)identifier;
@end

@implementation MCMChildParentMapCache

- (void)codeSigningDB:(id)b removeParentIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  cache = [(MCMChildParentMapCache *)self cache];
  v8 = [cache countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(cache);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        cache2 = [(MCMChildParentMapCache *)self cache];
        v14 = [cache2 objectForKeyedSubscript:v12];

        if ([v14 isEqualToString:identifierCopy])
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [cache countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v9);
  }

  cache3 = [(MCMChildParentMapCache *)self cache];
  allObjects = [v6 allObjects];
  [cache3 removeObjectsForKeys:allObjects];
}

- (void)codeSigningDB:(id)b addChildIdentifier:(id)identifier forParentIdentifier:(id)parentIdentifier
{
  parentIdentifierCopy = parentIdentifier;
  identifierCopy = identifier;
  cache = [(MCMChildParentMapCache *)self cache];
  [cache setObject:parentIdentifierCopy forKeyedSubscript:identifierCopy];
}

- (id)parentIdentifierForChildIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(MCMChildParentMapCache *)selfCopy cache];
  v7 = [cache objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)childBundleIdentifiersForParentIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  cache = [(MCMChildParentMapCache *)selfCopy cache];
  v8 = [cache countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(cache);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        cache2 = [(MCMChildParentMapCache *)selfCopy cache];
        v13 = [cache2 objectForKeyedSubscript:v11];

        if ([v13 isEqualToString:identifierCopy])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [cache countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v8);
  }

  v14 = [v6 copy];
  objc_sync_exit(selfCopy);

  return v14;
}

- (MCMChildParentMapCache)initWithDB:(id)b queue:(id)queue
{
  v16 = *MEMORY[0x1E69E9840];
  bCopy = b;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = MCMChildParentMapCache;
  v9 = [(MCMChildParentMapCache *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_db, b);
    [bCopy setPeerageDelegate:v10];
    objc_storeStrong(&v10->_queue, queue);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__MCMChildParentMapCache_initWithDB_queue___block_invoke;
    block[3] = &unk_1E86B0CC8;
    v13 = v10;
    v14 = bCopy;
    dispatch_sync(queueCopy, block);
  }

  return v10;
}

void __43__MCMChildParentMapCache_initWithDB_queue___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v8[0] = 0;
  v3 = [v2 childParentMapWithError:v8];
  v4 = v8[0];
  v5 = [v3 mutableCopy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;
}

@end