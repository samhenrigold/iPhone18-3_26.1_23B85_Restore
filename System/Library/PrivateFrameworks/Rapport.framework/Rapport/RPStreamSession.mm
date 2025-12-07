@interface RPStreamSession
- (BOOL)_startServerConnectionAndReturnError:(id *)error;
- (RPStreamSession)init;
- (RPStreamSession)initWithCoder:(id)coder;
- (id)_lowLatencySelfAddressString:(id *)string;
- (id)descriptionWithLevel:(int)level;
- (int)flowControlWriteState;
- (uint64_t)_invalidate;
- (uint64_t)_invalidated;
- (unsigned)_getSockAddrInterfaceType:(const void *)type;
- (void)_clientRPConnectionPrepareResponse:(id)response options:(id)options completion:(id)completion;
- (void)_clientRPConnectionPrepareWithCompletion:(id)completion;
- (void)_clientRPConnectionStartWithCompletion:(id)completion;
- (void)_clientUDPNWPathNextWithEndpoint:(id)endpoint nwInterface:(id)interface selfMACData:(id)data usb:(BOOL)usb completion:(id)completion;
- (void)_clientUDPNWPathStartResponse:(id)response options:(id)options localEndpoint:(id)endpoint nwInterface:(id)interface selfIPString:(id)string usb:(BOOL)usb completion:(id)completion;
- (void)_clientUDPNWPathStartWithCompletion:(id)completion;
- (void)_clientUDPSocketStartResponse:(id)response options:(id)options completion:(id)completion;
- (void)_clientUDPSocketStartWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_serverRPConnectionHandleConnectionAccepted:(int)accepted;
- (void)_serverRPConnectionHandleConnectionStarted:(id)started;
- (void)_serverRPConnectionStartRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_serverUDPNWPathNextWithEndpoint:(id)endpoint nwInterface:(id)interface selfMACData:(id)data peerIP:(id *)p peerMACData:(id)cData usb:(BOOL)usb responseHandler:(id)handler;
- (void)_serverUDPNWPathStartRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_serverUDPSocketStartRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_updateTrafficRegistration;
- (void)_updateTrafficRegistrationForDestination:(id)destination;
- (void)_updateTrafficRegistrationForIP:(id *)p;
- (void)acceptedByServer;
- (void)activateForServerRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)prepareWithCompletion:(id)completion;
- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)setStreamQoS:(int)s;
- (void)setStreamQoSOnSocket:(int)socket;
- (void)setTrafficFlags:(unsigned int)flags;
- (void)startServerConnectionWithCompletion:(id)completion;
@end

@implementation RPStreamSession

- (RPStreamSession)init
{
  v6.receiver = self;
  v6.super_class = RPStreamSession;
  v2 = [(RPStreamSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_streamSocket = -1;
    v4 = v3;
  }

  return v3;
}

- (RPStreamSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = RPStreamSession;
  v5 = [(RPStreamSession *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_streamSocket = -1;
    v7 = coderCopy;
    if ([v7 containsValueForKey:@"dpUPID"])
    {
      v6->_delegatedProcessUPID = [v7 decodeInt64ForKey:@"dpUPID"];
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    if ([v11 containsValueForKey:@"serverMode"])
    {
      v6->_serverMode = [v11 decodeBoolForKey:@"serverMode"];
    }

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v21 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      LOBYTE(streamFlags) = v21;
    }

    else
    {
      streamFlags = v6->_streamFlags;
    }

    v6->_streamFlags = streamFlags & 2;
    v14 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v21 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_streamType = v21;
    }

    v21 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_streamQoS = v21;
    }

    if ([v15 containsValueForKey:@"streamSocket"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 decodeXPCObjectOfType:MEMORY[0x1E69E9EA0] forKey:@"streamSocket"];
        v17 = v16;
        if (v16)
        {
          v6->_streamSocket = xpc_fd_dup(v16);
        }
      }
    }

    v18 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  delegatedProcessUPID = self->_delegatedProcessUPID;
  v18 = coderCopy;
  if (delegatedProcessUPID)
  {
    [coderCopy encodeInt64:delegatedProcessUPID forKey:@"dpUPID"];
    v5 = v18;
  }

  destinationString = self->_destinationString;
  if (destinationString)
  {
    [v5 encodeObject:destinationString forKey:@"dstS"];
    v5 = v18;
  }

  nwClientID = self->_nwClientID;
  if (nwClientID)
  {
    [v5 encodeObject:nwClientID forKey:@"nwClientID"];
    v5 = v18;
  }

  pskData = self->_pskData;
  if (pskData)
  {
    [v5 encodeObject:pskData forKey:@"pskD"];
    v5 = v18;
  }

  if (self->_serverMode)
  {
    [v5 encodeBool:1 forKey:@"serverMode"];
    v5 = v18;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v5 encodeObject:serviceType forKey:@"streamSrv"];
    v5 = v18;
  }

  if ((self->_streamFlags & 2) != 0)
  {
    [v5 encodeInt64:? forKey:?];
    v5 = v18;
  }

  streamID = self->_streamID;
  if (streamID)
  {
    [v5 encodeObject:streamID forKey:@"streamID"];
    v5 = v18;
  }

  streamKey = self->_streamKey;
  if (streamKey)
  {
    [v5 encodeObject:streamKey forKey:@"streamKey"];
    v5 = v18;
  }

  streamType = self->_streamType;
  if (streamType)
  {
    [v5 encodeInteger:streamType forKey:@"streamType"];
    v5 = v18;
  }

  streamQoS = self->_streamQoS;
  if (streamQoS)
  {
    [v5 encodeInteger:streamQoS forKey:@"streamQoS"];
    v5 = v18;
  }

  streamSocket = self->_streamSocket;
  if ((streamSocket & 0x80000000) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v18;
    if (isKindOfClass)
    {
      v17 = xpc_fd_create(streamSocket);
      [v18 encodeXPCObject:v17 forKey:@"streamSocket"];

      v5 = v18;
    }
  }
}

- (void)dealloc
{
  memset_s(self->_ourCurveSK, 0x20uLL, 0, 0x20uLL);
  streamSocket = self->_streamSocket;
  if ((streamSocket & 0x80000000) == 0)
  {
    if (close(streamSocket) && *__error())
    {
      __error();
    }

    self->_streamSocket = -1;
  }

  [(RPStreamSession *)self _invalidate];
  v4.receiver = self;
  v4.super_class = RPStreamSession;
  [(RPStreamSession *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v25 = 0;
  NSAppendPrintF(&v25, "Stream ID %@", *&level, self->_streamID);
  v4 = v25;
  v5 = v4;
  streamType = self->_streamType;
  if (streamType)
  {
    v24 = v4;
    if (streamType > 3)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_1E7C95228[streamType - 1];
    }

    NSAppendPrintF(&v24, ", Type %s", v7);
    v8 = v24;

    v5 = v8;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    v23 = v5;
    v10 = serviceType;
    NSAppendPrintF(&v23, ", ST %@,", v10);
    v11 = v23;

    v5 = v11;
  }

  streamQoS = self->_streamQoS;
  if (streamQoS)
  {
    v22 = v5;
    if (streamQoS <= 9)
    {
      switch(streamQoS)
      {
        case 1:
          v13 = "Background";
          goto LABEL_25;
        case 2:
          v13 = "Video";
          goto LABEL_25;
        case 3:
          v13 = "Voice";
LABEL_25:
          NSAppendPrintF(&v22, ", QoS %s", v13);
          v14 = v22;

          v5 = v14;
          goto LABEL_26;
      }
    }

    else
    {
      if (streamQoS <= 11)
      {
        if (streamQoS == 10)
        {
          v13 = "AirPlayAudio";
        }

        else
        {
          v13 = "AirPlayScreenAudio";
        }

        goto LABEL_25;
      }

      if (streamQoS == 12)
      {
        v13 = "AirPlayScreenVideo";
        goto LABEL_25;
      }

      if (streamQoS == 20)
      {
        v13 = "NTP";
        goto LABEL_25;
      }
    }

    v13 = "?";
    goto LABEL_25;
  }

LABEL_26:
  statusFlags = self->_statusFlags;
  if (statusFlags)
  {
    v21 = v5;
    NSAppendPrintF(&v21, ", SF %#ll{flags}", statusFlags, &unk_1B6F2F118);
    v16 = v21;

    v5 = v16;
  }

  trafficFlags = self->_trafficFlags;
  if (trafficFlags)
  {
    v20 = v5;
    NSAppendPrintF(&v20, ", TF %#{flags}", trafficFlags, &unk_1B6F2F2E7);
    v18 = v20;

    v5 = v18;
  }

  return v5;
}

- (void)setTrafficFlags:(unsigned int)flags
{
  v3 = *&flags;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_trafficFlags != v3)
  {
    self->_trafficFlags = v3;
    if (self->_trafficRegistrationCalled)
    {
      if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        [RPStreamSession setTrafficFlags:v3];
      }

      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__RPStreamSession_setTrafficFlags___block_invoke;
      block[3] = &unk_1E7C92CE8;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }
}

- (void)setStreamQoS:(int)s
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  streamQoS = self->_streamQoS;
  if (streamQoS == s)
  {
    return;
  }

  if (gLogCategory_RPStreamSession <= 30)
  {
    if (gLogCategory_RPStreamSession != -1)
    {
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      streamQoS = self->_streamQoS;
LABEL_5:
      if (streamQoS > 9)
      {
        if (streamQoS <= 11)
        {
          if (streamQoS == 10)
          {
            v6 = "AirPlayAudio";
          }

          else
          {
            v6 = "AirPlayScreenAudio";
          }

LABEL_26:
          if (s > 9)
          {
            if (s <= 11)
            {
              if (s == 10)
              {
                v7 = "AirPlayAudio";
              }

              else
              {
                v7 = "AirPlayScreenAudio";
              }

              goto LABEL_45;
            }

            if (s == 12)
            {
              v7 = "AirPlayScreenVideo";
              goto LABEL_45;
            }

            if (s == 20)
            {
              v7 = "NTP";
              goto LABEL_45;
            }
          }

          else if (s > 1)
          {
            if (s == 2)
            {
              v7 = "Video";
              goto LABEL_45;
            }

            if (s == 3)
            {
              v7 = "Voice";
              goto LABEL_45;
            }
          }

          else
          {
            if (!s)
            {
              v7 = "Default";
              goto LABEL_45;
            }

            if (s == 1)
            {
              v7 = "Background";
LABEL_45:
              LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession setStreamQoS:]", 30, "Stream QoS changed %s -> %s\n", v6, v7);
              goto LABEL_46;
            }
          }

          v7 = "?";
          goto LABEL_45;
        }

        if (streamQoS == 12)
        {
          v6 = "AirPlayScreenVideo";
          goto LABEL_26;
        }

        if (streamQoS == 20)
        {
          v6 = "NTP";
          goto LABEL_26;
        }
      }

      else if (streamQoS > 1)
      {
        if (streamQoS == 2)
        {
          v6 = "Video";
          goto LABEL_26;
        }

        if (streamQoS == 3)
        {
          v6 = "Voice";
          goto LABEL_26;
        }
      }

      else
      {
        if (!streamQoS)
        {
          v6 = "Default";
          goto LABEL_26;
        }

        if (streamQoS == 1)
        {
          v6 = "Background";
          goto LABEL_26;
        }
      }

      v6 = "?";
      goto LABEL_26;
    }
  }

LABEL_46:
  self->_streamQoS = s;
  tcpConnection = [(RPConnection *)self->_rpCnx tcpConnection];
  socketFD = [tcpConnection socketFD];

  if (socketFD < 0)
  {
    streamSocket = self->_streamSocket;
    if ((streamSocket & 0x80000000) != 0)
    {
      return;
    }
  }

  else
  {
    tcpConnection2 = [(RPConnection *)self->_rpCnx tcpConnection];
    streamSocket = [tcpConnection2 socketFD];

    if ((streamSocket & 0x80000000) != 0)
    {
      return;
    }
  }

  [(RPStreamSession *)self setStreamQoSOnSocket:streamSocket];
}

- (void)setStreamQoSOnSocket:(int)socket
{
  v3 = *&socket;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    streamQoS = self->_streamQoS;
    if (streamQoS > 9)
    {
      if (streamQoS <= 11)
      {
        if (streamQoS == 10)
        {
          v6 = "AirPlayAudio";
        }

        else
        {
          v6 = "AirPlayScreenAudio";
        }

        goto LABEL_24;
      }

      if (streamQoS == 12)
      {
        v6 = "AirPlayScreenVideo";
        goto LABEL_24;
      }

      if (streamQoS == 20)
      {
        v6 = "NTP";
        goto LABEL_24;
      }
    }

    else if (streamQoS > 1)
    {
      if (streamQoS == 2)
      {
        v6 = "Video";
        goto LABEL_24;
      }

      if (streamQoS == 3)
      {
        v6 = "Voice";
        goto LABEL_24;
      }
    }

    else
    {
      if (!streamQoS)
      {
        v6 = "Default";
        goto LABEL_24;
      }

      if (streamQoS == 1)
      {
        v6 = "Background";
LABEL_24:
        LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession setStreamQoSOnSocket:]", 30, "Setting QoS to %s on socket fd %d\n", v6, v3);
        goto LABEL_25;
      }
    }

    v6 = "?";
    goto LABEL_24;
  }

LABEL_25:
  v7 = self->_streamQoS;

  MEMORY[0x1EEE015B0](v3, v7);
}

- (void)acceptedByServer
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__RPStreamSession_acceptedByServer__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
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
  v9[2] = __42__RPStreamSession_activateWithCompletion___block_invoke;
  v9[3] = &unk_1E7C92E20;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, v9);
}

void __42__RPStreamSession_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if ((*(v9 + 144) & 0x80000000) == 0 || *(v9 + 288) && *(v9 + 296) || *(v9 + 208))
  {
    v10 = 1;
  }

  else
  {
    if (!*(v9 + 200))
    {
      v20 = RPErrorF(4294960591, "No messenger", a3, a4, a5, a6, a7, a8, v27);
      v28 = v20;
      if (gLogCategory_RPStreamSession > 90)
      {
        goto LABEL_29;
      }

      if (gLogCategory_RPStreamSession == -1)
      {
        v26 = _LogCategory_Initialize();
        v20 = v28;
        if (!v26)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_45;
    }

    v10 = 0;
  }

  if (!*(v9 + 264))
  {
    v20 = RPErrorF(4294960591, "No streamID", a3, a4, a5, a6, a7, a8, v27);
    v28 = v20;
    if (gLogCategory_RPStreamSession > 90)
    {
      goto LABEL_29;
    }

    if (gLogCategory_RPStreamSession == -1)
    {
      v21 = _LogCategory_Initialize();
      v20 = v28;
      if (!v21)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_45;
  }

  [*(v9 + 200) setServiceType:{*(v9 + 240), a4, a5, a6, a7, a8}];
  v17 = *(a1 + 32);
  v18 = *(v17 + 148);
  switch(v18)
  {
    case 3:
      v19 = *(a1 + 40);
      if (v10)
      {
LABEL_23:
        v23 = *(v19 + 16);

        v23(v19, 0);
        return;
      }

      [v17 _clientUDPNWPathStartWithCompletion:v19];
      break;
    case 2:
      if (*(v17 + 136) == 1)
      {
        v29 = 0;
        [v17 _startServerConnectionAndReturnError:&v29];
        v22 = v29;
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v25 = *(a1 + 40);
        if (v10)
        {

          [v17 _clientRPConnectionStartWithCompletion:v25];
        }

        else
        {

          [v17 _clientRPConnectionPrepareWithCompletion:v25];
        }
      }

      break;
    case 1:
      v19 = *(a1 + 40);
      if (!v10)
      {

        [v17 _clientUDPSocketStartWithCompletion:v19];
        return;
      }

      goto LABEL_23;
    default:
      v20 = RPErrorF(4294960564, "Unsupported streamType: %d", v11, v12, v13, v14, v15, v16, *(v17 + 148));
      v28 = v20;
      if (gLogCategory_RPStreamSession > 90)
      {
        goto LABEL_29;
      }

      if (gLogCategory_RPStreamSession == -1)
      {
        v24 = _LogCategory_Initialize();
        v20 = v28;
        if (!v24)
        {
          goto LABEL_29;
        }
      }

LABEL_45:
      __42__RPStreamSession_activateWithCompletion___block_invoke_cold_1(v20);
LABEL_29:
      (*(*(a1 + 40) + 16))();

      return;
  }
}

- (void)activateForServerRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v13 = self->_dispatchQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__RPStreamSession_activateForServerRequest_options_responseHandler___block_invoke;
  v17[3] = &unk_1E7C92F38;
  v17[4] = self;
  v18 = requestCopy;
  v19 = optionsCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = optionsCopy;
  v16 = requestCopy;
  dispatch_async(v13, v17);
}

void __68__RPStreamSession_activateForServerRequest_options_responseHandler___block_invoke(void *a1)
{
  *(a1[4] + 136) = 1;
  [*(a1[4] + 200) setServiceType:*(a1[4] + 240)];
  v8 = a1[4];
  v9 = v8[37];
  switch(v9)
  {
    case 3:
      v16 = a1[5];
      v17 = a1[6];
      v18 = a1[7];

      [v8 _serverUDPNWPathStartRequest:v16 options:v17 responseHandler:v18];
      break;
    case 2:
      v13 = a1[5];
      v14 = a1[6];
      v15 = a1[7];

      [v8 _serverRPConnectionStartRequest:v13 options:v14 responseHandler:v15];
      break;
    case 1:
      v10 = a1[5];
      v11 = a1[6];
      v12 = a1[7];

      [v8 _serverUDPSocketStartRequest:v10 options:v11 responseHandler:v12];
      break;
    default:
      v19 = RPErrorF(4294960564, "Unsupported streamType: %d", v2, v3, v4, v5, v6, v7, v8[37]);
      v21 = v19;
      if (gLogCategory_RPStreamSession <= 90)
      {
        if (gLogCategory_RPStreamSession != -1 || (v20 = _LogCategory_Initialize(), v19 = v21, v20))
        {
          __68__RPStreamSession_activateForServerRequest_options_responseHandler___block_invoke_cold_1(v19);
        }
      }

      (*(a1[7] + 16))();

      break;
  }
}

- (void)prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__RPStreamSession_prepareWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __41__RPStreamSession_prepareWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (!*(v9 + 200))
  {
    v12 = RPErrorF(4294960591, "No messenger", a3, a4, a5, a6, a7, a8, v19);
    v20 = v12;
    if (gLogCategory_RPStreamSession > 90)
    {
      goto LABEL_27;
    }

    if (gLogCategory_RPStreamSession == -1)
    {
      v13 = _LogCategory_Initialize();
      v12 = v20;
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  if (!*(v9 + 264))
  {
    v12 = RPErrorF(4294960591, "No streamID", a3, a4, a5, a6, a7, a8, v19);
    v20 = v12;
    if (gLogCategory_RPStreamSession > 90)
    {
      goto LABEL_27;
    }

    if (gLogCategory_RPStreamSession == -1)
    {
      v14 = _LogCategory_Initialize();
      v12 = v20;
      if (!v14)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  v10 = *(v9 + 148);
  switch(v10)
  {
    case 3:
      v17 = *(a1 + 40);

      [v9 _clientUDPNWPathStartWithCompletion:{v17, a4, a5, a6, a7, a8}];
      break;
    case 2:
      *(v9 + 96) = 1;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);

      [v15 _clientRPConnectionPrepareWithCompletion:{v16, a4, a5, a6, a7, a8}];
      break;
    case 1:
      v11 = *(a1 + 40);

      [v9 _clientUDPSocketStartWithCompletion:{v11, a4, a5, a6, a7, a8}];
      return;
    default:
      v12 = RPErrorF(4294960564, "Unsupported streamType: %d", a3, a4, a5, a6, a7, a8, *(v9 + 148));
      v20 = v12;
      if (gLogCategory_RPStreamSession > 90)
      {
        goto LABEL_27;
      }

      if (gLogCategory_RPStreamSession == -1)
      {
        v18 = _LogCategory_Initialize();
        v12 = v20;
        if (!v18)
        {
          goto LABEL_27;
        }
      }

LABEL_26:
      __41__RPStreamSession_prepareWithCompletion___block_invoke_cold_1(v12);
LABEL_27:
      (*(*(a1 + 40) + 16))();

      return;
  }
}

- (void)startServerConnectionWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__RPStreamSession_startServerConnectionWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __55__RPStreamSession_startServerConnectionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  [v2 _startServerConnectionAndReturnError:&v4];
  v3 = v4;
  (*(*(a1 + 40) + 16))();
}

- (BOOL)_startServerConnectionAndReturnError:(id *)error
{
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _startServerConnectionAndReturnError:?];
  }

  streamSocket = self->_streamSocket;
  if ((streamSocket & 0x80000000) != 0)
  {
    v25 = RPErrorF(4294960551, "No socket", error, v3, v4, v5, v6, v7, v33);
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [RPStreamSession _startServerConnectionAndReturnError:v25];
      if (!error)
      {
        goto LABEL_18;
      }
    }

    else if (!error)
    {
LABEL_18:

      return 0;
    }

    v26 = v25;
    *error = v25;
    goto LABEL_18;
  }

  *&v42.sa_len = 0;
  *&v42.sa_data[6] = 0;
  v44 = 0;
  v43 = 0;
  v41 = 28;
  getsockname(streamSocket, &v42, &v41);
  v11 = objc_alloc_init(MEMORY[0x1E6999548]);
  [v11 setDispatchQueue:self->_dispatchQueue];
  [v11 setFlags:137];
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  Port = SockAddrGetPort();
  v13 = [v12 initWithFormat:@"Stream-%u"];
  [v11 setLabel:v13];

  [v11 setSocketFD:streamSocket];
  self->_streamSocket = -1;
  if (self->_streamQoS >= 1)
  {
    [(RPStreamSession *)self setStreamQoSOnSocket:streamSocket];
  }

  v40 = 0;
  [v11 activateDirectAndReturnError:&v40];
  v14 = v40;
  v21 = v14 == 0;
  if (v14)
  {
    v22 = v14;
    v23 = RPErrorF(4294960551, "Activate TCP failed", v15, v16, v17, v18, v19, v20, Port);

    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [RPStreamSession _startServerConnectionAndReturnError:v23];
    }

    [v11 invalidate];
    if (error)
    {
      v24 = v23;
      *error = v23;
    }
  }

  else
  {
    v27 = objc_alloc_init(RPConnection);
    [(RPConnection *)v27 setDispatchQueue:self->_dispatchQueue];
    [(RPConnection *)v27 setFlags:[(RPConnection *)v27 flags]| 0x80000];
    label = [v11 label];
    [(RPConnection *)v27 setLabel:label];

    [(RPConnection *)v27 setPskData:self->_pskData];
    pskData = self->_pskData;
    self->_pskData = 0;

    [(RPConnection *)v27 setTcpConnection:v11];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke;
    v39[3] = &unk_1E7C92CE8;
    v39[4] = self;
    [(RPConnection *)v27 setInvalidationHandler:v39];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_2;
    v38[3] = &unk_1E7C94408;
    v38[4] = self;
    [(RPConnection *)v27 setReceivedEventHandler:v38];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_3;
    v37[3] = &unk_1E7C94430;
    v37[4] = self;
    [(RPConnection *)v27 setReceivedRequestHandler:v37];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_4;
    v36[3] = &unk_1E7C942A8;
    v36[4] = self;
    [(RPConnection *)v27 setStateChangedHandler:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_5;
    v35[3] = &unk_1E7C92D58;
    v35[4] = self;
    [(RPConnection *)v27 setReadErrorHandler:v35];
    rpCnx = self->_rpCnx;
    self->_rpCnx = v27;
    v31 = v27;

    [(RPConnection *)v31 activate];
    v23 = 0;
  }

  return v21;
}

uint64_t __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(*(*(a1 + 32) + 216));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v11, v7, v8);
  }
}

void __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _Block_copy(*(*(a1 + 32) + 224));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v14, v9, v10, v11);
  }
}

void __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = [*(a1 + 32) connectionReadyHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

void __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == -6723 || objc_msgSend(v3, "code") == -6753)
  {
    v4 = _Block_copy(*(*(a1 + 32) + 168));
    if (v4)
    {
      v5 = *(*(a1 + 32) + 176);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__RPStreamSession__startServerConnectionAndReturnError___block_invoke_6;
      block[3] = &unk_1E7C950D8;
      block[4] = v4;
      dispatch_async(v5, block);
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__RPStreamSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v15 = v3;
    v16 = v2;
    self->_invalidateCalled = 1;
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [(RPStreamSession *)self _invalidate];
    }

    nwPathEvaluator = self->_nwPathEvaluator;
    if (nwPathEvaluator)
    {
      v8 = nwPathEvaluator;
      nw_path_evaluator_cancel();
      v9 = self->_nwPathEvaluator;
      self->_nwPathEvaluator = 0;
    }

    nwListener = self->_nwListener;
    if (nwListener)
    {
      v11 = nwListener;
      nw_listener_cancel(v11);
      v12 = self->_nwListener;
      self->_nwListener = 0;
    }

    [(RPConnection *)self->_rpCnx invalidate:v15];
    streamSocket = self->_streamSocket;
    if ((streamSocket & 0x80000000) == 0)
    {
      if (close(streamSocket) && *__error())
      {
        __error();
      }

      self->_streamSocket = -1;
    }

    [(CUTCPServer *)self->_tcpServer invalidate];
    [(CUWiFiManager *)self->_wifiManager invalidate];
    wifiManager = self->_wifiManager;
    self->_wifiManager = 0;

    [(RPStreamSession *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_rpCnx && !self->_tcpServer)
  {
    v3 = _Block_copy(self->_invalidationHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    disconnectHandler = self->_disconnectHandler;
    self->_disconnectHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    messenger = self->_messenger;
    self->_messenger = 0;

    receivedEventHandler = self->_receivedEventHandler;
    self->_receivedEventHandler = 0;

    receivedRequestHandler = self->_receivedRequestHandler;
    self->_receivedRequestHandler = 0;

    statusChangedHandler = self->_statusChangedHandler;
    self->_statusChangedHandler = 0;

    streamAcceptHandler = self->_streamAcceptHandler;
    self->_streamAcceptHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [(RPStreamSession *)self _invalidated];
    }
  }
}

- (void)_clientUDPNWPathStartWithCompletion:(id)completion
{
  completionCopy = completion;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__7;
  v56 = __Block_byref_object_dispose__7;
  v57 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v51 = &v52;
  v5 = completionCopy;
  v50 = v5;
  v6 = _Block_copy(aBlock);
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    streamType = self->_streamType;
    if (streamType > 3)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1E7C95240[streamType];
    }

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathStartWithCompletion:]", 30, "Activate: Client, Prepare, ID '%@', Type %s, Flags %#{flags}, TF %#{flags}\n", self->_streamID, v8, self->_streamFlags, &unk_1B6F2F36D, self->_trafficFlags, &unk_1B6F2F2E7);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = self->_messenger;
    v10 = [(RPMessageable *)v9 linkType]== 4;
  }

  else
  {
    v10 = 0;
  }

  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  if (!secure_udp)
  {
    v37 = RPErrorF(4294960596, "Create nw_parameters failed", v11, v12, v13, v14, v15, v16, v41);
    v18 = v53[5];
    v53[5] = v37;
    goto LABEL_32;
  }

  nw_parameters_set_allow_duplicate_state_updates();
  v48 = 0;
  if (!v10 || (self->_streamFlags & 2) == 0)
  {
    goto LABEL_15;
  }

  v19 = [(RPStreamSession *)self _lowLatencySelfAddressString:&v48];
  if (!v19)
  {
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathStartWithCompletion:]", 30, "Client ignoring low latency without local llw0\n");
    }

LABEL_15:
    v18 = 0;
    v19 = 0;
LABEL_16:
    v20 = self->_nwListener;
    v21 = v20;
    if (v20)
    {
      nw_listener_cancel(v20);
    }

    v22 = nw_listener_create(secure_udp);
    objc_storeStrong(&self->_nwListener, v22);
    if (v22)
    {
      nw_listener_set_queue(v22, self->_dispatchQueue);
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x3032000000;
      v46[3] = __Block_byref_object_copy__84;
      v46[4] = __Block_byref_object_dispose__85;
      v47 = _Block_copy(v5);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86;
      v42[3] = &unk_1E7C95100;
      v42[4] = v22;
      v42[5] = self;
      v45 = v46;
      v18 = v18;
      v43 = v18;
      v44 = v48;
      MEMORY[0x1B8C9E950](v22, v42);
      nw_listener_set_new_connection_handler(v22, &__block_literal_global_18);
      if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        v29 = self->_streamType;
        if (v29 > 3)
        {
          v30 = "?";
        }

        else
        {
          v30 = off_1E7C95240[v29];
        }

        LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathStartWithCompletion:]", 30, "Activate: Client, Start, ID '%@', Type %s, OurAddr %@, OurMAC %@\n", self->_streamID, v30, v19, v48);
      }

      nw_listener_start(v22);

      _Block_object_dispose(v46, 8);
    }

    else
    {
      v38 = RPErrorF(4294960596, "Create nw_listener failed", v23, v24, v25, v26, v27, v28, v41);
      v39 = v53[5];
      v53[5] = v38;
    }

    goto LABEL_31;
  }

  v18 = nw_interface_create_with_name();
  if (v18)
  {
    nw_parameters_require_interface(secure_udp, v18);
    goto LABEL_16;
  }

  v40 = RPErrorF(4294960596, "Create nw_interface failed", v31, v32, v33, v34, v35, v36, v41);
  v18 = 0;
  v22 = v53[5];
  v53[5] = v40;
LABEL_31:

LABEL_32:
  v6[2](v6);

  _Block_object_dispose(&v52, 8);
}

uint64_t __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathStartWithCompletion:]_block_invoke", 90, "### Client start request failed: UDP NWPath, %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v11 = v5;
  if (gLogCategory_RPStreamSession <= 30)
  {
    v18 = v5;
    if (gLogCategory_RPStreamSession != -1 || (v12 = _LogCategory_Initialize(), v11 = v18, v12))
    {
      __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86_cold_1(v3);
      v11 = v18;
    }
  }

  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (v3 == 3 || v11)
    {
      v19 = v11;
      if (v11)
      {
        v13 = nw_error_copy_cf_error(v11);
      }

      else
      {
        v13 = 0;
      }

      if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86_cold_3(v13);
      }

      v14 = *(*(a1 + 64) + 8);
      v15 = *(v14 + 40);
      if (!v15)
      {
        v17 = 0;
        goto LABEL_21;
      }

      v16 = RPNestedErrorF(v13, 4294960596, "nw_listener failed", v6, v7, v8, v9, v10, v19);
      (*(v15 + 16))(v15, v16);

LABEL_19:
      v14 = *(*(a1 + 64) + 8);
      v17 = *(v14 + 40);
LABEL_21:
      *(v14 + 40) = 0;

LABEL_22:
      v11 = v19;
      goto LABEL_23;
    }

    if ((v3 - 1) <= 1 && *(*(*(a1 + 64) + 8) + 40))
    {
      v19 = 0;
      v13 = nw_listener_copy_local_endpoint();
      if (!v13)
      {
        __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86_cold_2(0, &v20);
        v13 = v20;
        goto LABEL_22;
      }

      [*(a1 + 40) _clientUDPNWPathNextWithEndpoint:v13 nwInterface:*(a1 + 48) selfMACData:*(a1 + 56) usb:0 completion:*(*(*(a1 + 64) + 8) + 40)];
      goto LABEL_19;
    }
  }

LABEL_23:
}

void __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (gLogCategory_RPStreamSession <= 30)
  {
    if (gLogCategory_RPStreamSession != -1 || (v3 = _LogCategory_Initialize(), v2 = v4, v3))
    {
      __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_2_cold_1(v2);
      v2 = v4;
    }
  }

  nw_connection_cancel(v2);
}

- (void)_clientUDPNWPathNextWithEndpoint:(id)endpoint nwInterface:(id)interface selfMACData:(id)data usb:(BOOL)usb completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  interfaceCopy = interface;
  dataCopy = data;
  completionCopy = completion;
  address = nw_endpoint_get_address(endpointCopy);
  if (address)
  {
    sa_family = address->sa_family;
    if (sa_family == 30)
    {
      if (!*&address->sa_data[6] && !*&address->sa_data[10] && !*&address[1].sa_len && !*&address[1].sa_data[2])
      {
        goto LABEL_5;
      }
    }

    else if (sa_family == 2 && !*&address->sa_data[2])
    {
LABEL_5:
      v23 = 0;
      goto LABEL_15;
    }

    v46[0] = 0;
    SockAddrToString();
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v46];
LABEL_15:
    Port = SockAddrGetPort();
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      streamType = self->_streamType;
      if (streamType > 3)
      {
        v28 = "?";
      }

      else
      {
        v28 = off_1E7C95240[streamType];
      }

      LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathNextWithEndpoint:nwInterface:selfMACData:usb:completion:]", 30, "Activate: Client, Next, ID '%@', Type %s, Flags %#{flags}, OurIP %@, OurMAC %@, OurEP %@, OurPort %d\n", self->_streamID, v28, self->_streamFlags, &unk_1B6F2F36D, v23, dataCopy, endpointCopy, Port);
    }

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = v29;
    if (v23)
    {
      [v29 setObject:v23 forKeyedSubscript:@"_streamAddr"];
    }

    if (dataCopy)
    {
      [v30 setObject:dataCopy forKeyedSubscript:@"_streamMACAddr"];
    }

    if (self->_streamFlags)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [v30 setObject:v31 forKeyedSubscript:@"_streamFlags"];
    }

    [v30 setObject:self->_streamID forKeyedSubscript:@"_streamID"];
    v32 = [MEMORY[0x1E696AD98] numberWithInt:Port];
    [v30 setObject:v32 forKeyedSubscript:@"_streamPort"];

    v33 = [MEMORY[0x1E696AD98] numberWithInt:self->_streamType];
    [v30 setObject:v33 forKeyedSubscript:@"_streamType"];

    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_trafficFlags];
    [v30 setObject:v34 forKeyedSubscript:@"_tf"];

    serviceType = self->_serviceType;
    if (serviceType)
    {
      [v30 setObject:serviceType forKeyedSubscript:@"_streamSrv"];
    }

    messenger = self->_messenger;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __91__RPStreamSession__clientUDPNWPathNextWithEndpoint_nwInterface_selfMACData_usb_completion___block_invoke;
    v40[3] = &unk_1E7C95148;
    v44 = completionCopy;
    v40[4] = self;
    v41 = endpointCopy;
    v25 = interfaceCopy;
    v42 = interfaceCopy;
    v43 = v23;
    usbCopy = usb;
    v37 = v23;
    [(RPMessageable *)messenger sendRequestID:@"_streamStart" request:v30 destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v40];

    goto LABEL_32;
  }

  v24 = RPErrorF(4294960596, "nw_endpoint_get_address failed", v16, v17, v18, v19, v20, v21, v38);
  if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _clientUDPNWPathNextWithEndpoint:v24 nwInterface:? selfMACData:? usb:? completion:?];
  }

  (*(completionCopy + 2))(completionCopy, v24);

  v25 = interfaceCopy;
LABEL_32:
}

void __91__RPStreamSession__clientUDPNWPathNextWithEndpoint_nwInterface_selfMACData_usb_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v20 = v10;
  if (!v10 || v9)
  {
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      __91__RPStreamSession__clientUDPNWPathNextWithEndpoint_nwInterface_selfMACData_usb_completion___block_invoke_cold_1(v9);
    }

    v17 = *(a1 + 64);
    if (v9)
    {
      (*(v17 + 16))(v17, v9);
    }

    else
    {
      v18 = RPErrorF(4294960584, "No response, but no error", v11, v12, v13, v14, v15, v16, v19);
      (*(v17 + 16))(v17, v18);
    }
  }

  else
  {
    [*(a1 + 32) _clientUDPNWPathStartResponse:v10 options:v8 localEndpoint:*(a1 + 40) nwInterface:*(a1 + 48) selfIPString:*(a1 + 56) usb:*(a1 + 72) completion:*(a1 + 64)];
  }
}

- (void)_clientUDPNWPathStartResponse:(id)response options:(id)options localEndpoint:(id)endpoint nwInterface:(id)interface selfIPString:(id)string usb:(BOOL)usb completion:(id)completion
{
  usbCopy = usb;
  v126[2] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  optionsCopy = options;
  local_endpoint = endpoint;
  interface = interface;
  stringCopy = string;
  completionCopy = completion;
  v120 = 0;
  v121 = &v120;
  v122 = 0x3032000000;
  v123 = __Block_byref_object_copy__7;
  v124 = __Block_byref_object_dispose__7;
  v125 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__RPStreamSession__clientUDPNWPathStartResponse_options_localEndpoint_nwInterface_selfIPString_usb_completion___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v119 = &v120;
  v17 = completionCopy;
  v118 = v17;
  v18 = _Block_copy(aBlock);
  CFStringGetTypeID();
  uTF8String = [CFDictionaryGetTypedValue() UTF8String];
  uTF8String2 = uTF8String;
  if (!uTF8String)
  {
    v98 = RPErrorF(4294960591, "No peer address", v20, v21, v22, v23, v24, v25, v108);
    v28 = v121[5];
    v121[5] = v98;
    goto LABEL_44;
  }

  if (stristr(uTF8String, "%awdl0", *&v108) || stristr(uTF8String2, "%llw0"))
  {
    StringToSockAddr();
    CFStringGetTypeID();
    v27 = CFDictionaryGetTypedValue();
    v28 = v27;
    if (v27)
    {
      if (stringCopy)
      {
        v29 = @"%llw0";
      }

      else
      {
        v29 = @"%awdl0";
      }

      v30 = [v27 stringByAppendingString:v29];
      v31 = v30;
      uTF8String2 = [v30 UTF8String];

      if (!uTF8String2)
      {
        v101 = RPErrorF(4294960591, "Bad stream address", v32, v33, v34, v35, v36, v37, v109);
        v102 = v121[5];
        v121[5] = v101;

        goto LABEL_44;
      }
    }

    else if (stringCopy && gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathStartResponse:options:localEndpoint:nwInterface:selfIPString:usb:completion:]", 30, "Client no peer stream address to use llw0: OurAddr %@\n", stringCopy);
    }
  }

  CFDataGetTypeID();
  v28 = CFDictionaryGetTypedValue();
  if ([v28 length] >= 0x20)
  {
    objc_storeStrong(&self->_streamKey, v28);
  }

  v38 = CFDictionaryGetCFDataOfLength();
  if (!CFDictionaryGetInt64Ranged())
  {
    v99 = RPErrorF(4294960591, "No stream port", v39, v40, v41, v42, v43, v44, v109);
    v100 = v121[5];
    v121[5] = v99;

    goto LABEL_43;
  }

  *&address.sa_len = 0;
  *&address.sa_data[6] = 0;
  v116 = 0;
  v115 = 0;
  v45 = StringToSockAddr();
  if (!v45)
  {
    SockAddrSetPort();
    v45 = SockAddrConvertToIPv6();
    if (!v45)
    {
      if (v38)
      {
        WORD2(v126[0]) = 0;
        LODWORD(v126[0]) = 0;
        v54 = v38;
        bytes = [v38 bytes];
        v56 = *bytes;
        WORD2(v126[0]) = *(bytes + 4);
        LODWORD(v126[0]) = v56;
        address_with_ethernet = nw_endpoint_create_address_with_ethernet();
      }

      else
      {
        address_with_ethernet = nw_endpoint_create_address(&address);
      }

      v53 = address_with_ethernet;
      if (address_with_ethernet)
      {
        [(RPStreamSession *)self _updateTrafficRegistrationForIP:&address];
        if (usbCopy)
        {
          legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
          secure_udp = legacy_tcp_socket;
          if (legacy_tcp_socket)
          {
            v78 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
            if (v78)
            {
              v79 = MEMORY[0x1B8C9EA50]();
              MEMORY[0x1B8C9EA60](v79, 1);
              nw_protocol_stack_set_transport_protocol(v78, v79);

LABEL_29:
              nw_parameters_set_delegated_unique_pid();
              nw_parameters_set_reuse_local_address(secure_udp, 1);
              if (interface)
              {
                nw_parameters_require_interface(secure_udp, interface);
              }

              nw_parameters_set_local_endpoint(secure_udp, local_endpoint);
              evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
              nwPathEvaluator = self->_nwPathEvaluator;
              self->_nwPathEvaluator = evaluator_for_endpoint;

              if (self->_nwPathEvaluator)
              {
                v126[0] = 0;
                v126[1] = 0;
                nw_path_evaluator_get_client_id();
                v94 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v126];
                nwClientID = self->_nwClientID;
                self->_nwClientID = v94;

                if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
                {
                  streamType = self->_streamType;
                  if (streamType > 3)
                  {
                    v97 = "?";
                  }

                  else
                  {
                    v97 = off_1E7C95240[streamType];
                  }

                  LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathStartResponse:options:localEndpoint:nwInterface:selfIPString:usb:completion:]", 30, "Session started: Client, ID '%@', Type %s, Flags %#{flags}, NWClientID %@, %@ (%@) -> PeerAddr %##a, PeerMAC %@\n", self->_streamID, v97, self->_streamFlags, &unk_1B6F2F36D, self->_nwClientID, local_endpoint, stringCopy, &address, v38);
                }

                (*(v17 + 2))(v17, 0);
              }

              else
              {
                v104 = RPErrorF(4294960596, "Create path evaluator failed", v88, v89, v90, v91, v92, v93, v109);
                v105 = v121[5];
                v121[5] = v104;
              }

              goto LABEL_41;
            }

            v106 = RPErrorF(4294960596, "Copy protocol stack USB failed", v72, v73, v74, v75, v76, v77, v109);
            v107 = v121[5];
            v121[5] = v106;

LABEL_41:
            goto LABEL_42;
          }

          v103 = RPErrorF(4294960596, "Create nw_parameters USB failed", v65, v66, v67, v68, v69, v70, v109);
        }

        else
        {
          secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], &__block_literal_global_152);
          if (secure_udp)
          {
            goto LABEL_29;
          }

          v103 = RPErrorF(4294960596, "Create nw_parameters failed", v80, v81, v82, v83, v84, v85, v109);
        }
      }

      else
      {
        v103 = RPErrorF(4294960596, "Create remote endpoint failed", v58, v59, v60, v61, v62, v63, v109);
      }

      secure_udp = v121[5];
      v121[5] = v103;
      goto LABEL_41;
    }
  }

  v52 = RPErrorF(v45, "Bad peer address string '%s'", v46, v47, v48, v49, v50, v51, uTF8String2);
  v53 = v121[5];
  v121[5] = v52;
LABEL_42:

LABEL_43:
LABEL_44:

  v18[2](v18);
  _Block_object_dispose(&v120, 8);
}

uint64_t __111__RPStreamSession__clientUDPNWPathStartResponse_options_localEndpoint_nwInterface_selfIPString_usb_completion___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathStartResponse:options:localEndpoint:nwInterface:selfIPString:usb:completion:]_block_invoke", 90, "### Client start response failed: UDP NWPath, %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

- (void)_serverUDPNWPathStartRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v122 = 0;
  v123 = &v122;
  v124 = 0x3032000000;
  v125 = __Block_byref_object_copy__7;
  v126 = __Block_byref_object_dispose__7;
  v127 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v121 = &v122;
  v102 = handlerCopy;
  v120 = v102;
  v11 = _Block_copy(aBlock);
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    streamType = self->_streamType;
    if (streamType > 3)
    {
      v13 = "?";
    }

    else
    {
      v13 = off_1E7C95240[streamType];
    }

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPNWPathStartRequest:options:responseHandler:]", 30, "Server start request: ID '%@', Type %s, Flags %#{flags}, TF %#{flags}\n", self->_streamID, v13, self->_streamFlags, &unk_1B6F2F36D, self->_trafficFlags, &unk_1B6F2F2E7);
  }

  v118 = 0;
  CFStringGetTypeID();
  uTF8String = [CFDictionaryGetTypedValue() UTF8String];
  uTF8String2 = uTF8String;
  if (!uTF8String)
  {
    v89 = RPErrorF(4294960591, "No peer address", v15, v16, v17, v18, v19, v20, v98);
    v22 = v123[5];
    v123[5] = v89;
    goto LABEL_57;
  }

  if (!stristr(uTF8String, "%awdl0", *&v98) && !stristr(uTF8String2, "%llw0"))
  {
    v22 = 0;
    goto LABEL_21;
  }

  StringToSockAddr();
  if ((self->_streamFlags & 2) != 0)
  {
    v22 = [(RPStreamSession *)self _lowLatencySelfAddressString:&v118];
    if (v22)
    {
      goto LABEL_15;
    }

    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPNWPathStartRequest:options:responseHandler:]", 30, "Server ignoring low latency without local llw0\n");
    }
  }

  v22 = 0;
LABEL_15:
  CFStringGetTypeID();
  v23 = CFDictionaryGetTypedValue();
  v24 = v23;
  if (v23)
  {
    if (v22)
    {
      v25 = @"%llw0";
    }

    else
    {
      v25 = @"%awdl0";
    }

    v26 = [v23 stringByAppendingString:v25];
    uTF8String2 = [v26 UTF8String];

    if (!uTF8String2)
    {
      v96 = RPErrorF(4294960591, "Bad stream address", v27, v28, v29, v30, v31, v32, v99);
      v97 = v123[5];
      v123[5] = v96;

      goto LABEL_57;
    }
  }

  else if (v22 && gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPNWPathStartRequest:options:responseHandler:]", 30, "Server no peer stream address to use llw0: OurAddr %@\n", v22);
  }

LABEL_21:
  memset(v117, 0, 28);
  v116 = 0;
  v33 = StringToSockAddr();
  v115 = v33;
  if (v33)
  {
    v90 = RPErrorF(v33, "Bad peer address string '%s'", v34, v35, v36, v37, v38, v39, uTF8String2);
    v101 = v123[5];
    v123[5] = v90;

    goto LABEL_57;
  }

  v100 = CFDictionaryGetCFDataOfLength();
  if (!CFDictionaryGetInt64Ranged())
  {
    v88 = RPErrorF(4294960591, "No peer port", v40, v41, v42, v43, v44, v45, v99);
    goto LABEL_66;
  }

  SockAddrSetPort();
  Int64Ranged = CFDictionaryGetInt64Ranged();
  self->_trafficFlags = Int64Ranged;
  if (v22)
  {
    v47 = [v22 stringByAppendingString:@"%llw0"];
    uTF8String3 = [v47 UTF8String];

    if (!uTF8String3)
    {
LABEL_40:
      v88 = RPErrorF(4294960591, "No self address", v49, v50, v51, v52, v53, v54, v99);
LABEL_66:
      v91 = v123[5];
      v123[5] = v88;

      goto LABEL_56;
    }
  }

  else
  {
    CFStringGetTypeID();
    uTF8String3 = [CFDictionaryGetTypedValue() UTF8String];
    if (!uTF8String3)
    {
      goto LABEL_40;
    }
  }

  v111 = 0;
  v112 = 0;
  v114 = 0;
  v113 = 0;
  v55 = StringToSockAddr();
  v115 = v55;
  if (v55)
  {
    v92 = RPErrorF(v55, "Bad self address string '%s'", v56, v57, v58, v59, v60, v61, uTF8String3);
    secure_udp = v123[5];
    v123[5] = v92;
    goto LABEL_55;
  }

  secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
  if (secure_udp)
  {
    nw_parameters_set_allow_duplicate_state_updates();
    v69 = 0;
    if (!v22 || (self->_streamFlags & 2) == 0)
    {
      goto LABEL_31;
    }

    v69 = nw_interface_create_with_name();
    if (v69)
    {
      nw_parameters_require_interface(secure_udp, v69);
LABEL_31:
      v76 = self->_nwListener;
      v77 = v76;
      if (v76)
      {
        nw_listener_cancel(v76);
      }

      v78 = nw_listener_create(secure_udp);
      objc_storeStrong(&self->_nwListener, v78);
      if (v78)
      {
        nw_listener_set_queue(v78, self->_dispatchQueue);
        v109[0] = 0;
        v109[1] = v109;
        v109[2] = 0x3032000000;
        v109[3] = __Block_byref_object_copy__84;
        v109[4] = __Block_byref_object_dispose__85;
        v110 = _Block_copy(v102);
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 3221225472;
        v103[2] = __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2;
        v103[3] = &unk_1E7C95190;
        v103[4] = v78;
        v103[5] = self;
        v107 = v109;
        v104 = v69;
        v85 = v118;
        v108[0] = v117[0];
        *(v108 + 12) = *(v117 + 12);
        v105 = v85;
        v106 = v100;
        MEMORY[0x1B8C9E950](v78, v103);
        nw_listener_set_new_connection_handler(v78, &__block_literal_global_167);
        if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
        {
          v86 = self->_streamType;
          if (v86 > 3)
          {
            v87 = "?";
          }

          else
          {
            v87 = off_1E7C95240[v86];
          }

          LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPNWPathStartRequest:options:responseHandler:]", 30, "Activate: Server, Start, ID '%@', Type %s, Flags %#{flags}, OurAddr %@, OurMAC %@\n", self->_streamID, v87, self->_streamFlags, &unk_1B6F2F36D, v22, v118);
        }

        nw_listener_start(v78);

        _Block_object_dispose(v109, 8);
      }

      else
      {
        v94 = RPErrorF(4294960596, "Create nw_listener failed", v79, v80, v81, v82, v83, v84, v99);
        v95 = v123[5];
        v123[5] = v94;
      }

      goto LABEL_54;
    }

    v93 = RPErrorF(4294960596, "Create nw_interface failed", v70, v71, v72, v73, v74, v75, v99);
  }

  else
  {
    v93 = RPErrorF(4294960596, "Create nw_parameters failed", v62, v63, v64, v65, v66, v67, v99);
  }

  v69 = v123[5];
  v123[5] = v93;
LABEL_54:

LABEL_55:
LABEL_56:

LABEL_57:
  v11[2](v11);

  _Block_object_dispose(&v122, 8);
}

uint64_t __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPNWPathStartRequest:options:responseHandler:]_block_invoke", 90, "### Server start failed: UDP NWPath, %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v10 = a3;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2_cold_1(v3);
  }

  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (v3 == 3 || v10)
    {
      if (v10)
      {
        v11 = nw_error_copy_cf_error(v10);
      }

      else
      {
        v11 = 0;
      }

      if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2_cold_3(v11);
      }

      v17 = *(*(a1 + 72) + 8);
      v18 = *(v17 + 40);
      if (!v18)
      {
        v20 = 0;
        goto LABEL_21;
      }

      v19 = RPNestedErrorF(v11, 4294960596, "nw_listener failed", v5, v6, v7, v8, v9, v21);
      (*(v18 + 16))(v18, 0, 0, v19);

LABEL_19:
      v17 = *(*(a1 + 72) + 8);
      v20 = *(v17 + 40);
LABEL_21:
      *(v17 + 40) = 0;

LABEL_22:
      goto LABEL_23;
    }

    if ((v3 - 1) <= 1 && *(*(*(a1 + 72) + 8) + 40))
    {
      v11 = nw_listener_copy_local_endpoint();
      if (!v11)
      {
        __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2_cold_2();
        goto LABEL_22;
      }

      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v16 = *(*(*(a1 + 72) + 8) + 40);
      v22[0] = *(a1 + 80);
      *(v22 + 12) = *(a1 + 92);
      [v12 _serverUDPNWPathNextWithEndpoint:v11 nwInterface:v13 selfMACData:v14 peerIP:v22 peerMACData:v15 usb:0 responseHandler:v16];
      goto LABEL_19;
    }
  }

LABEL_23:
}

void __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (gLogCategory_RPStreamSession <= 30)
  {
    if (gLogCategory_RPStreamSession != -1 || (v3 = _LogCategory_Initialize(), v2 = v4, v3))
    {
      __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_3_cold_1(v2);
      v2 = v4;
    }
  }

  nw_connection_cancel(v2);
}

- (void)_serverUDPNWPathNextWithEndpoint:(id)endpoint nwInterface:(id)interface selfMACData:(id)data peerIP:(id *)p peerMACData:(id)cData usb:(BOOL)usb responseHandler:(id)handler
{
  usbCopy = usb;
  v98[16] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  interface = interface;
  dataCopy = data;
  cDataCopy = cData;
  handlerCopy = handler;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__7;
  v96 = __Block_byref_object_dispose__7;
  v97 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__RPStreamSession__serverUDPNWPathNextWithEndpoint_nwInterface_selfMACData_peerIP_peerMACData_usb_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v91 = &v92;
  v17 = handlerCopy;
  v90 = v17;
  v18 = _Block_copy(aBlock);
  v25 = nw_endpoint_get_address(endpointCopy);
  if (!v25)
  {
    v78 = RPErrorF(4294960596, "nw_endpoint_get_address failed", v19, v20, v21, v22, v23, v24, v84);
    v28 = v93[5];
    v93[5] = v78;
    goto LABEL_36;
  }

  Port = SockAddrGetPort();
  sa_family = v25->sa_family;
  v85 = Port;
  if (sa_family != 30)
  {
    if (sa_family == 2 && !*&v25->sa_data[2])
    {
      goto LABEL_5;
    }

LABEL_11:
    LOBYTE(v98[0]) = 0;
    SockAddrToString();
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v98];
    if (!cDataCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (*&v25->sa_data[6] || *&v25->sa_data[10] || *&v25[1].sa_len || *&v25[1].sa_data[2])
  {
    goto LABEL_11;
  }

LABEL_5:
  v28 = 0;
  if (!cDataCopy)
  {
LABEL_6:
    address_with_ethernet = nw_endpoint_create_address(&p->var0);
    goto LABEL_13;
  }

LABEL_12:
  WORD2(v98[0]) = 0;
  LODWORD(v98[0]) = 0;
  v36 = cDataCopy;
  bytes = [cDataCopy bytes];
  v38 = *bytes;
  WORD2(v98[0]) = *(bytes + 4);
  LODWORD(v98[0]) = v38;
  address_with_ethernet = nw_endpoint_create_address_with_ethernet();
LABEL_13:
  v39 = address_with_ethernet;
  if (!address_with_ethernet)
  {
    v79 = RPErrorF(4294960596, "Create remote endpoint failed", v30, v31, v32, v33, v34, v35, v84);
LABEL_42:
    secure_udp = v93[5];
    v93[5] = v79;
    goto LABEL_35;
  }

  if (!usbCopy)
  {
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], &__block_literal_global_172);
    if (secure_udp)
    {
      goto LABEL_19;
    }

    v79 = RPErrorF(4294960596, "Create nw_parameters failed", v56, v57, v58, v59, v60, v61, v84);
    goto LABEL_42;
  }

  legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
  secure_udp = legacy_tcp_socket;
  if (!legacy_tcp_socket)
  {
    v79 = RPErrorF(4294960596, "Create nw_parameters USB failed", v41, v42, v43, v44, v45, v46, v84);
    goto LABEL_42;
  }

  v54 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
  if (v54)
  {
    v55 = MEMORY[0x1B8C9EA50]();
    MEMORY[0x1B8C9EA60](v55, 1);
    nw_protocol_stack_set_transport_protocol(v54, v55);

LABEL_19:
    nw_parameters_set_delegated_unique_pid();
    nw_parameters_set_reuse_local_address(secure_udp, 1);
    if (interface)
    {
      nw_parameters_require_interface(secure_udp, interface);
    }

    nw_parameters_set_local_endpoint(secure_udp, endpointCopy);
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    nwPathEvaluator = self->_nwPathEvaluator;
    self->_nwPathEvaluator = evaluator_for_endpoint;

    if (self->_nwPathEvaluator)
    {
      v98[0] = 0;
      v98[1] = 0;
      nw_path_evaluator_get_client_id();
      v70 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v98];
      nwClientID = self->_nwClientID;
      self->_nwClientID = v70;

      v72 = NSRandomData();
      objc_storeStrong(&self->_streamKey, v72);
      if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
      {
        streamType = self->_streamType;
        if (streamType > 3)
        {
          v74 = "?";
        }

        else
        {
          v74 = off_1E7C95240[streamType];
        }

        LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPNWPathNextWithEndpoint:nwInterface:selfMACData:peerIP:peerMACData:usb:responseHandler:]", 30, "Session started: Server, ID '%@', Type %s, Flags %#{flags}, TF %#{flags}, NWClientID %@, %@ (%@) -> PeerAddr %##a, PeerMAC %@\n", self->_streamID, v74, self->_streamFlags, &unk_1B6F2F36D, self->_trafficFlags, &unk_1B6F2F2E7, self->_nwClientID, endpointCopy, v28, p, cDataCopy);
      }

      v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v76 = v75;
      if (v28)
      {
        [v75 setObject:v28 forKeyedSubscript:@"_streamAddr"];
      }

      if (dataCopy)
      {
        [v76 setObject:dataCopy forKeyedSubscript:@"_streamMACAddr"];
      }

      [v76 setObject:v72 forKeyedSubscript:@"_streamKey"];
      v77 = [MEMORY[0x1E696AD98] numberWithInt:v85];
      [v76 setObject:v77 forKeyedSubscript:@"_streamPort"];

      (*(v17 + 2))(v17, v76, 0, 0);
    }

    else
    {
      v80 = RPErrorF(4294960596, "Create path evaluator failed", v64, v65, v66, v67, v68, v69, v84);
      v81 = v93[5];
      v93[5] = v80;
    }

    goto LABEL_35;
  }

  v82 = RPErrorF(4294960596, "Copy protocol stack USB failed", v48, v49, v50, v51, v52, v53, v84);
  v83 = v93[5];
  v93[5] = v82;

LABEL_35:
LABEL_36:

  v18[2](v18);
  _Block_object_dispose(&v92, 8);
}

uint64_t __115__RPStreamSession__serverUDPNWPathNextWithEndpoint_nwInterface_selfMACData_peerIP_peerMACData_usb_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPNWPathNextWithEndpoint:nwInterface:selfMACData:peerIP:peerMACData:usb:responseHandler:]_block_invoke", 90, "### Server next failed: UDP NWPath, %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

- (void)_clientUDPSocketStartWithCompletion:(id)completion
{
  completionCopy = completion;
  streamSocket = self->_streamSocket;
  if ((streamSocket & 0x80000000) == 0)
  {
    if (close(streamSocket) && *__error())
    {
      __error();
    }

    self->_streamSocket = -1;
  }

  v22 = 0;
  LODWORD(v19) = 3;
  v6 = ServerSocketOpenEx2();
  if (v6)
  {
    v13 = RPErrorF(v6, "Open socket failed", v7, v8, v9, v10, v11, v12, v19);
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [RPStreamSession _clientUDPSocketStartWithCompletion:v13];
    }

    completionCopy[2](completionCopy, v13);
  }

  else
  {
    if (self->_streamQoS >= 1)
    {
      [(RPStreamSession *)self setStreamQoSOnSocket:self->_streamSocket, v19, &self->_streamSocket];
    }

    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [(RPStreamSession *)self _clientUDPSocketStartWithCompletion:&self->_streamQoS];
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:self->_streamID forKeyedSubscript:@"_streamID"];
    v14 = [MEMORY[0x1E696AD98] numberWithInt:v22];
    [v13 setObject:v14 forKeyedSubscript:@"_streamPort"];

    v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_streamType];
    [v13 setObject:v15 forKeyedSubscript:@"_streamType"];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_trafficFlags];
    [v13 setObject:v16 forKeyedSubscript:@"_tf"];

    serviceType = self->_serviceType;
    if (serviceType)
    {
      [v13 setObject:serviceType forKeyedSubscript:@"_streamSrv"];
    }

    messenger = self->_messenger;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__RPStreamSession__clientUDPSocketStartWithCompletion___block_invoke;
    v20[3] = &unk_1E7C94750;
    v20[4] = self;
    v21 = completionCopy;
    [(RPMessageable *)messenger sendRequestID:@"_streamStart" request:v13 destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v20];
  }
}

void __55__RPStreamSession__clientUDPSocketStartWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v20 = v10;
  if (!v10 || v9)
  {
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      __55__RPStreamSession__clientUDPSocketStartWithCompletion___block_invoke_cold_1(v9);
    }

    v17 = *(a1 + 40);
    if (v9)
    {
      (*(v17 + 16))(v17, v9);
    }

    else
    {
      v18 = RPErrorF(4294960584, "No response, but no error", v11, v12, v13, v14, v15, v16, v19);
      (*(v17 + 16))(v17, v18);
    }
  }

  else
  {
    [*(a1 + 32) _clientUDPSocketStartResponse:v10 options:v8 completion:*(a1 + 40)];
  }
}

- (void)_clientUDPSocketStartResponse:(id)response options:(id)options completion:(id)completion
{
  responseCopy = response;
  optionsCopy = options;
  completionCopy = completion;
  CFDataGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if ([v11 length] >= 0x20)
  {
    objc_storeStrong(&self->_streamKey, v11);
  }

  if (!CFDictionaryGetInt64Ranged())
  {
    v33 = RPErrorF(4294960591, "No stream port", v12, v13, v14, v15, v16, v17, v43);
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

LABEL_10:
    [RPStreamSession _clientUDPSocketStartResponse:v33 options:? completion:?];
LABEL_18:
    completionCopy[2](completionCopy, v33);

    goto LABEL_19;
  }

  CFStringGetTypeID();
  uTF8String = [CFDictionaryGetTypedValue() UTF8String];
  if (!uTF8String)
  {
    v33 = RPErrorF(4294960591, "No peer address", v19, v20, v21, v22, v23, v24, v43);
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v25 = uTF8String;
  *&v48.sa_len = 0;
  *&v48.sa_data[6] = 0;
  v50 = 0;
  v49 = 0;
  v26 = StringToSockAddr();
  if (v26 || (SockAddrSetPort(), v26 = SockAddrConvertToIPv6(), v26))
  {
    v33 = RPErrorF(v26, "Bad peer address string '%s'", v27, v28, v29, v30, v31, v32, v25);
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  streamSocket = self->_streamSocket;
  Size = SockAddrGetSize();
  if (connect(streamSocket, &v48, Size))
  {
    if (*__error())
    {
      v42 = *__error();
      if (!v42)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v42 = 4294960596;
    }

    v33 = RPErrorF(v42, "Connect UDP failed: %##a", v36, v37, v38, v39, v40, v41, &v48);
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      [RPStreamSession _clientUDPSocketStartResponse:v33 options:? completion:?];
    }

    goto LABEL_18;
  }

LABEL_23:
  *&v45.sa_len = 0;
  *&v45.sa_data[6] = 0;
  v47 = 0;
  v46 = 0;
  v44 = 28;
  getsockname(self->_streamSocket, &v45, &v44);
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _clientUDPSocketStartResponse:&v45 options:&v48 completion:?];
  }

  completionCopy[2](completionCopy, 0);
LABEL_19:
}

- (void)_serverUDPSocketStartRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v75[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  CFStringGetTypeID();
  uTF8String = [CFDictionaryGetTypedValue() UTF8String];
  if (uTF8String)
  {
    v18 = uTF8String;
    *&v71.sa_len = 0;
    *&v71.sa_data[6] = 0;
    v73 = 0;
    v72 = 0;
    *v70 = 0;
    v19 = StringToSockAddr();
    v69 = v19;
    if (v19)
    {
      v26 = RPErrorF(v19, "Bad peer address string '%s'", v20, v21, v22, v23, v24, v25, v18);
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

    if (CFDictionaryGetInt64Ranged())
    {
      SockAddrSetPort();
      self->_trafficFlags = CFDictionaryGetInt64Ranged();
      CFStringGetTypeID();
      uTF8String2 = [CFDictionaryGetTypedValue() UTF8String];
      if (uTF8String2)
      {
        v40 = uTF8String2;
        memset(v67, 0, sizeof(v67));
        v68 = 0;
        v41 = StringToSockAddr();
        v69 = v41;
        if (v41)
        {
          v26 = RPErrorF(v41, "Bad self address string '%s'", v42, v43, v44, v45, v46, v47, v40);
          if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          goto LABEL_26;
        }

        p_streamSocket = &self->_streamSocket;
        if ((self->_streamSocket & 0x80000000) == 0)
        {
          if (close(self->_streamSocket) && *__error())
          {
            __error();
          }

          *p_streamSocket = -1;
        }

        LODWORD(v66) = 1;
        v49 = ServerSocketOpenEx2();
        v69 = v49;
        if (v49)
        {
          v56 = RPErrorF(v49, "Open socket failed: %##a", v50, v51, v52, v53, v54, v55, v67);
          if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
          {
            [RPStreamSession _serverUDPSocketStartRequest:v56 options:? responseHandler:?];
          }

LABEL_54:
          (*(handlerCopy + 2))(handlerCopy, 0, 0, v56);
LABEL_55:

          goto LABEL_11;
        }

        SockAddrSetPort();
        if (self->_streamQoS >= 1)
        {
          [(RPStreamSession *)self setStreamQoSOnSocket:self->_streamSocket, v66, &self->_streamSocket];
        }

        v69 = connect(*p_streamSocket, &v71, v70[0]);
        if (v69)
        {
          if (*__error())
          {
            v63 = *__error();
            v69 = v63;
            if (!v63)
            {
LABEL_46:
              v56 = NSRandomData();
              objc_storeStrong(&self->_streamKey, v56);
              if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
              {
                [RPStreamSession _serverUDPSocketStartRequest:v67 options:&v71 responseHandler:?];
              }

              v75[0] = v56;
              v74[0] = @"_streamKey";
              v74[1] = @"_streamPort";
              v64 = [MEMORY[0x1E696AD98] numberWithInt:{0, v66}];
              v75[1] = v64;
              v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];

              (*(handlerCopy + 2))(handlerCopy, v65, 0, 0);
              goto LABEL_55;
            }
          }

          else
          {
            v63 = 4294960596;
            v69 = -6700;
          }

          v56 = RPErrorF(v63, "Connect UDP failed: %##a", v57, v58, v59, v60, v61, v62, &v71);
          if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
          {
            [RPStreamSession _serverUDPSocketStartRequest:v56 options:? responseHandler:?];
          }

          goto LABEL_54;
        }

        v69 = 0;
        goto LABEL_46;
      }

      v26 = RPErrorF(4294960591, "No self address", v34, v35, v36, v37, v38, v39, v66);
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }
    }

    else
    {
      v26 = RPErrorF(4294960591, "No peer port", v27, v28, v29, v30, v31, v32, v66);
      if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v26 = RPErrorF(4294960591, "No peer address", v12, v13, v14, v15, v16, v17, v66);
    if (gLogCategory_RPStreamSession > 90 || gLogCategory_RPStreamSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_10;
    }
  }

LABEL_26:
  [RPStreamSession _serverUDPSocketStartRequest:v26 options:? responseHandler:?];
LABEL_10:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v26);

LABEL_11:
}

- (void)_clientRPConnectionPrepareWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (gLogCategory_RPStreamSession <= 30)
  {
    if (gLogCategory_RPStreamSession != -1 || (completionCopy = _LogCategory_Initialize(), completionCopy))
    {
      completionCopy = [RPStreamSession _clientRPConnectionPrepareWithCompletion:?];
    }
  }

  v6 = RPStreamSessionLog(completionCopy);
  v7 = RPStreamSessionLog(v6);
  v8 = os_signpost_id_make_with_pointer(v7, self->_streamID);

  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    streamID = self->_streamID;
    *buf = 138412290;
    v20 = streamID;
    _os_signpost_emit_with_name_impl(&dword_1B6E85000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RPStreamBringUpTime", " enableTelemetry=YES {streamID:%@, signpost.description:begin_time}", buf, 0xCu);
  }

  Curve25519MakeKeyPair();
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:self->_streamID forKeyedSubscript:@"_streamID"];
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:32];
  [v10 setObject:v11 forKeyedSubscript:@"_streamKey"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:self->_streamType];
  [v10 setObject:v12 forKeyedSubscript:@"_streamType"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_trafficFlags];
  [v10 setObject:v13 forKeyedSubscript:@"_tf"];

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v10 setObject:serviceType forKeyedSubscript:@"_streamSrv"];
  }

  messenger = self->_messenger;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__RPStreamSession__clientRPConnectionPrepareWithCompletion___block_invoke;
  v17[3] = &unk_1E7C94750;
  v17[4] = self;
  v18 = v5;
  v16 = v5;
  [(RPMessageable *)messenger sendRequestID:@"_streamStart" request:v10 destinationID:@"rapport:rdid:DirectPeer" options:0 responseHandler:v17];
}

void __60__RPStreamSession__clientRPConnectionPrepareWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v20 = v10;
  if (!v10 || v9)
  {
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      __60__RPStreamSession__clientRPConnectionPrepareWithCompletion___block_invoke_cold_1(v9);
    }

    v17 = *(a1 + 40);
    if (v9)
    {
      (*(v17 + 16))(v17, v9);
    }

    else
    {
      v18 = RPErrorF(4294960584, "No response, but no error", v11, v12, v13, v14, v15, v16, v19);
      (*(v17 + 16))(v17, v18);
    }
  }

  else
  {
    [*(a1 + 32) _clientRPConnectionPrepareResponse:v10 options:v8 completion:*(a1 + 40)];
  }
}

- (void)_clientRPConnectionPrepareResponse:(id)response options:(id)options completion:(id)completion
{
  v79 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  optionsCopy = options;
  completionCopy = completion;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__7;
  v76 = __Block_byref_object_dispose__7;
  v77 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__RPStreamSession__clientRPConnectionPrepareResponse_options_completion___block_invoke;
  aBlock[3] = &unk_1E7C94FA8;
  v71 = &v72;
  v11 = completionCopy;
  v70 = v11;
  v12 = _Block_copy(aBlock);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    self->_peerPort = Int64Ranged;
    CFStringGetTypeID();
    uTF8String = [CFDictionaryGetTypedValue() UTF8String];
    if (uTF8String)
    {
      memset(v67, 0, sizeof(v67));
      v68 = 0;
      v27 = StringToSockAddr();
      if (v27)
      {
        v61 = RPErrorF(v27, "Bad peer address string '%s'", v28, v29, v30, v31, v32, v33, uTF8String);
        v43 = v73[5];
        v73[5] = v61;
      }

      else
      {
        SockAddrSetPort();
        v34 = NSPrintF("%##a");
        destinationString = self->_destinationString;
        self->_destinationString = v34;

        v36 = CFDictionaryGetCFDataOfLength();
        v43 = v36;
        if (v36)
        {
          v44 = v36;
          if ([v43 bytes])
          {
            v45 = v43;
            [v43 bytes];
            cccurve25519();
          }

          else
          {
            cccurve25519_make_pub();
          }

          memset_s(self->_ourCurveSK, 0x20uLL, 0, 0x20uLL);
          v52 = vorrq_s8(__s[1], __s[0]);
          if (vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL)))
          {
            CryptoHKDF();
            v53 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:{32, __s}];
            pskData = self->_pskData;
            self->_pskData = v53;

            memset_s(__s, 0x20uLL, 0, 0x20uLL);
            if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
            {
              streamType = self->_streamType;
              if (streamType > 3)
              {
                v56 = "?";
              }

              else
              {
                v56 = off_1E7C95240[streamType];
              }

              LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientRPConnectionPrepareResponse:options:completion:]", 30, "Prepare completed: ID '%@', Type %s\n", self->_streamID, v56);
            }

            if (self->_prepareOnly)
            {
              (*(v11 + 2))(v11, 0);
            }

            else
            {
              [(RPStreamSession *)self _clientRPConnectionStartWithCompletion:v11];
            }
          }

          else
          {
            v64 = RPErrorF(0, "Bad shared key", v46, v47, v48, v49, v50, v51, v67);
            v65 = v73[5];
            v73[5] = v64;
          }
        }

        else
        {
          v62 = RPErrorF(0, "No self address", v37, v38, v39, v40, v41, v42, v67);
          v63 = v73[5];
          v73[5] = v62;
        }
      }
    }

    else
    {
      v59 = RPErrorF(4294960591, "No peer address", v20, v21, v22, v23, v24, v25, v66);
      v60 = v73[5];
      v73[5] = v59;
    }
  }

  else
  {
    v57 = RPErrorF(4294960591, "No stream port", v14, v15, v16, v17, v18, v19, v66);
    v58 = v73[5];
    v73[5] = v57;
  }

  v12[2](v12);

  _Block_object_dispose(&v72, 8);
}

uint64_t __73__RPStreamSession__clientRPConnectionPrepareResponse_options_completion___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientRPConnectionPrepareResponse:options:completion:]_block_invoke", 90, "### Prepare failed: %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

- (void)_clientRPConnectionStartWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    [RPStreamSession _clientRPConnectionStartWithCompletion:?];
  }

  [(RPStreamSession *)self _updateTrafficRegistrationForDestination:self->_destinationString];
  v5 = objc_alloc_init(RPConnection);
  [(RPConnection *)v5 setDestinationString:self->_destinationString];
  [(RPConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  [(RPConnection *)v5 setFlags:[(RPConnection *)v5 flags]| 0x80000];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Stream-%u", self->_peerPort];
  [(RPConnection *)v5 setLabel:v6];

  [(RPConnection *)v5 setPskData:self->_pskData];
  pskData = self->_pskData;
  self->_pskData = 0;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke;
  v15[3] = &unk_1E7C92CE8;
  v15[4] = self;
  [(RPConnection *)v5 setInvalidationHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_2;
  v14[3] = &unk_1E7C94408;
  v14[4] = self;
  [(RPConnection *)v5 setReceivedEventHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_3;
  v13[3] = &unk_1E7C94430;
  v13[4] = self;
  [(RPConnection *)v5 setReceivedRequestHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_4;
  v12[3] = &unk_1E7C92CE8;
  v12[4] = self;
  [(RPConnection *)v5 setFlowControlWriteChangedHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_5;
  v11[3] = &unk_1E7C94398;
  v11[4] = self;
  v11[5] = v5;
  [(RPConnection *)v5 setStateChangedHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_201;
  v10[3] = &unk_1E7C92D58;
  v10[4] = self;
  [(RPConnection *)v5 setReadErrorHandler:v10];
  rpCnx = self->_rpCnx;
  self->_rpCnx = v5;
  v9 = v5;

  [(RPConnection *)v9 activate];
  completionCopy[2](completionCopy, 0);
}

uint64_t __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(*(*(a1 + 32) + 216));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v11, v7, v8);
  }
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _Block_copy(*(*(a1 + 32) + 224));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v14, v9, v10, v11);
  }
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 184));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_5(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];

    v6 = RPStreamSessionLog(v5);
    v7 = RPStreamSessionLog(v6);
    v8 = os_signpost_id_make_with_pointer(v7, *(*(a1 + 32) + 264));

    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(*(a1 + 32) + 264);
      v10 = [*(a1 + 40) linkType];
      if (v10 > 0xB)
      {
        v11 = "?";
      }

      else
      {
        v11 = off_1E7C95260[v10];
      }

      v16 = 138412802;
      v17 = v9;
      v18 = 2080;
      v19 = v11;
      v20 = 2080;
      v21 = [v4 UTF8String];
      _os_signpost_emit_with_name_impl(&dword_1B6E85000, v6, OS_SIGNPOST_INTERVAL_END, v8, "RPStreamBringUpTime", " enableTelemetry=YES {streamID:%@, linkType=%{signpost.telemetry:string1}s, process=%{signpost.telemetry:string2}s, signpost.description:end_time}", &v16, 0x20u);
    }

    v12 = *(a1 + 32);
    if (v12[38] >= 1)
    {
      v13 = [*(a1 + 40) tcpConnection];
      [v12 setStreamQoSOnSocket:{objc_msgSend(v13, "socketFD")}];

      v12 = *(a1 + 32);
    }

    v14 = [v12 connectionReadyHandler];
    v15 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14);
    }
  }
}

void __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_201(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == -6723 || objc_msgSend(v3, "code") == -6753)
  {
    v4 = _Block_copy(*(*(a1 + 32) + 168));
    if (v4)
    {
      v5 = *(*(a1 + 32) + 176);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__RPStreamSession__clientRPConnectionStartWithCompletion___block_invoke_2_202;
      block[3] = &unk_1E7C950D8;
      block[4] = v4;
      dispatch_async(v5, block);
    }
  }
}

- (void)_serverRPConnectionStartRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v90 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__7;
  v83 = __Block_byref_object_dispose__7;
  v84 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C951B8;
  v78 = &v79;
  aBlock[4] = self;
  v11 = handlerCopy;
  v77 = v11;
  v12 = _Block_copy(aBlock);
  v75 = 0;
  v19 = CFDictionaryGetCFDataOfLength();
  if (v19)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    self->_trafficFlags = Int64Ranged;
    CFStringGetTypeID();
    uTF8String = [CFDictionaryGetTypedValue() UTF8String];
    if (uTF8String)
    {
      memset(v74, 0, sizeof(v74));
      v28 = StringToSockAddr();
      v75 = v28;
      if (v28)
      {
        v64 = RPErrorF(v28, "Bad self address string '%s'", v29, v30, v31, v32, v33, v34, uTF8String);
        v65 = v80[5];
        v80[5] = v64;
      }

      else
      {
        v35 = objc_alloc_init(MEMORY[0x1E6999550]);
        tcpServer = self->_tcpServer;
        self->_tcpServer = v35;

        [(CUTCPServer *)self->_tcpServer setDispatchQueue:self->_dispatchQueue];
        [(CUTCPServer *)self->_tcpServer setFlags:201];
        *v89 = *v74;
        *&v89[12] = *&v74[12];
        [(CUTCPServer *)self->_tcpServer setInterfaceAddress:v89];
        if ((self->_streamFlags & 5) != 0)
        {
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_2;
          v73[3] = &unk_1E7C942A8;
          v73[4] = self;
          [(CUTCPServer *)self->_tcpServer setConnectionAcceptHandler:v73];
        }

        else
        {
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_3;
          v72[3] = &unk_1E7C951E0;
          v72[4] = self;
          [(CUTCPServer *)self->_tcpServer setConnectionStartedHandler:v72];
        }

        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_4;
        v71[3] = &unk_1E7C92CE8;
        v71[4] = self;
        [(CUTCPServer *)self->_tcpServer setInvalidationHandler:v71];
        v37 = self->_tcpServer;
        v38 = (v80 + 5);
        obj = v80[5];
        [(CUTCPServer *)v37 activateDirectAndReturnError:&obj];
        objc_storeStrong(v38, obj);
        v44 = v80[5];
        if (v44)
        {
          v66 = RPNestedErrorF(v44, 4294960567, "Start TCP server failed", v39, v40, v41, v42, v43, v69);
          v67 = v80[5];
          v80[5] = v66;
        }

        else
        {
          tcpListeningPort = [(CUTCPServer *)self->_tcpServer tcpListeningPort];
          SockAddrSetPort();
          Curve25519MakeKeyPair();
          v46 = v19;
          if ([v19 bytes])
          {
            v47 = v19;
            [v19 bytes];
            cccurve25519();
          }

          else
          {
            cccurve25519_make_pub();
          }

          memset_s(__s, 0x20uLL, 0, 0x20uLL);
          v54 = vorrq_s8(v87[1], v87[0]);
          if (vorr_s8(*v54.i8, *&vextq_s8(v54, v54, 8uLL)))
          {
            CryptoHKDF();
            v55 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:v87 length:{32, v87}];
            pskData = self->_pskData;
            self->_pskData = v55;

            memset_s(v87, 0x20uLL, 0, 0x20uLL);
            if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverRPConnectionStartRequest:options:responseHandler:]", 30, "Session prepared: ID '%@', %##a\n", self->_streamID, v74);
            }

            v85[0] = @"_streamKey";
            v57 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v89 length:32];
            v85[1] = @"_streamPort";
            v86[0] = v57;
            v58 = [MEMORY[0x1E696AD98] numberWithInt:tcpListeningPort];
            v86[1] = v58;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];

            (*(v11 + 2))(v11, v59, 0, 0);
          }

          else
          {
            v68 = RPErrorF(v75, "Bad shared key", v48, v49, v50, v51, v52, v53, v69);
            v59 = v80[5];
            v80[5] = v68;
          }
        }
      }
    }

    else
    {
      v62 = RPErrorF(4294960591, "No self address", v21, v22, v23, v24, v25, v26, v69);
      v63 = v80[5];
      v80[5] = v62;
    }
  }

  else
  {
    v60 = RPErrorF(v75, "No public key", v13, v14, v15, v16, v17, v18, v69);
    v61 = v80[5];
    v80[5] = v60;
  }

  v12[2](v12);
  _Block_object_dispose(&v79, 8);
}

void *__75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke(void *result)
{
  v1 = *(*(result[6] + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(v2[6] + 8) + 40);
    }

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverRPConnectionStartRequest:options:responseHandler:]_block_invoke", 90, "### Start failed: %{error}\n", v1);
  }

LABEL_7:
  [*(v2[4] + 112) invalidate];
  v3 = v2[4];
  v4 = *(v3 + 112);
  *(v3 + 112) = 0;

  v5 = *(v2[5] + 16);

  return v5();
}

void __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((v3[8] & 1) == 0)
  {
    [v3 _serverRPConnectionHandleConnectionAccepted:a2];
    [*(*(a1 + 32) + 112) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }
}

void __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((v3[8] & 1) == 0)
  {
    [v3 _serverRPConnectionHandleConnectionStarted:a2];
    [*(*(a1 + 32) + 112) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }
}

uint64_t __75__RPStreamSession__serverRPConnectionStartRequest_options_responseHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_serverRPConnectionHandleConnectionAccepted:(int)accepted
{
  v3 = *&accepted;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverRPConnectionHandleConnectionAccepted:]", 30, "Session connection accepted: ID '%@', FD %d\n", self->_streamID, v3);
  }

  v7 = _Block_copy(self->_streamAcceptHandler);
  if (v7)
  {
    streamAcceptHandler = self->_streamAcceptHandler;
    self->_streamAcceptHandler = 0;

    streamSocket = self->_streamSocket;
    if ((streamSocket & 0x80000000) == 0 && close(streamSocket) && *__error())
    {
      __error();
    }

    self->_streamSocket = v3;
    if (self->_streamQoS >= 1)
    {
      [(RPStreamSession *)self setStreamQoSOnSocket:v3];
    }

    v7[2]();
  }

  else
  {
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverRPConnectionHandleConnectionAccepted:]", 90, "### Session connection with no accept handler: ID '%@', FD %d\n", self->_streamID, v3);
    }

    close(v3);
  }
}

- (void)_serverRPConnectionHandleConnectionStarted:(id)started
{
  startedCopy = started;
  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverRPConnectionHandleConnectionStarted:]", 30, "Session connection started: ID '%@', %@\n", self->_streamID, startedCopy);
  }

  v5 = objc_alloc_init(RPConnection);
  [(RPConnection *)v5 setDispatchQueue:self->_dispatchQueue];
  [(RPConnection *)v5 setFlags:[(RPConnection *)v5 flags]| 0x80000];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Stream-%u", -[CUTCPServer tcpListeningPort](self->_tcpServer, "tcpListeningPort")];
  [(RPConnection *)v5 setLabel:v6];

  label = [(RPConnection *)v5 label];
  [startedCopy setLabel:label];

  [(RPConnection *)v5 setPskData:self->_pskData];
  pskData = self->_pskData;
  self->_pskData = 0;

  [(RPConnection *)v5 setTcpConnection:startedCopy];
  if (self->_streamQoS >= 1)
  {
    -[RPStreamSession setStreamQoSOnSocket:](self, "setStreamQoSOnSocket:", [startedCopy socketFD]);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke;
  v16[3] = &unk_1E7C92CE8;
  v16[4] = self;
  [(RPConnection *)v5 setInvalidationHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_2;
  v15[3] = &unk_1E7C94408;
  v15[4] = self;
  [(RPConnection *)v5 setReceivedEventHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_3;
  v14[3] = &unk_1E7C94430;
  v14[4] = self;
  [(RPConnection *)v5 setReceivedRequestHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_4;
  v13[3] = &unk_1E7C92CE8;
  v13[4] = self;
  [(RPConnection *)v5 setFlowControlWriteChangedHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_5;
  v12[3] = &unk_1E7C942A8;
  v12[4] = self;
  [(RPConnection *)v5 setStateChangedHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_6;
  v11[3] = &unk_1E7C92D58;
  v11[4] = self;
  [(RPConnection *)v5 setReadErrorHandler:v11];
  rpCnx = self->_rpCnx;
  self->_rpCnx = v5;
  v10 = v5;

  [(RPConnection *)v10 activate];
}

uint64_t __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(*(*(a1 + 32) + 216));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v11, v7, v8);
  }
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _Block_copy(*(*(a1 + 32) + 224));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v14, v9, v10, v11);
  }
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_4(uint64_t a1)
{
  v1 = _Block_copy(*(*(a1 + 32) + 184));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_5(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = [*(a1 + 32) connectionReadyHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

void __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == -6723 || objc_msgSend(v3, "code") == -6753)
  {
    v4 = _Block_copy(*(*(a1 + 32) + 168));
    if (v4)
    {
      v5 = *(*(a1 + 32) + 176);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__RPStreamSession__serverRPConnectionHandleConnectionStarted___block_invoke_7;
      block[3] = &unk_1E7C950D8;
      block[4] = v4;
      dispatch_async(v5, block);
    }
  }
}

- (unsigned)_getSockAddrInterfaceType:(const void *)type
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  if (!SockAddrSimplify())
  {
    v4 = getifaddrs(&v10);
    if (v4)
    {
      if (*__error())
      {
        v4 = *__error();
      }

      else
      {
        v4 = 4294960596;
      }
    }

    v5 = v10;
    if (v10)
    {
      v12 = 0;
      while (!v5->ifa_addr || !v5->ifa_name || SockAddrCompareAddr())
      {
        v5 = v5->ifa_next;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      __strlcpy_chk();
LABEL_14:
      if (v12)
      {
        InterfaceInfo = SocketGetInterfaceInfo();
        if (InterfaceInfo)
        {
          [(RPStreamSession *)v8 _getSockAddrInterfaceType:?];
        }

        else if (!v11)
        {
          [RPStreamSession _getSockAddrInterfaceType:v8];
        }
      }

      else
      {
        [RPStreamSession _getSockAddrInterfaceType:v8];
      }
    }

    else if (([RPStreamSession _getSockAddrInterfaceType:v4]& 1) != 0)
    {
      return v11;
    }
  }

  if (v10)
  {
    MEMORY[0x1B8C9E660](v10, v3);
  }

  return v11;
}

- (id)_lowLatencySelfAddressString:(id *)string
{
  CUGetInterfaceAddresses();

  return 0;
}

- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  if (self->_rpCnx)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__RPStreamSession_sendEventID_event_options_completion___block_invoke;
    block[3] = &unk_1E7C95208;
    block[4] = self;
    v24 = dCopy;
    v25 = eventCopy;
    v26 = optionsCopy;
    v27 = completionCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v21 = RPErrorF(4294960591, "No connection", v13, v14, v15, v16, v17, v18, v22);
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession sendEventID:event:options:completion:]", 90, "### Send event failed: ID '%@', %{error}\n", dCopy, v21);
    }

    (*(completionCopy + 2))(completionCopy, v21);
  }
}

- (void)sendRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_rpCnx)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__RPStreamSession_sendRequestID_request_options_responseHandler___block_invoke;
    block[3] = &unk_1E7C95208;
    block[4] = self;
    v24 = dCopy;
    v25 = requestCopy;
    v26 = optionsCopy;
    v27 = handlerCopy;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v21 = RPErrorF(4294960591, "No connection", v13, v14, v15, v16, v17, v18, v22);
    if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession sendRequestID:request:options:responseHandler:]", 90, "### Send request failed: ID '%@', %{error}\n", dCopy, v21);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v21);
  }
}

- (void)_updateTrafficRegistration
{
  if (self->_peerIP.sa.sa_family)
  {

    [(RPStreamSession *)self _updateTrafficRegistrationForIP:&self->_peerIP];
  }

  else if (self->_trafficFlags)
  {
    streamSocket = self->_streamSocket;
    if ((streamSocket & 0x80000000) == 0)
    {
      *&v6.sa_len = 0;
      *&v6.sa_data[6] = 0;
      v8 = 0;
      v7 = 0;
      v5 = 28;
      getpeername(streamSocket, &v6, &v5);
      if (v6.sa_family == 30 && v6.sa_data[6] == 254 && (v6.sa_data[7] & 0xC0) == 0x80)
      {
        v4 = v8;
        if (v8)
        {
          if (v4 == if_nametoindex("awdl0"))
          {
            [(RPStreamSession *)self _updateTrafficRegistrationForIP:&v6];
          }
        }
      }
    }
  }
}

- (void)_updateTrafficRegistrationForIP:(id *)p
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!self->_trafficSessionID)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    trafficSessionID = self->_trafficSessionID;
    self->_trafficSessionID = uUIDString;
  }

  if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _updateTrafficRegistrationForIP:]", 30, "Register traffic: %##a, %#{flags}, ID %@\n", p, self->_trafficFlags, &unk_1B6F2F2E7, self->_trafficSessionID);
  }

  self->_trafficRegistrationCalled = 1;
  if (!self->_wifiManager)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6999558]);
    wifiManager = self->_wifiManager;
    self->_wifiManager = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.rapport.traffic_registration", v10);
    [(CUWiFiManager *)self->_wifiManager setDispatchQueue:v11];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__RPStreamSession__updateTrafficRegistrationForIP___block_invoke;
    v15[3] = &unk_1E7C92CE8;
    v15[4] = self;
    [(CUWiFiManager *)self->_wifiManager setWifiStateChangedHandler:v15];
    if (objc_opt_respondsToSelector())
    {
      [(CUWiFiManager *)self->_wifiManager setValue:MEMORY[0x1E695E118] forKey:@"degradeOnAnyTrafficUnavailable"];
    }

    [(CUWiFiManager *)self->_wifiManager activateWithCompletion:0];
  }

  v12 = objc_alloc_init(MEMORY[0x1E6999568]);
  v14[0] = p->var0;
  *(v14 + 12) = *(&p->var2.sin6_addr + 4);
  [v12 setPeerIP:v14];
  [v12 setSessionID:self->_trafficSessionID];
  [v12 setTrafficFlags:self->_trafficFlags];
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(CUWiFiManager *)self->_wifiManager setTrafficPeers:v13];
}

void __51__RPStreamSession__updateTrafficRegistrationForIP___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 176);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__RPStreamSession__updateTrafficRegistrationForIP___block_invoke_2;
  block[3] = &unk_1E7C92CE8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __51__RPStreamSession__updateTrafficRegistrationForIP___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 256);
  v4 = [*(v2 + 128) wifiFlags];
  v5 = v3 & 0xFFFFFFFFF9FFFFFFLL | (v4 << 19) & 0x2000000 | (v4 << 19) & 0x4000000;
  if (v5 != v3)
  {
    *(*(a1 + 32) + 256) = v5;
    if (gLogCategory_RPStreamSession <= 30 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _updateTrafficRegistrationForIP:]_block_invoke_2", 30, "Status changed: %#ll{flags} -> %#ll{flags}\n", v3, &unk_1B6F2F118, v5, &unk_1B6F2F118);
    }

    v6 = _Block_copy(*(*(a1 + 32) + 248));
    if (v6)
    {
      v7 = v6;
      v6[2]();
      v6 = v7;
    }
  }
}

- (void)_updateTrafficRegistrationForDestination:(id)destination
{
  destinationCopy = destination;
  memset(v7, 0, 28);
  [destinationCopy UTF8String];
  v5 = StringToSockAddr();
  if (v5)
  {
    if (gLogCategory_RPStreamSession <= 90)
    {
      v6 = v5;
      if (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize())
      {
        LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _updateTrafficRegistrationForDestination:]", 90, " ### Failed to convert destination address (%@) to sockaddr: %d \n", destinationCopy, v6);
      }
    }
  }

  else
  {
    self->_peerIP.sa = v7[0];
    *(&self->_peerIP.v6.sin6_addr + 4) = *(v7 + 12);
    [(RPStreamSession *)self _updateTrafficRegistration];
  }
}

- (int)flowControlWriteState
{
  rpCnx = self->_rpCnx;
  if (rpCnx)
  {
    flowControlWriteState = [(RPConnection *)rpCnx flowControlWriteState];
    if (flowControlWriteState == 10)
    {
      LODWORD(rpCnx) = 1;
    }

    else
    {
      LODWORD(rpCnx) = 2 * (flowControlWriteState == 20);
    }
  }

  return rpCnx;
}

- (uint64_t)_startServerConnectionAndReturnError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *(a1 + 148);
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E7C95240[v3];
  }

  v5 = "yes";
  if (!*(a1 + 296))
  {
    v5 = "no";
  }

  return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _startServerConnectionAndReturnError:]", 30, "Start server connection: ID '%@', Type %s, FD %d, PSK %s\n", *(a1 + 264), v4, *(a1 + 144), v5, v1, v2);
}

- (uint64_t)_invalidate
{
  v3 = *(self + 148);
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E7C95240[v3];
  }

  return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _invalidate]", 30, "Invalidate: ID '%@', Type %s\n", *(self + 264), v4, v1, v2);
}

- (uint64_t)_invalidated
{
  v3 = *(self + 148);
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E7C95240[v3];
  }

  return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _invalidated]", 30, "Invalidated: ID '%@', Type %s\n", *(self + 264), v4, v1, v2);
}

uint64_t __55__RPStreamSession__clientUDPNWPathStartWithCompletion___block_invoke_86_cold_2(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (gLogCategory_RPStreamSession <= 90)
  {
    if (gLogCategory_RPStreamSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPNWPathStartWithCompletion:]_block_invoke", 90, "### Client nw_listener no endpoint\n");
    }
  }

  *a2 = v3;
  return result;
}

void __72__RPStreamSession__serverUDPNWPathStartRequest_options_responseHandler___block_invoke_2_cold_2()
{
  if (gLogCategory_RPStreamSession <= 90 && (gLogCategory_RPStreamSession != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPNWPathStartRequest:options:responseHandler:]_block_invoke_2", 90, "### nw_listener no endpoint\n");
  }
}

- (uint64_t)_clientUDPSocketStartWithCompletion:(_DWORD *)a3 .cold.2(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v5 = *(a1 + 148);
  if (v5 > 3)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1E7C95240[v5];
  }

  v7 = "Default";
  switch(*a3)
  {
    case 0:
      return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPSocketStartWithCompletion:]", 30, "Activate: ID '%@', Type %s, Port %d QoS %s\n", *(a1 + 264), v6, *a2, v7, v3, v4);
    case 1:
      v7 = "Background";
      break;
    case 2:
      v7 = "Video";
      break;
    case 3:
      v7 = "Voice";
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      goto LABEL_8;
    case 0xA:
      v7 = "AirPlayAudio";
      break;
    case 0xB:
      v7 = "AirPlayScreenAudio";
      break;
    case 0xC:
      v7 = "AirPlayScreenVideo";
      break;
    default:
      if (*a3 == 20)
      {
        v7 = "NTP";
      }

      else
      {
LABEL_8:
        v7 = "?";
      }

      break;
  }

  return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPSocketStartWithCompletion:]", 30, "Activate: ID '%@', Type %s, Port %d QoS %s\n", *(a1 + 264), v6, *a2, v7, v3, v4);
}

- (uint64_t)_clientUDPSocketStartResponse:(uint64_t)a1 options:(uint64_t)a2 completion:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 148);
  if (v5 > 3)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1E7C95240[v5];
  }

  return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientUDPSocketStartResponse:options:completion:]", 30, "Session started: ID '%@', Type %s, %##a -> %##a\n", *(a1 + 264), v6, a2, a3, v3, v4);
}

- (uint64_t)_serverUDPSocketStartRequest:(uint64_t)a1 options:(uint64_t)a2 responseHandler:(uint64_t)a3 .cold.5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 148);
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E7C95240[v3];
  }

  return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _serverUDPSocketStartRequest:options:responseHandler:]", 30, "Session started: ID '%@', Type %s, %##a -> %##a, service %@\n", *(a1 + 264), v4, a2, a3, *(a1 + 240));
}

- (uint64_t)_clientRPConnectionPrepareWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *(a1 + 148);
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E7C95240[v3];
  }

  return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientRPConnectionPrepareWithCompletion:]", 30, "Prepare start: ID '%@', Type %s\n", *(a1 + 264), v4, v1, v2);
}

- (uint64_t)_clientRPConnectionStartWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *(a1 + 148);
  if (v3 > 3)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E7C95240[v3];
  }

  return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _clientRPConnectionStartWithCompletion:]", 30, "Activate: ID '%@', Type %s, IP %@ Port %d\n", *(a1 + 264), v4, *(a1 + 288), *(a1 + 92), v1, v2);
}

- (uint64_t)_getSockAddrInterfaceType:(uint64_t)result .cold.1(uint64_t result, uint64_t a2)
{
  if (gLogCategory_RPStreamSession <= 90)
  {
    v3 = result;
    if (gLogCategory_RPStreamSession != -1)
    {
      return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _getSockAddrInterfaceType:]", 90, "### GetIfType info failed: %##a, %#m\n", v3, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _getSockAddrInterfaceType:]", 90, "### GetIfType info failed: %##a, %#m\n", v3, a2);
    }
  }

  return result;
}

- (uint64_t)_getSockAddrInterfaceType:(uint64_t)result .cold.2(uint64_t result)
{
  if (gLogCategory_RPStreamSession <= 90)
  {
    v1 = result;
    if (gLogCategory_RPStreamSession != -1)
    {
      return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _getSockAddrInterfaceType:]", 90, "### GetIfType no type: %##a\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _getSockAddrInterfaceType:]", 90, "### GetIfType no type: %##a\n", v1);
    }
  }

  return result;
}

- (uint64_t)_getSockAddrInterfaceType:(uint64_t)result .cold.3(uint64_t result)
{
  if (gLogCategory_RPStreamSession <= 90)
  {
    v1 = result;
    if (gLogCategory_RPStreamSession != -1)
    {
      return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _getSockAddrInterfaceType:]", 90, "### GetIfType not found: %##a\n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _getSockAddrInterfaceType:]", 90, "### GetIfType not found: %##a\n", v1);
    }
  }

  return result;
}

- (uint64_t)_getSockAddrInterfaceType:(uint64_t)a1 .cold.4(uint64_t a1)
{
  if (gLogCategory_RPStreamSession > 90)
  {
    return 1;
  }

  if (gLogCategory_RPStreamSession != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF(&gLogCategory_RPStreamSession, "[RPStreamSession _getSockAddrInterfaceType:]", 90, "### GetIfType addrs failed: %#m\n", a1);
    return 0;
  }

  return result;
}

@end