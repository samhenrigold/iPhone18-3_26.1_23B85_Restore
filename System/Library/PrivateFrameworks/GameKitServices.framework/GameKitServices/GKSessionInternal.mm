@interface GKSessionInternal
- (BOOL)acceptConnectionFromPeer:(id)peer error:(id *)error;
- (BOOL)checkDNSConnection;
- (BOOL)isPeerBusy:(id)busy;
- (BOOL)parseServiceName:(const char *)name intoDisplayName:(id *)displayName pid:(unsigned int *)pid state:(id *)state;
- (BOOL)passesSendDataSanityCheck:(id)check toPeers:(id)peers withDataMode:(unsigned int)mode error:(id *)error;
- (BOOL)sendData:(id)data toPeers:(id)peers withDataMode:(unsigned int)mode enableOOB:(BOOL)b error:(id *)error;
- (BOOL)sendDataToAllPeers:(id)peers withDataMode:(unsigned int)mode error:(id *)error;
- (BOOL)tryConnectToPeer:(id)peer;
- (GKSessionInternal)initWithConnection:(id)connection session:(id)session delegate:(id)delegate;
- (GKSessionInternal)initWithSessionID:(id)d displayName:(id)name session:(id)session sessionMode:(unsigned int)mode;
- (NSString)displayName;
- (id)displayNameForPeer:(id)peer;
- (id)newNSErrorFromGKSessionError:(int)error description:(id)description reason:(id)reason;
- (id)newNSErrorFromHRESULT:(int)t description:(id)description reason:(id)reason;
- (id)peersWithConnectionState:(unsigned int)state;
- (id)serviceName;
- (void)browse;
- (void)cancelConnectToPeer:(id)peer;
- (void)cleanupExAvailablePeers;
- (void)connectToPeer:(id)peer withTimeout:(double)timeout;
- (void)dealloc;
- (void)denyConnectionFromPeer:(id)peer;
- (void)didFindService:(const char *)service fromIF:(const char *)f withError:(int)error moreComing:(BOOL)coming;
- (void)didLookupHostname:(_DNSServiceRef_t *)hostname forPeer:(id)peer hostName:(const char *)name address:(const sockaddr_in *)address interface:(unsigned int)interface withError:(int)error moreComing:(BOOL)coming;
- (void)didPublishWithError:(int)error;
- (void)didRemoveService:(const char *)service fromIF:(const char *)f withError:(int)error moreComing:(BOOL)coming;
- (void)didResolveService:(_DNSServiceRef_t *)service forPeer:(id)peer hostName:(const char *)name port:(unsigned __int16)port interface:(unsigned int)interface txtLen:(unsigned __int16)len txtRecord:(const void *)record withError:(int)self0 moreComing:(BOOL)self1;
- (void)didUpdateTXTRecordForPeer:(id)peer fromIF:(const char *)f txtLen:(unsigned __int16)len txtRecord:(const void *)record withError:(int)error moreComing:(BOOL)coming;
- (void)disconnectFromAllPeers;
- (void)disconnectPeerFromAllPeers:(id)peers;
- (void)handleEvents;
- (void)handleNewGKOOBAudioMessage:(id)message messageData:(id)data remotePID:(unsigned int)d callbackData:(id *)callbackData maxCallbackCount:(int)count checkDelegateCallbackSelector:(BOOL *)selector tellDelegateSelector:(SEL *)delegateSelector callbackCount:(int *)self0;
- (void)lock;
- (void)processTXTRecordForPeer:(id)peer txtLen:(unsigned __int16)len txtRecord:(const void *)record;
- (void)publish;
- (void)receiveDOOB:(id)b fromPeer:(id)peer inSession:(id)session context:(void *)context;
- (void)reset;
- (void)sendCallbacksToDelegate:(id *)delegate remotePeer:(unsigned int)peer;
- (void)setAvailable:(BOOL)available;
- (void)setBusy:(BOOL)busy;
- (void)setDOOBReceiveHandler:(id)handler withContext:(void *)context inBand:(unsigned int)band;
- (void)setDataReceiveHandler:(id)handler withContext:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setDisplayName:(id)name forPeer:(unsigned int)peer;
- (void)setPrivateDelegate:(id)delegate;
- (void)stopOldService;
- (void)stopResolvingAllPeers;
- (void)tellDelegate_connectionRequestToPeerFailed:(id)failed;
- (void)tellDelegate_didConnectPeer:(id)peer;
- (void)tellDelegate_didDisconnectPeer:(id)peer;
- (void)tellDelegate_didReceiveBand_RetryICE:(id)e;
- (void)tellDelegate_didReceiveData:(id)data;
- (void)tellDelegate_didReceiveDataFromPeerWithContext:(id)context;
- (void)tellDelegate_gotInvited:(id)invited;
- (void)tellDelegate_initiateRelay:(id)relay;
- (void)tellDelegate_isConnectingPeer:(id)peer;
- (void)tellDelegate_networkStatisticsChanged:(id)changed;
- (void)tellDelegate_peerDidBecomeAvailable:(id)available;
- (void)tellDelegate_peerDidBecomeBusy:(id)busy;
- (void)tellDelegate_peerDidBecomeUnavailable:(id)unavailable;
- (void)tellDelegate_sessionDidFailWithError:(id)error;
- (void)tellDelegate_updateRelay:(id)relay;
- (void)timeoutConnectToPeer:(id)peer;
- (void)unlock;
@end

@implementation GKSessionInternal

- (id)newNSErrorFromHRESULT:(int)t description:(id)description reason:(id)reason
{
  v6 = 0;
  v24 = *MEMORY[0x277D85DE8];
  if (description && reason)
  {
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [v9 initWithObjectsAndKeys:{description, *MEMORY[0x277CCA450], reason, *MEMORY[0x277CCA470], 0}];
  }

  v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.gamekit.GKSessionErrorDomain" code:t userInfo:v6];

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v15 = v11;
      v16 = 2080;
      v17 = "[GKSessionInternal(_private) newNSErrorFromHRESULT:description:reason:]";
      v18 = 1024;
      v19 = 733;
      v20 = 1024;
      tCopy = t;
      v22 = 2112;
      localizedDescription = [v10 localizedDescription];
      _os_log_error_impl(&dword_24E50C000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error: %d -- %@.", buf, 0x2Cu);
    }
  }

  return v10;
}

- (id)newNSErrorFromGKSessionError:(int)error description:(id)description reason:(id)reason
{
  v6 = 0;
  v24 = *MEMORY[0x277D85DE8];
  if (description && reason)
  {
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v6 = [v9 initWithObjectsAndKeys:{description, *MEMORY[0x277CCA450], reason, *MEMORY[0x277CCA470], 0}];
  }

  v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.gamekit.GKSessionErrorDomain" code:error userInfo:v6];

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v15 = v11;
      v16 = 2080;
      v17 = "[GKSessionInternal(_private) newNSErrorFromGKSessionError:description:reason:]";
      v18 = 1024;
      v19 = 747;
      v20 = 1024;
      errorCopy = error;
      v22 = 2112;
      localizedDescription = [v10 localizedDescription];
      _os_log_error_impl(&dword_24E50C000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error: %d -- %@.", buf, 0x2Cu);
    }
  }

  return v10;
}

- (void)setDisplayName:(id)name forPeer:(unsigned int)peer
{
  v4 = *&peer;
  v30 = *MEMORY[0x277D85DE8];
  v7 = [(GKTable *)self->_peerInfoTable objectForKey:*&peer];
  if (v7)
  {
    v8 = v7;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        displayName = [v8 displayName];
        displayName = self->_displayName;
        v16 = 136316674;
        v17 = v9;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) setDisplayName:forPeer:]";
        v20 = 1024;
        v21 = 768;
        v22 = 1024;
        v23 = v4;
        v24 = 2112;
        nameCopy2 = displayName;
        v26 = 2112;
        nameCopy = name;
        v28 = 2112;
        v29 = displayName;
        _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setDisplayNameForPeer: %d => %@ (try set to %@)  (this is %@)", &v16, 0x40u);
      }
    }

    [v8 tryDetruncateDisplayName:name];
    name = [v8 displayName];
  }

  [(GKTable *)self->_peerNameTable setObject:name forKey:v4];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_displayName;
      v16 = 136316418;
      v17 = v13;
      v18 = 2080;
      v19 = "[GKSessionInternal(_private) setDisplayName:forPeer:]";
      v20 = 1024;
      v21 = 775;
      v22 = 1024;
      v23 = v4;
      v24 = 2112;
      nameCopy2 = name;
      v26 = 2112;
      nameCopy = v15;
      _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setDisplayNameForPeer: %d => %@  (this is %@)", &v16, 0x36u);
    }
  }
}

- (void)tellDelegate_sessionDidFailWithError:(id)error
{
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_sessionDidFailWithError:];
      }
    }
  }

  else
  {
    v4 = [error objectForKeyedSubscript:@"NSError"];
    selfCopy = self;
    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    [(GKSessionDelegate *)delegate session:self->_session didFailWithError:v4];

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_didConnectPeer:(id)peer
{
  v45 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_didConnectPeer:];
      }
    }

    goto LABEL_37;
  }

  v5 = [peer objectForKeyedSubscript:@"peerID"];
  v29 = 0;
  v6 = [peer objectForKeyedSubscript:@"data"];
  v7 = 2;
  if (v6)
  {
    [v6 getBytes:&v29 length:4];
    if (v29)
    {
      v7 = 5;
    }

    else
    {
      v7 = 2;
    }
  }

  pthread_mutex_lock(&self->_delegateLock);
  delegate = [(GKSessionInternal *)self delegate];
  privateDelegate = [(GKSessionInternal *)self privateDelegate];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (privateDelegate)
      {
        uTF8String = [objc_msgSend_description(privateDelegate) UTF8String];
        if (delegate)
        {
          goto LABEL_13;
        }
      }

      else
      {
        uTF8String = "<nil>";
        if (delegate)
        {
LABEL_13:
          v12 = [objc_msgSend_description(delegate uTF8String)];
          if (v5)
          {
LABEL_14:
            v13 = [objc_msgSend_description(v5 uTF8String)];
LABEL_18:
            v14 = [(GKList *)self->_peersConnected count];
            maxPeers = self->maxPeers;
            *buf = 136316930;
            v31 = v10;
            v32 = 2080;
            v33 = "[GKSessionInternal(_private) tellDelegate_didConnectPeer:]";
            v34 = 1024;
            v35 = 820;
            v36 = 2080;
            v37 = v28;
            v38 = 2080;
            v39 = v12;
            v40 = 2080;
            *v41 = v13;
            *&v41[8] = 1024;
            v42 = v14 + 1;
            v43 = 1024;
            v44 = maxPeers;
            _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%s, %s]: didConnectToPeer: %s -- cur/max: %d/%d", buf, 0x46u);
            goto LABEL_19;
          }

LABEL_17:
          v13 = "<nil>";
          goto LABEL_18;
        }
      }

      v12 = "<nil>";
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

LABEL_19:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        uTF8String2 = [objc_msgSend_description(v5) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      *buf = 136315906;
      v31 = v16;
      v32 = 2080;
      v33 = "[GKSessionInternal(_private) tellDelegate_didConnectPeer:]";
      v34 = 1024;
      v35 = 822;
      v36 = 2080;
      v37 = uTF8String2;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d did-connect-to-peer.%s", buf, 0x26u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(GKList *)self->_peersConnected count];
        v22 = self->maxPeers;
        *buf = 136316674;
        v31 = v19;
        v32 = 2080;
        v33 = "[GKSessionInternal(_private) tellDelegate_didConnectPeer:]";
        v34 = 1024;
        v35 = 825;
        v36 = 2112;
        v37 = privateDelegate;
        v38 = 2112;
        v39 = v5;
        v40 = 1024;
        *v41 = v21 + 1;
        *&v41[4] = 1024;
        *&v41[6] = v22;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: didConnectToPeer: %@ -- cur/max: %d/%d", buf, 0x3Cu);
      }
    }

    [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:v7];
  }

  if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(GKList *)self->_peersConnected count];
        v26 = self->maxPeers;
        *buf = 136316674;
        v31 = v23;
        v32 = 2080;
        v33 = "[GKSessionInternal(_private) tellDelegate_didConnectPeer:]";
        v34 = 1024;
        v35 = 830;
        v36 = 2112;
        v37 = delegate;
        v38 = 2112;
        v39 = v5;
        v40 = 1024;
        *v41 = v25 + 1;
        *&v41[4] = 1024;
        *&v41[6] = v26;
        _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: didConnectToPeer: %@ -- cur/max: %d/%d", buf, 0x3Cu);
      }
    }

    [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:v7];
  }

  pthread_mutex_unlock(&self->_delegateLock);
  [(GKVoiceChatSessionListener *)self->_voiceChatListener session:self peer:v5 didChangeState:v7];
LABEL_37:
}

- (void)tellDelegate_didDisconnectPeer:(id)peer
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_didDisconnectPeer:];
      }
    }

    goto LABEL_27;
  }

  v5 = [peer objectForKeyedSubscript:@"peerID"];
  pthread_mutex_lock(&self->_delegateLock);
  delegate = [(GKSessionInternal *)self delegate];
  privateDelegate = [(GKSessionInternal *)self privateDelegate];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      if (privateDelegate)
      {
        uTF8String = [objc_msgSend_description(privateDelegate) UTF8String];
        if (delegate)
        {
          goto LABEL_9;
        }
      }

      else
      {
        uTF8String = "<nil>";
        if (delegate)
        {
LABEL_9:
          uTF8String2 = [objc_msgSend_description(delegate) UTF8String];
          if (v5)
          {
LABEL_10:
            uTF8String3 = [objc_msgSend_description(v5) UTF8String];
LABEL_14:
            v14 = [(GKList *)self->_peersConnected count];
            maxPeers = self->maxPeers;
            *buf = 136316930;
            v22 = v10;
            v23 = 2080;
            v24 = "[GKSessionInternal(_private) tellDelegate_didDisconnectPeer:]";
            v25 = 1024;
            v26 = 856;
            v27 = 2080;
            v28 = uTF8String;
            v29 = 2080;
            v30 = uTF8String2;
            v31 = 2080;
            v32 = uTF8String3;
            v33 = 1024;
            v34 = v14 + 1;
            v35 = 1024;
            v36 = maxPeers;
            _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tell [%s, %s] didDisconnectFromPeer: %s -- cur/max: %d/%d", buf, 0x46u);
            goto LABEL_15;
          }

LABEL_13:
          uTF8String3 = "<nil>";
          goto LABEL_14;
        }
      }

      uTF8String2 = "<nil>";
      if (v5)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

LABEL_15:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        uTF8String4 = [objc_msgSend_description(v5) UTF8String];
      }

      else
      {
        uTF8String4 = "<nil>";
      }

      *buf = 136315906;
      v22 = v16;
      v23 = 2080;
      v24 = "[GKSessionInternal(_private) tellDelegate_didDisconnectPeer:]";
      v25 = 1024;
      v26 = 858;
      v27 = 2080;
      v28 = uTF8String4;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d did-disconnect-from-peer.%s", buf, 0x26u);
    }
  }

  selfCopy = self;
  if (objc_opt_respondsToSelector())
  {
    [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:3];
  }

  if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:3];
  }

  pthread_mutex_unlock(&self->_delegateLock);
  [(GKVoiceChatSessionListener *)self->_voiceChatListener session:self peer:v5 didChangeState:3];

LABEL_27:
}

- (void)tellDelegate_isConnectingPeer:(id)peer
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_isConnectingPeer:];
      }
    }
  }

  else
  {
    v5 = [peer objectForKeyedSubscript:@"peerID"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v7 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v16 = 136315906;
        v17 = v8;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_isConnectingPeer:]";
        v20 = 1024;
        v21 = 891;
        v22 = 2080;
        v23 = uTF8String;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isConnectingPeer: %s", &v16, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String2 = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String2 = "<nil>";
        }

        v16 = 136315906;
        v17 = v11;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_isConnectingPeer:]";
        v20 = 1024;
        v21 = 892;
        v22 = 2080;
        v23 = uTF8String2;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d is-connecting-to-peer.%s", &v16, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:4];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:4];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_peerDidBecomeAvailable:(id)available
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_peerDidBecomeAvailable:];
      }
    }
  }

  else
  {
    v5 = [available objectForKeyedSubscript:@"peerID"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v7 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule > 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v8;
        v17 = 2080;
        v18 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeAvailable:]";
        v19 = 1024;
        v20 = 919;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerDidBecomeAvailable: %@", &v15, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v15 = 136315906;
        v16 = v10;
        v17 = 2080;
        v18 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeAvailable:]";
        v19 = 1024;
        v20 = 921;
        v21 = 2080;
        v22 = uTF8String;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer-did-become-available.%s", &v15, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:0];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:0];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_peerDidBecomeUnavailable:(id)unavailable
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_peerDidBecomeUnavailable:];
      }
    }
  }

  else
  {
    v5 = [unavailable objectForKeyedSubscript:@"peerID"];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v7 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule > 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v8;
        v17 = 2080;
        v18 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeUnavailable:]";
        v19 = 1024;
        v20 = 948;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerDidBecomeUnavailable: %@", &v15, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v15 = 136315906;
        v16 = v10;
        v17 = 2080;
        v18 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeUnavailable:]";
        v19 = 1024;
        v20 = 950;
        v21 = 2080;
        v22 = uTF8String;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer-did-become-unavailable.%s", &v15, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peer:v5 didChangeState:1];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(GKSessionDelegate *)delegate session:self->_session peer:v5 didChangeState:1];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_didReceiveBand_RetryICE:(id)e
{
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_didReceiveBand_RetryICE:];
      }
    }
  }

  else
  {
    v4 = [e objectForKeyedSubscript:@"peerID"];
    v5 = [e objectForKeyedSubscript:@"data"];
    pthread_mutex_lock(&self->_delegateLock);
    v6 = self->_doobReceiveHandler[1];
    if (v6)
    {
      [(GKSessionDOOBReceiveHandler *)v6 receiveDOOB:v5 fromPeer:v4 inSession:self->_session context:self->_doobReceiveHandlerContext[1]];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_didReceiveData:(id)data
{
  v25 = *MEMORY[0x277D85DE8];
  if (!self->_shutdown)
  {
    v5 = [data objectForKeyedSubscript:@"peerID"];
    v6 = [data objectForKeyedSubscript:@"data"];
    pthread_mutex_lock(&self->_delegateLock);
    dataReceiveHandler = [(GKSessionInternal *)self dataReceiveHandler];
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      v10 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316674;
          v12 = v8;
          v13 = 2080;
          v14 = "[GKSessionInternal(_private) tellDelegate_didReceiveData:]";
          v15 = 1024;
          v16 = 1000;
          v17 = 2048;
          delegate = [(GKSessionInternal *)self delegate];
          v19 = 2048;
          privateDelegate = [(GKSessionInternal *)self privateDelegate];
          v21 = 1024;
          v22 = [v6 length];
          v23 = 2080;
          uTF8String = [v5 UTF8String];
          _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate[%p, %p]_didReceiveData of length [%d] from [%s]", &v11, 0x40u);
          if (!dataReceiveHandler)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136316674;
        v12 = v8;
        v13 = 2080;
        v14 = "[GKSessionInternal(_private) tellDelegate_didReceiveData:]";
        v15 = 1024;
        v16 = 1000;
        v17 = 2048;
        delegate = [(GKSessionInternal *)self delegate];
        v19 = 2048;
        privateDelegate = [(GKSessionInternal *)self privateDelegate];
        v21 = 1024;
        v22 = [v6 length];
        v23 = 2080;
        uTF8String = [v5 UTF8String];
        _os_log_debug_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d tellDelegate[%p, %p]_didReceiveData of length [%d] from [%s]", &v11, 0x40u);
        if (!dataReceiveHandler)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    if (!dataReceiveHandler)
    {
LABEL_13:

      pthread_mutex_unlock(&self->_delegateLock);
      goto LABEL_14;
    }

LABEL_12:
    [dataReceiveHandler receiveData:v6 fromPeer:v5 inSession:self->_session context:self->_dataReceiveHandlerContext];
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKSessionInternal(_private) tellDelegate_didReceiveData:];
    }
  }

LABEL_14:
}

- (void)tellDelegate_didReceiveDataFromPeerWithContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_didReceiveDataFromPeerWithContext:];
      }
    }

    goto LABEL_16;
  }

  v5 = [context objectForKeyedSubscript:@"peerID"];
  v6 = [context objectForKeyedSubscript:@"data"];
  dataReceiveHandler = [(GKSessionInternal *)self dataReceiveHandler];
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_11;
  }

  v8 = VRTraceErrorLogLevelToCSTR();
  v9 = *MEMORY[0x277CE5818];
  v10 = *MEMORY[0x277CE5818];
  if (*MEMORY[0x277CE5808] == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316674;
      v16 = v8;
      v17 = 2080;
      v18 = "[GKSessionInternal(_private) tellDelegate_didReceiveDataFromPeerWithContext:]";
      v19 = 1024;
      v20 = 1024;
      v21 = 2048;
      *v22 = [(GKSessionInternal *)self delegate];
      *&v22[8] = 2048;
      *&v22[10] = [(GKSessionInternal *)self privateDelegate];
      v23 = 1024;
      v24 = [v6 length];
      v25 = 2080;
      uTF8String = [v5 UTF8String];
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate[%p, %p]_didReceiveData of length [%d] from [%s]", &v15, 0x40u);
      if (!dataReceiveHandler)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!dataReceiveHandler)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

  v15 = 136316674;
  v16 = v8;
  v17 = 2080;
  v18 = "[GKSessionInternal(_private) tellDelegate_didReceiveDataFromPeerWithContext:]";
  v19 = 1024;
  v20 = 1024;
  v21 = 2048;
  *v22 = [(GKSessionInternal *)self delegate];
  *&v22[8] = 2048;
  *&v22[10] = [(GKSessionInternal *)self privateDelegate];
  v23 = 1024;
  v24 = [v6 length];
  v25 = 2080;
  uTF8String = [v5 UTF8String];
  _os_log_debug_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d tellDelegate[%p, %p]_didReceiveData of length [%d] from [%s]", &v15, 0x40u);
  if (!dataReceiveHandler)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 length];
      uTF8String2 = [v5 UTF8String];
      v15 = 136316162;
      v16 = v11;
      v17 = 2080;
      v18 = "[GKSessionInternal(_private) tellDelegate_didReceiveDataFromPeerWithContext:]";
      v19 = 1024;
      v20 = 1027;
      v21 = 1024;
      *v22 = v13;
      *&v22[4] = 2080;
      *&v22[6] = uTF8String2;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Inform handler did receiveVoiceChatData of length=%d from peerID=%s", &v15, 0x2Cu);
    }
  }

  [dataReceiveHandler receiveVoiceChatData:v6 fromPeer:v5];
LABEL_16:
}

- (void)tellDelegate_gotInvited:(id)invited
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_gotInvited:];
      }
    }
  }

  else
  {
    v5 = [invited objectForKeyedSubscript:@"peerID"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v15 = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[GKSessionInternal(_private) tellDelegate_gotInvited:]";
        v19 = 1024;
        v20 = 1043;
        v21 = 2080;
        v22 = uTF8String;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d did-receive-connection-request-from-peer.%s", &v15, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136316162;
          v16 = v11;
          v17 = 2080;
          v18 = "[GKSessionInternal(_private) tellDelegate_gotInvited:]";
          v19 = 1024;
          v20 = 1049;
          v21 = 2112;
          v22 = privateDelegate;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ didReceiveConnectionRequestFromPeer: %@", &v15, 0x30u);
        }
      }

      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session didReceiveConnectionRequestFromPeer:v5];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136316162;
          v16 = v13;
          v17 = 2080;
          v18 = "[GKSessionInternal(_private) tellDelegate_gotInvited:]";
          v19 = 1024;
          v20 = 1053;
          v21 = 2112;
          v22 = delegate;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ didReceiveConnectionRequestFromPeer: %@", &v15, 0x30u);
        }
      }

      [(GKSessionDelegate *)delegate session:self->_session didReceiveConnectionRequestFromPeer:v5];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_connectionRequestToPeerFailed:(id)failed
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_connectionRequestToPeerFailed:];
      }
    }
  }

  else
  {
    v5 = [failed objectForKeyedSubscript:@"peerID"];
    v6 = [failed objectForKeyedSubscript:@"NSError"];
    selfCopy = self;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v17 = 136315906;
        v18 = v8;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_connectionRequestToPeerFailed:]";
        v21 = 1024;
        v22 = 1076;
        v23 = 2080;
        v24 = uTF8String;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connection-request-to-peer-failed.%s", &v17, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    delegate = [(GKSessionInternal *)self delegate];
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316162;
          v18 = v13;
          v19 = 2080;
          v20 = "[GKSessionInternal(_private) tellDelegate_connectionRequestToPeerFailed:]";
          v21 = 1024;
          v22 = 1082;
          v23 = 2112;
          v24 = privateDelegate;
          v25 = 2112;
          v26 = v5;
          _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ connectionRequestToPeerFailed: %@", &v17, 0x30u);
        }
      }

      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session connectionWithPeerFailed:v5 withError:v6];
    }

    if (delegate != privateDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136316162;
          v18 = v15;
          v19 = 2080;
          v20 = "[GKSessionInternal(_private) tellDelegate_connectionRequestToPeerFailed:]";
          v21 = 1024;
          v22 = 1086;
          v23 = 2112;
          v24 = delegate;
          v25 = 2112;
          v26 = v5;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@ connectionRequestToPeerFailed: %@", &v17, 0x30u);
        }
      }

      [(GKSessionDelegate *)delegate session:self->_session connectionWithPeerFailed:v5 withError:v6];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_peerDidBecomeBusy:(id)busy
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_peerDidBecomeBusy:];
      }
    }
  }

  else
  {
    v5 = [busy objectForKeyedSubscript:@"peerID"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v12 = 136315906;
        v13 = v6;
        v14 = 2080;
        v15 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeBusy:]";
        v16 = 1024;
        v17 = 1107;
        v18 = 2080;
        v19 = uTF8String;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer-did-become-busy.%s", &v12, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v10;
          v14 = 2080;
          v15 = "[GKSessionInternal(_private) tellDelegate_peerDidBecomeBusy:]";
          v16 = 1024;
          v17 = 1112;
          v18 = 2112;
          v19 = privateDelegate;
          v20 = 2112;
          v21 = v5;
          _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: peerDidBecomeBusy: %@", &v12, 0x30u);
        }
      }

      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session peerDidBecomeBusy:v5];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (void)tellDelegate_initiateRelay:(id)relay
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_initiateRelay:];
      }
    }
  }

  else
  {
    v5 = [relay objectForKeyedSubscript:@"peerID"];
    v6 = [relay objectForKeyedSubscript:@"dict"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v17 = 136315906;
        v18 = v7;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_initiateRelay:]";
        v21 = 1024;
        v22 = 1130;
        v23 = 2080;
        v24 = uTF8String;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d initiate-relay.%s", &v17, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = v10;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_initiateRelay:]";
        v21 = 1024;
        v22 = 1132;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate_initiateRelay", &v17, 0x1Cu);
      }
    }

    if (+[GKConnection isRelayEnabled])
    {
      pthread_mutex_lock(&self->_delegateLock);
      privateDelegate = [(GKSessionInternal *)self privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136316418;
            v18 = v13;
            v19 = 2080;
            v20 = "[GKSessionInternal(_private) tellDelegate_initiateRelay:]";
            v21 = 1024;
            v22 = 1141;
            v23 = 2112;
            v24 = privateDelegate;
            v25 = 2112;
            v26 = v6;
            v27 = 2112;
            v28 = v5;
            _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: initiateRelay: %@ forPeer: %@", &v17, 0x3Au);
          }
        }

        [(GKSessionPrivateDelegate *)privateDelegate session:self->_session initiateRelay:v6 forPeer:v5];
      }

      else if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136316418;
            v18 = v15;
            v19 = 2080;
            v20 = "[GKSessionInternal(_private) tellDelegate_initiateRelay:]";
            v21 = 1024;
            v22 = 1146;
            v23 = 2112;
            v24 = privateDelegate;
            v25 = 2112;
            v26 = v6;
            v27 = 2112;
            v28 = v5;
            _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: initiateRelay: %@ forPeer: %@", &v17, 0x3Au);
          }
        }

        [(GKSessionPrivateDelegate *)privateDelegate session:self->_session initiateRelay:v6];
      }

      pthread_mutex_unlock(&self->_delegateLock);
    }
  }
}

- (void)tellDelegate_updateRelay:(id)relay
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_updateRelay:];
      }
    }
  }

  else
  {
    v5 = [relay objectForKeyedSubscript:@"peerID"];
    v6 = [relay objectForKeyedSubscript:@"dict"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v17 = 136315906;
        v18 = v7;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_updateRelay:]";
        v21 = 1024;
        v22 = 1162;
        v23 = 2080;
        v24 = uTF8String;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d update-relay.%s", &v17, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = v10;
        v19 = 2080;
        v20 = "[GKSessionInternal(_private) tellDelegate_updateRelay:]";
        v21 = 1024;
        v22 = 1164;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate_updateRelay", &v17, 0x1Cu);
      }
    }

    if (+[GKConnection isRelayEnabled])
    {
      pthread_mutex_lock(&self->_delegateLock);
      privateDelegate = [(GKSessionInternal *)self privateDelegate];
      if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136316418;
            v18 = v13;
            v19 = 2080;
            v20 = "[GKSessionInternal(_private) tellDelegate_updateRelay:]";
            v21 = 1024;
            v22 = 1173;
            v23 = 2112;
            v24 = privateDelegate;
            v25 = 2112;
            v26 = v6;
            v27 = 2112;
            v28 = v5;
            _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: initiateRelay: %@ forPeer: %@", &v17, 0x3Au);
          }
        }

        [(GKSessionPrivateDelegate *)privateDelegate session:self->_session initiateRelay:v6 forPeer:v5];
      }

      else if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v17 = 136316418;
            v18 = v15;
            v19 = 2080;
            v20 = "[GKSessionInternal(_private) tellDelegate_updateRelay:]";
            v21 = 1024;
            v22 = 1178;
            v23 = 2112;
            v24 = privateDelegate;
            v25 = 2112;
            v26 = v6;
            v27 = 2112;
            v28 = v5;
            _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: updateRelay: %@ forPeer: %@", &v17, 0x3Au);
          }
        }

        [(GKSessionPrivateDelegate *)privateDelegate session:self->_session updateRelay:v6];
      }

      pthread_mutex_unlock(&self->_delegateLock);
    }
  }
}

- (void)tellDelegate_networkStatisticsChanged:(id)changed
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal(_private) tellDelegate_networkStatisticsChanged:];
      }
    }
  }

  else
  {
    v5 = [changed objectForKeyedSubscript:@"peerID"];
    v6 = [changed objectForKeyedSubscript:@"dict"];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          uTF8String = [objc_msgSend_description(v5) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        v16 = 136315906;
        v17 = v7;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_networkStatisticsChanged:]";
        v20 = 1024;
        v21 = 1194;
        v22 = 2080;
        v23 = uTF8String;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d network-stats-changed.%s", &v16, 0x26u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          uTF8String2 = [objc_msgSend_description(v6) UTF8String];
        }

        else
        {
          uTF8String2 = "<nil>";
        }

        v16 = 136315906;
        v17 = v10;
        v18 = 2080;
        v19 = "[GKSessionInternal(_private) tellDelegate_networkStatisticsChanged:]";
        v20 = 1024;
        v21 = 1196;
        v22 = 2080;
        v23 = uTF8String2;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d tellDelegate_networkStatisticsChanged: [%s]", &v16, 0x26u);
      }
    }

    pthread_mutex_lock(&self->_delegateLock);
    privateDelegate = [(GKSessionInternal *)self privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136316162;
          v17 = v14;
          v18 = 2080;
          v19 = "[GKSessionInternal(_private) tellDelegate_networkStatisticsChanged:]";
          v20 = 1024;
          v21 = 1201;
          v22 = 2112;
          v23 = privateDelegate;
          v24 = 2112;
          v25 = v6;
          _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %@: stats-changed: %@", &v16, 0x30u);
        }
      }

      [(GKSessionPrivateDelegate *)privateDelegate session:self->_session networkStatisticsChanged:v6];
    }

    pthread_mutex_unlock(&self->_delegateLock);
  }
}

- (BOOL)parseServiceName:(const char *)name intoDisplayName:(id *)displayName pid:(unsigned int *)pid state:(id *)state
{
  v67 = *MEMORY[0x277D85DE8];
  v57 = -21846;
  v55 = -21846;
  v56 = -86;
  v54 = -21846;
  v52 = -1431655766;
  v53 = -1431655766;
  if (sscanf(name, "%2c", &v57) <= 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
LABEL_40:
      LOBYTE(v13) = 0;
      return v13;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      return v13;
    }

    *buf = 136315906;
    v59 = v11;
    v60 = 2080;
    v61 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
    v62 = 1024;
    v63 = 1240;
    v64 = 2080;
    *v65 = name;
    v14 = " [%s] %s:%d parseServiceName: invalid format: %s";
    goto LABEL_38;
  }

  if (v57 - 65 > 0x19)
  {
    if (v57 - 97 > 0x19)
    {
      if (v57 == 95)
      {
        v15 = 63;
      }

      else
      {
        v15 = 64;
      }

      if (v57 == 45)
      {
        v10 = 62;
      }

      else
      {
        v10 = v15;
      }

      if (v57 - 48 < 0xA)
      {
        v10 = v57 - 48;
      }
    }

    else
    {
      v10 = v57 - 61;
    }
  }

  else
  {
    v10 = v57 - 55;
  }

  v16 = v10;
  v17 = HIBYTE(v57) - 48;
  if (HIBYTE(v57) == 95)
  {
    v18 = 63;
  }

  else
  {
    v18 = 64;
  }

  if (HIBYTE(v57) == 45)
  {
    v18 = 62;
  }

  if (v17 >= 0xA)
  {
    LOBYTE(v17) = v18;
  }

  if (HIBYTE(v57) - 97 <= 0x19)
  {
    v19 = HIBYTE(v57) - 61;
  }

  else
  {
    v19 = v17;
  }

  v20 = HIBYTE(v57) - 55;
  if (HIBYTE(v57) - 65 > 0x19)
  {
    v20 = v19;
  }

  if (v16 > 0x3F || (v21 = v20, v20 >= 0x40u))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_40;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      return v13;
    }

    *buf = 136315906;
    v59 = v26;
    v60 = 2080;
    v61 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
    v62 = 1024;
    v63 = 1246;
    v64 = 2080;
    *v65 = name;
    v14 = " [%s] %s:%d parseServiceName: invalid version: %s";
    goto LABEL_38;
  }

  if (!(v16 | v20))
  {
    if (sscanf(name, "%*2c%6c%3c%n", &v53, &v55, &v52) <= 1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_40;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        return v13;
      }

      *buf = 136315906;
      v59 = v27;
      v60 = 2080;
      v61 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
      v62 = 1024;
      v63 = 1258;
      v64 = 2080;
      *v65 = name;
      v14 = " [%s] %s:%d parseServiceName: invalid format: %s";
      goto LABEL_38;
    }

    if (v53 - 65 > 0x19)
    {
      if (v53 - 97 > 0x19)
      {
        v28 = v53 - 48;
        if (v53 - 48 >= 0xA)
        {
          if (v53 == 95)
          {
            v29 = 63;
LABEL_55:
            if (BYTE1(v53) - 65 > 0x19)
            {
              if (BYTE1(v53) - 97 > 0x19)
              {
                v30 = BYTE1(v53) - 48;
                if (BYTE1(v53) - 48 >= 0xA)
                {
                  if (BYTE1(v53) == 95)
                  {
                    v31 = 4032;
LABEL_64:
                    if (BYTE2(v53) - 65 > 0x19)
                    {
                      if (BYTE2(v53) - 97 > 0x19)
                      {
                        v32 = BYTE2(v53) - 48;
                        if (BYTE2(v53) - 48 >= 0xA)
                        {
                          if (BYTE2(v53) == 95)
                          {
                            v33 = 258048;
LABEL_73:
                            if (HIBYTE(v53) - 65 > 0x19)
                            {
                              if (HIBYTE(v53) - 97 > 0x19)
                              {
                                v34 = HIBYTE(v53) - 48;
                                if (HIBYTE(v53) - 48 >= 0xA)
                                {
                                  if (HIBYTE(v53) == 95)
                                  {
                                    v35 = 16515072;
                                    goto LABEL_82;
                                  }

                                  if (HIBYTE(v53) != 45)
                                  {
                                    goto LABEL_110;
                                  }

                                  v34 = 62;
                                }
                              }

                              else
                              {
                                v34 = HIBYTE(v53) - 61;
                              }
                            }

                            else
                            {
                              v34 = HIBYTE(v53) - 55;
                            }

                            v35 = v34 << 18;
LABEL_82:
                            if (v54 - 65 <= 0x19)
                            {
                              v36 = v54 - 55;
LABEL_90:
                              v37 = v36 << 24;
LABEL_91:
                              if (HIBYTE(v54) - 65 <= 0x19)
                              {
                                v38 = HIBYTE(v54) - 55;
                                goto LABEL_95;
                              }

                              if (HIBYTE(v54) - 97 <= 0x19)
                              {
                                v38 = HIBYTE(v54) - 61;
                                goto LABEL_95;
                              }

                              v42 = HIBYTE(v54) - 48;
                              if (v42 >= 0xA)
                              {
                                if (HIBYTE(v54) != 45)
                                {
                                  v39 = HIBYTE(v54) == 95;
                                  v40 = -4;
LABEL_96:
                                  if (v39)
                                  {
                                    v41 = v40;
                                  }

                                  else
                                  {
                                    v41 = v40 + 1;
                                  }

                                  goto LABEL_111;
                                }

                                v38 = 62;
LABEL_95:
                                v39 = (v38 & 0x3C) == 4;
                                v40 = -5;
                                goto LABEL_96;
                              }

                              if ((HIBYTE(v54) & 0xC) != 4 && v42 > 3u)
                              {
                                v41 = -4;
                              }

                              else
                              {
                                v41 = -5;
                              }

                              if (v42 >= 4u)
                              {
                                goto LABEL_111;
                              }

                              if (v55 == 65)
                              {
                                v44 = MEMORY[0x277CBEC28];
                                goto LABEL_123;
                              }

                              if (v55 == 66)
                              {
                                v44 = MEMORY[0x277CBEC38];
LABEL_123:
                                v47 = (v31 + v29 + v33 + v35 + v37) | (v42 << 30);
                                v48 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v44, @"busy", 0}];
                                *pid = v47;
                                v49 = objc_alloc(MEMORY[0x277CCACA8]);
                                *displayName = [v49 initWithUTF8String:&name[v52]];
                                *state = v48;
                                LOBYTE(v13) = 1;
                                return v13;
                              }

                              if (VRTraceGetErrorLogLevelForModule() < 7)
                              {
                                goto LABEL_40;
                              }

                              v50 = VRTraceErrorLogLevelToCSTR();
                              v12 = *MEMORY[0x277CE5818];
                              v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
                              if (!v13)
                              {
                                return v13;
                              }

                              *buf = 136315906;
                              v59 = v50;
                              v60 = 2080;
                              v61 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
                              v62 = 1024;
                              v63 = 1275;
                              v64 = 2080;
                              *v65 = name;
                              v14 = " [%s] %s:%d parseServiceName: busy state missing: %s";
LABEL_38:
                              v24 = v12;
                              v25 = 38;
                              goto LABEL_39;
                            }

                            if (v54 - 97 <= 0x19)
                            {
                              v36 = v54 - 61;
                              goto LABEL_90;
                            }

                            v36 = v54 - 48;
                            if (v36 < 0xA)
                            {
                              goto LABEL_90;
                            }

                            if (v54 == 95)
                            {
                              v37 = 1056964608;
                              goto LABEL_91;
                            }

                            if (v54 == 45)
                            {
                              v36 = 62;
                              goto LABEL_90;
                            }

LABEL_110:
                            v41 = -3;
LABEL_111:
                            if (VRTraceGetErrorLogLevelForModule() < 7)
                            {
                              goto LABEL_40;
                            }

                            v45 = VRTraceErrorLogLevelToCSTR();
                            v46 = *MEMORY[0x277CE5818];
                            v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
                            if (!v13)
                            {
                              return v13;
                            }

                            *buf = 136316162;
                            v59 = v45;
                            v60 = 2080;
                            v61 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
                            v62 = 1024;
                            v63 = 1265;
                            v64 = 2080;
                            *v65 = name;
                            *&v65[8] = 1024;
                            v66 = v41;
                            v14 = " [%s] %s:%d parseServiceName: invalid peer ID: %s (%d)";
                            v24 = v46;
                            v25 = 44;
                            goto LABEL_39;
                          }

                          if (BYTE2(v53) != 45)
                          {
                            goto LABEL_110;
                          }

                          v32 = 62;
                        }
                      }

                      else
                      {
                        v32 = BYTE2(v53) - 61;
                      }
                    }

                    else
                    {
                      v32 = BYTE2(v53) - 55;
                    }

                    v33 = v32 << 12;
                    goto LABEL_73;
                  }

                  if (BYTE1(v53) != 45)
                  {
                    goto LABEL_110;
                  }

                  v30 = 62;
                }
              }

              else
              {
                v30 = BYTE1(v53) - 61;
              }
            }

            else
            {
              v30 = BYTE1(v53) - 55;
            }

            v31 = v30 << 6;
            goto LABEL_64;
          }

          if (v53 != 45)
          {
            goto LABEL_110;
          }

          v28 = 62;
        }
      }

      else
      {
        v28 = v53 - 61;
      }
    }

    else
    {
      v28 = v53 - 55;
    }

    v29 = v28;
    goto LABEL_55;
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_40;
  }

  v22 = VRTraceErrorLogLevelToCSTR();
  v23 = *MEMORY[0x277CE5818];
  v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *buf = 136316162;
    v59 = v22;
    v60 = 2080;
    v61 = "[GKSessionInternal(_private) parseServiceName:intoDisplayName:pid:state:]";
    v62 = 1024;
    v63 = 1251;
    v64 = 1024;
    *v65 = v16;
    *&v65[4] = 1024;
    *&v65[6] = v21;
    v14 = " [%s] %s:%d parseServiceName: unsupported version: %d-%d";
    v24 = v23;
    v25 = 40;
LABEL_39:
    _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, v14, buf, v25);
    goto LABEL_40;
  }

  return v13;
}

- (id)serviceName
{
  v2 = 0;
  v3 = 0;
  v11 = -21846;
  v10 = -1431655766;
  pid = self->_pid;
  do
  {
    v5 = (pid >> v2) & 0x3F;
    v6 = (pid >> v2) & 0xF | 0x30;
    if (v5 >= 0xA)
    {
      LOBYTE(v6) = v5 + 55;
    }

    if (v5 >= 0x24)
    {
      LOBYTE(v6) = v5 + 61;
    }

    if (v5 == 63)
    {
      LOBYTE(v6) = 95;
    }

    if (v5 == 62)
    {
      v7 = 45;
    }

    else
    {
      v7 = v6;
    }

    *(&v10 + v3++) = v7;
    v2 += 6;
  }

  while (v3 != 6);
  v12 = 0;
  v8 = 65;
  if (self->_isBusy)
  {
    v8 = 66;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"00%s%c..%@", &v10, v8, self->_displayName];
}

- (void)stopResolvingAllPeers
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_connection)
  {
    [(GKTable *)self->_peerInfoTable makeObjectsPerformSelector:sel_clearResolving];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        dnsServiceResolveConnection = self->_dnsServiceResolveConnection;
        v7 = 136315906;
        v8 = v3;
        v9 = 2080;
        v10 = "[GKSessionInternal(_private) stopResolvingAllPeers]";
        v11 = 1024;
        v12 = 1305;
        v13 = 1024;
        v14 = dnsServiceResolveConnection;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_dnsServiceResolveConnection) (%08X)", &v7, 0x22u);
      }
    }

    v6 = self->_dnsServiceResolveConnection;
    if (v6)
    {
      DNSServiceRefDeallocate(v6);
    }

    self->_dnsServiceResolveConnection = 0;
  }
}

- (void)didPublishWithError:(int)error
{
  v24 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v5;
      v18 = 2080;
      v19 = "[GKSessionInternal(_private) didPublishWithError:]";
      v20 = 1024;
      v21 = 1313;
      v22 = 1024;
      errorCopy = error;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d didPublish: %d", buf, 0x22u);
    }
  }

  if (error)
  {
    if (self->_service)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          service = self->_service;
          *buf = 136315906;
          v17 = v7;
          v18 = 2080;
          v19 = "[GKSessionInternal(_private) didPublishWithError:]";
          v20 = 1024;
          v21 = 1317;
          v22 = 1024;
          errorCopy = service;
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_service) (%08X)", buf, 0x22u);
        }
      }

      DNSServiceRefDeallocate(self->_service);
      self->_service = 0;
    }

    if (self->_mode == 2 && self->_serviceBrowser)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          serviceBrowser = self->_serviceBrowser;
          *buf = 136315906;
          v17 = v10;
          v18 = 2080;
          v19 = "[GKSessionInternal(_private) didPublishWithError:]";
          v20 = 1024;
          v21 = 1322;
          v22 = 1024;
          errorCopy = serviceBrowser;
          _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X)", buf, 0x22u);
        }
      }

      DNSServiceRefDeallocate(self->_serviceBrowser);
      self->_serviceBrowser = 0;
    }

    if (self->_sessionStarted)
    {
      v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.gamekit.GKSessionErrorDomain" code:error userInfo:0];
      v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v13, @"NSError", 0}];
      pthread_mutex_lock(&self->_delegateLock);
      [(GKSessionInternal *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v14 waitUntilDone:0];
      }

      pthread_mutex_unlock(&self->_delegateLock);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [(GKSessionInternal(_private) *)v15 didPublishWithError:v13];
        }
      }

      self->_sessionStarted = 0;
      self->_stopHandlingEvents = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [GKSessionInternal(_private) didPublishWithError:];
        }
      }

      [(GKSessionInternal *)self stopResolvingAllPeers];
    }
  }

  else
  {
    self->_isPublishing = 1;
  }
}

- (void)lock
{
  if (pthread_mutex_lock(&self->_lock) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKSessionInternal(_private) lock];
    }
  }
}

- (void)unlock
{
  if (pthread_mutex_unlock(&self->_lock) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [GKSessionInternal(_private) unlock];
    }
  }
}

- (void)handleNewGKOOBAudioMessage:(id)message messageData:(id)data remotePID:(unsigned int)d callbackData:(id *)callbackData maxCallbackCount:(int)count checkDelegateCallbackSelector:(BOOL *)selector tellDelegateSelector:(SEL *)delegateSelector callbackCount:(int *)self0
{
  v13 = *&d;
  v29 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self dataReceiveHandler];
  if (objc_opt_respondsToSelector())
  {
    v17 = *callbackCount;
    if (v17 >= count)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136315650;
          v24 = v21;
          v25 = 2080;
          v26 = "[GKSessionInternal(callback) handleNewGKOOBAudioMessage:messageData:remotePID:callbackData:maxCallbackCount:checkDelegateCallbackSelector:tellDelegateSelector:callbackCount:]";
          v27 = 1024;
          v28 = 1757;
          _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Already reached the max allowed delegate callback count", &v23, 0x1Cu);
        }
      }
    }

    else
    {
      callbackData[v17] = data;
      v18 = *callbackCount;
      selector[v18] = 0;
      delegateSelector[v18] = sel_tellDelegate_didReceiveDataFromPeerWithContext_;
      *callbackCount = v18 + 1;
    }
  }

  else
  {
    voiceChatListener = self->_voiceChatListener;
    if (!voiceChatListener)
    {
      voiceChatListener = [[GKVoiceChatSessionListener alloc] initWithSession:self];
      self->_voiceChatListener = voiceChatListener;
    }

    v20 = [(GKSessionInternal *)self stringForGCKID:v13];

    [(GKVoiceChatSessionListener *)voiceChatListener receivedNewVoiceChatOOBMessage:message fromPeerID:v20];
  }
}

- (void)sendCallbacksToDelegate:(id *)delegate remotePeer:(unsigned int)peer
{
  v4 = *&peer;
  v214 = *MEMORY[0x277D85DE8];
  v185 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  memset(v211, 170, sizeof(v211));
  LOBYTE(v193) = -86;
  memset(v209, 170, sizeof(v209));
  v207 = 0xAAAAAAAAAAAAAAAALL;
  v208 = 0xAAAAAAAAAAAAAAAALL;
  v192 = 0;
  if (delegate->var0 != 4 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      var0 = delegate->var0;
      *buf = 136316162;
      v196 = v6;
      v197 = 2080;
      v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
      v199 = 1024;
      v200 = 1798;
      v201 = 1024;
      *v202 = var0;
      *&v202[4] = 1024;
      *&v202[6] = v4;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendCallbacksToDelegate: %d for remotePID [%x]", buf, 0x28u);
    }
  }

  v212 = 0xAAAAAAAAAAAAAAAALL;
  [(GKSessionInternal *)self lock];
  v213 = 0;
  v212 = 0;
  memset(v210, 0, sizeof(v210));
  v193 = 257;
  v194 = 1;
  v187 = [(GKAutoPeerIDTable *)self->_peerIDTable objectForKey:v4];
  v9 = [(GKTable *)self->_peerInfoTable objectForKey:v4];
  v10 = 1;
  switch(delegate->var0)
  {
    case 0:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v81 = VRTraceErrorLogLevelToCSTR();
        v82 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v83 = delegate->var0;
          *buf = 136315906;
          v196 = v81;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 1866;
          v201 = 1024;
          *v202 = v83;
          _os_log_impl(&dword_24E50C000, v82, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_Invited", buf, 0x22u);
        }
      }

      v84 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:delegate->var1 length:delegate->var2 encoding:4];
      [(GKSessionInternal *)self setDisplayName:v84 forPeer:v4];
      if (!self->_sessionStarted)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v101 = VRTraceErrorLogLevelToCSTR();
          v102 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v196 = v101;
            v197 = 2080;
            v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
            v199 = 1024;
            v200 = 1872;
            _os_log_impl(&dword_24E50C000, v102, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d not available - rejecting incoming", buf, 0x1Cu);
          }
        }

        GCKSessionRespondToInvitation(self->sessionRef, v4, 0);
      }

      [(GKList *)self->_peersPendingIncomingInvitation addID:v4];
      v209[1] = sel_session_peer_didChangeState_;
      v209[2] = sel_session_didReceiveConnectionRequestFromPeer_;
      v207 = sel_tellDelegate_isConnectingPeer_;
      v208 = sel_tellDelegate_gotInvited_;
      v192 = 2;

      goto LABEL_116;
    case 1:
    case 0xD:
      TimingLog(3, 0, "Network connected...");
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v13 = delegate->var0;
          isSearching = self->_isSearching;
          v15 = self->_serviceBrowser != 0;
          var2 = delegate->var2;
          *buf = 136316674;
          v196 = v11;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 1895;
          v201 = 1024;
          *v202 = v13;
          *&v202[4] = 1024;
          *&v202[6] = isSearching;
          v203 = 1024;
          v204 = v15;
          v205 = 1024;
          v206 = var2;
          _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_Connected (%d, %d) (namelen:%d)", buf, 0x34u);
        }
      }

      p_peersConnected = &self->_peersConnected;
      if (![(GKList *)self->_peersConnected hasID:v4])
      {
        v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:delegate->var1 length:delegate->var2 encoding:4];
        [(GKSessionInternal *)self setDisplayName:v56 forPeer:v4];
        connection = self->_connection;
        if (connection)
        {
          [(GKConnection *)connection setParticipantID:v56 forPeerID:v187];
        }

        if (v9)
        {
          [v9 setNeedsToTimeout:0];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v58 = VRTraceErrorLogLevelToCSTR();
            v59 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v196 = v58;
              v197 = 2080;
              v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
              v199 = 1024;
              v200 = 1913;
              v201 = 2112;
              *v202 = v56;
              _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving: %@ connected", buf, 0x26u);
            }
          }

          [v9 stopResolving];
        }

        [(GKList *)*p_peersConnected addID:v4];
        if (*MEMORY[0x277CE5800] > 6 || (*MEMORY[0x277CE5810] & 1) != 0)
        {
          [GKSessionInternal(callback) sendCallbacksToDelegate:? remotePeer:?];
        }

        [(GKList *)self->_peersPendingIncomingInvitation removeID:v4];
        [(GKList *)self->_peersPendingOutgoingInvitation removeID:v4];
        if (self->_isSearching && self->_serviceBrowser)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v60 = VRTraceErrorLogLevelToCSTR();
            v61 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              serviceBrowser = self->_serviceBrowser;
              *buf = 136315906;
              v196 = v60;
              v197 = 2080;
              v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
              v199 = 1024;
              v200 = 1926;
              v201 = 1024;
              *v202 = serviceBrowser;
              _os_log_impl(&dword_24E50C000, v61, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X)", buf, 0x22u);
            }
          }

          DNSServiceRefDeallocate(self->_serviceBrowser);
          self->_serviceBrowser = 0;
          self->_isSearching = 0;
          [(GKList *)self->_peersForCleanup addIDsFromList:self->_peersAvailable];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v63 = VRTraceErrorLogLevelToCSTR();
            v64 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v65 = [(GKList *)self->_peersAvailable count];
              v66 = [(GKList *)self->_peersForCleanup count];
              *buf = 136316162;
              v196 = v63;
              v197 = 2080;
              v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
              v199 = 1024;
              v200 = 1934;
              v201 = 1024;
              *v202 = v65;
              *&v202[4] = 1024;
              *&v202[6] = v66;
              _os_log_impl(&dword_24E50C000, v64, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d moving %d available peers to future removal (%d)", buf, 0x28u);
            }
          }

          [(GKList *)self->_peersAvailable removeAllIDs];
          [(GKTable *)self->_peerInfoTable makeObjectsPerformSelector:sel_stopTXTRecordMonitoring];
        }

        v209[1] = sel_session_peer_didChangeState_;
        v207 = sel_tellDelegate_didConnectPeer_;
        *buf = delegate->var0 == 13;
        v210[0] = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
        v10 = 1;
        v192 = 1;

        goto LABEL_223;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v196 = v18;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 1899;
          v201 = 1024;
          *v202 = v4;
          v20 = " [%s] %s:%d New peer (%d) already connected";
          goto LABEL_13;
        }
      }

      goto LABEL_116;
    case 2:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v31 = delegate->var0;
          *buf = 136315906;
          v196 = v29;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 1954;
          v201 = 1024;
          *v202 = v31;
          _os_log_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_Failed", buf, 0x22u);
        }
      }

      [(GKConnection *)self->_connection reportingAgent];
      reportingGKLog();
      if (v9)
      {
        [v9 setNeedsToTimeout:0];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v32 = VRTraceErrorLogLevelToCSTR();
          v33 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            displayName = [v9 displayName];
            *buf = 136315906;
            v196 = v32;
            v197 = 2080;
            v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
            v199 = 1024;
            v200 = 1959;
            v201 = 2112;
            *v202 = displayName;
            _os_log_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving: %@ failed to connect", buf, 0x26u);
          }
        }

        [v9 stopResolving];
      }

      selfCopy3 = self;
      v36 = [(GKList *)self->_peersPendingIncomingInvitation hasID:v4];
      if (v36)
      {
        LODWORD(v212) = 30506;
        v211[3] = [GCKGameConnectivityKitBundle(v36 v37)];
        v211[0] = [GCKGameConnectivityKitBundle(v211[3] v38)];
        v209[1] = sel_session_connectionWithPeerFailed_withError_;
        v207 = sel_tellDelegate_connectionRequestToPeerFailed_;
        v192 = 1;
        peersPendingIncomingInvitation = self->_peersPendingIncomingInvitation;
      }

      else
      {
        v95 = [(GKList *)self->_peersPendingOutgoingInvitation hasID:v4];
        if (!v95)
        {
          LODWORD(v212) = 30201;
          v211[3] = [GCKGameConnectivityKitBundle(v95 v96)];
          v211[0] = [GCKGameConnectivityKitBundle(v211[3] v121)];
          v209[1] = sel_session_connectionWithPeerFailed_withError_;
          v207 = sel_tellDelegate_connectionRequestToPeerFailed_;
          v192 = 1;
          selfCopy3 = self;
          goto LABEL_156;
        }

        var3_low = LOWORD(delegate->var3);
        if (var3_low == 41)
        {
          LODWORD(v212) = 30510;
          v211[3] = [GCKGameConnectivityKitBundle(v95 v96)];
          v99 = GCKGameConnectivityKitBundle(v211[3], v137);
          v100 = @"Found in progress after success.";
        }

        else if (var3_low == 23)
        {
          LODWORD(v212) = 30503;
          v211[3] = [GCKGameConnectivityKitBundle(v95 v96)];
          v99 = GCKGameConnectivityKitBundle(v211[3], v98);
          v100 = @"Invitation timed out.";
        }

        else
        {
          LODWORD(v212) = 30505;
          v211[3] = [GCKGameConnectivityKitBundle(v95 v96)];
          v99 = GCKGameConnectivityKitBundle(v211[3], v138);
          v100 = @"Failed while pending outgoing invitation.";
        }

        v211[0] = [v99 localizedStringForKey:v100 value:&stru_286195238 table:@"GKSessionEvent"];
        v209[1] = sel_session_connectionWithPeerFailed_withError_;
        v207 = sel_tellDelegate_connectionRequestToPeerFailed_;
        v192 = 1;
        selfCopy3 = self;
        peersPendingIncomingInvitation = self->_peersPendingOutgoingInvitation;
      }

      [(GKList *)peersPendingIncomingInvitation removeID:v4];
LABEL_156:
      if (selfCopy3->_connection || [(GKList *)selfCopy3->_peersConnected count]|| [(GKList *)selfCopy3->_peersPendingIncomingInvitation count]|| [(GKList *)selfCopy3->_peersPendingOutgoingInvitation count])
      {
        goto LABEL_222;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_221;
      }

      v139 = VRTraceErrorLogLevelToCSTR();
      v140 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_221;
      }

      if (v9)
      {
        displayName2 = [v9 displayName];
      }

      else
      {
        displayName2 = 0;
      }

      *buf = 136315906;
      v196 = v139;
      v197 = 2080;
      v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
      v199 = 1024;
      v200 = 2017;
      v201 = 2112;
      *v202 = displayName2;
      v173 = " [%s] %s:%d ** Stop resolving ALL: %@ connection failed and no more connected/incoming/outgoing";
      goto LABEL_220;
    case 3:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v44 = VRTraceErrorLogLevelToCSTR();
        v45 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v46 = delegate->var0;
          *buf = 136316162;
          v196 = v44;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2025;
          v201 = 1024;
          *v202 = v46;
          *&v202[4] = 1024;
          *&v202[6] = v4;
          _os_log_impl(&dword_24E50C000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_Disconnected for peer %08X.", buf, 0x28u);
        }
      }

      [(GKConnection *)self->_connection reportingAgent];
      reportingGKLog();
      if (v9)
      {
        [v9 setNeedsToTimeout:0];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v47 = VRTraceErrorLogLevelToCSTR();
          v48 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            displayName3 = [v9 displayName];
            *buf = 136315906;
            v196 = v47;
            v197 = 2080;
            v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
            v199 = 1024;
            v200 = 2032;
            v201 = 2112;
            *v202 = displayName3;
            _os_log_impl(&dword_24E50C000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving: %@ disconnected", buf, 0x26u);
          }
        }

        [v9 stopResolving];
      }

      if ((delegate->var3 & 0x80000000) == 0)
      {
        v50 = &self->_peersConnected;
        if ([(GKList *)self->_peersConnected hasID:v4])
        {
          [(GKList *)*v50 removeID:v4];
          if (*MEMORY[0x277CE5800] > 6 || (*MEMORY[0x277CE5810] & 1) != 0)
          {
            [GKSessionInternal(callback) sendCallbacksToDelegate:v50 remotePeer:?];
          }

          v51 = [(GKList *)self->_peersAvailable hasID:v4];
          if (v9 && !v51)
          {
            [(GKTable *)self->_peerInfoTable removeObjectForKey:v4];
          }

          goto LABEL_167;
        }

        if ([(GKList *)self->_peersPendingOutgoingInvitation hasID:v4])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v111 = VRTraceErrorLogLevelToCSTR();
            v112 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v196 = v111;
              v197 = 2080;
              v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
              v199 = 1024;
              v200 = 2113;
              _os_log_impl(&dword_24E50C000, v112, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote declined", buf, 0x1Cu);
            }
          }

          v113 = [(GKList *)self->_peersPendingOutgoingInvitation removeID:v4];
          LODWORD(v212) = 30502;
          v211[3] = [GCKGameConnectivityKitBundle(v113 v114)];
          v116 = GCKGameConnectivityKitBundle(v211[3], v115);
          v117 = @"Remote declined.";
          goto LABEL_187;
        }

        if ([(GKList *)self->_peersPendingIncomingInvitation hasID:v4])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v127 = VRTraceErrorLogLevelToCSTR();
            v128 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v196 = v127;
              v197 = 2080;
              v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
              v199 = 1024;
              v200 = 2126;
              _os_log_impl(&dword_24E50C000, v128, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote cancelled", buf, 0x1Cu);
            }
          }

          [(GKConnection *)self->_connection reportingAgent];
          reportingGKLog();
          v129 = [(GKList *)self->_peersPendingIncomingInvitation removeID:v4];
          LODWORD(v212) = 30504;
          v211[3] = [GCKGameConnectivityKitBundle(v129 v130)];
          v211[0] = [GCKGameConnectivityKitBundle(v211[3] v131)];
          v209[1] = sel_session_connectionWithPeerFailed_withError_;
          v207 = sel_tellDelegate_connectionRequestToPeerFailed_;
          v192 = 1;
          goto LABEL_189;
        }

        if (self->_connection)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_116;
          }

          v145 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_116;
          }

          *buf = 136315906;
          v196 = v145;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2140;
          v201 = 1024;
          *v202 = v4;
          v20 = " [%s] %s:%d Cancelled peer (%d) already disconnected";
LABEL_13:
          v21 = v19;
          v22 = 34;
          goto LABEL_14;
        }

        if (v9)
        {
          [v9 setNeedsToTimeout:0];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v159 = VRTraceErrorLogLevelToCSTR();
          v160 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v196 = v159;
            v197 = 2080;
            v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
            v199 = 1024;
            v200 = 2146;
            _os_log_impl(&dword_24E50C000, v160, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Local accepted but disconnected", buf, 0x1Cu);
          }
        }

        [(GKList *)self->_peersPendingIncomingInvitation removeID:v4];
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_189;
        }

        v161 = VRTraceErrorLogLevelToCSTR();
        v162 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_189;
        }

        v163 = delegate->var0;
        *buf = 136316418;
        v196 = v161;
        v197 = 2080;
        v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
        v199 = 1024;
        v200 = 2148;
        v201 = 1024;
        *v202 = 2148;
        *&v202[4] = 1024;
        *&v202[6] = v4;
        v203 = 1024;
        v204 = v163;
        v164 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKSession_Internal.m:%d: Local side accepted but PID (0x%08X) disconnected. event->eventType = %d";
        v165 = v162;
        v166 = 46;
LABEL_211:
        _os_log_impl(&dword_24E50C000, v165, OS_LOG_TYPE_DEFAULT, v164, buf, v166);
LABEL_189:
        if (!self->_connection && ![(GKList *)self->_peersConnected count]&& ![(GKList *)self->_peersPendingIncomingInvitation count]&& ![(GKList *)self->_peersPendingOutgoingInvitation count])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v157 = VRTraceErrorLogLevelToCSTR();
            v140 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (v9)
              {
                displayName4 = [v9 displayName];
              }

              else
              {
                displayName4 = 0;
              }

              *buf = 136315906;
              v196 = v157;
              v197 = 2080;
              v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
              v199 = 1024;
              v200 = 2155;
              v201 = 2112;
              *v202 = displayName4;
              v173 = " [%s] %s:%d ** Stop resolving ALL: %@ disconnected and no more connected/incoming/outgoing";
LABEL_220:
              _os_log_impl(&dword_24E50C000, v140, OS_LOG_TYPE_DEFAULT, v173, buf, 0x26u);
            }
          }

LABEL_221:
          [(GKSessionInternal *)self stopResolvingAllPeers];
        }

LABEL_222:
        v10 = 0;
        goto LABEL_223;
      }

      var3 = delegate->var3;
      v104 = &self->_peersConnected;
      v105 = [(GKList *)self->_peersConnected hasID:v4];
      if (var3 == 23)
      {
        if (!v105)
        {
          if ([(GKList *)self->_peersPendingOutgoingInvitation hasID:v4])
          {
            v133 = [(GKList *)self->_peersPendingOutgoingInvitation removeID:v4];
            LODWORD(v212) = 30503;
            v135 = GCKGameConnectivityKitBundle(v133, v134);
            v136 = @"Outgoing invitation timed out.";
          }

          else
          {
            if (![(GKList *)self->_peersPendingIncomingInvitation hasID:v4])
            {
              if (VRTraceGetErrorLogLevelForModule() < 5)
              {
                goto LABEL_189;
              }

              v170 = VRTraceErrorLogLevelToCSTR();
              v171 = *MEMORY[0x277CE5818];
              if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_189;
              }

              *buf = 136316162;
              v196 = v170;
              v197 = 2080;
              v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
              v199 = 1024;
              v200 = 2066;
              v201 = 1024;
              *v202 = 2066;
              *&v202[4] = 1024;
              *&v202[6] = v4;
              v164 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKSession_Internal.m:%d: PID 0x%08X timed out, but not known to us.";
              v165 = v171;
              v166 = 40;
              goto LABEL_211;
            }

            v154 = [(GKList *)self->_peersPendingIncomingInvitation removeID:v4];
            LODWORD(v212) = 30503;
            v135 = GCKGameConnectivityKitBundle(v154, v155);
            v136 = @"Incoming invitation timed out.";
          }

          v211[3] = [v135 localizedStringForKey:v136 value:&stru_286195238 table:@"GKSessionEvent"];
          v116 = GCKGameConnectivityKitBundle(v211[3], v156);
          v117 = @"Invitation timed out.";
LABEL_187:
          v211[0] = [v116 localizedStringForKey:v117 value:&stru_286195238 table:@"GKSessionEvent"];
          v209[1] = sel_session_connectionWithPeerFailed_withError_;
          v144 = sel_tellDelegate_connectionRequestToPeerFailed_;
          goto LABEL_188;
        }

        v106 = [(GKList *)*v104 removeID:v4];
        if (*MEMORY[0x277CE5800] > 6 || (*MEMORY[0x277CE5810] & 1) != 0)
        {
          v106 = [GKSessionInternal(callback) sendCallbacksToDelegate:v104 remotePeer:?];
        }

        LODWORD(v212) = 30503;
        v211[3] = [GCKGameConnectivityKitBundle(v106 v107)];
        v109 = GCKGameConnectivityKitBundle(v211[3], v108);
        v110 = @"Connection timed out.";
      }

      else
      {
        if (!v105 && ![(GKList *)self->_peersPendingOutgoingInvitation hasID:v4]&& ![(GKList *)self->_peersPendingIncomingInvitation hasID:v4])
        {
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_189;
          }

          v167 = VRTraceErrorLogLevelToCSTR();
          v168 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_189;
          }

          v169 = delegate->var3;
          *buf = 136316674;
          v196 = v167;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2093;
          v201 = 1024;
          *v202 = 2093;
          *&v202[4] = 1024;
          *&v202[6] = v169;
          v203 = 1024;
          v204 = v169;
          v205 = 1024;
          v206 = v4;
          v164 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GKSession_Internal.m:%d: Received unknown event->status %08x (%d) for an unknown PID (0x%08X)";
          v165 = v168;
          v166 = 52;
          goto LABEL_211;
        }

        [(GKList *)self->_peersConnected removeID:v4];
        [(GKList *)self->_peersPendingOutgoingInvitation removeID:v4];
        v122 = [(GKList *)self->_peersPendingIncomingInvitation removeID:v4];
        if (*MEMORY[0x277CE5800] > 6 || (*MEMORY[0x277CE5810] & 1) != 0)
        {
          v122 = [GKSessionInternal(callback) sendCallbacksToDelegate:v104 remotePeer:?];
        }

        if ((delegate->var3 & 0x40000000) != 0)
        {
          LODWORD(v212) = 30205;
          v142 = MEMORY[0x277CCACA8];
          v143 = [GCKGameConnectivityKitBundle(v122 v123)];
          v124 = [v142 stringWithFormat:v143, *__error()];
          v126 = @"Connection error: system error";
        }

        else
        {
          LODWORD(v212) = 30203;
          v124 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(GCKGameConnectivityKitBundle(v122, v123), "localizedStringForKey:value:table:", @"Connection error: internal (%08X).", &stru_286195238, @"GKSessionEvent", delegate->var3];
          v126 = @"Connection error: internal";
        }

        v211[3] = v124;
        v109 = GCKGameConnectivityKitBundle(v124, v125);
        v110 = v126;
      }

      v211[0] = [v109 localizedStringForKey:v110 value:&stru_286195238 table:@"GKSessionEvent"];
LABEL_167:
      v209[1] = sel_session_peer_didChangeState_;
      v144 = sel_tellDelegate_didDisconnectPeer_;
LABEL_188:
      v207 = v144;
      v192 = 1;
      goto LABEL_189;
    case 4:
      if (![(GKList *)self->_peersConnected hasID:v4]|| !delegate->var1 || ![(GKSessionInternal *)self dataReceiveHandler])
      {
        goto LABEL_223;
      }

      v210[0] = [MEMORY[0x277CBEA90] dataWithBytes:delegate->var1 length:delegate->var2];
      LOBYTE(v193) = 0;
      v67 = sel_tellDelegate_didReceiveData_;
      goto LABEL_96;
    case 6:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v68 = VRTraceErrorLogLevelToCSTR();
        v69 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v70 = delegate->var0;
          *buf = 136316162;
          v196 = v68;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2210;
          v201 = 1024;
          *v202 = v70;
          *&v202[4] = 1024;
          *&v202[6] = v4;
          _os_log_impl(&dword_24E50C000, v69, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_IncomingOOBPacket from %X", buf, 0x28u);
        }
      }

      if (![(GKList *)self->_peersConnected hasID:v4])
      {
        goto LABEL_223;
      }

      var1 = delegate->var1;
      if (!var1)
      {
        goto LABEL_223;
      }

      v72 = [MEMORY[0x277CBEA90] dataWithBytes:var1 length:delegate->var2];
      v73 = [GKOOBMessageFactory newMessageFromData:v72];
      if (!v73)
      {
        if (delegate->var3 == 1)
        {
          if (self->_doobReceiveHandler[1])
          {
            v210[0] = [MEMORY[0x277CBEA90] dataWithBytes:delegate->var1 length:delegate->var2];
            LOBYTE(v193) = 0;
            v207 = sel_tellDelegate_didReceiveBand_RetryICE_;
            v10 = 1;
            goto LABEL_97;
          }

          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_116;
          }

          v172 = VRTraceErrorLogLevelToCSTR();
          v153 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_116;
          }

          *buf = 136315650;
          v196 = v172;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2243;
          v20 = " [%s] %s:%d GCKOOBand_RetryICE: oob message no band handler registered ";
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_116;
          }

          v152 = VRTraceErrorLogLevelToCSTR();
          v153 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_116;
          }

          *buf = 136315650;
          v196 = v152;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2252;
          v20 = " [%s] %s:%d GCKSessionEvent_IncomingOOBPacket: oob message band specifier out-of-range...";
        }

        v21 = v153;
        v22 = 28;
LABEL_14:
        _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_116:
        v10 = 1;
        goto LABEL_223;
      }

      v74 = v73;
      type = [v73 type];
      if (type == 1500)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v146 = VRTraceErrorLogLevelToCSTR();
          v147 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v196 = v146;
            v197 = 2080;
            v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
            v199 = 1024;
            v200 = 2222;
            _os_log_impl(&dword_24E50C000, v147, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionEvent_IncomingOOBPacket: disconnect from all peers", buf, 0x1Cu);
          }
        }

        [(GKSessionInternal *)self disconnectFromAllPeers];
        goto LABEL_180;
      }

      if (type == 1600)
      {
        [(GKSessionInternal *)self handleNewGKOOBAudioMessage:v74 messageData:v72 remotePID:v4 callbackData:v210 maxCallbackCount:3 checkDelegateCallbackSelector:&v193 tellDelegateSelector:&v207 callbackCount:&v192];
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_180;
        }

        v76 = VRTraceErrorLogLevelToCSTR();
        v77 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_180;
        }

        *buf = 136315650;
        v196 = v76;
        v197 = 2080;
        v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
        v199 = 1024;
        v200 = 2219;
        v78 = " [%s] %s:%d Incoming reliable audio packet";
        v79 = v77;
        v80 = 28;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_180;
        }

        v148 = VRTraceErrorLogLevelToCSTR();
        v149 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_180;
        }

        type2 = [v74 type];
        *buf = 136315906;
        v196 = v148;
        v197 = 2080;
        v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
        v199 = 1024;
        v200 = 2226;
        v201 = 1024;
        *v202 = type2;
        v78 = " [%s] %s:%d GCKSessionEvent_IncomingOOBPacket: unknown OOB packet type %d";
        v79 = v149;
        v80 = 34;
      }

      _os_log_impl(&dword_24E50C000, v79, OS_LOG_TYPE_DEFAULT, v78, buf, v80);
LABEL_180:
      v151 = v74;
      goto LABEL_116;
    case 7:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v88 = VRTraceErrorLogLevelToCSTR();
        v89 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v90 = delegate->var0;
          *buf = 136316162;
          v196 = v88;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2260;
          v201 = 1024;
          *v202 = v90;
          *&v202[4] = 1024;
          *&v202[6] = v4;
          _os_log_impl(&dword_24E50C000, v89, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_OutgoingOOBPacket to %X", buf, 0x28u);
        }
      }

      if (![(GKList *)self->_peersConnected hasID:v4]|| !delegate->var1)
      {
        goto LABEL_223;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v91 = VRTraceErrorLogLevelToCSTR();
        v92 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v93 = delegate->var2;
          *buf = 136315906;
          v196 = v91;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2262;
          v201 = 1024;
          *v202 = v93;
          _os_log_impl(&dword_24E50C000, v92, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionEvent_OutgoingOOBPacket: [buflen == %d]", buf, 0x22u);
        }
      }

      v94 = [MEMORY[0x277CBEA90] dataWithBytes:delegate->var1 length:delegate->var2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_301;
      block[3] = &unk_279682C18;
      block[4] = self;
      block[5] = v94;
      block[6] = v187;
      v27 = MEMORY[0x277D85CD0];
      v28 = block;
      goto LABEL_107;
    case 8:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v85 = VRTraceErrorLogLevelToCSTR();
        v86 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v87 = delegate->var0;
          *buf = 136316162;
          v196 = v85;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 2183;
          v201 = 1024;
          *v202 = v87;
          *&v202[4] = 1024;
          *&v202[6] = v4;
          _os_log_impl(&dword_24E50C000, v86, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_SendSelfOOBPacket from %X", buf, 0x28u);
        }
      }

      if (!delegate->var1)
      {
        goto LABEL_223;
      }

      if (delegate->var3 != 1)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_223;
        }

        v118 = VRTraceErrorLogLevelToCSTR();
        v119 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_223;
        }

        *buf = 136315650;
        v196 = v118;
        v197 = 2080;
        v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
        v199 = 1024;
        v200 = 2205;
        v120 = " [%s] %s:%d GCKSessionEvent_SendSelfOOBPacket: oob message band specifier out-of-range...";
LABEL_149:
        _os_log_impl(&dword_24E50C000, v119, OS_LOG_TYPE_DEFAULT, v120, buf, 0x1Cu);
        goto LABEL_223;
      }

      if (!self->_doobReceiveHandler[1])
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_223;
        }

        v132 = VRTraceErrorLogLevelToCSTR();
        v119 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_223;
        }

        *buf = 136315650;
        v196 = v132;
        v197 = 2080;
        v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
        v199 = 1024;
        v200 = 2196;
        v120 = " [%s] %s:%d GCKOOBand_RetryICE: oob message no band handler registered ";
        goto LABEL_149;
      }

      v210[0] = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
      LOBYTE(v193) = 0;
      v67 = sel_tellDelegate_didReceiveBand_RetryICE_;
LABEL_96:
      v207 = v67;
LABEL_97:
      v192 = 1;
LABEL_223:

      selfCopy5 = self;
      [(GKSessionInternal *)self unlock];
      pthread_mutex_lock(&self->_delegateLock);
      if (v192 >= 1)
      {
        for (i = 0; i < v192; ++i)
        {
          if (*(&v193 + i) == 1)
          {
            [(GKSessionInternal *)selfCopy5 delegate];
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              [(GKSessionInternal *)selfCopy5 privateDelegate];
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                continue;
              }
            }
          }

          v176 = *(&v212 + i);
          if (v176)
          {
            v177 = [(GKSessionInternal *)selfCopy5 newNSErrorFromGKSessionError:v176 description:v211[i + 3] reason:v211[i]];
            v178 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v187, @"peerID", v177, @"NSError", 0}];

            selfCopy5 = self;
          }

          else
          {
            v179 = v210[i];
            v180 = objc_alloc(MEMORY[0x277CBEAC0]);
            if (v179)
            {
              v181 = [v180 initWithObjectsAndKeys:{v187, @"peerID", v210[i], @"data", 0}];
            }

            else
            {
              v181 = [v180 initWithObjectsAndKeys:{v187, @"peerID", 0, v183, v184}];
            }

            v178 = v181;
          }

          [(GKSessionInternal *)selfCopy5 performSelectorOnMainThread:(&v207)[i] withObject:v178 waitUntilDone:0];
        }
      }

      pthread_mutex_unlock(&selfCopy5->_delegateLock);

      if (selfCopy5->_connection)
      {
        v182 = 1;
      }

      else
      {
        v182 = v10;
      }

      if ((v182 & 1) == 0 && ![(GKList *)selfCopy5->_peersConnected count]&& selfCopy5->_mode - 1 <= 1 && selfCopy5->_sessionStarted && !selfCopy5->_isSearching && !selfCopy5->_shutdown)
      {
        selfCopy5->_isSearching = 1;
        [(GKSessionInternal *)selfCopy5 browse];
      }

      [v185 drain];
      return;
    case 9:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v25 = delegate->var0;
          *buf = 136315906;
          v196 = v23;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 1822;
          v201 = 1024;
          *v202 = v25;
          _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_RelayInitiate", buf, 0x22u);
        }
      }

      v26 = [MEMORY[0x277CCAC58] propertyListFromData:objc_msgSend(MEMORY[0x277CBEA90] mutabilityOption:"dataWithBytes:length:" format:delegate->var1 errorDescription:{delegate->var2), 0, 0, 0}];
      v191[0] = MEMORY[0x277D85DD0];
      v191[1] = 3221225472;
      v191[2] = __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke;
      v191[3] = &unk_279682C18;
      v191[4] = self;
      v191[5] = v187;
      v191[6] = v26;
      v27 = MEMORY[0x277D85CD0];
      v28 = v191;
      goto LABEL_107;
    case 0xA:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v52 = VRTraceErrorLogLevelToCSTR();
        v53 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v54 = delegate->var0;
          *buf = 136315906;
          v196 = v52;
          v197 = 2080;
          v198 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]";
          v199 = 1024;
          v200 = 1844;
          v201 = 1024;
          *v202 = v54;
          _os_log_impl(&dword_24E50C000, v53, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Got event: %d - GCKSessionEvent_RelayUpdate", buf, 0x22u);
        }
      }

      v55 = [MEMORY[0x277CCAC58] propertyListFromData:objc_msgSend(MEMORY[0x277CBEA90] mutabilityOption:"dataWithBytes:length:" format:delegate->var1 errorDescription:{delegate->var2), 0, 0, 0}];
      v190[0] = MEMORY[0x277D85DD0];
      v190[1] = 3221225472;
      v190[2] = __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_223;
      v190[3] = &unk_279682C18;
      v190[4] = self;
      v190[5] = v187;
      v190[6] = v55;
      v27 = MEMORY[0x277D85CD0];
      v28 = v190;
      goto LABEL_107;
    case 0xC:
      v40 = malloc_type_malloc((delegate->var2 + 24), 0x101004035137979uLL);
      if (!v40)
      {
        goto LABEL_223;
      }

      v41 = v40;
      v42 = *&delegate->var2;
      *v40 = *&delegate->var0;
      v43 = v40 + 24;
      *(v41 + 1) = v43;
      *(v41 + 2) = v42;
      memcpy(v43, delegate->var1, delegate->var2);
      v188[0] = MEMORY[0x277D85DD0];
      v188[1] = 3221225472;
      v188[2] = __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_2;
      v188[3] = &unk_279683018;
      v188[4] = self;
      v188[5] = v187;
      v188[6] = v41;
      v27 = MEMORY[0x277D85CD0];
      v28 = v188;
LABEL_107:
      dispatch_async(v27, v28);
      goto LABEL_223;
    default:
      goto LABEL_223;
  }
}

uint64_t __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke(void *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v7[0] = @"peerID";
  v7[1] = @"dict";
  v8[0] = v1;
  v3 = a1[6];
  v5 = @"GKSRelayInitiateInfo";
  v6 = v3;
  v8[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  return [v2 tellDelegate_initiateRelay:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, v7, 2)}];
}

uint64_t __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_223(void *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v7[0] = @"peerID";
  v7[1] = @"dict";
  v8[0] = v1;
  v3 = a1[6];
  v5 = @"GKSRelayUpdateInfo";
  v6 = v3;
  v8[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  return [v2 tellDelegate_updateRelay:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, v7, 2)}];
}

uint64_t __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_301(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = a1[6];
  return [v1 sendData:v2 toPeers:objc_msgSend(MEMORY[0x277CBEA60] withDataMode:"arrayWithObjects:count:" enableOOB:v4 error:{1), 0, 1, 0}];
}

void __66__GKSessionInternal_callback__sendCallbacksToDelegate_remotePeer___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 48) + 16);
      *buf = 136315906;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKSessionInternal(callback) sendCallbacksToDelegate:remotePeer:]_block_invoke_2";
      v9 = 1024;
      v10 = 2282;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionEvent_ReportStatistics: [buflen == %d]", buf, 0x22u);
    }
  }

  GCKSessionDecodeChannelStatistics(*(*(a1 + 32) + 64), *(*(a1 + 48) + 8), *(*(a1 + 48) + 16));
}

- (void)setDelegate:(id)delegate
{
  pthread_mutex_lock(&self->_delegateLock);
  objc_storeWeak(&self->_delegate, delegate);

  pthread_mutex_unlock(&self->_delegateLock);
}

- (void)setPrivateDelegate:(id)delegate
{
  pthread_mutex_lock(&self->_delegateLock);
  objc_storeWeak(&self->_privateDelegate, delegate);

  pthread_mutex_unlock(&self->_delegateLock);
}

- (GKSessionInternal)initWithConnection:(id)connection session:(id)session delegate:(id)delegate
{
  v11 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = GKSessionInternal;
  v8 = [(GKSessionInternal *)&v10 init];
  if (v8)
  {
    VRTraceReset();
    *(v8 + 1) = session;
    *(v8 + 426) = 1;
    *(v8 + 98) = -1;
    *(v8 + 12) = [connection gckPID];
    *(v8 + 8) = [connection gckSession];
    objc_storeWeak(v8 + 11, delegate);
    [connection setEventDelegate:v8];
    *(v8 + 10) = connection;
    GCKSessionSetEventCallback(*(v8 + 8), AGPNetworkEventListener, v8);
  }

  return 0;
}

- (GKSessionInternal)initWithSessionID:(id)d displayName:(id)name session:(id)session sessionMode:(unsigned int)mode
{
  v29 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = GKSessionInternal;
  v10 = [(GKSessionInternal *)&v19 init];
  if (v10)
  {
    VRTraceReset();
    *(v10 + 1) = session;
    *(v10 + 10) = 0;
    *(v10 + 87) = mode;
    *(v10 + 426) = 1;
    *(v10 + 98) = -1;
    if (![name length])
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      name = [v11 stringWithFormat:@"%@%f", v12, v13];
    }

    if (![d length])
    {
      d = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    }

    *(v10 + 45) = d;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v10 + 45);
        buf[0] = 136316162;
        *&buf[1] = v14;
        v21 = 2080;
        v22 = "[GKSessionInternal initWithSessionID:displayName:session:sessionMode:]";
        v23 = 1024;
        v24 = 2514;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        nameCopy = name;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d initWithSessionID: %@ displayName: %@", buf, 0x30u);
      }
    }

    UniqueID = GCKSessionCreateUniqueID();
    if (!GCKSessionCreate(1, UniqueID, AGPNetworkEventListener, v10, v10 + 8))
    {
      AGPSessionCreate(*(v10 + 8), UniqueID, GKNetworkEventListener, v10, v10 + 9);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal initWithSessionID:displayName:session:sessionMode:];
      }
    }

    return 0;
  }

  return v10;
}

- (void)reset
{
  v33 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      displayName = self->_displayName;
      v24 = 136316162;
      v25 = v3;
      v26 = 2080;
      v27 = "[GKSessionInternal reset]";
      v28 = 1024;
      v29 = 2620;
      v30 = 2048;
      *v31 = self;
      *&v31[8] = 2112;
      v32 = displayName;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session[%p] [%@] reset", &v24, 0x30u);
    }
  }

  [(GKSessionInternal *)self lock];
  pthread_mutex_lock(&self->_delegateLock);
  self->_shutdown = 1;
  self->_stopHandlingEvents = 1;
  objc_storeWeak(&self->_privateDelegate, 0);
  objc_storeWeak(&self->_delegate, 0);
  self->_session = 0;
  v6 = [(GKList *)self->_peersPendingIncomingInvitation allMatchingObjectsFromTable:self->_peerIDTable];
  if ([v6 count])
  {
    GCKSessionRespondToInvitation(self->sessionRef, [objc_msgSend(v6 objectAtIndexedSubscript:{0), "unsignedIntValue"}], 0);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(GKTable *)self->_peerIDTable count];
      v10 = [(GKTable *)self->_peerNameTable count];
      v11 = [(GKTable *)self->_peerInfoTable count];
      v24 = 136316418;
      v25 = v7;
      v26 = 2080;
      v27 = "[GKSessionInternal reset]";
      v28 = 1024;
      v29 = 2641;
      v30 = 1024;
      *v31 = v9;
      *&v31[4] = 1024;
      *&v31[6] = v10;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = v11;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _peerIDTable:%d, _peerNameTable:%d, _peerInfoTable:%d", &v24, 0x2Eu);
    }
  }

  [(GKTable *)self->_peerIDTable removeAllObjects];
  [(GKTable *)self->_peerNameTable removeAllObjects];
  [(GKTable *)self->_peerInfoTable removeAllObjects];
  [(GKList *)self->_peersAvailable removeAllIDs];
  [(GKList *)self->_peersConnected removeAllIDs];
  [(GKList *)self->_peersForCleanup removeAllIDs];
  [(GKList *)self->_peersPendingIncomingInvitation removeAllIDs];
  [(GKList *)self->_peersPendingOutgoingInvitation removeAllIDs];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(GKTable *)self->_peerIDTable count];
      v15 = [(GKTable *)self->_peerNameTable count];
      v16 = [(GKTable *)self->_peerInfoTable count];
      v24 = 136316418;
      v25 = v12;
      v26 = 2080;
      v27 = "[GKSessionInternal reset]";
      v28 = 1024;
      v29 = 2652;
      v30 = 1024;
      *v31 = v14;
      *&v31[4] = 1024;
      *&v31[6] = v15;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = v16;
      _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _peerIDTable:%d, _peerNameTable:%d, _peerInfoTable:%d", &v24, 0x2Eu);
    }
  }

  sReset = self->_sReset;
  if (sReset != -1)
  {
    close(sReset);
    self->_sReset = -1;
  }

  if (self->_dnsServiceConnection)
  {
    *&self->_isSearching = 0;
    self->_serviceBrowser = 0;
    self->_service = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        dnsServiceConnection = self->_dnsServiceConnection;
        v24 = 136315906;
        v25 = v18;
        v26 = 2080;
        v27 = "[GKSessionInternal reset]";
        v28 = 1024;
        v29 = 2664;
        v30 = 1024;
        *v31 = dnsServiceConnection;
        _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_dnsServiceConnection) (%08X)", &v24, 0x22u);
      }
    }

    DNSServiceRefDeallocate(self->_dnsServiceConnection);
    self->_dnsServiceConnection = 0;
  }

  if (self->_dnsServiceResolveConnection)
  {
    [(GKTable *)self->_peerInfoTable makeObjectsPerformSelector:sel_clearResolving];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        dnsServiceResolveConnection = self->_dnsServiceResolveConnection;
        v24 = 136315906;
        v25 = v21;
        v26 = 2080;
        v27 = "[GKSessionInternal reset]";
        v28 = 1024;
        v29 = 2670;
        v30 = 1024;
        *v31 = dnsServiceResolveConnection;
        _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_dnsServiceResolveConnection) (%08X)", &v24, 0x22u);
      }
    }

    DNSServiceRefDeallocate(self->_dnsServiceResolveConnection);
    self->_dnsServiceResolveConnection = 0;
  }

  self->_isBusy = 0;
  self->_sessionStarted = 0;
  pthread_mutex_unlock(&self->_delegateLock);
  [(GKSessionInternal *)self unlock];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      displayName = self->_displayName;
      *buf = 136316162;
      v7 = v3;
      v8 = 2080;
      v9 = "[GKSessionInternal dealloc]";
      v10 = 1024;
      v11 = 2682;
      v12 = 2048;
      selfCopy = self;
      v14 = 2112;
      v15 = displayName;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session[%p] [%@] dealloc", buf, 0x30u);
    }
  }

  [(GKSessionInternal *)self reset];
  objc_storeWeak(&self->_dataReceiveHandler, 0);
  AGPSessionRelease(self->agpSessionRef);
}

- (NSString)displayName
{
  v2 = self->_displayName;

  return v2;
}

- (id)displayNameForPeer:(id)peer
{
  v26 = *MEMORY[0x277D85DE8];
  intValue = [peer intValue];
  if (intValue != self->_pid)
  {
    v8 = [(GKTable *)self->_peerNameTable objectForKey:intValue];
    if (v8)
    {
      displayName = v8;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return displayName;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        return displayName;
      }

      v16 = 136316162;
      v17 = v9;
      v18 = 2080;
      v19 = "[GKSessionInternal displayNameForPeer:]";
      v20 = 1024;
      v21 = 2728;
      v22 = 1024;
      v23 = intValue;
      v24 = 2112;
      v25 = displayName;
      v11 = " [%s] %s:%d displayNameForPeer: %d = %@ (table)";
    }

    else
    {
      v12 = [(GKTable *)self->_peerInfoTable objectForKey:intValue];
      if (!v12 || (v13 = [v12 displayName]) == 0)
      {
LABEL_17:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            [GKSessionInternal displayNameForPeer:];
          }
        }

        displayName = 0;
        return displayName;
      }

      displayName = v13;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return displayName;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        return displayName;
      }

      v16 = 136316162;
      v17 = v14;
      v18 = 2080;
      v19 = "[GKSessionInternal displayNameForPeer:]";
      v20 = 1024;
      v21 = 2732;
      v22 = 1024;
      v23 = intValue;
      v24 = 2112;
      v25 = displayName;
      v11 = " [%s] %s:%d displayNameForPeer: %d = %@ (peer)";
    }

    _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, v11, &v16, 0x2Cu);
    return displayName;
  }

  displayName = [(GKSessionInternal *)self displayName];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = v6;
      v18 = 2080;
      v19 = "[GKSessionInternal displayNameForPeer:]";
      v20 = 1024;
      v21 = 2726;
      v22 = 1024;
      v23 = intValue;
      v24 = 2112;
      v25 = displayName;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d displayNameForPeer: %d = %@ (self)", &v16, 0x2Cu);
    }
  }

  if (!displayName)
  {
    goto LABEL_17;
  }

  return displayName;
}

- (BOOL)passesSendDataSanityCheck:(id)check toPeers:(id)peers withDataMode:(unsigned int)mode error:(id *)error
{
  if (peers)
  {
    v6 = check == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || mode > 1;
  if (error && v8)
  {
    v9 = @"Parameter mode is invalid.";
    if (!peers)
    {
      v9 = @"Parameter peers is invalid.";
    }

    if (check)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"Parameter data is invalid.";
    }

    *error = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -sendData:toPeers:withDataMode:error:" reason:v10];
  }

  return v8 ^ 1;
}

- (BOOL)sendData:(id)data toPeers:(id)peers withDataMode:(unsigned int)mode enableOOB:(BOOL)b error:(id *)error
{
  bCopy = b;
  modeCopy = mode;
  v49 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  v13 = [(GKSessionInternal *)self passesSendDataSanityCheck:data toPeers:peers withDataMode:*&mode error:error];
  if (v13)
  {
    dataCopy = data;
    peersCopy = peers;
    bytes = [data bytes];
    v36 = [data length];
    [(GKSessionInternal *)self lock];
    if ([peers count])
    {
      errorCopy = error;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v35 = modeCopy;
      do
      {
        v20 = [peers objectAtIndexedSubscript:v17];
        if (v20)
        {
          v21 = v20;
          if ([(NSString *)[(GKSession *)self->_session peerID] isEqualToString:v20])
          {
            -[GKSessionInternal performSelector:withObject:](self, "performSelector:withObject:", sel_tellDelegate_didReceiveData_, [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v21, @"peerID", data, @"data", 0}]);
          }

          else
          {
            intValue = [v21 intValue];
            v37 = -1431655766;
            v38 = intValue;
            agpSessionRef = self->agpSessionRef;
            if (bCopy)
            {
              if (modeCopy == 1)
              {
                AGPSessionSendAudioTo(agpSessionRef, &v38, 1, bytes, v36, &v37);
              }

              v24 = v36;
              v25 = modeCopy;
              v26 = 1;
            }

            else
            {
              v24 = v36;
              v25 = modeCopy;
              v26 = 0;
            }

            v27 = AGPSessionSendTo(agpSessionRef, &v38, 1, bytes, v24, &v37, v25, v26);
            if (v27)
            {
              ++v18;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v28 = v18;
                v29 = bytes;
                v30 = bCopy;
                v31 = VRTraceErrorLogLevelToCSTR();
                v32 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316162;
                  v40 = v31;
                  v41 = 2080;
                  v42 = "[GKSessionInternal sendData:toPeers:withDataMode:enableOOB:error:]";
                  v43 = 1024;
                  v44 = 2821;
                  v45 = 2048;
                  v46 = v38;
                  v47 = 2048;
                  v48 = v27;
                  _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AGPSessionSendTo failed for peer:(%lx) error:(%lX)\n", buf, 0x30u);
                }

                bCopy = v30;
                bytes = v29;
                v18 = v28;
                modeCopy = v35;
              }
            }

            else
            {
              v27 = v19;
            }

            v19 = v27;
          }
        }

        ++v17;
      }

      while (v17 < [peers count]);
      [(GKSessionInternal *)self unlock];
      if (errorCopy && v18)
      {
        *errorCopy = -[GKSessionInternal newNSErrorFromGKSessionError:description:reason:](self, "newNSErrorFromGKSessionError:description:reason:", 30202, @"Send data error.", [MEMORY[0x277CCACA8] stringWithFormat:@"AGPSessionSendTo failed (%08X).", v19]);
      }
    }

    else
    {
      [(GKSessionInternal *)self unlock];
      v18 = 0;
    }

    LOBYTE(v13) = v18 != [peers count];
  }

  return v13;
}

- (BOOL)sendDataToAllPeers:(id)peers withDataMode:(unsigned int)mode error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  if (peers)
  {
    peersCopy = peers;
    bytes = [peers bytes];
    v10 = [peers length];
    [(GKSessionInternal *)self lock];
    AGPSessionBroadcast(self->agpSessionRef, bytes, v10, mode);
  }

  if (error)
  {
    *error = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -sendDataToAllPeers:withDataMode:error:" reason:@"Parameter data is invalid."];
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_8;
  }

  v11 = VRTraceErrorLogLevelToCSTR();
  v12 = *MEMORY[0x277CE5818];
  v13 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *buf = 136315650;
    v16 = v11;
    v17 = 2080;
    v18 = "[GKSessionInternal sendDataToAllPeers:withDataMode:error:]";
    v19 = 1024;
    v20 = 2850;
    _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendDataToAllPeers - bad parameter", buf, 0x1Cu);
LABEL_8:
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (void)receiveDOOB:(id)b fromPeer:(id)peer inSession:(id)session context:(void *)context
{
  v24 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316418;
      v13 = v10;
      v14 = 2080;
      v15 = "[GKSessionInternal receiveDOOB:fromPeer:inSession:context:]";
      v16 = 1024;
      v17 = 2890;
      v18 = 1024;
      v19 = [b length];
      v20 = 2048;
      intValue = [peer intValue];
      v22 = 2112;
      v23 = [session displayNameForPeer:peer];
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RetryICE:: gcksession:didReceiveDOOB: %d bytes fromPeer: %08lx %@", &v12, 0x36u);
    }
  }

  GCKSessionReceiveDOOB(self->sessionRef, [peer intValue], objc_msgSend(b, "bytes"), objc_msgSend(b, "length"));
}

- (void)setDOOBReceiveHandler:(id)handler withContext:(void *)context inBand:(unsigned int)band
{
  pthread_mutex_lock(&self->_delegateLock);
  if (handler && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = @"The out-of-band data handler does not respond to the correct selector.";
  }

  else
  {
    if (band == 1)
    {
      self->_doobReceiveHandler[1] = handler;
      self->_doobReceiveHandlerContext[1] = context;
      goto LABEL_11;
    }

    v9 = @"The band specifier is out-of-range for this implementation or build version.";
  }

  v10 = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -setOOBReceiveHandler:withContext:inBand" reason:v9];
  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v10, @"NSError", 0}];
  [(GKSessionInternal *)self delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
  {
    [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v11 waitUntilDone:0];
  }

LABEL_11:

  pthread_mutex_unlock(&self->_delegateLock);
}

- (void)setDataReceiveHandler:(id)handler withContext:(void *)context
{
  pthread_mutex_lock(&self->_delegateLock);
  if (handler && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -setDataReceiveHandler:withContext:" reason:@"The handler does not respond to the correct selector."];
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v7, @"NSError", 0}];
    [(GKSessionInternal *)self delegate];
    if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
    {
      [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v8 waitUntilDone:0];
    }
  }

  else
  {
    objc_storeWeak(&self->_dataReceiveHandler, handler);
    self->_dataReceiveHandlerContext = context;
  }

  pthread_mutex_unlock(&self->_delegateLock);
}

- (void)timeoutConnectToPeer:(id)peer
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v7 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      displayName = self->_displayName;
      [peer connectTimeout];
      *buf = 136316162;
      v23 = v8;
      v24 = 2080;
      v25 = "[GKSessionInternal timeoutConnectToPeer:]";
      v26 = 1024;
      v27 = 2952;
      v28 = 2112;
      v29 = displayName;
      v30 = 2048;
      *v31 = v11;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%@] timeoutConnectToPeer: scheduled for %.3lf seconds in the future", buf, 0x30u);
    }
  }

  *(&v21.tv_usec + 1) = -1431655766;
  [peer connectTimeout];
  v13 = v12;
  v21.tv_sec = v12;
  [peer connectTimeout];
  v21.tv_usec = ((v14 - v13) * 1000000.0);
  select(0, 0, 0, 0, &v21);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_displayName;
      v18 = [peer pid];
      v19 = -[GKList hasID:](self->_peersConnected, "hasID:", [peer pid]);
      needsToTimeout = [peer needsToTimeout];
      *buf = 136316674;
      v23 = v15;
      v24 = 2080;
      v25 = "[GKSessionInternal timeoutConnectToPeer:]";
      v26 = 1024;
      v27 = 2959;
      v28 = 2112;
      v29 = v17;
      v30 = 1024;
      *v31 = v18;
      *&v31[4] = 1024;
      *&v31[6] = v19;
      v32 = 1024;
      v33 = needsToTimeout;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%@] timeoutConnectToPeer: %d - connected?(%d) needs to?(%d)", buf, 0x38u);
    }
  }

  if (!-[GKList hasID:](self->_peersConnected, "hasID:", [peer pid]) && objc_msgSend(peer, "needsToTimeout"))
  {
    GCKSessionCancelConnectToLocalService(self->sessionRef, [peer pid]);
  }

  [v5 drain];
}

- (void)connectToPeer:(id)peer withTimeout:(double)timeout
{
  v41 = *MEMORY[0x277D85DE8];
  intValue = [peer intValue];
  v8 = [(GKTable *)self->_peerInfoTable objectForKey:intValue];
  if (v8)
  {
    v9 = v8;
    [(GKList *)self->_peersPendingOutgoingInvitation addID:intValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = v10;
        v33 = 2080;
        v34 = "[GKSessionInternal connectToPeer:withTimeout:]";
        v35 = 1024;
        v36 = 3009;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving? potentially previous resolves", buf, 0x1Cu);
      }
    }

    [v9 stopResolving];
    timeoutCopy = 30000000.0;
    if (timeout != 0.0)
    {
      timeoutCopy = timeout;
    }

    [v9 setConnectTimeout:timeoutCopy];
    [v9 setNeedsToTimeout:1];
    [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    [(GKConnection *)self->_connection reportingAgent];
    connectingGKLog();
    [(GKConnection *)self->_connection reportingAgent];
    reportingGKAppInfo();
    if ([(GKSessionInternal *)self checkDNSConnection])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v32 = v13;
          v33 = 2080;
          v34 = "[GKSessionInternal connectToPeer:withTimeout:]";
          v35 = 1024;
          v36 = 3053;
          v15 = " [%s] %s:%d Connect: Unable to use DNS connection!";
          v16 = v14;
          v17 = 28;
LABEL_27:
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
        }
      }
    }

    else
    {
      sdRef = self->_dnsServiceResolveConnection;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v32 = v18;
          v33 = 2080;
          v34 = "[GKSessionInternal connectToPeer:withTimeout:]";
          v35 = 1024;
          v36 = 3029;
          v37 = 2112;
          *v38 = peer;
          _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ********** BEGIN RESOLVE: %@", buf, 0x26u);
        }
      }

      v20 = DNSServiceResolve(&sdRef, 0x24000u, 0, [objc_msgSend(v9 "serviceName")], -[NSString UTF8String](self->serviceType, "UTF8String"), "local.", gkResolveCallback, v9);
      if (v20)
      {
        v21 = v20;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v24 = [objc_msgSend(v9 "serviceName")];
            uTF8String = [(NSString *)self->serviceType UTF8String];
            *buf = 136316418;
            v32 = v22;
            v33 = 2080;
            v34 = "[GKSessionInternal connectToPeer:withTimeout:]";
            v35 = 1024;
            v36 = 3041;
            v37 = 1024;
            *v38 = v21;
            *&v38[4] = 2080;
            *&v38[6] = v24;
            v39 = 2080;
            v40 = uTF8String;
            v15 = " [%s] %s:%d resolve failed right away: %d [%s][%s]";
            v16 = v23;
            v17 = 54;
            goto LABEL_27;
          }
        }
      }

      else
      {
        [v9 setResolveService:sdRef];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            serviceName = [v9 serviceName];
            *buf = 136316418;
            v32 = v26;
            v33 = 2080;
            v34 = "[GKSessionInternal connectToPeer:withTimeout:]";
            v35 = 1024;
            v36 = 3047;
            v37 = 2112;
            *v38 = serviceName;
            *&v38[8] = 1024;
            *&v38[10] = sdRef;
            v39 = 1024;
            LODWORD(v40) = 0;
            v15 = " [%s] %s:%d peer [%@]: pending resolve: %08X (shares from %08X)";
            v16 = v27;
            v17 = 50;
            goto LABEL_27;
          }
        }
      }
    }
  }

  else if (peer)
  {
    [(GKSessionInternal *)self delegate];
    if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
    {
      v29 = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30501 description:@"The peerID was not found." reason:@"Invalid peerID."];
      -[GKSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_tellDelegate_connectionRequestToPeerFailed_, [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{peer, @"peerID", v29, @"NSError", 0}], 0);
    }
  }
}

- (void)cancelConnectToPeer:(id)peer
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal cancelConnectToPeer:];
      }
    }
  }

  else if (peer)
  {
    intValue = [peer intValue];
    v5 = [(GKTable *)self->_peerInfoTable objectForKey:intValue];
    if (v5)
    {
      v6 = v5;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = "[GKSessionInternal cancelConnectToPeer:]";
          v13 = 1024;
          v14 = 3070;
          v15 = 2112;
          displayName = [v6 displayName];
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving: %@ local cancelled", &v9, 0x26u);
        }
      }

      [v6 stopResolving];
    }

    [(GKConnection *)self->_connection reportingAgent];
    reportingGKLog();
    GCKSessionCancelConnectToLocalService(self->sessionRef, intValue);
  }
}

- (BOOL)acceptConnectionFromPeer:(id)peer error:(id *)error
{
  if (self->_shutdown)
  {
    if (error)
    {
      *error = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Session already released - invalid operation." reason:@"Session shutting down."];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal acceptConnectionFromPeer:error:];
      }
    }
  }

  else
  {
    if (peer)
    {
      intValue = [peer intValue];
      [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      [(GKConnection *)self->_connection reportingAgent];
      connectingGKLog();
      [(GKConnection *)self->_connection reportingAgent];
      reportingGKAppInfo();
      GCKSessionRespondToInvitation(self->sessionRef, intValue, 1);
    }

    if (error)
    {
      *error = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30500 description:@"Invalid parameter for -acceptConnectionFromPeer:error:" reason:@"Parameter peerID is invalid."];
    }
  }

  return 0;
}

- (void)denyConnectionFromPeer:(id)peer
{
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKSessionInternal denyConnectionFromPeer:];
      }
    }
  }

  else if (peer)
  {
    intValue = [peer intValue];
    [(GKList *)self->_peersPendingIncomingInvitation removeID:intValue];
    [(GKConnection *)self->_connection reportingAgent];
    reportingGKLog();
    sessionRef = self->sessionRef;

    GCKSessionRespondToInvitation(sessionRef, intValue, 0);
  }
}

- (void)disconnectPeerFromAllPeers:(id)peers
{
  v33 = *MEMORY[0x277D85DE8];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v3;
        v25 = 2080;
        v26 = "[GKSessionInternal disconnectPeerFromAllPeers:]";
        v27 = 1024;
        v28 = 3129;
        v5 = " [%s] %s:%d cannot disconnect peer after reset";
LABEL_5:
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x1Cu);
      }
    }
  }

  else if (peers)
  {
    intValue = [peers intValue];
    [(GKConnection *)self->_connection reportingAgent];
    reportingGKLog();
    v7 = [[GKOOBMessage alloc] initWithMessageType:1500];
    if (v7)
    {
      v8 = v7;
      data = [(GKOOBMessage *)v7 data];
      if (data)
      {
        v10 = data;
        v11 = data;
        bytes = [v10 bytes];
        v13 = [v10 length];
        [(GKSessionInternal *)self lock];
        v21 = -1431655766;
        v14 = AGPSessionSendTo(self->agpSessionRef, &intValue, 1, bytes, v13, &v21, 0, 1);
        if (v14)
        {
          v15 = v14;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v16 = VRTraceErrorLogLevelToCSTR();
            v17 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v24 = v16;
              v25 = 2080;
              v26 = "[GKSessionInternal disconnectPeerFromAllPeers:]";
              v27 = 1024;
              v28 = 3165;
              v29 = 2048;
              v30 = intValue;
              v31 = 2048;
              v32 = v15;
              _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d disconnectPeerFromAllPeers: AGPSessionSendTo failed for peer:(%lx) error:(%lX)\n", buf, 0x30u);
            }
          }
        }

        [(GKSessionInternal *)self unlock];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v24 = v19;
          v25 = 2080;
          v26 = "[GKSessionInternal disconnectPeerFromAllPeers:]";
          v27 = 1024;
          v28 = 3150;
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d disconnectPeerFromAllPeers: can't get message data", buf, 0x1Cu);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v18;
        v25 = 2080;
        v26 = "[GKSessionInternal disconnectPeerFromAllPeers:]";
        v27 = 1024;
        v28 = 3145;
        v5 = " [%s] %s:%d disconnectPeerFromAllPeers: can't create message";
        goto LABEL_5;
      }
    }
  }
}

- (void)disconnectFromAllPeers
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot disconnect self after reset", v2, v3, v4, v5);
}

- (void)setAvailable:(BOOL)available
{
  availableCopy = available;
  v51 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v5;
      v41 = 2080;
      v42 = "[GKSessionInternal setAvailable:]";
      v43 = 1024;
      v44 = 3189;
      v45 = 1024;
      v46 = availableCopy;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setAvailable: %d", buf, 0x22u);
    }
  }

  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v7;
        v41 = 2080;
        v42 = "[GKSessionInternal setAvailable:]";
        v43 = 1024;
        v44 = 3192;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cannot setavailable after reset", buf, 0x1Cu);
      }
    }

    return;
  }

  if (availableCopy)
  {
    v9 = +[GKBluetoothSupport bluetoothStatus];
    v10 = v9;
    if (self->_wifiEnabled || v9 == 5)
    {
      if (!self->_wifiEnabled)
      {
        goto LABEL_45;
      }

      *buf = 0;
      LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
      if (LocalInterfaceListWithOptions >= 1)
      {
        v28 = LocalInterfaceListWithOptions;
        v29 = (*buf + 4);
        while ((*(v29 - 4) & 1) != 0 || strcmp(v29, "en0"))
        {
          v29 += 40;
          if (!--v28)
          {
            goto LABEL_42;
          }
        }

        FreeLocalInterfaceList();
        goto LABEL_45;
      }

LABEL_42:
      FreeLocalInterfaceList();
      if (v10 != 4)
      {
LABEL_45:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            sessionStarted = self->_sessionStarted;
            *buf = 136315906;
            *&buf[4] = v30;
            v41 = 2080;
            v42 = "[GKSessionInternal setAvailable:]";
            v43 = 1024;
            v44 = 3271;
            v45 = 1024;
            v46 = sessionStarted;
            _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sessionStarted: %d", buf, 0x22u);
          }
        }

        if (!self->_sessionStarted)
        {
          self->_sessionStarted = 1;
          self->_isBusy = 0;
          mode = self->_mode;
          if (mode - 1 <= 1)
          {
            if (self->_serviceBrowser)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v34 = VRTraceErrorLogLevelToCSTR();
                v35 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  serviceBrowser = self->_serviceBrowser;
                  *buf = 136315906;
                  *&buf[4] = v34;
                  v41 = 2080;
                  v42 = "[GKSessionInternal setAvailable:]";
                  v43 = 1024;
                  v44 = 3286;
                  v45 = 1024;
                  v46 = serviceBrowser;
                  _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X)", buf, 0x22u);
                }
              }

              DNSServiceRefDeallocate(self->_serviceBrowser);
              self->_serviceBrowser = 0;
            }

            self->_isSearching = 1;
            [(GKSessionInternal *)self browse];
            mode = self->_mode;
          }

          if ((mode | 2) == 2)
          {
            [g_GKSessionGlobals registerPID:self->_pid];
            if (self->_service)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v37 = VRTraceErrorLogLevelToCSTR();
                v38 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  service = self->_service;
                  *buf = 136315906;
                  *&buf[4] = v37;
                  v41 = 2080;
                  v42 = "[GKSessionInternal setAvailable:]";
                  v43 = 1024;
                  v44 = 3298;
                  v45 = 1024;
                  v46 = service;
                  _os_log_impl(&dword_24E50C000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_service) (%08X)", buf, 0x22u);
                }
              }

              DNSServiceRefDeallocate(self->_service);
              self->_service = 0;
            }

            self->_isPublishing = 0;
            [(GKSessionInternal *)self publish];
          }
        }

        return;
      }

      v11 = @"Network not available.";
      v12 = @"WiFi and/or Bluetooth is required.";
    }

    else
    {
      v11 = @"Bluetooth not available.";
      v12 = @"Bluetooth is required.";
    }

    v13 = [(GKSessionInternal *)self newNSErrorFromGKSessionError:30509 description:v11 reason:v12];
    v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v13, @"NSError", 0}];
    [(GKSessionInternal *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v14 waitUntilDone:0];
    }

    goto LABEL_45;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_sessionStarted;
      isSearching = self->_isSearching;
      isPublishing = self->_isPublishing;
      *buf = 136316418;
      *&buf[4] = v15;
      v41 = 2080;
      v42 = "[GKSessionInternal setAvailable:]";
      v43 = 1024;
      v44 = 3197;
      v45 = 1024;
      v46 = v17;
      v47 = 1024;
      v48 = isSearching;
      v49 = 1024;
      v50 = isPublishing;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sessionStarted: %d  (%d, %d)", buf, 0x2Eu);
    }
  }

  if (self->_sessionStarted)
  {
    v20 = self->_mode;
    if (v20 - 1 <= 1 && self->_isSearching)
    {
      if (self->_serviceBrowser)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v23 = self->_serviceBrowser;
            *buf = 136315906;
            *&buf[4] = v21;
            v41 = 2080;
            v42 = "[GKSessionInternal setAvailable:]";
            v43 = 1024;
            v44 = 3207;
            v45 = 1024;
            v46 = v23;
            _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X)", buf, 0x22u);
          }
        }

        DNSServiceRefDeallocate(self->_serviceBrowser);
      }

      self->_isSearching = 0;
      [(GKList *)self->_peersAvailable removeAllIDs];
      v20 = self->_mode;
    }

    if ((v20 | 2) == 2)
    {
      [g_GKSessionGlobals unregisterPID:self->_pid];
      if (self->_isPublishing)
      {
        if (self->_service)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v24 = VRTraceErrorLogLevelToCSTR();
            v25 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v26 = self->_service;
              *buf = 136315906;
              *&buf[4] = v24;
              v41 = 2080;
              v42 = "[GKSessionInternal setAvailable:]";
              v43 = 1024;
              v44 = 3219;
              v45 = 1024;
              v46 = v26;
              _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_service) (%08X)", buf, 0x22u);
            }
          }

          DNSServiceRefDeallocate(self->_service);
        }

        self->_isPublishing = 0;
      }
    }

    self->_sessionStarted = 0;
  }
}

- (id)peersWithConnectionState:(unsigned int)state
{
  v4 = 0;
  if (state > 3)
  {
    if (state == 4)
    {
      v4 = [(GKList *)self->_peersPendingIncomingInvitation allMatchingObjectsFromTable:self->_peerIDTable];
      [v4 addObjectsFromArray:{-[GKList allMatchingObjectsFromTable:](self->_peersPendingOutgoingInvitation, "allMatchingObjectsFromTable:", self->_peerIDTable)}];
    }

    else if (state == 5)
    {
      goto LABEL_7;
    }

    return v4;
  }

  if (!state)
  {
    peersAvailable = self->_peersAvailable;
    goto LABEL_9;
  }

  if (state != 2)
  {
    return v4;
  }

LABEL_7:
  peersAvailable = self->_peersConnected;
LABEL_9:
  peerIDTable = self->_peerIDTable;

  return [(GKList *)peersAvailable allMatchingObjectsFromTable:peerIDTable];
}

- (void)stopOldService
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = xmmword_24E590860;
  DWORD2(v6) = 0;
  select(0, 0, 0, 0, &v6);
  oldService = self->_oldService;
  if (oldService)
  {
    self->_oldService = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v8 = v4;
        v9 = 2080;
        v10 = "[GKSessionInternal stopOldService]";
        v11 = 1024;
        v12 = 3361;
        v13 = 1024;
        v14 = oldService;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceToStop) (%08X)", buf, 0x22u);
      }
    }

    DNSServiceRefDeallocate(oldService);
  }
}

- (void)setBusy:(BOOL)busy
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_isBusy != busy)
  {
    self->_isBusy = busy;
    [(GKSessionInternal *)self lock];
    if (self->_isPublishing)
    {
      txtRecord.ForceNaturalAlignment = 0xAAAAAAAAAAAAAAAALL;
      *(&txtRecord.ForceNaturalAlignment + 1) = 0xAAAAAAAAAAAAAAAALL;
      TXTRecordCreate(&txtRecord, 0, 0);
      v4 = TXTRecordSetValue(&txtRecord, "txtvers", 1u, "1");
      if (self->_isBusy)
      {
        v5 = "B";
      }

      else
      {
        v5 = "A";
      }

      v6 = (TXTRecordSetValue(&txtRecord, "state", 1u, v5) | v4) == 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          if (v6)
          {
            Length = TXTRecordGetLength(&txtRecord);
          }

          else
          {
            Length = 0;
          }

          v16 = 136316162;
          v17 = v7;
          v18 = 2080;
          v19 = "[GKSessionInternal setBusy:]";
          v20 = 1024;
          v21 = 3401;
          v22 = 1024;
          *v23 = v6;
          *&v23[4] = 1024;
          *&v23[6] = Length;
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceUpdateRecord() (use?=%d len=%d)", &v16, 0x28u);
        }
      }

      service = self->_service;
      if (v6)
      {
        v11 = TXTRecordGetLength(&txtRecord);
        BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
      }

      else
      {
        v11 = 0;
        BytesPtr = 0;
      }

      updated = DNSServiceUpdateRecord(service, 0, 0x20000u, v11, BytesPtr, 0);
      TXTRecordDeallocate(&txtRecord);
      if (updated && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315906;
          v17 = v14;
          v18 = 2080;
          v19 = "[GKSessionInternal setBusy:]";
          v20 = 1024;
          v21 = 3410;
          v22 = 2048;
          *v23 = self;
          _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d failed to set busy state for session[%p]", &v16, 0x26u);
        }
      }
    }

    [(GKSessionInternal *)self unlock];
  }
}

- (BOOL)isPeerBusy:(id)busy
{
  v3 = -[GKTable objectForKey:](self->_peerInfoTable, "objectForKey:", [busy intValue]);
  if (v3)
  {

    LOBYTE(v3) = [v3 isBusy];
  }

  return v3;
}

- (void)handleEvents
{
  v71 = *MEMORY[0x277D85DE8];
  v57.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v57.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  v3 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      buf.fds_bits[0] = 136315906;
      *&buf.fds_bits[1] = v4;
      LOWORD(buf.fds_bits[3]) = 2080;
      *(&buf.fds_bits[3] + 2) = "[GKSessionInternal handleEvents]";
      HIWORD(buf.fds_bits[5]) = 1024;
      buf.fds_bits[6] = 3465;
      LOWORD(buf.fds_bits[7]) = 1024;
      *(&buf.fds_bits[7] + 2) = [(GKSessionInternal *)self retainCount];
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d handleEvents started (%d)", &buf, 0x22u);
    }
  }

  memset(&buf, 0, sizeof(buf));
  [(GKSessionInternal *)self lock];
  if (!self->_stopHandlingEvents)
  {
    v56 = 0;
    *&v6 = 136315906;
    v55 = v6;
    do
    {
      if (self->_shutdown)
      {
        break;
      }

      sReset = self->_sReset;
      if (sReset != -1)
      {
        close(sReset);
      }

      v11 = socket(2, 1, 6);
      self->_sReset = v11;
      if (v11 == -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v41 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *v58 = 136315650;
            v59 = v41;
            v60 = 2080;
            v61 = "[GKSessionInternal handleEvents]";
            v62 = 1024;
            v63 = 3487;
            v9 = " [%s] %s:%d handleEvents stop... (cannot create reset socket)";
            goto LABEL_8;
          }
        }

        goto LABEL_63;
      }

      v12 = v11;
      if (__darwin_check_fd_set_overflow(v11, &buf, 0))
      {
        *(buf.fds_bits + ((v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v12;
      }

      v13 = self->_sReset;
      [(GKSessionInternal *)self unlock];
      dnsServiceConnection = self->_dnsServiceConnection;
      if (!dnsServiceConnection || (v15 = DNSServiceRefSockFD(dnsServiceConnection), v15 == -1))
      {
        v16 = -1;
      }

      else
      {
        v16 = v15;
        if (__darwin_check_fd_set_overflow(v15, &buf, 0))
        {
          *(buf.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v16;
        }

        if (v13 <= v16)
        {
          v13 = v16;
        }
      }

      dnsServiceResolveConnection = self->_dnsServiceResolveConnection;
      if (!dnsServiceResolveConnection || (v18 = DNSServiceRefSockFD(dnsServiceResolveConnection), v18 == -1))
      {
        v19 = -1;
      }

      else
      {
        v19 = v18;
        if (__darwin_check_fd_set_overflow(v18, &buf, 0))
        {
          *(buf.fds_bits + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v19;
        }

        v20 = v19;
        if (v13 < v19)
        {
LABEL_31:
          v57.tv_sec = 30;
          v57.tv_usec = 0;
          v21 = select(v19 + 1, &buf, 0, 0, &v57);
          v22 = v21;
          if (v21 < 0)
          {
            v34 = *__error();
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            if (v34 != 9)
            {
              if (ErrorLogLevelForModule >= 7)
              {
                v45 = VRTraceErrorLogLevelToCSTR();
                v46 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v47 = *__error();
                  v48 = __error();
                  v49 = strerror(*v48);
                  *v58 = 136316418;
                  v59 = v45;
                  v60 = 2080;
                  v61 = "[GKSessionInternal handleEvents]";
                  v62 = 1024;
                  v63 = 3585;
                  v64 = 1024;
                  v65 = v22;
                  v66 = 1024;
                  v67 = v47;
                  v68 = 2080;
                  v69 = v49;
                  v50 = " [%s] %s:%d select failed (%d): %d: %s";
                  v51 = v46;
                  v52 = 50;
LABEL_71:
                  _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, v50, v58, v52);
                  goto LABEL_64;
                }
              }

              goto LABEL_64;
            }

            if (ErrorLogLevelForModule >= 7)
            {
              v36 = VRTraceErrorLogLevelToCSTR();
              v37 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *v58 = 136315650;
                v59 = v36;
                v60 = 2080;
                v61 = "[GKSessionInternal handleEvents]";
                v62 = 1024;
                v63 = 3580;
                v31 = v37;
                v32 = " [%s] %s:%d handleEvents: EBADF - retrying...";
                v33 = 28;
LABEL_51:
                _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, v32, v58, v33);
              }
            }
          }

          else if (v21)
          {
            if (v16 != -1)
            {
              if (__darwin_check_fd_set_overflow(v16, &buf, 0))
              {
                if ((*(buf.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v16))
                {
                  v23 = DNSServiceProcessResult(self->_dnsServiceConnection);
                  if (v23)
                  {
                    v24 = v23;
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v25 = VRTraceErrorLogLevelToCSTR();
                      v26 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                      {
                        *v58 = v55;
                        v59 = v25;
                        v60 = 2080;
                        v61 = "[GKSessionInternal handleEvents]";
                        v62 = 1024;
                        v63 = 3594;
                        v64 = 1024;
                        v65 = v24;
                        _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d process dnsservice conn failed: %d", v58, 0x22u);
                      }
                    }
                  }
                }
              }
            }

            if (v20 != -1)
            {
              if (__darwin_check_fd_set_overflow(v20, &buf, 0))
              {
                if ((*(buf.fds_bits + ((v20 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v20))
                {
                  v27 = DNSServiceProcessResult(self->_dnsServiceResolveConnection);
                  if (v27)
                  {
                    v28 = v27;
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v29 = VRTraceErrorLogLevelToCSTR();
                      v30 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                      {
                        *v58 = v55;
                        v59 = v29;
                        v60 = 2080;
                        v61 = "[GKSessionInternal handleEvents]";
                        v62 = 1024;
                        v63 = 3600;
                        v64 = 1024;
                        v65 = v28;
                        v31 = v30;
                        v32 = " [%s] %s:%d process dnsservice resolve conn failed: %d";
                        v33 = 34;
                        goto LABEL_51;
                      }
                    }
                  }
                }
              }
            }
          }

          memset(&buf, 0, sizeof(buf));
          goto LABEL_53;
        }
      }

      v20 = v19;
      v19 = v13;
      if (v13 != -1)
      {
        goto LABEL_31;
      }

      v38 = VRTraceGetErrorLogLevelForModule();
      if (v56 == 3)
      {
        if (v38 >= 7)
        {
          v53 = VRTraceErrorLogLevelToCSTR();
          v54 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *v58 = 136315650;
            v59 = v53;
            v60 = 2080;
            v61 = "[GKSessionInternal handleEvents]";
            v62 = 1024;
            v63 = 3562;
            v50 = " [%s] %s:%d handleEvents: nothing to do - quitting";
            v51 = v54;
            v52 = 28;
            goto LABEL_71;
          }
        }

        goto LABEL_64;
      }

      if (v38 >= 7)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 136315650;
          v59 = v39;
          v60 = 2080;
          v61 = "[GKSessionInternal handleEvents]";
          v62 = 1024;
          v63 = 3567;
          _os_log_impl(&dword_24E50C000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d handleEvents: nothing to do - retry after 1 second", v58, 0x1Cu);
        }
      }

      ++v56;
      v57.tv_sec = 1;
      v57.tv_usec = 0;
      select(0, 0, 0, 0, &v57);
      memset(&buf, 0, sizeof(buf));
LABEL_53:
      [(GKSessionInternal *)self lock];
    }

    while (!self->_stopHandlingEvents);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 136315650;
      v59 = v7;
      v60 = 2080;
      v61 = "[GKSessionInternal handleEvents]";
      v62 = 1024;
      v63 = 3477;
      v9 = " [%s] %s:%d handleEvents stop...";
LABEL_8:
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, v9, v58, 0x1Cu);
    }
  }

LABEL_63:
  [(GKSessionInternal *)self unlock];
LABEL_64:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v42 = VRTraceErrorLogLevelToCSTR();
    v43 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v44 = [(GKSessionInternal *)self retainCount];
      *v58 = 136315906;
      v59 = v42;
      v60 = 2080;
      v61 = "[GKSessionInternal handleEvents]";
      v62 = 1024;
      v63 = 3658;
      v64 = 1024;
      v65 = v44;
      _os_log_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d handleEvents ended (%d)", v58, 0x22u);
    }
  }

  *&self->_handleEventsRunning = 0;
  [v3 drain];
}

- (BOOL)checkDNSConnection
{
  v16 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self lock];
  if (self->_shutdown)
  {
    goto LABEL_2;
  }

  if (!self->_dnsServiceConnection)
  {
    Connection = DNSServiceCreateConnection(&self->_dnsServiceConnection);
    if (Connection)
    {
      v5 = Connection;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_2;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_2;
      }

      *v14 = 136315906;
      *&v14[4] = v6;
      *&v14[12] = 2080;
      *&v14[14] = "[GKSessionInternal checkDNSConnection]";
      *&v14[22] = 1024;
      LODWORD(v15) = 3678;
      WORD2(v15) = 1024;
      *(&v15 + 6) = v5;
      v8 = " [%s] %s:%d DNSServiceCreateConnection failed: %d";
      goto LABEL_15;
    }

    sReset = self->_sReset;
    if (sReset != -1)
    {
      close(sReset);
      self->_sReset = -1;
    }
  }

  if (!self->_dnsServiceResolveConnection)
  {
    v9 = DNSServiceCreateConnection(&self->_dnsServiceResolveConnection);
    if (!v9)
    {
      v13 = self->_sReset;
      if (v13 != -1)
      {
        close(v13);
        self->_sReset = -1;
      }

      goto LABEL_5;
    }

    v10 = v9;
    DNSServiceRefDeallocate(self->_dnsServiceConnection);
    self->_dnsServiceConnection = 0;
    if (VRTraceGetErrorLogLevelForModule() < 7 || (v11 = VRTraceErrorLogLevelToCSTR(), v7 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT)))
    {
LABEL_2:
      [(GKSessionInternal *)self unlock:*v14];
      return 1;
    }

    *v14 = 136315906;
    *&v14[4] = v11;
    *&v14[12] = 2080;
    *&v14[14] = "[GKSessionInternal checkDNSConnection]";
    *&v14[22] = 1024;
    LODWORD(v15) = 3692;
    WORD2(v15) = 1024;
    *(&v15 + 6) = v10;
    v8 = " [%s] %s:%d DNSServiceCreateConnection failed2: %d";
LABEL_15:
    _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, v8, v14, 0x22u);
    goto LABEL_2;
  }

LABEL_5:
  [(GKSessionInternal *)self unlock];
  return 0;
}

- (void)publish
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v5 = v0;
  OUTLINED_FUNCTION_5_0();
  v6 = 3780;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_24E50C000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d publish failed: %d", v4, 0x22u);
}

- (void)cleanupExAvailablePeers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(GKList *)self->_peersForCleanup count];
  if (v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v11 = v4;
        v12 = 2080;
        v13 = "[GKSessionInternal cleanupExAvailablePeers]";
        v14 = 1024;
        v15 = 3817;
        v16 = 1024;
        v17 = v3;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d cleanup previous available peers: (%d)", buf, 0x22u);
      }
    }

    v6 = [(GKList *)self->_peersForCleanup allMatchingObjectsFromTable:self->_peerInfoTable];
    if ([v6 count])
    {
      v7 = 0;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        if (v8)
        {
          v9 = v8;
          if (!-[GKList hasID:](self->_peersConnected, "hasID:", [v8 pid]) && !-[GKList hasID:](self->_peersAvailable, "hasID:", objc_msgSend(v9, "pid")))
          {
            -[GKTable removeObjectForKey:](self->_peerInfoTable, "removeObjectForKey:", [v9 pid]);
            [(GKSessionInternal *)self delegate];
            if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
            {
              -[GKSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_tellDelegate_peerDidBecomeUnavailable_, [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{-[GKAutoPeerIDTable objectForKey:](self->_peerIDTable, "objectForKey:", objc_msgSend(v9, "pid")), @"peerID", 0}], 0);
            }
          }
        }

        ++v7;
      }

      while (v7 < [v6 count]);
    }

    [(GKList *)self->_peersForCleanup removeAllIDs];
  }
}

- (void)processTXTRecordForPeer:(id)peer txtLen:(unsigned __int16)len txtRecord:(const void *)record
{
  lenCopy = len;
  v31 = *MEMORY[0x277D85DE8];
  if (len && record)
  {
    if (TXTRecordContainsKey(len, record, "state"))
    {
      valueLen[0] = -86;
      ValuePtr = TXTRecordGetValuePtr(lenCopy, record, "state", valueLen);
      v10 = 0;
      if (ValuePtr && valueLen[0] == 1)
      {
        v10 = *ValuePtr == 66;
      }
    }

    else
    {
      v10 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v15 = [peer pid];
        isBusy = [peer isBusy];
        *valueLen = 136316418;
        v20 = v13;
        v21 = 2080;
        v22 = "[GKSessionInternal processTXTRecordForPeer:txtLen:txtRecord:]";
        v23 = 1024;
        v24 = 3860;
        v25 = 1024;
        recordCopy = v15;
        v27 = 1024;
        v28 = isBusy;
        v29 = 1024;
        v30 = v10;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** peer %d: oldbusy=%d, newbusy=%d", valueLen, 0x2Eu);
      }
    }

    if (v10 != [peer isBusy])
    {
      v17 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{-[GKAutoPeerIDTable objectForKey:](self->_peerIDTable, "objectForKey:", objc_msgSend(peer, "pid")), @"peerID", 0}];
      [peer setBusy:v10];
      if (v10)
      {
        v18 = sel_tellDelegate_peerDidBecomeBusy_;
      }

      else
      {
        v18 = sel_tellDelegate_peerDidBecomeAvailable_;
      }

      [(GKSessionInternal *)self performSelectorOnMainThread:v18 withObject:v17 waitUntilDone:0];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *valueLen = 136316162;
      v20 = v11;
      v21 = 2080;
      v22 = "[GKSessionInternal processTXTRecordForPeer:txtLen:txtRecord:]";
      v23 = 1024;
      v24 = 3846;
      v25 = 1024;
      recordCopy = record;
      v27 = 1024;
      v28 = lenCopy;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** no TXT record to process: txtRecord=%08X, txtLen=%u", valueLen, 0x28u);
    }
  }
}

- (void)didUpdateTXTRecordForPeer:(id)peer fromIF:(const char *)f txtLen:(unsigned __int16)len txtRecord:(const void *)record withError:(int)error moreComing:(BOOL)coming
{
  v30 = *MEMORY[0x277D85DE8];
  if (error)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315906;
        v23 = v9;
        v24 = 2080;
        v25 = "[GKSessionInternal didUpdateTXTRecordForPeer:fromIF:txtLen:txtRecord:withError:moreComing:]";
        v26 = 1024;
        v27 = 3874;
        v28 = 1024;
        LODWORD(fCopy) = error;
        v11 = " [%s] %s:%d Bonjour query error: %d";
        v12 = v10;
        v13 = 34;
LABEL_9:
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, v11, &v22, v13);
      }
    }
  }

  else
  {
    lenCopy = len;
    if (-[GKSessionInternal filterService:withPID:](self, "filterService:withPID:", f, [peer pid]))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136315906;
          v23 = v20;
          v24 = 2080;
          v25 = "[GKSessionInternal didUpdateTXTRecordForPeer:fromIF:txtLen:txtRecord:withError:moreComing:]";
          v26 = 1024;
          v27 = 3877;
          v28 = 2080;
          fCopy = f;
          v11 = " [%s] %s:%d resolved to [%s] - skipping";
          v12 = v21;
          v13 = 38;
          goto LABEL_9;
        }
      }
    }

    else
    {
      [(GKSessionInternal *)self processTXTRecordForPeer:peer txtLen:lenCopy txtRecord:record];
      if (!coming)
      {

        [(GKSessionInternal *)self cleanupExAvailablePeers];
      }
    }
  }
}

- (void)didFindService:(const char *)service fromIF:(const char *)f withError:(int)error moreComing:(BOOL)coming
{
  buf[127] = *MEMORY[0x277D85DE8];
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v43 = -1431655766;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  if ([(GKSessionInternal *)self parseServiceName:service intoDisplayName:&v44 pid:&v43 state:&v42])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v43;
        v14 = [(GKList *)self->_peersForCleanup hasID:v43];
        LODWORD(buf[0]) = 136316162;
        *(buf + 4) = v11;
        WORD2(buf[1]) = 2080;
        *(&buf[1] + 6) = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
        HIWORD(buf[2]) = 1024;
        LODWORD(buf[3]) = 3918;
        WORD2(buf[3]) = 1024;
        *(&buf[3] + 6) = v13;
        WORD1(buf[4]) = 1024;
        HIDWORD(buf[4]) = v14;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _peersForCleanup: contains %d ?= %d", buf, 0x28u);
      }
    }

    [(GKList *)self->_peersForCleanup removeID:v43];
    if ([(GKSessionInternal *)self filterService:f withPID:v43])
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      LODWORD(buf[0]) = 136316418;
      *(buf + 4) = v15;
      WORD2(buf[1]) = 2080;
      *(&buf[1] + 6) = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
      HIWORD(buf[2]) = 1024;
      LODWORD(buf[3]) = 3922;
      WORD2(buf[3]) = 2080;
      *(&buf[3] + 6) = service;
      HIWORD(buf[4]) = 2080;
      buf[5] = f;
      LOWORD(buf[6]) = 1024;
      *(&buf[6] + 2) = error;
      v17 = " [%s] %s:%d browse rejected: [%s] from [%s] (%d)";
      v18 = v16;
      v19 = 54;
LABEL_9:
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_15:

      return;
    }

    if (self->_mode == 2 && v43 == self->_pid)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_15;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = v20;
      WORD2(buf[1]) = 2080;
      *(&buf[1] + 6) = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
      HIWORD(buf[2]) = 1024;
      LODWORD(buf[3]) = 3928;
      v17 = " [%s] %s:%d didFind: skipping self";
      v18 = v21;
      v19 = 28;
      goto LABEL_9;
    }

    v22 = [v42 objectForKeyedSubscript:@"busy"];
    if (v22)
    {
      bOOLValue = [v22 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v24 = [(GKTable *)self->_peerInfoTable objectForKey:v43];
    if (v24)
    {
      v25 = v24;
      [(GKPeerInternal *)v24 setServiceCount:[(GKPeerInternal *)v24 serviceCount]+ 1];
LABEL_37:

      goto LABEL_38;
    }

    v26 = [GKPeerInternal alloc];
    v25 = -[GKPeerInternal initWithPID:displayName:serviceName:](v26, "initWithPID:displayName:serviceName:", v43, v44, [MEMORY[0x277CCACA8] stringWithUTF8String:service]);
    [(GKPeerInternal *)v25 setSession:self];
    [(GKPeerInternal *)v25 setBusy:bOOLValue];
    sdRef = self->_dnsServiceConnection;
    memset(buf + 1, 170, 0x3F0uLL);
    LOBYTE(buf[0]) = 0;
    v27 = DNSServiceConstructFullName(buf, service, [(NSString *)self->serviceType UTF8String], "local.");
    if (v27)
    {
      v28 = v27;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_30;
      }

      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *v45 = 136316162;
      v46 = v29;
      v47 = 2080;
      v48 = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
      v49 = 1024;
      v50 = 3984;
      v51 = 1024;
      *v52 = v43;
      *&v52[4] = 1024;
      *&v52[6] = v28;
      v31 = " [%s] %s:%d ** cannot construct fullname! no busy state updates for peer %u (error=%d)";
      v32 = v30;
      v33 = 40;
    }

    else
    {
      v34 = DNSServiceQueryRecord(&sdRef, 0x24000u, 0, buf, 0x10u, 1u, gkQueryRecordCallback, v25);
      if (!v34)
      {
        goto LABEL_31;
      }

      v35 = v34;
      if (VRTraceGetErrorLogLevelForModule() < 7 || (v36 = VRTraceErrorLogLevelToCSTR(), v37 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT)))
      {
LABEL_30:
        sdRef = 0;
LABEL_31:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v38 = VRTraceErrorLogLevelToCSTR();
          v39 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *v45 = 136315906;
            v46 = v38;
            v47 = 2080;
            v48 = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
            v49 = 1024;
            v50 = 3997;
            v51 = 2080;
            *v52 = buf;
            _os_log_impl(&dword_24E50C000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => called DNSServiceQueryRecord() (fullname=[%s])", v45, 0x26u);
          }
        }

        [(GKPeerInternal *)v25 setTxtRecordService:sdRef];
        [(GKSessionInternal *)self lock];
        [(GKTable *)self->_peerInfoTable setObject:v25 forKey:v43];
        [(GKList *)self->_peersAvailable addID:v43];
        [(GKSessionInternal *)self unlock];
        [(GKSessionInternal *)self delegate];
        if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
        {
          v40 = objc_alloc(MEMORY[0x277CBEAC0]);
          -[GKSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_tellDelegate_peerDidBecomeAvailable_, [v40 initWithObjectsAndKeys:{-[GKAutoPeerIDTable objectForKey:](self->_peerIDTable, "objectForKey:", v43), @"peerID", 0}], 0);
        }

        goto LABEL_37;
      }

      *v45 = 136316418;
      v46 = v36;
      v47 = 2080;
      v48 = "[GKSessionInternal didFindService:fromIF:withError:moreComing:]";
      v49 = 1024;
      v50 = 3994;
      v51 = 2080;
      *v52 = buf;
      *&v52[8] = 1024;
      v53 = v43;
      v54 = 1024;
      v55 = v35;
      v31 = " [%s] %s:%d ** cannot query TXT record [%s]! no busy state updates for peer %u (error=%d)";
      v32 = v37;
      v33 = 50;
    }

    _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, v31, v45, v33);
    goto LABEL_30;
  }

LABEL_38:
  if (!coming)
  {
    [(GKSessionInternal *)self cleanupExAvailablePeers];
  }
}

- (void)didRemoveService:(const char *)service fromIF:(const char *)f withError:(int)error moreComing:(BOOL)coming
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v29 = -1431655766;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if (![(GKSessionInternal *)self parseServiceName:service intoDisplayName:&v30 pid:&v29 state:&v28])
  {
LABEL_27:
    if (!coming)
    {
      [(GKSessionInternal *)self cleanupExAvailablePeers];
    }

    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v29;
      v14 = [(GKList *)self->_peersForCleanup hasID:v29];
      *buf = 136316162;
      v32 = v11;
      v33 = 2080;
      v34 = "[GKSessionInternal didRemoveService:fromIF:withError:moreComing:]";
      v35 = 1024;
      v36 = 4025;
      v37 = 1024;
      *v38 = v13;
      *&v38[4] = 1024;
      *&v38[6] = v14;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _peersForCleanup: contains %d ?= %d", buf, 0x28u);
    }
  }

  [(GKList *)self->_peersForCleanup removeID:v29];
  if ([(GKSessionInternal *)self filterService:f withPID:v29])
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136316418;
    v32 = v15;
    v33 = 2080;
    v34 = "[GKSessionInternal didRemoveService:fromIF:withError:moreComing:]";
    v35 = 1024;
    v36 = 4029;
    v37 = 2080;
    *v38 = service;
    *&v38[8] = 2080;
    fCopy = f;
    v40 = 1024;
    errorCopy = error;
    v17 = " [%s] %s:%d browse rejected: [%s] from [%s] (%d)";
    v18 = v16;
    v19 = 54;
LABEL_9:
    _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_15:

    return;
  }

  if (self->_mode == 2 && v29 == self->_pid)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315650;
    v32 = v20;
    v33 = 2080;
    v34 = "[GKSessionInternal didRemoveService:fromIF:withError:moreComing:]";
    v35 = 1024;
    v36 = 4035;
    v17 = " [%s] %s:%d didRemove: skipping self";
    v18 = v21;
    v19 = 28;
    goto LABEL_9;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v29;
      v25 = [(GKList *)self->_peersConnected hasID:v29];
      *buf = 136316162;
      v32 = v22;
      v33 = 2080;
      v34 = "[GKSessionInternal didRemoveService:fromIF:withError:moreComing:]";
      v35 = 1024;
      v36 = 4041;
      v37 = 1024;
      *v38 = v24;
      *&v38[4] = 1024;
      *&v38[6] = v25;
      _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Peer [%d] removed? (%d).\n", buf, 0x28u);
    }
  }

  v26 = [(GKTable *)self->_peerInfoTable objectForKey:v29];
  [v26 setServiceCount:{objc_msgSend(v26, "serviceCount") - 1}];
  if ([v26 serviceCount] <= 0)
  {
    [(GKList *)self->_peersAvailable removeID:v29];
    if (v26 && ![(GKList *)self->_peersConnected hasID:v29]&& ![(GKList *)self->_peersPendingOutgoingInvitation hasID:v29])
    {
      [(GKTable *)self->_peerInfoTable removeObjectForKey:v29];
    }

    [(GKSessionInternal *)self delegate];
    if (objc_opt_respondsToSelector() & 1) != 0 || ([(GKSessionInternal *)self privateDelegate], (objc_opt_respondsToSelector()))
    {
      v27 = objc_alloc(MEMORY[0x277CBEAC0]);
      -[GKSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_tellDelegate_peerDidBecomeUnavailable_, [v27 initWithObjectsAndKeys:{-[GKAutoPeerIDTable objectForKey:](self->_peerIDTable, "objectForKey:", v29), @"peerID", 0}], 0);
    }

    goto LABEL_27;
  }
}

- (void)browse
{
  v38 = *MEMORY[0x277D85DE8];
  [(GKSessionInternal *)self lock];
  if (self->_shutdown)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = v3;
        v32 = 2080;
        v33 = "[GKSessionInternal browse]";
        v34 = 1024;
        v35 = 4124;
        v5 = " [%s] %s:%d cannot browse after reset";
LABEL_9:
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x1Cu);
      }
    }
  }

  else if ([(GKSessionInternal *)self checkDNSConnection])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = v6;
        v32 = 2080;
        v33 = "[GKSessionInternal browse]";
        v34 = 1024;
        v35 = 4131;
        v5 = " [%s] %s:%d dns connection not initialized";
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (self->_serviceBrowser)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          serviceBrowser = self->_serviceBrowser;
          *buf = 136315906;
          v31 = v7;
          v32 = 2080;
          v33 = "[GKSessionInternal browse]";
          v34 = 1024;
          v35 = 4137;
          v36 = 1024;
          LODWORD(v37) = serviceBrowser;
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_serviceBrowser) (%08X) -- was already browsing?  closing old service...", buf, 0x22u);
        }
      }

      DNSServiceRefDeallocate(self->_serviceBrowser);
      [(GKList *)self->_peersForCleanup addIDsFromList:self->_peersAvailable];
      [(GKList *)self->_peersAvailable removeAllIDs];
    }

    self->_serviceBrowser = self->_dnsServiceConnection;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [(NSString *)self->serviceType UTF8String];
        *buf = 136315906;
        v31 = v10;
        v32 = 2080;
        v33 = "[GKSessionInternal browse]";
        v34 = 1024;
        v35 = 4146;
        v36 = 2080;
        v37 = uTF8String;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceBrowse() (servicetype=%s)", buf, 0x26u);
      }
    }

    v13 = DNSServiceBrowse(&self->_serviceBrowser, 0x24800u, 0, [(NSString *)self->serviceType UTF8String], "local.", gkBrowseCallback, self);
    if (v13)
    {
      v14 = v13;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v31 = v15;
          v32 = 2080;
          v33 = "[GKSessionInternal browse]";
          v34 = 1024;
          v35 = 4153;
          v36 = 1024;
          LODWORD(v37) = v14;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d browse failed: %d", buf, 0x22u);
        }
      }

      self->_serviceBrowser = 0;
      if (self->_mode == 2 && self->_service)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            service = self->_service;
            *buf = 136315906;
            v31 = v17;
            v32 = 2080;
            v33 = "[GKSessionInternal browse]";
            v34 = 1024;
            v35 = 4157;
            v36 = 1024;
            LODWORD(v37) = service;
            _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d => calling DNSServiceRefDeallocate(_service) (%08X)", buf, 0x22u);
          }
        }

        DNSServiceRefDeallocate(self->_service);
        self->_service = 0;
      }

      if (self->_sessionStarted)
      {
        v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.gamekit.GKSessionErrorDomain" code:v14 userInfo:0];
        v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v20, @"NSError", 0}];
        [(GKSessionInternal *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [(GKSessionInternal *)self performSelectorOnMainThread:sel_tellDelegate_sessionDidFailWithError_ withObject:v21 waitUntilDone:0];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            localizedDescription = [v20 localizedDescription];
            *buf = 136315906;
            v31 = v22;
            v32 = 2080;
            v33 = "[GKSessionInternal browse]";
            v34 = 1024;
            v35 = 4167;
            v36 = 2112;
            v37 = localizedDescription;
            _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Error: %@.", buf, 0x26u);
          }
        }

        self->_sessionStarted = 0;
        self->_stopHandlingEvents = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v31 = v25;
            v32 = 2080;
            v33 = "[GKSessionInternal browse]";
            v34 = 1024;
            v35 = 4175;
            _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** Stop resolving ALL: browse error", buf, 0x1Cu);
          }
        }

        [(GKSessionInternal *)self stopResolvingAllPeers];
      }
    }

    else if (!self->_handleEventsRunning)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(GKSessionInternal *)self retainCount];
          *buf = 136315906;
          v31 = v27;
          v32 = 2080;
          v33 = "[GKSessionInternal browse]";
          v34 = 1024;
          v35 = 4183;
          v36 = 1024;
          LODWORD(v37) = v29;
          _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start handleEvents (%d)", buf, 0x22u);
        }
      }

      [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_handleEvents toTarget:self withObject:0];
      *&self->_handleEventsRunning = 1;
    }
  }

  [(GKSessionInternal *)self unlock];
}

- (BOOL)tryConnectToPeer:(id)peer
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = -1431655766;
  memset(v19, 170, sizeof(v19));
  if ([peer usableAddrs])
  {
    [peer removeAndReturnLookupList:&v19[2] andAddrList:&v19[1] andInterfaceList:v19 count:&v20];
    if (v20)
    {
      v5 = malloc_type_malloc(8 * v20, 0x2004093837F09uLL);
      if (v20 < 1)
      {
        v7 = 0;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        do
        {
          DNSServiceRefDeallocate(*(v19[2] + 8 * v6));
          v8 = v19[1];
          if (*(v19[1] + 8 * v6))
          {
            *(v19[0] + 4 * v7) = *(v19[0] + 4 * v6);
            v5[v7++] = [*(v8 + 8 * v6) bytes];
          }

          ++v6;
        }

        while (v6 < v20);
      }

      sessionRef = self->sessionRef;
      v15 = [peer pid];
      v16 = v19[0];
      [peer connectTimeout];
      GCKSessionConnectToLocalService(sessionRef, v15, v5, v7, v16, v17);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v12;
        v23 = 2080;
        v24 = "[GKSessionInternal tryConnectToPeer:]";
        v25 = 1024;
        v26 = 4209;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d no usable addresses - wait for more", buf, 0x1Cu);
      }
    }

    [GKPeerInternal freeLookupList:v19[2] andAddrList:v19[1] andInterfaceList:v19[0] count:v20];
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
LABEL_16:
    LOBYTE(v11) = 0;
    return v11;
  }

  v9 = VRTraceErrorLogLevelToCSTR();
  v10 = *MEMORY[0x277CE5818];
  v11 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    *buf = 136315650;
    v22 = v9;
    v23 = 2080;
    v24 = "[GKSessionInternal tryConnectToPeer:]";
    v25 = 1024;
    v26 = 4201;
    _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d no usable addresses - wait for more", buf, 0x1Cu);
    goto LABEL_16;
  }

  return v11;
}

- (void)didLookupHostname:(_DNSServiceRef_t *)hostname forPeer:(id)peer hostName:(const char *)name address:(const sockaddr_in *)address interface:(unsigned int)interface withError:(int)error moreComing:(BOOL)coming
{
  v10 = *&interface;
  v44 = *MEMORY[0x277D85DE8];
  s_addr = address->sin_addr.s_addr;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v18 = bswap32(s_addr);
      *buf = 136317698;
      v25 = v16;
      v26 = 2080;
      v27 = "[GKSessionInternal didLookupHostname:forPeer:hostName:address:interface:withError:moreComing:]";
      v28 = 1024;
      v29 = 4275;
      v30 = 1024;
      *v31 = hostname;
      *&v31[4] = 2080;
      *&v31[6] = name;
      v32 = 1024;
      v33 = HIBYTE(v18);
      v34 = 1024;
      v35 = BYTE2(v18);
      v36 = 1024;
      v37 = BYTE1(v18);
      v38 = 1024;
      v39 = v18;
      v40 = 1024;
      errorCopy = error;
      v42 = 1024;
      comingCopy = coming;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** %08x ** host[%s] lookup: %u.%u.%u.%u (%d) (more? %d)", buf, 0x50u);
    }
  }

  if (!error)
  {
    peerCopy = peer;
    if ([peer containsLookupService:hostname])
    {
      [peer setAddr:address interface:v10 forLookupService:hostname];
      if (!coming)
      {
        if ([(GKSessionInternal *)self tryConnectToPeer:peer])
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (peerCopy)
              {
                displayName = [peerCopy displayName];
              }

              else
              {
                displayName = 0;
              }

              *buf = 136315906;
              v25 = v20;
              v26 = 2080;
              v27 = "[GKSessionInternal didLookupHostname:forPeer:hostName:address:interface:withError:moreComing:]";
              v28 = 1024;
              v29 = 4300;
              v30 = 2112;
              *v31 = displayName;
              _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stop resolving: %@ invitation started from getaddrinfo callback", buf, 0x26u);
            }
          }

          [peerCopy stopResolving];
        }
      }
    }
  }
}

- (void)didResolveService:(_DNSServiceRef_t *)service forPeer:(id)peer hostName:(const char *)name port:(unsigned __int16)port interface:(unsigned int)interface txtLen:(unsigned __int16)len txtRecord:(const void *)record withError:(int)self0 moreComing:(BOOL)self1
{
  lenCopy = len;
  portCopy = port;
  v62 = *MEMORY[0x277D85DE8];
  memset(v61, 170, sizeof(v61));
  if (!if_indextoname(interface, v61))
  {
    v61[0] = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v50 = v17;
      v51 = 2080;
      v52 = "[GKSessionInternal didResolveService:forPeer:hostName:port:interface:txtLen:txtRecord:withError:moreComing:]";
      v53 = 1024;
      v54 = 4340;
      v55 = 1024;
      *v56 = service;
      *&v56[4] = 1024;
      *&v56[6] = interface;
      v57 = 2080;
      v58 = v61;
      v59 = 1024;
      comingCopy = coming;
      _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d didResolveService: %x from %d [%s] (more? %d)", buf, 0x38u);
    }
  }

  if (error)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315906;
    v50 = v19;
    v51 = 2080;
    v52 = "[GKSessionInternal didResolveService:forPeer:hostName:port:interface:txtLen:txtRecord:withError:moreComing:]";
    v53 = 1024;
    v54 = 4344;
    v55 = 1024;
    *v56 = error;
    v21 = " [%s] %s:%d Bonjour resolve error: %d";
    v22 = v20;
    v23 = 34;
    goto LABEL_14;
  }

  if (!-[GKSessionInternal filterService:withPID:](self, "filterService:withPID:", v61, [peer pid]))
  {
    v26 = 1;
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v50 = v24;
      v51 = 2080;
      v52 = "[GKSessionInternal didResolveService:forPeer:hostName:port:interface:txtLen:txtRecord:withError:moreComing:]";
      v53 = 1024;
      v54 = 4347;
      v55 = 2080;
      *v56 = v61;
      v21 = " [%s] %s:%d resolved to [%s] - skipping";
      v22 = v25;
      v23 = 38;
LABEL_14:
      _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }
  }

LABEL_15:
  v26 = 0;
LABEL_16:
  [(GKSessionInternal *)self processTXTRecordForPeer:peer txtLen:lenCopy txtRecord:record];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v29 = [peer pid];
      resolveService = [peer resolveService];
      *buf = 136316418;
      v50 = v27;
      v51 = 2080;
      v52 = "[GKSessionInternal didResolveService:forPeer:hostName:port:interface:txtLen:txtRecord:withError:moreComing:]";
      v53 = 1024;
      v54 = 4355;
      v55 = 1024;
      *v56 = v29;
      *&v56[4] = 1024;
      *&v56[6] = resolveService;
      v57 = 1024;
      LODWORD(v58) = service;
      _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d resolve check peer %d service %08x == %08x?", buf, 0x2Eu);
    }
  }

  if ([peer resolveService] == service)
  {
    [peer setServicePort:portCopy];
    if (v26)
    {
      if ([(GKSessionInternal *)self checkDNSConnection])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v31 = VRTraceErrorLogLevelToCSTR();
          v32 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v50 = v31;
            v51 = 2080;
            v52 = "[GKSessionInternal didResolveService:forPeer:hostName:port:interface:txtLen:txtRecord:withError:moreComing:]";
            v53 = 1024;
            v54 = 4380;
            v33 = " [%s] %s:%d Lookup: Unable to use DNS connection!";
            v34 = v32;
            v35 = 28;
LABEL_33:
            _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
          }
        }
      }

      else
      {
        sdRef = self->_dnsServiceResolveConnection;
        AddrInfo = DNSServiceGetAddrInfo(&sdRef, 0x24000u, interface, 1u, name, hostnameLookupCallback, peer);
        if (AddrInfo)
        {
          v37 = AddrInfo;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v38 = VRTraceErrorLogLevelToCSTR();
            v39 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v50 = v38;
              v51 = 2080;
              v52 = "[GKSessionInternal didResolveService:forPeer:hostName:port:interface:txtLen:txtRecord:withError:moreComing:]";
              v53 = 1024;
              v54 = 4377;
              v55 = 1024;
              *v56 = v37;
              v33 = " [%s] %s:%d hostname lookup failed (%d)";
              v34 = v39;
              v35 = 34;
              goto LABEL_33;
            }
          }
        }

        else
        {
          [peer addLookup:sdRef];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v40 = VRTraceErrorLogLevelToCSTR();
            v41 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v42 = sdRef;
              resolveService2 = [peer resolveService];
              *buf = 136316162;
              v50 = v40;
              v51 = 2080;
              v52 = "[GKSessionInternal didResolveService:forPeer:hostName:port:interface:txtLen:txtRecord:withError:moreComing:]";
              v53 = 1024;
              v54 = 4375;
              v55 = 1024;
              *v56 = v42;
              *&v56[4] = 1024;
              *&v56[6] = resolveService2;
              v33 = " [%s] %s:%d hostname lookup service %08X shares from %08X";
              v34 = v41;
              v35 = 40;
              goto LABEL_33;
            }
          }
        }
      }
    }

    if (!coming && [(GKSessionInternal *)self tryConnectToPeer:peer])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v44 = VRTraceErrorLogLevelToCSTR();
        v45 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          if (peer)
          {
            displayName = [peer displayName];
          }

          else
          {
            displayName = 0;
          }

          *buf = 136315906;
          v50 = v44;
          v51 = 2080;
          v52 = "[GKSessionInternal didResolveService:forPeer:hostName:port:interface:txtLen:txtRecord:withError:moreComing:]";
          v53 = 1024;
          v54 = 4386;
          v55 = 2112;
          *v56 = displayName;
          _os_log_impl(&dword_24E50C000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stop resolving: %@ invitation started from resolve callback", buf, 0x26u);
        }
      }

      [peer stopResolving];
    }
  }
}

- (void)initWithConnection:session:delegate:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in GCKSessionCreate. *", v2, v3, v4, v5);
}

- (void)initWithConnection:session:delegate:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in AGPSessionCreate. *", v2, v3, v4, v5);
}

- (void)initWithConnection:session:delegate:.cold.3()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in GCKSessionSetEventCallback. *", v2, v3, v4, v5);
}

- (void)initWithSessionID:displayName:session:sessionMode:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in GCKSessionCreate.", v2, v3, v4, v5);
}

- (void)initWithSessionID:displayName:session:sessionMode:.cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Error in AGPSessionCreate.", v2, v3, v4, v5);
}

- (void)displayNameForPeer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v4 = v0;
  OUTLINED_FUNCTION_5_0();
  v5 = 2737;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&dword_24E50C000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d displayNameForPeer: %@ not found", v3, 0x26u);
}

- (void)cancelConnectToPeer:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot cancel after reset", v2, v3, v4, v5);
}

- (void)acceptConnectionFromPeer:error:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot accept after reset", v2, v3, v4, v5);
}

- (void)denyConnectionFromPeer:.cold.1()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d cannot deny after reset", v2, v3, v4, v5);
}

@end