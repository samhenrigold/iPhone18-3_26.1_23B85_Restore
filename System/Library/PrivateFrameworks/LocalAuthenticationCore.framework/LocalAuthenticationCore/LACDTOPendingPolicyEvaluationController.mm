@interface LACDTOPendingPolicyEvaluationController
- (BOOL)_canFinishPendingEvaluationsForRatchetState:(id)state;
- (BOOL)_hasPendingEvaluationRecordForRequest:(id)request;
- (BOOL)_isRatchetRestartRequest:(id)request;
- (BOOL)_shouldPrunePendingEvaluation:(id)evaluation uuid:(id)uuid;
- (LACDTOPendingPolicyEvaluationController)initWithRatchetStateProvider:(id)provider ratchetHandler:(id)handler device:(id)device evaluationIdentifierFactory:(id)factory persistentStore:(id)store workQueue:(id)queue;
- (id)_coolOffStartedTimestampForIdentifier:(id)identifier currentState:(id)state;
- (void)_addPendingEvaluationRecord:(id)record currentState:(id)state;
- (void)_addPendingEvaluationRecordForRequest:(id)request currentState:(id)state;
- (void)_cancelPreviousNotificationForPendingEvaluationRecord:(id)record scheduledOnly:(BOOL)only;
- (void)_cancelPreviousNotificationForRatchetRestartWithRatchetState:(id)state;
- (void)_checkIsRatchetStateIn:(id)in completion:(id)completion;
- (void)_checkShouldAddPendingEvaluationRecordForRequest:(id)request completion:(id)completion;
- (void)_checkShouldKeepPendingEvaluationRecordForResult:(id)result completion:(id)completion;
- (void)_forEachObserver:(id)observer;
- (void)_handleRatchetStateChanged:(id)changed;
- (void)_handleSwitchToCoolOffState:(id)state;
- (void)_handleSwitchToFinalState:(id)state;
- (void)_loadPendingEvaluations;
- (void)_postNotificationForRatchetRestartIfNeeded;
- (void)_pruneInvalidatedEvaluations;
- (void)_prunePendingEvaluationsWithUUID:(id)d;
- (void)_registerNotificationObservers;
- (void)_removePendingEvaluationRecordForRequest:(id)request completion:(id)completion;
- (void)_removePendingEvaluationRecordWithIdentifier:(id)identifier completion:(id)completion;
- (void)_rescheduleNotifications;
- (void)_resetRatchetWithCompletion:(id)completion;
- (void)_restartRatchetForInvalidatedEvaluations;
- (void)_scheduleNotificationForPendingEvaluationRecord:(id)record after:(double)after validity:(double)validity;
- (void)_updatePendingEvaluationsWithUpdateBlock:(id)block observerFilter:(id)filter;
- (void)addObserver:(id)observer;
- (void)cancelPendingEvaluationForClient:(id)client ratchetIdentifier:(id)identifier reason:(id)reason completion:(id)completion;
- (void)dealloc;
- (void)handleEvent:(id)event sender:(id)sender;
- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification;
- (void)notificationManager:(id)manager didReceiveUserAction:(id)action completionHandler:(id)handler;
- (void)policyController:(id)controller didFinishPolicyEvaluation:(id)evaluation result:(id)result;
- (void)policyController:(id)controller willStartPolicyEvaluation:(id)evaluation;
- (void)startController;
@end

@implementation LACDTOPendingPolicyEvaluationController

- (void)_postNotificationForRatchetRestartIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  hasCompletedSetup = [*self hasCompletedSetup];
  hasBeenUnlockedSinceBoot = [*self hasBeenUnlockedSinceBoot];
  v6[0] = 67109376;
  v6[1] = hasCompletedSetup;
  v7 = 1024;
  v8 = hasBeenUnlockedSinceBoot;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Skipping notification for security delay restart migration: %d, unlock: %d", v6, 0xEu);
}

- (LACDTOPendingPolicyEvaluationController)initWithRatchetStateProvider:(id)provider ratchetHandler:(id)handler device:(id)device evaluationIdentifierFactory:(id)factory persistentStore:(id)store workQueue:(id)queue
{
  providerCopy = provider;
  handlerCopy = handler;
  deviceCopy = device;
  factoryCopy = factory;
  storeCopy = store;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = LACDTOPendingPolicyEvaluationController;
  v18 = [(LACDTOPendingPolicyEvaluationController *)&v29 init];
  if (v18)
  {
    v19 = [[LACDTONotificationManager alloc] initWithReplyQueue:queueCopy];
    notificationManager = v18->_notificationManager;
    v18->_notificationManager = v19;

    [(LACDTONotificationManager *)v18->_notificationManager setDelegate:v18];
    v21 = [[_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore alloc] initWithPersistentStore:storeCopy workQueue:queueCopy];
    evaluationStore = v18->_evaluationStore;
    v18->_evaluationStore = v21;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v18->_observers;
    v18->_observers = weakObjectsHashTable;

    v18->_shouldPostRestartRatchetPrompt = 0;
    objc_storeStrong(&v18->_ratchetStateProvider, provider);
    objc_storeStrong(&v18->_ratchetHandler, handler);
    objc_storeStrong(&v18->_device, device);
    objc_storeStrong(&v18->_evaluationIdentifierFactory, factory);
    objc_storeStrong(&v18->_workQueue, queue);
  }

  return v18;
}

- (void)dealloc
{
  v3 = +[LACDarwinNotificationCenter sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = LACDTOPendingPolicyEvaluationController;
  [(LACDTOPendingPolicyEvaluationController *)&v4 dealloc];
}

- (void)startController
{
  dispatch_assert_queue_V2(self->_workQueue);
  [(LACDTOPendingPolicyEvaluationController *)self _loadPendingEvaluations];

  [(LACDTOPendingPolicyEvaluationController *)self _registerNotificationObservers];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  [(NSHashTable *)self->_observers addObject:observerCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__LACDTOPendingPolicyEvaluationController_addObserver___block_invoke_2;
  v6[3] = &unk_1E7A97868;
  v7 = observerCopy;
  v5 = observerCopy;
  [(LACDTOPendingPolicyEvaluationController *)self _updatePendingEvaluationsWithUpdateBlock:&__block_literal_global_31 observerFilter:v6];
}

- (void)cancelPendingEvaluationForClient:(id)client ratchetIdentifier:(id)identifier reason:(id)reason completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  evaluationIdentifierFactory = self->_evaluationIdentifierFactory;
  completionCopy = completion;
  v13 = [(LACDTOPolicyEvaluationIdentifierFactory *)evaluationIdentifierFactory evaluationIdentifierForClient:client ratchetIdentifier:identifier];
  v14 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluationWithIdentifier:v13];
  v15 = LACLogDTOEvaluation(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = 138412802;
      v18 = reasonCopy;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Canceling pending evaluation with reason: %@, identifier: %@, did find instance: %@", &v17, 0x20u);
    }

    [(LACDTOPendingPolicyEvaluationController *)self _removePendingEvaluationRecordWithIdentifier:v13 completion:completionCopy];
  }

  else
  {
    if (v16)
    {
      v17 = 138412546;
      v18 = reasonCopy;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Skipping cancellation of pending evaluation with reason: %@, identifier: %@", &v17, 0x16u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)handleEvent:(id)event sender:(id)sender
{
  eventCopy = event;
  if (!objc_msgSend_rawValue(eventCopy))
  {
    value = [eventCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      value2 = [eventCopy value];
      [(LACDTOPendingPolicyEvaluationController *)self _handleRatchetStateChanged:value2];
    }
  }
}

- (void)policyController:(id)controller willStartPolicyEvaluation:(id)evaluation
{
  controllerCopy = controller;
  evaluationCopy = evaluation;
  if ([evaluationCopy isInteractiveRatchetEvaluation])
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__LACDTOPendingPolicyEvaluationController_policyController_willStartPolicyEvaluation___block_invoke;
    v8[3] = &unk_1E7A97890;
    objc_copyWeak(&v10, &location);
    v9 = evaluationCopy;
    [(LACDTOPendingPolicyEvaluationController *)self _checkShouldAddPendingEvaluationRecordForRequest:v9 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __86__LACDTOPendingPolicyEvaluationController_policyController_willStartPolicyEvaluation___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && a2)
  {
    [WeakRetained _addPendingEvaluationRecordForRequest:*(a1 + 32) currentState:v7];
  }
}

- (void)policyController:(id)controller didFinishPolicyEvaluation:(id)evaluation result:(id)result
{
  controllerCopy = controller;
  evaluationCopy = evaluation;
  resultCopy = result;
  if ([evaluationCopy isInteractiveRatchetEvaluation])
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__LACDTOPendingPolicyEvaluationController_policyController_didFinishPolicyEvaluation_result___block_invoke;
    v11[3] = &unk_1E7A97890;
    objc_copyWeak(&v13, &location);
    v12 = evaluationCopy;
    [(LACDTOPendingPolicyEvaluationController *)self _checkShouldKeepPendingEvaluationRecordForResult:resultCopy completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __93__LACDTOPendingPolicyEvaluationController_policyController_didFinishPolicyEvaluation_result___block_invoke(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (a2)
    {
      if (([WeakRetained _hasPendingEvaluationRecordForRequest:v7] & 1) == 0)
      {
        [v6 _addPendingEvaluationRecordForRequest:*(a1 + 32) currentState:v8];
      }
    }

    else
    {
      [WeakRetained _removePendingEvaluationRecordForRequest:v7 completion:0];
    }
  }
}

- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification
{
  centerCopy = center;
  objc_initWeak(&location, self);
  if (LACDarwinNotificationsEqual(notification, @"SignificantTimeChangeNotification"))
  {
    workQueue = self->_workQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__LACDTOPendingPolicyEvaluationController_notificationCenter_didReceiveNotification___block_invoke;
    v12[3] = &unk_1E7A95380;
    v8 = &v13;
    objc_copyWeak(&v13, &location);
    v9 = v12;
LABEL_5:
    dispatch_async(workQueue, v9);
    objc_destroyWeak(v8);
    goto LABEL_6;
  }

  if (LACDarwinNotificationsEqual(notification, @"com.apple.springboard.lockstate"))
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__LACDTOPendingPolicyEvaluationController_notificationCenter_didReceiveNotification___block_invoke_2;
    block[3] = &unk_1E7A95380;
    v8 = &v11;
    objc_copyWeak(&v11, &location);
    v9 = block;
    goto LABEL_5;
  }

LABEL_6:
  objc_destroyWeak(&location);
}

void __85__LACDTOPendingPolicyEvaluationController_notificationCenter_didReceiveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _rescheduleNotifications];
    WeakRetained = v2;
  }
}

void __85__LACDTOPendingPolicyEvaluationController_notificationCenter_didReceiveNotification___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _postNotificationForRatchetRestartIfNeeded];
    WeakRetained = v2;
  }
}

- (void)_registerNotificationObservers
{
  v3 = +[LACDarwinNotificationCenter sharedInstance];
  [v3 addObserver:self notification:@"SignificantTimeChangeNotification"];

  v4 = +[LACDarwinNotificationCenter sharedInstance];
  [v4 addObserver:self notification:@"com.apple.springboard.lockstate"];
}

- (void)_rescheduleNotifications
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__LACDTOPendingPolicyEvaluationController__rescheduleNotifications__block_invoke;
  v3[3] = &unk_1E7A978B8;
  objc_copyWeak(&v4, &location);
  [(LACDTOPendingPolicyEvaluationController *)self _checkIsRatchetStateIn:&unk_1F2693850 completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __67__LACDTOPendingPolicyEvaluationController__rescheduleNotifications__block_invoke(uint64_t a1, char a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [WeakRetained[3] pendingEvaluations];
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            [v7 _cancelPreviousNotificationForPendingEvaluationRecord:v13 scheduledOnly:0];
            v14 = 0.0;
            if (objc_msgSend_rawValue(v5) == 1)
            {
              [v5 duration];
              v14 = v15;
            }

            [v5 resetDuration];
            [v7 _scheduleNotificationForPendingEvaluationRecord:v13 after:v14 validity:v16];
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v10);
      }

      v17 = LACLogDTOEvaluation([v7[3] persistEvaluations]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v7[3] pendingEvaluations];
        *buf = 138412290;
        v24 = v18;
        _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Updated pending evaluations after significant time change: %@", buf, 0xCu);
      }
    }

    else
    {
      v17 = LACLogDTOEvaluation(WeakRetained);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Did not update pending evaluations after significant time change because we are not in the state of interest", buf, 2u);
      }
    }
  }
}

- (void)notificationManager:(id)manager didReceiveUserAction:(id)action completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  v9 = LACLogDTONotifications(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = actionCopy;
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - will handle notification action %{public}@", &v10, 0x16u);
  }

  if ([actionCopy isEqualToString:@"com.apple.coreauthd.notifications.action.securityDelay.dismiss"])
  {
    [(LACDTOPendingPolicyEvaluationController *)self _pruneInvalidatedEvaluations];
  }

  else if ([actionCopy isEqualToString:@"com.apple.coreauthd.notifications.action.securityDelay.start"])
  {
    [(LACDTOPendingPolicyEvaluationController *)self _restartRatchetForInvalidatedEvaluations];
  }

  handlerCopy[2](handlerCopy);
}

- (void)_checkShouldAddPendingEvaluationRecordForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__LACDTOPendingPolicyEvaluationController__checkShouldAddPendingEvaluationRecordForRequest_completion___block_invoke;
  v10[3] = &unk_1E7A978E0;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
  [(LACDTOPendingPolicyEvaluationController *)self _checkIsRatchetStateIn:&unk_1F2693868 completion:v10];
}

void __103__LACDTOPendingPolicyEvaluationController__checkShouldAddPendingEvaluationRecordForRequest_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = LACLogDTOEvaluation(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Does not need pending evaluation record for '%@' for current ratchet state: %@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_checkShouldKeepPendingEvaluationRecordForResult:(id)result completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  completionCopy = completion;
  isSuccess = [resultCopy isSuccess];
  if (isSuccess)
  {
    v9 = LACLogDTOEvaluation(isSuccess);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [resultCopy identifier];
      *buf = 138412290;
      v21 = identifier;
      v11 = "Does not need pending evaluation record for '%@' after success";
LABEL_8:
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
    }
  }

  else
  {
    error = [resultCopy error];
    if (!error || (v13 = error, [resultCopy error], v14 = objc_claimAutoreleasedReturnValue(), v15 = +[LACError error:hasCode:](LACError, "error:hasCode:", v14, -2), v14, v13, !v15))
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __103__LACDTOPendingPolicyEvaluationController__checkShouldKeepPendingEvaluationRecordForResult_completion___block_invoke;
      v17[3] = &unk_1E7A978E0;
      v18 = resultCopy;
      v19 = completionCopy;
      [(LACDTOPendingPolicyEvaluationController *)self _checkIsRatchetStateIn:&unk_1F2693880 completion:v17];

      goto LABEL_11;
    }

    v9 = LACLogDTOEvaluation(v16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [resultCopy identifier];
      *buf = 138412290;
      v21 = identifier;
      v11 = "Does not need pending evaluation record for '%@' after user cancel";
      goto LABEL_8;
    }
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_11:
}

void __103__LACDTOPendingPolicyEvaluationController__checkShouldKeepPendingEvaluationRecordForResult_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LACLogDTOEvaluation(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = [*(a1 + 32) identifier];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      v9 = "Does need pending evaluation record for '%@' for current ratchet state: %@";
LABEL_6:
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, v9, &v11, 0x16u);
    }
  }

  else if (v7)
  {
    v8 = [*(a1 + 32) identifier];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    v9 = "Does not need pending evaluation record for '%@' for current ratchet state: %@";
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v10);
}

- (void)_handleRatchetStateChanged:(id)changed
{
  changedCopy = changed;
  uuid = [changedCopy uuid];
  [(LACDTOPendingPolicyEvaluationController *)self _prunePendingEvaluationsWithUUID:uuid];

  [(LACDTOPendingPolicyEvaluationController *)self _handleSwitchToCoolOffState:changedCopy];
  [(LACDTOPendingPolicyEvaluationController *)self _handleSwitchToFinalState:changedCopy];
  [(LACDTOPendingPolicyEvaluationController *)self _cancelPreviousNotificationForRatchetRestartWithRatchetState:changedCopy];
}

- (void)_handleSwitchToCoolOffState:(id)state
{
  v19 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (objc_msgSend_rawValue(stateCopy) == 1)
  {
    v5 = [MEMORY[0x1E695DF00] now];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __71__LACDTOPendingPolicyEvaluationController__handleSwitchToCoolOffState___block_invoke;
    v12 = &unk_1E7A97908;
    objc_copyWeak(&v15, &location);
    v13 = stateCopy;
    v6 = v5;
    v14 = v6;
    v7 = LACLogDTOEvaluation([(LACDTOPendingPolicyEvaluationController *)self _updatePendingEvaluationsWithBlock:&v9]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations:v9];
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Updated pending evaluations after switch to cool off state: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

BOOL __71__LACDTOPendingPolicyEvaluationController__handleSwitchToCoolOffState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) duration];
  v6 = v5;
  [*(a1 + 32) resetDuration];
  [WeakRetained _scheduleNotificationForPendingEvaluationRecord:v3 after:v6 validity:v7];

  v8 = [v3 coolOffStarted];

  if (!v8)
  {
    [v3 setCoolOffStarted:*(a1 + 40)];
  }

  return v8 == 0;
}

- (void)_handleSwitchToFinalState:(id)state
{
  stateCopy = state;
  if ([(LACDTOPendingPolicyEvaluationController *)self _canFinishPendingEvaluationsForRatchetState:stateCopy])
  {
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, 500000000);
    workQueue = self->_workQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__LACDTOPendingPolicyEvaluationController__handleSwitchToFinalState___block_invoke;
    v7[3] = &unk_1E7A97930;
    objc_copyWeak(&v9, &location);
    v7[4] = self;
    v8 = stateCopy;
    dispatch_after(v5, workQueue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __69__LACDTOPendingPolicyEvaluationController__handleSwitchToFinalState___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] pendingEvaluations];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = *(a1 + 32);
          [*(a1 + 40) resetDuration];
          [v10 _scheduleNotificationForPendingEvaluationRecord:v9 after:0.0 validity:v11];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)_isRatchetRestartRequest:(id)request
{
  identifier = [request identifier];
  v4 = [identifier hasSuffix:@"com.apple.coreauthd.dto.request.identifier.restart"];

  return v4;
}

- (BOOL)_hasPendingEvaluationRecordForRequest:(id)request
{
  v21[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([(LACDTOPendingPolicyEvaluationController *)self _isRatchetRestartRequest:requestCopy])
  {
    payload = [requestCopy payload];
    v6 = [payload objectForKeyedSubscript:@"kLACDTOPolicyEvaluationRequestPayloadKeyAssociatedIdentifiers"];
  }

  else
  {
    payload = [requestCopy identifier];
    v21[0] = payload;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  }

  v7 = v6;

  if ([v7 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      v12 = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluationWithIdentifier:*(*(&v16 + 1) + 8 * i), v16];
          v12 &= v14 != 0;
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_addPendingEvaluationRecordForRequest:(id)request currentState:(id)state
{
  v56 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  stateCopy = state;
  v8 = objc_opt_new();
  uuid = [stateCopy uuid];
  v37 = requestCopy;
  v38 = uuid;
  v39 = stateCopy;
  if ([(LACDTOPendingPolicyEvaluationController *)self _isRatchetRestartRequest:requestCopy])
  {
    v10 = objc_opt_new();
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    pendingEvaluations = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
    v12 = [pendingEvaluations countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v51;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(pendingEvaluations);
          }

          v16 = *(*(&v50 + 1) + 8 * i);
          if ([v16 isInvalidated])
          {
            [v16 identifier];
            v17 = v10;
            v19 = v18 = v8;
            v20 = [(LACDTOPendingPolicyEvaluationController *)self _coolOffStartedTimestampForIdentifier:v19 currentState:v39];

            v8 = v18;
            v10 = v17;
            [v16 setNotificationScheduledAt:0];
            [v16 setRatchetUUID:v38];
            [v16 setCoolOffStarted:v20];
            [v16 setIsInvalidated:0];
            [v8 addObject:v16];
            identifier = [v16 identifier];
            [v17 addObject:identifier];
          }
        }

        v13 = [pendingEvaluations countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v13);
    }

    payload = [v37 payload];
    v23 = [payload mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_opt_new();
    }

    v28 = v25;

    [v28 setObject:v10 forKeyedSubscript:@"kLACDTOPolicyEvaluationRequestPayloadKeyAssociatedIdentifiers"];
    [v37 updatePayload:v28];
  }

  else
  {
    identifier2 = [requestCopy identifier];
    v27 = [(LACDTOPendingPolicyEvaluationController *)self _coolOffStartedTimestampForIdentifier:identifier2 currentState:stateCopy];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __94__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecordForRequest_currentState___block_invoke;
    v45[3] = &unk_1E7A97958;
    v46 = identifier2;
    v47 = requestCopy;
    v48 = uuid;
    v49 = v27;
    v28 = v27;
    v10 = identifier2;
    v29 = __94__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecordForRequest_currentState___block_invoke(v45);
    [v8 addObject:v29];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = v8;
  v31 = [v30 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v42;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v41 + 1) + 8 * j);
        [(LACDTOPendingPolicyEvaluationController *)self _addPendingEvaluationRecord:v35 currentState:v39, v37];
        coolOffStarted = [v35 coolOffStarted];

        if (coolOffStarted)
        {
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __94__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecordForRequest_currentState___block_invoke_2;
          v40[3] = &unk_1E7A97980;
          v40[4] = v35;
          [(LACDTOPendingPolicyEvaluationController *)self _updatePendingEvaluationsWithBlock:v40];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v32);
  }

  [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore persistEvaluations];
}

_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation *__94__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecordForRequest_currentState___block_invoke(uint64_t a1)
{
  v2 = [[_TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation alloc] initWithIdentifier:*(a1 + 32)];
  v3 = [*(a1 + 40) options];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1063];
  v5 = [v3 objectForKeyedSubscript:v4];
  [(LACDTOMutablePendingPolicyEvaluation *)v2 setCallbackReason:v5];

  v6 = [*(a1 + 40) options];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1064];
  v8 = [v6 objectForKeyedSubscript:v7];
  [(LACDTOMutablePendingPolicyEvaluation *)v2 setCallbackURL:v8];

  [(LACDTOMutablePendingPolicyEvaluation *)v2 setNotificationScheduledAt:0];
  [(LACDTOMutablePendingPolicyEvaluation *)v2 setRatchetUUID:*(a1 + 48)];
  [(LACDTOMutablePendingPolicyEvaluation *)v2 setCoolOffStarted:*(a1 + 56)];

  return v2;
}

- (id)_coolOffStartedTimestampForIdentifier:(id)identifier currentState:(id)state
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  stateCopy = state;
  v8 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluationWithIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    v10 = LACLogDTOEvaluation(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AB78];
      coolOffStarted = [v9 coolOffStarted];
      v13 = [v11 localizedStringFromDate:coolOffStarted dateStyle:0 timeStyle:3];
      v20 = 138412546;
      v21 = identifierCopy;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "The pending evaluation for %@ is using the existing cool off timestamp: %@", &v20, 0x16u);
    }

    coolOffStarted2 = [v9 coolOffStarted];
  }

  else
  {
    v15 = objc_msgSend_rawValue(stateCopy);
    if (v15 == 1)
    {
      coolOffStarted2 = [MEMORY[0x1E695DF00] now];
      v16 = LACLogDTOEvaluation(coolOffStarted2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [MEMORY[0x1E696AB78] localizedStringFromDate:coolOffStarted2 dateStyle:0 timeStyle:3];
        v20 = 138412546;
        v21 = identifierCopy;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_1B0233000, v16, OS_LOG_TYPE_DEFAULT, "The pending evaluation for %@ will use the current time for cool off timestamp: %@", &v20, 0x16u);
      }
    }

    else
    {
      v18 = LACLogDTOEvaluation(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = identifierCopy;
        _os_log_impl(&dword_1B0233000, v18, OS_LOG_TYPE_DEFAULT, "The pending evaluation for %@ has no cool off timestamp yet", &v20, 0xCu);
      }

      coolOffStarted2 = 0;
    }
  }

  return coolOffStarted2;
}

- (void)_addPendingEvaluationRecord:(id)record currentState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  stateCopy = state;
  isInvalidated = [recordCopy isInvalidated];
  v9 = isInvalidated;
  v10 = LACLogDTOEvaluation(isInvalidated);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      identifier = [recordCopy identifier];
      *buf = 138412290;
      v19 = identifier;
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "Not adding new pending evaluation with identifier: %@, the evaluation is invalidated", buf, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      identifier2 = [recordCopy identifier];
      *buf = 138412290;
      v19 = identifier2;
      _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "Will add new pending evaluation with identifier: %@", buf, 0xCu);
    }

    if (objc_msgSend_rawValue(stateCopy) != 1 && objc_msgSend_rawValue(stateCopy) != 2)
    {
      [(LACDTOPendingPolicyEvaluationController *)self _cancelPreviousNotificationForPendingEvaluationRecord:recordCopy scheduledOnly:0];
    }

    if (objc_msgSend_rawValue(stateCopy) == 1)
    {
      [stateCopy duration];
      v15 = v14;
      [stateCopy resetDuration];
      [(LACDTOPendingPolicyEvaluationController *)self _scheduleNotificationForPendingEvaluationRecord:recordCopy after:v15 validity:v16];
    }

    [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore addPendingEvaluation:recordCopy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__LACDTOPendingPolicyEvaluationController__addPendingEvaluationRecord_currentState___block_invoke;
    v17[3] = &unk_1E7A979A8;
    v17[4] = self;
    [(LACDTOPendingPolicyEvaluationController *)self _forEachObserver:v17];
  }
}

- (void)_removePendingEvaluationRecordForRequest:(id)request completion:(id)completion
{
  v32[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if ([(LACDTOPendingPolicyEvaluationController *)self _isRatchetRestartRequest:requestCopy])
  {
    payload = [requestCopy payload];
    v18 = [payload objectForKeyedSubscript:@"kLACDTOPolicyEvaluationRequestPayloadKeyAssociatedIdentifiers"];
  }

  else
  {
    identifier = [requestCopy identifier];
    v32[0] = identifier;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  }

  if ([v18 count])
  {
    v9 = dispatch_group_create();
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__8;
    v29[4] = __Block_byref_object_dispose__8;
    v30 = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v18;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v11)
    {
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          dispatch_group_enter(v9);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __95__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordForRequest_completion___block_invoke;
          v22[3] = &unk_1E7A979D0;
          v24 = v29;
          v23 = v9;
          [(LACDTOPendingPolicyEvaluationController *)self _removePendingEvaluationRecordWithIdentifier:v14 completion:v22];
        }

        v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v11);
    }

    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordForRequest_completion___block_invoke_2;
    block[3] = &unk_1E7A979F8;
    v20 = completionCopy;
    v21 = v29;
    dispatch_group_notify(v9, workQueue, block);

    _Block_object_dispose(v29, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __95__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordForRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 40) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __95__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordForRequest_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)_removePendingEvaluationRecordWithIdentifier:(id)identifier completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E7A95A10;
  v8 = completionCopy;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluationWithIdentifier:identifierCopy];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  v12 = LACLogDTOEvaluation(v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = identifierCopy;
    _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "Will remove pending evaluation with identifier: %@", buf, 0xCu);
  }

  [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore removePendingEvaluationWith:identifierCopy];
  [(LACDTOPendingPolicyEvaluationController *)self _cancelPreviousNotificationForPendingEvaluationRecord:v11 scheduledOnly:1];
  pendingEvaluations = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v14 = [pendingEvaluations count] == 0;

  if (v14)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke_31;
    v18[3] = &unk_1E7A979A8;
    v18[4] = self;
    [(LACDTOPendingPolicyEvaluationController *)self _forEachObserver:v18];
    objc_initWeak(buf, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke_2;
    v15[3] = &unk_1E7A97A20;
    objc_copyWeak(&v17, buf);
    v16 = v9;
    [(LACDTOPendingPolicyEvaluationController *)self _checkIsRatchetStateIn:&unk_1F2693898 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
LABEL_5:
    (*(v9 + 2))(v9, 0);
  }
}

uint64_t __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __99__LACDTOPendingPolicyEvaluationController__removePendingEvaluationRecordWithIdentifier_completion___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && a2 && ([WeakRetained[3] pendingEvaluations], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7))
  {
    v9 = LACLogDTOEvaluation(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 0;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Reseting Ratchet as there are no pending evaluations", v10, 2u);
    }

    [v5 _resetRatchetWithCompletion:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_updatePendingEvaluationsWithUpdateBlock:(id)block observerFilter:(id)filter
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  filterCopy = filter;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  pendingEvaluations = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v8 = [pendingEvaluations countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(pendingEvaluations);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (blockCopy[2](blockCopy, v12))
        {
          objc_initWeak(&location, self);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __99__LACDTOPendingPolicyEvaluationController__updatePendingEvaluationsWithUpdateBlock_observerFilter___block_invoke;
          v14[3] = &unk_1E7A97A68;
          v15 = filterCopy;
          objc_copyWeak(&v16, &location);
          v14[4] = v12;
          [(LACDTOPendingPolicyEvaluationController *)self _forEachObserver:v14];
          objc_destroyWeak(&v16);

          objc_destroyWeak(&location);
          v9 = 1;
        }
      }

      v8 = [pendingEvaluations countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);

    if (v9)
    {
      [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore persistEvaluations];
    }
  }

  else
  {
  }
}

void __99__LACDTOPendingPolicyEvaluationController__updatePendingEvaluationsWithUpdateBlock_observerFilter___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v4 pendingEvaluationController:WeakRetained updatedPendingEvaluation:*(a1 + 32)];
  }
}

- (BOOL)_canFinishPendingEvaluationsForRatchetState:(id)state
{
  stateCopy = state;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__LACDTOPendingPolicyEvaluationController__canFinishPendingEvaluationsForRatchetState___block_invoke;
  v7[3] = &unk_1E7A97A90;
  v8 = stateCopy;
  v4 = stateCopy;
  v5 = [&unk_1F26938B0 indexOfObjectPassingTest:v7] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

BOOL __87__LACDTOPendingPolicyEvaluationController__canFinishPendingEvaluationsForRatchetState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  result = v6 == objc_msgSend_rawValue(*(a1 + 32));
  *a4 = result;
  return result;
}

- (void)_cancelPreviousNotificationForPendingEvaluationRecord:(id)record scheduledOnly:(BOOL)only
{
  onlyCopy = only;
  recordCopy = record;
  [recordCopy setNotificationScheduledAt:0];
  [(LACDTONotificationManager *)self->_notificationManager cancelPreviousSecurityDelayFinishedNotificationForPendingEvaluation:recordCopy scheduledOnly:onlyCopy completion:&__block_literal_global_48];
}

- (void)_cancelPreviousNotificationForRatchetRestartWithRatchetState:(id)state
{
  if (objc_msgSend_rawValue(state, a2) >= 1)
  {
    notificationManager = self->_notificationManager;

    [(LACDTONotificationManager *)notificationManager cancelPreviousNewSecurityDelayRequiredNotificationWithCompletion:&__block_literal_global_50];
  }
}

void __85__LACDTOPendingPolicyEvaluationController__postNotificationForRatchetRestartIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = LACLogDTOEvaluation(WeakRetained);
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __85__LACDTOPendingPolicyEvaluationController__postNotificationForRatchetRestartIfNeeded__block_invoke_cold_1(v3, v7, v8, v9, v10, v11, v12, v13);
      }

      v5[48] = 1;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Posted notification for security delay restart", v14, 2u);
      }
    }
  }
}

- (void)_scheduleNotificationForPendingEvaluationRecord:(id)record after:(double)after validity:(double)validity
{
  recordCopy = record;
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:after];
  if (([recordCopy isNotificationScheduledForDate:v9] & 1) == 0 && (objc_msgSend(recordCopy, "hasNotifiedUserAboutCompletion") & 1) == 0)
  {
    [recordCopy setNotificationScheduledAt:v9];
    objc_initWeak(&location, self);
    notificationManager = self->_notificationManager;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __106__LACDTOPendingPolicyEvaluationController__scheduleNotificationForPendingEvaluationRecord_after_validity___block_invoke;
    v11[3] = &unk_1E7A97AB8;
    objc_copyWeak(v13, &location);
    v12 = recordCopy;
    v13[1] = *&after;
    [(LACDTONotificationManager *)notificationManager scheduleSecurityDelayFinishedNotificationForPendingEvaluation:v12 after:v11 validity:after completion:validity];

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __106__LACDTOPendingPolicyEvaluationController__scheduleNotificationForPendingEvaluationRecord_after_validity___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v7 = *(a1 + 32);
      v6 = (a1 + 32);
      v8 = LACLogDTOEvaluation([v7 setNotificationScheduledAt:0]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __106__LACDTOPendingPolicyEvaluationController__scheduleNotificationForPendingEvaluationRecord_after_validity___block_invoke_cold_1(v6, v3, v8);
      }
    }

    else
    {
      v8 = LACLogDTOEvaluation(WeakRetained);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 48);
        v11 = 138543618;
        v12 = v9;
        v13 = 2048;
        v14 = v10;
        _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "Scheduled notification for evaluation: %{public}@ after: %.2f secs", &v11, 0x16u);
      }
    }

    [v5[3] persistEvaluations];
  }
}

- (void)_checkIsRatchetStateIn:(id)in completion:(id)completion
{
  inCopy = in;
  completionCopy = completion;
  ratchetStateProvider = self->_ratchetStateProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__LACDTOPendingPolicyEvaluationController__checkIsRatchetStateIn_completion___block_invoke;
  v11[3] = &unk_1E7A97AE0;
  v12 = inCopy;
  v13 = completionCopy;
  v9 = inCopy;
  v10 = completionCopy;
  [(LACDTORatchetStateProvider *)ratchetStateProvider ratchetStateWithCompletion:v11];
}

void __77__LACDTOPendingPolicyEvaluationController__checkIsRatchetStateIn_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:objc_msgSend_rawValue(v5)];
    (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) containsObject:v6], v7);
  }
}

- (void)_forEachObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = MEMORY[0x1E695DEC8];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v7 = [v5 arrayWithArray:allObjects];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        observerCopy[2](observerCopy, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_resetRatchetWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  ratchetHandler = self->_ratchetHandler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__LACDTOPendingPolicyEvaluationController__resetRatchetWithCompletion___block_invoke;
  v7[3] = &unk_1E7A957C0;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(LACDTORatchetHandler *)ratchetHandler resetRatchetWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__LACDTOPendingPolicyEvaluationController__resetRatchetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    if (!v4)
    {
      [WeakRetained[4] ratchetStateWithCompletion:&__block_literal_global_53];
    }
  }
}

- (void)_restartRatchetForInvalidatedEvaluations
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pendingEvaluations = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v4 = [pendingEvaluations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(pendingEvaluations);
        }

        if ([*(*(&v13 + 1) + 8 * v7) isInvalidated])
        {

          v11 = LACLogDTOEvaluation(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 0;
            _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "Restarting security delay for invalidated evaluations", v12, 2u);
          }

          [(LACDTORatchetHandler *)self->_ratchetHandler restartRatchetWithIdentifier:@"com.apple.coreauthd.dto.request.identifier.restart"];
          return;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [pendingEvaluations countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = LACLogDTOEvaluation(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Not restarting security delay - no invalidated evaluations", v12, 2u);
  }
}

- (void)_loadPendingEvaluations
{
  objc_initWeak(&location, self);
  ratchetStateProvider = self->_ratchetStateProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke;
  v4[3] = &unk_1E7A95B78;
  objc_copyWeak(&v5, &location);
  [(LACDTORatchetStateProvider *)ratchetStateProvider ratchetStateWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = LACLogDTOEvaluation(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_cold_1(v6, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      v16 = *(WeakRetained + 3);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_54;
      v17[3] = &unk_1E7A97B08;
      objc_copyWeak(&v19, (a1 + 32));
      v18 = v5;
      [v16 loadPersistedEvaluationsWithCompletion:v17];

      objc_destroyWeak(&v19);
    }
  }
}

void __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = LACLogDTOEvaluation(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_54_cold_1(v6, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v5;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v17)
      {
        v18 = v17;
        v28 = v5;
        v19 = 0;
        v29 = 0;
        v20 = *v31;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v30 + 1) + 8 * i);
            if ([v22 isInvalidated])
            {
              [v8[3] addPendingEvaluation:v22];
            }

            else
            {
              v23 = [*(a1 + 32) uuid];
              v24 = [v8 _shouldPrunePendingEvaluation:v22 uuid:v23];

              if (v24)
              {
                v25 = [*(a1 + 32) uuid];

                v19 = 1;
                if (!v25)
                {
                  [v22 setIsInvalidated:1];
                  [v8[3] addPendingEvaluation:v22];
                  v29 = 1;
                }
              }

              else
              {
                v26 = [v22 ratchetUUID];

                if (!v26)
                {
                  v27 = [*(a1 + 32) uuid];
                  [v22 setRatchetUUID:v27];
                }

                [v8 _addPendingEvaluationRecord:v22 currentState:*(a1 + 32)];
              }
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v18);

        if (v29)
        {
          [v8 _scheduleNotificationForRatchetRestart];
        }

        v6 = 0;
        v5 = v28;
        if (v19)
        {
          [v8[3] persistEvaluations];
        }
      }

      else
      {
      }
    }
  }
}

- (void)_pruneInvalidatedEvaluations
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOEvaluation(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "Pruning invalidated evaluations", buf, 2u);
  }

  pendingEvaluations = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v5 = [pendingEvaluations copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 isInvalidated])
        {
          evaluationStore = self->_evaluationStore;
          identifier = [v12 identifier];
          [(LACDTOPendingPolicyEvaluationStoreType *)evaluationStore removePendingEvaluationWith:identifier];

          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);

    if (v9)
    {
      [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore persistEvaluations];
    }
  }

  else
  {
  }
}

- (void)_prunePendingEvaluationsWithUUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = LACLogDTOEvaluation(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = dCopy;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Pruning pending evaluations with uuid: %{public}@", buf, 0xCu);
  }

  pendingEvaluations = [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore pendingEvaluations];
  v7 = [pendingEvaluations copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([(LACDTOPendingPolicyEvaluationController *)self _shouldPrunePendingEvaluation:v14 uuid:dCopy, v17])
        {
          identifier = [v14 identifier];
          [(LACDTOPendingPolicyEvaluationController *)self _removePendingEvaluationRecordWithIdentifier:identifier completion:&__block_literal_global_57];
        }

        else
        {
          ratchetUUID = [v14 ratchetUUID];

          if (!ratchetUUID)
          {
            [v14 setRatchetUUID:dCopy];
            v11 = 1;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);

    if (v11)
    {
      [(LACDTOPendingPolicyEvaluationStoreType *)self->_evaluationStore persistEvaluations];
    }
  }

  else
  {
  }
}

- (BOOL)_shouldPrunePendingEvaluation:(id)evaluation uuid:(id)uuid
{
  evaluationCopy = evaluation;
  uuidCopy = uuid;
  ratchetUUID = [evaluationCopy ratchetUUID];

  if (ratchetUUID)
  {
    ratchetUUID2 = [evaluationCopy ratchetUUID];
    v9 = [uuidCopy isEqualToString:ratchetUUID2] ^ 1;
  }

  else
  {
    LOBYTE(v9) = uuidCopy == 0;
  }

  return v9;
}

void __85__LACDTOPendingPolicyEvaluationController__postNotificationForRatchetRestartIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0233000, a2, a3, "Did not post notification for security delay restart error: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __106__LACDTOPendingPolicyEvaluationController__scheduleNotificationForPendingEvaluationRecord_after_validity___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "Did not schedule notification for evaluation: %{public}@ due to error: %{public}@", &v4, 0x16u);
}

void __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0233000, a2, a3, "Unable to load pending evaluations, ratchet state failure: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __66__LACDTOPendingPolicyEvaluationController__loadPendingEvaluations__block_invoke_54_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0233000, a2, a3, "Unable to load pending evaluations with error: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end