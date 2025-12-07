@interface _DDUIRapportIncomingTransportSession
- (_DDUIRapportIncomingTransportSession)initWithOptions:(id)options;
- (void)activateWithErrorHandler:(id)handler messageHandler:(id)messageHandler completion:(id)completion;
- (void)invalidate;
- (void)sendMessage:(id)message withTimeout:(double)timeout completion:(id)completion;
@end

@implementation _DDUIRapportIncomingTransportSession

- (_DDUIRapportIncomingTransportSession)initWithOptions:(id)options
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = _DDUIRapportIncomingTransportSession;
  v5 = [(_DDUIRapportIncomingTransportSession *)&v16 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D442D0]];
    destinationID = v5->_destinationID;
    v5->_destinationID = v6;

    if (optionsCopy)
    {
      v8 = [[_DDUIRapportDevice alloc] initWithIncomingMessageOptions:optionsCopy];
      cachedDevice = v5->_cachedDevice;
      v5->_cachedDevice = v8;

      v10 = _DDUICoreRapportLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        name = [(_DDUIRapportDevice *)v5->_cachedDevice name];
        identifier = [(_DDUIRapportDevice *)v5->_cachedDevice identifier];
        model = [(_DDUIRapportDevice *)v5->_cachedDevice model];
        accountIdentifier = [(_DDUIRapportDevice *)v5->_cachedDevice accountIdentifier];
        *buf = 138413058;
        v18 = name;
        v19 = 2112;
        v20 = identifier;
        v21 = 2112;
        v22 = model;
        v23 = 2112;
        v24 = accountIdentifier;
        _os_log_impl(&dword_230EF9000, v10, OS_LOG_TYPE_DEFAULT, "_DDUIRapportIncomingTransportSession init. Created DDUIDevice: name: %@, identifier: %@, model: %@, accountID: %@", buf, 0x2Au);
      }
    }
  }

  return v5;
}

- (void)activateWithErrorHandler:(id)handler messageHandler:(id)messageHandler completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  messageHandlerCopy = messageHandler;
  v9 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v9, OS_LOG_TYPE_DEFAULT, "_DDUIRapportIncomingTransportSession activating {self: %p}", &v12, 0xCu);
  }

  v10 = _Block_copy(messageHandlerCopy);
  messageHandler = self->_messageHandler;
  self->_messageHandler = v10;

  completionCopy[2](completionCopy, self);
}

- (void)sendMessage:(id)message withTimeout:(double)timeout completion:(id)completion
{
  v41[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  sessionID = self->_sessionID;
  v40[0] = @"sesID";
  v40[1] = @"msgID";
  v41[0] = sessionID;
  v41[1] = uUIDString;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
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
    v38 = *MEMORY[0x277D442F0];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
    v39 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  }

  v17 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [(_DDUIRapportIncomingTransportSession *)self sessionID];
    *buf = 134219010;
    selfCopy = self;
    v30 = 2112;
    v31 = sessionID;
    v32 = 2112;
    v33 = uUIDString;
    v34 = 2112;
    v35 = messageCopy;
    v36 = 2112;
    v37 = v16;
    _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "_DDUIRapportIncomingTransportSession sending message {self: %p, sessionID: %@ messageID: %@, message: %@, options: %@}", buf, 0x34u);
  }

  v19 = _DDUIRapportContinuityCameraResponseMessageID;
  if (self->_sessionType != 1)
  {
    v19 = _DDUIRapportPairingResponderMessageID;
  }

  v20 = *v19;
  client = self->_client;
  destinationID = self->_destinationID;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __75___DDUIRapportIncomingTransportSession_sendMessage_withTimeout_completion___block_invoke;
  v25[3] = &unk_2788F5880;
  v25[4] = self;
  v26 = uUIDString;
  v27 = completionCopy;
  v23 = completionCopy;
  v24 = uUIDString;
  [(RPCompanionLinkClient *)client sendRequestID:v20 request:v14 destinationID:destinationID options:v16 responseHandler:v25];
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _DDUICoreRapportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_230EF9000, v3, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportIncomingTransportSession invalidate] {self: %p}", &v6, 0xCu);
  }

  messageHandler = self->_messageHandler;
  self->_messageHandler = 0;

  client = self->_client;
  self->_client = 0;
}

@end