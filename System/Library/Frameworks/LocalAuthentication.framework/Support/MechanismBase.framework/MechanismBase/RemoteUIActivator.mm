@interface RemoteUIActivator
- (BOOL)_activateUserInterface:(id)interface withParams:(id)params;
- (BOOL)activateUIWithParams:(id)params;
- (BOOL)hasInvalidatedUIForRequest:(unsigned int)request;
- (RemoteUIActivator)init;
- (RemoteUIActivatorDelegate)delegate;
- (id)_createInterface;
- (id)_prepareUIListener;
- (id)_workQueue;
- (void)_processParams:(id)params interface:(id)interface;
- (void)invalidateUIForRequest:(unsigned int)request;
@end

@implementation RemoteUIActivator

- (RemoteUIActivator)init
{
  v9.receiver = self;
  v9.super_class = RemoteUIActivator;
  v2 = [(RemoteUIActivator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_activeObjectsLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    activeInterfaces = v3->_activeInterfaces;
    v3->_activeInterfaces = v4;

    v6 = objc_opt_new();
    activeListeners = v3->_activeListeners;
    v3->_activeListeners = v6;
  }

  return v3;
}

- (BOOL)activateUIWithParams:(id)params
{
  paramsCopy = params;
  _createInterface = [(RemoteUIActivator *)self _createInterface];
  if (_createInterface)
  {
    v6 = [(RemoteUIActivator *)self _activateUserInterface:_createInterface withParams:paramsCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasInvalidatedUIForRequest:(unsigned int)request
{
  activeInterfaces = self->_activeInterfaces;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&request];
  v5 = [(NSMapTable *)activeInterfaces objectForKey:v4];
  LOBYTE(activeInterfaces) = v5 == 0;

  return activeInterfaces;
}

- (void)invalidateUIForRequest:(unsigned int)request
{
  v3 = *&request;
  v19 = *MEMORY[0x277D85DE8];
  activeInterfaces = self->_activeInterfaces;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v7 = [(NSMapTable *)activeInterfaces objectForKey:v6];

  if (v7)
  {
    v8 = LACLogUI();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, "Activator invalidates interface: %@", &v17, 0xCu);
    }

    [v7 terminateWithReason:@"Invalidated by activator"];
  }

  activeListeners = self->_activeListeners;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v11 = [(NSMapTable *)activeListeners objectForKey:v10];

  if (v11)
  {
    v12 = LACLogUI();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&dword_238B95000, v12, OS_LOG_TYPE_DEFAULT, "Activator invalidates listener: %@", &v17, 0xCu);
    }

    [v11 invalidate];
  }

  os_unfair_lock_lock(&self->_activeObjectsLock);
  v13 = self->_activeInterfaces;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [(NSMapTable *)v13 removeObjectForKey:v14];

  v15 = self->_activeListeners;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [(NSMapTable *)v15 removeObjectForKey:v16];

  os_unfair_lock_unlock(&self->_activeObjectsLock);
}

- (id)_createInterface
{
  v3 = objc_alloc(MEMORY[0x277D23FE8]);
  _workQueue = [(RemoteUIActivator *)self _workQueue];
  v5 = [v3 initWithReplyQueue:_workQueue];

  v6 = objc_alloc(MEMORY[0x277D24108]);
  _workQueue2 = [(RemoteUIActivator *)self _workQueue];
  v8 = [v6 initWithConnectionProvider:v5 replyQueue:_workQueue2];

  return v8;
}

- (BOOL)_activateUserInterface:(id)interface withParams:(id)params
{
  v33 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  paramsCopy = params;
  v8 = [(NSMapTable *)self->_activeInterfaces copy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NSMapTable *)self->_activeInterfaces objectForKey:*(*(&v27 + 1) + 8 * v13)];
        [v14 terminateWithReason:@"Cancelled by a new connection"];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v15 = [(NSMapTable *)self->_activeListeners copy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(NSMapTable *)self->_activeListeners objectForKey:*(*(&v23 + 1) + 8 * v20), v23];
        [v21 invalidate];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  os_unfair_lock_lock(&self->_activeObjectsLock);
  [(NSMapTable *)self->_activeInterfaces removeAllObjects];
  [(NSMapTable *)self->_activeListeners removeAllObjects];
  os_unfair_lock_unlock(&self->_activeObjectsLock);
  [(RemoteUIActivator *)self _processParams:paramsCopy interface:interfaceCopy];

  return 1;
}

- (void)_processParams:(id)params interface:(id)interface
{
  v29 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  interfaceCopy = interface;
  v8 = objc_alloc(MEMORY[0x277D24110]);
  evaluationRequest = [paramsCopy evaluationRequest];
  v10 = [v8 initWithIdentifier:4 evaluationRequest:evaluationRequest];

  _prepareUIListener = [(RemoteUIActivator *)self _prepareUIListener];
  endpoint = [_prepareUIListener endpoint];
  [v10 setConnectionEndpoint:endpoint];

  activeInterfaces = self->_activeInterfaces;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "evaluationRequestIdentifier")}];
  [(NSMapTable *)activeInterfaces setObject:interfaceCopy forKey:v14];

  activeListeners = self->_activeListeners;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "evaluationRequestIdentifier")}];
  [(NSMapTable *)activeListeners setObject:_prepareUIListener forKey:v16];

  v17 = LACLogUI();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = interfaceCopy;
    v27 = 1024;
    evaluationRequestIdentifier = [v10 evaluationRequestIdentifier];
    _os_log_impl(&dword_238B95000, v17, OS_LOG_TYPE_DEFAULT, "Activator registered interface: %@ for rid: %d", buf, 0x12u);
  }

  notificationCenter = [paramsCopy notificationCenter];
  [notificationCenter postNotificationUIDidAppear];

  objc_initWeak(buf, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__RemoteUIActivator__processParams_interface___block_invoke;
  v21[3] = &unk_278A62E60;
  v19 = v10;
  v22 = v19;
  objc_copyWeak(&v24, buf);
  v20 = paramsCopy;
  v23 = v20;
  [interfaceCopy processRequest:v19 completion:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

void __46__RemoteUIActivator__processParams_interface___block_invoke(id *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LACLogUI();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__RemoteUIActivator__processParams_interface___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a1[4] evaluationRequestIdentifier];
    v18[0] = 67109120;
    v18[1] = v6;
    _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "RemoteUI completed rid: %d", v18, 8u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = -[os_unfair_lock_s hasInvalidatedUIForRequest:](WeakRetained, "hasInvalidatedUIForRequest:", [a1[4] evaluationRequestIdentifier]);
    os_unfair_lock_lock(WeakRetained + 2);
    v9 = *&WeakRetained[4]._os_unfair_lock_opaque;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1[4], "evaluationRequestIdentifier")}];
    [v9 removeObjectForKey:v10];

    v11 = *&WeakRetained[6]._os_unfair_lock_opaque;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1[4], "evaluationRequestIdentifier")}];
    [v11 removeObjectForKey:v12];

    os_unfair_lock_unlock(WeakRetained + 2);
    if (!v3)
    {
      v16 = [(os_unfair_lock_s *)WeakRetained delegate];
      v17 = [a1[5] identifier];
      [v16 didSuccessfullyFinishForRequestIdentifier:v17];

LABEL_13:
      goto LABEL_14;
    }

    if ((v8 & 1) == 0)
    {
      v13 = [v3 domain];
      v14 = [v13 isEqualToString:*MEMORY[0x277D23EB0]];

      v15 = [(os_unfair_lock_s *)WeakRetained delegate];
      v16 = v15;
      if (v14)
      {
        [v15 didReceiveExpectedError:v3];
      }

      else
      {
        [v15 didReceiveUnexpectedError:v3];
      }

      goto LABEL_13;
    }
  }

LABEL_14:
}

- (id)_prepareUIListener
{
  delegate = [(RemoteUIActivator *)self delegate];
  anonymousListener = [delegate anonymousListener];

  return anonymousListener;
}

- (id)_workQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    workQueue = [v4 workQueue];
  }

  else
  {
    workQueue = [MEMORY[0x277D24028] daemonQueue];
  }

  return workQueue;
}

- (RemoteUIActivatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __80__RemoteUIActivator_Legacy__dispatchRemoteAlertHandle_activationContext_params___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _suspendActivationQueue];
  [WeakRetained _postNotificationsAndActivateRemoteAlertHandle:*(a1 + 32) activationContext:*(a1 + 40) params:*(a1 + 48)];
}

void __51__RemoteUIActivator_Legacy__suspendActivationQueue__block_invoke(uint64_t a1)
{
  v2 = LALogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__RemoteUIActivator_Legacy__suspendActivationQueue__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resumeActivationQueue];
}

void __60__RemoteUIActivator_Legacy__activateFrontBoardUIWithParams___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = LALogForCategory();
  v7 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (!a2 || v5)
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_238B95000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Application launch failed with error: %@", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained didReceiveUnexpectedError:v5];
  }

  else if (v7)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_238B95000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Application launch succeeded", &v8, 2u);
  }
}

void __46__RemoteUIActivator__processParams_interface___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) evaluationRequestIdentifier];
  v6[0] = 67109378;
  v6[1] = v5;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_238B95000, a3, OS_LOG_TYPE_ERROR, "Activator completed rid: %d with error: %@", v6, 0x12u);
}

@end