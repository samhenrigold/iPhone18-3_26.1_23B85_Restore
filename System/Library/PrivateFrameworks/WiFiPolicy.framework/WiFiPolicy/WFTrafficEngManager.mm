@interface WFTrafficEngManager
- (BOOL)__configureRapportDiscoveryClient;
- (WFTrafficEngManager)initWithTrafficEngDelegate:(id)delegate;
- (id)__collectCriticalAppInfo;
- (void)__activateDiscovery;
- (void)__configureRapportSessionClient:(id)client;
- (void)__invalidateDiscovery;
- (void)__invalidateSession;
- (void)__registerCallbacksAndActivate;
- (void)__registerRequestHandler;
- (void)__requestCriticalAppInfo:(id)info completionBlock:(id)block;
- (void)__sendEventToPeers;
- (void)__sendPeriodicEvent:(id)event;
- (void)cleanup;
- (void)dealloc;
@end

@implementation WFTrafficEngManager

- (WFTrafficEngManager)initWithTrafficEngDelegate:(id)delegate
{
  v20 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = WFTrafficEngManager;
  v5 = [(WFTrafficEngManager *)&v18 init];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String = [v7 UTF8String];
    *buf = 136446210;
    *&buf[4] = uTF8String;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if (!v5)
  {
    [WFTrafficEngManager initWithTrafficEngDelegate:buf];
LABEL_18:
    v11 = *buf;
    goto LABEL_12;
  }

  v9 = dispatch_queue_create("com.apple.wifi.trafficEngineering", 0);
  traffic_engr_queue = v5->_traffic_engr_queue;
  v5->_traffic_engr_queue = v9;

  if (!v5->_traffic_engr_queue)
  {
    [WFTrafficEngManager initWithTrafficEngDelegate:buf];
    goto LABEL_18;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [(WFTrafficEngManager *)v5 setTrafficEngDelegate:delegateCopy];
    goto LABEL_13;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Invalid trafficEngDelegate", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v11, "UTF8String")];
    uTF8String2 = [v12 UTF8String];
    *buf = 136446210;
    *&buf[4] = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

LABEL_12:

  v5 = 0;
LABEL_13:
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v14, "UTF8String")];
    uTF8String3 = [v15 UTF8String];
    *buf = 136446210;
    *&buf[4] = uTF8String3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  return v5;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager dealloc]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  traffic_engr_queue = self->_traffic_engr_queue;
  if (traffic_engr_queue)
  {
    self->_traffic_engr_queue = 0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager dealloc]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v9.receiver = self;
  v9.super_class = WFTrafficEngManager;
  [(WFTrafficEngManager *)&v9 dealloc];
}

- (BOOL)__configureRapportDiscoveryClient
{
  v49 = *MEMORY[0x277D85DE8];
  self->_configured = 0;
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __configureRapportDiscoveryClient]"];
  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = v3;
    v8 = [v6 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    v9 = v8;
    uTF8String = [v8 UTF8String];
    *buf = 136446210;
    v48 = uTF8String;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Rapport discovery session Started", "-[WFTrafficEngManager __configureRapportDiscoveryClient]"];
  v12 = MEMORY[0x277D86220];
  v13 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = v11;
    v16 = [v14 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v11, "UTF8String")];
    v17 = v16;
    uTF8String2 = [v16 UTF8String];
    *buf = 136446210;
    v48 = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  if (objc_opt_class())
  {
    v19 = objc_alloc_init(MEMORY[0x277D44158]);
    discoveryClient = self->_discoveryClient;
    self->_discoveryClient = v19;
  }

  v21 = self->_discoveryClient;
  if (v21)
  {
    [(RPCompanionLinkClient *)v21 setDispatchQueue:self->_traffic_engr_queue];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke;
    v44[3] = &unk_2789C68F8;
    objc_copyWeak(&v45, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setInvalidationHandler:v44];
    [(RPCompanionLinkClient *)self->_discoveryClient setControlFlags:[(RPCompanionLinkClient *)self->_discoveryClient controlFlags]| 0x801006];
    [(RPCompanionLinkClient *)self->_discoveryClient setTargetUserSession:1];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke_41;
    v42[3] = &unk_2789C7808;
    objc_copyWeak(&v43, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceFoundHandler:v42];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke_46;
    v40[3] = &unk_2789C7808;
    objc_copyWeak(&v41, &location);
    [(RPCompanionLinkClient *)self->_discoveryClient setDeviceLostHandler:v40];
    [(WFTrafficEngManager *)self __activateDiscovery];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Rapport discovery session Ended", "-[WFTrafficEngManager __configureRapportDiscoveryClient]"];
    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x277CCACA8];
      v26 = v22;
      v27 = [v25 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v22, "UTF8String")];
      v28 = v27;
      uTF8String3 = [v27 UTF8String];
      *buf = 136446210;
      v48 = uTF8String3;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }

    self->_configured = 1;
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
  }

  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __configureRapportDiscoveryClient]"];
  v31 = MEMORY[0x277D86220];
  v32 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v33 = MEMORY[0x277CCACA8];
    v34 = v30;
    v35 = [v33 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v30, "UTF8String")];
    v36 = v35;
    uTF8String4 = [v35 UTF8String];
    *buf = 136446210;
    v48 = uTF8String4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  configured = self->_configured;
  objc_destroyWeak(&location);
  return configured;
}

void __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Rapport discovery session invalidated", "-[WFTrafficEngManager __configureRapportDiscoveryClient]_block_invoke"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
    *buf = 136446210;
    v6 = [v3 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __invalidateDiscovery];
}

void __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke_41(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%s Rapport discovery session found device:%@", "-[WFTrafficEngManager __configureRapportDiscoveryClient]_block_invoke", v4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v5, "UTF8String")];
    *buf = 136446210;
    v9 = [v6 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __configureRapportSessionClient:v4];
}

void __56__WFTrafficEngManager___configureRapportDiscoveryClient__block_invoke_46(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Rapport discovery session lost device:%@", "-[WFTrafficEngManager __configureRapportDiscoveryClient]_block_invoke", a2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    v7 = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __tearDownRapportDataSession];
}

- (void)__activateDiscovery
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __activateDiscovery]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  [(WFTrafficEngManager *)self __registerCallbacksAndActivate];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __activateDiscovery]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v5, "UTF8String")];
    uTF8String2 = [v6 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }
}

- (void)__registerCallbacksAndActivate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __registerCallbacksAndActivate]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  traffic_engr_queue = self->_traffic_engr_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(traffic_engr_queue, block);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __registerCallbacksAndActivate]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }
}

uint64_t __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) __registerRequestHandler];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke_2;
  v5[3] = &unk_2789C73D0;
  v5[4] = v2;
  return [v3 activateWithCompletion:v5];
}

void __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Activation of rapport disovery client failed, error: %@", "-[WFTrafficEngManager __registerCallbacksAndActivate]_block_invoke_2", a2];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
      *buf = 136446210;
      v8 = [v3 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke_56;
    v6[3] = &unk_2789C7830;
    v6[4] = v4;
    [v5 registerEventID:@"com.apple.wifi.trafficeng.event" options:0 handler:v6];
  }
}

void __53__WFTrafficEngManager___registerCallbacksAndActivate__block_invoke_56(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) trafficEngDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) trafficEngDelegate];
    [v5 handleCriticalAppEvent:v6];
  }
}

- (void)__registerRequestHandler
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __registerRequestHandler]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  discoveryClient = self->_discoveryClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WFTrafficEngManager___registerRequestHandler__block_invoke;
  v9[3] = &unk_2789C7858;
  v9[4] = self;
  [(RPCompanionLinkClient *)discoveryClient registerRequestID:@"com.apple.wifi.trafficEngineering" options:0 handler:v9];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __registerRequestHandler]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }
}

void __47__WFTrafficEngManager___registerRequestHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v5 = [*(a1 + 32) trafficEngDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) trafficEngDelegate];
    v8 = [v7 retrieveCurrentLinkHealth];

    (*(v9 + 2))(v9, v8, 0, 0);
  }
}

- (void)__invalidateDiscovery
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __invalidateDiscovery]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  [(WFTrafficEngManager *)self __tearDownRapportDataSession];
  [(RPCompanionLinkClient *)self->_discoveryClient invalidate];
  discoveryClient = self->_discoveryClient;
  self->_discoveryClient = 0;

  self->_configured = 0;
  [(WFTrafficEngManager *)self cleanup];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __invalidateDiscovery]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }
}

- (void)cleanup
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager cleanup]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  discoveryClient = self->_discoveryClient;
  self->_discoveryClient = 0;

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager cleanup]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    uTF8String2 = [v7 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }
}

- (void)__configureRapportSessionClient:(id)client
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __configureRapportSessionClient:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __configureRapportSessionClient:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v5, "UTF8String")];
    uTF8String2 = [v6 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }
}

- (void)__invalidateSession
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __invalidateSession]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v3 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __invalidateSession]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v4, "UTF8String")];
    uTF8String2 = [v5 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }
}

- (void)__sendEventToPeers
{
  v13 = *MEMORY[0x277D85DE8];
  trafficEngDelegate = [(WFTrafficEngManager *)self trafficEngDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    trafficEngDelegate2 = [(WFTrafficEngManager *)self trafficEngDelegate];
    retrieveEventDetails = [trafficEngDelegate2 retrieveEventDetails];

    if (retrieveEventDetails)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = retrieveEventDetails;
      v9 = [v7 stringWithFormat:@"[TrafficEngineering]: EventData %@", v8];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v9, "UTF8String")];
        *buf = 136446210;
        uTF8String = [v10 UTF8String];
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
      }

      [(WFTrafficEngManager *)self __sendPeriodicEvent:v8];
    }
  }
}

- (void)__sendPeriodicEvent:(id)event
{
  v22 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  activeDevices = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
  v6 = [activeDevices count];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    activeDevices2 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
    v8 = [activeDevices2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(activeDevices2);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          traffic_engr_queue = self->_traffic_engr_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __43__WFTrafficEngManager___sendPeriodicEvent___block_invoke;
          block[3] = &unk_2789C6C70;
          block[4] = self;
          block[5] = v12;
          v15 = eventCopy;
          dispatch_async(traffic_engr_queue, block);

          ++v11;
        }

        while (v9 != v11);
        v9 = [activeDevices2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [WFTrafficEngManager __sendPeriodicEvent:?];
    activeDevices2 = v20;
  }
}

void __55__WFTrafficEngManager___sendKeepAliveEvent_dictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[TrafficEngineering]: Failed to send event %@", a2];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
      *buf = 136446210;
      v5 = [v3 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }
}

- (void)__requestCriticalAppInfo:(id)info completionBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  blockCopy = block;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __requestCriticalAppInfo:completionBlock:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v7, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v8 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  if (objc_opt_class())
  {
    v9 = objc_alloc_init(MEMORY[0x277D44158]);
    v10 = v9;
    if (v9)
    {
      [v9 setControlFlags:{objc_msgSend(v9, "controlFlags") | 0x1004}];
      [v10 setDestinationDevice:infoCopy];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke;
      v20[3] = &unk_2789C6630;
      v21 = infoCopy;
      [v10 setInvalidationHandler:v20];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke_72;
      v17 = &unk_2789C78A8;
      v19 = blockCopy;
      v10 = v10;
      v18 = v10;
      [v10 activateWithCompletion:&v14];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __requestCriticalAppInfo:completionBlock:]", v14, v15, v16, v17];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v11, "UTF8String")];
    uTF8String2 = [v12 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }
}

void __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Session client with device %@ invalidated", "-[WFTrafficEngManager __requestCriticalAppInfo:completionBlock:]_block_invoke", *(a1 + 32)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v1, "UTF8String")];
    *buf = 136446210;
    v4 = [v2 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }
}

void __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke_72(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Session client falied to activate, error: %@", "-[WFTrafficEngManager __requestCriticalAppInfo:completionBlock:]_block_invoke", a2];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
      *buf = 136446210;
      v12 = [v4 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *MEMORY[0x277D44258];
    v10 = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__WFTrafficEngManager___requestCriticalAppInfo_completionBlock___block_invoke_77;
    v7[3] = &unk_2789C7880;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 sendRequestID:@"com.apple.wifi.trafficEngineering" request:MEMORY[0x277CBEC10] options:v5 responseHandler:v7];
  }
}

- (id)__collectCriticalAppInfo
{
  v91 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enter %s", "-[WFTrafficEngManager __collectCriticalAppInfo]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v2, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v3 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  group = dispatch_group_create();
  v4 = MEMORY[0x277CCACA8];
  activeDevices = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
  v6 = [v4 stringWithFormat:@"Number of Peers %lu", objc_msgSend(activeDevices, "count")];

  v7 = MEMORY[0x277D86220];
  v8 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = v6;
    v11 = [v9 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v6, "UTF8String")];
    v12 = v11;
    uTF8String2 = [v11 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  activeDevices2 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
  v15 = [activeDevices2 count] == 0;

  if (v15)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"No active clients, Returning"];
    v51 = MEMORY[0x277D86220];
    v52 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v53 = MEMORY[0x277CCACA8];
      v54 = v31;
      v55 = [v53 stringWithFormat:@"[WiFiPolicy] %s", -[NSObject UTF8String](v31, "UTF8String")];
      v56 = v55;
      uTF8String3 = [v55 UTF8String];
      *buf = 136446210;
      uTF8String = uTF8String3;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
    }
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    activeDevices3 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
    v17 = [activeDevices3 countByEnumeratingWithState:&v66 objects:v90 count:16];
    if (v17)
    {
      v58 = 0;
      v18 = *v67;
      do
      {
        v19 = 0;
        v58 += v17;
        do
        {
          if (*v67 != v18)
          {
            objc_enumerationMutation(activeDevices3);
          }

          v20 = *(*(&v66 + 1) + 8 * v19);
          dispatch_group_enter(group);
          traffic_engr_queue = self->_traffic_engr_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __47__WFTrafficEngManager___collectCriticalAppInfo__block_invoke;
          block[3] = &unk_2789C78F8;
          block[4] = self;
          block[5] = v20;
          v65 = &v70;
          v63 = v60;
          v64 = group;
          dispatch_async(traffic_engr_queue, block);

          ++v19;
        }

        while (v17 != v19);
        v17 = [activeDevices3 countByEnumeratingWithState:&v66 objects:v90 count:16];
      }

      while (v17);
    }

    else
    {
      v58 = 0;
    }

    v22 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(group, v22))
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d Sec timeout waiting for Critical App Info from peers", 60];
      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = v23;
        v28 = [v26 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v23, "UTF8String")];
        v29 = v28;
        uTF8String4 = [v28 UTF8String];
        *buf = 136446210;
        uTF8String = uTF8String4;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
      }
    }

    v31 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/WiFiPolicy/frameworks/Sources/TrafficEngineering/WFTrafficEngManager.m"];
      lastPathComponent = [v33 lastPathComponent];
      v35 = lastPathComponent;
      uTF8String5 = [lastPathComponent UTF8String];
      activeDevices4 = [(RPCompanionLinkClient *)self->_discoveryClient activeDevices];
      v38 = [activeDevices4 count];
      v39 = v71[3];
      *buf = 141559810;
      uTF8String = 1752392040;
      v76 = 2080;
      v77 = uTF8String5;
      v78 = 2160;
      v79 = 1752392040;
      v80 = 1024;
      v81 = 384;
      v82 = 2048;
      v83 = v38;
      v84 = 2048;
      v85 = v58;
      v86 = 2048;
      v87 = v39;
      v88 = 2112;
      v89 = v60;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[TrafficEngineering] (%{mask.hash}s:%{mask.hash}d) active peers %lu, requested peers %lu,  responses %lu, diagnostics log %@", buf, 0x4Eu);

      v31 = MEMORY[0x277D86220];
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v41 = [v60 copy];
  objc_sync_exit(selfCopy);

  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leave %s", "-[WFTrafficEngManager __collectCriticalAppInfo]"];
  v43 = MEMORY[0x277D86220];
  v44 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v45 = MEMORY[0x277CCACA8];
    v46 = v42;
    v47 = [v45 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v42, "UTF8String")];
    v48 = v47;
    uTF8String6 = [v47 UTF8String];
    *buf = 136446210;
    uTF8String = uTF8String6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
  }

  _Block_object_dispose(&v70, 8);

  return v41;
}

void __47__WFTrafficEngManager___collectCriticalAppInfo__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WFTrafficEngManager___collectCriticalAppInfo__block_invoke_2;
  v9[3] = &unk_2789C78D0;
  v12 = *(a1 + 64);
  v4 = *(a1 + 48);
  v8 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  [v3 __requestCriticalAppInfo:v2 completionBlock:v9];
}

void __47__WFTrafficEngManager___collectCriticalAppInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    ++*(*(*(a1 + 64) + 8) + 24);
    [*(a1 + 40) addObject:v3];
    v5 = [*(a1 + 40) count];
    objc_sync_exit(v4);

    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 48) model];
    v8 = [v6 stringWithFormat:@"%s Response from peer %@: %@, total responses %lu", "-[WFTrafficEngManager __collectCriticalAppInfo]_block_invoke_2", v7, v3, v5];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v8, "UTF8String")];
      *buf = 136446210;
      v11 = [v9 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)initWithTrafficEngDelegate:(void *)a1 .cold.1(void *a1)
{
  v3 = [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s Dispatch Queue Creation Failed", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = [*(v1 + 3240) stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    [v4 UTF8String];
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v5, "%{public}s", v6, v7, v8, v9, v10, v11);
  }

  *a1 = v3;
}

- (void)initWithTrafficEngDelegate:(void *)a1 .cold.2(void *a1)
{
  v3 = [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s self alloc failed", "-[WFTrafficEngManager initWithTrafficEngDelegate:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = [*(v1 + 3240) stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    [v4 UTF8String];
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v5, "%{public}s", v6, v7, v8, v9, v10, v11);
  }

  *a1 = v3;
}

- (void)__sendPeriodicEvent:(void *)a1 .cold.1(void *a1)
{
  v3 = [OUTLINED_FUNCTION_0_2() stringWithFormat:@"No active clients, Returning"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = [*(v1 + 3240) stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v3, "UTF8String")];
    [v4 UTF8String];
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v5, "%{public}s", v6, v7, v8, v9, v10, v11);
  }

  *a1 = v3;
}

@end