@interface TKSmartCardSlotEngine
- (BOOL)_setupWithName:(id)name delegate:(id)delegate;
- (BOOL)canSimulateCardReinsertion;
- (BOOL)connectCardSessionWithParameters:(id)parameters;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)reset;
- (BOOL)setProtocol:(unint64_t)protocol;
- (BOOL)setupWithName:(id)name delegate:(id)delegate;
- (TKSmartCardSessionEngine)session;
- (TKSmartCardSlotEngine)initWithSlotParameters:(id)parameters;
- (TKSmartCardSlotEngineDelegate)delegate;
- (id)_findReservation:(id)reservation connection:(id)connection;
- (id)_getReservationId;
- (id)dictionaryForState:(int64_t)state;
- (void)_changeStateTo:(id)to forClient:(id)client;
- (void)cardPresent:(BOOL)present;
- (void)changeStateTo:(int64_t)to powerState:(int64_t)state;
- (void)dealloc;
- (void)getAttrib:(unsigned int)attrib reply:(id)reply;
- (void)leaveSession:(id)session;
- (void)logWithBytes:(id)bytes handler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)powerDownWithEject:(BOOL)eject;
- (void)reserveProtocols:(id)protocols reservationId:(id)id exclusive:(BOOL)exclusive reply:(id)reply;
- (void)reset;
- (void)runUserInteraction:(id)interaction reply:(id)reply;
- (void)scheduleIdlePowerDown;
- (void)sendControl:(id)control data:(id)data expectedLength:(unsigned int)length reply:(id)reply;
- (void)sessionWithParameters:(id)parameters reply:(id)reply;
- (void)setAttrib:(unsigned int)attrib data:(id)data reply:(id)reply;
- (void)setupSlotWithReply:(id)reply;
- (void)simulateCardReinsertionWithReply:(id)reply;
- (void)terminate;
- (void)waitForNextState:(int64_t)state reply:(id)reply;
- (void)waitForStateFlushedWithReply:(id)reply;
@end

@implementation TKSmartCardSlotEngine

- (TKSmartCardSlotEngine)initWithSlotParameters:(id)parameters
{
  parametersCopy = parameters;
  v11.receiver = self;
  v11.super_class = TKSmartCardSlotEngine;
  v6 = [(TKSmartCardSlotEngine *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lastId = 0;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    lastCardReinsertionSimulationCallTime = v7->_lastCardReinsertionSimulationCallTime;
    v7->_lastCardReinsertionSimulationCallTime = distantPast;

    v7->_cardReinsertionSimulationCallInterval = 10.0;
    v7->_powerDownIdleTimeout = 5.0;
    objc_storeStrong(&v7->_slotParameters, parameters);
  }

  return v7;
}

- (void)logWithBytes:(id)bytes handler:(id)handler
{
  bytesCopy = bytes;
  handlerCopy = handler;
  if (self->_log)
  {
    string = [MEMORY[0x1E696AD60] string];
    v8 = bytesCopy;
    bytes = [bytesCopy bytes];
    if ([bytesCopy length])
    {
      v10 = 0;
      do
      {
        [string appendFormat:@" %02x", *(bytes + v10++)];
      }

      while (v10 < [bytesCopy length]);
    }

    handlerCopy[2](handlerCopy, self->_log, [string UTF8String]);
  }
}

- (BOOL)setupWithName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v8 = TK_LOG_token_0(delegateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardSlotEngine setupWithName:delegate:];
  }

  [(TKSlotParameters *)self->_slotParameters setDelegateWithEscapeMethod:objc_opt_respondsToSelector() & 1];
  [(TKSlotParameters *)self->_slotParameters setDelegateWithControlMethod:objc_opt_respondsToSelector() & 1];
  v9 = [(TKSmartCardSlotEngine *)self _setupWithName:nameCopy delegate:delegateCopy];

  return v9;
}

- (BOOL)_setupWithName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = NSHomeDirectoryForUser(&cfstr_Root.isa);
  v11 = [defaultManager fileExistsAtPath:v10 isDirectory:0];

  if ((v11 & 1) == 0)
  {
    v13 = TK_LOG_token_0(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF413000, v13, OS_LOG_TYPE_INFO, "Call 'setupWithName' was postponed, because root's home directory does not exist", buf, 2u);
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = NSHomeDirectoryForUser(&cfstr_Root.isa);
    v16 = [defaultManager2 fileExistsAtPath:v15 isDirectory:0];

    if ((v16 & 1) == 0)
    {
      do
      {
        sleep(1u);
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v19 = NSHomeDirectoryForUser(&cfstr_Root.isa);
        v20 = [defaultManager3 fileExistsAtPath:v19 isDirectory:0];
      }

      while (!v20);
    }

    v21 = TK_LOG_token_0(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF413000, v21, OS_LOG_TYPE_INFO, "Method 'setupWithName' continues", buf, 2u);
    }
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  objc_storeStrong(&self->_name, name);
  self->_previousState = 1;
  *&self->_state = xmmword_1DF4615A0;
  array = [MEMORY[0x1E695DF70] array];
  sessionRequests = self->_sessionRequests;
  self->_sessionRequests = array;

  v24 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:0];
  stateRequests = self->_stateRequests;
  self->_stateRequests = v24;

  v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v27 = qos_class_main();
  v28 = dispatch_queue_attr_make_with_qos_class(v26, v27, 0);

  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.scslot:%@", nameCopy];
  v30 = dispatch_queue_create([nameCopy UTF8String], v28);
  queue = self->_queue;
  self->_queue = v30;

  nameCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.scpwr:%@", nameCopy];
  v33 = dispatch_queue_create([nameCopy2 UTF8String], v28);
  powerRequestsQueue = self->_powerRequestsQueue;
  self->_powerRequestsQueue = v33;

  v35 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
  clients = self->_clients;
  self->_clients = v35;

  v37 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:0];
  reservations = self->_reservations;
  self->_reservations = v37;

  v39 = +[TKPowerMonitor defaultMonitor];
  powerMonitor = self->_powerMonitor;
  self->_powerMonitor = v39;

  v41 = self->_powerMonitor;
  v42 = NSStringFromSelector(sel_awaken);
  [(TKPowerMonitor *)v41 addObserver:self forKeyPath:v42 options:5 context:0];

  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  listener = self->_listener;
  self->_listener = anonymousListener;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener _setQueue:self->_queue];
  [(NSXPCListener *)self->_listener resume];
  serverEndpoint = [(TKSmartCardSlotEngine *)self serverEndpoint];

  v46 = objc_alloc(MEMORY[0x1E696B0B8]);
  v47 = v46;
  if (serverEndpoint)
  {
    serverEndpoint2 = [(TKSmartCardSlotEngine *)self serverEndpoint];
    v49 = [v47 initWithListenerEndpoint:serverEndpoint2];
    registrationConnection = self->_registrationConnection;
    self->_registrationConnection = v49;
  }

  else
  {
    v51 = [v46 initWithMachServiceName:@"com.apple.ctkd.slot-registry" options:4096];
    serverEndpoint2 = self->_registrationConnection;
    self->_registrationConnection = v51;
  }

  v52 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A90110];
  [(NSXPCConnection *)self->_registrationConnection setRemoteObjectInterface:v52];

  [(NSXPCConnection *)self->_registrationConnection resume];
  *buf = 0;
  v63 = buf;
  v64 = 0x2020000000;
  v65 = 0;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke;
  v59[3] = &unk_1E86B76B0;
  v53 = nameCopy;
  v60 = v53;
  selfCopy = self;
  v54 = [(TKSmartCardSlotEngine *)self slotRegistryWithErrorHandler:v59];
  endpoint = [(NSXPCListener *)self->_listener endpoint];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_132;
  v58[3] = &unk_1E86B7700;
  v58[4] = self;
  v58[5] = buf;
  [v54 addSlotWithEndpoint:endpoint name:v53 type:@"smartcard" reply:v58];

  v56 = v63[24];
  _Block_object_dispose(buf, 8);

  return v56;
}

void __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TK_LOG_token_0(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_cold_1();
  }

  [*(a1 + 40) terminate];
}

void __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_132(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 184), a2);
  v6 = TK_LOG_token_0(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_132_cold_1();
  }

  v7 = os_log_create("com.apple.CryptoTokenKit.APDU", "APDULog");
  v8 = *(a1 + 32);
  v9 = *(v8 + 136);
  *(v8 + 136) = v7;

  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_135;
  v11[3] = &unk_1E86B76D8;
  v11[4] = v10;
  [v10 logWithBytes:0 handler:v11];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_135(uint64_t a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_135_cold_1(a1, oslog);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A8A8B0];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A8AD38];
  [v8 setInterface:v9 forSelector:sel_sessionWithParameters_reply_ argumentIndex:0 ofReply:1];

  [connectionCopy setExportedInterface:v8];
  [connectionCopy setExportedObject:self];
  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A87BE0];
  [connectionCopy setRemoteObjectInterface:v10];

  v11 = self->_clients;
  objc_sync_enter(v11);
  [(NSHashTable *)self->_clients addObject:connectionCopy];
  objc_sync_exit(v11);

  v12 = TK_LOG_token_0([connectionCopy _setQueue:self->_queue]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardSlotEngine listener:shouldAcceptNewConnection:];
  }

  [connectionCopy resume];
  return 1;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  pathCopy = path;
  v10 = NSStringFromSelector(sel_awaken);
  v11 = [pathCopy isEqualToString:v10];

  if (v11)
  {
    v12 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      if (self->_listener)
      {
        v15 = TK_LOG_token_0(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [TKSmartCardSlotEngine observeValueForKeyPath:ofObject:change:context:];
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = objc_loadWeakRetained(&self->_delegate);
          [v18 didWakeUpOnEngine:self];
LABEL_12:
        }
      }
    }

    else
    {
      v19 = TK_LOG_token_0(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [TKSmartCardSlotEngine observeValueForKeyPath:ofObject:change:context:];
      }

      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v18 = objc_loadWeakRetained(&self->_delegate);
        [v18 willSleepOnEngine:self];
        goto LABEL_12;
      }
    }
  }
}

- (id)dictionaryForState:(int64_t)state
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [dictionary setObject:v6 forKey:@"state"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_previousState];
  [dictionary setObject:v7 forKey:@"prevstate"];

  if (state == 4 || state == 2)
  {
    atr = self->_atr;
    if (atr)
    {
      bytes = [(TKSmartCardATR *)atr bytes];
      [dictionary setObject:bytes forKey:@"atr"];
    }

    objectEnumerator = [(NSMapTable *)self->_reservations objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    objectEnumerator2 = [nextObject objectEnumerator];
    nextObject2 = [objectEnumerator2 nextObject];

    if (nextObject2)
    {
      if ([nextObject2 exclusive])
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    [dictionary setObject:v15 forKey:@"share"];

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_powerState];
    [dictionary setObject:v16 forKey:@"power"];
  }

  return dictionary;
}

- (void)_changeStateTo:(id)to forClient:(id)client
{
  toCopy = to;
  clientCopy = client;
  remoteObjectProxy = [clientCopy remoteObjectProxy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__TKSmartCardSlotEngine__changeStateTo_forClient___block_invoke;
  v12[3] = &unk_1E86B7728;
  v12[4] = self;
  v13 = clientCopy;
  v14 = toCopy;
  v15 = a2;
  v10 = toCopy;
  v11 = clientCopy;
  [remoteObjectProxy notifyWithParameters:v10 reply:v12];
}

void __50__TKSmartCardSlotEngine__changeStateTo_forClient___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 112) objectForKey:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    if (![v3 activeStateNotifications])
    {
      v5 = [v4 activeStateNotifications];
      if (!v5)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TKSmartCardSlotEngine.m" lineNumber:391 description:@"Mismatch in active state notifications count"];
      }

      v6 = TK_LOG_token_0(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __50__TKSmartCardSlotEngine__changeStateTo_forClient___block_invoke_cold_1();
      }
    }

    [v4 setActiveStateNotifications:{objc_msgSend(v4, "activeStateNotifications") - 1}];
    v7 = [v4 replyNextState];

    if (v7)
    {
      v8 = [v4 replyNextState];
      v9 = [*(a1 + 48) objectForKeyedSubscript:@"state"];
      v8[2](v8, [v9 integerValue]);

      [v4 setReplyNextState:0];
    }

    v10 = [v4 replyFlushedState];
    if (v10)
    {
      v11 = [v4 activeStateNotifications];

      if (!v11)
      {
        v12 = [v4 replyFlushedState];
        v12[2]();

        [v4 setReplyFlushedState:0];
      }
    }
  }

  objc_sync_exit(v2);
}

- (void)changeStateTo:(int64_t)to powerState:(int64_t)state
{
  v32 = *MEMORY[0x1E69E9840];
  state = self->_state;
  self->_powerState = state;
  self->_previousState = state;
  v6 = [(TKSmartCardSlotEngine *)self dictionaryForState:?];
  v7 = TK_LOG_token_0(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardSlotEngine changeStateTo:v6 powerState:?];
  }

  v22 = self->_clients;
  objc_sync_enter(v22);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_clients;
  v8 = [(NSHashTable *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = self->_stateRequests;
        objc_sync_enter(v12);
        v13 = [(NSMapTable *)self->_stateRequests objectForKey:v11];
        if (!v13)
        {
          v13 = objc_opt_new();
          [(NSMapTable *)self->_stateRequests setObject:v13 forKey:v11];
        }

        [v13 setActiveStateNotifications:{objc_msgSend(v13, "activeStateNotifications") + 1}];

        objc_sync_exit(v12);
        v14 = +[TKSmartCardSlotEngine _testing_stateDelay];
        v15 = v14 == 0;

        if (v15)
        {
          [(TKSmartCardSlotEngine *)self _changeStateTo:v6 forClient:v11];
        }

        else
        {
          v16 = +[TKSmartCardSlotEngine _testing_stateDelay];
          [v16 floatValue];
          v18 = dispatch_time(0, (v17 * 1000000000.0));
          powerRequestsQueue = self->_powerRequestsQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __50__TKSmartCardSlotEngine_changeStateTo_powerState___block_invoke;
          block[3] = &unk_1E86B7320;
          block[4] = self;
          v25 = v6;
          v26 = v11;
          dispatch_after(v18, powerRequestsQueue, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v22);
  v20 = self->_stateRequests;
  objc_sync_enter(v20);
  self->_state = to;
  objc_sync_exit(v20);
}

- (void)waitForNextState:(int64_t)state reply:(id)reply
{
  replyCopy = reply;
  v6 = self->_stateRequests;
  objc_sync_enter(v6);
  if (self->_state == state)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v8 = [(NSMapTable *)self->_stateRequests objectForKey:currentConnection];
    if (v8)
    {
      v9 = objc_opt_new();

      [(NSMapTable *)self->_stateRequests setObject:v9 forKey:currentConnection];
    }

    else
    {
      v9 = 0;
    }

    [v9 setStateWhenRequested:state];
    [v9 setReplyNextState:replyCopy];
  }

  else
  {
    replyCopy[2]();
  }

  objc_sync_exit(v6);
}

- (void)waitForStateFlushedWithReply:(id)reply
{
  replyCopy = reply;
  v4 = self->_stateRequests;
  objc_sync_enter(v4);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = [(NSMapTable *)self->_stateRequests objectForKey:currentConnection];
  v7 = v6;
  if (v6 && [v6 activeStateNotifications])
  {
    [v7 setReplyFlushedState:replyCopy];
  }

  else
  {
    replyCopy[2]();
  }

  objc_sync_exit(v4);
}

- (void)simulateCardReinsertionWithReply:(id)reply
{
  v20[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    v8 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"Missing TKSmartCardSlotEngineDelegate delegate";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v10 = [v8 errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:v9];

    goto LABEL_7;
  }

  if ([(TKSmartCardSlotEngine *)self canSimulateCardReinsertion])
  {
    if (objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained engineSimulateCardReinsertion:self])
    {
      date = [MEMORY[0x1E695DF00] date];
      lastCardReinsertionSimulationCallTime = self->_lastCardReinsertionSimulationCallTime;
      self->_lastCardReinsertionSimulationCallTime = date;

      replyCopy[2](replyCopy, 1, 0);
      goto LABEL_11;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1001 userInfo:0];
LABEL_7:
    (replyCopy)[2](replyCopy, 0, v10);

    goto LABEL_11;
  }

  v11 = MEMORY[0x1E696ABC0];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reinsertion simulation is currently running or was run recently. Please wait at least %f seconds between the calls.", *&self->_cardReinsertionSimulationCallInterval, *MEMORY[0x1E696A278]];
  v18 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [v11 errorWithDomain:@"CryptoTokenKit" code:-1001 userInfo:v13];

  v16 = TK_LOG_token_0(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardSlotEngine simulateCardReinsertionWithReply:];
  }

  (replyCopy)[2](replyCopy, 0, v14);
LABEL_11:
}

- (BOOL)canSimulateCardReinsertion
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_lastCardReinsertionSimulationCallTime];
  LOBYTE(self) = v4 >= self->_cardReinsertionSimulationCallInterval;

  return self;
}

- (BOOL)reset
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = TK_LOG_token_0(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TKSmartCardSlotEngine reset];
    }

    [(TKSmartCardSlotEngine *)self changeStateTo:2 powerState:0];
    v6 = [v4 engineResetCard:self];
    v7 = TK_LOG_token_0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TKSmartCardSlotEngine reset];
    }

    if (self->_state == 2)
    {
      objc_storeStrong(&self->_atr, v6);
      if (v6)
      {
        bytes = [v6 bytes];
        [(TKSmartCardSlotEngine *)self logWithBytes:bytes handler:&__block_literal_global_209];

        v9 = 1;
        [(TKSmartCardSlotEngine *)self changeStateTo:4 powerState:1];
        self->_apduSentSinceLastReset = 0;
        self->_protocol = 0;
LABEL_14:

        goto LABEL_15;
      }

      v10 = TK_LOG_token_0([(TKSmartCardSlotEngine *)self logWithBytes:0 handler:&__block_literal_global_212]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        v13 = 138543362;
        v14 = name;
        _os_log_impl(&dword_1DF413000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: failed to reset the card", &v13, 0xCu);
      }

      [(TKSmartCardSlotEngine *)self changeStateTo:3 powerState:0];
    }

    v9 = 0;
    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

void __30__TKSmartCardSlotEngine_reset__block_invoke(int a1, os_log_t oslog, uint64_t a3)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __30__TKSmartCardSlotEngine_reset__block_invoke_cold_1();
  }
}

void __30__TKSmartCardSlotEngine_reset__block_invoke_210(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __30__TKSmartCardSlotEngine_reset__block_invoke_210_cold_1();
  }
}

- (BOOL)setProtocol:(unint64_t)protocol
{
  v5 = TK_LOG_token_0(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardSlotEngine setProtocol:];
  }

  if (protocol)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = [v7 engine:self setProtocol:protocol];

      if (self->_state == 4)
      {
        v10 = TK_LOG_token_0(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [TKSmartCardSlotEngine setProtocol:];
        }

        self->_protocol = v8;
        if (v8)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __37__TKSmartCardSlotEngine_setProtocol___block_invoke;
          v14[3] = &__block_descriptor_40_e33_v24__0__NSObject_OS_os_log__8r_16l;
          v14[4] = v8;
          [(TKSmartCardSlotEngine *)self logWithBytes:0 handler:v14];
          [(TKSmartCardSlotEngine *)self changeStateTo:4 powerState:2];
          v11 = 1;
LABEL_15:

          return v11;
        }

        v12 = TK_LOG_token_0([(TKSmartCardSlotEngine *)self logWithBytes:0 handler:&__block_literal_global_216]);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [TKSmartCardSlotEngine setProtocol:];
        }
      }
    }

    v11 = 0;
    goto LABEL_15;
  }

  return 1;
}

void __37__TKSmartCardSlotEngine_setProtocol___block_invoke(uint64_t a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __37__TKSmartCardSlotEngine_setProtocol___block_invoke_cold_1();
  }
}

void __37__TKSmartCardSlotEngine_setProtocol___block_invoke_214(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __37__TKSmartCardSlotEngine_setProtocol___block_invoke_214_cold_1();
  }
}

- (void)powerDownWithEject:(BOOL)eject
{
  ejectCopy = eject;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = TK_LOG_token_0(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TKSmartCardSlotEngine powerDownWithEject:];
    }

    v8 = [v6 engine:self powerDownWithEject:ejectCopy];
    v9 = v8;
    v10 = TK_LOG_token_0(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [TKSmartCardSlotEngine powerDownWithEject:];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__TKSmartCardSlotEngine_powerDownWithEject___block_invoke;
    v11[3] = &__block_descriptor_33_e33_v24__0__NSObject_OS_os_log__8r_16l;
    v12 = v9;
    [(TKSmartCardSlotEngine *)self logWithBytes:0 handler:v11];
    [(TKSmartCardSlotEngine *)self changeStateTo:self->_state powerState:0];
  }
}

void __44__TKSmartCardSlotEngine_powerDownWithEject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = *(a1 + 32);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (a1 == 1)
  {
    if (v4)
    {
      __44__TKSmartCardSlotEngine_powerDownWithEject___block_invoke_cold_2();
    }
  }

  else if (v4)
  {
    __44__TKSmartCardSlotEngine_powerDownWithEject___block_invoke_cold_1();
  }
}

- (void)scheduleIdlePowerDown
{
  if (![(NSMapTable *)self->_reservations count])
  {
    [(TKSmartCardSlotEngine *)self powerDownIdleTimeout];
    if (v3 > 0.0)
    {
      v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
      idlePowerDownSource = self->_idlePowerDownSource;
      self->_idlePowerDownSource = v4;

      [(TKSmartCardSlotEngine *)self powerDownIdleTimeout];
      v7 = (v6 * 1000000000.0);
      v8 = self->_idlePowerDownSource;
      v9 = dispatch_time(0, v7);
      dispatch_source_set_timer(v8, v9, v7, v7);
      v10 = self->_idlePowerDownSource;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __46__TKSmartCardSlotEngine_scheduleIdlePowerDown__block_invoke;
      handler[3] = &unk_1E86B6FE8;
      handler[4] = self;
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(self->_idlePowerDownSource);
    }
  }
}

void __46__TKSmartCardSlotEngine_scheduleIdlePowerDown__block_invoke(uint64_t a1)
{
  v2 = TK_LOG_token_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__TKSmartCardSlotEngine_scheduleIdlePowerDown__block_invoke_cold_1();
  }

  dispatch_source_cancel(*(*(a1 + 32) + 72));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__TKSmartCardSlotEngine_scheduleIdlePowerDown__block_invoke_218;
  block[3] = &unk_1E86B6FE8;
  block[4] = v5;
  dispatch_sync(v6, block);
}

- (void)cardPresent:(BOOL)present
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__TKSmartCardSlotEngine_cardPresent___block_invoke;
  v4[3] = &unk_1E86B77B0;
  v4[4] = self;
  presentCopy = present;
  dispatch_async(queue, v4);
}

void __37__TKSmartCardSlotEngine_cardPresent___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = 0;
  }

  v5 = *(a1 + 40);
  v6 = TK_LOG_token_0(v2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5 == 1)
  {
    if (v7)
    {
      v8 = *(*(a1 + 32) + 184);
      *buf = 138543362;
      v29 = v8;
      _os_log_impl(&dword_1DF413000, v6, OS_LOG_TYPE_INFO, "%{public}@: card inserted", buf, 0xCu);
    }

    [*(a1 + 32) logWithBytes:0 handler:&__block_literal_global_221_0];
    v9 = *(a1 + 32);
    v10 = *(v9 + 200);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__TKSmartCardSlotEngine_cardPresent___block_invoke_222;
    block[3] = &unk_1E86B6FE8;
    block[4] = v9;
    dispatch_async(v10, block);
  }

  else
  {
    if (v7)
    {
      v11 = *(*(a1 + 32) + 184);
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&dword_1DF413000, v6, OS_LOG_TYPE_INFO, "%{public}@: card removed", buf, 0xCu);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 56);
    *(v12 + 56) = 0;

    [*(a1 + 32) logWithBytes:0 handler:&__block_literal_global_225_0];
    [*(a1 + 32) changeStateTo:1 powerState:0];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
    [WeakRetained setValid:0];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = *(*(a1 + 32) + 104);
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v22 + 1) + 8 * v19) reply];
          v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
          (v20)[2](v20, 0, 0, v21);

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v17);
    }

    [*(*(a1 + 32) + 104) removeAllObjects];
  }
}

void __37__TKSmartCardSlotEngine_cardPresent___block_invoke_219(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __37__TKSmartCardSlotEngine_cardPresent___block_invoke_219_cold_1();
  }
}

void __37__TKSmartCardSlotEngine_cardPresent___block_invoke_222(uint64_t a1)
{
  if ([*(a1 + 32) reset])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 192);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__TKSmartCardSlotEngine_cardPresent___block_invoke_2;
    block[3] = &unk_1E86B6FE8;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __37__TKSmartCardSlotEngine_cardPresent___block_invoke_223(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __37__TKSmartCardSlotEngine_cardPresent___block_invoke_223_cold_1();
  }
}

- (void)setupSlotWithReply:(id)reply
{
  state = self->_state;
  replyCopy = reply;
  v6 = [(TKSmartCardSlotEngine *)self dictionaryForState:state];
  [v6 setObject:self->_name forKey:@"name"];
  slotParameters = [(TKSmartCardSlotEngine *)self slotParameters];
  getDictionaryParameters = [slotParameters getDictionaryParameters];
  [v6 setObject:getDictionaryParameters forKey:@"params"];

  v10 = TK_LOG_token_0(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardSlotEngine setupSlotWithReply:];
  }

  replyCopy[2](replyCopy, v6);
}

- (BOOL)connectCardSessionWithParameters:(id)parameters
{
  v31 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKeyedSubscript:@"sensitive"];
  unsignedIntegerValue = [parametersCopy objectForKeyedSubscript:@"protocol"];
  v7 = unsignedIntegerValue;
  if (unsignedIntegerValue)
  {
    unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
    v8 = unsignedIntegerValue;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v9 = TK_LOG_token_0(unsignedIntegerValue);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 138543874;
    *&buf[4] = name;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 2112;
    *&buf[20] = v5;
    _os_log_debug_impl(&dword_1DF413000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: connectCardSession:proto=%04x, sensitive=%@", buf, 0x1Cu);
  }

  objc_initWeak(&location, self);
  powerRequestsQueue = self->_powerRequestsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke;
  block[3] = &unk_1E86B6FE8;
  block[4] = self;
  dispatch_sync(powerRequestsQueue, block);
  v12 = TK_LOG_token_0(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardSlotEngine connectCardSessionWithParameters:];
  }

  if (!self->_powerState || (v13 = [v5 BOOLValue], v13) && self->_apduSentSinceLastReset)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
LABEL_12:
    v14 = self->_powerRequestsQueue;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_226;
    v25[3] = &unk_1E86B77D8;
    v25[4] = self;
    v25[5] = buf;
    v26[1] = v8;
    objc_copyWeak(v26, &location);
    dispatch_sync(v14, v25);
    objc_destroyWeak(v26);
    goto LABEL_19;
  }

  if (self->_powerState != 2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
    v19 = self->_powerRequestsQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_227;
    v23[3] = &unk_1E86B7800;
    v23[4] = self;
    v23[5] = buf;
    v24[1] = v8;
    objc_copyWeak(v24, &location);
    dispatch_sync(v19, v23);
    objc_destroyWeak(v24);
    goto LABEL_19;
  }

  protocol = self->_protocol;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  buf[24] = 0;
  if ((protocol & ~v8) != 0)
  {
    goto LABEL_12;
  }

  v16 = TK_LOG_token_0(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_loadWeakRetained(&location);
    name = [v17 name];
    [(TKSmartCardSlotEngine *)name connectCardSessionWithParameters:v29, v16, v17];
  }

  *(*&buf[8] + 24) = 1;
LABEL_19:
  v20 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(&location);

  return v20 & 1;
}

void __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = 0;
  }
}

void __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_226(uint64_t a1)
{
  v2 = [*(a1 + 32) reset];
  if (v2)
  {
    v3 = [*(a1 + 32) setProtocol:*(a1 + 56)];
    *(*(*(a1 + 40) + 8) + 24) = v3;
    v4 = TK_LOG_token_0(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_226_cold_2(a1);
    }
  }

  else
  {
    v5 = TK_LOG_token_0(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_226_cold_1(a1);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_227(uint64_t a1)
{
  v2 = [*(a1 + 32) setProtocol:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = v2;
  v3 = TK_LOG_token_0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_227_cold_1(a1);
  }
}

- (void)leaveSession:(id)session
{
  v39[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = sessionCopy;
  if (!sessionCopy)
  {
    v8 = 0;
    goto LABEL_21;
  }

  endPolicy = [sessionCopy endPolicy];
  if ((endPolicy - 2) < 2)
  {
    v9 = TK_LOG_token_0(endPolicy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [TKSmartCardSlotEngine leaveSession:];
    }

    v10 = [v5 endPolicy] == 3;
    powerRequestsQueue = self->_powerRequestsQueue;
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __38__TKSmartCardSlotEngine_leaveSession___block_invoke_228;
    v34 = &unk_1E86B77B0;
    v12 = v10;
    selfCopy = self;
    v36 = v12;
    dispatch_sync(powerRequestsQueue, &v31);
  }

  else
  {
    if (endPolicy == 1)
    {
      v13 = TK_LOG_token_0(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [TKSmartCardSlotEngine leaveSession:];
      }

      v14 = self->_powerRequestsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__TKSmartCardSlotEngine_leaveSession___block_invoke;
      block[3] = &unk_1E86B6FE8;
      block[4] = self;
      dispatch_sync(v14, block);
      goto LABEL_19;
    }

    if (!endPolicy)
    {
      v7 = TK_LOG_token_0(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [TKSmartCardSlotEngine leaveSession:];
      }

LABEL_19:
      v8 = 1;
      goto LABEL_20;
    }
  }

  v8 = 0;
LABEL_20:
  [v5 setActive:{0, v31, v32, v33, v34}];
LABEL_21:
  objc_storeWeak(&self->_session, 0);
  if ([(NSMutableArray *)self->_sessionRequests count])
  {
    v15 = [(NSMutableArray *)self->_sessionRequests objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_sessionRequests removeObjectAtIndex:0];
    v16 = [TKSmartCardSessionEngine alloc];
    connection = [v15 connection];
    v18 = [(TKSmartCardSessionEngine *)v16 initWithSlot:self connection:connection];

    objc_storeWeak(&self->_session, v18);
    parameters = [v15 parameters];
    v20 = [parameters objectForKeyedSubscript:@"endpolicy"];

    if (v20)
    {
      unsignedIntegerValue = [v20 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    [(TKSmartCardSessionEngine *)v18 setEndPolicy:unsignedIntegerValue];
    parameters2 = [v15 parameters];
    v23 = [(TKSmartCardSlotEngine *)self connectCardSessionWithParameters:parameters2];

    if (v23)
    {
      [(TKSmartCardSessionEngine *)v18 setActive:1];
      reply = [v15 reply];
      v38 = @"protocol";
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_protocol];
      v39[0] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      (reply)[2](reply, v18, v26, 0);

      if ([(NSMutableArray *)self->_sessionRequests count])
      {
        connection2 = [(TKSmartCardSessionEngine *)v18 connection];
        remoteObjectProxy = [connection2 remoteObjectProxy];

        [remoteObjectProxy cardSessionRequested];
      }
    }

    else
    {
      reply2 = [v15 reply];
      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-2 userInfo:0];
      (reply2)[2](reply2, 0, 0, v30);

      [(TKSmartCardSlotEngine *)self leaveSession:0];
    }
  }

  else if (v8 && self->_atr)
  {
    [(TKSmartCardSlotEngine *)self scheduleIdlePowerDown];
  }
}

- (void)sessionWithParameters:(id)parameters reply:(id)reply
{
  replyCopy = reply;
  parametersCopy = parameters;
  v13 = objc_alloc_init(TKSmartCardSessionRequest);
  [(TKSmartCardSessionRequest *)v13 setParameters:parametersCopy];

  [(TKSmartCardSessionRequest *)v13 setReply:replyCopy];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  [(TKSmartCardSessionRequest *)v13 setConnection:currentConnection];

  [(NSMutableArray *)self->_sessionRequests addObject:v13];
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    connection = [WeakRetained connection];
    remoteObjectProxy = [connection remoteObjectProxy];

    [remoteObjectProxy cardSessionRequested];
  }

  else
  {
    [(TKSmartCardSlotEngine *)self leaveSession:0];
  }
}

- (id)_findReservation:(id)reservation connection:(id)connection
{
  v24 = *MEMORY[0x1E69E9840];
  reservationCopy = reservation;
  connectionCopy = connection;
  if (connectionCopy)
  {
    v8 = connectionCopy;
    v9 = [(NSMapTable *)self->_reservations objectForKey:connectionCopy];
    v10 = [v9 objectForKey:reservationCopy];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = self->_reservations;
    v12 = [(NSMapTable *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v8 = 0;
      v14 = *v20;
LABEL_5:
      v15 = 0;
      v16 = v8;
      while (1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v8 = *(*(&v19 + 1) + 8 * v15);

        v17 = [(NSMapTable *)self->_reservations objectForKey:v8, v19];
        v10 = [v17 objectForKey:reservationCopy];

        if (v10)
        {
          break;
        }

        ++v15;
        v16 = v8;
        if (v13 == v15)
        {
          v13 = [(NSMapTable *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v8 = 0;
      v10 = 0;
    }
  }

  return v10;
}

- (id)_getReservationId
{
  do
  {
    v3 = MEMORY[0x1E696AD98];
    ++self->_lastId;
    v4 = [v3 numberWithUnsignedInteger:?];
    v5 = [(TKSmartCardSlotEngine *)self _findReservation:v4 connection:0];
  }

  while (v5);
  v6 = MEMORY[0x1E696AD98];
  lastId = self->_lastId;

  return [v6 numberWithUnsignedInteger:lastId];
}

- (void)reserveProtocols:(id)protocols reservationId:(id)id exclusive:(BOOL)exclusive reply:(id)reply
{
  exclusiveCopy = exclusive;
  v56 = *MEMORY[0x1E69E9840];
  protocolsCopy = protocols;
  idCopy = id;
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if (idCopy)
  {
    v29 = [(TKSmartCardSlotEngine *)self _findReservation:idCopy connection:currentConnection];
    v8 = v29;
    if (!v29)
    {
      (*(replyCopy + 2))(replyCopy, 0, 0, 3);
      v29 = 0;
      goto LABEL_38;
    }

    if (!protocolsCopy)
    {
      v9 = [(NSMapTable *)self->_reservations objectForKey:currentConnection];
      [v9 removeObjectForKey:idCopy];
      if (![v9 count])
      {
        [(NSMapTable *)self->_reservations removeObjectForKey:currentConnection];
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, 0);
      goto LABEL_37;
    }
  }

  else
  {
    if (!protocolsCopy)
    {
      (*(replyCopy + 2))(replyCopy, 0, 0, 0);
      v29 = 0;
      idCopy = 0;
      goto LABEL_38;
    }

    v8 = 0;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0xFFFFLL;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_reservations;
  v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v39 objects:v55 count:16];
  v29 = v8;
  if (v10)
  {
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [(NSMapTable *)self->_reservations objectForKey:*(*(&v39 + 1) + 8 * i)];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __72__TKSmartCardSlotEngine_reserveProtocols_reservationId_exclusive_reply___block_invoke;
        v34[3] = &unk_1E86B7828;
        v35 = idCopy;
        v36 = &v43;
        v37 = &v47;
        v38 = &v51;
        [v13 enumerateKeysAndObjectsUsingBlock:v34];
      }

      v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v10);
  }

  if (!exclusiveCopy)
  {
    if ((v48[3] & 1) == 0)
    {
      v16 = v44[3];
      if (([protocolsCopy unsignedIntegerValue] & v16) != 0)
      {
        goto LABEL_25;
      }

      if ((v48[3] & 1) == 0)
      {
        v24 = v44[3];
        if (([protocolsCopy unsignedIntegerValue] & v24) != 0)
        {
          v14 = 3;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    v14 = 2;
LABEL_21:
    (*(replyCopy + 2))(replyCopy, 0, 0, v14);
    v15 = 0;
    goto LABEL_36;
  }

  if (v52[3])
  {
    goto LABEL_20;
  }

LABEL_25:
  if (!v29)
  {
    currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
    dictionary = [(NSMapTable *)self->_reservations objectForKey:currentConnection2];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMapTable *)self->_reservations setObject:dictionary forKey:currentConnection2];
    }

    v29 = objc_alloc_init(_TKSmartCardSlotReservation);
    [(_TKSmartCardSlotReservation *)v29 setProtocols:protocolsCopy];
    [(_TKSmartCardSlotReservation *)v29 setExclusive:exclusiveCopy];
    _getReservationId = [(TKSmartCardSlotEngine *)self _getReservationId];

    [dictionary setObject:v29 forKey:_getReservationId];
    goto LABEL_34;
  }

  protocols = [(_TKSmartCardSlotReservation *)v29 protocols];
  if (![protocols isEqual:protocolsCopy])
  {

    goto LABEL_33;
  }

  exclusive = [(_TKSmartCardSlotReservation *)v29 exclusive];

  if ((exclusive ^ exclusiveCopy))
  {
LABEL_33:
    [(_TKSmartCardSlotReservation *)v29 setProtocols:protocolsCopy];
    _getReservationId = idCopy;
    [(_TKSmartCardSlotReservation *)v29 setExclusive:exclusiveCopy];
LABEL_34:
    v15 = 1;
    goto LABEL_35;
  }

  v15 = 0;
  _getReservationId = idCopy;
LABEL_35:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(protocolsCopy, "unsignedIntegerValue") & v44[3]}];
  (*(replyCopy + 2))(replyCopy, v22, _getReservationId, 0);

  idCopy = _getReservationId;
LABEL_36:
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  if (v15)
  {
LABEL_37:
    powerRequestsQueue = self->_powerRequestsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__TKSmartCardSlotEngine_reserveProtocols_reservationId_exclusive_reply___block_invoke_2;
    block[3] = &unk_1E86B6FE8;
    block[4] = self;
    dispatch_sync(powerRequestsQueue, block);
  }

LABEL_38:
}

void __72__TKSmartCardSlotEngine_reserveProtocols_reservationId_exclusive_reply___block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (a1[4] != a2)
  {
    v4 = a3;
    v5 = [v4 protocols];
    *(*(a1[5] + 8) + 24) &= [v5 unsignedIntegerValue];

    LOBYTE(v5) = [v4 exclusive];
    *(*(a1[6] + 8) + 24) = v5;
    *(*(a1[7] + 8) + 24) = 1;
  }
}

- (void)sendControl:(id)control data:(id)data expectedLength:(unsigned int)length reply:(id)reply
{
  v7 = *&length;
  controlCopy = control;
  dataCopy = data;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = [v14 engine:self control:controlCopy data:dataCopy expectedLength:v7];
  }

  else
  {
    v15 = 0;
  }

  replyCopy[2](replyCopy, v15);
}

- (void)getAttrib:(unsigned int)attrib reply:(id)reply
{
  v4 = *&attrib;
  replyCopy = reply;
  v7 = 600;
  v12 = 600;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [v10 engine:self getAttrib:v4 error:&v12];

    v7 = v12;
  }

  else
  {
    v11 = 0;
  }

  replyCopy[2](replyCopy, v11, v7);
}

- (void)setAttrib:(unsigned int)attrib data:(id)data reply:(id)reply
{
  v6 = *&attrib;
  dataCopy = data;
  replyCopy = reply;
  v10 = 1;
  v15 = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 engine:self setAttrib:v6 data:dataCopy attribNotSupported:&v15];

    v10 = v15;
  }

  else
  {
    v14 = 0;
  }

  replyCopy[2](replyCopy, v14, v10 & 1);
}

- (void)runUserInteraction:(id)interaction reply:(id)reply
{
  interactionCopy = interaction;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v13 = 0;
    v11 = [v10 engine:self runUserInteraction:interactionCopy error:&v13];
    v12 = v13;
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:0];
    v11 = 0;
  }

  replyCopy[2](replyCopy, v11, v12);
}

- (void)terminate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__TKSmartCardSlotEngine_terminate__block_invoke;
  block[3] = &unk_1E86B6FE8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __34__TKSmartCardSlotEngine_terminate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = TK_LOG_token_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__TKSmartCardSlotEngine_terminate__block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 80) invalidate];
  [*(*(a1 + 32) + 88) invalidate];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 96);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 96);
  *(v8 + 96) = 0;

  v10 = *(a1 + 32);
  if (v10[9])
  {
    dispatch_source_cancel(v10[9]);
    v10 = *(a1 + 32);
  }

  return [(dispatch_source_t *)v10 logWithBytes:0 handler:&__block_literal_global_241, v12];
}

void __34__TKSmartCardSlotEngine_terminate__block_invoke_239(int a1, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __34__TKSmartCardSlotEngine_terminate__block_invoke_239_cold_1();
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (TKSmartCardSlotEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TKSmartCardSessionEngine)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)setupWithName:delegate:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1DF413000, v1, OS_LOG_TYPE_ERROR, "%{public}@: failed to register, error:%{public}@", v2, 0x16u);
}

void __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_132_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__TKSmartCardSlotEngine__setupWithName_delegate___block_invoke_135_cold_1(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 184);
  v3 = a2;
  [v2 UTF8String];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DF413000, v3, OS_LOG_TYPE_DEBUG, "logging slot %{public}s", v4, 0xCu);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.2()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)changeStateTo:(uint64_t)a1 powerState:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 description];
  v8 = [v2 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F5A7A8A8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)simulateCardReinsertionWithReply:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)reset
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __30__TKSmartCardSlotEngine_reset__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __30__TKSmartCardSlotEngine_reset__block_invoke_210_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setProtocol:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setProtocol:.cold.2()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setProtocol:.cold.3()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(&dword_1DF413000, v0, OS_LOG_TYPE_ERROR, "%{public}@: failed to set protocol for the card", v1, 0xCu);
}

void __37__TKSmartCardSlotEngine_setProtocol___block_invoke_214_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)powerDownWithEject:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)powerDownWithEject:.cold.2()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __44__TKSmartCardSlotEngine_powerDownWithEject___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__TKSmartCardSlotEngine_powerDownWithEject___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__TKSmartCardSlotEngine_scheduleIdlePowerDown__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __37__TKSmartCardSlotEngine_cardPresent___block_invoke_219_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __37__TKSmartCardSlotEngine_cardPresent___block_invoke_223_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setupSlotWithReply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)connectCardSessionWithParameters:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

- (void)connectCardSessionWithParameters:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "%{public}@: connectCardSession already in nego state", buf, 0xCu);
}

void __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_226_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_226_cold_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __58__TKSmartCardSlotEngine_connectCardSessionWithParameters___block_invoke_227_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained name];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)leaveSession:.cold.1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)leaveSession:.cold.2()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)leaveSession:.cold.3()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __34__TKSmartCardSlotEngine_terminate__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __34__TKSmartCardSlotEngine_terminate__block_invoke_239_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end