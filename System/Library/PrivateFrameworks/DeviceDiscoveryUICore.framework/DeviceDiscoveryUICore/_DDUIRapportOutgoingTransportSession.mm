@interface _DDUIRapportOutgoingTransportSession
- (DDUIDevice)remoteDevice;
- (_DDUIRapportOutgoingTransportSession)initWithServiceIdentifier:(id)identifier;
- (void)activateWithErrorHandler:(id)handler messageHandler:(id)messageHandler completion:(id)completion;
- (void)generateNetworkEndpointIdentifierForRemoteDevice:(id)device withCompletion:(id)completion;
- (void)handleIncomingMessage:(id)message withMessageID:(id)d;
- (void)invalidate;
- (void)sendMessage:(id)message withTimeout:(double)timeout completion:(id)completion;
@end

@implementation _DDUIRapportOutgoingTransportSession

- (_DDUIRapportOutgoingTransportSession)initWithServiceIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _DDUIRapportOutgoingTransportSession;
  v6 = [(_DDUIRapportOutgoingTransportSession *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceIdentifier, identifier);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    sessionID = v7->_sessionID;
    v7->_sessionID = uUIDString;

    v11 = _DDUICoreRapportLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7->_sessionID;
      *buf = 134218242;
      v16 = v7;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportOutgoingTransportSession init] {self: %p, sessionID: %@}", buf, 0x16u);
    }
  }

  return v7;
}

- (DDUIDevice)remoteDevice
{
  v3 = [_DDUIRapportDevice alloc];
  destinationDevice = [(RPCompanionLinkClient *)self->_client destinationDevice];
  v5 = [(_DDUIRapportDevice *)v3 initWithRPCompanionLinkDevice:destinationDevice];

  return v5;
}

- (void)generateNetworkEndpointIdentifierForRemoteDevice:(id)device withCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  deviceCopy = device;
  v8 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession generating mapping {self: %p}", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277D44150]);
  serviceIdentifier = [(_DDUIRapportOutgoingTransportSession *)self serviceIdentifier];
  client = [(_DDUIRapportOutgoingTransportSession *)self client];
  destinationDevice = [client destinationDevice];
  identifier = [destinationDevice identifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104___DDUIRapportOutgoingTransportSession_generateNetworkEndpointIdentifierForRemoteDevice_withCompletion___block_invoke;
  v15[3] = &unk_2788F5DA8;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [v9 createEndpointToDeviceMapping:serviceIdentifier deviceID:identifier endpointID:deviceCopy completion:v15];
}

- (void)handleIncomingMessage:(id)message withMessageID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v8 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218498;
    selfCopy = self;
    v12 = 2112;
    v13 = dCopy;
    v14 = 2112;
    v15 = messageCopy;
    _os_log_impl(&dword_230EF9000, v8, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession - incoming ResponderMessage {self: %p, messageID: %@, message: %@}", &v10, 0x20u);
  }

  messageHandler = [(_DDUIRapportOutgoingTransportSession *)self messageHandler];
  (messageHandler)[2](messageHandler, messageCopy);
}

- (void)activateWithErrorHandler:(id)handler messageHandler:(id)messageHandler completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageHandlerCopy = messageHandler;
  completionCopy = completion;
  v11 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _Block_copy(handlerCopy);
    v13 = _Block_copy(messageHandlerCopy);
    v14 = _Block_copy(completionCopy);
    *buf = 134218754;
    selfCopy = self;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession activating {self: %p, errorHandler: %@, messageHandler: %@, completion: %@}", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v15 = _Block_copy(messageHandlerCopy);
  messageHandler = self->_messageHandler;
  self->_messageHandler = v15;

  client = self->_client;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke;
  v28[3] = &unk_2788F5DD0;
  objc_copyWeak(&v30, buf);
  v18 = handlerCopy;
  v29 = v18;
  [(RPCompanionLinkClient *)client setDisconnectHandler:v28];
  v19 = self->_client;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke_4;
  v25[3] = &unk_2788F5DD0;
  objc_copyWeak(&v27, buf);
  v20 = v18;
  v26 = v20;
  [(RPCompanionLinkClient *)v19 setInterruptionHandler:v25];
  v21 = self->_client;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91___DDUIRapportOutgoingTransportSession_activateWithErrorHandler_messageHandler_completion___block_invoke_5;
  v23[3] = &unk_2788F5980;
  v23[4] = self;
  v22 = completionCopy;
  v24 = v22;
  [(RPCompanionLinkClient *)v21 activateWithCompletion:v23];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)sendMessage:(id)message withTimeout:(double)timeout completion:(id)completion
{
  v38[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  sessionID = self->_sessionID;
  v37[0] = @"sesID";
  v37[1] = @"msgID";
  v38[0] = sessionID;
  v38[1] = uUIDString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v14 = [v13 mutableCopy];

  if (messageCopy)
  {
    [v14 setObject:messageCopy forKeyedSubscript:@"info"];
  }

  if (timeout <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    v35 = *MEMORY[0x277D442F0];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
    v36 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  }

  v17 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_sessionID;
    *buf = 134219010;
    selfCopy = self;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = uUIDString;
    v31 = 2112;
    v32 = messageCopy;
    v33 = 2112;
    v34 = v16;
    _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "_DDUIRapportOutgoingTransportSession sending message {self: %p, sessionID: %@, messageID: %@, message: %@, options: %@}", buf, 0x34u);
  }

  client = self->_client;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75___DDUIRapportOutgoingTransportSession_sendMessage_withTimeout_completion___block_invoke;
  v22[3] = &unk_2788F5880;
  v22[4] = self;
  v23 = uUIDString;
  v24 = completionCopy;
  v20 = completionCopy;
  v21 = uUIDString;
  [(RPCompanionLinkClient *)client sendRequestID:@"DDUI-pair-init" request:v14 options:v16 responseHandler:v22];
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportOutgoingTransportSession invalidate] {self: %p}", &v5, 0xCu);
  }

  [(RPCompanionLinkClient *)self->_client invalidate];
  client = self->_client;
  self->_client = 0;
}

@end