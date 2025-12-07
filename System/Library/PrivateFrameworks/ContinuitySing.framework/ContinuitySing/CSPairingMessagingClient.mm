@interface CSPairingMessagingClient
- (CSPairingMessagingClient)init;
- (NSString)localMediaRouteIdentifier;
- (id)deviceForMediaRouteIdentifier:(id)identifier;
- (id)deviceForRemoteDisplayIdentifier:(id)identifier;
- (void)_activateWithCompletion:(id)completion;
- (void)_completePendingGroupSessionTokenRequests:(id)requests error:(id)error;
- (void)_endPairingClient;
- (void)_pairWithDevice:(id)device password:(id)password completion:(id)completion;
- (void)_pairWithDeviceIfNeeded:(id)needed password:(id)password completion:(id)completion;
- (void)_pairWithMediaRouteIdentifierIfNeeded:(id)needed password:(id)password attempts:(int64_t)attempts completion:(id)completion;
- (void)_requestGroupSessionTokenFromIdentifer:(id)identifer attempts:(int64_t)attempts completion:(id)completion;
- (void)_sendPingToDevice:(id)device completion:(id)completion;
- (void)_serviceActivationHandlersWithError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)requestGroupSessionTokenFromIdentifer:(id)identifer completion:(id)completion;
@end

@implementation CSPairingMessagingClient

- (CSPairingMessagingClient)init
{
  v10.receiver = self;
  v10.super_class = CSPairingMessagingClient;
  v2 = [(CSPairingMessagingClient *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.CSPairingMessagingClientQueue.internal", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;

    v5 = dispatch_queue_create("com.apple.CSPairingMessagingClientQueue.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    v2->_activationState = 0;
    array = [MEMORY[0x277CBEB18] array];
    activationHandlers = v2->_activationHandlers;
    v2->_activationHandlers = array;
  }

  return v2;
}

- (void)dealloc
{
  [(RPCompanionLinkClient *)self->_rpClient invalidate];
  [(RPCompanionLinkClient *)self->_pairingClient invalidate];
  v3 = [(NSMutableArray *)self->_activationHandlers copy];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CSPairingMessagingClient_dealloc__block_invoke;
  block[3] = &unk_278E0ACD8;
  v8 = v3;
  v5 = v3;
  dispatch_async(callbackQueue, block);

  v6.receiver = self;
  v6.super_class = CSPairingMessagingClient;
  [(CSPairingMessagingClient *)&v6 dealloc];
}

void __35__CSPairingMessagingClient_dealloc__block_invoke(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = objc_alloc(MEMORY[0x277CCA9B8]);
        v8 = [v7 initWithDomain:CSPairingErrorDomain code:0 userInfo:0];
        (*(v6 + 16))(v6, v8);

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v3);
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__CSPairingMessagingClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_278E0AF88;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  activationHandlers = self->_activationHandlers;
  v6 = _Block_copy(completionCopy);
  [(NSMutableArray *)activationHandlers addObject:v6];

  activationState = self->_activationState;
  if (activationState == 2)
  {
    localDevice = [(RPCompanionLinkClient *)self->_rpClient localDevice];

    if (localDevice)
    {
      v10 = ContinuitySingLog(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "[CSPairingMessagingClient _activateWithCompletion:]";
        v21 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_2441FB000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ Already active", &v19, 0x16u);
      }

      [(CSPairingMessagingClient *)self _serviceActivationHandlersWithError:0];
      goto LABEL_12;
    }

    activationState = self->_activationState;
  }

  if (activationState)
  {
    v11 = ContinuitySingLog(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_activationState];
      localDevice2 = [(RPCompanionLinkClient *)self->_rpClient localDevice];
      v19 = 136315906;
      v20 = "[CSPairingMessagingClient _activateWithCompletion:]";
      v21 = 2112;
      selfCopy2 = self;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = localDevice2;
      _os_log_impl(&dword_2441FB000, v11, OS_LOG_TYPE_DEFAULT, "%s: %@ Nothing to do currently for activation request with state %@ and local device %@", &v19, 0x2Au);
    }
  }

  else
  {
    self->_activationState = 1;
    v14 = objc_alloc_init(MEMORY[0x277D44160]);
    rpClient = self->_rpClient;
    self->_rpClient = v14;

    [(RPCompanionLinkClient *)self->_rpClient setControlFlags:[(RPCompanionLinkClient *)self->_rpClient controlFlags]| 0x18000000240CLL];
    [(RPCompanionLinkClient *)self->_rpClient setFlags:[(RPCompanionLinkClient *)self->_rpClient flags]| 1];
    [(RPCompanionLinkClient *)self->_rpClient setDispatchQueue:self->_internalQueue];
    v16 = self->_rpClient;
    v35 = *MEMORY[0x277D44260];
    v36 = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [(RPCompanionLinkClient *)v16 registerRequestID:@"com.apple.CSPingRequestID" options:v17 handler:&__block_literal_global_12];

    objc_initWeak(&v19, self);
    v18 = self->_rpClient;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_17;
    v33[3] = &unk_278E0BC30;
    objc_copyWeak(&v34, &v19);
    [(RPCompanionLinkClient *)v18 activateWithCompletion:v33];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_19;
    v31[3] = &unk_278E0AF60;
    objc_copyWeak(&v32, &v19);
    [(RPCompanionLinkClient *)self->_rpClient setLocalDeviceUpdatedHandler:v31];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_2;
    v29[3] = &unk_278E0AF60;
    objc_copyWeak(&v30, &v19);
    [(RPCompanionLinkClient *)self->_rpClient setDeviceFoundHandler:v29];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_3;
    v27[3] = &unk_278E0BC58;
    objc_copyWeak(&v28, &v19);
    [(RPCompanionLinkClient *)self->_rpClient setDeviceChangedHandler:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v19);
  }

LABEL_12:
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = ContinuitySingLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[CSPairingMessagingClient _activateWithCompletion:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Received ping from %@", buf, 0x16u);
  }

  v13 = @"ACK";
  v8 = [MEMORY[0x277CBEB68] null];
  v14 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  v11 = *MEMORY[0x277D44260];
  v12 = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v6[2](v6, v9, v10, 0);
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[5] = (2 * (v3 == 0));
    if (v3 || ([WeakRetained[2] localDevice], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = ContinuitySingLog(WeakRetained);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = "[CSPairingMessagingClient _activateWithCompletion:]_block_invoke";
        v10 = 2112;
        v11 = v5;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@ Activate: %@", &v8, 0x20u);
      }

      [v5 _serviceActivationHandlersWithError:v3];
    }
  }
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceActivationHandlersWithError:0];
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 9);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

void __52__CSPairingMessagingClient__activateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 9);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
    }
  }
}

- (void)_serviceActivationHandlersWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = [(NSMutableArray *)self->_activationHandlers copy];
  [(NSMutableArray *)self->_activationHandlers removeAllObjects];
  callbackQueue = self->_callbackQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CSPairingMessagingClient__serviceActivationHandlersWithError___block_invoke;
  v9[3] = &unk_278E0AD78;
  v10 = v5;
  v11 = errorCopy;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(callbackQueue, v9);
}

void __64__CSPairingMessagingClient__serviceActivationHandlersWithError___block_invoke(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
    }

    while (v3);
  }
}

- (void)invalidate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CSPairingMessagingClient_invalidate__block_invoke;
  block[3] = &unk_278E0ACD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __38__CSPairingMessagingClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSPairingMessagingClient invalidate]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: Invalidate", &v7, 0xCu);
  }

  *(*(a1 + 32) + 40) = 0;
  [*(*(a1 + 32) + 16) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  [*(*(a1 + 32) + 24) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;
}

- (NSString)localMediaRouteIdentifier
{
  localDevice = [(RPCompanionLinkClient *)self->_rpClient localDevice];
  mediaRouteIdentifier = [localDevice mediaRouteIdentifier];

  return mediaRouteIdentifier;
}

- (id)deviceForMediaRouteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_rpClient activeDevices];
  v6 = [activeDevices countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(activeDevices);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        mediaRouteIdentifier = [v11 mediaRouteIdentifier];
        v13 = [mediaRouteIdentifier isEqualToString:identifierCopy];

        if (v13)
        {
          v14 = v11;

          idsDeviceIdentifier = [v14 idsDeviceIdentifier];
          if (idsDeviceIdentifier)
          {
            v16 = idsDeviceIdentifier;
            idsDeviceIdentifier2 = [v14 idsDeviceIdentifier];
            v18 = [idsDeviceIdentifier2 isEqual:identifierCopy];

            v8 = v14;
            if (!v18)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v8 = v14;
          }
        }
      }

      v7 = [activeDevices countByEnumeratingWithState:&v21 objects:v20 count:16];
      v14 = v8;
    }

    while (v7);
  }

  else
  {
    v14 = 0;
  }

LABEL_15:

  return v14;
}

- (id)deviceForRemoteDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_rpClient activeDevices];
  v6 = [activeDevices countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(activeDevices);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 compareWithDeviceIdentifier:identifierCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [activeDevices countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_pairWithMediaRouteIdentifierIfNeeded:(id)needed password:(id)password attempts:(int64_t)attempts completion:(id)completion
{
  neededCopy = needed;
  passwordCopy = password;
  completionCopy = completion;
  v13 = [(CSPairingMessagingClient *)self deviceForMediaRouteIdentifier:neededCopy];
  v14 = v13;
  if (v13)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke;
    block[3] = &unk_278E0B2A8;
    block[4] = self;
    v37 = v13;
    v38 = passwordCopy;
    v39 = completionCopy;
    dispatch_async(internalQueue, block);
  }

  else
  {
    v16 = ContinuitySingLog(0);
    v17 = v16;
    if (attempts < 2)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CSPairingMessagingClient _pairWithMediaRouteIdentifierIfNeeded:password:attempts:completion:];
      }

      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = [v21 initWithDomain:CSPairingErrorDomain code:3 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v22);
    }

    else
    {
      v18 = (attempts - 1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = "[CSPairingMessagingClient _pairWithMediaRouteIdentifierIfNeeded:password:attempts:completion:]";
        v30 = 2112;
        v31 = neededCopy;
        v32 = 2048;
        v33 = 0x4000000000000000;
        v34 = 2048;
        v35 = v18;
        _os_log_impl(&dword_2441FB000, v17, OS_LOG_TYPE_DEFAULT, "%s: Device with mediaRouteIdentifier %@ not found. Waiting %fs and trying again %zu more times", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      v19 = dispatch_time(0, 2000000000);
      v20 = self->_internalQueue;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke_23;
      v23[3] = &unk_278E0BC80;
      objc_copyWeak(v27, buf);
      v24 = neededCopy;
      v25 = passwordCopy;
      v27[1] = v18;
      v26 = completionCopy;
      dispatch_after(v19, v20, v23);

      objc_destroyWeak(v27);
      objc_destroyWeak(buf);
    }
  }
}

void __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = ContinuitySingLog(WeakRetained);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[CSPairingMessagingClient _pairWithMediaRouteIdentifierIfNeeded:password:attempts:completion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2048;
      v14 = 0x4000000000000000;
      _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: Retrying to pair with mediaRouteIdentifier %@ after waiting %fs", &v9, 0x20u);
    }

    [WeakRetained _pairWithMediaRouteIdentifierIfNeeded:*(a1 + 32) password:*(a1 + 40) attempts:*(a1 + 64) completion:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke_23_cold_1();
    }

    v6 = *(a1 + 48);
    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = [v7 initWithDomain:CSPairingErrorDomain code:0 userInfo:0];
    (*(v6 + 16))(v6, 0, v8);
  }
}

- (void)_pairWithDeviceIfNeeded:(id)needed password:(id)password completion:(id)completion
{
  neededCopy = needed;
  passwordCopy = password;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  v11 = [neededCopy statusFlags] & 0x500008A000;
  idsDeviceIdentifier = [neededCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    idsDeviceIdentifier2 = [neededCopy idsDeviceIdentifier];
    mediaRouteIdentifier = [neededCopy mediaRouteIdentifier];
    v15 = [idsDeviceIdentifier2 isEqual:mediaRouteIdentifier];
  }

  else
  {
    v15 = 1;
  }

  v17 = ContinuitySingLog(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v11 == 0];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(neededCopy, "statusFlags")}];
    v24 = 136315906;
    v25 = "[CSPairingMessagingClient _pairWithDeviceIfNeeded:password:completion:]";
    v26 = 2112;
    v27 = neededCopy;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_2441FB000, v17, OS_LOG_TYPE_DEFAULT, "%s: Device %@ needs to pair? %@; status: %@", &v24, 0x2Au);
  }

  v21 = ContinuitySingLog(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v15)
    {
      if (v22)
      {
        v24 = 136315394;
        v25 = "[CSPairingMessagingClient _pairWithDeviceIfNeeded:password:completion:]";
        v26 = 2112;
        v27 = neededCopy;
        _os_log_impl(&dword_2441FB000, v21, OS_LOG_TYPE_DEFAULT, "%s: Need to ping device for info %@", &v24, 0x16u);
      }

      [(CSPairingMessagingClient *)self _sendPingToDevice:neededCopy completion:completionCopy];
    }

    else
    {
      if (v22)
      {
        v24 = 136315394;
        v25 = "[CSPairingMessagingClient _pairWithDeviceIfNeeded:password:completion:]";
        v26 = 2112;
        v27 = neededCopy;
        _os_log_impl(&dword_2441FB000, v21, OS_LOG_TYPE_DEFAULT, "%s: Device already paired %@", &v24, 0x16u);
      }

      v23 = [[CSPairingDevice alloc] initWithRPCompanionLinkDevice:neededCopy];
      completionCopy[2](completionCopy, v23, 0);
    }
  }

  else
  {
    if (v22)
    {
      v24 = 136315394;
      v25 = "[CSPairingMessagingClient _pairWithDeviceIfNeeded:password:completion:]";
      v26 = 2112;
      v27 = neededCopy;
      _os_log_impl(&dword_2441FB000, v21, OS_LOG_TYPE_DEFAULT, "%s: Requesting to pair with %@", &v24, 0x16u);
    }

    [(CSPairingMessagingClient *)self _pairWithDevice:neededCopy password:passwordCopy completion:completionCopy];
  }
}

- (void)_pairWithDevice:(id)device password:(id)password completion:(id)completion
{
  deviceCopy = device;
  passwordCopy = password;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (!passwordCopy)
  {
    v20 = ContinuitySingLog(v11);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CSPairingMessagingClient _pairWithDevice:password:completion:];
    }

    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = CSPairingErrorDomain;
    v19 = 4;
    goto LABEL_9;
  }

  p_pairingClient = &self->_pairingClient;
  pairingClient = self->_pairingClient;
  v14 = ContinuitySingLog(v11);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (pairingClient)
  {
    if (v15)
    {
      destinationDevice = [(RPCompanionLinkClient *)*p_pairingClient destinationDevice];
      *buf = 136315394;
      *&buf[4] = "[CSPairingMessagingClient _pairWithDevice:password:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = destinationDevice;
      _os_log_impl(&dword_2441FB000, v14, OS_LOG_TYPE_DEFAULT, "%s: Pairing in progress with %@", buf, 0x16u);
    }

    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v18 = CSPairingErrorDomain;
    v19 = 0;
LABEL_9:
    v21 = [v17 initWithDomain:v18 code:v19 userInfo:0];
    completionCopy[2](completionCopy, 0, v21);

    goto LABEL_13;
  }

  if (v15)
  {
    *buf = 136315394;
    *&buf[4] = "[CSPairingMessagingClient _pairWithDevice:password:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = deviceCopy;
    _os_log_impl(&dword_2441FB000, v14, OS_LOG_TYPE_DEFAULT, "%s: Pair with %@", buf, 0x16u);
  }

  objc_initWeak(location, self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v70 = 0;
  v22 = self->_callbackQueue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke;
  aBlock[3] = &unk_278E0BCD0;
  v42 = v22;
  v65 = v42;
  v67 = buf;
  objc_copyWeak(&v68, location);
  v66 = completionCopy;
  v23 = _Block_copy(aBlock);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_3;
  v61[3] = &unk_278E0BCF8;
  v24 = deviceCopy;
  v62 = v24;
  v25 = v23;
  v63 = v25;
  v26 = _Block_copy(v61);
  v27 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  pairingTimer = self->_pairingTimer;
  self->_pairingTimer = v27;

  v29 = self->_pairingTimer;
  v30 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v29, v30, 0xFFFFFFFFFFFFFFFFLL, 0);
  v31 = self->_pairingTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_27;
  handler[3] = &unk_278E0BD20;
  v32 = v24;
  v57 = v32;
  objc_copyWeak(&v60, location);
  v33 = v26;
  v58 = v33;
  v34 = v25;
  v59 = v34;
  dispatch_source_set_event_handler(v31, handler);
  dispatch_resume(self->_pairingTimer);
  v35 = objc_alloc_init(MEMORY[0x277D44160]);
  [v35 setDispatchQueue:self->_internalQueue];
  [v35 setDestinationDevice:v32];
  [v35 setServiceType:@"com.apple.ContinuitySingPairing"];
  [v35 setFlags:1];
  [v35 setControlFlags:{-[RPCompanionLinkClient controlFlags](self->_rpClient, "controlFlags")}];
  [v35 setPasswordType:7];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31;
  v52[3] = &unk_278E0BD48;
  objc_copyWeak(&v55, location);
  v36 = v34;
  v54 = v36;
  v53 = passwordCopy;
  [v35 setPromptForPasswordHandler:v52];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_33;
  v49[3] = &unk_278E0BD70;
  v37 = v36;
  v51 = v37;
  v38 = v32;
  v50 = v38;
  [v35 setAuthCompletionHandler:v49];
  objc_storeStrong(p_pairingClient, v35);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_34;
  v43[3] = &unk_278E0BDC0;
  objc_copyWeak(&v48, location);
  v39 = v37;
  v46 = v39;
  v40 = v33;
  v47 = v40;
  v41 = v35;
  v44 = v41;
  v45 = v38;
  [v41 activateWithCompletion:v43];

  objc_destroyWeak(&v48);
  objc_destroyWeak(&v55);

  objc_destroyWeak(&v60);
  objc_destroyWeak(&v68);

  _Block_object_dispose(buf, 8);
  objc_destroyWeak(location);
LABEL_13:
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_2;
  block[3] = &unk_278E0BCA8;
  v15 = *(a1 + 48);
  objc_copyWeak(&v16, (a1 + 56));
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v16);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      [WeakRetained _endPairingClient];
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[CSPairingDevice alloc] initWithRPCompanionLinkDevice:v3];
    v5 = [(CSPairingDevice *)v4 mediaRouteIdentifier];
    v6 = [*(a1 + 32) mediaRouteIdentifier];
    v7 = [v5 isEqual:v6];

    v8 = [(CSPairingDevice *)v4 idsDeviceIdentifier];
    v9 = [(CSPairingDevice *)v4 mediaRouteIdentifier];
    v10 = [v8 isEqualToString:v9];

    v11 = [(CSPairingDevice *)v3 statusFlags];
    v12 = v11 & 0x500008A000;
    v13 = ContinuitySingLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v12 != 0];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "statusFlags")}];
      v20 = 136315906;
      v21 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke_3";
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_2441FB000, v13, OS_LOG_TYPE_DEFAULT, "%s: Found waiting for pairing device %@; paired: %@, status: %@", &v20, 0x2Au);
    }

    if (!(v10 & 1 | ((v7 & 1) == 0)))
    {
      v18 = ContinuitySingLog(v17);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v19)
        {
          v20 = 136315394;
          v21 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
          v22 = 2112;
          v23 = v4;
          _os_log_impl(&dword_2441FB000, v18, OS_LOG_TYPE_DEFAULT, "%s: New paired device found: %@", &v20, 0x16u);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (v19)
        {
          v20 = 136315394;
          v21 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
          v22 = 2112;
          v23 = v3;
          _os_log_impl(&dword_2441FB000, v18, OS_LOG_TYPE_DEFAULT, "%s: Device found, but missing paired flag, waiting for fully paired device: %@", &v20, 0x16u);
        }
      }
    }
  }
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_27(uint64_t a1)
{
  v2 = ContinuitySingLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_27_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) mediaRouteIdentifier];
    v5 = [WeakRetained deviceForMediaRouteIdentifier:v4];

    (*(*(a1 + 40) + 16))();
  }

  v6 = *(a1 + 48);
  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = [v7 initWithDomain:CSPairingErrorDomain code:2 userInfo:0];
  (*(v6 + 16))(v6, 0, v8);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if ((a2 & 0x10000) != 0)
  {
    v9 = ContinuitySingLog(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31_cold_1(v9);
    }

    v10 = *(a1 + 40);
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = CSPairingErrorDomain;
    v13 = 4;
    goto LABEL_12;
  }

  v6 = ContinuitySingLog(WeakRetained);
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31_cold_2(v7);
    }

    v10 = *(a1 + 40);
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = CSPairingErrorDomain;
    v13 = 0;
LABEL_12:
    v8 = [v11 initWithDomain:v12 code:v13 userInfo:0];
    (*(v10 + 16))(v10, 0, v8);
    goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
    _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Enter password to pair", &v14, 0xCu);
  }

  v8 = [v5 pairingClient];
  [v8 tryPassword:*(a1 + 32)];
LABEL_13:
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_33_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Authentication completed with %@", &v7, 0x16u);
    }
  }
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3 || !WeakRetained)
  {
    v12 = ContinuitySingLog(WeakRetained);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_34_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_35;
    aBlock[3] = &unk_278E0BD98;
    v18 = *(a1 + 56);
    v6 = _Block_copy(aBlock);
    v7 = v5[9];
    v5[9] = v6;

    [*(a1 + 32) invalidate];
    v8 = [*(a1 + 40) mediaRouteIdentifier];
    v9 = [v5 deviceForMediaRouteIdentifier:v8];

    v11 = ContinuitySingLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2441FB000, v11, OS_LOG_TYPE_DEFAULT, "%s: Pairing completed with rpDevice %@", &v13, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: Nearby device found while waiting for pairing: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_sendPingToDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  v8 = objc_alloc_init(MEMORY[0x277D44160]);
  [v8 setDestinationDevice:deviceCopy];
  [v8 setControlFlags:{-[RPCompanionLinkClient controlFlags](self->_rpClient, "controlFlags")}];
  [v8 setFlags:{-[RPCompanionLinkClient flags](self->_rpClient, "flags")}];
  v9 = self->_callbackQueue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke;
  aBlock[3] = &unk_278E0BDE8;
  v21 = v9;
  v22 = completionCopy;
  v10 = completionCopy;
  v11 = v9;
  v12 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_3;
  v16[3] = &unk_278E0BE10;
  v18 = deviceCopy;
  v19 = v12;
  v17 = v8;
  v13 = deviceCopy;
  v14 = v12;
  v15 = v8;
  [v15 activateWithCompletion:v16];
}

void __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_2;
  block[3] = &unk_278E0ADF0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_3_cold_1();
    }

    [*(a1 + 32) invalidate];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v19 = "[CSPairingMessagingClient _sendPingToDevice:completion:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Pinging device for info %@", buf, 0x16u);
    }

    v16 = @"ACK";
    v7 = [MEMORY[0x277CBEB68] null];
    v17 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v9 = *(a1 + 32);
    v14 = *MEMORY[0x277D44260];
    v15 = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_37;
    v11[3] = &unk_278E0AFF8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    [v9 sendRequestID:@"com.apple.CSPingRequestID" request:v8 options:v10 responseHandler:v11];
  }
}

void __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_37(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = ContinuitySingLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_37_cold_1();
    }

    [*(a1 + 32) invalidate];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442C0]];
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442D0]];
    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442E0]];
    v13 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442A8]];
    v14 = *MEMORY[0x277D442E8];
    v15 = [v6 objectForKeyedSubscript:*MEMORY[0x277D442E8]];
    if (v15)
    {
      v16 = [v6 objectForKeyedSubscript:v14];
      v17 = [v16 unsignedIntValue];
    }

    else
    {
      v17 = 0;
    }

    v18 = objc_alloc_init(CSPairingDevice);
    [(CSPairingDevice *)v18 setName:v10];
    [(CSPairingDevice *)v18 setIdsDeviceIdentifier:v11];
    [(CSPairingDevice *)v18 setSessionPairingIdentifier:v12];
    [(CSPairingDevice *)v18 setPeerVerifiedIdentifier:v13];
    v19 = ContinuitySingLog([(CSPairingDevice *)v18 setStatusFlags:v17]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[CSPairingMessagingClient _sendPingToDevice:completion:]_block_invoke";
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_2441FB000, v19, OS_LOG_TYPE_DEFAULT, "%s: Received ack from: %@", &v20, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)requestGroupSessionTokenFromIdentifer:(id)identifer completion:(id)completion
{
  identiferCopy = identifer;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CSPairingMessagingClient_requestGroupSessionTokenFromIdentifer_completion___block_invoke;
  block[3] = &unk_278E0BE38;
  block[4] = self;
  v12 = identiferCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identiferCopy;
  dispatch_async(internalQueue, block);
}

- (void)_requestGroupSessionTokenFromIdentifer:(id)identifer attempts:(int64_t)attempts completion:(id)completion
{
  identiferCopy = identifer;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_internalQueue);
  v10 = [(CSPairingMessagingClient *)self deviceForRemoteDisplayIdentifier:identiferCopy];
  v11 = v10;
  if (v10)
  {
    if (self->_pendingGroupSessionTokenCompletionHandlers)
    {
      v12 = ContinuitySingLog(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v40 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]";
        _os_log_impl(&dword_2441FB000, v12, OS_LOG_TYPE_DEFAULT, "%s: Pending request in progress, add to pending completions", buf, 0xCu);
      }

      pendingGroupSessionTokenCompletionHandlers = self->_pendingGroupSessionTokenCompletionHandlers;
      v14 = _Block_copy(completionCopy);
      [(NSMutableArray *)pendingGroupSessionTokenCompletionHandlers addObject:v14];

      goto LABEL_15;
    }

    array = [MEMORY[0x277CBEB18] array];
    v20 = self->_pendingGroupSessionTokenCompletionHandlers;
    self->_pendingGroupSessionTokenCompletionHandlers = array;

    if (completionCopy)
    {
      v21 = self->_pendingGroupSessionTokenCompletionHandlers;
      v22 = _Block_copy(completionCopy);
      [(NSMutableArray *)v21 addObject:v22];
    }

    v23 = objc_alloc_init(MEMORY[0x277D44160]);
    [v23 setDestinationDevice:v11];
    [v23 setControlFlags:{-[RPCompanionLinkClient controlFlags](self->_rpClient, "controlFlags")}];
    [v23 setFlags:{-[RPCompanionLinkClient flags](self->_rpClient, "flags")}];
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_39;
    aBlock[3] = &unk_278E0BE88;
    objc_copyWeak(&v34, buf);
    v24 = _Block_copy(aBlock);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_2;
    v28[3] = &unk_278E0BEB0;
    v29 = identiferCopy;
    v25 = v23;
    v30 = v25;
    v26 = v24;
    v32 = v26;
    v31 = v11;
    [v25 activateWithCompletion:v28];

    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
LABEL_14:

    goto LABEL_15;
  }

  if (attempts < 2)
  {
    v27 = objc_alloc(MEMORY[0x277CCA9B8]);
    v25 = [v27 initWithDomain:CSPairingErrorDomain code:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v25);
    goto LABEL_14;
  }

  v15 = (attempts - 1);
  v16 = ContinuitySingLog(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v40 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]";
    v41 = 2112;
    v42 = identiferCopy;
    v43 = 2048;
    v44 = 0x4000000000000000;
    v45 = 2048;
    v46 = v15;
    _os_log_impl(&dword_2441FB000, v16, OS_LOG_TYPE_DEFAULT, "%s: Device with remoteDisplayIdentifier %@ not found. Waiting %fs and trying again %zu more times", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v17 = dispatch_time(0, 2000000000);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke;
  block[3] = &unk_278E0BE60;
  objc_copyWeak(v38, buf);
  v36 = identiferCopy;
  v38[1] = v15;
  v37 = completionCopy;
  dispatch_after(v17, internalQueue, block);

  objc_destroyWeak(v38);
  objc_destroyWeak(buf);
LABEL_15:
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = ContinuitySingLog(WeakRetained);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2048;
      v14 = 0x4000000000000000;
      _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: Rerequesting group session token from %@ after waiting %fs", &v9, 0x20u);
    }

    [WeakRetained _requestGroupSessionTokenFromIdentifer:*(a1 + 32) attempts:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_cold_1();
    }

    v6 = *(a1 + 40);
    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = [v7 initWithDomain:CSPairingErrorDomain code:0 userInfo:0];
    (*(v6 + 16))(v6, 0, v8);
  }
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _completePendingGroupSessionTokenRequests:v8 error:v5];
  }
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_2_cold_1();
    }

    [*(a1 + 40) invalidate];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      *buf = 136315394;
      v18 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]_block_invoke";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Requesting device for group session info %@", buf, 0x16u);
    }

    v7 = objc_alloc_init(CSGroupSessionTokenRequest);
    v8 = *(a1 + 40);
    v9 = CSIdentifierForMessageID(18);
    v10 = [(CSMessage *)v7 dictionaryRepresentation];
    v15 = *MEMORY[0x277D44260];
    v16 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_42;
    v12[3] = &unk_278E0AFF8;
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    [v8 sendRequestID:v9 request:v10 options:v11 responseHandler:v12];
  }
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_42(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = ContinuitySingLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_42_cold_1();
    }

    [*(a1 + 32) invalidate];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = [[CSGroupSessionTokenResponse alloc] initWithMessage:v6];
    v11 = ContinuitySingLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CSGroupSessionTokenResponse *)v10 urlString];
      v15 = 136315394;
      v16 = "[CSPairingMessagingClient _requestGroupSessionTokenFromIdentifer:attempts:completion:]_block_invoke";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2441FB000, v11, OS_LOG_TYPE_DEFAULT, "%s: Received group session token: %@", &v15, 0x16u);
    }

    v13 = *(a1 + 40);
    v14 = [(CSGroupSessionTokenResponse *)v10 urlString];
    (*(v13 + 16))(v13, v14, 0);
  }
}

- (void)_completePendingGroupSessionTokenRequests:(id)requests error:(id)error
{
  requestsCopy = requests;
  errorCopy = error;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CSPairingMessagingClient__completePendingGroupSessionTokenRequests_error___block_invoke;
  block[3] = &unk_278E0AE18;
  block[4] = self;
  v12 = requestsCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requestsCopy;
  dispatch_async(internalQueue, block);
}

void __76__CSPairingMessagingClient__completePendingGroupSessionTokenRequests_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = 0;

  v5 = *(*(a1 + 32) + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CSPairingMessagingClient__completePendingGroupSessionTokenRequests_error___block_invoke_2;
  block[3] = &unk_278E0AE18;
  v8 = v2;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6 = v2;
  dispatch_async(v5, block);
}

void __76__CSPairingMessagingClient__completePendingGroupSessionTokenRequests_error___block_invoke_2(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v7 + 1) + 8 * v5++) + 16))();
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
    }

    while (v3);
  }
}

- (void)_endPairingClient
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CSPairingMessagingClient__endPairingClient__block_invoke;
  block[3] = &unk_278E0ACD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __45__CSPairingMessagingClient__endPairingClient__block_invoke(uint64_t a1)
{
  v2 = ContinuitySingLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSPairingMessagingClient _endPairingClient]_block_invoke";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: End pairing client", &v6, 0xCu);
  }

  v3 = [*(a1 + 32) pairingClient];
  [v3 invalidate];

  [*(a1 + 32) setPairingClient:0];
  v4 = [*(a1 + 32) pairingTimer];
  dispatch_source_cancel(v4);

  [*(a1 + 32) setPairingTimer:0];
  return [*(a1 + 32) setPendingPairingNearbyDeviceUpdateBlock:0];
}

- (void)_pairWithMediaRouteIdentifierIfNeeded:password:attempts:completion:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Could not find device with mediaRouteIdentifier %@", v2, v3, v4, v5, v6);
}

void __95__CSPairingMessagingClient__pairWithMediaRouteIdentifierIfNeeded_password_attempts_completion___block_invoke_23_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: self deallocated when retrying to pair with mediaRouteIdentifier %@", v2, v3, v4, v5, v6);
}

- (void)_pairWithDevice:password:completion:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Need a pairing code to pair with %@", v2, v3, v4, v5, v6);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_27_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Pairing timed out for %@", v2, v3, v4, v5, v6);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31_cold_1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Password entered incorrect, end pairing", &v1, 0xCu);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_31_cold_2(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSPairingMessagingClient _pairWithDevice:password:completion:]_block_invoke";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: Pairing ended unexpectedly", &v1, 0xCu);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_33_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Authentication ended with error: %@", v2, v3, v4, v5, v6);
}

void __64__CSPairingMessagingClient__pairWithDevice_password_completion___block_invoke_34_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Pairing ended with error: %@", v2, v3, v4, v5, v6);
}

void __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_3_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Error activating client to ping: %@", v2, v3, v4, v5, v6);
}

void __57__CSPairingMessagingClient__sendPingToDevice_completion___block_invoke_37_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Error sending ping to client: %@", v2, v3, v4, v5, v6);
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: self deallocated when retrying to request session from remoteDisplayIdentifier %@", v2, v3, v4, v5, v6);
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_2_cold_1()
{
  v3[0] = 136315650;
  OUTLINED_FUNCTION_3();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_2441FB000, v2, OS_LOG_TYPE_ERROR, "%s: Error activating client to %@ to request group session token: %@", v3, 0x20u);
}

void __87__CSPairingMessagingClient__requestGroupSessionTokenFromIdentifer_attempts_completion___block_invoke_42_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2441FB000, v0, v1, "%s: Error requesting group session info: %@", v2, v3, v4, v5, v6);
}

@end