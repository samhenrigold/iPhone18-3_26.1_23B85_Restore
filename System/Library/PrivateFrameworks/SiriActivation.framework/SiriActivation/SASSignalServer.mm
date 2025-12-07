@interface SASSignalServer
+ (id)interface;
+ (id)serverForConnection:(id)connection;
+ (void)_unregisterConnection:(id)connection;
- (SASSignalServerDelegate)weak_delegate;
- (void)_activationRequestFromDirectActionEventWithContext:(id)context completion:(id)completion;
- (void)_registerSourceForIdentifier:(id)identifier;
- (void)_setConnection:(id)connection;
- (void)_unregisterSourceForIdentifier:(id)identifier;
- (void)activationRequestFromBluetoothKeyboardActivation:(id)activation;
- (void)activationRequestFromBreadcrumb;
- (void)activationRequestFromButtonIdentifier:(id)identifier context:(id)context;
- (void)activationRequestFromContinuityWithContext:(id)context;
- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)context;
- (void)activationRequestFromSimpleActivation:(id)activation;
- (void)activationRequestFromSpotlightWithContext:(id)context;
- (void)activationRequestFromTestingWithContext:(id)context;
- (void)activationRequestFromTostadaWithContext:(id)context;
- (void)activationRequestFromVocalShortcutWithContext:(id)context;
- (void)buttonDownFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context;
- (void)buttonLongPressFromButtonIdentifier:(id)identifier context:(id)context;
- (void)buttonTapFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context;
- (void)buttonUpFromButtonIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(id)timestamp context:(id)context;
- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)cancelPrewarmFromButtonIdentifier:(id)identifier;
- (void)deactivationRequestFromButtonIdentifier:(id)identifier context:(id)context options:(id)options;
- (void)prewarmForFirstTapOfQuickTypeToSiriGesture;
- (void)prewarmFromButtonIdentifier:(id)identifier;
- (void)prewarmFromButtonIdentifier:(id)identifier longPressInterval:(id)interval;
- (void)prewarmWithRequest:(id)request;
- (void)registerAssertionWithIdentifier:(id)identifier reason:(id)reason;
- (void)registerButtonEventListenerWithIdentifier:(id)identifier;
- (void)registerButtonIdentifier:(id)identifier withUUID:(id)d;
- (void)registerNonButtonSourceWithType:(id)type withUUID:(id)d;
- (void)setHintGlowAssertionFromButtonIdentifier:(id)identifier context:(id)context;
- (void)specifySenderForInstrumentation:(id)instrumentation;
- (void)unregisterAssertionWithIdentifier:(id)identifier;
- (void)unregisterButtonEventListenerWithIdentifier:(id)identifier;
- (void)unregisterButtonIdentifier:(id)identifier withUUID:(id)d;
- (void)unregisterNonButtonSourceWithType:(id)type withUUID:(id)d;
@end

@implementation SASSignalServer

+ (id)interface
{
  v2 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3AC8];
  v3 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F47E3B28];
  v4 = [MEMORY[0x1E698F4E8] interfaceWithServer:v2 client:v3];

  return v4;
}

+ (id)serverForConnection:(id)connection
{
  v20 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v4 = [serversByConnection_0 objectForKey:connectionCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(SASSignalServer);
    v5 = MEMORY[0x1E698D0A0];
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AF00];
      v8 = v6;
      currentThread = [v7 currentThread];
      v16 = 136315394;
      v17 = "+[SASSignalServer serverForConnection:]";
      v18 = 2048;
      qualityOfService = [currentThread qualityOfService];
      _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock about to lock with qos: %zd", &v16, 0x16u);
    }

    os_unfair_lock_lock(&lock_0);
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "+[SASSignalServer serverForConnection:]";
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock successfully locked", &v16, 0xCu);
    }

    v11 = serversByConnection_0;
    if (!serversByConnection_0)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:4];
      v13 = serversByConnection_0;
      serversByConnection_0 = v12;

      v11 = serversByConnection_0;
    }

    [v11 setObject:v4 forKey:connectionCopy];
    os_unfair_lock_unlock(&lock_0);
    v14 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "+[SASSignalServer serverForConnection:]";
      _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock unlocked", &v16, 0xCu);
    }

    [(SASSignalServer *)v4 _setConnection:connectionCopy];
  }

  return v4;
}

- (void)_setConnection:(id)connection
{
  v16 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v6 = [remoteProcess hasEntitlement:@"com.apple.siri.activation.service"];
  if (!remoteProcess || (v6 & 1) != 0)
  {
    connection = [(SASSignalServer *)self connection];
    if (connection)
    {
    }

    else if (![(SASSignalServer *)self invalidated])
    {
      [(SASSignalServer *)self setConnection:connectionCopy];
      connection = self->_connection;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __34__SASSignalServer__setConnection___block_invoke;
      v11[3] = &unk_1E82F4B00;
      v11[4] = self;
      [(BSServiceConnectionHost *)connection configureConnection:v11];
      [(BSServiceConnectionHost *)self->_connection activate];
      goto LABEL_11;
    }

    v9 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[SASSignalServer _setConnection:]";
      v14 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s Unexpectedly attempted to assign a new connection to the activation server with an existing connection: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SASSignalServer *)self _setConnection:v7, remoteProcess];
    }
  }

  [connectionCopy invalidate];
LABEL_11:
}

void __34__SASSignalServer__setConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SASSignalServer serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SASSignalServer interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __34__SASSignalServer__setConnection___block_invoke_2;
  v9 = &unk_1E82F39B8;
  objc_copyWeak(&v10, &location);
  [v3 setInvalidationHandler:&v6];
  [v3 setInterruptionHandler:{&__block_literal_global_26, v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __34__SASSignalServer__setConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[7];
    v7 = *MEMORY[0x1E698D0A0];
    v8 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = v5[7];
        *v13 = 136315650;
        *&v13[4] = "[SASSignalServer _setConnection:]_block_invoke_2";
        *&v13[12] = 2112;
        *&v13[14] = v3;
        *&v13[22] = 2112;
        v14 = v9;
        v10 = "%s #activation Invalidating connection - %@ as client %@ terminated";
        v11 = v7;
        v12 = 32;
LABEL_7:
        _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, v10, v13, v12);
      }
    }

    else if (v8)
    {
      *v13 = 136315394;
      *&v13[4] = "[SASSignalServer _setConnection:]_block_invoke";
      *&v13[12] = 2112;
      *&v13[14] = v3;
      v10 = "%s #activation Invalidating connection - %@";
      v11 = v7;
      v12 = 22;
      goto LABEL_7;
    }

    [SASSignalServer _unregisterConnection:v3, *v13, *&v13[8], v14];
  }
}

void __34__SASSignalServer__setConnection___block_invoke_23(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = serversByConnection_0;
    v5 = v3;
    v6 = [v4 objectForKey:a2];
    v7 = 136315394;
    v8 = "[SASSignalServer _setConnection:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation interrupted signalserver: %@", &v7, 0x16u);
  }
}

+ (void)_unregisterConnection:(id)connection
{
  v18 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AF00];
    v7 = v5;
    currentThread = [v6 currentThread];
    v14 = 136315394;
    v15 = "+[SASSignalServer _unregisterConnection:]";
    v16 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock about to lock with qos: %zd", &v14, 0x16u);
  }

  os_unfair_lock_lock(&lock_0);
  v9 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "+[SASSignalServer _unregisterConnection:]";
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock successfully locked", &v14, 0xCu);
  }

  v10 = [serversByConnection_0 objectForKey:connectionCopy];
  v11 = +[SiriActivationService service];
  assertionClientIdentifier = [v10 assertionClientIdentifier];
  [v11 unregisterActivationAssertionWithIdentifier:assertionClientIdentifier];

  [serversByConnection_0 removeObjectForKey:connectionCopy];
  os_unfair_lock_unlock(&lock_0);
  v13 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "+[SASSignalServer _unregisterConnection:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy lock unlocked", &v14, 0xCu);
  }
}

- (void)_registerSourceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SiriActivationService service];
  [v5 registerActivationSource:self withIdentifier:identifierCopy];
}

- (void)_unregisterSourceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SiriActivationService service];
  [v4 unregisterActivationSourceIdentifier:identifierCopy];
}

- (void)registerButtonIdentifier:(id)identifier withUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    connection = [(SASSignalServer *)self connection];
    remoteProcess = [connection remoteProcess];
    bundleIdentifier = [remoteProcess bundleIdentifier];
    v13 = 136315906;
    v14 = "[SASSignalServer registerButtonIdentifier:withUUID:]";
    v15 = 2112;
    v16 = identifierCopy;
    v17 = 2112;
    v18 = dCopy;
    v19 = 2112;
    v20 = bundleIdentifier;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Button identifier %@ with uuid '%@' registered by %@", &v13, 0x2Au);
  }

  -[SASSignalServer setButtonSourceIdentifier:](self, "setButtonSourceIdentifier:", [identifierCopy siriButtonIdentifier]);
  [(SASSignalServer *)self _registerSourceForIdentifier:dCopy];
}

- (void)unregisterButtonIdentifier:(id)identifier withUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    connection = [(SASSignalServer *)self connection];
    remoteProcess = [connection remoteProcess];
    bundleIdentifier = [remoteProcess bundleIdentifier];
    v13 = 136315906;
    v14 = "[SASSignalServer unregisterButtonIdentifier:withUUID:]";
    v15 = 2112;
    v16 = identifierCopy;
    v17 = 2112;
    v18 = dCopy;
    v19 = 2112;
    v20 = bundleIdentifier;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Button identifier %@ with uuid '%@' unregistered by %@", &v13, 0x2Au);
  }

  [(SASSignalServer *)self setButtonSourceIdentifier:0];
  [(SASSignalServer *)self _unregisterSourceForIdentifier:dCopy];
}

- (void)registerNonButtonSourceWithType:(id)type withUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    connection = [(SASSignalServer *)self connection];
    remoteProcess = [connection remoteProcess];
    bundleIdentifier = [remoteProcess bundleIdentifier];
    v13 = 136315906;
    v14 = "[SASSignalServer registerNonButtonSourceWithType:withUUID:]";
    v15 = 2112;
    v16 = typeCopy;
    v17 = 2112;
    v18 = dCopy;
    v19 = 2112;
    v20 = bundleIdentifier;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Non-button source of type %@ with uuid '%@' registered by %@", &v13, 0x2Au);
  }

  [(SASSignalServer *)self _registerSourceForIdentifier:dCopy];
}

- (void)unregisterNonButtonSourceWithType:(id)type withUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    connection = [(SASSignalServer *)self connection];
    remoteProcess = [connection remoteProcess];
    bundleIdentifier = [remoteProcess bundleIdentifier];
    v13 = 136315906;
    v14 = "[SASSignalServer unregisterNonButtonSourceWithType:withUUID:]";
    v15 = 2112;
    v16 = typeCopy;
    v17 = 2112;
    v18 = dCopy;
    v19 = 2112;
    v20 = bundleIdentifier;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation Non-button source of type %@ with uuid '%@' unregistered by %@", &v13, 0x2Au);
  }

  [(SASSignalServer *)self _unregisterSourceForIdentifier:dCopy];
}

- (void)activationRequestFromButtonIdentifier:(id)identifier context:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  kdebug_trace();
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SASSignalServer activationRequestFromButtonIdentifier:context:]";
    v11 = 2112;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromButtonIdentifier:%@ context:%@", &v9, 0x20u);
  }

  v8 = +[SiriActivationService service];
  [v8 activationRequestFromButtonIdentifier:objc_msgSend(identifierCopy context:{"siriButtonIdentifier"), contextCopy}];
}

- (void)deactivationRequestFromButtonIdentifier:(id)identifier context:(id)context options:(id)options
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  optionsCopy = options;
  v10 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SASSignalServer deactivationRequestFromButtonIdentifier:context:options:]";
    v14 = 2112;
    v15 = identifierCopy;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation deactivationRequestFromButtonIdentifier:%@ context:%@", &v12, 0x20u);
  }

  v11 = +[SiriActivationService service];
  [v11 deactivationRequestFromButtonIdentifier:objc_msgSend(identifierCopy context:"siriButtonIdentifier") options:{contextCopy, optionsCopy}];
}

- (void)_activationRequestFromDirectActionEventWithContext:(id)context completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  kdebug_trace();
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[SASSignalServer _activationRequestFromDirectActionEventWithContext:completion:]";
    v25 = 2112;
    v26 = contextCopy;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation _activationRequestFromDirectActionEventWithContext:%@", &v23, 0x16u);
  }

  payload = [(SiriDirectActionContext *)contextCopy payload];
  if (payload)
  {
    v11 = payload;
    payload2 = [(SiriDirectActionContext *)contextCopy payload];
    allKeys = [payload2 allKeys];
    v14 = [allKeys containsObject:@"SBSAssistantActivationContextBundleID"];

    if ((v14 & 1) == 0)
    {
      connection = [(SASSignalServer *)self connection];
      remoteProcess = [connection remoteProcess];
      bundleIdentifier = [remoteProcess bundleIdentifier];

      v18 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315394;
        v24 = "[SASSignalServer _activationRequestFromDirectActionEventWithContext:completion:]";
        v25 = 2112;
        v26 = bundleIdentifier;
        _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation _activationRequestFromDirectActionEventWithContext payload missing bundleId, using connection bundle id:%@", &v23, 0x16u);
      }

      payload3 = [(SiriDirectActionContext *)contextCopy payload];
      v20 = [payload3 mutableCopy];

      [v20 setValue:bundleIdentifier forKey:@"SBSAssistantActivationContextBundleID"];
      v21 = [[SiriDirectActionContext alloc] initWithPayload:v20];

      contextCopy = v21;
    }
  }

  v22 = +[SiriActivationService service];
  [v22 activationRequestFromDirectActionEventWithContext:contextCopy completion:completionCopy];
}

- (void)activationRequestFromContinuityWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer activationRequestFromContinuityWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromContinuityWithContext:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromContinuityWithContext:contextCopy];
}

- (void)activationRequestFromRemotePresentationBringUpWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer activationRequestFromRemotePresentationBringUpWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromRemotePresentationBringUpWithContext:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromRemotePresentationBringUpWithContext:contextCopy];
}

- (void)activationRequestFromBreadcrumb
{
  v6 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SASSignalServer activationRequestFromBreadcrumb]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromBreadcrumb", &v4, 0xCu);
  }

  v3 = +[SiriActivationService service];
  [v3 activationRequestFromBreadcrumb];
}

- (void)activationRequestFromBluetoothKeyboardActivation:(id)activation
{
  v8 = *MEMORY[0x1E69E9840];
  activationCopy = activation;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SASSignalServer activationRequestFromBluetoothKeyboardActivation:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromBluetoothKeyboardActivation", &v6, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromBluetoothKeyboardActivation:{objc_msgSend(activationCopy, "integerValue")}];
}

- (void)activationRequestFromSimpleActivation:(id)activation
{
  v8 = *MEMORY[0x1E69E9840];
  activationCopy = activation;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SASSignalServer activationRequestFromSimpleActivation:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSimpleActivation", &v6, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromSimpleActivation:{objc_msgSend(activationCopy, "integerValue")}];
}

- (void)activationRequestFromSpotlightWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer activationRequestFromSpotlightWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromSpotlightWithContext:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromSpotlightWithContext:contextCopy];
}

- (void)activationRequestFromTestingWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer activationRequestFromTestingWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTestingWithContext:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromTestingWithContext:contextCopy];
}

- (void)activationRequestFromVocalShortcutWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer activationRequestFromVocalShortcutWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromVocalShortcutWithContext:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromVocalShortcutWithContext:contextCopy];
}

- (void)activationRequestFromTostadaWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer activationRequestFromTostadaWithContext:]";
    v8 = 2112;
    v9 = contextCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation activationRequestFromTostadaWithContext:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 activationRequestFromTostadaWithContext:contextCopy];
}

- (void)setHintGlowAssertionFromButtonIdentifier:(id)identifier context:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SASSignalServer setHintGlowAssertionFromButtonIdentifier:context:]";
    v11 = 2112;
    v12 = identifierCopy;
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation setHintGlowAssertionFromButtonIdentifier: %@, context: %@", &v9, 0x20u);
  }

  v8 = +[SiriActivationService service];
  [v8 setHintGlowAssertionFromButtonIdentifier:objc_msgSend(identifierCopy context:{"siriButtonIdentifier"), contextCopy}];
}

- (void)prewarmFromButtonIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer prewarmFromButtonIdentifier:]";
    v8 = 2112;
    v9 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s prewarmFromButtonIdentifier:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 prewarmFromButtonIdentifier:objc_msgSend(identifierCopy longPressInterval:{"siriButtonIdentifier"), 0.0}];
}

- (void)prewarmFromButtonIdentifier:(id)identifier longPressInterval:(id)interval
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  intervalCopy = interval;
  kdebug_trace();
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[SASSignalServer prewarmFromButtonIdentifier:longPressInterval:]";
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s prewarmFromButtonIdentifier:%@", &v12, 0x16u);
  }

  v8 = +[SiriActivationService service];
  siriButtonIdentifier = [identifierCopy siriButtonIdentifier];
  [intervalCopy timeInterval];
  v11 = v10;

  [v8 prewarmFromButtonIdentifier:siriButtonIdentifier longPressInterval:v11];
}

- (void)cancelPrewarmFromButtonIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer cancelPrewarmFromButtonIdentifier:]";
    v8 = 2112;
    v9 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s cancelPrewarmFromButtonIdentifier:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 cancelPrewarmFromButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier")}];
}

- (void)buttonDownFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  contextCopy = context;
  kdebug_trace();
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "[SASSignalServer buttonDownFromButtonIdentifier:timestamp:context:]";
    v28 = 2112;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = timestampCopy;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s buttonDownFromButtonIdentifier:%@ timestamp:%@", buf, 0x20u);
  }

  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier", @"eventSource"}];
    v25 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    mEMORY[0x1E698D0C8] = [MEMORY[0x1E698D0C8] sharedAnalytics];
    v17 = AFAnalyticsEventCreateCurrent();
    [mEMORY[0x1E698D0C8] logEvent:v17];

    activationInstrumentation = self->_activationInstrumentation;
    v19 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier")}];
    v20 = [(SASActivationInstrumentation *)activationInstrumentation buttonDownWithIdentifier:v19];

    [contextCopy setActivationEventInstrumentationIdentifier:v20];
    siriButtonIdentifier = [identifierCopy siriButtonIdentifier];
    if (siriButtonIdentifier - 1) <= 8 && ((0x173u >> (siriButtonIdentifier - 1)))
    {
      kdebug_trace();
    }
  }

  v22 = +[SiriActivationService service];
  siriButtonIdentifier2 = [identifierCopy siriButtonIdentifier];
  [timestampCopy timeInterval];
  [v22 buttonDownFromButtonIdentifier:siriButtonIdentifier2 timestamp:contextCopy context:?];
}

- (void)buttonUpFromButtonIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier timestamp:(id)timestamp context:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  contextCopy = context;
  deviceIdentifierCopy = deviceIdentifier;
  kdebug_trace();
  v14 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[SASSignalServer buttonUpFromButtonIdentifier:deviceIdentifier:timestamp:context:]";
    v31 = 2112;
    v32 = identifierCopy;
    v33 = 2112;
    v34 = timestampCopy;
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s buttonUpFromButtonIdentifier:%@ timestamp:%@", buf, 0x20u);
  }

  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier", @"eventSource"}];
    v28 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    mEMORY[0x1E698D0C8] = [MEMORY[0x1E698D0C8] sharedAnalytics];
    v20 = AFAnalyticsEventCreateCurrent();
    [mEMORY[0x1E698D0C8] logEvent:v20];

    activationInstrumentation = self->_activationInstrumentation;
    v22 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier")}];
    v23 = [(SASActivationInstrumentation *)activationInstrumentation buttonUpWithIdentifier:v22];

    [contextCopy setActivationEventInstrumentationIdentifier:v23];
    siriButtonIdentifier = [identifierCopy siriButtonIdentifier];
    if (siriButtonIdentifier - 1) <= 8 && ((0x173u >> (siriButtonIdentifier - 1)))
    {
      kdebug_trace();
    }
  }

  v25 = +[SiriActivationService service];
  siriButtonIdentifier2 = [identifierCopy siriButtonIdentifier];
  [timestampCopy timeInterval];
  [v25 buttonUpFromButtonIdentifier:siriButtonIdentifier2 deviceIdentifier:deviceIdentifierCopy timestamp:contextCopy context:?];
}

- (void)buttonTapFromButtonIdentifier:(id)identifier timestamp:(id)timestamp context:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  timestampCopy = timestamp;
  kdebug_trace();
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[SASSignalServer buttonTapFromButtonIdentifier:timestamp:context:]";
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s buttonTapFromButtonIdentifier:%@", &v19, 0x16u);
  }

  activationInstrumentation = self->_activationInstrumentation;
  v13 = [MEMORY[0x1E696AEC0] stringWithSiriButtonIdentifier:{objc_msgSend(identifierCopy, "siriButtonIdentifier")}];
  v14 = [(SASActivationInstrumentation *)activationInstrumentation buttonTapWithIdentifier:v13 associateWithButtonDown:1];

  [contextCopy setActivationEventInstrumentationIdentifier:v14];
  v15 = +[SiriActivationService service];
  siriButtonIdentifier = [identifierCopy siriButtonIdentifier];
  [timestampCopy timeInterval];
  v18 = v17;

  [v15 buttonTapFromButtonIdentifier:siriButtonIdentifier timestamp:contextCopy context:v18];
}

- (void)buttonLongPressFromButtonIdentifier:(id)identifier context:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contextCopy = context;
  kdebug_trace();
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[SASSignalServer buttonLongPressFromButtonIdentifier:context:]";
    v13 = 2112;
    v14 = identifierCopy;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s buttonLongPressFromButtonIdentifier:%@ context:%@", &v11, 0x20u);
  }

  mostRecentAtivationEvenIdentifier = [(SASActivationInstrumentation *)self->_activationInstrumentation mostRecentAtivationEvenIdentifier];
  [contextCopy setActivationEventInstrumentationIdentifier:mostRecentAtivationEvenIdentifier];

  v10 = +[SiriActivationService service];
  [v10 buttonLongPressFromButtonIdentifier:objc_msgSend(identifierCopy context:{"siriButtonIdentifier"), contextCopy}];
}

- (void)prewarmForFirstTapOfQuickTypeToSiriGesture
{
  v6 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SASSignalServer prewarmForFirstTapOfQuickTypeToSiriGesture]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation #quickTypeGate prewarm", &v4, 0xCu);
  }

  v3 = +[SiriActivationService service];
  [v3 prewarmForFirstTapOfQuickTypeToSiriGesture];
}

- (void)prewarmWithRequest:(id)request
{
  v8 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  kdebug_trace();
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SASSignalServer prewarmWithRequest:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #activation prewarm", &v6, 0xCu);
  }

  v5 = +[SiriActivationService service];
  [v5 prewarmWithRequest:requestCopy];
}

- (void)cancelPrewarmForFirstTapOfQuickTypeToSiriGesture
{
  v6 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SASSignalServer cancelPrewarmForFirstTapOfQuickTypeToSiriGesture]";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s #activation #quickTypeGate cancel prewarm", &v4, 0xCu);
  }

  v3 = +[SiriActivationService service];
  [v3 cancelPrewarmForFirstTapOfQuickTypeToSiriGesture];
}

- (void)specifySenderForInstrumentation:(id)instrumentation
{
  v13 = *MEMORY[0x1E69E9840];
  instrumentationCopy = instrumentation;
  v5 = [[SASActivationInstrumentation alloc] initWithSender:instrumentationCopy];

  activationInstrumentation = self->_activationInstrumentation;
  self->_activationInstrumentation = v5;

  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_activationInstrumentation;
    v9 = 136315394;
    v10 = "[SASSignalServer specifySenderForInstrumentation:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@", &v9, 0x16u);
  }
}

- (void)registerAssertionWithIdentifier:(id)identifier reason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  reasonCopy = reason;
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SASSignalServer registerAssertionWithIdentifier:reason:]";
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = reasonCopy;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation registerAssertionWithIdentifier:%@ reason:%@", &v10, 0x20u);
  }

  v9 = +[SiriActivationService service];
  [v9 registerActivationAssertion:self withIdentifier:identifierCopy];

  [(SASSignalServer *)self setAssertionClientIdentifier:identifierCopy];
}

- (void)unregisterAssertionWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer unregisterAssertionWithIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #activation unregisterAssertionWithIdentifier:%@", &v7, 0x16u);
  }

  v6 = +[SiriActivationService service];
  [v6 unregisterActivationAssertionWithIdentifier:identifierCopy];

  [(SASSignalServer *)self setAssertionClientIdentifier:0];
}

- (void)registerButtonEventListenerWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SASSignalServer registerButtonEventListenerWithIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s registerButtonEventListenerWithIdentifier:%@", &v7, 0x16u);
  }

  v6 = +[SiriActivationService service];
  [v6 registerButtonEventListenerServer:self identifier:identifierCopy];
}

- (void)unregisterButtonEventListenerWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSignalServer unregisterButtonEventListenerWithIdentifier:]";
    v8 = 2112;
    v9 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s unregisterButtonEventListenerWithIdentifier:%@", &v6, 0x16u);
  }

  v5 = +[SiriActivationService service];
  [v5 unregisterButtonEventListenerWithIdentifier:identifierCopy];
}

- (SASSignalServerDelegate)weak_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_delegate);

  return WeakRetained;
}

- (void)_setConnection:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 bundleIdentifier];
  v7 = 136315650;
  v8 = "[SASSignalServer _setConnection:]";
  v9 = 2048;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_1C8137000, v5, OS_LOG_TYPE_ERROR, "%s %p #activation Unable to establish connection to un-entitled remote process: %@", &v7, 0x20u);
}

@end