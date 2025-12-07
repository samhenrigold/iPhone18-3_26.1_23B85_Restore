@interface TRDeviceSetupPeripheral
- (BOOL)_sendAction:(id)action sendDataHandler:(id)handler error:(id *)error;
- (BOOL)performSetupAndReturnError:(id *)error;
- (TRDeviceSetupPeripheral)init;
- (TRDeviceSetupPeripheralDelegate)delegate;
- (void)_authenticateWithAction:(id)action replyHandler:(id)handler;
- (void)_cancelAuthenticationWithReceivedAction:(id)action replyHandler:(id)handler;
- (void)_cancelSetupWithAction:(id)action replyHandler:(id)handler;
- (void)_didDisconnect;
- (void)_didReceiveData:(id)data replyHandler:(id)handler;
- (void)_didTapWithSendDataHandler:(id)handler;
- (void)_finishSetupWithAction:(id)action replyHandler:(id)handler;
- (void)_legacyAuthenticateWithAction:(id)action attemptCount:(unint64_t)count replyHandler:(id)handler;
- (void)_legacyAuthenticateWithUserAgent:(id)agent deviceGUID:(id)d accountID:(id)iD password:(id)password attemptCount:(unint64_t)count completion:(id)completion;
- (void)_setUpWithAction:(id)action replyHandler:(id)handler;
- (void)_setupDidFailWithError:(id)error replyHandler:(id)handler;
- (void)_startAuthenticationWithReceivedAction:(id)action replyHandler:(id)handler;
- (void)cancelPreparingForSetup;
- (void)cancelSetupForStateChange;
- (void)cancelSetupForTimeout;
@end

@implementation TRDeviceSetupPeripheral

- (TRDeviceSetupPeripheral)init
{
  v6.receiver = self;
  v6.super_class = TRDeviceSetupPeripheral;
  v2 = [(TRDeviceSetupPeripheral *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TouchRemote.TRDeviceSetupPeripheral", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (BOOL)performSetupAndReturnError:(id *)error
{
  if (self->_preparingForSetup)
  {
    if (self->_performingSetup)
    {
      return 1;
    }

    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    v7 = +[TRUserNotificationManager sharedInstance];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke;
    v28[3] = &unk_279DCF808;
    v28[4] = buf;
    [v7 requestPermissionToInitiateSetupWithCompletion:v28];

    if (v30[24] == 1)
    {
      v27 = 0;
      v25 = 0;
      v26 = 0;
      Config = TRCanPerformSetupGetConfig(&v27, &v26, &v25);
      v10 = v26;
      v11 = v25;
      v12 = v11;
      if (Config)
      {
        v13 = +[TRAccountsManager sharedInstance];
        deviceName = [v13 deviceName];

        v15 = [(TRDeviceSetupConnectAction *)[TRDeviceSetupLegacyAuthenticationAction alloc] initWithDeviceName:deviceName networkSSID:v10 networkPassword:v12];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke_2;
        v21[3] = &unk_279DCF850;
        v21[4] = self;
        v16 = MEMORY[0x27438C490](v21);
        v20 = 0;
        [(TRDeviceSetupPeripheral *)self _sendAction:v15 sendDataHandler:v16 error:&v20];
      }

      else
      {
        if (_TRLogEnabled == 1)
        {
          v18 = TRLogHandle(v11);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Unable to perform setup, requirements not met.", v24, 2u);
          }
        }

        v19 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke_93;
        block[3] = &__block_descriptor_33_e5_v8__0l;
        v23 = v27;
        dispatch_async(v19, block);

        [(TRDeviceSetupPeripheral *)self cancelPreparingForSetup];
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8108 userInfo:0];
        }
      }

      _Block_object_dispose(buf, 8);
      if (Config)
      {
        return 1;
      }
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v17 = TRLogHandle(v8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_26F2A2000, v17, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Unable to perform setup, user did not give permission", v24, 2u);
        }
      }

      [(TRDeviceSetupPeripheral *)self cancelPreparingForSetup];
      _Block_object_dispose(buf, 8);
    }
  }

  else if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] -performSetup called before a tap was received, ignoring.", buf, 2u);
    }
  }

  return 0;
}

void __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke_93(uint64_t a1)
{
  v2 = +[TRUserNotificationManager sharedInstance];
  [v2 presentWiFiNetworkConnectionError:*(a1 + 32) completion:0];
}

void __54__TRDeviceSetupPeripheral_performSetupAndReturnError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 9) == 1)
  {
    v6 = v3;
    *(v4 + 9) = 0;
    v5 = [*(a1 + 32) pendingSendDataHandler];
    [*(a1 + 32) setPendingSendDataHandler:0];
    if (v5)
    {
      (v5)[2](v5, v6);
    }

    *(*(a1 + 32) + 8) = 1;

    v3 = v6;
  }
}

- (void)cancelPreparingForSetup
{
  if (self->_preparingForSetup)
  {
    self->_preparingForSetup = 0;
    pendingSendDataHandler = [(TRDeviceSetupPeripheral *)self pendingSendDataHandler];
    [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:0];
    v4 = pendingSendDataHandler;
    if (pendingSendDataHandler)
    {
      (*(pendingSendDataHandler + 16))(pendingSendDataHandler, 0);
      v4 = pendingSendDataHandler;
    }
  }
}

- (void)cancelSetupForStateChange
{
  if (self->_performingSetup)
  {
    pendingSendDataHandler = [(TRDeviceSetupPeripheral *)self pendingSendDataHandler];
    [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:0];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8105 userInfo:0];
    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v4 replyHandler:pendingSendDataHandler];
  }
}

- (void)cancelSetupForTimeout
{
  if (self->_performingSetup)
  {
    pendingSendDataHandler = [(TRDeviceSetupPeripheral *)self pendingSendDataHandler];
    [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:0];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8106 userInfo:0];
    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v4 replyHandler:pendingSendDataHandler];
  }
}

- (void)_didDisconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TRDeviceSetupPeripheral__didDisconnect__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__TRDeviceSetupPeripheral__didDisconnect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v4 = [v2 pendingSendDataHandler];
    [*(a1 + 32) setPendingSendDataHandler:0];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8104 userInfo:0];
    [*(a1 + 32) _setupDidFailWithError:v3 replyHandler:v4];
  }
}

- (void)_didReceiveData:(id)data replyHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v16 = 0;
  v7 = [TRDeviceSetupAction actionWithData:data error:&v16 supportsLegacy:1];
  v8 = v16;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(TRDeviceSetupPeripheral *)self _authenticateWithAction:v7 replyHandler:handlerCopy];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(TRDeviceSetupPeripheral *)self _setUpWithAction:v7 replyHandler:handlerCopy];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(TRDeviceSetupPeripheral *)self _legacyAuthenticateWithAction:v7 attemptCount:0 replyHandler:handlerCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_8:
      v9 = [(TRDeviceSetupPeripheral *)self _cancelSetupWithAction:v7 replyHandler:handlerCopy];
      goto LABEL_11;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
LABEL_6:
      v9 = [(TRDeviceSetupPeripheral *)self _finishSetupWithAction:v7 replyHandler:handlerCopy];
      goto LABEL_11;
    }

    if (_TRLogEnabled == 1)
    {
      v12 = TRLogHandle(isKindOfClass);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Failed to handle action: %@. Error: %@", buf, 0x16u);
      }
    }

    v13 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA7E8];
    v18 = v8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15 = [v13 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v14];

    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v15 replyHandler:handlerCopy];
  }

LABEL_11:
  if (_TRLogEnabled == 1)
  {
    v10 = TRLogHandle(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Waiting for data to send...", buf, 2u);
    }
  }

  [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:handlerCopy];
}

- (void)_didTapWithSendDataHandler:(id)handler
{
  handlerCopy = handler;
  self->_preparingForSetup = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TRDeviceSetupPeripheral__didTapWithSendDataHandler___block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Waiting for data to send...", v7, 2u);
    }
  }

  [(TRDeviceSetupPeripheral *)self setPendingSendDataHandler:handlerCopy];
}

void __54__TRDeviceSetupPeripheral__didTapWithSendDataHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    if (_TRLogEnabled == 1)
    {
      v5 = TRLogHandle(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Got tap.", v7, 2u);
      }
    }

    v6 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v6 deviceSetupPeripheralDidTap:*(a1 + 32)];
  }
}

- (void)_legacyAuthenticateWithAction:(id)action attemptCount:(unint64_t)count replyHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v10 = +[TRUserNotificationManager sharedInstance];
  v11 = +[TRAccountsManager sharedInstance];
  v12 = [v11 defaultAccountIDForAuthenticationAccountType:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke;
  v15[3] = &unk_279DCF8F0;
  v15[4] = self;
  v16 = actionCopy;
  v17 = handlerCopy;
  countCopy = count;
  v13 = handlerCopy;
  v14 = actionCopy;
  [v10 requestLegacyAuthenticationWithAccountID:v12 completion:v15];
}

void __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!a2)
  {
    goto LABEL_6;
  }

  if (![v7 length] || !objc_msgSend(v8, "length"))
  {
    [*(a1 + 32) _legacyAuthenticateWithAction:*(a1 + 40) attemptCount:*(a1 + 56) replyHandler:*(a1 + 48)];
    goto LABEL_8;
  }

  if ([v8 length])
  {
    objc_initWeak(&location, *(a1 + 32));
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) userAgent];
    v11 = [*(a1 + 40) deviceGUID];
    v12 = *(a1 + 56);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_2;
    v17[3] = &unk_279DCF8C8;
    objc_copyWeak(v20, &location);
    v19 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v18 = v13;
    v20[1] = v14;
    [v9 _legacyAuthenticateWithUserAgent:v10 deviceGUID:v11 accountID:v7 password:v8 attemptCount:v12 completion:v17];

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_6:
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8102 userInfo:0];
    [v15 _setupDidFailWithError:v16 replyHandler:*(a1 + 48)];
  }

LABEL_8:
}

void __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v8 = *(a1 + 40);
      v22 = 0;
      v9 = [WeakRetained _sendAction:v5 sendDataHandler:v8 error:&v22];
      v10 = v22;
      v11 = v10;
      if ((v9 & 1) == 0)
      {
        v12 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA7E8];
        v24[0] = v10;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        v14 = [v12 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v13];

        [v7 _setupDidFailWithError:v14 replyHandler:*(a1 + 40)];
        v11 = v14;
      }
    }

    else
    {
      v15 = +[TRUserNotificationManager sharedInstance];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_3;
      v18[3] = &unk_279DCF8A0;
      v18[4] = v7;
      v16 = *(a1 + 32);
      v17 = *(a1 + 56);
      v19 = v16;
      v21 = v17;
      v20 = *(a1 + 40);
      [v15 presentLegacyAuthenticationFailedDialogWithMessage:0 completion:v18];
    }
  }
}

void __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_3(void *a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_4;
    block[3] = &unk_279DCF878;
    v4 = a1[5];
    block[4] = a1[4];
    v5 = v4;
    v7 = a1[6];
    v6 = a1[7];
    v11 = v5;
    v13 = v6;
    v12 = v7;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v8 = a1[4];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8102 userInfo:0];
    [v8 _setupDidFailWithError:v9 replyHandler:a1[6]];
  }
}

void *__83__TRDeviceSetupPeripheral__legacyAuthenticateWithAction_attemptCount_replyHandler___block_invoke_4(void *a1)
{
  result = a1[4];
  if (result)
  {
    return [result _legacyAuthenticateWithAction:a1[5] attemptCount:a1[7] + 1 replyHandler:a1[6]];
  }

  return result;
}

- (void)_authenticateWithAction:(id)action replyHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  if ([actionCopy attemptCount])
  {
    v8 = +[TRUserNotificationManager sharedInstance];
    failureMessage = [actionCopy failureMessage];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__TRDeviceSetupPeripheral__authenticateWithAction_replyHandler___block_invoke;
    v10[3] = &unk_279DCF918;
    v10[4] = self;
    v11 = actionCopy;
    v12 = handlerCopy;
    [v8 presentAuthenticationFailureWithMessage:failureMessage completion:v10];
  }

  else
  {
    [(TRDeviceSetupPeripheral *)self _startAuthenticationWithReceivedAction:actionCopy replyHandler:handlerCopy];
  }
}

uint64_t __64__TRDeviceSetupPeripheral__authenticateWithAction_replyHandler___block_invoke(void *a1, int a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  if (a2)
  {
    return [v3 _startAuthenticationWithReceivedAction:v4 replyHandler:v5];
  }

  else
  {
    return [v3 _cancelAuthenticationWithReceivedAction:v4 replyHandler:v5];
  }
}

- (void)_startAuthenticationWithReceivedAction:(id)action replyHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v8 = +[TRAccountsManager sharedInstance];
  v9 = [v8 defaultAccountIDForAuthenticationAccountType:{objc_msgSend(actionCopy, "accountType")}];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__TRDeviceSetupPeripheral__startAuthenticationWithReceivedAction_replyHandler___block_invoke;
  v20[3] = &unk_279DCF940;
  v10 = actionCopy;
  v21 = v10;
  selfCopy = self;
  v11 = handlerCopy;
  v23 = v11;
  v12 = MEMORY[0x27438C490](v20);
  if ([v10 accountType] == 2)
  {
    v13 = +[TRAccountsManager sharedInstance];
    requestMessage2 = [v13 defaultAccountIDForAuthenticationAccountType:1];
    if ([v9 length] && (objc_msgSend(v9, "lowercaseString"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestMessage2, "lowercaseString"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v17))
    {
      v18 = +[TRUserNotificationManager sharedInstance];
      [v18 requestAppleIDAuthenticationWithAccountID:v9 completion:v12];
    }

    else
    {
      v18 = +[TRUserNotificationManager sharedInstance];
      requestMessage = [v10 requestMessage];
      [v18 requestAuthenticationWithAccountID:v9 message:requestMessage completion:v12];
    }
  }

  else
  {
    v13 = +[TRUserNotificationManager sharedInstance];
    requestMessage2 = [v10 requestMessage];
    [v13 requestAuthenticationWithAccountID:v9 message:requestMessage2 completion:v12];
  }
}

void __79__TRDeviceSetupPeripheral__startAuthenticationWithReceivedAction_replyHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4, _BYTE *a5)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (a2)
  {
    if ([v9 length] && objc_msgSend(v10, "length"))
    {
      if ([*(a1 + 32) accountType] == 1)
      {
        [*(a1 + 40) setAuthenticatediTunesStoreID:v9];
      }

      v11 = +[TRAccountsManager sharedInstance];
      v12 = [v11 accountTypesWithDefaultAccountID:v9];

      v13 = [TRDeviceSetupAuthenticateAction actionForFinishedRequestWithOriginalAction:*(a1 + 32) accountID:v9 accountPassword:v10 accountTypesWithSharedCredentials:v12];
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v22 = 0;
      v16 = [v14 _sendAction:v13 sendDataHandler:v15 error:&v22];
      v17 = v22;
      v18 = v17;
      if ((v16 & 1) == 0)
      {
        v19 = MEMORY[0x277CCA9B8];
        v23 = *MEMORY[0x277CCA7E8];
        v24[0] = v17;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        v21 = [v19 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v20];

        [*(a1 + 40) _setupDidFailWithError:v21 replyHandler:*(a1 + 48)];
        v18 = v21;
      }
    }

    else
    {
      *a5 = 1;
    }
  }

  else
  {
    [*(a1 + 40) _cancelAuthenticationWithReceivedAction:*(a1 + 32) replyHandler:*(a1 + 48)];
  }
}

- (void)_cancelAuthenticationWithReceivedAction:(id)action replyHandler:(id)handler
{
  v16[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = [TRDeviceSetupAuthenticateAction actionForCancelledRequestWithOriginalAction:action];
  v14 = 0;
  v8 = [(TRDeviceSetupPeripheral *)self _sendAction:v7 sendDataHandler:handlerCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8)
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA7E8];
    v16[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v11 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v12];
    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v13 replyHandler:handlerCopy];
  }
}

- (void)_setUpWithAction:(id)action replyHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = [TRDeviceSetupGeneralSetupAction alloc];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v7 = [preferredLanguages count];
  v24 = handlerCopy;
  if (v7)
  {
    preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  v11 = +[TRAccountsManager sharedInstance];
  homeSharingAppleID = [v11 homeSharingAppleID];
  v13 = +[TRAccountsManager sharedInstance];
  homeSharingGroupID = [v13 homeSharingGroupID];
  v15 = [(TRDeviceSetupGeneralSetupAction *)v5 initWithCountryCode:firstObject language:v10 homeSharingID:homeSharingAppleID homeSharingGroupID:homeSharingGroupID isDiagnosticsEnabled:0 rememberPassword:0];

  if (v7)
  {
  }

  v25 = 0;
  v16 = [(TRDeviceSetupPeripheral *)self _sendAction:v15 sendDataHandler:v24 error:&v25];
  v17 = v25;
  v18 = v17;
  if (!v16)
  {
    v19 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA7E8];
    v27[0] = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v21 = [v19 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8100 userInfo:v20];

    [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v21 replyHandler:v24];
    v18 = v21;
  }
}

- (void)_finishSetupWithAction:(id)action replyHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TRDeviceSetupPeripheral__finishSetupWithAction_replyHandler___block_invoke;
  block[3] = &unk_279DCF7A0;
  block[4] = self;
  v12 = actionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = actionCopy;
  dispatch_async(queue, block);
}

void __63__TRDeviceSetupPeripheral__finishSetupWithAction_replyHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 8) = 0;
    [*(a1 + 32) _sendAction:*(a1 + 40) sendDataHandler:*(a1 + 48) error:0];
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__TRDeviceSetupPeripheral__finishSetupWithAction_replyHandler___block_invoke_2;
    block[3] = &unk_279DCEBF8;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }
}

void __63__TRDeviceSetupPeripheral__finishSetupWithAction_replyHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v4 deviceSetupPeripheralSetupDidComplete:*(a1 + 32)];
  }
}

- (void)_cancelSetupWithAction:(id)action replyHandler:(id)handler
{
  v5 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v7 = [v5 errorWithDomain:@"TRDeviceSetupErrorDomain" code:-8104 userInfo:0];
  [(TRDeviceSetupPeripheral *)self _setupDidFailWithError:v7 replyHandler:handlerCopy];
}

- (void)_setupDidFailWithError:(id)error replyHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TRDeviceSetupPeripheral__setupDidFailWithError_replyHandler___block_invoke;
  block[3] = &unk_279DCF968;
  v12 = errorCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = errorCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __63__TRDeviceSetupPeripheral__setupDidFailWithError_replyHandler___block_invoke(uint64_t a1)
{
  v2 = +[TRUserNotificationManager sharedInstance];
  [v2 cancel];

  v3 = *(a1 + 32);
  if (*(v3 + 8) == 1)
  {
    *(v3 + 8) = 0;
    v4 = objc_alloc_init(TRDeviceSetupCancelAction);
    [*(a1 + 32) _sendAction:v4 sendDataHandler:*(a1 + 48) error:0];
    v5 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__TRDeviceSetupPeripheral__setupDidFailWithError_replyHandler___block_invoke_2;
    v7[3] = &unk_279DCEC20;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    dispatch_async(v5, v7);
  }
}

void __63__TRDeviceSetupPeripheral__setupDidFailWithError_replyHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 24));
    [v4 deviceSetupPeripheralSetupDidFail:*(a1 + 32) withError:*(a1 + 40)];
  }
}

- (BOOL)_sendAction:(id)action sendDataHandler:(id)handler error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = [action dataRepresentationWithError:error];
    v9 = v8;
    v10 = v8 != 0;
    if (v8)
    {
      if (_TRLogEnabled == 1)
      {
        v11 = TRLogHandle(v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 134217984;
          v14 = [v9 length];
          _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Data to send length: %ld", &v13, 0xCu);
        }
      }

      handlerCopy[2](handlerCopy, v9);
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_legacyAuthenticateWithUserAgent:(id)agent deviceGUID:(id)d accountID:(id)iD password:(id)password attemptCount:(unint64_t)count completion:(id)completion
{
  v29[6] = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  completionCopy = completion;
  v15 = MEMORY[0x277D69BD0];
  iDCopy = iD;
  dCopy = d;
  agentCopy = agent;
  v19 = objc_alloc_init(v15);
  [v19 setURLBagKey:@"authenticateAccount"];
  [v19 setHTTPMethod:@"POST"];
  [v19 setValue:agentCopy forHTTPHeaderField:*MEMORY[0x277D6A130]];

  [v19 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v28[0] = @"appleId";
  v28[1] = @"password";
  v29[0] = iDCopy;
  v29[1] = passwordCopy;
  v28[2] = @"guid";
  v28[3] = @"why";
  v29[2] = dCopy;
  v29[3] = @"purchase";
  v29[4] = @"0";
  v28[4] = @"rmp";
  v28[5] = @"attempt";
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", count];
  v29[5] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  [v19 setRequestParameters:v21];

  [v19 setITunesStoreRequest:1];
  [v19 setShouldProcessProtocol:0];
  [v19 setShouldSetCookies:0];
  v22 = [objc_alloc(MEMORY[0x277D69C98]) initWithRequestProperties:v19];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __114__TRDeviceSetupPeripheral__legacyAuthenticateWithUserAgent_deviceGUID_accountID_password_attemptCount_completion___block_invoke;
  v25[3] = &unk_279DCF990;
  v26 = passwordCopy;
  v27 = completionCopy;
  v23 = completionCopy;
  v24 = passwordCopy;
  [v22 startWithConnectionResponseBlock:v25];
}

void __114__TRDeviceSetupPeripheral__legacyAuthenticateWithUserAgent_deviceGUID_accountID_password_attemptCount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = a3;
  if ([v5 statusCode] == 200)
  {
    v28 = [v5 allHeaderFields];
    v27 = [v5 bodyData];
    if (v27)
    {
      v6 = [MEMORY[0x277CCAC58] propertyListWithData:v27 options:0 format:0 error:0];
    }

    else
    {
      v6 = 0;
    }

    v29 = [v6 objectForKey:@"failureType"];
    v8 = objc_opt_respondsToSelector();
    if ((v8 & 1) != 0 && (v8 = [v29 intValue], v8))
    {
      if (_TRLogEnabled != 1)
      {
        v7 = 0;
LABEL_24:

        goto LABEL_25;
      }

      oslog = TRLogHandle(v8);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_26F2A2000, oslog, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Authentication failed: %@", &buf, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      if (!v28 || !v6)
      {
        goto LABEL_24;
      }

      if (_TRLogEnabled == 1)
      {
        v9 = TRLogHandle(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupPeripheral] Authentication completed.", &buf, 2u);
        }
      }

      oslog = [v6 mutableCopy];
      [oslog setObject:*(a1 + 32) forKey:@"password"];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x2020000000;
      v36 = 0;
      v10 = +[TRUserNotificationManager sharedInstance];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __114__TRDeviceSetupPeripheral__legacyAuthenticateWithUserAgent_deviceGUID_accountID_password_attemptCount_completion___block_invoke_164;
      v33[3] = &unk_279DCF808;
      v33[4] = &buf;
      [v10 requestPermissionForDiagnosticSubmissionWithCompletion:v33];

      v11 = [MEMORY[0x277CBEAF8] preferredLanguages];
      if ([v11 count])
      {
        v12 = [MEMORY[0x277CBEAF8] preferredLanguages];
        v25 = [v12 objectAtIndex:0];
      }

      else
      {
        v25 = 0;
      }

      v13 = [MEMORY[0x277CBEAF8] currentLocale];
      v24 = [v13 objectForKey:*MEMORY[0x277CBE690]];

      v31 = 0;
      v32 = 0;
      TRGetCurrentWiFiNetwork(&v32, &v31);
      v22 = v32;
      v23 = v31;
      v14 = [[TRDeviceSetupLegacySetupActionAuthInfo alloc] initWithHeaders:v28 body:oslog];
      v15 = [TRDeviceSetupLegacySetupAction alloc];
      v16 = *(*(&buf + 1) + 24);
      v17 = +[TRAccountsManager sharedInstance];
      v18 = [v17 homeSharingAppleID];
      v19 = +[TRAccountsManager sharedInstance];
      v20 = [v19 homeSharingGroupID];
      LOBYTE(v21) = 0;
      v7 = [(TRDeviceSetupLegacySetupAction *)v15 initWithAuthInfo:v14 networkSSID:v22 networkPassword:v23 diagnosticsEnabled:v16 language:v25 countryCode:v24 homeSharingAppleID:v18 homeSharingGroupID:v20 rememberPassword:v21];

      _Block_object_dispose(&buf, 8);
    }

    goto LABEL_24;
  }

  v7 = 0;
  v6 = 0;
LABEL_25:
  (*(*(a1 + 40) + 16))();
}

- (TRDeviceSetupPeripheralDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end