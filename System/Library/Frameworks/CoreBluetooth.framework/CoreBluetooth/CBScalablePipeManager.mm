@interface CBScalablePipeManager
- (CBScalablePipeManager)initWithDelegate:(id)delegate queue:(id)queue;
- (CBScalablePipeManagerDelegate)delegate;
- (id)pipeForName:(id)name identifier:(id)identifier;
- (void)dealloc;
- (void)getStatistics:(id)statistics;
- (void)handleEndpointAdded:(id)added;
- (void)handleEndpointRemoved:(id)removed;
- (void)handleHostStateUpdated:(id)updated;
- (void)handleMsg:(unsigned __int16)msg args:(id)args;
- (void)handlePipeConnected:(id)connected;
- (void)handlePipeDisconnected:(id)disconnected;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)orphanPipes;
- (void)registerEndpoint:(id)endpoint type:(int64_t)type priority:(int64_t)priority options:(id)options;
- (void)registerEndpoint:(id)endpoint type:(int64_t)type priority:(int64_t)priority transport:(int64_t)transport;
- (void)registerEndpoint:(id)endpoint type:(int64_t)type priority:(int64_t)priority transport:(int64_t)transport requireEncryption:(BOOL)encryption;
- (void)setLinkRequirementsForPeer:(id)peer packetsPerSecond:(unsigned int)second inputBytesPerSecond:(unsigned int)perSecond outputBytesPerSecond:(unsigned int)bytesPerSecond;
- (void)setLinkRequirementsForPeer:(id)peer withClientName:(id)name packetsPerSecond:(unsigned int)second inputBytesPerSecond:(unsigned int)perSecond outputBytesPerSecond:(unsigned int)bytesPerSecond;
- (void)setLinkRequirementsForPeerWithLatency:(id)latency latencyInMs:(unsigned int)ms inputBytesPerSecond:(unsigned int)second outputBytesPerSecond:(unsigned int)perSecond;
- (void)unregisterAllEndpoints;
- (void)unregisterEndpoint:(id)endpoint;
@end

@implementation CBScalablePipeManager

- (CBScalablePipeManager)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = CBScalablePipeManager;
  initInternal = [(CBManager *)&v14 initInternal];
  if (initInternal)
  {
    [(CBScalablePipeManager *)initInternal addObserver:initInternal forKeyPath:@"state" options:0 context:objc_opt_class()];
    [(CBScalablePipeManager *)initInternal addObserver:initInternal forKeyPath:@"delegate" options:0 context:objc_opt_class()];
    [(CBScalablePipeManager *)initInternal addObserver:initInternal forKeyPath:@"localName" options:0 context:objc_opt_class()];
    [(CBScalablePipeManager *)initInternal setDelegate:delegateCopy];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    identifiers = initInternal->_identifiers;
    initInternal->_identifiers = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    pipes = initInternal->_pipes;
    initInternal->_pipes = v11;

    [(CBManager *)initInternal startWithQueue:queueCopy options:0 sessionType:2];
  }

  return initInternal;
}

- (void)dealloc
{
  [(CBScalablePipeManager *)self orphanPipes];
  [(CBScalablePipeManager *)self removeObserver:self forKeyPath:@"state" context:objc_opt_class()];
  [(CBScalablePipeManager *)self removeObserver:self forKeyPath:@"delegate" context:objc_opt_class()];
  [(CBScalablePipeManager *)self removeObserver:self forKeyPath:@"localName" context:objc_opt_class()];
  v3.receiver = self;
  v3.super_class = CBScalablePipeManager;
  [(CBManager *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (objc_opt_class() == context)
  {
    if ([pathCopy isEqualToString:@"state"])
    {
      if ([(CBManager *)self state]!= CBManagerStatePoweredOn)
      {
        [(CBScalablePipeManager *)self orphanPipes];
        if ([(CBManager *)self state]== CBManagerStateResetting)
        {
          [(NSMutableSet *)self->_identifiers removeAllObjects];
        }
      }

      delegate = [(CBScalablePipeManager *)self delegate];
      [delegate scalablePipeManagerDidUpdateState:self];
    }

    else
    {
      if (![pathCopy isEqualToString:@"delegate"])
      {
        goto LABEL_20;
      }

      delegate2 = [(CBScalablePipeManager *)self delegate];
      *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;

      delegate3 = [(CBScalablePipeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v16;

      delegate4 = [(CBScalablePipeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v18;

      delegate = [(CBScalablePipeManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v19 = 8;
      }

      else
      {
        v19 = 0;
      }

      *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v19;
    }

    goto LABEL_20;
  }

  v20.receiver = self;
  v20.super_class = CBScalablePipeManager;
  [(CBScalablePipeManager *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_20:
}

- (id)pipeForName:(id)name identifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  identifierCopy = identifier;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_pipes;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v21 + 1) + 8 * v11);
      name = [v12 name];
      if ([name isEqualToString:nameCopy])
      {
        peer = [v12 peer];
        identifier = [peer identifier];
        v16 = [identifier isEqual:identifierCopy];

        if (v16)
        {
          v17 = v12;

          goto LABEL_17;
        }
      }

      else
      {
      }

      if (v9 == ++v11)
      {
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (!v9)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v18 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [(CBScalablePipeManager *)identifierCopy pipeForName:nameCopy identifier:v18];
  }

  v17 = 0;
LABEL_17:

  return v17;
}

- (void)orphanPipes
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_pipes;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setOrphan];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSHashTable *)self->_pipes removeAllObjects];
}

- (void)registerEndpoint:(id)endpoint type:(int64_t)type priority:(int64_t)priority transport:(int64_t)transport
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"kCBMsgArgsTransport";
  v10 = MEMORY[0x1E696AD98];
  endpointCopy = endpoint;
  v12 = [v10 numberWithInteger:transport];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [(CBScalablePipeManager *)self registerEndpoint:endpointCopy type:type priority:priority options:v13];
}

- (void)registerEndpoint:(id)endpoint type:(int64_t)type priority:(int64_t)priority transport:(int64_t)transport requireEncryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"kCBMsgArgsTransport";
  v12 = MEMORY[0x1E696AD98];
  endpointCopy = endpoint;
  v14 = [v12 numberWithInteger:transport];
  v17[1] = @"kCBMsgArgRequiresEncryption";
  v18[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:encryptionCopy];
  v18[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [(CBScalablePipeManager *)self registerEndpoint:endpointCopy type:type priority:priority options:v16];
}

- (void)registerEndpoint:(id)endpoint type:(int64_t)type priority:(int64_t)priority options:(id)options
{
  v41[8] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  optionsCopy = options;
  v12 = [optionsCopy objectForKeyedSubscript:@"kCBMsgArgRequiresEncryption"];
  if (v12)
  {
    v13 = [optionsCopy objectForKeyedSubscript:@"kCBMsgArgRequiresEncryption"];
    bOOLValue = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v14 = [optionsCopy objectForKeyedSubscript:@"kCBMsgArgsTransport"];
  if (v14)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"kCBMsgArgsTransport"];
    intValue = [v15 intValue];
  }

  else
  {
    intValue = 0;
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"kCBDisableBluetoothReliability"];
  if (v16)
  {
    v17 = [optionsCopy objectForKeyedSubscript:@"kCBDisableBluetoothReliability"];
    bOOLValue2 = [v17 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  selfCopy = self;

  v19 = [optionsCopy objectForKeyedSubscript:@"kCBOptionStayConnectedWhenIdle"];
  if (v19)
  {
    v20 = [optionsCopy objectForKeyedSubscript:@"kCBOptionStayConnectedWhenIdle"];
    bOOLValue3 = [v20 BOOLValue];
  }

  else
  {
    bOOLValue3 = 0;
  }

  v22 = [optionsCopy objectForKeyedSubscript:@"kCBLePipeOptionTrace"];
  if (v22)
  {
    [optionsCopy objectForKeyedSubscript:@"kCBLePipeOptionTrace"];
    v24 = v23 = priority;
    intValue2 = [v24 intValue];

    priority = v23;
    if ([endpointCopy length])
    {
      goto LABEL_15;
    }
  }

  else
  {
    intValue2 = 0;

    if ([endpointCopy length])
    {
      goto LABEL_15;
    }
  }

  [CBScalablePipeManager registerEndpoint:a2 type:selfCopy priority:? options:?];
LABEL_15:
  v41[0] = endpointCopy;
  v40[0] = @"kCBMsgArgName";
  v40[1] = @"kCBMsgArgType";
  v34 = endpointCopy;
  v36 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v41[1] = v36;
  v40[2] = @"kCBLePipeMsgArgPriority";
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
  v41[2] = v25;
  v40[3] = @"kCBMsgArgOptions";
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:intValue];
  v41[3] = v26;
  v40[4] = @"kCBMsgArgRequiresEncryption";
  v27 = [MEMORY[0x1E696AD98] numberWithInt:bOOLValue];
  v41[4] = v27;
  v40[5] = @"kCBDisableBluetoothReliability";
  v28 = [MEMORY[0x1E696AD98] numberWithInt:bOOLValue2];
  v41[5] = v28;
  v40[6] = @"kCBOptionStayConnectedWhenIdle";
  v29 = [MEMORY[0x1E696AD98] numberWithInt:bOOLValue3];
  v41[6] = v29;
  v40[7] = @"kCBLePipeOptionTrace";
  v30 = [MEMORY[0x1E696AD98] numberWithInt:intValue2];
  v41[7] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:8];
  v32 = [(CBManager *)selfCopy sendMsg:10 args:v31];

  if (v32)
  {
    [(NSMutableSet *)selfCopy->_identifiers addObject:v34];
  }
}

- (void)unregisterEndpoint:(id)endpoint
{
  v9[1] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  if (![endpointCopy length])
  {
    [(CBScalablePipeManager *)a2 unregisterEndpoint:?];
  }

  v8 = @"kCBMsgArgName";
  v9[0] = endpointCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [(CBManager *)self sendMsg:11 args:v6];

  if (v7)
  {
    [(NSMutableSet *)self->_identifiers removeObject:endpointCopy];
  }
}

- (void)unregisterAllEndpoints
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_identifiers;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v14 = @"kCBMsgArgName";
        v15 = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:{1, v10}];
        [(CBManager *)self sendMsg:11 args:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_identifiers removeAllObjects];
}

- (void)setLinkRequirementsForPeer:(id)peer packetsPerSecond:(unsigned int)second inputBytesPerSecond:(unsigned int)perSecond outputBytesPerSecond:(unsigned int)bytesPerSecond
{
  v6 = *&bytesPerSecond;
  v7 = *&perSecond;
  v8 = *&second;
  v17[4] = *MEMORY[0x1E69E9840];
  v17[0] = peer;
  v16[0] = @"kCBMsgArgDeviceUUID";
  v16[1] = @"kCBMsgArgPacketsPerSecond";
  v10 = MEMORY[0x1E696AD98];
  peerCopy = peer;
  v12 = [v10 numberWithUnsignedInt:v8];
  v17[1] = v12;
  v16[2] = @"kCBMsgArgInputBytesPerSecond";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v17[2] = v13;
  v16[3] = @"kCBMsgArgOutputBytesPerSecond";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v17[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  [(CBManager *)self sendMsg:12 args:v15];
}

- (void)setLinkRequirementsForPeer:(id)peer withClientName:(id)name packetsPerSecond:(unsigned int)second inputBytesPerSecond:(unsigned int)perSecond outputBytesPerSecond:(unsigned int)bytesPerSecond
{
  v7 = *&bytesPerSecond;
  v8 = *&perSecond;
  v9 = *&second;
  v20[5] = *MEMORY[0x1E69E9840];
  v19[0] = @"kCBMsgArgDeviceUUID";
  v19[1] = @"kCBMsgArgClientName";
  v20[0] = peer;
  v20[1] = name;
  v19[2] = @"kCBMsgArgPacketsPerSecond";
  v12 = MEMORY[0x1E696AD98];
  nameCopy = name;
  peerCopy = peer;
  v15 = [v12 numberWithUnsignedInt:v9];
  v20[2] = v15;
  v19[3] = @"kCBMsgArgInputBytesPerSecond";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  v20[3] = v16;
  v19[4] = @"kCBMsgArgOutputBytesPerSecond";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v20[4] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];

  [(CBManager *)self sendMsg:12 args:v18];
}

- (void)setLinkRequirementsForPeerWithLatency:(id)latency latencyInMs:(unsigned int)ms inputBytesPerSecond:(unsigned int)second outputBytesPerSecond:(unsigned int)perSecond
{
  v6 = *&perSecond;
  v7 = *&second;
  v8 = *&ms;
  v17[4] = *MEMORY[0x1E69E9840];
  v17[0] = latency;
  v16[0] = @"kCBMsgArgDeviceUUID";
  v16[1] = @"kCBMsgArgLatencyInMs";
  v10 = MEMORY[0x1E696AD98];
  latencyCopy = latency;
  v12 = [v10 numberWithUnsignedInt:v8];
  v17[1] = v12;
  v16[2] = @"kCBMsgArgInputBytesPerSecond";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v17[2] = v13;
  v16[3] = @"kCBMsgArgOutputBytesPerSecond";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v17[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  [(CBManager *)self sendMsg:13 args:v15];
}

- (void)getStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CBScalablePipeManager_getStatistics___block_invoke;
  v6[3] = &unk_1E811CFC8;
  v7 = statisticsCopy;
  v5 = statisticsCopy;
  [(CBManager *)self sendMsg:14 args:MEMORY[0x1E695E0F8] withReply:v6];
}

- (void)handleEndpointAdded:(id)added
{
  addedCopy = added;
  v8 = [addedCopy objectForKeyedSubscript:@"kCBMsgArgName"];
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:addedCopy];

  v6 = [(NSMutableSet *)self->_identifiers member:v8];

  if (v6)
  {
    if (v5)
    {
      [(NSMutableSet *)self->_identifiers removeObject:v8];
    }

    if (*&self->_delegateFlags)
    {
      delegate = [(CBScalablePipeManager *)self delegate];
      [delegate scalablePipeManager:self didRegisterEndpoint:v8 error:v5];
    }
  }
}

- (void)handleEndpointRemoved:(id)removed
{
  v5 = [removed objectForKeyedSubscript:@"kCBMsgArgName"];
  [(NSMutableSet *)self->_identifiers removeObject:?];
  if ((*&self->_delegateFlags & 2) != 0)
  {
    delegate = [(CBScalablePipeManager *)self delegate];
    [delegate scalablePipeManager:self didUnregisterEndpoint:v5];
  }
}

- (void)handlePipeConnected:(id)connected
{
  connectedCopy = connected;
  v6 = [[CBScalablePipe alloc] initWithPipeManager:self info:connectedCopy];

  [(NSHashTable *)self->_pipes addObject:v6];
  if ((*&self->_delegateFlags & 4) != 0)
  {
    delegate = [(CBScalablePipeManager *)self delegate];
    [delegate scalablePipeManager:self pipeDidConnect:v6];
  }
}

- (void)handlePipeDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v9 = [disconnectedCopy objectForKeyedSubscript:@"kCBMsgArgName"];
  v5 = [disconnectedCopy objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [MEMORY[0x1E696ABC0] errorWithInfo:disconnectedCopy];

  v7 = [(CBScalablePipeManager *)self pipeForName:v9 identifier:v5];
  if (v7)
  {
    if ((*&self->_delegateFlags & 8) != 0)
    {
      delegate = [(CBScalablePipeManager *)self delegate];
      [delegate scalablePipeManager:self pipeDidDisconnect:v7 error:v6];
    }

    [(NSHashTable *)self->_pipes removeObject:v7];
  }
}

- (void)handleHostStateUpdated:(id)updated
{
  updatedCopy = updated;
  v10 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgName"];
  v5 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDeviceUUID"];
  v6 = [(CBScalablePipeManager *)self pipeForName:v10 identifier:v5];
  v7 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgState"];

  integerValue = [v7 integerValue];
  peer = [v6 peer];
  [peer setHostState:integerValue];
}

- (void)handleMsg:(unsigned __int16)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if (msgCopy <= 16)
  {
    if (msgCopy == 15)
    {
      v8 = &selRef_handleEndpointAdded_;
    }

    else
    {
      if (msgCopy != 16)
      {
        goto LABEL_20;
      }

      v8 = &selRef_handleEndpointRemoved_;
    }

    v7 = 1;
    goto LABEL_13;
  }

  if (msgCopy == 17)
  {
    v7 = 0;
    v8 = &selRef_handlePipeConnected_;
    goto LABEL_13;
  }

  if (msgCopy == 18)
  {
    v7 = 0;
    v8 = &selRef_handlePipeDisconnected_;
    goto LABEL_13;
  }

  if (msgCopy != 19)
  {
LABEL_20:
    if (CBLogInitOnce != -1)
    {
      [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
    }

    v12 = CBLogComponent;
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    [CBScalablePipeManager handleMsg:msgCopy args:v12];

    return;
  }

  v7 = 0;
  v8 = &selRef_handleHostStateUpdated_;
LABEL_13:
  v9 = *v8;
  state = [(CBManager *)self state];
  if ((v7 & 1) != 0 || state == CBManagerStatePoweredOn)
  {
    [self v9];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBRFCOMMChannel configureChannelPortParams:dataBits:parity:stopBits:];
    }

    v11 = CBLogComponent;
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
LABEL_18:

      return;
    }

    [(CBScalablePipeManager *)self handleMsg:msgCopy args:v11];
  }
}

- (CBScalablePipeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pipeForName:(os_log_t)log identifier:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1C0AC1000, log, OS_LOG_TYPE_ERROR, "Unable to locate pipe to device %@ on endpoint %@", &v3, 0x16u);
}

- (void)registerEndpoint:(uint64_t)a1 type:(uint64_t)a2 priority:options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBScalablePipeManager.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
}

- (void)unregisterEndpoint:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBScalablePipeManager.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
}

- (void)handleMsg:(os_log_t)log args:.cold.2(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_1C0AC1000, log, OS_LOG_TYPE_DEBUG, "%@ is not powered on, ignoring message: %u", &v3, 0x12u);
}

- (void)handleMsg:(int)a1 args:(NSObject *)a2 .cold.4(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1C0AC1000, a2, OS_LOG_TYPE_ERROR, "Unhandled XPC message: %u", v2, 8u);
}

@end