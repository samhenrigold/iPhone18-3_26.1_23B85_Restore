@interface BLTHashCache
- (BLTHashCache)init;
- (void)_updateCacheWithItems:(id)items forSectionID:(id)d matchID:(id)iD result:(id)result;
- (void)updateCacheWithItems:(id)items forSectionID:(id)d matchID:(id)iD result:(id)result;
@end

@implementation BLTHashCache

- (BLTHashCache)init
{
  v6.receiver = self;
  v6.super_class = BLTHashCache;
  v2 = [(BLTHashCache *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cacheBySectionID = v2->_cacheBySectionID;
    v2->_cacheBySectionID = dictionary;
  }

  return v2;
}

- (void)updateCacheWithItems:(id)items forSectionID:(id)d matchID:(id)iD result:(id)result
{
  itemsCopy = items;
  dCopy = d;
  iDCopy = iD;
  resultCopy = result;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__BLTHashCache_updateCacheWithItems_forSectionID_matchID_result___block_invoke;
  v18[3] = &unk_278D31830;
  v18[4] = self;
  v19 = itemsCopy;
  v20 = dCopy;
  v21 = iDCopy;
  v22 = resultCopy;
  v14 = resultCopy;
  v15 = iDCopy;
  v16 = dCopy;
  v17 = itemsCopy;
  BLTDispatchWorkQueue(v18);
}

- (void)_updateCacheWithItems:(id)items forSectionID:(id)d matchID:(id)iD result:(id)result
{
  v62 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  dCopy = d;
  iDCopy = iD;
  resultCopy = result;
  dictionary = [(NSMutableDictionary *)self->_cacheBySectionID objectForKeyedSubscript:dCopy];
  v15 = [dictionary objectForKeyedSubscript:iDCopy];
  v16 = [MEMORY[0x277CBEB58] setWithArray:itemsCopy];
  v17 = [v16 mutableCopy];
  [v16 minusSet:v15];
  [v17 minusSet:v16];
  v44 = [v15 mutableCopy];
  v46 = v17;
  [v44 minusSet:v17];
  v41 = iDCopy;
  v42 = dCopy;
  selfCopy = self;
  if ([v16 count] || objc_msgSend(v44, "count"))
  {
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_cacheBySectionID setObject:dictionary forKeyedSubscript:dCopy];
    }

    [dictionary objectForKeyedSubscript:{iDCopy, self}];
    v19 = v18 = dictionary;

    v45 = v18;
    if (v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB58] set];
      [v18 setObject:v15 forKeyedSubscript:iDCopy];
    }
  }

  else
  {
    v45 = dictionary;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v56;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        if (resultCopy)
        {
          resultCopy[2](resultCopy, v25, [itemsCopy indexOfObject:*(*(&v55 + 1) + 8 * i)], 1);
        }

        [v15 addObject:{v25, selfCopy}];
      }

      v22 = [v20 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v22);
  }

  v40 = v20;

  if (resultCopy)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v26 = v46;
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v26);
          }

          resultCopy[2](resultCopy, *(*(&v51 + 1) + 8 * j), [itemsCopy indexOfObject:{*(*(&v51 + 1) + 8 * j), selfCopy, v40}], 0);
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v28);
    }
  }

  v43 = itemsCopy;
  v31 = [itemsCopy count];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = v44;
  v33 = [v32 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v48;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v47 + 1) + 8 * k);
        if (resultCopy)
        {
          resultCopy[2](resultCopy, *(*(&v47 + 1) + 8 * k), v31++, 2);
        }

        [v15 removeObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v34);
  }

  if (![v15 count])
  {
    [v45 removeObjectForKey:v41];
    if (![v45 count])
    {
      [*(v39 + 8) removeObjectForKey:v42];
    }
  }
}

@end