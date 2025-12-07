@interface CORapportTransport
+ (void)_commandPayloadFromRapportRepresentation:(id)representation result:(id)result;
- (BOOL)_validateSource:(id)source options:(id)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsLeaderElection;
- (CORapportTransport)initWithDiscoveryRecord:(id)record executionContext:(id)context;
- (COTransportDelegate)delegate;
- (NSString)description;
- (double)currentPingTimeout;
- (id)_eventIDForClass:(Class)class;
- (id)_serializedDataForCommand:(id)command;
- (id)shortDescription;
- (int)listeningPort;
- (unint64_t)hash;
- (void)_commandForIdentifier:(id)identifier fromData:(id)data result:(id)result;
- (void)_commandPayloadFromRapportRepresentationWithValidation:(id)validation result:(id)result;
- (void)_handleDisconnect;
- (void)_handleOnDemanNodeCreationRequest;
- (void)_handleRPErrorFlagsUpdate;
- (void)_handleRPIsUsingOnDemandConnection;
- (void)_handleRPStateUpdate;
- (void)_registerHandlersOnClient;
- (void)_setUpRegistrationCompletionHandlers;
- (void)_updateRequestTimesFromRapportRepresentation:(id)representation start:(unint64_t)start end:(unint64_t)end;
- (void)activateWithCompletion:(id)completion;
- (void)deregisterCommandForClass:(Class)class;
- (void)deregisterRequestForClass:(Class)class;
- (void)handleEventIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options;
- (void)handleRequestFromUnknownNodeWithIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options responseHandler:(id)handler at:(unint64_t)at;
- (void)handleRequestIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options responseHandler:(id)handler at:(unint64_t)at;
- (void)handleResponseToRequest:(id)request rapportRepresentation:(id)representation options:(id)options error:(id)error responseHandler:(id)handler at:(unint64_t)at;
- (void)invalidateWithError:(id)error;
- (void)pingWithCallback:(id)callback;
- (void)registerCommandForClass:(Class)class withCompletion:(id)completion;
- (void)registerRequestForClass:(Class)class withCompletion:(id)completion;
- (void)removeAsSink:(id)sink;
- (void)sendCommand:(id)command withCompletionHandler:(id)handler;
- (void)sendRequest:(id)request withResponseHandler:(id)handler;
- (void)setAsSink:(id)sink;
- (void)sourceHasBeenActivated;
@end

@implementation CORapportTransport

- (CORapportTransport)initWithDiscoveryRecord:(id)record executionContext:(id)context
{
  recordCopy = record;
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = CORapportTransport;
  v9 = [(CORapportTransport *)&v29 init];
  if (v9)
  {
    networkActivityFactory = [contextCopy networkActivityFactory];
    v11 = [networkActivityFactory activityWithLabel:1 parentActivity:0];
    activity = v9->_activity;
    v9->_activity = v11;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    sinks = v9->_sinks;
    v9->_sinks = strongToWeakObjectsMapTable;

    objc_storeStrong(&v9->_record, record);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      constituentForMe = [contextCopy constituentForMe];
      remote = v9->_remote;
      v9->_remote = constituentForMe;
    }

    if ([recordCopy conformsToProtocol:&unk_2857CCAF8])
    {
      companionLinkProvider = [recordCopy companionLinkProvider];
      v18 = companionLinkProvider[2]();
      client = v9->_client;
      v9->_client = v18;
    }

    objc_storeStrong(&v9->_executionContext, context);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    counters = v9->_counters;
    v9->_counters = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    commands = v9->_commands;
    v9->_commands = dictionary2;

    v24 = [contextCopy objectForKey:0x2857B7208];
    v9->_minimumPingInterval = [v24 integerValue];

    v25 = [contextCopy objectForKey:0x2857B7228];
    v9->_maximumPingInterval = [v25 integerValue];

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    registrationCompletions = v9->_registrationCompletions;
    v9->_registrationCompletions = dictionary3;

    [(CORapportTransport *)v9 _registerHandlersOnClient];
    [(CORapportTransport *)v9 _setUpRegistrationCompletionHandlers];
  }

  return v9;
}

- (NSString)description
{
  executionContext = [(CORapportTransport *)self executionContext];
  constituentForMe = [executionContext constituentForMe];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  remote = [(CORapportTransport *)self remote];
  v9 = [v5 stringWithFormat:@"<%@: %p, %@ -> %@>", v7, self, constituentForMe, remote];

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  executionContext = [(CORapportTransport *)self executionContext];
  meshControllerDescription = [executionContext meshControllerDescription];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 stringWithFormat:@"[m:%@] <%@: %p>", meshControllerDescription, v7, self];

  return v8;
}

- (int)listeningPort
{
  localDevice = [(COCompanionLinkClientProtocol *)self->_client localDevice];
  listeningPort = [localDevice listeningPort];

  return listeningPort;
}

- (void)setAsSink:(id)sink
{
  v17 = *MEMORY[0x277D85DE8];
  sinkCopy = sink;
  v5 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CORapportTransport *)self shortDescription];
    v13 = 138543618;
    v14 = shortDescription;
    v15 = 2112;
    v16 = sinkCopy;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setting sink for transport %@", &v13, 0x16u);
  }

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    executionContext = [(CORapportTransport *)self executionContext];
    [executionContext assertDispatchQueue];

    record2 = [sinkCopy record];
    iDSIdentifier = [record2 IDSIdentifier];

    sinks = [(CORapportTransport *)self sinks];
    [sinks setObject:sinkCopy forKey:iDSIdentifier];
  }
}

- (void)removeAsSink:(id)sink
{
  v17 = *MEMORY[0x277D85DE8];
  sinkCopy = sink;
  v5 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CORapportTransport *)self shortDescription];
    v13 = 138543618;
    v14 = shortDescription;
    v15 = 2112;
    v16 = sinkCopy;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removing sink for transport %@", &v13, 0x16u);
  }

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    executionContext = [(CORapportTransport *)self executionContext];
    [executionContext assertDispatchQueue];

    record2 = [sinkCopy record];
    iDSIdentifier = [record2 IDSIdentifier];

    sinks = [(CORapportTransport *)self sinks];
    [sinks removeObjectForKey:iDSIdentifier];
  }
}

- (BOOL)supportsLeaderElection
{
  executionContext = [(CORapportTransport *)self executionContext];
  leaderElectionConfigured = [executionContext leaderElectionConfigured];

  return leaderElectionConfigured;
}

- (void)sourceHasBeenActivated
{
  v11 = *MEMORY[0x277D85DE8];
  record = [(CORapportTransport *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    activated = self->_activated;

    if (!activated)
    {
      activationHandler = [(CORapportTransport *)self activationHandler];

      if (activationHandler)
      {
        v5 = COCoreLogForCategory(17);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription = [(CORapportTransport *)self shortDescription];
          *buf = 138543362;
          v10 = shortDescription;
          _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ completing deferred activation", buf, 0xCu);
        }

        activationHandler2 = [(CORapportTransport *)self activationHandler];
        [(CORapportTransport *)self activateWithCompletion:activationHandler2];
        [(CORapportTransport *)self setActivationHandler:0];
      }
    }
  }
}

- (void)activateWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  if (self->_activated)
  {
    sinks = COCoreLogForCategory(17);
    if (os_log_type_enabled(sinks, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CORapportTransport *)self shortDescription];
      *buf = 138543362;
      v31 = shortDescription;
      _os_log_impl(&dword_244378000, sinks, OS_LOG_TYPE_DEFAULT, "%{public}@ Rapport Transport is already active", buf, 0xCu);
    }
  }

  else
  {
    record = [(CORapportTransport *)self record];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      self->_activated = 1;
      activity = [(CORapportTransport *)self activity];

      if (activity)
      {
        activity2 = [(CORapportTransport *)self activity];
        nw_activity_activate();
      }

      completionCopy[2](completionCopy, 0);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      sinks = [(CORapportTransport *)self sinks];
      v12 = [sinks countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(sinks);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            sinks2 = [(CORapportTransport *)self sinks];
            v17 = [sinks2 objectForKey:v15];

            [v17 sourceHasBeenActivated];
          }

          v12 = [sinks countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);
      }
    }

    else
    {
      sinks = self->_record;
      sourceTransport = [sinks sourceTransport];
      if ([sourceTransport isActivated])
      {
        objc_initWeak(buf, self);
        client = [(CORapportTransport *)self client];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __45__CORapportTransport_activateWithCompletion___block_invoke;
        v22[3] = &unk_278E15C10;
        objc_copyWeak(&v24, buf);
        v23 = completionCopy;
        [client activateWithCompletion:v22];

        objc_destroyWeak(&v24);
        objc_destroyWeak(buf);
      }

      else
      {
        v20 = COCoreLogForCategory(17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription2 = [(CORapportTransport *)self shortDescription];
          *buf = 138543362;
          v31 = shortDescription2;
          _os_log_impl(&dword_244378000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ deferring activation since source transport is not yet active", buf, 0xCu);
        }

        [(CORapportTransport *)self setActivationHandler:completionCopy];
      }
    }
  }
}

void __45__CORapportTransport_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained executionContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__CORapportTransport_activateWithCompletion___block_invoke_2;
    v7[3] = &unk_278E15BE8;
    objc_copyWeak(&v11, (a1 + 40));
    v8 = v3;
    v9 = v5;
    v10 = *(a1 + 32);
    [v6 dispatchAsync:v7];

    objc_destroyWeak(&v11);
  }
}

void __45__CORapportTransport_activateWithCompletion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!*(a1 + 32))
    {
      v3 = [*(a1 + 40) activity];

      if (v3)
      {
        v4 = [*(a1 + 40) activity];
        nw_activity_activate();
      }

      v5 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [WeakRetained shortDescription];
        v7 = [WeakRetained client];
        v8 = 138543618;
        v9 = v6;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ activated transport with client %@", &v8, 0x16u);
      }

      WeakRetained[8] = 1;
    }

    (*(*(a1 + 48) + 16))();
    [WeakRetained _handleOnDemanNodeCreationRequest];
  }
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  activity = [(CORapportTransport *)self activity];
  if (activity && nw_activity_is_activated())
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = mach_continuous_time();
      activation_time = nw_activity_get_activation_time();
      xpc_dictionary_set_uint64(v6, "lifetime", v7 - activation_time);
      [(CORapportTransport *)self averageRequestTime];
      xpc_dictionary_set_double(v6, "rtt", v9);
      xpc_dictionary_set_uint64(v6, "requests", [(CORapportTransport *)self requestCount]);
      xpc_dictionary_set_uint64(v6, "transport_type", 1uLL);
      remote = [(CORapportTransport *)self remote];
      v11 = remote;
      if (remote)
      {
        xpc_dictionary_set_uint64(v6, "nodeType", [remote type]);
        xpc_dictionary_set_uint64(v6, "nodeFlags", [v11 flags]);
      }

      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  client = [(CORapportTransport *)self client];
  [client invalidate];

  delegate = [(CORapportTransport *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transport:self didInvalidateWithError:errorCopy];
  }

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CORapportTransport *)self removeAsSink:self];
  }

  else
  {
    sourceTransport = [record sourceTransport];
    [sourceTransport removeAsSink:self];
  }
}

- (void)registerRequestForClass:(Class)class withCompletion:(id)completion
{
  completionCopy = completion;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v8 = [(CORapportTransport *)self _eventIDForClass:class];
  commands = [(CORapportTransport *)self commands];
  [commands setObject:class forKey:v8];

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
    {
      registrationCompletions = [(CORapportTransport *)self registrationCompletions];
      v13 = MEMORY[0x245D5FF10](completionCopy);
      [registrationCompletions setObject:v13 forKey:v8];

      objc_initWeak(&location, self);
      client = [(CORapportTransport *)self client];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke;
      v15[3] = &unk_278E15C60;
      objc_copyWeak(&v17, &location);
      v16 = v8;
      [client registerRequestID:v16 options:0 handler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained executionContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke_2;
    v14[3] = &unk_278E15C38;
    v15 = v8;
    v16 = v12;
    v17 = *(a1 + 32);
    v18 = v7;
    v19 = v9;
    v20 = v10;
    [v13 dispatchAsync:v14];
  }
}

void __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277D442D0]];
  if ([v2 length] && (objc_msgSend(*(a1 + 40), "sinks"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v2), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    [v4 handleRequestIdentifier:*(a1 + 48) rapportRepresentation:*(a1 + 56) options:*(a1 + 32) responseHandler:*(a1 + 64) at:*(a1 + 72)];
  }

  else
  {
    v5 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke_2_cold_1();
    }

    [*(a1 + 40) handleRequestFromUnknownNodeWithIdentifier:*(a1 + 48) rapportRepresentation:*(a1 + 56) options:*(a1 + 32) responseHandler:*(a1 + 64) at:*(a1 + 72)];
  }
}

- (void)registerCommandForClass:(Class)class withCompletion:(id)completion
{
  completionCopy = completion;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v8 = [(CORapportTransport *)self _eventIDForClass:class];
  commands = [(CORapportTransport *)self commands];
  [commands setObject:class forKey:v8];

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
    {
      registrationCompletions = [(CORapportTransport *)self registrationCompletions];
      v13 = MEMORY[0x245D5FF10](completionCopy);
      [registrationCompletions setObject:v13 forKey:v8];

      objc_initWeak(&location, self);
      client = [(CORapportTransport *)self client];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke;
      v15[3] = &unk_278E15CB0;
      objc_copyWeak(&v17, &location);
      v16 = v8;
      [client registerEventID:v16 options:0 handler:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained executionContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke_2;
    v10[3] = &unk_278E15C88;
    v11 = v6;
    v12 = v8;
    v13 = *(a1 + 32);
    v14 = v5;
    [v9 dispatchAsync:v10];
  }
}

void __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277D442D0]];
  if ([v2 length] && (objc_msgSend(*(a1 + 40), "sinks"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v2), v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    [v4 handleEventIdentifier:*(a1 + 48) rapportRepresentation:*(a1 + 56) options:*(a1 + 32)];
  }

  else
  {
    v4 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke_2_cold_1(a1);
    }
  }
}

- (void)deregisterRequestForClass:(Class)class
{
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v10 = [(CORapportTransport *)self _eventIDForClass:class];
  commands = [(CORapportTransport *)self commands];
  [commands removeObjectForKey:v10];

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    client = [(CORapportTransport *)self client];
    [client deregisterRequestID:v10];
  }
}

- (void)deregisterCommandForClass:(Class)class
{
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v10 = [(CORapportTransport *)self _eventIDForClass:class];
  commands = [(CORapportTransport *)self commands];
  [commands removeObjectForKey:v10];

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    client = [(CORapportTransport *)self client];
    [client deregisterEventID:v10];
  }
}

- (void)_setUpRegistrationCompletionHandlers
{
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  objc_initWeak(&location, self);
  client = [(CORapportTransport *)self client];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke;
  v8[3] = &unk_278E15CD8;
  objc_copyWeak(&v9, &location);
  [client setRequestIDRegistrationCompletion:v8];

  client2 = [(CORapportTransport *)self client];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_99;
  v6[3] = &unk_278E15CD8;
  objc_copyWeak(&v7, &location);
  [client2 setEventIDRegistrationCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained executionContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_2;
    v7[3] = &unk_278E156B0;
    v7[4] = v5;
    v8 = v3;
    [v6 dispatchAsync:v7];
  }
}

void __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrationCompletions];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) shortDescription];
      v6 = *(a1 + 40);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully registered request ID %{public}@", &v7, 0x16u);
    }

    v3[2](v3);
  }
}

void __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_99(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained executionContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_2_100;
    v7[3] = &unk_278E156B0;
    v7[4] = v5;
    v8 = v3;
    [v6 dispatchAsync:v7];
  }
}

void __58__CORapportTransport__setUpRegistrationCompletionHandlers__block_invoke_2_100(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrationCompletions];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) shortDescription];
      v6 = *(a1 + 40);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully registered event ID %{public}@", &v7, 0x16u);
    }

    v3[2](v3);
  }
}

- (void)sendCommand:(id)command withCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  handlerCopy = handler;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v9 = [(CORapportTransport *)self _eventIDForClass:objc_opt_class()];
  v10 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CORapportTransport *)self shortDescription];
    *buf = 138543618;
    v31 = shortDescription;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sending %@", buf, 0x16u);
  }

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    executionContext2 = [(CORapportTransport *)self executionContext];
    constituentForMe = [executionContext2 constituentForMe];
    [(CORapportTransport *)self setRemote:constituentForMe];

    delegate = [(CORapportTransport *)self delegate];
    v17 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription2 = [(CORapportTransport *)self shortDescription];
      *buf = 138543618;
      v31 = shortDescription2;
      v32 = 2114;
      v33 = commandCopy;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Got a command %{public}@", buf, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate transport:self didReceiveCommand:commandCopy];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    delegate = [(CORapportTransport *)self _serializedDataForCommand:commandCopy];
    executionContext3 = [(CORapportTransport *)self executionContext];
    constituentForMe2 = [executionContext3 constituentForMe];

    v28[0] = @"source";
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:constituentForMe2 requiringSecureCoding:1 error:0];
    v28[1] = @"command";
    v29[0] = v21;
    v29[1] = delegate;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

    objc_initWeak(buf, self);
    client = [(CORapportTransport *)self client];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke;
    v24[3] = &unk_278E15D28;
    objc_copyWeak(&v27, buf);
    v25 = v9;
    v26 = handlerCopy;
    [client sendEventID:v25 event:v22 options:0 completion:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }
}

void __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained executionContext];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke_2;
    v7[3] = &unk_278E15D00;
    v7[4] = v5;
    v8 = a1[4];
    v9 = v3;
    v10 = a1[5];
    [v6 dispatchAsync:v7];
  }
}

uint64_t __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)sendRequest:(id)request withResponseHandler:(id)handler
{
  v52[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  objc_initWeak(&location, self);
  record = [(CORapportTransport *)self record];
  objc_opt_class();
  LOBYTE(executionContext) = objc_opt_isKindOfClass();

  if (executionContext)
  {
    executionContext2 = [(CORapportTransport *)self executionContext];
    constituentForMe = [executionContext2 constituentForMe];
    [(CORapportTransport *)self setRemote:constituentForMe];

    v11 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [(CORapportTransport *)self shortDescription];
      *buf = 138543618;
      v46 = shortDescription;
      v47 = 2114;
      v48 = requestCopy;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Got a request %{public}@", buf, 0x16u);
    }

    delegate = [(CORapportTransport *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke;
      v40[3] = &unk_278E15D78;
      objc_copyWeak(&v43, &location);
      v42 = handlerCopy;
      v41 = requestCopy;
      [delegate transport:self didReceiveRequest:v41 callback:v40];

      objc_destroyWeak(&v43);
    }
  }

  else
  {
    delegate = [(CORapportTransport *)self _serializedDataForCommand:requestCopy];
    executionContext3 = [(CORapportTransport *)self executionContext];
    constituentForMe2 = [executionContext3 constituentForMe];

    v51[0] = @"source";
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:constituentForMe2 requiringSecureCoding:1 error:0];
    v51[1] = @"command";
    v52[0] = v15;
    v52[1] = delegate;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];

    v17 = [(CORapportTransport *)self _eventIDForClass:objc_opt_class()];
    client = [(CORapportTransport *)self client];
    [requestCopy responseTimeout];
    if (v19 >= 0.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    if (v20 <= 0.0)
    {
      v24 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription2 = [(CORapportTransport *)self shortDescription];
        *buf = 138543618;
        v46 = shortDescription2;
        v47 = 2114;
        v48 = v17;
        _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting %{public}@", buf, 0x16u);
      }

      v23 = 0;
    }

    else
    {
      v21 = MEMORY[0x277CBEAC0];
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      v23 = [v21 dictionaryWithObject:v22 forKey:*MEMORY[0x277D442F0]];

      v24 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription3 = [(CORapportTransport *)self shortDescription];
        *buf = 138543874;
        v46 = shortDescription3;
        v47 = 2114;
        v48 = v17;
        v49 = 2048;
        v50 = v20;
        _os_log_impl(&dword_244378000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting %{public}@ with timeout of %g", buf, 0x20u);
      }
    }

    activity = [requestCopy activity];
    executionContext4 = [(CORapportTransport *)self executionContext];
    networkActivityFactory = [executionContext4 networkActivityFactory];
    v30 = [networkActivityFactory activityWithLabel:2 parentActivity:activity];

    if (v30)
    {
      nw_activity_activate();
    }

    v31 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_109;
    v35[3] = &unk_278E15DC8;
    objc_copyWeak(v39, &location);
    v32 = v30;
    v36 = v32;
    v37 = requestCopy;
    v38 = handlerCopy;
    v39[1] = v31;
    [client sendRequestID:v17 request:v16 options:v23 responseHandler:v35];

    objc_destroyWeak(v39);
  }

  objc_destroyWeak(&location);
}

void __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained executionContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_2;
    v10[3] = &unk_278E15D50;
    v14 = a1[5];
    v11 = a1[4];
    v12 = v5;
    v13 = v6;
    [v9 dispatchAsync:v10];
  }
}

void __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_109(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained executionContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_2_110;
    v15[3] = &unk_278E15DA0;
    v16 = *(a1 + 32);
    v17 = v9;
    v18 = v11;
    v19 = *(a1 + 40);
    v20 = v7;
    v21 = v8;
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v22 = v13;
    v23 = v14;
    [v12 dispatchAsync:v15];
  }
}

uint64_t __54__CORapportTransport_sendRequest_withResponseHandler___block_invoke_2_110(void *a1)
{
  if (a1[4])
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = v2;
    if (v2)
    {
      xpc_dictionary_set_uint64(v2, "transport_type", 1uLL);
      nw_activity_submit_metrics();
    }

    nw_activity_complete_with_reason();
  }

  v4 = a1[7];
  v5 = a1[8];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];

  return [v6 handleResponseToRequest:v4 rapportRepresentation:v5 options:v8 error:v7 responseHandler:v9 at:v10];
}

- (void)_handleOnDemanNodeCreationRequest
{
  v15 = *MEMORY[0x277D85DE8];
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  record = [(CORapportTransport *)self record];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unhandledRequest = [record unhandledRequest];
    if (unhandledRequest)
    {
      v6 = unhandledRequest;
      v7 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription = [(CORapportTransport *)self shortDescription];
        v13 = 138543362;
        v14 = shortDescription;
        _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found an outstanding on demand node creation request", &v13, 0xCu);
      }

      identifier = [v6 identifier];
      data = [v6 data];
      options = [v6 options];
      handler = [v6 handler];
      -[CORapportTransport handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:](self, "handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:", identifier, data, options, handler, [v6 timestamp]);
    }
  }
}

- (void)_commandForIdentifier:(id)identifier fromData:(id)data result:(id)result
{
  identifierCopy = identifier;
  dataCopy = data;
  resultCopy = result;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  if (!dataCopy)
  {
    v17 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CORapportTransport _commandForIdentifier:? fromData:? result:?];
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = -4000;
    goto LABEL_10;
  }

  commands = [(CORapportTransport *)self commands];
  v13 = [commands objectForKey:identifierCopy];

  if (!v13)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = -4001;
LABEL_10:
    v15 = [v18 errorWithDomain:@"COMeshNodeErrorDomain" code:v19 userInfo:0];
    v14 = 0;
    goto LABEL_11;
  }

  v20 = 0;
  v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v13 fromData:dataCopy error:&v20];
  v15 = v20;
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];

      v14 = 0;
      v15 = v16;
    }
  }

LABEL_11:
  resultCopy[2](resultCopy, v14, v15);
}

- (void)handleRequestFromUnknownNodeWithIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options responseHandler:(id)handler at:(unint64_t)at
{
  v53 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  representationCopy = representation;
  optionsCopy = options;
  handlerCopy = handler;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__4;
  v49 = __Block_byref_object_dispose__4;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __114__CORapportTransport_handleRequestFromUnknownNodeWithIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke;
  v26[3] = &unk_278E15DF0;
  v26[4] = &v27;
  v26[5] = &v33;
  [CORapportTransport _commandPayloadFromRapportRepresentation:representationCopy result:v26];
  v17 = v34[5];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __114__CORapportTransport_handleRequestFromUnknownNodeWithIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2;
  v25[3] = &unk_278E15E18;
  v25[4] = &v45;
  v25[5] = &v39;
  [(CORapportTransport *)self _commandForIdentifier:identifierCopy fromData:v17 result:v25];
  if (v28[5])
  {
    [v40[5] _setSendingConstituent:?];
  }

  [v40[5] _setRapportOptions:optionsCopy];
  if (v46[5])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    delegate = [(CORapportTransport *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription = [(CORapportTransport *)self shortDescription];
        *buf = 138543362;
        v52 = shortDescription;
        _os_log_impl(&dword_244378000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ received request for unknown node. Informing delegate", buf, 0xCu);
      }

      v21 = [COUnhandledRapportRequest alloc];
      v22 = [(COUnhandledRapportRequest *)v21 initWithRequest:v40[5] identifier:identifierCopy data:representationCopy options:optionsCopy handler:handlerCopy at:at];
      [delegate transport:self didReceiveUnhandledRequest:v22];
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      v24 = v46[5];
      v46[5] = v23;

      (*(handlerCopy + 2))(handlerCopy, 0, 0, v46[5]);
    }
  }

  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
}

void __114__CORapportTransport_handleRequestFromUnknownNodeWithIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __114__CORapportTransport_handleRequestFromUnknownNodeWithIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)handleRequestIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options responseHandler:(id)handler at:(unint64_t)at
{
  v63 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  representationCopy = representation;
  optionsCopy = options;
  handlerCopy = handler;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__4;
  v61 = __Block_byref_object_dispose__4;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__4;
  v55 = __Block_byref_object_dispose__4;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__4;
  v49 = __Block_byref_object_dispose__4;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__4;
  v43 = __Block_byref_object_dispose__4;
  v44 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke;
  v38[3] = &unk_278E15DF0;
  v38[4] = &v39;
  v38[5] = &v45;
  [CORapportTransport _commandPayloadFromRapportRepresentation:representationCopy result:v38];
  v17 = v46[5];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2;
  v37[3] = &unk_278E15E18;
  v37[4] = &v57;
  v37[5] = &v51;
  [(CORapportTransport *)self _commandForIdentifier:identifierCopy fromData:v17 result:v37];
  v18 = v52[5];
  if (v18)
  {
    if (v40[5])
    {
      [v18 _setSendingConstituent:?];
      v18 = v52[5];
    }

    [v18 _setRapportOptions:optionsCopy];
    v19 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(CORapportTransport *)self shortDescription];
      objc_claimAutoreleasedReturnValue();
      [CORapportTransport handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:];
    }

    if (![(CORapportTransport *)self _validateSource:v40[5] options:optionsCopy])
    {
      v20 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(CORapportTransport *)self shortDescription];
        objc_claimAutoreleasedReturnValue();
        [CORapportTransport handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:];
      }

      delegate = [(CORapportTransport *)self delegate];
      location = 0;
      p_location = &location;
      v35 = 0x2020000000;
      v36 = 0;
      if (v40[5] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        remote = [(CORapportTransport *)self remote];
        v23 = v40[5];
        v24 = v52[5];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_123;
        v32[3] = &unk_278E15E40;
        v32[4] = &location;
        [delegate transport:self shouldUpdateRemoteConstituent:remote to:v23 forCommand:v24 completionHandler:v32];
      }

      if ((p_location[3] & 1) == 0)
      {
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
        v28 = v58[5];
        v58[5] = v27;

        (*(handlerCopy + 2))(handlerCopy, 0, 0, v58[5]);
        _Block_object_dispose(&location, 8);
LABEL_21:

        goto LABEL_22;
      }

      remote2 = [(CORapportTransport *)self remote];
      [(CORapportTransport *)self setRemote:v40[5]];
      if (objc_opt_respondsToSelector())
      {
        [delegate transport:self didUpdateRemoteConstituent:remote2 to:v40[5]];
      }

      _Block_object_dispose(&location, 8);
    }

    delegate = [(CORapportTransport *)self delegate];
    objc_initWeak(&location, self);
    if (objc_opt_respondsToSelector())
    {
      v26 = v52[5];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2_127;
      v29[3] = &unk_278E15E90;
      objc_copyWeak(v31, &location);
      v31[1] = at;
      v30 = handlerCopy;
      [delegate transport:self didReceiveRequest:v26 callback:v29];

      objc_destroyWeak(v31);
    }

    objc_destroyWeak(&location);
    goto LABEL_21;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v58[5]);
LABEL_22:
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&v57, 8);
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_2_127(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained executionContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3;
    v12[3] = &unk_278E15E68;
    v13 = v6;
    v14 = v8;
    v10 = v5;
    v11 = *(a1 + 48);
    v15 = v10;
    v17 = v11;
    v16 = *(a1 + 32);
    [v9 dispatchAsync:v12];
  }
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3_cold_1();
    }

    v3 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) _serializedDataForCommand:*(a1 + 48)];
    v4 = [*(a1 + 40) _eventIDForClass:objc_opt_class()];
    v5 = [*(a1 + 40) executionContext];
    v6 = [v5 constituentForMe];

    v7 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3_cold_2();
    }

    v10[0] = @"source";
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    v11[0] = v8;
    v11[1] = v2;
    v10[1] = @"command";
    v10[2] = @"response";
    v11[2] = v4;
    v10[3] = @"overhead";
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:(clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 64))];
    v11[3] = v9;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)handleResponseToRequest:(id)request rapportRepresentation:(id)representation options:(id)options error:(id)error responseHandler:(id)handler at:(unint64_t)at
{
  v92 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  representationCopy = representation;
  optionsCopy = options;
  errorCopy = error;
  handlerCopy = handler;
  v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__4;
  v76 = __Block_byref_object_dispose__4;
  v18 = errorCopy;
  v77 = v18;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v20 = [representationCopy objectForKey:@"response"];
  objc_initWeak(&location, self);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke;
  v66[3] = &unk_278E15EB8;
  objc_copyWeak(&v70, &location);
  v69 = &v72;
  v21 = requestCopy;
  v67 = v21;
  v22 = handlerCopy;
  v68 = v22;
  v23 = MEMORY[0x245D5FF10](v66);
  if (!v73[5])
  {
    acceptableResponses = [objc_opt_class() acceptableResponses];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_128;
    v64[3] = &unk_278E15EE0;
    v64[4] = self;
    v65 = v20;
    v49 = acceptableResponses;
    v26 = [acceptableResponses objectsPassingTest:v64];
    anyObject = [v26 anyObject];

    if (!anyObject)
    {
      v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      v34 = v73[5];
      v73[5] = v33;

      v23[2](v23);
LABEL_36:

      goto LABEL_37;
    }

    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = __Block_byref_object_copy__4;
    v90 = __Block_byref_object_dispose__4;
    v91 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__4;
    v62 = __Block_byref_object_dispose__4;
    v63 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_2;
    v53[3] = &unk_278E15F08;
    v53[4] = &v86;
    v53[5] = &v58;
    v53[6] = &v54;
    [(CORapportTransport *)self _commandPayloadFromRapportRepresentationWithValidation:representationCopy result:v53];
    if (v59[5])
    {
      v28 = v87[5];
      if (v28)
      {
        v52 = 0;
        v29 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:anyObject fromData:v28 error:&v52];
        v48 = v52;
        if (v29)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((v55[3] & 1) == 0)
            {
              v30 = COCoreLogForCategory(17);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                [(CORapportTransport *)self shortDescription];
                objc_claimAutoreleasedReturnValue();
                [CORapportTransport handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:];
              }

              delegate = [(CORapportTransport *)self delegate];
              if (objc_opt_respondsToSelector())
              {
                remote = [(CORapportTransport *)self remote];
                [delegate transport:self willUpdateRemoteConstituent:remote to:v59[5]];
              }

              [(CORapportTransport *)self setRemote:v59[5], delegate];
              if (objc_opt_respondsToSelector())
              {
                remote2 = [(CORapportTransport *)self remote];
                [v47 transport:self didUpdateRemoteConstituent:remote2 to:v59[5]];
              }
            }

            [(CORapportTransport *)self _updateRequestTimesFromRapportRepresentation:representationCopy start:at end:v17];
            [v29 _setRapportOptions:optionsCopy];
            (*(v22 + 2))(v22, v21, v29, 0);
          }

          else
          {
            v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
            v42 = v73[5];
            v73[5] = v41;

            v23[2](v23);
          }
        }

        else
        {
          v39 = COCoreLogForCategory(17);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            shortDescription = [(CORapportTransport *)self shortDescription];
            *buf = 138543874;
            v81 = shortDescription;
            v82 = 2114;
            v83 = v21;
            v84 = 2114;
            v85 = v48;
            _os_log_error_impl(&dword_244378000, v39, OS_LOG_TYPE_ERROR, "%{public}@ failed to unarchive response for request %{public}@ with error = %{public}@", buf, 0x20u);
          }

          if (v48)
          {
            v78 = *MEMORY[0x277CCA7E8];
            v79 = v48;
            v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          }

          else
          {
            v40 = 0;
          }

          v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:v40];
          v44 = v73[5];
          v73[5] = v43;

          v23[2](v23);
        }

        goto LABEL_35;
      }

      v35 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(CORapportTransport *)self shortDescription];
        objc_claimAutoreleasedReturnValue();
        [CORapportTransport handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:];
      }

      v36 = -4001;
    }

    else
    {
      v35 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(CORapportTransport *)self shortDescription];
        objc_claimAutoreleasedReturnValue();
        [CORapportTransport handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:];
      }

      v36 = -4000;
    }

    v37 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:v36 userInfo:0];
    v38 = v73[5];
    v73[5] = v37;

    v23[2](v23);
LABEL_35:
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v58, 8);

    _Block_object_dispose(&v86, 8);
    goto LABEL_36;
  }

  v24 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [(CORapportTransport *)self shortDescription];
    objc_claimAutoreleasedReturnValue();
    [CORapportTransport handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:];
  }

  v23[2](v23);
LABEL_37:

  objc_destroyWeak(&v70);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v72, 8);
}

void __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained remote];
    if (v4 || [*(*(*(a1 + 48) + 8) + 40) code] != -6714)
    {
    }

    else
    {
      v5 = [*(*(*(a1 + 48) + 8) + 40) domain];
      v6 = [v5 isEqualToString:*MEMORY[0x277D44250]];

      if (v6)
      {
LABEL_10:
        (*(*(a1 + 40) + 16))();
        goto LABEL_11;
      }
    }

    v7 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_cold_1();
    }

    goto LABEL_10;
  }

LABEL_11:
}

uint64_t __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_128(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _eventIDForClass:a2];
  v6 = [v5 isEqualToString:*(a1 + 40)];
  *a3 = v6;

  return v6;
}

void __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_2(void *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  v11 = a3;
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  *(*(a1[6] + 8) + 24) = a4;
}

- (void)_updateRequestTimesFromRapportRepresentation:(id)representation start:(unint64_t)start end:(unint64_t)end
{
  v8 = [representation objectForKey:@"overhead"];
  if ([v8 BOOLValue])
  {
    v9 = [(CORapportTransport *)self requestCount]+ 1;
    executionContext = [(CORapportTransport *)self executionContext];
    analyticsRecorder = [executionContext analyticsRecorder];

    if (v9 < 0x3E9)
    {
      [v8 doubleValue];
      v21 = ((end - start) - v20) / 1000000.0;
      [(CORapportTransport *)self averageRequestTime];
      v23 = v22 * 1000.0;
      if (v21 <= v23)
      {
        v21 = v23 + (v21 - v23) / v9;
      }

      else
      {
        v9 = 1;
      }

      [(CORapportTransport *)self setRequestCount:v9];
      v24 = v21 / 1000.0;
      [(CORapportTransport *)self setAverageRequestTime:v24];
      HIDWORD(v25) = -1030792151 * v9;
      LODWORD(v25) = HIDWORD(v25);
      if ((v25 >> 2) > 0x28F5C28)
      {
        goto LABEL_12;
      }

      executionContext2 = [(CORapportTransport *)self executionContext];
      label = [executionContext2 label];

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __77__CORapportTransport__updateRequestTimesFromRapportRepresentation_start_end___block_invoke_135;
      v29[3] = &unk_278E15F30;
      *&v30[1] = v24;
      v30[2] = v9;
      v16 = v30;
      v30[0] = label;
      v28 = analyticsRecorder[2];
      v18 = label;
      v28(analyticsRecorder, 0x2857B5D88, v29);
    }

    else
    {
      [(CORapportTransport *)self averageRequestTime];
      v13 = v12;
      executionContext3 = [(CORapportTransport *)self executionContext];
      label2 = [executionContext3 label];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __77__CORapportTransport__updateRequestTimesFromRapportRepresentation_start_end___block_invoke;
      v31[3] = &unk_278E15F30;
      v32[1] = v13;
      v32[2] = v9;
      v16 = v32;
      v32[0] = label2;
      v17 = analyticsRecorder[2];
      v18 = label2;
      v17(analyticsRecorder, 0x2857B5D88, v31);
      [(CORapportTransport *)self setRequestCount:0];
      [(CORapportTransport *)self setAverageRequestTime:0.0];
      v19 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [CORapportTransport _updateRequestTimesFromRapportRepresentation:? start:? end:?];
      }
    }

LABEL_12:
  }
}

id __77__CORapportTransport__updateRequestTimesFromRapportRepresentation_start_end___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = 0x2857B5FE8;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v8[0] = v2;
  v7[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v7[2] = 0x2857B5DC8;
  v4 = *(a1 + 32);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id __77__CORapportTransport__updateRequestTimesFromRapportRepresentation_start_end___block_invoke_135(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = 0x2857B5FE8;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v8[0] = v2;
  v7[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v7[2] = 0x2857B5DC8;
  v4 = *(a1 + 32);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)handleEventIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  representationCopy = representation;
  optionsCopy = options;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__CORapportTransport_handleEventIdentifier_rapportRepresentation_options___block_invoke;
  v23[3] = &unk_278E15DF0;
  v23[4] = &v24;
  v23[5] = &v30;
  [CORapportTransport _commandPayloadFromRapportRepresentation:representationCopy result:v23];
  if (v31[5])
  {
    commands = [(CORapportTransport *)self commands];
    v13 = [commands objectForKey:identifierCopy];

    if (v13)
    {
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v13 fromData:v31[5] error:0];
      v15 = 0;
      goto LABEL_9;
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
  }

  else
  {
    v16 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CORapportTransport *)self shortDescription];
      objc_claimAutoreleasedReturnValue();
      [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
  }

  v15 = v17;
  v14 = 0;
LABEL_9:
  if (v25[5])
  {
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CORapportTransport *)self shortDescription];
      objc_claimAutoreleasedReturnValue();
      [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];

    v15 = v19;
    if (!v19)
    {
LABEL_15:
      if (v14)
      {
        if (v25[5])
        {
          [v14 _setSendingConstituent:?];
        }

        [v14 _setRapportOptions:optionsCopy];
      }

      v20 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(CORapportTransport *)self shortDescription];
        objc_claimAutoreleasedReturnValue();
        [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
      }

      if ([(CORapportTransport *)self _validateSource:v25[5] options:optionsCopy])
      {
        delegate = [(CORapportTransport *)self delegate];
        if (v14)
        {
          if (objc_opt_respondsToSelector())
          {
            [delegate transport:self didReceiveCommand:v14];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          v22 = COCoreLogForCategory(17);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(CORapportTransport *)self shortDescription];
            objc_claimAutoreleasedReturnValue();
            [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
          }

          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
          [delegate transport:self didReceiveError:v15 forCommand:0];
          goto LABEL_32;
        }
      }

      else
      {
        delegate = COCoreLogForCategory(17);
        if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
        {
          [(CORapportTransport *)self shortDescription];
          objc_claimAutoreleasedReturnValue();
          [CORapportTransport handleEventIdentifier:rapportRepresentation:options:];
        }
      }

      v15 = 0;
LABEL_32:
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

void __74__CORapportTransport_handleEventIdentifier_rapportRepresentation_options___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    record = [(CORapportTransport *)self record];
    record2 = [equalCopy record];
    v7 = [record isEqual:record2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  record = [(CORapportTransport *)self record];
  v3 = [record hash];

  return v3;
}

- (double)currentPingTimeout
{
  [(CORapportTransport *)self averageRequestTime];
  v4 = ceil(v3 + v3);
  [(CORapportTransport *)self minimumPingInterval];
  if (v4 < v5)
  {
    v4 = v5;
  }

  [(CORapportTransport *)self maximumPingInterval];
  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (void)_commandPayloadFromRapportRepresentationWithValidation:(id)validation result:(id)result
{
  validationCopy = validation;
  resultCopy = result;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__CORapportTransport__commandPayloadFromRapportRepresentationWithValidation_result___block_invoke;
  v9[3] = &unk_278E15F58;
  v9[6] = &v20;
  v9[7] = &v10;
  v9[4] = self;
  v9[5] = &v14;
  [v8 _commandPayloadFromRapportRepresentation:validationCopy result:v9];
  resultCopy[2](resultCopy, v15[5], v21[5], *(v11 + 24));
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __84__CORapportTransport__commandPayloadFromRapportRepresentationWithValidation_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _validateSource:v12 options:0];
}

+ (void)_commandPayloadFromRapportRepresentation:(id)representation result:(id)result
{
  representationCopy = representation;
  resultCopy = result;
  v6 = [representationCopy objectForKey:@"source"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
    v8 = [representationCopy objectForKey:@"command"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v6 = v9;
    }

    else
    {
      v9 = 0;
      v6 = v8;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  resultCopy[2](resultCopy, v7, v9);
}

- (id)_serializedDataForCommand:(id)command
{
  commandCopy = command;
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:commandCopy requiringSecureCoding:1 error:0];
  if (!v7)
  {
    if (class_getMethodImplementation(v6, sel_supportsSecureCoding) && class_getMethodImplementation(v6, sel_encodeWithCoder_))
    {
      v8 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [CORapportTransport _serializedDataForCommand:];
      }
    }

    else
    {
      v8 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(CORapportTransport *)v6 _serializedDataForCommand:v8];
      }
    }

    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA2A0] reason:0 userInfo:0];
    [v9 raise];
  }

  counters = [(CORapportTransport *)self counters];
  v11 = NSStringFromClass(v6);
  v12 = [counters objectForKey:v11];
  if (!v12)
  {
    v12 = objc_alloc_init(COMeshNodeMessageCounter);
    [counters setObject:v12 forKey:v11];
  }

  v13 = [(COMeshNodeMessageCounter *)v12 count]+ 1;
  v14 = [v7 length];
  executionContext2 = [(CORapportTransport *)self executionContext];
  analyticsRecorder = [executionContext2 analyticsRecorder];

  v17 = [(COMeshNodeMessageCounter *)v12 size];
  if (v13 > 0x3E7)
  {
    v34 = v7;
    v27 = v17;
    executionContext3 = [(CORapportTransport *)self executionContext];
    label = [executionContext3 label];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __48__CORapportTransport__serializedDataForCommand___block_invoke_2;
    v35[3] = &unk_278E15F80;
    *&v37[1] = v27;
    v37[2] = v13;
    v23 = v37;
    v36 = v11;
    v37[0] = label;
    v30 = v11;
    v31 = counters;
    v32 = analyticsRecorder[2];
    v26 = label;
    v32(analyticsRecorder, 0x2857B5DA8, v35);
    counters = v31;
    v11 = v30;
    v22 = &v36;
    [(COMeshNodeMessageCounter *)v12 setCount:0];
    [(COMeshNodeMessageCounter *)v12 setSize:0];
  }

  else
  {
    v18 = v14 / v13 + v17 - v17 / v13;
    [(COMeshNodeMessageCounter *)v12 setCount:v13];
    [(COMeshNodeMessageCounter *)v12 setSize:v18];
    HIDWORD(v19) = -1030792151 * v13;
    LODWORD(v19) = HIDWORD(v19);
    if ((v19 >> 2) > 0x28F5C28)
    {
      goto LABEL_16;
    }

    v34 = v7;
    executionContext4 = [(CORapportTransport *)self executionContext];
    label2 = [executionContext4 label];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __48__CORapportTransport__serializedDataForCommand___block_invoke;
    v38[3] = &unk_278E15F80;
    v40[1] = v18;
    v40[2] = v13;
    v22 = &v39;
    v23 = v40;
    v39 = v11;
    v40[0] = label2;
    v24 = label2;
    v25 = analyticsRecorder[2];
    v26 = v24;
    v25(analyticsRecorder, 0x2857B5DA8, v38);
  }

  v7 = v34;
LABEL_16:

  return v7;
}

id __48__CORapportTransport__serializedDataForCommand___block_invoke(void *a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2857B6008;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v9[0] = v2;
  v8[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  v4 = a1[4];
  v5 = a1[5];
  v9[1] = v3;
  v9[2] = v4;
  v8[2] = 0x2857B6028;
  v8[3] = 0x2857B5DC8;
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

id __48__CORapportTransport__serializedDataForCommand___block_invoke_2(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2857B6008;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v9[0] = v2;
  v8[1] = 0x2857B5FC8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[1] = v3;
  v9[2] = v4;
  v8[2] = 0x2857B6028;
  v8[3] = 0x2857B5DC8;
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (id)_eventIDForClass:(Class)class
{
  executionContext = [(CORapportTransport *)self executionContext];
  meshName = [executionContext meshName];

  v6 = NSStringFromClass(class);
  v7 = [meshName stringByAppendingFormat:@".%@", v6];

  return v7;
}

- (BOOL)_validateSource:(id)source options:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  optionsCopy = options;
  remote = [(CORapportTransport *)self remote];
  if (!optionsCopy)
  {
    goto LABEL_5;
  }

  record = [(CORapportTransport *)self record];
  iDSIdentifier = [record IDSIdentifier];

  v11 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D442D0]];
  if (!v11)
  {
    v14 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CORapportTransport _validateSource:? options:?];
    }

    goto LABEL_15;
  }

  if (([iDSIdentifier isEqualToString:v11]& 1) == 0)
  {
    v14 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [(CORapportTransport *)self shortDescription];
      v20 = 138543874;
      v21 = shortDescription;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = iDSIdentifier;
      _os_log_error_impl(&dword_244378000, v14, OS_LOG_TYPE_ERROR, "%{public}@ validation failed. IDS ID received %@ does not match record %@", &v20, 0x20u);
    }

LABEL_15:

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B6328 code:-5002 userInfo:0];
    [(CORapportTransport *)self invalidateWithError:v15];

LABEL_16:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

LABEL_5:
  if (!sourceCopy)
  {
    goto LABEL_9;
  }

  if (!remote)
  {
    v17 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription2 = [(CORapportTransport *)self shortDescription];
      v20 = 138543618;
      v21 = shortDescription2;
      v22 = 2112;
      v23 = sourceCopy;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting remote %@", &v20, 0x16u);
    }

    iDSIdentifier = [(CORapportTransport *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [iDSIdentifier transport:self willUpdateRemoteConstituent:0 to:sourceCopy];
    }

    [(CORapportTransport *)self setRemote:sourceCopy];
    if (objc_opt_respondsToSelector())
    {
      [iDSIdentifier transport:self didUpdateRemoteConstituent:0 to:sourceCopy];
    }

    v12 = 1;
    goto LABEL_17;
  }

  if (([remote isEqual:sourceCopy]& 1) == 0)
  {
LABEL_9:
    iDSIdentifier = COCoreLogForCategory(17);
    if (os_log_type_enabled(iDSIdentifier, OS_LOG_TYPE_ERROR))
    {
      shortDescription3 = [(CORapportTransport *)self shortDescription];
      v20 = 138543874;
      v21 = shortDescription3;
      v22 = 2114;
      v23 = remote;
      v24 = 2114;
      v25 = sourceCopy;
      _os_log_error_impl(&dword_244378000, iDSIdentifier, OS_LOG_TYPE_ERROR, "%{public}@ validation failed. Remote = %{public}@ and source = %{public}@", &v20, 0x20u);
    }

    goto LABEL_16;
  }

  v12 = 1;
LABEL_18:

  return v12;
}

- (void)_registerHandlersOnClient
{
  client = [(CORapportTransport *)self client];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke;
  v12[3] = &unk_278E15B10;
  objc_copyWeak(&v13, &location);
  [client setInvalidationHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_149;
  v10[3] = &unk_278E15B10;
  objc_copyWeak(&v11, &location);
  [client setInterruptionHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_151;
  v8[3] = &unk_278E15B10;
  objc_copyWeak(&v9, &location);
  [client setStateUpdatedHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_153;
  v6[3] = &unk_278E15B10;
  objc_copyWeak(&v7, &location);
  [client setErrorFlagsChangedHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_155;
  v4[3] = &unk_278E15B10;
  objc_copyWeak(&v5, &location);
  [client setDisconnectHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_2;
    v4[3] = &unk_278E15AB8;
    v4[4] = v2;
    [v3 dispatchAsync:v4];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = 0;
  v2 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortDescription];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidated connection", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B6328 code:-5003 userInfo:0];
    [v4 transport:v5 didInvalidateWithError:v6];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_149(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_150;
    v4[3] = &unk_278E15AB8;
    v4[4] = v2;
    [v3 dispatchAsync:v4];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_150(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 8) = 0;
  v2 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortDescription];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_244378000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ interrupted connection", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2857B6328 code:-5003 userInfo:0];
    [v4 transport:v5 didInvalidateWithError:v6];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_151(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __47__CORapportTransport__registerHandlersOnClient__block_invoke_151_cold_1(WeakRetained);
    }

    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_152;
    v4[3] = &unk_278E15AB8;
    v4[4] = WeakRetained;
    [v3 dispatchAsync:v4];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_153(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_153_cold_1(WeakRetained);
    }

    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_154;
    v4[3] = &unk_278E15AB8;
    v4[4] = WeakRetained;
    [v3 dispatchAsync:v4];
  }
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_155(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = COCoreLogForCategory(17);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_155_cold_1(WeakRetained);
    }

    v3 = [WeakRetained executionContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__CORapportTransport__registerHandlersOnClient__block_invoke_156;
    v4[3] = &unk_278E15AB8;
    v4[4] = WeakRetained;
    [v3 dispatchAsync:v4];
  }
}

- (void)_handleRPStateUpdate
{
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  client = [(CORapportTransport *)self client];
  usingOnDemandConnection = [client usingOnDemandConnection];

  if (usingOnDemandConnection)
  {

    [(CORapportTransport *)self _handleRPIsUsingOnDemandConnection];
  }
}

- (void)_handleRPIsUsingOnDemandConnection
{
  v10 = *MEMORY[0x277D85DE8];
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  v4 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [(CORapportTransport *)self shortDescription];
    v8 = 138543362;
    v9 = shortDescription;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ link (IP) connected", &v8, 0xCu);
  }

  clientIsUsingOnDemandConnection = [(CORapportTransport *)self clientIsUsingOnDemandConnection];
  v7 = clientIsUsingOnDemandConnection;
  if (clientIsUsingOnDemandConnection)
  {
    (*(clientIsUsingOnDemandConnection + 16))(clientIsUsingOnDemandConnection);
  }
}

- (void)_handleRPErrorFlagsUpdate
{
  executionContext = [(CORapportTransport *)self executionContext];
  [executionContext assertDispatchQueue];

  client = [(CORapportTransport *)self client];
  errorFlags = [client errorFlags];

  if ((errorFlags & 0x200) != 0)
  {

    [(CORapportTransport *)self _handleDisconnect];
  }
}

- (void)_handleDisconnect
{
  shortDescription = [self shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)pingWithCallback:(id)callback
{
  callbackCopy = callback;
  [(CORapportTransport *)self currentPingTimeout];
  v6 = [[_COMeshControllerPing alloc] initWithTimeout:v5];
  v7 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CORapportTransport pingWithCallback:?];
  }

  [(CORapportTransport *)self sendRequest:v6 withResponseHandler:callbackCopy];
}

- (COTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61__CORapportTransport_registerRequestForClass_withCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 40) sinks];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __61__CORapportTransport_registerCommandForClass_withCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v4 = 134218242;
  v5 = v1;
  OUTLINED_FUNCTION_10();
  v6 = v2;
  _os_log_error_impl(&dword_244378000, v3, OS_LOG_TYPE_ERROR, "%p command from unknown node with IDS %@", &v4, 0x16u);
}

void __56__CORapportTransport_sendCommand_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_commandForIdentifier:(void *)a1 fromData:result:.cold.1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  _os_log_debug_impl(&dword_244378000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ received request %@", v4, 0x16u);
}

- (void)handleRequestIdentifier:rapportRepresentation:options:responseHandler:at:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ request failed source validation", v5);
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 40) shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __95__CORapportTransport_handleRequestIdentifier_rapportRepresentation_options_responseHandler_at___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_9();
  v1 = [*v0 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_6(&dword_244378000, "%{public}@ bad response ID (%@)", v4, v5);
}

- (void)handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  *v1 = 138543618;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  OUTLINED_FUNCTION_6(&dword_244378000, "%{public}@ response validation for request %{public}@ failed. Changing constituent", v4, v5);
}

- (void)handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_6(&dword_244378000, "%{public}@ missing payload on request %@", v4, v5);
}

- (void)handleResponseToRequest:rapportRepresentation:options:error:responseHandler:at:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_6(&dword_244378000, "%{public}@ missing source on request %@", v4, v5);
}

void __101__CORapportTransport_handleResponseToRequest_rapportRepresentation_options_error_responseHandler_at___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  v1 = [v0 shortDescription];
  objc_opt_class();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_updateRequestTimesFromRapportRepresentation:(void *)a1 start:end:.cold.1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ no event payload", v5);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ missing source", v5);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, 5.8382e-34);
  _os_log_debug_impl(&dword_244378000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ received %@", v4, 0x16u);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ command failed source validation", v5);
}

- (void)handleEventIdentifier:rapportRepresentation:options:.cold.5()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5(&dword_244378000, v3, v4, "%{public}@ did not produce command", v5);
}

- (void)_serializedDataForCommand:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_244378000, v0, OS_LOG_TYPE_FAULT, "Failed to properly archive for sending: %{public}@", v1, 0xCu);
}

- (void)_serializedDataForCommand:(objc_class *)a1 .cold.2(objc_class *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_244378000, a2, OS_LOG_TYPE_FAULT, "%{public}@ does not appear to properly support secure coding which is required for all commands!", v4, 0xCu);
}

- (void)_validateSource:(void *)a1 options:.cold.1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_151_cold_1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_153_cold_1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __47__CORapportTransport__registerHandlersOnClient__block_invoke_2_155_cold_1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)pingWithCallback:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end