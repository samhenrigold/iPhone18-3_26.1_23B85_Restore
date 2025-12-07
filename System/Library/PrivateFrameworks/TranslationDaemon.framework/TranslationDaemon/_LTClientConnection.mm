@interface _LTClientConnection
- (_LTClientConnection)initWithConnection:(id)connection server:(id)server trusted:(BOOL)trusted;
- (_LTClientConnectionDelegate)delegate;
- (void)assetRequestHandler:(id)handler;
- (void)cancelLanguageStatusChangeObservation:(id)observation;
- (void)cleanupOnDisconnect;
- (void)languageForText:(id)text completion:(id)completion;
- (void)languagesForText:(id)text usingModel:(unint64_t)model strategy:(unint64_t)strategy completion:(id)completion;
- (void)logRequestOfType:(id)type context:(id)context;
- (void)logWithRequestData:(id)data;
- (void)onDeviceModeEnabled:(id)enabled;
- (void)onDeviceModeSupported:(id)supported;
- (void)preheatWithContext:(id)context completion:(id)completion;
- (void)selfLoggingEventWithData:(id)data;
- (void)selfLoggingInvocationStartedWithData:(id)data invocationStartedTier1Data:(id)tier1Data;
- (void)speak:(id)speak withContext:(id)context completion:(id)completion;
- (void)startInstallRequest:(id)request;
- (void)startLanguageStatusChangeObservation:(id)observation taskHint:(int64_t)hint completion:(id)completion;
- (void)startSpeechTranslationWithContext:(id)context;
- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text;
- (void)translate:(id)translate withContext:(id)context completion:(id)completion;
- (void)translateParagraphs:(id)paragraphs withContext:(id)context completion:(id)completion;
- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion;
- (void)translateStreamingInput:(id)input withContext:(id)context completion:(id)completion;
@end

@implementation _LTClientConnection

- (void)cleanupOnDisconnect
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_speechSessionID)
  {
    v3 = _LTOSLogXPC(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Client disconnected, ask to cancel speech session", &v10, 2u);
    }

    [(_LTTranslationServer *)self->_server cancelSpeechSessionWithID:self->_speechSessionID];
  }

  v4 = self->_languageStatusSessionID;
  v6 = v4;
  if (v4)
  {
    v7 = _LTOSLogAssetObservation(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      trustedClientIdentifier = self->_trustedClientIdentifier;
      v10 = 138543618;
      v11 = trustedClientIdentifier;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling status updates because disconnecting from client %{public}@; identifier: %{public}@", &v10, 0x16u);
    }

    [_LTDLanguageAssetService cancelLanguageStatusSession:v6];
  }

  delegate = [(_LTClientConnection *)self delegate];
  [delegate clientConnectionClosed:self];
}

- (_LTClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTClientConnection)initWithConnection:(id)connection server:(id)server trusted:(BOOL)trusted
{
  trustedCopy = trusted;
  connectionCopy = connection;
  serverCopy = server;
  v33.receiver = self;
  v33.super_class = _LTClientConnection;
  v11 = [(_LTClientConnection *)&v33 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connection, connection);
    objc_storeStrong(&v12->_server, server);
    v12->_trusted = trustedCopy;
    v15 = _LTOSLogXPC(v13, v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (trustedCopy)
    {
      if (v16)
      {
        [_LTClientConnection initWithConnection:server:trusted:];
      }

      v17 = _LTTranslationServiceXPCInterface();
    }

    else
    {
      if (v16)
      {
        [_LTClientConnection initWithConnection:server:trusted:];
      }

      v17 = _LTTextTranslationServiceXPCInterface();
    }

    v18 = v17;
    [connectionCopy setExportedInterface:v17];

    [connectionCopy setExportedObject:v12];
    v19 = _LTTranslationServiceDelegateXPCInterface();
    [connectionCopy setRemoteObjectInterface:v19];

    objc_initWeak(&location, v12);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __57___LTClientConnection_initWithConnection_server_trusted___block_invoke;
    v30[3] = &unk_2789B53F0;
    objc_copyWeak(&v31, &location);
    v20 = MEMORY[0x238398770](v30);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57___LTClientConnection_initWithConnection_server_trusted___block_invoke_2;
    v28[3] = &unk_2789B5418;
    v21 = v20;
    v29 = v21;
    [connectionCopy setInterruptionHandler:v28];
    [connectionCopy setInvalidationHandler:v21];
    v22 = [connectionCopy valueForEntitlement:@"application-identifier"];
    v24 = _LTOSLogXPC(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [_LTClientConnection initWithConnection:v22 server:v24 trusted:?];
    }

    trustedClientIdentifier = v12->_trustedClientIdentifier;
    v12->_trustedClientIdentifier = &v22->isa;

    v26 = v12;
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)translateSentence:(id)sentence withContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  sentenceCopy = sentence;
  [(_LTClientConnection *)self logRequestOfType:@"sentence" context:contextCopy];
  [contextCopy setTrustedClientIdentifier:self->_trustedClientIdentifier];
  [(_LTTranslationServer *)self->_server translateSentence:sentenceCopy withContext:contextCopy completion:completionCopy];
}

- (void)translate:(id)translate withContext:(id)context completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  contextCopy = context;
  completionCopy = completion;
  if (!self->_trusted)
  {
    sanitizedCopyForUntrustedTextTranslation = [contextCopy sanitizedCopyForUntrustedTextTranslation];

    contextCopy = sanitizedCopyForUntrustedTextTranslation;
  }

  [(_LTClientConnection *)self logRequestOfType:@"singleParagraph" context:contextCopy];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__0;
  v20[4] = __Block_byref_object_dispose__0;
  v21 = 0;
  [contextCopy setTrustedClientIdentifier:self->_trustedClientIdentifier];
  server = self->_server;
  v24[0] = translateCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56___LTClientConnection_translate_withContext_completion___block_invoke;
  v19[3] = &unk_2789B5440;
  v19[4] = v22;
  v19[5] = v20;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56___LTClientConnection_translate_withContext_completion___block_invoke_2;
  v15[3] = &unk_2789B5468;
  v17 = v20;
  v18 = v22;
  v14 = completionCopy;
  v16 = v14;
  [(_LTTranslationServer *)server translateParagraphs:v13 withContext:contextCopy paragraphResult:v19 completion:v15];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

- (void)translateParagraphs:(id)paragraphs withContext:(id)context completion:(id)completion
{
  paragraphsCopy = paragraphs;
  contextCopy = context;
  completionCopy = completion;
  if (!self->_trusted)
  {
    sanitizedCopyForUntrustedTextTranslation = [contextCopy sanitizedCopyForUntrustedTextTranslation];

    contextCopy = sanitizedCopyForUntrustedTextTranslation;
  }

  [(_LTClientConnection *)self logRequestOfType:@"paragraphs" context:contextCopy];
  [contextCopy setTrustedClientIdentifier:self->_trustedClientIdentifier];
  _clientDelegate = [(_LTClientConnection *)self _clientDelegate];
  server = self->_server;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66___LTClientConnection_translateParagraphs_withContext_completion___block_invoke;
  v15[3] = &unk_2789B5490;
  v16 = _clientDelegate;
  v14 = _clientDelegate;
  [(_LTTranslationServer *)server translateParagraphs:paragraphsCopy withContext:contextCopy paragraphResult:v15 completion:completionCopy];
}

- (void)translateStreamingInput:(id)input withContext:(id)context completion:(id)completion
{
  trustedClientIdentifier = self->_trustedClientIdentifier;
  completionCopy = completion;
  contextCopy = context;
  inputCopy = input;
  [contextCopy setTrustedClientIdentifier:trustedClientIdentifier];
  [(_LTClientConnection *)self logRequestOfType:@"stabilizationStreaming" context:contextCopy];
  [(_LTTranslationServer *)self->_server translateStreamingInput:inputCopy withContext:contextCopy completion:completionCopy];
}

- (void)speak:(id)speak withContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  speakCopy = speak;
  [(_LTClientConnection *)self logRequestOfType:@"tts" context:contextCopy];
  [contextCopy setTrustedClientIdentifier:self->_trustedClientIdentifier];
  _clientDelegate = [(_LTClientConnection *)self _clientDelegate];
  [(_LTTranslationServer *)self->_server speak:speakCopy withContext:contextCopy delegate:_clientDelegate completion:completionCopy];
}

- (void)startTextToSpeechTranslationWithContext:(id)context text:(id)text
{
  contextCopy = context;
  trustedClientIdentifier = self->_trustedClientIdentifier;
  textCopy = text;
  if ([(NSString *)trustedClientIdentifier isEqual:@"com.apple.TranslationUIServices.TranslationUIService"])
  {
    [contextCopy setTaskHint:5];
  }

  [(_LTClientConnection *)self logRequestOfType:@"text-to-speech" context:contextCopy];
  [contextCopy setTrustedClientIdentifier:self->_trustedClientIdentifier];
  _clientDelegate = [(_LTClientConnection *)self _clientDelegate];
  v9 = [(_LTTranslationServer *)self->_server startTextToSpeechTranslationWithContext:contextCopy text:textCopy delegate:_clientDelegate];

  speechSessionID = self->_speechSessionID;
  self->_speechSessionID = v9;
}

- (void)startSpeechTranslationWithContext:(id)context
{
  contextCopy = context;
  [(_LTClientConnection *)self logRequestOfType:@"speech" context:contextCopy];
  [contextCopy setTrustedClientIdentifier:self->_trustedClientIdentifier];
  _clientDelegate = [(_LTClientConnection *)self _clientDelegate];
  v5 = [(_LTTranslationServer *)self->_server startSpeechTranslationWithContext:contextCopy delegate:_clientDelegate];

  speechSessionID = self->_speechSessionID;
  self->_speechSessionID = v5;
}

- (void)preheatWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  [(_LTClientConnection *)self logRequestOfType:@"preheat" context:contextCopy];
  [contextCopy setTrustedClientIdentifier:self->_trustedClientIdentifier];
  [(_LTTranslationServer *)self->_server preheatWithContext:contextCopy completion:completionCopy];
}

- (void)languageForText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  [(_LTClientConnection *)self logRequestOfType:@"text-LID" context:0];
  [(_LTTranslationServer *)self->_server languageForText:textCopy completion:completionCopy];
}

- (void)languagesForText:(id)text usingModel:(unint64_t)model strategy:(unint64_t)strategy completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  v12 = [(_LTClientConnection *)self logRequestOfType:@"text-LID" context:0];
  v14 = _LTOSLogXPC(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "XPC languages for text call", v15, 2u);
  }

  [(_LTTranslationServer *)self->_server languagesForText:textCopy usingModel:model strategy:strategy completion:completionCopy];
}

- (void)logRequestOfType:(id)type context:(id)context
{
  v17[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  contextCopy = context;
  v8 = [[_LTAnalyticsEvent alloc] initWithName:@"TranslateRequest"];
  trustedClientIdentifier = self->_trustedClientIdentifier;
  if (trustedClientIdentifier)
  {
    clientIdentifier = trustedClientIdentifier;
  }

  else
  {
    clientIdentifier = [contextCopy clientIdentifier];
  }

  v11 = clientIdentifier;
  v12 = @"unknown";
  if (clientIdentifier)
  {
    v12 = clientIdentifier;
  }

  v16[0] = @"processName";
  v16[1] = @"type";
  v17[0] = v12;
  v17[1] = typeCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(_LTAnalyticsEvent *)v8 addFieldsFromDictionary:v13];

  [(_LTAnalyticsEvent *)v8 sendLazy];
  if (contextCopy)
  {
    route = [contextCopy route];
  }

  else
  {
    route = -1;
  }

  v15 = +[_LTPowerLogger sharedInstance];
  [v15 logTranslateRequestEvent:self->_trustedClientIdentifier requestType:typeCopy routeType:route];
}

- (void)assetRequestHandler:(id)handler
{
  handlerCopy = handler;
  _clientDelegate = [(_LTClientConnection *)self _clientDelegate];
  server = self->_server;
  assets = [handlerCopy assets];
  options = [handlerCopy options];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43___LTClientConnection_assetRequestHandler___block_invoke;
  v12[3] = &unk_2789B54B8;
  v13 = _clientDelegate;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43___LTClientConnection_assetRequestHandler___block_invoke_2;
  v10[3] = &unk_2789B54E0;
  v11 = v13;
  v9 = v13;
  [(_LTTranslationServer *)server setLanguageAssets:assets options:options progress:v12 completion:v10];
}

- (void)startLanguageStatusChangeObservation:(id)observation taskHint:(int64_t)hint completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  observationCopy = observation;
  completionCopy = completion;
  _clientDelegate = [(_LTClientConnection *)self _clientDelegate];
  objc_storeStrong(&self->_languageStatusSessionID, observation);
  trusted = self->_trusted;
  v13 = self->_trustedClientIdentifier;
  v15 = _LTOSLogAssetObservation(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    trustedClientIdentifier = self->_trustedClientIdentifier;
    v17 = completionCopy;
    v18 = trusted;
    v19 = self->_trusted;
    v20 = v15;
    v21 = _LTTranslationTaskHintString();
    *buf = 138478595;
    v36 = trustedClientIdentifier;
    v37 = 1024;
    v38 = v19;
    trusted = v18;
    completionCopy = v17;
    v39 = 2114;
    v40 = v21;
    v41 = 2114;
    v42 = observationCopy;
    _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_DEFAULT, "Starting language observations for client %{private}@; trusted: %{BOOL}i; taskHint: %{public}@; identifier: %{public}@", buf, 0x26u);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __80___LTClientConnection_startLanguageStatusChangeObservation_taskHint_completion___block_invoke;
  v31[3] = &unk_2789B5508;
  v32 = _clientDelegate;
  hintCopy = hint;
  v34 = trusted;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80___LTClientConnection_startLanguageStatusChangeObservation_taskHint_completion___block_invoke_2;
  v26[3] = &unk_2789B5530;
  v29 = completionCopy;
  hintCopy2 = hint;
  v27 = v13;
  v28 = observationCopy;
  v22 = observationCopy;
  v23 = v13;
  v24 = completionCopy;
  v25 = _clientDelegate;
  [_LTDLanguageAssetService startLanguageStatusSession:v22 taskHint:hint progress:trusted observations:v31 completion:v26];
}

- (void)cancelLanguageStatusChangeObservation:(id)observation
{
  v13 = *MEMORY[0x277D85DE8];
  observationCopy = observation;
  v5 = [_LTDLanguageAssetService cancelLanguageStatusSession:observationCopy];
  v7 = _LTOSLogAssetObservation(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    trustedClientIdentifier = self->_trustedClientIdentifier;
    v9 = 138543618;
    v10 = trustedClientIdentifier;
    v11 = 2114;
    v12 = observationCopy;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling language observations for client %{public}@; identifier: %{public}@", &v9, 0x16u);
  }
}

- (void)startInstallRequest:(id)request
{
  requestCopy = request;
  _clientDelegate = [(_LTClientConnection *)self _clientDelegate];
  [(_LTTranslationServer *)self->_server startInstallRequest:requestCopy delegate:_clientDelegate];
}

- (void)logWithRequestData:(id)data
{
  v5 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v7 = _LTLoggingRequestClasses();
  v14 = 0;
  v8 = [v5 unarchivedObjectOfClasses:v7 fromData:dataCopy error:&v14];

  v9 = v14;
  if (v9)
  {
    v12 = _LTOSLogXPC(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(_LTClientConnection *)v9 logWithRequestData:v12];
    }

    v13 = NSStringFromSelector(a2);
    _LTSendErrorEvent(v9, v13);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setProcessName:self->_trustedClientIdentifier];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setClientBundleID:self->_trustedClientIdentifier];
      }
    }

    [(_LTTranslationServer *)self->_server startLoggingRequest:v8];
  }
}

- (void)onDeviceModeEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6 = _LTOSLogXPC(enabledCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "XPC on-device mode call", v7, 2u);
  }

  [(_LTTranslationServer *)self->_server onDeviceModeEnabled:enabledCopy];
}

- (void)onDeviceModeSupported:(id)supported
{
  supportedCopy = supported;
  v6 = _LTOSLogXPC(supportedCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "XPC on-device support call", v7, 2u);
  }

  [(_LTTranslationServer *)self->_server onDeviceModeSupported:supportedCopy];
}

- (void)selfLoggingEventWithData:(id)data
{
  dataCopy = data;
  v6 = _LTOSLogXPC(dataCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_LTClientConnection selfLoggingEventWithData:];
  }

  [(_LTTranslationServer *)self->_server selfLoggingEventWithData:dataCopy];
}

- (void)selfLoggingInvocationStartedWithData:(id)data invocationStartedTier1Data:(id)tier1Data
{
  tier1DataCopy = tier1Data;
  dataCopy = data;
  v9 = _LTOSLogXPC(dataCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_LTClientConnection selfLoggingInvocationStartedWithData:invocationStartedTier1Data:];
  }

  [(_LTTranslationServer *)self->_server selfLoggingEventWithData:dataCopy];

  [tier1DataCopy setTrustedClientIdentifier:self->_trustedClientIdentifier];
  [(_LTTranslationServer *)self->_server selfLoggingEventWithData:tier1DataCopy];
}

- (void)initWithConnection:(__CFString *)a1 server:(NSObject *)a2 trusted:.cold.3(__CFString *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = @"not set";
  if (a1)
  {
    v2 = a1;
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Connection application-identifier: %{public}@", &v3, 0xCu);
}

- (void)logWithRequestData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Failed to deserialize logging request: %@", &v2, 0xCu);
}

@end