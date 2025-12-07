@interface SASPresentationServer
+ (id)interface;
+ (id)serverForConnection:(id)connection;
+ (void)_unregisterConnection:(id)connection;
- (SASPresentationServer)init;
- (SASPresentationServerDelegate)weak_delegate;
- (id)allBulletins;
- (id)bulletinForIdentifier:(id)identifier;
- (id)bulletinsOnLockScreen;
- (id)description;
- (void)_setConnection:(id)connection;
- (void)dealloc;
- (void)didDismiss;
- (void)didPresentSiri;
- (void)didUpdatePresentationConfiguration:(id)configuration;
- (void)didUpdatePresentationState:(id)state;
- (void)failedToPresentSiriWithError:(id)error;
- (void)init;
- (void)pong;
- (void)registerPresentationIdentifier:(id)identifier;
- (void)resetSiriToActive;
- (void)unregisterPresentationIdentifier:(id)identifier;
- (void)willDismiss;
@end

@implementation SASPresentationServer

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  connection = [(SASPresentationServer *)self connection];
  v5 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:{-[SASPresentationServer presentationIdentifier](self, "presentationIdentifier")}];
  v6 = [v3 stringWithFormat:@"<SASPresentationServer connection:%@, presentationIdentifier:%@>", connection, v5];

  return v6;
}

- (void)pong
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __29__SASPresentationServer_pong__block_invoke;
  v2[3] = &unk_1E82F36D0;
  objc_copyWeak(&v3, &location);
  SiriInvokeOnMainQueue(v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __29__SASPresentationServer_pong__block_invoke(uint64_t a1)
{
  v3 = +[SiriActivationService service];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 pongWithPresentationIdentifier:{objc_msgSend(WeakRetained, "presentationIdentifier")}];
}

- (void)didPresentSiri
{
  v10 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SASPresentationServer didPresentSiri]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %p #activation Shell indicates Siri is presented", buf, 0x16u);
  }

  presentationIdentifier = [(SASPresentationServer *)self presentationIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SASPresentationServer_didPresentSiri__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = presentationIdentifier;
  SiriInvokeOnMainQueue(v5);
}

void __39__SASPresentationServer_didPresentSiri__block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationDisplayedWithIdentifier:*(a1 + 32)];
}

+ (id)serverForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [serversByConnection objectForKey:connectionCopy];
  if (!v5)
  {
    v6 = objc_alloc_init(SASPresentationServer);
    os_unfair_lock_lock(&lock);
    v7 = serversByConnection;
    if (!serversByConnection)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:4];
      v9 = serversByConnection;
      serversByConnection = v8;

      v7 = serversByConnection;
    }

    [v7 setObject:v6 forKey:connectionCopy];
    os_unfair_lock_unlock(&lock);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __45__SASPresentationServer_serverForConnection___block_invoke;
    v14 = &unk_1E82F3990;
    v5 = v6;
    v15 = v5;
    selfCopy = self;
    [connectionCopy configureConnection:&v11];
    [(SASPresentationServer *)v5 _setConnection:connectionCopy, v11, v12, v13, v14];
  }

  return v5;
}

void __45__SASPresentationServer_serverForConnection___block_invoke(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SASPresentationServer_serverForConnection___block_invoke_2;
  v9[3] = &unk_1E82F3940;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v4;
  v11 = v5;
  v6 = a2;
  [v6 setInvalidationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SASPresentationServer_serverForConnection___block_invoke_21;
  v7[3] = &unk_1E82F3968;
  v8 = *(a1 + 32);
  [v6 setInterruptionHandler:v7];
}

void __45__SASPresentationServer_serverForConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136315394;
    v7 = "+[SASPresentationServer serverForConnection:]_block_invoke_2";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation invalidated presentationServer: %@", &v6, 0x16u);
  }

  [*(a1 + 40) _unregisterConnection:v3];
}

void __45__SASPresentationServer_serverForConnection___block_invoke_21(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "+[SASPresentationServer serverForConnection:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation interrupted presentationServer: %@", &v4, 0x16u);
  }
}

+ (void)_unregisterConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&lock);
  v5 = [serversByConnection objectForKey:connectionCopy];
  v4 = +[SiriActivationService service];
  [v4 unregisterSiriPresentationIdentifier:{objc_msgSend(v5, "presentationIdentifier")}];

  [serversByConnection removeObjectForKey:connectionCopy];
  os_unfair_lock_unlock(&lock);
}

- (SASPresentationServer)init
{
  v4.receiver = self;
  v4.super_class = SASPresentationServer;
  v2 = [(SASPresentationServer *)&v4 init];
  if (v2 && os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
  {
    [SASPresentationServer init];
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v3 = v0;
  _os_log_debug_impl(&dword_1C8137000, v1, OS_LOG_TYPE_DEBUG, "%s %p", v2, 0x16u);
}

- (void)_setConnection:(id)connection
{
  v28 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v6 = remoteProcess;
  if (remoteProcess && ([remoteProcess hasEntitlement:@"com.apple.siri.activation.service"] & 1) == 0)
  {
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SASPresentationServer *)self _setConnection:v8, v6];
    }

    [connectionCopy invalidate];
  }

  else
  {
    connection = [(SASPresentationServer *)self connection];
    if (connection)
    {

LABEL_9:
      v9 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "[SASPresentationServer _setConnection:]";
        v26 = 2114;
        selfCopy = self;
        _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s Unexpectedly attempted to assign a new connection to the activation server with an existing connection: %{public}@", buf, 0x16u);
      }

      [connectionCopy invalidate];
      goto LABEL_12;
    }

    if ([(SASPresentationServer *)self invalidated])
    {
      goto LABEL_9;
    }

    [(SASPresentationServer *)self setConnection:connectionCopy];
    objc_initWeak(buf, self);
    connection = self->_connection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __40__SASPresentationServer__setConnection___block_invoke;
    v21[3] = &unk_1E82F39E0;
    v21[4] = self;
    objc_copyWeak(&v22, buf);
    [(BSServiceConnectionHost *)connection configureConnection:v21];
    [(BSServiceConnectionHost *)self->_connection activate];
    waitForConnectBlocks = [(SASPresentationServer *)self waitForConnectBlocks];
    [(SASPresentationServer *)self setWaitForConnectBlocks:0];
    if ([waitForConnectBlocks count])
    {
      remoteTarget = [(BSServiceConnectionHost *)self->_connection remoteTarget];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v13 = waitForConnectBlocks;
      v14 = [v13 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v14)
      {
        v15 = *v18;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(v13);
            }

            (*(*(*(&v17 + 1) + 8 * v16) + 16))(*(*(&v17 + 1) + 8 * v16));
            ++v16;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v14);
      }
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

LABEL_12:
}

void __40__SASPresentationServer__setConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SASPresentationServer serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SASPresentationServer interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SASPresentationServer__setConnection___block_invoke_2;
  v6[3] = &unk_1E82F39B8;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
}

void __40__SASPresentationServer__setConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 5);
    [v5 serverDidInvalidateConnection:v4];

    [SASPresentationServer _unregisterConnection:v6];
  }
}

+ (id)interface
{
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3A08];
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3A68];
  v4 = [MEMORY[0x1E698F4E8] interfaceWithServer:v2 client:v3];

  return v4;
}

- (void)registerPresentationIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  kdebug_trace();
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = [v6 stringWithSiriPresentationIdentifier:{objc_msgSend(identifierCopy, "siriPresentationIdentifier")}];
    *buf = 136315650;
    v14 = "[SASPresentationServer registerPresentationIdentifier:]";
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s %p #activation registerPresentationIdentifier:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SASPresentationServer_registerPresentationIdentifier___block_invoke;
  v10[3] = &unk_1E82F37D0;
  objc_copyWeak(&v12, buf);
  v9 = identifierCopy;
  v11 = v9;
  SiriInvokeOnMainQueue(v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __56__SASPresentationServer_registerPresentationIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) siriPresentationIdentifier];
    [v5 setPresentationIdentifier:v3];
    v4 = +[SiriActivationService service];
    [v4 registerSiriPresentation:v5 withIdentifier:v3];

    WeakRetained = v5;
  }
}

- (void)unregisterPresentationIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  kdebug_trace();
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[SASPresentationServer unregisterPresentationIdentifier:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s %p #activation unregisterPresentationIdentifier:%@", buf, 0x20u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SASPresentationServer_unregisterPresentationIdentifier___block_invoke;
  v7[3] = &unk_1E82F3A08;
  v8 = identifierCopy;
  v6 = identifierCopy;
  SiriInvokeOnMainQueue(v7);
}

void __58__SASPresentationServer_unregisterPresentationIdentifier___block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 unregisterSiriPresentationIdentifier:{objc_msgSend(*(a1 + 32), "siriPresentationIdentifier")}];
}

- (void)willDismiss
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SASPresentationServer willDismiss]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %p #activation willDismiss", buf, 0x16u);
  }

  presentationIdentifier = [(SASPresentationServer *)self presentationIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SASPresentationServer_willDismiss__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = presentationIdentifier;
  SiriInvokeOnMainQueue(v5);
}

void __36__SASPresentationServer_willDismiss__block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationWillDismissWithIdentifier:*(a1 + 32)];
}

- (void)didDismiss
{
  v10 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SASPresentationServer didDismiss]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %p #activation didDismiss", buf, 0x16u);
  }

  presentationIdentifier = [(SASPresentationServer *)self presentationIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SASPresentationServer_didDismiss__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = presentationIdentifier;
  SiriInvokeOnMainQueue(v5);
}

void __35__SASPresentationServer_didDismiss__block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationDismissedWithIdentifier:*(a1 + 32)];
}

- (void)resetSiriToActive
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SASPresentationServer resetSiriToActive]";
    v6 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %p #activation resetSiriToActive", &v4, 0x16u);
  }

  [(SASPresentationServer *)self didPresentSiri];
}

- (void)failedToPresentSiriWithError:(id)error
{
  errorCopy = error;
  kdebug_trace();
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [SASPresentationServer failedToPresentSiriWithError:];
  }

  presentationIdentifier = [(SASPresentationServer *)self presentationIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SASPresentationServer_failedToPresentSiriWithError___block_invoke;
  v7[3] = &unk_1E82F3A30;
  v8 = errorCopy;
  v9 = presentationIdentifier;
  v6 = errorCopy;
  SiriInvokeOnMainQueue(v7);
}

void __54__SASPresentationServer_failedToPresentSiriWithError___block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationFailureWithIdentifier:*(a1 + 40) error:*(a1 + 32)];
}

- (void)didUpdatePresentationState:(id)state
{
  v15 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[SASPresentationServer didUpdatePresentationState:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = stateCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s %p #activation Presentation state did update: %@", buf, 0x20u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SASPresentationServer_didUpdatePresentationState___block_invoke;
  v7[3] = &unk_1E82F3A08;
  v8 = stateCopy;
  v6 = stateCopy;
  SiriInvokeOnMainQueue(v7);
}

void __52__SASPresentationServer_didUpdatePresentationState___block_invoke(uint64_t a1)
{
  v2 = +[SiriActivationService service];
  [v2 siriPresentationDidUpdateState:*(a1 + 32)];
}

- (void)didUpdatePresentationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[SiriActivationService service];
  [v4 siriPresentationDidUpdatePresentationConfiguration:configurationCopy];
}

void __56__SASPresentationServer_speechRequestStartedFromSiriOrb__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SASPresentationServer speechRequestStartedFromSiriOrb]_block_invoke";
    _os_log_impl(&dword_1C8137000, v0, OS_LOG_TYPE_DEFAULT, "%s #activation Shell indicates that speech request was started via Siri orb", &v2, 0xCu);
  }

  v1 = +[SiriActivationService service];
  [v1 speechRequestStateDidChange:1];
}

void __58__SASPresentationServer_speechRequestCancelledFromSiriOrb__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[SASPresentationServer speechRequestCancelledFromSiriOrb]_block_invoke";
    _os_log_impl(&dword_1C8137000, v0, OS_LOG_TYPE_DEFAULT, "%s #activation Shell indicates that speech request was cancelled via Siri orb", &v2, 0xCu);
  }

  v1 = +[SiriActivationService service];
  [v1 speechRequestStateDidChange:2];
}

- (id)allBulletins
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SASPresentationServer allBulletins]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation allBulletins", &v6, 0xCu);
  }

  v3 = +[SiriActivationService service];
  allBulletins = [v3 allBulletins];

  return allBulletins;
}

- (id)bulletinsOnLockScreen
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SASPresentationServer bulletinsOnLockScreen]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation bulletinsOnLockScreen", &v6, 0xCu);
  }

  v3 = +[SiriActivationService service];
  bulletinsOnLockScreen = [v3 bulletinsOnLockScreen];

  return bulletinsOnLockScreen;
}

- (id)bulletinForIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SASPresentationServer bulletinForIdentifier:]";
    v10 = 2112;
    v11 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation bulletinForIdentifier: %@", &v8, 0x16u);
  }

  v5 = +[SiriActivationService service];
  v6 = [v5 bulletinForIdentifier:identifierCopy];

  return v6;
}

- (SASPresentationServerDelegate)weak_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_delegate);

  return WeakRetained;
}

- (void)init
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v3 = v0;
  _os_log_debug_impl(&dword_1C8137000, v1, OS_LOG_TYPE_DEBUG, "%s %p", v2, 0x16u);
}

- (void)_setConnection:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 bundleIdentifier];
  v8[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v9 = a1;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_1C8137000, v5, OS_LOG_TYPE_ERROR, "%s %p #activation Unable to establish connection to un-entitled remote process: %@", v8, 0x20u);
}

- (void)failedToPresentSiriWithError:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  v5 = 2112;
  v6 = v1;
  _os_log_error_impl(&dword_1C8137000, v2, OS_LOG_TYPE_ERROR, "%s %p #activation Shell indicates Siri presentation failed : %@", v3, 0x20u);
}

@end