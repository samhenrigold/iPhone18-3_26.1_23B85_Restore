@interface IMPingTest
- (IMPingTest)initWithAddress:(id)address wifi:(BOOL)wifi;
- (int)_setupAndPerformPing:(double)ping queue:(id)queue completionHandler:(id)handler;
- (void)_doPingWithSocket:(int)socket address:(sockaddr_in)address timeToRunTestInSeconds:(double)seconds pingTimeout:(double)timeout queue:(id)queue completionHandler:(id)handler;
- (void)_setupReadSource:(int)source address:(sockaddr_in)address icmID:(unsigned __int16)d queue:(id)queue completionHander:(id)hander;
- (void)dealloc;
- (void)startWithTimeout:(double)timeout queue:(id)queue completionHandler:(id)handler;
- (void)stop;
@end

@implementation IMPingTest

- (IMPingTest)initWithAddress:(id)address wifi:(BOOL)wifi
{
  addressCopy = address;
  v23.receiver = self;
  v23.super_class = IMPingTest;
  v8 = [(IMPingTest *)&v23 init];
  if (v8)
  {
    if (objc_msgSend_isEqualToString_(addressCopy, v7, IMPingTestDefaultGateway))
    {
      v11 = objc_msgSend_sharedInstance(NetworkChangeNotifier, v9, v10);
      v14 = objc_msgSend_myGatewayAddress(v11, v12, v13);
      v17 = objc_msgSend_copy(v14, v15, v16);
      address = v8->_address;
      v8->_address = v17;
    }

    else
    {
      v19 = objc_msgSend_copy(addressCopy, v9, v10);
      v11 = v8->_address;
      v8->_address = v19;
    }

    v8->_usesWifi = wifi;
    v20 = objc_alloc_init(_IMPingStatisticsCollector);
    collector = v8->_collector;
    v8->_collector = v20;
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_stop(self, a2, v2);
  v4.receiver = self;
  v4.super_class = IMPingTest;
  [(IMPingTest *)&v4 dealloc];
}

- (void)startWithTimeout:(double)timeout queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (!queueCopy)
  {
    queueCopy = dispatch_queue_create("com.apple.imcore.impingtest", 0);
  }

  v12 = objc_msgSend_copy(handlerCopy, v9, v10);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isRunning = selfCopy->_isRunning;
  if (!isRunning)
  {
    selfCopy->_secondsToRun = timeout;
    selfCopy->_isRunning = 1;
  }

  objc_sync_exit(selfCopy);

  if (queueCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1959D1EC4;
    block[3] = &unk_1E7439CE0;
    v19 = !isRunning;
    block[4] = selfCopy;
    timeoutCopy = timeout;
    v16 = queueCopy;
    v17 = v12;
    dispatch_async(v16, block);
  }
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isRunning = 0;
  sendTimer = obj->_sendTimer;
  if (sendTimer)
  {
    dispatch_source_cancel(sendTimer);
    v3 = obj->_sendTimer;
    obj->_sendTimer = 0;
  }

  socketReadSource = obj->_socketReadSource;
  if (socketReadSource)
  {
    dispatch_source_cancel(socketReadSource);
    v5 = obj->_socketReadSource;
    obj->_socketReadSource = 0;
  }

  objc_sync_exit(obj);
}

- (int)_setupAndPerformPing:(double)ping queue:(id)queue completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  if (self->_isRunning)
  {
    v12 = objc_msgSend_UTF8String(self->_address, v9, v10);
    if (v12)
    {
      v13 = v12;
      LODWORD(v38) = 0;
      v39 = 0;
      HIDWORD(v38) = inet_addr(v12);
      if (HIDWORD(v38) == -1)
      {
        v15 = gethostbyname(v13);
        if (!v15)
        {
          v14 = 65;
          goto LABEL_22;
        }

        BYTE1(v38) = v15->h_addrtype;
        __memcpy_chk();
      }

      else
      {
        BYTE1(v38) = 2;
      }

      usesWifi = self->_usesWifi;
      v35 = 51200;
      v34[1] = 0xAAAAAAAA00000000;
      v17 = getprotobyname("icmp");
      if (v17)
      {
        v18 = socket(2, 2, v17->p_proto);
        v14 = 1;
        if ((v18 & 0x80000000) == 0)
        {
          v19 = v18;
          fcntl(v18, 4, 4);
          setsockopt(v19, 0xFFFF, 4098, &v35, 4u);
          v37 = 1;
          if (usesWifi)
          {
            setsockopt(v19, 0, 6969, &v37, 4u);
          }

          else
          {
            v20 = objc_autoreleasePoolPush();
            v21 = IMPCInterfaceName();
            v22 = CFRetain(v21);
            v25 = objc_msgSend_length(v22, v23, v24);
            v26 = @"pdp_ip0";
            if (v25)
            {
              v26 = v22;
            }

            v27 = v26;

            v28 = v27;
            v31 = objc_msgSend_UTF8String(v28, v29, v30);

            v36 = if_nametoindex(v31);
            setsockopt(v19, 0, 25, &v36, 4u);
            objc_autoreleasePoolPop(v20);
          }

          v34[0] = 1;
          if (!setsockopt(v19, 0xFFFF, 4102, v34, 0x10u))
          {
            goto LABEL_20;
          }

          close(v19);
          v14 = *__error();
          if (!v14)
          {
            v19 = 0xFFFFFFFFLL;
LABEL_20:
            objc_msgSend__doPingWithSocket_address_timeToRunTestInSeconds_pingTimeout_queue_completionHandler_(self, v32, v19, v38, v39, queueCopy, handlerCopy, ping, 2.0);
            v14 = 0;
          }
        }
      }

      else
      {
        v14 = 46;
      }
    }

    else
    {
      v14 = 22;
    }
  }

  else
  {
    v14 = 4;
  }

LABEL_22:

  return v14;
}

- (void)_doPingWithSocket:(int)socket address:(sockaddr_in)address timeToRunTestInSeconds:(double)seconds pingTimeout:(double)timeout queue:(id)queue completionHandler:(id)handler
{
  v11 = *address.sin_zero;
  v12 = *&address.sin_len;
  v13 = *&socket;
  v40 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v17 = IMTimeOfDay();
  v18 = self->_collector;
  v19 = arc4random();
  if (queueCopy)
  {
    v21 = v19 % 0xFFFF;
    objc_msgSend__setupReadSource_address_icmID_queue_completionHander_(self, v20, v13, v12, v11, v19 % 0xFFFF, queueCopy, handlerCopy);
    v22 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    sendTimer = self->_sendTimer;
    self->_sendTimer = v22;

    v24 = self->_sendTimer;
    if (v24)
    {
      v25 = dispatch_walltime(0, 0);
      dispatch_source_set_timer(v24, v25, 0x3B9ACA00uLL, 0x5F5E100uLL);
      v26 = self->_sendTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1959D2530;
      handler[3] = &unk_1E7439D08;
      v33 = v17;
      secondsCopy = seconds;
      v36 = v12;
      v37 = v11;
      handler[4] = self;
      v32 = v28;
      v38 = v13;
      v39 = v21;
      v31 = v18;
      timeoutCopy = timeout;
      dispatch_source_set_event_handler(v26, handler);
      dispatch_resume(self->_sendTimer);
      socketReadSource = self->_socketReadSource;
      if (socketReadSource)
      {
        dispatch_resume(socketReadSource);
      }
    }
  }

  _Block_object_dispose(v28, 8);
}

- (void)_setupReadSource:(int)source address:(sockaddr_in)address icmID:(unsigned __int16)d queue:(id)queue completionHander:(id)hander
{
  v9 = *address.sin_zero;
  v10 = *&address.sin_len;
  v27 = *MEMORY[0x1E69E9840];
  handerCopy = hander;
  v14 = dispatch_source_create(MEMORY[0x1E69E96F8], source, 0, queue);
  socketReadSource = self->_socketReadSource;
  self->_socketReadSource = v14;

  v16 = self->_socketReadSource;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1959D2890;
  v19[3] = &unk_1E7439D30;
  sourceCopy = source;
  v19[4] = self;
  v20 = handerCopy;
  v17 = handerCopy;
  dispatch_source_set_cancel_handler(v16, v19);
  v18 = self->_socketReadSource;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1959D293C;
  handler[3] = &unk_1E7439D58;
  handler[4] = self;
  sourceCopy2 = source;
  v24 = v10;
  v25 = v9;
  dCopy = d;
  dispatch_source_set_event_handler(v18, handler);
}

@end