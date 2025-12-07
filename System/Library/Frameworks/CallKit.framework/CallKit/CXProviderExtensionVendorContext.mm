@interface CXProviderExtensionVendorContext
- (CXProviderExtensionVendorContextDelegate)delegate;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)actionCompleted:(id)completed completionHandler:(id)handler;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)registerWithConfiguration:(id)configuration;
- (void)reportAudioFinishedForCallWithUUID:(id)d;
- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction;
- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction;
- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used;
- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context;
- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update;
- (void)reportCallWithUUID:(id)d updated:(id)updated;
- (void)reportNewIncomingCallWithUUID:(id)d update:(id)update reply:(id)reply;
- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update;
- (void)reportOutgoingCallWithUUID:(id)d connectedAtDate:(id)date;
- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date;
- (void)reportOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)requestTransaction:(id)transaction completionHandler:(id)handler;
@end

@implementation CXProviderExtensionVendorContext

- (id)remoteObjectProxy
{
  v4.receiver = self;
  v4.super_class = CXProviderExtensionVendorContext;
  remoteObjectProxy = [(CXProviderExtensionContext *)&v4 remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = CXProviderExtensionVendorContext;
  v3 = [(CXProviderExtensionContext *)&v5 remoteObjectProxyWithErrorHandler:handler];

  return v3;
}

- (void)registerWithConfiguration:(id)configuration
{
  v11 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = CXDefaultLog(configurationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CXProviderExtensionVendorContext registerWithConfiguration:]";
    v9 = 2112;
    v10 = configurationCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending %s with configuration: %@", &v7, 0x16u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy registerWithConfiguration:configurationCopy];
}

- (void)reportNewIncomingCallWithUUID:(id)d update:(id)update reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updateCopy = update;
  replyCopy = reply;
  v11 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v14 = 136315650;
    v15 = "[CXProviderExtensionVendorContext reportNewIncomingCallWithUUID:update:reply:]";
    v16 = 2112;
    v17 = uUIDString;
    v18 = 2112;
    v19 = updateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ update: %@", &v14, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportNewIncomingCallWithUUID:dCopy update:updateCopy completion:replyCopy];
}

- (void)reportCallWithUUID:(id)d updated:(id)updated
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updatedCopy = updated;
  v8 = CXDefaultLog(updatedCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v11 = 136315650;
    v12 = "[CXProviderExtensionVendorContext reportCallWithUUID:updated:]";
    v13 = 2112;
    v14 = uUIDString;
    v15 = 2112;
    v16 = updatedCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ update: %@", &v11, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy updated:updatedCopy];
}

- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updateCopy = update;
  v8 = CXDefaultLog(updateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v11 = 136315650;
    v12 = "[CXProviderExtensionVendorContext reportCallWithUUID:receivedDTMFUpdate:]";
    v13 = 2112;
    v14 = uUIDString;
    v15 = 2112;
    v16 = updateCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dtmfUpdate: %@", &v11, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy receivedDTMFUpdate:updateCopy];
}

- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v8 = CXDefaultLog(dateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v11 = 136315650;
    v12 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:sentInvitationAtDate:]";
    v13 = 2112;
    v14 = uUIDString;
    v15 = 2112;
    v16 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateSentInvitation: %@", &v11, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportOutgoingCallWithUUID:dCopy sentInvitationAtDate:dateCopy];
}

- (void)reportOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v8 = CXDefaultLog(dateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v11 = 136315650;
    v12 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:startedConnectingAtDate:]";
    v13 = 2112;
    v14 = uUIDString;
    v15 = 2112;
    v16 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateStartedConnecting: %@", &v11, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportOutgoingCallWithUUID:dCopy startedConnectingAtDate:dateCopy];
}

- (void)reportOutgoingCallWithUUID:(id)d connectedAtDate:(id)date
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  v8 = CXDefaultLog(dateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v11 = 136315650;
    v12 = "[CXProviderExtensionVendorContext reportOutgoingCallWithUUID:connectedAtDate:]";
    v13 = 2112;
    v14 = uUIDString;
    v15 = 2112;
    v16 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateConnected: %@", &v11, 0x20u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportOutgoingCallWithUUID:dCopy connectedAtDate:dateCopy];
}

- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v13 = CXDefaultLog(contextCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v16 = 136316162;
    v17 = "[CXProviderExtensionVendorContext reportCallWithUUID:endedAtDate:privateReason:failureContext:]";
    v18 = 2112;
    v19 = uUIDString;
    v20 = 2112;
    v21 = dateCopy;
    v22 = 2048;
    reasonCopy = reason;
    v24 = 2112;
    v25 = contextCopy;
    _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ dateEnded: %@ privateEndedReason: %ld failureContext: %@", &v16, 0x34u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy endedAtDate:dateCopy privateReason:reason failureContext:contextCopy];
}

- (void)reportAudioFinishedForCallWithUUID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = CXDefaultLog(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext reportAudioFinishedForCallWithUUID:]";
    v10 = 2112;
    v11 = uUIDString;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@", &v8, 0x16u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportAudioFinishedForCallWithUUID:dCopy];
}

- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction
{
  dataCopy = data;
  dCopy = d;
  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy changedFrequencyData:dataCopy forDirection:direction];
}

- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction
{
  dCopy = d;
  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  *&v9 = level;
  [remoteObjectProxy reportCallWithUUID:dCopy changedMeterLevel:direction forDirection:v9];
}

- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  v10 = CXDefaultLog(identifierCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v13 = 136315906;
    v14 = "[CXProviderExtensionVendorContext reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:]";
    v15 = 2112;
    v16 = uUIDString;
    v17 = 2112;
    v18 = identifierCopy;
    v19 = 2048;
    usedCopy = used;
    _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "Sending %s with UUID: %@ crossDeviceIdentifier: %@ bytesOfDataUsed: %ld", &v13, 0x2Au);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportCallWithUUID:dCopy crossDeviceIdentifier:identifierCopy changedBytesOfDataUsed:used];
}

- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update
{
  updateCopy = update;
  dCopy = d;
  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy reportNewOutgoingCallWithUUID:dCopy update:updateCopy];
}

- (void)requestTransaction:(id)transaction completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  handlerCopy = handler;
  v8 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CXProviderExtensionVendorContext requestTransaction:completionHandler:]";
    v12 = 2112;
    v13 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Sending %s with transaction: %@", &v10, 0x16u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy requestTransaction:transactionCopy reply:handlerCopy];
}

- (void)actionCompleted:(id)completed completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  v6 = CXDefaultLog(completedCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXProviderExtensionVendorContext actionCompleted:completionHandler:]";
    v10 = 2112;
    v11 = completedCopy;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Sending %s with action: %@", &v8, 0x16u);
  }

  remoteObjectProxy = [(CXProviderExtensionVendorContext *)self remoteObjectProxy];
  [remoteObjectProxy actionCompleted:completedCopy];
}

- (void)commitTransaction:(id)transaction
{
  v11 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v5 = CXDefaultLog(transactionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CXProviderExtensionVendorContext commitTransaction:]";
    v9 = 2112;
    v10 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", &v7, 0x16u);
  }

  delegate = [(CXProviderExtensionVendorContext *)self delegate];
  [delegate providerExtensionVendorContext:self receivedCommittedTransaction:transactionCopy];
}

- (void)handleActionTimeout:(id)timeout
{
  v11 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  v5 = CXDefaultLog(timeoutCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CXProviderExtensionVendorContext handleActionTimeout:]";
    v9 = 2112;
    v10 = timeoutCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", &v7, 0x16u);
  }

  delegate = [(CXProviderExtensionVendorContext *)self delegate];
  [delegate providerExtensionVendorContext:self handledActionTimeout:timeoutCopy];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  v11 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = CXDefaultLog(toCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CXProviderExtensionVendorContext handleAudioSessionActivationStateChangedTo:]";
    v9 = 1024;
    bOOLValue = [toCopy BOOLValue];
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with active: %d", &v7, 0x12u);
  }

  delegate = [(CXProviderExtensionVendorContext *)self delegate];
  [delegate providerExtensionVendorContext:self handledAudioSessionActivationStateChangedTo:{objc_msgSend(toCopy, "BOOLValue")}];
}

- (CXProviderExtensionVendorContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end