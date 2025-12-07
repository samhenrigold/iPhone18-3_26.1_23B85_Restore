@interface SATelephonyManager
- (SATelephonyDelegateProtocol)delegate;
- (SATelephonyManager)initWithQueue:(id)queue;
- (void)_callStatusChanged:(id)changed;
- (void)_canPlaceNewCall:(id)call;
- (void)_currentCallEnded;
- (void)_currentCallEndedWithUpdatedFailureStatus:(BOOL)status;
- (void)handleCallChanged:(id)changed force:(BOOL)force;
- (void)placeVoiceCall:(id)call completionHandler:(id)handler;
@end

@implementation SATelephonyManager

- (SATelephonyManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SATelephonyManager;
  v6 = [(SATelephonyManager *)&v9 init];
  if (v6)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
    objc_storeStrong(&v6->_callQueue, queue);
  }

  return v6;
}

- (void)placeVoiceCall:(id)call completionHandler:(id)handler
{
  callCopy = call;
  handlerCopy = handler;
  v8 = sa_default_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SATelephonyManager placeVoiceCall:completionHandler:];
  }

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke;
  v11[3] = &unk_278B67B70;
  objc_copyWeak(&v14, &location);
  v9 = handlerCopy;
  v13 = v9;
  v10 = callCopy;
  v12 = v10;
  [(SATelephonyManager *)self _canPlaceNewCall:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v48 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained setCallInProgress:1];
    [v5 setCallFailed:0];
    v6 = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:2 value:*(a1 + 32)];
    v7 = objc_alloc_init(MEMORY[0x277D6EE28]);
    v8 = [v7 defaultProvider];
    v9 = [objc_alloc(MEMORY[0x277D6EED0]) initWithProvider:v8];
    [v9 setHandle:v6];
    [v9 setShowUIPrompt:0];
    [v9 setPreferDefaultApp:0];
    v10 = [v9 isValid];
    v11 = v10;
    v12 = sa_default_log(v10);
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_cold_1();
      }

      v15 = sa_default_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v9 URL];
        *buf = 136315395;
        v43 = "[SATelephonyManager placeVoiceCall:completionHandler:]_block_invoke";
        v44 = 2113;
        v45 = v16;
        _os_log_impl(&dword_23AA4D000, v15, OS_LOG_TYPE_DEFAULT, "%s - request is valid, request.URL: %{private}@", buf, 0x16u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_8;
      block[3] = &unk_278B67B48;
      v38 = v9;
      objc_copyWeak(&v40, (a1 + 48));
      v39 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v40);
      v17 = v38;
    }

    else
    {
      v28 = a1;
      v29 = v8;
      v31 = v6;
      v32 = v5;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v9 URL];
        *buf = 136315650;
        v43 = "[SATelephonyManager placeVoiceCall:completionHandler:]_block_invoke_4";
        v44 = 2112;
        v45 = v9;
        v46 = 2112;
        v47 = v19;
        _os_log_impl(&dword_23AA4D000, v13, OS_LOG_TYPE_DEFAULT, "%s - request is not valid, request: %@, request.URL: %@", buf, 0x20u);
      }

      v30 = v7;

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = [v9 validityErrors];
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          v24 = 0;
          do
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v33 + 1) + 8 * v24);
            v26 = sa_default_log(v21);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v43 = "[SATelephonyManager placeVoiceCall:completionHandler:]_block_invoke";
              v44 = 2112;
              v45 = v25;
              _os_log_error_impl(&dword_23AA4D000, v26, OS_LOG_TYPE_ERROR, "%s - unable to place voice call, error: %@", buf, 0x16u);
            }

            ++v24;
          }

          while (v22 != v24);
          v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
          v22 = v21;
        }

        while (v21);
      }

      v27 = *(v28 + 40);
      v17 = [SAError errorWithCode:3];
      (*(v27 + 16))(v27, 0, v17);
      v6 = v31;
      v5 = v32;
      v8 = v29;
      v7 = v30;
    }
  }

  else
  {
    v18 = *(a1 + 40);
    v6 = [SAError errorWithCode:4];
    (*(v18 + 16))(v18, 0, v6);
  }
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_2;
  v4[3] = &unk_278B67B20;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 40);
  [v2 dialWithRequest:v3 completion:v4];

  objc_destroyWeak(&v6);
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_3;
  block[3] = &unk_278B67AF8;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v10);
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCall:*(a1 + 32)];
  [WeakRetained handleCallChanged:*(a1 + 32) force:1];
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32) != 0, 0);
}

- (void)_currentCallEndedWithUpdatedFailureStatus:(BOOL)status
{
  objc_initWeak(&location, self);
  callQueue = self->_callQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SATelephonyManager__currentCallEndedWithUpdatedFailureStatus___block_invoke;
  block[3] = &unk_278B67B98;
  objc_copyWeak(&v7, &location);
  statusCopy = status;
  dispatch_async(callQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __64__SATelephonyManager__currentCallEndedWithUpdatedFailureStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCallFailed:*(a1 + 40)];
  [WeakRetained _currentCallEnded];
}

- (void)_currentCallEnded
{
  objc_initWeak(&location, self);
  callQueue = self->_callQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__SATelephonyManager__currentCallEnded__block_invoke;
  v4[3] = &unk_278B67BC0;
  objc_copyWeak(&v5, &location);
  dispatch_async(callQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__SATelephonyManager__currentCallEnded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained callInProgress])
  {
    [WeakRetained setCallInProgress:0];
    [WeakRetained setCall:0];
    v1 = [WeakRetained delegate];
    if ([WeakRetained callFailed])
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    [v1 telephonyManager:WeakRetained didUpdateVoiceCallStatus:v2];
  }
}

- (void)_canPlaceNewCall:(id)call
{
  callCopy = call;
  if (+[SAGestalt inAirplaneMode])
  {
    callQueue = self->_callQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SATelephonyManager__canPlaceNewCall___block_invoke;
    block[3] = &unk_278B67BE8;
    v13 = callCopy;
    v6 = callCopy;
    dispatch_async(callQueue, block);
  }

  else
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SATelephonyManager__canPlaceNewCall___block_invoke_13;
    v8[3] = &unk_278B67C10;
    objc_copyWeak(&v10, &location);
    v9 = callCopy;
    v7 = callCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

uint64_t __39__SATelephonyManager__canPlaceNewCall___block_invoke(uint64_t a1)
{
  v2 = sa_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __39__SATelephonyManager__canPlaceNewCall___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

void __39__SATelephonyManager__canPlaceNewCall___block_invoke_13(uint64_t a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 currentCalls];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SATelephonyManager__canPlaceNewCall___block_invoke_2;
  block[3] = &unk_278B67AF8;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v10);
}

void __39__SATelephonyManager__canPlaceNewCall___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = v4;
  v7 = *v20;
  *&v5 = 136315138;
  v18 = v5;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      v10 = [WeakRetained call];
      if ([v9 isEqualToCall:v10])
      {
        v11 = [v9 status];

        if (v11 == 6)
        {
          v13 = sa_default_log(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = "[SATelephonyManager _canPlaceNewCall:]_block_invoke_2";
            _os_log_impl(&dword_23AA4D000, v13, OS_LOG_TYPE_DEFAULT, "%s - current call out of sync, cleaning up", buf, 0xCu);
          }

          [WeakRetained _currentCallEnded];
          continue;
        }
      }

      else
      {
      }

      v14 = [v9 status];
      if (v14 != 6)
      {
        v15 = sa_default_log(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v24 = "[SATelephonyManager _canPlaceNewCall:]_block_invoke";
          _os_log_impl(&dword_23AA4D000, v15, OS_LOG_TYPE_DEFAULT, "%s - cannot place new call because there is already a call in progress", buf, 0xCu);
        }

        goto LABEL_19;
      }
    }

    v6 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v17 = sa_default_log(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __39__SATelephonyManager__canPlaceNewCall___block_invoke_2_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)handleCallChanged:(id)changed force:(BOOL)force
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SATelephonyManager_handleCallChanged_force___block_invoke;
  v8[3] = &unk_278B67C38;
  objc_copyWeak(&v10, &location);
  v9 = changedCopy;
  forceCopy = force;
  v7 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__SATelephonyManager_handleCallChanged_force___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v5 = [WeakRetained call];
  v6 = [v3 isEqualToCall:v5];

  v8 = sa_default_log(v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v4 handle];
      v11 = [v10 value];
      v31 = 136315394;
      v32 = "[SATelephonyManager handleCallChanged:force:]_block_invoke";
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&dword_23AA4D000, v9, OS_LOG_TYPE_DEFAULT, "%s - we found our call, call: %@", &v31, 0x16u);
    }

    v12 = [WeakRetained call];
    v13 = [v12 status];
    if (v13 == [*v4 status])
    {
      v14 = *(a1 + 48);

      if ((v14 & 1) == 0)
      {
        v9 = sa_default_log(v15);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_2(v4);
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v9 = [WeakRetained delegate];
    v16 = [*v4 status];
    v17 = v16;
    v18 = sa_default_log(v16);
    v19 = v18;
    switch(v17)
    {
      case 1:
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [*v4 handle];
          v30 = [v29 value];
          v31 = 136315650;
          v32 = "[SATelephonyManager handleCallChanged:force:]_block_invoke";
          v33 = 2112;
          v34 = v30;
          v35 = 2048;
          v36 = 1;
          _os_log_impl(&dword_23AA4D000, v19, OS_LOG_TYPE_DEFAULT, "%s - updating status for call, call: %@, status: %lu", &v31, 0x20u);
        }

        [WeakRetained setCallFailed:0];
        v22 = v9;
        v23 = WeakRetained;
        v24 = 1;
        goto LABEL_25;
      case 6:
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [*v4 handle];
          v26 = [v25 value];
          v27 = [WeakRetained callFailed];
          v31 = 136315650;
          v32 = "[SATelephonyManager handleCallChanged:force:]_block_invoke";
          v28 = 2;
          if (v27)
          {
            v28 = 3;
          }

          v33 = 2112;
          v34 = v26;
          v35 = 2048;
          v36 = v28;
          _os_log_impl(&dword_23AA4D000, v19, OS_LOG_TYPE_DEFAULT, "%s - updating status for call, call: %@, status: %lu", &v31, 0x20u);
        }

        [WeakRetained _currentCallEndedWithUpdatedFailureStatus:{objc_msgSend(*v4, "sa_hasFailed")}];
        break;
      case 3:
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*v4 handle];
          v21 = [v20 value];
          v31 = 136315650;
          v32 = "[SATelephonyManager handleCallChanged:force:]_block_invoke";
          v33 = 2112;
          v34 = v21;
          v35 = 2048;
          v36 = 0;
          _os_log_impl(&dword_23AA4D000, v19, OS_LOG_TYPE_DEFAULT, "%s - updating status for call, call: %@, status: %lu", &v31, 0x20u);
        }

        v22 = v9;
        v23 = WeakRetained;
        v24 = 0;
LABEL_25:
        [v22 telephonyManager:v23 didUpdateVoiceCallStatus:v24];
        break;
      default:
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_3(v4);
        }

        break;
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_1((a1 + 32));
  }

LABEL_29:
}

- (void)_callStatusChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  object = [changed object];
  v5 = sa_default_log(object);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SATelephonyManager _callStatusChanged:]";
    v8 = 2112;
    v9 = object;
    _os_log_impl(&dword_23AA4D000, v5, OS_LOG_TYPE_DEFAULT, "%s, call: %@", &v6, 0x16u);
  }

  [(SATelephonyManager *)self handleCallChanged:object force:0];
}

- (SATelephonyDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__SATelephonyManager_placeVoiceCall_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 callUUID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_2(id *a1)
{
  v2 = [*a1 handle];
  v8 = [v2 value];
  [*a1 status];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void __46__SATelephonyManager_handleCallChanged_force___block_invoke_cold_3(id *a1)
{
  v1 = [*a1 handle];
  v2 = [v1 value];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end