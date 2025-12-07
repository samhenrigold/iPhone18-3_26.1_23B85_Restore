@interface STReferenceCountedCache
- (STReferenceCountedCache)init;
- (id)_referenceCountForKey:(id *)result;
- (id)cachedObjectForKey:(id)key;
- (void)cacheObject:(id)object forKey:(id)key;
- (void)clearObjectForKey:(id)key;
- (void)decrementReferenceCountForKey:(id)key;
- (void)incrementReferenceCountForKey:(id)key;
@end

@implementation STReferenceCountedCache

- (STReferenceCountedCache)init
{
  v8.receiver = self;
  v8.super_class = STReferenceCountedCache;
  v2 = [(STReferenceCountedCache *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    referenceCounts = v2->_referenceCounts;
    v2->_referenceCounts = dictionary2;
  }

  return v2;
}

- (void)cacheObject:(id)object forKey:(id)key
{
  if (self)
  {
    self = self->_cache;
  }

  [(STReferenceCountedCache *)self setObject:object forKey:key];
}

- (id)cachedObjectForKey:(id)key
{
  if (self)
  {
    self = self->_cache;
  }

  return [(STReferenceCountedCache *)self objectForKey:key];
}

- (void)clearObjectForKey:(id)key
{
  if (self)
  {
    [(NSMutableDictionary *)self->_cache removeObjectForKey:key];
    referenceCounts = self->_referenceCounts;
  }

  else
  {
    [0 removeObjectForKey:key];
    referenceCounts = 0;
  }

  [(NSMutableDictionary *)referenceCounts removeObjectForKey:key];
}

- (void)incrementReferenceCountForKey:(id)key
{
  keyCopy = key;
  v4 = [(STReferenceCountedCache *)self cachedObjectForKey:?];

  if (v4)
  {
    v5 = [(STReferenceCountedCache *)&self->super.isa _referenceCountForKey:keyCopy];
    if (self)
    {
      referenceCounts = self->_referenceCounts;
    }

    else
    {
      referenceCounts = 0;
    }

    v7 = MEMORY[0x277CCABB0];
    v8 = referenceCounts;
    v9 = [v7 numberWithInteger:v5 + 1];
    [(NSMutableDictionary *)v8 setObject:v9 forKey:keyCopy];
  }
}

- (id)_referenceCountForKey:(id *)result
{
  if (result)
  {
    v2 = [result[2] objectForKey:a2];
    integerValue = [v2 integerValue];

    return integerValue;
  }

  return result;
}

- (void)decrementReferenceCountForKey:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [(STReferenceCountedCache *)self cachedObjectForKey:?];

  if (v4)
  {
    v5 = [(STReferenceCountedCache *)&self->super.isa _referenceCountForKey:keyCopy];
    if (v5 < 2)
    {
      v11 = self ? self->_referenceCounts : 0;
      [(NSMutableDictionary *)v11 removeObjectForKey:keyCopy];
    }

    else
    {
      v6 = v5 - 1;
      v7 = self ? self->_referenceCounts : 0;
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      v10 = [v8 numberWithInteger:v6];
      [(NSMutableDictionary *)v9 setObject:v10 forKey:keyCopy];
    }

    if (self)
    {
      v12 = self->_cache;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      allKeys = [(NSMutableDictionary *)v12 allKeys];
      v14 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(allKeys);
            }

            v18 = *(*(&v20 + 1) + 8 * i);
            if (![(STReferenceCountedCache *)&self->super.isa _referenceCountForKey:v18])
            {
              [(NSMutableDictionary *)v12 removeObjectForKey:v18];
            }
          }

          v15 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v15);
      }
    }
  }
}

@end