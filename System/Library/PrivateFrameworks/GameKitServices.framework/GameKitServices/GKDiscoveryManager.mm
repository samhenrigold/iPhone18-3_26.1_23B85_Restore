@interface GKDiscoveryManager
+ (id)parseDeviceIDFromServiceName:(id)name;
- (GKDiscoveryManager)initWithDomain:(id)domain type:(id)type;
- (id)generateDeviceID;
- (id)peersList;
- (id)serviceNameforDeviceID:(id)d playerID:(id)iD;
- (id)startAdvertisingLocalPlayer:(id)player discoveryInfo:(id)info;
- (void)addInterface:(unsigned int)interface withDiscoveryInfo:(id)info forPeerWithServiceName:(id)name;
- (void)cleanUpPeersForBrowse;
- (void)connectToSockAddr:(sockaddr *)addr port:(unsigned __int16)port forPeer:(id)peer;
- (void)dealloc;
- (void)didLosePeer:(id)peer;
- (void)forgetParticipant:(id)participant deviceID:(id)d;
- (void)passDataToGKLayer:(id)layer fromPeer:(id)peer;
- (void)processEvent:(int)event forPeer:(id)peer withUserInfo:(id)info;
- (void)removeInterface:(unsigned int)interface forPeerWithServiceName:(id)name;
- (void)resolveForPeer:(id)peer;
- (void)sendDataToParticipant:(id)participant deviceID:(id)d data:(id)data withCompletionHandler:(id)handler;
- (void)startBrowsingLocalPlayer:(id)player;
- (void)stopAdvertising;
- (void)stopBrowsing;
@end

@implementation GKDiscoveryManager

- (GKDiscoveryManager)initWithDomain:(id)domain type:(id)type
{
  v8.receiver = self;
  v8.super_class = GKDiscoveryManager;
  v6 = [(GKDiscoveryManager *)&v8 init];
  if (v6)
  {
    v6->_bonjour = [[GKDiscoveryBonjour alloc] initWithDomain:domain type:type];
    v6->_peers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->_peersQueue = dispatch_queue_create("com.apple.gamed.GKDiscoveryManager.peersQueue", 0);
    v6->_deviceID = [(GKDiscoveryManager *)v6 generateDeviceID];
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->_peersQueue);
  v3.receiver = self;
  v3.super_class = GKDiscoveryManager;
  [(GKDiscoveryManager *)&v3 dealloc];
}

- (id)generateDeviceID
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v4 = CFUUIDCreateString(v2, v3);
  CFRelease(v3);
  memset(md, 170, sizeof(md));
  CC_MD5([(__CFString *)v4 UTF8String], [(__CFString *)v4 length], md);

  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:16];
  for (i = 0; i != 8; ++i)
  {
    [v5 appendFormat:@"%02X", md[i]];
  }

  return v5;
}

- (void)resolveForPeer:(id)peer
{
  v23 = *MEMORY[0x277D85DE8];
  nextInterfaceIndex = [peer nextInterfaceIndex];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (nextInterfaceIndex)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([peer serviceName])
        {
          v9 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
        }

        else
        {
          v9 = "<nil>";
        }

        *buf = 136316162;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = "[GKDiscoveryManager resolveForPeer:]";
        *&buf[22] = 1024;
        LODWORD(v21) = 163;
        WORD2(v21) = 2080;
        *(&v21 + 6) = v9;
        HIWORD(v21) = 1024;
        LODWORD(peerCopy) = [nextInterfaceIndex intValue];
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] attempting to resolve on interface [%d]", buf, 0x2Cu);
      }
    }

    [peer setChosenInterface:nextInterfaceIndex];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    *&v21 = __Block_byref_object_copy_;
    *(&v21 + 1) = __Block_byref_object_dispose_;
    peerCopy = peer;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke;
    v19[3] = &unk_2796830B0;
    v19[4] = self;
    v19[5] = buf;
    [peer startResolveTimerWithHandler:v19];
    bonjour = self->_bonjour;
    serviceName = [peer serviceName];
    intValue = [nextInterfaceIndex intValue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_3;
    v18[3] = &unk_2796830D8;
    v18[4] = peer;
    v18[5] = self;
    v18[6] = nextInterfaceIndex;
    [(GKDiscoveryBonjour *)bonjour resolveName:serviceName onIndex:intValue withCompletionHandler:v18];
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([peer serviceName])
        {
          v12 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
        }

        else
        {
          v12 = "<nil>";
        }

        *buf = 136315906;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "[GKDiscoveryManager resolveForPeer:]";
        *&buf[22] = 1024;
        LODWORD(v21) = 227;
        WORD2(v21) = 2080;
        *(&v21 + 6) = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] no more interfaces available to resolve on", buf, 0x26u);
      }
    }

    peersQueue = self->_peersQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_26;
    block[3] = &unk_279682BF0;
    block[4] = self;
    block[5] = peer;
    dispatch_async(peersQueue, block);
  }
}

uint64_t __37__GKDiscoveryManager_resolveForPeer___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_2;
  v3[3] = &unk_2796830B0;
  v4 = *(a1 + 32);
  dispatch_async(*(v4 + 64), v3);
  return [*(*(a1 + 32) + 56) stopResolve:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "serviceName")}];
}

void __37__GKDiscoveryManager_resolveForPeer___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v45 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) stopResolveTimer];
  [*(*(a1 + 40) + 56) stopResolve:{objc_msgSend(*(a1 + 32), "serviceName")}];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a5)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        if ([*(a1 + 32) serviceName])
        {
          v27 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "serviceName"))];
        }

        else
        {
          v27 = "<nil>";
        }

        *buf = 136316162;
        v34 = v11;
        v35 = 2080;
        v36 = "[GKDiscoveryManager resolveForPeer:]_block_invoke_3";
        v37 = 1024;
        v38 = 190;
        v39 = 2080;
        v40 = v27;
        v41 = 1024;
        v42 = a5;
        _os_log_error_impl(&dword_24E50C000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d peer [%s] resolve callback errorCode = %d.", buf, 0x2Cu);
      }
    }

    v13 = *(a1 + 40);
    v14 = *(v13 + 64);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_13;
    v30[3] = &unk_279682BF0;
    v15 = *(a1 + 32);
    v30[4] = v13;
    v30[5] = v15;
    v16 = v30;
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 32) serviceName])
        {
          v19 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "serviceName"))];
        }

        else
        {
          v19 = "<nil>";
        }

        v20 = [*(a1 + 48) intValue];
        *buf = 136316418;
        v34 = v17;
        v35 = 2080;
        v36 = "[GKDiscoveryManager resolveForPeer:]_block_invoke_2";
        v37 = 1024;
        v38 = 201;
        v39 = 2080;
        v40 = v19;
        v41 = 1024;
        v42 = v20;
        v43 = 1024;
        v44 = a2;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] resolved successfully on interface [%d] (interface returned [%d])", buf, 0x32u);
      }
    }

    [*(a1 + 32) setChosenInterface:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", a2)}];
    v21 = [MEMORY[0x277CBEA90] dataWithSockAddr:a3];
    if (v21)
    {
      v32[0] = v21;
      v31[0] = @"GKDiscoveryManagerUserInfoSocketAddressKey";
      v31[1] = @"GKDiscoveryManagerUserInfoPortKey";
      v32[1] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a4];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
      v23 = *(a1 + 40);
      v24 = *(v23 + 64);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_24;
      v28[3] = &unk_279682C18;
      v25 = *(a1 + 32);
      v28[4] = v23;
      v28[5] = v25;
      v28[6] = v22;
      v16 = v28;
      v14 = v24;
    }

    else
    {
      v26 = *(a1 + 40);
      v14 = *(v26 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__GKDiscoveryManager_resolveForPeer___block_invoke_16;
      block[3] = &unk_279682BF0;
      block[4] = *(a1 + 32);
      block[5] = v26;
      v16 = block;
    }
  }

  dispatch_async(v14, v16);
}

uint64_t __37__GKDiscoveryManager_resolveForPeer___block_invoke_16(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __37__GKDiscoveryManager_resolveForPeer___block_invoke_16_cold_1();
    }
  }

  return [*(a1 + 40) processEvent:1002 forPeer:*(a1 + 32) withUserInfo:0];
}

void __37__GKDiscoveryManager_resolveForPeer___block_invoke_26(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 48) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "deviceID")}])
  {
    if ([objc_msgSend(*(a1 + 40) "interfaces")])
    {
      if ([*(a1 + 40) state] != 3)
      {
        [*(a1 + 32) processEvent:1006 forPeer:*(a1 + 40) withUserInfo:0];
        v2 = *(a1 + 40);

        [v2 flushDataBuffer];
      }
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      [v6 didLosePeer:v7];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 40) serviceName])
      {
        v5 = [objc_msgSend_description(objc_msgSend(*(a1 + 40) "serviceName"))];
      }

      else
      {
        v5 = "<nil>";
      }

      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[GKDiscoveryManager resolveForPeer:]_block_invoke";
      v12 = 1024;
      v13 = 232;
      v14 = 2080;
      v15 = v5;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] not in dictionary anymore.", &v8, 0x26u);
    }
  }
}

- (void)connectToSockAddr:(sockaddr *)addr port:(unsigned __int16)port forPeer:(id)peer
{
  portCopy = port;
  v30 = *MEMORY[0x277D85DE8];
  v9 = [[GKDiscoveryPeerConnection alloc] initWithLocalServiceName:[(GKDiscoveryManager *)self localServiceName]];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke;
  v19[3] = &unk_279683128;
  v19[4] = peer;
  v19[5] = self;
  v19[6] = v9;
  [(GKDiscoveryPeerConnection *)v9 setConnectedHandler:v19];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v11 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      if ([peer serviceName])
      {
        v14 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
      }

      else
      {
        v14 = "<nil>";
      }

      *buf = 136315906;
      v21 = v12;
      v22 = 2080;
      v23 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]";
      v24 = 1024;
      v25 = 362;
      v26 = 2080;
      v27 = v14;
      _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] attempting to connect", buf, 0x26u);
    }
  }

  [(GKDiscoveryPeerConnection *)v9 connectToSockAddr:addr port:portCopy];
  [peer setTrialConnection:v9];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      if ([peer serviceName])
      {
        v17 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
      }

      else
      {
        v17 = "<nil>";
      }

      v18 = [(GKDiscoveryPeerConnection *)v9 retainCount];
      *buf = 136316162;
      v21 = v15;
      v22 = 2080;
      v23 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]";
      v24 = 1024;
      v25 = 366;
      v26 = 2080;
      v27 = v17;
      v28 = 1024;
      v29 = v18;
      _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] peerConnection retain count [%d]", buf, 0x2Cu);
    }
  }
}

void __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v58 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v12 = [objc_msgSend_description(a2) UTF8String];
      }

      else
      {
        v12 = "<nil>";
      }

      *buf = 136315906;
      v47 = v10;
      v48 = 2080;
      v49 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
      v50 = 1024;
      v51 = 255;
      v52 = 2080;
      v53 = v12;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerConnection connectedHandler (browser side), remote serviceName [%s]", buf, 0x26u);
    }
  }

  v13 = [a4 copy];
  if (a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        if ([*(a1 + 32) serviceName])
        {
          v25 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "serviceName"))];
        }

        else
        {
          v25 = "<nil>";
        }

        if ([a5 localizedDescription])
        {
          v26 = [objc_msgSend_description(objc_msgSend(a5 "localizedDescription"))];
        }

        else
        {
          v26 = "<nil>";
        }

        *buf = 136316162;
        v47 = v14;
        v48 = 2080;
        v49 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v50 = 1024;
        v51 = 261;
        v52 = 2080;
        v53 = v25;
        v54 = 2080;
        v55 = v26;
        _os_log_error_impl(&dword_24E50C000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d peer [%s] error in connectedHandler [%s]", buf, 0x30u);
      }
    }

    v16 = *(a1 + 40);
    v17 = *(v16 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_28;
    block[3] = &unk_279682BF0;
    block[4] = *(a1 + 32);
    block[5] = v16;
    dispatch_async(v17, block);
LABEL_11:
    if (v13)
    {
      v13[2](v13, 0);
    }

    return;
  }

  v18 = (a1 + 32);
  if (([+[GKDiscoveryManager parseDeviceIDFromServiceName:](GKDiscoveryManager parseDeviceIDFromServiceName:{a2), "isEqualToString:", objc_msgSend(*(a1 + 32), "deviceID")}] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_cold_1();
      }
    }

    goto LABEL_11;
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_31;
  v43[3] = &unk_279682EE0;
  v44 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  if (a3)
  {
    [*(a1 + 48) setReceiveDataHandler:v43];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*v18 serviceName])
        {
          v21 = [objc_msgSend_description(objc_msgSend(*v18 "serviceName"))];
        }

        else
        {
          v21 = "<nil>";
        }

        v27 = *(a1 + 48);
        if ([*(a1 + 32) stringForState:{objc_msgSend(*(a1 + 32), "state")}])
        {
          v28 = [objc_msgSend_description(objc_msgSend(*v18 stringForState:{objc_msgSend(*v18, "state"))), "UTF8String"}];
        }

        else
        {
          v28 = "<nil>";
        }

        *buf = 136316418;
        v47 = v19;
        v48 = 2080;
        v49 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v50 = 1024;
        v51 = 321;
        v52 = 2080;
        v53 = v21;
        v54 = 2048;
        v55 = v27;
        v56 = 2080;
        v57 = v28;
        _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectionHandler [%s] (browser side) shouldForceConnect == YES; peer.connection [%p] state [%s]", buf, 0x3Au);
      }
    }

    v32 = *(a1 + 40);
    v31 = *(a1 + 48);
    v33 = *(v32 + 64);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_34;
    v42[3] = &unk_279682C18;
    v34 = *(a1 + 32);
    v42[4] = v32;
    v42[5] = v34;
    v42[6] = v31;
    dispatch_async(v33, v42);
    if (v13)
    {
      v13[2](v13, 1);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*v18 serviceName])
        {
          v24 = [objc_msgSend_description(objc_msgSend(*v18 "serviceName"))];
        }

        else
        {
          v24 = "<nil>";
        }

        v29 = *(a1 + 48);
        if ([*(a1 + 32) stringForState:{objc_msgSend(*(a1 + 32), "state")}])
        {
          v30 = [objc_msgSend_description(objc_msgSend(*v18 stringForState:{objc_msgSend(*v18, "state"))), "UTF8String"}];
        }

        else
        {
          v30 = "<nil>";
        }

        *buf = 136316418;
        v47 = v22;
        v48 = 2080;
        v49 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke_2";
        v50 = 1024;
        v51 = 333;
        v52 = 2080;
        v53 = v24;
        v54 = 2048;
        v55 = v29;
        v56 = 2080;
        v57 = v30;
        _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectionHandler [%s] (browser side) shouldForceConnect == NO; peer.connection [%p] state [%s]", buf, 0x3Au);
      }
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v35 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v36 = *(a1 + 40);
    v38[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_38;
    v38[3] = &unk_279683100;
    v38[4] = *(a1 + 32);
    v37 = *(v36 + 64);
    v39 = v35;
    v40 = v43;
    v41 = v13;
    dispatch_async(v37, v38);
  }
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_28(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "trialConnection")];
  [*(a1 + 32) setTrialConnection:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 processEvent:1004 forPeer:v3 withUserInfo:0];
}

void __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_31(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_2;
    block[3] = &unk_279682C18;
    block[4] = *(a1 + 40);
    block[5] = a3;
    block[6] = v4;
    dispatch_async(v5, block);
  }

  else
  {
    if (!a2)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v7 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v8 = *(a1 + 32);
      v14[2] = __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_32;
      v14[3] = &unk_279682BF0;
      v9 = *(v8 + 64);
      v15 = v7;
      dispatch_async(v9, v14);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 40) serviceName])
        {
          v12 = [objc_msgSend_description(objc_msgSend(*(a1 + 40) "serviceName"))];
        }

        else
        {
          v12 = "<nil>";
        }

        v13 = [a2 length];
        *buf = 136316162;
        v18 = v10;
        v19 = 2080;
        v20 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v21 = 1024;
        v22 = 312;
        v23 = 2080;
        v24 = v12;
        v25 = 1024;
        v26 = v13;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] passing data (length=%u) to GK", buf, 0x2Cu);
      }
    }

    [*(a1 + 32) passDataToGKLayer:a2 fromPeer:*(a1 + 40)];
  }
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_2(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_2_cold_1(v2, a1);
    }
  }

  return [*(a1 + 48) processEvent:1006 forPeer:*(a1 + 32) withUserInfo:0];
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_32(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) serviceName])
      {
        v4 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "serviceName"))];
      }

      else
      {
        v4 = "<nil>";
      }

      v8 = 136315906;
      v9 = v2;
      v10 = 2080;
      v11 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
      v12 = 1024;
      v13 = 302;
      v14 = 2080;
      v15 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] connection closed. Setting peer.connection to nil", &v8, 0x26u);
    }
  }

  v5 = [objc_msgSend(*(a1 + 32) "interfaces")];
  v6 = *(a1 + 40);
  if (v5)
  {
    return [v6 processEvent:1006 forPeer:*(a1 + 32) withUserInfo:0];
  }

  else
  {
    return [v6 didLosePeer:*(a1 + 32)];
  }
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_34(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v5 = @"GKDiscoveryManagerUserInfoConnectionKey";
  v6[0] = v3;
  return [v1 processEvent:1005 forPeer:v2 withUserInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}];
}

uint64_t __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_38(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  if (v2 == 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 32) serviceName])
        {
          v9 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "serviceName"))];
        }

        else
        {
          v9 = "<nil>";
        }

        v15 = 136315906;
        v16 = v8;
        v17 = 2080;
        v18 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v19 = 1024;
        v20 = 350;
        v21 = 2080;
        v22 = v9;
        v10 = " [%s] %s:%d peer [%s] (browser side) decision == NO.";
        goto LABEL_14;
      }
    }
  }

  else
  {
    [*(a1 + 40) setReceiveDataHandler:*(a1 + 56)];
    v25 = @"GKDiscoveryManagerUserInfoConnectionKey";
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v26[0] = *(a1 + 40);
    [v4 processEvent:1005 forPeer:v3 withUserInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v26, &v25, 1)}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 32) serviceName])
        {
          v7 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "serviceName"))];
        }

        else
        {
          v7 = "<nil>";
        }

        v15 = 136315906;
        v16 = v5;
        v17 = 2080;
        v18 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
        v19 = 1024;
        v20 = 347;
        v21 = 2080;
        v22 = v7;
        v10 = " [%s] %s:%d peer [%s] (browser side) connected successfully.";
LABEL_14:
        _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, v10, &v15, 0x26u);
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) serviceName])
      {
        v13 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "serviceName"))];
      }

      else
      {
        v13 = "<nil>";
      }

      v15 = 136316162;
      v16 = v11;
      v17 = 2080;
      v18 = "[GKDiscoveryManager connectToSockAddr:port:forPeer:]_block_invoke";
      v19 = 1024;
      v20 = 352;
      v21 = 2080;
      v22 = v13;
      v23 = 1024;
      v24 = v2 != 3;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] (browser side) about to return decision == %d", &v15, 0x2Cu);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, v2 != 3);
  }

  return result;
}

- (void)processEvent:(int)event forPeer:(id)peer withUserInfo:(id)info
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_peers, "objectForKeyedSubscript:", [peer deviceID]);
  if (v9)
  {
    if (v9 != peer)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          if ([peer serviceName])
          {
            v13 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
          }

          else
          {
            v13 = "<nil>";
          }

          *buf = 136315906;
          v36 = v11;
          v37 = 2080;
          v38 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]";
          v39 = 1024;
          v40 = 381;
          v41 = 2080;
          v42 = v13;
          _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] zombie object - this should never happen!.", buf, 0x26u);
        }
      }

      [objc_msgSend(peer "sendDataBuffer")];
LABEL_32:
      [objc_msgSend(peer "connection")];
      [peer setConnection:0];
      peerCopy2 = peer;
      v21 = 0;
LABEL_33:
      [peerCopy2 setState:v21];
      return;
    }

    if (event <= 1002)
    {
      switch(event)
      {
        case 1000:
          v22 = micro(v9, v10);

          [peer setDiscoveryTimeStamp:v22];
          break;
        case 1001:
          v25 = micro(v9, v10);
          [peer discoveryTimeStamp];
          v27 = v26 - v25 + 3.0;
          if (v27 >= 0.0)
          {
            v28 = v27;
          }

          else
          {
            v28 = 0.0;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v29 = VRTraceErrorLogLevelToCSTR();
            v30 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if ([peer serviceName])
              {
                v31 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
              }

              else
              {
                v31 = "<nil>";
              }

              *buf = 136316162;
              v36 = v29;
              v37 = 2080;
              v38 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]";
              v39 = 1024;
              v40 = 404;
              v41 = 2080;
              v42 = v31;
              v43 = 2048;
              v44 = v28;
              _os_log_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] time to wait before resolve [%f]", buf, 0x30u);
            }
          }

          v32 = dispatch_time(0, (v28 * 1000000000.0));
          peersQueue = self->_peersQueue;
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __56__GKDiscoveryManager_processEvent_forPeer_withUserInfo___block_invoke;
          v34[3] = &unk_279682BF0;
          v34[4] = peer;
          v34[5] = self;
          dispatch_after(v32, peersQueue, v34);
          peerCopy2 = peer;
          v21 = 1;
          goto LABEL_33;
        case 1002:
          [peer stopResolveTimer];
          if ([peer state] != 3)
          {
            goto LABEL_20;
          }

          break;
      }
    }

    else if (event > 1004)
    {
      if (event != 1005)
      {
        if (event != 1006)
        {
          return;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            if ([peer serviceName])
            {
              v19 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
            }

            else
            {
              v19 = "<nil>";
            }

            *buf = 136316162;
            v36 = v17;
            v37 = 2080;
            v38 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]";
            v39 = 1024;
            v40 = 471;
            v41 = 2080;
            v42 = v19;
            v43 = 1024;
            LODWORD(v44) = [objc_msgSend(peer "connection")];
            _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] PeerDisconnected event! peerConnection retain count [%d]", buf, 0x2Cu);
          }
        }

        goto LABEL_32;
      }

      v23 = [info objectForKeyedSubscript:@"GKDiscoveryManagerUserInfoConnectionKey"];
      if (v23)
      {
        v24 = v23;
        [peer setConnection:v23];
        if ([peer trialConnection] != v24)
        {
          [objc_msgSend(peer "trialConnection")];
        }

        [peer setTrialConnection:0];
      }

      [peer setState:3];

      [peer flushDataBuffer];
    }

    else
    {
      if (event != 1003)
      {
        if ([peer state] == 3)
        {
          return;
        }

        [peer setState:1];
LABEL_20:

        [(GKDiscoveryManager *)self resolveForPeer:peer];
        return;
      }

      if ([peer state] == 1)
      {
        -[GKDiscoveryManager connectToSockAddr:port:forPeer:](self, "connectToSockAddr:port:forPeer:", [objc_msgSend(info objectForKeyedSubscript:{@"GKDiscoveryManagerUserInfoSocketAddressKey", "sockAddr"}], objc_msgSend(objc_msgSend(info, "objectForKeyedSubscript:", @"GKDiscoveryManagerUserInfoPortKey"), "unsignedIntValue"), peer);

        [peer setState:2];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([peer serviceName])
      {
        v16 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
      }

      else
      {
        v16 = "<nil>";
      }

      *buf = 136316162;
      v36 = v14;
      v37 = 2080;
      v38 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]";
      v39 = 1024;
      v40 = 375;
      v41 = 2080;
      v42 = v16;
      v43 = 1024;
      LODWORD(v44) = event;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] event [%d] not in dictionary anymore.", buf, 0x2Cu);
    }
  }
}

void __56__GKDiscoveryManager_processEvent_forPeer_withUserInfo___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) serviceName])
      {
        v4 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "serviceName"))];
      }

      else
      {
        v4 = "<nil>";
      }

      *buf = 136315906;
      v9 = v2;
      v10 = 2080;
      v11 = "[GKDiscoveryManager processEvent:forPeer:withUserInfo:]_block_invoke";
      v12 = 1024;
      v13 = 409;
      v14 = 2080;
      v15 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] ready to start interface selection", buf, 0x26u);
    }
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__GKDiscoveryManager_processEvent_forPeer_withUserInfo___block_invoke_40;
  v7[3] = &unk_279682BF0;
  v7[4] = *(a1 + 32);
  v7[5] = v5;
  dispatch_async(v6, v7);
}

uint64_t __56__GKDiscoveryManager_processEvent_forPeer_withUserInfo___block_invoke_40(uint64_t a1)
{
  [*(a1 + 32) setOrderedInterfaces:{objc_msgSend(MEMORY[0x277CBEB18], "arrayWithArray:", +[GKInterfacePrioritizer prioritizeLocalInterfaces:](GKInterfacePrioritizer, "prioritizeLocalInterfaces:", objc_msgSend(objc_msgSend(*(a1 + 32), "interfaces"), "allObjects")))}];
  [objc_msgSend(*(a1 + 32) "attemptedInterfaces")];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 resolveForPeer:v3];
}

- (void)passDataToGKLayer:(id)layer fromPeer:(id)peer
{
  peersQueue = self->_peersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__GKDiscoveryManager_passDataToGKLayer_fromPeer___block_invoke;
  block[3] = &unk_279682C18;
  block[4] = self;
  block[5] = peer;
  block[6] = layer;
  dispatch_async(peersQueue, block);
}

void __49__GKDiscoveryManager_passDataToGKLayer_fromPeer___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serviceNameforDeviceID:objc_msgSend(*(a1 + 40) playerID:{"deviceID"), objc_msgSend(*(a1 + 40), "playerID")}];
  if (![*(*(a1 + 32) + 48) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "deviceID")}])
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (v2)
    {
      v10 = [objc_msgSend_description(v2) UTF8String];
    }

    else
    {
      v10 = "<nil>";
    }

    v16 = 136315906;
    v17 = v8;
    v18 = 2080;
    v19 = "[GKDiscoveryManager passDataToGKLayer:fromPeer:]_block_invoke";
    v20 = 1024;
    v21 = 489;
    v22 = 2080;
    v23 = v10;
    v13 = " [%s] %s:%d received data from [%s], but peer not in dictionary anymore.";
    v14 = v9;
    v15 = 38;
LABEL_15:
    _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, v13, &v16, v15);
    return;
  }

  v3 = *(*(a1 + 32) + 24);
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 136315650;
    v17 = v11;
    v18 = 2080;
    v19 = "[GKDiscoveryManager passDataToGKLayer:fromPeer:]_block_invoke";
    v20 = 1024;
    v21 = 495;
    v13 = " [%s] %s:%d receiveDataHandler is not set, cannot pass data to the GameKit layer.";
    v14 = v12;
    v15 = 28;
    goto LABEL_15;
  }

  v4 = [*(a1 + 40) playerID];
  v5 = [*(a1 + 40) deviceID];
  v6 = *(a1 + 48);
  v7 = *(v3 + 16);

  v7(v3, v4, v5, v6);
}

- (id)startAdvertisingLocalPlayer:(id)player discoveryInfo:(id)info
{
  v34 = *MEMORY[0x277D85DE8];
  [(GKDiscoveryManager *)self setPlayerID:?];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v8 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      if (player)
      {
        uTF8String = [objc_msgSend_description(player) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      if ([(GKDiscoveryManager *)self localServiceName])
      {
        v12 = [objc_msgSend_description(-[GKDiscoveryManager localServiceName](self "localServiceName"))];
        if (info)
        {
LABEL_8:
          uTF8String2 = [objc_msgSend_description(info) UTF8String];
LABEL_11:
          *buf = 136316418;
          v23 = v9;
          v24 = 2080;
          v25 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]";
          v26 = 1024;
          v27 = 505;
          v28 = 2080;
          v29 = uTF8String;
          v30 = 2080;
          v31 = v12;
          v32 = 2080;
          v33 = uTF8String2;
          _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d I am [%s] [%s] discoveryInfo [%s]", buf, 0x3Au);
          goto LABEL_12;
        }
      }

      else
      {
        v12 = "<nil>";
        if (info)
        {
          goto LABEL_8;
        }
      }

      uTF8String2 = "<nil>";
      goto LABEL_11;
    }
  }

LABEL_12:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v16 = [objc_msgSend_description(-[GKDiscoveryManager peersList](self "peersList"))];
      }

      else
      {
        v16 = "<nil>";
      }

      *buf = 136315906;
      v23 = v14;
      v24 = 2080;
      v25 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]";
      v26 = 1024;
      v27 = 506;
      v28 = 2080;
      v29 = v16;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d startAdvertising peers=[%s]", buf, 0x26u);
    }
  }

  bonjour = self->_bonjour;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke;
  v21[3] = &unk_2796831A0;
  v21[4] = self;
  [(GKDiscoveryBonjour *)bonjour setConnectionCallback:v21];
  v18 = self->_bonjour;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_49;
  v20[3] = &unk_2796831C8;
  v20[4] = self;
  [(GKDiscoveryBonjour *)v18 setServiceNameCollisionCallback:v20];
  [(GKDiscoveryBonjour *)self->_bonjour startAdvertisingServiceName:[(GKDiscoveryManager *)self localServiceName] discoveryInfo:info];
  return 0;
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  *&v22[13] = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule > 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) localServiceName])
      {
        v8 = [objc_msgSend_description(objc_msgSend(*(a1 + 32) "localServiceName"))];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316162;
      v16 = v6;
      v17 = 2080;
      v18 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
      v19 = 1024;
      v20 = 510;
      v21 = 1024;
      *v22 = a2;
      v22[2] = 2080;
      *&v22[3] = v8;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d advertising connection callback, socket [%d] localServiceName [%s]", buf, 0x2Cu);
    }
  }

  v9 = -[GKDiscoveryPeerConnection initWithLocalServiceName:]([GKDiscoveryPeerConnection alloc], "initWithLocalServiceName:", [*(a1 + 32) localServiceName]);
  LocalIFIndexForBoundSocket = GetLocalIFIndexForBoundSocket();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_43;
  v13[3] = &unk_279683178;
  v13[4] = *(a1 + 32);
  v13[5] = v9;
  v14 = LocalIFIndexForBoundSocket;
  [(GKDiscoveryPeerConnection *)v9 setConnectedHandler:v13];
  [(GKDiscoveryPeerConnection *)v9 attachSocketDescriptor:a2];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v11;
      v17 = 2080;
      v18 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
      v19 = 1024;
      v20 = 627;
      v21 = 2048;
      *v22 = v9;
      _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerConnection (advertiser side) created (%p)", buf, 0x26u);
    }
  }
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_43(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v11 = [objc_msgSend_description(a2) UTF8String];
      }

      else
      {
        v11 = "<nil>";
      }

      *buf = 136315906;
      v19 = v9;
      v20 = 2080;
      v21 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
      v22 = 1024;
      v23 = 518;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerConnection connectedHandler (advertiser side), remote ServiceName [%s]", buf, 0x26u);
    }
  }

  v12 = [a4 copy];
  if (a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
    {
      __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_43_cold_1();
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else if (v12)
    {
LABEL_11:
      v12[2](v12, 0);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_44;
    block[3] = &unk_279683150;
    block[4] = a2;
    v15 = *(a1 + 32);
    v13 = *(v15 + 64);
    v17 = *(a1 + 48);
    v16 = v12;
    dispatch_async(v13, block);
  }
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_44(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [GKDiscoveryManager parseDeviceIDFromServiceName:*(a1 + 32)];
  v4 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [(GKDiscoveryPeer *)v4 state];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (*v2)
        {
          v9 = [objc_msgSend_description(*v2) UTF8String];
        }

        else
        {
          v9 = "<nil>";
        }

        *buf = 136316418;
        v39 = v7;
        v40 = 2080;
        v41 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
        v42 = 1024;
        v43 = 553;
        v44 = 2080;
        v45 = v9;
        v46 = 1024;
        v47 = [(GKDiscoveryPeer *)v5 state];
        v48 = 1024;
        v49 = v6 != 3;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] (advertiser side) peer already in dictionary [state = %d], decision = %d.", buf, 0x32u);
      }
    }

    if (v6 != 3)
    {
      [*(a1 + 40) processEvent:1006 forPeer:v5 withUserInfo:0];
LABEL_18:
      v14 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (*v2)
        {
          v12 = [objc_msgSend_description(*v2) UTF8String];
        }

        else
        {
          v12 = "<nil>";
        }

        *buf = 136315906;
        v39 = v10;
        v40 = 2080;
        v41 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
        v42 = 1024;
        v43 = 540;
        v44 = 2080;
        v45 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] (advertiser side) peer not in dictionary, creating one, decision = YES.", buf, 0x26u);
      }
    }

    v13 = [[GKDiscoveryPeer alloc] initWithServiceName:*v2];
    if (v13)
    {
      v5 = v13;
      [*(*(a1 + 40) + 48) setObject:v13 forKeyedSubscript:v3];
      goto LABEL_18;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_44_cold_1(v15, (a1 + 32));
      }
    }

    v5 = 0;
  }

  v14 = 0;
LABEL_24:
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_46;
  v33 = &unk_279682EE0;
  v34 = *(a1 + 40);
  v35 = v5;
  if (v14)
  {
    [*(a1 + 48) setReceiveDataHandler:&v30];
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v36 = @"GKDiscoveryManagerUserInfoConnectionKey";
    v37 = v16;
    [v17 processEvent:1005 forPeer:v5 withUserInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v37, &v36, 1, v30, v31, v32, v33, v34, v35)}];
    if (*(a1 + 64))
    {
      v18 = [(GKDiscoveryPeer *)v5 interfaces];
      -[NSMutableSet addObject:](v18, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 64)]);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([(GKDiscoveryPeer *)v5 serviceName])
        {
          v21 = [objc_msgSend_description(-[GKDiscoveryPeer serviceName](v5 "serviceName"))];
        }

        else
        {
          v21 = "<nil>";
        }

        v25 = *(a1 + 64);
        *buf = 136316162;
        v39 = v19;
        v40 = 2080;
        v41 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
        v42 = 1024;
        v43 = 615;
        v44 = 2080;
        v45 = v21;
        v46 = 1024;
        v47 = v25;
        v26 = " [%s] %s:%d peer [%s] connected (advertiser side, interface index [%d]) successfully.";
        v27 = v20;
        v28 = 44;
LABEL_39:
        _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryPeer *)v5 serviceName:v30])
      {
        v24 = [objc_msgSend_description(-[GKDiscoveryPeer serviceName](v5 "serviceName"))];
      }

      else
      {
        v24 = "<nil>";
      }

      *buf = 136315906;
      v39 = v22;
      v40 = 2080;
      v41 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
      v42 = 1024;
      v43 = 617;
      v44 = 2080;
      v45 = v24;
      v26 = " [%s] %s:%d peer [%s] (advertiser side) decision == NO.";
      v27 = v23;
      v28 = 38;
      goto LABEL_39;
    }
  }

  v29 = *(a1 + 56);
  if (v29)
  {
    (*(v29 + 16))(v29, v14);
  }
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_46(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_2;
    block[3] = &unk_279682C18;
    v13 = *(a1 + 32);
    v4 = *(v13 + 64);
    v14 = a3;
    dispatch_async(v4, block);
  }

  else
  {
    if (!a2)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_47;
      v10[3] = &unk_279682BF0;
      v11 = *(a1 + 32);
      dispatch_async(*(v11 + 64), v10);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 40) serviceName])
        {
          v8 = [objc_msgSend_description(objc_msgSend(*(a1 + 40) "serviceName"))];
        }

        else
        {
          v8 = "<nil>";
        }

        v9 = [a2 length];
        *buf = 136316162;
        v16 = v6;
        v17 = 2080;
        v18 = "[GKDiscoveryManager startAdvertisingLocalPlayer:discoveryInfo:]_block_invoke";
        v19 = 1024;
        v20 = 589;
        v21 = 2080;
        v22 = v8;
        v23 = 1024;
        v24 = v9;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] passing received data (length=%u) to GK", buf, 0x2Cu);
      }
    }

    [*(a1 + 32) passDataToGKLayer:a2 fromPeer:*(a1 + 40)];
  }
}

uint64_t __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_2(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_2_cold_1();
    }
  }

  return [*(a1 + 32) processEvent:1006 forPeer:*(a1 + 40) withUserInfo:0];
}

uint64_t __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_47(uint64_t a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_47_cold_1();
    }
  }

  return [*(a1 + 32) processEvent:1006 forPeer:*(a1 + 40) withUserInfo:0];
}

uint64_t __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_49(uint64_t a1)
{
  [*(a1 + 32) setDeviceID:{objc_msgSend(*(a1 + 32), "generateDeviceID")}];
  v2 = *(a1 + 32);

  return [v2 localServiceName];
}

- (id)serviceNameforDeviceID:(id)d playerID:(id)iD
{
  if (d && iD)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%@", d, iD];
  }

  if (d)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@", d, v5];
  }

  return 0;
}

+ (id)parseDeviceIDFromServiceName:(id)name
{
  v4 = 0;
  [objc_msgSend(MEMORY[0x277CCAC80] scannerWithString:{name), "scanUpToString:intoString:", @"+", &v4}];
  return v4;
}

- (void)stopAdvertising
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v5 = [objc_msgSend_description(-[GKDiscoveryManager peersList](self "peersList"))];
      }

      else
      {
        v5 = "<nil>";
      }

      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[GKDiscoveryManager stopAdvertising]";
      v10 = 1024;
      v11 = 664;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stop advertising - peers=[\n%s]", &v6, 0x26u);
    }
  }

  [(GKDiscoveryBonjour *)self->_bonjour stopAdvertising];
}

- (void)cleanUpPeersForBrowse
{
  peersQueue = self->_peersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__GKDiscoveryManager_cleanUpPeersForBrowse__block_invoke;
  block[3] = &unk_279682BA8;
  block[4] = self;
  dispatch_async(peersQueue, block);
}

void *__43__GKDiscoveryManager_cleanUpPeersForBrowse__block_invoke(uint64_t a1)
{
  v1 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(*(a1 + 32) + 48);
  result = [v2 countByEnumeratingWithState:&v20 objects:v34 count:16];
  if (result)
  {
    v5 = result;
    v6 = "";
    v7 = MEMORY[0x277CE5818];
    v8 = *v21;
    *&v4 = 136316162;
    v18 = v4;
    v19 = v1;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = [*(*(v1 + 32) + 48) objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * v9), v18}];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v6;
            v14 = v2;
            v15 = v7;
            if ([v10 playerID])
            {
              v16 = [objc_msgSend_description(objc_msgSend(v10 "playerID"))];
            }

            else
            {
              v16 = "<nil>";
            }

            if ([v10 deviceID])
            {
              v17 = [objc_msgSend_description(objc_msgSend(v10 "deviceID"))];
            }

            else
            {
              v17 = "<nil>";
            }

            *buf = v18;
            v25 = v11;
            v26 = 2080;
            v27 = "[GKDiscoveryManager cleanUpPeersForBrowse]_block_invoke";
            v28 = 1024;
            v29 = 672;
            v30 = 2080;
            v31 = v16;
            v32 = 2080;
            v33 = v17;
            _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d invalidating peer: %s device: %s", buf, 0x30u);
            v7 = v15;
            v2 = v14;
            v6 = v13;
            v1 = v19;
          }
        }

        [v10 cleanUpForBrowse];
        [v10 setShouldSignalDiscovery:1];
        v9 = v9 + 1;
      }

      while (v5 != v9);
      result = [v2 countByEnumeratingWithState:&v20 objects:v34 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)startBrowsingLocalPlayer:(id)player
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v7 = [objc_msgSend_description(-[GKDiscoveryManager peersList](self "peersList"))];
      }

      else
      {
        v7 = "<nil>";
      }

      *buf = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[GKDiscoveryManager startBrowsingLocalPlayer:]";
      v14 = 1024;
      v15 = 680;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start browsing - peers=[\n%s]", buf, 0x26u);
    }
  }

  [(GKDiscoveryManager *)self cleanUpPeersForBrowse];
  [(GKDiscoveryManager *)self setPlayerID:player];
  bonjour = self->_bonjour;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke;
  v9[3] = &unk_279683240;
  v9[4] = self;
  [(GKDiscoveryBonjour *)bonjour startBrowsing:v9];
}

void __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke(uint64_t a1, int a2, uint64_t a3, int a4, void *a5, uint64_t a6)
{
  v6 = a6;
  v36 = *MEMORY[0x277D85DE8];
  v12 = [GKDiscoveryManager parseDeviceIDFromServiceName:?];
  if (v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke_cold_1(v13);
      }
    }
  }

  else if ([objc_msgSend(*(a1 + 32) "deviceID")])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v27 = v14;
        v28 = 2080;
        v29 = "[GKDiscoveryManager startBrowsingLocalPlayer:]_block_invoke";
        v30 = 1024;
        v31 = 695;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ignoring self for now.", buf, 0x1Cu);
      }
    }
  }

  else if (a3)
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 64);
    if (a2)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke_62;
      v24[3] = &unk_2796831F0;
      v25 = a4;
      v24[4] = v16;
      v24[5] = a5;
      v24[6] = a3;
      v18 = v24;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke_2;
      block[3] = &unk_279683218;
      v23 = a4;
      block[4] = v16;
      block[5] = a3;
      v18 = block;
    }

    dispatch_async(v17, v18);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      if (a5)
      {
        v21 = [objc_msgSend_description(a5) UTF8String];
      }

      else
      {
        v21 = "<nil>";
      }

      *buf = 136316162;
      v27 = v19;
      v28 = 2080;
      v29 = "[GKDiscoveryManager startBrowsingLocalPlayer:]_block_invoke";
      v30 = 1024;
      v31 = 698;
      v32 = 1024;
      v33 = a4;
      v34 = 2080;
      v35 = v21;
      _os_log_error_impl(&dword_24E50C000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d serviceName is nil - ignoring peer - interface [%d] discoveryInfo [%s]", buf, 0x2Cu);
    }
  }
}

- (void)stopBrowsing
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v5 = [objc_msgSend_description(-[GKDiscoveryManager peersList](self "peersList"))];
      }

      else
      {
        v5 = "<nil>";
      }

      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[GKDiscoveryManager stopBrowsing]";
      v10 = 1024;
      v11 = 718;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stop browsing - peers=[\n%s]", &v6, 0x26u);
    }
  }

  [(GKDiscoveryBonjour *)self->_bonjour stopBrowsing];
}

- (void)sendDataToParticipant:(id)participant deviceID:(id)d data:(id)data withCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (participant)
      {
        uTF8String = [objc_msgSend_description(participant) UTF8String];
        if (d)
        {
LABEL_5:
          uTF8String2 = [objc_msgSend_description(d) UTF8String];
LABEL_8:
          *buf = 136316418;
          v19 = v11;
          v20 = 2080;
          v21 = "[GKDiscoveryManager sendDataToParticipant:deviceID:data:withCompletionHandler:]";
          v22 = 1024;
          v23 = 723;
          v24 = 2080;
          v25 = uTF8String;
          v26 = 2080;
          v27 = uTF8String2;
          v28 = 2048;
          v29 = [data length];
          _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d to playerID [%s] deviceID [%s] dataSize [%lu]", buf, 0x3Au);
          goto LABEL_9;
        }
      }

      else
      {
        uTF8String = "<nil>";
        if (d)
        {
          goto LABEL_5;
        }
      }

      uTF8String2 = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  v15 = [handler copy];
  peersQueue = self->_peersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__GKDiscoveryManager_sendDataToParticipant_deviceID_data_withCompletionHandler___block_invoke;
  block[3] = &unk_279683268;
  block[4] = self;
  block[5] = d;
  block[7] = data;
  block[8] = v15;
  block[6] = participant;
  dispatch_async(peersQueue, block);
}

void __80__GKDiscoveryManager_sendDataToParticipant_deviceID_data_withCompletionHandler___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    if (![v2 state])
    {
      [*(a1 + 32) processEvent:1001 forPeer:v3 withUserInfo:0];
    }

    v4 = *(a1 + 56);
    v5 = *(a1 + 64);

    [v3 sendData:v4 withCompletionHandler:v5];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __80__GKDiscoveryManager_sendDataToParticipant_deviceID_data_withCompletionHandler___block_invoke_cold_1(v6, a1);
      }
    }

    if (*(a1 + 64))
    {
      v7 = *MEMORY[0x277CCA450];
      v8[0] = @"Peer does not exist";
      [MEMORY[0x277CCA9B8] errorWithDomain:@"GKDiscoveryManager" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
      (*(*(a1 + 64) + 16))();
    }
  }
}

- (void)forgetParticipant:(id)participant deviceID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [(GKDiscoveryManager *)self serviceNameforDeviceID:d playerID:participant];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        uTF8String = [objc_msgSend_description(v7) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      *buf = 136315906;
      v14 = v8;
      v15 = 2080;
      v16 = "[GKDiscoveryManager forgetParticipant:deviceID:]";
      v17 = 1024;
      v18 = 754;
      v19 = 2080;
      v20 = uTF8String;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d forget peer [%s]", buf, 0x26u);
    }
  }

  peersQueue = self->_peersQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__GKDiscoveryManager_forgetParticipant_deviceID___block_invoke;
  block[3] = &unk_279682C18;
  block[4] = self;
  block[5] = d;
  block[6] = participant;
  dispatch_async(peersQueue, block);
}

void __49__GKDiscoveryManager_forgetParticipant_deviceID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 invalidate];
    [*(a1 + 32) processEvent:1006 forPeer:v3 withUserInfo:0];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 48);

    [v5 removeObjectForKey:v4];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        v9 = [objc_msgSend_description(v8) UTF8String];
      }

      else
      {
        v9 = "<nil>";
      }

      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = [objc_msgSend_description(v10) UTF8String];
      }

      else
      {
        v11 = "<nil>";
      }

      v12 = 136316162;
      v13 = v6;
      v14 = 2080;
      v15 = "[GKDiscoveryManager forgetParticipant:deviceID:]_block_invoke";
      v16 = 1024;
      v17 = 759;
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = v11;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d can't remove peer with %s with device id %s, no such peer exists", &v12, 0x30u);
    }
  }
}

- (void)addInterface:(unsigned int)interface withDiscoveryInfo:(id)info forPeerWithServiceName:(id)name
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKDiscoveryManager *)self peersList])
      {
        v12 = [objc_msgSend_description(-[GKDiscoveryManager peersList](self "peersList"))];
        if (name)
        {
LABEL_5:
          uTF8String = [objc_msgSend_description(name) UTF8String];
LABEL_8:
          v46 = 136316418;
          v47 = v10;
          v48 = 2080;
          v49 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
          v50 = 1024;
          v51 = 774;
          v52 = 2080;
          *v53 = v12;
          *&v53[8] = 1024;
          *&v53[10] = interface;
          *&v53[14] = 2080;
          *&v53[16] = uTF8String;
          _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peers=[\n%s] add interface [%d] for serviceName [%s]", &v46, 0x36u);
          goto LABEL_9;
        }
      }

      else
      {
        v12 = "<nil>";
        if (name)
        {
          goto LABEL_5;
        }
      }

      uTF8String = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  v14 = [GKDiscoveryManager parseDeviceIDFromServiceName:name];
  v15 = [(NSMutableDictionary *)self->_peers objectForKeyedSubscript:v14];
  if (v15)
  {
    v16 = v15;
    if ([objc_msgSend(v15 "interfaces")])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          intValue = [v9 intValue];
          if (name)
          {
            uTF8String2 = [objc_msgSend_description(name) UTF8String];
          }

          else
          {
            uTF8String2 = "<nil>";
          }

          v46 = 136316162;
          v47 = v17;
          v48 = 2080;
          v49 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
          v50 = 1024;
          v51 = 812;
          v52 = 1024;
          *v53 = intValue;
          *&v53[4] = 2080;
          *&v53[6] = uTF8String2;
          v35 = " [%s] %s:%d asked to add already existing interface (%d) for service name %s";
          v36 = v18;
          v37 = 44;
          goto LABEL_46;
        }
      }
    }

    else
    {
      [objc_msgSend(v16 "interfaces")];
      if ([objc_msgSend(v16 "orderedInterfaces")] || objc_msgSend(objc_msgSend(v16, "attemptedInterfaces"), "count"))
      {
        [objc_msgSend(v16 "orderedInterfaces")];
        [v16 setOrderedInterfaces:{objc_msgSend(MEMORY[0x277CBEB18], "arrayWithArray:", +[GKInterfacePrioritizer prioritizeLocalInterfaces:](GKInterfacePrioritizer, "prioritizeLocalInterfaces:", objc_msgSend(v16, "orderedInterfaces")))}];
      }

      if ([v16 shouldSignalDiscovery] && self->_playerFoundHandler)
      {
        if (![v16 state])
        {
          [(GKDiscoveryManager *)self processEvent:1000 forPeer:v16 withUserInfo:0];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            if (name)
            {
              uTF8String3 = [objc_msgSend_description(name) UTF8String];
            }

            else
            {
              uTF8String3 = "<nil>";
            }

            v46 = 136315906;
            v47 = v30;
            v48 = 2080;
            v49 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
            v50 = 1024;
            v51 = 832;
            v52 = 2080;
            *v53 = uTF8String3;
            _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d signaling discovery of an existing peer [%s] to GK", &v46, 0x26u);
          }
        }

        (*(self->_playerFoundHandler + 2))(self->_playerFoundHandler, [v16 playerID], objc_msgSend(v16, "deviceID"), info);
        [v16 setShouldSignalDiscovery:0];
      }
    }
  }

  else
  {
    localServiceName = [(GKDiscoveryManager *)self localServiceName];
    if (localServiceName)
    {
      v22 = localServiceName;
      v23 = [[GKDiscoveryPeer alloc] initWithServiceName:name];
      if (v23)
      {
        v24 = v23;
        [(NSMutableSet *)[(GKDiscoveryPeer *)v23 interfaces] addObject:v9];
        [(NSMutableDictionary *)self->_peers setObject:v24 forKeyedSubscript:v14];
        playerID = [(GKDiscoveryPeer *)v24 playerID];
        deviceID = [(GKDiscoveryPeer *)v24 deviceID];
        if (self->_playerFoundHandler)
        {
          [(GKDiscoveryManager *)self processEvent:1000 forPeer:v24 withUserInfo:0];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (name)
              {
                uTF8String4 = [objc_msgSend_description(name) UTF8String];
              }

              else
              {
                uTF8String4 = "<nil>";
              }

              v46 = 136315906;
              v47 = v27;
              v48 = 2080;
              v49 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
              v50 = 1024;
              v51 = 802;
              v52 = 2080;
              *v53 = uTF8String4;
              _os_log_impl(&dword_24E50C000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d signaling discovery of a new peer [%s] to GK", &v46, 0x26u);
            }
          }

          (*(self->_playerFoundHandler + 2))();
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v41 = VRTraceErrorLogLevelToCSTR();
          v42 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            if (playerID)
            {
              uTF8String5 = [objc_msgSend_description(playerID) UTF8String];
            }

            else
            {
              uTF8String5 = "<nil>";
            }

            if (deviceID)
            {
              uTF8String6 = [objc_msgSend_description(deviceID) UTF8String];
            }

            else
            {
              uTF8String6 = "<nil>";
            }

            v46 = 136316162;
            v47 = v41;
            v48 = 2080;
            v49 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
            v50 = 1024;
            v51 = 805;
            v52 = 2080;
            *v53 = uTF8String5;
            *&v53[8] = 2080;
            *&v53[10] = uTF8String6;
            _os_log_error_impl(&dword_24E50C000, v42, OS_LOG_TYPE_ERROR, " [%s] %s:%d playerFoundHandler is not set, found %s with device id %s, but cannot inform the GameKit layer.", &v46, 0x30u);
          }
        }

        [(GKDiscoveryPeer *)v24 setShouldSignalDiscovery:0];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          if (name)
          {
            uTF8String7 = [objc_msgSend_description(name) UTF8String];
          }

          else
          {
            uTF8String7 = "<nil>";
          }

          uTF8String8 = [objc_msgSend_description(v22) UTF8String];
          v46 = 136316162;
          v47 = v38;
          v48 = 2080;
          v49 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
          v50 = 1024;
          v51 = 790;
          v52 = 2080;
          *v53 = uTF8String7;
          *&v53[8] = 2080;
          *&v53[10] = uTF8String8;
          _os_log_error_impl(&dword_24E50C000, v39, OS_LOG_TYPE_ERROR, " [%s] %s:%d peer initialization for serviceName: %s and localServiceName: %s failed", &v46, 0x30u);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v46 = 136315650;
        v47 = v33;
        v48 = 2080;
        v49 = "[GKDiscoveryManager addInterface:withDiscoveryInfo:forPeerWithServiceName:]";
        v50 = 1024;
        v51 = 785;
        v35 = " [%s] %s:%d localServiceName is nil; ignoring browseCallback";
        v36 = v34;
        v37 = 28;
LABEL_46:
        _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, v35, &v46, v37);
      }
    }
  }
}

- (id)peersList
{
  v15 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  peers = self->_peers;
  v5 = [(NSMutableDictionary *)peers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(peers);
        }

        [string appendFormat:@"%@ - %@\n", *(*(&v10 + 1) + 8 * i), objc_msgSend_description(-[NSMutableDictionary objectForKeyedSubscript:](self->_peers, "objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * i)))];
      }

      v6 = [(NSMutableDictionary *)peers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return string;
}

- (void)didLosePeer:(id)peer
{
  v22 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([peer serviceName])
      {
        v7 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
      }

      else
      {
        v7 = "<nil>";
      }

      v14 = 136315906;
      v15 = v5;
      v16 = 2080;
      v17 = "[GKDiscoveryManager didLosePeer:]";
      v18 = 1024;
      v19 = 850;
      v20 = 2080;
      v21 = v7;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] peer lost!", &v14, 0x26u);
    }
  }

  [(GKDiscoveryManager *)self processEvent:1006 forPeer:peer withUserInfo:0];
  [peer flushDataBuffer];
  playerLostHandler = self->_playerLostHandler;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (playerLostHandler)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if ([peer serviceName])
        {
          v12 = [objc_msgSend_description(objc_msgSend(peer "serviceName"))];
        }

        else
        {
          v12 = "<nil>";
        }

        v14 = 136315906;
        v15 = v10;
        v16 = 2080;
        v17 = "[GKDiscoveryManager didLosePeer:]";
        v18 = 1024;
        v19 = 861;
        v20 = 2080;
        v21 = v12;
        _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] about to notify GK that the peer was lost", &v14, 0x26u);
      }
    }

    (*(self->_playerLostHandler + 2))(self->_playerLostHandler, [peer playerID], objc_msgSend(peer, "deviceID"));
    [peer invalidate];
    -[NSMutableDictionary removeObjectForKey:](self->_peers, "removeObjectForKey:", [peer deviceID]);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      [(GKDiscoveryManager *)v13 didLosePeer:peer];
    }
  }
}

- (void)removeInterface:(unsigned int)interface forPeerWithServiceName:(id)name
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  v8 = [(NSMutableDictionary *)self->_peers objectForKeyedSubscript:[GKDiscoveryManager parseDeviceIDFromServiceName:name]];
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    intValue = [v7 intValue];
    if (name)
    {
      uTF8String = [objc_msgSend_description(name) UTF8String];
    }

    else
    {
      uTF8String = "<nil>";
    }

    v25 = 136316162;
    v26 = v13;
    v27 = 2080;
    v28 = "[GKDiscoveryManager removeInterface:forPeerWithServiceName:]";
    v29 = 1024;
    v30 = 874;
    v31 = 1024;
    *v32 = intValue;
    *&v32[4] = 2080;
    *&v32[6] = uTF8String;
    v20 = " [%s] %s:%d cannot remove interface (%d) because service name %s does not exist";
LABEL_22:
    _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, v20, &v25, 0x2Cu);
    return;
  }

  v9 = v8;
  if (([objc_msgSend(v8 "interfaces")] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    intValue2 = [v7 intValue];
    if (name)
    {
      uTF8String2 = [objc_msgSend_description(name) UTF8String];
    }

    else
    {
      uTF8String2 = "<nil>";
    }

    v25 = 136316162;
    v26 = v17;
    v27 = 2080;
    v28 = "[GKDiscoveryManager removeInterface:forPeerWithServiceName:]";
    v29 = 1024;
    v30 = 879;
    v31 = 1024;
    *v32 = intValue2;
    *&v32[4] = 2080;
    *&v32[6] = uTF8String2;
    v20 = " [%s] %s:%d cannot remove interface (%d) for service name %s because it is not in the interfaces set";
    goto LABEL_22;
  }

  [v9 didLoseInterface:v7];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (name)
      {
        uTF8String3 = [objc_msgSend_description(name) UTF8String];
      }

      else
      {
        uTF8String3 = "<nil>";
      }

      if ([v9 stringForState:{objc_msgSend(v9, "state")}])
      {
        v21 = [objc_msgSend_description(objc_msgSend(v9 stringForState:{objc_msgSend(v9, "state"))), "UTF8String"}];
      }

      else
      {
        v21 = "<nil>";
      }

      connection = [v9 connection];
      if (objc_msgSend_description([v9 interfaces]))
      {
        v23 = objc_msgSend_description([v9 interfaces]);
        uTF8String4 = [objc_msgSend_description(v23) UTF8String];
      }

      else
      {
        uTF8String4 = "<nil>";
      }

      v25 = 136316930;
      v26 = v10;
      v27 = 2080;
      v28 = "[GKDiscoveryManager removeInterface:forPeerWithServiceName:]";
      v29 = 1024;
      v30 = 886;
      v31 = 2080;
      *v32 = uTF8String3;
      *&v32[8] = 2080;
      *&v32[10] = v21;
      v33 = 1024;
      interfaceCopy = interface;
      v35 = 2048;
      v36 = connection;
      v37 = 2080;
      v38 = uTF8String4;
      _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peer [%s] state [%s] removed interface [%d] peerConnection [%p] remaining interfaces [%s]", &v25, 0x4Au);
    }
  }

  if ([objc_msgSend(v9 "chosenInterface")] && objc_msgSend(v9, "state") == 3)
  {
    [(GKDiscoveryManager *)self processEvent:1006 forPeer:v9 withUserInfo:0];
  }

  if (![objc_msgSend(v9 "interfaces")] && !objc_msgSend(v9, "state"))
  {
    [(GKDiscoveryManager *)self didLosePeer:v9];
  }
}

void __37__GKDiscoveryManager_resolveForPeer___block_invoke_16_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  if ([*(v1 + 32) serviceName])
  {
    [objc_msgSend_description(objc_msgSend(*(v0 + 32) "serviceName"))];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  if ([*v1 serviceName])
  {
    [objc_msgSend_description(objc_msgSend(*v0 "serviceName"))];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __53__GKDiscoveryManager_connectToSockAddr_port_forPeer___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  if ([*(a2 + 32) serviceName])
  {
    [objc_msgSend_description(objc_msgSend(*(a2 + 32) "serviceName"))];
  }

  if ([*(a2 + 40) localizedDescription])
  {
    [objc_msgSend_description(objc_msgSend(*(a2 + 40) "localizedDescription"))];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_43_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  if ([v1 localizedDescription])
  {
    [objc_msgSend_description(objc_msgSend(v0 "localizedDescription"))];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_44_cold_1(uint64_t a1, void **a2)
{
  if (*a2)
  {
    [objc_msgSend_description(*a2) UTF8String];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  [*(v1 + 40) deviceID];
  v2 = OUTLINED_FUNCTION_7_2();
  if (OUTLINED_FUNCTION_6_3(v2))
  {
    [*(v0 + 40) deviceID];
    v3 = OUTLINED_FUNCTION_7_2();
    v4 = OUTLINED_FUNCTION_6_3(v3);
    [objc_msgSend_description(v4) UTF8String];
  }

  if ([*(v0 + 48) localizedDescription])
  {
    [objc_msgSend_description(objc_msgSend(*(v0 + 48) "localizedDescription"))];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x30u);
}

void __64__GKDiscoveryManager_startAdvertisingLocalPlayer_discoveryInfo___block_invoke_47_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  [*(v1 + 40) deviceID];
  v2 = OUTLINED_FUNCTION_7_2();
  if (OUTLINED_FUNCTION_6_3(v2))
  {
    [*(v0 + 40) deviceID];
    v3 = OUTLINED_FUNCTION_7_2();
    v4 = OUTLINED_FUNCTION_6_3(v3);
    [objc_msgSend_description(v4) UTF8String];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x26u);
}

void __47__GKDiscoveryManager_startBrowsingLocalPlayer___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[GKDiscoveryManager startBrowsingLocalPlayer:]_block_invoke";
  v7 = 1024;
  OUTLINED_FUNCTION_13_0();
  v8 = v1;
  _os_log_error_impl(&dword_24E50C000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d browsing callback returned an error (%d) - currently not handled.", &v3, 0x22u);
}

void __80__GKDiscoveryManager_sendDataToParticipant_deviceID_data_withCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    [objc_msgSend_description(v2) UTF8String];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

- (void)didLosePeer:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if ([a2 playerID])
  {
    [objc_msgSend_description(objc_msgSend(a2 "playerID"))];
  }

  if ([a2 deviceID])
  {
    [objc_msgSend_description(objc_msgSend(a2 "deviceID"))];
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x30u);
}

@end