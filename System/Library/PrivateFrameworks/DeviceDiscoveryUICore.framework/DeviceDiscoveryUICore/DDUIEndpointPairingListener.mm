@interface DDUIEndpointPairingListener
- (DDUIEndpointPairingListener)initWithTransport:(id)transport;
- (void)beginListeningWithErrorHandler:(id)handler pairingHandler:(id)pairingHandler completion:(id)completion;
- (void)checkIfUserNeedsReconfirmationForSession:(id)session withServiceIdentifier:(id)identifier completion:(id)completion;
- (void)createListenerMappingForSession:(id)session withServiceIdentifier:(id)identifier completion:(id)completion;
- (void)invalidate;
@end

@implementation DDUIEndpointPairingListener

- (DDUIEndpointPairingListener)initWithTransport:(id)transport
{
  v15 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  v10.receiver = self;
  v10.super_class = DDUIEndpointPairingListener;
  v6 = [(DDUIEndpointPairingListener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transport, transport);
    v8 = _DDUICoreLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v12 = v7;
      v13 = 2112;
      v14 = transportCopy;
      _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingListener init] {self: %p, transport: %@}", buf, 0x16u);
    }
  }

  return v7;
}

- (void)beginListeningWithErrorHandler:(id)handler pairingHandler:(id)pairingHandler completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  pairingHandlerCopy = pairingHandler;
  completionCopy = completion;
  v11 = _DDUICoreLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _Block_copy(completionCopy);
    v13 = _Block_copy(pairingHandlerCopy);
    v14 = _Block_copy(completionCopy);
    *buf = 134218754;
    selfCopy = self;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingListener beginning {self: %p, errorHandler: %@, pairingHandler: %@, completion: %@}", buf, 0x2Au);
  }

  transport = self->_transport;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__DDUIEndpointPairingListener_beginListeningWithErrorHandler_pairingHandler_completion___block_invoke;
  v23[3] = &unk_2788F5D08;
  v24 = pairingHandlerCopy;
  v16 = pairingHandlerCopy;
  [(DDUIEndpointPairingListeningTransport *)transport setupListeningForSessionsWithHandler:v23];
  v17 = self->_transport;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__DDUIEndpointPairingListener_beginListeningWithErrorHandler_pairingHandler_completion___block_invoke_2;
  v20[3] = &unk_2788F5D30;
  v20[4] = self;
  v21 = handlerCopy;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = handlerCopy;
  [(DDUIEndpointPairingListeningTransport *)v17 activateForDeviceTypes:0xFFFFFFFFLL withCompletion:v20];
}

void __88__DDUIEndpointPairingListener_beginListeningWithErrorHandler_pairingHandler_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v10 = [[DDUIEndpointPairingSession alloc] initWithTransportSession:v8 mode:1];

  [(DDUIEndpointPairingSession *)v10 setSessionType:a4];
  [(DDUIEndpointPairingSession *)v10 setIncomingMessage:v7];
  v9 = [(DDUIEndpointPairingSession *)v10 processInitialMessage:v7];

  (*(*(a1 + 32) + 16))();
}

void __88__DDUIEndpointPairingListener_beginListeningWithErrorHandler_pairingHandler_completion___block_invoke_2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _DDUICoreLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = a1[4];
      v8 = 134218242;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingListener failed to activate {self: %p, inError: %@}", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = a1[4];
      v8 = 134217984;
      v9 = v7;
      _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingListener activated {self: %p}", &v8, 0xCu);
    }

    (*(a1[6] + 16))();
  }
}

- (void)checkIfUserNeedsReconfirmationForSession:(id)session withServiceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  transport = self->_transport;
  identifierCopy = identifier;
  remoteDevice = [session remoteDevice];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__DDUIEndpointPairingListener_checkIfUserNeedsReconfirmationForSession_withServiceIdentifier_completion___block_invoke;
  v13[3] = &unk_2788F5D58;
  v14 = completionCopy;
  v12 = completionCopy;
  [(DDUIEndpointPairingListeningTransport *)transport shouldReauthenticateDevice:remoteDevice forServiceIdentifier:identifierCopy completion:v13];
}

void __105__DDUIEndpointPairingListener_checkIfUserNeedsReconfirmationForSession_withServiceIdentifier_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _DDUICoreLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"No";
    if (a2)
    {
      v7 = @"Yes";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_230EF9000, v6, OS_LOG_TYPE_DEFAULT, "Should reauthenticate user session? %@ Found listenerID %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)createListenerMappingForSession:(id)session withServiceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  transport = self->_transport;
  identifierCopy = identifier;
  remoteDevice = [session remoteDevice];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__DDUIEndpointPairingListener_createListenerMappingForSession_withServiceIdentifier_completion___block_invoke;
  v13[3] = &unk_2788F5D80;
  v14 = completionCopy;
  v12 = completionCopy;
  [(DDUIEndpointPairingListeningTransport *)transport createListenerMappingForDevice:remoteDevice forServiceIdentifier:identifierCopy completion:v13];
}

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingListener invalidating {self: %p}", &v4, 0xCu);
  }

  [(DDUIEndpointPairingListeningTransport *)self->_transport invalidate];
}

@end