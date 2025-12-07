@interface COStateAddOn
- (COStateAddOn)init;
- (COStateAddOnDelegate)delegate;
- (void)_broadcastMeshState:(id)state;
- (void)_constructMeshState;
- (void)_handleStateNotification:(id)notification;
- (void)_handleStateReadRequest:(id)request callback:(id)callback;
- (void)_handleStateUpdateNotification:(id)notification;
- (void)_handleStateUpdateRequest:(id)request callback:(id)callback;
- (void)_handleUpdates:(id)updates removals:(id)removals;
- (void)_processOutstandingUpdateRequests;
- (void)_sendRequest:(id)request withRetryCount:(int64_t)count withCallback:(id)callback;
- (void)_withLock:(id)lock;
- (void)didAddToMeshController:(id)controller;
- (void)didChangeNodesForMeshController:(id)controller;
- (void)meshController:(id)controller didTransitionToState:(unint64_t)state;
- (void)removeKeyPaths:(id)paths suite:(id)suite withCallback:(id)callback;
- (void)sendStateUpdates:(id)updates removals:(id)removals withCallback:(id)callback;
- (void)setDelegate:(id)delegate;
- (void)setDictionary:(id)dictionary suite:(id)suite withCallback:(id)callback;
- (void)willRemoveFromMeshController:(id)controller;
@end

@implementation COStateAddOn

- (COStateAddOn)init
{
  v6.receiver = self;
  v6.super_class = COStateAddOn;
  v2 = [(COMeshAddOn *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    outstandingUpdateRequests = v2->_outstandingUpdateRequests;
    v2->_outstandingUpdateRequests = array;

    v2->_stateConstructionGeneration = 0;
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (COStateAddOnDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__19;
  v9 = __Block_byref_object_dispose__19;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__COStateAddOn_delegate__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(COStateAddOn *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __24__COStateAddOn_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__COStateAddOn_setDelegate___block_invoke;
  v6[3] = &unk_278E156B0;
  v7 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  [(COStateAddOn *)self _withLock:v6];
}

void __28__COStateAddOn_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
  LOBYTE(v2) = [v2 isEqual:WeakRetained];

  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 40) + 56);

    objc_storeWeak(v5, v4);
  }
}

- (void)setDictionary:(id)dictionary suite:(id)suite withCallback:(id)callback
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  suiteCopy = suite;
  callbackCopy = callback;
  v11 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    meshController = [(COMeshAddOn *)self meshController];
    v14 = 134218498;
    v15 = meshController;
    v16 = 2112;
    v17 = dictionaryCopy;
    v18 = 2112;
    v19 = suiteCopy;
    _os_log_debug_impl(&dword_244378000, v11, OS_LOG_TYPE_DEBUG, "%p setting state %@ for suite %@", &v14, 0x20u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setValue:dictionaryCopy forKey:suiteCopy];
  [(COStateAddOn *)self sendStateUpdates:dictionary removals:0 withCallback:callbackCopy];
}

- (void)removeKeyPaths:(id)paths suite:(id)suite withCallback:(id)callback
{
  pathsCopy = paths;
  suiteCopy = suite;
  callbackCopy = callback;
  v11 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COStateAddOn removeKeyPaths:suite:withCallback:];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:pathsCopy forKey:suiteCopy];
  [(COStateAddOn *)self sendStateUpdates:0 removals:dictionary withCallback:callbackCopy];
}

- (void)sendStateUpdates:(id)updates removals:(id)removals withCallback:(id)callback
{
  updatesCopy = updates;
  removalsCopy = removals;
  callbackCopy = callback;
  v11 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [COStateAddOn sendStateUpdates:removals:withCallback:];
  }

  v12 = [[COStateUpdateRequest alloc] initWithUpdates:updatesCopy removals:removalsCopy];
  meshController = [(COMeshAddOn *)self meshController];

  if (meshController)
  {
    [(COStateAddOn *)self _sendRequest:v12 withRetryCount:5 withCallback:callbackCopy];
  }

  else
  {
    [(COStateAddOn *)self _handleUpdates:updatesCopy removals:removalsCopy];
  }
}

- (void)_sendRequest:(id)request withRetryCount:(int64_t)count withCallback:(id)callback
{
  requestCopy = request;
  callbackCopy = callback;
  if (count <= 0)
  {
    v13 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [COStateAddOn _sendRequest:requestCopy withRetryCount:v13 withCallback:?];
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4002 userInfo:0];
    callbackCopy[2](callbackCopy, v14);
  }

  else
  {
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__COStateAddOn__sendRequest_withRetryCount_withCallback___block_invoke;
    v15[3] = &unk_278E18090;
    objc_copyWeak(v18, &location);
    v10 = requestCopy;
    v16 = v10;
    v18[1] = count;
    v17 = callbackCopy;
    v11 = MEMORY[0x245D5FF10](v15);
    meshController = [(COMeshAddOn *)self meshController];
    [meshController sendRequest:v10 withCompletionHandler:v11];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

void __57__COStateAddOn__sendRequest_withRetryCount_withCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a5)
    {
      v8 = COCoreLogForCategory(6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __57__COStateAddOn__sendRequest_withRetryCount_withCallback___block_invoke_cold_1(a1, v8);
      }

      [WeakRetained _sendRequest:*(a1 + 32) withRetryCount:*(a1 + 56) - 1 withCallback:*(a1 + 40)];
    }

    else
    {
      v9 = [*(a1 + 32) updates];
      v10 = [*(a1 + 32) removals];
      [WeakRetained _handleUpdates:v9 removals:v10];

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_handleUpdates:(id)updates removals:(id)removals
{
  v97 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  removalsCopy = removals;
  v7 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy3 = self;
    v93 = 2112;
    v94 = updatesCopy;
    v95 = 2112;
    v96 = removalsCopy;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p handling updates %@ and removals %@", buf, 0x20u);
  }

  meshState = [(COStateAddOn *)self meshState];
  v60 = [meshState mutableCopy];

  v9 = 0x277CBE000uLL;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = [updatesCopy allKeys];
  v69 = updatesCopy;
  selfCopy2 = self;
  v57 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
  if (v57)
  {
    v55 = *v84;
    do
    {
      v10 = 0;
      do
      {
        if (*v84 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v83 + 1) + 8 * v10);
        meshState2 = [(COStateAddOn *)self meshState];
        v13 = [meshState2 objectForKeyedSubscript:v11];
        v58 = v10;
        if (v13)
        {
          meshState3 = [(COStateAddOn *)self meshState];
          v15 = [meshState3 objectForKeyedSubscript:v11];
          dictionary3 = [v15 mutableCopy];

          v9 = 0x277CBE000;
        }

        else
        {
          dictionary3 = [MEMORY[0x277CBEB38] dictionary];
        }

        dictionary4 = [*(v9 + 2872) dictionary];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v16 = v69;
        v17 = [v69 objectForKeyedSubscript:v11];
        allKeys = [v17 allKeys];

        v65 = allKeys;
        v19 = [allKeys countByEnumeratingWithState:&v79 objects:v89 count:16];
        if (v19)
        {
          v20 = v19;
          v67 = *v80;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v80 != v67)
              {
                objc_enumerationMutation(v65);
              }

              v22 = *(*(&v79 + 1) + 8 * i);
              meshState4 = [(COStateAddOn *)self meshState];
              v24 = [meshState4 objectForKeyedSubscript:v11];
              v25 = [v24 objectForKeyedSubscript:v22];
              v26 = [v16 objectForKeyedSubscript:v11];
              v27 = [v26 objectForKeyedSubscript:v22];
              v28 = [v25 isEqual:v27];

              v16 = v69;
              if ((v28 & 1) == 0)
              {
                v29 = [v69 objectForKeyedSubscript:v11];
                v30 = [v29 objectForKeyedSubscript:v22];
                [dictionary4 setObject:v30 forKey:v22];

                v31 = [v69 objectForKeyedSubscript:v11];
                v32 = [v31 objectForKeyedSubscript:v22];
                [dictionary3 setObject:v32 forKey:v22];
              }

              self = selfCopy2;
            }

            v20 = [v65 countByEnumeratingWithState:&v79 objects:v89 count:16];
          }

          while (v20);
        }

        if ([dictionary4 count])
        {
          [dictionary setObject:dictionary4 forKey:v11];
        }

        [(NSDictionary *)v60 setObject:dictionary3 forKey:v11];

        v10 = v58 + 1;
        v9 = 0x277CBE000uLL;
      }

      while (v58 + 1 != v57);
      v57 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    }

    while (v57);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  allKeys2 = [removalsCopy allKeys];
  v64 = [allKeys2 countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v64)
  {
    v62 = *v76;
    do
    {
      v33 = 0;
      do
      {
        if (*v76 != v62)
        {
          objc_enumerationMutation(allKeys2);
        }

        v66 = v33;
        v34 = *(*(&v75 + 1) + 8 * v33);
        meshState5 = [(COStateAddOn *)self meshState];
        v36 = [meshState5 objectForKeyedSubscript:v34];
        if (v36)
        {
          meshState6 = [(COStateAddOn *)self meshState];
          v38 = [meshState6 objectForKeyedSubscript:v34];
          dictionary5 = [v38 mutableCopy];
        }

        else
        {
          dictionary5 = [*(v9 + 2872) dictionary];
        }

        v39 = [MEMORY[0x277CBEB58] set];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v40 = [removalsCopy objectForKeyedSubscript:v34];
        v41 = [v40 countByEnumeratingWithState:&v71 objects:v87 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v72;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v72 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v71 + 1) + 8 * j);
              meshState7 = [(COStateAddOn *)self meshState];
              v47 = [meshState7 objectForKeyedSubscript:v34];
              v48 = [v47 objectForKeyedSubscript:v45];

              if (v48)
              {
                [v39 addObject:v45];
                [dictionary5 removeObjectForKey:v45];
              }

              self = selfCopy2;
            }

            v42 = [v40 countByEnumeratingWithState:&v71 objects:v87 count:16];
          }

          while (v42);
        }

        if ([v39 count])
        {
          [dictionary2 setObject:v39 forKey:v34];
        }

        [(NSDictionary *)v60 setObject:dictionary5 forKey:v34];

        v33 = v66 + 1;
        v9 = 0x277CBE000;
      }

      while (v66 + 1 != v64);
      v64 = [allKeys2 countByEnumeratingWithState:&v75 objects:v88 count:16];
    }

    while (v64);
  }

  meshState = self->_meshState;
  self->_meshState = v60;

  if ([dictionary count] || objc_msgSend(dictionary2, "count"))
  {
    v50 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v93 = 2112;
      v94 = dictionary;
      v95 = 2112;
      v96 = dictionary2;
      _os_log_impl(&dword_244378000, v50, OS_LOG_TYPE_DEFAULT, "%p informing delegates of changes. Updates Diff = %@ and Removals Diff %@", buf, 0x20u);
    }

    delegate = [(COStateAddOn *)self delegate];
    [delegate addOn:self receivedUpdates:dictionary removals:dictionary2];
  }
}

- (void)meshController:(id)controller didTransitionToState:(unint64_t)state
{
  controllerCopy = controller;
  v7 = controllerCopy;
  if (state == 3)
  {
    v8 = [controllerCopy me];
    leader = [v7 leader];
    v10 = [v8 isEqual:leader];

    if (v10)
    {
      [(COStateAddOn *)self _constructMeshState];
    }
  }

  v11.receiver = self;
  v11.super_class = COStateAddOn;
  [(COMeshAddOn *)&v11 meshController:v7 didTransitionToState:state];
}

- (void)didAddToMeshController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = COStateAddOn;
  [(COMeshAddOn *)&v14 didAddToMeshController:controllerCopy];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__COStateAddOn_didAddToMeshController___block_invoke;
  v11[3] = &unk_278E15FA8;
  objc_copyWeak(&v12, &location);
  [controllerCopy registerHandler:v11 forRequestClass:objc_opt_class()];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__COStateAddOn_didAddToMeshController___block_invoke_2;
  v9[3] = &unk_278E15FA8;
  objc_copyWeak(&v10, &location);
  [controllerCopy registerHandler:v9 forRequestClass:objc_opt_class()];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__COStateAddOn_didAddToMeshController___block_invoke_3;
  v7[3] = &unk_278E15FF8;
  objc_copyWeak(&v8, &location);
  [controllerCopy registerHandler:v7 forNotificationClass:objc_opt_class()];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__COStateAddOn_didAddToMeshController___block_invoke_4;
  v5[3] = &unk_278E15FF8;
  objc_copyWeak(&v6, &location);
  [controllerCopy registerHandler:v5 forNotificationClass:objc_opt_class()];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __39__COStateAddOn_didAddToMeshController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleStateReadRequest:v8 callback:v5];
  }
}

void __39__COStateAddOn_didAddToMeshController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleStateUpdateRequest:v8 callback:v5];
  }
}

void __39__COStateAddOn_didAddToMeshController___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleStateNotification:v5];
  }
}

void __39__COStateAddOn_didAddToMeshController___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleStateUpdateNotification:v5];
  }
}

- (void)willRemoveFromMeshController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy deregisterHandlerForRequestClass:objc_opt_class()];
  [controllerCopy deregisterHandlerForRequestClass:objc_opt_class()];
  [controllerCopy deregisterHandlerForNotificationClass:objc_opt_class()];
  [controllerCopy deregisterHandlerForNotificationClass:objc_opt_class()];
  v5.receiver = self;
  v5.super_class = COStateAddOn;
  [(COMeshAddOn *)&v5 willRemoveFromMeshController:controllerCopy];
}

- (void)didChangeNodesForMeshController:(id)controller
{
  controllerCopy = controller;
  meshController = [(COMeshAddOn *)self meshController];
  v6 = [meshController me];
  meshController2 = [(COMeshAddOn *)self meshController];
  leader = [meshController2 leader];
  v9 = [v6 isEqual:leader];

  if (v9)
  {
    [(COStateAddOn *)self _constructMeshState];
  }

  v10.receiver = self;
  v10.super_class = COStateAddOn;
  [(COMeshAddOn *)&v10 didChangeNodesForMeshController:controllerCopy];
}

- (void)_constructMeshState
{
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  ++self->_stateConstructionGeneration;
  self->_isConstructingState = 1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__19;
  v11[4] = __Block_byref_object_dispose__19;
  v12 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__19;
  v8[4] = __Block_byref_object_dispose__19;
  v9 = 0;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__COStateAddOn__constructMeshState__block_invoke;
  v5[3] = &unk_278E18158;
  objc_copyWeak(&v6, &location);
  v5[4] = v8;
  v5[5] = v11;
  v5[6] = v10;
  [WeakRetained stateForAddOn:self withCallback:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
}

void __35__COStateAddOn__constructMeshState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained meshControllerQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__COStateAddOn__constructMeshState__block_invoke_2;
    v7[3] = &unk_278E18130;
    v10 = *(a1 + 32);
    v8 = v3;
    v9 = v5;
    objc_copyWeak(&v12, (a1 + 56));
    v11 = *(a1 + 40);
    dispatch_async(v6, v7);

    objc_destroyWeak(&v12);
  }
}

void __35__COStateAddOn__constructMeshState__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) meshController];
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = *(*(a1 + 40) + 32);
    *buf = 134218498;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2048;
    v30 = v8;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%p constructing mesh post election. Self state = %@. generation = %lu ", buf, 0x20u);
  }

  v9 = objc_alloc_init(COStateReadRequest);
  v10 = *(*(a1 + 40) + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __35__COStateAddOn__constructMeshState__block_invoke_37;
  v23[3] = &unk_278E180B8;
  objc_copyWeak(v24, (a1 + 72));
  v23[4] = *(a1 + 48);
  v24[1] = v10;
  v11 = MEMORY[0x245D5FF10](v23);
  v12 = [*(a1 + 40) meshController];
  v13 = v12 == 0;

  if (v13)
  {
    v11[2](v11);
  }

  v14 = [*(a1 + 40) meshController];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __35__COStateAddOn__constructMeshState__block_invoke_38;
  v19[3] = &unk_278E180E0;
  v21 = *(a1 + 56);
  objc_copyWeak(&v22, (a1 + 72));
  v15 = v11;
  v20 = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__COStateAddOn__constructMeshState__block_invoke_2_40;
  v17[3] = &unk_278E18108;
  objc_copyWeak(v18, (a1 + 72));
  v16 = *(a1 + 48);
  v17[4] = *(a1 + 64);
  v17[5] = v16;
  v18[1] = v10;
  [v14 broadcastRequest:v9 includingSelf:0 recipientsCallback:v19 completionHandler:v17];

  objc_destroyWeak(v18);
  objc_destroyWeak(&v22);

  objc_destroyWeak(v24);
}

void __35__COStateAddOn__constructMeshState__block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __35__COStateAddOn__constructMeshState__block_invoke_37_cold_1(v3);
    }

    v4 = [[COStateNotification alloc] initWithState:*(*(*(a1 + 32) + 8) + 40)];
    [WeakRetained _handleStateNotification:v4];
    if (WeakRetained[4] == *(a1 + 48))
    {
      [WeakRetained _processOutstandingUpdateRequests];
    }
  }
}

void __35__COStateAddOn__constructMeshState__block_invoke_38(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *(*(*(a1 + 48) + 8) + 24) = [v5 count];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && ![*(*(*(a1 + 40) + 8) + 40) count])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __35__COStateAddOn__constructMeshState__block_invoke_2_40(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a5)
    {
      v11 = COCoreLogForCategory(6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __35__COStateAddOn__constructMeshState__block_invoke_2_40_cold_1(v8, v11);
      }
    }

    else
    {
      v37 = v9;
      v12 = [v9 state];
      v13 = COCoreLogForCategory(6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v34 = [WeakRetained meshController];
        v35 = *(*(*(a1 + 32) + 8) + 24) - 1;
        *buf = 134218754;
        v55 = v34;
        v56 = 2048;
        v57 = v8;
        v58 = 2112;
        v59 = v12;
        v60 = 2048;
        v61 = v35;
        _os_log_debug_impl(&dword_244378000, v13, OS_LOG_TYPE_DEBUG, "%p received COStateReadResponse from %p. Response state = %@. Waiting for %lu more responses", buf, 0x2Au);
      }

      v36 = WeakRetained;
      v38 = v8;

      v43 = v12;
      v14 = [v12 allKeys];
      v42 = [*(*(*(a1 + 40) + 8) + 40) mutableCopy];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v14;
      v15 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v15)
      {
        v16 = v15;
        v40 = *v49;
        v41 = a1;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v49 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v48 + 1) + 8 * i);
            v19 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:{v18, v36}];
            if (v19)
            {
              v20 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v18];
              v21 = [v20 mutableCopy];
            }

            else
            {
              v21 = [MEMORY[0x277CBEB38] dictionary];
            }

            v22 = [v43 objectForKeyedSubscript:v18];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v45;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v45 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v44 + 1) + 8 * j);
                  v28 = [v22 objectForKeyedSubscript:v27];
                  [v21 setObject:v28 forKey:v27];
                }

                v24 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
              }

              while (v24);
            }

            [v42 setObject:v21 forKey:v18];

            a1 = v41;
          }

          v16 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v16);
      }

      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v42;

      v9 = v37;
      v8 = v38;
      WeakRetained = v36;
      v11 = v43;
    }

    if (!--*(*(*(a1 + 32) + 8) + 24))
    {
      [WeakRetained _broadcastMeshState:*(*(*(a1 + 40) + 8) + 40)];
      if (WeakRetained[4] == *(a1 + 56))
      {
        v31 = COCoreLogForCategory(6);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [WeakRetained meshController];
          v33 = [v32 meshName];
          *buf = 138412290;
          v55 = v33;
          _os_log_impl(&dword_244378000, v31, OS_LOG_TYPE_DEFAULT, "Done with all outstanding mesh constructions %@, processing outstanding update requests if any", buf, 0xCu);
        }

        [WeakRetained _processOutstandingUpdateRequests];
      }
    }
  }
}

- (void)_processOutstandingUpdateRequests
{
  v30 = *MEMORY[0x277D85DE8];
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  self->_isConstructingState = 0;
  array = [MEMORY[0x277CBEB18] array];
  if ([(NSMutableArray *)self->_outstandingUpdateRequests count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->_outstandingUpdateRequests;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [array addObject:*(*(&v24 + 1) + 8 * i)];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }
  }

  [(NSMutableArray *)self->_outstandingUpdateRequests removeAllObjects];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = array;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        request = [v15 request];
        callback = [v15 callback];
        [(COStateAddOn *)self _handleStateUpdateRequest:request callback:callback];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  v18 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "Done processing outstanding update requests", v19, 2u);
  }
}

- (void)_broadcastMeshState:(id)state
{
  stateCopy = state;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  v6 = [[COStateNotification alloc] initWithState:stateCopy];
  v7 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "Sending state notification to all clients", v9, 2u);
  }

  meshController = [(COMeshAddOn *)self meshController];
  [meshController sendNotification:v6];

  [(COStateAddOn *)self _handleStateNotification:v6];
}

- (void)_handleStateNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  state = [notificationCopy state];

  meshState = [(COStateAddOn *)self meshState];
  v8 = [meshState isEqualToDictionary:state];

  if (v8)
  {
    v9 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      meshController = [(COMeshAddOn *)self meshController];
      meshState2 = [(COStateAddOn *)self meshState];
      *buf = 134218242;
      v16 = meshController;
      v17 = 2112;
      v18 = meshState2;
      _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%p handling state notification. No changes to current mesh state %@", buf, 0x16u);
    }
  }

  else
  {
    meshState3 = [(COStateAddOn *)self meshState];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__COStateAddOn__handleStateNotification___block_invoke;
    v13[3] = &unk_278E18180;
    v13[4] = self;
    v14 = state;
    determineStateChanges(meshState3, v14, v13);
  }
}

void __41__COStateAddOn__handleStateNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = COCoreLogForCategory(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) meshController];
    v9 = [*(a1 + 32) meshState];
    v10 = *(a1 + 40);
    v12 = 134218498;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%p handling state notification. Updating current mesh state %@ with new mesh state %@", &v12, 0x20u);
  }

  [*(a1 + 32) setMeshState:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained addOn:*(a1 + 32) receivedUpdates:v6 removals:v5];
}

- (void)_handleStateUpdateNotification:(id)notification
{
  notificationCopy = notification;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  updates = [notificationCopy updates];
  removals = [notificationCopy removals];

  [(COStateAddOn *)self _handleUpdates:updates removals:removals];
}

- (void)_handleStateReadRequest:(id)request callback:(id)callback
{
  callbackCopy = callback;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__COStateAddOn__handleStateReadRequest_callback___block_invoke;
  v9[3] = &unk_278E181A8;
  v10 = callbackCopy;
  v8 = callbackCopy;
  [WeakRetained stateForAddOn:self withCallback:v9];
}

void __49__COStateAddOn__handleStateReadRequest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[COStateReadResponse alloc] initWithState:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)_handleStateUpdateRequest:(id)request callback:(id)callback
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  callbackCopy = callback;
  meshControllerQueue = [(COMeshAddOn *)self meshControllerQueue];
  dispatch_assert_queue_V2(meshControllerQueue);

  meshController = [(COMeshAddOn *)self meshController];
  v10 = [meshController me];
  meshController2 = [(COMeshAddOn *)self meshController];
  leader = [meshController2 leader];
  v13 = [v10 isEqual:leader];

  if (v13)
  {
    v14 = COCoreLogForCategory(6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      updates = [requestCopy updates];
      removals = [requestCopy removals];
      v27 = 134218498;
      selfCopy = self;
      v29 = 2112;
      v30 = updates;
      v31 = 2112;
      v32 = removals;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p leader processing state update request [updates = %@, removals = %@]", &v27, 0x20u);
    }

    if (self->_isConstructingState)
    {
      v17 = COCoreLogForCategory(6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "We are currently in the middle of constructing the mesh state. Defering update requests", &v27, 2u);
      }

      v18 = objc_alloc_init(COOutstandingRequests);
      [(COOutstandingRequests *)v18 setRequest:requestCopy];
      [(COOutstandingRequests *)v18 setCallback:callbackCopy];
      [(NSMutableArray *)self->_outstandingUpdateRequests addObject:v18];
    }

    else
    {
      v18 = objc_alloc_init(COStateUpdateResponse);
      callbackCopy[2](callbackCopy, v18, 0);
      v20 = [COStateUpdateNotification alloc];
      updates2 = [requestCopy updates];
      removals2 = [requestCopy removals];
      v23 = [(COStateUpdateNotification *)v20 initWithUpdates:updates2 removals:removals2];

      meshController3 = [(COMeshAddOn *)self meshController];
      [meshController3 sendNotification:v23];

      updates3 = [requestCopy updates];
      removals3 = [requestCopy removals];
      [(COStateAddOn *)self _handleUpdates:updates3 removals:removals3];
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4002 userInfo:0];
    (callbackCopy)[2](callbackCopy, 0, v19);
  }
}

- (void)_sendRequest:(uint64_t)a1 withRetryCount:(NSObject *)a2 withCallback:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "Failed to send request %@ too many times", &v2, 0xCu);
}

void __57__COStateAddOn__sendRequest_withRetryCount_withCallback___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56) - 1;
  v4 = 138412546;
  v5 = v2;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_244378000, a2, OS_LOG_TYPE_DEBUG, "Failed to send request %@.  Remaining retries = %ld", &v4, 0x16u);
}

void __35__COStateAddOn__constructMeshState__block_invoke_2_40_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "Failed to get state from node %@", &v2, 0xCu);
}

@end