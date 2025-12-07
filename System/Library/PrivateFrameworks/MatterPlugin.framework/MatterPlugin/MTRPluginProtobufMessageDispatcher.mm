@interface MTRPluginProtobufMessageDispatcher
- (BOOL)deregisterForRequestMessageWithType:(id)type forSessionID:(id)d;
- (BOOL)handleNewSessionSetupForMessage:(id)message transport:(id)transport errorBlock:(id)block;
- (BOOL)invokeMessageHandlersForMessage:(id)message transport:(id)transport errorBlock:(id)block;
- (BOOL)registerForRequestMessageWithType:(id)type requestHandler:(SEL)handler forSessionID:(id)d;
- (MTRPluginProtobufMessageDispatcher)init;
- (id)_findMessageReceiverMatchingDelegate:(id)delegate;
- (id)_findMessageReceiverMatchingSessionID:(id)d;
- (id)description;
- (void)invokeMessageHandlersForReceiver:(id)receiver message:(id)message transport:(id)transport errorBlock:(id)block;
- (void)removeDelegate:(id)delegate;
- (void)setDelegate:(id)delegate delegateQueue:(id)queue;
- (void)setDelegate:(id)delegate delegateQueue:(id)queue forSessionID:(id)d;
@end

@implementation MTRPluginProtobufMessageDispatcher

- (MTRPluginProtobufMessageDispatcher)init
{
  v6.receiver = self;
  v6.super_class = MTRPluginProtobufMessageDispatcher;
  v2 = [(MTRPluginProtobufMessageDispatcher *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MTRPluginProtobufMessageDispatcher *)v2 setControlChannelReceiver:0];
    v4 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginProtobufMessageDispatcher *)v3 setMessageReceivers:v4];
  }

  return v3;
}

- (id)_findMessageReceiverMatchingDelegate:(id)delegate
{
  v21 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  controlChannelReceiver = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  delegate = [controlChannelReceiver delegate];

  if (delegate == delegateCopy)
  {
    controlChannelReceiver2 = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    messageReceivers = [(MTRPluginProtobufMessageDispatcher *)self messageReceivers];
    v8 = [messageReceivers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(messageReceivers);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          delegate2 = [v12 delegate];

          if (delegate2 == delegateCopy)
          {
            controlChannelReceiver2 = v12;

            goto LABEL_13;
          }
        }

        v9 = [messageReceivers countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    controlChannelReceiver2 = 0;
  }

LABEL_13:

  return controlChannelReceiver2;
}

- (id)_findMessageReceiverMatchingSessionID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    messageReceivers = [(MTRPluginProtobufMessageDispatcher *)self messageReceivers];
    v6 = [messageReceivers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(messageReceivers);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          sessionID = [v9 sessionID];
          v11 = [sessionID isEqual:dCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [messageReceivers countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDelegate:(id)delegate delegateQueue:(id)queue forSessionID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingSessionID:dCopy];
  if (!v12)
  {
    v12 = [[MTRPluginProtobufMessageReceiver alloc] initWithDelegate:delegateCopy delegateQueue:queueCopy sessionID:dCopy];
    messageReceivers = [(MTRPluginProtobufMessageDispatcher *)selfCopy messageReceivers];
    [messageReceivers addObject:v12];

    v14 = matterPluginLog_default;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v15];
      }

      else
      {
        v15 = *MEMORY[0x277D0F960];
      }

      v16 = v15;
      *buf = 138413058;
      v18 = selfCopy;
      v19 = 2112;
      v20 = delegateCopy;
      v21 = 1040;
      v22 = 16;
      v23 = 2096;
      v24 = &v16;
      _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ Adding new session receiver delegate %@ for sessionID: %{uuid_t}.16P", buf, 0x26u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setDelegate:(id)delegate delegateQueue:(id)queue
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  controlChannelReceiver = [(MTRPluginProtobufMessageDispatcher *)selfCopy controlChannelReceiver];

  if (!controlChannelReceiver)
  {
    v10 = [[MTRPluginProtobufMessageReceiver alloc] initWithDelegate:delegateCopy delegateQueue:queueCopy sessionID:0];
    [(MTRPluginProtobufMessageDispatcher *)selfCopy setControlChannelReceiver:v10];

    v11 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = selfCopy;
      v14 = 2112;
      v15 = delegateCopy;
      _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Adding control channel receiver delegate %@", &v12, 0x16u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)removeDelegate:(id)delegate
{
  v27 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingDelegate:delegateCopy];
  if (v6)
  {
    controlChannelReceiver = [(MTRPluginProtobufMessageDispatcher *)selfCopy controlChannelReceiver];
    if (controlChannelReceiver && (-[MTRPluginProtobufMessageDispatcher controlChannelReceiver](selfCopy, "controlChannelReceiver"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v6 isEqual:v8], v8, controlChannelReceiver, v9))
    {
      v10 = matterPluginLog_default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        delegate = [v6 delegate];
        *buf = 138412546;
        v20 = selfCopy;
        v21 = 2112;
        v22 = delegate;
        _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ Removing control channel delegate %@", buf, 0x16u);
      }

      [(MTRPluginProtobufMessageDispatcher *)selfCopy setControlChannelReceiver:0];
    }

    else
    {
      v12 = matterPluginLog_default;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        delegate2 = [v6 delegate];
        v17 = 0uLL;
        sessionID = [v6 sessionID];

        if (sessionID)
        {
          sessionID2 = [v6 sessionID];
          [sessionID2 getUUIDBytes:&v17];
        }

        else
        {
          v17 = *MEMORY[0x277D0F960];
        }

        v18 = v17;
        *buf = 138413058;
        v20 = selfCopy;
        v21 = 2112;
        v22 = delegate2;
        v23 = 1040;
        v24 = 16;
        v25 = 2096;
        v26 = &v18;
        _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Removing delegate %@ for session: %{uuid_t}.16P", buf, 0x26u);
      }

      messageReceivers = [(MTRPluginProtobufMessageDispatcher *)selfCopy messageReceivers];
      [messageReceivers removeObject:v6];
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)registerForRequestMessageWithType:(id)type requestHandler:(SEL)handler forSessionID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = NSStringFromSelector(handler);
  v12 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingSessionID:dCopy];
  v13 = v12;
  if (v12)
  {
    messageSelectors = [v12 messageSelectors];
    [messageSelectors setObject:v11 forKeyedSubscript:typeCopy];

    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v18];
      }

      else
      {
        v18 = *MEMORY[0x277D0F960];
      }

      v17 = v18;
      *buf = 138413314;
      v21 = selfCopy;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = typeCopy;
      v26 = 1040;
      v27 = 16;
      v28 = 2096;
      v29 = &v17;
      _os_log_debug_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEBUG, "%@ Registering selector %@ for messageType: %@ on session: %{uuid_t}.16P", buf, 0x30u);
    }
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v18];
      }

      else
      {
        v18 = *MEMORY[0x277D0F960];
      }

      v19 = v18;
      *buf = 138413314;
      v21 = selfCopy;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = typeCopy;
      v26 = 1040;
      v27 = 16;
      v28 = 2096;
      v29 = &v19;
      _os_log_error_impl(&dword_25830F000, v15, OS_LOG_TYPE_ERROR, "%@ Failed to register selector %@ for messageType: %@ on session: %{uuid_t}.16P since session is not valid", buf, 0x30u);
    }
  }

  objc_sync_exit(selfCopy);
  return v13 != 0;
}

- (BOOL)deregisterForRequestMessageWithType:(id)type forSessionID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingSessionID:dCopy];
  v10 = v9;
  if (v9)
  {
    if (typeCopy)
    {
      messageSelectors = [v9 messageSelectors];
      [messageSelectors removeObjectForKey:typeCopy];
    }

    v12 = matterPluginLog_default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v15];
      }

      else
      {
        v15 = *MEMORY[0x277D0F960];
      }

      v14 = v15;
      *buf = 138413058;
      v18 = selfCopy;
      v19 = 2112;
      v20 = typeCopy;
      v21 = 1040;
      v22 = 16;
      v23 = 2096;
      v24 = &v14;
      _os_log_debug_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEBUG, "%@ Deregistering selector for messageType: %@ on session: %{uuid_t}.16P", buf, 0x26u);
    }
  }

  else
  {
    v12 = matterPluginLog_default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 0uLL;
      if (dCopy)
      {
        [dCopy getUUIDBytes:&v15];
      }

      else
      {
        v15 = *MEMORY[0x277D0F960];
      }

      v16 = v15;
      *buf = 138413058;
      v18 = selfCopy;
      v19 = 2112;
      v20 = typeCopy;
      v21 = 1040;
      v22 = 16;
      v23 = 2096;
      v24 = &v16;
      _os_log_error_impl(&dword_25830F000, v12, OS_LOG_TYPE_ERROR, "%@ Failed to deregister selector for messageType: %@ on session: %{uuid_t}.16P since session is not valid", buf, 0x26u);
    }
  }

  objc_sync_exit(selfCopy);
  return v10 != 0;
}

- (BOOL)handleNewSessionSetupForMessage:(id)message transport:(id)transport errorBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  transportCopy = transport;
  blockCopy = block;
  v11 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v27 = 2112;
    v28 = messageCopy;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Received message %@ with new session identifier", buf, 0x16u);
  }

  controlChannelReceiver = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
  delegate = [controlChannelReceiver delegate];

  v14 = objc_opt_respondsToSelector();
  if (v14)
  {
    controlChannelReceiver2 = [(MTRPluginProtobufMessageDispatcher *)self controlChannelReceiver];
    delegateQueue = [controlChannelReceiver2 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__MTRPluginProtobufMessageDispatcher_handleNewSessionSetupForMessage_transport_errorBlock___block_invoke;
    block[3] = &unk_279893C30;
    v20 = delegate;
    v21 = transportCopy;
    v22 = messageCopy;
    selfCopy2 = self;
    v24 = blockCopy;
    dispatch_async(delegateQueue, block);
  }

  else if (blockCopy)
  {
    v17 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginProtobufMessageDispatcher handleNewSessionSetupForMessage:messageCopy transport:v17 errorBlock:?];
    }

    blockCopy[2](blockCopy);
  }

  return v14 & 1;
}

void __91__MTRPluginProtobufMessageDispatcher_handleNewSessionSetupForMessage_transport_errorBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) messageTransport:*(a1 + 40) handleIncomingMessage:*(a1 + 48)];
  v3 = *(a1 + 56);
  objc_sync_enter(v3);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) sessionIdentifier];
  v6 = [v4 _findMessageReceiverMatchingSessionID:v5];

  if (v6)
  {
    [*(a1 + 56) invokeMessageHandlersForReceiver:v6 message:*(a1 + 48) transport:*(a1 + 40) errorBlock:*(a1 + 64)];
  }

  else
  {
    v7 = [*(a1 + 48) sessionIdentifier];

    if (v7)
    {
      v8 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        v9 = *(a1 + 56);
        v12 = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Found no handler for incoming new session message; %@", &v12, 0x16u);
      }

      v11 = *(a1 + 64);
      if (v11)
      {
        (*(v11 + 16))();
      }
    }
  }

  objc_sync_exit(v3);
  objc_autoreleasePoolPop(v2);
}

- (void)invokeMessageHandlersForReceiver:(id)receiver message:(id)message transport:(id)transport errorBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  receiverCopy = receiver;
  messageCopy = message;
  transportCopy = transport;
  blockCopy = block;
  if (receiverCopy && messageCopy && transportCopy)
  {
    messageSelectors = [receiverCopy messageSelectors];
    messageType = [messageCopy messageType];
    v16 = [messageSelectors objectForKeyedSubscript:messageType];

    v17 = NSSelectorFromString(v16);
    delegate = [receiverCopy delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate isSuspended])
    {
      v19 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = messageCopy;
        v42 = 2112;
        *v43 = delegate;
        v20 = "%@ Received message %@ but delegate %@ is suspended, sending error response to close remote session";
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v21 = matterPluginLog_default;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        *&buf[8] = 0;
        sessionIdentifier = [messageCopy sessionIdentifier];

        if (sessionIdentifier)
        {
          sessionIdentifier2 = [messageCopy sessionIdentifier];
          [sessionIdentifier2 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v40 = *buf;
        *buf = 138413314;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = delegate;
        v42 = 1040;
        *v43 = 16;
        *&v43[4] = 2096;
        *&v43[6] = &v40;
        v44 = 2112;
        v45 = messageCopy;
        _os_log_debug_impl(&dword_25830F000, v21, OS_LOG_TYPE_DEBUG, "%@ Calling invokeHandler on delegate %p for session with identifier %{uuid_t}.16P for message: %@", buf, 0x30u);
      }

      delegateQueue = [receiverCopy delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke;
      block[3] = &unk_279893E18;
      v36 = delegate;
      v39 = v17;
      v37 = transportCopy;
      v38 = messageCopy;
      dispatch_async(delegateQueue, block);

      v23 = v36;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = delegate;
          v42 = 2112;
          *v43 = messageCopy;
          v20 = "%@ Receiver delegate %@ has no handler for message: %@";
LABEL_22:
          _os_log_error_impl(&dword_25830F000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x20u);
          if (!blockCopy)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

LABEL_17:
        if (!blockCopy)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_18:
        blockCopy[2](blockCopy);
        goto LABEL_19;
      }

      delegateQueue2 = [receiverCopy delegateQueue];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2;
      v31[3] = &unk_279893D98;
      v31[4] = self;
      v32 = delegate;
      v33 = messageCopy;
      v34 = transportCopy;
      dispatch_async(delegateQueue2, v31);

      v23 = v32;
    }

    if (objc_opt_respondsToSelector())
    {
      delegateQueue3 = [receiverCopy delegateQueue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_60;
      v28[3] = &unk_279893AC8;
      v29 = delegate;
      v30 = transportCopy;
      dispatch_async(delegateQueue3, v28);
    }

    goto LABEL_19;
  }

LABEL_20:
}

void __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) methodSignatureForSelector:*(a1 + 56)];
  v4 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v3];
  [v4 setSelector:*(a1 + 56)];
  [v4 setTarget:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = v5;
  [v4 setArgument:&v7 atIndex:{2, v6}];
  [v4 setArgument:&v6 atIndex:3];
  [v4 invokeWithTarget:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEBUG))
  {
    __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2_cold_1(a1, v3);
  }

  [*(a1 + 40) messageTransport:*(a1 + 56) handleIncomingMessage:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
}

void __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CBEAA8] date];
  [v1 messageTransport:v2 updateTimeOfActivity:v3];
}

- (BOOL)invokeMessageHandlersForMessage:(id)message transport:(id)transport errorBlock:(id)block
{
  messageCopy = message;
  transportCopy = transport;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionIdentifier = [messageCopy sessionIdentifier];
  v13 = [(MTRPluginProtobufMessageDispatcher *)selfCopy _findMessageReceiverMatchingSessionID:sessionIdentifier];

  if (v13)
  {
    [(MTRPluginProtobufMessageDispatcher *)selfCopy invokeMessageHandlersForReceiver:v13 message:messageCopy transport:transportCopy errorBlock:blockCopy];
    v14 = 0;
  }

  else
  {
    v14 = [(MTRPluginProtobufMessageDispatcher *)selfCopy handleNewSessionSetupForMessage:messageCopy transport:transportCopy errorBlock:blockCopy];
  }

  objc_sync_exit(selfCopy);
  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p>", v5, self];

  return v6;
}

- (void)handleNewSessionSetupForMessage:(uint64_t)a1 transport:(uint64_t)a2 errorBlock:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_25830F000, log, OS_LOG_TYPE_ERROR, "%@ No receiver delegate for new session setup message: %@, sending error", &v3, 0x16u);
}

void __100__MTRPluginProtobufMessageDispatcher_invokeMessageHandlersForReceiver_message_transport_errorBlock___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = 138412802;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_debug_impl(&dword_25830F000, a2, OS_LOG_TYPE_DEBUG, "%@ Invoking delegate %@ to handle all messages for message: %@", &v5, 0x20u);
}

@end