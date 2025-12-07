@interface GKDiscoveryPeer
- (BOOL)parseServiceNameForInit:(id)init;
- (GKDiscoveryPeer)initWithServiceName:(id)name;
- (id)nextInterfaceIndex;
- (id)stringForState:(int)state;
- (void)cleanUpForBrowse;
- (void)dealloc;
- (void)didLoseInterface:(id)interface;
- (void)flushDataBuffer;
- (void)invalidate;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
- (void)setState:(int)state;
- (void)startResolveTimerWithHandler:(id)handler;
- (void)stopResolveTimer;
- (void)timeout:(id)timeout;
@end

@implementation GKDiscoveryPeer

- (BOOL)parseServiceNameForInit:(id)init
{
  if (init)
  {
    [(GKDiscoveryPeer *)self setServiceName:?];
    v4 = [MEMORY[0x277CCAC80] scannerWithString:self->_serviceName];
    v8 = 0;
    v5 = [v4 scanUpToString:@"+" intoString:&v8];
    if (v5)
    {
      [v4 scanString:@"+" intoString:0];
      v7 = 0;
      [v4 scanUpToString:@"+" intoString:&v7];
      self->_deviceID = v8;
      self->_playerID = v7;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (GKDiscoveryPeer)initWithServiceName:(id)name
{
  v7.receiver = self;
  v7.super_class = GKDiscoveryPeer;
  v4 = [(GKDiscoveryPeer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if ([(GKDiscoveryPeer *)v4 parseServiceNameForInit:name])
    {
      v5->_interfaces = objc_alloc_init(MEMORY[0x277CBEB58]);
      v5->_orderedInterfaces = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5->_attemptedInterfaces = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5->_shouldSignalDiscovery = 1;
      v5->_syncQueue = dispatch_queue_create([name UTF8String], 0);
      v5->_sendDataBuffer = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5->_state = 0;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      Name = sel_getName(a2);
      serviceName = self->_serviceName;
      if (serviceName)
      {
        uTF8String = [objc_msgSend_description(serviceName) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136316162;
      v12 = v4;
      v13 = 2080;
      v14 = "[GKDiscoveryPeer dealloc]";
      v15 = 1024;
      v16 = 166;
      v17 = 2080;
      v18 = Name;
      v19 = 2080;
      v20 = uTF8String;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: peer[%s] -dealloc", buf, 0x30u);
    }
  }

  syncQueue = self->_syncQueue;
  if (syncQueue)
  {
    dispatch_release(syncQueue);
  }

  self->_connection = 0;
  [(GKSimpleTimer *)self->_resolveTimer invalidate];

  self->_resolveTimer = 0;
  v10.receiver = self;
  v10.super_class = GKDiscoveryPeer;
  [(GKDiscoveryPeer *)&v10 dealloc];
}

- (id)stringForState:(int)state
{
  v19 = *MEMORY[0x277D85DE8];
  if (state < 4)
  {
    return off_279683088[state];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryPeer *)self serviceName])
      {
        v8 = [objc_msgSend_description(-[GKDiscoveryPeer serviceName](self "serviceName"))];
      }

      else
      {
        v8 = "<nil>";
      }

      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "[GKDiscoveryPeer stringForState:]";
      v13 = 1024;
      v14 = 209;
      v15 = 2080;
      v16 = v8;
      v17 = 1024;
      stateCopy = state;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] unrecognized state [%d]", &v9, 0x2Cu);
    }
  }

  return @"unknown";
}

- (void)setState:(int)state
{
  v3 = *&state;
  v23 = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryPeer *)self serviceName])
      {
        v8 = [objc_msgSend_description(-[GKDiscoveryPeer serviceName](self "serviceName"))];
      }

      else
      {
        v8 = "<nil>";
      }

      if ([(GKDiscoveryPeer *)self stringForState:state])
      {
        v9 = [objc_msgSend_description(-[GKDiscoveryPeer stringForState:](self stringForState:{state)), "UTF8String"}];
      }

      else
      {
        v9 = "<nil>";
      }

      if ([(GKDiscoveryPeer *)self stringForState:v3])
      {
        v10 = [objc_msgSend_description(-[GKDiscoveryPeer stringForState:](self stringForState:{v3)), "UTF8String"}];
      }

      else
      {
        v10 = "<nil>";
      }

      v11 = 136316418;
      v12 = v6;
      v13 = 2080;
      v14 = "[GKDiscoveryPeer setState:]";
      v15 = 1024;
      v16 = 230;
      v17 = 2080;
      v18 = v8;
      v19 = 2080;
      v20 = v9;
      v21 = 2080;
      v22 = v10;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] changing state from '%s' to '%s'", &v11, 0x3Au);
    }
  }

  self->_state = v3;
}

- (id)nextInterfaceIndex
{
  v35 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  orderedInterfaces = self->_orderedInterfaces;
  v4 = [(NSMutableArray *)orderedInterfaces countByEnumeratingWithState:&v18 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(orderedInterfaces);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_attemptedInterfaces containsObject:v8]& 1) == 0)
        {
          [(NSMutableArray *)self->_attemptedInterfaces addObject:v8];
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)orderedInterfaces countByEnumeratingWithState:&v18 objects:v34 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      if (serviceName)
      {
        uTF8String = [objc_msgSend_description(serviceName) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      if (objc_msgSend_description(self->_orderedInterfaces))
      {
        v13 = objc_msgSend_description(self->_orderedInterfaces);
        uTF8String2 = [objc_msgSend_description(v13) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      if (objc_msgSend_description(v8))
      {
        v15 = objc_msgSend_description(v8);
        uTF8String3 = [objc_msgSend_description(v15) UTF8String];
      }

      else
      {
        uTF8String3 = "<nil>";
      }

      *buf = 136316418;
      v23 = v9;
      v24 = 2080;
      v25 = "[GKDiscoveryPeer nextInterfaceIndex]";
      v26 = 1024;
      v27 = 247;
      v28 = 2080;
      v29 = uTF8String;
      v30 = 2080;
      v31 = uTF8String2;
      v32 = 2080;
      v33 = uTF8String3;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] _orderedInterfaces = %s next interface to resolve on = %s", buf, 0x3Au);
    }
  }

  if (v8)
  {
    [(NSMutableArray *)self->_orderedInterfaces removeObject:v8];
  }

  return v8;
}

- (void)startResolveTimerWithHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = micro(self, a2);
  if (!handler && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = v6;
      v14 = 2080;
      v15 = "[GKDiscoveryPeer startResolveTimerWithHandler:]";
      v16 = 1024;
      v17 = 260;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d timeoutHandler is nil", &v12, 0x1Cu);
    }
  }

  -[GKDiscoveryPeer setResolveTimeoutHandler:](self, "setResolveTimeoutHandler:", [handler copy]);
  v8 = objc_alloc_init(GKSimpleTimer);
  [(GKSimpleTimer *)v8 setDelegate:self];
  [(GKDiscoveryPeer *)self setResolveTimer:v8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryPeer *)self serviceName])
      {
        v11 = [objc_msgSend_description(-[GKDiscoveryPeer serviceName](self "serviceName"))];
      }

      else
      {
        v11 = "<nil>";
      }

      v12 = 136316162;
      v13 = v9;
      v14 = 2080;
      v15 = "[GKDiscoveryPeer startResolveTimerWithHandler:]";
      v16 = 1024;
      v17 = 269;
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = 0x404E000000000000;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] starting resolve timer with timout [%f seconds]", &v12, 0x30u);
    }
  }

  [(GKSimpleTimer *)v8 fireIn:60.0 fromNow:v5];
}

- (void)stopResolveTimer
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_resolveTimer)
  {
    if (self->_resolveTimeoutHandler)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          if ([(GKDiscoveryPeer *)self serviceName])
          {
            v5 = [objc_msgSend_description(-[GKDiscoveryPeer serviceName](self "serviceName"))];
          }

          else
          {
            v5 = "<nil>";
          }

          v6 = 136315906;
          v7 = v3;
          v8 = 2080;
          v9 = "[GKDiscoveryPeer stopResolveTimer]";
          v10 = 1024;
          v11 = 278;
          v12 = 2080;
          v13 = v5;
          _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] resolve timer stopped", &v6, 0x26u);
        }
      }
    }

    [(GKDiscoveryPeer *)self setResolveTimeoutHandler:0];
    [(GKSimpleTimer *)[(GKDiscoveryPeer *)self resolveTimer] invalidate];
    [(GKDiscoveryPeer *)self setResolveTimer:0];
  }
}

- (void)didLoseInterface:(id)interface
{
  [(NSMutableSet *)self->_interfaces removeObject:?];
  [(NSMutableArray *)self->_orderedInterfaces removeObject:interface];
  attemptedInterfaces = self->_attemptedInterfaces;

  [(NSMutableArray *)attemptedInterfaces removeObject:interface];
}

- (void)cleanUpForBrowse
{
  [(NSMutableSet *)self->_interfaces removeAllObjects];
  [(NSMutableArray *)self->_orderedInterfaces removeAllObjects];
  [(NSMutableArray *)self->_attemptedInterfaces removeAllObjects];
  sendDataBuffer = self->_sendDataBuffer;

  [(NSMutableArray *)sendDataBuffer removeAllObjects];
}

- (void)invalidate
{
  [(GKDiscoveryPeerConnection *)self->_connection invalidate];
  [(GKDiscoveryPeerConnection *)self->_trialConnection invalidate];

  [(GKDiscoveryPeer *)self cleanUpForBrowse];
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  v7[2] = *MEMORY[0x277D85DE8];
  if (self->_state == 3)
  {
    connection = self->_connection;

    [(GKDiscoveryPeerConnection *)connection sendData:data withCompletionHandler:handler];
  }

  else
  {
    sendDataBuffer = self->_sendDataBuffer;
    v6[0] = @"GKDiscoveryPeerSendDataKey";
    v6[1] = @"GKDiscoveryPeerSendCompletionHandlerKey";
    v7[0] = data;
    v7[1] = handler;
    -[NSMutableArray addObject:](sendDataBuffer, "addObject:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2]);
  }
}

- (void)flushDataBuffer
{
  v53 = *MEMORY[0x277D85DE8];
  state = self->_state;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (state == 3)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        Name = sel_getName(a2);
        serviceName = self->_serviceName;
        if (serviceName)
        {
          uTF8String = [objc_msgSend_description(serviceName) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v15 = [(NSMutableArray *)self->_sendDataBuffer count];
        *buf = 136316418;
        v42 = v6;
        v43 = 2080;
        v44 = "[GKDiscoveryPeer flushDataBuffer]";
        v45 = 1024;
        v46 = 322;
        v47 = 2080;
        v48 = Name;
        v49 = 2080;
        v50 = uTF8String;
        v51 = 1024;
        v52 = v15;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: peer [%s] relaying buffered data (%d sendData calls) to the peer connection object)", buf, 0x36u);
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    sendDataBuffer = self->_sendDataBuffer;
    v17 = [(NSMutableArray *)sendDataBuffer countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(sendDataBuffer);
          }

          -[GKDiscoveryPeerConnection sendData:withCompletionHandler:](self->_connection, "sendData:withCompletionHandler:", [*(*(&v33 + 1) + 8 * i) objectForKeyedSubscript:@"GKDiscoveryPeerSendDataKey"], objc_msgSend(*(*(&v33 + 1) + 8 * i), "objectForKeyedSubscript:", @"GKDiscoveryPeerSendCompletionHandlerKey"));
        }

        v18 = [(NSMutableArray *)sendDataBuffer countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v18);
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->_serviceName;
        if (v13)
        {
          uTF8String2 = [objc_msgSend_description(v13) UTF8String];
        }

        else
        {
          uTF8String2 = "<nil>";
        }

        v21 = [(NSMutableArray *)self->_sendDataBuffer count];
        *buf = 136316162;
        v42 = v11;
        v43 = 2080;
        v44 = "[GKDiscoveryPeer flushDataBuffer]";
        v45 = 1024;
        v46 = 331;
        v47 = 2080;
        v48 = uTF8String2;
        v49 = 1024;
        LODWORD(v50) = v21;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] no connection; notify GK that data [%d] failed to send", buf, 0x2Cu);
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v22 = self->_sendDataBuffer;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      v26 = *MEMORY[0x277CCA450];
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v28 = [*(*(&v29 + 1) + 8 * j) objectForKeyedSubscript:@"GKDiscoveryPeerSendCompletionHandlerKey"];
          if (v28)
          {
            v37 = v26;
            v38 = @"Unable to connect";
            (*(v28 + 16))(v28, [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryPeer" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1)}]);
          }
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v24);
    }
  }

  [(NSMutableArray *)self->_sendDataBuffer removeAllObjects];
}

- (void)timeout:(id)timeout
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryPeer *)self serviceName])
      {
        v6 = [objc_msgSend_description(-[GKDiscoveryPeer serviceName](self "serviceName"))];
      }

      else
      {
        v6 = "<nil>";
      }

      v8 = 136315906;
      v9 = v4;
      v10 = 2080;
      v11 = "[GKDiscoveryPeer timeout:]";
      v12 = 1024;
      v13 = 349;
      v14 = 2080;
      v15 = v6;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] resolve timout fired", &v8, 0x26u);
    }
  }

  resolveTimeoutHandler = self->_resolveTimeoutHandler;
  if (resolveTimeoutHandler)
  {
    resolveTimeoutHandler[2]();
  }

  [(GKDiscoveryPeer *)self setResolveTimeoutHandler:0];
}

@end