@interface APSNWTCPStream
+ (unsigned)cachedServerCountForDomain:(id)domain;
+ (void)setCachedServerCount:(unsigned int)count forDomain:(id)domain ttl:(unsigned int)ttl;
- (APSNWTCPStream)initWithEnvironment:(id)environment;
- (APSTCPStreamDelegate)delegate;
- (BOOL)isOffloadedConnection;
- (BOOL)isOffloadingViable;
- (BOOL)isPeerTrustedForTrust:(__SecTrust *)trust;
- (BOOL)isTrust:(__SecTrust *)trust validWithPolicy:(__SecPolicy *)policy forPeer:(id)peer;
- (NSString)connectionDebugInfo;
- (id)_createParametersWithType:(int64_t)type onInterface:(id)interface configureTLSBlock:(id)block configureTCPBlock:(id)pBlock configureOffloadBlock:(id)offloadBlock;
- (id)_domain;
- (id)_getTCPInfoData;
- (id)tcpInfoDescription;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)_closeQuery;
- (void)_connectToServerWithConfiguration:(id)configuration;
- (void)_connectToServerWithCount:(unsigned int)count;
- (void)_connectToServerWithPeerName:(id)name;
- (void)_openWithTXTLookup;
- (void)_queryRecordReply:(const void *)reply length:(unsigned __int16)length ttl:(unsigned int)ttl errorCode:(int)code;
- (void)_receiveData;
- (void)close;
- (void)dealloc;
- (void)handleState:(int)state error:(id)error;
- (void)openWithOffloadInfo:(id)info;
- (void)setCachedIPAddress:(id)address;
- (void)setForceWWANInterface:(BOOL)interface;
- (void)setIsConnected:(BOOL)connected;
- (void)setIsSuspended:(BOOL)suspended;
- (void)setRedirectHostname:(id)hostname;
- (void)setUseAlternatePort:(BOOL)port;
- (void)writeDataInBackground:(id)background;
@end

@implementation APSNWTCPStream

- (void)_receiveData
{
  if (self->_connection)
  {
    v3 = 4 * vm_page_size;
    objc_initWeak(&location, self);
    connection = self->_connection;
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_10000F54C;
    completion[3] = &unk_1001881F0;
    objc_copyWeak(&v6, &location);
    completion[4] = self;
    nw_connection_receive(connection, 1u, v3, completion);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (BOOL)isOffloadedConnection
{
  parameters = [(APSNWTCPStream *)self parameters];

  if (parameters)
  {
    parameters2 = [(APSNWTCPStream *)self parameters];
    LODWORD(parameters) = nw_parameters_get_use_aop2_offload();

    v5 = +[APSLog stream];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (parameters)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Current connection is offloaded? %@", &v8, 0x16u);
    }
  }

  return parameters;
}

+ (void)setCachedServerCount:(unsigned int)count forDomain:(id)domain ttl:(unsigned int)ttl
{
  v6 = *&count;
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_1001BF7D8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = qword_1001BF7D8;
    qword_1001BF7D8 = v9;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = objc_alloc_init(_APSServerCount);
  [(_APSServerCount *)v13 setTtlBegin:v12];
  [(_APSServerCount *)v13 setTtlEnd:v12 + ttl];
  [(_APSServerCount *)v13 setServerCount:v6];
  [qword_1001BF7D8 setObject:v13 forKey:domainCopy];

  objc_sync_exit(selfCopy);
}

+ (unsigned)cachedServerCountForDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [qword_1001BF7D8 objectForKey:domainCopy];
  if (v6 && (+[NSDate timeIntervalSinceReferenceDate](NSDate, "timeIntervalSinceReferenceDate"), v8 = v7, [v6 ttlBegin], v8 > v9) && (objc_msgSend(v6, "ttlEnd"), v8 < v10))
  {
    serverCount = [v6 serverCount];
  }

  else
  {
    serverCount = 0;
  }

  objc_sync_exit(selfCopy);
  return serverCount;
}

- (APSNWTCPStream)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = APSNWTCPStream;
  v6 = [(APSNWTCPStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environment, environment);
    v7->_opened = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(APSNWTCPStream *)self close];
  v3.receiver = self;
  v3.super_class = APSNWTCPStream;
  [(APSNWTCPStream *)&v3 dealloc];
}

- (void)setForceWWANInterface:(BOOL)interface
{
  if (self->_opened)
  {
    sub_10010B3DC();
  }

  self->_forceWWANInterface = interface;
}

- (void)setUseAlternatePort:(BOOL)port
{
  if (self->_opened)
  {
    sub_10010B448();
  }

  self->_useAlternatePort = port;
}

- (void)setRedirectHostname:(id)hostname
{
  hostnameCopy = hostname;
  v7 = hostnameCopy;
  if (self->_opened)
  {
    sub_10010B4B4();
    hostnameCopy = v7;
  }

  v5 = [hostnameCopy copy];
  redirectHostname = self->_redirectHostname;
  self->_redirectHostname = v5;
}

- (void)setCachedIPAddress:(id)address
{
  addressCopy = address;
  v7 = addressCopy;
  if (self->_opened)
  {
    sub_10010B520();
    addressCopy = v7;
  }

  v5 = [addressCopy copy];
  cachedIPAddress = self->_cachedIPAddress;
  self->_cachedIPAddress = v5;
}

- (void)setIsConnected:(BOOL)connected
{
  connectedCopy = connected;
  v5 = +[APSLog stream];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (self->_isConnected)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = 138412802;
    selfCopy = self;
    if (connectedCopy)
    {
      v6 = @"YES";
    }

    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to change isConnected=%@ to %@", &v8, 0x20u);
  }

  self->_isConnected = connectedCopy;
}

- (void)setIsSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v5 = +[APSLog stream];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (self->_isSuspended)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = 138412802;
    selfCopy = self;
    if (suspendedCopy)
    {
      v6 = @"YES";
    }

    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ asked to change isSuspended=%@ to %@", &v8, 0x20u);
  }

  self->_isSuspended = suspendedCopy;
}

- (id)_domain
{
  domain = [(APSEnvironment *)self->_environment domain];
  v4 = [domain hasSuffix:@"."];

  domain2 = [(APSEnvironment *)self->_environment domain];
  v6 = domain2;
  if ((v4 & 1) == 0)
  {
    v7 = [domain2 stringByAppendingString:@"."];

    v6 = v7;
  }

  return v6;
}

- (void)openWithOffloadInfo:(id)info
{
  infoCopy = info;
  v5 = +[APSLog stream];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    environment = self->_environment;
    name = [(APSEnvironment *)environment name];
    *buf = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = environment;
    v18 = 2112;
    v19 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Opening %@ with environment %@[%@]", buf, 0x20u);
  }

  if (self->_opened)
  {
    sub_10010B58C();
  }

  self->_opened = 1;
  self->_hasSentPresence = 0;
  if (_os_feature_enabled_impl())
  {
    [(APSNWTCPStream *)self setOffloadInfo:infoCopy];
  }

  self->_generation = arc4random();
  if ([(APSEnvironment *)self->_environment debugHostname])
  {
    hostname = [(APSEnvironment *)self->_environment hostname];
    serverHostname = self->_serverHostname;
    self->_serverHostname = hostname;

    [(APSNWTCPStream *)self _connectToServerWithPeerName:self->_serverHostname];
  }

  else
  {
    forceWWANInterface = self->_forceWWANInterface;
    configurationClass = [(APSNWTCPStream *)self configurationClass];
    v12 = self->_environment;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007BAF0;
    v13[3] = &unk_100188098;
    v13[4] = self;
    [(objc_class *)configurationClass loadConfigurationForEnvironment:v12 connectionType:!forceWWANInterface block:v13];
  }
}

- (void)_openWithTXTLookup
{
  if (![(APSEnvironment *)self->_environment isLoadBalanced])
  {
    selfCopy2 = self;
    v7 = 0;
    goto LABEL_5;
  }

  v3 = objc_opt_class();
  domain = [(APSEnvironment *)self->_environment domain];
  v5 = [v3 cachedServerCountForDomain:domain];

  if (v5)
  {
    selfCopy2 = self;
    v7 = v5;
LABEL_5:

    [(APSNWTCPStream *)selfCopy2 _connectToServerWithCount:v7];
    return;
  }

  if (self->_forceWWANInterface)
  {
    v8 = +[PCPersistentInterfaceManager sharedInstance];
    wWANInterfaceName = [v8 WWANInterfaceName];

    if (wWANInterfaceName)
    {
      v10 = if_nametoindex([wWANInterfaceName UTF8String]);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = +[APSLog stream];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _domain = [(APSNWTCPStream *)self _domain];
    *buf = 138412546;
    selfCopy4 = self;
    v21 = 2112;
    v22 = _domain;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ performing DNS lookup for %@", buf, 0x16u);
  }

  _domain2 = [(APSNWTCPStream *)self _domain];
  Record = DNSServiceQueryRecord(&self->_serviceQuery, 0, v10, [_domain2 UTF8String], 0x10u, 1u, sub_10007C698, self);

  if (Record)
  {
    v15 = +[APSLog stream];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ DNS query failed!", buf, 0xCu);
    }

    [(APSNWTCPStream *)self close];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = Record;
    v17 = APSError();
    [WeakRetained tcpStream:self errorOccured:v17 disconnectReason:{31, v18}];
  }

  else if (DNSServiceSetDispatchQueue(self->_serviceQuery, &_dispatch_main_q))
  {
    sub_10010B5E8();
  }
}

- (void)_queryRecordReply:(const void *)reply length:(unsigned __int16)length ttl:(unsigned int)ttl errorCode:(int)code
{
  v6 = *&code;
  if (reply && (v8 = length) != 0)
  {
    v9 = *&ttl;
    [(APSNWTCPStream *)self _closeQuery];
    valueLen = 0;
    ValuePtr = TXTRecordGetValuePtr(v8, reply, "count", &valueLen);
    v12 = malloc_type_malloc(valueLen + 1, 0xE34EC9B0uLL);
    memcpy(v12, ValuePtr, valueLen);
    *(v12 + valueLen) = 0;
    v13 = strtol(v12, 0, 0);
    free(v12);
    if (v13)
    {
      v14 = objc_opt_class();
      domain = [(APSEnvironment *)self->_environment domain];
      [v14 setCachedServerCount:v13 forDomain:domain ttl:v9];

      [(APSNWTCPStream *)self _connectToServerWithCount:v13];
    }

    else
    {
      [(APSNWTCPStream *)self close];
      v22 = [NSData dataWithBytes:reply length:v8];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v24 = APSError();
      [WeakRetained tcpStream:self errorOccured:v24 disconnectReason:{32, v22}];
    }
  }

  else
  {
    [(APSNWTCPStream *)self close];
    v26 = objc_loadWeakRetained(&self->_delegate);
    domain2 = [(APSEnvironment *)self->_environment domain];
    if (v6 == -65554)
    {
      v17 = APSError();
      v18 = v26;
      selfCopy2 = self;
      v20 = v17;
      v21 = 33;
    }

    else
    {
      v25 = v6;
      v17 = APSError();
      v18 = v26;
      selfCopy2 = self;
      v20 = v17;
      v21 = 34;
    }

    [v18 tcpStream:selfCopy2 errorOccured:v20 disconnectReason:{v21, domain2, v25}];
  }
}

- (void)_closeQuery
{
  serviceQuery = self->_serviceQuery;
  if (serviceQuery)
  {
    DNSServiceRefDeallocate(serviceQuery);
    self->_serviceQuery = 0;
  }
}

- (void)close
{
  if (self->_opened)
  {
    v3 = +[APSLog stream];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      environment = self->_environment;
      name = [(APSEnvironment *)environment name];
      v8 = 138412802;
      selfCopy = self;
      v10 = 2112;
      v11 = environment;
      v12 = 2112;
      v13 = name;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Closing %@ with environment %@[%@]", &v8, 0x20u);
    }

    [(APSNWTCPStream *)self _closeQuery];
    connection = self->_connection;
    if (connection)
    {
      nw_connection_cancel(connection);
      v7 = self->_connection;
      self->_connection = 0;
    }

    self->_opened = 0;
    self->_generation = 0;
  }
}

- (void)_connectToServerWithPeerName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_connection)
  {
    v6 = +[APSLog stream];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10010B644(self, v6);
    }

    goto LABEL_38;
  }

  v7 = [(NSString *)nameCopy copy];
  peerName = self->_peerName;
  self->_peerName = v7;

  port = [(APSEnvironment *)self->_environment port];
  if (self->_useAlternatePort)
  {
    port = [(APSEnvironment *)self->_environment alternatePort];
  }

  v10 = port;
  v11 = +[APSLog stream];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    forceWWANInterface = self->_forceWWANInterface;
    *buf = 138413058;
    if (forceWWANInterface)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    selfCopy3 = self;
    v60 = 2112;
    v61 = v5;
    v62 = 2048;
    v63 = v10;
    v64 = 2112;
    v65 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ _connectToServerWithPeerName: %@ and port: %lu forceWWANInterface? %@", buf, 0x2Au);
  }

  if (self->_opened)
  {
    v6 = sub_100004328(APSDemoHostsKey, 1);
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        name = [(APSEnvironment *)self->_environment name];
        v15 = [v6 objectForKey:name];

        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 copy];
            serverHostname = self->_serverHostname;
            self->_serverHostname = v16;

            v18 = [v15 copy];
            v19 = self->_peerName;
            self->_peerName = v18;

            v20 = +[APSLog stream];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = self->_serverHostname;
              *buf = 138412546;
              selfCopy3 = self;
              v60 = 2112;
              v61 = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ Overriding server hostname/IP to %@", buf, 0x16u);
            }
          }
        }
      }
    }

    [(NSString *)self->_serverHostname UTF8String];
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
    nagleEnabled = self->_nagleEnabled;
    objc_initWeak(&location, self);
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10007D1A4;
    v54[3] = &unk_100188110;
    objc_copyWeak(&v56, &location);
    v54[4] = self;
    v55 = v5;
    v24 = objc_retainBlock(v54);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10007D8E0;
    v51[3] = &unk_100188138;
    v53 = nagleEnabled;
    objc_copyWeak(&v52, &location);
    v25 = objc_retainBlock(v51);
    offloadInfo = [(APSNWTCPStream *)self offloadInfo];
    if (offloadInfo && _os_feature_enabled_impl())
    {
      isOffloadingViable = [(APSNWTCPStream *)self isOffloadingViable];

      if (!isOffloadingViable)
      {
        v28 = 0;
        goto LABEL_30;
      }

      offloadInfo = +[APSLog stream];
      if (os_log_type_enabled(offloadInfo, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, offloadInfo, OS_LOG_TYPE_DEFAULT, "%@: Offload info exists, offloading to AOP.", buf, 0xCu);
      }

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

LABEL_30:
    v29 = [(APSNWTCPStream *)self _createParametersWithType:v28 onInterface:0 configureTLSBlock:v24 configureTCPBlock:v25 configureOffloadBlock:&stru_100188178];
    [(APSNWTCPStream *)self setParameters:v29];

    parameters = [(APSNWTCPStream *)self parameters];
    v31 = nw_connection_create(host_with_numeric_port, parameters);
    connection = self->_connection;
    self->_connection = v31;

    v33 = self->_connection;
    v34 = &_dispatch_main_q;
    nw_connection_set_queue(v33, &_dispatch_main_q);

    sendData = self->_sendData;
    if (sendData)
    {
      v36 = self->_connection;
      _createDispatchData = [(NSMutableData *)sendData _createDispatchData];
      nw_connection_send(v36, _createDispatchData, _nw_content_context_default_message, 1, _nw_connection_send_idempotent_content);

      v38 = self->_sendData;
      self->_sendData = 0;
    }

    v39 = self->_connection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10007D9F4;
    handler[3] = &unk_1001881A0;
    objc_copyWeak(&v50, &location);
    nw_connection_set_state_changed_handler(v39, handler);
    [(APSNWTCPStream *)self _receiveData];
    if (!self->_remainsConnectedWhenWWANSuspends || !self->_forceWWANInterface)
    {
      v40 = self->_connection;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10007DA60;
      v47[3] = &unk_1001881C8;
      objc_copyWeak(&v48, &location);
      v47[4] = self;
      nw_connection_set_better_path_available_handler(v40, v47);
      objc_destroyWeak(&v48);
    }

    v41 = self->_connection;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10007DB08;
    v45[3] = &unk_1001881C8;
    objc_copyWeak(&v46, &location);
    v45[4] = self;
    nw_connection_set_viability_changed_handler(v41, v45);
    nw_connection_start(self->_connection);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v43 = objc_opt_respondsToSelector();

    if (v43)
    {
      v44 = objc_loadWeakRetained(&self->_delegate);
      [v44 tcpStream:self hasDeterminedServerHostname:self->_serverHostname];
    }

    objc_destroyWeak(&v46);
    objc_destroyWeak(&v50);

    objc_destroyWeak(&v52);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);

    goto LABEL_38;
  }

  v6 = +[APSLog stream];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10010B700();
  }

LABEL_38:
}

- (void)_connectToServerWithCount:(unsigned int)count
{
  if ([(APSEnvironment *)self->_environment debugHostname])
  {
    hostname = [(APSEnvironment *)self->_environment hostname];
    v6 = [hostname copy];
  }

  else
  {
    v7 = [NSString alloc];
    hostname = [(APSEnvironment *)self->_environment hostname];
    _domain = [(APSNWTCPStream *)self _domain];
    v6 = [v7 initWithFormat:@"%@.%@", hostname, _domain];
  }

  if ([(APSEnvironment *)self->_environment isLoadBalanced])
  {
    if (count <= 1)
    {
      count = 1;
    }

    v9 = [[NSString alloc] initWithFormat:@"%u-%@", arc4random() % count + 1, v6];
  }

  else
  {
    v9 = v6;
  }

  serverHostname = self->_serverHostname;
  self->_serverHostname = v9;

  if (self->_redirectHostname)
  {
    v11 = +[APSLog stream];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      redirectHostname = self->_redirectHostname;
      *buf = 138412802;
      selfCopy2 = self;
      v17 = 2112;
      v18 = redirectHostname;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ courier redirect hostname is defined, using hostname %@ and peername %@", buf, 0x20u);
    }

    objc_storeStrong(&self->_serverHostname, self->_redirectHostname);
  }

  if (self->_cachedIPAddress)
  {
    v13 = +[APSLog stream];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      cachedIPAddress = self->_cachedIPAddress;
      *buf = 138412802;
      selfCopy2 = self;
      v17 = 2112;
      v18 = cachedIPAddress;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ courier last cached ip address is defined, using hostname %@ and peername %@", buf, 0x20u);
    }

    objc_storeStrong(&self->_serverHostname, self->_cachedIPAddress);
  }

  [(APSNWTCPStream *)self _connectToServerWithPeerName:v6];
}

- (void)_connectToServerWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  isLoadBalanced = [(APSEnvironment *)self->_environment isLoadBalanced];
  v6 = +[APSLog stream];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isLoadBalanced)
  {
    if (v7)
    {
      serverCount = [configurationCopy serverCount];
      hostname = [configurationCopy hostname];
      *buf = 138412802;
      selfCopy4 = self;
      v27 = 2048;
      v28 = serverCount;
      v29 = 2112;
      v30 = hostname;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ env isLoadBalanced, using server count %lu and hostname %@", buf, 0x20u);
    }

    v10 = arc4random();
    v11 = v10 % ([configurationCopy serverCount] + 1);
    v12 = [NSString alloc];
    hostname2 = [configurationCopy hostname];
    v14 = [v12 initWithFormat:@"%u-%@", v11, hostname2];
    serverHostname = self->_serverHostname;
    self->_serverHostname = v14;
  }

  else
  {
    if (v7)
    {
      hostname3 = [configurationCopy hostname];
      *buf = 138412546;
      selfCopy4 = self;
      v27 = 2112;
      v28 = hostname3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ env is not load balanced, using config's host name: %@", buf, 0x16u);
    }

    hostname4 = [configurationCopy hostname];
    hostname2 = self->_serverHostname;
    self->_serverHostname = hostname4;
  }

  if (self->_redirectHostname)
  {
    v18 = +[APSLog stream];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      redirectHostname = self->_redirectHostname;
      hostname5 = [configurationCopy hostname];
      *buf = 138412802;
      selfCopy4 = self;
      v27 = 2112;
      v28 = redirectHostname;
      v29 = 2112;
      v30 = hostname5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ courier redirect hostname is defined, using hostname %@ and peername %@", buf, 0x20u);
    }

    objc_storeStrong(&self->_serverHostname, self->_redirectHostname);
  }

  if (self->_cachedIPAddress)
  {
    v21 = +[APSLog stream];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      cachedIPAddress = self->_cachedIPAddress;
      hostname6 = [configurationCopy hostname];
      *buf = 138412802;
      selfCopy4 = self;
      v27 = 2112;
      v28 = cachedIPAddress;
      v29 = 2112;
      v30 = hostname6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ courier last cached ip address is defined, using hostname %@ and peername %@", buf, 0x20u);
    }

    objc_storeStrong(&self->_serverHostname, self->_cachedIPAddress);
  }

  hostname7 = [configurationCopy hostname];
  [(APSNWTCPStream *)self _connectToServerWithPeerName:hostname7];
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  if (!self->_connection)
  {
    return 0;
  }

  v5 = [[NSData alloc] initWithBytes:write length:length];
  connection = self->_connection;
  _createDispatchData = [v5 _createDispatchData];
  nw_connection_send(connection, _createDispatchData, _nw_content_context_default_message, 1, _nw_connection_send_idempotent_content);

  v8 = [v5 length];
  return v8;
}

- (void)writeDataInBackground:(id)background
{
  backgroundCopy = background;
  v5 = backgroundCopy;
  connection = self->_connection;
  v11 = backgroundCopy;
  if (connection)
  {
    _createDispatchData = [backgroundCopy _createDispatchData];
    nw_connection_send(connection, _createDispatchData, _nw_content_context_default_message, 1, _nw_connection_send_idempotent_content);
  }

  else
  {
    sendData = self->_sendData;
    if (!sendData)
    {
      v9 = objc_alloc_init(NSMutableData);
      v10 = self->_sendData;
      self->_sendData = v9;

      v5 = v11;
      sendData = self->_sendData;
    }

    [(NSMutableData *)sendData appendData:v5];
  }
}

- (BOOL)isTrust:(__SecTrust *)trust validWithPolicy:(__SecPolicy *)policy forPeer:(id)peer
{
  peerCopy = peer;
  if (!sub_10000712C() || (v8 = 1, v9 = sub_100004328(APSTrustAllHosts, 1), v10 = [v9 BOOLValue], v9, (v10 & 1) == 0))
  {
    if (SecTrustSetPolicies(trust, policy))
    {
      v11 = +[APSLog stream];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_10010B7D0();
      }

      v8 = 0;
    }

    else
    {
      error = 0;
      v8 = SecTrustEvaluateWithError(trust, &error);
      if (!v8)
      {
        if (error)
        {
          v12 = error;
          v13 = +[APSLog stream];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10010B844();
          }
        }

        else
        {
          v12 = +[APSLog stream];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10010B8AC(v12);
          }
        }
      }
    }
  }

  return v8;
}

- (BOOL)isPeerTrustedForTrust:(__SecTrust *)trust
{
  if (!trust)
  {
    return 0;
  }

  if (os_variant_allows_internal_security_policies() && ![(APSEnvironment *)self->_environment isCertificateValidated])
  {
    v10 = +[APSLog stream];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      peerName = self->_peerName;
      v19 = 138412290;
      v20 = peerName;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not performing validation for %@", &v19, 0xCu);
    }

    v9 = 1;
    goto LABEL_20;
  }

  if (![(APSEnvironment *)self->_environment isCertificateValidated])
  {
    v5 = +[APSLog stream];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10010B8F0(&self->_environment, v5);
    }
  }

  ApplePushService = SecPolicyCreateApplePushService();
  if (!ApplePushService)
  {
    v10 = +[APSLog stream];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10010B9F8(&self->_peerName, v10);
    }

    goto LABEL_19;
  }

  v7 = ApplePushService;
  v8 = [(APSNWTCPStream *)self isTrust:trust validWithPolicy:ApplePushService forPeer:self->_peerName];
  CFRelease(v7);
  if ((v8 & 1) == 0)
  {
    v10 = +[APSLog stream];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10010B988(&self->_peerName, v10, v12, v13, v14, v15, v16, v17);
    }

LABEL_19:
    v9 = 0;
LABEL_20:

    return v9;
  }

  return 1;
}

- (void)handleState:(int)state error:(id)error
{
  errorCopy = error;
  if (!self->_connection)
  {
    v7 = +[APSLog stream];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10010BA74();
    }

    goto LABEL_25;
  }

  if (state > 3)
  {
    if (state != 4)
    {
      if (state == 5)
      {
        [(APSNWTCPStream *)self close];
      }

      goto LABEL_26;
    }

LABEL_23:
    [(APSNWTCPStream *)self close];
    self->_hasError = 1;
    v7 = nw_error_copy_cf_error(errorCopy);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tcpStream:self errorOccured:v7 disconnectReason:19];
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  if (state == 1)
  {
    goto LABEL_23;
  }

  if (state == 3)
  {
    [(APSNWTCPStream *)self setHasEstablishedConnection:1];
    v7 = nw_connection_copy_connected_path();
    if (v7)
    {
      v8 = nw_path_copy_interface();
      v9 = v8;
      if (v8)
      {
        v10 = [NSString stringWithUTF8String:nw_interface_get_name(v8)];
        interfaceName = self->_interfaceName;
        self->_interfaceName = v10;

        if (_os_feature_enabled_impl())
        {
          self->_interfaceConstraint = [PCInterfaceMonitor isPathUltraConstrained:v7];
        }
      }
    }

    v12 = nw_connection_copy_connected_remote_endpoint();
    WeakRetained = v12;
    if (v12)
    {
      self->_ipAddressFamily = nw_endpoint_get_address(v12)->sa_family;
      v14 = [NSString stringWithUTF8String:nw_endpoint_get_hostname(WeakRetained)];
      serverIPAddress = self->_serverIPAddress;
      self->_serverIPAddress = v14;

      self->_serverPort = nw_endpoint_get_port(WeakRetained);
    }

    if (!self->_hasSentPresence)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        connection = self->_connection;
        v19 = nw_protocol_copy_tls_definition();
        v20 = nw_connection_copy_protocol_metadata(connection, v19);

        v40 = v20;
        if (v20 && nw_protocol_metadata_is_tls(v20))
        {
          v21 = nw_tls_copy_sec_protocol_metadata(v20);
          v22 = sec_protocol_metadata_copy_negotiated_protocol();
          if (v22)
          {
            v23 = v22;
            v24 = [NSString stringWithUTF8String:v22];
            free(v23);
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = +[APSLog stream];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ negotiatedProtocol: %@", buf, 0x16u);
        }

        v39 = v24;
        v38 = [v24 hasPrefix:@"apns-pack-v1"];
        if (v38)
        {
          v26 = [v24 componentsSeparatedByString:@":"];
          v27 = +[APSLog stream];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Negotiated protocol components: %@", buf, 0xCu);
          }

          if ([v26 count] == 3)
          {
            v28 = [v26 objectAtIndexedSubscript:1];
            integerValue = [v28 integerValue];

            v29 = [v26 objectAtIndexedSubscript:2];
            integerValue2 = [v29 integerValue];
          }

          else
          {
            integerValue2 = 0;
            integerValue = 0;
          }
        }

        else
        {
          integerValue2 = 0;
          integerValue = 0;
        }

        self->_hasSentPresence = 1;
        memset(buf, 0, sizeof(buf));
        nw_connection_fillout_tcp_statistics();
        v31 = [NSNumber numberWithUnsignedInt:*&buf[8]];
        v32 = [NSNumber numberWithUnsignedInt:*buf];
        v33 = [NSNumber numberWithUnsignedInt:*&buf[16]];
        v34 = [NSDictionary dictionaryWithObjectsAndKeys:v32, @"dns", v33, @"tls", v31, @"tcp_handshake", 0];
        v35 = +[APSLog stream];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v41 = 138412290;
          v42 = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "connectionStatistics: %@", v41, 0xCu);
        }

        v36 = objc_loadWeakRetained(&self->_delegate);
        [v36 tcpStreamHasConnected:self context:v34 enabledPackedFormat:v38 maxEncoderTableSize:integerValue maxDecoderTableSize:integerValue2 secureHandshakeEnabled:1];
      }
    }

    goto LABEL_24;
  }

LABEL_26:
}

- (id)_createParametersWithType:(int64_t)type onInterface:(id)interface configureTLSBlock:(id)block configureTCPBlock:(id)pBlock configureOffloadBlock:(id)offloadBlock
{
  interfaceCopy = interface;
  blockCopy = block;
  pBlockCopy = pBlock;
  offloadBlockCopy = offloadBlock;
  if (type == 1)
  {
    offload_secure_tcp = nw_parameters_create_offload_secure_tcp();
  }

  else
  {
    offload_secure_tcp = nw_parameters_create_secure_tcp(blockCopy, pBlockCopy);
  }

  v17 = offload_secure_tcp;
  empty = xpc_array_create_empty();
  xpc_array_set_uint64(empty, 0xFFFFFFFFFFFFFFFFLL, 0x1389uLL);
  nw_parameters_set_prohibited_interface_subtypes();
  nw_parameters_set_prefer_no_proxy(v17, 1);
  nw_parameters_set_service_class(v17, nw_service_class_responsive_data);
  if (_os_feature_enabled_impl() && self->_allowedInterfaceConstraint == 1)
  {
    nw_parameters_set_allow_ultra_constrained();
  }

  if (interfaceCopy)
  {
    [interfaceCopy UTF8String];
    v19 = nw_interface_create_with_name();
    nw_parameters_require_interface(v17, v19);

    v20 = +[APSLog stream];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412546;
      selfCopy3 = self;
      v30 = 2112;
      v31 = interfaceCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ binding connection to interface %@", &v28, 0x16u);
    }
  }

  if (self->_forceWWANInterface && (v21 = nw_parameters_copy_default_protocol_stack(v17), v22 = nw_protocol_stack_copy_internet_protocol(v21), nw_ip_options_set_local_address_preference(v22, nw_ip_local_address_preference_stable), v22, v21, self->_forceWWANInterface) && (+[PCPersistentInterfaceManager sharedInstance](PCPersistentInterfaceManager, "sharedInstance"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 allowBindingToWWAN], v23, v24))
  {
    v25 = +[APSLog stream];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: binding stream to WWAN interface", &v28, 0xCu);
    }

    nw_parameters_set_required_interface_type(v17, nw_interface_type_cellular);
  }

  else
  {
    v26 = +[APSLog stream];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@: binding stream to non cellular interface", &v28, 0xCu);
    }

    nw_parameters_prohibit_interface_type(v17, nw_interface_type_cellular);
  }

  return v17;
}

- (BOOL)isOffloadingViable
{
  offloadPathEvaluator = [(APSNWTCPStream *)self offloadPathEvaluator];

  if (!offloadPathEvaluator)
  {
    v4 = [(APSNWTCPStream *)self _createParametersWithType:1 onInterface:0 configureTLSBlock:_nw_parameters_configure_protocol_default_configuration configureTCPBlock:_nw_parameters_configure_protocol_default_configuration configureOffloadBlock:_nw_parameters_configure_protocol_default_configuration];
    [(APSEnvironment *)self->_environment port];
    if (self->_useAlternatePort)
    {
      [(APSEnvironment *)self->_environment alternatePort];
    }

    [(NSString *)self->_serverHostname UTF8String];
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    [(APSNWTCPStream *)self setOffloadPathEvaluator:evaluator_for_endpoint];
  }

  offloadPathEvaluator2 = [(APSNWTCPStream *)self offloadPathEvaluator];
  v8 = nw_path_evaluator_copy_path();

  status = nw_path_get_status(v8);
  v10 = +[APSLog stream];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (status == nw_path_status_satisfied)
  {
    if (v11)
    {
      v14 = 138412290;
      selfCopy2 = self;
      v12 = "%@: Path evluator says AOP path is valid. Offloading.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
    }
  }

  else if (v11)
  {
    v14 = 138412290;
    selfCopy2 = self;
    v12 = "%@: Path evluator says AOP path is not. Not offloading.";
    goto LABEL_10;
  }

  return status == nw_path_status_satisfied;
}

- (id)_getTCPInfoData
{
  if (self->_connection)
  {
    v3 = nw_connection_copy_tcp_info();
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    if ([v4 count])
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = sub_100014044;
      v12 = sub_1000146B4;
      v13 = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10007F114;
      v7[3] = &unk_100188218;
      v7[4] = self;
      v7[5] = &v8;
      [v4 enumerateKeysAndObjectsUsingBlock:v7];
      v5 = v9[5];
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tcpInfoDescription
{
  _getTCPInfoData = [(APSNWTCPStream *)self _getTCPInfoData];
  if ([_getTCPInfoData length] == 424)
  {
    bytes = [_getTCPInfoData bytes];
    v4 = [NSString stringWithFormat:@" %u %x %u %u %x %u %u %u %u %u %u %u %u %u %u %u %u %d %u %llu %llu %llu %llu %llu %llu", *bytes, bytes[1], bytes[2], bytes[3], *(bytes + 1), *(bytes + 2), *(bytes + 3), *(bytes + 4), *(bytes + 5), *(bytes + 6), *(bytes + 7), *(bytes + 9), *(bytes + 10), *(bytes + 11), *(bytes + 12), *(bytes + 13), *(bytes + 14), *(bytes + 15), *(bytes + 16), *(bytes + 76), *(bytes + 92), *(bytes + 108), *(bytes + 116), *(bytes + 132)];
  }

  else
  {
    v5 = +[APSLog stream];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10010BADC(v5);
    }

    v4 = 0;
  }

  return v4;
}

- (NSString)connectionDebugInfo
{
  if (!self->_serverHostname || !self->_connection)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v3 = nw_connection_copy_connected_local_endpoint();
  v4 = nw_connection_copy_connected_remote_endpoint();
  v5 = v4;
  serverHostname = self->_serverHostname;
  if (!v3)
  {
    port = 0;
    hostname = "";
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_8:
    v10 = 0;
    v9 = "";
    goto LABEL_9;
  }

  hostname = nw_endpoint_get_hostname(v3);
  port = nw_endpoint_get_port(v3);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = nw_endpoint_get_hostname(v5);
  v10 = nw_endpoint_get_port(v5);
LABEL_9:
  v11 = [NSString stringWithFormat:@"%@ ([%s]:%u, [%s]:%u)", serverHostname, hostname, port, v9, v10];

LABEL_10:

  return v11;
}

- (APSTCPStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end