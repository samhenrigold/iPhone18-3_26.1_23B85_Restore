@interface STExecutableIdentityResolutionSession
- (STExecutableIdentityResolutionSession)initWithResolver:(id)resolver cache:(id)cache;
- (id)resolvedIdentityForIdentity:(id)identity;
- (void)dealloc;
- (void)invalidate;
- (void)resolveIdentities:(id)identities;
@end

@implementation STExecutableIdentityResolutionSession

- (STExecutableIdentityResolutionSession)initWithResolver:(id)resolver cache:(id)cache
{
  resolverCopy = resolver;
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = STExecutableIdentityResolutionSession;
  v9 = [(STExecutableIdentityResolutionSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resolver, resolver);
    objc_storeStrong(&v10->_cache, cache);
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = STExecutableIdentityResolutionSession;
  [(STExecutableIdentityResolutionSession *)&v2 dealloc];
}

- (void)resolveIdentities:(id)identities
{
  v31 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  if (self)
  {
    v5 = self->_cache;
    resolver = self->_resolver;
  }

  else
  {
    v5 = 0;
    resolver = 0;
  }

  v7 = resolver;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [identitiesCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(identitiesCopy);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [(STReferenceCountedCache *)v5 cachedObjectForKey:v12];
        if (!v13)
        {
          v13 = [(STExecutableIdentityResolving *)v7 resolvedIdentityForIdentity:v12];
          if (v13)
          {
            [(STReferenceCountedCache *)v5 cacheObject:v13 forKey:v12];
            [(STReferenceCountedCache *)v5 incrementReferenceCountForKey:v12];
          }
        }

        [(STReferenceCountedCache *)v5 incrementReferenceCountForKey:v12];
      }

      v9 = [identitiesCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  if (self)
  {
    cachedIdentities = self->_cachedIdentities;
  }

  else
  {
    cachedIdentities = 0;
  }

  v15 = cachedIdentities;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(STReferenceCountedCache *)v5 decrementReferenceCountForKey:*(*(&v21 + 1) + 8 * j), v21];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v20, identitiesCopy, 32);
  }
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self->_invalidated = 1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    cachedIdentities = self->_cachedIdentities;
  }

  else
  {
    cachedIdentities = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
  }

  v4 = cachedIdentities;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (self)
        {
          cache = self->_cache;
        }

        else
        {
          cache = 0;
        }

        [(STReferenceCountedCache *)cache decrementReferenceCountForKey:*(*(&v12 + 1) + 8 * v8++), v12];
      }

      while (v6 != v8);
      v10 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = v10;
    }

    while (v10);
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v11, 0, 32);
    objc_storeStrong(&self->_resolver, 0);
  }
}

- (id)resolvedIdentityForIdentity:(id)identity
{
  identityCopy = identity;
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v6 = cache;
  v7 = [(STReferenceCountedCache *)v6 cachedObjectForKey:identityCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    if (self)
    {
      resolver = self->_resolver;
    }

    else
    {
      resolver = 0;
    }

    v9 = [(STExecutableIdentityResolving *)resolver resolvedIdentityForIdentity:identityCopy];
  }

  v11 = v9;

  return v11;
}

@end