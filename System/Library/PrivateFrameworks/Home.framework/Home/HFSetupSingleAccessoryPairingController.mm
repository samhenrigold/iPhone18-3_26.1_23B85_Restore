@interface HFSetupSingleAccessoryPairingController
- (HFSetupSingleAccessoryPairingController)initWithContext:(id)context discoveredAccessory:(id)accessory;
- (id)cancel;
- (void)_assertValidTransitionFromPhase:(unint64_t)phase toPhase:(unint64_t)toPhase;
- (void)_failPairingWithDiscoveredAccessory:(id)accessory error:(id)error;
- (void)_finishPairingWithAccessories:(id)accessories completedInfo:(id)info;
- (void)_tryPairing;
- (void)_updateStatusTextAndNotifyDelegate:(BOOL)delegate;
- (void)addPairingObserver:(id)observer;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)removePairingObserver:(id)observer;
- (void)setPhase:(unint64_t)phase;
- (void)setSetupResult:(id)result;
- (void)startWithHome:(id)home;
@end

@implementation HFSetupSingleAccessoryPairingController

- (HFSetupSingleAccessoryPairingController)initWithContext:(id)context discoveredAccessory:(id)accessory
{
  contextCopy = context;
  accessoryCopy = accessory;
  v18.receiver = self;
  v18.super_class = HFSetupSingleAccessoryPairingController;
  v9 = [(HFSetupSingleAccessoryPairingController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_discoveredAccessoryToPair, accessory);
    discoveredAccessoryToPair = [(HFSetupSingleAccessoryPairingController *)v10 discoveredAccessoryToPair];
    v10->_accessoryRequiresCode = [discoveredAccessoryToPair requiresSetupCode];

    v10->_phase = 0;
    date = [MEMORY[0x277CBEAA8] date];
    phaseStartDate = v10->_phaseStartDate;
    v10->_phaseStartDate = date;

    v14 = objc_alloc_init(MEMORY[0x277D2C900]);
    pairingFuture = v10->_pairingFuture;
    v10->_pairingFuture = v14;

    v16 = +[HFHomeKitDispatcher sharedDispatcher];
    [v16 addHomeObserver:v10];
  }

  return v10;
}

- (void)setPhase:(unint64_t)phase
{
  v41 = *MEMORY[0x277D85DE8];
  phase = self->_phase;
  if (phase != phase)
  {
    [(HFSetupSingleAccessoryPairingController *)self _assertValidTransitionFromPhase:self->_phase toPhase:phase];
    v6 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
      v8 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
      *buf = 138412802;
      selfCopy = self;
      v37 = 2112;
      v38 = v7;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@ Transitioning phase: %@ -> %@", buf, 0x20u);
    }

    self->_phase = phase;
    date = [MEMORY[0x277CBEAA8] date];
    [(HFSetupSingleAccessoryPairingController *)self setPhaseStartDate:date];
  }

  statusTitle = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
  statusDescription = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
  [(HFSetupSingleAccessoryPairingController *)self _updateStatusTextAndNotifyDelegate:0];
  statusTitle2 = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
  v13 = statusTitle;
  v14 = v13;
  v29 = statusDescription;
  if (statusTitle2 == v13)
  {

    goto LABEL_10;
  }

  if (statusTitle2)
  {
    v15 = [statusTitle2 isEqual:v13];

    if (!v15)
    {
      goto LABEL_14;
    }

LABEL_10:
    statusDescription2 = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
    v17 = statusDescription;
    if (statusDescription2 == v17)
    {
      v18 = 0;
    }

    else if (statusDescription2)
    {
      v18 = [statusDescription2 isEqual:v17] ^ 1;
    }

    else
    {
      v18 = 1;
    }

    if (phase == phase && !v18)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

LABEL_14:
LABEL_19:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [(HFSetupSingleAccessoryPairingController *)self pairingObservers:v14];
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v25 = self->_phase;
          statusTitle3 = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
          statusDescription3 = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
          [v24 pairingController:self didTransitionToPhase:v25 statusTitle:statusTitle3 statusDescription:statusDescription3];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v21);
  }

  v14 = v28;
LABEL_29:
}

- (void)setSetupResult:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  p_setupResult = &self->_setupResult;
  setupResult = self->_setupResult;
  v8 = resultCopy;
  v9 = setupResult;
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (v8)
    {
      v11 = [(HFSetupAccessoryResult *)v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_setupResult, result);
    v12 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Received setup result: %@", &v18, 0xCu);
    }

    if (*p_setupResult)
    {
      if ([(HFSetupSingleAccessoryPairingController *)self phase]== 1)
      {
        error = [(HFSetupAccessoryResult *)*p_setupResult error];

        selfCopy2 = self;
        if (!error)
        {
          [(HFSetupSingleAccessoryPairingController *)self _tryPairing];
          goto LABEL_20;
        }

        v15 = 9;
        goto LABEL_15;
      }

      v16 = HFLogForCategory(0x3FuLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:[(HFSetupSingleAccessoryPairingController *)self phase]];
        v18 = 138412290;
        v19 = v17;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Received setup code, but we're still in the %@ phase. Waiting until we're ready to handle the setup code before calling -_tryPairing", &v18, 0xCu);
      }
    }

    else if (![HFSetupPairingControllerUtilities isPairingPhaseIdle:[(HFSetupSingleAccessoryPairingController *)self phase]])
    {
      selfCopy2 = self;
      v15 = 1;
LABEL_15:
      [(HFSetupSingleAccessoryPairingController *)selfCopy2 setPhase:v15];
    }
  }

LABEL_20:
}

- (void)addPairingObserver:(id)observer
{
  observerCopy = observer;
  pairingObservers = [(HFSetupSingleAccessoryPairingController *)self pairingObservers];

  if (!pairingObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFSetupSingleAccessoryPairingController *)self setPairingObservers:weakObjectsHashTable];
  }

  pairingObservers2 = [(HFSetupSingleAccessoryPairingController *)self pairingObservers];
  [pairingObservers2 addObject:observerCopy];
}

- (void)removePairingObserver:(id)observer
{
  observerCopy = observer;
  pairingObservers = [(HFSetupSingleAccessoryPairingController *)self pairingObservers];
  [pairingObservers removeObject:observerCopy];
}

- (void)startWithHome:(id)home
{
  v30 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v28 = 2112;
    v29 = homeCopy;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Request to start pairing controller: %@ with home: %@", buf, 0x16u);
  }

  if (!homeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetupSingleAccessoryPairingController.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"home"}];
  }

  [(HFSetupSingleAccessoryPairingController *)self setHome:homeCopy];
  discoveredAccessoryToPair = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  accessory = [discoveredAccessoryToPair accessory];

  if (accessory)
  {
    context = [(HFSetupSingleAccessoryPairingController *)self context];
    setupAccessoryDescription = [context setupAccessoryDescription];
    [setupAccessoryDescription updateWithAccessory:accessory];

    v11 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      context2 = [(HFSetupSingleAccessoryPairingController *)self context];
      setupAccessoryDescription2 = [context2 setupAccessoryDescription];
      *buf = 138412290;
      selfCopy = setupAccessoryDescription2;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFSetupSingleAccessoryPairingController startPairing with description: %@", buf, 0xCu);
    }

    v14 = objc_msgSend_home(self);
    context3 = [(HFSetupSingleAccessoryPairingController *)self context];
    setupAccessoryDescription3 = [context3 setupAccessoryDescription];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke;
    v25[3] = &unk_277DF37E8;
    v25[4] = self;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_16;
    v23[3] = &unk_277DF3838;
    v23[4] = self;
    v24 = accessory;
    [v14 startPairingWithAccessoryDescription:setupAccessoryDescription3 progress:v25 completion:v23];
  }

  setupResult = [(HFSetupSingleAccessoryPairingController *)self setupResult];
  if (setupResult)
  {
  }

  else if ([(HFSetupSingleAccessoryPairingController *)self accessoryRequiresCode])
  {
    selfCopy3 = self;
    v19 = 1;
    goto LABEL_15;
  }

  setupResult2 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
  error = [setupResult2 error];

  selfCopy3 = self;
  if (!error)
  {
    [(HFSetupSingleAccessoryPairingController *)self _tryPairing];
    goto LABEL_17;
  }

  v19 = 9;
LABEL_15:
  [(HFSetupSingleAccessoryPairingController *)selfCopy3 setPhase:v19];
LABEL_17:
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_2;
  block[3] = &unk_277DF37C0;
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) phase];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) context];
  [v4 setSetupAccessoryDescription:v3];

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) phase];
  v7 = [*(a1 + 32) context];
  v8 = [*(a1 + 32) discoveredAccessoryToPair];
  v9 = [*(a1 + 32) setupResult];
  v10 = objc_msgSend_home(*(a1 + 32));
  [*(a1 + 32) setPhase:{+[HFSetupPairingControllerUtilities processFirstPartyAccessorySetupProgressChange:currentPhase:context:discoveredAccessory:setupResult:home:callerClass:](HFSetupPairingControllerUtilities, "processFirstPartyAccessorySetupProgressChange:currentPhase:context:discoveredAccessory:setupResult:home:callerClass:", v5, v6, v7, v8, v9, v10, objc_opt_class())}];

  v11 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:v2];
    v14 = [*(a1 + 32) phase];
    v15 = +[HFSetupPairingControllerUtilities descriptionForPairingPhase:](HFSetupPairingControllerUtilities, "descriptionForPairingPhase:", [*(a1 + 32) phase]);
    v16 = *(a1 + 48);
    *buf = 138413570;
    v18 = v12;
    v19 = 2048;
    v20 = v2;
    v21 = 2112;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    v27 = 2048;
    v28 = v16;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "%@ pairing phase transition %ld (%@) -> %ld (%@).  Progress: %ld", buf, 0x3Eu);
  }
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_16(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_2_17;
  block[3] = &unk_277DF3280;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v15 = v9;
  v16 = v7;
  v17 = v8;
  v18 = v10;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_2_17(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) phase] == 9)
  {
    v2 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v27 = v3;
      _os_log_error_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_ERROR, "HFSetupSingleAccessoryPairingController startPairing finished with error: %@, but pairing is already in a failed state, so ignoring completion. Maybe cancelling the pairing operation failed.", buf, 0xCu);
    }

LABEL_8:

    return;
  }

  if (*(a1 + 40))
  {
    v4 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      *buf = 138412290;
      v27 = v19;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "HFSetupSingleAccessoryPairingController startPairing finished with error: %@", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = [v5 discoveredAccessoryToPair];
    [v5 _failPairingWithDiscoveredAccessory:v6 error:*(a1 + 40)];

    v2 = [*(a1 + 32) pairingFuture];
    [v2 finishWithError:*(a1 + 40)];
    goto LABEL_8;
  }

  v7 = [*(a1 + 48) count];
  v8 = HFLogForCategory(0x3FuLL);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 48) hf_prettyDescription];
      v11 = *(a1 + 56);
      *buf = 138412546;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFSetupSingleAccessoryPairingController startPairing finished with accessories: %@ info: %@", buf, 0x16u);
    }

    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
    [v12 _finishPairingWithAccessories:v13 completedInfo:*(a1 + 56)];

    v14 = +[HFHomeKitDispatcher sharedDispatcher];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_20;
    v23 = &unk_277DF3810;
    v24 = *(a1 + 32);
    v25 = *(a1 + 64);
    [v14 dispatchHomeObserverMessage:&v20 sender:*(a1 + 32)];

    v15 = [*(a1 + 32) pairingFuture];
    v16 = NAEmptyResult();
    [v15 finishWithResult:v16];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "HFSetupSingleAccessoryPairingController startPairing finished with error: nil but no paired accessories; treating as a failure", buf, 2u);
    }

    v17 = [*(a1 + 32) pairingFuture];
    v18 = [MEMORY[0x277CCA9B8] na_genericError];
    [v17 finishWithError:v18];
  }
}

void __57__HFSetupSingleAccessoryPairingController_startWithHome___block_invoke_20(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    [v4 home:v3 didAddAccessory:*(a1 + 40)];
  }
}

- (id)cancel
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [HFSetupPairingControllerUtilities isPairingPhaseIdle:[(HFSetupSingleAccessoryPairingController *)self phase]];
  v4 = HFLogForCategory(0x3FuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Cancel requested for pairing controller: %@, but we're already in an idle state, so ignoring", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    if (v5)
    {
      discoveredAccessoryToPair = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
      *buf = 138412290;
      selfCopy = discoveredAccessoryToPair;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Cancel requested for accessory: (%@)", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    discoveredAccessoryToPair2 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    na_cancelledError = [MEMORY[0x277CCA9B8] na_cancelledError];
    [discoveredAccessoryToPair2 updateStatus:3 error:na_cancelledError];

    discoveredAccessoryToPair3 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    uniqueIdentifier = [discoveredAccessoryToPair3 uniqueIdentifier];

    if (uniqueIdentifier)
    {
      na_cancelledError2 = [MEMORY[0x277CCA9B8] na_cancelledError];
      v13 = [MEMORY[0x277CCA9B8] hf_mappedHMError:na_cancelledError2];
      context = [(HFSetupSingleAccessoryPairingController *)self context];
      setupAccessoryDescription = [context setupAccessoryDescription];
      [setupAccessoryDescription setCancellationReason:v13];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke;
      v27[3] = &unk_277DF2C68;
      v27[4] = self;
      v16 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v27];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke_2;
      v26[3] = &unk_277DF2D08;
      v26[4] = self;
      v17 = [v16 addFailureBlock:v26];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke_27;
      v25[3] = &unk_277DF2720;
      v25[4] = self;
      v18 = [v16 addSuccessBlock:v25];
      v19 = MEMORY[0x277D2C900];
      pairingFuture = [(HFSetupSingleAccessoryPairingController *)self pairingFuture];
      v28[0] = pairingFuture;
      v28[1] = v16;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v23 = [v19 combineAllFutures:v21 ignoringErrors:1 scheduler:mainThreadScheduler];

      futureWithNoResult = v23;
    }

    [(HFSetupSingleAccessoryPairingController *)self setPhase:9];
  }

  return futureWithNoResult;
}

void __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_home(v3);
  v5 = [*(a1 + 32) context];
  v6 = [v5 setupAccessoryDescription];
  [v7 cancelPairingForAccessoryWithDescription:v6 completionHandler:v4];
}

void __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) discoveredAccessoryToPair];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to cancel pairing for accessory: (%@). Error: %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 32) pairingFuture];
  [v5 finishWithNoResult];
}

void __49__HFSetupSingleAccessoryPairingController_cancel__block_invoke_27(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) discoveredAccessoryToPair];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Cancel done for accessory: (%@)", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) pairingFuture];
  [v4 finishWithNoResult];
}

- (void)_tryPairing
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    discoveredAccessoryToPair = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    if ([(HFSetupSingleAccessoryPairingController *)self accessoryRequiresCode])
    {
      v6 = @"requires";
    }

    else
    {
      v6 = @"does not require";
    }

    setupResult = [(HFSetupSingleAccessoryPairingController *)self setupResult];
    setupPayload = [setupResult setupPayload];
    *buf = 138412802;
    v28 = discoveredAccessoryToPair;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = setupPayload;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Trying to pair with accessory: %@ (%@ code) payload: %@", buf, 0x20u);
  }

  setupResult2 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
  if ([setupResult2 isValidForPairing])
  {
    goto LABEL_7;
  }

  accessoryRequiresCode = [(HFSetupSingleAccessoryPairingController *)self accessoryRequiresCode];

  if (accessoryRequiresCode)
  {
    setupResult2 = [MEMORY[0x277CCA890] currentHandler];
    [setupResult2 handleFailureInMethod:a2 object:self file:@"HFSetupSingleAccessoryPairingController.m" lineNumber:272 description:{@"Invalid parameter not satisfying: %@", @"self.setupResult.isValidForPairing || !self.accessoryRequiresCode"}];
LABEL_7:
  }

  discoveredAccessoryToPair2 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  v12 = discoveredAccessoryToPair2 == 0;

  if (v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetupSingleAccessoryPairingController.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"self.discoveredAccessoryToPair"}];
  }

  discoveredAccessoryToPair3 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  [discoveredAccessoryToPair3 updateStatus:1 error:0];

  [(HFSetupSingleAccessoryPairingController *)self setPhase:4];
  v14 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    discoveredAccessoryToPair4 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    *buf = 138412290;
    v28 = discoveredAccessoryToPair4;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Trying to pair with accessory: %@. Calling -continuePairing.", buf, 0xCu);
  }

  if ([(HFSetupSingleAccessoryPairingController *)self accessoryRequiresCode])
  {
    objc_initWeak(buf, self);
    v16 = objc_msgSend_home(self);
    discoveredAccessoryToPair5 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    uniqueIdentifier = [discoveredAccessoryToPair5 uniqueIdentifier];
    setupResult3 = [(HFSetupSingleAccessoryPairingController *)self setupResult];
    setupPayload2 = [setupResult3 setupPayload];
    setupCode = [setupPayload2 setupCode];
    discoveredAccessoryToPair6 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    rawSetupPayloadString = [discoveredAccessoryToPair6 rawSetupPayloadString];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__HFSetupSingleAccessoryPairingController__tryPairing__block_invoke;
    v25[3] = &unk_277DF3860;
    objc_copyWeak(&v26, buf);
    [v16 continuePairingForAccessoryWithUUID:uniqueIdentifier setupCode:setupCode onboardingSetupPayloadString:rawSetupPayloadString completionHandler:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

void __54__HFSetupSingleAccessoryPairingController__tryPairing__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    v4 = [WeakRetained discoveredAccessoryToPair];
    [WeakRetained _failPairingWithDiscoveredAccessory:v4 error:v5];
  }
}

- (void)_updateStatusTextAndNotifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v44 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  phase = [(HFSetupSingleAccessoryPairingController *)self phase];
  phaseStartDate = [(HFSetupSingleAccessoryPairingController *)self phaseStartDate];
  discoveredAccessoryToPair = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  setupResult = [(HFSetupSingleAccessoryPairingController *)self setupResult];
  context = [(HFSetupSingleAccessoryPairingController *)self context];
  [HFSetupPairingControllerUtilities getStatusTitle:&v38 statusDescription:&v37 forPairingPhase:phase phaseStartDate:phaseStartDate discoveredAccessory:discoveredAccessoryToPair setupResult:setupResult context:context setupError:0];
  v10 = v38;
  v11 = v37;

  statusTitle = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
  v13 = v10;
  v14 = statusTitle;
  pairingObservers = v14;
  if (v13 == v14)
  {
  }

  else
  {
    v16 = v14;
    if (!v13)
    {
LABEL_12:

LABEL_13:
      goto LABEL_14;
    }

    v17 = [v13 isEqual:v14];

    if (!v17)
    {
      goto LABEL_13;
    }
  }

  statusDescription = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
  v19 = v11;
  v20 = statusDescription;
  v16 = v20;
  if (v19 == v20)
  {

LABEL_27:
    goto LABEL_28;
  }

  if (!v19)
  {

    goto LABEL_12;
  }

  v21 = [v19 isEqual:v20];

  if (v21)
  {
    goto LABEL_28;
  }

LABEL_14:
  [(HFSetupSingleAccessoryPairingController *)self setStatusTitle:v13];
  [(HFSetupSingleAccessoryPairingController *)self setStatusDescription:v11];
  v22 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = v13;
    v42 = 2112;
    v43 = v11;
    _os_log_impl(&dword_20D9BF000, v22, OS_LOG_TYPE_DEFAULT, "Updating status title: %@ description: %@", buf, 0x16u);
  }

  if (delegateCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    pairingObservers = [(HFSetupSingleAccessoryPairingController *)self pairingObservers];
    v23 = [pairingObservers countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v31 = v13;
      v32 = v11;
      v25 = *v34;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(pairingObservers);
          }

          v27 = *(*(&v33 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            phase2 = [(HFSetupSingleAccessoryPairingController *)self phase];
            statusTitle2 = [(HFSetupSingleAccessoryPairingController *)self statusTitle];
            statusDescription2 = [(HFSetupSingleAccessoryPairingController *)self statusDescription];
            [v27 pairingController:self didTransitionToPhase:phase2 statusTitle:statusTitle2 statusDescription:statusDescription2];
          }
        }

        v24 = [pairingObservers countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v24);
      v13 = v31;
      v11 = v32;
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  v26 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  homeCopy = home;
  v8 = objc_msgSend_home(self);

  if (v8 == homeCopy)
  {
    v9 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      discoveredAccessoryToPair = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
      *buf = 138412546;
      v23 = accessoryCopy;
      v24 = 2112;
      v25 = discoveredAccessoryToPair;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Notified that an accessory (%@) was added to the home. Our accessory to pair is: %@", buf, 0x16u);
    }

    discoveredAccessoryToPair2 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    uniqueIdentifier = [discoveredAccessoryToPair2 uniqueIdentifier];
    uuid = [accessoryCopy uuid];
    if (![uniqueIdentifier isEqual:uuid])
    {

      goto LABEL_8;
    }

    v14 = [HFSetupPairingControllerUtilities isPairingPhaseIdle:[(HFSetupSingleAccessoryPairingController *)self phase]];

    if (!v14)
    {
      discoveredAccessoryToPair3 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
      [discoveredAccessoryToPair3 setAccessory:accessoryCopy];

      v16 = [MEMORY[0x277CBEB98] setWithObject:accessoryCopy];
      v17 = MEMORY[0x277CBEB98];
      uniqueIdentifiersForBridgedAccessories = [accessoryCopy uniqueIdentifiersForBridgedAccessories];
      v19 = [v17 setWithArray:uniqueIdentifiersForBridgedAccessories];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__HFSetupSingleAccessoryPairingController_home_didAddAccessory___block_invoke;
      v21[3] = &unk_277DF38B0;
      v21[4] = self;
      v20 = [v19 na_map:v21];
      discoveredAccessoryToPair2 = [v16 setByAddingObjectsFromSet:v20];

      [(HFSetupSingleAccessoryPairingController *)self _finishPairingWithAccessories:discoveredAccessoryToPair2 completedInfo:0];
LABEL_8:
    }
  }
}

id __64__HFSetupSingleAccessoryPairingController_home_didAddAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_msgSend_home(*(a1 + 32));
  v5 = [v4 accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HFSetupSingleAccessoryPairingController_home_didAddAccessory___block_invoke_2;
  v9[3] = &unk_277DF3888;
  v10 = v3;
  v6 = v3;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __64__HFSetupSingleAccessoryPairingController_home_didAddAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_finishPairingWithAccessories:(id)accessories completedInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  infoCopy = info;
  v8 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [accessoriesCopy hf_prettyDescription];
    v11 = 138412546;
    v12 = hf_prettyDescription;
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Finished pairing with accessories: %@, info: %@", &v11, 0x16u);
  }

  discoveredAccessoryToPair = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
  [discoveredAccessoryToPair updateStatus:2 error:0];

  [(HFSetupSingleAccessoryPairingController *)self setPairedAccessories:accessoriesCopy];
  [(HFSetupSingleAccessoryPairingController *)self setCompletedInfo:infoCopy];
  [(HFSetupSingleAccessoryPairingController *)self setPhase:10];
}

- (void)_failPairingWithDiscoveredAccessory:(id)accessory error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(HFSetupSingleAccessoryPairingController *)self phase]!= 9)
  {
    discoveredAccessoryToPair = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
    [discoveredAccessoryToPair updateStatus:3 error:errorCopy];

    v7 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      discoveredAccessoryToPair2 = [(HFSetupSingleAccessoryPairingController *)self discoveredAccessoryToPair];
      v9 = 138412546;
      v10 = discoveredAccessoryToPair2;
      v11 = 2112;
      v12 = errorCopy;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Failed pairing with accessory: %@ error: %@", &v9, 0x16u);
    }

    [(HFSetupSingleAccessoryPairingController *)self setPhase:9];
  }
}

- (void)_assertValidTransitionFromPhase:(unint64_t)phase toPhase:(unint64_t)toPhase
{
  if (toPhase - 6 >= 4)
  {
    if (phase <= 3)
    {
      if (phase)
      {
        if (phase == 1)
        {
          switch(toPhase)
          {
            case 3uLL:
              return;
            case 0xAuLL:
              return;
            case 4uLL:
              setupResult = [(HFSetupSingleAccessoryPairingController *)self setupResult];

              if (setupResult)
              {
                return;
              }

              break;
          }
        }

        else if (phase == 3)
        {
          return;
        }
      }

      else if (toPhase == 1 || toPhase == 4)
      {
        return;
      }
    }

    else if (phase - 5 < 3 || phase == 4 && toPhase <= 0xA && ((1 << toPhase) & 0x422) != 0)
    {
      return;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
    v10 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:toPhase];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSetupSingleAccessoryPairingController.m" lineNumber:415 description:{@"Invalid phase transition: %@ -> %@", v9, v10}];
  }
}

@end