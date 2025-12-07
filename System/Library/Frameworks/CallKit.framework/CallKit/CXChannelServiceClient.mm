@interface CXChannelServiceClient
- (BOOL)isPermittedToUsePublicAPI;
- (CXChannelServiceClient)initWithConnection:(id)connection;
- (CXChannelServiceClientDelegate)delegate;
- (id)_createSandboxURLAccessValidatedUpdate:(id)update;
- (void)actionCompleted:(id)completed completionHandler:(id)handler;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)registerWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)reportAudioFinishedForChannelWithUUID:(id)d completionHandler:(id)handler;
- (void)reportChannelWithUUID:(id)d connectedAtDate:(id)date completionHandler:(id)handler;
- (void)reportChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(id)reason completionHandler:(id)handler;
- (void)reportChannelWithUUID:(id)d startedConnectingAtDate:(id)date completionHandler:(id)handler;
- (void)reportChannelWithUUID:(id)d updated:(id)updated completionHandler:(id)handler;
- (void)reportIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(id)reason completionHandler:(id)handler;
- (void)reportIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(id)transmission completionHandler:(id)handler;
- (void)requestTransaction:(id)transaction completionHandler:(id)handler;
@end

@implementation CXChannelServiceClient

- (CXChannelServiceClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = CXChannelServiceClient;
  v5 = [(CXServiceClient *)&v10 initWithConnection:connectionCopy];
  v6 = v5;
  if (v5)
  {
    isPermittedToUsePublicAPI = [(CXChannelServiceClient *)v5 isPermittedToUsePublicAPI];
    if ((isPermittedToUsePublicAPI & 1) == 0)
    {
      v8 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CXChannelServiceClient *)v6 initWithConnection:connectionCopy, v8];
      }

      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isPermittedToUsePublicAPI
{
  v5.receiver = self;
  v5.super_class = CXChannelServiceClient;
  if ([(CXServiceClient *)&v5 isPermittedToUsePublicAPI])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(CXServiceClient *)self backgroundModeOptions]>> 1) & 1;
  }

  return v3;
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
    v35 = "[CXChannelServiceClient actionCompleted:completionHandler:]";
    v36 = 2112;
    v37 = completedCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with action: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (completedCopy)
    {
      isPermittedToUsePublicAPI = [(CXChannelServiceClient *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        if (![(CXServiceClient *)self isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = [completedCopy sanitizedCopy];

          completedCopy = sanitizedCopy;
        }

        delegate = [(CXChannelServiceClient *)self delegate];
        [delegate serviceClient:self actionCompleted:completedCopy];

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
        v30[2] = __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_11;
        v30[3] = &unk_1E7C07388;
        v31 = handlerCopy;
        __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_11(v30);
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
      v32[2] = __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_10;
      v32[3] = &unk_1E7C07388;
      v33 = handlerCopy;
      __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_10(v32);
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

void __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __60__CXChannelServiceClient_actionCompleted_completionHandler___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)registerWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CXChannelServiceClient registerWithConfiguration:completionHandler:]";
    v32 = 2112;
    v33 = configurationCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with configuration: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (configurationCopy)
    {
      if (![(CXServiceClient *)self isPermittedToUsePrivateAPI])
      {
        sanitizedCopy = [configurationCopy sanitizedCopy];

        configurationCopy = sanitizedCopy;
      }

      delegate = [(CXChannelServiceClient *)self delegate];
      [delegate serviceClient:self registeredWithConfiguration:configurationCopy];

      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v20 = CXDefaultLog(v9);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(CXChannelServiceClient *)v20 registerWithConfiguration:v21 completionHandler:v22, v23, v24, v25, v26, v27];
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __70__CXChannelServiceClient_registerWithConfiguration_completionHandler___block_invoke_17;
      v28[3] = &unk_1E7C07388;
      v29 = handlerCopy;
      __70__CXChannelServiceClient_registerWithConfiguration_completionHandler___block_invoke_17(v28);
      configurationCopy = v29;
    }
  }

  else
  {
    v12 = CXDefaultLog(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v12 requestTransaction:v13 completionHandler:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __70__CXChannelServiceClient_registerWithConfiguration_completionHandler___block_invoke_17(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

- (void)reportAudioFinishedForChannelWithUUID:(id)d completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315394;
    v36 = "[CXChannelServiceClient reportAudioFinishedForChannelWithUUID:completionHandler:]";
    v37 = 2112;
    v38 = uUIDString;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePrivateAPI = [(CXServiceClient *)self isPermittedToUsePrivateAPI];
      if (isPermittedToUsePrivateAPI)
      {
        delegate = [(CXChannelServiceClient *)self delegate];
        [delegate serviceClient:self reportedAudioFinishedForChannelWithUUID:dCopy];

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_17;
      }

      v30 = CXDefaultLog(isPermittedToUsePrivateAPI);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportAudioFinishedForCallWithUUID:reply:];
      }

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_24;
      v31[3] = &unk_1E7C07388;
      v32 = handlerCopy;
      __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_24(v31);
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
      v33[2] = __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_23;
      v33[3] = &unk_1E7C07388;
      v34 = handlerCopy;
      __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_23(v33);
      v29 = v34;
    }

    goto LABEL_17;
  }

  v13 = CXDefaultLog(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v13 requestTransaction:v14 completionHandler:v15, v16, v17, v18, v19, v20];
  }

LABEL_17:
}

void __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __82__CXChannelServiceClient_reportAudioFinishedForChannelWithUUID_completionHandler___block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportChannelWithUUID:(id)d connectedAtDate:(id)date completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  handlerCopy = handler;
  v11 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v39 = "[CXChannelServiceClient reportChannelWithUUID:connectedAtDate:completionHandler:]";
    v40 = 2112;
    v41 = uUIDString;
    v42 = 2112;
    v43 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ connectedAtDate: %@", buf, 0x20u);
  }

  if (handlerCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePublicAPI = [(CXChannelServiceClient *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        delegate = [(CXChannelServiceClient *)self delegate];
        [delegate serviceClient:self reportedChannelWithUUID:dCopy connectedAtDate:dateCopy];

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_17;
      }

      v33 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_28;
      v34[3] = &unk_1E7C07388;
      v35 = handlerCopy;
      __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_28(v34);
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
      v36[2] = __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_27;
      v36[3] = &unk_1E7C07388;
      v37 = handlerCopy;
      __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_27(v36);
      v32 = v37;
    }

    goto LABEL_17;
  }

  v16 = CXDefaultLog(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v16 requestTransaction:v17 completionHandler:v18, v19, v20, v21, v22, v23];
  }

LABEL_17:
}

void __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __82__CXChannelServiceClient_reportChannelWithUUID_connectedAtDate_completionHandler___block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(id)reason completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  reasonCopy = reason;
  handlerCopy = handler;
  v14 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315906;
    v52 = "[CXChannelServiceClient reportChannelWithUUID:disconnectedAtDate:disconnectedReason:completionHandler:]";
    v53 = 2112;
    v54 = uUIDString;
    v55 = 2112;
    v56 = dateCopy;
    v57 = 2112;
    v58 = reasonCopy;
    _os_log_impl(&dword_1B47F3000, v14, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ disconnectedAtDate: %@ disconnectedReason: %@", buf, 0x2Au);
  }

  if (handlerCopy)
  {
    if (dCopy)
    {
      if (reasonCopy)
      {
        isPermittedToUsePublicAPI = [(CXChannelServiceClient *)self isPermittedToUsePublicAPI];
        if (isPermittedToUsePublicAPI)
        {
          delegate = [(CXChannelServiceClient *)self delegate];
          [delegate serviceClient:self reportedChannelWithUUID:dCopy disconnectedAtDate:dateCopy disconnectedReason:{objc_msgSend(reasonCopy, "integerValue")}];

          handlerCopy[2](handlerCopy, 0);
          goto LABEL_21;
        }

        v44 = CXDefaultLog(isPermittedToUsePublicAPI);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
        }

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_36;
        v45[3] = &unk_1E7C07388;
        v46 = handlerCopy;
        __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_36(v45);
        v35 = v46;
      }

      else
      {
        v36 = CXDefaultLog(v16);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [(CXChannelServiceClient *)v36 reportChannelWithUUID:v37 disconnectedAtDate:v38 disconnectedReason:v39 completionHandler:v40, v41, v42, v43];
        }

        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_35;
        v47[3] = &unk_1E7C07388;
        v48 = handlerCopy;
        __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_35(v47);
        v35 = v48;
      }
    }

    else
    {
      v27 = CXDefaultLog(v16);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v27 reportNewIncomingCallWithUUID:v28 update:v29 reply:v30, v31, v32, v33, v34];
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_31;
      v49[3] = &unk_1E7C07388;
      v50 = handlerCopy;
      __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_31(v49);
      v35 = v50;
    }

    goto LABEL_21;
  }

  v19 = CXDefaultLog(v16);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v19 requestTransaction:v20 completionHandler:v21, v22, v23, v24, v25, v26];
  }

LABEL_21:
}

void __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_31(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_35(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __104__CXChannelServiceClient_reportChannelWithUUID_disconnectedAtDate_disconnectedReason_completionHandler___block_invoke_36(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportChannelWithUUID:(id)d startedConnectingAtDate:(id)date completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  handlerCopy = handler;
  v11 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v39 = "[CXChannelServiceClient reportChannelWithUUID:startedConnectingAtDate:completionHandler:]";
    v40 = 2112;
    v41 = uUIDString;
    v42 = 2112;
    v43 = dateCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ startedConnectingAtDate: %@", buf, 0x20u);
  }

  if (handlerCopy)
  {
    if (dCopy)
    {
      isPermittedToUsePublicAPI = [(CXChannelServiceClient *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        delegate = [(CXChannelServiceClient *)self delegate];
        [delegate serviceClient:self reportedChannelWithUUID:dCopy startedConnectingAtDate:dateCopy];

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_17;
      }

      v33 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_40;
      v34[3] = &unk_1E7C07388;
      v35 = handlerCopy;
      __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_40(v34);
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
      v36[2] = __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_39;
      v36[3] = &unk_1E7C07388;
      v37 = handlerCopy;
      __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_39(v36);
      v32 = v37;
    }

    goto LABEL_17;
  }

  v16 = CXDefaultLog(v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v16 requestTransaction:v17 completionHandler:v18, v19, v20, v21, v22, v23];
  }

LABEL_17:
}

void __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_39(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __90__CXChannelServiceClient_reportChannelWithUUID_startedConnectingAtDate_completionHandler___block_invoke_40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportChannelWithUUID:(id)d updated:(id)updated completionHandler:(id)handler
{
  v56 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updatedCopy = updated;
  handlerCopy = handler;
  v11 = CXDefaultLog(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 136315650;
    v51 = "[CXChannelServiceClient reportChannelWithUUID:updated:completionHandler:]";
    v52 = 2112;
    v53 = uUIDString;
    v54 = 2112;
    v55 = updatedCopy;
    _os_log_impl(&dword_1B47F3000, v11, OS_LOG_TYPE_DEFAULT, "Received %s with UUID: %@ update: %@", buf, 0x20u);
  }

  if (handlerCopy)
  {
    if (!dCopy)
    {
      v26 = CXDefaultLog(v13);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v26 reportNewIncomingCallWithUUID:v27 update:v28 reply:v29, v30, v31, v32, v33];
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_43;
      v48[3] = &unk_1E7C07388;
      v49 = handlerCopy;
      __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_43(v48);
      v34 = v49;
      goto LABEL_22;
    }

    if (updatedCopy)
    {
      isPermittedToUsePublicAPI = [(CXChannelServiceClient *)self isPermittedToUsePublicAPI];
      if (isPermittedToUsePublicAPI)
      {
        if (![(CXServiceClient *)self isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = [updatedCopy sanitizedCopy];

          updatedCopy = sanitizedCopy;
        }

        v16 = [(CXChannelServiceClient *)self _createSandboxURLAccessValidatedUpdate:updatedCopy];
        delegate = [(CXChannelServiceClient *)self delegate];
        [delegate serviceClient:self reportedChannelWithUUID:dCopy updated:v16];

        (*(handlerCopy + 2))(handlerCopy, 0);
        goto LABEL_23;
      }

      v43 = CXDefaultLog(isPermittedToUsePublicAPI);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_48;
      v44[3] = &unk_1E7C07388;
      v45 = handlerCopy;
      __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_48(v44);
      v34 = v45;
LABEL_22:

      goto LABEL_23;
    }

    v35 = CXDefaultLog(v13);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v35 reportNewIncomingCallWithUUID:v36 update:v37 reply:v38, v39, v40, v41, v42];
    }

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_47;
    v46[3] = &unk_1E7C07388;
    v47 = handlerCopy;
    __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_47(v46);
    updatedCopy = v47;
  }

  else
  {
    v18 = CXDefaultLog(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(CXCallSource *)v18 requestTransaction:v19 completionHandler:v20, v21, v22, v23, v24, v25];
    }
  }

LABEL_23:
}

void __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_47(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __74__CXChannelServiceClient_reportChannelWithUUID_updated_completionHandler___block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(id)reason completionHandler:(id)handler
{
  dCopy = d;
  reasonCopy = reason;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (handlerCopy)
  {
    if (dCopy)
    {
      if (reasonCopy)
      {
        isPermittedToUsePublicAPI = [(CXChannelServiceClient *)self isPermittedToUsePublicAPI];
        if (isPermittedToUsePublicAPI)
        {
          delegate = [(CXChannelServiceClient *)self delegate];
          [delegate serviceClient:self reportedIncomingTransmissionEndedForChannelWithUUID:dCopy reason:objc_msgSend(reasonCopy completionHandler:{"integerValue"), v11}];

          goto LABEL_19;
        }

        v39 = CXDefaultLog(isPermittedToUsePublicAPI);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_56;
        v40[3] = &unk_1E7C07388;
        v41 = v11;
        __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_56(v40);
        v30 = v41;
      }

      else
      {
        v31 = CXDefaultLog(handlerCopy);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(CXChannelServiceClient *)v31 reportIncomingTransmissionEndedForChannelWithUUID:v32 reason:v33 completionHandler:v34, v35, v36, v37, v38];
        }

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_55;
        v42[3] = &unk_1E7C07388;
        v43 = v11;
        __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_55(v42);
        v30 = v43;
      }
    }

    else
    {
      v22 = CXDefaultLog(handlerCopy);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v22 reportNewIncomingCallWithUUID:v23 update:v24 reply:v25, v26, v27, v28, v29];
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_51;
      v44[3] = &unk_1E7C07388;
      v45 = v11;
      __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_51(v44);
      v30 = v45;
    }

    goto LABEL_19;
  }

  v14 = CXDefaultLog(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v14 requestTransaction:v15 completionHandler:v16, v17, v18, v19, v20, v21];
  }

LABEL_19:
}

void __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_55(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __101__CXChannelServiceClient_reportIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke_56(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (void)reportIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(id)transmission completionHandler:(id)handler
{
  dCopy = d;
  updateCopy = update;
  transmissionCopy = transmission;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (handlerCopy)
  {
    if (dCopy)
    {
      if (updateCopy)
      {
        isPermittedToUsePublicAPI = [(CXChannelServiceClient *)self isPermittedToUsePublicAPI];
        if (isPermittedToUsePublicAPI)
        {
          v16 = [(CXChannelServiceClient *)self _createSandboxURLAccessValidatedUpdate:updateCopy];
          delegate = [(CXChannelServiceClient *)self delegate];
          [delegate serviceClient:self reportedIncomingTransmissionStartedForChannelWithUUID:dCopy update:v16 shouldReplaceOutgoingTransmission:objc_msgSend(transmissionCopy completionHandler:{"BOOLValue"), v14}];

          goto LABEL_19;
        }

        v43 = CXDefaultLog(isPermittedToUsePublicAPI);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [CXCallSource reportNewIncomingCallWithUUID:update:reply:];
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_61;
        v44[3] = &unk_1E7C07388;
        v45 = v14;
        __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_61(v44);
        v34 = v45;
      }

      else
      {
        v35 = CXDefaultLog(handlerCopy);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(CXCallSource *)v35 reportNewIncomingCallWithUUID:v36 update:v37 reply:v38, v39, v40, v41, v42];
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_60;
        v46[3] = &unk_1E7C07388;
        v47 = v14;
        __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_60(v46);
        v34 = v47;
      }
    }

    else
    {
      v26 = CXDefaultLog(handlerCopy);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(CXCallSource *)v26 reportNewIncomingCallWithUUID:v27 update:v28 reply:v29, v30, v31, v32, v33];
      }

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_59;
      v48[3] = &unk_1E7C07388;
      v49 = v14;
      __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_59(v48);
      v34 = v49;
    }

    goto LABEL_19;
  }

  v18 = CXDefaultLog(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [(CXCallSource *)v18 requestTransaction:v19 completionHandler:v20, v21, v22, v23, v24, v25];
  }

LABEL_19:
}

void __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_59(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __137__CXChannelServiceClient_reportIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke_61(uint64_t a1)
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
    v33 = "[CXChannelServiceClient requestTransaction:completionHandler:]";
    v34 = 2112;
    v35 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "Received %s with transaction: %@", buf, 0x16u);
  }

  if (handlerCopy)
  {
    if (transactionCopy)
    {
      isPermittedToUsePrivateAPI = [(CXServiceClient *)self isPermittedToUsePrivateAPI];
      if (isPermittedToUsePrivateAPI)
      {
        delegate = [(CXChannelServiceClient *)self delegate];
        [delegate serviceClient:self requestedTransaction:transactionCopy completionHandler:handlerCopy];
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
        v28[2] = __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_68;
        v28[3] = &unk_1E7C07388;
        v29 = handlerCopy;
        __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_68(v28);
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
      v30[2] = __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_67;
      v30[3] = &unk_1E7C07388;
      v31 = handlerCopy;
      __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_67(v30);
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

void __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_67(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:2];
  (*(v1 + 16))(v1, v2);
}

void __63__CXChannelServiceClient_requestTransaction_completionHandler___block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] cx_errorWithCode:1];
  (*(v1 + 16))(v1, v2);
}

- (id)_createSandboxURLAccessValidatedUpdate:(id)update
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [update copy];
  sandboxExtendedImageURL = [v4 sandboxExtendedImageURL];
  v6 = [sandboxExtendedImageURL URL];

  if (v6)
  {
    v7 = [(CXServiceClient *)self clientCanAccessSandboxFileURL:v6];
    if ((v7 & 1) == 0)
    {
      v8 = CXDefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Client does not have permission to access channel update url: %@", &v15, 0xCu);
      }

      [v4 setSandboxExtendedImageURL:0];
    }
  }

  activeRemoteParticipant = [v4 activeRemoteParticipant];
  imageURL = [activeRemoteParticipant imageURL];

  if (imageURL)
  {
    v11 = [(CXServiceClient *)self clientCanAccessSandboxFileURL:imageURL];
    if ((v11 & 1) == 0)
    {
      v12 = CXDefaultLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = imageURL;
        _os_log_impl(&dword_1B47F3000, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Client does not have permission to access active remote participant url: %@", &v15, 0xCu);
      }

      activeRemoteParticipant2 = [v4 activeRemoteParticipant];
      [activeRemoteParticipant2 setImageURL:0];
    }
  }

  return v4;
}

- (void)commitTransaction:(id)transaction
{
  v10 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v5 = CXDefaultLog(transactionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending commit for transaction %@", &v8, 0xCu);
  }

  connection = [(CXServiceClient *)self connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget commitTransaction:transactionCopy];
}

- (void)handleActionTimeout:(id)timeout
{
  v10 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  v5 = CXDefaultLog(timeoutCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = timeoutCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending handle timeout for action %@", &v8, 0xCu);
  }

  connection = [(CXServiceClient *)self connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget handleActionTimeout:timeoutCopy];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  v9 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = CXDefaultLog(toCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = [toCopy BOOLValue];
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Sending handleAudioSessionActivationStateChangedTo %d", v8, 8u);
  }

  connection = [(CXServiceClient *)self connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget handleAudioSessionActivationStateChangedTo:toCopy];
}

- (CXChannelServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConnection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_1();
  v8 = 2112;
  v9 = a2;
  v6 = v5;
  _os_log_error_impl(&dword_1B47F3000, a3, OS_LOG_TYPE_ERROR, "Failed to initialize %@; expected background mode not found on connection %@.", v7, 0x16u);
}

- (void)registerWithConfiguration:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"configuration";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)reportChannelWithUUID:(uint64_t)a3 disconnectedAtDate:(uint64_t)a4 disconnectedReason:(uint64_t)a5 completionHandler:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"disconnectedReason";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)reportIncomingTransmissionEndedForChannelWithUUID:(uint64_t)a3 reason:(uint64_t)a4 completionHandler:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"reason";
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a1, a3, "Invalid argument; '%@' parameter cannot be nil.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end