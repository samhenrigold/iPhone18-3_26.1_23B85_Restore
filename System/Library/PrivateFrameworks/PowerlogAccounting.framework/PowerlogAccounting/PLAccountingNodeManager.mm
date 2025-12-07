@interface PLAccountingNodeManager
+ (id)sharedInstance;
- (PLAccountingNodeManager)init;
- (id)childNodeIDsFromChildNodeNames:(id)names;
- (id)nodeIDForNodeName:(id)name isPermanent:(BOOL)permanent;
- (id)nodeNameForNodeID:(id)d;
- (void)removeNodeReferenceFromCache:(id)cache;
- (void)setupNodes;
@end

@implementation PLAccountingNodeManager

+ (id)sharedInstance
{
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  storageLocked = [storage storageLocked];

  if (storageLocked)
  {
    v6 = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLAccountingNodeManager_sharedInstance__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedInstance_onceToken_2 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_2, block);
    }

    v6 = sharedInstance_sharedInstance_2;
  }

  return v6;
}

- (PLAccountingNodeManager)init
{
  v5.receiver = self;
  v5.super_class = PLAccountingNodeManager;
  v2 = [(PLAccountingNodeManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_nodeMappingLock._os_unfair_lock_opaque = 0;
    [(PLAccountingNodeManager *)v2 setupNodes];
  }

  return v3;
}

uint64_t __41__PLAccountingNodeManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_2 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (id)nodeIDForNodeName:(id)name isPermanent:(BOOL)permanent
{
  permanentCopy = permanent;
  nameCopy = name;
  os_unfair_lock_lock(&self->_nodeMappingLock);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (nodeIDForNodeName_isPermanent__defaultOnce != -1)
    {
      dispatch_once(&nodeIDForNodeName_isPermanent__defaultOnce, block);
    }

    if (nodeIDForNodeName_isPermanent__classDebugEnabled == 1)
    {
      permanentCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"nodeName=%@, isPermanent=%i", nameCopy, permanentCopy];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager nodeIDForNodeName:isPermanent:]"];
      [v9 logMessage:permanentCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:50];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_18;
    v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v51[4] = v14;
    if (nodeIDForNodeName_isPermanent__defaultOnce_16 != -1)
    {
      dispatch_once(&nodeIDForNodeName_isPermanent__defaultOnce_16, v51);
    }

    if (nodeIDForNodeName_isPermanent__classDebugEnabled_17 == 1)
    {
      v15 = MEMORY[0x277CCACA8];
      nodeNameToNodeID = [(PLAccountingNodeManager *)self nodeNameToNodeID];
      v17 = [v15 stringWithFormat:@"nodeNameToNodeID=%@", nodeNameToNodeID];

      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      lastPathComponent2 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager nodeIDForNodeName:isPermanent:]"];
      [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:52];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  nodeNameToNodeID2 = [(PLAccountingNodeManager *)self nodeNameToNodeID];

  if (nodeNameToNodeID2)
  {
    nodeNameToNodeID3 = [(PLAccountingNodeManager *)self nodeNameToNodeID];
    v25 = [nodeNameToNodeID3 objectForKeyedSubscript:nameCopy];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v26 = objc_opt_class();
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_24;
      v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v50[4] = v26;
      if (nodeIDForNodeName_isPermanent__defaultOnce_22 != -1)
      {
        dispatch_once(&nodeIDForNodeName_isPermanent__defaultOnce_22, v50);
      }

      if (nodeIDForNodeName_isPermanent__classDebugEnabled_23 == 1)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"nodeID=%@", v25];
        v28 = MEMORY[0x277D3F178];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
        lastPathComponent3 = [v29 lastPathComponent];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager nodeIDForNodeName:isPermanent:]"];
        [v28 logMessage:v27 fromFile:lastPathComponent3 fromFunction:v31 fromLineNumber:73];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    if (v25)
    {
      os_unfair_lock_unlock(&self->_nodeMappingLock);
      v33 = v25;
    }

    else
    {
      v34 = [[PLAccountingNodeEntry alloc] initWithName:nameCopy];
      v35 = [MEMORY[0x277CCABB0] numberWithBool:permanentCopy];
      [(PLEntry *)v34 setObject:v35 forKeyedSubscript:*MEMORY[0x277D3F3D8]];

      v36 = MEMORY[0x277CCABB0];
      mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
      storage = [mEMORY[0x277D3F2A0] storage];
      v33 = [v36 numberWithLongLong:{objc_msgSend(storage, "blockingWriteEntry:withCompletionBlock:", v34, &__block_literal_global_17)}];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v39 = objc_opt_class();
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_2;
        v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v49[4] = v39;
        if (nodeIDForNodeName_isPermanent__defaultOnce_31 != -1)
        {
          dispatch_once(&nodeIDForNodeName_isPermanent__defaultOnce_31, v49);
        }

        if (nodeIDForNodeName_isPermanent__classDebugEnabled_32 == 1)
        {
          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"added to DB node=%@", v34];
          v41 = MEMORY[0x277D3F178];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
          lastPathComponent4 = [v42 lastPathComponent];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager nodeIDForNodeName:isPermanent:]"];
          [v41 logMessage:v40 fromFile:lastPathComponent4 fromFunction:v44 fromLineNumber:83];

          v45 = PLLogCommon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      nodeNameToNodeID4 = [(PLAccountingNodeManager *)self nodeNameToNodeID];
      [nodeNameToNodeID4 setObject:v33 forKeyedSubscript:nameCopy];

      nodeIDToNodeName = [(PLAccountingNodeManager *)self nodeIDToNodeName];
      [nodeIDToNodeName setObject:nameCopy forKeyedSubscript:v33];

      os_unfair_lock_unlock(&self->_nodeMappingLock);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_nodeMappingLock);
    v33 = 0;
  }

  return v33;
}

void *__57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  nodeIDForNodeName_isPermanent__classDebugEnabled = result;
  return result;
}

void *__57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_18(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  nodeIDForNodeName_isPermanent__classDebugEnabled_17 = result;
  return result;
}

void *__57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_24(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  nodeIDForNodeName_isPermanent__classDebugEnabled_23 = result;
  return result;
}

void *__57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  nodeIDForNodeName_isPermanent__classDebugEnabled_32 = result;
  return result;
}

- (id)nodeNameForNodeID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_nodeMappingLock);
  nodeIDToNodeName = [(PLAccountingNodeManager *)self nodeIDToNodeName];
  v6 = [nodeIDToNodeName objectForKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_nodeMappingLock);

  return v6;
}

- (void)removeNodeReferenceFromCache:(id)cache
{
  cacheCopy = cache;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLAccountingNodeManager removeNodeReferenceFromCache:v5];
  }

  userInfo = [cacheCopy userInfo];
  if (userInfo)
  {
    v7 = userInfo;
    userInfo2 = [cacheCopy userInfo];
    v9 = [userInfo2 count];

    if (v9)
    {
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingNodeManager removeNodeReferenceFromCache:v10];
      }

      userInfo3 = [cacheCopy userInfo];
      allKeys = [userInfo3 allKeys];

      os_unfair_lock_lock(&self->_nodeMappingLock);
      nodeIDToNodeName = [(PLAccountingNodeManager *)self nodeIDToNodeName];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke;
      v19[3] = &unk_279A560B8;
      v20 = allKeys;
      v14 = allKeys;
      v15 = [nodeIDToNodeName keysOfEntriesPassingTest:v19];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke_2;
      v17[3] = &unk_279A560E0;
      v17[4] = self;
      v18 = cacheCopy;
      [v15 enumerateObjectsUsingBlock:v17];
      nodeNameToNodeID = [(PLAccountingNodeManager *)self nodeNameToNodeID];
      [nodeNameToNodeID removeObjectsForKeys:v14];

      os_unfair_lock_unlock(&self->_nodeMappingLock);
    }
  }
}

void __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nodeIDToNodeName];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke_2_cold_1(v5, a1, v6);
  }

  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = [v8 objectForKeyedSubscript:@"MaskedName"];
  v10 = [*(a1 + 32) nodeIDToNodeName];
  [v10 setObject:v9 forKeyedSubscript:v3];
}

- (id)childNodeIDsFromChildNodeNames:(id)names
{
  v38 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLAccountingNodeManager_childNodeIDsFromChildNodeNames___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (childNodeIDsFromChildNodeNames__defaultOnce != -1)
    {
      dispatch_once(&childNodeIDsFromChildNodeNames__defaultOnce, block);
    }

    if (childNodeIDsFromChildNodeNames__classDebugEnabled == 1)
    {
      namesCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"childNodeNames=%@", namesCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager childNodeIDsFromChildNodeNames:]"];
      [v7 logMessage:namesCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:142];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = namesCopy;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(PLAccountingNodeManager *)self nodeIDForNodeName:*(*(&v32 + 1) + 8 * i) isPermanent:0];
        [array addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v15);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __58__PLAccountingNodeManager_childNodeIDsFromChildNodeNames___block_invoke_47;
    v30 = &__block_descriptor_40_e5_v8__0lu32l8;
    v31 = v19;
    if (childNodeIDsFromChildNodeNames__defaultOnce_45 != -1)
    {
      dispatch_once(&childNodeIDsFromChildNodeNames__defaultOnce_45, &v27);
    }

    if (childNodeIDsFromChildNodeNames__classDebugEnabled_46 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"childNodeIDs=%@", array, v27, v28, v29, v30, v31, v32];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager childNodeIDsFromChildNodeNames:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:152];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  return array;
}

void *__58__PLAccountingNodeManager_childNodeIDsFromChildNodeNames___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  childNodeIDsFromChildNodeNames__classDebugEnabled = result;
  return result;
}

void *__58__PLAccountingNodeManager_childNodeIDsFromChildNodeNames___block_invoke_47(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  childNodeIDsFromChildNodeNames__classDebugEnabled_46 = result;
  return result;
}

- (void)setupNodes
{
  os_unfair_lock_lock(&self->_nodeMappingLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke;
  block[3] = &unk_279A55E80;
  block[4] = self;
  if (setupNodes_onceToken != -1)
  {
    dispatch_once(&setupNodes_onceToken, block);
  }

  os_unfair_lock_unlock(&self->_nodeMappingLock);
}

void __37__PLAccountingNodeManager_setupNodes__block_invoke(uint64_t a1)
{
  v128[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setNodeNameToNodeID:v2];

  v3 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setNodeIDToNodeName:v3];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel_removeNodeReferenceFromCache_ name:@"PLAppDeletionActivityStarted" object:0];

  v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"ID" withValue:&unk_2870F86F0 withComparisonOperation:5];
  v6 = +[PLAccountingNodeEntry entryKey];
  v7 = MEMORY[0x277CBEB98];
  v8 = [MEMORY[0x277D3F2A0] sharedCore];
  v9 = [v8 storage];
  v101 = v5;
  v128[0] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:1];
  v102 = v6;
  v11 = [v9 entriesForKey:v6 withComparisons:v10];
  v12 = [v7 setWithArray:v11];

  v13 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_65;
    v122[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v122[4] = v14;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_1 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_1, v122);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_1 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"reservedNodesInDB=%@", v12];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:176];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v13 = 0x277D3F000uLL;
    }
  }

  v21 = +[PLAccountingEngine deviceRootNodeIDs];
  v22 = [v21 mutableCopy];

  [v22 addObject:&unk_2870F8708];
  [v22 addObject:&unk_2870F86F0];
  v23 = 0x279A55000;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v24 = objc_opt_class();
    v121[0] = MEMORY[0x277D85DD0];
    v121[1] = 3221225472;
    v121[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_74;
    v121[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v121[4] = v24;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_72 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_72, v121);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_73 == 1)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"reservedNodeIDs=%@", v22];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v28 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:182];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v13 = 0x277D3F000uLL;
      v23 = 0x279A55000uLL;
    }
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v22;
  v31 = [obj countByEnumeratingWithState:&v117 objects:v127 count:16];
  v103 = v12;
  if (v31)
  {
    v32 = v31;
    v105 = *MEMORY[0x277D3F3D8];
    v106 = *v118;
    do
    {
      v33 = 0;
      do
      {
        if (*v118 != v106)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v117 + 1) + 8 * v33);
        v35 = [objc_alloc(*(v23 + 2472)) initWithRootNodeID:v34];
        [v35 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v105];
        if ([*(v13 + 384) debugEnabled])
        {
          v36 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_80;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v36;
          if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_78 != -1)
          {
            dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_78, block);
          }

          if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_79 == 1)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"reservedNode=%@", v35];
            v38 = MEMORY[0x277D3F178];
            v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
            v40 = [v39 lastPathComponent];
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
            [v38 logMessage:v37 fromFile:v40 fromFunction:v41 fromLineNumber:187];

            v42 = PLLogCommon();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v126 = v37;
              _os_log_debug_impl(&dword_25EDCD000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v12 = v103;
            v13 = 0x277D3F000uLL;
            v23 = 0x279A55000;
          }
        }

        if (([v12 containsObject:v35] & 1) == 0)
        {
          v43 = [MEMORY[0x277D3F2A0] sharedCore];
          v44 = [v43 storage];
          [v44 blockingWriteEntry:v35 withCompletionBlock:&__block_literal_global_86];

          if ([*(v13 + 384) debugEnabled])
          {
            v45 = objc_opt_class();
            v115[0] = MEMORY[0x277D85DD0];
            v115[1] = 3221225472;
            v115[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_2;
            v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v115[4] = v45;
            if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_87 != -1)
            {
              dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_87, v115);
            }

            if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_88 == 1)
            {
              v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"added to DB reservedNode=%@", v35];
              v47 = MEMORY[0x277D3F178];
              v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
              v49 = [v48 lastPathComponent];
              v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_3"];
              [v47 logMessage:v46 fromFile:v49 fromFunction:v50 fromLineNumber:192];

              v51 = PLLogCommon();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v126 = v46;
                _os_log_debug_impl(&dword_25EDCD000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v12 = v103;
              v13 = 0x277D3F000;
              v23 = 0x279A55000;
            }
          }
        }

        v52 = [*(a1 + 32) nodeNameToNodeID];
        v53 = [v35 name];
        [v52 setObject:v34 forKeyedSubscript:v53];

        v54 = [v35 name];
        v55 = [*(a1 + 32) nodeIDToNodeName];
        [v55 setObject:v54 forKeyedSubscript:v34];

        ++v33;
      }

      while (v32 != v33);
      v32 = [obj countByEnumeratingWithState:&v117 objects:v127 count:16];
    }

    while (v32);
  }

  v56 = [MEMORY[0x277D3F2A0] sharedCore];
  v57 = [v56 storage];
  [v57 flushCachesWithReason:v102];

  v58 = [MEMORY[0x277D3F228] sharedStorageCache];
  [v58 clearLastEntryCacheForEntryKey:v102];

  v59 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"ID" withValue:&unk_2870F86F0 withComparisonOperation:2];
  v60 = MEMORY[0x277CBEB98];
  v61 = [MEMORY[0x277D3F2A0] sharedCore];
  v62 = [v61 storage];
  v107 = v59;
  v124 = v59;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
  v64 = [v62 entriesForKey:v102 withComparisons:v63];
  v65 = [v60 setWithArray:v64];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v66 = objc_opt_class();
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_96;
    v114[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v114[4] = v66;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_94 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_94, v114);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_95 == 1)
    {
      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"otherNodesInDB=%@", v65];
      v68 = MEMORY[0x277D3F178];
      v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v70 = [v69 lastPathComponent];
      v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v68 logMessage:v67 fromFile:v70 fromFunction:v71 fromLineNumber:210];

      v72 = PLLogCommon();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v73 = v65;
  v74 = [v73 countByEnumeratingWithState:&v110 objects:v123 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v111;
    do
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v111 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = *(*(&v110 + 1) + 8 * i);
        v79 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v78, "entryID")}];
        v80 = [v78 name];
        if (v80)
        {
          v81 = [*(a1 + 32) nodeNameToNodeID];
          [v81 setObject:v79 forKeyedSubscript:v80];

          v82 = [*(a1 + 32) nodeIDToNodeName];
          [v82 setObject:v80 forKeyedSubscript:v79];
        }
      }

      v75 = [v73 countByEnumeratingWithState:&v110 objects:v123 count:16];
    }

    while (v75);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v83 = objc_opt_class();
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_102;
    v109[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v109[4] = v83;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_100 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_100, v109);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_101 == 1)
    {
      v84 = MEMORY[0x277CCACA8];
      v85 = [*(a1 + 32) nodeNameToNodeID];
      v86 = [v84 stringWithFormat:@"nodeNameToNodeID=%@", v85];

      v87 = MEMORY[0x277D3F178];
      v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v89 = [v88 lastPathComponent];
      v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v87 logMessage:v86 fromFile:v89 fromFunction:v90 fromLineNumber:219];

      v91 = PLLogCommon();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v92 = objc_opt_class();
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_105;
    v108[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v108[4] = v92;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_103 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_103, v108);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_104 == 1)
    {
      v93 = MEMORY[0x277CCACA8];
      v94 = [*(a1 + 32) nodeIDToNodeName];
      v95 = [v93 stringWithFormat:@"nodeIDToNodeName=%@", v94];

      v96 = MEMORY[0x277D3F178];
      v97 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v98 = [v97 lastPathComponent];
      v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v96 logMessage:v95 fromFile:v98 fromFunction:v99 fromLineNumber:220];

      v100 = PLLogCommon();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

void *__37__PLAccountingNodeManager_setupNodes__block_invoke_65(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_1 = result;
  return result;
}

void *__37__PLAccountingNodeManager_setupNodes__block_invoke_74(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_73 = result;
  return result;
}

void *__37__PLAccountingNodeManager_setupNodes__block_invoke_80(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_79 = result;
  return result;
}

void *__37__PLAccountingNodeManager_setupNodes__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_88 = result;
  return result;
}

void *__37__PLAccountingNodeManager_setupNodes__block_invoke_96(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_95 = result;
  return result;
}

void *__37__PLAccountingNodeManager_setupNodes__block_invoke_102(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_101 = result;
  return result;
}

void *__37__PLAccountingNodeManager_setupNodes__block_invoke_105(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_104 = result;
  return result;
}

void __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*(a2 + 40) userInfo];
  v6 = [v5 objectForKeyedSubscript:a1];
  v7 = [v6 objectForKeyedSubscript:@"MaskedName"];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&dword_25EDCD000, a3, OS_LOG_TYPE_DEBUG, "Obfuscating the node id cache for %@ with %@", &v8, 0x16u);
}

@end