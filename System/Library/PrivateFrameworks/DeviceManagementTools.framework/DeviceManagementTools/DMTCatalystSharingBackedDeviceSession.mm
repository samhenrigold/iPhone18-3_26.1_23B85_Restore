@interface DMTCatalystSharingBackedDeviceSession
+ (id)failureTypeForPairingError:(id)error;
- (DMTCatalystSharingBackedDeviceSession)initWithDevice:(id)device locale:(id)locale;
- (void)activate;
- (void)addPrimitiveHandlers;
- (void)beginPairWithCompletion:(id)completion;
- (void)deactivate;
- (void)invalidateWithError:(id)error;
- (void)performPairingWithCompletion:(id)completion;
- (void)performPairingWithPreAuthWithCompletion:(id)completion;
- (void)removePrimitiveHandlers;
- (void)sendMessage:(id)message;
- (void)sendRequestID:(id)d unencryptedRequestData:(id)data withTimeout:(unint64_t)timeout completion:(id)completion;
- (void)tryPairingPIN:(id)n;
- (void)verifyPairing:(id)pairing;
@end

@implementation DMTCatalystSharingBackedDeviceSession

- (DMTCatalystSharingBackedDeviceSession)initWithDevice:(id)device locale:(id)locale
{
  deviceCopy = device;
  localeCopy = locale;
  v26.receiver = self;
  v26.super_class = DMTCatalystSharingBackedDeviceSession;
  v9 = [(DMTCatalystSharingBackedDeviceSession *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteDevice, device);
    v11 = [localeCopy copy];
    locale = v10->_locale;
    v10->_locale = v11;

    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    identifier = [(CATSharingDevice *)v10->_remoteDevice identifier];
    uUIDString = [identifier UUIDString];
    v18 = [v13 stringWithFormat:@"%@.%@", v15, uUIDString];

    v19 = dispatch_queue_create([v18 UTF8String], 0);
    sessionQueue = v10->_sessionQueue;
    v10->_sessionQueue = v19;

    v21 = objc_opt_new();
    session = v10->_session;
    v10->_session = v21;

    device = [(DMTCatalystSharingBackedDeviceSession *)v10 device];
    underlyingDevice = [device underlyingDevice];
    [(SFSession *)v10->_session setPeerDevice:underlyingDevice];

    [(SFSession *)v10->_session setServiceIdentifier:*MEMORY[0x277D54D70]];
    [(SFSession *)v10->_session setDispatchQueue:v10->_sessionQueue];
  }

  return v10;
}

- (void)activate
{
  [(DMTCatalystSharingBackedDeviceSession *)self addPrimitiveHandlers];
  objc_initWeak(&location, self);
  session = [(DMTCatalystSharingBackedDeviceSession *)self session];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__DMTCatalystSharingBackedDeviceSession_activate__block_invoke;
  v4[3] = &unk_278F5E390;
  objc_copyWeak(&v5, &location);
  [session activateWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__DMTCatalystSharingBackedDeviceSession_activate__block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3)
    {
      v7 = _DMTLogGeneral_4(WeakRetained);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __49__DMTCatalystSharingBackedDeviceSession_activate__block_invoke_cold_1();
      }

      goto LABEL_7;
    }

    [WeakRetained setInvalidated:1];
    v6 = [v5 deviceSessionInvalidatedHandler];

    if (v6)
    {
      v7 = [v5 deviceSessionInvalidatedHandler];
      v10 = *MEMORY[0x277CCA7E8];
      v11[0] = v3;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v9 = DMTErrorWithCodeAndUserInfo(20, v8);
      (*(v7 + 16))(v7, v9);

LABEL_7:
    }
  }
}

- (void)deactivate
{
  session = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session invalidate];
}

- (void)beginPairWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(DMTCatalystSharingBackedDeviceSession *)self isInvalidated]&& [(DMTCatalystSharingBackedDeviceSession *)self isReady])
  {
    locale = [(DMTCatalystSharingBackedDeviceSession *)self locale];

    if (locale)
    {
      [(DMTCatalystSharingBackedDeviceSession *)self performPairingWithPreAuthWithCompletion:completionCopy];
    }

    else
    {
      [(DMTCatalystSharingBackedDeviceSession *)self performPairingWithCompletion:completionCopy];
    }
  }
}

- (void)verifyPairing:(id)pairing
{
  pairingCopy = pairing;
  if (![(DMTCatalystSharingBackedDeviceSession *)self isInvalidated]&& [(DMTCatalystSharingBackedDeviceSession *)self isReady])
  {
    objc_initWeak(&location, self);
    session = [(DMTCatalystSharingBackedDeviceSession *)self session];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__DMTCatalystSharingBackedDeviceSession_verifyPairing___block_invoke;
    v6[3] = &unk_278F5E3B8;
    objc_copyWeak(&v8, &location);
    v7 = pairingCopy;
    [session pairVerifyWithFlags:8 completion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __55__DMTCatalystSharingBackedDeviceSession_verifyPairing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _DMTLogGeneral_4(WeakRetained);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __55__DMTCatalystSharingBackedDeviceSession_verifyPairing___block_invoke_cold_1();
      }

      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      [WeakRetained setPaired:1];
      v7 = *(*(a1 + 32) + 16);
    }

    v7();
  }
}

- (void)tryPairingPIN:(id)n
{
  nCopy = n;
  if (![(DMTCatalystSharingBackedDeviceSession *)self isInvalidated]&& [(DMTCatalystSharingBackedDeviceSession *)self isReady])
  {
    session = [(DMTCatalystSharingBackedDeviceSession *)self session];
    v5 = [nCopy copy];
    [session pairSetupTryPIN:v5];
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  if (![(DMTCatalystSharingBackedDeviceSession *)self isInvalidated]&& [(DMTCatalystSharingBackedDeviceSession *)self isReady])
  {
    session = [(DMTCatalystSharingBackedDeviceSession *)self session];
    [session sendWithFlags:1 object:messageCopy];
  }
}

- (void)addPrimitiveHandlers
{
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke;
  v19[3] = &unk_278F5E3E0;
  objc_copyWeak(&v20, &location);
  session = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session setSessionStartedHandler:v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_2;
  v17[3] = &unk_278F5E3E0;
  objc_copyWeak(&v18, &location);
  session2 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session2 setInvalidationHandler:v17];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_3;
  v15[3] = &unk_278F5E3E0;
  objc_copyWeak(&v16, &location);
  session3 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session3 setInterruptionHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_8;
  v13[3] = &unk_278F5E678;
  objc_copyWeak(&v14, &location);
  session4 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session4 setPromptForPINHandler:v13];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_2_10;
  v11[3] = &unk_278F5E390;
  objc_copyWeak(&v12, &location);
  session5 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session5 setErrorHandler:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_3_11;
  v9[3] = &unk_278F5E6A0;
  objc_copyWeak(&v10, &location);
  session6 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session6 setReceivedObjectHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setReady:1];
    v2 = [v4 deviceSessionReadyHandler];
    v3 = v2;
    if (v2)
    {
      (*(v2 + 16))(v2);
    }

    WeakRetained = v4;
  }
}

void __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = DMTErrorWithCodeAndUserInfo(20, 0);
    [v3 invalidateWithError:v2];

    WeakRetained = v3;
  }
}

void __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained isInvalidated];
    if (v3)
    {
      v4 = _DMTLogGeneral_4(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_24891B000, v4, OS_LOG_TYPE_INFO, "Interrupted after invalidation, no-op", v5, 2u);
      }
    }

    else
    {
      v4 = DMTErrorWithCodeAndUserInfo(21, 0);
      [v2 invalidateWithError:v4];
    }
  }
}

void __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_8(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = [WeakRetained pinPromptHandler];
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, v7, a3);
    }

    WeakRetained = v7;
  }
}

void __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_2_10(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained deviceSessionErrorHandler];
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, v7);
    }
  }
}

void __61__DMTCatalystSharingBackedDeviceSession_addPrimitiveHandlers__block_invoke_3_11(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained messageReceivedHandler];
    if (([v5 isInvalidated] & 1) == 0 && v6)
    {
      (v6)[2](v6, v7);
    }
  }
}

- (void)invalidateWithError:(id)error
{
  sessionQueue = [(DMTCatalystSharingBackedDeviceSession *)self sessionQueue];
  MEMORY[0x24C1DD2C0]();

  [(DMTCatalystSharingBackedDeviceSession *)self setInvalidated:1];
  [(DMTCatalystSharingBackedDeviceSession *)self setReady:0];
  [(DMTCatalystSharingBackedDeviceSession *)self removePrimitiveHandlers];
  deviceSessionInvalidatedHandler = [(DMTCatalystSharingBackedDeviceSession *)self deviceSessionInvalidatedHandler];

  if (deviceSessionInvalidatedHandler)
  {
    deviceSessionInvalidatedHandler2 = [(DMTCatalystSharingBackedDeviceSession *)self deviceSessionInvalidatedHandler];
    v6 = DMTErrorWithCodeAndUserInfo(20, 0);
    deviceSessionInvalidatedHandler2[2](deviceSessionInvalidatedHandler2, v6);
  }
}

- (void)performPairingWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(DMTCatalystSharingBackedDeviceSession *)self isInvalidated]&& [(DMTCatalystSharingBackedDeviceSession *)self isReady])
  {
    objc_initWeak(&location, self);
    session = [(DMTCatalystSharingBackedDeviceSession *)self session];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__DMTCatalystSharingBackedDeviceSession_performPairingWithCompletion___block_invoke;
    v6[3] = &unk_278F5E3B8;
    objc_copyWeak(&v8, &location);
    v7 = completionCopy;
    [session pairSetupWithFlags:8 completion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __70__DMTCatalystSharingBackedDeviceSession_performPairingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = *(a1 + 32);
      v7 = [DMTCatalystSharingBackedDeviceSession failureTypeForPairingError:v3];
      (*(v6 + 16))(v6, v7);
    }

    else
    {
      v8 = _DMTLogGeneral_4(WeakRetained);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __70__DMTCatalystSharingBackedDeviceSession_performPairingWithCompletion___block_invoke_cold_1();
      }

      [v5 setPaired:1];
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)performPairingWithPreAuthWithCompletion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = +[DMTPairingConstants localeIdentifierKey];
  v14 = v5;
  locale = [(DMTCatalystSharingBackedDeviceSession *)self locale];
  localeIdentifier = [locale localeIdentifier];
  v15[0] = localeIdentifier;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__DMTCatalystSharingBackedDeviceSession_performPairingWithPreAuthWithCompletion___block_invoke;
  v10[3] = &unk_278F5E6C8;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v11 = v9;
  [(DMTCatalystSharingBackedDeviceSession *)self sendRequestID:@"_pa" unencryptedRequestData:v8 withTimeout:2000000000 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __81__DMTCatalystSharingBackedDeviceSession_performPairingWithPreAuthWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!a2)
    {
      if (v6 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
      {
        v10 = _DMTLogGeneral_4(isKindOfClass);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __81__DMTCatalystSharingBackedDeviceSession_performPairingWithPreAuthWithCompletion___block_invoke_cold_1(v6, v10);
        }
      }

      else
      {
        v9 = [WeakRetained device];
        [v9 setContext:v6];

        v10 = [MEMORY[0x277CCAB98] defaultCenter];
        v11 = +[DMTPairingConstants deviceContextDidUpdateNotification];
        v12 = [WeakRetained device];
        [v10 postNotificationName:v11 object:v12 userInfo:v6];
      }
    }

    [WeakRetained performPairingWithCompletion:*(a1 + 32)];
  }
}

- (void)removePrimitiveHandlers
{
  sessionQueue = [(DMTCatalystSharingBackedDeviceSession *)self sessionQueue];
  MEMORY[0x24C1DD2C0]();

  session = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session setSessionStartedHandler:0];

  session2 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session2 setInvalidationHandler:0];

  session3 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session3 setInterruptionHandler:0];

  session4 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session4 setPromptForPINHandler:0];

  session5 = [(DMTCatalystSharingBackedDeviceSession *)self session];
  [session5 setErrorHandler:0];
}

- (void)sendRequestID:(id)d unencryptedRequestData:(id)data withTimeout:(unint64_t)timeout completion:(id)completion
{
  dCopy = d;
  dataCopy = data;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v13 = dispatch_time(0, timeout);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__DMTCatalystSharingBackedDeviceSession_sendRequestID_unencryptedRequestData_withTimeout_completion___block_invoke;
  block[3] = &unk_278F5E6F0;
  v29 = v31;
  objc_copyWeak(&v30, &location);
  v14 = dCopy;
  v27 = v14;
  v15 = completionCopy;
  v28 = v15;
  dispatch_after(v13, MEMORY[0x277D85CD0], block);
  v17 = _DMTLogGeneral_4(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [DMTCatalystSharingBackedDeviceSession sendRequestID:unencryptedRequestData:withTimeout:completion:];
  }

  session = [(DMTCatalystSharingBackedDeviceSession *)self session];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__DMTCatalystSharingBackedDeviceSession_sendRequestID_unencryptedRequestData_withTimeout_completion___block_invoke_27;
  v21[3] = &unk_278F5E718;
  v24 = v31;
  objc_copyWeak(&v25, &location);
  v19 = v14;
  v22 = v19;
  v20 = v15;
  v23 = v20;
  [session sendRequestID:v19 options:&unk_285B5BFC8 request:dataCopy responseHandler:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v30);
  _Block_object_dispose(v31, 8);
  objc_destroyWeak(&location);
}

void __101__DMTCatalystSharingBackedDeviceSession_sendRequestID_unencryptedRequestData_withTimeout_completion___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = _DMTLogGeneral_4(WeakRetained);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __101__DMTCatalystSharingBackedDeviceSession_sendRequestID_unencryptedRequestData_withTimeout_completion___block_invoke_cold_1();
      }
    }

    v6 = *(a1 + 40);
    v7 = DMTErrorWithCodeAndUserInfo(4, 0);
    (*(v6 + 16))(v6, v7, 0, 0);
  }
}

void __101__DMTCatalystSharingBackedDeviceSession_sendRequestID_unencryptedRequestData_withTimeout_completion___block_invoke_27(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 48) + 8);
  if ((*(v10 + 24) & 1) == 0)
  {
    *(v10 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v12 = WeakRetained;
    if (WeakRetained)
    {
      v13 = _DMTLogGeneral_4(WeakRetained);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 32);
        v15 = 138544130;
        v16 = v12;
        v17 = 2114;
        v18 = v14;
        v19 = 2114;
        v20 = v7;
        v21 = 2114;
        v22 = v9;
        _os_log_debug_impl(&dword_24891B000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ received response to sendRequestID:'%{public}@' (error: %{public}@, response: %{public}@)", &v15, 0x2Au);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)failureTypeForPairingError:(id)error
{
  v3 = MEMORY[0x277CF9578];
  errorCopy = error;
  v5 = [[v3 alloc] initWithUnderlyingError:errorCopy];

  return v5;
}

void __49__DMTCatalystSharingBackedDeviceSession_activate__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24891B000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ activated successfully", v1, 0xCu);
}

void __55__DMTCatalystSharingBackedDeviceSession_verifyPairing___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_24891B000, v0, OS_LOG_TYPE_ERROR, "Not already paired: %{public}@", v1, 0xCu);
}

void __70__DMTCatalystSharingBackedDeviceSession_performPairingWithCompletion___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_24891B000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ paired successfully", v1, 0xCu);
}

void __81__DMTCatalystSharingBackedDeviceSession_performPairingWithPreAuthWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  _os_log_debug_impl(&dword_24891B000, a2, OS_LOG_TYPE_DEBUG, "PreAuth request received non-dictionary object (%{public}@)", v5, 0xCu);
}

@end