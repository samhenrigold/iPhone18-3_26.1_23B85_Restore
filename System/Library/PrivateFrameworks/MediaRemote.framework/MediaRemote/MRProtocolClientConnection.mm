@interface MRProtocolClientConnection
- (BOOL)_client:(void *)_client supportsMessage:;
- (MRDeviceInfo)deviceInfo;
- (MRProtocolClientConnection)initWithConnection:(id)connection replyQueue:(id)queue;
- (MRProtocolClientConnectionDelegate)delegate;
- (MRSupportedProtocolMessages)supportedMessages;
- (NSError)error;
- (NSString)debugDescription;
- (id)_protocolMessageFromData:(uint64_t)data error:;
- (id)dataForMessage:(id)message;
- (void)_adjustTimestamp:(uint64_t)timestamp;
- (void)_notifyDelegateClientDidDisconnectWithError:(id *)error;
- (void)_parseMessageData:(uint64_t)data;
- (void)_processMessage:(void *)message;
- (void)_sendMessage:(void *)message reply:;
- (void)_sendMessage:(void *)message timeout:(double)timeout reply:;
- (void)dealloc;
- (void)disconnectWithError:(id)error;
- (void)parser:(id)parser didParseMessage:(id)message;
- (void)sendMessage:(id)message timeout:(double)timeout reply:(id)reply;
- (void)setDeviceInfo:(id)info;
- (void)setSupportedMessages:(id)messages;
@end

@implementation MRProtocolClientConnection

- (MRSupportedProtocolMessages)supportedMessages
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_supportedMessages;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRDeviceInfo)deviceInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deviceInfo;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRProtocolClientConnection)initWithConnection:(id)connection replyQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = MRProtocolClientConnection;
  v9 = [(MRProtocolClientConnection *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replyQueue, queue);
    if (initWithConnection_replyQueue____onceToken != -1)
    {
      [MRProtocolClientConnection initWithConnection:replyQueue:];
    }

    objc_storeStrong(&v10->_sendQueue, initWithConnection_replyQueue____queue);
    objc_storeStrong(&v10->_connection, connection);
    [(MRExternalDeviceTransportConnection *)v10->_connection addObserver:v10];
    v11 = objc_alloc_init(MEMORY[0x1E69B1438]);
    parser = v10->_parser;
    v10->_parser = v11;

    [(MSVMessageParser *)v10->_parser setDelegate:v10];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingReplyQueue = v10->_pendingReplyQueue;
    v10->_pendingReplyQueue = v13;
  }

  return v10;
}

void __60__MRProtocolClientConnection_initWithConnection_replyQueue___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaremote.protocolClientConnection.sendQueue", v2);
  v1 = initWithConnection_replyQueue____queue;
  initWithConnection_replyQueue____queue = v0;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[ProtocolClientConnection] %{public}@ Dealloc", buf, 0xCu);
  }

  self->_disconnected = 1;
  [(MRExternalDeviceTransportConnection *)self->_connection removeObserver:self];
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:104 description:@"MRProtocolClientConnection.dealloc"];
  [(MRExternalDeviceTransportConnection *)self->_connection closeWithError:v4];
  Error = MRMediaRemoteCreateError(25);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_pendingReplyQueue allValues];
  v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:Error];
        reply = [v11 reply];
        (reply)[2](reply, v12);

        ++v10;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14.receiver = self;
  v14.super_class = MRProtocolClientConnection;
  [(MRProtocolClientConnection *)&v14 dealloc];
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  connection = [(MRProtocolClientConnection *)self connection];
  v6 = [v3 initWithFormat:@"<%@:%p %@>", v4, self, connection];

  return v6;
}

- (NSError)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSError *)selfCopy->_error copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDeviceInfo:(id)info
{
  infoCopy = info;
  obj = self;
  objc_sync_enter(obj);
  deviceInfo = obj->_deviceInfo;
  obj->_deviceInfo = infoCopy;

  objc_sync_exit(obj);
}

- (void)setSupportedMessages:(id)messages
{
  messagesCopy = messages;
  obj = self;
  objc_sync_enter(obj);
  supportedMessages = obj->_supportedMessages;
  obj->_supportedMessages = messagesCopy;

  objc_sync_exit(obj);
}

- (void)sendMessage:(id)message timeout:(double)timeout reply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  sendQueue = [(MRProtocolClientConnection *)self sendQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__MRProtocolClientConnection_sendMessage_timeout_reply___block_invoke;
  v13[3] = &unk_1E769FB58;
  v13[4] = self;
  v14 = messageCopy;
  timeoutCopy = timeout;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = messageCopy;
  dispatch_async(sendQueue, v13);
}

- (void)_sendMessage:(void *)message timeout:(double)timeout reply:
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2;
  messageCopy = message;
  if (self)
  {
    sendQueue = [self sendQueue];
    dispatch_assert_queue_V2(sendQueue);

    if (messageCopy)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke;
      v46[3] = &unk_1E76A3AF8;
      v46[4] = self;
      v47 = messageCopy;
      v10 = MEMORY[0x1A58E3570](v46);
    }

    else
    {
      v10 = 0;
    }

    objc_initWeak(&location, self);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_3;
    v41[3] = &unk_1E76A3B20;
    v33 = v10;
    v43 = v33;
    v7 = v7;
    v42 = v7;
    objc_copyWeak(&v44, &location);
    v11 = MEMORY[0x1A58E3570](v41);
    if (*(self + 64) == 1)
    {
      supportedMessages = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:100 description:@"connection disconnection when message was attempted to be sent"];
      (v11)[2](v11, supportedMessages);
LABEL_38:

      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);

      goto LABEL_39;
    }

    if (([*(self + 8) isValid] & 1) == 0)
    {
      supportedMessages = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:100 description:@"connection is not valid"];
      (v11)[2](v11, supportedMessages);
      goto LABEL_38;
    }

    if (!v7)
    {
      supportedMessages = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"attempting to send nil message"];
      (v11)[2](v11, supportedMessages);
      v7 = 0;
      goto LABEL_38;
    }

    supportedMessages = [self supportedMessages];
    if (![(MRProtocolClientConnection *)self _client:supportedMessages supportsMessage:v7])
    {
      v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:108 format:{@"client does not support message M%lu> > <%lu>", -[MRProtocolMessage type](v7, "type"), objc_msgSend(supportedMessages, "lastSupportedMessageType")}];
      (v11)[2](v11, v16);
LABEL_37:

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v7;
      messages = [(MRCompositeMessage *)v32 messages];
      v14 = [messages count] == 0;

      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"attempting to send composite message with no children"];
        (v11)[2](v11, v15);
        goto LABEL_18;
      }

      if (v33)
      {
        v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 description:@"attempting to send composite message that expects a reply"];
        (v11)[2](v11, v15);
LABEL_18:

        v16 = v32;
        v7 = v32;
        goto LABEL_37;
      }

      v7 = objc_alloc_init(MRCompositeMessage);
      transportOptions = [(MRCompositeMessage *)v32 transportOptions];

      if (transportOptions)
      {
        transportOptions2 = [(MRCompositeMessage *)v32 transportOptions];
        [(MRCompositeMessage *)v7 setTransportOptions:transportOptions2];
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      messages2 = [(MRCompositeMessage *)v32 messages];
      v20 = [messages2 countByEnumeratingWithState:&v37 objects:v48 count:16];
      if (v20)
      {
        v21 = *v38;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(messages2);
            }

            v23 = *(*(&v37 + 1) + 8 * i);
            if ([(MRProtocolClientConnection *)self _client:supportedMessages supportsMessage:v23])
            {
              [(MRCompositeMessage *)v7 addMessage:v23];
            }
          }

          v20 = [messages2 countByEnumeratingWithState:&v37 objects:v48 count:16];
        }

        while (v20);
      }

      replyIdentifier = [(MRProtocolMessage *)v32 replyIdentifier];

      if (replyIdentifier)
      {
        v25 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:0];
        replyIdentifier2 = [(MRProtocolMessage *)v32 replyIdentifier];
        [(MRProtocolMessage *)v25 setReplyIdentifier:replyIdentifier2];

        [(MRCompositeMessage *)v7 addMessage:v25];
      }
    }

    kdebug_trace();
    v16 = MEMORY[0x1A58E3570](v33);
    if (timeout > 0.0 && v33)
    {
      v27 = [MRBlockGuard alloc];
      uniqueIdentifier = [(MRProtocolMessage *)v7 uniqueIdentifier];
      v29 = [(MRBlockGuard *)v27 initWithTimeout:uniqueIdentifier reason:v11 handler:timeout];

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_4;
      v34[3] = &unk_1E76A3AF8;
      v35 = v29;
      v36 = v33;
      v30 = v29;
      v31 = MEMORY[0x1A58E3570](v34);

      v16 = v31;
    }

    [(MRProtocolClientConnection *)self _sendMessage:v7 reply:v16];
    goto LABEL_37;
  }

LABEL_39:
}

void __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_2;
  v7[3] = &unk_1E769AB28;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = a2;
    v7 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v3];

    v4 = [*(a1 + 32) replyIdentifier];
    [(MRProtocolMessage *)v7 setReplyIdentifier:v4];

    v5 = +[MRProtocolMessageLogger sharedLogger];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v5 logMessage:@"Message Generated on behalf of" client:WeakRetained protocolMessage:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }
}

void __57__MRProtocolClientConnection__sendMessage_timeout_reply___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_sendMessage:(void *)message reply:
{
  v14 = a2;
  messageCopy = message;
  if (self)
  {
    sendQueue = [self sendQueue];
    dispatch_assert_queue_V2(sendQueue);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (messageCopy)
    {
      replyIdentifier = [v14 replyIdentifier];

      if (!replyIdentifier)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        [v14 setReplyIdentifier:uUIDString];
      }

      v11 = objc_alloc_init(MRMessageReplyIdentifier);
      [(MRMessageReplyIdentifier *)v11 setReply:messageCopy];
      v12 = selfCopy[7];
      replyIdentifier2 = [v14 replyIdentifier];
      [v12 setObject:v11 forKey:replyIdentifier2];
    }

    [MRProtocolClientConnection _sendMessage:selfCopy reply:v14];
  }
}

- (void)disconnectWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_disconnected)
  {
    objc_storeStrong(&selfCopy->_error, error);
    selfCopy->_disconnected = 1;
    [(MRExternalDeviceTransportConnection *)selfCopy->_connection closeWithError:errorCopy];
    [(MRProtocolClientConnection *)&selfCopy->super.isa _notifyDelegateClientDidDisconnectWithError:errorCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)dataForMessage:(id)message
{
  v22[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v22[0] = messageCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    messages = [messageCopy messages];

    v5 = messages;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(MRProtocolClientConnection *)self encryptDataForMessage:*(*(&v17 + 1) + 8 * i)];
        if (v13)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF88]);
          v15 = [MEMORY[0x1E69B1438] createHeader:{objc_msgSend(v13, "length")}];
          [v14 appendData:v15];
          [v14 appendData:v13];
          [v7 appendData:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_parseMessageData:(uint64_t)data
{
  v3 = a2;
  if (data && (*(data + 64) & 1) == 0)
  {
    kdebug_trace();
    [*(data + 16) processData:v3];
    kdebug_trace();
  }
}

- (void)parser:(id)parser didParseMessage:(id)message
{
  v34 = *MEMORY[0x1E69E9840];
  parserCopy = parser;
  messageCopy = message;
  if (messageCopy && !self->_disconnected)
  {
    v30 = 0;
    v8 = [(MRProtocolClientConnection *)self decryptData:messageCopy error:&v30];
    v9 = v30;
    if (v9)
    {
      v10 = v9;
      v11 = _MRLogForCategory(4uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[ProtocolClientConnection] %{public}@ Crypto Error. Disconnecting...", buf, 0xCu);
      }

      [(MRProtocolClientConnection *)self disconnectWithError:v10];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v29 = 0;
      v13 = [(MRProtocolClientConnection *)self _protocolMessageFromData:v8 error:&v29];
      v10 = v29;
      if (v10)
      {
        v14 = _MRLogForCategory(4uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy2 = self;
          _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[ProtocolClientConnection] %{public}@ Parse Error. Disconnecting...", buf, 0xCu);
        }

        [(MRProtocolClientConnection *)self disconnectWithError:v10];
      }

      else
      {
        v23 = v12;
        v24 = v8;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = v13;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v25 + 1) + 8 * i);
              v21 = +[MRProtocolMessageLogger sharedLogger];
              [v21 logMessage:@"Message Received From" client:self protocolMessage:v20];

              [v20 setClientConnection:self];
              [(MRProtocolClientConnection *)self _adjustTimestamp:v20];
              [(MRProtocolClientConnection *)self _processMessage:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
          }

          while (v17);
        }

        v12 = v23;
        v8 = v24;
        v13 = v22;
      }

      objc_autoreleasePoolPop(v12);
    }
  }
}

- (void)_processMessage:(void *)message
{
  v3 = a2;
  if (message)
  {
    messageCopy = message;
    objc_sync_enter(messageCopy);
    replyIdentifier = [v3 replyIdentifier];

    if (replyIdentifier)
    {
      v7 = messageCopy[7];
      replyIdentifier2 = [v3 replyIdentifier];
      v9 = [v7 objectForKey:replyIdentifier2];

      if (_os_feature_enabled_impl() && (v10 = [v9 messageNumber], v10 != objc_msgSend(v3, "type")) && objc_msgSend(v9, "messageNumber"))
      {
        reply = 0;
      }

      else
      {
        reply = [v9 reply];
        if (reply)
        {
          v11 = messageCopy[7];
          replyIdentifier3 = [v3 replyIdentifier];
          [v11 removeObjectForKey:replyIdentifier3];

          [v3 setIsIncomingReply:1];
        }
      }
    }

    else
    {
      reply = 0;
    }

    [(MRProtocolClientConnection *)reply _processMessage:messageCopy, &v13, v3];
  }
}

uint64_t __46__MRProtocolClientConnection__processMessage___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 clientConnection:v4 didReceiveMessage:v5];
  }

  return result;
}

uint64_t __74__MRProtocolClientConnection__notifyDelegateClientDidDisconnectWithError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = [v8 mr_errorByEnvelopingWithMRError:121];
        }

        else
        {
          v10 = objc_alloc(MEMORY[0x1E696ABC0]);
          v9 = [v10 initWithMRError:{121, v15}];
        }

        v11 = v9;
        v12 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v9];
        v13 = [v7 reply];
        (v13)[2](v13, v12);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 48) clientDidDisconnect:*(a1 + 56) error:*(a1 + 40)];
  }

  return result;
}

- (MRProtocolClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_client:(void *)_client supportsMessage:
{
  v5 = a2;
  _clientCopy = _client;
  v7 = _clientCopy;
  if (self)
  {
    self = ([v5 isSupported:{objc_msgSend(_clientCopy, "type")}] & 1) != 0 || objc_msgSend(v7, "type") == 15;
  }

  return self;
}

- (void)_notifyDelegateClientDidDisconnectWithError:(id *)error
{
  v3 = a2;
  if (error)
  {
    allValues = [error[7] allValues];
    WeakRetained = objc_loadWeakRetained(error + 12);
    replyQueue = [error replyQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__MRProtocolClientConnection__notifyDelegateClientDidDisconnectWithError___block_invoke;
    v9[3] = &unk_1E769FC08;
    v10 = allValues;
    v11 = v3;
    v12 = WeakRetained;
    errorCopy = error;
    v7 = WeakRetained;
    v8 = allValues;
    dispatch_async(replyQueue, v9);
  }
}

- (id)_protocolMessageFromData:(uint64_t)data error:
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = [MRProtocolMessage protocolMessageWithProtobufData:a2 error:data];
    v4 = v3;
    if (v3)
    {
      v7[0] = v3;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_adjustTimestamp:(uint64_t)timestamp
{
  v3 = a2;
  v4 = v3;
  if (timestamp)
  {
    v10 = v3;
    timestamp = [v3 timestamp];
    v4 = v10;
    if (timestamp)
    {
      if (!*(timestamp + 32))
      {
        v6 = mach_absolute_time();
        v4 = v10;
        *(timestamp + 32) = v6;
      }

      if (!*(timestamp + 24))
      {
        timestamp2 = [v4 timestamp];
        v4 = v10;
        *(timestamp + 24) = timestamp2;
      }

      timestamp3 = [v4 timestamp];
      [v10 setTimestamp:{*(timestamp + 32) + ((timestamp3 - *(timestamp + 24)) / MRTimeUtilitiesGetProcessorTimeScale(timestamp3, v9))}];
      v4 = v10;
    }
  }
}

- (void)_sendMessage:(id *)a1 reply:(void *)a2 .cold.1(id *a1, void *a2)
{
  v4 = a1[1];
  objc_sync_exit(a1);

  v5 = +[MRProtocolMessageLogger sharedLogger];
  [v5 logMessage:@"Message Sent To" client:a1 protocolMessage:a2];

  v7 = [a1 dataForMessage:a2];
  v6 = [a2 transportOptions];
  [v4 sendTransportData:v7 options:v6];
}

- (void)_processMessage:(void *)(a1 .cold.1(void (**a1)(void, void), id *obj, id *a3, void *a4)
{
  objc_sync_exit(obj);

  if (a1)
  {
    (a1)[2](a1, a4);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(obj + 12);
    v9 = [obj replyQueue];
    *a3 = MEMORY[0x1E69E9820];
    a3[1] = 3221225472;
    a3[2] = __46__MRProtocolClientConnection__processMessage___block_invoke;
    a3[3] = &unk_1E769BA00;
    a3[4] = WeakRetained;
    a3[5] = obj;
    a3[6] = a4;
    v10 = WeakRetained;
    dispatch_async(v9, a3);
  }
}

@end