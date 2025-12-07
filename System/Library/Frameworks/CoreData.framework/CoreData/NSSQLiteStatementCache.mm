@interface NSSQLiteStatementCache
- (CFMutableDictionaryRef)createCorrelationCacheDictionary;
- (NSSQLiteStatementCache)initWithEntity:(id)entity;
- (void)_clearSaveGeneratedCachedStatements;
- (void)cacheBatchInsertStatement:(void *)result;
- (void)cacheCorrelationDeleteStatement:(void *)key forRelationship:;
- (void)cacheCorrelationInsertStatement:(void *)key forRelationship:;
- (void)cacheCorrelationMasterReorderStatement:(void *)key forRelationship:;
- (void)cacheCorrelationReorderStatement:(void *)key forRelationship:;
- (void)cacheDeletionStatement:(void *)result;
- (void)cacheFaultingStatement:(uint64_t)statement andFetchRequest:(void *)request forRelationship:;
- (void)cacheFaultingStatement:(void *)result;
- (void)cacheInsertStatement:(void *)result;
- (void)clearCachedStatements;
- (void)dealloc;
- (void)insertOrReplaceStatement:(void *)key forRelationship:(CFDictionaryRef)theDict inDictionary:;
@end

@implementation NSSQLiteStatementCache

- (void)_clearSaveGeneratedCachedStatements
{
  v57 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 16))
    {
      [(NSSQLiteStatementCache *)self cacheInsertStatement:?];
    }

    if (*(self + 24))
    {
      [(NSSQLiteStatementCache *)self cacheBatchInsertStatement:?];
    }

    if (*(self + 32))
    {
      [(NSSQLiteStatementCache *)self cacheDeletionStatement:?];
    }

    v2 = *(self + 56);
    if (v2)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      allValues = [v2 allValues];
      v4 = [allValues countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v49;
        do
        {
          v7 = 0;
          do
          {
            if (*v49 != v6)
            {
              objc_enumerationMutation(allValues);
            }

            [(NSSQLiteStatement *)*(*(&v48 + 1) + 8 * v7++) clearCaches:?];
          }

          while (v5 != v7);
          v5 = [allValues countByEnumeratingWithState:&v48 objects:v56 count:16];
        }

        while (v5);
      }

      CFDictionaryRemoveAllValues(*(self + 56));
    }

    v8 = *(self + 72);
    if (v8)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      allValues2 = [v8 allValues];
      v10 = [allValues2 countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v45;
        do
        {
          v13 = 0;
          do
          {
            if (*v45 != v12)
            {
              objc_enumerationMutation(allValues2);
            }

            [(NSSQLiteStatement *)*(*(&v44 + 1) + 8 * v13++) clearCaches:?];
          }

          while (v11 != v13);
          v11 = [allValues2 countByEnumeratingWithState:&v44 objects:v55 count:16];
        }

        while (v11);
      }

      CFDictionaryRemoveAllValues(*(self + 72));
    }

    v14 = *(self + 80);
    if (v14)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      allValues3 = [v14 allValues];
      v16 = [allValues3 countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v41;
        do
        {
          v19 = 0;
          do
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(allValues3);
            }

            [(NSSQLiteStatement *)*(*(&v40 + 1) + 8 * v19++) clearCaches:?];
          }

          while (v17 != v19);
          v17 = [allValues3 countByEnumeratingWithState:&v40 objects:v54 count:16];
        }

        while (v17);
      }

      CFDictionaryRemoveAllValues(*(self + 80));
    }

    v20 = *(self + 88);
    if (v20)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      allValues4 = [v20 allValues];
      v22 = [allValues4 countByEnumeratingWithState:&v36 objects:v53 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        do
        {
          v25 = 0;
          do
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(allValues4);
            }

            [(NSSQLiteStatement *)*(*(&v36 + 1) + 8 * v25++) clearCaches:?];
          }

          while (v23 != v25);
          v23 = [allValues4 countByEnumeratingWithState:&v36 objects:v53 count:16];
        }

        while (v23);
      }

      CFDictionaryRemoveAllValues(*(self + 88));
    }

    v26 = *(self + 64);
    if (v26)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      allValues5 = [v26 allValues];
      v28 = [allValues5 countByEnumeratingWithState:&v32 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v33;
        do
        {
          v31 = 0;
          do
          {
            if (*v33 != v30)
            {
              objc_enumerationMutation(allValues5);
            }

            [(NSSQLiteStatement *)*(*(&v32 + 1) + 8 * v31++) clearCaches:?];
          }

          while (v29 != v31);
          v29 = [allValues5 countByEnumeratingWithState:&v32 objects:v52 count:16];
        }

        while (v29);
      }

      CFDictionaryRemoveAllValues(*(self + 64));
    }
  }
}

- (void)dealloc
{
  [(NSSQLiteStatementCache *)self clearCachedStatements];

  correlationInsertCache = self->_correlationInsertCache;
  if (correlationInsertCache)
  {
    CFRelease(correlationInsertCache);
  }

  correlationMasterReorderCache = self->_correlationMasterReorderCache;
  if (correlationMasterReorderCache)
  {
    CFRelease(correlationMasterReorderCache);
  }

  correlationMasterReorderCachePart2 = self->_correlationMasterReorderCachePart2;
  if (correlationMasterReorderCachePart2)
  {
    CFRelease(correlationMasterReorderCachePart2);
  }

  correlationReorderCache = self->_correlationReorderCache;
  if (correlationReorderCache)
  {
    CFRelease(correlationReorderCache);
  }

  correlationDeleteCache = self->_correlationDeleteCache;
  if (correlationDeleteCache)
  {
    CFRelease(correlationDeleteCache);
  }

  v8.receiver = self;
  v8.super_class = NSSQLiteStatementCache;
  [(NSSQLiteStatementCache *)&v8 dealloc];
}

- (void)clearCachedStatements
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(NSSQLiteStatementCache *)self _clearSaveGeneratedCachedStatements];
    if (*(self + 40))
    {
      [(NSSQLiteStatementCache *)self cacheFaultingStatement:?];
    }

    v2 = *(self + 48);
    if (v2)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v10;
        do
        {
          v6 = 0;
          do
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = [*(self + 48) objectForKey:*(*(&v9 + 1) + 8 * v6)];
            v8 = [v7 count];
            if (v8)
            {
              v8 = [v7 objectAtIndex:0];
            }

            [(NSSQLiteStatement *)v8 clearCaches:?];
            ++v6;
          }

          while (v4 != v6);
          v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v4);
      }

      [*(self + 48) removeAllObjects];
    }
  }
}

- (NSSQLiteStatementCache)initWithEntity:(id)entity
{
  v6.receiver = self;
  v6.super_class = NSSQLiteStatementCache;
  v4 = [(NSSQLiteStatementCache *)&v6 init];
  if (v4)
  {
    v4->_entity = entity;
  }

  return v4;
}

- (void)cacheInsertStatement:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[2];
    if (result != a2)
    {
      [(NSSQLiteStatement *)result clearCaches:?];

      result = a2;
      v3[2] = result;
    }
  }

  return result;
}

- (void)cacheBatchInsertStatement:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[3];
    if (result != a2)
    {
      [(NSSQLiteStatement *)result clearCaches:?];

      result = a2;
      v3[3] = result;
    }
  }

  return result;
}

- (void)cacheDeletionStatement:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[4];
    if (result != a2)
    {
      [(NSSQLiteStatement *)result clearCaches:?];

      result = a2;
      v3[4] = result;
    }
  }

  return result;
}

- (void)cacheFaultingStatement:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[5];
    if (result != a2)
    {
      [(NSSQLiteStatement *)result clearCaches:?];

      result = a2;
      v3[5] = result;
    }
  }

  return result;
}

- (CFMutableDictionaryRef)createCorrelationCacheDictionary
{
  if (result)
  {
    keyCallBacks.version = *MEMORY[0x1E695E9D8];
    *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
    v1 = *(MEMORY[0x1E695E9D8] + 24);
    keyCallBacks.equal = 0;
    keyCallBacks.hash = 0;
    keyCallBacks.copyDescription = v1;
    valueCallBacks.version = *MEMORY[0x1E695E9E8];
    *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
    valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
    valueCallBacks.equal = 0;
    return CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
  }

  return result;
}

- (void)insertOrReplaceStatement:(void *)key forRelationship:(CFDictionaryRef)theDict inDictionary:
{
  if (self)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      [(NSSQLiteStatement *)Value clearCaches:?];
    }

    CFDictionarySetValue(theDict, key, a2);
  }
}

- (void)cacheCorrelationInsertStatement:(void *)key forRelationship:
{
  if (self)
  {
    createCorrelationCacheDictionary = *(self + 7);
    if (!createCorrelationCacheDictionary)
    {
      createCorrelationCacheDictionary = [(NSSQLiteStatementCache *)self createCorrelationCacheDictionary];
      *(self + 7) = createCorrelationCacheDictionary;
    }

    [(NSSQLiteStatementCache *)self insertOrReplaceStatement:a2 forRelationship:key inDictionary:createCorrelationCacheDictionary];
  }
}

- (void)cacheCorrelationMasterReorderStatement:(void *)key forRelationship:
{
  if (self)
  {
    createCorrelationCacheDictionary = *(self + 9);
    if (!createCorrelationCacheDictionary)
    {
      createCorrelationCacheDictionary = [(NSSQLiteStatementCache *)self createCorrelationCacheDictionary];
      *(self + 9) = createCorrelationCacheDictionary;
    }

    [(NSSQLiteStatementCache *)self insertOrReplaceStatement:a2 forRelationship:key inDictionary:createCorrelationCacheDictionary];
  }
}

- (void)cacheCorrelationReorderStatement:(void *)key forRelationship:
{
  if (self)
  {
    createCorrelationCacheDictionary = *(self + 11);
    if (!createCorrelationCacheDictionary)
    {
      createCorrelationCacheDictionary = [(NSSQLiteStatementCache *)self createCorrelationCacheDictionary];
      *(self + 11) = createCorrelationCacheDictionary;
    }

    [(NSSQLiteStatementCache *)self insertOrReplaceStatement:a2 forRelationship:key inDictionary:createCorrelationCacheDictionary];
  }
}

- (void)cacheCorrelationDeleteStatement:(void *)key forRelationship:
{
  if (self)
  {
    createCorrelationCacheDictionary = *(self + 8);
    if (!createCorrelationCacheDictionary)
    {
      createCorrelationCacheDictionary = [(NSSQLiteStatementCache *)self createCorrelationCacheDictionary];
      *(self + 8) = createCorrelationCacheDictionary;
    }

    [(NSSQLiteStatementCache *)self insertOrReplaceStatement:a2 forRelationship:key inDictionary:createCorrelationCacheDictionary];
  }
}

- (void)cacheFaultingStatement:(uint64_t)statement andFetchRequest:(void *)request forRelationship:
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    name = [request name];
    v8 = [*(self + 48) objectForKey:name];
    v9 = [v8 count] < 2 ? 0 : objc_msgSend(v8, "objectAtIndex:", 0);
    if (v9 != a2)
    {
      [(NSSQLiteStatement *)v9 clearCaches:?];
      v10 = *(self + 48);
      if (a2)
      {
        if (!v10)
        {
          *(self + 48) = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v12[0] = a2;
        v12[1] = statement;
        v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v12 count:2];
        [*(self + 48) setObject:v11 forKey:name];
      }

      else
      {

        [v10 removeObjectForKey:name];
      }
    }
  }
}

@end