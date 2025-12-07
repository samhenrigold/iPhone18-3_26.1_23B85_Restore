@interface COIDSTransport
- (BOOL)isEqual:(id)equal;
- (COIDSTransport)initWithDiscoveryRecord:(id)record executionContext:(id)context;
- (COTransportDelegate)delegate;
- (NSString)description;
- (id)acceptableResponsesForRequest:(Class)request;
- (id)shortDescription;
- (unint64_t)hash;
- (void)_configureTimer;
- (void)_handleErrorFromMessage:(id)message incomingResponseIdentifier:(id)identifier from:(id)from;
- (void)_handleRequestFromMessage:(id)message incomingRequestIdentifier:(id)identifier from:(id)from;
- (void)_handleResponseFromMessage:(id)message incomingResponseIdentifier:(id)identifier from:(id)from;
- (void)_timerFired;
- (void)_timerRequestAdded:(id)added;
- (void)activateWithCompletion:(id)completion;
- (void)deregisterRequestForClass:(Class)class;
- (void)handleMessage:(id)message requestIdentifier:(id)identifier responseIdentifier:(id)responseIdentifier from:(id)from;
- (void)invalidateWithError:(id)error;
- (void)registerRequestForClass:(Class)class withCompletion:(id)completion;
- (void)sendCommand:(id)command withCompletionHandler:(id)handler;
- (void)sendRequest:(id)request withResponseHandler:(id)handler;
@end

@implementation COIDSTransport

- (COIDSTransport)initWithDiscoveryRecord:(id)record executionContext:(id)context
{
  recordCopy = record;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25.receiver = self;
    v25.super_class = COIDSTransport;
    v9 = [(COIDSTransport *)&v25 init];
    if (v9)
    {
      networkActivityFactory = [contextCopy networkActivityFactory];
      v11 = [networkActivityFactory activityWithLabel:1 parentActivity:0];
      activity = v9->_activity;
      v9->_activity = v11;

      objc_storeStrong(&v9->_record, record);
      serviceDirector = [recordCopy serviceDirector];
      director = v9->_director;
      v9->_director = serviceDirector;

      objc_storeStrong(&v9->_executionContext, context);
      v15 = [MEMORY[0x277CBEB58] set];
      registeredCommands = v9->_registeredCommands;
      v9->_registeredCommands = v15;

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      acceptableResponses = v9->_acceptableResponses;
      v9->_acceptableResponses = dictionary;

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      outstandingRequests = v9->_outstandingRequests;
      v9->_outstandingRequests = dictionary2;

      v9->_requestTimeout = 180.0;
      v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      timer = v9->_timer;
      v9->_timer = v21;

      [(COIDSTransport *)v9 _configureTimer];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)description
{
  record = [(COIDSTransport *)self record];
  iDSIdentifier = [record IDSIdentifier];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p, ids = %@>", v7, self, iDSIdentifier];

  return v8;
}

- (id)shortDescription
{
  record = [(COIDSTransport *)self record];
  iDSIdentifier = [record IDSIdentifier];

  v5 = MEMORY[0x277CCACA8];
  executionContext = [(COIDSTransport *)self executionContext];
  meshControllerDescription = [executionContext meshControllerDescription];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"[m:%@] <%@: %p, ids = %.8s>", meshControllerDescription, v9, self, objc_msgSend(iDSIdentifier, "UTF8String")];

  return v10;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  activity = [(COIDSTransport *)self activity];

  if (activity)
  {
    activity2 = [(COIDSTransport *)self activity];
    nw_activity_activate();
  }

  completionCopy[2](completionCopy, 0);
  record = [(COIDSTransport *)self record];
  onDemandRequest = [record onDemandRequest];
  v8 = onDemandRequest;
  if (onDemandRequest)
  {
    message = [onDemandRequest message];
    requestIdentifier = [v8 requestIdentifier];
    responseIdentifier = [v8 responseIdentifier];
    fromURIToken = [v8 fromURIToken];
    [(COIDSTransport *)self handleMessage:message requestIdentifier:requestIdentifier responseIdentifier:responseIdentifier from:fromURIToken];
  }
}

- (unint64_t)hash
{
  record = [(COIDSTransport *)self record];
  v3 = [record hash];

  return v3;
}

- (void)invalidateWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(COIDSTransport *)self shortDescription];
    v14 = 138543362;
    v15 = shortDescription;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidated", &v14, 0xCu);
  }

  activity = [(COIDSTransport *)self activity];
  if (activity && nw_activity_is_activated())
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = mach_continuous_time();
      activation_time = nw_activity_get_activation_time();
      xpc_dictionary_set_uint64(v8, "lifetime", v9 - activation_time);
      xpc_dictionary_set_uint64(v8, "transport_type", 2uLL);
      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  outstandingRequests = [(COIDSTransport *)self outstandingRequests];
  [outstandingRequests enumerateKeysAndObjectsUsingBlock:&__block_literal_global_11];

  outstandingRequests2 = [(COIDSTransport *)self outstandingRequests];
  [outstandingRequests2 removeAllObjects];

  delegate = [(COIDSTransport *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transport:self didInvalidateWithError:errorCopy];
  }
}

void __38__COIDSTransport_invalidateWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a3;
  v7 = [v3 errorWithDomain:0x2857B5A08 code:-4100 userInfo:0];
  v5 = [v4 request];
  v6 = [v4 callback];

  (v6)[2](v6, v5, 0, v7);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    record = [(COIDSTransport *)self record];
    record2 = [v5 record];

    v8 = [record isEqual:record2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)registerRequestForClass:(Class)class withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = NSStringFromClass(class);
  registeredCommands = [(COIDSTransport *)self registeredCommands];
  [registeredCommands addObject:v7];

  if (objc_opt_respondsToSelector())
  {
    acceptableResponses = [(objc_class *)class acceptableResponses];
    v10 = [MEMORY[0x277CBEB58] set];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__COIDSTransport_registerRequestForClass_withCompletion___block_invoke;
    v13[3] = &unk_278E18E80;
    v14 = v10;
    v11 = v10;
    [acceptableResponses enumerateObjectsUsingBlock:v13];
    acceptableResponses2 = [(COIDSTransport *)self acceptableResponses];
    [acceptableResponses2 setObject:v11 forKey:v7];
  }

  completionCopy[2](completionCopy);
}

void __57__COIDSTransport_registerRequestForClass_withCompletion___block_invoke(uint64_t a1, Class aClass)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromClass(aClass);
  [v2 addObject:v3];
}

- (void)deregisterRequestForClass:(Class)class
{
  v6 = NSStringFromClass(class);
  registeredCommands = [(COIDSTransport *)self registeredCommands];
  [registeredCommands removeObject:v6];

  acceptableResponses = [(COIDSTransport *)self acceptableResponses];
  [acceptableResponses removeObjectForKey:v6];
}

- (id)acceptableResponsesForRequest:(Class)request
{
  v4 = NSStringFromClass(request);
  acceptableResponses = [(COIDSTransport *)self acceptableResponses];
  v6 = [acceptableResponses objectForKey:v4];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (void)sendCommand:(id)command withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  executionContext = [(COIDSTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  handlerCopy[2](handlerCopy, 0);
}

- (void)sendRequest:(id)request withResponseHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  executionContext = [(COIDSTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  director = [(COIDSTransport *)self director];
  messageFactory = [director messageFactory];
  v11 = [messageFactory encodeRequest:requestCopy withIDSIdentifier:!self->_resolvedIDSIdentifier];

  activity = [requestCopy activity];
  executionContext2 = [(COIDSTransport *)self executionContext];
  networkActivityFactory = [executionContext2 networkActivityFactory];
  v15 = [networkActivityFactory activityWithLabel:2 parentActivity:activity];

  if (v15)
  {
    nw_activity_activate();
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__26;
  v46 = __Block_byref_object_dispose__26;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__26;
  v40 = __Block_byref_object_dispose__26;
  v41 = 0;
  director2 = [(COIDSTransport *)self director];
  dictionaryRepresentation = [v11 dictionaryRepresentation];
  record = [(COIDSTransport *)self record];
  deviceTokenURI = [record deviceTokenURI];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__COIDSTransport_sendRequest_withResponseHandler___block_invoke;
  v35[3] = &unk_278E18EA8;
  v35[4] = &v36;
  v35[5] = &v42;
  [director2 sendMessage:dictionaryRepresentation toDestination:deviceTokenURI completionHandler:v35];

  if (v43[5])
  {
    goto LABEL_4;
  }

  if (!v37[5])
  {
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    v32 = v43[5];
    v43[5] = v31;

LABEL_4:
    if (v15)
    {
      v20 = xpc_dictionary_create(0, 0, 0);
      v21 = v20;
      if (v20)
      {
        xpc_dictionary_set_uint64(v20, "transport_type", 2uLL);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }

    handlerCopy[2](handlerCopy, requestCopy, 0, v43[5]);
    goto LABEL_17;
  }

  v22 = [[COIDSOutstandingRequestInfo alloc] initWithRequest:requestCopy at:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) callback:handlerCopy activity:v15];
  outstandingRequests = [(COIDSTransport *)self outstandingRequests];
  [outstandingRequests setObject:v22 forKey:v37[5]];

  [(COIDSTransport *)self _timerRequestAdded:v22];
  if (!self->_resolvedIDSIdentifier)
  {
    self->_resolvedIDSIdentifier = 1;
    v24 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(COIDSTransport *)self shortDescription];
      director3 = [(COIDSTransport *)self director];
      messageFactory2 = [director3 messageFactory];
      idsIdentifier = [messageFactory2 idsIdentifier];
      v27 = v37[5];
      *buf = 138543874;
      v49 = shortDescription;
      v50 = 2114;
      v51 = idsIdentifier;
      v52 = 2114;
      v53 = v27;
      _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ advertised IDS identifier %{public}@ via message %{public}@", buf, 0x20u);
    }
  }

  v28 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription2 = [(COIDSTransport *)self shortDescription];
    v30 = v37[5];
    *buf = 138543874;
    v49 = shortDescription2;
    v50 = 2114;
    v51 = requestCopy;
    v52 = 2114;
    v53 = v30;
    _os_log_impl(&dword_244378000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ sent request %{public}@ via message %{public}@", buf, 0x20u);
  }

LABEL_17:
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
}

void __50__COIDSTransport_sendRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)handleMessage:(id)message requestIdentifier:(id)identifier responseIdentifier:(id)responseIdentifier from:(id)from
{
  messageCopy = message;
  identifierCopy = identifier;
  responseIdentifierCopy = responseIdentifier;
  fromCopy = from;
  executionContext = [(COIDSTransport *)self executionContext];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__COIDSTransport_handleMessage_requestIdentifier_responseIdentifier_from___block_invoke;
  v19[3] = &unk_278E15868;
  v20 = messageCopy;
  selfCopy = self;
  v22 = identifierCopy;
  v23 = fromCopy;
  v24 = responseIdentifierCopy;
  v15 = responseIdentifierCopy;
  v16 = fromCopy;
  v17 = identifierCopy;
  v18 = messageCopy;
  [executionContext dispatchAsync:v19];
}

void __74__COIDSTransport_handleMessage_requestIdentifier_responseIdentifier_from___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) type];
  if ((*(*(a1 + 40) + 8) & 1) == 0)
  {
    v3 = [*(a1 + 32) metadata];
    v4 = [v3 objectForKey:0x2857B6848];
    *(*(a1 + 40) + 8) = 1;
    v5 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) shortDescription];
      v7 = *(a1 + 48);
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received IDS identifier %{public}@ from message %{public}@", &v12, 0x20u);
    }
  }

  switch(v2)
  {
    case 2:
      [*(a1 + 40) _handleErrorFromMessage:*(a1 + 32) incomingResponseIdentifier:*(a1 + 64) from:*(a1 + 56)];
      break;
    case 1:
      v8 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 40) shortDescription];
        v10 = *(a1 + 48);
        v11 = *(a1 + 64);
        v12 = 138543874;
        v13 = v9;
        v14 = 2114;
        v15 = v10;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ received response %{public}@ for %{public}@", &v12, 0x20u);
      }

      [*(a1 + 40) _handleResponseFromMessage:*(a1 + 32) incomingResponseIdentifier:*(a1 + 64) from:*(a1 + 56)];
      break;
    case 0:
      [*(a1 + 40) _handleRequestFromMessage:*(a1 + 32) incomingRequestIdentifier:*(a1 + 48) from:*(a1 + 56)];
      break;
  }
}

- (void)_configureTimer
{
  timer = [(COIDSTransport *)self timer];
  dispatch_source_set_timer(timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  [(COIDSTransport *)self setTimerEnabled:0];
  objc_initWeak(&location, self);
  timer2 = [(COIDSTransport *)self timer];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __33__COIDSTransport__configureTimer__block_invoke;
  v9 = &unk_278E15B10;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(timer2, &v6);

  v5 = [(COIDSTransport *)self timer:v6];
  dispatch_activate(v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __33__COIDSTransport__configureTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _timerFired];
    WeakRetained = v2;
  }
}

- (void)_timerFired
{
  executionContext = [(COIDSTransport *)self executionContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__COIDSTransport__timerFired__block_invoke;
  v4[3] = &unk_278E15AB8;
  v4[4] = self;
  [executionContext dispatchAsync:v4];
}

void __29__COIDSTransport__timerFired__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 outstandingRequests];
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = [v4 count];
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fired. Outstanding requests = %lu", buf, 0x16u);
  }

  v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v6 = [MEMORY[0x277CBEB18] array];
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = [v8 outstandingRequests];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __29__COIDSTransport__timerFired__block_invoke_35;
  v33[3] = &unk_278E18ED0;
  v10 = *v7;
  v35 = v5;
  v33[4] = v10;
  v11 = v6;
  v34 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v33];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [*v7 outstandingRequests];
        [v17 removeObjectForKey:v16];
      }

      v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  v18 = [*v7 outstandingRequests];
  v19 = [v18 count] == 0;

  if (v19)
  {
    [*v7 setTimerEnabled:0];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v37 = 0;
    v20 = [*v7 outstandingRequests];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __29__COIDSTransport__timerFired__block_invoke_2;
    v28[3] = &unk_278E18EF8;
    v28[4] = buf;
    [v20 enumerateKeysAndObjectsUsingBlock:v28];

    v21 = *(*&buf[8] + 24);
    [*v7 requestTimeout];
    v23 = v22;
    v24 = COCoreLogForCategory(17);
    v25 = -((v5 - v21) - v23 * 1000000000.0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __29__COIDSTransport__timerFired__block_invoke_cold_1(v7, v25, v24);
    }

    v26 = [*v7 timer];
    v27 = dispatch_time(0, v25);
    dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

    _Block_object_dispose(buf, 8);
  }
}

void __29__COIDSTransport__timerFired__block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = (*(a1 + 48) - [v5 enqeueStart]);
  [*(a1 + 32) requestTimeout];
  if (v7 * 1000000000.0 <= v6)
  {
    v8 = [v5 activity];
    if (v8)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      v10 = v9;
      if (v9)
      {
        xpc_dictionary_set_uint64(v9, "transport_type", 2uLL);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }

    [*(a1 + 40) addObject:v14];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4003 userInfo:0];
    v12 = [v5 callback];
    v13 = [v5 request];
    (v12)[2](v12, v13, 0, v11);
  }
}

void *__29__COIDSTransport__timerFired__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 enqeueStart];
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) - 1 >= result)
  {
    *(v5 + 24) = result;
  }

  return result;
}

- (void)_timerRequestAdded:(id)added
{
  if (![(COIDSTransport *)self isTimerEnabled])
  {
    v4 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [COIDSTransport _timerRequestAdded:];
    }

    [(COIDSTransport *)self setTimerEnabled:1];
    [(COIDSTransport *)self requestTimeout];
    v6 = (v5 * 1000000000.0);
    timer = [(COIDSTransport *)self timer];
    v8 = dispatch_time(0, v6);
    dispatch_source_set_timer(timer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }
}

- (void)_handleResponseFromMessage:(id)message incomingResponseIdentifier:(id)identifier from:(id)from
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  outstandingRequests = [(COIDSTransport *)self outstandingRequests];
  v11 = [outstandingRequests objectForKey:identifierCopy];

  v12 = (v9 - [v11 enqeueStart]) / 1000000000.0;
  v13 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(COIDSTransport *)self shortDescription];
    *buf = 138543874;
    v29 = shortDescription;
    v30 = 2114;
    v31 = identifierCopy;
    v32 = 2048;
    v33 = v12;
    _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ message %{public}@ round trip time: %lfs", buf, 0x20u);
  }

  outstandingRequests2 = [(COIDSTransport *)self outstandingRequests];
  [outstandingRequests2 removeObjectForKey:identifierCopy];

  callback = [v11 callback];
  if (callback)
  {
    payload = [messageCopy payload];

    if (payload)
    {
      request = [v11 request];
      v19 = [(COIDSTransport *)self acceptableResponsesForRequest:objc_opt_class()];
      v27 = 0;
      payload = [messageCopy unarchivePayloadOfTypes:v19 error:&v27];
      v20 = v27;
      v21 = 0;
      if (!payload)
      {
        v22 = COCoreLogForCategory(17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [COIDSTransport _handleResponseFromMessage:? incomingResponseIdentifier:? from:?];
        }

        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      }
    }

    else
    {
      v21 = 0;
    }

    activity = [v11 activity];
    if (activity)
    {
      v24 = xpc_dictionary_create(0, 0, 0);
      v25 = v24;
      if (v24)
      {
        xpc_dictionary_set_uint64(v24, "transport_type", 2uLL);
        xpc_dictionary_set_double(v25, "rtt", v12);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }

    request2 = [v11 request];
    (callback)[2](callback, request2, payload, v21);
  }

  else
  {
    v21 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [COIDSTransport _handleResponseFromMessage:incomingResponseIdentifier:from:];
    }
  }
}

- (void)_handleErrorFromMessage:(id)message incomingResponseIdentifier:(id)identifier from:(id)from
{
  messageCopy = message;
  identifierCopy = identifier;
  outstandingRequests = [(COIDSTransport *)self outstandingRequests];
  v10 = [outstandingRequests objectForKey:identifierCopy];

  callback = [v10 callback];
  if (callback)
  {
    activity = [v10 activity];
    if (activity)
    {
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        xpc_dictionary_set_uint64(v13, "transport_type", 2uLL);
        nw_activity_submit_metrics();
      }

      nw_activity_complete_with_reason();
    }

    request = [v10 request];
    error = [messageCopy error];
    (callback)[2](callback, request, 0, error);

    outstandingRequests2 = [(COIDSTransport *)self outstandingRequests];
    [outstandingRequests2 removeObjectForKey:identifierCopy];
  }

  else
  {
    activity = COCoreLogForCategory(17);
    if (os_log_type_enabled(activity, OS_LOG_TYPE_ERROR))
    {
      [COIDSTransport _handleErrorFromMessage:incomingResponseIdentifier:from:];
    }
  }
}

- (void)_handleRequestFromMessage:(id)message incomingRequestIdentifier:(id)identifier from:(id)from
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  fromCopy = from;
  registeredCommands = [(COIDSTransport *)self registeredCommands];
  v27 = 0;
  v12 = [messageCopy unarchivePayloadOfTypes:registeredCommands error:&v27];
  v13 = v27;

  v14 = COCoreLogForCategory(17);
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(COIDSTransport *)self shortDescription];
      *buf = 138543874;
      v29 = shortDescription;
      v30 = 2114;
      v31 = v12;
      v32 = 2114;
      v33 = identifierCopy;
      _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ received request %{public}@ via message %{public}@", buf, 0x20u);
    }

    delegate = [(COIDSTransport *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(buf, self);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75__COIDSTransport__handleRequestFromMessage_incomingRequestIdentifier_from___block_invoke;
      v23[3] = &unk_278E18F20;
      objc_copyWeak(&v26, buf);
      v23[4] = self;
      v24 = identifierCopy;
      v25 = fromCopy;
      [delegate transport:self didReceiveRequest:v12 callback:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [COIDSTransport _handleRequestFromMessage:? incomingRequestIdentifier:? from:?];
    }

    delegate = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    director = [(COIDSTransport *)self director];
    messageFactory = [director messageFactory];
    v20 = [messageFactory encodeError:delegate];

    director2 = [(COIDSTransport *)self director];
    dictionaryRepresentation = [v20 dictionaryRepresentation];
    [director2 sendResponse:dictionaryRepresentation responseIdentifier:identifierCopy toDestination:fromCopy];
  }
}

void __75__COIDSTransport__handleRequestFromMessage_incomingRequestIdentifier_from___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained director];
    v9 = [v8 messageFactory];
    v10 = v9;
    if (v5)
    {
      [v9 encodeError:v5];
    }

    else
    {
      [v9 encodeResponse:v14];
    }
    v11 = ;

    v12 = [*(a1 + 32) director];
    v13 = [v11 dictionaryRepresentation];
    [v12 sendResponse:v13 responseIdentifier:*(a1 + 40) toDestination:*(a1 + 48)];
  }
}

- (COTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __29__COIDSTransport__timerFired__block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%{public}@ timer reconfiguring to %llu", &v4, 0x16u);
}

- (void)_timerRequestAdded:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_244378000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ enabling timer for default duration", v1, 0xCu);
}

- (void)_handleResponseFromMessage:(void *)a1 incomingResponseIdentifier:from:.cold.1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ error decoding response: %{public}@", v4, v5, v6, v7);
}

- (void)_handleRequestFromMessage:(void *)a1 incomingRequestIdentifier:from:.cold.1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_7(&dword_244378000, v2, v3, "%{public}@ error decoding request: %@", v4, v5, v6, v7);
}

@end