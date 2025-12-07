@interface FTMessageDelivery_HTTP
- (BOOL)_sendMessageAsynchronously:(id)asynchronously error:(id *)error;
- (BOOL)_tryRetryMessageWithTimeInterval:(double)interval;
- (BOOL)authKitBAADisabled;
- (BOOL)sendMessage:(id)message;
- (BOOL)sendMessageAtTopOfTheQueue:(id)queue;
- (BOOL)shouldFailFastForMessage:(id)message;
- (FTMessageDelivery_HTTP)initWithAPSConnection:(id)connection;
- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)bag apsConnection:(id)connection;
- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)bag iMessageServerBag:(id)serverBag remoteConnectionFactory:(id)factory mobileNetworkManager:(id)manager apsConnection:(id)connection retryBackoffProvider:(id)provider timeoutBackoffProvider:(id)backoffProvider;
- (id)_processResultData:(id)data forMessage:(id)message error:(id *)error;
- (void)_cleanupURLConnection;
- (void)_clearRetryTimer;
- (void)_dequeueIfNeeded;
- (void)_informDelegatesOfMessage:(id)message result:(id)result resultCode:(int64_t)code error:(id)error;
- (void)_notifyDelegateAboutError:(id)error forMessage:(id)message;
- (void)_serverBagLoaded:(id)loaded;
- (void)_updateWiFiAssertions;
- (void)_urlRequestWithURL:(id)l andData:(id)data message:(id)message completionBlock:(id)block;
- (void)cancelMessage:(id)message;
- (void)dealloc;
- (void)invalidate;
- (void)networkStateChanged;
- (void)queue:(id)queue hitTimeoutForMessage:(id)message;
@end

@implementation FTMessageDelivery_HTTP

- (void)_dequeueIfNeeded
{
  v53 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FTMessageDelivery_HTTP *)selfCopy _updateWiFiAssertions];
  _queue = [(FTMessageDelivery *)selfCopy _queue];
  v4 = [_queue count];

  if (v4)
  {
    _queue2 = [(FTMessageDelivery *)selfCopy _queue];
    topMessage = [_queue2 topMessage];

    [topMessage startSendEventTracing];
    v7 = selfCopy->_idsServerBag;
    if (![topMessage isIDSMessage]|| ([(IDSServerBag *)v7 isLoaded]& 1) != 0)
    {
      [(FTMessageDelivery_HTTP *)selfCopy _cleanupURLConnection];
      _queue3 = [(FTMessageDelivery *)selfCopy _queue];
      dequeueTopMessage = [_queue3 dequeueTopMessage];

      if (([dequeueTopMessage isValidMessage]& 1) == 0)
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = stringGUID;
          _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, invalid message", buf, 0xCu);
        }

        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = stringGUID;
          _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "%@ Cancelling message delivery! invalid message!", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v38 = stringGUID;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v38 = stringGUID;
            IMLogString();
          }
        }

        v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5003 userInfo:0, v38];
        [(FTMessageDelivery_HTTP *)selfCopy _notifyDelegateAboutError:v18 forMessage:dequeueTopMessage];
        registration4 = 0;
        goto LABEL_60;
      }

      v48 = 0;
      v10 = [dequeueTopMessage hasRequiredKeys:&v48];
      registration4 = v48;
      if ((v10 & 1) == 0)
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        warning = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
        {
          sub_1959639CC();
        }

        v25 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v50 = stringGUID;
          v51 = 2112;
          v52 = registration4;
          _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "%@ Cancelling message delivery! Missing keys: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v38 = stringGUID;
            v39 = registration4;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v38 = stringGUID;
            v39 = registration4;
            IMLogString();
          }
        }

        if ([dequeueTopMessage payloadCanBeLogged:v38])
        {
          messageBodyUsingCache = [dequeueTopMessage messageBodyUsingCache];
          v27 = [messageBodyUsingCache description];
          v28 = IDSLoggableDescriptionForObjectOnService();

          v46 = stringGUID;
          v47 = v28;
          cut_dispatch_log_queue();
        }

        v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:5008 userInfo:0];
        [(FTMessageDelivery_HTTP *)selfCopy _notifyDelegateAboutError:v18 forMessage:dequeueTopMessage];
        goto LABEL_60;
      }

      if ([(FTMessageDelivery *)selfCopy retryInAirplaneMode]|| ![(FTMessageDeliveryHTTPMobileNetworkManager *)selfCopy->_mobileNetworkManager isAirplaneModeEnabled]|| ([(FTMessageDeliveryHTTPMobileNetworkManager *)selfCopy->_mobileNetworkManager isWiFiUsable]& 1) != 0)
      {
        if (![(FTMessageDelivery_HTTP *)selfCopy shouldFailFastForMessage:dequeueTopMessage])
        {
          if (![(FTMessageDelivery *)selfCopy isTrafficDisabledOnVMForMessage:dequeueTopMessage])
          {
            [(FTMessageDelivery_HTTP *)selfCopy _sendMessageAsynchronously:dequeueTopMessage error:0];
            goto LABEL_61;
          }

          stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
          warning2 = [MEMORY[0x1E69A6138] warning];
          if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
          {
            sub_195963AB8();
          }

          if ([dequeueTopMessage payloadCanBeLogged])
          {
            messageBodyUsingCache2 = [dequeueTopMessage messageBodyUsingCache];
            v31 = [messageBodyUsingCache2 description];
            v32 = IDSLoggableDescriptionForObjectOnService();

            v40 = stringGUID;
            v41 = v32;
            cut_dispatch_log_queue();
          }

          v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:20000 userInfo:0];
          [(FTMessageDelivery_HTTP *)selfCopy _notifyDelegateAboutError:v18 forMessage:dequeueTopMessage];
LABEL_60:

LABEL_61:
          [(FTMessageDelivery_HTTP *)selfCopy _updateWiFiAssertions];
LABEL_62:

LABEL_63:
LABEL_64:

          goto LABEL_65;
        }

        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        warning3 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning3, OS_LOG_TYPE_ERROR))
        {
          sub_195963B28();
        }

        v14 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = stringGUID;
          _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, network is unavailable, can attempt stewie", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v38 = stringGUID;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v38 = stringGUID;
            IMLogString();
          }
        }

        if ([dequeueTopMessage payloadCanBeLogged])
        {
          messageBodyUsingCache3 = [dequeueTopMessage messageBodyUsingCache];
          v16 = [messageBodyUsingCache3 description];
          v17 = IDSLoggableDescriptionForObjectOnService();

          v42 = stringGUID;
          v43 = v17;
          cut_dispatch_log_queue();
        }
      }

      else
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
        warning4 = [MEMORY[0x1E69A6138] warning];
        if (os_log_type_enabled(warning4, OS_LOG_TYPE_ERROR))
        {
          sub_195963A48();
        }

        v34 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = stringGUID;
          _os_log_impl(&dword_195925000, v34, OS_LOG_TYPE_DEFAULT, "%@ Message not being delivered, airplane mode is enabled", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v38 = stringGUID;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v38 = stringGUID;
            IMLogString();
          }
        }

        if ([dequeueTopMessage payloadCanBeLogged])
        {
          messageBodyUsingCache4 = [dequeueTopMessage messageBodyUsingCache];
          v36 = [messageBodyUsingCache4 description];
          v37 = IDSLoggableDescriptionForObjectOnService();

          v44 = stringGUID;
          v45 = v37;
          cut_dispatch_log_queue();
        }
      }

      v18 = [FTMessageDelivery _errorForTDMessageDeliveryStatus:10000 userInfo:0];
      [(FTMessageDelivery_HTTP *)selfCopy _notifyDelegateAboutError:v18 forMessage:dequeueTopMessage];
      goto LABEL_60;
    }

    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Server bag is not loaded, waiting for it", buf, 2u);
      }
    }

    if ([(IDSServerBag *)v7 isServerAvailable])
    {
      if ([(FTMessageDelivery *)selfCopy logToRegistration])
      {
        registration3 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, " => Server is available", buf, 2u);
        }
      }

      if (([(IDSServerBag *)v7 isLoading]& 1) != 0)
      {
        if ([(FTMessageDelivery *)selfCopy logToRegistration])
        {
          registration4 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v23 = " => Already loading";
LABEL_78:
            _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
            goto LABEL_79;
          }

          goto LABEL_79;
        }
      }

      else
      {
        [(IDSServerBag *)v7 startBagLoad];
        if ([(FTMessageDelivery *)selfCopy logToRegistration])
        {
          registration4 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v23 = " => Starting load";
            goto LABEL_78;
          }

          goto LABEL_79;
        }
      }
    }

    else if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = " => Server not available";
        goto LABEL_78;
      }

LABEL_79:
      dequeueTopMessage = topMessage;
      goto LABEL_62;
    }

    dequeueTopMessage = topMessage;
    goto LABEL_63;
  }

  if ([(FTMessageDelivery *)selfCopy logToRegistration])
  {
    dequeueTopMessage = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(dequeueTopMessage, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, dequeueTopMessage, OS_LOG_TYPE_DEFAULT, "Nothing left in queue, done", buf, 2u);
    }

    goto LABEL_64;
  }

LABEL_65:
  objc_sync_exit(selfCopy);
}

- (void)_updateWiFiAssertions
{
  busy = [(FTMessageDelivery_HTTP *)self busy];
  mobileNetworkManager = self->_mobileNetworkManager;
  if (busy)
  {

    MEMORY[0x1EEE66B58](mobileNetworkManager, sel_addWiFiAutoAssociationClientToken_);
  }

  else
  {

    MEMORY[0x1EEE66B58](mobileNetworkManager, sel_removeWiFiAutoAssociationClientToken_);
  }
}

- (void)_cleanupURLConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_remoteConnection && [(FTMessageDelivery *)selfCopy logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Cleaning out url connection", v5, 2u);
    }
  }

  [(FTMessageDeliveryRemoteURLConnection *)selfCopy->_remoteConnection cancel];
  remoteConnection = selfCopy->_remoteConnection;
  selfCopy->_remoteConnection = 0;

  objc_sync_exit(selfCopy);
}

- (FTMessageDelivery_HTTP)initWithAPSConnection:(id)connection
{
  v4 = MEMORY[0x1E69A53F0];
  connectionCopy = connection;
  v6 = [v4 sharedInstanceForBagType:0];
  v7 = [(FTMessageDelivery_HTTP *)self initWithIDSServerBag:v6 apsConnection:connectionCopy];

  return v7;
}

- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)bag apsConnection:(id)connection
{
  v6 = MEMORY[0x1E69A53F0];
  connectionCopy = connection;
  bagCopy = bag;
  v9 = [v6 sharedInstanceForBagType:1];
  v10 = objc_alloc_init(FTMessageDeliveryRemoteURLConnectionFactory);
  mEMORY[0x1E69A6108] = [MEMORY[0x1E69A6108] sharedInstance];
  v12 = [(FTMessageDelivery_HTTP *)self initWithIDSServerBag:bagCopy iMessageServerBag:v9 remoteConnectionFactory:v10 mobileNetworkManager:mEMORY[0x1E69A6108] apsConnection:connectionCopy retryBackoffProvider:&unk_1F09C70E8 timeoutBackoffProvider:&unk_1F09C7108];

  return v12;
}

- (FTMessageDelivery_HTTP)initWithIDSServerBag:(id)bag iMessageServerBag:(id)serverBag remoteConnectionFactory:(id)factory mobileNetworkManager:(id)manager apsConnection:(id)connection retryBackoffProvider:(id)provider timeoutBackoffProvider:(id)backoffProvider
{
  bagCopy = bag;
  serverBagCopy = serverBag;
  factoryCopy = factory;
  managerCopy = manager;
  providerCopy = provider;
  backoffProviderCopy = backoffProvider;
  v32.receiver = self;
  v32.super_class = FTMessageDelivery_HTTP;
  v20 = [(FTMessageDelivery *)&v32 initWithAPSConnection:connection];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_idsServerBag, bag);
    objc_storeStrong(&v21->_iMessageServerBag, serverBag);
    objc_storeStrong(&v21->_remoteConnectionFactory, factory);
    objc_storeStrong(&v21->_mobileNetworkManager, manager);
    v22 = MEMORY[0x19A8B8CC0](providerCopy);
    retryBackoffProvider = v21->_retryBackoffProvider;
    v21->_retryBackoffProvider = v22;

    v24 = MEMORY[0x19A8B8CC0](backoffProviderCopy);
    timeoutBackoffProvider = v21->_timeoutBackoffProvider;
    v21->_timeoutBackoffProvider = v24;

    if (_os_feature_enabled_impl() && ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) == 0)
    {
      v26 = [MEMORY[0x19A8B8550](@"IDSOffGridConnectionMonitor" @"IDS")];
      offGridConnectionMonitor = v21->_offGridConnectionMonitor;
      v21->_offGridConnectionMonitor = v26;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel__serverBagLoaded_ name:*MEMORY[0x1E69A50A8] object:0];
  }

  return v21;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  [(FTMessageDeliveryRemoteURLConnection *)self->_remoteConnection cancel];
  v4.receiver = self;
  v4.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v4 dealloc];
}

- (void)_urlRequestWithURL:(id)l andData:(id)data message:(id)message completionBlock:(id)block
{
  v140 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dataCopy = data;
  messageCopy = message;
  blockCopy = block;
  v104 = messageCopy;
  if (lCopy)
  {
    if ([messageCopy wantsGZip])
    {
      _FTCopyGzippedData = [dataCopy _FTCopyGzippedData];
    }

    else
    {
      _FTCopyGzippedData = dataCopy;
    }

    additionalQueryStringParameters = [messageCopy additionalQueryStringParameters];
    v92 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = additionalQueryStringParameters;
      _os_log_impl(&dword_195925000, v12, OS_LOG_TYPE_DEFAULT, " Query parameters: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v86 = additionalQueryStringParameters;
      _IDSLogV();
    }

    if ([additionalQueryStringParameters count])
    {
      v129[0] = MEMORY[0x1E69E9820];
      v129[1] = 3221225472;
      v129[2] = sub_195940F38;
      v129[3] = &unk_1E7435060;
      v13 = v92;
      v130 = v13;
      [additionalQueryStringParameters enumerateKeysAndObjectsUsingBlock:v129];
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, " Query string: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v87 = v13;
        _IDSLogV();
      }

      if ([v13 length])
      {
        absoluteString = [lCopy absoluteString];
        v16 = [absoluteString stringByAppendingFormat:@"?%@", v13];

        v96 = [MEMORY[0x1E695DFF8] URLWithString:v16];

        v17 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v96;
          _os_log_impl(&dword_195925000, v17, OS_LOG_TYPE_DEFAULT, "Generated final URL: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v87 = v96;
          _IDSLogV();
        }
      }

      else
      {
        v96 = lCopy;
      }
    }

    else
    {
      v96 = lCopy;
    }

    v18 = self->_timeoutBackoffProvider == 0;
    [v104 timeout];
    v20 = v19;
    if (!v18)
    {
      v21 = (*(self->_timeoutBackoffProvider + 2))();
      if (v20 >= v21)
      {
        v20 = v21;
      }
    }

    v106 = [MEMORY[0x1E695AC18] requestWithURL:v96 cachePolicy:1 timeoutInterval:v20];
    if (([v104 wantsHTTPGet] & 1) == 0)
    {
      [v106 setHTTPMethod:@"POST"];
      [v106 setHTTPBody:_FTCopyGzippedData];
    }

    if (([v104 isIDSMessage] & 1) == 0)
    {
      [v106 setHTTPBody:dataCopy];
    }

    if ([v104 httpDoNotDecodeData])
    {
      v22 = v106;
      [v106 _CFURLRequest];
      _CFURLRequestSetProtocolProperty();
    }

    [v106 setHTTPShouldHandleCookies:0];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v96;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Building URL request with URL: %@", buf, 0xCu);
    }

    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v24, OS_LOG_TYPE_DEFAULT, "Headers", buf, 2u);
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

    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      userAgent = [(FTMessageDelivery *)self userAgent];
      *buf = 138412290;
      *&buf[4] = userAgent;
      _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "       User Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        userAgent2 = [(FTMessageDelivery *)self userAgent];
        MarcoLog();
      }

      if (IMShouldLog())
      {
        userAgent2 = [(FTMessageDelivery *)self userAgent];
        IMLogString();
      }
    }

    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v27, OS_LOG_TYPE_DEFAULT, "Headers", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      userAgent3 = [(FTMessageDelivery *)self userAgent];
      *buf = 138412290;
      *&buf[4] = userAgent3;
      _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "       User Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      userAgent2 = [(FTMessageDelivery *)self userAgent];
      _IDSLogV();
    }

    userAgent4 = [(FTMessageDelivery *)self userAgent];
    if (![(__CFString *)userAgent4 length])
    {

      userAgent4 = @"FTMessageDelivery";
    }

    v30 = MEMORY[0x1E696AEC0];
    v31 = +[FTDeviceSupport sharedInstance];
    userAgentString = [v31 userAgentString];
    v101 = [v30 stringWithFormat:@"%@ %@", userAgent4, userAgentString];

    v33 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v101;
      _os_log_impl(&dword_195925000, v33, OS_LOG_TYPE_DEFAULT, "            Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v89 = v101;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v89 = v101;
        IMLogString();
      }
    }

    v34 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v101;
      _os_log_impl(&dword_195925000, v34, OS_LOG_TYPE_DEFAULT, "            Agent: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v89 = v101;
      _IDSLogV();
    }

    isIDSMessage = [v104 isIDSMessage];
    v36 = sub_19592BC58();
    v37 = [v36 length];

    if (isIDSMessage)
    {
      if (v37)
      {
        v38 = sub_19592BC58();
        [v106 setValue:v38 forHTTPHeaderField:@"Accept-Language"];
      }

      if ([@"gzip" length])
      {
        [v106 setValue:@"gzip" forHTTPHeaderField:@"accept-encoding"];
      }

      if ([v101 length])
      {
        [v106 setValue:v101 forHTTPHeaderField:@"user-agent"];
      }

      if (([v104 wantsHTTPGet] & 1) == 0)
      {
        if ([v104 wantsGZip] && objc_msgSend(@"gzip", "length"))
        {
          [v106 setValue:@"gzip" forHTTPHeaderField:@"content-encoding"];
        }

        overrideContentType = [v104 overrideContentType];
        v40 = overrideContentType;
        if (!overrideContentType)
        {
          overrideContentType = @"application/x-apple-plist";
        }

        v41 = [(__CFString *)overrideContentType length]== 0;

        if (!v41)
        {
          overrideContentType2 = [v104 overrideContentType];
          v43 = overrideContentType2;
          if (overrideContentType2)
          {
            v44 = overrideContentType2;
          }

          else
          {
            v44 = @"application/x-apple-plist";
          }

          [v106 setValue:v44 forHTTPHeaderField:@"content-type"];
        }

        v45 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(_FTCopyGzippedData, "length")}];

        if (v45)
        {
          v46 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(_FTCopyGzippedData, "length")}];
          stringValue = [v46 stringValue];
          [v106 setValue:stringValue forHTTPHeaderField:@"content-length"];
        }
      }
    }

    else
    {
      if (v37)
      {
        v48 = sub_19592BC58();
        [v106 setValue:v48 forHTTPHeaderField:@"Accept-Language"];
      }

      if ([v101 length])
      {
        [v106 setValue:v101 forHTTPHeaderField:@"user-agent"];
      }
    }

    additionalMessageHeaders = [v104 additionalMessageHeaders];
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    allKeys = [additionalMessageHeaders allKeys];
    v51 = [allKeys countByEnumeratingWithState:&v125 objects:v135 count:16];
    if (v51)
    {
      v52 = *v126;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v126 != v52)
          {
            objc_enumerationMutation(allKeys);
          }

          v54 = *(*(&v125 + 1) + 8 * i);
          v55 = [additionalMessageHeaders objectForKey:{v54, v90, v91}];

          if (v55)
          {
            v56 = [additionalMessageHeaders objectForKey:v54];
            [v106 setValue:v56 forHTTPHeaderField:v54];
          }

          v57 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = [additionalMessageHeaders objectForKey:v54];
            *buf = 138412546;
            *&buf[4] = v54;
            *&buf[12] = 2112;
            *&buf[14] = v58;
            _os_log_impl(&dword_195925000, v57, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (MarcoShouldLog())
            {
              [additionalMessageHeaders objectForKey:v54];
              v91 = v90 = v54;
              MarcoLog();
            }

            if (IMShouldLog())
            {
              [additionalMessageHeaders objectForKey:v54];
              v91 = v90 = v54;
              IMLogString();
            }
          }
        }

        v51 = [allKeys countByEnumeratingWithState:&v125 objects:v135 count:16];
      }

      while (v51);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v132 = sub_19592BE94;
    v133 = sub_19592BFD8;
    v134 = 0;
    uniqueID = [v104 uniqueID];
    objc_initWeak(&location, v104);
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = sub_195940FE8;
    v119[3] = &unk_1E7435350;
    objc_copyWeak(v123, &location);
    v123[1] = uniqueID;
    v119[4] = self;
    v60 = v104;
    v120 = v60;
    v61 = v106;
    v121 = v61;
    v122 = buf;
    v105 = MEMORY[0x19A8B8CC0](v119);
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = sub_1959414D4;
    v112[3] = &unk_1E74353C8;
    v112[4] = self;
    v118 = uniqueID;
    v62 = v61;
    v113 = v62;
    v117 = buf;
    v63 = blockCopy;
    v116 = v63;
    v103 = _FTCopyGzippedData;
    v114 = v103;
    v64 = v92;
    v115 = v64;
    v107 = MEMORY[0x19A8B8CC0](v112);
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = sub_195942438;
    v111[3] = &unk_1E7435418;
    v111[4] = buf;
    v65 = MEMORY[0x19A8B8CC0](v111);
    if (![v60 isIDSMessage])
    {
      v82 = im_primary_queue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1959424D8;
      block[3] = &unk_1E7434FF0;
      v110 = v63;
      v109 = v62;
      dispatch_async(v82, block);

LABEL_152:
      objc_destroyWeak(v123);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      goto LABEL_153;
    }

    v66 = v60;
    [v66 anisetteHeadersTimeout];
    v68 = v67;
    v69 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
    v95 = [v69 objectForKey:@"anisette-headers-global-timeout"];
    objc_opt_class();
    v70 = -1.0;
    if (objc_opt_isKindOfClass())
    {
      [v95 doubleValue];
      v70 = v71;
    }

    v93 = [v69 objectForKey:{@"anisette-headers-lenient-timeout", v90}];
    objc_opt_class();
    v72 = -1.0;
    if (objc_opt_isKindOfClass())
    {
      [v93 doubleValue];
      v72 = v73;
    }

    v74 = MEMORY[0x1E696AEC0];
    v75 = objc_opt_class();
    v76 = NSStringFromClass(v75);
    v77 = [v74 stringWithFormat:@"%@-%@", @"anisette-headers-message-timeout", v76];

    v78 = [v69 objectForKey:v77];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v78 doubleValue], v80 = v79, v79 >= 0.0))
    {
      v85 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *v136 = 138412546;
        v137 = *&v77;
        v138 = 2048;
        v139 = v80;
        _os_log_impl(&dword_195925000, v85, OS_LOG_TYPE_DEFAULT, "Using server bag message specific timeout %@: %f second(s)", v136, 0x16u);
      }

      v81 = (v80 * 1000000000.0);
      if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (v68 < 0.0)
      {
        v81 = 0;
LABEL_151:

        dispatch_time(0, v81);
        im_dispatch_async_with_timeout();
        goto LABEL_152;
      }

      if (v72 > 0.0 && [v66 allowsServerProvidedLenientAnisetteTimeout])
      {
        v83 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *v136 = 134217984;
          v137 = v72;
          _os_log_impl(&dword_195925000, v83, OS_LOG_TYPE_DEFAULT, "Using server bag anisetteHeaderLenientTimeout: %f second(s)", v136, 0xCu);
        }

        v81 = (v72 * 1000000000.0);
        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          goto LABEL_151;
        }
      }

      else
      {
        if (v70 <= 0.0)
        {
          v81 = (v68 * 1000000000.0);
          goto LABEL_151;
        }

        v84 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *v136 = 134217984;
          v137 = v70;
          _os_log_impl(&dword_195925000, v84, OS_LOG_TYPE_DEFAULT, "Using server bag anisetteHeaderGlobalTimeout: %f second(s)", v136, 0xCu);
        }

        v81 = (v70 * 1000000000.0);
        if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
        {
          goto LABEL_151;
        }
      }
    }

    _IDSLogV();
    goto LABEL_151;
  }

  if (MarcoShouldLogCheckpoints())
  {
    v86 = messageCopy;
    MarcoNoteCheckpoint();
  }

  if ([(FTMessageDelivery *)self logToRegistration])
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = messageCopy;
      _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Cannot send message: Empty URL requested for message: %@, forcing a bag load", buf, 0xCu);
    }
  }

  [(IDSServerBag *)self->_idsServerBag forceBagLoad];
  [(FTMessageDelivery_HTTP *)self _cleanupURLConnection];
LABEL_153:
}

- (id)_processResultData:(id)data forMessage:(id)message error:(id *)error
{
  v20[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  messageCopy = message;
  v9 = objc_autoreleasePoolPush();
  if (![dataCopy length])
  {
    v11 = 0;
    goto LABEL_5;
  }

  parsedIDSMessageResult = [messageCopy parsedIDSMessageResult];
  if (parsedIDSMessageResult)
  {
    v11 = parsedIDSMessageResult;
LABEL_5:
    objc_autoreleasePoolPop(v9);
    v12 = 0;
LABEL_6:
    v13 = v11;
    goto LABEL_7;
  }

  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  _FTDecompressData = [dataCopy _FTDecompressData];
  if (_FTDecompressData)
  {
    v16 = _FTDecompressData;
  }

  else
  {
    v16 = dataCopy;
  }

  v19 = 0;
  v11 = [MEMORY[0x1E696AE40] propertyListWithData:v16 options:0 format:v20 error:&v19];
  v12 = v19;

  objc_autoreleasePoolPop(v9);
  if (!error || !v12)
  {
    v18 = objc_autoreleasePoolPush();
    if (messageCopy && v11)
    {
      [messageCopy handleResponseDictionary:v11];
    }

    v11 = v11;
    objc_autoreleasePoolPop(v18);
    goto LABEL_6;
  }

  v17 = v12;
  v13 = 0;
  *error = v12;
LABEL_7:

  return v13;
}

- (void)_notifyDelegateAboutError:(id)error forMessage:(id)message
{
  errorCopy = error;
  messageCopy = message;
  [(FTMessageDelivery_HTTP *)self _cleanupURLConnection];
  _queue = [(FTMessageDelivery *)self _queue];
  topMessage = [_queue topMessage];
  v9 = [messageCopy isEqual:topMessage];

  if (v9)
  {
    _queue2 = [(FTMessageDelivery *)self _queue];
    dequeueTopMessage = [_queue2 dequeueTopMessage];
  }

  [(FTMessageDelivery *)self _informDelegateAboutMessage:messageCopy error:errorCopy result:0 resultCode:20000 interface:0];
  [(FTMessageDelivery_HTTP *)self _dequeueIfNeeded];
}

- (void)_informDelegatesOfMessage:(id)message result:(id)result resultCode:(int64_t)code error:(id)error
{
  self->super._retries = 0;
  errorCopy = error;
  resultCopy = result;
  messageCopy = message;
  _queue = [(FTMessageDelivery *)self _queue];
  [_queue removeMessage:messageCopy];

  [(FTMessageDelivery *)self _informDelegateAboutMessage:messageCopy error:errorCopy result:resultCopy resultCode:code interface:0];
  [(FTMessageDelivery_HTTP *)self _cleanupURLConnection];

  [(FTMessageDelivery_HTTP *)self _dequeueIfNeeded];
}

- (void)_clearRetryTimer
{
  v3.receiver = self;
  v3.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v3 _clearRetryTimer];
  self->_pendingRetryAfterAirplaneMode = 0;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  obj->_pendingRetryAfterAirplaneMode = 0;
  [(FTMessageDelivery_HTTP *)obj _clearRetryTimer];
  _queue = [(FTMessageDelivery *)obj _queue];
  [_queue removeAllMessages];

  [(FTMessageDelivery_HTTP *)obj _cleanupURLConnection];
  objc_sync_exit(obj);
}

- (BOOL)_sendMessageAsynchronously:(id)asynchronously error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  asynchronouslyCopy = asynchronously;
  if (asynchronouslyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = asynchronouslyCopy;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Requesting async send: %@", buf, 0xCu);
      }
    }

    bagKey = [asynchronouslyCopy bagKey];
    messageBodyDataOverride = [asynchronouslyCopy messageBodyDataOverride];

    if (messageBodyDataOverride)
    {
      messageBodyDataOverride2 = [asynchronouslyCopy messageBodyDataOverride];
    }

    else
    {
      if ([asynchronouslyCopy isIDSMessage])
      {
        messageBodyUsingCache = [asynchronouslyCopy messageBodyUsingCache];
        v33 = 0;
        messageBodyDataOverride2 = [MEMORY[0x1E696AE40] dataWithPropertyList:messageBodyUsingCache format:100 options:0 error:&v33];
        v13 = v33;
        if (v13)
        {
          v14 = v13;
          v15 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v14 localizedDescription];
            *buf = 138412290;
            v35 = localizedDescription;
            _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_ERROR, "error = %@", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            v11 = 0;
            goto LABEL_25;
          }

          localizedDescription2 = [v14 localizedDescription];
          _IDSWarnV();

          localizedDescription3 = [v14 localizedDescription];
          _IDSLogV();

          localizedDescription4 = [v14 localizedDescription];
          _IDSLogTransport();
          v11 = 0;
LABEL_24:

LABEL_25:
          objc_sync_exit(selfCopy);
LABEL_26:

          goto LABEL_27;
        }

LABEL_21:
        v18 = [(IDSServerBag *)selfCopy->_idsServerBag urlWithKey:bagKey];
        uRLOverride = [asynchronouslyCopy URLOverride];

        if (uRLOverride)
        {
          uRLOverride2 = [asynchronouslyCopy URLOverride];

          v18 = uRLOverride2;
        }

        [asynchronouslyCopy setSentByteCount:{objc_msgSend(messageBodyDataOverride2, "length")}];
        date = [MEMORY[0x1E695DF00] date];
        [asynchronouslyCopy setRequestStart:date];

        uniqueID = [asynchronouslyCopy uniqueID];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_195942F04;
        v29[3] = &unk_1E74354B8;
        v29[4] = selfCopy;
        v32 = uniqueID;
        localizedDescription4 = v18;
        v30 = localizedDescription4;
        messageBodyUsingCache = messageBodyUsingCache;
        v31 = messageBodyUsingCache;
        v23 = MEMORY[0x19A8B8CC0](v29);
        remoteURLConnection = [(FTMessageDeliveryRemoteURLConnectionFactory *)selfCopy->_remoteConnectionFactory remoteURLConnection];
        remoteConnection = selfCopy->_remoteConnection;
        selfCopy->_remoteConnection = remoteURLConnection;

        [(FTMessageDelivery_HTTP *)selfCopy _urlRequestWithURL:localizedDescription4 andData:messageBodyDataOverride2 message:asynchronouslyCopy completionBlock:v23];
        v14 = 0;
        v11 = 1;
        goto LABEL_24;
      }

      messageBodyDataOverride2 = 0;
    }

    messageBodyUsingCache = 0;
    goto LABEL_21;
  }

  if ([(FTMessageDelivery *)self logToRegistration])
  {
    selfCopy = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, &selfCopy->super.super, OS_LOG_TYPE_DEFAULT, "Cannot send nil message", buf, 2u);
    }

    v11 = 0;
    goto LABEL_26;
  }

  v11 = 0;
LABEL_27:

  return v11;
}

- (BOOL)_tryRetryMessageWithTimeInterval:(double)interval
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(FTMessageDelivery *)self logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      retries = self->super._retries;
      v14 = 67109120;
      LODWORD(v15) = retries;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Should retry, already tried: %d times", &v14, 8u);
    }
  }

  v7 = self->super._retries + 1;
  self->super._retries = v7;
  if (v7 > 0x59)
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_FAULT))
      {
        sub_195963B98(warning);
      }
    }
  }

  else if ([(FTMessageDeliveryHTTPMobileNetworkManager *)self->_mobileNetworkManager isAirplaneModeEnabled]&& ([(FTMessageDeliveryHTTPMobileNetworkManager *)self->_mobileNetworkManager isWiFiUsable]& 1) == 0)
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Not retrying right now, we're in airplane mode with no wifi", &v14, 2u);
      }
    }

    self->_pendingRetryAfterAirplaneMode = 1;
    self->_retryTimeAfterAirplaneMode = interval;
  }

  else
  {
    self->_pendingRetryAfterAirplaneMode = 0;
    retryBackoffProvider = self->_retryBackoffProvider;
    if (retryBackoffProvider)
    {
      v9 = retryBackoffProvider[2](retryBackoffProvider, self->super._retries, interval);
    }

    else
    {
      v9 = 300.0;
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = v9;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", &v14, 0xCu);
      }
    }

    [(FTMessageDelivery *)self _setRetryTimer:v9];
  }

  return v7 < 0x5A;
}

- (void)queue:(id)queue hitTimeoutForMessage:(id)message
{
  v21 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  messageCopy = message;
  if ([messageCopy wantsCFNetworkTimeout])
  {
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v18 = messageCopy;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Message timed out, but we're going to wait for CFNetwork: %@", buf, 0xCu);
      }
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v18 = messageCopy;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Message timed out, but we're going to wait for CFNetwork: %@", buf, 0xCu);
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
  }

  else if ([messageCopy wantsExtraTimeoutRetry] && (v10 = objc_msgSend(messageCopy, "timeoutRetries"), v10 < objc_msgSend(messageCopy, "maxTimeoutRetries")))
  {
    [messageCopy setTimeoutRetries:{objc_msgSend(messageCopy, "timeoutRetries") + 1}];
    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v18 = [messageCopy timeoutRetries];
        *&v18[4] = 1024;
        *&v18[6] = [messageCopy maxTimeoutRetries];
        v19 = 2112;
        v20 = messageCopy;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Message timed out, but we want extra timeout retries (%d/%d): %@", buf, 0x18u);
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v18 = 0x4000000000000000;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", buf, 0xCu);
      }
    }

    [(FTMessageDelivery *)self _setRetryTimer:2.0];
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v18 = messageCopy;
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Queue timed out delivery for message: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v16 = messageCopy;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v16 = messageCopy;
        IMLogString();
      }
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v18 = messageCopy;
        _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Queue timed out delivery for message: %@", buf, 0xCu);
      }
    }

    [(FTMessageDelivery_HTTP *)self _clearRetryTimer];
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:0];
    self->super._retries = 0;
    [(FTMessageDelivery_HTTP *)self _notifyDelegateAboutError:v15 forMessage:messageCopy];
  }
}

- (void)cancelMessage:(id)message
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v16 cancelMessage:messageCopy];
  if (messageCopy)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = messageCopy;
      _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling message in the queue: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v15 = messageCopy;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v15 = messageCopy;
        IMLogString();
      }
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = messageCopy;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Cancelling message in the queue: %@", buf, 0xCu);
      }
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    _queue = [(FTMessageDelivery *)selfCopy _queue];
    messages = [_queue messages];
    if ([messages containsObject:messageCopy])
    {
    }

    else
    {
      currentMessage = [(FTMessageDelivery *)selfCopy currentMessage];
      v11 = currentMessage == messageCopy;

      if (!v11)
      {
LABEL_19:
        objc_sync_exit(selfCopy);

        goto LABEL_20;
      }
    }

    currentMessage2 = [(FTMessageDelivery *)selfCopy currentMessage];
    v13 = currentMessage2 == messageCopy;

    if (v13)
    {
      selfCopy->_pendingRetryAfterAirplaneMode = 0;
      [(FTMessageDelivery_HTTP *)selfCopy _cleanupURLConnection];
    }

    _queue2 = [(FTMessageDelivery *)selfCopy _queue];
    [_queue2 removeMessage:messageCopy];

    [(FTMessageDelivery_HTTP *)selfCopy _dequeueIfNeeded];
    goto LABEL_19;
  }

LABEL_20:
}

- (BOOL)sendMessage:(id)message
{
  v17 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [messageCopy _setUsingOutgoingPush:0];
  [messageCopy setDeliveryMechanism:2];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [messageCopy setTimeSent:?];
  if ([(FTMessageDelivery *)selfCopy logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = messageCopy;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Adding message to the queue: %@", &v13, 0xCu);
    }
  }

  _queue = [(FTMessageDelivery *)selfCopy _queue];
  [_queue addMessage:messageCopy];

  if ([(FTMessageDelivery_HTTP *)selfCopy busy])
  {
    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        _queue2 = [(FTMessageDelivery *)selfCopy _queue];
        currentMessage = [_queue2 currentMessage];
        remoteConnection = selfCopy->_remoteConnection;
        v13 = 138412546;
        v14 = currentMessage;
        v15 = 2112;
        v16 = remoteConnection;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v13, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)selfCopy _dequeueIfNeeded];
  }

  objc_sync_exit(selfCopy);

  return 1;
}

- (BOOL)sendMessageAtTopOfTheQueue:(id)queue
{
  v17 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [queueCopy setTimeSent:?];
  if ([(FTMessageDelivery *)selfCopy logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = queueCopy;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Adding message to the queue: %@", &v13, 0xCu);
    }
  }

  _queue = [(FTMessageDelivery *)selfCopy _queue];
  [_queue addMessageAtHeadOfQueue:queueCopy];

  if ([(FTMessageDelivery_HTTP *)selfCopy busy])
  {
    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        _queue2 = [(FTMessageDelivery *)selfCopy _queue];
        currentMessage = [_queue2 currentMessage];
        remoteConnection = selfCopy->_remoteConnection;
        v13 = 138412546;
        v14 = currentMessage;
        v15 = 2112;
        v16 = remoteConnection;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v13, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)selfCopy _dequeueIfNeeded];
  }

  objc_sync_exit(selfCopy);

  return 1;
}

- (void)_serverBagLoaded:(id)loaded
{
  v15 = *MEMORY[0x1E69E9840];
  loadedCopy = loaded;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FTMessageDelivery *)selfCopy logToRegistration])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Server bag loaded", &v11, 2u);
    }
  }

  if ([(FTMessageDelivery_HTTP *)selfCopy busy])
  {
    if ([(FTMessageDelivery *)selfCopy logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        _queue = [(FTMessageDelivery *)selfCopy _queue];
        currentMessage = [_queue currentMessage];
        remoteConnection = selfCopy->_remoteConnection;
        v11 = 138412546;
        v12 = currentMessage;
        v13 = 2112;
        v14 = remoteConnection;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "  Busy delivering: %@  (%@)", &v11, 0x16u);
      }
    }
  }

  else
  {
    [(FTMessageDelivery_HTTP *)selfCopy _dequeueIfNeeded];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)authKitBAADisabled
{
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"authkit-baa-disabled"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)shouldFailFastForMessage:(id)message
{
  messageCopy = message;
  if (!_os_feature_enabled_impl() || ([MEMORY[0x1E69A6180] shouldDisableFailFastWhenSatelliteIsAvailable] & 1) != 0)
  {
    goto LABEL_14;
  }

  if (qword_1ED7687F0 != -1)
  {
    sub_195963BDC();
  }

  if (qword_1ED768800 != -1)
  {
    sub_195963BF0();
  }

  topic = [messageCopy topic];
  if ([topic isEqualToIgnoringCase:qword_1ED7687F8])
  {
    isConnectionSuitableForIMLOverStewie = [(_FT_IDSOffGridConnectionMonitor *)self->_offGridConnectionMonitor isConnectionSuitableForIMLOverStewie];
  }

  else
  {
    topic2 = [messageCopy topic];
    if (([topic2 isEqualToIgnoringCase:qword_1ED768808] & 1) == 0)
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

- (void)networkStateChanged
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = FTMessageDelivery_HTTP;
  [(FTMessageDelivery *)&v9 networkStateChanged];
  if (self->_pendingRetryAfterAirplaneMode)
  {
    self->_pendingRetryAfterAirplaneMode = 0;
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "We're out of airplane mode, and we have a pending retry", buf, 2u);
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

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "We're out of airplane mode, and we have a pending retry", buf, 2u);
      }
    }

    retryTimeAfterAirplaneMode = self->_retryTimeAfterAirplaneMode;
    if (retryTimeAfterAirplaneMode < 10.0)
    {
      LODWORD(retryTimeAfterAirplaneMode) = self->super._retries;
      v6 = *&retryTimeAfterAirplaneMode / 10.0;
      if (v6 > 3.0)
      {
        v6 = 3.0;
      }

      retryTimeAfterAirplaneMode = __exp10(v6 + 1.0);
    }

    if (retryTimeAfterAirplaneMode <= 43200.0)
    {
      v7 = retryTimeAfterAirplaneMode;
    }

    else
    {
      v7 = 43200.0;
    }

    if ([(FTMessageDelivery *)self logToRegistration])
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = v7;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Retrying - trying again in %f seconds", buf, 0xCu);
      }
    }

    [(FTMessageDelivery *)self _setRetryTimer:v7];
  }
}

@end