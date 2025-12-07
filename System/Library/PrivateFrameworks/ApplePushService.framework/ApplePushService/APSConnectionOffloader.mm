@interface APSConnectionOffloader
- (APSConnectionOffloader)initWithEnvironment:(id)environment cacheDictionary:(id)dictionary supportsKeepAliveV2:(BOOL)v2;
- (APSConnectionOffloadingDelegate)offloadDelegate;
- (APSOffloadMetricReporter)metricDelegate;
- (BOOL)_establishTightbeamInterface;
- (unsigned)APSInterfaceToAONInterface:(int64_t)interface;
- (unsigned)PCAddressFamilyToAONAddressFamily:(int)family;
- (void)_initializeKeepAliveStateMachine:(id)machine supportsKeepAliveV2:(BOOL)v2;
- (void)connectionOffloadSever:(id)sever cacheKeepAliveInterval:(double)interval isInitialGrowth:(BOOL)growth;
- (void)offloadKeepAlive:(int64_t)alive;
- (void)reportOffloadEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)events droppedEvents:(aonmicroapsd_droppedtelemetryeventcount_s *)droppedEvents;
- (void)sendAPOriginatedKeepAlive:(int64_t)alive;
- (void)stopOffloading;
@end

@implementation APSConnectionOffloader

- (APSConnectionOffloader)initWithEnvironment:(id)environment cacheDictionary:(id)dictionary supportsKeepAliveV2:(BOOL)v2
{
  v2Copy = v2;
  dictionaryCopy = dictionary;
  if ([environment environmentType] == 1)
  {
    goto LABEL_9;
  }

  v13.receiver = self;
  v13.super_class = APSConnectionOffloader;
  v9 = [(APSConnectionOffloader *)&v13 init];
  self = v9;
  if (v9)
  {
    if ([(APSConnectionOffloader *)v9 _establishTightbeamInterface])
    {
      [(APSConnectionOffloader *)self _initializeKeepAliveStateMachine:dictionaryCopy supportsKeepAliveV2:v2Copy];
      goto LABEL_5;
    }

    v11 = +[APSLog offloader];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10010D8C8(self, v11);
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

LABEL_5:
  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)_establishTightbeamInterface
{
  if ((sub_100013188() & 1) == 0)
  {
    v7 = +[APSLog offloader];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: This device does not support AOP2.", buf, 0xCu);
    }

    goto LABEL_11;
  }

  rpc_init();
  server_by_name = rpc_get_server_by_name("com.apple.aop2.uapsd.apsd");
  v4 = +[APSLog offloader];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v18 = 2048;
    v19 = server_by_name;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Got server for micro apsd %p", buf, 0x16u);
  }

  __strlcpy_chk();
  v5 = rpc_interface_open(server_by_name, buf, 0, &self->_serverEndpoint, &self->_clientEndpoint);
  v6 = +[APSLog offloader];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy3 = self;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Opened rpc interface with error %d", &v12, 0x12u);
  }

  if (v5)
  {
    rpc_release_server(server_by_name);
LABEL_11:
    LOBYTE(v8) = 0;
    return v8;
  }

  sub_1000C4264(&self->_device, [(APSConnectionOffloader *)self serverEndpoint]);
  v10 = [[APSConnectionOffloadServer alloc] initWithServerEndpoint:[(APSConnectionOffloader *)self clientEndpoint]];
  v11 = v10;
  v8 = v10 != 0;
  if (v10)
  {
    [(APSConnectionOffloadServer *)v10 setDelegate:self];
    [(APSConnectionOffloader *)self setServer:v11];
  }

  else
  {
    self->_clientEndpoint = 0;
    self->_serverEndpoint = 0;
    self->_device.connection = 0;
    [(APSConnectionOffloader *)self setServerEndpoint:0];
  }

  rpc_release_server(server_by_name);

  return v8;
}

- (unsigned)PCAddressFamilyToAONAddressFamily:(int)family
{
  if (!family)
  {
    return 4;
  }

  if (family == 1)
  {
    return 6;
  }

  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"APSConnectionOffloader.m" lineNumber:132 description:@"Unexpected address family"];

  return -1;
}

- (void)_initializeKeepAliveStateMachine:(id)machine supportsKeepAliveV2:(BOOL)v2
{
  v2Copy = v2;
  machineCopy = machine;
  v31 = 0;
  v7 = PCIntervalCacheInInitialGrowthKey;
  v8 = PCIntervalCacheKeepAliveIntervalKey;
  v9 = 1;
  v10 = &fputc_ptr;
  v11 = &fputc_ptr;
  v29 = machineCopy;
  do
  {
    v28 = v9;
    v30 = [(APSConnectionOffloader *)self APSInterfaceToAONInterface:v31];
    v12 = 0;
    v13 = 1;
    do
    {
      v34 = v13;
      v33 = [(APSConnectionOffloader *)self PCAddressFamilyToAONAddressFamily:v12];
      v32 = [v10[376] stringForAddressFamily:v12];
      [v11[341] numberWithInteger:v31];
      v14 = v10;
      v16 = v15 = v2Copy;
      v17 = [machineCopy objectForKeyedSubscript:v16];
      v18 = [v17 objectForKeyedSubscript:v32];

      v19 = [v18 objectForKeyedSubscript:v7];
      bOOLValue = [v19 BOOLValue];

      v21 = [v18 objectForKeyedSubscript:v8];
      v22 = v8;
      selfCopy = self;
      v24 = v7;
      longValue = [v21 longValue];

      v2Copy = v15;
      v10 = v14;
      v11 = &fputc_ptr;
      v26 = longValue;
      v7 = v24;
      self = selfCopy;
      v8 = v22;
      v35 = v26;
      v27 = bOOLValue;
      machineCopy = v29;
      sub_1000C3BD0(&self->_device.connection, v30, v33, v2Copy, v27, &v35, &stru_100189E00);

      v13 = 0;
      v12 = 1;
    }

    while ((v34 & 1) != 0);
    v9 = 0;
    v31 = 1;
  }

  while ((v28 & 1) != 0);
}

- (void)offloadKeepAlive:(int64_t)alive
{
  v5 = [(APSConnectionOffloader *)self APSInterfaceToAONInterface:?];
  v6 = +[APSLog offloader];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(alive);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Offloading keep alive to AOP on interface %@", &v8, 0x16u);
  }

  sub_1000C3DA8(&self->_device.connection, v5, &stru_100189E20);
}

- (void)sendAPOriginatedKeepAlive:(int64_t)alive
{
  v5 = [(APSConnectionOffloader *)self APSInterfaceToAONInterface:?];
  v6 = +[APSLog offloader];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000067F8(alive);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Forcing AP Keep Alive on interface %@", &v8, 0x16u);
  }

  sub_1000C40F0(&self->_device.connection, v5, &stru_100189E40);
}

- (void)stopOffloading
{
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = [(APSConnectionOffloader *)self APSInterfaceToAONInterface:v3];
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = [(APSConnectionOffloader *)self PCAddressFamilyToAONAddressFamily:v7];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000BCBD8;
      v11[3] = &unk_100189E68;
      v11[4] = self;
      v13 = v6;
      v12 = v7;
      sub_1000C3F1C(&self->_device.connection, v6, v10, v11);
      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
}

- (unsigned)APSInterfaceToAONInterface:(int64_t)interface
{
  if (!interface)
  {
    return 0;
  }

  if (interface == 1)
  {
    return 1;
  }

  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"APSConnectionOffloader.m" lineNumber:194 description:@"Unexpected interface"];

  return -1;
}

- (void)connectionOffloadSever:(id)sever cacheKeepAliveInterval:(double)interval isInitialGrowth:(BOOL)growth
{
  growthCopy = growth;
  offloadDelegate = [(APSConnectionOffloader *)self offloadDelegate];
  [offloadDelegate connectionOffloader:self cacheKeepAliveInterval:growthCopy isInitialGrowth:interval];
}

- (void)reportOffloadEvents:(const aonmicroapsd_telemetryeventrecord_v_s *)events droppedEvents:(aonmicroapsd_droppedtelemetryeventcount_s *)droppedEvents
{
  metricDelegate = [(APSConnectionOffloader *)self metricDelegate];
  v7 = *droppedEvents;
  [metricDelegate reportOffloadEvents:events droppedEvents:&v7];
}

- (APSConnectionOffloadingDelegate)offloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_offloadDelegate);

  return WeakRetained;
}

- (APSOffloadMetricReporter)metricDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metricDelegate);

  return WeakRetained;
}

@end