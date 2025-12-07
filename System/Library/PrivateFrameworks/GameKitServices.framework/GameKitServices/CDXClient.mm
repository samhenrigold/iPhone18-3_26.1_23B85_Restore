@interface CDXClient
+ (id)sharedClient;
- (BOOL)handleHolePunchEvent;
- (BOOL)sendRaw:(id)raw;
- (CDXClient)initWithOptions:(id)options delegate:(id)delegate;
- (NSData)preblob;
- (NSError)error;
- (const)currentSockAddr;
- (id)createSessionWithTicket:(id)ticket sessionKey:(id)key;
- (uint64_t)start;
- (uint64_t)startListeningOnSockets;
- (unsigned)currentSockAddrLen;
- (void)dealloc;
- (void)handleFDEvent;
- (void)invalidate;
- (void)invalidateSession:(id)session;
- (void)mapIPv4AddrToIPv6:(sockaddr_in *)pv6;
- (void)networkDidChange;
- (void)resetHolepunchTimer;
- (void)restart;
- (void)sendHolePunch;
- (void)setError:(id)error;
- (void)setPreblob:(id)preblob;
- (void)start;
- (void)startListeningOnSockets;
- (void)stopHolePunchTimer;
- (void)stopListeningOnSockets;
@end

@implementation CDXClient

+ (id)sharedClient
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__CDXClient_sharedClient__block_invoke;
  block[3] = &unk_279682BA8;
  block[4] = self;
  if (sharedClient_onceToken != -1)
  {
    dispatch_once(&sharedClient_onceToken, block);
  }

  v2 = sharedClient_sharedClient;
  objc_sync_enter(sharedClient_sharedClient);
  if (!*(sharedClient_sharedClient + 136))
  {
    [sharedClient_sharedClient start];
  }

  objc_sync_exit(v2);
  return sharedClient_sharedClient;
}

void *__25__CDXClient_sharedClient__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) initWithOptions:0 delegate:0];
  sharedClient_sharedClient = result;
  return result;
}

- (NSError)error
{
  objc_sync_enter(self);
  v3 = self->error_;
  objc_sync_exit(self);
  return v3;
}

- (void)setError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  error = self->error_;
  self->error_ = [error copyWithZone:{-[CDXClient zone](self, "zone")}];
  errorCopy = error;
  objc_sync_exit(self);
  if (error)
  {
    if (![objc_msgSend(error "domain")] || (v7 = objc_msgSend(error, "code"), v7 != -[NSError code](error, "code")))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            [CDXClient setError:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [(CDXClient *)self performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_286195238;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v17 = 136316418;
            v18 = v9;
            v19 = 2080;
            v20 = "[CDXClient setError:]";
            v21 = 1024;
            v22 = 818;
            v23 = 2112;
            v24 = v8;
            v25 = 2048;
            selfCopy = self;
            v27 = 2080;
            uTF8String = [objc_msgSend_description(error) UTF8String];
            _os_log_error_impl(&dword_24E50C000, v10, OS_LOG_TYPE_ERROR, "CDXClient [%s] %s:%d %@(%p) err = %s", &v17, 0x3Au);
          }
        }
      }

      if (self->scDynamicStore_)
      {
        domain = [error domain];
        if ([domain isEqualToString:*MEMORY[0x277CCA5B8]])
        {
          restartCount = self->restartCount_;
          self->restartCount_ = restartCount + 1;
          v13 = exp2(restartCount);
          objc_sync_enter(self);
          [(CDXClient *)self stopListeningOnSockets];
          [(CDXClient *)self stopHolePunchTimer];
          objc_sync_exit(self);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              uTF8String2 = [objc_msgSend_description(self) UTF8String];
              v17 = 136316162;
              v18 = v14;
              v19 = 2080;
              v20 = "[CDXClient setError:]";
              v21 = 1024;
              v22 = 830;
              v23 = 2080;
              v24 = uTF8String2;
              v25 = 2048;
              selfCopy = *&v13;
              _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Will restart in %f seconds due to POSIX error.", &v17, 0x30u);
            }
          }

          [(CDXClient *)self performSelector:sel_restart withObject:0 afterDelay:v13];
        }
      }
    }

    [(CDXClientDelegate *)self->delegate_ CDXClient:self error:error];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }
}

- (NSData)preblob
{
  objc_sync_enter(self);
  v3 = self->preblob_;
  objc_sync_exit(self);
  return v3;
}

- (void)setPreblob:(id)preblob
{
  objc_sync_enter(self);

  v5 = [preblob copyWithZone:{-[CDXClient zone](self, "zone")}];
  self->preblob_ = v5;
  [(CDXClientDelegate *)self->delegate_ CDXClient:self preblob:v5];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  objc_sync_exit(self);
}

- (void)sendHolePunch
{
  v35 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v18 = 8;
  holePunchSID = self->holePunchSID_;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = v3;
      v27 = 2080;
      v28 = "[CDXClient sendHolePunch]";
      v29 = 1024;
      v30 = 878;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d requesting-hole-punch", buf, 0x1Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [objc_msgSend_description(self) UTF8String];
      holePunchAttemptCount = self->holePunchAttemptCount_;
      *buf = 136316162;
      v26 = v5;
      v27 = 2080;
      v28 = "[CDXClient sendHolePunch]";
      v29 = 1024;
      v30 = 880;
      v31 = 2080;
      v32 = uTF8String;
      v33 = 1024;
      v34 = holePunchAttemptCount;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Poking hole to CDX server... (Try #%d)", buf, 0x2Cu);
    }
  }

  objc_sync_enter(self);
  if (sendto(self->fd_, &v18, 0x10uLL, 0, [(CDXClient *)self currentSockAddr], [(CDXClient *)self currentSockAddrLen]) <= 0)
  {
    if (*__error() == 12)
    {
      objc_sync_exit(self);
      return;
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = *__error();
    v23 = *MEMORY[0x277CCA470];
    v11 = MEMORY[0x277CCACA8];
    v12 = __error();
    v24 = [v11 stringWithFormat:@"Call to send() failed, %s.", strerror(*v12)];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    -[CDXClient setError:](self, "setError:", [v9 errorWithDomain:*MEMORY[0x277CCA5B8] code:v10 userInfo:v13]);
  }

  objc_sync_exit(self);
  *buf = 0;
  v17 = 4;
  getsockopt(self->fd_, 0xFFFF, 4103, buf, &v17);
  v14 = *buf;
  if (*buf)
  {
    v15 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA470];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Socket has async error. %s", strerror(*buf)];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    -[CDXClient setError:](self, "setError:", [v15 errorWithDomain:*MEMORY[0x277CCA5B8] code:v14 userInfo:v16]);
  }
}

- (BOOL)handleHolePunchEvent
{
  objc_sync_enter(self);
  if (self->holePunchTimer_ && ([(CDXClient *)self sendHolePunch], self->holePunchTimer_))
  {
    if (!self->preblobIsUpToDate_)
    {
      holePunchAttemptCount = self->holePunchAttemptCount_;
      self->holePunchAttemptCount_ = holePunchAttemptCount + 1;
      holePunchInterval = self->holePunchInterval_;
      v5 = arc4random();
      v6 = pow(1.33333333, holePunchAttemptCount) * 0.1;
      v7 = holePunchInterval;
      if (v6 > v7)
      {
        v6 = holePunchInterval;
      }

      v8 = (((v5 & 0xFFFFFF) / 16777000.0) * 0.2 + 0.9) * v6;
      holePunchTimer = self->holePunchTimer_;
      v10 = dispatch_time(0, (v8 * 1000000000.0));
      dispatch_source_set_timer(holePunchTimer, v10, 0xFFFFFFFFFFFFFFFFLL, (self->holePunchInterval_ * 1000000000.0));
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(self);
  return v11;
}

- (void)resetHolepunchTimer
{
  v11[2] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (self->holePunchTimer_)
  {
    self->holePunchAttemptCount_ = 0;
    self->preblobIsUpToDate_ = 0;
    self->prevHolePunchSID_ = self->holePunchSID_;
    v11[0] = 0xAAAAAAAAAAAAAAAALL;
    v11[1] = 0xAAAAAAAAAAAAAAAALL;
    MEMORY[0x253043380](v11);
    self->holePunchSID_ = v11[0];
    holePunchAttemptCount = self->holePunchAttemptCount_;
    self->holePunchAttemptCount_ = holePunchAttemptCount + 1;
    holePunchInterval = self->holePunchInterval_;
    v5 = arc4random();
    v6 = pow(1.33333333, holePunchAttemptCount) * 0.1;
    v7 = holePunchInterval;
    if (v6 > v7)
    {
      v6 = holePunchInterval;
    }

    v8 = (((v5 & 0xFFFFFF) / 16777000.0) * 0.2 + 0.9) * v6;
    holePunchTimer = self->holePunchTimer_;
    v10 = dispatch_time(0, (v8 * 1000000000.0));
    dispatch_source_set_timer(holePunchTimer, v10, 0xFFFFFFFFFFFFFFFFLL, (self->holePunchInterval_ * 1000000000.0));
  }

  objc_sync_exit(self);
}

- (void)handleFDEvent
{
  OUTLINED_FUNCTION_15();
  [OUTLINED_FUNCTION_22(v0 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9(&dword_24E50C000, v1, v2, "CDXClient [%s] %s:%d %s: Received out-of-date holepunch reply. Ignoring...", v3, v4, v5, v6);
}

- (void)networkDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        uTF8String = [objc_msgSend_description(self) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[CDXClient networkDidChange]";
      v10 = 1024;
      v11 = 1080;
      v12 = 2080;
      v13 = uTF8String;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Processing network change. . .", &v6, 0x26u);
    }
  }

  [(CDXClient *)self setError:0];
  [(CDXClient *)self resetHolepunchTimer];
  self->willReconfigureShortly_ = 0;
  [(CDXClient *)self restart];
}

- (void)stopListeningOnSockets
{
  source = self->source_;
  if (source)
  {
    dispatch_source_cancel(source);
    v4 = self->source_;
    if (!dispatch_source_testcancel(v4))
    {
        ;
      }
    }

    if (v4)
    {
      dispatch_release(v4);
      self->source_ = 0;
    }
  }
}

- (void)startListeningOnSockets
{
  v3 = dispatch_source_create(MEMORY[0x277D85D28], self->fd_, 0, self->queue_);
  self->source_ = v3;
  if (v3)
  {
    fd = self->fd_;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__CDXClient_startListeningOnSockets__block_invoke;
    handler[3] = &__block_descriptor_36_e5_v8__0l;
    v8 = fd;
    dispatch_source_set_cancel_handler(v3, handler);
    source = self->source_;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__CDXClient_startListeningOnSockets__block_invoke_2;
    v6[3] = &unk_279682BA8;
    v6[4] = self;
    dispatch_source_set_event_handler(source, v6);
    dispatch_resume(self->source_);
  }

  else
  {
    [CDXClient startListeningOnSockets];
  }
}

- (CDXClient)initWithOptions:(id)options delegate:(id)delegate
{
  v63 = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = CDXClient;
  v6 = [(CDXClient *)&v48 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->delegate_ = delegate;
  if (IsGarbageCollectionEnabled_cachedValue == -1)
  {
    IsGarbageCollectionEnabled_cachedValue = [objc_msgSend(-[objc_class performSelector:](NSClassFromString(&cfstr_Nsgarbagecolle.isa) performSelector:{sel_defaultCollector), "valueForKey:", @"isEnabled", "BOOLValue"}];
    if (IsGarbageCollectionEnabled_cachedValue)
    {
      goto LABEL_4;
    }
  }

  else if (IsGarbageCollectionEnabled_cachedValue)
  {
LABEL_4:
    Mutable = [NSClassFromString(&cfstr_Nsmaptable.isa) performSelector:sel_mapTableWithStrongToWeakObjects];
    goto LABEL_7;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
LABEL_7:
  v7->sessionLookup_ = Mutable;
  v9 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v7->server_ = v9;
  p_server = &v7->server_;
  if (v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [objc_msgSend_description(v7) UTF8String];
        server = v7->server_;
        if (server)
        {
          uTF8String2 = [objc_msgSend_description(server) UTF8String];
        }

        else
        {
          uTF8String2 = "<nil>";
        }

        *buf = 136316162;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "[CDXClient initWithOptions:delegate:]";
        *&buf[22] = 1024;
        *&buf[24] = 1203;
        *&buf[28] = 2080;
        *&buf[30] = uTF8String;
        *&buf[38] = 2080;
        *&buf[40] = uTF8String2;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Using CDXOverrideServer: %s", buf, 0x30u);
      }
    }
  }

  v16 = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v7->port_ = v16;
  p_port = &v7->port_;
  if (v16)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String3 = [objc_msgSend_description(v7) UTF8String];
        port = v7->port_;
        *buf = 136316162;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = "[CDXClient initWithOptions:delegate:]";
        *&buf[22] = 1024;
        *&buf[24] = 1206;
        *&buf[28] = 2080;
        *&buf[30] = uTF8String3;
        *&buf[38] = 1024;
        *&buf[40] = port;
        _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Using CDXOverridePort: %d", buf, 0x2Cu);
      }
    }
  }

  [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  v7->holePunchInterval_ = v22;
  if (v22 != 0.0 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      uTF8String4 = [objc_msgSend_description(v7) UTF8String];
      holePunchInterval = v7->holePunchInterval_;
      *buf = 136316162;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = "[CDXClient initWithOptions:delegate:]";
      *&buf[22] = 1024;
      *&buf[24] = 1209;
      *&buf[28] = 2080;
      *&buf[30] = uTF8String4;
      *&buf[38] = 2048;
      *&buf[40] = holePunchInterval;
      _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Using CDXOverrideHolePunchInterval: %f", buf, 0x30u);
    }
  }

  v27 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  *p_server = v27;
  if (v27)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String5 = [objc_msgSend_description(v7) UTF8String];
        v31 = v7->server_;
        if (v31)
        {
          uTF8String6 = [objc_msgSend_description(v31) UTF8String];
        }

        else
        {
          uTF8String6 = "<nil>";
        }

        *buf = 136316162;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = "[CDXClient initWithOptions:delegate:]";
        *&buf[22] = 1024;
        *&buf[24] = 1214;
        *&buf[28] = 2080;
        *&buf[30] = uTF8String5;
        *&buf[38] = 2080;
        *&buf[40] = uTF8String6;
        _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Using CDXIP(deprecated, please use CDXOverrideServer instead): %s", buf, 0x30u);
      }
    }
  }

  v33 = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  *p_port = v33;
  if (v33)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String7 = [objc_msgSend_description(v7) UTF8String];
        v37 = v7->port_;
        *buf = 136316162;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = "[CDXClient initWithOptions:delegate:]";
        *&buf[22] = 1024;
        *&buf[24] = 1217;
        *&buf[28] = 2080;
        *&buf[30] = uTF8String7;
        *&buf[38] = 1024;
        *&buf[40] = v37;
        _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d %s: Using CDXPort(deprecated, please use CDXOverridePort instead): %d", buf, 0x2Cu);
      }
    }
  }

  if (![*p_server length])
  {
    v7->server_ = [objc_msgSend(options objectForKeyedSubscript:{@"server", "copyWithZone:", -[CDXClient zone](v7, "zone")}];
  }

  if (!*p_port)
  {
    *p_port = [objc_msgSend(options objectForKeyedSubscript:{@"port", "integerValue"}];
  }

  if (v7->holePunchInterval_ == 0.0)
  {
    [objc_msgSend(options objectForKeyedSubscript:{@"holePunchInterval", "doubleValue"}];
    v7->holePunchInterval_ = v38;
  }

  v39 = [off_279682970 getIPPortForService:*off_2796828C0];
  if (v39)
  {
    v40 = v39;
    if (![*p_server length])
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      memset(buf, 0, sizeof(buf));
      v47 = bswap32(*(v40 + 20));
      inet_ntop(2, &v47, buf, 0xFFu);
      *p_server = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    }

    if (!*p_port)
    {
      *p_port = *(v40 + 36);
    }

    free(v40);
  }

  if (![*p_server length])
  {
    *p_server = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  }

  if (!*p_port)
  {
    *p_port = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  }

  if (v7->holePunchInterval_ == 0.0)
  {
    [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    v7->holePunchInterval_ = v41;
  }

  if (![*p_server length])
  {
    *p_server = @"17.155.5.253";
  }

  if (!*p_port)
  {
    *p_port = 4398;
  }

  v42 = v7->holePunchInterval_;
  if (v42 == 0.0)
  {
    v7->holePunchInterval_ = 30.0;
    v42 = 30.0;
  }

  v43 = MEMORY[0x277CE5800];
  v44 = MEMORY[0x277CE5810];
  if (*MEMORY[0x277CE5800] > 6 || (*MEMORY[0x277CE5810] & 1) != 0)
  {
    *buf = v42;
    VRTraceVariable_();
    if (*v43 > 6 || (*v44) && ([CDXClient initWithOptions:? delegate:?]& 1) != 0)
    {
      [CDXClient initWithOptions:? delegate:?];
    }
  }

  v45 = [objc_msgSend(options objectForKeyedSubscript:{@"queue", v42), "pointerValue"}];
  v7->queue_ = v45;
  if (v45)
  {
    dispatch_retain(v45);
  }

  else
  {
    v7->queue_ = dispatch_queue_create([objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.cdx.%p", v7), "UTF8String"], 0);
  }

  [(CDXClient *)v7 start];
  return v7;
}

- (const)currentSockAddr
{
  cdxMappedIPv4Addr = self->cdxMappedIPv4Addr;
  if (cdxMappedIPv4Addr)
  {
    return cdxMappedIPv4Addr->ai_addr;
  }

  else
  {
    return &self->cdxaddr_ipv4;
  }
}

- (unsigned)currentSockAddrLen
{
  cdxMappedIPv4Addr = self->cdxMappedIPv4Addr;
  if (cdxMappedIPv4Addr)
  {
    return cdxMappedIPv4Addr->ai_addrlen;
  }

  else
  {
    LOBYTE(v3) = self->cdxaddr_ipv4.sin_len;
  }

  return v3;
}

- (void)mapIPv4AddrToIPv6:(sockaddr_in *)pv6
{
  v16 = *MEMORY[0x277D85DE8];
  p_cdxMappedIPv4Addr = &self->cdxMappedIPv4Addr;
  cdxMappedIPv4Addr = self->cdxMappedIPv4Addr;
  if (cdxMappedIPv4Addr)
  {
    freeaddrinfo(cdxMappedIPv4Addr);
    *p_cdxMappedIPv4Addr = 0;
  }

  *v14 = 0;
  v15 = 0;
  v7 = inet_ntop(2, &pv6->sin_addr, v14, 0x10u);
  memset(&v11, 0, sizeof(v11));
  v11.ai_socktype = 2;
  v11.ai_flags = 1536;
  v8 = getaddrinfo(v7, 0, &v11, p_cdxMappedIPv4Addr);
  if (v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = v8;
    v12 = *MEMORY[0x277CCA470];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Call to getaddrinfo() failed for hostname %s. Error %s.", v7, gai_strerror(v8)];
    -[CDXClient setError:](self, "setError:", [v9 errorWithDomain:@"error" code:v10 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }

  else
  {
    *self->cdxMappedIPv4Addr->ai_addr->sa_data = bswap32(self->port_) >> 16;
  }
}

- (void)dealloc
{
  source = self->source_;
  if (source)
  {
    dispatch_release(source);
  }

  holePunchTimer = self->holePunchTimer_;
  if (holePunchTimer)
  {
    dispatch_release(holePunchTimer);
  }

  queue = self->queue_;
  if (queue)
  {
    dispatch_release(queue);
  }

  cdxMappedIPv4Addr = self->cdxMappedIPv4Addr;
  if (cdxMappedIPv4Addr)
  {
    freeaddrinfo(cdxMappedIPv4Addr);
  }

  v7.receiver = self;
  v7.super_class = CDXClient;
  [(CDXClient *)&v7 dealloc];
}

- (void)start
{
  v30 = *MEMORY[0x277D85DE8];
  p_server = &self->server_;
  v4 = gethostbyname2([(NSString *)self->server_ UTF8String], 2);
  *&self->cdxaddr_ipv4.sin_len = 528;
  v5 = bswap32(self->port_);
  self->cdxaddr_ipv4.sin_port = HIWORD(v5);
  self->cdxaddr_ipv4.sin_addr.s_addr = 16777343;
  if (*MEMORY[0x277D85EE0])
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    [(CDXClient *)*MEMORY[0x277D85EE0] start];
    return;
  }

  if (v4->h_length <= 1)
  {
    [(CDXClient *)p_server start];
    return;
  }

  self->cdxaddr_ipv4.sin_addr.s_addr = **v4->h_addr_list;
  self->cdxaddr_ipv4.sin_port = HIWORD(v5);
  objc_sync_enter(self);
  [(CDXClient *)self mapIPv4AddrToIPv6:&self->cdxaddr_ipv4];
  cdxMappedIPv4Addr = self->cdxMappedIPv4Addr;
  if (cdxMappedIPv4Addr)
  {
    ai_family = cdxMappedIPv4Addr->ai_family;
  }

  else
  {
    ai_family = 2;
  }

  v9 = socket(ai_family, 2, 17);
  self->fd_ = v9;
  if (v9 <= 0)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *__error();
    v20 = MEMORY[0x277CBEAC0];
    v21 = MEMORY[0x277CCACA8];
    v22 = __error();
    -[CDXClient setError:](self, "setError:", [v18 errorWithDomain:*MEMORY[0x277CCA5B8] code:v19 userInfo:{objc_msgSend(v20, "dictionaryWithObjectsAndKeys:", objc_msgSend(v21, "stringWithFormat:", @"Unable to create FD to CDX. %s", strerror(*v22)), *MEMORY[0x277CCA470], 0)}]);
LABEL_24:
    objc_sync_exit(self);
    return;
  }

  LODWORD(v29.version) = 1;
  setsockopt(v9, 0xFFFF, 4130, &v29, 4u);
  v10 = self->cdxMappedIPv4Addr;
  if (v10 && v10->ai_family == 30)
  {
    memset(&v29.version + 4, 0, 24);
    LOWORD(v29.version) = 7708;
    WORD1(v29.version) = bswap32(self->localPort_) >> 16;
    *&v29.info = *MEMORY[0x277D85EE8];
    v11 = bind(self->fd_, &v29, 0x1Cu);
  }

  else
  {
    v29.info = 0;
    LOWORD(v29.version) = 528;
    WORD1(v29.version) = bswap32(self->localPort_) >> 16;
    HIDWORD(v29.version) = 0;
    v11 = bind(self->fd_, &v29, 0x10u);
  }

  if (v11)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *__error();
    v25 = MEMORY[0x277CBEAC0];
    v26 = MEMORY[0x277CCACA8];
    v27 = __error();
    -[CDXClient setError:](self, "setError:", [v23 errorWithDomain:*MEMORY[0x277CCA5B8] code:v24 userInfo:{objc_msgSend(v25, "dictionaryWithObjectsAndKeys:", objc_msgSend(v26, "stringWithFormat:", @"Unable to bind FD to sockaddr. %s", strerror(*v27)), *MEMORY[0x277CCA470], 0)}]);
    goto LABEL_24;
  }

  objc_sync_exit(self);
  [(CDXClient *)self startListeningOnSockets];
  v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->queue_);
  self->holePunchTimer_ = v12;
  if (v12)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __18__CDXClient_start__block_invoke;
    handler[3] = &unk_279682BA8;
    handler[4] = self;
    dispatch_source_set_event_handler(v12, handler);
    holePunchTimer = self->holePunchTimer_;
    v14 = dispatch_time(0, (self->holePunchInterval_ * 1000000000.0));
    dispatch_source_set_timer(holePunchTimer, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->holePunchTimer_);
    [(CDXClient *)self resetHolepunchTimer];
    [(CDXClient *)self sendHolePunch];
    v29.version = 0;
    v29.info = self;
    v29.retain = MEMORY[0x277CBE558];
    v29.release = MEMORY[0x277CBE550];
    v29.copyDescription = 0;
    v15 = SCDynamicStoreCreate(0, [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.cdx.%p", self], CDX_SCDynamicStoreCallBack, &v29);
    self->scDynamicStore_ = v15;
    if (v15)
    {
      RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v15, 0);
      self->scDynamicStoreRunLoopSource_ = RunLoopSource;
      if (RunLoopSource)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, self->scDynamicStoreRunLoopSource_, *MEMORY[0x277CBF048]);
        SCDynamicStoreSetNotificationKeys(self->scDynamicStore_, 0, [MEMORY[0x277CBEA60] arrayWithObjects:{@"State:/Network/Interface/[^/]+/IPv4", 0}]);
      }
    }
  }

  else
  {
    [CDXClient start];
  }
}

- (void)restart
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, "CDXClient [%s] %s:%d ", v2, v3, v4, v5);
}

- (void)stopHolePunchTimer
{
  holePunchTimer = self->holePunchTimer_;
  if (holePunchTimer)
  {
    dispatch_source_cancel(holePunchTimer);
    v4 = self->holePunchTimer_;
    if (v4)
    {
      dispatch_release(v4);
      self->holePunchTimer_ = 0;
    }
  }
}

- (void)invalidate
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19(&dword_24E50C000, v0, v1, "CDXClient [%s] %s:%d ", v2, v3, v4, v5);
}

- (BOOL)sendRaw:(id)raw
{
  v19 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v5 = sendto(self->fd_, [raw bytes], objc_msgSend(raw, "length"), 0, -[CDXClient currentSockAddr](self, "currentSockAddr"), -[CDXClient currentSockAddrLen](self, "currentSockAddrLen"));
  objc_sync_exit(self);
  if (*__error() == 12)
  {
    return 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    v9 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (raw)
        {
          uTF8String = [objc_msgSend_description(raw) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v11 = 136315906;
        v12 = v7;
        v13 = 2080;
        v14 = "[CDXClient sendRaw:]";
        v15 = 1024;
        v16 = 1639;
        v17 = 2080;
        v18 = uTF8String;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d sendRaw:%s", &v11, 0x26u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CDXClient sendRaw:];
    }
  }

  return v5 == [raw length];
}

- (void)invalidateSession:(id)session
{
  queue = [(CDXClient *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__CDXClient_invalidateSession___block_invoke;
  v6[3] = &unk_279682BF0;
  v6[4] = self;
  v6[5] = session;
  dispatch_async(queue, v6);
}

uint64_t __31__CDXClient_invalidateSession___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(objc_msgSend(*(a1 + 40), "ticket"), "CDXTicketSID")}];

  return [v1 removeObjectForKey:v2];
}

uint64_t __48__CDXClient_createSessionWithTicket_sessionKey___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 40), "CDXTicketSID")}];

  return [v2 setObject:v1 forKeyedSubscript:v3];
}

- (id)createSessionWithTicket:(id)ticket sessionKey:(id)key
{
  OUTLINED_FUNCTION_15();
  if (![v7 CDXTicketWellFormed])
  {
    return 0;
  }

  v8 = -[CDXClientSession initWithCDXClient:ticket:sessionKey:](+[CDXClientSession allocWithZone:](CDXClientSession, "allocWithZone:", [v5 zone]), "initWithCDXClient:ticket:sessionKey:", v5, v4, key);
  queue = [v5 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CDXClient_createSessionWithTicket_sessionKey___block_invoke;
  block[3] = &unk_279682C18;
  block[4] = v5;
  block[5] = v4;
  block[6] = v8;
  dispatch_async(queue, block);
  return v8;
}

- (void)setError:.cold.1()
{
  OUTLINED_FUNCTION_15();
  [OUTLINED_FUNCTION_22(v1 *MEMORY[0x277D85DE8])];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_24E50C000, v0, OS_LOG_TYPE_ERROR, "CDXClient [%s] %s:%d err = %s", v2, 0x26u);
}

- (uint64_t)startListeningOnSockets
{
  [MEMORY[0x277CCA9B8] errorWithDomain:@"CDXClient" code:4 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Unable to create dispatch read source for file descriptor.", *MEMORY[0x277CCA470], 0)}];
  v0 = OUTLINED_FUNCTION_20();

  return [v0 setError:?];
}

- (uint64_t)initWithOptions:(id *)a1 delegate:.cold.2(id *a1)
{
  [*a1 UTF8String];
  strlen([*a1 UTF8String]);
  return VRTraceVariable_();
}

- (uint64_t)start
{
  v2 = MEMORY[0x277CCA9B8];
  selfCopy = self;
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Call to gethostbyname2() failed for hostname %@. Error %d.", *a2, self];
  [v2 errorWithDomain:@"h_errno" code:selfCopy userInfo:{objc_msgSend(v4, "dictionaryWithObjectsAndKeys:", v5, *MEMORY[0x277CCA470], 0)}];
  v6 = OUTLINED_FUNCTION_20();

  return [v6 setError:?];
}

- (void)sendRaw:.cold.1()
{
  OUTLINED_FUNCTION_15();
  if (v0)
  {
    [objc_msgSend_description(v0) UTF8String];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9(&dword_24E50C000, v1, v2, "CDXClient [%s] %s:%d sendRaw:%s", v3, v4, v5, v6);
}

@end