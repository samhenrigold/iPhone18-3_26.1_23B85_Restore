@interface MTRDeviceConnectivityMonitor
+ (_DNSServiceRef_t)_sharedResolverConnection;
- (MTRDeviceConnectivityMonitor)initWithCompressedFabricID:(id)d nodeID:(id)iD;
- (MTRDeviceConnectivityMonitor)initWithInstanceName:(id)name;
- (id).cxx_construct;
- (void)_callHandler;
- (void)_stopMonitoring;
- (void)dealloc;
- (void)handleResolvedHostname:(const char *)hostname port:(unsigned __int16)port error:(int)error;
- (void)startMonitoringWithHandler:(id)handler queue:(id)queue;
- (void)stopMonitoring;
@end

@implementation MTRDeviceConnectivityMonitor

- (MTRDeviceConnectivityMonitor)initWithInstanceName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MTRDeviceConnectivityMonitor;
  v5 = [(MTRDeviceConnectivityMonitor *)&v11 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    instanceName = v5->_instanceName;
    v5->_instanceName = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    connections = v5->_connections;
    v5->_connections = dictionary;
  }

  return v5;
}

- (MTRDeviceConnectivityMonitor)initWithCompressedFabricID:(id)d nodeID:(id)iD
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  unsignedLongLongValue = [dCopy unsignedLongLongValue];
  v13[0] = [iDCopy unsignedLongLongValue];
  v13[1] = unsignedLongLongValue;
  if (sub_23948BE1C(v16, 0x35uLL, v13))
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ could not make instance name", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ could not make instance name", self);
    }

    selfCopy2 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
    self = [(MTRDeviceConnectivityMonitor *)self initWithInstanceName:v11];

    selfCopy2 = self;
  }

  return selfCopy2;
}

- (void)dealloc
{
  begin = self->_resolvers.__begin_;
  end = self->_resolvers.__end_;
  while (begin != end)
  {
    DNSServiceRefDeallocate(*begin++);
  }

  v5.receiver = self;
  v5.super_class = MTRDeviceConnectivityMonitor;
  [(MTRDeviceConnectivityMonitor *)&v5 dealloc];
}

+ (_DNSServiceRef_t)_sharedResolverConnection
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&unk_27DF775E8);
  result = qword_27DF775F0;
  if (!qword_27DF775F0)
  {
    Connection = DNSServiceCreateConnection(&qword_27DF775F0);
    if (Connection)
    {
      v5 = Connection;
      v6 = sub_2393D9044(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(selfCopy) = v5;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "MTRDeviceConnectivityMonitor: DNSServiceCreateConnection failed %d", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceConnectivityMonitor: DNSServiceCreateConnection failed %d", v5);
      }
    }

    else
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("MTRDeviceConnectivityMonitor", v7);
      v9 = qword_27DF775F8;
      qword_27DF775F8 = v8;

      if (!DNSServiceSetDispatchQueue(qword_27DF775F0, qword_27DF775F8))
      {
        return qword_27DF775F0;
      }

      v10 = sub_2393D9044(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ cannot set dispatch queue on resolve", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ cannot set dispatch queue on resolve", self);
      }

      DNSServiceRefDeallocate(qword_27DF775F0);
      qword_27DF775F0 = 0;
      v11 = qword_27DF775F8;
      qword_27DF775F8 = 0;
    }

    return 0;
  }

  return result;
}

- (void)_callHandler
{
  os_unfair_lock_assert_owner(&unk_27DF775E8);
  v3 = MEMORY[0x23EE78590](self->_monitorHandler);
  if (v3)
  {
    v4 = v3;
    dispatch_async(self->_handlerQueue, v3);
    v3 = v4;
  }
}

- (void)handleResolvedHostname:(const char *)hostname port:(unsigned __int16)port error:(int)error
{
  portCopy = port;
  v31 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&unk_27DF775E8);
  if (hostname)
  {
    if (error == -65563)
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy5 = self;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ disconnected from dns-sd subsystem", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ disconnected from dns-sd subsystem", self);
      }

      [(MTRDeviceConnectivityMonitor *)self _stopMonitoring];
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:hostname];
      v12 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v11];

      if (!v12)
      {
        snprintf(__str, 6uLL, "%d", __rev16(portCopy));
        host = nw_endpoint_create_host(hostname, __str);
        if (host)
        {
          secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
          if (secure_udp)
          {
            v15 = nw_connection_create(host, secure_udp);
            v16 = v15;
            if (v15)
            {
              nw_connection_set_queue(v15, qword_27DF775F8);
              objc_initWeak(buf, self);
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 3221225472;
              handler[2] = sub_239295FB4;
              handler[3] = &unk_278A74440;
              objc_copyWeak(&v23, buf);
              nw_connection_set_path_changed_handler(v16, handler);
              v20[0] = MEMORY[0x277D85DD0];
              v20[1] = 3221225472;
              v20[2] = sub_239296100;
              v20[3] = &unk_278A74468;
              objc_copyWeak(&v21, buf);
              nw_connection_set_viability_changed_handler(v16, v20);
              nw_connection_start(v16);
              [(NSMutableDictionary *)self->_connections setObject:v16 forKeyedSubscript:v11];
              objc_destroyWeak(&v21);
              objc_destroyWeak(&v23);
              objc_destroyWeak(buf);
            }

            else
            {
              v19 = sub_2393D9044(0);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                selfCopy5 = self;
                v27 = 2080;
                hostnameCopy2 = hostname;
                v29 = 2080;
                v30 = __str;
                _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "%@ failed to create connection for %s:%s", buf, 0x20u);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0, 1, "%@ failed to create connection for %s:%s", self, hostname, __str);
              }
            }
          }

          else
          {
            v18 = sub_2393D9044(0);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy5 = self;
              _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%@ failed to create udp parameters", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1, "%@ failed to create udp parameters", self);
            }
          }
        }

        else
        {
          v17 = sub_2393D9044(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            selfCopy5 = self;
            v27 = 2080;
            hostnameCopy2 = hostname;
            v29 = 2080;
            v30 = __str;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "%@ failed to create endpoint for %s:%s", buf, 0x20u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "%@ failed to create endpoint for %s:%s", self, hostname, __str);
          }
        }
      }
    }
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy5 = self;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ NULL host resolved, ignoring", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ NULL host resolved, ignoring", self);
    }
  }

  os_unfair_lock_unlock(&unk_27DF775E8);
}

- (void)startMonitoringWithHandler:(id)handler queue:(id)queue
{
  v41 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  os_unfair_lock_lock(&unk_27DF775E8);
  v8 = MEMORY[0x23EE78590](handlerCopy);
  monitorHandler = self->_monitorHandler;
  self->_monitorHandler = v8;

  objc_storeStrong(&self->_handlerQueue, queue);
  begin = self->_resolvers.__begin_;
  end = self->_resolvers.__end_;
  p_resolvers = &self->_resolvers;
  v13 = sub_2393D9044(0);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (end == begin)
  {
    if (v14)
    {
      instanceName = self->_instanceName;
      *buf = 138412802;
      selfCopy4 = self;
      v37 = 2112;
      v38 = instanceName;
      v39 = 2048;
      v40 = qword_27DF77600;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ start connectivity monitoring for %@ (%lu monitoring objects)", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ start connectivity monitoring for %@ (%lu monitoring objects)", self, self->_instanceName, qword_27DF77600);
    }

    v16 = +[MTRDeviceConnectivityMonitor _sharedResolverConnection];
    if (v16)
    {
      v33 = queueCopy;
      for (i = 0; i != 2; ++i)
      {
        v18 = off_278A74488[i];
        sdRef = v16;
        v19 = DNSServiceResolve(&sdRef, 0x4000u, 0, [(NSString *)self->_instanceName UTF8String], "_matter._tcp", v18, sub_2392966A0, self);
        if (v19)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = "(null)";
            }

            selfCopy4 = self;
            v37 = 2080;
            v38 = v20;
            v39 = 1024;
            LODWORD(v40) = v19;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ failed to create resolver for %s domain: %d", buf, 0x1Cu);
          }

          if (sub_2393D5398(1u))
          {
            if (v18)
            {
              v21 = v18;
            }

            else
            {
              v21 = "(null)";
            }

            sub_2393D5320(0, 1, "%@ failed to create resolver for %s domain: %d", self, v21, v19);
          }
        }

        else
        {
          v23 = self->_resolvers.__end_;
          cap = self->_resolvers.__cap_;
          if (v23 >= cap)
          {
            v25 = v23 - p_resolvers->__begin_;
            if ((v25 + 1) >> 61)
            {
              sub_238DBAEA8();
            }

            v26 = cap - p_resolvers->__begin_;
            v27 = v26 >> 2;
            if (v26 >> 2 <= (v25 + 1))
            {
              v27 = v25 + 1;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v27;
            }

            if (v28)
            {
              sub_239296C28(&self->_resolvers, v28);
            }

            *(8 * v25) = sdRef;
            v24 = (8 * v25 + 8);
            v29 = self->_resolvers.__begin_;
            v30 = (self->_resolvers.__end_ - v29);
            v31 = (8 * v25 - v30);
            memcpy(v31, v29, v30);
            v32 = self->_resolvers.__begin_;
            self->_resolvers.__begin_ = v31;
            self->_resolvers.__end_ = v24;
            self->_resolvers.__cap_ = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v23 = sdRef;
            v24 = v23 + 1;
          }

          self->_resolvers.__end_ = v24;
        }
      }

      queueCopy = v33;
      if (self->_resolvers.__end_ != self->_resolvers.__begin_)
      {
        ++qword_27DF77600;
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ failed to get shared resolver connection", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ failed to get shared resolver connection", self);
      }
    }
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ connectivity monitor already running", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ connectivity monitor already running", self);
    }
  }

  os_unfair_lock_unlock(&unk_27DF775E8);
}

- (void)_stopMonitoring
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&unk_27DF775E8);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v6), v13];
        nw_connection_cancel(v7);

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)self->_connections removeAllObjects];
  monitorHandler = self->_monitorHandler;
  self->_monitorHandler = 0;

  handlerQueue = self->_handlerQueue;
  self->_handlerQueue = 0;

  begin = self->_resolvers.__begin_;
  end = self->_resolvers.__end_;
  if (end != begin)
  {
    do
    {
      DNSServiceRefDeallocate(*begin++);
    }

    while (begin != end);
    self->_resolvers.__end_ = self->_resolvers.__begin_;
    if (!--qword_27DF77600)
    {
      v12 = dispatch_time(0, 10000000000);
      dispatch_after(v12, qword_27DF775F8, &unk_284BB7040);
    }
  }
}

- (void)stopMonitoring
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    instanceName = self->_instanceName;
    *buf = 138412546;
    selfCopy2 = self;
    v8 = 2112;
    v9 = instanceName;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ stop connectivity monitoring for %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ stop connectivity monitoring for %@", self, self->_instanceName);
  }

  os_unfair_lock_lock(&unk_27DF775E8);
  if (qword_27DF775F0 && qword_27DF775F8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239296B4C;
    block[3] = &unk_278A72320;
    block[4] = self;
    dispatch_async(qword_27DF775F8, block);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ shared resolver connection already stopped - nothing to do", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ shared resolver connection already stopped - nothing to do", self);
    }
  }

  os_unfair_lock_unlock(&unk_27DF775E8);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end