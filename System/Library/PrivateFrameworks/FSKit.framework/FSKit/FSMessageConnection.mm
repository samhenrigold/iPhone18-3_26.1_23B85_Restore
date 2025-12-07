@interface FSMessageConnection
- (FSMessageConnection)initWithCoder:(id)coder;
- (FSMessageConnection)initWithEndpoint:(id)endpoint;
- (id)localizedMessage:(id)message table:(id)table bundle:(id)bundle;
- (id)localizedMessage:(id)message table:(id)table bundle:(id)bundle arguments:(char *)arguments;
- (id)localizedMessage:(id)message table:(id)table bundle:(id)bundle array:(id)array;
- (void)completed:(id)completed replyHandler:(id)handler;
- (void)completedLocked:(id)locked replyHandler:(id)handler;
- (void)connect:(id)connect;
- (void)didCompleteWithError:(id)error completionHandler:(id)handler;
- (void)didStart;
- (void)encodeWithCoder:(id)coder;
- (void)getLocalizationSetup:(id)setup;
- (void)logLocalizedMessage:(id)message table:(id)table bundle:(id)bundle arguments:(char *)arguments;
- (void)logLocalizedMessage:(id)message table:(id)table bundle:(id)bundle array:(id)array;
- (void)logMessage:(id)message;
- (void)prompt:(id)prompt replyHandler:(id)handler;
- (void)promptTrueFalse:(id)false replyHandler:(id)handler;
@end

@implementation FSMessageConnection

- (void)logMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSXPCConnection *)selfCopy->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  [v5 logMessage:messageCopy];

  objc_sync_exit(selfCopy);
}

void __34__FSMessageConnection_logMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fskit_std_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v2);
  }
}

- (void)didCompleteWithError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__FSMessageConnection_didCompleteWithError_completionHandler___block_invoke;
  v8[3] = &unk_278FED5F0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(FSMessageConnection *)self completed:error replyHandler:v8];
}

uint64_t __62__FSMessageConnection_didCompleteWithError_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)getLocalizationSetup:(id)setup
{
  setupCopy = setup;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__FSMessageConnection_getLocalizationSetup___block_invoke;
  v7[3] = &unk_278FED618;
  v7[4] = self;
  v8 = setupCopy;
  v6 = setupCopy;
  dispatch_async(queue, v7);
}

void __44__FSMessageConnection_getLocalizationSetup___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__FSMessageConnection_getLocalizationSetup___block_invoke_2;
    v6[3] = &unk_278FECE20;
    v7 = *(a1 + 40);
    v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
    [v3 getLocalizationSetup:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = fs_errorForPOSIXError(57);
    (*(v4 + 16))(v4, 0, 0, v5);
  }
}

void __44__FSMessageConnection_getLocalizationSetup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [coderCopy encodeObject:self->_endpoint forKey:@"FSMessageConnection.Endpoint"];
}

- (FSMessageConnection)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v8);
  }

  if ([coderCopy containsValueForKey:@"FSMessageConnection.Endpoint"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSMessageConnection.Endpoint"];
    self = [(FSMessageConnection *)self initWithEndpoint:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)connect:(id)connect
{
  connectCopy = connect;
  v5 = fskit_std_log(connectCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FSMessageConnection(Private) *)v5 connect:v6, v7, v8, v9, v10, v11, v12];
  }

  if (self->_connection)
  {
    v14 = fskit_std_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(FSMessageConnection(Private) *)v14 connect:v15, v16, v17, v18, v19, v20, v21];
    }

    v22 = fs_errorForPOSIXError(17);
    connectCopy[2](connectCopy, v22);
  }

  else
  {
    objc_initWeak(&location, self);
    v23 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:self->_endpoint];
    connection = self->_connection;
    self->_connection = v23;

    v25 = +[FSKitConstants FSTaskOperations];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v25];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__FSMessageConnection_Private__connect___block_invoke;
    aBlock[3] = &unk_278FECDB8;
    objc_copyWeak(&v59, &location);
    v26 = _Block_copy(aBlock);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v26];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v26];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v59);

    objc_destroyWeak(&location);
    location = 0;
    p_location = &location;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__3;
    v56 = __Block_byref_object_dispose__3;
    v57 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__3;
    v50 = __Block_byref_object_dispose__3;
    v51 = 0;
    v27 = dispatch_group_create();
    dispatch_group_enter(v27);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __40__FSMessageConnection_Private__connect___block_invoke_78;
    v42[3] = &unk_278FED640;
    v44 = &location;
    v45 = &v46;
    v28 = v27;
    v43 = v28;
    [(FSMessageConnection *)self getLocalizationSetup:v42];
    v29 = dispatch_time(0, 10000000000);
    v30 = dispatch_group_wait(v28, v29);
    if (v30)
    {
      v31 = fskit_std_log(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [FSMessageConnection(Private) connect:v31];
      }

      v32 = fs_errorForPOSIXError(57);
      connectCopy[2](connectCopy, v32);
    }

    else
    {
      objc_storeStrong(&self->_locale, p_location[5]);
      objc_storeStrong(&self->_preferredLanguages, v47[5]);
      v34 = fskit_std_log(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [(FSMessageConnection(Private) *)v34 connect:v35, v36, v37, v38, v39, v40, v41];
      }

      connectCopy[2](connectCopy, 0);
    }

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&location, 8);
  }
}

void __40__FSMessageConnection_Private__connect___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__FSMessageConnection_Private__connect___block_invoke_2;
    block[3] = &unk_278FED278;
    block[4] = v2;
    dispatch_sync(v3, block);
  }
}

void __40__FSMessageConnection_Private__connect___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = fs_errorForCocoaError(4097);
  [v2 completedLocked:v3 replyHandler:&__block_literal_global_77];

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

void __40__FSMessageConnection_Private__connect___block_invoke_78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v10)
  {
    v12 = fskit_std_log(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __40__FSMessageConnection_Private__connect___block_invoke_78_cold_1(v11);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)logLocalizedMessage:(id)message table:(id)table bundle:(id)bundle array:(id)array
{
  v7 = [(FSMessageConnection *)self localizedMessage:message table:table bundle:bundle array:array];
  [(FSMessageConnection *)self logMessage:v7];
}

- (void)logLocalizedMessage:(id)message table:(id)table bundle:(id)bundle arguments:(char *)arguments
{
  v7 = [(FSMessageConnection *)self localizedMessage:message table:table bundle:bundle arguments:arguments];
  [(FSMessageConnection *)self logMessage:v7];
}

- (void)completedLocked:(id)locked replyHandler:(id)handler
{
  lockedCopy = locked;
  handlerCopy = handler;
  hasCompleted = self->_hasCompleted;
  v9 = _Block_copy(self->_earlyCompletedBlock);
  earlyCompletedBlock = self->_earlyCompletedBlock;
  self->_earlyCompletedBlock = 0;

  v11 = _Block_copy(self->_lateCompletedBlock);
  lateCompletedBlock = self->_lateCompletedBlock;
  self->_lateCompletedBlock = 0;

  if (!self->_hasCompleted)
  {
    self->_hasCompleted = 1;
  }

  if (hasCompleted)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    if (v9)
    {
      v9[2](v9, lockedCopy);
    }

    connection = self->_connection;
    if (connection)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __61__FSMessageConnection_Private__completedLocked_replyHandler___block_invoke;
      v21[3] = &unk_278FECE20;
      v14 = handlerCopy;
      v22 = v14;
      v15 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v21];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__FSMessageConnection_Private__completedLocked_replyHandler___block_invoke_80;
      v17[3] = &unk_278FED668;
      v19 = v14;
      v20 = v11;
      v18 = lockedCopy;
      [v15 completed:v18 replyHandler:v17];
    }

    else
    {
      v16 = fs_errorForPOSIXError(57);
      (*(handlerCopy + 2))(handlerCopy, 0, v16);
    }
  }
}

void __61__FSMessageConnection_Private__completedLocked_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __61__FSMessageConnection_Private__completedLocked_replyHandler___block_invoke_80(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 domain];
  if (![v4 isEqualToString:@"FSKitErrorDomain"])
  {

    goto LABEL_5;
  }

  v5 = [v7 code];

  if (v5 != 27503)
  {
LABEL_5:
    (*(a1[5] + 16))();
  }

  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, a1[4]);
  }
}

- (void)completed:(id)completed replyHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__FSMessageConnection_Private__completed_replyHandler___block_invoke;
  block[3] = &unk_278FED690;
  block[4] = self;
  v12 = completedCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = completedCopy;
  dispatch_sync(queue, block);
}

- (void)prompt:(id)prompt replyHandler:(id)handler
{
  promptCopy = prompt;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__FSMessageConnection_Private__prompt_replyHandler___block_invoke;
  block[3] = &unk_278FED6B8;
  v12 = promptCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = promptCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __52__FSMessageConnection_Private__prompt_replyHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__FSMessageConnection_Private__prompt_replyHandler___block_invoke_2;
    v6[3] = &unk_278FECE20;
    v7 = *(a1 + 48);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
    [v3 prompt:*(a1 + 40) replyHandler:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = fs_errorForPOSIXError(57);
    (*(v4 + 16))(v4, 0, v5);
  }
}

void __52__FSMessageConnection_Private__prompt_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)promptTrueFalse:(id)false replyHandler:(id)handler
{
  falseCopy = false;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__FSMessageConnection_Private__promptTrueFalse_replyHandler___block_invoke;
  block[3] = &unk_278FED6B8;
  v12 = falseCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = falseCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __61__FSMessageConnection_Private__promptTrueFalse_replyHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__FSMessageConnection_Private__promptTrueFalse_replyHandler___block_invoke_2;
    v6[3] = &unk_278FECE20;
    v7 = *(a1 + 48);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
    [v3 promptTrueFalse:*(a1 + 40) replyHandler:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = fs_errorForPOSIXError(57);
    (*(v4 + 16))(v4, 0, v5);
  }
}

void __61__FSMessageConnection_Private__promptTrueFalse_replyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__FSMessageConnection_logMessage___block_invoke_cold_1(v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)localizedMessage:(id)message table:(id)table bundle:(id)bundle
{
  v5 = [(FSMessageConnection *)self localizedMessage:message table:table bundle:bundle arguments:&v8];

  return v5;
}

- (id)localizedMessage:(id)message table:(id)table bundle:(id)bundle arguments:(char *)arguments
{
  messageCopy = message;
  locale = self->_locale;
  bundleCopy = bundle;
  tableCopy = table;
  languageCode = [(NSLocale *)locale languageCode];
  v15 = [bundleCopy localizedStringForKey:messageCopy value:0 table:tableCopy localization:languageCode];

  if (v15)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v15 locale:self->_locale arguments:arguments];
  }

  else
  {
    v18 = fskit_std_log(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FSMessageConnection(Private) localizedMessage:table:bundle:arguments:];
    }

    v17 = 0;
  }

  return v17;
}

- (FSMessageConnection)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v17.receiver = self;
  v17.super_class = FSMessageConnection;
  v6 = [(FSMessageConnection *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
    connection = v7->_connection;
    v7->_connection = 0;

    v7->_hasCompleted = 0;
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v7->_locale;
    v7->_locale = currentLocale;

    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    preferredLanguages = v7->_preferredLanguages;
    v7->_preferredLanguages = preferredLanguages;

    receiver = v7->_receiver;
    v7->_receiver = 0;

    v14 = dispatch_queue_create("com.apple.fskit.fsmessageconnection", 0);
    queue = v7->_queue;
    v7->_queue = v14;
  }

  return v7;
}

- (void)didStart
{
  receiver = self->_receiver;
  if (receiver)
  {
    [(FSMessageReceiver *)receiver didStart];
  }
}

- (id)localizedMessage:(id)message table:(id)table bundle:(id)bundle array:(id)array
{
  locale = self->_locale;
  arrayCopy = array;
  bundleCopy = bundle;
  tableCopy = table;
  messageCopy = message;
  languageCode = [(NSLocale *)locale languageCode];
  v16 = [bundleCopy localizedStringForKey:messageCopy value:0 table:tableCopy localization:languageCode];

  v17 = [FSKitUtils stringWithFormatString:v16 locale:self->_locale arguments:arrayCopy];

  return v17;
}

void __34__FSMessageConnection_logMessage___block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __40__FSMessageConnection_Private__connect___block_invoke_78_cold_1(void *a1)
{
  v6 = [a1 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end