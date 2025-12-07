@interface CSCompanionService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)syncget_isCompanionConnected;
- (BOOL)syncget_isCompanionPaired;
- (CSCompanionService)init;
- (void)beginService;
- (void)messageHandler:(int)handler data:(id)data timestamp:(double)timestamp;
- (void)notifyCompanionOfForwardMsgCompatibility;
- (void)notifyCompanionOfLocalCrash:(id)crash forMode:(int)mode martyIsBicycle:(BOOL)bicycle;
- (void)onCompanionConnectionStatusUpdate:(int)update cftime:(double)cftime sputime:(unint64_t)sputime;
- (void)queryCompanion:(int)companion;
- (void)registerClient:(id)client;
- (void)returnQueryToCompanion:(id)companion;
- (void)sendData:(id)data type:(int)type;
- (void)sendTestTrigger;
- (void)statusHandler:(BOOL)handler pairedDevice:(id)device timestamp:(double)timestamp;
- (void)testTriggerHandler:(double)handler;
- (void)unregisterClient:(id)client;
@end

@implementation CSCompanionService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  blockedCopy = blocked;
  v5 = index + 1;
  if (v5 < [blockedCopy count])
  {
    [objc_msgSend(blockedCopy objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blockedCopy, v5}];
  }
}

+ (id)getSilo
{
  if (qword_100458918 != -1)
  {
    sub_10034BC18();
  }

  v3 = qword_100458910;

  return v3;
}

- (CSCompanionService)init
{
  v3.receiver = self;
  v3.super_class = CSCompanionService;
  return [(CSCompanionService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CSCompanionServiceIBProtocol outboundProtocol:&OBJC_PROTOCOL___CSCompanionServiceClientProtocol];
}

- (void)beginService
{
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "beginService", buf, 2u);
  }

  v4 = [[NSHashTable alloc] initWithOptions:5 capacity:0];
  clients = self->_clients;
  self->_clients = v4;

  _companionCompatibility = 0;
  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100349FA0;
  v6[3] = &unk_1004360B0;
  objc_copyWeak(&v7, buf);
  v6[4] = self;
  [IDSService serviceWithIdentifier:@"com.apple.private.alloy.kappa" completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)statusHandler:(BOOL)handler pairedDevice:(id)device timestamp:(double)timestamp
{
  handlerCopy = handler;
  deviceCopy = device;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v9 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "statusHandler", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  clients = [(CSCompanionService *)self clients];
  v11 = [clients countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(clients);
        }

        [*(*(&v14 + 1) + 8 * i) onCompanionStatusUpdate:handlerCopy pairedDevice:deviceCopy updatedTimestamp:timestamp];
      }

      v11 = [clients countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)testTriggerHandler:(double)handler
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  clients = [(CSCompanionService *)self clients];
  v4 = [clients countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(clients);
      }

      if (qword_100456868 != -1)
      {
        sub_10034BBF0();
      }

      v6 = qword_100456870;
      if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
      {
        v7[0] = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "testTriggerHandler", v7, 2u);
      }

      if (!--v4)
      {
        v4 = [clients countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }
}

- (void)messageHandler:(int)handler data:(id)data timestamp:(double)timestamp
{
  v6 = *&handler;
  dataCopy = data;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v9 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "messageHandler", buf, 2u);
  }

  if (v6 == 11 && !_companionCompatibility)
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v10 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Determined that companion is forward compatible", buf, 2u);
    }

    _companionCompatibility = 1;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  clients = [(CSCompanionService *)self clients];
  v12 = [clients countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(clients);
        }

        [*(*(&v15 + 1) + 8 * i) onCompanionMessage:v6 data:dataCopy receivedTimestamp:timestamp];
      }

      v12 = [clients countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)onCompanionConnectionStatusUpdate:(int)update cftime:(double)cftime sputime:(unint64_t)sputime
{
  v7 = *&update;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v9 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "onCompanionConnectionStatusUpdate %d", buf, 8u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  clients = [(CSCompanionService *)self clients];
  v11 = [clients countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(clients);
        }

        [*(*(&v14 + 1) + 8 * i) onCompanionConnectionStatusUpdate:v7 cftime:sputime sputime:cftime];
      }

      v11 = [clients countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v5 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "registerClient", v6, 2u);
  }

  [(NSHashTable *)self->_clients addObject:clientCopy];
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v5 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "unregisterClient", v6, 2u);
  }

  [(NSHashTable *)self->_clients removeObject:clientCopy];
}

- (BOOL)syncget_isCompanionConnected
{
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "isCompanionConnected", v5, 2u);
  }

  [(CompanionDelegate *)self->_delegate updateIDSStatus];
  return [(CompanionDelegate *)self->_delegate isConnected];
}

- (BOOL)syncget_isCompanionPaired
{
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "isCompanionPaired", v7, 2u);
  }

  [(CompanionDelegate *)self->_delegate updateIDSStatus];
  pairedDevice = [(CompanionDelegate *)self->_delegate pairedDevice];
  isLocallyPaired = [pairedDevice isLocallyPaired];

  return isLocallyPaired;
}

- (void)notifyCompanionOfLocalCrash:(id)crash forMode:(int)mode martyIsBicycle:(BOOL)bicycle
{
  bicycleCopy = bicycle;
  crashCopy = crash;
  if (!mode)
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBDC();
    }

    v13 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "invalid mode", buf, 2u);
    }

    goto LABEL_23;
  }

  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v9 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "notifyCompanionOfLocalCrash", buf, 2u);
  }

  *buf = 0;
  v18 = 0;
  if (crashCopy)
  {
    [crashCopy getUUIDBytes:buf];
    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v10 = qword_100456870;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      uUIDString = [crashCopy UUIDString];
      *v16 = 138412290;
      *&v16[4] = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Test UUID bytes %@", v16, 0xCu);
    }
  }

  if (mode == 1)
  {
    v12 = 6;
LABEL_22:
    delegate = self->_delegate;
    v15 = [NSData dataWithBytes:buf length:16];
    [(CompanionDelegate *)delegate sendData:v15 type:v12];

LABEL_23:
    return;
  }

  if (mode == 2)
  {
    if (bicycleCopy)
    {
      v12 = 306;
    }

    else
    {
      v12 = 305;
    }

    goto LABEL_22;
  }

  sub_10034BC2C(v16);

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyCompanion/CSCompanionService.mm", 478, "[CSCompanionService notifyCompanionOfLocalCrash:forMode:martyIsBicycle:]");
  __break(1u);
}

- (void)notifyCompanionOfForwardMsgCompatibility
{
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "notifyCompanionOfForwardMsgCompatibility", buf, 2u);
  }

  v6 = 1;
  delegate = self->_delegate;
  v5 = [NSData dataWithBytes:&v6 length:4];
  [(CompanionDelegate *)delegate sendData:v5 type:11];
}

- (void)queryCompanion:(int)companion
{
  companionCopy = companion;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v5 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    companionCopy2 = companion;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "queryCompanion type:%d", buf, 8u);
  }

  delegate = self->_delegate;
  v7 = [NSData dataWithBytes:&companionCopy length:4];
  [(CompanionDelegate *)delegate sendData:v7 type:9];
}

- (void)returnQueryToCompanion:(id)companion
{
  companionCopy = companion;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v5 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "returnQueryToCompanion", v6, 2u);
  }

  [(CompanionDelegate *)self->_delegate sendData:companionCopy type:10];
}

- (void)sendData:(id)data type:(int)type
{
  v4 = *&type;
  dataCopy = data;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v7 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "sendMessage: type: %d", v8, 8u);
  }

  [(CompanionDelegate *)self->_delegate sendData:dataCopy type:v4];
}

- (void)sendTestTrigger
{
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v3 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sendTestTrigger", v4, 2u);
  }

  [(CompanionDelegate *)self->_delegate sendData:0 type:0];
}

@end