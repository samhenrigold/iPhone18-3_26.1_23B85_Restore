@interface NRDevicePairingManager
+ (uint64_t)copyErrorForCode:(uint64_t)code;
+ (uint64_t)copyErrorForCode:(void *)code userInfo:;
+ (uint64_t)copyXPCError;
+ (void)unpairDevice:(id)device queue:(id)queue withCompletion:(id)completion;
+ (void)unpairDevice:(id)device withCompletion:(id)completion;
- (NRDevicePairingManager)initWithIdentifier:(id)identifier pairingCriteria:(id)criteria metadata:(id)metadata queue:(id)queue;
- (NSString)fullDescription;
- (id)description;
- (void)activateWithCompletion:(id)completion;
- (void)callCompletionBlock:(void *)block withError:;
- (void)cancelDiscovery;
- (void)cancelPairing;
- (void)dealloc;
- (void)getDataForAuthMethod:(unint64_t)method withCompletion:(id)completion;
- (void)invalidate;
- (void)invalidateWithError:(void *)error;
- (void)pairingFailedWithError:(void *)error;
- (void)requestAuthMethodForDevice:(id)device authMethod:(unint64_t)method withCompletion:(id)completion;
- (void)setInternalManagerState:(void *)state;
- (void)startDiscoveryWithCompletion:(id)completion;
- (void)startPairingDevice:(id)device withCompletion:(id)completion resultBlock:(id)block;
@end

@implementation NRDevicePairingManager

- (void)invalidate
{
  selfCopy = self;
  if (self)
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    internalManagerState = selfCopy2->_internalManagerState;
    objc_sync_exit(selfCopy2);

    if (internalManagerState == 10)
    {
      return;
    }

    [(NRDevicePairingManager *)selfCopy2 setInternalManagerState:?];
    self = selfCopy2->_operationQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NRDevicePairingManager_invalidate__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

- (void)setInternalManagerState:(void *)state
{
  if (!state)
  {
    return;
  }

  stateCopy = state;
  objc_sync_enter(stateCopy);
  v3 = stateCopy[1];
  if (v3 == a2)
  {
    objc_sync_exit(stateCopy);
    v4 = stateCopy;
LABEL_9:

    return;
  }

  stateCopy[1] = a2;
  objc_sync_exit(stateCopy);

  if (nrCopyLogObj_onceToken_1533 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_DEFAULT))
  {
    v5 = nrCopyLogObj_sNRLogObj_1535;
    v6 = NRCreateStringFromInternalManagerState(v3);
    v7 = NRCreateStringFromInternalManagerState(a2);
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: State change: %@ -> %@", ", "[NRDevicePairingManager setInternalManagerState:]"", 559, stateCopy, v6, v7);

    v4 = v6;
    goto LABEL_9;
  }
}

void __36__NRDevicePairingManager_invalidate__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NRDevicePairingManager_invalidate__block_invoke_2;
  v5[3] = &unk_27996B1A8;
  objc_copyWeak(&v6, &location);
  [(NRDevicePairingManagerMux *)v3 unregisterPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __36__NRDevicePairingManager_invalidate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[9];
    WeakRetained[9] = 0;

    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Unregistering pairing manager failed: %@", ", "[NRDevicePairingManager invalidate]_block_invoke_2"", 965, v5, v3);
      }
    }

    v7 = v5[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__NRDevicePairingManager_invalidate__block_invoke_3;
    block[3] = &unk_27996B248;
    v9 = v5;
    v10 = v3;
    dispatch_async(v7, block);
  }
}

void __36__NRDevicePairingManager_invalidate__block_invoke_3(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setManagerState:5];
  v3 = *(a1 + 32);
  if (v3 && objc_getProperty(v3, v2, 80, 1))
  {
    v4 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Pairing manager was invalidated";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = [v4 initWithDomain:@"NRDevicePairingErrorDomain" code:-3002 userInfo:v5];

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 80, 1);
    }

    (*(Property + 2))(Property, v6, 0);
  }

  v9 = [*(a1 + 32) invalidationHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) invalidationHandler];
    v10[2](v10, *(a1 + 40));
  }
}

- (void)cancelPairing
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    internalManagerState = selfCopy->_internalManagerState;
    objc_sync_exit(selfCopy);

    if (internalManagerState == 8)
    {
      [(NRDevicePairingManager *)selfCopy setInternalManagerState:?];
      operationQueue = selfCopy->_operationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__NRDevicePairingManager_cancelPairing__block_invoke;
      block[3] = &unk_27996B180;
      block[4] = selfCopy;
      dispatch_async(operationQueue, block);
    }
  }
}

void __39__NRDevicePairingManager_cancelPairing__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__NRDevicePairingManager_cancelPairing__block_invoke_2;
  v5[3] = &unk_27996B1A8;
  objc_copyWeak(&v6, &location);
  [(NRDevicePairingManagerMux *)v3 stopPairingForPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__NRDevicePairingManager_cancelPairing__block_invoke_2(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = v3;
    goto LABEL_25;
  }

  if (v3)
  {
    if (nrCopyLogObj_onceToken_1533 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Stopping pairing failed: %@", ", "[NRDevicePairingManager cancelPairing]_block_invoke_2"", 875, v5, v3);
    }

    v7 = 0;
    v8 = v3;
  }

  else
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    v10 = v9[1];
    objc_sync_exit(v9);

    if (v10 == 9)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v23 = *MEMORY[0x277CCA450];
      v24 = @"Pairing operation was cancelled";
      v7 = 1;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v8 = [v11 initWithDomain:@"NRDevicePairingErrorDomain" code:-3002 userInfo:v12];
    }

    else
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while stopping pairing", ", "[NRDevicePairingManager cancelPairing]_block_invoke_2"", 879, v9);
      }

      objc_opt_self();
      v13 = objc_alloc(MEMORY[0x277CCA9B8]);
      v25 = *MEMORY[0x277CCA450];
      v26[0] = @"Manager is in invalid state for this operation";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v8 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v14];

      v7 = 0;
    }
  }

  v15 = objc_getProperty(v5, v6, 80, 1);
  objc_setProperty_atomic_copy(v5, v16, 0, 80);
  if (v7)
  {
    [(NRDevicePairingManager *)v5 setInternalManagerState:?];
LABEL_21:
    v17 = v5[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__NRDevicePairingManager_cancelPairing__block_invoke_3;
    block[3] = &unk_27996B108;
    v22 = v7;
    v19 = v5;
    v21 = v15;
    v20 = v8;
    dispatch_async(v17, block);

    goto LABEL_22;
  }

  if (v15)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v3)
  {
    [(NRDevicePairingManager *)v5 invalidateWithError:v8];
  }

LABEL_25:
}

uint64_t __39__NRDevicePairingManager_cancelPairing__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setManagerState:9];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)invalidateWithError:(void *)error
{
  v3 = a2;
  if (error)
  {
    errorCopy = error;
    objc_sync_enter(errorCopy);
    v5 = errorCopy[1];
    objc_sync_exit(errorCopy);

    if (v5 != 10)
    {
      [(NRDevicePairingManager *)errorCopy setInternalManagerState:?];
      v6 = errorCopy[9];
      errorCopy[9] = 0;

      v7 = errorCopy[7];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __46__NRDevicePairingManager_invalidateWithError___block_invoke;
      v8[3] = &unk_27996B248;
      v8[4] = errorCopy;
      v9 = v3;
      dispatch_async(v7, v8);
    }
  }
}

void __46__NRDevicePairingManager_invalidateWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setManagerState:5];
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, v2, 80, 1);
    v3 = *(a1 + 32);
    if (Property)
    {
      if (v3)
      {
        v3 = objc_getProperty(v3, v4, 80, 1);
      }

      (*(v3 + 2))(v3, *(a1 + 40), 0);
      v3 = *(a1 + 32);
    }
  }

  v6 = [v3 invalidationHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) invalidationHandler];
    v7[2](v7, *(a1 + 40));
  }
}

- (void)startPairingDevice:(id)device withCompletion:(id)completion resultBlock:(id)block
{
  v30[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  blockCopy = block;
  v11 = blockCopy;
  if (!completionCopy)
  {
    v19 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v19;
      v22 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (!v22)
      {
        goto LABEL_7;
      }
    }

    v23 = nrCopyLogObj_1529();
    _NRLogWithArgs(v23, 17, "%s called with null completionBlock");
LABEL_16:

    goto LABEL_7;
  }

  if (!blockCopy)
  {
    v20 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v20;
      v25 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);

      if (!v25)
      {
        goto LABEL_7;
      }
    }

    v23 = nrCopyLogObj_1529();
    _NRLogWithArgs(v23, 17, "%s called with null resultBlock");
    goto LABEL_16;
  }

  if (self && (v12 = self, objc_sync_enter(v12), internalManagerState = v12->_internalManagerState, objc_sync_exit(v12), v12, internalManagerState - 7 > 0xFFFFFFFFFFFFFFFBLL))
  {
    [(NRDevicePairingManager *)v12 setInternalManagerState:?];
    objc_setProperty_atomic_copy(v12, v17, v11, 80);
    operationQueue = v12->_operationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke;
    block[3] = &unk_27996B298;
    block[4] = v12;
    v27 = deviceCopy;
    v28 = completionCopy;
    dispatch_async(operationQueue, block);
  }

  else
  {
    objc_opt_self();
    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Manager is in invalid state for this operation";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v16 = [v14 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v15];

    [(NRDevicePairingManager *)self callCompletionBlock:completionCopy withError:v16];
  }

LABEL_7:
}

- (void)callCompletionBlock:(void *)block withError:
{
  v5 = a2;
  blockCopy = block;
  if (self)
  {
    v7 = *(self + 56);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__NRDevicePairingManager_callCompletionBlock_withError___block_invoke;
    v8[3] = &unk_27996B158;
    v10 = v5;
    v9 = blockCopy;
    dispatch_async(v7, v8);
  }
}

void __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke_2;
  v6[3] = &unk_27996B220;
  objc_copyWeak(&v8, &location);
  v7 = *(a1 + 48);
  [(NRDevicePairingManagerMux *)v3 startPairingForPairingManager:v4 pairingTarget:v5 withCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Starting pairing failed: %@", ", "[NRDevicePairingManager startPairingDevice:withCompletion:resultBlock:]_block_invoke_2"", 827, v7, v5);
      }

      objc_setProperty_atomic_copy(v7, v8, 0, 80);
      if ((a3 & 1) == 0)
      {
        [(NRDevicePairingManager *)v7 setInternalManagerState:?];
      }
    }

    else
    {
      v9 = WeakRetained;
      objc_sync_enter(v9);
      v10 = v9[1];
      objc_sync_exit(v9);

      if (v10 == 7)
      {
        [(NRDevicePairingManager *)v9 setInternalManagerState:?];
        v5 = 0;
      }

      else
      {
        if (nrCopyLogObj_onceToken_1533 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while starting pairing", ", "[NRDevicePairingManager startPairingDevice:withCompletion:resultBlock:]_block_invoke_2"", 834, v9);
        }

        objc_opt_self();
        v11 = objc_alloc(MEMORY[0x277CCA9B8]);
        v20 = *MEMORY[0x277CCA450];
        v21[0] = @"Manager is in invalid state for this operation";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        v5 = [v11 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v12];

        objc_setProperty_atomic_copy(v9, v13, 0, 80);
      }
    }

    v14 = v7[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke_3;
    block[3] = &unk_27996B298;
    v5 = v5;
    v17 = v5;
    v15 = v7;
    v18 = v15;
    v19 = *(a1 + 32);
    dispatch_async(v14, block);
    if (a3)
    {
      [(NRDevicePairingManager *)v15 invalidateWithError:v5];
    }
  }
}

uint64_t __72__NRDevicePairingManager_startPairingDevice_withCompletion_resultBlock___block_invoke_3(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) setManagerState:4];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)getDataForAuthMethod:(unint64_t)method withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = completionCopy;
  if (!completionCopy)
  {
    v7 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);

      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = nrCopyLogObj_1529();
    _NRLogWithArgs(v10, 17, "%s called with null completionBlock", "[NRDevicePairingManager getDataForAuthMethod:withCompletion:]");

    goto LABEL_5;
  }

  if (self)
  {
    self = self->_callbackQueue;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NRDevicePairingManager_getDataForAuthMethod_withCompletion___block_invoke;
  block[3] = &unk_27996B870;
  v12 = completionCopy;
  dispatch_async(&self->super, block);

LABEL_5:
}

void __62__NRDevicePairingManager_getDataForAuthMethod_withCompletion___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  objc_opt_self();
  v2 = objc_alloc(MEMORY[0x277CCA9B8]);
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Unimplemented method";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 initWithDomain:@"NRDevicePairingErrorDomain" code:-9999 userInfo:v3];

  (*(v1 + 16))(v1, v4, 0);
}

- (void)requestAuthMethodForDevice:(id)device authMethod:(unint64_t)method withCompletion:(id)completion
{
  v29[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v10 = completionCopy;
  if (!deviceCopy)
  {
    v17 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v19 = v17;
      v20 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

      if (!v20)
      {
        goto LABEL_7;
      }
    }

    v21 = nrCopyLogObj_1529();
    _NRLogWithArgs(v21, 17, "%s called with null device");
LABEL_16:

    goto LABEL_7;
  }

  if (!completionCopy)
  {
    v18 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v18;
      v23 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

      if (!v23)
      {
        goto LABEL_7;
      }
    }

    v21 = nrCopyLogObj_1529();
    _NRLogWithArgs(v21, 17, "%s called with null completionBlock");
    goto LABEL_16;
  }

  if (self && (v11 = self, objc_sync_enter(v11), internalManagerState = v11->_internalManagerState, objc_sync_exit(v11), v11, internalManagerState - 7 > 0xFFFFFFFFFFFFFFFBLL))
  {
    operationQueue = v11->_operationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke;
    block[3] = &unk_27996B1F8;
    block[4] = v11;
    v25 = deviceCopy;
    methodCopy = method;
    v26 = v10;
    dispatch_async(operationQueue, block);
  }

  else
  {
    objc_opt_self();
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v28 = *MEMORY[0x277CCA450];
    v29[0] = @"Manager is in invalid state for this operation";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v15 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v14];

    [(NRDevicePairingManager *)self callCompletionBlock:v10 withError:v15];
  }

LABEL_7:
}

void __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 56);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke_2;
  v7[3] = &unk_27996B1D0;
  objc_copyWeak(v10, &location);
  v10[1] = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [(NRDevicePairingManagerMux *)v3 sendAuthMethodRequestForDevice:v5 authMethod:v4 pairingManager:v6 withCompletion:v7];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Requesting auth method %zu for %@ failed: %@", ", "[NRDevicePairingManager requestAuthMethodForDevice:authMethod:withCompletion:]_block_invoke_2"", 745, WeakRetained, *(a1 + 56), *(a1 + 32), v3);
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_INFO))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 1, "%s%.30s:%-4d %@: Requesting auth method %zu for %@ succeeded", ", "[NRDevicePairingManager requestAuthMethodForDevice:authMethod:withCompletion:]_block_invoke_2"", 747, WeakRetained, *(a1 + 56), *(a1 + 32));
      }
    }

    v5 = WeakRetained[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__NRDevicePairingManager_requestAuthMethodForDevice_authMethod_withCompletion___block_invoke_3;
    block[3] = &unk_27996B158;
    v8 = *(a1 + 40);
    v7 = v3;
    dispatch_async(v5, block);
  }
}

- (void)cancelDiscovery
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    internalManagerState = selfCopy->_internalManagerState;
    objc_sync_exit(selfCopy);

    if (internalManagerState == 5)
    {
      [(NRDevicePairingManager *)selfCopy setInternalManagerState:?];
      operationQueue = selfCopy->_operationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__NRDevicePairingManager_cancelDiscovery__block_invoke;
      block[3] = &unk_27996B180;
      block[4] = selfCopy;
      dispatch_async(operationQueue, block);
    }
  }
}

void __41__NRDevicePairingManager_cancelDiscovery__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__NRDevicePairingManager_cancelDiscovery__block_invoke_2;
  v5[3] = &unk_27996B1A8;
  objc_copyWeak(&v6, &location);
  [(NRDevicePairingManagerMux *)v3 stopDiscoveryForPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __41__NRDevicePairingManager_cancelDiscovery__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Stopping pairing discovery failed: %@", ", "[NRDevicePairingManager cancelDiscovery]_block_invoke_2"", 692, v5, v3);
      }

      [(NRDevicePairingManager *)v5 invalidateWithError:v3];
    }

    else
    {
      v6 = WeakRetained;
      objc_sync_enter(v6);
      v7 = v6[1];
      objc_sync_exit(v6);

      if (v7 == 6)
      {
        [(NRDevicePairingManager *)v6 setInternalManagerState:?];
        v8 = v6[7];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__NRDevicePairingManager_cancelDiscovery__block_invoke_3;
        block[3] = &unk_27996B180;
        v10 = v6;
        dispatch_async(v8, block);
      }

      else
      {
        if (nrCopyLogObj_onceToken_1533 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while stopping pairing discovery", ", "[NRDevicePairingManager cancelDiscovery]_block_invoke_2"", 696, v6);
        }
      }
    }
  }
}

- (void)startDiscoveryWithCompletion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v11 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    v14 = nrCopyLogObj_1529();
    _NRLogWithArgs(v14, 17, "%s called with null completionBlock", "[NRDevicePairingManager startDiscoveryWithCompletion:]");

    goto LABEL_6;
  }

  if (self && (v5 = self, objc_sync_enter(v5), internalManagerState = v5->_internalManagerState, objc_sync_exit(v5), v5, internalManagerState == 3))
  {
    [(NRDevicePairingManager *)v5 setInternalManagerState:?];
    operationQueue = v5->_operationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke;
    block[3] = &unk_27996B158;
    block[4] = v5;
    v16 = completionCopy;
    dispatch_async(operationQueue, block);
  }

  else
  {
    objc_opt_self();
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Manager is in invalid state for this operation";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [v8 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v9];

    [(NRDevicePairingManager *)self callCompletionBlock:completionCopy withError:v10];
  }

LABEL_6:
}

void __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke_2;
  v5[3] = &unk_27996B130;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  [(NRDevicePairingManagerMux *)v3 startDiscoveryForPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Starting pairing discovery failed: %@", ", "[NRDevicePairingManager startDiscoveryWithCompletion:]_block_invoke_2"", 644, v5, v3);
      }

      v6 = 0;
      v7 = v3;
    }

    else
    {
      v9 = WeakRetained;
      objc_sync_enter(v9);
      v10 = v9[1];
      objc_sync_exit(v9);

      if (v10 == 4)
      {
        [(NRDevicePairingManager *)v9 setInternalManagerState:?];
        v7 = 0;
        v6 = 1;
      }

      else
      {
        if (nrCopyLogObj_onceToken_1533 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while starting pairing discovery", ", "[NRDevicePairingManager startDiscoveryWithCompletion:]_block_invoke_2"", 648, v9);
        }

        objc_opt_self();
        v11 = objc_alloc(MEMORY[0x277CCA9B8]);
        v20 = *MEMORY[0x277CCA450];
        v21[0] = @"Manager is in invalid state for this operation";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        v7 = [v11 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v12];

        v6 = 0;
      }
    }

    v13 = v5[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke_3;
    block[3] = &unk_27996B108;
    v19 = v6;
    v14 = v5;
    v16 = v14;
    v18 = *(a1 + 32);
    v8 = v7;
    v17 = v8;
    dispatch_async(v13, block);
    if (v3)
    {
      [(NRDevicePairingManager *)v14 invalidateWithError:v8];
    }
  }

  else
  {
    v8 = v3;
  }
}

uint64_t __55__NRDevicePairingManager_startDiscoveryWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setManagerState:3];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)activateWithCompletion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v11 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    v14 = nrCopyLogObj_1529();
    _NRLogWithArgs(v14, 17, "%s called with null completionBlock", "[NRDevicePairingManager activateWithCompletion:]");

    goto LABEL_6;
  }

  if (self && (v5 = self, objc_sync_enter(v5), internalManagerState = v5->_internalManagerState, objc_sync_exit(v5), v5, internalManagerState == 1))
  {
    [(NRDevicePairingManager *)v5 setInternalManagerState:?];
    operationQueue = v5->_operationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__NRDevicePairingManager_activateWithCompletion___block_invoke;
    block[3] = &unk_27996B158;
    block[4] = v5;
    v16 = completionCopy;
    dispatch_async(operationQueue, block);
  }

  else
  {
    objc_opt_self();
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Manager is in invalid state for this operation";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [v8 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v9];

    [(NRDevicePairingManager *)self callCompletionBlock:completionCopy withError:v10];
  }

LABEL_6:
}

void __49__NRDevicePairingManager_activateWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__NRDevicePairingManager_activateWithCompletion___block_invoke_2;
  v5[3] = &unk_27996B130;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  [(NRDevicePairingManagerMux *)v3 registerPairingManager:v4 withCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__NRDevicePairingManager_activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      if (nrCopyLogObj_onceToken_1533 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: Registering pairing manager failed: %@", ", "[NRDevicePairingManager activateWithCompletion:]_block_invoke_2"", 592, v5, v3);
      }

      v6 = 0;
      v7 = v3;
    }

    else
    {
      v9 = WeakRetained;
      objc_sync_enter(v9);
      v10 = v9[1];
      objc_sync_exit(v9);

      if (v10 == 2)
      {
        [(NRDevicePairingManager *)v9 setInternalManagerState:?];
        v7 = 0;
        v6 = 1;
      }

      else
      {
        if (nrCopyLogObj_onceToken_1533 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 16, "%s%.30s:%-4d %@: State changed while registering pairing manager", ", "[NRDevicePairingManager activateWithCompletion:]_block_invoke_2"", 596, v9);
        }

        objc_opt_self();
        v11 = objc_alloc(MEMORY[0x277CCA9B8]);
        v20 = *MEMORY[0x277CCA450];
        v21[0] = @"Manager is in invalid state for this operation";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        v7 = [v11 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v12];

        v6 = 0;
      }
    }

    v13 = v5[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__NRDevicePairingManager_activateWithCompletion___block_invoke_3;
    block[3] = &unk_27996B108;
    v19 = v6;
    v14 = v5;
    v16 = v14;
    v18 = *(a1 + 32);
    v8 = v7;
    v17 = v8;
    dispatch_async(v13, block);
    if (v3)
    {
      [(NRDevicePairingManager *)v14 invalidateWithError:v8];
    }
  }

  else
  {
    v8 = v3;
  }
}

uint64_t __49__NRDevicePairingManager_activateWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setManagerState:2];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (NSString)fullDescription
{
  selfCopy = self;
  if (self)
  {
    self = self->_managerInfo;
  }

  fullDescription = [(NRDevicePairingManager *)self fullDescription];
  v4 = [fullDescription mutableCopy];

  [v4 appendFormat:@" State %zu", -[NRDevicePairingManager managerState](selfCopy, "managerState")];

  return v4;
}

- (id)description
{
  if (self)
  {
    self = self->_managerInfo;
  }

  return [(NRDevicePairingManager *)self description];
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_1533 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1533, &__block_literal_global_1534);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1535, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1535, 0, "%s%.30s:%-4d %@: Dealloc", ", "[NRDevicePairingManager dealloc]"", 524, self);
  }

  v3.receiver = self;
  v3.super_class = NRDevicePairingManager;
  [(NRDevicePairingManager *)&v3 dealloc];
}

- (NRDevicePairingManager)initWithIdentifier:(id)identifier pairingCriteria:(id)criteria metadata:(id)metadata queue:(id)queue
{
  v49 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  criteriaCopy = criteria;
  metadataCopy = metadata;
  queueCopy = queue;
  v14 = queueCopy;
  if (!criteriaCopy)
  {
    v26 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v30 = v26;
      v31 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);

      if (!v31)
      {
        goto LABEL_25;
      }
    }

    v32 = nrCopyLogObj_1529();
    _NRLogWithArgs(v32, 17, "%s called with null pairingCriteria");
LABEL_24:

    selfCopy = 0;
    goto LABEL_11;
  }

  if (!queueCopy)
  {
    v27 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_23:
      v32 = nrCopyLogObj_1529();
      _NRLogWithArgs(v32, 17, "%s called with null queue");
      goto LABEL_24;
    }

    v33 = v27;
    v34 = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);

    if (v34)
    {
      goto LABEL_23;
    }

LABEL_25:
    selfCopy = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  os_unfair_lock_lock(&copySharedInstance_gSharedInstanceLock);
  WeakRetained = objc_loadWeakRetained(&copySharedInstance_gSharedInstance);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    os_unfair_lock_unlock(&copySharedInstance_gSharedInstanceLock);
    goto LABEL_6;
  }

  v16 = objc_alloc_init(NRDevicePairingManagerMux);
  objc_storeWeak(&copySharedInstance_gSharedInstance, v16);
  os_unfair_lock_unlock(&copySharedInstance_gSharedInstanceLock);
  if (v16)
  {
LABEL_6:
    v48.receiver = self;
    v48.super_class = NRDevicePairingManager;
    v17 = [(NRDevicePairingManager *)&v48 init];
    if (v17)
    {
      p_isa = &v17->super.isa;
      v19 = objc_alloc_init(NRDevicePairingManagerInfo);
      v20 = p_isa[11];
      p_isa[11] = v19;

      v21 = [identifierCopy copy];
      [p_isa[11] setIdentifier:v21];

      v22 = [criteriaCopy copy];
      [p_isa[11] setPairingCriteria:v22];

      v23 = [metadataCopy copy];
      [p_isa[11] setMetadata:v23];

      objc_storeStrong(p_isa + 7, queue);
      if (nrXPCCopyQueue_onceToken != -1)
      {
        dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
      }

      objc_storeStrong(p_isa + 8, nrXPCCopyQueue_nrXPCQueue);
      [(NRDevicePairingManager *)p_isa setInternalManagerState:?];
      [p_isa setManagerState:1];
      objc_storeStrong(p_isa + 9, v16);
      self = p_isa;
      selfCopy = self;
      goto LABEL_10;
    }

    v29 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = v29;
      v39 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

      if (!v39)
      {
        goto LABEL_31;
      }
    }

    v40 = nrCopyLogObj_1529();
    _NRLogWithArgs(v40, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePairingManager initWithIdentifier:pairingCriteria:metadata:queue:]"", 509);

LABEL_31:
    v41 = _os_log_pack_size();
    v43 = &v47 - ((MEMORY[0x28223BE20](v41, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = __error();
    v45 = _os_log_pack_fill(v43, v41, *v44, &dword_25B98C000, "%{public}s [super init] failed");
    *v45 = 136446210;
    *(v45 + 4) = "[NRDevicePairingManager initWithIdentifier:pairingCriteria:metadata:queue:]";
    v46 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v46, v43);
  }

  v28 = nrCopyLogObj_1529();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_27:
    v37 = nrCopyLogObj_1529();
    _NRLogWithArgs(v37, 17, "%s called with null pairingManagerMux", "[NRDevicePairingManager initWithIdentifier:pairingCriteria:metadata:queue:]");

    goto LABEL_28;
  }

  v35 = v28;
  v36 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);

  if (v36)
  {
    goto LABEL_27;
  }

LABEL_28:
  v16 = 0;
  selfCopy = 0;
LABEL_10:

LABEL_11:
  return selfCopy;
}

+ (void)unpairDevice:(id)device queue:(id)queue withCompletion:(id)completion
{
  deviceCopy = device;
  queueCopy = queue;
  completionCopy = completion;
  v10 = completionCopy;
  if (deviceCopy)
  {
    if (queueCopy)
    {
      if (completionCopy)
      {
        v11 = [deviceCopy copy];
        nrDeviceIdentifier = [v11 nrDeviceIdentifier];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __60__NRDevicePairingManager_unpairDevice_queue_withCompletion___block_invoke;
        v23[3] = &unk_27996B3D0;
        v24 = v11;
        v25 = v10;
        v13 = v11;
        nrXPCUnpairDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v23);
      }

      else
      {
        v16 = nrCopyLogObj_1529();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v21 = v16;
          v22 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

          if (!v22)
          {
            goto LABEL_6;
          }
        }

        v13 = nrCopyLogObj_1529();
        _NRLogWithArgs(v13, 17, "%s called with null completionBlock");
      }
    }

    else
    {
      v15 = nrCopyLogObj_1529();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v19 = v15;
        v20 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

        if (!v20)
        {
          goto LABEL_6;
        }
      }

      v13 = nrCopyLogObj_1529();
      _NRLogWithArgs(v13, 17, "%s called with null queue");
    }
  }

  else
  {
    v14 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_6;
      }
    }

    v13 = nrCopyLogObj_1529();
    _NRLogWithArgs(v13, 17, "%s called with null nrDeviceIdentifier");
  }

LABEL_6:
}

void __60__NRDevicePairingManager_unpairDevice_queue_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v15 = *MEMORY[0x277CCA450];
      v16[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDevicePairingErrorDomain" code:a2 userInfo:v7];
    v9 = [*(a1 + 32) nrDeviceIdentifier];
    v10 = _NRCopyLogObjectForNRUUID(v9);
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
LABEL_10:
        (*(*(a1 + 40) + 16))();

        goto LABEL_11;
      }
    }

    v13 = [*(a1 + 32) nrDeviceIdentifier];
    v14 = _NRCopyLogObjectForNRUUID(v13);
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d Unpairing failed: %@", ", "+[NRDevicePairingManager unpairDevice:queue:withCompletion:]_block_invoke"", 942, v8);

    goto LABEL_10;
  }

  (*(*(a1 + 40) + 16))();
LABEL_11:
}

+ (void)unpairDevice:(id)device withCompletion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  v7 = nrXPCCopyQueue_nrXPCQueue;
  [NRDevicePairingManager unpairDevice:deviceCopy queue:v7 withCompletion:completionCopy];
}

+ (uint64_t)copyXPCError
{
  v6[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = objc_alloc(MEMORY[0x277CCA9B8]);
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"An XPC connection error occurred";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v1 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v2];

  return v3;
}

+ (uint64_t)copyErrorForCode:(void *)code userInfo:
{
  codeCopy = code;
  objc_opt_self();
  if ([codeCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:codeCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDevicePairingErrorDomain" code:a2 userInfo:v5];

  return v6;
}

+ (uint64_t)copyErrorForCode:(uint64_t)code
{
  objc_opt_self();

  return [NRDevicePairingManager copyErrorForCode:a2 userInfo:0];
}

void __46__NRDevicePairingManager_discoveredCandidate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) candidateDiscoveredHandler];
  v2[2](v2, *(a1 + 40));
}

void __40__NRDevicePairingManager_lostCandidate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) candidateLostHandler];
  v2[2](v2, *(a1 + 40));
}

void __64__NRDevicePairingManager_receivedRequestForAuthMethod_authData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authRequestHandler];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
}

uint64_t __59__NRDevicePairingManager_pairingSucceededWithPairedDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setManagerState:2];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)pairingFailedWithError:(void *)error
{
  v3 = a2;
  if (error)
  {
    errorCopy = error;
    objc_sync_enter(errorCopy);
    v5 = errorCopy[1];
    objc_sync_exit(errorCopy);

    if (v5 == 8)
    {
      v7 = objc_getProperty(errorCopy, v6, 80, 1);
      objc_setProperty_atomic_copy(errorCopy, v8, 0, 80);
      [(NRDevicePairingManager *)errorCopy setInternalManagerState:?];
      v9 = errorCopy[7];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__NRDevicePairingManager_pairingFailedWithError___block_invoke;
      block[3] = &unk_27996B298;
      block[4] = errorCopy;
      v13 = v7;
      v12 = v3;
      v10 = v7;
      dispatch_async(v9, block);
    }
  }
}

uint64_t __49__NRDevicePairingManager_pairingFailedWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setManagerState:2];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end