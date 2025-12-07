@interface _PRUISPosterSnapshotControllerImpl
+ (id)defaultCachingOptionsForRequest:(id)request;
- (_PRUISPosterSnapshotControllerImpl)initWithCache:(id)cache instanceIdentifier:(id)identifier extensionProvider:(id)provider;
- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error;
- (void)_snapshotRequestDidFinishWithResult:(id)result snapshotterError:(id)error request:(id)request completion:(id)completion;
- (void)dealloc;
- (void)executeSnapshotRequest:(id)request completion:(id)completion;
- (void)invalidate;
- (void)snapshotterDidInvalidateScene:(id)scene didWaitForSceneInvalidation:(BOOL)invalidation forRequest:(id)request;
@end

@implementation _PRUISPosterSnapshotControllerImpl

- (_PRUISPosterSnapshotControllerImpl)initWithCache:(id)cache instanceIdentifier:(id)identifier extensionProvider:(id)provider
{
  cacheCopy = cache;
  identifierCopy = identifier;
  providerCopy = provider;
  v13 = cacheCopy;
  v14 = v13;
  if (v13 && ([v13 conformsToProtocol:&unk_1F4B13C60] & 1) == 0)
  {
    [_PRUISPosterSnapshotControllerImpl initWithCache:a2 instanceIdentifier:self extensionProvider:?];
  }

  v35.receiver = self;
  v35.super_class = _PRUISPosterSnapshotControllerImpl;
  v15 = [(_PRUISPosterSnapshotControllerImpl *)&v35 init];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
    invalidationFlag = v15->_invalidationFlag;
    v15->_invalidationFlag = v16;

    v18 = providerCopy ? providerCopy : [objc_alloc(MEMORY[0x1E69C5170]) initWithDefaultInstanceIdentifier:identifierCopy];
    extensionProvider = v15->_extensionProvider;
    v15->_extensionProvider = v18;

    [(PFPosterExtensionProvider *)v15->_extensionProvider startWithImmediateQueryExecution:0];
    objc_storeStrong(&v15->_cache, cache);
    v15->_lock._os_unfair_lock_opaque = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    lock_providerToSnapshotterMap = v15->_lock_providerToSnapshotterMap;
    v15->_lock_providerToSnapshotterMap = strongToStrongObjectsMapTable;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    lock_snapshotIdentifierToSnapshotRequestMap = v15->_lock_snapshotIdentifierToSnapshotRequestMap;
    v15->_lock_snapshotIdentifierToSnapshotRequestMap = strongToWeakObjectsMapTable;

    concurrent = [MEMORY[0x1E698E698] concurrent];
    v25 = [concurrent autoreleaseFrequency:1];
    v26 = BSDispatchQueueCreate();
    completionBlockQueue = v15->_completionBlockQueue;
    v15->_completionBlockQueue = v26;

    cache = v15->_cache;
    if (cache)
    {
      v34 = 0;
      v29 = [(PUIPosterSnapshotCache *)cache checkCacheIsReachableWithError:&v34];
      v30 = v34;
      v31 = v30;
      if (v30 || (v29 & 1) == 0)
      {
        v32 = PRUISLogSnapshotting(v30);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          [_PRUISPosterSnapshotControllerImpl initWithCache:v31 instanceIdentifier:v32 extensionProvider:?];
        }
      }
    }
  }

  return v15;
}

- (void)dealloc
{
  [(_PRUISPosterSnapshotControllerImpl *)self invalidate];
  lock_providerToSnapshotterMap = self->_lock_providerToSnapshotterMap;
  self->_lock_providerToSnapshotterMap = 0;

  lock_snapshotIdentifierToSnapshotRequestMap = self->_lock_snapshotIdentifierToSnapshotRequestMap;
  self->_lock_snapshotIdentifierToSnapshotRequestMap = 0;

  v5.receiver = self;
  v5.super_class = _PRUISPosterSnapshotControllerImpl;
  [(_PRUISPosterSnapshotControllerImpl *)&v5 dealloc];
}

- (void)executeSnapshotRequest:(id)request completion:(id)completion
{
  v51[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (!completionCopy)
  {
    [_PRUISPosterSnapshotControllerImpl executeSnapshotRequest:a2 completion:self];
  }

  v9 = completionCopy;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v10 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    (v9)[2](v9, requestCopy, 0, v10, 0);
  }

  else
  {
    v11 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___PRUISPosterSnapshotControllerImpl_executeSnapshotRequest_completion___block_invoke;
    aBlock[3] = &unk_1E83A8EA8;
    v38 = v11;
    v48 = v38;
    v49 = v9;
    v39 = _Block_copy(aBlock);
    path = [requestCopy path];
    serverIdentity = [path serverIdentity];
    provider = [serverIdentity provider];

    extensionForIdentifier = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
    v15 = [extensionForIdentifier objectForKey:provider];

    if (v15)
    {
      os_unfair_lock_lock(&self->_lock);
      v16 = [(NSMapTable *)self->_lock_providerToSnapshotterMap objectForKey:provider];
      v17 = v16;
      if (v16 && ([v16 isValid] & 1) != 0)
      {
        v18 = v17;
      }

      else
      {
        extensionForIdentifier2 = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
        v20 = [extensionForIdentifier2 objectForKey:provider];

        instanceProvider = [(PFPosterExtensionProvider *)self->_extensionProvider instanceProvider];
        v22 = [instanceProvider acquireInstanceForExtension:v20 reason:@"snapshots" error:0];

        v18 = [objc_alloc(MEMORY[0x1E69C5618]) initWithExtensionInstance:v22];
        [v18 setDelegate:self];
        [(NSMapTable *)self->_lock_providerToSnapshotterMap setObject:v18 forKey:provider];
      }

      lock_snapshotIdentifierToSnapshotRequestMap = self->_lock_snapshotIdentifierToSnapshotRequestMap;
      uniqueIdentifier = [requestCopy uniqueIdentifier];
      [(NSMapTable *)lock_snapshotIdentifierToSnapshotRequestMap setObject:requestCopy forKey:uniqueIdentifier];

      lock_runtimeAssertion = self->_lock_runtimeAssertion;
      ++self->_lock_runningSnapshotters;
      if (lock_runtimeAssertion)
      {
        v27 = PRUISLogSnapshotting(v25);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [_PRUISPosterSnapshotControllerImpl executeSnapshotRequest:v27 completion:?];
        }
      }

      else
      {
        v31 = MEMORY[0x1E69C7548];
        currentProcess = [MEMORY[0x1E69C7640] currentProcess];
        v33 = [v31 pf_prewarmRuntimeAssertionForTarget:currentProcess explanation:@"Snapshotting assertion"];

        v46 = 0;
        LOBYTE(currentProcess) = [v33 acquireWithError:&v46];
        v27 = v46;
        v34 = PRUISLogSnapshotting(v27);
        v35 = v34;
        if (currentProcess)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [_PRUISPosterSnapshotControllerImpl executeSnapshotRequest:v35 completion:?];
          }

          v36 = v33;
        }

        else
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [_PRUISPosterSnapshotControllerImpl executeSnapshotRequest:v27 completion:v35];
          }

          v36 = 0;
        }

        v37 = self->_lock_runtimeAssertion;
        self->_lock_runtimeAssertion = v36;
      }

      os_unfair_lock_unlock(&self->_lock);
      objc_initWeak(&location, self);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __72___PRUISPosterSnapshotControllerImpl_executeSnapshotRequest_completion___block_invoke_118;
      v41[3] = &unk_1E83A8ED0;
      objc_copyWeak(&v44, &location);
      v43 = v39;
      v42 = requestCopy;
      [v18 enqueueSnapshotRequest:v42 completion:v41];

      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
    }

    else
    {
      v28 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A588];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Extension '%@' was not found", provider];
      v51[0] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      v18 = [v28 pui_errorWithCode:3 userInfo:v30];

      (*(v39 + 2))(v39, requestCopy, 0, v18, 0);
    }
  }
}

- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error
{
  cache = self->_cache;
  v6 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:request];
  v7 = [(PUIPosterSnapshotCache *)cache latestSnapshotBundleMatchingPredicate:v6];
  v8 = [v7 result:error];

  return v8;
}

- (void)_snapshotRequestDidFinishWithResult:(id)result snapshotterError:(id)error request:(id)request completion:(id)completion
{
  resultCopy = result;
  errorCopy = error;
  requestCopy = request;
  completionCopy = completion;
  if (!completionCopy)
  {
    [_PRUISPosterSnapshotControllerImpl _snapshotRequestDidFinishWithResult:a2 snapshotterError:self request:? completion:?];
  }

  v15 = completionCopy;
  v16 = self->_completionBlockQueue;
  os_unfair_lock_lock(&self->_lock);
  lock_snapshotIdentifierToSnapshotRequestMap = self->_lock_snapshotIdentifierToSnapshotRequestMap;
  uniqueIdentifier = [requestCopy uniqueIdentifier];
  [(NSMapTable *)lock_snapshotIdentifierToSnapshotRequestMap removeObjectForKey:uniqueIdentifier];

  os_unfair_lock_unlock(&self->_lock);
  if (errorCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke;
    block[3] = &unk_1E83A87D8;
    v41 = v15;
    v39 = requestCopy;
    v40 = errorCopy;
    dispatch_async(v16, block);

    cache = v41;
  }

  else if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    [resultCopy invalidate];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_131;
    v26[3] = &unk_1E83A8558;
    v28 = v15;
    v27 = requestCopy;
    dispatch_async(v16, v26);

    cache = v28;
  }

  else
  {
    cache = [(_PRUISPosterSnapshotControllerImpl *)self cache];
    if (cache)
    {
      v25 = [_PRUISPosterSnapshotControllerImpl defaultCachingOptionsForRequest:requestCopy];
      snapshotBundle = [resultCopy snapshotBundle];
      v24 = [cache cacheSnapshotBundle:snapshotBundle options:v25];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_2;
      v34[3] = &unk_1E83A8EF8;
      v35 = requestCopy;
      v36 = resultCopy;
      v37 = v15;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __110___PRUISPosterSnapshotControllerImpl__snapshotRequestDidFinishWithResult_snapshotterError_request_completion___block_invoke_128;
      v29[3] = &unk_1E83A8F20;
      v30 = v35;
      v31 = snapshotBundle;
      v32 = v36;
      v33 = v37;
      v21 = MEMORY[0x1E69C5268];
      v22 = snapshotBundle;
      v23 = [v21 schedulerWithDispatchQueue:v16];
      [v24 addSuccessBlock:v34 andFailureBlock:v29 scheduler:v23];
    }
  }
}

- (void)snapshotterDidInvalidateScene:(id)scene didWaitForSceneInvalidation:(BOOL)invalidation forRequest:(id)request
{
  v37 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  requestCopy = request;
  os_unfair_lock_lock(&self->_lock);
  lock_snapshotIdentifierToSnapshotRequestMap = self->_lock_snapshotIdentifierToSnapshotRequestMap;
  uniqueIdentifier = [requestCopy uniqueIdentifier];
  v12 = [(NSMapTable *)lock_snapshotIdentifierToSnapshotRequestMap objectForKey:uniqueIdentifier];

  if (v12)
  {
    lock_runtimeAssertion = PRUISLogSnapshotting(v13);
    if (os_log_type_enabled(lock_runtimeAssertion, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138543618;
      v30 = v15;
      v31 = 2114;
      v32 = sceneCopy;
      _os_log_impl(&dword_1CAE63000, lock_runtimeAssertion, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@, but we're still expecting more work from this snapshotter", buf, 0x16u);
    }

LABEL_15:

    goto LABEL_16;
  }

  --self->_lock_runningSnapshotters;
  v16 = PRUISLogSnapshotting(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    lock_runningSnapshotters = self->_lock_runningSnapshotters;
    *buf = 138544130;
    v30 = v17;
    v31 = 2114;
    v32 = sceneCopy;
    v33 = 2050;
    v34 = lock_runningSnapshotters;
    v35 = 2114;
    v36 = requestCopy;
    _os_log_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@, remaining running snapshotters: %{public}lu, request: %{public}@", buf, 0x2Au);
  }

  if (!self->_lock_runningSnapshotters)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    objectEnumerator = [(NSMapTable *)self->_lock_providerToSnapshotterMap objectEnumerator];
    v20 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        v23 = 0;
        do
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v24 + 1) + 8 * v23++) invalidate];
        }

        while (v21 != v23);
        v21 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v21);
    }

    [(NSMapTable *)self->_lock_providerToSnapshotterMap removeAllObjects];
    [(RBSAssertion *)self->_lock_runtimeAssertion invalidate];
    lock_runtimeAssertion = self->_lock_runtimeAssertion;
    self->_lock_runtimeAssertion = 0;
    goto LABEL_15;
  }

LABEL_16:
  os_unfair_lock_unlock(&self->_lock);
}

+ (id)defaultCachingOptionsForRequest:(id)request
{
  requestCopy = request;
  path = [requestCopy path];
  isServerPosterPath = [path isServerPosterPath];

  if (isServerPosterPath)
  {
    v6 = objc_opt_new();
    path2 = [requestCopy path];
    isServerPosterPath2 = [path2 isServerPosterPath];

    if (isServerPosterPath2)
    {
      path3 = [requestCopy path];
      serverIdentity = [path3 serverIdentity];
      version = [serverIdentity version];

      path4 = [requestCopy path];
      serverIdentity2 = [path4 serverIdentity];
      posterUUID = [serverIdentity2 posterUUID];

      if (posterUUID && version)
      {
        v15 = [MEMORY[0x1E69C55C8] predicateMatchingBundleWithPosterVersionLessThan:version posterUUID:posterUUID];
        [v6 addObject:v15];
      }
    }

    else
    {
      posterUUID = 0;
    }

    v16 = [MEMORY[0x1E69C55D0] removeBundlesMatchingPredicates:v6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    os_unfair_lock_lock(&self->_lock);
    objectEnumerator = [(NSMapTable *)self->_lock_providerToSnapshotterMap objectEnumerator];
    allObjects = [objectEnumerator allObjects];

    lock_providerToSnapshotterMap = self->_lock_providerToSnapshotterMap;
    self->_lock_providerToSnapshotterMap = 0;

    v6 = self->_lock_runtimeAssertion;
    lock_runtimeAssertion = self->_lock_runtimeAssertion;
    self->_lock_runtimeAssertion = 0;

    os_unfair_lock_unlock(&self->_lock);
    [(PFPosterExtensionProvider *)self->_extensionProvider cancel];
    extensionProvider = self->_extensionProvider;
    self->_extensionProvider = 0;
  }

  else
  {
    v6 = 0;
    allObjects = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  if (v6)
  {
    [(RBSAssertion *)v6 invalidate];
  }
}

- (void)initWithCache:(const char *)a1 instanceIdentifier:(uint64_t)a2 extensionProvider:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object conformsToProtocol:@protocol(PUIPosterSnapshotCache)]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCache:(uint64_t)a1 instanceIdentifier:(NSObject *)a2 extensionProvider:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_FAULT, "Unable to setup cache: %@. Future snapshots may fail to be cached.", &v2, 0xCu);
}

- (void)executeSnapshotRequest:(uint64_t)a1 completion:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAE63000, a2, OS_LOG_TYPE_ERROR, "Error acquiring runtime assertion:'%@'", &v2, 0xCu);
}

- (void)executeSnapshotRequest:(const char *)a1 completion:(uint64_t)a2 .cold.4(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_snapshotRequestDidFinishWithResult:(const char *)a1 snapshotterError:(uint64_t)a2 request:completion:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end