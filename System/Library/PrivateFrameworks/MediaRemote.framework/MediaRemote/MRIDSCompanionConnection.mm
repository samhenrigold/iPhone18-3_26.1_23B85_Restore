@interface MRIDSCompanionConnection
+ (id)sharedManager;
- (BOOL)_sendMessage:(id)message type:(id)type destination:(id)destination session:(id)session options:(id)options priority:(int64_t)priority replyID:(id)d response:(id)self0;
- (BOOL)isConnected;
- (IDSDevice)device;
- (MRDeviceInfo)deviceInfo;
- (MRIDSCompanionConnection)init;
- (NSString)description;
- (id)_configurationFromDestination:(id)destination session:(id)session;
- (id)deviceDebugName;
- (id)name;
- (unint64_t)_generateMessageID;
- (void)_maybeDeviceConnectionStatusChanged;
- (void)handleDidReceiveResetConnectionRequest;
- (void)initializeService;
- (void)removeMessageHandlerForType:(id)type;
- (void)removeMessageHandlerForType:(id)type destination:(id)destination session:(id)session;
- (void)resetConnection;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)setDevice:(id)device;
- (void)setMessageHandler:(id)handler forType:(id)type;
- (void)setMessageHandler:(id)handler forType:(id)type destination:(id)destination session:(id)session;
@end

@implementation MRIDSCompanionConnection

+ (id)sharedManager
{
  if (sharedManager___once != -1)
  {
    +[MRIDSCompanionConnection sharedManager];
  }

  v3 = sharedManager___manager_0;

  return v3;
}

- (BOOL)isConnected
{
  deviceInfo = [(MRIDSCompanionConnection *)self deviceInfo];
  v3 = deviceInfo != 0;

  return v3;
}

- (MRDeviceInfo)deviceInfo
{
  device = [(MRIDSCompanionConnection *)self device];
  uniqueIDOverride = [device uniqueIDOverride];
  v5 = uniqueIDOverride;
  if (uniqueIDOverride)
  {
    uniqueID = uniqueIDOverride;
  }

  else
  {
    uniqueID = [device uniqueID];
  }

  v7 = uniqueID;

  name = [device name];
  productName = [device productName];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceInfo = selfCopy->_deviceInfo;
  if (device && !deviceInfo)
  {
    v12 = objc_alloc_init(MRDeviceInfo);
    v13 = selfCopy->_deviceInfo;
    selfCopy->_deviceInfo = v12;

    [(MRDeviceInfo *)selfCopy->_deviceInfo setDeviceUID:v7];
    [(MRDeviceInfo *)selfCopy->_deviceInfo setName:name];
    if ([productName containsString:@"Watch"])
    {
      v14 = 6;
    }

    else
    {
      v14 = 1;
    }

    [(MRDeviceInfo *)selfCopy->_deviceInfo setDeviceClass:v14];
    deviceInfo = selfCopy->_deviceInfo;
  }

  v15 = deviceInfo;
  objc_sync_exit(selfCopy);

  return v15;
}

- (IDSDevice)device
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_device;
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)_generateMessageID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_totalOutgoingMessageCount + 1;
  selfCopy->_totalOutgoingMessageCount = v3;
  objc_sync_exit(selfCopy);

  return v3;
}

void __41__MRIDSCompanionConnection_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MRIDSCompanionConnection);
  v1 = sharedManager___manager_0;
  sharedManager___manager_0 = v0;
}

- (MRIDSCompanionConnection)init
{
  v35 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MRIDSCompanionConnection;
  v2 = [(MRIDSCompanionConnection *)&v25 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremote.MRIDSCompanionConnection.idsQueue", v3);
    idsQueue = v2->_idsQueue;
    v2->_idsQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.mediaremote.MRIDSCompanionConnection.calloutQueue", v6);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v7;

    objc_initWeak(&location, v2);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __32__MRIDSCompanionConnection_init__block_invoke;
    v22[3] = &unk_1E769C930;
    objc_copyWeak(&v23, &location);
    [(MRIDSCompanionConnection *)v2 setMessageHandler:v22 forType:@"Reset"];
    v9 = v2->_idsQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __32__MRIDSCompanionConnection_init__block_invoke_2;
    handler[3] = &unk_1E769C958;
    objc_copyWeak(&v21, &location);
    v10 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &v2->_firstUnlockToken, v9, handler);
    if (v10)
    {
      v11 = _MRLogForCategory(9uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[MRIDSCompanionConnection] Failed to register for first unlock notification (status = %d)", buf, 8u);
      }
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v12 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
    v29 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
    if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke;
      v33 = &unk_1E769ADA8;
      v34 = &v26;
      __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(buf);
      v12 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (!v12)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int soft_MKBDeviceUnlockedSinceBoot(void)"];
      [currentHandler handleFailureInFunction:v17 file:@"MRIDSCompanionConnection.m" lineNumber:29 description:{@"%s", dlerror()}];

      __break(1u);
    }

    if (v12() == 1)
    {
      v13 = _MRLogForCategory(9uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[MRIDSCompanionConnection] Device unlocked since boot", buf, 2u);
      }

      v14 = v2->_idsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32__MRIDSCompanionConnection_init__block_invoke_58;
      block[3] = &unk_1E769A228;
      v19 = v2;
      dispatch_async(v14, block);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__MRIDSCompanionConnection_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDidReceiveResetConnectionRequest];
}

void __32__MRIDSCompanionConnection_init__block_invoke_2(uint64_t a1)
{
  v2 = _MRLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRIDSCompanionConnection] Received first unlock notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initializeService];
}

- (void)initializeService
{
  dispatch_assert_queue_V2(self->_idsQueue);
  mr_sharedIDSCompanionService = [MEMORY[0x1E69A48A8] mr_sharedIDSCompanionService];
  service = self->_service;
  self->_service = mr_sharedIDSCompanionService;

  [(IDSService *)self->_service addDelegate:self queue:self->_idsQueue];
  [(MRIDSCompanionConnection *)self _maybeDeviceConnectionStatusChanged];
  if (notify_is_valid_token(self->_firstUnlockToken))
  {
    firstUnlockToken = self->_firstUnlockToken;

    notify_cancel(firstUnlockToken);
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = MRIDSCompanionConnection;
  v4 = [(MRIDSCompanionConnection *)&v9 description];
  v5 = [v3 initWithFormat:@"%@", v4];

  deviceInfo = [(MRIDSCompanionConnection *)self deviceInfo];
  [v5 appendFormat:@"deviceInfo=%@", deviceInfo];

  devices = [(IDSService *)self->_service devices];
  [v5 appendFormat:@"IDSDevices=%@", devices];

  return v5;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  obj = self;
  objc_sync_enter(obj);
  device = obj->_device;
  obj->_device = deviceCopy;
  v6 = deviceCopy;

  deviceInfo = obj->_deviceInfo;
  obj->_deviceInfo = 0;

  objc_sync_exit(obj);
}

- (id)name
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  name = [(IDSDevice *)selfCopy->_device name];
  objc_sync_exit(selfCopy);

  return name;
}

- (id)deviceDebugName
{
  device = [(MRIDSCompanionConnection *)self device];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [device uniqueID];
  name = [device name];
  productName = [device productName];
  v7 = [v3 initWithFormat:@"%@-%@ (%@)", uniqueID, name, productName];

  return v7;
}

- (void)resetConnection
{
  if ([(MRIDSCompanionConnection *)self isConnected])
  {

    [(MRIDSCompanionConnection *)self sendMessage:0 type:@"Reset" destination:0 session:0 options:0 priority:300];
  }
}

- (BOOL)_sendMessage:(id)message type:(id)type destination:(id)destination session:(id)session options:(id)options priority:(int64_t)priority replyID:(id)d response:(id)self0
{
  v61 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  optionsCopy = options;
  dCopy = d;
  responseCopy = response;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _generateMessageID = [(MRIDSCompanionConnection *)self _generateMessageID];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_generateMessageID];
  [v17 setObject:v19 forKeyedSubscript:@"messageid"];

  [v17 setObject:destinationCopy forKeyedSubscript:@"destination"];
  [v17 setObject:sessionCopy forKeyedSubscript:@"session"];
  [v17 setObject:messageCopy forKeyedSubscript:@"data"];
  [v17 setObject:typeCopy forKeyedSubscript:@"type"];
  [v17 setObject:dCopy forKeyedSubscript:@"replyid"];
  v20 = _MRLogForCategory(9uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    StringRepresentation = MRDataCreateStringRepresentation(messageCopy);
    *buf = 134219010;
    v52 = _generateMessageID;
    v53 = 2112;
    v54 = StringRepresentation;
    v55 = 2112;
    v56 = typeCopy;
    v57 = 2112;
    v58 = destinationCopy;
    v59 = 2112;
    v60 = sessionCopy;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[MRIDSCompanionConnection] Message Sent<%lu>: data=%@ type=%@ destination=%@ session=%@", buf, 0x34u);
  }

  v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
  v23 = *MEMORY[0x1E69A47A0];
  v24 = [v22 objectForKeyedSubscript:*MEMORY[0x1E69A47A0]];
  v25 = v24 == 0;

  if (v25)
  {
    [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v23];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69A4E10]];
    [v22 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69A47D8]];
  }

  [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:{*MEMORY[0x1E69A47A8], priority}];
  if (!self->_service)
  {
    v27 = _MRLogForCategory(9uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [MRIDSCompanionConnection _sendMessage:v27 type:? destination:? session:? options:? priority:? replyID:? response:?];
    }
  }

  if (responseCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_responseHandlers)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      responseHandlers = selfCopy->_responseHandlers;
      selfCopy->_responseHandlers = v29;
    }

    v31 = [responseCopy copy];
    v32 = MEMORY[0x1A58E3570]();
    v33 = selfCopy->_responseHandlers;
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_generateMessageID];
    [(NSMutableDictionary *)v33 setObject:v32 forKeyedSubscript:v34];

    objc_sync_exit(selfCopy);
  }

  service = self->_service;
  v36 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69A4B50]];
  v49 = 0;
  v50 = 0;
  v37 = [(IDSService *)service sendMessage:v17 toDestinations:v36 priority:v43 options:v22 identifier:&v50 error:&v49];
  v38 = v50;
  v39 = v49;

  if ((v37 & 1) == 0)
  {
    v40 = _MRLogForCategory(9uLL);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MRIDSCompanionConnection _sendMessage:v39 type:v40 destination:? session:? options:? priority:? replyID:? response:?];
    }
  }

  return v37;
}

- (void)setMessageHandler:(id)handler forType:(id)type
{
  handlerCopy = handler;
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_messageHandlers = &selfCopy->_messageHandlers;
  if (!selfCopy->_messageHandlers)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = *p_messageHandlers;
    *p_messageHandlers = v10;
  }

  v12 = [handlerCopy copy];
  v13 = MEMORY[0x1A58E3570]();
  [*p_messageHandlers setObject:v13 forKeyedSubscript:typeCopy];

  v14 = _MRLogForCategory(9uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MRIDSCompanionConnection setMessageHandler:forType:];
  }

  objc_sync_exit(selfCopy);
}

- (void)setMessageHandler:(id)handler forType:(id)type destination:(id)destination session:(id)session
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  destinationMessageHandlers = selfCopy->_destinationMessageHandlers;
  if (!destinationMessageHandlers)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = selfCopy->_destinationMessageHandlers;
    selfCopy->_destinationMessageHandlers = v16;

    destinationMessageHandlers = selfCopy->_destinationMessageHandlers;
  }

  v18 = [(NSMutableDictionary *)destinationMessageHandlers objectForKeyedSubscript:typeCopy];
  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)selfCopy->_destinationMessageHandlers setObject:v18 forKeyedSubscript:typeCopy];
  }

  v19 = [handlerCopy copy];
  v20 = [(MRIDSCompanionConnection *)selfCopy _configurationFromDestination:destinationCopy session:sessionCopy];
  [v18 setObject:v19 forKeyedSubscript:v20];

  v21 = _MRLogForCategory(9uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = selfCopy->_destinationMessageHandlers;
    v23 = 138413058;
    v24 = typeCopy;
    v25 = 2112;
    v26 = destinationCopy;
    v27 = 2112;
    v28 = sessionCopy;
    v29 = 2112;
    v30 = v22;
    _os_log_debug_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEBUG, "[MRIDSCompanionConnection] Added destination handler for type=%@, destination=%@, session=%@, %@", &v23, 0x2Au);
  }

  objc_sync_exit(selfCopy);
}

- (void)removeMessageHandlerForType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_messageHandlers objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    [(NSMutableDictionary *)selfCopy->_messageHandlers setObject:0 forKeyedSubscript:typeCopy];
    v7 = _MRLogForCategory(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MRIDSCompanionConnection removeMessageHandlerForType:];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)removeMessageHandlerForType:(id)type destination:(id)destination session:(id)session
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  destinationCopy = destination;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(MRIDSCompanionConnection *)selfCopy _configurationFromDestination:destinationCopy session:sessionCopy];
  v13 = [(NSMutableDictionary *)selfCopy->_destinationMessageHandlers objectForKeyedSubscript:typeCopy];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = [(NSMutableDictionary *)selfCopy->_destinationMessageHandlers objectForKeyedSubscript:typeCopy];
    [v15 setObject:0 forKeyedSubscript:v12];

    v16 = _MRLogForCategory(9uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      destinationMessageHandlers = selfCopy->_destinationMessageHandlers;
      v18 = 138413058;
      v19 = typeCopy;
      v20 = 2112;
      v21 = destinationCopy;
      v22 = 2112;
      v23 = sessionCopy;
      v24 = 2112;
      v25 = destinationMessageHandlers;
      _os_log_debug_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEBUG, "[MRIDSCompanionConnection] Remove destination handler for type=%@, destination=%@, session=%@, %@", &v18, 0x2Au);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)handleDidReceiveResetConnectionRequest
{
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRIDSCompanionConnection_handleDidReceiveResetConnectionRequest__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(calloutQueue, block);
}

void __66__MRIDSCompanionConnection_handleDidReceiveResetConnectionRequest__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MRIDSCompanionConnectionDeviceDidDisconnect" object:*(a1 + 32)];

  if ([*(a1 + 32) isConnected])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"MRIDSCompanionConnectionDeviceDidConnect" object:*(a1 + 32)];
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v65 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v37 = [messageCopy objectForKeyedSubscript:@"type"];
  v39 = [messageCopy objectForKeyedSubscript:@"destination"];
  v38 = [messageCopy objectForKeyedSubscript:@"session"];
  v41 = [messageCopy objectForKeyedSubscript:@"data"];
  v40 = [messageCopy objectForKeyedSubscript:@"messageid"];
  v17 = [messageCopy objectForKeyedSubscript:@"replyid"];
  v36 = [[MRIDSCompanionMessage alloc] initWithID:v40 data:v41];
  v18 = _MRLogForCategory(9uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    StringRepresentation = MRDataCreateStringRepresentation(v41);
    *buf = 138413570;
    v54 = v40;
    v55 = 2112;
    v56 = StringRepresentation;
    v57 = 2112;
    v58 = v37;
    v59 = 2112;
    v60 = v39;
    v61 = 2112;
    v62 = v38;
    v63 = 2112;
    v64 = v17;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "[MRIDSCompanionConnection] Message received<%@>: data=%@ type=%@ destination=%@ session=%@ replyID=%@", buf, 0x3Eu);
  }

  if (([(IDSDevice *)self->_device isConnected]& 1) != 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21 = [(NSMutableDictionary *)selfCopy->_messageHandlers objectForKeyedSubscript:v37];
    v22 = [(NSMutableDictionary *)selfCopy->_destinationMessageHandlers objectForKeyedSubscript:v37];
    v23 = [(MRIDSCompanionConnection *)selfCopy _configurationFromDestination:v39 session:v38];
    v35 = [v22 objectForKeyedSubscript:v23];

    if (v17)
    {
      v24 = [(NSMutableDictionary *)selfCopy->_responseHandlers objectForKeyedSubscript:v17];
      [(NSMutableDictionary *)selfCopy->_responseHandlers setObject:0 forKeyedSubscript:v17];
    }

    else
    {
      v24 = 0;
    }

    objc_sync_exit(selfCopy);
    if (v24)
    {
      queue = v17;
      v25 = contextCopy;
      v26 = dCopy;
      v27 = accountCopy;
      v28 = serviceCopy;
      calloutQueue = selfCopy->_calloutQueue;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __75__MRIDSCompanionConnection_service_account_incomingMessage_fromID_context___block_invoke;
      v50[3] = &unk_1E769AB28;
      v30 = &v52;
      v52 = v24;
      v31 = &v51;
      v51 = v36;
      v32 = v50;
    }

    else
    {
      if (v21)
      {
        queuea = selfCopy->_calloutQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __75__MRIDSCompanionConnection_service_account_incomingMessage_fromID_context___block_invoke_2;
        block[3] = &unk_1E769C980;
        v49 = v21;
        v46 = v36;
        v47 = v39;
        v48 = v38;
        dispatch_async(queuea, block);
      }

      if (!v35)
      {
        goto LABEL_16;
      }

      queue = v17;
      v25 = contextCopy;
      v26 = dCopy;
      v27 = accountCopy;
      v28 = serviceCopy;
      calloutQueue = selfCopy->_calloutQueue;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __75__MRIDSCompanionConnection_service_account_incomingMessage_fromID_context___block_invoke_3;
      v42[3] = &unk_1E769AB28;
      v30 = &v44;
      v44 = v35;
      v31 = &v43;
      v43 = v36;
      v32 = v42;
    }

    dispatch_async(calloutQueue, v32);

    serviceCopy = v28;
    accountCopy = v27;
    dCopy = v26;
    contextCopy = v25;
    v17 = queue;

LABEL_16:
    goto LABEL_17;
  }

  v21 = _MRLogForCategory(9uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [MRIDSCompanionConnection service:v21 account:? incomingMessage:? fromID:? context:?];
  }

LABEL_17:
}

- (void)_maybeDeviceConnectionStatusChanged
{
  v37 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_idsQueue);
  devices = [(IDSService *)self->_service devices];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [devices countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice] && objc_msgSend(v9, "isConnected"))
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [devices countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  device = [(MRIDSCompanionConnection *)self device];
  if (v6 != device && ([v6 isEqual:device] & 1) == 0)
  {
    name = [device name];

    v13 = _MRLogForCategory(9uLL);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (name)
    {
      if (v14)
      {
        name2 = [device name];
        name3 = [v6 name];
        *buf = 138544130;
        v29 = @"MRIDSCompanionConnection";
        v30 = 2114;
        v31 = @"active paired device";
        v32 = 2112;
        v33 = name2;
        v34 = 2112;
        v35 = name3;
        _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", buf, 0x2Au);

LABEL_20:
      }
    }

    else if (v14)
    {
      name2 = [v6 name];
      *buf = 138543874;
      v29 = @"MRIDSCompanionConnection";
      v30 = 2114;
      v31 = @"active paired device";
      v32 = 2112;
      v33 = name2;
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
      goto LABEL_20;
    }

    [(MRIDSCompanionConnection *)self setDevice:v6];
    v17 = @"MRIDSCompanionConnectionDeviceDidConnect";
    if (!v6)
    {
      v17 = @"MRIDSCompanionConnectionDeviceDidDisconnect";
    }

    v18 = v17;
    calloutQueue = self->_calloutQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63__MRIDSCompanionConnection__maybeDeviceConnectionStatusChanged__block_invoke;
    v21[3] = &unk_1E769A4A0;
    v22 = v18;
    selfCopy = self;
    v20 = v18;
    dispatch_async(calloutQueue, v21);
  }
}

void __63__MRIDSCompanionConnection__maybeDeviceConnectionStatusChanged__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40)];
}

- (id)_configurationFromDestination:(id)destination session:(id)session
{
  v5 = MEMORY[0x1E696AEC0];
  sessionCopy = session;
  destinationCopy = destination;
  v8 = [v5 alloc];
  v9 = @"default";
  if (destinationCopy)
  {
    v10 = destinationCopy;
  }

  else
  {
    v10 = @"default";
  }

  if (sessionCopy)
  {
    v9 = sessionCopy;
  }

  v11 = [v8 initWithFormat:@"%@-%@", v10, v9];

  return v11;
}

- (void)_sendMessage:(uint64_t)a1 type:(NSObject *)a2 destination:session:options:priority:replyID:response:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "[MRIDSCompanionConnection] Error %@ sending message", &v2, 0xCu);
}

@end