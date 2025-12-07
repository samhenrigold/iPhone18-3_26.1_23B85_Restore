@interface RBThrottleBestEffortNetworkingManager
- (BOOL)isThrottleBestEffortNetworkingEnabled;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBThrottleBestEffortNetworkingManager)init;
- (void)_updateThrottleBestEffortNetworking;
- (void)addProcess:(id)process;
- (void)didUpdateProcessStates:(id)states;
- (void)removeProcess:(id)process;
@end

@implementation RBThrottleBestEffortNetworkingManager

- (void)_updateThrottleBestEffortNetworking
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 36));
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v2 = *(self + 24);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke;
    v9[3] = &unk_279B33008;
    v9[4] = self;
    v9[5] = &v10;
    [v2 enumerateWithBlock:v9];
    if (*(v11 + 24) != *(self + 32))
    {
      v3 = rbs_best_effort_networking_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v11 + 24))
        {
          v4 = "enabled";
        }

        else
        {
          v4 = "disabled";
        }

        *buf = 136315138;
        v15 = v4;
        _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_DEFAULT, "Throttle best effort networking set to %s", buf, 0xCu);
      }

      v5 = *(v11 + 24);
      *(self + 32) = v5;
      v6 = *(self + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke_10;
      block[3] = &__block_descriptor_36_e5_v8__0l;
      v8 = v5;
      dispatch_async(v6, block);
    }

    os_unfair_lock_unlock((self + 36));
    _Block_object_dispose(&v10, 8);
  }
}

- (RBThrottleBestEffortNetworkingManager)init
{
  v11.receiver = self;
  v11.super_class = RBThrottleBestEffortNetworkingManager;
  v2 = [(RBThrottleBestEffortNetworkingManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(RBProcessMap);
    stateMap = v3->_stateMap;
    v3->_stateMap = v4;

    v6 = objc_alloc_init(RBProcessIndex);
    processIndex = v3->_processIndex;
    v3->_processIndex = v6;

    v3->_throttleBestEffortNetworking = 0;
    v8 = [MEMORY[0x277D47028] createBackgroundQueue:@"RBThrottleBestEffortNetworkingManager"];
    queue = v3->_queue;
    v3->_queue = v8;
  }

  return v3;
}

- (void)didUpdateProcessStates:(id)states
{
  v25 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [statesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(statesCopy);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        updatedState = [v9 updatedState];
        originalState = [v9 originalState];
        throttleBestEffortNetworking = [originalState throttleBestEffortNetworking];
        throttleBestEffortNetworking2 = [updatedState throttleBestEffortNetworking];

        if (throttleBestEffortNetworking != throttleBestEffortNetworking2)
        {
          identity = [v9 identity];
          throttleBestEffortNetworking3 = [updatedState throttleBestEffortNetworking];
          stateMap = self->_stateMap;
          if (throttleBestEffortNetworking3)
          {
            v17 = [updatedState copy];
            v18 = [(RBProcessMap *)stateMap setValue:v17 forIdentity:identity];
          }

          else
          {
            [(RBProcessMap *)self->_stateMap removeIdentity:identity];
          }

          v6 = 1;
        }
      }

      v5 = [statesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
    if (v6)
    {
      [(RBThrottleBestEffortNetworkingManager *)self _updateThrottleBestEffortNetworking];
    }
  }
}

- (void)addProcess:(id)process
{
  [(RBProcessIndex *)self->_processIndex addProcess:process];

  [(RBThrottleBestEffortNetworkingManager *)self _updateThrottleBestEffortNetworking];
}

- (void)removeProcess:(id)process
{
  [(RBProcessIndex *)self->_processIndex removeProcess:process];

  [(RBThrottleBestEffortNetworkingManager *)self _updateThrottleBestEffortNetworking];
}

- (BOOL)isThrottleBestEffortNetworkingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  throttleBestEffortNetworking = self->_throttleBestEffortNetworking;
  os_unfair_lock_unlock(&self->_lock);
  return throttleBestEffortNetworking;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  dictionary = [(RBProcessMap *)self->_stateMap dictionary];
  v6 = [dictionary entriesToStringWithIndent:1 debug:1];
  v7 = [v3 initWithFormat:@"<%@| process states:{\n\t%@\n\t}>", v4, v6];

  return v7;
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

void *__76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(*(a1 + 32) + 16) containsIdentity:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke_10(uint64_t a1)
{
  if (sysctlbyname("kern.ipc.throttle_best_effort", 0, 0, (a1 + 32), 4uLL) && *__error() != 2)
  {
    v1 = rbs_best_effort_networking_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke_10_cold_1(v1);
    }
  }
}

void __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke_10_cold_1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&dword_262485000, a1, OS_LOG_TYPE_ERROR, "Error applying throttle best effort with error %d: %s", v5, 0x12u);
}

@end