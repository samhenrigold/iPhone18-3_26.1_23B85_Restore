@interface FTMessageDelivery_APS
+ (id)sharedInstance;
- (BOOL)_fillMessageParameters:(id *)parameters ftMessage:(id *)message;
- (BOOL)_isBusyWithMessage:(id)message;
- (BOOL)_sendMessageAsynchronously:(id)asynchronously error:(id *)error;
- (BOOL)_shouldSendSOSForFailure:(id)failure;
- (BOOL)busy;
- (BOOL)sendMessage:(id)message;
- (BOOL)shouldFailFastForMessage:(id)message;
- (FTMessageDelivery_APS)initWithAPSConnection:(id)connection;
- (FTMessageDelivery_APS)initWithAPSConnection:(id)connection mobileNetworkManager:(id)manager;
- (id)_apsOutgoingMessageForFTMessage:(id)message;
- (id)_bodyForMessage:(id)message;
- (id)_getEnabledTopics;
- (id)_messageForAPSOutgoingMessage:(id)message;
- (id)_requiredTopicsWithUltraConstrainedTopics:(id *)topics;
- (id)allMessages;
- (int64_t)_retryCountForMessage:(id)message;
- (int64_t)maxLargeMessageSize;
- (int64_t)maxMessageSize;
- (void)_apsMessageBodyForMessage:(id)message completion:(id)completion;
- (void)_apsMessageForMessage:(id)message body:(id)body completion:(id)completion;
- (void)_clearMapForMessageID:(id)d;
- (void)_dequeueIfNeeded;
- (void)_invalidateDeathTimerForMessageID:(id)d;
- (void)_invalidateTimerForMessageID:(id)d;
- (void)_messageACKTimedOut:(id)out;
- (void)_messageAckGracePeriodTimedOut:(id)out;
- (void)_messageCompletelyTimedOut:(id)out;
- (void)_messageNeedsRetry:(id)retry;
- (void)_messageSendTimedOut:(id)out;
- (void)_noteMessageACKd:(id)kd ftMessage:(id)message;
- (void)_noteMessageFailed:(id)failed ftMessage:(id)message retryBehavior:(int)behavior error:(id)error;
- (void)_noteMessageSent:(id)sent ftMessage:(id)message body:(id)body;
- (void)_noteMessageSucceeded:(id)succeeded ftMessage:(id)message error:(id)error result:(id)result resultCode:(int64_t)code;
- (void)_notifyDelegateAboutError:(id)error resultCode:(int64_t)code forMessage:(id)message;
- (void)_powerLogEvent:(id)event dictionary:(id)dictionary;
- (void)_sendMessage:(id)message ftMessage:(id)ftMessage;
- (void)_serverBagLoaded:(id)loaded;
- (void)_setEnabledTopics:(id)topics;
- (void)_setMapForMessage:(id)message apsMessage:(id)apsMessage messageBody:(id)body timeoutTime:(double)time timeoutSelector:(SEL)selector handlerBlock:(id)block retries:(id)retries;
- (void)_updateTopics;
- (void)cancelMessage:(id)message withError:(int64_t)error;
- (void)connection:(id)connection didFailToSendOutgoingMessage:(id)message error:(id)error;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didSendOutgoingMessage:(id)message;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FTMessageDelivery_APS

- (int64_t)maxLargeMessageSize
{
  v19 = *MEMORY[0x1E69E9840];
  connection = [(FTMessageDelivery *)self connection];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    connection2 = [(FTMessageDelivery *)self connection];
    largeMessageSize = [connection2 largeMessageSize];

    if (largeMessageSize <= 5119)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        connection3 = [(FTMessageDelivery *)self connection];
        *buf = 138412802;
        v14 = connection3;
        v15 = 1024;
        v16 = largeMessageSize;
        v17 = 2048;
        v18 = 5120;
        _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_ERROR, "APSConnection %@  gave me a connection large size of: %d  which doesn't pass our sanity size of: %ld   ignoring", buf, 0x1Cu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        connection4 = [(FTMessageDelivery *)self connection];
        _IDSWarnV();

        v11 = [(FTMessageDelivery *)self connection:connection4];
        _IDSLogV();

        v12 = [(FTMessageDelivery *)self connection:v11];
        _IDSLogTransport();
      }
    }

    if (largeMessageSize <= 5120)
    {
      return 5120;
    }

    else
    {
      return largeMessageSize;
    }
  }

  else
  {

    return MEMORY[0x1EEE66B58](self, sel_maxMessageSize);
  }
}

- (int64_t)maxMessageSize
{
  v17 = *MEMORY[0x1E69E9840];
  connection = [(FTMessageDelivery *)self connection];
  messageSize = [connection messageSize];

  if (messageSize <= 5119)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      connection2 = [(FTMessageDelivery *)self connection];
      *buf = 138412802;
      v12 = connection2;
      v13 = 1024;
      v14 = messageSize;
      v15 = 2048;
      v16 = 5120;
      _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_ERROR, "APSConnection %@  gave me a connection size of: %d  which doesn't pass our sanity size of: %ld   ignoring", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      connection3 = [(FTMessageDelivery *)self connection];
      _IDSWarnV();

      v9 = [(FTMessageDelivery *)self connection:connection3];
      _IDSLogV();

      v10 = [(FTMessageDelivery *)self connection:v9];
      _IDSLogTransport();
    }
  }

  if (messageSize <= 5120)
  {
    return 5120;
  }

  else
  {
    return messageSize;
  }
}

- (void)_dequeueIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v51 = _os_activity_create(&dword_195925000, "APS dequeue message", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v51, &state);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _queue = [(FTMessageDelivery *)selfCopy _queue];
  v9 = [_queue count] == 0;

  if (!v9)
  {
    _queue2 = [(FTMessageDelivery *)selfCopy _queue];
    topMessage = [_queue2 topMessage];

    [topMessage startSendEventTracing];
    if ([topMessage isIDSMessage] && objc_msgSend(topMessage, "wantsBagKey"))
    {
      mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
      if (([(__CFString *)mEMORY[0x1E69A53F0] isLoaded]& 1) == 0)
      {
        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "Server bag is not loaded, waiting for it", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        if ([(__CFString *)mEMORY[0x1E69A53F0] isServerAvailable])
        {
          v26 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v26, OS_LOG_TYPE_DEFAULT, " => Server is available", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          if (([(__CFString *)mEMORY[0x1E69A53F0] isLoading]& 1) == 0)
          {
            v38 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_195925000, v38, OS_LOG_TYPE_DEFAULT, " => Starting load", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }

            [(__CFString *)mEMORY[0x1E69A53F0] startBagLoad];
            goto LABEL_148;
          }

          v27 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, " => Already loading", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v32 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, " => Server not available", buf, 2u);
          }

          if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
          {
            goto LABEL_148;
          }
        }

        _IDSLogV();
        goto LABEL_148;
      }
    }

    else
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, " => Server bag not needed, proceeding", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    if ([(FTMessageDelivery_APS *)selfCopy busy])
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "We're already busy, not pulling from queue", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_149;
    }

    _queue3 = [(FTMessageDelivery *)selfCopy _queue];
    dequeueTopMessage = [_queue3 dequeueTopMessage];

    if (([dequeueTopMessage isValidMessage] & 1) == 0)
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "Cancelling message delivery! invalid message!", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      messageBodyUsingCache = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(messageBodyUsingCache, OS_LOG_TYPE_DEFAULT))
      {
        payloadCanBeLogged = [dequeueTopMessage payloadCanBeLogged];
        if (payloadCanBeLogged)
        {
          topMessage = [dequeueTopMessage messageBodyUsingCache];
          service2 = [topMessage description];
          service = [dequeueTopMessage service];
          v24 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v24 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v53 = v24;
        _os_log_impl(&dword_195925000, messageBodyUsingCache, OS_LOG_TYPE_DEFAULT, "Message body: %@", buf, 0xCu);
        if (payloadCanBeLogged)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        payloadCanBeLogged2 = [dequeueTopMessage payloadCanBeLogged];
        if (payloadCanBeLogged2)
        {
          messageBodyUsingCache = [dequeueTopMessage messageBodyUsingCache];
          payloadCanBeLogged = [messageBodyUsingCache description];
          service2 = [dequeueTopMessage service];
          v34 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v34 = @"(Not Loggable)";
        }

        v48 = v34;
        _IDSLogV();
        if (payloadCanBeLogged2)
        {
        }
      }

      v37 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5003 userInfo:0, v48];
      [(FTMessageDelivery_APS *)selfCopy _notifyDelegateAboutError:v37 resultCode:5003 forMessage:dequeueTopMessage];
      mEMORY[0x1E69A53F0] = 0;
      goto LABEL_147;
    }

    v49 = 0;
    v18 = [dequeueTopMessage hasRequiredKeys:&v49];
    mEMORY[0x1E69A53F0] = v49;
    if ((v18 & 1) == 0)
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195963FAC(mEMORY[0x1E69A53F0], warning);
      }

      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = mEMORY[0x1E69A53F0];
        _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "Cancelling message delivery! Missing keys: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v48 = mEMORY[0x1E69A53F0];
        _IDSLogV();
      }

      messageBodyUsingCache2 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(messageBodyUsingCache2, OS_LOG_TYPE_DEFAULT))
      {
        service2 = [dequeueTopMessage payloadCanBeLogged];
        if (service2)
        {
          payloadCanBeLogged = [dequeueTopMessage messageBodyUsingCache];
          service = [payloadCanBeLogged description];
          service3 = [dequeueTopMessage service];
          v31 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v31 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v53 = v31;
        _os_log_impl(&dword_195925000, messageBodyUsingCache2, OS_LOG_TYPE_DEFAULT, "Message body: %@", buf, 0xCu);
        if (service2)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        payloadCanBeLogged3 = [dequeueTopMessage payloadCanBeLogged];
        if (payloadCanBeLogged3)
        {
          messageBodyUsingCache2 = [dequeueTopMessage messageBodyUsingCache];
          service2 = [messageBodyUsingCache2 description];
          service = [dequeueTopMessage service];
          v40 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v40 = @"(Not Loggable)";
        }

        v48 = v40;
        _IDSLogV();
        if (payloadCanBeLogged3)
        {
        }
      }

      v37 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5008 userInfo:0, v48];
      [(FTMessageDelivery_APS *)selfCopy _notifyDelegateAboutError:v37 resultCode:5008 forMessage:dequeueTopMessage];
      goto LABEL_147;
    }

    if (([dequeueTopMessage ignoresNetworkConnectivity] & 1) == 0 && -[FTMessageDeliveryAPSMobileNetworkManager isAirplaneModeEnabled](selfCopy->_mobileNetworkManager, "isAirplaneModeEnabled") && (-[FTMessageDeliveryAPSMobileNetworkManager isWiFiUsable](selfCopy->_mobileNetworkManager, "isWiFiUsable") & 1) == 0)
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v41, OS_LOG_TYPE_DEFAULT, "Message not being delivered, airplane mode is enabled", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      messageBodyUsingCache3 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(messageBodyUsingCache3, OS_LOG_TYPE_DEFAULT))
      {
        service2 = [dequeueTopMessage payloadCanBeLogged];
        if (service2)
        {
          payloadCanBeLogged = [dequeueTopMessage messageBodyUsingCache];
          service = [payloadCanBeLogged description];
          service3 = [dequeueTopMessage service];
          v43 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v43 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v53 = v43;
        _os_log_impl(&dword_195925000, messageBodyUsingCache3, OS_LOG_TYPE_DEFAULT, "Message body: %@", buf, 0xCu);
        if (service2)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        payloadCanBeLogged4 = [dequeueTopMessage payloadCanBeLogged];
        if (payloadCanBeLogged4)
        {
          messageBodyUsingCache3 = [dequeueTopMessage messageBodyUsingCache];
          service2 = [messageBodyUsingCache3 description];
          service = [dequeueTopMessage service];
          v47 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v47 = @"(Not Loggable)";
        }

        v48 = v47;
        _IDSLogV();
        if (payloadCanBeLogged4)
        {
        }
      }

      goto LABEL_146;
    }

    if ([(FTMessageDelivery_APS *)selfCopy shouldFailFastForMessage:dequeueTopMessage])
    {
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "Message not being delivered, no network, can attempt stewie", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      messageBodyUsingCache4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(messageBodyUsingCache4, OS_LOG_TYPE_DEFAULT))
      {
        service2 = [dequeueTopMessage payloadCanBeLogged];
        if (service2)
        {
          payloadCanBeLogged = [dequeueTopMessage messageBodyUsingCache];
          service = [payloadCanBeLogged description];
          service3 = [dequeueTopMessage service];
          v21 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v21 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v53 = v21;
        _os_log_impl(&dword_195925000, messageBodyUsingCache4, OS_LOG_TYPE_DEFAULT, "Message body: %@", buf, 0xCu);
        if (service2)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        payloadCanBeLogged5 = [dequeueTopMessage payloadCanBeLogged];
        if (payloadCanBeLogged5)
        {
          messageBodyUsingCache4 = [dequeueTopMessage messageBodyUsingCache];
          service2 = [messageBodyUsingCache4 description];
          service = [dequeueTopMessage service];
          v45 = IDSLoggableDescriptionForObjectOnService();
        }

        else
        {
          v45 = @"(Not Loggable)";
        }

        v48 = v45;
        _IDSLogV();
        if (payloadCanBeLogged5)
        {
        }
      }

LABEL_146:
      v37 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:10000 userInfo:0, v48];
      [(FTMessageDelivery_APS *)selfCopy _notifyDelegateAboutError:v37 resultCode:10000 forMessage:dequeueTopMessage];
LABEL_147:

      topMessage = dequeueTopMessage;
      goto LABEL_148;
    }

    if ([(FTMessageDelivery *)selfCopy isTrafficDisabledOnVMForMessage:dequeueTopMessage])
    {
      warning2 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
      {
        sub_195964024(warning2);
      }

      v36 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v36, OS_LOG_TYPE_DEFAULT, "Message not being delivered, vm traffic is disable", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      v37 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:20000 userInfo:0];
      [(FTMessageDelivery_APS *)selfCopy _notifyDelegateAboutError:v37 resultCode:20000 forMessage:dequeueTopMessage];
      goto LABEL_147;
    }

    [(FTMessageDelivery_APS *)selfCopy _sendMessageAsynchronously:dequeueTopMessage error:0];
    topMessage = dequeueTopMessage;
LABEL_148:

LABEL_149:
    goto LABEL_150;
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Nothing left in queue, done", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(FTMessageDelivery_APS *)selfCopy _updateTopics];
LABEL_150:
  objc_sync_exit(selfCopy);

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

+ (id)sharedInstance
{
  if (qword_1ED7687A8 != -1)
  {
    sub_195963C04();
  }

  v3 = qword_1ED768708;

  return v3;
}

- (FTMessageDelivery_APS)initWithAPSConnection:(id)connection mobileNetworkManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = FTMessageDelivery_APS;
  v8 = [(FTMessageDelivery *)&v15 initWithAPSConnection:connection];
  if (v8)
  {
    v8->_APSOutgoingMessageClass = MEMORY[0x19A8B8550](@"APSOutgoingMessage", @"ApplePushService");
    connection = [(FTMessageDelivery *)v8 connection];
    [connection setDelegate:v8];

    objc_storeStrong(&v8->_mobileNetworkManager, manager);
    array = [MEMORY[0x1E695DEC8] array];
    [(FTMessageDelivery_APS *)v8 _setEnabledTopics:array];

    [(FTMessageDelivery_APS *)v8 _updateTopics];
    if (_os_feature_enabled_impl() && ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) == 0)
    {
      v11 = [MEMORY[0x19A8B8550](@"IDSOffGridConnectionMonitor" @"IDS")];
      offGridConnectionMonitor = v8->_offGridConnectionMonitor;
      v8->_offGridConnectionMonitor = v11;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__serverBagLoaded_ name:*MEMORY[0x1E69A50A8] object:0];
  }

  return v8;
}

- (FTMessageDelivery_APS)initWithAPSConnection:(id)connection
{
  v4 = MEMORY[0x1E69A6108];
  connectionCopy = connection;
  sharedInstance = [v4 sharedInstance];
  v7 = [(FTMessageDelivery_APS *)self initWithAPSConnection:connectionCopy mobileNetworkManager:sharedInstance];

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  apsMessageMap = self->_apsMessageMap;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195947A54;
  v8[3] = &unk_1E7435060;
  v8[4] = self;
  [(NSMutableDictionary *)apsMessageMap enumerateKeysAndObjectsUsingBlock:v8];
  [(NSMutableDictionary *)self->_timerMap enumerateKeysAndObjectsUsingBlock:&unk_1F09C7188];
  [(NSMutableDictionary *)self->_deathTimerMap enumerateKeysAndObjectsUsingBlock:&unk_1F09C71A8];
  array = [MEMORY[0x1E695DEC8] array];
  [(FTMessageDelivery_APS *)self _setEnabledTopics:array];

  connection = [(FTMessageDelivery *)self connection];
  [connection setDelegate:0];

  v7.receiver = self;
  v7.super_class = FTMessageDelivery_APS;
  [(FTMessageDelivery *)&v7 dealloc];
}

- (void)_setEnabledTopics:(id)topics
{
  topicsCopy = topics;
  connection = [(FTMessageDelivery *)self connection];
  array = [MEMORY[0x1E695DEC8] array];
  array2 = [MEMORY[0x1E695DEC8] array];
  [connection setEnabledTopics:array ignoredTopics:array2 opportunisticTopics:topicsCopy];
}

- (id)_getEnabledTopics
{
  connection = [(FTMessageDelivery *)self connection];
  opportunisticTopics = [connection opportunisticTopics];

  return opportunisticTopics;
}

- (void)_invalidateTimerForMessageID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_timerMap objectForKey:d];
  [v3 invalidate];
}

- (void)_invalidateDeathTimerForMessageID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_deathTimerMap objectForKey:d];
  [v3 invalidate];
}

- (void)_setMapForMessage:(id)message apsMessage:(id)apsMessage messageBody:(id)body timeoutTime:(double)time timeoutSelector:(SEL)selector handlerBlock:(id)block retries:(id)retries
{
  v82 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  apsMessageCopy = apsMessage;
  value = body;
  blockCopy = block;
  retriesCopy = retries;
  uniqueIDString = [messageCopy uniqueIDString];
  if (uniqueIDString)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (selector)
      {
        v19 = NSStringFromSelector(selector);
      }

      else
      {
        v19 = @"none";
      }

      *buf = 138413314;
      v73 = uniqueIDString;
      v74 = 2112;
      v75 = messageCopy;
      v76 = 2112;
      v77 = apsMessageCopy;
      v78 = 2048;
      timeCopy = time;
      v80 = 2112;
      v81 = v19;
      _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Mapping messageID: %@  message: %@   APSMessage: %@   timeout: %f  timeoutSelector: %@", buf, 0x34u);
      if (selector)
      {
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      if (selector)
      {
        v66 = NSStringFromSelector(selector);
        timeCopy3 = time;
        v63 = messageCopy;
        v64 = apsMessageCopy;
        v58 = uniqueIDString;
        _IDSLogV();
      }

      else
      {
        v66 = @"none";
        timeCopy3 = time;
        v63 = messageCopy;
        v64 = apsMessageCopy;
        v58 = uniqueIDString;
        _IDSLogV();
      }
    }

    [(FTMessageDelivery_APS *)self _invalidateTimerForMessageID:uniqueIDString, v58, v63, v64, *&timeCopy3, v66];
    if (!self->_ftMessageMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      ftMessageMap = self->_ftMessageMap;
      self->_ftMessageMap = Mutable;
    }

    if (!self->_apsMessageMap)
    {
      v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      apsMessageMap = self->_apsMessageMap;
      self->_apsMessageMap = v23;
    }

    if (!self->_timerMap)
    {
      v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      timerMap = self->_timerMap;
      self->_timerMap = v25;
    }

    if (!self->_retriesMap)
    {
      v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      retriesMap = self->_retriesMap;
      self->_retriesMap = v27;
    }

    if (!self->_bodyMap)
    {
      v29 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      bodyMap = self->_bodyMap;
      self->_bodyMap = v29;
    }

    if (!self->_startDateMap)
    {
      v31 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      startDateMap = self->_startDateMap;
      self->_startDateMap = v31;
    }

    if (!self->_deathTimerMap)
    {
      v33 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      deathTimerMap = self->_deathTimerMap;
      self->_deathTimerMap = v33;
    }

    if (time > 0.0)
    {
      v35 = objc_alloc(MEMORY[0x1E69A60C0]);
      v36 = im_primary_queue();
      v37 = [v35 initWithQueue:v36 interval:time repeats:0 userInfo:uniqueIDString handlerBlock:blockCopy];

      if (v37)
      {
        [(NSMutableDictionary *)self->_timerMap setObject:v37 forKey:uniqueIDString];
      }

      else
      {
        v38 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v73 = uniqueIDString;
          _os_log_impl(&dword_195925000, v38, OS_LOG_TYPE_ERROR, "No timer specified for message ID: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v59 = uniqueIDString;
          _IDSLogTransport();
        }
      }
    }

    if (messageCopy)
    {
      CFDictionarySetValue(self->_ftMessageMap, uniqueIDString, messageCopy);
    }

    if (value)
    {
      CFDictionarySetValue(self->_bodyMap, uniqueIDString, value);
    }

    if (retriesCopy)
    {
      CFDictionarySetValue(self->_retriesMap, uniqueIDString, retriesCopy);
    }

    if (apsMessageCopy)
    {
      CFDictionarySetValue(self->_apsMessageMap, uniqueIDString, apsMessageCopy);
    }

    v39 = [(NSMutableDictionary *)self->_apsMessageMap objectForKey:uniqueIDString, v59];
    v40 = v39 == 0;

    if (v40)
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = uniqueIDString;
        _os_log_impl(&dword_195925000, v41, OS_LOG_TYPE_ERROR, "Missing APS Message for message ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v60 = uniqueIDString;
        _IDSLogTransport();
      }
    }

    v42 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:uniqueIDString, v60];
    v43 = v42 == 0;

    if (v43)
    {
      v44 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = uniqueIDString;
        _os_log_impl(&dword_195925000, v44, OS_LOG_TYPE_ERROR, "Missing FTMessage for message ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v61 = uniqueIDString;
        _IDSLogTransport();
      }
    }

    v45 = [(NSMutableDictionary *)self->_bodyMap objectForKey:uniqueIDString, v61];
    v46 = v45 == 0;

    if (v46)
    {
      v47 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = uniqueIDString;
        _os_log_impl(&dword_195925000, v47, OS_LOG_TYPE_ERROR, "Missing body for message ID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v62 = uniqueIDString;
        _IDSLogTransport();
      }
    }

    v48 = [(NSMutableDictionary *)self->_retriesMap objectForKey:uniqueIDString, v62];
    v49 = v48 == 0;

    if (v49)
    {
      CFDictionarySetValue(self->_retriesMap, uniqueIDString, &unk_1F09D0788);
    }

    v50 = [(NSMutableDictionary *)self->_deathTimerMap objectForKey:uniqueIDString];
    v51 = v50 == 0;

    if (v51)
    {
      v52 = objc_alloc(MEMORY[0x1E69A60C0]);
      v53 = im_primary_queue();
      [messageCopy timeout];
      v55 = v54;
      uniqueIDString2 = [messageCopy uniqueIDString];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = sub_1959486A0;
      v71[3] = &unk_1E7435238;
      v71[4] = self;
      v57 = [v52 initWithQueue:v53 interval:fmax(v55 repeats:20.0) userInfo:0 handlerBlock:{uniqueIDString2, v71}];

      [(NSMutableDictionary *)self->_deathTimerMap setObject:v57 forKey:uniqueIDString];
    }
  }

  else
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v73 = messageCopy;
      _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_ERROR, "Cannot map Message: %@   no ID!", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)_clearMapForMessageID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = dCopy;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "_clearMapForMessageID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = dCopy;
    _IDSLogV();
  }

  [(FTMessageDelivery_APS *)self _invalidateTimerForMessageID:dCopy, v12];
  [(FTMessageDelivery_APS *)self _invalidateDeathTimerForMessageID:dCopy];
  [(NSMutableDictionary *)self->_ftMessageMap removeObjectForKey:dCopy];
  [(NSMutableDictionary *)self->_apsMessageMap removeObjectForKey:dCopy];
  [(NSMutableDictionary *)self->_retriesMap removeObjectForKey:dCopy];
  [(NSMutableDictionary *)self->_timerMap removeObjectForKey:dCopy];
  [(NSMutableDictionary *)self->_bodyMap removeObjectForKey:dCopy];
  [(NSMutableDictionary *)self->_deathTimerMap removeObjectForKey:dCopy];
  if (![(NSMutableDictionary *)self->_deathTimerMap count])
  {
    deathTimerMap = self->_deathTimerMap;
    self->_deathTimerMap = 0;
  }

  if (![(NSMutableDictionary *)self->_ftMessageMap count])
  {
    ftMessageMap = self->_ftMessageMap;
    self->_ftMessageMap = 0;
  }

  if (![(NSMutableDictionary *)self->_apsMessageMap count])
  {
    apsMessageMap = self->_apsMessageMap;
    self->_apsMessageMap = 0;
  }

  if (![(NSMutableDictionary *)self->_bodyMap count])
  {
    bodyMap = self->_bodyMap;
    self->_bodyMap = 0;
  }

  if (![(NSMutableDictionary *)self->_timerMap count])
  {
    timerMap = self->_timerMap;
    self->_timerMap = 0;
  }

  if (![(NSMutableDictionary *)self->_retriesMap count])
  {
    retriesMap = self->_retriesMap;
    self->_retriesMap = 0;
  }
}

- (BOOL)_isBusyWithMessage:(id)message
{
  v3 = [(NSMutableDictionary *)self->_apsMessageMap allKeysForObject:message];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)allMessages
{
  queuedMessages = [(FTMessageDelivery *)self queuedMessages];
  v4 = [queuedMessages mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  _currentMessages = [(FTMessageDelivery_APS *)self _currentMessages];
  [v4 addObjectsFromArray:_currentMessages];

  return v4;
}

- (int64_t)_retryCountForMessage:(id)message
{
  retriesMap = self->_retriesMap;
  uniqueIDString = [message uniqueIDString];
  v5 = [(NSMutableDictionary *)retriesMap objectForKey:uniqueIDString];
  intValue = [v5 intValue];

  return intValue;
}

- (id)_bodyForMessage:(id)message
{
  bodyMap = self->_bodyMap;
  uniqueIDString = [message uniqueIDString];
  v5 = [(NSMutableDictionary *)bodyMap objectForKey:uniqueIDString];

  return v5;
}

- (id)_messageForAPSOutgoingMessage:(id)message
{
  v4 = [(NSMutableDictionary *)self->_apsMessageMap allKeysForObject:message];
  __imFirstObject = [v4 __imFirstObject];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:__imFirstObject];

  return v6;
}

- (id)_apsOutgoingMessageForFTMessage:(id)message
{
  v4 = [(NSMutableDictionary *)self->_ftMessageMap allKeysForObject:message];
  __imFirstObject = [v4 __imFirstObject];
  v6 = [(NSMutableDictionary *)self->_apsMessageMap objectForKey:__imFirstObject];

  return v6;
}

- (BOOL)_fillMessageParameters:(id *)parameters ftMessage:(id *)message
{
  result = 0;
  if (parameters && message)
  {
    v8 = *parameters;
    v9 = *message;
    if (v8)
    {
      if (v9)
      {
        return 1;
      }
    }

    else
    {
      v8 = [(FTMessageDelivery_APS *)self _apsOutgoingMessageForFTMessage:v9];
      *parameters = v8;
      if (*message)
      {
        v10 = 1;
        return v8 != 0 && v10;
      }
    }

    v11 = [(FTMessageDelivery_APS *)self _messageForAPSOutgoingMessage:v8];
    *message = v11;
    v8 = *parameters;
    v10 = v11 != 0;
    return v8 != 0 && v10;
  }

  return result;
}

- (BOOL)_shouldSendSOSForFailure:(id)failure
{
  failureCopy = failure;
  if (qword_1EAED7830 != -1)
  {
    sub_195963C18();
  }

  domain = [failureCopy domain];
  v5 = [domain isEqualToString:qword_1ED768810];

  if ((v5 & 1) != 0 || ([failureCopy domain], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E696A978]), v6, v7))
  {
    [failureCopy code];
  }

  return 0;
}

- (void)_noteMessageFailed:(id)failed ftMessage:(id)message retryBehavior:(int)behavior error:(id)error
{
  v86 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  messageCopy = message;
  failedCopy = failed;
  messageCopy2 = message;
  failedCopy2 = failed;
  v13 = [(FTMessageDelivery_APS *)self _fillMessageParameters:&failedCopy ftMessage:&messageCopy];
  v14 = failedCopy;

  v15 = messageCopy;
  if (!v13)
  {
    goto LABEL_90;
  }

  if (qword_1EAED7838 != -1)
  {
    sub_195963C2C();
  }

  v73 = [(FTMessageDelivery_APS *)self _retryCountForMessage:v15];
  domain = [errorCopy domain];
  v17 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  if (v17)
  {
    v72 = 0;
    v18 = [errorCopy code] == -1001;
    goto LABEL_11;
  }

  domain2 = [errorCopy domain];
  v20 = [domain2 isEqualToString:qword_1ED768818];

  if (v20)
  {
    code = [errorCopy code];
    if (code <= 7)
    {
      if (((1 << code) & 0xC6) != 0)
      {
        v18 = 0;
        v72 = 1;
        goto LABEL_11;
      }

      if (code == 3)
      {
        goto LABEL_90;
      }
    }

    v72 = 1;
    v18 = 1;
  }

  else
  {
    v72 = 0;
    v18 = 0;
  }

LABEL_11:
  if ([v15 ignoreMaxRetryCount])
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      hasReceivedPushAck = [v15 hasReceivedPushAck];
      v24 = @"NO";
      if (hasReceivedPushAck)
      {
        v24 = @"YES";
      }

      *buf = 67109378;
      *v81 = v73;
      *&v81[4] = 2112;
      *&v81[6] = v24;
      _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "  => Message ignores max retry count set on server bag. Keep retrying (current retires %d). Has received courier ack? %@", buf, 0x12u);
    }

    if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
  v26 = [mEMORY[0x1E69A53F0] objectForKey:@"md-retry-attempts"];

  if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v27 = v26;
    intValue = [v27 intValue];
    v29 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v81 = intValue;
      _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %d retries", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v63 = intValue;
      _IDSLogV();
    }

    v30 = intValue;
  }

  else
  {
    v31 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v81 = 2;
      _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "Server Bag has no value for retries, using the default: %ld retries", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v63 = 2;
      _IDSLogV();
    }

    v30 = 2;
  }

  if (v73 < v30)
  {
    goto LABEL_44;
  }

  v32 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    hasReceivedPushAck2 = [v15 hasReceivedPushAck];
    v34 = @"NO";
    if (hasReceivedPushAck2)
    {
      v34 = @"YES";
    }

    *buf = 67109378;
    *v81 = v73;
    *&v81[4] = 2112;
    *&v81[6] = v34;
    _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "  => Message retried too many times (%d), not retrying anymore. Has received courier ack? %@", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v18 = 0;
    if (_IDSShouldLog())
    {
LABEL_40:
      hasReceivedPushAck3 = [v15 hasReceivedPushAck];
      v36 = @"NO";
      if (hasReceivedPushAck3)
      {
        v36 = @"YES";
      }

      v63 = v73;
      v65 = v36;
      _IDSLogV();
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_44:
  v37 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIDString = [v15 uniqueIDString];
    v39 = uniqueIDString;
    v40 = @"NO";
    *buf = 138413314;
    *v81 = v15;
    *&v81[8] = 2112;
    if (behavior == 1)
    {
      v41 = @"YES";
    }

    else
    {
      v41 = @"NO";
    }

    *&v81[10] = uniqueIDString;
    if (v18)
    {
      v40 = @"YES";
    }

    LOWORD(v82) = 1024;
    *(&v82 + 2) = v73;
    HIWORD(v82) = 2112;
    v83 = v41;
    v84 = 2112;
    v85 = v40;
    _os_log_impl(&dword_195925000, v37, OS_LOG_TYPE_DEFAULT, "Noting message failed: %@   (Request ID: %@  Retries: %d  Retry Allowed: %@  Wants Retry: %@)", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    uniqueIDString2 = [v15 uniqueIDString];
    v43 = uniqueIDString2;
    v44 = @"NO";
    if (behavior == 1)
    {
      v45 = @"YES";
    }

    else
    {
      v45 = @"NO";
    }

    if (v18)
    {
      v44 = @"YES";
    }

    v69 = v45;
    v71 = v44;
    v65 = uniqueIDString2;
    v67 = v73;
    v63 = v15;
    _IDSLogV();
  }

  [v15 logFailureInfo];
  if ([(FTMessageDelivery_APS *)self _shouldSendSOSForFailure:errorCopy])
  {
    if ([errorCopy code])
    {
      code2 = [errorCopy code];
    }

    else
    {
      code2 = 9999;
    }

    v47 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      code3 = [errorCopy code];
      *buf = 67109120;
      *v81 = code3;
      _os_log_impl(&dword_195925000, v47, OS_LOG_TYPE_DEFAULT, "FTMessageDelivery Sending SOS for APS failure that recieved response code: (HTTP Status Code: %d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      code4 = [errorCopy code];
      _IDSLogV();
    }

    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      topic = [v15 topic];
      *buf = 67109890;
      *v81 = 0;
      *&v81[4] = 1024;
      *&v81[6] = 0;
      *&v81[10] = 1024;
      *&v81[12] = code2;
      *&v81[16] = 2112;
      v82 = topic;
      _os_log_impl(&dword_195925000, v49, OS_LOG_TYPE_DEFAULT, "SOS Metric Domain (%d), sos type (%d), error code (%d), url (%@)", buf, 0x1Eu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v15 topic];
      code4 = 0;
      v66 = 0.0;
      v70 = v68 = code2;
      _IDSLogV();
    }

    v51 = MEMORY[0x1E69A53D8];
    topic2 = [v15 topic];
    v53 = [v51 metricWithDomain:0 type:0 error:code2 bagURL:topic2];

    logger = [MEMORY[0x1E69A53D0] logger];
    [logger logMetric:v53];
  }

  v55 = !v18;
  if (behavior != 1)
  {
    v55 = 1;
  }

  if (v55)
  {
    if ((v72 & 1) != 0 || ((behavior == 2) | [v15 hasReceivedPushAck]) == 1)
    {
      [(FTMessageDelivery_APS *)self _notifyDelegateAboutError:errorCopy resultCode:20001 forMessage:v15];
    }

    else if (([v15 hasReceivedPushAck] & 1) == 0)
    {
      objc_initWeak(buf, self);
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = sub_195949B48;
      v74[3] = &unk_1E7435500;
      objc_copyWeak(&v75, buf);
      v62 = [MEMORY[0x1E696AD98] numberWithInteger:v73];
      [(FTMessageDelivery_APS *)self _setMapForMessage:v15 apsMessage:0 messageBody:0 timeoutTime:sel__messageAckGracePeriodTimedOut_ timeoutSelector:v74 handlerBlock:v62 retries:90.0];

      objc_destroyWeak(&v75);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v56 = 1.0;
    if ([v15 wantsCustomRetryInterval])
    {
      [v15 customRetryInterval];
      v56 = v57;
    }

    v58 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v81 = v15;
      *&v81[8] = 2048;
      *&v81[10] = v56;
      _os_log_impl(&dword_195925000, v58, OS_LOG_TYPE_DEFAULT, "  => Will retry message: %@ in %f seconds", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v66 = v56;
      code4 = v15;
      _IDSLogV();
    }

    v59 = [(FTMessageDelivery *)self connection:code4];
    [v59 cancelOutgoingMessage:v14];

    [v15 setHasReceivedPushAck:0];
    objc_initWeak(buf, self);
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = sub_195949A48;
    v76[3] = &unk_1E7435500;
    objc_copyWeak(&v77, buf);
    v60 = [MEMORY[0x1E696AD98] numberWithInteger:v73 + 1];
    v61 = 1.0;
    if (v56 >= 1.0)
    {
      v61 = v56;
    }

    [(FTMessageDelivery_APS *)self _setMapForMessage:v15 apsMessage:0 messageBody:0 timeoutTime:sel__messageNeedsRetry_ timeoutSelector:v76 handlerBlock:v60 retries:v61];

    objc_destroyWeak(&v77);
    objc_destroyWeak(buf);
  }

LABEL_90:
}

- (void)_noteMessageSucceeded:(id)succeeded ftMessage:(id)message error:(id)error result:(id)result resultCode:(int64_t)code
{
  v38 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  resultCopy = result;
  messageCopy = message;
  succeededCopy = succeeded;
  messageCopy2 = message;
  succeededCopy2 = succeeded;
  v16 = [(FTMessageDelivery_APS *)self _fillMessageParameters:&succeededCopy ftMessage:&messageCopy];
  v17 = succeededCopy;

  v18 = messageCopy;
  if (v16)
  {
    uniqueIDString = [v18 uniqueIDString];
    [v18 setHasReceivedPushAck:1];
    _queue = [(FTMessageDelivery *)self _queue];
    [_queue removeMessage:v18];

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v18;
      v34 = 2048;
      codeCopy = code;
      _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "Informing delegate about message %@ with resultCode %ld", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v25 = v18;
      codeCopy2 = code;
      _IDSLogV();
    }

    [(FTMessageDelivery *)self _informDelegateAboutMessage:v18 error:0 result:resultCopy resultCode:code interface:1, v25, codeCopy2];
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString2 = [v18 uniqueIDString];
      v24 = [(NSMutableDictionary *)self->_ftMessageMap count];
      *buf = 138412802;
      v33 = v18;
      v34 = 2112;
      codeCopy = uniqueIDString2;
      v36 = 1024;
      v37 = v24;
      _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "Noting message success: %@   (Request ID: %@   %d remaining)", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      uniqueIDString3 = [v18 uniqueIDString];
      v29 = [(NSMutableDictionary *)self->_ftMessageMap count];
      v26 = v18;
      _IDSLogV();
    }

    [(FTMessageDelivery_APS *)self _clearMapForMessageID:uniqueIDString, v26, uniqueIDString3, v29];
    [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
  }
}

- (void)_noteMessageACKd:(id)kd ftMessage:(id)message
{
  v28 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  kdCopy = kd;
  messageCopy2 = message;
  kdCopy2 = kd;
  v8 = [(FTMessageDelivery_APS *)self _fillMessageParameters:&kdCopy ftMessage:&messageCopy];
  v9 = kdCopy;

  v10 = messageCopy;
  if (v8)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString = [v10 uniqueIDString];
      v13 = [(NSMutableDictionary *)self->_ftMessageMap count];
      *buf = 138412802;
      v23 = v10;
      v24 = 2112;
      v25 = uniqueIDString;
      v26 = 1024;
      v27 = v13;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Noting message ack'd: %@   (Request ID: %@   %d remaining)", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      uniqueIDString2 = [v10 uniqueIDString];
      v19 = [(NSMutableDictionary *)self->_ftMessageMap count];
      v17 = v10;
      _IDSLogV();
    }

    originalTimestamp = [v10 originalTimestamp];
    v15 = originalTimestamp == 0;

    if (v15)
    {
      pushAckTimestamp = [v10 pushAckTimestamp];
      [v10 setOriginalTimestamp:pushAckTimestamp];
    }

    [v10 setHasReceivedPushAck:1];
    [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
  }
}

- (void)_noteMessageSent:(id)sent ftMessage:(id)message body:(id)body
{
  v55 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  messageCopy = message;
  sentCopy = sent;
  messageCopy2 = message;
  sentCopy2 = sent;
  v11 = [(FTMessageDelivery_APS *)self _fillMessageParameters:&sentCopy ftMessage:&messageCopy];
  v12 = sentCopy;

  v13 = messageCopy;
  if (v11)
  {
    uniqueIDString = [v13 uniqueIDString];
    if ([v13 wantsAPSRetries] && objc_msgSend(v13, "highPriority"))
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "   => Setting ack timeout time, this will use APS retries", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v16 = [(FTMessageDelivery_APS *)self _retryCountForMessage:v13];
      mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
      v18 = [mEMORY[0x1E69A53F0] objectForKey:@"md-retry-start-interval"];

      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = v18;
        [v19 doubleValue];
        v21 = v20;
        v22 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v48 = *&v21;
          _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with a retry interval of %f ", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v39 = *&v21;
          _IDSLogV();
        }
      }

      else
      {
        v28 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v48 = 0x404E000000000000;
          _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "Server Bag has no value for interval , using the default: %f interval", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v39 = 0x404E000000000000;
          _IDSLogV();
        }

        v21 = 60.0;
      }

      if ([v13 wantsCustomRetryInterval])
      {
        [v13 customRetryInterval];
        v21 = v29;
      }

      v30 = v21 * (v16 + 1);
      v31 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v48 = v16;
        v49 = 2048;
        v50 = v30;
        _os_log_impl(&dword_195925000, v31, OS_LOG_TYPE_DEFAULT, "Message has used %ld retries, Retry timeout time with multiplier will be %f", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v40 = v30;
        v39 = v16;
        _IDSLogV();
      }

      objc_initWeak(buf, self);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = sub_19594AA04;
      v43[3] = &unk_1E7435500;
      objc_copyWeak(&v44, buf);
      [(FTMessageDelivery_APS *)self _setMapForMessage:v13 apsMessage:v12 messageBody:bodyCopy timeoutTime:sel__messageACKTimedOut_ timeoutSelector:v43 handlerBlock:0 retries:v30];
      objc_destroyWeak(&v44);
      objc_destroyWeak(buf);
    }

    else
    {
      v23 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        [v13 timeout];
        *buf = 134217984;
        v48 = v24;
        _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_DEFAULT, "   => Setting send timeout time: %f", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [v13 timeout];
        v39 = v25;
        _IDSLogV();
      }

      objc_initWeak(buf, self);
      [v13 timeout];
      v27 = v26;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_19594AB04;
      v41[3] = &unk_1E7435500;
      objc_copyWeak(&v42, buf);
      [(FTMessageDelivery_APS *)self _setMapForMessage:v13 apsMessage:v12 messageBody:bodyCopy timeoutTime:sel__messageSendTimedOut_ timeoutSelector:v41 handlerBlock:0 retries:v27 + 2.0];
      objc_destroyWeak(&v42);
      objc_destroyWeak(buf);
    }

    [v13 setSentByteCount:{objc_msgSend(v12, "payloadLength", v39, *&v40)}];
    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString2 = [v13 uniqueIDString];
      v34 = [(NSMutableDictionary *)self->_ftMessageMap count];
      v35 = [(NSMutableDictionary *)self->_retriesMap objectForKey:uniqueIDString];
      intValue = [v35 intValue];
      *buf = 138413058;
      v48 = v13;
      v49 = 2112;
      v50 = *&uniqueIDString2;
      v51 = 1024;
      v52 = v34;
      v53 = 1024;
      v54 = intValue;
      _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "Noting message sent: %@   (Request ID: %@  Remaining: %d  Attempt: %d)", buf, 0x22u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      uniqueIDString3 = [v13 uniqueIDString];
      [(NSMutableDictionary *)self->_ftMessageMap count];
      v38 = [(NSMutableDictionary *)self->_retriesMap objectForKey:uniqueIDString];
      [v38 intValue];
      _IDSLogV();
    }
  }
}

- (void)_sendMessage:(id)message ftMessage:(id)ftMessage
{
  messageCopy = message;
  ftMessageCopy = ftMessage;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19594ACD0;
  v10[3] = &unk_1E7435528;
  v10[4] = self;
  v11 = ftMessageCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = ftMessageCopy;
  [(FTMessageDelivery_APS *)self _apsMessageForMessage:v9 body:v8 completion:v10];
}

- (void)_messageACKTimedOut:(id)out
{
  v16 = *MEMORY[0x1E69E9840];
  outCopy = out;
  userInfo = [outCopy userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:userInfo];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString = [v6 uniqueIDString];
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = uniqueIDString;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for server ack for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v11 = v10 = v6;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v11 = v10 = v6;
      MarcoNoteCheckpoint();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:{0, v10, v11}];
    [(FTMessageDelivery_APS *)self _noteMessageFailed:0 ftMessage:v6 retryBehavior:1 error:v9];
  }
}

- (void)_messageSendTimedOut:(id)out
{
  v16 = *MEMORY[0x1E69E9840];
  outCopy = out;
  userInfo = [outCopy userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:userInfo];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString = [v6 uniqueIDString];
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = uniqueIDString;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for server response for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v11 = v10 = v6;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v11 = v10 = v6;
      MarcoNoteCheckpoint();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:{0, v10, v11}];
    [(FTMessageDelivery_APS *)self _noteMessageFailed:0 ftMessage:v6 retryBehavior:1 error:v9];
  }
}

- (void)_messageCompletelyTimedOut:(id)out
{
  v16 = *MEMORY[0x1E69E9840];
  outCopy = out;
  userInfo = [outCopy userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:userInfo];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString = [v6 uniqueIDString];
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = uniqueIDString;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for server response for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v11 = v10 = v6;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v11 = v10 = v6;
      MarcoNoteCheckpoint();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:{0, v10, v11}];
    [(FTMessageDelivery_APS *)self _noteMessageFailed:0 ftMessage:v6 retryBehavior:0 error:v9];
  }
}

- (void)_messageNeedsRetry:(id)retry
{
  v20 = *MEMORY[0x1E69E9840];
  retryCopy = retry;
  userInfo = [retryCopy userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:userInfo];
  v7 = [(FTMessageDelivery_APS *)self _retryCountForMessage:v6];
  if (objc_opt_respondsToSelector())
  {
    [(NSMutableDictionary *)self->_bodyMap removeObjectForKey:userInfo];
    [(NSMutableDictionary *)self->_apsMessageMap removeObjectForKey:userInfo];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v6 setRetryCount:v8];
  }

  v9 = [(NSMutableDictionary *)self->_apsMessageMap objectForKey:userInfo];
  v10 = [(FTMessageDelivery_APS *)self _bodyForMessage:v6];
  if (v6)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString = [v6 uniqueIDString];
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = uniqueIDString;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Starting retry for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v15 = v14 = v9;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v15 = v14 = v9;
      MarcoNoteCheckpoint();
    }

    [(FTMessageDelivery_APS *)self _sendMessage:v10 ftMessage:v6, v14, v15];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = retryCopy;
      v18 = 2112;
      v19 = userInfo;
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_ERROR, "Missing message for retry!  (timer: %@   messageID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)_messageAckGracePeriodTimedOut:(id)out
{
  v16 = *MEMORY[0x1E69E9840];
  outCopy = out;
  userInfo = [outCopy userInfo];
  v6 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:userInfo];
  if (v6)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString = [v6 uniqueIDString];
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = uniqueIDString;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for server response after final grace period for message: %@   (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v6 uniqueIDString];
      v11 = v10 = v6;
      _IDSLogV();
    }

    if (MarcoShouldLogCheckpoints())
    {
      [v6 uniqueIDString];
      v11 = v10 = v6;
      MarcoNoteCheckpoint();
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:{0, v10, v11}];
    [(FTMessageDelivery_APS *)self _noteMessageFailed:0 ftMessage:v6 retryBehavior:2 error:v9];
  }
}

- (id)_requiredTopicsWithUltraConstrainedTopics:(id *)topics
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_19592BEA4;
  v33 = sub_19592BFE0;
  v34 = 0;
  currentMessage = [(FTMessageDelivery *)self currentMessage];
  topic = [currentMessage topic];

  if ([topic length])
  {
    [v5 addObject:topic];
    if (topics)
    {
      currentMessage2 = [(FTMessageDelivery *)self currentMessage];
      ultraConstrainedAllowed = [currentMessage2 ultraConstrainedAllowed];

      if (ultraConstrainedAllowed)
      {
        v10 = v30[5];
        if (!v10)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v12 = v30[5];
          v30[5] = v11;

          v10 = v30[5];
        }

        [v10 addObject:topic];
      }
    }
  }

  queuedMessages = [(FTMessageDelivery *)self queuedMessages];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_19594BE7C;
  v26[3] = &unk_1E7435550;
  v14 = v5;
  v27 = v14;
  v28 = &v29;
  [queuedMessages enumerateObjectsUsingBlock:v26];

  _currentMessages = [(FTMessageDelivery_APS *)self _currentMessages];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = sub_19594BF34;
  v23 = &unk_1E7435550;
  v16 = v14;
  v24 = v16;
  v25 = &v29;
  [_currentMessages enumerateObjectsUsingBlock:&v20];

  if (topics)
  {
    v17 = v30[5];
    if (v17)
    {
      *topics = [v17 allObjects];
    }
  }

  allObjects = [v16 allObjects];

  _Block_object_dispose(&v29, 8);

  return allObjects;
}

- (void)_updateTopics
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0;
  v3 = [(FTMessageDelivery_APS *)selfCopy _requiredTopicsWithUltraConstrainedTopics:&v12];
  v4 = v12;
  _getEnabledTopics = [(FTMessageDelivery_APS *)selfCopy _getEnabledTopics];
  v6 = [_getEnabledTopics count];
  if (v6 == [v3 count])
  {
    v7 = [_getEnabledTopics isEqualToArray:v3] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Enabling required topics: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = v3;
    _IDSLogV();
  }

  if (v7)
  {
    [(FTMessageDelivery_APS *)selfCopy _setEnabledTopics:v3];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEBUG, "  => Skipping, already enabled", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  connection = [(FTMessageDelivery *)selfCopy connection];
  [connection setUltraConstrainedTopics:v4];

  objc_sync_exit(selfCopy);
}

- (void)_apsMessageBodyForMessage:(id)message completion:(id)completion
{
  v142 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  v111 = messageCopy;
  v112 = objc_alloc_init(MEMORY[0x1E695DF90]);
  messageBodyUsingCache = [(__CFString *)messageCopy messageBodyUsingCache];
  v7 = [messageBodyUsingCache mutableCopy];

  v110 = v7;
  if (!v7)
  {
    v110 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  bagKey = [(__CFString *)v111 bagKey];
  topic = [(__CFString *)v111 topic];
  if (topic)
  {
    theDict = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v139 = topic;
      v140 = 2112;
      v141 = bagKey;
      _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Building URL request with topic: %@  bagKey: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v96 = topic;
      v101 = bagKey;
      _IDSLogV();
    }

    if ([(__CFString *)v111 wantsHTTPHeaders:v96])
    {
      v9 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        userAgent = [(FTMessageDelivery *)self userAgent];
        *buf = 138412290;
        v139 = userAgent;
        _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "       User Agent: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        userAgent2 = [(FTMessageDelivery *)self userAgent];
        _IDSLogV();
      }

      userAgent3 = [(FTMessageDelivery *)self userAgent];
      if ([userAgent3 length])
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = +[FTDeviceSupport sharedInstance];
        userAgentString = [v12 userAgentString];
        userAgentString2 = [v11 stringWithFormat:@"%@ %@", userAgent3, userAgentString];
      }

      else
      {
        v12 = +[FTDeviceSupport sharedInstance];
        userAgentString2 = [v12 userAgentString];
      }

      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v139 = userAgentString2;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "            Agent: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v98 = userAgentString2;
        _IDSLogV();
      }

      wantsUserAgentInHeaders = [(__CFString *)v111 wantsUserAgentInHeaders];
      if ([(__CFString *)userAgentString2 length])
      {
        if (wantsUserAgentInHeaders)
        {
          v17 = v112;
        }

        else
        {
          v17 = v110;
        }

        userAgentHeaderString = [(__CFString *)v111 userAgentHeaderString];
        [v17 setObject:userAgentString2 forKey:userAgentHeaderString];
      }

      if ([(__CFString *)v111 wantsCompressedBody])
      {
        v19 = sub_19592BCA0();
        v20 = [v19 length] == 0;

        if (!v20)
        {
          v21 = sub_19592BCA0();
          [v112 setObject:v21 forKey:@"Accept-Language"];
        }
      }

      additionalMessageHeadersForOutgoingPush = [(__CFString *)v111 additionalMessageHeadersForOutgoingPush];
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      allKeys = [additionalMessageHeadersForOutgoingPush allKeys];
      v24 = [allKeys countByEnumeratingWithState:&v130 objects:v137 count:16];
      if (v24)
      {
        v25 = *v131;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v131 != v25)
            {
              objc_enumerationMutation(allKeys);
            }

            v27 = *(*(&v130 + 1) + 8 * i);
            v28 = [additionalMessageHeadersForOutgoingPush objectForKey:{v27, v99, v102}];

            if (v28)
            {
              v29 = [additionalMessageHeadersForOutgoingPush objectForKey:v27];
              [v112 setObject:v29 forKey:v27];
            }

            v30 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [additionalMessageHeadersForOutgoingPush objectForKey:v27];
              *buf = 138412546;
              v139 = v27;
              v140 = 2112;
              v141 = v31;
              _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              [additionalMessageHeadersForOutgoingPush objectForKey:v27];
              v102 = v99 = v27;
              _IDSLogV();
            }
          }

          v24 = [allKeys countByEnumeratingWithState:&v130 objects:v137 count:16];
        }

        while (v24);
      }

      mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
      isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

      if (isInternalInstall)
      {
        additionalInternalHeaders = [(__CFString *)v111 additionalInternalHeaders];

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        allKeys2 = [additionalInternalHeaders allKeys];
        v36 = [allKeys2 countByEnumeratingWithState:&v126 objects:v136 count:16];
        if (v36)
        {
          v37 = *v127;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v127 != v37)
              {
                objc_enumerationMutation(allKeys2);
              }

              v39 = *(*(&v126 + 1) + 8 * j);
              v40 = [(__CFString *)v111 wantsUserAgentInHeaders:v99];
              v41 = [additionalInternalHeaders objectForKey:v39];

              if (v41)
              {
                if (v40)
                {
                  v42 = v112;
                }

                else
                {
                  v42 = v110;
                }

                v43 = [additionalInternalHeaders objectForKey:v39];
                [v42 setObject:v43 forKey:v39];
              }

              v44 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v45 = [additionalInternalHeaders objectForKey:v39];
                *buf = 138412546;
                v139 = v39;
                v140 = 2112;
                v141 = v45;
                _os_log_impl(&dword_195925000, v44, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                [additionalInternalHeaders objectForKey:v39];
                v102 = v99 = v39;
                _IDSLogV();
              }
            }

            v36 = [allKeys2 countByEnumeratingWithState:&v126 objects:v136 count:16];
          }

          while (v36);
        }
      }

      else
      {
        additionalInternalHeaders = additionalMessageHeadersForOutgoingPush;
      }

      nonStandardMessageHeadersForOutgoingPush = [(__CFString *)v111 nonStandardMessageHeadersForOutgoingPush];

      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      allKeys3 = [nonStandardMessageHeadersForOutgoingPush allKeys];
      v48 = [allKeys3 countByEnumeratingWithState:&v122 objects:v135 count:16];
      if (v48)
      {
        v49 = *v123;
        do
        {
          for (k = 0; k != v48; ++k)
          {
            if (*v123 != v49)
            {
              objc_enumerationMutation(allKeys3);
            }

            v51 = *(*(&v122 + 1) + 8 * k);
            v52 = [nonStandardMessageHeadersForOutgoingPush objectForKey:{v51, userAgent2, v102}];

            if (v52)
            {
              v53 = [nonStandardMessageHeadersForOutgoingPush objectForKey:v51];
              [v112 setObject:v53 forKey:v51];
            }

            v54 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = [nonStandardMessageHeadersForOutgoingPush objectForKey:v51];
              *buf = 138412546;
              v139 = v51;
              v140 = 2112;
              v141 = v55;
              _os_log_impl(&dword_195925000, v54, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              [nonStandardMessageHeadersForOutgoingPush objectForKey:v51];
              v102 = userAgent2 = v51;
              _IDSLogV();
            }
          }

          v48 = [allKeys3 countByEnumeratingWithState:&v122 objects:v135 count:16];
        }

        while (v48);
      }

      nonStandardMessageHeadersForOutgoingPush2 = [(__CFString *)v111 nonStandardMessageHeadersForOutgoingPush];

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      allKeys4 = [nonStandardMessageHeadersForOutgoingPush2 allKeys];
      v58 = [allKeys4 countByEnumeratingWithState:&v118 objects:v134 count:16];
      if (v58)
      {
        v59 = *v119;
        do
        {
          for (m = 0; m != v58; ++m)
          {
            if (*v119 != v59)
            {
              objc_enumerationMutation(allKeys4);
            }

            v61 = *(*(&v118 + 1) + 8 * m);
            v62 = [nonStandardMessageHeadersForOutgoingPush2 objectForKey:{v61, userAgent2, v102}];

            if (v62)
            {
              v63 = [nonStandardMessageHeadersForOutgoingPush2 objectForKey:v61];
              [v112 setObject:v63 forKey:v61];
            }

            v64 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = [nonStandardMessageHeadersForOutgoingPush2 objectForKey:v61];
              *buf = 138412546;
              v139 = v61;
              v140 = 2112;
              v141 = v65;
              _os_log_impl(&dword_195925000, v64, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              [nonStandardMessageHeadersForOutgoingPush2 objectForKey:v61];
              v102 = userAgent2 = v61;
              _IDSLogV();
            }
          }

          v58 = [allKeys4 countByEnumeratingWithState:&v118 objects:v134 count:16];
        }

        while (v58);
      }
    }

    if ([(__CFString *)v111 wantsCompressedBody])
    {
      v66 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        payloadCanBeLogged = [(__CFString *)v111 payloadCanBeLogged];
        if (payloadCanBeLogged)
        {
          v68 = [v110 description];
        }

        else
        {
          v68 = @"(Not Loggable)";
        }

        *buf = 138412290;
        v139 = v68;
        _os_log_impl(&dword_195925000, v66, OS_LOG_TYPE_DEFAULT, "Body: %@", buf, 0xCu);
        if (payloadCanBeLogged)
        {
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        if (([(__CFString *)v111 payloadCanBeLogged]& 1) != 0)
        {
          v100 = [v110 description];
          _IDSLogV();
        }

        else
        {
          v100 = @"(Not Loggable)";
          _IDSLogV();
        }
      }
    }

    if ([(__CFString *)v111 wantsBagKey])
    {
      mEMORY[0x1E69A53F0] = [MEMORY[0x1E69A53F0] sharedInstance];
      bagKey2 = [(__CFString *)v111 bagKey];
      v71 = [mEMORY[0x1E69A53F0] urlWithKey:bagKey2];

      absoluteString = [v71 absoluteString];
      if (absoluteString)
      {
        CFDictionarySetValue(theDict, @"u", absoluteString);
      }

      else
      {
        v73 = MEMORY[0x1E69E9C10];
        v74 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          sub_195963C54();
        }
      }
    }

    command = [(__CFString *)v111 command];
    if (command >= 1)
    {
      v76 = [MEMORY[0x1E696AD98] numberWithInt:command];
      if (v76)
      {
        CFDictionarySetValue(theDict, @"c", v76);
      }

      else
      {
        v77 = MEMORY[0x1E69E9C10];
        v78 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_195963CDC();
        }
      }
    }

    v79 = [v110 count] == 0;
    wantsCompressedBody = [(__CFString *)v111 wantsCompressedBody];
    if (v79)
    {
      if (wantsCompressedBody)
      {
        dictionary = [MEMORY[0x1E695DF20] dictionary];
        [(__CFDictionary *)theDict setObject:dictionary forKey:@"p"];
      }
    }

    else if (wantsCompressedBody)
    {
      v81 = v110;
      if (v81)
      {
        CFDictionarySetValue(theDict, @"p", v81);
      }

      else
      {
        v83 = MEMORY[0x1E69E9C10];
        v84 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          sub_195963D64();
        }
      }
    }

    else
    {
      [(__CFDictionary *)theDict addEntriesFromDictionary:v110];
    }

    if ([v112 count] && -[__CFString wantsHTTPHeaders](v111, "wantsHTTPHeaders"))
    {
      v85 = v112;
      if (v85)
      {
        CFDictionarySetValue(theDict, @"h", v85);
      }

      else
      {
        v86 = MEMORY[0x1E69E9C10];
        v87 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          sub_195963DEC();
        }
      }
    }

    if ([(__CFString *)v111 wantsIntegerUniqueIDs])
    {
      uniqueIDString = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[__CFString uniqueID](v111, "uniqueID")}];
      if (uniqueIDString)
      {
LABEL_149:
        CFDictionarySetValue(theDict, @"i", uniqueIDString);
LABEL_157:

        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v113[2] = sub_19594D5E8;
        v113[3] = &unk_1E7435578;
        v114 = v112;
        v93 = v111;
        v115 = v93;
        v94 = theDict;
        v116 = v94;
        v117 = completionCopy;
        v95 = MEMORY[0x19A8B8CC0](v113);
        if ([(__CFString *)v93 wantsSignature])
        {
          [(FTMessageDelivery *)self _signMessage:v93 useDataSignatures:1 authKitHeadersPresent:0 body:0 queryString:0 completion:v95];
        }

        else
        {
          v95[2](v95, 0);
        }

        goto LABEL_161;
      }

      v91 = MEMORY[0x1E69E9C10];
      v92 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        sub_195963E74();
      }
    }

    else
    {
      uniqueIDString = [(__CFString *)v111 uniqueIDString];
      if (uniqueIDString)
      {
        goto LABEL_149;
      }

      v89 = MEMORY[0x1E69E9C10];
      v90 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        sub_195963E74();
      }
    }

    goto LABEL_157;
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v139 = v111;
    _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Cannot send message: Empty topic requested for message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (MarcoShouldLogCheckpoints())
  {
    MarcoNoteCheckpoint();
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_161:
}

- (void)_apsMessageForMessage:(id)message body:(id)body completion:(id)completion
{
  messageCopy = message;
  bodyCopy = body;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19594DB00;
  v15[3] = &unk_1E7435378;
  v15[4] = self;
  v11 = messageCopy;
  v16 = v11;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = MEMORY[0x19A8B8CC0](v15);
  v14 = v13;
  if (bodyCopy)
  {
    (*(v13 + 16))(v13, bodyCopy);
  }

  else
  {
    [(FTMessageDelivery_APS *)self _apsMessageBodyForMessage:v11 completion:v13];
  }
}

- (void)_powerLogEvent:(id)event dictionary:(id)dictionary
{
  eventCopy = event;
  dictionaryCopy = dictionary;
  if (qword_1ED768828 != -1)
  {
    sub_195963F10();
  }

  if (off_1ED768820)
  {
    off_1ED768820(2, eventCopy, dictionaryCopy, 0);
  }
}

- (void)_notifyDelegateAboutError:(id)error resultCode:(int64_t)code forMessage:(id)message
{
  messageCopy = message;
  errorCopy = error;
  uniqueIDString = [messageCopy uniqueIDString];
  [(FTMessageDelivery_APS *)self _clearMapForMessageID:uniqueIDString];

  [(FTMessageDelivery *)self _informDelegateAboutMessage:messageCopy error:errorCopy result:0 resultCode:code interface:1];

  [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "invalidating: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  _queue = [(FTMessageDelivery *)selfCopy2 _queue];
  [_queue removeAllMessages];

  [(FTMessageDelivery_APS *)selfCopy2 _updateTopics];
  objc_sync_exit(selfCopy2);
}

- (BOOL)_sendMessageAsynchronously:(id)asynchronously error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = asynchronouslyCopy;
    _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Requesting async send: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v12 = asynchronouslyCopy;
    _IDSLogV();
  }

  bagKey = [asynchronouslyCopy bagKey];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19594E2A0;
  v13[3] = &unk_1E74350D8;
  v9 = bagKey;
  v14 = v9;
  v10 = asynchronouslyCopy;
  v15 = v10;
  v16 = selfCopy;
  [(FTMessageDelivery_APS *)selfCopy _apsMessageBodyForMessage:v10 completion:v13];

  objc_sync_exit(selfCopy);
  return 1;
}

- (BOOL)busy
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_ftMessageMap copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [v3 allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) hasReceivedPushAck] ^ 1;
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
    v5 = v6;
  }

  v9 = [(FTMessageDelivery *)self maxConcurrentMessages]<= v5;
  return v9;
}

- (void)cancelMessage:(id)message withError:(int64_t)error
{
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v20.receiver = self;
  v20.super_class = FTMessageDelivery_APS;
  [(FTMessageDelivery *)&v20 cancelMessage:messageCopy];
  if (messageCopy)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = messageCopy;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling message in the queue: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v17 = messageCopy;
      _IDSLogV();
    }

    v8 = [(FTMessageDelivery_APS *)self _apsOutgoingMessageForFTMessage:messageCopy, v17];
    currentMessage = [(FTMessageDelivery *)self currentMessage];
    _queue = [(FTMessageDelivery *)self _queue];
    v11 = [_queue removeMessage:messageCopy];
    if (currentMessage == messageCopy)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v8)
      {
        connection = [(FTMessageDelivery *)self connection];
        [connection cancelOutgoingMessage:v8];
      }

      [(FTMessageDelivery *)self _informDelegateAboutMessage:messageCopy error:0 result:0 resultCode:error interface:1];
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = messageCopy;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Removed message: %@   apsMessage: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v18 = messageCopy;
        v19 = v8;
        _IDSLogV();
      }

      if (v8)
      {
        [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
      }
    }

    else
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = messageCopy;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Message: %@ not in queue.   Current message: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v18 = messageCopy;
        v19 = v8;
        _IDSLogV();
      }
    }

    uniqueIDString = [messageCopy uniqueIDString];
    [(FTMessageDelivery_APS *)self _clearMapForMessageID:uniqueIDString];
  }
}

- (BOOL)sendMessage:(id)message
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [messageCopy _setUsingOutgoingPush:1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [messageCopy setTimeSent:?];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = messageCopy;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Adding message to the queue: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = messageCopy;
    _IDSLogV();
  }

  _queue = [(FTMessageDelivery *)selfCopy _queue];
  [_queue addMessage:messageCopy];

  if ([(FTMessageDelivery_APS *)selfCopy busy])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _currentMessages = [(FTMessageDelivery_APS *)selfCopy _currentMessages];
      *buf = 138412290;
      v14 = _currentMessages;
      _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _currentMessages2 = [(FTMessageDelivery_APS *)selfCopy _currentMessages];
      _IDSLogV();
    }
  }

  else
  {
    [(FTMessageDelivery_APS *)selfCopy _dequeueIfNeeded];
  }

  objc_sync_exit(selfCopy);

  return 1;
}

- (void)_serverBagLoaded:(id)loaded
{
  v11 = *MEMORY[0x1E69E9840];
  loadedCopy = loaded;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Server bag loaded", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if ([(FTMessageDelivery_APS *)self busy])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      _currentMessages = [(FTMessageDelivery_APS *)self _currentMessages];
      *buf = 138412290;
      v10 = _currentMessages;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _currentMessages2 = [(FTMessageDelivery_APS *)self _currentMessages];
      _IDSLogV();
    }
  }

  else
  {
    [(FTMessageDelivery_APS *)self _dequeueIfNeeded];
  }
}

- (BOOL)shouldFailFastForMessage:(id)message
{
  messageCopy = message;
  if (!_os_feature_enabled_impl() || ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) != 0)
  {
    goto LABEL_14;
  }

  if (qword_1ED768830 != -1)
  {
    sub_195964068();
  }

  if (qword_1ED768840 != -1)
  {
    sub_19596407C();
  }

  topic = [messageCopy topic];
  if ([topic isEqualToIgnoringCase:qword_1ED768838])
  {
    isConnectionSuitableForIMLOverStewie = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  else
  {
    topic2 = [messageCopy topic];
    if (([topic2 isEqualToIgnoringCase:qword_1ED768848] & 1) == 0)
    {

      goto LABEL_14;
    }

    isConnectionSuitableForIMLOverStewie = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  if ((isConnectionSuitableForIMLOverStewie & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  v91 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  topicCopy = topic;
  infoCopy = info;
  v82 = [infoCopy objectForKey:@"c"];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = IDSLoggableDescriptionForObjectOnService();
    *buf = 138412290;
    v88 = v10;
    _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "received response dictionary: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v64 = IDSLoggableDescriptionForObjectOnService();
    _IDSLogV();
  }

  v11 = [infoCopy objectForKey:{@"i", v64}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [infoCopy objectForKey:@"i"];
  v14 = v13;
  if ((isKindOfClass & 1) == 0)
  {
    stringValue = [v13 stringValue];

    v14 = stringValue;
  }

  v80 = [infoCopy _dataForKey:@"U"];
  v16 = [infoCopy objectForKey:@"h"];
  if (v16)
  {
    v17 = [v82 intValue] == 97;

    if (v17)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [infoCopy objectForKey:@"h"];
        *buf = 138412290;
        v88 = v19;
        _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Response Headers: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v65 = [infoCopy objectForKey:@"h"];
        _IDSLogV();
      }
    }
  }

  v20 = [(NSMutableDictionary *)self->_ftMessageMap objectForKey:v14, v65];
  if (v20)
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412290;
      v88 = v22;
      _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "received response dictionary: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v66 = IDSLoggableDescriptionForObjectOnService();
      _IDSLogV();
    }

    intValue = [v82 intValue];
    if ([v20 responseCommand] == intValue || objc_msgSend(v82, "intValue") == 255 || objc_msgSend(v82, "intValue") == 101)
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = IDSLoggableDescriptionForObjectOnService();
        *buf = 138412290;
        v88 = v25;
        _os_log_impl(&dword_195925000, v24, OS_LOG_TYPE_DEFAULT, "received response dictionary: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v67 = IDSLoggableDescriptionForObjectOnService();
        _IDSLogV();
      }

      v26 = [infoCopy objectForKey:{@"b", v67}];

      if (v26)
      {
        v27 = [infoCopy objectForKey:@"b"];
        objc_opt_class();
        v28 = objc_opt_isKindOfClass();

        v78 = [infoCopy objectForKey:@"b"];
        if (v28)
        {
          _FTDataFromBase64String = [v78 _FTDataFromBase64String];
          goto LABEL_44;
        }

        objc_opt_class();
        v32 = objc_opt_isKindOfClass();

        if (v32)
        {
          _FTDataFromBase64String = [infoCopy objectForKey:@"b"];
          v78 = 0;
          goto LABEL_44;
        }

        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v33, OS_LOG_TYPE_ERROR, "Received an unknown object for kBodyIDKey", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          _IDSLogTransport();
        }
      }

      v78 = 0;
      _FTDataFromBase64String = 0;
LABEL_44:
      v84 = 0xAAAAAAAAAAAAAAAALL;
      v74 = _FTDataFromBase64String;
      _FTDecompressData = [_FTDataFromBase64String _FTDecompressData];
      v75 = _FTDecompressData;
      v35 = v74;
      if (_FTDecompressData)
      {
        v35 = _FTDecompressData;
      }

      v76 = v35;
      v36 = [infoCopy objectForKey:@"p"];
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        if (!v76)
        {
          v37 = 0;
          v36 = 0;
          goto LABEL_54;
        }

        v83 = 0;
        v38 = [MEMORY[0x1E696AE40] propertyListWithData:v76 options:0 format:&v84 error:&v83];
        v37 = v83;
        v36 = v38;
      }

      if (!v37 && v36)
      {
        v37 = 0;
        goto LABEL_60;
      }

LABEL_54:
      if ([v78 length] || objc_msgSend(v36, "count"))
      {
        v39 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v88 = v37;
          v89 = 2112;
          v90 = v76;
          _os_log_impl(&dword_195925000, v39, OS_LOG_TYPE_ERROR, "Error decompressing body: %@  (Data: %@)", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v68 = v37;
          v71 = v76;
          _IDSLogTransport();
        }
      }

LABEL_60:
      v79 = [infoCopy objectForKey:{@"h", v68, v71}];
      v40 = [infoCopy objectForKey:@"s"];
      if (_os_feature_enabled_impl())
      {
        v41 = [infoCopy objectForKey:@"hs"];
        v42 = MEMORY[0x19A8B8550](@"IDSBAASigner", @"IDS");
        if (v41)
        {
          v43 = v42;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & (v43 != 0)) == 1)
          {
            if ([v43 isBAAHTTPResponseCode:{objc_msgSend(v41, "integerValue")}])
            {
              v44 = v41;

              v40 = v44;
            }
          }
        }
      }

      if (v79)
      {
        v45 = [v79 objectForKey:@"X-Apple-Splunk-Hint"];
        if (!v45)
        {
          v45 = [v79 objectForKey:@"sh"];
          if (!v45)
          {
            v45 = [v79 objectForKey:@"xt-hint"];
          }
        }

        [v20 setSplunkHint:v45];
      }

      if (([v20 isWebTunnelMessage] & 1) == 0)
      {
        v46 = sub_195951F64(v36);

        v36 = v46;
      }

      date = [MEMORY[0x1E695DF00] date];
      [v20 setResponseReceived:date];

      if (![v36 count])
      {
        v48 = infoCopy;

        v36 = v48;
      }

      v49 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = IDSLoggableDescriptionForObjectOnService();
        *buf = 138412546;
        v88 = v40;
        v89 = 2112;
        v90 = v50;
        _os_log_impl(&dword_195925000, v49, OS_LOG_TYPE_DEFAULT, "received response code: %@  response body: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        IDSLoggableDescriptionForObjectOnService();
        v72 = v69 = v40;
        _IDSLogV();
      }

      v73 = [objc_alloc(MEMORY[0x1E69A5230]) initWithServerResponseDictionary:v36];
      if (v36)
      {
        if ([v20 isIDSMessage])
        {
          [v20 handleResponseDictionary:v36];
        }

        else
        {
          [v20 handleResponseDictionary:infoCopy];
        }

        v51 = [v36 objectForKey:{@"status", v69, v72}];
        if (v51)
        {
          v52 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v88 = v51;
            _os_log_impl(&dword_195925000, v52, OS_LOG_TYPE_DEFAULT, "  Found internal status code of: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v69 = v51;
            _IDSLogV();
          }

          v53 = v51;

          v40 = v53;
        }
      }

      if ([v20 wantsMultipleResponses])
      {
        v54 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v54, OS_LOG_TYPE_DEFAULT, "  This Message Wants Multiple responses", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        if (objc_opt_respondsToSelector())
        {
          v55 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v55, OS_LOG_TYPE_DEFAULT, "  This Message responds to receiving updates for multipleMessages", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          [v20 noteResponseForToken:v73];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_113;
        }

        if ([v20 expectingMoreResponses])
        {
          v56 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v56, OS_LOG_TYPE_DEFAULT, " More To Come, Not done yet", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          goto LABEL_113;
        }

        v63 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v63, OS_LOG_TYPE_DEFAULT, "  Last message Has Been acknowledged", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      [(FTMessageDelivery_APS *)self _noteMessageSucceeded:0 ftMessage:v20 error:v37 result:v36 resultCode:[(NSMutableDictionary *)v40 intValue]];
LABEL_113:
      v85[0] = @"CommandID";
      v85[1] = @"MessageIdentifier";
      v86[0] = v82;
      v86[1] = v14;
      v85[2] = @"Topic";
      v86[2] = topicCopy;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:3];
      v58 = [v57 mutableCopy];

      if (v80)
      {
        v59 = JWUUIDPushObjectToString();
        [(NSMutableDictionary *)v58 setObject:v59 forKeyedSubscript:@"MessageGUID"];
      }

      v60 = objc_opt_class();
      v61 = sub_19594EAB0(v60, infoCopy, *MEMORY[0x1E69A49E8]);
      if (v61)
      {
        [(NSMutableDictionary *)v58 setObject:v61 forKeyedSubscript:@"CommandContext"];
      }

      v62 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v88 = v58;
        _os_log_impl(&dword_195925000, v62, OS_LOG_TYPE_DEFAULT, "Logging incoming push power event: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v70 = v58;
        _IDSLogV();
      }

      [(FTMessageDelivery_APS *)self _powerLogEvent:@"IDS IncomingPushReceived" dictionary:v58, v70];
    }
  }

  else
  {
    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      ftMessageMap = self->_ftMessageMap;
      *buf = 138412290;
      v88 = ftMessageMap;
      _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "no message found, map reads: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)connection:(id)connection didSendOutgoingMessage:(id)message
{
  v32 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  if ([(FTMessageDelivery_APS *)self _isBusyWithMessage:messageCopy])
  {
    v8 = [(FTMessageDelivery_APS *)self _messageForAPSOutgoingMessage:messageCopy];
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIDString = [v8 uniqueIDString];
      *buf = 138412546;
      v29 = messageCopy;
      v30 = 2112;
      v31 = uniqueIDString;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Server ACK'd outgoing message: %@      (Request ID: %@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v8 uniqueIDString];
      v27 = v26 = messageCopy;
      _IDSLogV();
    }

    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      wantsResponse = [v8 wantsResponse];
      v13 = @"NO";
      if (wantsResponse)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v29 = v8;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "   message: %@ wants response: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      wantsResponse2 = [v8 wantsResponse];
      v15 = @"NO";
      if (wantsResponse2)
      {
        v15 = @"YES";
      }

      v26 = v8;
      v27 = v15;
      _IDSLogV();
    }

    if (1000000 * [messageCopy ackTimestamp])
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [v8 setPushAckTimestamp:v16];
    }

    deliveryAcknowledgementBlock = [v8 deliveryAcknowledgementBlock];
    v18 = deliveryAcknowledgementBlock;
    if (deliveryAcknowledgementBlock)
    {
      (*(deliveryAcknowledgementBlock + 16))(deliveryAcknowledgementBlock, v8);
    }

    v19 = [(FTMessageDelivery_APS *)self _messageForAPSOutgoingMessage:messageCopy];
    v20 = [(FTMessageDelivery_APS *)self _bodyForMessage:v19];
    v21 = [v20 objectForKey:*MEMORY[0x1E69A49F0]];

    integerValue = [v21 integerValue];
    if ((integerValue - 200) <= 0x27 && ((1 << (integerValue + 56)) & 0x8100000FC1) != 0)
    {
      v23 = [objc_alloc(MEMORY[0x1E69A5208]) initWithCommand:objc_msgSend(v21 success:"integerValue") errorDomain:1 errorCode:0 retryCount:{0, -[FTMessageDelivery_APS _retryCountForMessage:](self, "_retryCountForMessage:", v19)}];
      v24 = [MEMORY[0x1E69A53A8] loggerWithCategory:2000];
      [v24 logMetric:v23];
    }

    date = [MEMORY[0x1E695DF00] date];
    [v8 setRequestEnd:date];

    if ([v8 wantsResponse])
    {
      [(FTMessageDelivery_APS *)self _noteMessageACKd:messageCopy ftMessage:v8];
    }

    else
    {
      [(FTMessageDelivery_APS *)self _noteMessageSucceeded:messageCopy ftMessage:v8 error:0 result:0 resultCode:0];
    }
  }
}

- (void)connection:(id)connection didFailToSendOutgoingMessage:(id)message error:(id)error
{
  v57 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  errorCopy = error;
  if ([(FTMessageDelivery_APS *)self _isBusyWithMessage:messageCopy])
  {
    if (qword_1EAED7840 != -1)
    {
      sub_195964090();
    }

    domain = [errorCopy domain];
    v11 = [domain isEqualToString:qword_1ED768850];

    if (!v11 || [errorCopy code] != 3)
    {
      v12 = [(FTMessageDelivery_APS *)self _messageForAPSOutgoingMessage:messageCopy];
      v47 = [(FTMessageDelivery *)self disallowRetry]^ 1;
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v50 = errorCopy;
        v51 = 1024;
        v52 = v47;
        _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "message delivery failed {error: %@, retryBehavior: %d}", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v41 = errorCopy;
        v42 = v47;
        _IDSLogV();
      }

      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        domain2 = [errorCopy domain];
        code = [errorCopy code];
        localizedDescription = [errorCopy localizedDescription];
        userInfo = [errorCopy userInfo];
        v19 = [userInfo objectForKey:*MEMORY[0x1E696A990]];
        *buf = 138413058;
        v50 = domain2;
        v51 = 1024;
        v52 = code;
        v53 = 2112;
        v54 = localizedDescription;
        v55 = 2112;
        v56 = v19;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_ERROR, "FTMessageDelivery failed! Error (%@:%d): %@ %@", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        domain3 = [errorCopy domain];
        code2 = [errorCopy code];
        localizedDescription2 = [errorCopy localizedDescription];
        userInfo2 = [errorCopy userInfo];
        v24 = *MEMORY[0x1E696A990];
        v45 = [userInfo2 objectForKey:*MEMORY[0x1E696A990]];
        _IDSWarnV();

        domain4 = [errorCopy domain];
        code3 = [errorCopy code];
        localizedDescription3 = [errorCopy localizedDescription];
        userInfo3 = [errorCopy userInfo];
        v46 = [userInfo3 objectForKey:v24];
        _IDSLogV();

        domain5 = [errorCopy domain];
        code4 = [errorCopy code];
        localizedDescription4 = [errorCopy localizedDescription];
        userInfo4 = [errorCopy userInfo];
        [userInfo4 objectForKey:v24];
        v44 = v43 = localizedDescription4;
        v41 = domain5;
        v42 = code4;
        _IDSLogTransport();
      }

      v33 = [(FTMessageDelivery_APS *)self _bodyForMessage:v12, v41, v42, v43, v44];
      v34 = [v33 objectForKey:*MEMORY[0x1E69A49F0]];

      v35 = [v34 integerValue] - 200;
      if (v35 <= 0x27 && ((1 << v35) & 0x8100000FC1) != 0)
      {
        v36 = objc_alloc(MEMORY[0x1E69A5208]);
        integerValue = [v34 integerValue];
        domain6 = [errorCopy domain];
        v39 = [v36 initWithCommand:integerValue success:0 errorDomain:domain6 errorCode:objc_msgSend(errorCopy retryCount:{"code"), -[FTMessageDelivery_APS _retryCountForMessage:](self, "_retryCountForMessage:", v12)}];

        v40 = [MEMORY[0x1E69A53A8] loggerWithCategory:2000];
        [v40 logMetric:v39];
      }

      [(FTMessageDelivery_APS *)self _noteMessageFailed:messageCopy ftMessage:v12 retryBehavior:v47 error:errorCopy];
    }
  }
}

@end