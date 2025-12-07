@interface BRCPipelineJobQueue
- (BRCPipelineJobQueue)init;
- (void)addJob:(id)job withGroupIdentifier:(id)identifier;
- (void)dequeueHighestQualityOfServiceJobsWithHandler:(id)handler;
- (void)dumpToContext:(id)context;
- (void)removeJob:(id)job withGroupIdentifier:(id)identifier;
@end

@implementation BRCPipelineJobQueue

- (BRCPipelineJobQueue)init
{
  v8.receiver = self;
  v8.super_class = BRCPipelineJobQueue;
  v2 = [(BRCPipelineJobQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    qosToGroupingToJobMapping = v2->_qosToGroupingToJobMapping;
    v2->_qosToGroupingToJobMapping = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
    activeQOSValues = v2->_activeQOSValues;
    v2->_activeQOSValues = v5;
  }

  return v2;
}

- (void)addJob:(id)job withGroupIdentifier:(id)identifier
{
  jobCopy = job;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!identifierCopy)
  {
    identifierCopy = [MEMORY[0x277CBEB68] null];
  }

  qualityOfService = [jobCopy qualityOfService];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:qualityOfService];
  v10 = [(NSMutableDictionary *)selfCopy->_qosToGroupingToJobMapping objectForKey:v9];
  if (!v10)
  {
    v10 = objc_opt_new();
    [(NSMutableDictionary *)selfCopy->_qosToGroupingToJobMapping setObject:v10 forKeyedSubscript:v9];
    [(NSMutableIndexSet *)selfCopy->_activeQOSValues addIndex:qualityOfService];
  }

  v11 = [v10 objectForKeyedSubscript:identifierCopy];
  if (!v11)
  {
    v11 = objc_opt_new();
    [v10 setObject:v11 forKeyedSubscript:identifierCopy];
  }

  [v11 addObject:jobCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeJob:(id)job withGroupIdentifier:(id)identifier
{
  jobCopy = job;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!identifierCopy)
  {
    identifierCopy = [MEMORY[0x277CBEB68] null];
  }

  qualityOfService = [jobCopy qualityOfService];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:qualityOfService];
  v10 = [(NSMutableDictionary *)selfCopy->_qosToGroupingToJobMapping objectForKey:v9];
  v11 = [v10 objectForKeyedSubscript:identifierCopy];
  [v11 removeObject:jobCopy];
  if (![v11 count])
  {
    [v10 setObject:0 forKeyedSubscript:identifierCopy];
    if (![v10 count])
    {
      [(NSMutableDictionary *)selfCopy->_qosToGroupingToJobMapping removeObjectForKey:v9];
      [(NSMutableIndexSet *)selfCopy->_activeQOSValues removeIndex:qualityOfService];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)dequeueHighestQualityOfServiceJobsWithHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableDictionary *)selfCopy->_qosToGroupingToJobMapping count])
  {
    lastIndex = [(NSMutableIndexSet *)selfCopy->_activeQOSValues lastIndex];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v7 = [(NSMutableDictionary *)selfCopy->_qosToGroupingToJobMapping objectForKey:v6];
    if (![v7 count])
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(BRCPipelineJobQueue *)v15 dequeueHighestQualityOfServiceJobsWithHandler:v16];
      }
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__14;
    v34 = __Block_byref_object_dispose__14;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__14;
    v28 = __Block_byref_object_dispose__14;
    v29 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__BRCPipelineJobQueue_dequeueHighestQualityOfServiceJobsWithHandler___block_invoke;
    v23[3] = &unk_2785020A0;
    v23[4] = &v30;
    v23[5] = &v24;
    [v7 enumerateKeysAndObjectsUsingBlock:v23];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v31[5];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v36 count:16];
    v18 = v7;
    v10 = v6;
    v11 = 0;
    if (v9)
    {
      v12 = *v20;
      while (2)
      {
        v13 = 0;
        v14 = v11 + 1;
        v11 += v9;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          if ((handlerCopy[2](handlerCopy, *(*(&v19 + 1) + 8 * v13)) & 1) == 0)
          {
            v11 = v14;
            goto LABEL_13;
          }

          ++v13;
          ++v14;
        }

        while (v9 != v13);
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v36 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if (v11 == [v31[5] count])
    {
      [v18 setObject:0 forKeyedSubscript:v25[5]];
      if (![v18 count])
      {
        [(NSMutableDictionary *)selfCopy->_qosToGroupingToJobMapping setObject:0 forKeyedSubscript:v10];
        [(NSMutableIndexSet *)selfCopy->_activeQOSValues removeIndex:lastIndex];
      }
    }

    else
    {
      [v31[5] removeObjectsInRange:{0, v11}];
    }

    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v30, 8);
  }

  objc_sync_exit(selfCopy);
}

void __69__BRCPipelineJobQueue_dequeueHighestQualityOfServiceJobsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  *a4 = 1;
}

- (void)dumpToContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeQOSValues = selfCopy->_activeQOSValues;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__BRCPipelineJobQueue_dumpToContext___block_invoke;
  v8[3] = &unk_2785020F0;
  v7 = contextCopy;
  v9 = v7;
  v10 = selfCopy;
  [(NSMutableIndexSet *)activeQOSValues enumerateIndexesWithOptions:2 usingBlock:v8];

  objc_sync_exit(selfCopy);
}

void __37__BRCPipelineJobQueue_dumpToContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = BRCPrettyPrintEnumWithContext(a2, &brc_qos_entries, 0);
  [v4 writeLineWithFormat:@"%@", v5];

  [*(a1 + 32) pushIndentation];
  v6 = *(*(a1 + 40) + 8);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__BRCPipelineJobQueue_dumpToContext___block_invoke_2;
  v9[3] = &unk_2785020C8;
  v10 = *(a1 + 32);
  [v8 enumerateKeysAndObjectsUsingBlock:v9];
  [*(a1 + 32) popIndentation];
}

void __37__BRCPipelineJobQueue_dumpToContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB68] null];

  if (v7 != v5)
  {
    [*(a1 + 32) writeLineWithFormat:@"%@", v5];
    [*(a1 + 32) pushIndentation];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) dumpToContext:*(a1 + 32)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x277CBEB68] null];

  if (v13 != v5)
  {
    [*(a1 + 32) popIndentation];
  }
}

- (void)dequeueHighestQualityOfServiceJobsWithHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: groupToJobsMap.count > 0%@", &v2, 0xCu);
}

@end