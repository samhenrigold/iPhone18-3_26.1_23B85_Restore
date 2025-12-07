@interface DDUIEndpointPairingSession
- (BOOL)_handleIncomingMessage:(id)message;
- (DDUIEndpointPairingSession)initWithTransportSession:(id)session mode:(unint64_t)mode;
- (id)processInitialMessage:(id)message;
- (void)_activateWithErrorHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_clearBlocks;
- (void)_failPairing;
- (void)_pairWithInfo:(id)info;
- (void)_sendPairingWithInfo:(id)info;
- (void)activateWithErrorHandler:(id)handler completionHandler:(id)completionHandler;
- (void)cancelWithMessage:(id)message;
- (void)dealloc;
- (void)invalidate;
- (void)pairWithMessage:(id)message;
- (void)pairWithMessage:(id)message errorHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation DDUIEndpointPairingSession

- (DDUIEndpointPairingSession)initWithTransportSession:(id)session mode:(unint64_t)mode
{
  v30 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v21.receiver = self;
  v21.super_class = DDUIEndpointPairingSession;
  v8 = [(DDUIEndpointPairingSession *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transportSession, session);
    v9->_mode = mode;
    v9->_state = 0;
    sessionID = [sessionCopy sessionID];
    if (sessionID)
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      sessionID2 = [sessionCopy sessionID];
      v13 = [v11 initWithUUIDString:sessionID2];
      sessionID = v9->_sessionID;
      v9->_sessionID = v13;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      sessionID2 = v9->_sessionID;
      v9->_sessionID = uUID;
    }

    v16 = dispatch_group_create();
    activateGroup = v9->_activateGroup;
    v9->_activateGroup = v16;

    dispatch_group_enter(v9->_activateGroup);
    v18 = _DDUICoreLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      remoteDevice = [sessionCopy remoteDevice];
      *buf = 134218754;
      v23 = v9;
      v24 = 2112;
      v25 = sessionCopy;
      v26 = 2048;
      modeCopy = mode;
      v28 = 2112;
      v29 = remoteDevice;
      _os_log_impl(&dword_230EF9000, v18, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession init] {self: %p, transportSession: %@, mode: %lu, remoteDevice: %@}", buf, 0x2Au);
    }
  }

  return v9;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    state = self->_state;
    *buf = 134218496;
    selfCopy = self;
    v10 = 2048;
    v11 = state;
    v12 = 2048;
    v13 = mode;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession dealloc] {self: %p, state: %lu, mode: %lu}", buf, 0x20u);
  }

  v6 = self->_state;
  if (v6 == 2 || !v6 && self->_mode == 1)
  {
    [(DDUIEndpointPairingSession *)self _failPairing];
  }

  if (!self->_activated)
  {
    dispatch_group_leave(self->_activateGroup);
  }

  v7.receiver = self;
  v7.super_class = DDUIEndpointPairingSession;
  [(DDUIEndpointPairingSession *)&v7 dealloc];
}

- (void)cancelWithMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryRepresentation = [message dictionaryRepresentation];
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    state = self->_state;
    *buf = 134218754;
    selfCopy = self;
    v17 = 2048;
    v18 = state;
    v19 = 2048;
    v20 = mode;
    v21 = 2112;
    v22 = dictionaryRepresentation;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession cancelWithMessage:] {self: %p, state: %lu, mode: %lu, info: %@}", buf, 0x2Au);
  }

  v8 = self->_state;
  if (v8 == 2 || !v8 && self->_mode == 1)
  {
    self->_state = 5;
    v13 = @"type";
    v14 = &unk_2845C3448;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [v9 mutableCopy];

    if (dictionaryRepresentation)
    {
      [v10 setObject:dictionaryRepresentation forKeyedSubscript:@"usi"];
    }

    transportSession = self->_transportSession;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__DDUIEndpointPairingSession_cancelWithMessage___block_invoke;
    v12[3] = &unk_2788F5DF8;
    v12[4] = self;
    [(DDUIEndpointPairingTransportSession *)transportSession sendMessage:v10 withCompletion:v12];
  }
}

void __48__DDUIEndpointPairingSession_cancelWithMessage___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession cancel finished sending {self: %p, error: %@}", &v6, 0x16u);
  }
}

- (void)invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    state = self->_state;
    v10 = 134218496;
    selfCopy = self;
    v12 = 2048;
    v13 = state;
    v14 = 2048;
    v15 = mode;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession invalidate] {self: %p, state: %lu, mode: %lu}", &v10, 0x20u);
  }

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  v8 = self->_state;
  if (v8 == 2 || !v8 && self->_mode == 1)
  {
    self->_state = 5;
    [(DDUIEndpointPairingSession *)self _failPairing];
  }

  else
  {
    [(DDUIEndpointPairingTransportSession *)self->_transportSession invalidate];
    transportSession = self->_transportSession;
    self->_transportSession = 0;
  }
}

- (void)pairWithMessage:(id)message errorHandler:(id)handler completionHandler:(id)completionHandler
{
  messageCopy = message;
  [(DDUIEndpointPairingSession *)self _activateWithErrorHandler:handler completionHandler:completionHandler];
  dictionaryRepresentation = [messageCopy dictionaryRepresentation];

  [(DDUIEndpointPairingSession *)self _pairWithInfo:dictionaryRepresentation];
}

- (void)pairWithMessage:(id)message
{
  dictionaryRepresentation = [message dictionaryRepresentation];
  [(DDUIEndpointPairingSession *)self _pairWithInfo:dictionaryRepresentation];
}

- (void)_sendPairingWithInfo:(id)info
{
  v17[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  mode = [(DDUIEndpointPairingSession *)self mode];
  if (mode == 1)
  {
    v14 = @"type";
    v15 = &unk_2845C3478;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v7 = [v11 mutableCopy];

    if (infoCopy)
    {
      [v7 setObject:infoCopy forKeyedSubscript:@"usi"];
    }

    [(DDUIEndpointPairingSession *)self setState:3];
    transportSession = [(DDUIEndpointPairingSession *)self transportSession];
    v9 = transportSession;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke_22;
    v12[3] = &unk_2788F5DF8;
    v12[4] = self;
    v10 = v12;
    goto LABEL_9;
  }

  if (!mode)
  {
    [(DDUIEndpointPairingSession *)self setState:2];
    v16 = @"type";
    v17[0] = &unk_2845C3460;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v6 mutableCopy];

    if (infoCopy)
    {
      [v7 setObject:infoCopy forKeyedSubscript:@"usi"];
    }

    transportSession = [(DDUIEndpointPairingSession *)self transportSession];
    v9 = transportSession;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke;
    v13[3] = &unk_2788F5DF8;
    v13[4] = self;
    v10 = v13;
LABEL_9:
    [transportSession sendMessage:v7 withCompletion:v10];
  }
}

void __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession start message finished sending {self: %p, error: %@}", &v6, 0x16u);
  }
}

void __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke_22(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke_22_cold_1(a1, v3, v5);
    }

    v6 = [*(a1 + 32) errorHandler];

    if (v6)
    {
      v7 = [*(a1 + 32) errorHandler];
      (v7)[2](v7, v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v8 startUserInfo];
      v14 = 134218498;
      v15 = v8;
      v16 = 2112;
      v17 = 0;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession accept message finished sending {self: %p, error: %@, startUserInfo: %@}", &v14, 0x20u);
    }

    v10 = [*(a1 + 32) completionHandler];

    if (v10)
    {
      v11 = [DDUIPairCompleteMessage alloc];
      v12 = [(DDUIPairCompleteMessage *)v11 initWithDictionaryRepresentation:MEMORY[0x277CBEC10]];
      v13 = [*(a1 + 32) completionHandler];
      (v13)[2](v13, 0, 0, v12);
    }

    [*(a1 + 32) _clearBlocks];
  }
}

- (void)activateWithErrorHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__DDUIEndpointPairingSession_activateWithErrorHandler_completionHandler___block_invoke;
  v8[3] = &unk_2788F5E20;
  v9 = completionHandlerCopy;
  v7 = completionHandlerCopy;
  [(DDUIEndpointPairingSession *)self _activateWithErrorHandler:handler completionHandler:v8];
}

uint64_t __73__DDUIEndpointPairingSession_activateWithErrorHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_activateWithErrorHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (!self->_state)
  {
    objc_initWeak(&location, self);
    self->_state = 1;
    transportSession = self->_transportSession;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke;
    v16[3] = &unk_2788F5E48;
    objc_copyWeak(&v18, &location);
    v9 = handlerCopy;
    v17 = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_25;
    v14[3] = &unk_2788F5E70;
    objc_copyWeak(&v15, &location);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_2;
    v10[3] = &unk_2788F5E98;
    objc_copyWeak(&v13, &location);
    v11 = completionHandlerCopy;
    v12 = v9;
    [(DDUIEndpointPairingTransportSession *)transportSession activateWithErrorHandler:v16 messageHandler:v14 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = _DDUICoreLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_cold_1(WeakRetained, v3, v5);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_25(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleIncomingMessage:v5];
  }
}

void __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = _DDUICoreLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218498;
      v8 = WeakRetained;
      v9 = 2048;
      v10 = [WeakRetained mode];
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession activated {self: %p,  mode: %lu, inSession: %@}", &v7, 0x20u);
    }

    [WeakRetained setCompletionHandler:*(a1 + 32)];
    [WeakRetained setErrorHandler:*(a1 + 40)];
    [WeakRetained setState:2];
    v6 = [WeakRetained activateGroup];
    dispatch_group_leave(v6);

    [WeakRetained setActivated:1];
  }
}

- (void)_pairWithInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(&location, self);
  activateGroup = [(DDUIEndpointPairingSession *)self activateGroup];
  v6 = DDUICorePrimaryQueue(activateGroup);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__DDUIEndpointPairingSession__pairWithInfo___block_invoke;
  block[3] = &unk_2788F5EC0;
  objc_copyWeak(&v10, &location);
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_group_notify(activateGroup, v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__DDUIEndpointPairingSession__pairWithInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendPairingWithInfo:*(a1 + 32)];
}

- (id)processInitialMessage:(id)message
{
  messageCopy = message;
  if ([(DDUIEndpointPairingSession *)self _handleIncomingMessage:messageCopy])
  {
    v5 = [DDUIPairInitiateMessage alloc];
    v6 = [messageCopy objectForKeyedSubscript:@"usi"];
    v7 = [(DDUIPairInitiateMessage *)v5 initWithDictionaryRepresentation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_handleIncomingMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"type"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = unsignedIntegerValue - 1;
  v8 = _DDUICoreLog();
  v9 = v8;
  if ((unsignedIntegerValue - 1) >= 4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DDUIEndpointPairingSession *)self _handleIncomingMessage:messageCopy, v9];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = DDUIEndpointPairingSessionStateString(self->_state);
    mode = self->_mode;
    v12 = off_2788F5F08[unsignedIntegerValue - 1];
    *buf = 134219010;
    selfCopy2 = self;
    v31 = 2112;
    v32 = v10;
    v33 = 2048;
    v34 = mode;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = messageCopy;
    _os_log_impl(&dword_230EF9000, v9, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession _handleIncomingMessage] {self: %p, state: %@, mode: %lu, messageType: %@, message: %@}", buf, 0x34u);
  }

  if (self->_state == 2)
  {
    switch(unsignedIntegerValue)
    {
      case 4:
        self->_state = 5;
        (*(self->_errorHandler + 2))();
        goto LABEL_15;
      case 3:
        self->_state = 5;
        completionHandler = self->_completionHandler;
        v18 = [DDUIPairCompleteMessage alloc];
        v15 = [messageCopy objectForKeyedSubscript:@"usi"];
        v16 = [(DDUIPairCompleteMessage *)v18 initWithDictionaryRepresentation:v15];
        completionHandler[2](completionHandler, 1, 0, v16);
        break;
      case 2:
        self->_state = 4;
        if (self->_mode != 1)
        {
          v20 = [DDUIPairCompleteMessage alloc];
          v21 = [messageCopy objectForKeyedSubscript:@"usi"];
          v9 = [(DDUIPairCompleteMessage *)v20 initWithDictionaryRepresentation:v21];

          listenerUUID = [v9 listenerUUID];

          if (listenerUUID)
          {
            transportSession = self->_transportSession;
            listenerUUID2 = [v9 listenerUUID];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __53__DDUIEndpointPairingSession__handleIncomingMessage___block_invoke;
            v27[3] = &unk_2788F5EE8;
            v27[4] = self;
            v9 = v9;
            v28 = v9;
            [(DDUIEndpointPairingTransportSession *)transportSession generateNetworkEndpointIdentifierForRemoteDevice:listenerUUID2 withCompletion:v27];
          }

          else
          {
            v25 = _DDUICoreLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              selfCopy2 = self;
              _os_log_impl(&dword_230EF9000, v25, OS_LOG_TYPE_DEFAULT, "No listener returned from remote device, skipping generating mapping {self: %p}", buf, 0xCu);
            }

            completionHandler = [(DDUIEndpointPairingSession *)self completionHandler];
            (completionHandler)[2](completionHandler, 0, 0, v9);

            [(DDUIEndpointPairingSession *)self _clearBlocks];
          }

          goto LABEL_16;
        }

        v13 = self->_completionHandler;
        v14 = [DDUIPairCompleteMessage alloc];
        v15 = [messageCopy objectForKeyedSubscript:@"usi"];
        v16 = [(DDUIPairCompleteMessage *)v14 initWithDictionaryRepresentation:v15];
        (*(v13 + 2))(v13, 0, 0, v16);
        break;
      default:
LABEL_15:
        v9 = self->_completionHandler;
        self->_completionHandler = 0;
LABEL_16:

        goto LABEL_17;
    }

    [(DDUIEndpointPairingSession *)self _clearBlocks];
    goto LABEL_15;
  }

LABEL_17:

  return v7 < 4;
}

void __53__DDUIEndpointPairingSession__handleIncomingMessage___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession _handleIncomingMessage].block generated mapping {self: %p, identifier: %@}", &v7, 0x16u);
  }

  v6 = [*(a1 + 32) completionHandler];
  (v6)[2](v6, 0, v3, *(a1 + 40));

  [*(a1 + 32) _clearBlocks];
}

- (void)_failPairing
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    state = self->_state;
    *buf = 134218496;
    selfCopy = self;
    v15 = 2048;
    v16 = state;
    v17 = 2048;
    v18 = mode;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingSession _failPairing] {self: %p, state: %lu, mode: %lu}", buf, 0x20u);
  }

  v11 = @"type";
  v12 = &unk_2845C3490;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7 = self->_transportSession;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__DDUIEndpointPairingSession__failPairing__block_invoke;
  v9[3] = &unk_2788F5BA0;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(DDUIEndpointPairingTransportSession *)v8 sendMessage:v6 withTimeout:v9 completion:1.0];
}

void __42__DDUIEndpointPairingSession__failPairing__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingSession pairing failure finished sending {self: %p, error: %@}", &v6, 0x16u);
  }

  [*(a1 + 40) invalidate];
}

- (void)_clearBlocks
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;
}

void __51__DDUIEndpointPairingSession__sendPairingWithInfo___block_invoke_22_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_230EF9000, a2, a3, "DDUIEndpointPairingSession accept message failed to send {self: %p, error: %@}", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __74__DDUIEndpointPairingSession__activateWithErrorHandler_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1(&dword_230EF9000, a2, a3, "DDUIEndpointPairingSession failed to activate {self: %p, error: %@}", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_handleIncomingMessage:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = DDUIEndpointPairingSessionStateString(*(a1 + 48));
  v7 = *(a1 + 40);
  v8 = 134219010;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  v12 = 2048;
  v13 = v7;
  v14 = 2112;
  v15 = @"invalid";
  v16 = 2112;
  v17 = a2;
  _os_log_error_impl(&dword_230EF9000, a3, OS_LOG_TYPE_ERROR, "[DDUIEndpointPairingSession _handleIncomingMessage] -- invalid message type! {self: %p, state: %@, mode: %lu, messageType: %@, message: %@}", &v8, 0x34u);
}

@end