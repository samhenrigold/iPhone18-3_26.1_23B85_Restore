@interface MPTCPHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (MPTCPHandler)init;
- (int)read:(id)read returnedValues:(id)values;
- (void)_performUpdate;
- (void)_setMPTCPAdvisoryCell:(int)cell;
- (void)_setMPTCPAdvisoryWiFi:(int64_t)fi;
- (void)dealloc;
- (void)handleSrcEvent;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)rnfWiFiEvent:(id)event withInfo:(id)info;
- (void)sendReply:(id)reply;
- (void)setupSockFD;
@end

@implementation MPTCPHandler

- (MPTCPHandler)init
{
  v21.receiver = self;
  v21.super_class = MPTCPHandler;
  v2 = [(MPTCPHandler *)&v21 init];
  v3 = v2;
  if (v2)
  {
    [(MPTCPHandler *)v2 setSockfd:0xFFFFFFFFLL];
    [(MPTCPHandler *)v3 setSocksrc:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    *&v3->_kernelWifiAdvice = 0x200000002;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __20__MPTCPHandler_init__block_invoke;
    v19[3] = &unk_27898A690;
    v5 = v3;
    v20 = v5;
    v6 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v19];
    relayReadyObserver = v5->relayReadyObserver;
    v5->relayReadyObserver = v6;

    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __20__MPTCPHandler_init__block_invoke_4;
    v17 = &unk_27898A690;
    v8 = v5;
    v18 = v8;
    v9 = [defaultCenter addObserverForName:@"fallbackRecommendation" object:0 queue:0 usingBlock:&v14];
    rnfWiFiObserver = v8->rnfWiFiObserver;
    v8->rnfWiFiObserver = v9;

    v11 = [CellOutrankHandler sharedInstance:v14];
    outrankRelay = v8->_outrankRelay;
    v8->_outrankRelay = v11;

    [(CellOutrankHandler *)v8->_outrankRelay addObserver:v8 forKeyPath:@"cellOutranksWiFi" options:7 context:0];
  }

  return v3;
}

void __20__MPTCPHandler_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 48)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__MPTCPHandler_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __20__MPTCPHandler_init__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [NetworkStateRelay getStateRelayFor:5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(*(a1 + 32) + 24);
  if (v5)
  {
    [v5 addObserver:? forKeyPath:? options:? context:?];
  }

  else
  {
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v13 = 134217984;
      v14 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "MPTCP: failed to procure state relays %p", &v13, 0xCu);
    }
  }

  v8 = [NetworkStateRelay getStateRelayFor:3];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  if (!*(*(a1 + 32) + 32))
  {
    v11 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = 134217984;
      v14 = v12;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "MPTCP: failed to procure state relay for WiFi %p", &v13, 0xCu);
    }
  }
}

void __20__MPTCPHandler_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __20__MPTCPHandler_init__block_invoke_2_5;
  v5[3] = &unk_27898A7D0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __20__MPTCPHandler_init__block_invoke_2_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 rnfWiFiEvent:@"fallbackRecommendation" withInfo:v2];
}

- (void)dealloc
{
  cellRelay = self->cellRelay;
  if (cellRelay)
  {
    [(NetworkStateRelay *)cellRelay removeObserver:self forKeyPath:@"advisory"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = defaultCenter;
  if (self->relayReadyObserver)
  {
    [defaultCenter removeObserver:?];
  }

  [v5 removeObserver:self->rnfWiFiObserver];
  if (([(MPTCPHandler *)self sockfd]& 0x80000000) == 0)
  {
    close([(MPTCPHandler *)self sockfd]);
    socksrc = [(MPTCPHandler *)self socksrc];

    if (socksrc)
    {
      socksrc2 = [(MPTCPHandler *)self socksrc];
      dispatch_source_cancel(socksrc2);

      [(MPTCPHandler *)self setSocksrc:0];
    }
  }

  [(CellOutrankHandler *)self->_outrankRelay removeObserver:self forKeyPath:@"cellOutranksWiFi"];
  outrankRelay = self->_outrankRelay;
  self->_outrankRelay = 0;

  v9.receiver = self;
  v9.super_class = MPTCPHandler;
  [(MPTCPHandler *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MPTCPHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_27898A328;
  v13 = objectCopy;
  v14 = pathCopy;
  selfCopy = self;
  v10 = pathCopy;
  v11 = objectCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__MPTCPHandler_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if ([a1[5] isEqualToString:@"advisory"])
  {
    if ([v2 functionalInterfaceType] == 5)
    {
      [a1[6] _setMPTCPAdvisoryCell:{objc_msgSend(*(a1[6] + 3), "advisory")}];
      v3 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1[6] + 3);
        v5 = v3;
        v24 = 67109120;
        *v25 = [v4 advisory];
        v6 = "MPTCP: Advising Cell, advice = %d";
        v7 = v5;
        v8 = OS_LOG_TYPE_DEFAULT;
        v9 = 8;
LABEL_16:
        _os_log_impl(&dword_23255B000, v7, v8, v6, &v24, v9);
      }
    }

    else
    {
      v17 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v5 = v17;
        v18 = [v2 functionalInterfaceType];
        v19 = a1[6];
        v24 = 67109376;
        *v25 = v18;
        *&v25[4] = 2048;
        *&v25[6] = v19;
        v6 = "MPTCP: unrecognized interface type %hhu for %p";
        v7 = v5;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 18;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v10 = [a1[5] isEqualToString:@"cellOutranksWiFi"];
    v11 = rnfLogHandle;
    if (v10)
    {
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1[6] + 5);
        v13 = v11;
        v14 = [v12 cellOutranksWiFi];
        v15 = "NO";
        if (v14)
        {
          v15 = "YES";
        }

        v24 = 136315138;
        *v25 = v15;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "MPTCP: Advising 5G cell prefer over WiFi: %s", &v24, 0xCu);
      }

      if ([*(a1[6] + 5) cellOutranksWiFi])
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      [a1[6] _setMPTCPAdvisoryWiFi:v16];
    }

    else if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[5];
      v21 = v20;
      v5 = v11;
      v22 = [v20 UTF8String];
      v23 = a1[6];
      v24 = 136315394;
      *v25 = v22;
      *&v25[8] = 2048;
      *&v25[10] = v23;
      v6 = "MPTCP: unrecognized key change %s for %p";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
      goto LABEL_16;
    }
  }
}

- (void)rnfWiFiEvent:(id)event withInfo:(id)info
{
  v12 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([event isEqualToString:@"fallbackRecommendation"])
  {
    v7 = [infoCopy objectForKeyedSubscript:@"detail"];
    integerValue = [v7 integerValue];

    self->_rnfAdvice = integerValue;
    [(MPTCPHandler *)self _setMPTCPAdvisoryWiFi:integerValue];
    v9 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = integerValue;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "MPTCP: Advising WiFi from RNF, advice = %ld", &v10, 0xCu);
    }
  }
}

- (void)sendReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  if (([(MPTCPHandler *)self sockfd]& 0x80000000) == 0)
  {
    v14[1] = 0;
    v15 = 0;
    v14[0] = 0xFFFFLL;
    [replyCopy getUUIDBytes:v14 + 4];
    HIDWORD(v15) = [(NetworkStateRelay *)self->wifiRelay lastReportedRxSignalStrength];
    v5 = send([(MPTCPHandler *)self sockfd], v14, 0x18uLL, 0);
    if (v5 != 24)
    {
      v6 = v5;
      v7 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = *__error();
        v10 = 134218240;
        v11 = v6;
        v12 = 1024;
        v13 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "MPTCP: sendReply failed with ret %ld, errno %d\n", &v10, 0x12u);
      }
    }
  }
}

- (void)handleSrcEvent
{
  v22 = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "MPTCP: handleSrcEvent enter", buf, 2u);
  }

  if (recv([(MPTCPHandler *)self sockfd], v20, 0x18uLL, 0) == 24)
  {
    *&v4 = 67109634;
    v10 = v4;
    do
    {
      if (LODWORD(v20[0]) == 1)
      {
        v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v20 + 4];
        v6 = HIDWORD(v21);
        if (HIDWORD(v21) >= 3)
        {
          v9 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v15 = HIDWORD(v21);
            _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "MPTCP: Received unexpected priority: %u", buf, 8u);
          }
        }

        else
        {
          v7 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v10;
            v15 = HIDWORD(v21);
            v16 = 2048;
            v17 = v6;
            v18 = 2112;
            v19 = v5;
            _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "MPTCP: handling event for prio %d state %ld on uuid %@", buf, 0x1Cu);
          }

          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __30__MPTCPHandler_handleSrcEvent__block_invoke;
          v11[3] = &unk_27898BD20;
          v13 = v6;
          v11[4] = self;
          v12 = v5;
          [FlowAnalyticsEngine identifierForUUID:v12 replyQueue:MEMORY[0x277D85CD0] reply:v11];
        }
      }

      else
      {
        v8 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v15 = v20[0];
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "MPTCP: received unknown event %d", buf, 8u);
        }
      }
    }

    while (recv([(MPTCPHandler *)self sockfd], v20, 0x18uLL, 0) == 24);
  }
}

void __30__MPTCPHandler_handleSrcEvent__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "MPTCP: identifierForUUID error: %@", buf, 0xCu);
    }
  }

  else
  {
    v20 = v7;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
    v21 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __30__MPTCPHandler_handleSrcEvent__block_invoke_19;
    v16[3] = &unk_27898BCF8;
    v13 = v7;
    v14 = a1[4];
    v15 = a1[5];
    v17 = v13;
    v18 = v14;
    v19 = v15;
    [CellFallbackHandler canUseApps:v12 replyQueue:MEMORY[0x277D85CD0] reply:v16];
  }
}

void __30__MPTCPHandler_handleSrcEvent__block_invoke_19(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = rnfLogHandle;
  if (v15)
  {
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "MPTCP: returning: error %@", &v23, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = [v11 objectForKeyedSubscript:v17];
      v20 = [v12 objectForKeyedSubscript:*(a1 + 32)];
      v23 = 138412802;
      v24 = v17;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "MPTCP: App %@ can use? %@ reason %@", &v23, 0x20u);
    }

    v21 = [v11 objectForKeyedSubscript:*(a1 + 32)];
    v22 = [v21 BOOLValue];

    if (v22)
    {
      [*(a1 + 40) sendReply:*(a1 + 48)];
    }
  }
}

- (void)setupSockFD
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(MPTCPHandler *)self sockfd]< 0)
  {
    [(MPTCPHandler *)self setSockfd:network_config_open_kernel_network_advisory_socket()];
    if ([(MPTCPHandler *)self sockfd]< 0)
    {
      v11 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      socksrc5 = v11;
      v12 = *__error();
      *buf = 67109120;
      v18 = v12;
      _os_log_impl(&dword_23255B000, socksrc5, OS_LOG_TYPE_ERROR, "MPTCP: could not allocate kernel network advisory socket - error: %d", buf, 8u);
      goto LABEL_9;
    }

    socksrc = [(MPTCPHandler *)self socksrc];

    if (socksrc)
    {
      socksrc2 = [(MPTCPHandler *)self socksrc];
      dispatch_source_cancel(socksrc2);

      [(MPTCPHandler *)self setSocksrc:0];
    }

    sockfd = [(MPTCPHandler *)self sockfd];
    v6 = MEMORY[0x277D85CD0];
    v7 = dispatch_source_create(MEMORY[0x277D85D28], sockfd, 0, MEMORY[0x277D85CD0]);
    [(MPTCPHandler *)self setSocksrc:v7];

    socksrc3 = [(MPTCPHandler *)self socksrc];

    if (socksrc3)
    {
      socksrc4 = [(MPTCPHandler *)self socksrc];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __27__MPTCPHandler_setupSockFD__block_invoke;
      handler[3] = &unk_27898A0C8;
      handler[4] = self;
      dispatch_source_set_event_handler(socksrc4, handler);

      socksrc5 = [(MPTCPHandler *)self socksrc];
      dispatch_resume(socksrc5);
LABEL_9:

      return;
    }

    v13 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = *__error();
      *buf = 67109120;
      v18 = v15;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "MPTCP: dispatch_source_create failed for advisory socket - error: %d", buf, 8u);
    }

    close([(MPTCPHandler *)self sockfd]);
    [(MPTCPHandler *)self setSockfd:0xFFFFFFFFLL];
  }
}

- (void)_performUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  [(MPTCPHandler *)self setupSockFD];
  v12 = 0;
  kernelCellAdvice = self->_kernelCellAdvice;
  LOBYTE(v12) = self->_kernelWifiAdvice;
  BYTE1(v12) = kernelCellAdvice;
  if ([(MPTCPHandler *)self sockfd]< 0)
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      *buf = 67109120;
      sockfd = [(MPTCPHandler *)self sockfd];
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "MPTCP: cannot perform update, sockfd %d", buf, 8u);
    }
  }

  else
  {
    v4 = send([(MPTCPHandler *)self sockfd], &v12, 4uLL, 0);
    if (v4 != 4)
    {
      v5 = v4;
      v6 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        sockfd2 = [(MPTCPHandler *)self sockfd];
        v9 = *__error();
        *buf = 67109632;
        sockfd = sockfd2;
        v15 = 2048;
        v16 = v5;
        v17 = 1024;
        v18 = v9;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "MPTCP: failure to send advisory, fd %d, return value %zd, error %d", buf, 0x18u);
      }
    }
  }
}

- (void)_setMPTCPAdvisoryWiFi:(int64_t)fi
{
  v8 = *MEMORY[0x277D85DE8];
  rnfAdvice = self->_rnfAdvice;
  if (rnfAdvice <= fi)
  {
    rnfAdvice = fi;
  }

  if (rnfAdvice == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2 * (rnfAdvice != 1);
  }

  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "MPTCP: wifi advice now set to %d", v7, 8u);
  }

  if (self->_kernelWifiAdvice != v5)
  {
    self->_kernelWifiAdvice = v5;
    [(MPTCPHandler *)self _performUpdate];
  }
}

- (void)_setMPTCPAdvisoryCell:(int)cell
{
  v7 = *MEMORY[0x277D85DE8];
  if ((cell - 3) > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_232816A40[cell - 3];
  }

  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "MPTCP: cell advice now set to %d", v6, 8u);
  }

  if (self->_kernelCellAdvice != v4)
  {
    self->_kernelCellAdvice = v4;
    [(MPTCPHandler *)self _performUpdate];
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MPTCPHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_12 != -1)
  {
    dispatch_once(&sharedInstance_pred_12, block);
  }

  v2 = sharedInstance_sharedInstance_12;

  return v2;
}

void __30__MPTCPHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_12;
  sharedInstance_sharedInstance_12 = v1;

  v3 = sharedInstance_sharedInstance_12;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[MPTCPHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end