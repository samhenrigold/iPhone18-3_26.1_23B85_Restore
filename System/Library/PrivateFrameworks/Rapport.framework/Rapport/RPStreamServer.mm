@interface RPStreamServer
- (RPStreamServer)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithCompletion:(id)completion;
- (void)_handleStartRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_handleStopRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_invalidate;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
@end

@implementation RPStreamServer

- (RPStreamServer)init
{
  v6.receiver = self;
  v6.super_class = RPStreamServer;
  v2 = [(RPStreamServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__RPStreamServer_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_RPStreamServer <= 30 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
  {
    [RPStreamServer _activateWithCompletion:?];
  }

  v5 = self->_messenger;
  v12 = v5;
  if (!v5)
  {
    v13 = RPErrorF(4294960591, "No messenger", v6, v7, v8, v9, v10, v11, v14[0]);
    if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      [RPStreamServer _activateWithCompletion:v13];
      if (!completionCopy)
      {
        goto LABEL_12;
      }
    }

    else if (!completionCopy)
    {
LABEL_12:

      goto LABEL_13;
    }

    completionCopy[2](completionCopy, v13);
    goto LABEL_12;
  }

  [(RPMessageable *)v5 setServiceType:self->_serviceType];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__RPStreamServer__activateWithCompletion___block_invoke;
  v15[3] = &unk_1E7C94EE8;
  v15[4] = self;
  [(RPMessageable *)v12 registerRequestID:@"_streamStart" options:0 handler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__RPStreamServer__activateWithCompletion___block_invoke_2;
  v14[3] = &unk_1E7C94EE8;
  v14[4] = self;
  [(RPMessageable *)v12 registerRequestID:@"_streamStop" options:0 handler:v14];
  objc_storeStrong(&self->_selfRef, self);
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_13:
}

- (id)descriptionWithLevel:(int)level
{
  v15 = 0;
  NSAppendPrintF(&v15, "Stream Server, CT %lu", [(NSMutableDictionary *)self->_streamSessions count]);
  v4 = v15;
  v5 = v4;
  serviceType = self->_serviceType;
  if (serviceType)
  {
    v14 = v4;
    v7 = serviceType;
    NSAppendPrintF(&v14, ", ST %@ ", v7);
    v8 = v14;

    v5 = v8;
  }

  streamQoS = self->_streamQoS;
  if (streamQoS)
  {
    v13 = v5;
    if (streamQoS <= 9)
    {
      switch(streamQoS)
      {
        case 1:
          v10 = "Background";
          goto LABEL_20;
        case 2:
          v10 = "Video";
          goto LABEL_20;
        case 3:
          v10 = "Voice";
LABEL_20:
          NSAppendPrintF(&v13, ", QoS %s", v10);
          v11 = v13;

          v5 = v11;
          goto LABEL_21;
      }
    }

    else
    {
      if (streamQoS <= 11)
      {
        if (streamQoS == 10)
        {
          v10 = "AirPlayAudio";
        }

        else
        {
          v10 = "AirPlayScreenAudio";
        }

        goto LABEL_20;
      }

      if (streamQoS == 12)
      {
        v10 = "AirPlayScreenVideo";
        goto LABEL_20;
      }

      if (streamQoS == 20)
      {
        v10 = "NTP";
        goto LABEL_20;
      }
    }

    v10 = "?";
    goto LABEL_20;
  }

LABEL_21:

  return v5;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__RPStreamServer_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v8 = v3;
    selfCopy = self;
    self->_invalidateCalled = 1;
    if (gLogCategory_RPStreamServer <= 30)
    {
      if (gLogCategory_RPStreamServer != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(RPStreamServer *)self _invalidate];
      }
    }

    [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_streamStart", v4, v8, v5];
    [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_streamStop"];
    [(NSMutableDictionary *)selfCopy->_streamSessions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_17];
    [(NSMutableDictionary *)selfCopy->_streamSessions removeAllObjects];

    [(RPStreamServer *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v3 = _Block_copy(self->_invalidationHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    messenger = self->_messenger;
    self->_messenger = 0;

    self->_invalidateDone = 1;
    streamAcceptHandler = self->_streamAcceptHandler;
    self->_streamAcceptHandler = 0;

    streamPrepareHandler = self->_streamPrepareHandler;
    self->_streamPrepareHandler = 0;

    streamPrepareHandlerEx = self->_streamPrepareHandlerEx;
    self->_streamPrepareHandlerEx = 0;

    selfRef = self->_selfRef;
    self->_selfRef = 0;

    if (gLogCategory_RPStreamServer <= 30)
    {
      if (gLogCategory_RPStreamServer != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [(RPStreamServer *)v11 _invalidated];
      }
    }
  }
}

- (void)_handleStartRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__6;
  v71 = __Block_byref_object_dispose__6;
  v72 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v66 = &v67;
  v11 = handlerCopy;
  v65 = v11;
  v12 = _Block_copy(aBlock);
  v54 = v12;
  CFStringGetTypeID();
  v19 = CFDictionaryGetTypedValue();
  if (!v19)
  {
    v51 = RPErrorF(4294960591, "No streamID", v13, v14, v15, v16, v17, v18, v53);
LABEL_28:
    v56 = v68[5];
    v68[5] = v51;

    goto LABEL_25;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (!Int64Ranged)
  {
    v51 = RPErrorF(4294960591, "No streamType", v20, v21, v22, v23, v24, v25, v53);
    goto LABEL_28;
  }

  v55 = _Block_copy(self->_streamAcceptHandler);
  if (!v55)
  {
    v52 = RPErrorF(4294960551, "No streamAcceptHandler", v27, v28, v29, v30, v31, v32, v53);
    v34 = v68[5];
    v68[5] = v52;
    goto LABEL_24;
  }

  if (gLogCategory_RPStreamServer <= 30 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
  {
    if (Int64Ranged > 3)
    {
      v33 = "?";
    }

    else
    {
      v33 = *(off_1E7C950B8 + (((Int64Ranged << 32) - 0x100000000) >> 29));
    }

    LogPrintF(&gLogCategory_RPStreamServer, "[RPStreamServer _handleStartRequest:options:responseHandler:]", 30, "Stream session start: ID '%@', Type %s\n", v19, v33);
  }

  v34 = objc_alloc_init(RPStreamSession);
  [(RPStreamSession *)v34 setDispatchQueue:self->_dispatchQueue];
  [(RPStreamSession *)v34 setMessenger:self->_messenger];
  [(RPStreamSession *)v34 setStreamID:v19];
  [(RPStreamSession *)v34 setStreamType:Int64Ranged];
  [(RPStreamSession *)v34 setServiceType:self->_serviceType];
  [(RPStreamSession *)v34 setStreamQoS:self->_streamQoS];
  v35 = requestCopy;
  [(RPStreamSession *)v34 setStreamFlags:[(RPStreamSession *)v34 streamFlags]| CFDictionaryGetInt64Ranged() & 2];
  v36 = v11;
  v37 = _Block_copy(self->_streamPrepareHandlerEx);
  v38 = v37;
  v39 = optionsCopy;
  if (!v37)
  {
    v49 = _Block_copy(self->_streamPrepareHandler);
    v50 = v49;
    if (v49)
    {
      (*(v49 + 2))(v49, v34);
    }

    goto LABEL_18;
  }

  v40 = v68;
  obj = v68[5];
  v41 = (*(v37 + 2))(v37, v34, &obj);
  objc_storeStrong(v40 + 5, obj);
  if (v41)
  {
LABEL_18:
    optionsCopy = v39;
    v11 = v36;
    requestCopy = v35;
    if ((self->_streamFlags & 1) != 0 || Int64Ranged == 2 && ([(RPStreamSession *)v34 streamFlags]& 4) != 0)
    {
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_2;
      v61[3] = &unk_1E7C95048;
      v61[4] = v34;
      v61[5] = self;
      v62 = Int64Ranged;
      v61[6] = v19;
      v61[7] = v55;
      [(RPStreamSession *)v34 setStreamAcceptHandler:v61];
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_6;
    v57[3] = &unk_1E7C95098;
    v57[4] = v34;
    v60 = Int64Ranged;
    v58 = v11;
    v59 = v55;
    v57[5] = self;
    v57[6] = v19;
    [(RPStreamSession *)v34 activateForServerRequest:v35 options:optionsCopy responseHandler:v57];

    goto LABEL_23;
  }

  v47 = RPNestedErrorF(v68[5], 4294960539, "Stream prepare rejected", v42, v43, v44, v45, v46, v53);
  v48 = v68[5];
  v68[5] = v47;

  optionsCopy = v39;
  v11 = v36;
  requestCopy = v35;
LABEL_23:

  v12 = v54;
LABEL_24:

LABEL_25:
  v12[2](v12);

  _Block_object_dispose(&v67, 8);
}

uint64_t __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamServer <= 90)
  {
    if (gLogCategory_RPStreamServer == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&gLogCategory_RPStreamServer, "[RPStreamServer _handleStartRequest:options:responseHandler:]_block_invoke", 90, "### Start request failed: %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

uint64_t __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_2(int8x16_t *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_3;
  v4[3] = &unk_1E7C95020;
  v1 = a1[2];
  v5 = vextq_s8(v1, v1, 8uLL);
  v7 = a1[4].i32[0];
  v2 = a1[3].i64[1];
  v6 = a1[3].i64[0];
  return (*(v2 + 16))(v2, v1.i64[0], v4);
}

void __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_3(int8x16_t *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[2].i64[0] + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_4;
  block[3] = &unk_1E7C94FF8;
  v7 = v3;
  v10 = a1[3].i32[2];
  v8 = vextq_s8(a1[2], a1[2], 8uLL);
  v9 = a1[3].i64[0];
  v5 = v3;
  dispatch_async(v4, block);
}

void *__62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (gLogCategory_RPStreamServer <= 90)
    {
      if (gLogCategory_RPStreamServer == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v2 = *(a1 + 32);
      }

      LogPrintF(&gLogCategory_RPStreamServer, "[RPStreamServer _handleStartRequest:options:responseHandler:]_block_invoke_4", 90, "### Stream accept failed: %{error}\n", v2);
    }

LABEL_11:
    v4 = *(a1 + 40);

    return [v4 invalidate];
  }

  result = [*(a1 + 40) streamFlags];
  if ((result & 1) == 0)
  {
    if (*(a1 + 64) != 2 || (result = [*(a1 + 40) streamFlags], (result & 4) == 0))
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_5;
      v5[3] = &unk_1E7C94FD0;
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      return [v6 startServerConnectionWithCompletion:v5];
    }
  }

  return result;
}

void __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_5_cold_1(v7);
    }

    [*(a1 + 32) invalidate];
  }

  else
  {
    v3 = *(*(a1 + 40) + 32);
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = *(a1 + 40);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;

      v3 = *(*(a1 + 40) + 32);
    }

    [v3 setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }
}

void __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    [*(a1 + 32) invalidate];
    if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_6_cold_1(v10);
    }

    v19 = *(a1 + 56);
    if (v10)
    {
      (*(v19 + 16))(v19, 0, 0, v10);
    }

    else
    {
      v20 = RPErrorF(4294960584, "No response, but no error", v13, v14, v15, v16, v17, v18, v21);
      (*(v19 + 16))(v19, 0, 0, v20);
    }
  }

  else if ((*(*(a1 + 40) + 40) & 1) != 0 || *(a1 + 72) == 2 && ([*(a1 + 32) streamFlags] & 4) != 0)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_7;
    v22[3] = &unk_1E7C95070;
    v22[4] = v11;
    v12 = *(a1 + 64);
    v25 = *(a1 + 56);
    v23 = *(a1 + 40);
    v24 = v7;
    (*(v12 + 16))(v12, v11, v22);
  }
}

void __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    [*(a1 + 32) invalidate];
    if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
    {
      __62__RPStreamServer__handleStartRequest_options_responseHandler___block_invoke_7_cold_1(v8);
    }

    v3 = *(*(a1 + 64) + 16);
  }

  else
  {
    v4 = *(*(a1 + 40) + 32);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = *(a1 + 40);
      v7 = *(v6 + 32);
      *(v6 + 32) = v5;

      v4 = *(*(a1 + 40) + 32);
    }

    [v4 setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
    [*(a1 + 32) acceptedByServer];
    v3 = *(*(a1 + 64) + 16);
  }

  v3();
}

- (void)_handleStopRequest:(id)request options:(id)options responseHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if (v8)
  {
    v15 = [(NSMutableDictionary *)self->_streamSessions objectForKeyedSubscript:v8];
    if (v15)
    {
      [(NSMutableDictionary *)self->_streamSessions setObject:0 forKeyedSubscript:v8];
      [v15 invalidate];
      if (gLogCategory_RPStreamServer > 30 || gLogCategory_RPStreamServer == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v16 = "Stream session stop: ID '%@'\n";
    }

    else
    {
      if (gLogCategory_RPStreamServer > 30 || gLogCategory_RPStreamServer == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v16 = "Ignoring stop without session: SteamID '%@'\n";
    }

    [RPStreamServer _handleStopRequest:v16 options:v8 responseHandler:?];
LABEL_14:
    v17 = handlerCopy[2];
    goto LABEL_15;
  }

  v15 = RPErrorF(4294960591, "No streamID", v9, v10, v11, v12, v13, v14, v18);
  if (gLogCategory_RPStreamServer <= 90 && (gLogCategory_RPStreamServer != -1 || _LogCategory_Initialize()))
  {
    [RPStreamServer _handleStopRequest:v15 options:? responseHandler:?];
  }

  v17 = handlerCopy[2];
LABEL_15:
  v17();
}

@end