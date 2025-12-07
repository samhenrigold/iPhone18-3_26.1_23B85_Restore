@interface FBWorkspaceEventDispatcherSource
- (BOOL)noteHandshakeWithRemnants:(id)remnants;
- (FBWorkspaceEventDispatcherSource)init;
- (id)_initWithProcessHandle:(id)handle invalidationBlock:(id)block;
- (id)consumeRemnantsPassingTest:(id)test;
- (id)dequeueSceneRequestsForTargetIdentifier:(id)identifier;
- (void)dealloc;
- (void)enqueueSceneRequest:(id)request;
- (void)invalidate;
@end

@implementation FBWorkspaceEventDispatcherSource

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  v46 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_invalidationLock);
  os_unfair_lock_lock(&selfCopy->_lock);
  v3 = MEMORY[0x1AC572E40](selfCopy->_lock_invalidationBlock);
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v3)
  {
    (*(v3 + 16))(v3, selfCopy);
  }

  v28 = v3;
  os_unfair_lock_lock(&selfCopy->_lock);
  v4 = selfCopy->_lock_remnants;
  v5 = selfCopy->_lock_requestsByTargetIdentifier;
  lock_remnants = selfCopy->_lock_remnants;
  selfCopy->_lock_remnants = 0;

  lock_requestsByTargetIdentifier = selfCopy->_lock_requestsByTargetIdentifier;
  selfCopy->_lock_requestsByTargetIdentifier = 0;

  lock_invalidationBlock = selfCopy->_lock_invalidationBlock;
  selfCopy->_lock_invalidationBlock = 0;

  v29 = selfCopy;
  os_unfair_lock_unlock(&selfCopy->_lock);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v4;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v39 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v11);
  }

  v26 = v9;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = v5;
  obj = [(NSMutableDictionary *)v5 objectEnumerator];
  v14 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v35 + 1) + 8 * v17);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
          do
          {
            v23 = 0;
            do
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v31 + 1) + 8 * v23);
              v25 = FBSWorkspaceErrorCreate();
              [v24 invalidateWithError:v25];

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
          }

          while (v21);
        }

        ++v17;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v15);
  }

  os_unfair_lock_unlock(v29 + 11);
}

- (id)_initWithProcessHandle:(id)handle invalidationBlock:(id)block
{
  handleCopy = handle;
  blockCopy = block;
  v10 = handleCopy;
  if (!v10)
  {
    [FBWorkspaceEventDispatcherSource _initWithProcessHandle:a2 invalidationBlock:?];
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBWorkspaceEventDispatcherSource _initWithProcessHandle:v11 invalidationBlock:a2];
  }

  if ([v11 rbs_pid] <= 0)
  {
    [FBWorkspaceEventDispatcherSource _initWithProcessHandle:v11 invalidationBlock:a2];
  }

  if (!blockCopy)
  {
    [FBWorkspaceEventDispatcherSource _initWithProcessHandle:a2 invalidationBlock:?];
  }

  v17.receiver = self;
  v17.super_class = FBWorkspaceEventDispatcherSource;
  v12 = [(FBWorkspaceEventDispatcherSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_processHandle, handle);
    v14 = [blockCopy copy];
    lock_invalidationBlock = v13->_lock_invalidationBlock;
    v13->_lock_invalidationBlock = v14;

    *&v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (BOOL)noteHandshakeWithRemnants:(id)remnants
{
  v24 = *MEMORY[0x1E69E9840];
  remnantsCopy = remnants;
  if (!remnantsCopy)
  {
    [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
  }

  v6 = remnantsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBWorkspaceEventDispatcherSource *)v6 noteHandshakeWithRemnants:a2];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (!v12)
        {
          [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
        }

        v13 = v12;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [(FBWorkspaceEventDispatcherSource *)v13 noteHandshakeWithRemnants:a2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidationBlock)
  {
    [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
  }

  v14 = [(RBSProcessHandle *)self->_processHandle pid];
  if (v14 != getpid())
  {
    if (self->_lock_remnants)
    {
      [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
    }

    v16 = [v7 copy];
    goto LABEL_22;
  }

  if ([v7 count])
  {
    [FBWorkspaceEventDispatcherSource noteHandshakeWithRemnants:a2];
  }

  if (!self->_lock_remnants)
  {
    v16 = [MEMORY[0x1E695DFD8] set];
LABEL_22:
    lock_remnants = self->_lock_remnants;
    self->_lock_remnants = v16;

    v15 = 1;
    goto LABEL_23;
  }

  v15 = 0;
LABEL_23:
  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (id)consumeRemnantsPassingTest:(id)test
{
  v31 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (!testCopy)
  {
    [FBWorkspaceEventDispatcherSource consumeRemnantsPassingTest:a2];
  }

  v6 = testCopy;
  os_unfair_lock_lock(&self->_lock);
  lock_remnants = self->_lock_remnants;
  if (!lock_remnants)
  {
    v17 = 0;
    goto LABEL_30;
  }

  selfCopy = self;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = lock_remnants;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v27;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v26 + 1) + 8 * i);
      if (v6[2](v6, v15))
      {
        if (v11)
        {
          v16 = v11;
LABEL_13:
          [v16 addObject:v15];
          continue;
        }

        v11 = [MEMORY[0x1E695DFA8] setWithObject:v15];
      }

      else
      {
        if (v12)
        {
          v16 = v12;
          goto LABEL_13;
        }

        v12 = [MEMORY[0x1E695DFA8] setWithObject:v15];
      }
    }

    v10 = [(NSSet *)v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v10);
LABEL_21:

  self = selfCopy;
  v18 = [(NSSet *)selfCopy->_lock_remnants count];
  if (v18 != [v12 count])
  {
    v19 = [v12 copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [MEMORY[0x1E695DFD8] set];
    }

    v22 = selfCopy->_lock_remnants;
    selfCopy->_lock_remnants = v21;
  }

  if (v11)
  {
    v23 = v11;
  }

  else
  {
    v23 = [MEMORY[0x1E695DFD8] set];
  }

  v17 = v23;

LABEL_30:
  os_unfair_lock_unlock(&self->_lock);

  return v17;
}

- (void)enqueueSceneRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [FBWorkspaceEventDispatcherSource enqueueSceneRequest:a2];
  }

  v13 = requestCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBWorkspaceEventDispatcherSource *)v13 enqueueSceneRequest:a2];
  }

  targetIdentifier = [v13 targetIdentifier];
  if (!targetIdentifier)
  {
    [(FBWorkspaceEventDispatcherSource *)v13 enqueueSceneRequest:a2];
  }

  v7 = targetIdentifier;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_remnants)
  {
    [FBWorkspaceEventDispatcherSource enqueueSceneRequest:a2];
  }

  if (!self->_lock_invalidationBlock)
  {
    [FBWorkspaceEventDispatcherSource enqueueSceneRequest:a2];
  }

  v8 = [(NSMutableDictionary *)self->_lock_requestsByTargetIdentifier objectForKey:v7];
  if (v8)
  {
    v9 = v8;
    [v8 addObject:v13];
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithObject:v13];
    lock_requestsByTargetIdentifier = self->_lock_requestsByTargetIdentifier;
    if (lock_requestsByTargetIdentifier)
    {
      [(NSMutableDictionary *)lock_requestsByTargetIdentifier setObject:v9 forKey:v7];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionaryWithObject:v9 forKey:v7];
      v12 = self->_lock_requestsByTargetIdentifier;
      self->_lock_requestsByTargetIdentifier = v11;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dequeueSceneRequestsForTargetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!identifierCopy)
  {
    v12 = NSStringFromClass(v7);
    v13 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"targetIdentifier", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBWorkspaceEventDispatcherSource *)a2 dequeueSceneRequestsForTargetIdentifier:v13];
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A8A30E48);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBWorkspaceEventDispatcherSource *)identifierCopy dequeueSceneRequestsForTargetIdentifier:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_lock_requestsByTargetIdentifier objectForKey:identifierCopy];
  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_lock_requestsByTargetIdentifier count];
    lock_requestsByTargetIdentifier = self->_lock_requestsByTargetIdentifier;
    if (v9 == 1)
    {
      self->_lock_requestsByTargetIdentifier = 0;
    }

    else
    {
      [(NSMutableDictionary *)lock_requestsByTargetIdentifier removeObjectForKey:identifierCopy];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (FBWorkspaceEventDispatcherSource)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"init is not allowed on FBWorkspaceEventDispatcherSource"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"FBWorkspaceEventDispatcherSource.m";
    v17 = 1024;
    v18 = 151;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_initWithProcessHandle:(void *)a1 invalidationBlock:(char *)a2 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"processHandle", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessHandle:(char *)a1 invalidationBlock:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"invalidationBlock"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessHandle:(uint64_t)a1 invalidationBlock:(char *)a2 .cold.3(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid on handle=%@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProcessHandle:(char *)a1 invalidationBlock:.cold.4(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"processHandle", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"remnants", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(void *)a1 .cold.2(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"remnant", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.3(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"remnant", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"double handshake detected"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"the currentProcess may never have remnants"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to handshake after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)noteHandshakeWithRemnants:(char *)a1 .cold.7(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"remnants", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)consumeRemnantsPassingTest:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"test"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"request", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to enqueue scene request after invalidation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempt to enqueue scene request before handshake"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(uint64_t)a1 .cold.4(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing targetIdentifier in request : %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enqueueSceneRequest:(char *)a1 .cold.5(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"request", v4];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)dequeueSceneRequestsForTargetIdentifier:(void *)a1 .cold.1(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 classForCoder];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"targetIdentifier", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_8();
    v10 = NSStringFromClass(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_3(&dword_1A89DD000, MEMORY[0x1E69E9C10], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)dequeueSceneRequestsForTargetIdentifier:(uint64_t)a3 .cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  *v13 = 138544642;
  *&v13[4] = v5;
  *&v13[12] = 2114;
  *&v13[14] = v7;
  *&v13[22] = 2048;
  LOWORD(v14) = 2114;
  *(&v14 + 2) = @"FBWorkspaceEventDispatcherSource.m";
  WORD5(v14) = 1024;
  HIDWORD(v14) = 132;
  LOWORD(v15) = 2114;
  *(&v15 + 2) = a3;
  OUTLINED_FUNCTION_4(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], a2, v14, v15, HIWORD(a3));
}

@end