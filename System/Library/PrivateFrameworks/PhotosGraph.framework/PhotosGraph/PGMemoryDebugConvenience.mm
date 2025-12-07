@interface PGMemoryDebugConvenience
+ (id)memoryDebugInformationWithMomentNodes:(id)nodes meaningLabels:(id)labels serviceManager:(id)manager;
@end

@implementation PGMemoryDebugConvenience

+ (id)memoryDebugInformationWithMomentNodes:(id)nodes meaningLabels:(id)labels serviceManager:(id)manager
{
  v44 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  labelsCopy = labels;
  managerCopy = manager;
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [MEMORY[0x277CBEB58] set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = nodesCopy;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [v14 debugDictionaryWithServiceManager:{managerCopy, v28}];
        [v30 addObject:v15];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __95__PGMemoryDebugConvenience_memoryDebugInformationWithMomentNodes_meaningLabels_serviceManager___block_invoke;
        v36[3] = &unk_278886918;
        v37 = v9;
        [v14 enumerateMeaningfulEventsUsingBlock:v36];
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  v16 = v28;
  [v28 setObject:v30 forKeyedSubscript:@"backingMoments"];
  if ([labelsCopy count])
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          if (labelsCopy)
          {
            meaningLabels = [*(*(&v32 + 1) + 8 * j) meaningLabels];
            v25 = [meaningLabels intersectsSet:labelsCopy];

            if (!v25)
            {
              continue;
            }
          }

          v26 = [v23 debugDictionaryWithServiceManager:{managerCopy, v28}];
          [v17 addObject:v26];
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v20);
    }

    v16 = v28;
    [v28 setObject:v17 forKeyedSubscript:@"collectionsInfo"];
  }

  return v16;
}

@end