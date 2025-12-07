@interface DMCRapidReturnToServiceFlowController
- (DMCRRTSFlowDelegate)delegate;
- (DMCRapidReturnToServiceFlowController)init;
- (id)errorWithCode:(int)code message:(id)message;
- (void)requestCheckInWithRetryCount:(int64_t)count completion:(id)completion;
- (void)requestRapidReturnToServiceWithCompletion:(id)completion;
- (void)startObliterationWithCompletion:(id)completion;
@end

@implementation DMCRapidReturnToServiceFlowController

- (DMCRapidReturnToServiceFlowController)init
{
  v11.receiver = self;
  v11.super_class = DMCRapidReturnToServiceFlowController;
  v2 = [(DMCRapidReturnToServiceFlowController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(DMCWiFiAutoJoinStateMachine);
    stateMachine = v2->_stateMachine;
    v2->_stateMachine = v3;

    [(DMCWiFiAutoJoinStateMachine *)v2->_stateMachine setController:v2];
    v5 = objc_alloc(MEMORY[0x277D03510]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 initWithQoS:25 hangThreshold:v7 owner:10.0];
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v8;
  }

  return v2;
}

- (void)requestRapidReturnToServiceWithCompletion:(id)completion
{
  completionCopy = completion;
  workerQueue = [(DMCRapidReturnToServiceFlowController *)self workerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke;
  v7[3] = &unk_278EE40D8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [workerQueue queueBlock:v7];
}

void __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 currentState];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_2;
  v5[3] = &unk_278EE4150;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 processWiFiAutoJoinStateRequest:v3 reason:0 completion:v5];
}

void __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) workerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_3;
  v8[3] = &unk_278EE4178;
  v9 = v4;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v7 = v4;
  [v5 queueBlock:v8];
}

void __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "[DMCRapidReturnToServiceFlowController] Failed to process WiFi Auto Join with error: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_2;
    v6[3] = &unk_278EE4150;
    v6[4] = v5;
    v7 = *(a1 + 48);
    [v5 requestCheckInWithRetryCount:2 completion:v6];
  }
}

void __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_2_3(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *DMCLogObjects();
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_ERROR, "[DMCRapidReturnToServiceFlowController] Failed to request RRTS checkin with error: %{public}@", buf, 0xCu);
    }

    v6 = [*(a1 + 40) delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 40) delegate];
      [v8 checkInRequestFailedWithError:*(a1 + 32)];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_247E39000, v4, OS_LOG_TYPE_DEBUG, "[DMCRapidReturnToServiceFlowController] start timer", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_6;
    block[3] = &unk_278EE40D8;
    v9 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v15 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v10 = [*(a1 + 40) delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_10;
    v12[3] = &unk_278EE4100;
    v11 = *(a1 + 48);
    v12[4] = *(a1 + 40);
    v13 = v11;
    [v10 prepareToObliterationWithCompletionHandler:v12];
  }
}

void __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277CBEBB8];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_2_8;
  v8 = &unk_278EE40B0;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v3;
  v4 = [v2 scheduledTimerWithTimeInterval:0 repeats:&v5 block:15.0];
  [*(a1 + 32) setTimeoutTimer:{v4, v5, v6, v7, v8, v9}];
}

uint64_t __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_2_8(uint64_t a1, uint64_t a2)
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_DEBUG, "[DMCRapidReturnToServiceFlowController] start obliteration", v5, 2u);
  }

  return [*(a1 + 32) startObliterationWithCompletion:*(a1 + 40)];
}

void __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_10(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workerQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_2_11;
  v6[3] = &unk_278EE4088;
  v8 = a2;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 queueBlock:v6];
}

id *__83__DMCRapidReturnToServiceFlowController_requestRapidReturnToServiceWithCompletion___block_invoke_2_11(id *result)
{
  if (*(result + 48) == 1)
  {
    v2 = result;
    v3 = [result[4] timeoutTimer];
    [v3 invalidate];

    [v2[4] setTimeoutTimer:0];
    v4 = v2[4];
    v5 = v2[5];

    return [v4 startObliterationWithCompletion:v5];
  }

  return result;
}

- (void)startObliterationWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D24638] = [MEMORY[0x277D24638] sharedClient];
  mdmProfileData = [(DMCRapidReturnToServiceFlowController *)self mdmProfileData];
  wifiProfileData = [(DMCRapidReturnToServiceFlowController *)self wifiProfileData];
  bootstrapToken = [(DMCRapidReturnToServiceFlowController *)self bootstrapToken];
  if (bootstrapToken)
  {
    v9 = *MEMORY[0x277D035E0];
  }

  else
  {
    v9 = 0;
  }

  bootstrapToken2 = [(DMCRapidReturnToServiceFlowController *)self bootstrapToken];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__DMCRapidReturnToServiceFlowController_startObliterationWithCompletion___block_invoke;
  v12[3] = &unk_278EE41A0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [mEMORY[0x277D24638] requestReturnToServiceObliterationWithPreserveDataPlan:0 disallowProximitySetup:0 mdmProfileData:mdmProfileData wifiProfileData:wifiProfileData revertToSnapshotName:v9 bootstrapToken:bootstrapToken2 completionHandler:v12];
}

void __73__DMCRapidReturnToServiceFlowController_startObliterationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workerQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__DMCRapidReturnToServiceFlowController_startObliterationWithCompletion___block_invoke_2;
  v6[3] = &unk_278EE40D8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 queueBlock:v6];
}

uint64_t __73__DMCRapidReturnToServiceFlowController_startObliterationWithCompletion___block_invoke_2(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v2 = result;
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(v2 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_247E39000, v3, OS_LOG_TYPE_ERROR, "[DMCRapidReturnToServiceFlowController] Failed to request RRTS obliteration with error: %{public}@", &v5, 0xCu);
    }

    return (*(*(v2 + 40) + 16))();
  }

  return result;
}

- (void)requestCheckInWithRetryCount:(int64_t)count completion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D24638] = [MEMORY[0x277D24638] sharedClient];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__DMCRapidReturnToServiceFlowController_requestCheckInWithRetryCount_completion___block_invoke;
  v9[3] = &unk_278EE4218;
  v10 = completionCopy;
  countCopy = count;
  v9[4] = self;
  v8 = completionCopy;
  [mEMORY[0x277D24638] requestRRTSCheckInAndValidationWithCompletionHandler:v9];
}

void __81__DMCRapidReturnToServiceFlowController_requestCheckInWithRetryCount_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) workerQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__DMCRapidReturnToServiceFlowController_requestCheckInWithRetryCount_completion___block_invoke_2;
  v20[3] = &unk_278EE41F0;
  v14 = *(a1 + 40);
  v27 = *(a1 + 48);
  v15 = *(a1 + 32);
  v21 = v12;
  v22 = v15;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v14;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v12;
  [v13 queueBlock:v20];
}

void __81__DMCRapidReturnToServiceFlowController_requestCheckInWithRetryCount_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 80) >= 1 && ([v3 DMCErrorType], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D03308]), v4, v5))
    {
      v6 = dispatch_time(0, 500000000);
      v7 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__DMCRapidReturnToServiceFlowController_requestCheckInWithRetryCount_completion___block_invoke_3;
      block[3] = &unk_278EE41C8;
      v9 = *(a1 + 72);
      v8 = *(a1 + 80);
      block[4] = *(a1 + 40);
      v16 = v8;
      v15 = v9;
      dispatch_after(v6, v7, block);

      v10 = *DMCLogObjects();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_247E39000, v10, OS_LOG_TYPE_DEFAULT, "Retry sending checkin request...", v13, 2u);
      }
    }

    else
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_247E39000, v11, OS_LOG_TYPE_DEFAULT, "Maximum retry count reached.", v13, 2u);
      }

      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    [*(a1 + 40) setMdmProfileData:*(a1 + 48)];
    [*(a1 + 40) setWifiProfileData:*(a1 + 56)];
    [*(a1 + 40) setBootstrapToken:*(a1 + 64)];
    v12 = *(*(a1 + 72) + 16);

    v12();
  }
}

- (id)errorWithCode:(int)code message:(id)message
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D03438];
  codeCopy = code;
  v7 = DMCErrorArray();
  v8 = [v4 DMCErrorWithDomain:v5 code:codeCopy descriptionArray:v7 errorType:{*MEMORY[0x277D032F8], message, 0}];

  return v8;
}

- (DMCRRTSFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end