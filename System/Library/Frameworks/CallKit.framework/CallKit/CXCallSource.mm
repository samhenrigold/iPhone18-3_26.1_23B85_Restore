@interface CXCallSource
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (CXCallSource)initWithIdentifier:(id)identifier;
- (CXCallSourceDelegate)delegate;
- (NSString)description;
- (void)actionCompleted:(id)completed completionHandler:(id)handler;
- (void)beginWithCompletionHandler:(id)handler;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)registerWithConfiguration:(id)configuration;
- (void)reportAudioFinishedForCallWithUUID:(id)d reply:(id)reply;
- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction reply:(id)reply;
- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction reply:(id)reply;
- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used reply:(id)reply;
- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context reply:(id)reply;
- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update reply:(id)reply;
- (void)reportCallWithUUID:(id)d updated:(id)updated reply:(id)reply;
- (void)reportNewIncomingCallWithUUID:(id)d update:(id)update reply:(id)reply;
- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update;
- (void)reportOutgoingCallWithUUID:(id)d connectedAtDate:(id)date reply:(id)reply;
- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date reply:(id)reply;
- (void)reportOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date reply:(id)reply;
- (void)requestTransaction:(id)transaction completionHandler:(id)handler;
- (void)setConnected:(BOOL)connected;
@end

@implementation CXCallSource

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(CXCallSource *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p identifier=%@ isConnected=%d processIdentifier=%d isPermittedToUsePublicAPI=%d isPermittedToUsePrivateAPI=%d>", v4, self, identifier, -[CXCallSource isConnected](self, "isConnected"), -[CXCallSource processIdentifier](self, "processIdentifier"), -[CXCallSource isPermittedToUsePublicAPI](self, "isPermittedToUsePublicAPI"), -[CXCallSource isPermittedToUsePrivateAPI](self, "isPermittedToUsePrivateAPI")];

  return v6;
}

- (CXCallSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CXCallSource)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v12.receiver = self;
    v12.super_class = CXCallSource;
    v6 = [(CXCallSource *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_identifier, identifier);
      v8 = dispatch_queue_create("com.apple.callkit.callsource", 0);
      queue = v7->_queue;
      v7->_queue = v8;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *retstr->var0 = v3;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setConnected:(BOOL)connected
{
  if (self->_connected != connected)
  {
    connectedCopy = connected;
    self->_connected = connected;
    delegate = [(CXCallSource *)self delegate];
    v7 = delegate;
    if (connectedCopy)
    {
      [delegate callSourceConnectionStarted:self];
    }

    else
    {
      [delegate callSourceConnectionEnded:self];
    }
  }
}

- (void)beginWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (void)registerWithConfiguration:(id)configuration
{
  v12 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = CXDefaultLog(configurationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CXCallSource registerWithConfiguration:]";
    v10 = 2112;
    v11 = configurationCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Received %s with configuration: %@", &v8, 0x16u);
  }

  if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
  {
    sanitizedCopy = [configurationCopy sanitizedCopy];

    configurationCopy = sanitizedCopy;
  }

  delegate = [(CXCallSource *)self delegate];
  [delegate callSource:self registeredWithConfiguration:configurationCopy];
}

- (void)reportNewIncomingCallWithUUID:(id)d update:(id)update reply:(id)reply
{
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updateCopy = update;
  replyCopy = reply;
  v11 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v50 = "[CXCallSource reportNewIncomingCallWithUUID:update:reply:]";
    v51 = 2112;
    v52 = uUIDString;
    v53 = 2112;
    v54 = updateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ update: %@", buf, 0x20u);
  }

  if (replyCopy)
  {
    if (!dCopy)
    {
      v25 = CXDefaultLog(v13);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v25 reportNewIncomingCallWithUUID:v26 update:v27 reply:v28, v29, v30, v31, v32];
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_9;
      v47[3] = &unk_1E7C07388;
      v48 = replyCopy;
      __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_9(v47);
      v33 = v48;
      goto LABEL_22;
    }

    if (updateCopy)
    {
      isPermittedToUsePublicAPI = [(CXCallSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = [updateCopy sanitizedCopy];

          updateCopy = sanitizedCopy;
        }

        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedNewIncomingCallWithUUID:dCopy update:updateCopy completion:replyCopy];

        goto LABEL_23;
      }

      v42 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_15;
      v43[3] = &unk_1E7C07388;
      v44 = replyCopy;
      __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_15(v43);
      v33 = v44;
LABEL_22:

      goto LABEL_23;
    }

    v34 = CXDefaultLog(v13);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v34 reportNewIncomingCallWithUUID:v35 update:v36 reply:v37, v38, v39, v40, v41];
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_14;
    v45[3] = &unk_1E7C07388;
    v46 = replyCopy;
    __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_14(v45);
    updateCopy = v46;
  }

  else
  {
    v17 = CXDefaultLog(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v17 reportNewIncomingCallWithUUID:v18 update:v19 reply:v20, v21, v22, v23, v24];
    }
  }

LABEL_23:
}

void __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __59__CXCallSource_reportNewIncomingCallWithUUID_update_reply___block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_incomingCallErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)d updated:(id)updated reply:(id)reply
{
  v59 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updatedCopy = updated;
  replyCopy = reply;
  v11 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v54 = "[CXCallSource reportCallWithUUID:updated:reply:]";
    v55 = 2112;
    v56 = uUIDString;
    v57 = 2112;
    v58 = updatedCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ update: %@", buf, 0x20u);
  }

  v14 = CXDefaultLog(v13);
  if (os_signpost_enabled(v14))
  {
    uUID = [updatedCopy UUID];
    uUIDString2 = [uUID UUIDString];
    *buf = 138543362;
    v54 = uUIDString2;
    _os_signpost_emit_with_name_impl(&dword_1B47F3000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CXCallSource", "reportCallWithUUIDUpdated-%{public}@", buf, 0xCu);
  }

  if (replyCopy)
  {
    if (!dCopy)
    {
      v29 = CXDefaultLog(v17);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v29 reportNewIncomingCallWithUUID:v30 update:v31 reply:v32, v33, v34, v35, v36];
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_21;
      v51[3] = &unk_1E7C07388;
      v52 = replyCopy;
      __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_21(v51);
      v37 = v52;
      goto LABEL_24;
    }

    if (updatedCopy)
    {
      isPermittedToUsePublicAPI = [(CXCallSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = [updatedCopy sanitizedCopy];

          updatedCopy = sanitizedCopy;
        }

        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedCallWithUUID:dCopy updated:updatedCopy];

        (*(replyCopy + 2))(replyCopy, 0);
        goto LABEL_25;
      }

      v46 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_23;
      v47[3] = &unk_1E7C07388;
      v48 = replyCopy;
      __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_23(v47);
      v37 = v48;
LABEL_24:

      goto LABEL_25;
    }

    v38 = CXDefaultLog(v17);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v38 reportNewIncomingCallWithUUID:v39 update:v40 reply:v41, v42, v43, v44, v45];
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_22;
    v49[3] = &unk_1E7C07388;
    v50 = replyCopy;
    __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_22(v49);
    updatedCopy = v50;
  }

  else
  {
    v21 = CXDefaultLog(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v21 reportNewIncomingCallWithUUID:v22 update:v23 reply:v24, v25, v26, v27, v28];
    }
  }

LABEL_25:
}

void __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __49__CXCallSource_reportCallWithUUID_updated_reply___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)d receivedDTMFUpdate:(id)update reply:(id)reply
{
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updateCopy = update;
  replyCopy = reply;
  v11 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v50 = "[CXCallSource reportCallWithUUID:receivedDTMFUpdate:reply:]";
    v51 = 2112;
    v52 = uUIDString;
    v53 = 2112;
    v54 = updateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dtmfUpdate: %@", buf, 0x20u);
  }

  if (replyCopy)
  {
    if (!dCopy)
    {
      v25 = CXDefaultLog(v13);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v25 reportNewIncomingCallWithUUID:v26 update:v27 reply:v28, v29, v30, v31, v32];
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_28;
      v47[3] = &unk_1E7C07388;
      v48 = replyCopy;
      __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_28(v47);
      v33 = v48;
      goto LABEL_22;
    }

    if (updateCopy)
    {
      isPermittedToUsePublicAPI = [(CXCallSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = [updateCopy sanitizedCopy];

          updateCopy = sanitizedCopy;
        }

        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedCallWithUUID:dCopy receivedDTMFUpdate:updateCopy];

        (*(replyCopy + 2))(replyCopy, 0);
        goto LABEL_23;
      }

      v42 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_33;
      v43[3] = &unk_1E7C07388;
      v44 = replyCopy;
      __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_33(v43);
      v33 = v44;
LABEL_22:

      goto LABEL_23;
    }

    v34 = CXDefaultLog(v13);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v34 reportCallWithUUID:v35 receivedDTMFUpdate:v36 reply:v37, v38, v39, v40, v41];
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_32;
    v45[3] = &unk_1E7C07388;
    v46 = replyCopy;
    __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_32(v45);
    updateCopy = v46;
  }

  else
  {
    v17 = CXDefaultLog(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v17 reportNewIncomingCallWithUUID:v18 update:v19 reply:v20, v21, v22, v23, v24];
    }
  }

LABEL_23:
}

void __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_32(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __60__CXCallSource_reportCallWithUUID_receivedDTMFUpdate_reply___block_invoke_33(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context reply:(id)reply
{
  v54 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  replyCopy = reply;
  v16 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136316162;
    v45 = "[CXCallSource reportCallWithUUID:endedAtDate:privateReason:failureContext:reply:]";
    v46 = 2112;
    v47 = uUIDString;
    v48 = 2112;
    v49 = dateCopy;
    v50 = 2048;
    reasonCopy = reason;
    v52 = 2112;
    v53 = contextCopy;
    _os_log_impl(&dword_1B47F3000, v16, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dateEnded: %@ privateEndedReason: %ld failureContext: %@", buf, 0x34u);
  }

  if (replyCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePublicAPI = [(CXCallSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = [contextCopy sanitizedCopy];

          contextCopy = sanitizedCopy;
        }

        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedCallWithUUID:dCopy endedAtDate:dateCopy privateReason:reason failureContext:contextCopy];

        replyCopy[2](replyCopy, 0);
        goto LABEL_19;
      }

      v39 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_39;
      v40[3] = &unk_1E7C07388;
      v41 = replyCopy;
      __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_39(v40);
      v38 = v41;
    }

    else
    {
      v30 = CXDefaultLog(v18);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v30 reportNewIncomingCallWithUUID:v31 update:v32 reply:v33, v34, v35, v36, v37];
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_38;
      v42[3] = &unk_1E7C07388;
      v43 = replyCopy;
      __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_38(v42);
      v38 = v43;
    }

    goto LABEL_19;
  }

  v22 = CXDefaultLog(v18);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v22 reportNewIncomingCallWithUUID:v23 update:v24 reply:v25, v26, v27, v28, v29];
  }

LABEL_19:
}

void __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __82__CXCallSource_reportCallWithUUID_endedAtDate_privateReason_failureContext_reply___block_invoke_39(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  replyCopy = reply;
  v11 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v39 = "[CXCallSource reportOutgoingCallWithUUID:sentInvitationAtDate:reply:]";
    v40 = 2112;
    v41 = uUIDString;
    v42 = 2112;
    v43 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dateSentInvitation: %@", buf, 0x20u);
  }

  if (replyCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePublicAPI = [(CXCallSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedOutgoingCallWithUUID:dCopy sentInvitationAtDate:dateCopy];

        replyCopy[2](replyCopy, 0);
        goto LABEL_17;
      }

      v33 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_45;
      v34[3] = &unk_1E7C07388;
      v35 = replyCopy;
      __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_45(v34);
      v32 = v35;
    }

    else
    {
      v24 = CXDefaultLog(v13);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v24 reportNewIncomingCallWithUUID:v25 update:v26 reply:v27, v28, v29, v30, v31];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_44;
      v36[3] = &unk_1E7C07388;
      v37 = replyCopy;
      __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_44(v36);
      v32 = v37;
    }

    goto LABEL_17;
  }

  v16 = CXDefaultLog(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v16 reportNewIncomingCallWithUUID:v17 update:v18 reply:v19, v20, v21, v22, v23];
  }

LABEL_17:
}

void __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __70__CXCallSource_reportOutgoingCallWithUUID_sentInvitationAtDate_reply___block_invoke_45(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  replyCopy = reply;
  v11 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v39 = "[CXCallSource reportOutgoingCallWithUUID:startedConnectingAtDate:reply:]";
    v40 = 2112;
    v41 = uUIDString;
    v42 = 2112;
    v43 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dateStartedConnecting: %@", buf, 0x20u);
  }

  if (replyCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePublicAPI = [(CXCallSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedOutgoingCallWithUUID:dCopy startedConnectingAtDate:dateCopy];

        replyCopy[2](replyCopy, 0);
        goto LABEL_17;
      }

      v33 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_51;
      v34[3] = &unk_1E7C07388;
      v35 = replyCopy;
      __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_51(v34);
      v32 = v35;
    }

    else
    {
      v24 = CXDefaultLog(v13);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v24 reportNewIncomingCallWithUUID:v25 update:v26 reply:v27, v28, v29, v30, v31];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_50;
      v36[3] = &unk_1E7C07388;
      v37 = replyCopy;
      __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_50(v36);
      v32 = v37;
    }

    goto LABEL_17;
  }

  v16 = CXDefaultLog(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v16 reportNewIncomingCallWithUUID:v17 update:v18 reply:v19, v20, v21, v22, v23];
  }

LABEL_17:
}

void __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __73__CXCallSource_reportOutgoingCallWithUUID_startedConnectingAtDate_reply___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportNewOutgoingCallWithUUID:(id)d update:(id)update
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updateCopy = update;
  v8 = CXDefaultLog(updateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v11 = 136315394;
    v12 = "[CXCallSource reportNewOutgoingCallWithUUID:update:]";
    v13 = 2112;
    v14 = uUIDString;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@", &v11, 0x16u);
  }

  delegate = [(CXCallSource *)self delegate];
  [delegate callSource:self reportedNewOutgoingCallWithUUID:dCopy update:updateCopy];
}

- (void)reportOutgoingCallWithUUID:(id)d connectedAtDate:(id)date reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  replyCopy = reply;
  v11 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v39 = "[CXCallSource reportOutgoingCallWithUUID:connectedAtDate:reply:]";
    v40 = 2112;
    v41 = uUIDString;
    v42 = 2112;
    v43 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ dateConnected: %@", buf, 0x20u);
  }

  if (replyCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePublicAPI = [(CXCallSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedOutgoingCallWithUUID:dCopy connectedAtDate:dateCopy];

        replyCopy[2](replyCopy, 0);
        goto LABEL_17;
      }

      v33 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_57;
      v34[3] = &unk_1E7C07388;
      v35 = replyCopy;
      __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_57(v34);
      v32 = v35;
    }

    else
    {
      v24 = CXDefaultLog(v13);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v24 reportNewIncomingCallWithUUID:v25 update:v26 reply:v27, v28, v29, v30, v31];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_56;
      v36[3] = &unk_1E7C07388;
      v37 = replyCopy;
      __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_56(v36);
      v32 = v37;
    }

    goto LABEL_17;
  }

  v16 = CXDefaultLog(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v16 reportNewIncomingCallWithUUID:v17 update:v18 reply:v19, v20, v21, v22, v23];
  }

LABEL_17:
}

void __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_56(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __65__CXCallSource_reportOutgoingCallWithUUID_connectedAtDate_reply___block_invoke_57(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportAudioFinishedForCallWithUUID:(id)d reply:(id)reply
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v8 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315394;
    v36 = "[CXCallSource reportAudioFinishedForCallWithUUID:reply:]";
    v37 = 2112;
    v38 = uUIDString;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@", buf, 0x16u);
  }

  if (replyCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePrivateAPI = [(CXCallSource *)self isPermittedToUsePrivateAPI];
      if (isPermittedToUsePrivateAPI)
      {
        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedAudioFinishedForCallWithUUID:dCopy];

        replyCopy[2](replyCopy, 0);
        goto LABEL_17;
      }

      v30 = CXDefaultLog(isPermittedToUsePrivateAPI);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_63;
      v31[3] = &unk_1E7C07388;
      v32 = replyCopy;
      __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_63(v31);
      v29 = v32;
    }

    else
    {
      v21 = CXDefaultLog(v10);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v21 reportNewIncomingCallWithUUID:v22 update:v23 reply:v24, v25, v26, v27, v28];
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_62;
      v33[3] = &unk_1E7C07388;
      v34 = replyCopy;
      __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_62(v33);
      v29 = v34;
    }

    goto LABEL_17;
  }

  v13 = CXDefaultLog(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v13 reportNewIncomingCallWithUUID:v14 update:v15 reply:v16, v17, v18, v19, v20];
  }

LABEL_17:
}

void __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __57__CXCallSource_reportAudioFinishedForCallWithUUID_reply___block_invoke_63(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction reply:(id)reply
{
  dCopy = d;
  dataCopy = data;
  replyCopy = reply;
  v13 = replyCopy;
  if (replyCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePrivateAPI = [(CXCallSource *)self isPermittedToUsePrivateAPI];
      if (isPermittedToUsePrivateAPI)
      {
        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self reportedCallWithUUID:dCopy changedFrequencyData:dataCopy forDirection:direction];

        v13[2](v13, 0);
        goto LABEL_15;
      }

      v33 = CXDefaultLog(isPermittedToUsePrivateAPI);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_69;
      v34[3] = &unk_1E7C07388;
      v35 = v13;
      __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_69(v34);
      v32 = v35;
    }

    else
    {
      v24 = CXDefaultLog(replyCopy);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v24 reportNewIncomingCallWithUUID:v25 update:v26 reply:v27, v28, v29, v30, v31];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_68;
      v36[3] = &unk_1E7C07388;
      v37 = v13;
      __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_68(v36);
      v32 = v37;
    }

    goto LABEL_15;
  }

  v16 = CXDefaultLog(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v16 reportNewIncomingCallWithUUID:v17 update:v18 reply:v19, v20, v21, v22, v23];
  }

LABEL_15:
}

void __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __75__CXCallSource_reportCallWithUUID_changedFrequencyData_forDirection_reply___block_invoke_69(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v12 = replyCopy;
  if (replyCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePrivateAPI = [(CXCallSource *)self isPermittedToUsePrivateAPI];
      if (isPermittedToUsePrivateAPI)
      {
        delegate = [(CXCallSource *)self delegate];
        *&v15 = level;
        [delegate callSource:self reportedCallWithUUID:dCopy changedMeterLevel:direction forDirection:v15];

        v12[2](v12, 0);
        goto LABEL_15;
      }

      v33 = CXDefaultLog(isPermittedToUsePrivateAPI);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_75;
      v34[3] = &unk_1E7C07388;
      v35 = v12;
      __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_75(v34);
      v32 = v35;
    }

    else
    {
      v24 = CXDefaultLog(replyCopy);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v24 reportNewIncomingCallWithUUID:v25 update:v26 reply:v27, v28, v29, v30, v31];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_74;
      v36[3] = &unk_1E7C07388;
      v37 = v12;
      __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_74(v36);
      v32 = v37;
    }

    goto LABEL_15;
  }

  v16 = CXDefaultLog(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v16 reportNewIncomingCallWithUUID:v17 update:v18 reply:v19, v20, v21, v22, v23];
  }

LABEL_15:
}

void __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __72__CXCallSource_reportCallWithUUID_changedMeterLevel_forDirection_reply___block_invoke_75(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used reply:(id)reply
{
  v50 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  replyCopy = reply;
  v13 = CXDefaultLog(replyCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315906;
    v43 = "[CXCallSource reportCallWithUUID:crossDeviceIdentifier:changedBytesOfDataUsed:reply:]";
    v44 = 2112;
    v45 = uUIDString;
    v46 = 2112;
    v47 = identifierCopy;
    v48 = 2048;
    usedCopy = used;
    _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ crossDeviceIdentifier: %@ bytesOfDataUsed: %ld", buf, 0x2Au);
  }

  if (!dCopy)
  {
    v18 = CXDefaultLog(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v18 reportNewIncomingCallWithUUID:v19 update:v20 reply:v21, v22, v23, v24, v25];
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke;
    v40[3] = &unk_1E7C07388;
    v41 = replyCopy;
    __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke(v40);
    v26 = v41;
    goto LABEL_16;
  }

  if (!identifierCopy)
  {
    v27 = CXDefaultLog(v15);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v27 reportCallWithUUID:v28 crossDeviceIdentifier:v29 changedBytesOfDataUsed:v30 reply:v31, v32, v33, v34];
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_81;
    v38[3] = &unk_1E7C07388;
    v39 = replyCopy;
    __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_81(v38);
    v26 = v39;
    goto LABEL_16;
  }

  isPermittedToUsePrivateAPI = [(CXCallSource *)self isPermittedToUsePrivateAPI];
  if ((isPermittedToUsePrivateAPI & 1) == 0)
  {
    v35 = CXDefaultLog(isPermittedToUsePrivateAPI);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_82;
    v36[3] = &unk_1E7C07388;
    v37 = replyCopy;
    __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_82(v36);
    v26 = v37;
LABEL_16:

    goto LABEL_17;
  }

  delegate = [(CXCallSource *)self delegate];
  [delegate callSource:self reportedCallWithUUID:dCopy crossDeviceIdentifier:identifierCopy changedBytesOfDataUsed:used];

  (*(replyCopy + 2))(replyCopy, 0);
LABEL_17:
}

void __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_81(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __86__CXCallSource_reportCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed_reply___block_invoke_82(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)requestTransaction:(id)transaction completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  handlerCopy = handler;
  v8 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[CXCallSource requestTransaction:completionHandler:]";
    v34 = 2112;
    v35 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (transactionCopy)
    {
      isPermittedToUsePrivateAPI = [(CXCallSource *)self isPermittedToUsePrivateAPI];
      if (isPermittedToUsePrivateAPI)
      {
        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self requestedTransaction:transactionCopy completion:handlerCopy];
      }

      else
      {
        v27 = CXDefaultLog(isPermittedToUsePrivateAPI);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __53__CXCallSource_requestTransaction_completionHandler___block_invoke_92;
        v28[3] = &unk_1E7C07388;
        v29 = handlerCopy;
        __53__CXCallSource_requestTransaction_completionHandler___block_invoke_92(v28);
        delegate = v29;
      }
    }

    else
    {
      v19 = CXDefaultLog(v9);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v19 requestTransaction:v20 completionHandler:v21, v22, v23, v24, v25, v26];
      }

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __53__CXCallSource_requestTransaction_completionHandler___block_invoke_91;
      v30[3] = &unk_1E7C07388;
      v31 = handlerCopy;
      __53__CXCallSource_requestTransaction_completionHandler___block_invoke_91(v30);
      delegate = v31;
    }
  }

  else
  {
    delegate = CXDefaultLog(v9);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)delegate requestTransaction:v12 completionHandler:v13, v14, v15, v16, v17, v18];
    }
  }
}

void __53__CXCallSource_requestTransaction_completionHandler___block_invoke_91(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __53__CXCallSource_requestTransaction_completionHandler___block_invoke_92(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)actionCompleted:(id)completed completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  handlerCopy = handler;
  v8 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[CXCallSource actionCompleted:completionHandler:]";
    v36 = 2112;
    v37 = completedCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (completedCopy)
    {
      isPermittedToUsePublicAPI = [(CXCallSource *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        if (![(CXCallSource *)self isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = [completedCopy sanitizedCopy];

          completedCopy = sanitizedCopy;
        }

        delegate = [(CXCallSource *)self delegate];
        [delegate callSource:self actionCompleted:completedCopy];

        handlerCopy[2](handlerCopy, 0);
      }

      else
      {
        v29 = CXDefaultLog(isPermittedToUsePublicAPI);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
        }

        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __50__CXCallSource_actionCompleted_completionHandler___block_invoke_99;
        v30[3] = &unk_1E7C07388;
        v31 = handlerCopy;
        __50__CXCallSource_actionCompleted_completionHandler___block_invoke_99(v30);
      }
    }

    else
    {
      v21 = CXDefaultLog(v9);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v21 actionCompleted:v22 completionHandler:v23, v24, v25, v26, v27, v28];
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __50__CXCallSource_actionCompleted_completionHandler___block_invoke_98;
      v32[3] = &unk_1E7C07388;
      v33 = handlerCopy;
      __50__CXCallSource_actionCompleted_completionHandler___block_invoke_98(v32);
      completedCopy = v33;
    }
  }

  else
  {
    v13 = CXDefaultLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v13 requestTransaction:v14 completionHandler:v15, v16, v17, v18, v19, v20];
    }
  }
}

void __50__CXCallSource_actionCompleted_completionHandler___block_invoke_98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __50__CXCallSource_actionCompleted_completionHandler___block_invoke_99(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)commitTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CXCallSource_commitTransaction___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = transactionCopy;
  selfCopy = self;
  v6 = transactionCopy;
  dispatch_async(queue, v7);
}

void __34__CXCallSource_commitTransaction___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CXCallSource commitTransaction:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with transaction: %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  v5 = [*(a1 + 32) copy];
  [v4 commitTransaction:v5];
}

- (void)handleActionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  queue = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CXCallSource_handleActionTimeout___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = timeoutCopy;
  selfCopy = self;
  v6 = timeoutCopy;
  dispatch_async(queue, v7);
}

void __36__CXCallSource_handleActionTimeout___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[CXCallSource handleActionTimeout:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with action: %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  v5 = [*(a1 + 32) copy];
  [v4 handleActionTimeout:v5];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  toCopy = to;
  queue = [(CXCallSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CXCallSource_handleAudioSessionActivationStateChangedTo___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = toCopy;
  selfCopy = self;
  v6 = toCopy;
  dispatch_async(queue, v7);
}

void __59__CXCallSource_handleAudioSessionActivationStateChangedTo___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) BOOLValue];
    v5 = 136315394;
    v6 = "[CXCallSource handleAudioSessionActivationStateChangedTo:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Sending %s with active: %d", &v5, 0x12u);
  }

  v4 = [*(a1 + 40) vendorProtocolDelegate];
  [v4 handleAudioSessionActivationStateChangedTo:*(a1 + 32)];
}

- (void)reportNewIncomingCallWithUUID:(uint64_t)a3 update:(uint64_t)a4 reply:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"update";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)reportNewIncomingCallWithUUID:(uint64_t)a3 update:(uint64_t)a4 reply:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"UUID";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)reportNewIncomingCallWithUUID:(uint64_t)a3 update:(uint64_t)a4 reply:(uint64_t)a5 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"reply";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)reportCallWithUUID:(uint64_t)a3 receivedDTMFUpdate:(uint64_t)a4 reply:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"dtmfUpdate";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)reportCallWithUUID:(uint64_t)a3 crossDeviceIdentifier:(uint64_t)a4 changedBytesOfDataUsed:(uint64_t)a5 reply:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"crossDeviceIdentifier";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)requestTransaction:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"transaction";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)requestTransaction:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"completionHandler";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)actionCompleted:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"action";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end