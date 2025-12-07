@interface PDURLSessionProxyServerService
+ (id)sharedService;
- (PDURLSessionProxyServerService)init;
- (id)_onqueue_loggableDescriptionForMessage:(id)message;
- (id)_onqueue_sourceApplicationForMessage:(id)message;
- (int64_t)_onqueue_IDSTimoutForMessage:(id)message;
- (int64_t)_onqueue_priorityForMessage:(id)message ofType:(unsigned __int16)type isReply:(BOOL)reply;
- (void)_onqueue_handleFailedMessageSend:(id)send ofType:(unsigned __int16)type;
- (void)_onqueue_handleReceivedMessage:(id)message ofType:(unsigned __int16)type withReply:(id)reply;
- (void)_onqueue_remoteDeviceStartedUp;
- (void)dealloc;
- (void)proxyServerBecameInvalid:(id)invalid;
- (void)releaseBTLinkAssertion;
- (void)releaseInfraWiFi;
- (void)retainBTLinkAssertion;
- (void)retainInfraWiFi;
- (void)start;
@end

@implementation PDURLSessionProxyServerService

- (void)proxyServerBecameInvalid:(id)invalid
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DF08;
  v5[3] = &unk_1000D6420;
  invalidCopy = invalid;
  selfCopy = self;
  v4 = invalidCopy;
  [(PDURLSessionProxyService *)self withWorkQueue:v5];
}

- (void)_onqueue_handleFailedMessageSend:(id)send ofType:(unsigned __int16)type
{
  typeCopy = type;
  sendCopy = send;
  _nsurlsessionproxy_sessionIdentifier = [sendCopy _nsurlsessionproxy_sessionIdentifier];
  if (_nsurlsessionproxy_sessionIdentifier)
  {
    v7 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:_nsurlsessionproxy_sessionIdentifier];
    v8 = v7;
    if (v7)
    {
      [v7 handleFailedMessageSend:sendCopy ofType:typeCopy];
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)_onqueue_handleReceivedMessage:(id)message ofType:(unsigned __int16)type withReply:(id)reply
{
  typeCopy = type;
  messageCopy = message;
  replyCopy = reply;
  _nsurlsessionproxy_sessionIdentifier = [messageCopy _nsurlsessionproxy_sessionIdentifier];
  _nsurlsessionproxy_sessionUUID = [messageCopy _nsurlsessionproxy_sessionUUID];
  if (_nsurlsessionproxy_sessionIdentifier)
  {
    v10 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:_nsurlsessionproxy_sessionIdentifier];
    v11 = v10;
    if (typeCopy == 1 && v10)
    {
      uuidString = [(PDURLSessionProxyServer *)v10 uuidString];
      v13 = [uuidString isEqualToString:_nsurlsessionproxy_sessionUUID];

      if (v13)
      {
        v14 = qword_1000EB1D8;
        if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v34 = _nsurlsessionproxy_sessionIdentifier;
          *&v34[8] = 2112;
          *&v34[10] = _nsurlsessionproxy_sessionUUID;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "PDURLSessionProxyServerService received CreateSession message for identifier %@ with existing UUID %@. Ignoring message.", buf, 0x16u);
        }

LABEL_41:

        goto LABEL_42;
      }
    }

    else if (typeCopy != 1)
    {
      v24 = qword_1000EB1D8;
      if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v34 = typeCopy;
        *&v34[4] = 2112;
        *&v34[6] = _nsurlsessionproxy_sessionIdentifier;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PDURLSessionProxyServerService received message of type %u for session %@", buf, 0x12u);
      }

      if (v11)
      {
        [(PDURLSessionProxyServer *)v11 handleMessage:messageCopy ofType:typeCopy withReply:replyCopy];
      }

      else
      {
        v25 = qword_1000EB1D8;
        if (typeCopy == 8)
        {
          if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v34 = _nsurlsessionproxy_sessionIdentifier;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "PDURLSessionProxyServerService received Invalidate message for unknown session identifier %@, replying with BecameInvalid message", buf, 0xCu);
          }

          v26 = objc_opt_new();
          v27 = objc_opt_new();
          [v27 setSessionIdentifier:_nsurlsessionproxy_sessionIdentifier];
          _nsurlsessionproxy_sessionUUID2 = [messageCopy _nsurlsessionproxy_sessionUUID];
          [v27 setUuidString:_nsurlsessionproxy_sessionUUID2];

          [v26 setSession:v27];
          v29 = +[PDURLSessionProxyServerService sharedService];
          [v29 sendProtobufMessage:v26 ofType:1008 withReply:0];
        }

        else if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v34 = typeCopy;
          *&v34[4] = 2112;
          *&v34[6] = _nsurlsessionproxy_sessionIdentifier;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "NSURLSessionProxy message of type %u received for unknown session with identifier %@", buf, 0x12u);
        }

        v11 = 0;
      }

      goto LABEL_41;
    }

    v16 = messageCopy;
    v17 = qword_1000EB1D8;
    if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v34 = _nsurlsessionproxy_sessionIdentifier;
      *&v34[8] = 2112;
      *&v34[10] = _nsurlsessionproxy_sessionUUID;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PDURLSessionProxyServerService received CreateSession message for identifier %@ with UUID %@", buf, 0x16u);
    }

    if (v11)
    {
      [(PDURLSessionProxyServer *)v11 obliterate];
      [(NSMutableDictionary *)self->_sessions removeObjectForKey:_nsurlsessionproxy_sessionIdentifier];
    }

    session = [v16 session];
    _actualConfiguration = [v16 _actualConfiguration];
    supportsRedirects = [v16 supportsRedirects];
    v20 = supportsRedirects;
    if (![v16 hasDelegateImplementsWillSendRequest] || objc_msgSend(v16, "delegateImplementsWillSendRequest"))
    {
      v20 = supportsRedirects | 2;
    }

    if (![v16 hasDelegateImplementsSessionAuthChallenge] || objc_msgSend(v16, "delegateImplementsSessionAuthChallenge"))
    {
      v20 |= 4uLL;
    }

    if (![v16 hasDelegateImplementsTaskAuthChallenge] || objc_msgSend(v16, "delegateImplementsTaskAuthChallenge"))
    {
      v20 |= 8uLL;
    }

    if (![v16 hasDelegateImplementsWillPerformRedirection] || objc_msgSend(v16, "delegateImplementsWillPerformRedirection"))
    {
      v20 |= 0x10uLL;
    }

    if (![v16 hasDelegateImplementsDidReceiveResponse] || objc_msgSend(v16, "delegateImplementsDidReceiveResponse"))
    {
      v20 |= 0x20uLL;
    }

    v21 = [PDURLSessionProxyServer alloc];
    uuidString2 = [session uuidString];
    v23 = [(PDURLSessionProxyServer *)v21 initWithConfiguration:_actualConfiguration uuidString:uuidString2 options:v20 delegate:self];

    [(NSMutableDictionary *)self->_sessions setObject:v23 forKeyedSubscript:_nsurlsessionproxy_sessionIdentifier];
    replyCopy[2](replyCopy, v16);

    v11 = v23;
    goto LABEL_41;
  }

  v15 = qword_1000EB1D8;
  if (os_log_type_enabled(qword_1000EB1D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *v34 = typeCopy;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Received NSURLSessionProxy message of type %u without a session identifier", buf, 8u);
  }

LABEL_42:
}

- (id)_onqueue_loggableDescriptionForMessage:(id)message
{
  messageCopy = message;
  _nsurlsessionproxy_sessionIdentifier = [messageCopy _nsurlsessionproxy_sessionIdentifier];
  v6 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:_nsurlsessionproxy_sessionIdentifier];
  if (v6)
  {
    v7 = [v6 messageLoggableDescriptionForTaskWithIdentifier:{objc_msgSend(messageCopy, "_nsurlsessionproxy_taskIdentifier")}];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PDURLSessionProxyServerService;
    v7 = [(PDURLSessionProxyService *)&v10 _onqueue_loggableDescriptionForMessage:messageCopy];
  }

  v8 = v7;

  return v8;
}

- (int64_t)_onqueue_IDSTimoutForMessage:(id)message
{
  messageCopy = message;
  _nsurlsessionproxy_sessionIdentifier = [messageCopy _nsurlsessionproxy_sessionIdentifier];
  v6 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:_nsurlsessionproxy_sessionIdentifier];
  v7 = v6;
  if (v6)
  {
    iDSMessageTimeout = [v6 IDSMessageTimeout];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PDURLSessionProxyServerService;
    iDSMessageTimeout = [(PDURLSessionProxyService *)&v11 _onqueue_IDSTimoutForMessage:messageCopy];
  }

  v9 = iDSMessageTimeout;

  return v9;
}

- (id)_onqueue_sourceApplicationForMessage:(id)message
{
  _nsurlsessionproxy_sessionIdentifier = [message _nsurlsessionproxy_sessionIdentifier];
  v5 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:_nsurlsessionproxy_sessionIdentifier];
  v6 = v5;
  if (v5)
  {
    sourceApplicationBundleIdentifier = [v5 sourceApplicationBundleIdentifier];
  }

  else
  {
    sourceApplicationBundleIdentifier = 0;
  }

  return sourceApplicationBundleIdentifier;
}

- (int64_t)_onqueue_priorityForMessage:(id)message ofType:(unsigned __int16)type isReply:(BOOL)reply
{
  replyCopy = reply;
  typeCopy = type;
  messageCopy = message;
  _nsurlsessionproxy_sessionIdentifier = [messageCopy _nsurlsessionproxy_sessionIdentifier];
  v10 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:_nsurlsessionproxy_sessionIdentifier];
  if (v10)
  {
    v11 = [v10 messagePriorityForTaskWithIdentifier:objc_msgSend(messageCopy isReply:{"_nsurlsessionproxy_taskIdentifier"), replyCopy}];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PDURLSessionProxyServerService;
    v11 = [(PDURLSessionProxyService *)&v14 _onqueue_priorityForMessage:messageCopy ofType:typeCopy isReply:replyCopy];
  }

  v12 = v11;

  return v12;
}

- (void)_onqueue_remoteDeviceStartedUp
{
  [(NSMutableDictionary *)self->_sessions enumerateKeysAndObjectsUsingBlock:&stru_1000D5120];
  [(NSMutableDictionary *)self->_sessions removeAllObjects];
  v3.receiver = self;
  v3.super_class = PDURLSessionProxyServerService;
  [(PDURLSessionProxyService *)&v3 _onqueue_remoteDeviceStartedUp];
}

- (void)releaseBTLinkAssertion
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000EACC;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v2];
}

- (void)retainBTLinkAssertion
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000ECEC;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v2];
}

- (void)releaseInfraWiFi
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F4B0;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v2];
}

- (void)retainInfraWiFi
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F69C;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [(PDURLSessionProxyService *)self withWorkQueue:v2];
}

- (void)start
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F7B8;
  v2[3] = &unk_1000D63D0;
  v2[4] = self;
  [NSURLSession _obliterateAllBackgroundSessionsWithCompletionHandler:v2];
}

- (void)dealloc
{
  infraWiFiTimer = self->_infraWiFiTimer;
  if (infraWiFiTimer)
  {
    dispatch_source_cancel(infraWiFiTimer);
  }

  btLinkAssertionTimer = self->_btLinkAssertionTimer;
  if (btLinkAssertionTimer)
  {
    dispatch_source_cancel(btLinkAssertionTimer);
  }

  v5.receiver = self;
  v5.super_class = PDURLSessionProxyServerService;
  [(PDURLSessionProxyServerService *)&v5 dealloc];
}

- (PDURLSessionProxyServerService)init
{
  v6.receiver = self;
  v6.super_class = PDURLSessionProxyServerService;
  v2 = [(PDURLSessionProxyService *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    sessions = v2->_sessions;
    v2->_sessions = v3;

    v2->_infraWiFiRetainCount = 0;
    v2->_btLinkAssertionRetainCount = 0;
  }

  return v2;
}

+ (id)sharedService
{
  if (qword_1000EB100 != -1)
  {
    dispatch_once(&qword_1000EB100, &stru_1000D50E0);
  }

  v3 = qword_1000EB0F8;

  return v3;
}

@end