@interface VNCServer
- (VNCServer)init;
- (void)consumeMessage;
- (void)dealloc;
- (void)handleIncomingData:(char *)data dataSize:(unsigned int)size;
- (void)handleTouchEventUpdate;
- (void)notificationHandler:(id)handler;
- (void)sendPauseMessage:(unint64_t)message;
- (void)sendScreenLockChangeMessage:(unint64_t)message;
- (void)startScreenSharingSession:(int)session NWConnectionManager:(void *)manager sessionController:(id)controller;
- (void)stopUDPSend;
- (void)termsAndConditionsAccepted;
- (void)userRequestResult:(int)result senderToken:(unsigned int)token;
@end

@implementation VNCServer

- (VNCServer)init
{
  v4.receiver = self;
  v4.super_class = VNCServer;
  v2 = [(VNCServer *)&v4 init];
  if (v2)
  {
    objc_storeStrong(&qword_100070AA0, v2);
  }

  return v2;
}

- (void)dealloc
{
  [(VNCServer *)self setMachineName:0];
  [(VNCServer *)self setSessionController:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  xpc_transaction_end();
  free(self->_lastTouchInfo);
  v4.receiver = self;
  v4.super_class = VNCServer;
  [(VNCServer *)&v4 dealloc];
}

- (void)handleIncomingData:(char *)data dataSize:(unsigned int)size
{
  sizeCopy = size;
  if ([(VNCServer *)self sessionType]== 1)
  {
    sub_1000341D0(self->viewer.receiveInfo, data, sizeCopy);
  }

  if (sub_10003ABCC(self->viewer.ndata))
  {

    [(VNCServer *)self consumeMessage];
  }
}

- (void)startScreenSharingSession:(int)session NWConnectionManager:(void *)manager sessionController:(id)controller
{
  v6 = *&session;
  controllerCopy = controller;
  v9 = sub_1000423E0();
  if (v9)
  {
    v10 = sub_100042E68(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "[VNCServer startScreenSharingSession:NWConnectionManager:sessionController:]";
      v29 = 1024;
      v30 = 166;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%s:%d] new screen sharing connection", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 166, "[VNCServer startScreenSharingSession:NWConnectionManager:sessionController:]", 7, 0, "new screen sharing connection");
  [(VNCServer *)self setSessionType:v6];
  v11 = +[UIDevice currentDevice];
  name = [v11 name];
  [(VNCServer *)self setMachineName:name];

  [(VNCServer *)self setSessionController:controllerCopy];
  if (v6 == 1)
  {
    v13 = dispatch_semaphore_create(0);
    readyToAuthSemaphore = self->_readyToAuthSemaphore;
    self->_readyToAuthSemaphore = v13;

    v15 = malloc_type_calloc(1uLL, 0xCD0uLL, 0x10A0040E3A9E06DuLL);
    self->viewer.sendInfo = v15;
    *(v15 + 1351) = 1;
    *(v15 + 2706) = 393217;
    v16 = malloc_type_calloc(1uLL, 0x78uLL, 0x10000401D800FF3uLL);
    *(v15 + 406) = v16;
    v17 = sub_100035FAC();
    v16[92] = 0;
    *(v16 + 2) = -1;
    *(v16 + 12) = v17;
    *(v16 + 9) = v17;
    v18 = malloc_type_calloc(1uLL, 0x1CuLL, 0xDF30543DuLL);
    *(v15 + 404) = v18;
    *v18 = 0;
    *(v15 + 1350) = 0;
    v15[2681] = 1;
    *(v15 + 56) = 4;
    *(v15 + 674) = -1;
    v15[114] = 4;
    v19 = malloc_type_calloc(1uLL, 0x5C0uLL, 0x10B0040C87F9819uLL);
    self->viewer.receiveInfo = v19;
    *(v19 + 343) = 1;
    *(v19 + 60) = 0x100000001;
    *v19 = -1;
    v19[8] = 1;
    *(v19 + 340) = 42;
    *(v19 + 182) = self->viewer.sendInfo;
    *(v19 + 11) = 1;
    v19[11] = 0;
    sub_100034B18(v19);
    *(v19 + 60) = 0x100000001;
    v19[17] = 0;
    v19[1353] = 4;
    sub_100039D58(0x80000uLL, v19 + 172);
    self->viewer.ndata = *(v19 + 172);
    v20 = sub_1000423E0();
    if (v20)
    {
      v21 = sub_100042E68(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[VNCServer startScreenSharingSession:NWConnectionManager:sessionController:]";
        v29 = 1024;
        v30 = 194;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%s:%d] going to start read", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 194, "[VNCServer startScreenSharingSession:NWConnectionManager:sessionController:]", 7, 0, "going to start read");
    [manager startRead:self];
    sub_100022984(self->viewer.sendInfo);
    *(self->viewer.receiveInfo + 1440) = 1;
    sendInfo = self->viewer.sendInfo;
    *(sendInfo + 115) = 1;
    *(sendInfo + 408) = manager;
    *(sendInfo + 3272) = 1;
    self->viewer.AppleCare = 1;
    sub_10002DA9C(&self->viewer, "RFB 003.889\n", 12);
    self->state = 1;
    v23 = sub_1000423E0();
    if (v23)
    {
      v24 = sub_100042E68(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[VNCServer startScreenSharingSession:NWConnectionManager:sessionController:]";
        v29 = 1024;
        v30 = 211;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%s:%d] wrote server protocol version", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 211, "[VNCServer startScreenSharingSession:NWConnectionManager:sessionController:]", 7, 0, "wrote server protocol version");
  }

  else
  {
    v25 = sub_1000423E0();
    if (v25)
    {
      v26 = sub_100042E68(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v28 = "[VNCServer startScreenSharingSession:NWConnectionManager:sessionController:]";
        v29 = 1024;
        v30 = 205;
        v31 = 1024;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%s:%d] invalid session type %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 205, "[VNCServer startScreenSharingSession:NWConnectionManager:sessionController:]", 3, 0, "invalid session type %d");
  }
}

- (void)stopUDPSend
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[VNCServer stopUDPSend]";
      v12 = 1024;
      v13 = 217;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop UDP send thread", &v10, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 217, "[VNCServer stopUDPSend]", 7, 0, "stop UDP send thread");
  sub_10002442C(self->viewer.sendInfo);
  monitoringTouchEvents = self->viewer.monitoringTouchEvents;
  v6 = sub_1000423E0();
  if (monitoringTouchEvents)
  {
    if (v6)
    {
      v7 = sub_100042E68(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[VNCServer stopUDPSend]";
        v12 = 1024;
        v13 = 221;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] stop monitoring touch events", &v10, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 221, "[VNCServer stopUDPSend]", 7, 0, "stop monitoring touch events");
    self->viewer.monitoringTouchEvents = 0;
    sub_100033D2C(v8);
  }

  else
  {
    if (v6)
    {
      v9 = sub_100042E68(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[VNCServer stopUDPSend]";
        v12 = 1024;
        v13 = 226;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%s:%d] was not monitoring touch events", &v10, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 226, "[VNCServer stopUDPSend]", 7, 0, "was not monitoring touch events");
  }
}

- (void)sendPauseMessage:(unint64_t)message
{
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "[VNCServer sendPauseMessage:]";
      v11 = 1024;
      v12 = 232;
      v13 = 2048;
      messageCopy = message;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] video is paused %llu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 232, "[VNCServer sendPauseMessage:]", 7, 0, "video is paused %llu", message);
  sub_100040350(message != 0);
  if (message)
  {
    sub_1000430F0(0, 0, 0.0, 0.0);
  }

  if (self->viewer.info.viewerInfoSet && (self->viewer.info.supportedCommands[2] & 8) != 0)
  {
    v7 = malloc_type_calloc(1uLL, 0x16uLL, 0x108004043D1B9D8uLL);
    v7[6] = 0;
    *(v7 + 2) = 8;
    *(v7 + 14) = 20;
    *(v7 + 4) = 16778240;
    if (message)
    {
      v8 = 1792;
    }

    else
    {
      v8 = 2048;
    }

    v7[10] = v8;
    sub_10002E738(&self->viewer, v7);
  }
}

- (void)sendScreenLockChangeMessage:(unint64_t)message
{
  v5 = sub_1000423E0();
  if (v5)
  {
    v6 = sub_100042E68(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "[VNCServer sendScreenLockChangeMessage:]";
      v11 = 1024;
      v12 = 265;
      v13 = 2048;
      messageCopy = message;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is locked %llu", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 265, "[VNCServer sendScreenLockChangeMessage:]", 7, 0, "screen is locked %llu", message);
  [(VNCServer *)self setScreenLocked:message != 0];
  if (self->viewer.info.viewerInfoSet && (self->viewer.info.supportedCommands[2] & 8) != 0)
  {
    v7 = malloc_type_calloc(1uLL, 0x16uLL, 0x108004043D1B9D8uLL);
    v7[6] = 0;
    *(v7 + 2) = 8;
    *(v7 + 14) = 20;
    *(v7 + 4) = 16778240;
    if (message)
    {
      v8 = 3840;
    }

    else
    {
      v8 = 4096;
    }

    v7[10] = v8;
    sub_10002E738(&self->viewer, v7);
  }
}

- (void)termsAndConditionsAccepted
{
  v3 = sub_1000423E0();
  if (v3)
  {
    v4 = sub_100042E68(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[VNCServer termsAndConditionsAccepted]";
      v11 = 1024;
      v12 = 294;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] terms and conditions accepted", buf, 0x12u);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 294, "[VNCServer termsAndConditionsAccepted]", 7, 0, "terms and conditions accepted");
  readyToAuthSemaphore = self->_readyToAuthSemaphore;
  if (readyToAuthSemaphore)
  {
    v6 = dispatch_semaphore_signal(readyToAuthSemaphore);
  }

  else
  {
    v6 = 2;
  }

  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "[VNCServer termsAndConditionsAccepted]";
      v11 = 1024;
      v12 = 296;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] t&C accepted thrad woke %ld", buf, 0x1Cu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 296, "[VNCServer termsAndConditionsAccepted]", 7, 0, "t&C accepted thrad woke %ld", v6);
}

- (void)userRequestResult:(int)result senderToken:(unsigned int)token
{
  v7 = sub_1000423E0();
  if (v7)
  {
    v8 = sub_100042E68(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = "[VNCServer userRequestResult:senderToken:]";
      v17 = 1024;
      v18 = 303;
      v19 = 1024;
      resultCopy = result;
      v21 = 1024;
      tokenCopy = token;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%s:%d] ***user request result %d  senderToken %u", buf, 0x1Eu);
    }
  }

  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 303, "[VNCServer userRequestResult:senderToken:]", 7, 0, "***user request result %d  senderToken %u", result, token);
  if (result >= 4)
  {
    v10 = sub_1000423E0();
    if (v10)
    {
      v11 = sub_100042E68(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[VNCServer userRequestResult:senderToken:]";
        v17 = 1024;
        v18 = 324;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] unknown response - assuem deny", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 324, "[VNCServer userRequestResult:senderToken:]", 7, 0, "unknown response - assuem deny");
    v9 = 0;
  }

  else
  {
    v9 = dword_10004AA60[result];
  }

  if (self->viewer.info.viewerInfoSet && (self->viewer.info.supportedCommands[4] & 0x10) != 0)
  {
    v14 = malloc_type_calloc(1uLL, 0x20uLL, 0x108004043D1B9D8uLL);
    v14[6] = 0;
    *(v14 + 2) = 18;
    *(v14 + 14) = 35;
    *(v14 + 4) = 16780800;
    *(v14 + 5) = bswap32(token);
    *(v14 + 6) = 0x2000000;
    *(v14 + 7) = v9;
    sub_10002E738(&self->viewer, v14);
  }

  else
  {
    v12 = sub_1000423E0();
    if (v12)
    {
      v13 = sub_100042E68(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[VNCServer userRequestResult:senderToken:]";
        v17 = 1024;
        v18 = 347;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%s:%d] cmd not supported", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 347, "[VNCServer userRequestResult:senderToken:]", 7, 0, "cmd not supported");
  }
}

- (void)consumeMessage
{
  state = self->state;
  if (state <= 3)
  {
    if (state != 1)
    {
      if (state == 3)
      {
        v4 = sub_1000423E0();
        if (v4)
        {
          v5 = sub_100042E68(v4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "[VNCServer consumeMessage]";
            v151 = 1024;
            v152 = 469;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%s:%d] sent security challenge", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 469, "[VNCServer consumeMessage]", 7, 0, "sent security challenge");
        v6 = sub_1000423E0();
        if (v6)
        {
          v7 = sub_100042E68(v6);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            authState = self->viewer.authState;
            *buf = 136315650;
            v150 = "HandleViewerAuthenticationMessages";
            v151 = 1024;
            v152 = 763;
            v153 = 1024;
            *v154 = authState;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleViewerAuthenticationMessages %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 763, "HandleViewerAuthenticationMessages", 7, "AuthTheViewer", "HandleViewerAuthenticationMessages %d", self->viewer.authState);
        v9 = self->viewer.authState;
        if (v9 > 3)
        {
          if (v9 - 4 < 4)
          {
            goto LABEL_176;
          }

          if (v9 == 8)
          {
            v10 = sub_1000423E0();
            if (v10)
            {
              v11 = sub_100042E68(v10);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v150 = "HandlePreAuthorizedPasswordMessage";
                v151 = 1024;
                v152 = 895;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandlePreAuthorizedPasswordMessage", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 895, "HandlePreAuthorizedPasswordMessage", 7, 0, "HandlePreAuthorizedPasswordMessage");
            if (sub_10003ABCC(self->viewer.ndata) < 0x10)
            {
              goto LABEL_176;
            }

            v145 = 0;
            sub_100039EA8(self->viewer.ndata, 0x10u, dataOut);
            v12 = sub_100032608(self->viewer.AESKeyECB, self->viewer.pwChallenge, dataOut, &v145);
            v13 = sub_1000423E0();
            if (v13)
            {
              v14 = sub_100042E68(v13);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v150 = "HandlePreAuthorizedPasswordMessage";
                v151 = 1024;
                v152 = 908;
                v153 = 1024;
                *v154 = v145;
                *&v154[4] = 1024;
                *&v154[6] = v12;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%s:%d] validKey %d error %d", buf, 0x1Eu);
              }
            }

            v15 = v145;
            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 908, "HandlePreAuthorizedPasswordMessage", 7, "AuthTheViewer", "validKey %d error %d", v145, v12);
            if (v12)
            {
              v16 = 1;
            }

            else
            {
              v16 = v15 == 0;
            }

            v17 = v16;
            if (v16)
            {
              dataOutMoved[0] = 0;
              dataOutMoved[1] = 0;
              v18 = 0x1000000;
              goto LABEL_194;
            }

            self->viewer.state = 2;
            *&self->viewer.observeFlag = 0;
            self->viewer.askFlag = 0;
            if (!sub_100032794(self->viewer.AESKeyECB, self->viewer.AESKeyECBSend, dataOut, 0, dataOutMoved))
            {
              v18 = 0;
LABEL_194:
              if (!sub_10002DA9C(&self->viewer, dataOutMoved, 16))
              {
                LODWORD(v144) = v18;
                v110 = v17 ^ 1;
                if (self->viewer.viewerMinorVersion != 8)
                {
                  v110 = 1;
                }

                if (v110)
                {
                  sub_10002DA9C(&self->viewer, &v144, 4);
                }

                else
                {
                  v111 = sub_1000423E0();
                  if (v111)
                  {
                    v112 = sub_100042E68(v111);
                    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      v150 = "SendAuthenticationResultToViewer";
                      v151 = 1024;
                      v152 = 1012;
                      v153 = 1024;
                      *v154 = HIBYTE(v18);
                      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "[%s:%d] send vers 8 response authresult %d", buf, 0x18u);
                    }
                  }

                  sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1012, "SendAuthenticationResultToViewer", 7, 0, "send vers 8 response authresult %d", HIBYTE(v18));
                  v113 = strlen(off_100070650);
                  v114 = malloc_type_malloc((v113 + 9), 0x100004000313F17uLL);
                  *v114 = v18;
                  v114[1] = bswap32(v113);
                  memcpy(v114 + 2, off_100070650, v113);
                  sub_10002DA9C(&self->viewer, v114, (v113 + 9));
                  free(v114);
                  sleep(1u);
                }
              }
            }

LABEL_176:
            if (self->viewer.state != 2)
            {
              return;
            }

            v105 = sub_1000423E0();
            if (v105)
            {
              v106 = sub_100042E68(v105);
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v150 = "[VNCServer consumeMessage]";
                v151 = 1024;
                v152 = 473;
                _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "[%s:%d] set state to sent security result", buf, 0x12u);
              }
            }

            sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 473, "[VNCServer consumeMessage]", 7, 0, "set state to sent security result");
            goto LABEL_182;
          }

          goto LABEL_169;
        }

        if (v9 == 1)
        {
          goto LABEL_176;
        }

        if (v9 != 2)
        {
          if (v9 == 3)
          {
            v60 = sub_1000423E0();
            if (v60)
            {
              v61 = sub_100042E68(v60);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v150 = "HandleViewerAuthenticationMessages";
                v151 = 1024;
                v152 = 775;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer send during auth waiting", buf, 0x12u);
              }
            }

            v62 = "HandleViewerAuthenticationMessages";
            v63 = "viewer send during auth waiting";
            v64 = 775;
            goto LABEL_174;
          }

LABEL_169:
          v102 = sub_1000423E0();
          if (v102)
          {
            v103 = sub_100042E68(v102);
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v150 = "HandleViewerAuthenticationMessages";
              v151 = 1024;
              v152 = 794;
              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "[%s:%d] bad viewer auth state", buf, 0x12u);
            }
          }

          v62 = "HandleViewerAuthenticationMessages";
          v63 = "bad viewer auth state";
          v64 = 794;
LABEL_174:
          v104 = 7;
LABEL_175:
          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, v64, v62, v104, "AuthTheViewer", v63, v141);
          goto LABEL_176;
        }

        v145 = 0;
        dataOutMoved[0] = 0;
        v144 = 0;
        sub_1000402B4(&v144);
        v107 = v144;
        if ((v144 - self->viewer.lastCommunicationTimeLo) <= 0x2710)
        {
          self->viewer.lowLatencyConnectionFlag = 1;
        }

        self->viewer.lastCommunicationTimeLo = v107;
        sub_100039EA8(self->viewer.ndata, 1u, &v145);
        if (self->viewer.VersionRFB3dot888Viewer)
        {
          switch(v145)
          {
            case 5u:
              v108 = 32;
              break;
            case 4u:
              v108 = 31;
              break;
            case 3u:
              v108 = 30;
              break;
            default:
              goto LABEL_206;
          }

          v145 = v108;
        }

LABEL_206:
        v115 = sub_1000423E0();
        if (v115)
        {
          v116 = sub_100042E68(v115);
          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v150 = "HandleAuthTypeMessage";
            v151 = 1024;
            v152 = 833;
            v153 = 1024;
            *v154 = v145;
            _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[%s:%d] HandleAuthTypeMessage %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 833, "HandleAuthTypeMessage", 7, "AuthTheViewer", "HandleAuthTypeMessage %d", v145);
        if (v145 != 34)
        {
          goto LABEL_176;
        }

        v117 = sub_1000423E0();
        if (v117)
        {
          v118 = sub_100042E68(v117);
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "HandleAuthTypeMessage";
            v151 = 1024;
            v152 = 838;
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "[%s:%d] pre-auth", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 838, "HandleAuthTypeMessage", 7, 0, "pre-auth");
        if (!self->viewer.preauthorizedFlag)
        {
          v123 = sub_1000423E0();
          if (v123)
          {
            v124 = sub_100042E68(v123);
            if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v150 = "HandleAuthTypeMessage";
              v151 = 1024;
              v152 = 875;
              _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer attempted to use preauthorized connection", buf, 0x12u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 875, "HandleAuthTypeMessage", 1, "AuthTheViewer", "viewer attempted to use preauthorized connection", v142);
          goto LABEL_176;
        }

        *dataOut = 0;
        v148 = 0;
        v119 = CCCryptorCreate(0, 0, 2u, self->viewer.encryptionKey, 0x10uLL, 0, &self->viewer.AESKeyECBSend);
        if (v119)
        {
          v120 = v119;
          v121 = sub_1000423E0();
          if (v121)
          {
            v122 = sub_100042E68(v121);
            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v150 = "HandleAuthTypeMessage";
              v151 = 1024;
              v152 = 845;
              v153 = 1024;
              *v154 = v120;
              _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorCreate viewer->AESKeyECB %d", buf, 0x18u);
            }
          }

          v62 = "HandleAuthTypeMessage";
          v141 = v120;
          v63 = "CCCryptorCreate viewer->AESKeyECB %d";
          v64 = 845;
        }

        else
        {
          v125 = CCCryptorCreate(1u, 0, 2u, self->viewer.encryptionKey, 0x10uLL, 0, &self->viewer.AESKeyECB);
          if (v125)
          {
            v126 = v125;
            v127 = sub_1000423E0();
            if (v127)
            {
              v128 = sub_100042E68(v127);
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v150 = "HandleAuthTypeMessage";
                v151 = 1024;
                v152 = 851;
                v153 = 1024;
                *v154 = v126;
                _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorCreate %d", buf, 0x18u);
              }
            }

            v62 = "HandleAuthTypeMessage";
            v141 = v126;
            v63 = "CCCryptorCreate %d";
            v64 = 851;
          }

          else
          {
            v129 = CCCryptorUpdate(self->viewer.AESKeyECBSend, self->viewer.pwChallenge, 0x10uLL, dataOut, 0x10uLL, dataOutMoved);
            if (!v129)
            {
              v133 = CCCryptorCreate(1u, 0, 0, self->viewer.newAESkey, 0x10uLL, 0, self->viewer.receiveInfo + 173);
              if (v133)
              {
                v134 = v133;
                v135 = sub_1000423E0();
                if (v135)
                {
                  v136 = sub_100042E68(v135);
                  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v150 = "HandleAuthTypeMessage";
                    v151 = 1024;
                    v152 = 865;
                    v153 = 1024;
                    *v154 = v134;
                    _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorCreate %d", buf, 0x18u);
                  }
                }

                sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 865, "HandleAuthTypeMessage", 5, 0, "CCCryptorCreate %d", v134);
              }

              v137 = sub_10002DA9C(&self->viewer, dataOut, 16);
              self->viewer.authState = 8;
              if (!v137)
              {
                goto LABEL_176;
              }

              v138 = v137;
              v139 = sub_1000423E0();
              if (v139)
              {
                v140 = sub_100042E68(v139);
                if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v150 = "HandleAuthTypeMessage";
                  v151 = 1024;
                  v152 = 870;
                  v153 = 1024;
                  *v154 = v138;
                  _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "[%s:%d] kViewerAuthPreAuthorizedResponse error = %d", buf, 0x18u);
                }
              }

              v62 = "HandleAuthTypeMessage";
              v141 = v138;
              v63 = "kViewerAuthPreAuthorizedResponse error = %d";
              v64 = 870;
              goto LABEL_174;
            }

            v130 = v129;
            v131 = sub_1000423E0();
            if (v131)
            {
              v132 = sub_100042E68(v131);
              if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v150 = "HandleAuthTypeMessage";
                v151 = 1024;
                v152 = 858;
                v153 = 1024;
                *v154 = v130;
                _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "[%s:%d] CCCryptorUpdate %d", buf, 0x18u);
              }
            }

            v62 = "HandleAuthTypeMessage";
            v141 = v130;
            v63 = "CCCryptorUpdate %d";
            v64 = 858;
          }
        }

        v104 = 5;
        goto LABEL_175;
      }

      goto LABEL_42;
    }

    dataOutMoved[0] = 0;
    v24 = sub_1000423E0();
    if (v24)
    {
      v25 = sub_100042E68(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v150 = "ReadViewerProtocolVersion";
        v151 = 1024;
        v152 = 1254;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] read viewer version", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1254, "ReadViewerProtocolVersion", 7, 0, "read viewer version");
    if (sub_10003ABCC(self->viewer.ndata) >= 0xC)
    {
      sub_1000402B4(dataOutMoved);
      if (LODWORD(dataOutMoved[0]) - self->viewer.lastCommunicationTimeLo <= 0x2710)
      {
        self->viewer.lowLatencyConnectionFlag = 1;
      }

      v42 = sub_1000423E0();
      if (v42)
      {
        v43 = sub_100042E68(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = LODWORD(dataOutMoved[0]) - self->viewer.lastCommunicationTimeLo;
          *buf = 136315650;
          v150 = "ReadViewerProtocolVersion";
          v151 = 1024;
          v152 = 1266;
          v153 = 1024;
          *v154 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%s:%d] got viewer version: time = %u", buf, 0x18u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1266, "ReadViewerProtocolVersion", 7, 0, "got viewer version: time = %u", LODWORD(dataOutMoved[0]) - self->viewer.lastCommunicationTimeLo);
      self->viewer.lastCommunicationTimeLo = dataOutMoved[0];
      sub_100039EA8(self->viewer.ndata, 0xCu, dataOut);
      p_viewerMinorVersion = &self->viewer.viewerMinorVersion;
      if (sscanf(dataOut, "RFB %3u.%3u\n", &self->viewer.viewerMajorVersion, &self->viewer.viewerMinorVersion) == 2)
      {
        v46 = sub_1000423E0();
        if (v46)
        {
          v47 = sub_100042E68(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            viewerMajorVersion = self->viewer.viewerMajorVersion;
            v49 = *p_viewerMinorVersion;
            *buf = 136315906;
            v150 = "ReadViewerProtocolVersion";
            v151 = 1024;
            v152 = 1277;
            v153 = 1024;
            *v154 = viewerMajorVersion;
            *&v154[4] = 1024;
            *&v154[6] = v49;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%s:%d] RFB viewer version: %u.%u", buf, 0x1Eu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1277, "ReadViewerProtocolVersion", 7, 0, "RFB viewer version: %u.%u", self->viewer.viewerMajorVersion, self->viewer.viewerMinorVersion);
        self->viewer.VersionRFB3dot888Viewer = 0;
        self->viewer.enhancedViewer = 0;
        if (self->viewer.viewerMajorVersion == 3)
        {
          v50 = *p_viewerMinorVersion;
          if ((*p_viewerMinorVersion & 0xFFFFFFFE) == 0x378)
          {
            self->viewer.enhancedViewer = 1;
            if (v50 == 888)
            {
              self->viewer.VersionRFB3dot888Viewer = 1;
            }
          }
        }

        if ([qword_100070AA0 sessionType] == 1)
        {
          self->viewer.state = 1;
        }
      }

      if ([(VNCServer *)self sessionType]== 1)
      {
        readyToAuthSemaphore = self->_readyToAuthSemaphore;
        v52 = dispatch_time(0, 600000000000);
        dispatch_semaphore_wait(readyToAuthSemaphore, v52);
        v53 = sub_1000423E0();
        if (v53)
        {
          v54 = sub_100042E68(v53);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "[VNCServer consumeMessage]";
            v151 = 1024;
            v152 = 459;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%s:%d] done waiting", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 459, "[VNCServer consumeMessage]", 7, 0, "done waiting");
        v55 = sub_1000423E0();
        if (v55)
        {
          v56 = sub_100042E68(v55);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "SendAuthenticationInfoMessage";
            v151 = 1024;
            v152 = 1320;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[%s:%d] SendAuthenticationInfoMessage", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1320, "SendAuthenticationInfoMessage", 7, 0, "SendAuthenticationInfoMessage");
        v57 = sub_1000423E0();
        if (v57)
        {
          v58 = sub_100042E68(v57);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v150 = "SendAuthenticationInfoMessage";
            v151 = 1024;
            v152 = 1323;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer is pre-authorized", buf, 0x12u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1323, "SendAuthenticationInfoMessage", 7, 0, "viewer is pre-authorized");
        self->viewer.preauthorizedFlag = 1;
        *buf = 8705;
        sub_10002DA9C(&self->viewer, buf, 2);
        self->viewer.state = 1;
        self->viewer.authState = 2;
        v59 = 3;
        goto LABEL_183;
      }

LABEL_182:
      v59 = 4;
LABEL_183:
      self->state = v59;
      return;
    }

    v26 = sub_1000423E0();
    if (v26)
    {
      v27 = sub_100042E68(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v150 = "[VNCServer consumeMessage]";
        v151 = 1024;
        v152 = 453;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer version not available yet", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 453, "[VNCServer consumeMessage]", 7, 0, "viewer version not available yet");
    return;
  }

  if (state == 4)
  {
    v28 = sub_1000423E0();
    if (v28)
    {
      v29 = sub_100042E68(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v150 = "[VNCServer consumeMessage]";
        v151 = 1024;
        v152 = 481;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%s:%d] security result", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 481, "[VNCServer consumeMessage]", 7, 0, "security result");
    sub_100039EA8(self->viewer.ndata, 1u, &self->viewer.viewerInitializationFlags);
    self->viewer.viewerWantsExtendedServerInfo = 0;
    if (self->viewer.enhancedViewer && self->viewer.viewerInitializationFlags < 0)
    {
      self->viewer.viewerWantsExtendedServerInfo = 1;
    }

    v30 = sub_1000423E0();
    if (v30)
    {
      v31 = sub_100042E68(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        viewerInitializationFlags = self->viewer.viewerInitializationFlags;
        *buf = 136315650;
        v150 = "HandleViewerInitialization";
        v151 = 1024;
        v152 = 1114;
        v153 = 1024;
        *v154 = viewerInitializationFlags;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewerInitializationFlags 0x%x", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1114, "HandleViewerInitialization", 7, 0, "viewerInitializationFlags 0x%x", self->viewer.viewerInitializationFlags);
    HIDWORD(xmmword_100070B00) = 0;
    *(&xmmword_100070B00 + 5) = 0;
    BYTE4(xmmword_100070B00) = 80;
    LODWORD(xmmword_100070B00) = -1073553232;
    machineName = [qword_100070AA0 machineName];
    uTF8String = [machineName UTF8String];

    v35 = strlen(uTF8String);
    v36 = sub_1000423E0();
    if (v36)
    {
      v37 = sub_100042E68(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v150 = "SendServerInitialiation";
        v151 = 1024;
        v152 = 1159;
        v153 = 1024;
        *v154 = v35;
        *&v154[4] = 2080;
        *&v154[6] = uTF8String;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%s:%d] machineNameLen %d  machine name %s", buf, 0x22u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1159, "SendServerInitialiation", 7, 0, "machineNameLen %d  machine name %s", v35, uTF8String);
    if (self->viewer.viewerWantsExtendedServerInfo)
    {
      v38 = malloc_type_calloc(1uLL, v35 + 46, 0xB4FDD7C6uLL);
      if (v38)
      {
        v39 = v38;
        v40 = v35 + 22;
        *(v38 + 12) = 0;
        v41 = self->viewer.observeFlag != 0;
        *(v38 + 26) = v41;
        if (self->viewer.absControlFlag)
        {
          v41 |= 2u;
          *(v38 + 26) = v41;
        }

        *(v38 + 30) = xmmword_100070B00;
        v38[31] |= 8u;
        memcpy(v38 + 46, uTF8String, v35);
        v39[5] = bswap32(v40);
        *(v39 + 26) = bswap32(v41);
        v143 = v35 + 46;
        goto LABEL_122;
      }
    }

    else
    {
      v65 = malloc_type_calloc(1uLL, v35 + 24, 0x557101CDuLL);
      if (v65)
      {
        v39 = v65;
        memcpy(v65 + 24, uTF8String, v35);
        v39[5] = bswap32(v35);
        v66 = sub_1000423E0();
        if (v66)
        {
          v67 = sub_100042E68(v66);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v150 = "SendServerInitialiation";
            v151 = 1024;
            v152 = 1205;
            v153 = 1024;
            *v154 = v35;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%s:%d] normal server init length = %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1205, "SendServerInitialiation", 7, 0, "normal server init length = %d", v35);
        v143 = v35 + 24;
        v40 = v35;
LABEL_122:
        v68 = +[UIScreen mainScreen];
        [v68 nativeBounds];
        v70 = v69;

        v71 = v70 >> 1;
        v72 = +[UIScreen mainScreen];
        [v72 nativeBounds];
        v74 = v73;

        v75 = v74 >> 1;
        v76 = sub_1000423E0();
        if (v76)
        {
          v77 = sub_100042E68(v76);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v150 = "SendServerInitialiation";
            v151 = 1024;
            v152 = 1222;
            v153 = 1024;
            *v154 = v70 >> 1;
            *&v154[4] = 1024;
            *&v154[6] = v74 >> 1;
            *&v154[10] = 2048;
            *&v154[12] = 0x3FF0000000000000;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%s:%d] at init pixel width %u pixel height %u  scale factor %f", buf, 0x28u);
          }
        }

        v78 = v40;
        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1222, "SendServerInitialiation", 7, 0, "at init pixel width %u pixel height %u  scale factor %f", v70 >> 1, v74 >> 1, 1.0);
        v79 = sub_1000423E0();
        v80 = (v70 >> 1);
        v81 = (v74 >> 1);
        if (v79)
        {
          v82 = sub_100042E68(v79);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v150 = "SendServerInitialiation";
            v151 = 1024;
            v152 = 1224;
            v153 = 1024;
            *v154 = v80;
            *&v154[4] = 1024;
            *&v154[6] = v81;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "[%s:%d] width = %d  height = %d", buf, 0x1Eu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1224, "SendServerInitialiation", 7, 0, "width = %d  height = %d", v80, v81);
        self->viewer.lastWidth = v71;
        self->viewer.lastHeight = v75;
        *&self->viewer.lastGlobalOriginX = 0;
        *v39 = bswap32(v71) >> 16;
        *(v39 + 1) = bswap32(v75) >> 16;
        v83 = sub_1000423E0();
        if (v83)
        {
          v84 = sub_100042E68(v83);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v150 = "SendServerInitialiation";
            v151 = 1024;
            v152 = 1238;
            v153 = 1024;
            *v154 = v143;
            *&v154[4] = 1024;
            *&v154[6] = v78;
            *&v154[10] = 1024;
            *&v154[12] = v35;
            *&v154[16] = 2048;
            *&v154[18] = 46;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "[%s:%d] server init size %d extralen %d machineNamelen %d RFBServerInfo2 %lu", buf, 0x2Eu);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1238, "SendServerInitialiation", 7, 0, "server init size %d extralen %d machineNamelen %d RFBServerInfo2 %lu", v143, v78, v35, 46);
        v85 = sub_10002DA9C(&self->viewer, v39, v143);
        free(v39);
        v86 = sub_1000423E0();
        if (v86)
        {
          v87 = sub_100042E68(v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            translatedPixelSize = self->viewer.translatedPixelSize;
            trans_func = self->viewer.trans_func;
            *buf = 136315906;
            v150 = "SendServerInitialiation";
            v151 = 1024;
            v152 = 1242;
            v153 = 1024;
            *v154 = translatedPixelSize;
            *&v154[4] = 2048;
            *&v154[6] = trans_func;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[%s:%d] viewer->translatedPixelSize %d  viewer->trans_func %p", buf, 0x22u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1242, "SendServerInitialiation", 7, 0, "viewer->translatedPixelSize %d  viewer->trans_func %p", self->viewer.translatedPixelSize, self->viewer.trans_func);
        self->viewer.lastDepth = 32;
        if (!v85)
        {
          self->viewer.state = 4;
LABEL_146:
          v92 = sub_1000423E0();
          if (v92)
          {
            v93 = sub_100042E68(v92);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = self->viewer.state;
              *buf = 136315650;
              v150 = "HandleViewerInitialization";
              v151 = 1024;
              v152 = 1124;
              v153 = 1024;
              *v154 = v94;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "[%s:%d] sent server initialization viewer state %d", buf, 0x18u);
            }
          }

          sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1124, "HandleViewerInitialization", 7, 0, "sent server initialization viewer state %d", self->viewer.state);
          v59 = 6;
          goto LABEL_183;
        }

LABEL_141:
        v90 = sub_1000423E0();
        if (v90)
        {
          v91 = sub_100042E68(v90);
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v150 = "HandleViewerInitialization";
            v151 = 1024;
            v152 = 1122;
            v153 = 1024;
            *v154 = v85;
            _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "[%s:%d] error in initialization %d", buf, 0x18u);
          }
        }

        sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 1122, "HandleViewerInitialization", 3, 0, "error in initialization %d", v85);
        goto LABEL_146;
      }
    }

    v85 = -2;
    goto LABEL_141;
  }

  if (state != 6)
  {
LABEL_42:
    v21 = sub_1000423E0();
    if (v21)
    {
      v22 = sub_100042E68(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = self->state;
        *buf = 136315650;
        v150 = "[VNCServer consumeMessage]";
        v151 = 1024;
        v152 = 507;
        v153 = 1024;
        *v154 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%s:%d] unknown state: %d ", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 507, "[VNCServer consumeMessage]", 3, 0, "unknown state: %d ");
    return;
  }

  sub_1000361DC(&self->viewer, self);
  if (self->viewer.updateDisplayInfoFlag)
  {
    self->viewer.updateDisplayInfoFlag = 0;
    v19 = sub_1000423E0();
    if (v19)
    {
      v20 = sub_100042E68(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v150 = "CheckToSendDisplayInfo";
        v151 = 1024;
        v152 = 379;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%s:%d] updateDisplayInfoFlag set", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 379, "CheckToSendDisplayInfo", 7, 0, "updateDisplayInfoFlag set");
    if (self->viewer.sendDisplayInfoFlag)
    {
      sub_100030E90(&self->viewer);
    }

    else if (self->viewer.sendDesktopSizeFlag)
    {
      v95 = sub_1000423E0();
      if (v95)
      {
        v96 = sub_100042E68(v95);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v150 = "CheckToSendDisplayInfo";
          v151 = 1024;
          v152 = 388;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "[%s:%d] EncodeDesktopSize", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 388, "CheckToSendDisplayInfo", 7, 0, "EncodeDesktopSize");
    }
  }

  if (self->viewer.sendResolutionChange)
  {
    v97 = sub_1000423E0();
    if (v97)
    {
      v98 = sub_100042E68(v97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        screenScaleFactor = self->viewer.screenScaleFactor;
        *buf = 136315650;
        v150 = "[VNCServer consumeMessage]";
        v151 = 1024;
        v152 = 494;
        v153 = 2048;
        *v154 = screenScaleFactor;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "[%s:%d] send resolution changed  scale factor %f", buf, 0x1Cu);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 494, "[VNCServer consumeMessage]", 7, 0, "send resolution changed  scale factor %f", self->viewer.screenScaleFactor);
    sub_100030E90(&self->viewer);
    self->viewer.sendResolutionChange = 0;
  }

  if (self->viewer.viewerFrameUpdateRequest == 2)
  {
    v100 = sub_1000423E0();
    if (v100)
    {
      v101 = sub_100042E68(v100);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v150 = "[VNCServer consumeMessage]";
        v151 = 1024;
        v152 = 500;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[%s:%d] got frame update request", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 500, "[VNCServer consumeMessage]", 7, 0, "got frame update request");
    self->viewer.viewerFrameUpdateRequest = 0;
  }
}

- (void)notificationHandler:(id)handler
{
  name = [handler name];
  v5 = [name isEqualToString:@"TouchEventUpdate"];

  if (v5)
  {

    [(VNCServer *)self handleTouchEventUpdate];
  }
}

- (void)handleTouchEventUpdate
{
  if (sub_100040464())
  {
    v3 = sub_1000423E0();
    if (v3)
    {
      v4 = sub_100042E68(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "[VNCServer handleTouchEventUpdate]";
        v28 = 1024;
        v29 = 534;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen sharing is paused", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 534, "[VNCServer handleTouchEventUpdate]", 7, 0, "screen sharing is paused");
LABEL_13:
    +[TouchEventMonitor removeAllTouchPositions];
    v7 = 0;
    goto LABEL_14;
  }

  if ([(VNCServer *)self screenLocked])
  {
    v5 = sub_1000423E0();
    if (v5)
    {
      v6 = sub_100042E68(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "[VNCServer handleTouchEventUpdate]";
        v28 = 1024;
        v29 = 541;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%s:%d] screen is locked", buf, 0x12u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 541, "[VNCServer handleTouchEventUpdate]", 7, 0, "screen is locked");
    goto LABEL_13;
  }

  v7 = +[TouchEventMonitor copyCurrentTouchPositions];
  if (v7)
  {
    v8 = malloc_type_calloc(1uLL, 0x206uLL, 0x108004043D1B9D8uLL);
    v9 = 0;
    v10 = 0;
    *(v8 + 8) = 256;
    *(v8 + 18) = 0;
    *(v8 + 26) = 1375993856;
    *(v8 + 3) = 32;
    *(v8 + 16) = 256;
    v11 = v8 + 38;
    v12 = v8 + 38;
    do
    {
      v13 = &v7[v9];
      if (v7[v9].var3)
      {
        *v12 = bswap64(*v13);
        v12[1] = bswap64(v13[1]);
        v12[2] = bswap64(v13[2]);
        v12 += 3;
        ++v10;
      }

      ++v9;
    }

    while ((v9 * 32) != 640);
    v14 = sub_1000423E0();
    if (v14)
    {
      v15 = sub_100042E68(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v27 = "[VNCServer handleTouchEventUpdate]";
        v28 = 1024;
        v29 = 581;
        v30 = 1024;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%s:%d] touchcount %d", buf, 0x18u);
      }
    }

    sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 581, "[VNCServer handleTouchEventUpdate]", 7, 0, "touchcount %d", v10);
    *(v8 + 18) = v10 << 8;
    v16 = 24 * v10;
    *(v8 + 15) = __rev16(v16 | 6);
    v17 = (v16 + 24);
    *(v8 + 2) = v17;
    if (self->_lastTouchInfoSize == v17 && !bcmp(self->_lastTouchInfo, v11, v17))
    {
      v22 = sub_1000423E0();
      if (v22)
      {
        v23 = sub_100042E68(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[VNCServer handleTouchEventUpdate]";
          v28 = 1024;
          v29 = 592;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%s:%d] touch data is the same - ignore", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 592, "[VNCServer handleTouchEventUpdate]", 7, 0, "touch data is the same - ignore");
      v24 = sub_1000423E0();
      if (v24)
      {
        v25 = sub_100042E68(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[VNCServer handleTouchEventUpdate]";
          v28 = 1024;
          v29 = 648;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%s:%d] duplicate", buf, 0x12u);
        }
      }

      sub_100042760("/Library/Caches/com.apple.xbs/Sources/EmbeddedScreenSharingServer/iOS/ScreenSharingServer/VNCServer.m", 102, 648, "[VNCServer handleTouchEventUpdate]", 7, 0, "duplicate");
LABEL_40:
      free(v8);
    }

    else
    {
      free(self->_lastTouchInfo);
      self->_lastTouchInfoSize = v16;
      v18 = malloc_type_malloc(v16, 0x29AF84BFuLL);
      self->_lastTouchInfo = v18;
      memcpy(v18, v11, self->_lastTouchInfoSize);
      sendInfo = self->viewer.sendInfo;
      [0 lock];
      [*(sendInfo + 4) lock];
      v20 = sendInfo + 8;
      while (1)
      {
        v20 = *v20;
        if (!v20)
        {
          break;
        }

        if ((*(v20 + 6) & 0x20) != 0)
        {
          memcpy(v20 + 14, v8 + 14, *(v8 + 2));
          v21 = *(v8 + 2);
          *(sendInfo + 399) = *(sendInfo + 399) - *(v20 + 2) + v21;
          *(v20 + 2) = v21;
          [*(sendInfo + 4) unlock];
          [0 unlock];
          goto LABEL_40;
        }
      }

      [*(sendInfo + 4) unlock];
      [0 unlock];
      sub_10002E738(&self->viewer, v8);
    }
  }

LABEL_14:
  free(v7);
}

@end