@interface NWStatsEntityMapCache
- (NWStatsEntityMapCache)init;
- (id)description;
- (id)entryForUUID:(id)d;
- (id)stateDictionary;
- (void)pruneCache;
- (void)setEntry:(id)entry forUUID:(id)d;
@end

@implementation NWStatsEntityMapCache

- (NWStatsEntityMapCache)init
{
  v6.receiver = self;
  v6.super_class = NWStatsEntityMapCache;
  v2 = [(NWStatsEntityMapCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(v2 + 24) = xmmword_25BA77910;
    *(v2 + 2) = 0xA00000064;
  }

  return v2;
}

- (void)pruneCache
{
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = self->_uuidMap;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_uuidMap objectForKeyedSubscript:v9];
        expiryTime = [v10 expiryTime];
        [expiryTime timeIntervalSinceNow];
        v13 = v12;

        if (v13 < 0.0)
        {
          [array addObject:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v6);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMutableDictionary *)self->_uuidMap removeObjectForKey:*(*(&v29 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v16);
  }

  if ([(NSMutableDictionary *)self->_uuidMap count]> self->_capacityLimit)
  {
    v19 = [(NSMutableDictionary *)self->_uuidMap keysSortedByValueUsingComparator:&__block_literal_global_1];
    v20 = [v19 subarrayWithRange:{0, self->_pruneSize}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v26;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v26 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [(NSMutableDictionary *)self->_uuidMap removeObjectForKey:*(*(&v25 + 1) + 8 * k)];
        }

        v22 = [v20 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v22);
    }
  }
}

uint64_t __35__NWStatsEntityMapCache_pruneCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 expiryTime];
  v6 = [v4 expiryTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)entryForUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_uuidMap objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    entityName = [v5 entityName];
    if (!entityName)
    {
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:self->_hitRetainTime];
      [v6 setExpiryTime:v8];

      goto LABEL_13;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      expiryTime = [v6 expiryTime];
      [expiryTime timeIntervalSinceNow];
      v12 = v11;

      if (v12 >= 0.0)
      {
        goto LABEL_13;
      }

      [(NSMutableDictionary *)self->_uuidMap removeObjectForKey:dCopy];

      [(NWStatsEntityMapCache *)self pruneCache];
    }

    else
    {
      v13 = NStatGetLog(isKindOfClass);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_ERROR, "Unexpected class in UUID map", v15, 2u);
      }
    }
  }

  entityName = 0;
LABEL_13:

  return entityName;
}

- (void)setEntry:(id)entry forUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  dCopy = d;
  v8 = dCopy;
  if (entryCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), dCopy = objc_opt_isKindOfClass(), (dCopy & 1) != 0)))
  {
    v9 = [(NSMutableDictionary *)self->_uuidMap objectForKeyedSubscript:v8];

    if (v9)
    {
      v11 = NStatGetLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [(NSMutableDictionary *)self->_uuidMap objectForKeyedSubscript:v8];
        v17 = 138543874;
        v18 = v8;
        v19 = 2114;
        v20 = v12;
        v21 = 2114;
        v22 = entryCopy;
        _os_log_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_ERROR, "Attempted overwrite of entry for UUID %{public}@, was %{public}@ new %{public}@", &v17, 0x20u);
      }
    }

    v13 = objc_alloc_init(NWStatsEntityMapCacheEntry);
    [(NWStatsEntityMapCacheEntry *)v13 setEntityName:entryCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 24;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v14 = 32;
      if (isKindOfClass)
      {
        v14 = 24;
      }
    }

    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(&self->super.isa + v14)];
    [(NWStatsEntityMapCacheEntry *)v13 setExpiryTime:v16];

    if ([(NSMutableDictionary *)self->_uuidMap count]> self->_capacityLimit)
    {
      [(NWStatsEntityMapCache *)self pruneCache];
    }

    [(NSMutableDictionary *)self->_uuidMap setObject:v13 forKeyedSubscript:v8];
  }

  else
  {
    v13 = NStatGetLog(dCopy);
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25BA3A000, &v13->super, OS_LOG_TYPE_ERROR, "Attempted to setEntry other than to a string or NSNull", &v17, 2u);
    }
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsEntityMapCache %@", self->_uuidMap];

  return v2;
}

- (id)stateDictionary
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_uuidMap;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_uuidMap objectForKeyedSubscript:v10, v15];
        v12 = [v11 description];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"Cache"];
  date = [MEMORY[0x277CBEAA8] date];
  [v3 setObject:date forKeyedSubscript:@"TimeNow"];

  return v3;
}

@end