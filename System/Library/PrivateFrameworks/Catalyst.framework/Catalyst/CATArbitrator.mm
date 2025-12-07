@interface CATArbitrator
- (CATArbitrator)init;
- (id)debugDescription;
- (id)resourceForKey:(id)key exclusive:(BOOL)exclusive;
- (id)resourcesForKeys:(id)keys exclusive:(BOOL)exclusive;
- (id)waitForResourcesForKeys:(id)keys exclusive:(BOOL)exclusive delegateQueue:(id)queue completionBlock:(id)block;
- (unint64_t)unregisterResourceForKey:(id)key;
- (void)registerResource:(id)resource forKey:(id)key;
- (void)registerResource:(id)resource forKey:(id)key maxConcurrentCount:(unint64_t)count;
@end

@implementation CATArbitrator

- (CATArbitrator)init
{
  v6.receiver = self;
  v6.super_class = CATArbitrator;
  v2 = [(CATArbitrator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mRegistrationByKey = v2->mRegistrationByKey;
    v2->mRegistrationByKey = v3;
  }

  return v2;
}

- (id)debugDescription
{
  v3 = self->mRegistrationByKey;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->mRegistrationByKey debugDescription];
  objc_sync_exit(v3);

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, v4];

  return v5;
}

- (id)resourceForKey:(id)key exclusive:(BOOL)exclusive
{
  exclusiveCopy = exclusive;
  v11[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (!keyCopy)
  {
    [CATArbitrator resourceForKey:exclusive:];
  }

  v11[0] = keyCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [(CATArbitrator *)self resourcesForKeys:v7 exclusive:exclusiveCopy];
  v9 = [v8 objectForKeyedSubscript:keyCopy];

  return v9;
}

- (id)resourcesForKeys:(id)keys exclusive:(BOOL)exclusive
{
  exclusiveCopy = exclusive;
  v36 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  if (![keysCopy count])
  {
    v19 = MEMORY[0x277CBEC10];
    goto LABEL_23;
  }

  v7 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v8 = self->mRegistrationByKey;
  objc_sync_enter(v8);
  selfCopy = self;
  v9 = [(NSMutableDictionary *)self->mRegistrationByKey copy];
  objc_sync_exit(v8);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = keysCopy;
  v10 = keysCopy;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = *v28;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v27 + 1) + 8 * i);
      v15 = [v7 objectForKeyedSubscript:v14];

      if (!v15)
      {
        v16 = [v9 objectForKeyedSubscript:v14];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 makeResourceProxyIfPossible:exclusiveCopy];
          if (v18)
          {
            [v7 setObject:v18 forKeyedSubscript:v14];

            continue;
          }

          allValues = [v7 allValues];
          [allValues makeObjectsPerformSelector:sel_invalidate];

          [v7 removeAllObjects];
          v7 = v17;
        }

        else
        {
          if (_CATLogGeneral_onceToken != -1)
          {
            [CATArbitrator resourcesForKeys:exclusive:];
          }

          v20 = _CATLogGeneral_logObj;
          if (os_log_type_enabled(_CATLogGeneral_logObj, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v32 = selfCopy;
            v33 = 2112;
            v34 = v14;
            _os_log_impl(&dword_24329F000, v20, OS_LOG_TYPE_INFO, "%@ is missing entry for %@", buf, 0x16u);
          }

          allValues2 = [v7 allValues];
          [allValues2 makeObjectsPerformSelector:sel_invalidate];

          [v7 removeAllObjects];
        }

        v7 = 0;
        goto LABEL_22;
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_22:

  objc_autoreleasePoolPop(context);
  v19 = [v7 copy];

  keysCopy = v25;
LABEL_23:

  return v19;
}

- (id)waitForResourcesForKeys:(id)keys exclusive:(BOOL)exclusive delegateQueue:(id)queue completionBlock:(id)block
{
  exclusiveCopy = exclusive;
  v33 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  queueCopy = queue;
  blockCopy = block;
  if (queueCopy)
  {
    v13 = queueCopy;
  }

  else
  {
    v14 = qos_class_self();
    v13 = dispatch_get_global_queue(v14, 0);
  }

  v26 = blockCopy;
  v27 = v13;
  v15 = [[_CATArbitratorWaitToken alloc] initWithDelegateQueue:v13 completionBlock:blockCopy];
  if ([keysCopy count])
  {
    v16 = self->mRegistrationByKey;
    objc_sync_enter(v16);
    v17 = [(NSMutableDictionary *)self->mRegistrationByKey copy];
    objc_sync_exit(v16);

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = keysCopy;
    v18 = keysCopy;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v19)
    {
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v28 + 1) + 8 * i);
          v23 = [v17 objectForKeyedSubscript:v22];
          if (v23)
          {
            [(_CATArbitratorWaitToken *)v15 waitForRegistrationEntry:v23 forKey:v22 exclusive:exclusiveCopy];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    keysCopy = v25;
  }

  [(_CATArbitratorWaitToken *)v15 resume];

  return v15;
}

- (void)registerResource:(id)resource forKey:(id)key
{
  resourceCopy = resource;
  keyCopy = key;
  if (resourceCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CATArbitrator registerResource:forKey:];
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  [CATArbitrator registerResource:forKey:];
LABEL_3:
  [(CATArbitrator *)self registerResource:resourceCopy forKey:keyCopy maxConcurrentCount:1];
}

- (void)registerResource:(id)resource forKey:(id)key maxConcurrentCount:(unint64_t)count
{
  resourceCopy = resource;
  keyCopy = key;
  if (resourceCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [CATArbitrator registerResource:forKey:maxConcurrentCount:];
    if (count)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [CATArbitrator registerResource:forKey:maxConcurrentCount:];
  if (!keyCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (count)
  {
    goto LABEL_4;
  }

LABEL_11:
  [CATArbitrator registerResource:forKey:maxConcurrentCount:];
LABEL_4:
  v10 = [[_CATArbitratorRegistrationEntry alloc] initWithResource:resourceCopy maxConcurrentCount:count];
  v11 = self->mRegistrationByKey;
  objc_sync_enter(v11);
  v12 = [(NSMutableDictionary *)self->mRegistrationByKey objectForKeyedSubscript:keyCopy];

  if (v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"CATArbitrator.m" lineNumber:245 description:{@"%@ cannot call %@ when key (%@) is already registered", self, v14, keyCopy}];
  }

  [(NSMutableDictionary *)self->mRegistrationByKey setObject:v10 forKeyedSubscript:keyCopy];
  objc_sync_exit(v11);
}

- (unint64_t)unregisterResourceForKey:(id)key
{
  keyCopy = key;
  v5 = self->mRegistrationByKey;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->mRegistrationByKey objectForKeyedSubscript:keyCopy];
  if (v6)
  {
    [(NSMutableDictionary *)self->mRegistrationByKey removeObjectForKey:keyCopy];
    currentCount = [v6 currentCount];
  }

  else
  {
    currentCount = 0;
  }

  objc_sync_exit(v5);

  [v6 invalidate];
  return currentCount;
}

- (void)resourceForKey:exclusive:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"resource" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:maxConcurrentCount:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"resource" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:maxConcurrentCount:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:maxConcurrentCount:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

@end