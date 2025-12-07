@interface CATDeviceSessionBackedDevicePairingTerminal
- (CATDeviceSessionBackedDevicePairingTerminal)initWithDeviceSession:(id)session;
- (void)_beginPairing:(id)pairing withCompletion:(id)completion;
- (void)_invalidate;
- (void)_tryPIN:(id)n;
- (void)_verifyPairingAndFetchStableIdentifierWithCompletion:(id)completion;
- (void)addSessionHandlers;
- (void)beginPairing:(id)pairing withCompletion:(id)completion;
- (void)deviceSessionEncounteredError:(id)error;
- (void)deviceSessionInvalidated:(id)invalidated;
- (void)deviceSessionReady;
- (void)fetchStableIdentifier;
- (void)fetchStableIdentifierFinished:(id)finished;
- (void)invalidate;
- (void)invalidateWithError:(id)error;
- (void)pairingCompleteWithError:(id)error;
- (void)removeSessionHandlers;
- (void)sessionHasPromptedForPINWithWaitTime:(unint64_t)time;
- (void)tryPIN:(id)n;
- (void)vendConnectionForCompletion:(id)completion;
- (void)verifyPairing;
- (void)verifyPairingAndFetchStableIdentifierWithCompletion:(id)completion;
- (void)verifyPairingFinished:(BOOL)finished;
@end

@implementation CATDeviceSessionBackedDevicePairingTerminal

- (CATDeviceSessionBackedDevicePairingTerminal)initWithDeviceSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = CATDeviceSessionBackedDevicePairingTerminal;
  v6 = [(CATDeviceSessionBackedDevicePairingTerminal *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mDeviceSession, session);
  }

  return v7;
}

- (void)verifyPairingAndFetchStableIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__CATDeviceSessionBackedDevicePairingTerminal_verifyPairingAndFetchStableIdentifierWithCompletion___block_invoke;
  v8[3] = &unk_278DA7760;
  objc_copyWeak(&v10, &location);
  v5 = completionCopy;
  v9 = v5;
  v6 = v8;
  v7 = CATGetCatalystQueue(v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v13 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __99__CATDeviceSessionBackedDevicePairingTerminal_verifyPairingAndFetchStableIdentifierWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _verifyPairingAndFetchStableIdentifierWithCompletion:*(a1 + 32)];
}

- (void)beginPairing:(id)pairing withCompletion:(id)completion
{
  pairingCopy = pairing;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__CATDeviceSessionBackedDevicePairingTerminal_beginPairing_withCompletion___block_invoke;
  v12[3] = &unk_278DA7788;
  objc_copyWeak(&v15, &location);
  v8 = pairingCopy;
  v13 = v8;
  v9 = completionCopy;
  v14 = v9;
  v10 = v12;
  v11 = CATGetCatalystQueue(v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v18 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __75__CATDeviceSessionBackedDevicePairingTerminal_beginPairing_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _beginPairing:*(a1 + 32) withCompletion:*(a1 + 40)];
}

- (void)tryPIN:(id)n
{
  nCopy = n;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__CATDeviceSessionBackedDevicePairingTerminal_tryPIN___block_invoke;
  v8[3] = &unk_278DA7530;
  objc_copyWeak(&v10, &location);
  v5 = nCopy;
  v9 = v5;
  v6 = v8;
  v7 = CATGetCatalystQueue(v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v13 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__CATDeviceSessionBackedDevicePairingTerminal_tryPIN___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _tryPIN:*(a1 + 32)];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__CATDeviceSessionBackedDevicePairingTerminal_invalidate__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue(v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__CATDeviceSessionBackedDevicePairingTerminal_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidate];
}

- (void)_verifyPairingAndFetchStableIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = CATGetCatalystQueue(completionCopy);
  CATAssertIsQueue(v4);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v5 = 706;
LABEL_5:
    v6 = CATErrorWithCodeAndUserInfo(v5, 0);
    completionCopy[2](completionCopy, v6, 0);

    goto LABEL_6;
  }

  if (self->mVerifyPairingCompletion)
  {
    v5 = 707;
    goto LABEL_5;
  }

  v7 = MEMORY[0x245D2F510](completionCopy);
  mVerifyPairingCompletion = self->mVerifyPairingCompletion;
  self->mVerifyPairingCompletion = v7;

  [(CATDeviceSessionBackedDevicePairingTerminal *)self addSessionHandlers];
  [(CATSharingDeviceSession *)self->mDeviceSession activate];
LABEL_6:
}

- (void)_beginPairing:(id)pairing withCompletion:(id)completion
{
  pairingCopy = pairing;
  completionCopy = completion;
  v8 = CATGetCatalystQueue(completionCopy);
  CATAssertIsQueue(v8);

  if ([(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated])
  {
    v9 = 706;
  }

  else if (self->mVerifyPairingCompletion)
  {
    v9 = 707;
  }

  else if (([(CATSharingDeviceSession *)self->mDeviceSession isReady]& 1) != 0)
  {
    if (!self->mBeginPairingCompletion)
    {
      v11 = MEMORY[0x245D2F510](completionCopy);
      mBeginPairingCompletion = self->mBeginPairingCompletion;
      self->mBeginPairingCompletion = v11;

      v13 = MEMORY[0x245D2F510](pairingCopy);
      mPINPromptHandler = self->mPINPromptHandler;
      self->mPINPromptHandler = v13;

      objc_initWeak(&location, self);
      mDeviceSession = self->mDeviceSession;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __76__CATDeviceSessionBackedDevicePairingTerminal__beginPairing_withCompletion___block_invoke;
      v16[3] = &unk_278DA77B0;
      objc_copyWeak(&v17, &location);
      [(CATSharingDeviceSession *)mDeviceSession beginPairWithCompletion:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      goto LABEL_10;
    }

    v9 = 709;
  }

  else
  {
    v9 = 708;
  }

  v10 = CATErrorWithCodeAndUserInfo(v9, 0);
  completionCopy[2](completionCopy, v10, 0);

LABEL_10:
}

void __76__CATDeviceSessionBackedDevicePairingTerminal__beginPairing_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__CATDeviceSessionBackedDevicePairingTerminal__beginPairing_withCompletion___block_invoke_2;
  v7[3] = &unk_278DA75A8;
  v4 = v3;
  v8 = v4;
  objc_copyWeak(&v9, (a1 + 32));
  v5 = v7;
  v6 = CATGetCatalystQueue(v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __76__CATDeviceSessionBackedDevicePairingTerminal__beginPairing_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 failureType])
  {
    v4 = [*(a1 + 32) underlyingError];
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained pairingCompleteWithError:v4];
}

- (void)_tryPIN:(id)n
{
  v12 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v6 = CATGetCatalystQueue(nCopy);
  CATAssertIsQueue(v6);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  if (isInvalidated)
  {
    v8 = _CATLogGeneral_3(isInvalidated);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_24329F000, v8, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v10, 0xCu);
    }
  }

  else
  {
    [(CATSharingDeviceSession *)self->mDeviceSession tryPairingPIN:nCopy];
  }
}

- (void)_invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v4);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  if (isInvalidated)
  {
    v6 = _CATLogGeneral_3(isInvalidated);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }
  }

  else
  {
    [(CATDeviceSessionBackedDevicePairingTerminal *)self removeSessionHandlers];
    [(CATSharingDeviceSession *)self->mDeviceSession deactivate];
    v8 = CATErrorWithCodeAndUserInfo(705, 0);
    [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:?];
  }
}

- (void)addSessionHandlers
{
  v3 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v3);

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke;
  v10[3] = &unk_278DA7498;
  objc_copyWeak(&v11, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionInvalidatedHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_3;
  v8[3] = &unk_278DA7498;
  objc_copyWeak(&v9, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionErrorHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_5;
  v6[3] = &unk_278DA7120;
  objc_copyWeak(&v7, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionReadyHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_7;
  v4[3] = &unk_278DA7800;
  objc_copyWeak(&v5, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setPinPromptHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_2;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue(v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceSessionInvalidated:*(a1 + 32)];
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_4;
  v7[3] = &unk_278DA7530;
  objc_copyWeak(&v9, (a1 + 32));
  v4 = v3;
  v8 = v4;
  v5 = v7;
  v6 = CATGetCatalystQueue(v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v11 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v9);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceSessionEncounteredError:*(a1 + 32)];
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_5(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_6;
  v3[3] = &unk_278DA7120;
  objc_copyWeak(&v4, (a1 + 32));
  v1 = v3;
  v2 = CATGetCatalystQueue(v1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v6 = v1;
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deviceSessionReady];
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_8;
  v8[3] = &unk_278DA77D8;
  objc_copyWeak(v9, (a1 + 32));
  v9[1] = a3;
  v6 = v8;
  v7 = CATGetCatalystQueue(v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v11 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(v9);
}

void __65__CATDeviceSessionBackedDevicePairingTerminal_addSessionHandlers__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sessionHasPromptedForPINWithWaitTime:*(a1 + 40)];
}

- (void)deviceSessionInvalidated:(id)invalidated
{
  v14 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v6 = CATGetCatalystQueue(invalidatedCopy);
  CATAssertIsQueue(v6);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  v8 = isInvalidated;
  v9 = _CATLogGeneral_3(isInvalidated);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_24329F000, v10, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v12, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CATDeviceSessionBackedDevicePairingTerminal *)self deviceSessionInvalidated:v10];
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self removeSessionHandlers];
  if (!invalidatedCopy)
  {
    v10 = CATErrorWithCodeAndUserInfo(1, 0);
    [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:v10];
LABEL_9:

    goto LABEL_10;
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:invalidatedCopy];
LABEL_10:
}

- (void)deviceSessionEncounteredError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = CATGetCatalystQueue(errorCopy);
  CATAssertIsQueue(v6);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  v8 = isInvalidated;
  v9 = _CATLogGeneral_3(isInvalidated);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_24329F000, v10, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v12, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CATDeviceSessionBackedDevicePairingTerminal *)self deviceSessionEncounteredError:errorCopy, v10];
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self removeSessionHandlers];
  if (!errorCopy)
  {
    v10 = CATErrorWithCodeAndUserInfo(1, 0);
    [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:v10];
LABEL_9:

    goto LABEL_10;
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:errorCopy];
LABEL_10:
}

- (void)deviceSessionReady
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v4);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  v6 = isInvalidated;
  v7 = _CATLogGeneral_3(isInvalidated);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = NSStringFromSelector(a2);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_24329F000, v7, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v11, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v10 = [(CATSharingDeviceSession *)self->mDeviceSession description];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_24329F000, v7, OS_LOG_TYPE_INFO, "Device Session %{public}@ ready", &v11, 0xCu);
    }

    [(CATDeviceSessionBackedDevicePairingTerminal *)self verifyPairing];
  }
}

- (void)verifyPairing
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v4);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  if (isInvalidated)
  {
    v6 = _CATLogGeneral_3(isInvalidated);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }
  }

  else
  {
    mDeviceSession = self->mDeviceSession;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__CATDeviceSessionBackedDevicePairingTerminal_verifyPairing__block_invoke;
    v9[3] = &unk_278DA7828;
    v9[4] = self;
    [(CATSharingDeviceSession *)mDeviceSession verifyPairing:v9];
  }
}

void __60__CATDeviceSessionBackedDevicePairingTerminal_verifyPairing__block_invoke(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__CATDeviceSessionBackedDevicePairingTerminal_verifyPairing__block_invoke_2;
  v4[3] = &unk_278DA75D0;
  v4[4] = *(a1 + 32);
  v5 = a2;
  v2 = v4;
  v3 = CATGetCatalystQueue(v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_8;
  block[3] = &unk_278DA7208;
  v7 = v2;
  dispatch_async(v3, block);
}

- (void)verifyPairingFinished:(BOOL)finished
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v6);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  if (isInvalidated)
  {
    v8 = _CATLogGeneral_3(isInvalidated);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_24329F000, v8, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }
  }

  else if (finished)
  {

    [(CATDeviceSessionBackedDevicePairingTerminal *)self fetchStableIdentifier];
  }

  else
  {
    v12 = MEMORY[0x245D2F510](self->mVerifyPairingCompletion);
    mVerifyPairingCompletion = self->mVerifyPairingCompletion;
    self->mVerifyPairingCompletion = 0;

    v11 = CATErrorWithCodeAndUserInfo(704, 0);
    v12[2](v12, v11, 0);
  }
}

- (void)sessionHasPromptedForPINWithWaitTime:(unint64_t)time
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v6);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  if (isInvalidated)
  {
    v8 = _CATLogGeneral_3(isInvalidated);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_24329F000, v8, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }
  }

  else
  {
    v10 = MEMORY[0x245D2F510](self->mPINPromptHandler);
    if (v10)
    {
      v11 = v10;
      v10[2](v10, time);
      v10 = v11;
    }
  }
}

- (void)fetchStableIdentifier
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v4);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  if (isInvalidated)
  {
    v6 = _CATLogGeneral_3(isInvalidated);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &buf, 0xCu);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__CATDeviceSessionBackedDevicePairingTerminal_fetchStableIdentifier__block_invoke;
    v10[3] = &unk_278DA72D0;
    v10[4] = self;
    v8 = v10;
    v9 = CATGetCatalystQueue(v8);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v12 = __CATPerformBlock_block_invoke_8;
    v13 = &unk_278DA7208;
    v14 = v8;
    dispatch_async(v9, &buf);
  }
}

- (void)fetchStableIdentifierFinished:(id)finished
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v5);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  if (isInvalidated)
  {
    v7 = _CATLogGeneral_3(isInvalidated);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_24329F000, v7, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", buf, 0xCu);
    }

    return;
  }

  v16 = MEMORY[0x245D2F510](self->mVerifyPairingCompletion);
  v9 = MEMORY[0x245D2F510](self->mBeginPairingCompletion);
  if (v16)
  {
    mVerifyPairingCompletion = self->mVerifyPairingCompletion;
    self->mVerifyPairingCompletion = 0;

    selfCopy2 = self;
    v12 = v16;
  }

  else
  {
    if (!v9)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CATDeviceSessionBackedDevicePairingTerminal.m" lineNumber:349 description:{@"Stable identifier was fetched, but no completions were set."}];

      goto LABEL_10;
    }

    mBeginPairingCompletion = self->mBeginPairingCompletion;
    self->mBeginPairingCompletion = 0;

    mPINPromptHandler = self->mPINPromptHandler;
    self->mPINPromptHandler = 0;

    selfCopy2 = self;
    v12 = v9;
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)selfCopy2 vendConnectionForCompletion:v12];
LABEL_10:
}

- (void)pairingCompleteWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v5);

  isInvalidated = [(CATDeviceSessionBackedDevicePairingTerminal *)self isInvalidated];
  if (isInvalidated)
  {
    v7 = _CATLogGeneral_3(isInvalidated);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_24329F000, v7, OS_LOG_TYPE_INFO, "Already invalidated upon reaching %{public}@, quietly returning", &v9, 0xCu);
    }
  }

  else
  {

    [(CATDeviceSessionBackedDevicePairingTerminal *)self fetchStableIdentifier];
  }
}

- (void)vendConnectionForCompletion:(id)completion
{
  completionCopy = completion;
  v5 = CATGetCatalystQueue(completionCopy);
  CATAssertIsQueue(v5);

  [(CATDeviceSessionBackedDevicePairingTerminal *)self removeSessionHandlers];
  v6 = [CATSharingDeviceSessionConnection alloc];
  mDeviceSession = self->mDeviceSession;
  v8 = objc_opt_new();
  v10 = [(CATSharingDeviceSessionConnection *)v6 initWithDeviceSession:mDeviceSession timerSource:v8];

  completionCopy[2](completionCopy, 0, v10);
  v9 = CATErrorWithCodeAndUserInfo(702, 0);
  [(CATDeviceSessionBackedDevicePairingTerminal *)self invalidateWithError:v9];
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  v4 = CATGetCatalystQueue(errorCopy);
  CATAssertIsQueue(v4);

  mVerifyPairingCompletion = self->mVerifyPairingCompletion;
  if (mVerifyPairingCompletion)
  {
    mVerifyPairingCompletion[2](mVerifyPairingCompletion, errorCopy, 0);
  }

  mBeginPairingCompletion = self->mBeginPairingCompletion;
  if (mBeginPairingCompletion)
  {
    mBeginPairingCompletion[2](mBeginPairingCompletion, errorCopy, 0);
  }

  [(CATDeviceSessionBackedDevicePairingTerminal *)self setInvalidated:1];
}

- (void)removeSessionHandlers
{
  v3 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v3);

  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionReadyHandler:0];
  [(CATSharingDeviceSession *)self->mDeviceSession setPinPromptHandler:0];
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionErrorHandler:0];
  mDeviceSession = self->mDeviceSession;

  [(CATSharingDeviceSession *)mDeviceSession setDeviceSessionInvalidatedHandler:0];
}

- (void)deviceSessionInvalidated:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 8) description];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Device Session %{public}@ invalidated", &v4, 0xCu);
}

- (void)deviceSessionEncounteredError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = [a2 verboseDescription];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_24329F000, a3, OS_LOG_TYPE_ERROR, "Device Session %{public}@ encountered error: %{public}@, invalidating", &v6, 0x16u);
}

@end