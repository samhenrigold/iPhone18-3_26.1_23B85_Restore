@interface IDSServerMessagingController
- (IDSServerMessagingController)initWithTopic:(id)topic commands:(id)commands daemonController:(id)controller;
- (void)_failMessages;
- (void)_sendData:(id)data withOptions:(id)options identifier:(id)identifier completion:(id)completion;
- (void)_setupInterruptionHandler;
- (void)_setupXPC;
- (void)addDelegate:(id)delegate;
- (void)cancelMessageWithIdentifier:(id)identifier completion:(id)completion;
- (void)handleReceivedFinalStorageIndication;
- (void)handleReceivedIncomingMessageData:(id)data identifier:(id)identifier context:(id)context;
- (void)performXPC:(id)c;
- (void)sendCertifiedDeliveryReceipt:(id)receipt;
- (void)sendMessageData:(id)data withOptions:(id)options identifier:(id *)identifier completion:(id)completion;
- (void)sendServerStorageFetchWithCompletion:(id)completion;
@end

@implementation IDSServerMessagingController

- (IDSServerMessagingController)initWithTopic:(id)topic commands:(id)commands daemonController:(id)controller
{
  v28 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  commandsCopy = commands;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = IDSServerMessagingController;
  v12 = [(IDSServerMessagingController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topic, topic);
    objc_storeStrong(&v13->_commands, commands);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegateMap = v13->_delegateMap;
    v13->_delegateMap = weakObjectsHashTable;

    objc_storeStrong(&v13->_daemonController, controller);
    v13->_daemonControllerLock._os_unfair_lock_opaque = 0;
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    uuid = v13->_uuid;
    v13->_uuid = stringGUID;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    inFlightRequests = v13->_inFlightRequests;
    v13->_inFlightRequests = v18;

    v13->_inFlightLock._os_unfair_lock_opaque = 0;
    iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v13->_uuid;
      *buf = 138412546;
      v25 = topicCopy;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Client initialized IDSServerMessagingController with topic: %@ uuid: %@", buf, 0x16u);
    }

    [(IDSServerMessagingController *)v13 _setupInterruptionHandler];
    [(IDSServerMessagingController *)v13 _setupXPC];
  }

  return v13;
}

- (void)_setupInterruptionHandler
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A3F200;
  v7[3] = &unk_1E743EE18;
  objc_copyWeak(&v8, &location);
  v3 = MEMORY[0x19A8BBEF0](v7);
  os_unfair_lock_lock(&self->_daemonControllerLock);
  daemonController = self->_daemonController;
  if (daemonController)
  {
    [(IDSXPCDaemonController *)daemonController addInterruptionHandler:v3 forTarget:self];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195A3F2E4;
    v5[3] = &unk_1E743F8A0;
    v5[4] = self;
    v6 = v3;
    [IDSXPCDaemonController asyncWeakSharedInstance:v5];
  }

  os_unfair_lock_unlock(&self->_daemonControllerLock);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_setupXPC
{
  v9 = *MEMORY[0x1E69E9840];
  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(IDSServerMessagingController *)self uuid];
    *buf = 138412290;
    v8 = uuid;
    _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Setting up xpc for client %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A3F4D4;
  v5[3] = &unk_1E743F0E8;
  objc_copyWeak(&v6, buf);
  [(IDSServerMessagingController *)self performXPC:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)performXPC:(id)c
{
  cCopy = c;
  os_unfair_lock_lock(&self->_daemonControllerLock);
  daemonController = self->_daemonController;
  if (daemonController)
  {
    [(IDSXPCDaemonController *)daemonController performTask:cCopy];
  }

  else
  {
    [IDSXPCDaemonController performDaemonControllerTask:cCopy];
  }

  os_unfair_lock_unlock(&self->_daemonControllerLock);
}

- (void)_failMessages
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_inFlightLock);
  inFlightRequests = [(IDSServerMessagingController *)self inFlightRequests];
  v4 = [inFlightRequests copy];

  inFlightRequests2 = [(IDSServerMessagingController *)self inFlightRequests];
  [inFlightRequests2 removeAllObjects];

  os_unfair_lock_unlock(&self->_inFlightLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412546;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v17, v18}];
        v14 = [[IDSServerMessagingOutgoingContext alloc] initWithIdentifier:v12];
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSServerMessagingErrorDomain" code:2 userInfo:0];
        iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
        if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR))
        {
          *buf = v17;
          v23 = v12;
          v24 = 2112;
          v25 = v15;
          _os_log_error_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_ERROR, "Failing message due to xpc interruption {guid: %@, error: %@}", buf, 0x16u);
        }

        (v13)[2](v13, 0, v15, v14);
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)_sendData:(id)data withOptions:(id)options identifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  optionsCopy = options;
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A3F9F4;
  v18[3] = &unk_1E743F8F0;
  objc_copyWeak(&v23, &location);
  v14 = dataCopy;
  v19 = v14;
  v15 = optionsCopy;
  v20 = v15;
  v16 = identifierCopy;
  v21 = v16;
  v17 = completionCopy;
  v22 = v17;
  [(IDSServerMessagingController *)self performXPC:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)addDelegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  delegateMap = [(IDSServerMessagingController *)self delegateMap];
  v6 = [delegateMap containsObject:delegateCopy];

  if ((v6 & 1) == 0)
  {
    delegateMap2 = [(IDSServerMessagingController *)self delegateMap];
    [delegateMap2 addObject:delegateCopy];

    iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(IDSServerMessagingController *)self uuid];
      delegateMap3 = [(IDSServerMessagingController *)self delegateMap];
      v11 = 138412546;
      v12 = uuid;
      v13 = 2048;
      v14 = [delegateMap3 count];
      _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Client added delegate to listen for incoming messages from server { uuid: %@, delegate count: %lu }", &v11, 0x16u);
    }
  }
}

- (void)sendMessageData:(id)data withOptions:(id)options identifier:(id *)identifier completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  if (!identifier)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    goto LABEL_5;
  }

  if (*identifier)
  {
    stringGUID = *identifier;
LABEL_5:
    stringGUID2 = stringGUID;
    goto LABEL_7;
  }

  stringGUID2 = [MEMORY[0x1E696AEC0] stringGUID];
  *identifier = stringGUID2;
LABEL_7:
  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(IDSServerMessagingController *)self uuid];
    v19 = 138412802;
    v20 = uuid;
    v21 = 2112;
    v22 = stringGUID2;
    v23 = 2112;
    v24 = optionsCopy;
    _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Client requested send { clientUUID: %@, guid: %@, options: %@ }", &v19, 0x20u);
  }

  os_unfair_lock_lock(&self->_inFlightLock);
  v17 = MEMORY[0x19A8BBEF0](completionCopy);
  inFlightRequests = [(IDSServerMessagingController *)self inFlightRequests];
  [inFlightRequests setObject:v17 forKeyedSubscript:stringGUID2];

  os_unfair_lock_unlock(&self->_inFlightLock);
  [(IDSServerMessagingController *)self _sendData:dataCopy withOptions:optionsCopy identifier:stringGUID2 completion:completionCopy];
}

- (void)sendCertifiedDeliveryReceipt:(id)receipt
{
  v17 = *MEMORY[0x1E69E9840];
  receiptCopy = receipt;
  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(IDSServerMessagingController *)self uuid];
    originalGUID = [receiptCopy originalGUID];
    *buf = 138412802;
    v12 = uuid;
    v13 = 2112;
    v14 = originalGUID;
    v15 = 2112;
    v16 = receiptCopy;
    _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Client requested certified delivery receipt { clientUUID: %@, guid: %@, context: %@ }", buf, 0x20u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A40170;
  v9[3] = &unk_1E743F918;
  v10 = receiptCopy;
  v8 = receiptCopy;
  [(IDSServerMessagingController *)self performXPC:v9];
}

- (void)sendServerStorageFetchWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4030C;
  v6[3] = &unk_1E743F968;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(IDSServerMessagingController *)self performXPC:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)cancelMessageWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A40674;
  v10[3] = &unk_1E743F990;
  objc_copyWeak(&v13, &location);
  v8 = identifierCopy;
  v11 = v8;
  v9 = completionCopy;
  v12 = v9;
  [(IDSServerMessagingController *)self performXPC:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)handleReceivedIncomingMessageData:(id)data identifier:(id)identifier context:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  contextCopy = context;
  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(IDSServerMessagingController *)self uuid];
    *buf = 138412802;
    v30 = uuid;
    v31 = 2112;
    v32 = identifierCopy;
    v33 = 2112;
    v34 = contextCopy;
    _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Client received incoming data { clientUUID: %@, guid: %@, context: %@ }", buf, 0x20u);
  }

  delegateMap = [(IDSServerMessagingController *)self delegateMap];
  v13 = [delegateMap count];

  if (v13)
  {
    delegateMap2 = [(IDSServerMessagingController *)self delegateMap];
    v15 = [delegateMap2 copy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    iDSServerMessaging3 = v15;
    v17 = [iDSServerMessaging3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(iDSServerMessaging3);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            iDSServerMessaging2 = [MEMORY[0x1E69A5270] IDSServerMessaging];
            if (os_log_type_enabled(iDSServerMessaging2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v30 = identifierCopy;
              v31 = 2048;
              v32 = v21;
              _os_log_impl(&dword_1959FF000, iDSServerMessaging2, OS_LOG_TYPE_DEFAULT, "Forwarding server message to delegate { guid: %@, delegate: %p }", buf, 0x16u);
            }

            [v21 controller:self receivedIncomingMessageData:dataCopy context:contextCopy];
          }
        }

        v18 = [iDSServerMessaging3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }
  }

  else
  {
    iDSServerMessaging3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging3, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A06C();
    }
  }
}

- (void)handleReceivedFinalStorageIndication
{
  v23 = *MEMORY[0x1E69E9840];
  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(IDSServerMessagingController *)self uuid];
    *buf = 138412290;
    v22 = uuid;
    _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Client received final storage indication { clientUUID: %@ }", buf, 0xCu);
  }

  delegateMap = [(IDSServerMessagingController *)self delegateMap];
  v6 = [delegateMap count];

  if (v6)
  {
    delegateMap2 = [(IDSServerMessagingController *)self delegateMap];
    v8 = [delegateMap2 copy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    iDSServerMessaging3 = v8;
    v10 = [iDSServerMessaging3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(iDSServerMessaging3);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            iDSServerMessaging2 = [MEMORY[0x1E69A5270] IDSServerMessaging];
            if (os_log_type_enabled(iDSServerMessaging2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v22 = v14;
              _os_log_impl(&dword_1959FF000, iDSServerMessaging2, OS_LOG_TYPE_DEFAULT, "Forwarding server message to delegate { delegate: %p }", buf, 0xCu);
            }

            [v14 receivedIndicationOfEmptyServerStorageForController:self];
          }
        }

        v11 = [iDSServerMessaging3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    iDSServerMessaging3 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging3, OS_LOG_TYPE_ERROR))
    {
      sub_195B2A0D4(iDSServerMessaging3);
    }
  }
}

@end