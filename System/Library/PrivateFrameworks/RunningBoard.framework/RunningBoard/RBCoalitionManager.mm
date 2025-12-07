@interface RBCoalitionManager
- (NSString)stateCaptureTitle;
- (RBCoalitionManager)initWithAdapter:(id)adapter;
- (id)captureState;
- (void)addProcess:(id)process withState:(id)state;
- (void)didUpdateProcessStates:(id)states;
- (void)removeProcess:(id)process;
@end

@implementation RBCoalitionManager

- (RBCoalitionManager)initWithAdapter:(id)adapter
{
  adapterCopy = adapter;
  v12.receiver = self;
  v12.super_class = RBCoalitionManager;
  v6 = [(RBCoalitionManager *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_coalitions = v6->_lock_coalitions;
    v6->_lock_coalitions = v7;

    v9 = objc_alloc_init(RBProcessMap);
    lock_processes = v6->_lock_processes;
    v6->_lock_processes = v9;

    objc_storeStrong(&v6->_adapter, adapter);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)didUpdateProcessStates:(id)states
{
  v47 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  if ([statesCopy hasChanges])
  {
    os_unfair_lock_lock(&self->_lock);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v23 = statesCopy;
    v5 = statesCopy;
    v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v6)
    {
      v7 = *v42;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v41 + 1) + 8 * i);
          identity = [v9 identity];
          v11 = [(RBProcessMap *)self->_lock_processes valueForIdentity:identity];
          if (v11)
          {
            updatedState = [v9 updatedState];
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "jetsamCoalitionID")}];
            v14 = [(NSMutableDictionary *)self->_lock_coalitions objectForKey:v13];
            [v14 setProcess:v11 withState:updatedState];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v6);
    }

    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v37 = 0u;
    obj = self->_lock_coalitions;
    v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v15)
    {
      v16 = *v38;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [(NSMutableDictionary *)self->_lock_coalitions objectForKey:*(*(&v37 + 1) + 8 * j)];
          v33 = 0;
          v34 = &v33;
          v35 = 0x2020000000;
          v36 = 0;
          v29 = 0;
          v30 = &v29;
          v31 = 0x2020000000;
          v32 = 0;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __45__RBCoalitionManager_didUpdateProcessStates___block_invoke;
          v25[3] = &unk_279B339A0;
          v19 = v18;
          v26 = v19;
          v27 = &v29;
          v28 = &v33;
          [v19 enumerateProcessesUsingBlock:v25];
          if (*(v34 + 24) == 1)
          {
            v20 = v30[3];
            if (v20 != [v19 coalitionLevel])
            {
              adapter = self->_adapter;
              coalitionID = [v19 coalitionID];
              if (![(RBCoalitionKernelAdapting *)adapter applyCoalitionWithID:coalitionID coalitionLevel:v30[3]])
              {
                [v19 setCoalitionLevel:v30[3]];
              }
            }
          }

          _Block_object_dispose(&v29, 8);
          _Block_object_dispose(&v33, 8);
        }

        v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v15);
    }

    os_unfair_lock_unlock(&self->_lock);
    statesCopy = v23;
  }
}

void __45__RBCoalitionManager_didUpdateProcessStates___block_invoke(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 coalitionLevel];
  v8 = rbs_process_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[4];
    v12 = 138413058;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v11;
    v18 = 2048;
    v19 = [v11 coalitionID];
    _os_log_debug_impl(&dword_262485000, v8, OS_LOG_TYPE_DEBUG, "Process: %@ with state: %@ for coalition: %@ with coalitionID: %llu", &v12, 0x2Au);
  }

  if (v7)
  {
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 24);
    if (v7 > v10)
    {
      v10 = v7;
    }

    *(v9 + 24) = v10;
    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (void)addProcess:(id)process withState:(id)state
{
  v30 = *MEMORY[0x277D85DE8];
  processCopy = process;
  stateCopy = state;
  identity = [processCopy identity];
  os_unfair_lock_lock(&self->_lock);
  v9 = [(RBProcessMap *)self->_lock_processes containsIdentity:identity];
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    identifier = [processCopy identifier];
    v11 = [identifier pid];

    if ([(RBCoalitionKernelAdapting *)self->_adapter coalitionInfoForPID:v11 outCoalitionInfo:&v19]< 0)
    {
      v13 = rbs_process_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [RBCoalitionManager addProcess:v11 withState:v13];
      }
    }

    else
    {
      [processCopy setResourceCoalitionID:v19];
      [processCopy setJetsamCoalitionID:v20];
      [processCopy setJetsamCoalitionLeader:v21];
      v12 = v20;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
      os_unfair_lock_lock(&self->_lock);
      v14 = [(NSMutableDictionary *)self->_lock_coalitions objectForKey:v13];
      if (!v14)
      {
        v15 = rbs_process_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v23 = v12;
          v24 = 1024;
          LODWORD(v25) = v11;
          _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "Creating new RBCoalition with coalition ID: %llu for PID %d", buf, 0x12u);
        }

        v14 = [[RBCoalition alloc] initWithCoalitionID:v12];
        [(NSMutableDictionary *)self->_lock_coalitions setObject:v14 forKey:v13];
      }

      v16 = rbs_process_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        coalitionID = [(RBCoalition *)v14 coalitionID];
        *buf = 138413058;
        v23 = processCopy;
        v24 = 2112;
        v25 = v14;
        v26 = 2048;
        v27 = coalitionID;
        v28 = 2112;
        v29 = stateCopy;
        _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "Adding process: %@ to coalition: %@ with coalitionID: %llu with state: %@", buf, 0x2Au);
      }

      [(RBCoalition *)v14 setProcess:processCopy withState:stateCopy];
      v18 = [(RBProcessMap *)self->_lock_processes setValue:processCopy forIdentity:identity];
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)removeProcess:(id)process
{
  v18 = *MEMORY[0x277D85DE8];
  processCopy = process;
  identity = [processCopy identity];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(processCopy, "jetsamCoalitionID")}];
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_lock_coalitions objectForKey:v6];
  if (v7)
  {
    v8 = rbs_process_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = processCopy;
      v14 = 2112;
      v15 = v7;
      v16 = 2048;
      coalitionID = [v7 coalitionID];
      _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "Removing process: %@ from coalition: %@ with coalitionID: %llu", &v12, 0x20u);
    }

    [v7 removeProcess:processCopy];
    if ([v7 isEmpty])
    {
      v9 = rbs_process_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        coalitionID2 = [v7 coalitionID];
        v12 = 138412546;
        v13 = v7;
        v14 = 2048;
        v15 = coalitionID2;
        _os_log_impl(&dword_262485000, v9, OS_LOG_TYPE_DEFAULT, "Removing the coalition: %@ with coalitionID: %llu as all the processes in this coalition have been removed", &v12, 0x16u);
      }

      [(NSMutableDictionary *)self->_lock_coalitions removeObjectForKey:v6];
    }
  }

  v11 = [(RBProcessMap *)self->_lock_processes removeValueForIdentity:identity];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)captureState
{
  v3 = objc_opt_new();
  stateCaptureTitle = [(RBCoalitionManager *)self stateCaptureTitle];
  [v3 appendFormat:@"<%@:\n", stateCaptureTitle];

  os_unfair_lock_lock(&self->_lock);
  v5 = objc_opt_new();
  lock_processes = self->_lock_processes;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__RBCoalitionManager_captureState__block_invoke;
  v10[3] = &unk_279B339C8;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  [(RBProcessMap *)lock_processes enumerateWithBlock:v10];
  [v7 sortUsingComparator:&__block_literal_global_14];
  v8 = [v7 componentsJoinedByString:@"\n"];
  [v3 appendFormat:@"%@\n>\n", v8];

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __34__RBCoalitionManager_captureState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v22 = [v5 numberWithUnsignedLongLong:{objc_msgSend(v6, "jetsamCoalitionID")}];
  v8 = [*(*(a1 + 32) + 8) objectForKey:v22];
  v9 = MEMORY[0x277CCACA8];
  v10 = [v6 identifier];

  v11 = [v10 pid];
  v12 = [v7 shortDescription];

  v13 = [v8 coalitionID];
  v14 = MEMORY[0x277CBEAA8];
  [v8 creationTime];
  v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
  v16 = [v8 coalitionLevel];
  v17 = [v8 previousCoalitionLevel];
  v18 = MEMORY[0x277CBEAA8];
  [v8 lastModificationTime];
  v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
  v20 = [v9 stringWithFormat:@"\t%d : %@ : coalitionID:%llu, creationTime: %@, coalitionLevel:%llu, previous:%llu, lastModTime: %@", v11, v12, v13, v15, v16, v17, v19];

  [*(a1 + 40) addObject:v20];
}

- (void)addProcess:(int)a1 withState:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Kernel failed to return coalition info for PID %d", v2, 8u);
}

@end