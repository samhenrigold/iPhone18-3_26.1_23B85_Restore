@interface WFWiFiStateMonitor
- (NSString)identifier;
- (WFWiFiStateMonitor)initWithClient:(id)client handler:(id)handler;
- (id)description;
- (void)_asyncGetCurrentNetwork:(id)network;
- (void)_autoJoinStateChanged:(id)changed;
- (void)_carPlayNetworkTypeDidChange:(id)change;
- (void)_clientConnectionRestarted:(id)restarted;
- (void)_hostAPStateChanged:(id)changed;
- (void)_interfaceBecameAvailable:(id)available;
- (void)_linkDidChange:(id)change;
- (void)_linkQualityDidChange:(id)change;
- (void)_notifyStateChanged:(int64_t)changed newState:(int64_t)state;
- (void)_outrankStateDidChange:(id)change;
- (void)_powerStateDidChange:(id)change;
- (void)_registerInterfaceObserversForInterface:(id)interface;
- (void)_runManagerCallbackThread;
- (void)_spawnManagerCallbackThread;
- (void)_updateState:(id)state;
- (void)_updateWiFiUIState:(id)state;
- (void)_wifiUIFlagsStateChanged:(id)changed;
- (void)dealloc;
- (void)setState:(int64_t)state;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation WFWiFiStateMonitor

- (WFWiFiStateMonitor)initWithClient:(id)client handler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = WFWiFiStateMonitor;
  v9 = [(WFWiFiStateMonitor *)&v21 init];
  v10 = v9;
  if (!v9)
  {
    v11 = 0;
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_client, client);
  v11 = WFCopyProcessIdentifier();
  if (![(__CFString *)v11 isEqualToString:@"com.apple.TVRemote"])
  {
    v13 = dispatch_queue_create("WFWiFiStateMonitor-Queue", 0);
    v14 = *(v10 + 6);
    *(v10 + 6) = v13;

    if (*(v10 + 6))
    {
      v15 = dispatch_queue_create("WiFiUIStateFlags-Queue", 0);
      v16 = *(v10 + 7);
      *(v10 + 7) = v15;

      if (*(v10 + 7))
      {
        objc_storeStrong(v10 + 12, v11);
        *(v10 + 2) = 0;
        v17 = _Block_copy(handlerCopy);
        v18 = *(v10 + 3);
        *(v10 + 3) = v17;

        [v10 startMonitoring];
LABEL_7:
        v12 = v10;
        v10 = v12;
        goto LABEL_8;
      }
    }

LABEL_10:

    v10 = 0;
    goto LABEL_7;
  }

  v12 = [[WFMobileWiFiStateMonitor alloc] initWithHandler:handlerCopy];
LABEL_8:
  v19 = v12;

  return v19;
}

- (void)startMonitoring
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(WFWiFiStateMonitor *)self monitoring])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_273ECD000, v3, v5, "%@: already monitoring", buf, 0xCu);
    }
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__powerStateDidChange_ name:@"WFClientPowerStateChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__wifiUIFlagsStateChanged_ name:@"WFClientWiFiUIFlagsStateChangedNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__clientConnectionRestarted_ name:@"WFClientServerRestartedNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__interfaceBecameAvailable_ name:@"WFClientInterfaceAvailableNotification" object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel__autoJoinStateChanged_ name:@"WFClientUserAutoJoinStateChangedNotification" object:0];

    client = [(WFWiFiStateMonitor *)self client];

    if (client)
    {
      client2 = [(WFWiFiStateMonitor *)self client];
      interface = [client2 interface];
      [(WFWiFiStateMonitor *)self _registerInterfaceObserversForInterface:interface];

      [(WFWiFiStateMonitor *)self _updateState];

      [(WFWiFiStateMonitor *)self setMonitoring:1];
    }

    else
    {
      objc_initWeak(buf, self);
      internalQueue = [(WFWiFiStateMonitor *)self internalQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __37__WFWiFiStateMonitor_startMonitoring__block_invoke;
      v16[3] = &unk_279EBCDE8;
      objc_copyWeak(&v17, buf);
      v16[4] = self;
      dispatch_async(internalQueue, v16);

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }
}

void __37__WFWiFiStateMonitor_startMonitoring__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) _spawnManagerCallbackThread];
    v3 = [WFClient alloc];
    v4 = [*(a1 + 32) callbackRunLoop];
    v5 = [(WFClient *)v3 initWithCallbackRunLoop:v4];
    [WeakRetained setClient:v5];

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6)
    {
      v10 = v6;
      if (os_log_type_enabled(v10, v8))
      {
        v11 = *(a1 + 32);
        v12 = [v11 client];
        *buf = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_273ECD000, v10, v8, "%@: client %@", buf, 0x16u);
      }
    }

    v13 = [WeakRetained client];
    v14 = [v13 interface];
    [WeakRetained _registerInterfaceObserversForInterface:v14];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__WFWiFiStateMonitor_startMonitoring__block_invoke_15;
    block[3] = &unk_279EBCFE0;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __37__WFWiFiStateMonitor_startMonitoring__block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) _updateState];
  v2 = *(a1 + 32);

  return [v2 setMonitoring:1];
}

- (void)_spawnManagerCallbackThread
{
  v3 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel__runManagerCallbackThread object:0];
  [v3 start];
  [(WFWiFiStateMonitor *)self setCallbackThread:v3];
  [(WFWiFiStateMonitor *)self performSelector:sel_class onThread:v3 withObject:0 waitUntilDone:1];
}

- (void)_runManagerCallbackThread
{
  v3 = objc_autoreleasePoolPush();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  [currentThread setName:@"WFWiFiStateMonitor callback thread"];

  self->_callbackRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  port = [MEMORY[0x277CBEB00] port];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [port scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

  objc_autoreleasePoolPop(v3);
  currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
  [currentRunLoop2 run];
}

- (void)_registerInterfaceObserversForInterface:(id)interface
{
  v24 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    v20 = 138412546;
    selfCopy2 = self;
    v22 = 2112;
    v23 = interfaceCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%@: using interface %@", &v20, 0x16u);
  }

  if (!interfaceCopy)
  {
    v9 = WFLogForCategory(0);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9)
    {
      v13 = v9;
      if (os_log_type_enabled(v13, v11))
      {
        client = [(WFWiFiStateMonitor *)self client];
        v20 = 138412546;
        selfCopy2 = self;
        v22 = 2112;
        v23 = client;
        _os_log_impl(&dword_273ECD000, v13, v11, "%@: nil interface (client %@)", &v20, 0x16u);
      }
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__hostAPStateChanged_ name:@"WFInterfaceHostAPStateChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__linkDidChange_ name:@"WFInterfaceNetworkChangedNotification" object:interfaceCopy];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__linkQualityDidChange_ name:@"WFInterfaceLinkQualityNotification" object:interfaceCopy];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__outrankStateDidChange_ name:@"WFClientCellularOutrankWiFiNotification" object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__carPlayNetworkTypeDidChange_ name:@"WFInterfaceCarPlayNetworkTypeDidChangeNotification" object:0];
}

- (void)stopMonitoring
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(WFWiFiStateMonitor *)self monitoring])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    self->_state = 0;

    [(WFWiFiStateMonitor *)self setMonitoring:0];
  }

  else
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(3uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_273ECD000, v4, v6, "%@: not monitoring", &v8, 0xCu);
    }
  }
}

- (void)dealloc
{
  [(WFWiFiStateMonitor *)self stopMonitoring];
  callbackThread = [(WFWiFiStateMonitor *)self callbackThread];
  [callbackThread cancel];

  v4.receiver = self;
  v4.super_class = WFWiFiStateMonitor;
  [(WFWiFiStateMonitor *)&v4 dealloc];
}

- (void)_updateState:(id)state
{
  v24 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_273ECD000, v5, v7, "%@: updating state", buf, 0xCu);
  }

  client = [(WFWiFiStateMonitor *)self client];
  cInterface = [client cInterface];

  if (cInterface)
  {
    client2 = [(WFWiFiStateMonitor *)self client];

    if (client2)
    {
      if (_os_feature_enabled_impl())
      {
        [(WFWiFiStateMonitor *)self _updateWiFiUIState:stateCopy];
      }

      else
      {
        client3 = [(WFWiFiStateMonitor *)self client];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __35__WFWiFiStateMonitor__updateState___block_invoke;
        v20[3] = &unk_279EBE0B0;
        v20[4] = self;
        v21 = stateCopy;
        [client3 asyncPowered:v20];
      }

      goto LABEL_21;
    }

    v12 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(1uLL);
    v14 = v17;
    if (WFCurrentLogLevel(v17, v18) && v12 && os_log_type_enabled(v12, v14))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v16 = "%@: client is unavailable";
      goto LABEL_17;
    }
  }

  else
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) && v12 && os_log_type_enabled(v12, v14))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v16 = "%@: interface is unavailable";
LABEL_17:
      _os_log_impl(&dword_273ECD000, v12, v14, v16, buf, 0xCu);
    }
  }

  [(WFWiFiStateMonitor *)self setState:0];
  [(WFWiFiStateMonitor *)self setAssociatedToCarPlayOnly:0];
  if (stateCopy)
  {
    (*(stateCopy + 2))(stateCopy, [(WFWiFiStateMonitor *)self state]);
  }

LABEL_21:
}

void __35__WFWiFiStateMonitor__updateState___block_invoke(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: inside asyncPowered block, powered=%d", buf, 0x12u);
  }

  if (a2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__5;
    v21 = __Block_byref_object_dispose__5;
    v22 = 0;
    v9 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __35__WFWiFiStateMonitor__updateState___block_invoke_41;
    v16[3] = &unk_279EBE0D8;
    v16[4] = v9;
    v18 = buf;
    v17 = *(a1 + 40);
    [v9 _asyncGetCurrentNetwork:v16];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10 && os_log_type_enabled(v10, v12))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_273ECD000, v10, v12, "%@: power is off", buf, 0xCu);
    }

    [*(a1 + 32) setState:1];
    [*(a1 + 32) setLinkQuality:0];
    [*(a1 + 32) setAssociatedToCarPlayOnly:0];
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, [*(a1 + 32) state]);
    }
  }
}

void __35__WFWiFiStateMonitor__updateState___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v101 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(1uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
  {
    v12 = *(a1 + 32);
    *buf = 138412290;
    v96 = v12;
    _os_log_impl(&dword_273ECD000, v8, v10, "%@: inside _asyncGetCurrentNetwork block", buf, 0xCu);
  }

  v13 = [*(a1 + 32) currentNetwork];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v14 = WFLogForCategory(0);
  v15 = OSLogForWFLogLevel(1uLL);
  v16 = v15;
  if (WFCurrentLogLevel(v15, v17) && v14 && os_log_type_enabled(v14, v16))
  {
    v18 = *(a1 + 32);
    v19 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412802;
    v96 = v18;
    v97 = 2112;
    v98 = v19;
    v99 = 2112;
    v100 = v7;
    _os_log_impl(&dword_273ECD000, v14, v16, "%@: network %@ profile %@", buf, 0x20u);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if ([v7 carPlayNetworkType] == 1)
    {
      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(3uLL);
      v22 = v21;
      if (WFCurrentLogLevel(v21, v23) >= 3 && v20 && os_log_type_enabled(v20, v22))
      {
        v24 = *(a1 + 32);
        *buf = 138412290;
        v96 = v24;
        _os_log_impl(&dword_273ECD000, v20, v22, "%@: associated to CarPlay only network", buf, 0xCu);
      }

      [*(a1 + 32) setState:2];
      [*(a1 + 32) setAssociatedToCarPlayOnly:1];
      v25 = [*(a1 + 32) linkQuality];

      if (v25)
      {
        v26 = WFLogForCategory(0);
        v27 = OSLogForWFLogLevel(3uLL);
        v28 = v27;
        if (WFCurrentLogLevel(v27, v29) >= 3 && v26)
        {
          v30 = v26;
          if (os_log_type_enabled(v30, v28))
          {
            v31 = *(a1 + 32);
            v32 = [v31 linkQuality];
            *buf = 138412546;
            v96 = v31;
            v97 = 2112;
            v98 = v32;
            _os_log_impl(&dword_273ECD000, v30, v28, "%@: clearing out link quality='%@' due to CarPlay only network", buf, 0x16u);
          }
        }

        [*(a1 + 32) setLinkQuality:0];
      }

      goto LABEL_67;
    }

    [*(a1 + 32) setAssociatedToCarPlayOnly:0];
    v42 = [*(a1 + 32) linkQuality];
    if (!v42 || (v43 = v42, [*(a1 + 32) linkQuality], v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "ssid"), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "networkName"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v45, "isEqualToString:", v46), v46, v45, v44, v43, (v47 & 1) == 0))
    {
      v48 = WFLogForCategory(0);
      v49 = OSLogForWFLogLevel(1uLL);
      v50 = v49;
      if (WFCurrentLogLevel(v49, v51) && v48)
      {
        v52 = v48;
        if (os_log_type_enabled(v52, v50))
        {
          v53 = *(a1 + 32);
          v54 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          *buf = 138412546;
          v96 = v53;
          v97 = 2112;
          v98 = v54;
          _os_log_impl(&dword_273ECD000, v52, v50, "%@: creating link quality for network %@", buf, 0x16u);
        }
      }

      v55 = [v7 displayFriendlyName];
      if (!v55)
      {
        v55 = [*(*(*(a1 + 48) + 8) + 40) networkName];
      }

      v56 = [WFLinkQuality alloc];
      LODWORD(v57) = 1.0;
      v58 = [(WFLinkQuality *)v56 initWithSSID:v55 rssi:0 scaledRSSI:v57];
      [*(a1 + 32) setLinkQuality:v58];
    }

    v59 = [*(a1 + 32) client];
    v60 = [v59 isCellularOutrankingWiFi];

    if (v60)
    {
      v61 = WFLogForCategory(0);
      v62 = OSLogForWFLogLevel(1uLL);
      v63 = v62;
      if (WFCurrentLogLevel(v62, v64) && v61)
      {
        v65 = v61;
        if (os_log_type_enabled(v65, v63))
        {
          v66 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          *buf = 138412290;
          v96 = v66;
          _os_log_impl(&dword_273ECD000, v65, v63, "associated to '%@' but cellular is outranking WiFi", buf, 0xCu);
        }
      }

      [*(a1 + 32) setState:2];
      goto LABEL_67;
    }

    [*(a1 + 32) setState:4];
    v67 = *(*(*(a1 + 48) + 8) + 40);
    if (v67 && v13)
    {
      v68 = [v67 networkName];
      if (!v68)
      {
        goto LABEL_66;
      }

      v69 = v68;
      v70 = [v13 networkName];
      if (!v70)
      {

        goto LABEL_66;
      }

      v71 = v70;
      v72 = [*(*(*(a1 + 48) + 8) + 40) networkName];
      v73 = [v13 networkName];
      v74 = [v72 isEqual:v73];

      if (v74)
      {
LABEL_66:
        [*(a1 + 32) setCurrentNetwork:*(*(*(a1 + 48) + 8) + 40)];
LABEL_67:
        v92 = *(a1 + 40);
        if (v92)
        {
          (*(v92 + 16))(v92, [*(a1 + 32) state]);
        }

        goto LABEL_69;
      }

      v75 = WFLogForCategory(0);
      v76 = OSLogForWFLogLevel(1uLL);
      v77 = v76;
      if (WFCurrentLogLevel(v76, v78) && v75)
      {
        v79 = v75;
        if (os_log_type_enabled(v79, v77))
        {
          v80 = *(a1 + 32);
          v81 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          v82 = [v13 networkName];
          *buf = 138412802;
          v96 = v80;
          v97 = 2112;
          v98 = v81;
          v99 = 2112;
          v100 = v82;
          _os_log_impl(&dword_273ECD000, v79, v77, "%@: network changed (was %@, is %@), calling state change handler", buf, 0x20u);
        }
      }

      v83 = *(a1 + 32);
      v84 = 4;
    }

    else
    {
      if (!v67 || v13)
      {
        goto LABEL_66;
      }

      v85 = WFLogForCategory(0);
      v86 = OSLogForWFLogLevel(1uLL);
      v87 = v86;
      if (WFCurrentLogLevel(v86, v88) && v85)
      {
        v89 = v85;
        if (os_log_type_enabled(v89, v87))
        {
          v90 = *(a1 + 32);
          v91 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          *buf = 138412546;
          v96 = v90;
          v97 = 2112;
          v98 = v91;
          _os_log_impl(&dword_273ECD000, v89, v87, "%@: network changed to %@, calling state change handler", buf, 0x16u);
        }
      }

      v83 = *(a1 + 32);
      v84 = 3;
    }

    [v83 _notifyStateChanged:v84 newState:4];
    goto LABEL_66;
  }

  [*(a1 + 32) setAssociatedToCarPlayOnly:0];
  [*(a1 + 32) setCurrentNetwork:0];
  [*(a1 + 32) setLinkQuality:0];
  v33 = WFLogForCategory(0);
  v34 = OSLogForWFLogLevel(1uLL);
  v35 = v34;
  if (WFCurrentLogLevel(v34, v36) && v33)
  {
    v37 = v33;
    if (os_log_type_enabled(v37, v35))
    {
      v38 = *(a1 + 32);
      v39 = [v38 linkQuality];
      *buf = 138412546;
      v96 = v38;
      v97 = 2112;
      v98 = v39;
      _os_log_impl(&dword_273ECD000, v37, v35, "%@: no network, cleared out link quality %@", buf, 0x16u);
    }
  }

  v40 = [*(a1 + 32) client];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __35__WFWiFiStateMonitor__updateState___block_invoke_43;
  v93[3] = &unk_279EBE0B0;
  v41 = *(a1 + 40);
  v93[4] = *(a1 + 32);
  v94 = v41;
  [v40 asyncMISState:v93];

LABEL_69:
}

void __35__WFWiFiStateMonitor__updateState___block_invoke_43(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = *(a1 + 32);
    *buf = 138412546;
    v21 = v8;
    v22 = 1024;
    v23 = a2;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: inside asyncMISState block, enabled=%d", buf, 0x12u);
  }

  v9 = *(a1 + 32);
  if (a2)
  {
    [v9 setState:5];
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10 && os_log_type_enabled(v10, v12))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_273ECD000, v10, v12, "%@: not associated, MIS=1", buf, 0xCu);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, [*(a1 + 32) state]);
    }
  }

  else
  {
    v16 = [v9 client];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __35__WFWiFiStateMonitor__updateState___block_invoke_44;
    v18[3] = &unk_279EBE0B0;
    v17 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v17;
    [v16 asyncUserAutoJoinState:v18];
  }
}

void __35__WFWiFiStateMonitor__updateState___block_invoke_44(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = *(a1 + 32);
    v24 = 138412546;
    v25 = v8;
    v26 = 1024;
    LODWORD(v27) = a2;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: inside asyncUserAutoJoinState block, ajEnabled=%d", &v24, 0x12u);
  }

  v9 = [*(a1 + 32) currentNetwork];

  if (v9 && a2)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) && v10)
    {
      v14 = v10;
      if (os_log_type_enabled(v14, v12))
      {
        v15 = *(a1 + 32);
        v16 = [v15 currentNetwork];
        v24 = 138412546;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_273ECD000, v14, v12, "%@: became associated during _updateState, self.currentNetwork is not nil %@", &v24, 0x16u);
      }
    }

    v17 = 4;
  }

  else if (a2)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  [*(a1 + 32) setState:v17];
  v18 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(1uLL);
  v20 = v19;
  if (WFCurrentLogLevel(v19, v21) && v18 && os_log_type_enabled(v18, v20))
  {
    v22 = *(a1 + 32);
    v24 = 138412546;
    v25 = v22;
    v26 = 1024;
    LODWORD(v27) = a2;
    _os_log_impl(&dword_273ECD000, v18, v20, "%@: not associated, userAutoJoin state=%d", &v24, 0x12u);
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, [*(a1 + 32) state]);
  }
}

- (void)_updateWiFiUIState:(id)state
{
  v38 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  client = [(WFWiFiStateMonitor *)self client];
  cInterface = [client cInterface];

  if (cInterface)
  {
    wifiUIStateFlagsQueue = [(WFWiFiStateMonitor *)self wifiUIStateFlagsQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_2;
    block[3] = &unk_279EBE100;
    v26[2] = &v29;
    v26[0] = cInterface;
    v26[1] = self;
    dispatch_sync(wifiUIStateFlagsQueue, block);

    if ((v30[3] & 2) != 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__5;
      v36 = __Block_byref_object_dispose__5;
      v37 = 0;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_47;
      v21[3] = &unk_279EBE128;
      v21[4] = self;
      p_buf = &buf;
      v24 = &v29;
      v22 = stateCopy;
      [(WFWiFiStateMonitor *)self _asyncGetCurrentNetwork:v21];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(1uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = self;
        _os_log_impl(&dword_273ECD000, v8, v10, "%@: power is off", &buf, 0xCu);
      }

      [(WFWiFiStateMonitor *)self setState:1];
      [(WFWiFiStateMonitor *)self setLinkQuality:0];
      [(WFWiFiStateMonitor *)self setAssociatedToCarPlayOnly:0];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_50;
    v19[3] = &unk_279EBDA98;
    v19[4] = self;
    v20 = stateCopy;
    v18 = stateCopy;
    dispatch_async(MEMORY[0x277D85CD0], v19);

    v16 = v26;
  }

  else
  {
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) && v12 && os_log_type_enabled(v12, v14))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_273ECD000, v12, v14, "%@: wifi UI status is unavailable", &buf, 0xCu);
    }

    [(WFWiFiStateMonitor *)self setState:0];
    [(WFWiFiStateMonitor *)self setAssociatedToCarPlayOnly:0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke;
    v27[3] = &unk_279EBDA98;
    v16 = &v28;
    v27[4] = self;
    v28 = stateCopy;
    v17 = stateCopy;
    dispatch_async(MEMORY[0x277D85CD0], v27);
  }

  _Block_object_dispose(&v29, 8);
}

uint64_t __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) state];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

void __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) wifiUIStateFlags];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = *(a1 + 40);
    v7 = *(*(*(a1 + 48) + 8) + 24);
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_273ECD000, v2, v4, "%@: wifiuistateflags %lu", &v8, 0x16u);
  }
}

void __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v113 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) currentNetwork];
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(1uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
  {
    v13 = *(a1 + 32);
    v14 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412802;
    v108 = v13;
    v109 = 2112;
    v110 = v14;
    v111 = 2112;
    v112 = v7;
    _os_log_impl(&dword_273ECD000, v9, v11, "%@: network %@ profile %@", buf, 0x20u);
  }

  if (!*(*(*(a1 + 48) + 8) + 40) || (*(*(*(a1 + 56) + 8) + 24) & 4) == 0)
  {
    [*(a1 + 32) setAssociatedToCarPlayOnly:0];
    [*(a1 + 32) setCurrentNetwork:0];
    [*(a1 + 32) setLinkQuality:0];
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(1uLL);
    v17 = v16;
    if (WFCurrentLogLevel(v16, v18) && v15)
    {
      v19 = v15;
      if (os_log_type_enabled(v19, v17))
      {
        v20 = *(a1 + 32);
        v21 = [v20 linkQuality];
        *buf = 138412546;
        v108 = v20;
        v109 = 2112;
        v110 = v21;
        _os_log_impl(&dword_273ECD000, v19, v17, "%@: no network, cleared out link quality %@", buf, 0x16u);
      }
    }

    v22 = *(*(*(a1 + 56) + 8) + 24);
    if ((v22 & 8) != 0)
    {
      [*(a1 + 32) setState:5];
      v25 = WFLogForCategory(0);
      v26 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel(v26, v27) || !v25 || !os_log_type_enabled(v25, v26))
      {
        goto LABEL_64;
      }

      v28 = *(a1 + 32);
      *buf = 138412290;
      v108 = v28;
      v29 = "%@: not associated, MIS=1";
      v30 = v25;
      v31 = v26;
      v32 = 12;
    }

    else
    {
      v23 = *(a1 + 32);
      if ((v22 & 1) == 0)
      {
        v24 = 3;
LABEL_40:
        [v23 setState:v24];
        goto LABEL_65;
      }

      v48 = [v23 currentNetwork];
      if (v48)
      {
        v49 = *(*(*(a1 + 56) + 8) + 24);

        if ((v49 & 1) == 0)
        {
          v50 = WFLogForCategory(0);
          v51 = OSLogForWFLogLevel(1uLL);
          v52 = v51;
          if (WFCurrentLogLevel(v51, v53) && v50)
          {
            v54 = v50;
            if (os_log_type_enabled(v54, v52))
            {
              v55 = *(a1 + 32);
              v56 = [v55 currentNetwork];
              *buf = 138412546;
              v108 = v55;
              v109 = 2112;
              v110 = v56;
              _os_log_impl(&dword_273ECD000, v54, v52, "%@: became associated during _updateState, self.currentNetwork is not nil %@", buf, 0x16u);
            }
          }

          v23 = *(a1 + 32);
          v24 = 4;
          goto LABEL_40;
        }
      }

      [*(a1 + 32) setState:2];
      v25 = WFLogForCategory(0);
      v83 = OSLogForWFLogLevel(1uLL);
      if (!WFCurrentLogLevel(v83, v84) || !v25 || !os_log_type_enabled(v25, v83))
      {
LABEL_64:

        goto LABEL_65;
      }

      v85 = *(a1 + 32);
      v86 = (*(*(*(a1 + 56) + 8) + 24) & 1) == 0;
      *buf = 138412546;
      v108 = v85;
      v109 = 1024;
      LODWORD(v110) = v86;
      v29 = "%@: not associated, userAutoJoin state=%d";
      v30 = v25;
      v31 = v83;
      v32 = 18;
    }

    _os_log_impl(&dword_273ECD000, v30, v31, v29, buf, v32);
    goto LABEL_64;
  }

  if ([v7 carPlayNetworkType] == 1)
  {
    v33 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(3uLL);
    v35 = v34;
    if (WFCurrentLogLevel(v34, v36) >= 3 && v33 && os_log_type_enabled(v33, v35))
    {
      v37 = *(a1 + 32);
      *buf = 138412290;
      v108 = v37;
      _os_log_impl(&dword_273ECD000, v33, v35, "%@: associated to CarPlay only network", buf, 0xCu);
    }

    [*(a1 + 32) setState:2];
    [*(a1 + 32) setAssociatedToCarPlayOnly:1];
    v38 = [*(a1 + 32) linkQuality];

    if (v38)
    {
      v39 = WFLogForCategory(0);
      v40 = OSLogForWFLogLevel(3uLL);
      v41 = v40;
      if (WFCurrentLogLevel(v40, v42) >= 3 && v39)
      {
        v43 = v39;
        if (os_log_type_enabled(v43, v41))
        {
          v44 = *(a1 + 32);
          v45 = [v44 linkQuality];
          *buf = 138412546;
          v108 = v44;
          v109 = 2112;
          v110 = v45;
          _os_log_impl(&dword_273ECD000, v43, v41, "%@: clearing out link quality='%@' due to CarPlay only network", buf, 0x16u);
        }
      }

      [*(a1 + 32) setLinkQuality:0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_48;
    block[3] = &unk_279EBDA98;
    v46 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v106 = v46;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v47 = v106;
LABEL_58:

    goto LABEL_65;
  }

  [*(a1 + 32) setAssociatedToCarPlayOnly:0];
  v57 = [*(a1 + 32) linkQuality];
  if (!v57 || (v58 = v57, [*(a1 + 32) linkQuality], v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v59, "ssid"), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "networkName"), v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v60, "isEqualToString:", v61), v61, v60, v59, v58, (v62 & 1) == 0))
  {
    v63 = WFLogForCategory(0);
    v64 = OSLogForWFLogLevel(1uLL);
    v65 = v64;
    if (WFCurrentLogLevel(v64, v66) && v63)
    {
      v67 = v63;
      if (os_log_type_enabled(v67, v65))
      {
        v68 = *(a1 + 32);
        v69 = [*(*(*(a1 + 48) + 8) + 40) networkName];
        *buf = 138412546;
        v108 = v68;
        v109 = 2112;
        v110 = v69;
        _os_log_impl(&dword_273ECD000, v67, v65, "%@: creating link quality for network %@", buf, 0x16u);
      }
    }

    v70 = [v7 displayFriendlyName];
    if (!v70)
    {
      v70 = [*(*(*(a1 + 48) + 8) + 40) networkName];
    }

    v71 = [WFLinkQuality alloc];
    LODWORD(v72) = 1.0;
    v73 = [(WFLinkQuality *)v71 initWithSSID:v70 rssi:0 scaledRSSI:v72];
    [*(a1 + 32) setLinkQuality:v73];
  }

  v74 = [*(a1 + 32) client];
  v75 = [v74 isCellularOutrankingWiFi];

  if (v75)
  {
    v76 = WFLogForCategory(0);
    v77 = OSLogForWFLogLevel(1uLL);
    v78 = v77;
    if (WFCurrentLogLevel(v77, v79) && v76)
    {
      v80 = v76;
      if (os_log_type_enabled(v80, v78))
      {
        v81 = [*(*(*(a1 + 48) + 8) + 40) networkName];
        *buf = 138412290;
        v108 = v81;
        _os_log_impl(&dword_273ECD000, v80, v78, "associated to '%@' but cellular is outranking WiFi", buf, 0xCu);
      }
    }

    [*(a1 + 32) setState:2];
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_49;
    v103[3] = &unk_279EBDA98;
    v82 = *(a1 + 40);
    v103[4] = *(a1 + 32);
    v104 = v82;
    dispatch_async(MEMORY[0x277D85CD0], v103);
    v47 = v104;
    goto LABEL_58;
  }

  [*(a1 + 32) setState:4];
  v87 = *(*(*(a1 + 48) + 8) + 40);
  if (v87)
  {
    if (v8)
    {
      v88 = [v87 networkName];
      if (v88)
      {
        v89 = v88;
        v90 = [v8 networkName];
        if (v90)
        {
          v91 = v90;
          v92 = [*(*(*(a1 + 48) + 8) + 40) networkName];
          v93 = [v8 networkName];
          v94 = [v92 isEqual:v93];

          if ((v94 & 1) == 0)
          {
            v95 = WFLogForCategory(0);
            v96 = OSLogForWFLogLevel(1uLL);
            v97 = v96;
            if (WFCurrentLogLevel(v96, v98) && v95)
            {
              v99 = v95;
              if (os_log_type_enabled(v99, v97))
              {
                v100 = *(a1 + 32);
                v101 = [*(*(*(a1 + 48) + 8) + 40) networkName];
                v102 = [v8 networkName];
                *buf = 138412802;
                v108 = v100;
                v109 = 2112;
                v110 = v101;
                v111 = 2112;
                v112 = v102;
                _os_log_impl(&dword_273ECD000, v99, v97, "%@: network changed (was %@, is %@), calling state change handler", buf, 0x20u);
              }
            }

            [*(a1 + 32) _notifyStateChanged:4 newState:4];
          }
        }

        else
        {
        }
      }
    }
  }

  [*(a1 + 32) setCurrentNetwork:*(*(*(a1 + 48) + 8) + 40)];
LABEL_65:
}

uint64_t __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_48(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) state];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

uint64_t __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_49(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) state];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

uint64_t __41__WFWiFiStateMonitor__updateWiFiUIState___block_invoke_50(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) state];
    v3 = *(v1 + 16);

    return v3(v1, v2);
  }

  return result;
}

- (void)_asyncGetCurrentNetwork:(id)network
{
  networkCopy = network;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke;
  v7[3] = &unk_279EBD9A8;
  v7[4] = self;
  v8 = networkCopy;
  v6 = networkCopy;
  dispatch_async(v5, v7);
}

void __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) client];
  v3 = [v2 interface];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke_2;
  v4[3] = &unk_279EBE150;
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 40);
  [v3 asyncCurrentNetwork:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke_3;
  block[3] = &unk_279EBDA20;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __46__WFWiFiStateMonitor__asyncGetCurrentNetwork___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = *(a1 + 32);
    v11 = 138412546;
    v12 = WeakRetained;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_273ECD000, v3, v5, "%@: inside asyncCurrentNetwork block. network=%@", &v11, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) scanResult];
  v10 = [*(a1 + 32) matchingKnownNetworkProfile];
  (*(v8 + 16))(v8, v9, v10);
}

- (void)setState:(int64_t)state
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__WFWiFiStateMonitor_setState___block_invoke;
  v4[3] = &unk_279EBCFB8;
  v4[4] = self;
  v4[5] = state;
  dispatch_sync(internalQueue, v4);
}

void __31__WFWiFiStateMonitor_setState___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7))
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v2 == v3)
  {
    if (v9)
    {
      v10 = v4;
      if (os_log_type_enabled(v10, v6))
      {
        v11 = *(a1 + 32);
        v12 = WFWiFiStateMonitorStringForState(*(v11 + 16));
        v19 = 138412546;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_273ECD000, v10, v6, "%@: no change to state (%@)", &v19, 0x16u);
      }
    }
  }

  else
  {
    if (v9)
    {
      v13 = v4;
      if (os_log_type_enabled(v13, v6))
      {
        v14 = *(a1 + 32);
        v15 = WFWiFiStateMonitorStringForState(*(v14 + 16));
        v16 = WFWiFiStateMonitorStringForState(*(a1 + 40));
        v19 = 138412802;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_273ECD000, v13, v6, "%@: old state %@ new state %@", &v19, 0x20u);
      }
    }

    v17 = *(a1 + 32);
    v18 = *(v17 + 16);
    *(v17 + 16) = *(a1 + 40);
    [*(a1 + 32) _notifyStateChanged:v18 newState:?];
  }
}

- (void)_notifyStateChanged:(int64_t)changed newState:(int64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  handler = [(WFWiFiStateMonitor *)self handler];

  if (handler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__WFWiFiStateMonitor__notifyStateChanged_newState___block_invoke;
    block[3] = &unk_279EBE178;
    block[4] = self;
    block[5] = changed;
    block[6] = state;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_273ECD000, v8, v10, "%@: handler is nil, can't call state changed handler", buf, 0xCu);
    }
  }
}

void __51__WFWiFiStateMonitor__notifyStateChanged_newState___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) handler];

  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6))
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v2)
  {
    if (v8 && os_log_type_enabled(v3, v5))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_273ECD000, v3, v5, "%@: calling state changed handler", &v11, 0xCu);
    }

    v3 = [*(a1 + 32) handler];
    (*(v3 + 16))(v3, *(a1 + 40), *(a1 + 48));
  }

  else if (v8 && os_log_type_enabled(v3, v5))
  {
    v10 = *(a1 + 32);
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_273ECD000, v3, v5, "%@: handler is nil, can't call state changed handler", &v11, 0xCu);
  }
}

- (void)_powerStateDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      object = [changeCopy object];
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = object;
      _os_log_impl(&dword_273ECD000, v9, v7, "%@: (sender: %@) power state changed", &v11, 0x16u);
    }
  }

  [(WFWiFiStateMonitor *)self _updateState];
}

- (void)_wifiUIFlagsStateChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      object = [changedCopy object];
      v11 = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = object;
      _os_log_impl(&dword_273ECD000, v9, v7, "%@: (sender: %@) wifi ui flags state changed", &v11, 0x16u);
    }
  }

  if (_os_feature_enabled_impl())
  {
    [(WFWiFiStateMonitor *)self _updateWiFiUIState:0];
  }
}

- (void)_linkDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: link change", &v8, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
}

- (void)_linkQualityDidChange:(id)change
{
  v24 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  callbackThread = [(WFWiFiStateMonitor *)self callbackThread];

  if (currentThread == callbackThread)
  {
    userInfo = [changeCopy userInfo];
    v8 = [userInfo objectForKey:@"WFInterfaceLinkQualityKey"];
    v9 = [v8 copy];
    linkQuality = self->_linkQuality;
    self->_linkQuality = v9;

    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11)
    {
      v15 = v11;
      if (os_log_type_enabled(v15, v13))
      {
        linkQuality = [(WFWiFiStateMonitor *)self linkQuality];
        v17 = WFWiFiStateMonitorStringForState([(WFWiFiStateMonitor *)self state]);
        v18 = 138412802;
        selfCopy = self;
        v20 = 2112;
        v21 = linkQuality;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_273ECD000, v15, v13, "%@: link quality changed %@ (current state %@)", &v18, 0x20u);
      }
    }
  }
}

- (void)_clientConnectionRestarted:(id)restarted
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: client connection restarted", buf, 0xCu);
  }

  state = [(WFWiFiStateMonitor *)self state];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__WFWiFiStateMonitor__clientConnectionRestarted___block_invoke;
  v9[3] = &unk_279EBE1A0;
  v9[4] = self;
  v9[5] = state;
  [(WFWiFiStateMonitor *)self _updateState:v9];
}

uint64_t __49__WFWiFiStateMonitor__clientConnectionRestarted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 state];

  return [v1 _notifyStateChanged:v2 newState:v3];
}

- (void)_hostAPStateChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: host ap state change", &v8, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
}

- (void)_interfaceBecameAvailable:(id)available
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: interface became available", buf, 0xCu);
  }

  state = [(WFWiFiStateMonitor *)self state];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__WFWiFiStateMonitor__interfaceBecameAvailable___block_invoke;
  v11[3] = &unk_279EBE1A0;
  v11[4] = self;
  v11[5] = state;
  [(WFWiFiStateMonitor *)self _updateState:v11];
  client = [(WFWiFiStateMonitor *)self client];
  interface = [client interface];
  [(WFWiFiStateMonitor *)self _registerInterfaceObserversForInterface:interface];
}

uint64_t __48__WFWiFiStateMonitor__interfaceBecameAvailable___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 state];

  return [v1 _notifyStateChanged:v2 newState:v3];
}

- (void)_autoJoinStateChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: auto join state changed", &v8, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
}

- (void)_outrankStateDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: cellular outrank state changed", &v8, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
}

- (void)_carPlayNetworkTypeDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_273ECD000, v4, v6, "%@: car play network type did change", &v8, 0xCu);
  }

  [(WFWiFiStateMonitor *)self _updateState];
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    bundleIdentifier2 = identifier;
  }

  else
  {
    bundleIdentifier = [(WFWiFiStateMonitor *)self bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [(WFWiFiStateMonitor *)self bundleIdentifier];
    }

    else
    {
      bundleIdentifier2 = @"UNKNOWN";
    }
  }

  return bundleIdentifier2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFWiFiStateMonitor *)self identifier];
  v7 = WFWiFiStateMonitorStringForState([(WFWiFiStateMonitor *)self state]);
  currentNetwork = [(WFWiFiStateMonitor *)self currentNetwork];
  networkName = [currentNetwork networkName];
  if (networkName)
  {
    currentNetwork2 = [(WFWiFiStateMonitor *)self currentNetwork];
    networkName2 = [currentNetwork2 networkName];
    v12 = [v3 stringWithFormat:@"<%@ : %p identifier='%@' state='%@' network='%@'>", v5, self, identifier, v7, networkName2];
  }

  else
  {
    v12 = [v3 stringWithFormat:@"<%@ : %p identifier='%@' state='%@' network='%@'>", v5, self, identifier, v7, &stru_2882E4AD8];
  }

  return v12;
}

@end