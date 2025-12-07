@interface CARSessionChannel
- (BOOL)openChannelWithError:(id *)error;
- (BOOL)sendChannelMessage:(id)message withDescription:(id)description;
- (CARSessionChannel)initWithSession:(id)session channelType:(id)type channelID:(id)d withoutReply:(BOOL)reply qualityOfService:(id)service streamPriority:(id)priority;
- (CARSessionChannel)initWithSession:(id)session channelType:(id)type channelID:(id)d withoutReply:(BOOL)reply sendAsIs:(BOOL)is qualityOfService:(id)service streamPriority:(id)priority;
- (CARSessionChannelDelegate)channelDelegate;
- (id)_endpointValueForKey:(__CFString *)key;
- (id)shortChannelType;
- (void)_channelInvalidated;
- (void)_channelQueue_closeChannel;
- (void)_channelQueue_invalidate;
- (void)_dataReceived:(id)received;
- (void)_sendComplete;
- (void)closeChannel;
@end

@implementation CARSessionChannel

- (CARSessionChannel)initWithSession:(id)session channelType:(id)type channelID:(id)d withoutReply:(BOOL)reply qualityOfService:(id)service streamPriority:(id)priority
{
  replyCopy = reply;
  v14 = *MEMORY[0x1E6962390];
  priorityCopy = priority;
  serviceCopy = service;
  dCopy = d;
  typeCopy = type;
  sessionCopy = session;
  v20 = -[CARSessionChannel initWithSession:channelType:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:](self, "initWithSession:channelType:channelID:withoutReply:sendAsIs:qualityOfService:streamPriority:", sessionCopy, typeCopy, dCopy, replyCopy, [typeCopy isEqualToString:v14] ^ 1, serviceCopy, priorityCopy);

  return v20;
}

- (CARSessionChannel)initWithSession:(id)session channelType:(id)type channelID:(id)d withoutReply:(BOOL)reply sendAsIs:(BOOL)is qualityOfService:(id)service streamPriority:(id)priority
{
  sessionCopy = session;
  typeCopy = type;
  dCopy = d;
  serviceCopy = service;
  priorityCopy = priority;
  v31.receiver = self;
  v31.super_class = CARSessionChannel;
  v20 = [(CARSessionChannel *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_session, session);
    v22 = [typeCopy copy];
    channelType = v21->_channelType;
    v21->_channelType = v22;

    v24 = [dCopy copy];
    channelID = v21->_channelID;
    v21->_channelID = v24;

    v21->_withoutReply = reply;
    v21->_sendAsIs = is;
    objc_storeStrong(&v21->_qualityOfService, service);
    objc_storeStrong(&v21->_streamPriority, priority);
    v26 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v27 = dispatch_queue_create("com.apple.carkit.SessionChannel", v26);
    channelQueue = v21->_channelQueue;
    v21->_channelQueue = v27;

    v21->_payloadCount = 0;
  }

  return v21;
}

- (BOOL)openChannelWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  channelQueue = [(CARSessionChannel *)self channelQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CARSessionChannel_openChannelWithError___block_invoke;
  block[3] = &unk_1E82FD350;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(channelQueue, block);

  v6 = *(v16 + 24);
  if (error && (v16[3] & 1) == 0)
  {
    *error = v10[5];
    v6 = *(v16 + 24);
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6 & 1;
}

void __42__CARSessionChannel_openChannelWithError___block_invoke(uint64_t a1)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v2 = CarGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortChannelType];
    *buf = 138543362;
    v52 = v3;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to start remote control session for channel %{public}@", buf, 0xCu);
  }

  v4 = (a1 + 32);
  v5 = [*(a1 + 32) session];
  v6 = [*(a1 + 32) channelType];
  v7 = [*(a1 + 32) channelID];
  v8 = [*(a1 + 32) withoutReply];
  v9 = [*(a1 + 32) sendAsIs];
  v10 = [*(a1 + 32) qualityOfService];
  v11 = [*(a1 + 32) streamPriority];
  v48 = a1;
  v13 = *(a1 + 40);
  v12 = a1 + 40;
  v14 = *(v13 + 8);
  obj = *(v14 + 40);
  v15 = [v5 createRemoteControlSession:v6 channelID:v7 withoutReply:v8 sendAsIs:v9 qualityOfService:v10 streamPriority:v11 error:&obj];
  objc_storeStrong((v14 + 40), obj);

  if (v15)
  {
    v17 = *v4;
    v18 = *v4;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __42__CARSessionChannel_openChannelWithError___block_invoke_20;
    v49[3] = &unk_1E82FBF70;
    v49[4] = v17;
    [v18 setInvalidationHandler:v49];
    v19 = *v4;
    VTable = CMBaseObjectGetVTable();
    v22 = *(VTable + 16);
    v21 = VTable + 16;
    v23 = *(v22 + 16);
    if (v23)
    {
      v21 = v23(v15, _CRHandleRemoteControlEvent, v19);
      v24 = v21;
      if (!v21)
      {
        v25 = CarGeneralLogging(v21);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [*v4 shortChannelType];
          *buf = 138543362;
          v52 = v26;
          _os_log_impl(&dword_1C81FC000, v25, OS_LOG_TYPE_DEFAULT, "remoteControlSessionStart for channel %{public}@", buf, 0xCu);
        }

        v27 = CMBaseObjectGetVTable();
        v29 = *(v27 + 16);
        v28 = v27 + 16;
        v30 = *(v29 + 32);
        if (v30)
        {
          v28 = v30(v15);
          v31 = v28;
          if (!v28)
          {
            *(*v4 + 1) = v15;
            v32 = CarGeneralLogging(v28);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [*v4 shortChannelType];
              v34 = [*v4 channelID];
              *buf = 138543618;
              v52 = v33;
              v53 = 2114;
              v54 = v34;
              _os_log_impl(&dword_1C81FC000, v32, OS_LOG_TYPE_DEFAULT, "Successfully opened remote control session for channel %{public}@ with clientUUID %{public}@", buf, 0x16u);
            }

            v35 = 1;
            goto LABEL_18;
          }
        }

        else
        {
          v31 = -12782;
        }

        v46 = CarGeneralLogging(v28);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          __42__CARSessionChannel_openChannelWithError___block_invoke_cold_1(v4);
        }

        v47 = MEMORY[0x1E696ABC0];
        v55 = *MEMORY[0x1E696AA08];
        v38 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v31 userInfo:0];
        v56 = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v40 = v47;
        v41 = 6;
LABEL_17:
        v42 = [v40 errorWithDomain:@"com.apple.carkit.session" code:v41 userInfo:v39];
        v43 = *(*v12 + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = v42;

        [*v4 _channelQueue_closeChannel];
        v35 = 0;
LABEL_18:
        *(*(*(v48 + 48) + 8) + 24) = v35;

        return;
      }
    }

    else
    {
      v24 = -12782;
    }

    v36 = CarGeneralLogging(v21);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      __42__CARSessionChannel_openChannelWithError___block_invoke_cold_2(v4);
    }

    v37 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696AA08];
    v38 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v24 userInfo:0];
    v58[0] = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v40 = v37;
    v41 = 5;
    goto LABEL_17;
  }

  v45 = CarGeneralLogging(v16);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    __42__CARSessionChannel_openChannelWithError___block_invoke_cold_3(v4);
  }

  [*(v48 + 32) _channelQueue_closeChannel];
  *(*(*(v48 + 48) + 8) + 24) = 0;
}

uint64_t __42__CARSessionChannel_openChannelWithError___block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) channelQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  return [v3 _channelQueue_invalidate];
}

- (BOOL)sendChannelMessage:(id)message withDescription:(id)description
{
  messageCopy = message;
  descriptionCopy = description;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  channelQueue = [(CARSessionChannel *)self channelQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke;
  v12[3] = &unk_1E82FD378;
  v12[4] = self;
  v13 = descriptionCopy;
  v14 = messageCopy;
  v15 = &v16;
  v9 = messageCopy;
  v10 = descriptionCopy;
  dispatch_sync(channelQueue, v12);

  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return self;
}

void __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke(void *a1)
{
  v3 = (a1 + 4);
  v2 = a1[4];
  if (!*(v2 + 8))
  {
    v13 = CarGeneralLogging(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_3(v13);
    }

    goto LABEL_11;
  }

  ++*(v2 + 80);
  v4 = CarGeneralLogging(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_1(v3);
  }

  v5 = a1[4];
  v6 = *(v5 + 8);
  v7 = a1[6];
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  v9 = VTable + 16;
  v11 = *(v10 + 8);
  if (!v11 || (v9 = v11(v6, v7, _CRRemoteControlSendMessageCompletion, v5), v9))
  {
    v13 = CarGeneralLogging(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_2(v3);
    }

LABEL_11:

    v12 = 0;
    goto LABEL_12;
  }

  v12 = 1;
LABEL_12:
  *(*(a1[7] + 8) + 24) = v12;
}

- (void)closeChannel
{
  channelQueue = [(CARSessionChannel *)self channelQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CARSessionChannel_closeChannel__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_sync(channelQueue, block);
}

- (void)_channelQueue_closeChannel
{
  channelQueue = [(CARSessionChannel *)self channelQueue];
  dispatch_assert_queue_V2(channelQueue);

  if (self->_remoteControlSession)
  {
    v5 = CarGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "tearing down remote control session", v8, 2u);
    }

    remoteControlSession = self->_remoteControlSession;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v7(remoteControlSession);
    }
  }
}

- (void)_channelQueue_invalidate
{
  channelQueue = [(CARSessionChannel *)self channelQueue];
  dispatch_assert_queue_V2(channelQueue);

  if (self->_remoteControlSession)
  {
    v5 = CarGeneralLogging(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "invalidating remote control session", v9, 2u);
    }

    CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
    if (CMBaseObject)
    {
      v7 = CMBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    CFRelease(self->_remoteControlSession);
    self->_remoteControlSession = 0;
  }
}

- (id)shortChannelType
{
  channelType = [(CARSessionChannel *)self channelType];
  v3 = [channelType substringToIndex:8];

  return v3;
}

- (id)_endpointValueForKey:(__CFString *)key
{
  if (self->_remoteControlSession)
  {
    v14 = 0;
    CMBaseObject = FigEndpointRemoteControlSessionGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 8);
    v6 = VTable + 8;
    v8 = *(v7 + 48);
    if (!v8 || ((v6 = v8(CMBaseObject, key, *MEMORY[0x1E695E480], &v14), v6 != -12787) ? (v9 = v6 == 0) : (v9 = 1), !v9))
    {
      v10 = CarGeneralLogging(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CARSessionChannel _endpointValueForKey:];
      }
    }

    v11 = v14;
  }

  else
  {
    v12 = CarGeneralLogging(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CARSessionChannel _endpointValueForKey:];
    }

    v11 = 0;
  }

  return v11;
}

- (void)_dataReceived:(id)received
{
  receivedCopy = received;
  channelQueue = [(CARSessionChannel *)self channelQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CARSessionChannel__dataReceived___block_invoke;
  v7[3] = &unk_1E82FBE38;
  v7[4] = self;
  v8 = receivedCopy;
  v6 = receivedCopy;
  dispatch_async(channelQueue, v7);
}

void __35__CARSessionChannel__dataReceived___block_invoke(uint64_t a1)
{
  v2 = CarGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__CARSessionChannel__dataReceived___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) channelDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) channelDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) channelDelegate];
      [v7 channel:*(a1 + 32) didReceiveMessage:*(a1 + 40)];
    }
  }
}

- (void)_sendComplete
{
  channelQueue = [(CARSessionChannel *)self channelQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CARSessionChannel__sendComplete__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(channelQueue, block);
}

void __34__CARSessionChannel__sendComplete__block_invoke(uint64_t a1)
{
  v2 = CarGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__CARSessionChannel__sendComplete__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) channelDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) channelDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [*(a1 + 32) channelDelegate];
      [v7 didSendMessageForChannel:*(a1 + 32)];
    }
  }
}

- (void)_channelInvalidated
{
  channelQueue = [(CARSessionChannel *)self channelQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CARSessionChannel__channelInvalidated__block_invoke;
  block[3] = &unk_1E82FBF70;
  block[4] = self;
  dispatch_async(channelQueue, block);
}

void __40__CARSessionChannel__channelInvalidated__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CarGeneralLogging(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shortChannelType];
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1C81FC000, v2, OS_LOG_TYPE_DEFAULT, "Channel %{public}@ invalidated", &v11, 0xCu);
  }

  v4 = [*(a1 + 32) invalidationHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  [*(a1 + 32) setInvalidationHandler:0];
  v6 = [*(a1 + 32) channelDelegate];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) channelDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [*(a1 + 32) channelDelegate];
      [v10 didCloseChannel:*(a1 + 32)];
    }
  }
}

- (CARSessionChannelDelegate)channelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->channelDelegate);

  return WeakRetained;
}

void __42__CARSessionChannel_openChannelWithError___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4(a1) shortChannelType];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __42__CARSessionChannel_openChannelWithError___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4(a1) shortChannelType];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __42__CARSessionChannel_openChannelWithError___block_invoke_cold_3(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4(a1) shortChannelType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 shortChannelType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __56__CARSessionChannel_sendChannelMessage_withDescription___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4(a1) shortChannelType];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)_endpointValueForKey:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  v3 = v0;
  _os_log_error_impl(&dword_1C81FC000, v1, OS_LOG_TYPE_ERROR, "failed to get endpoint value for key %@, error: %i", v2, 0x12u);
}

- (void)_endpointValueForKey:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C81FC000, v0, OS_LOG_TYPE_ERROR, "no endpoint available, failed to get endpoint value for key %@", v1, 0xCu);
}

void __35__CARSessionChannel__dataReceived___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortChannelType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __34__CARSessionChannel__sendComplete__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) shortChannelType];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end