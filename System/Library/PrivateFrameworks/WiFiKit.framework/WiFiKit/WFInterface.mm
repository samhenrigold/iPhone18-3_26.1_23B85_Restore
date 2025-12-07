@interface WFInterface
- (BOOL)hasPrimaryIPConfiguration;
- (BOOL)hasValidIPAddress;
- (BOOL)isReadyForConnectionVelocityTest;
- (NSArray)deviceScanChannels;
- (NSArray)deviceScanChannelsPerCurLocale;
- (NSString)interfaceName;
- (WFClient)wifiClient;
- (WFInterface)initWithDevice:(__WiFiDeviceClient *)device coreWiFiInterface:(id)interface interfaceName:(id)name;
- (WFNetworkScanRecord)currentNetwork;
- (id)IPv4ARPResolvedIPAddress;
- (id)IPv4Addresses;
- (id)IPv4RouterAddress;
- (id)IPv4SubnetMasks;
- (id)IPv6Addresses;
- (id)IPv6RouterAddress;
- (id)_currentInterface;
- (id)_debugLQMString:(id)string;
- (id)currentKnownNetworkProfile;
- (void)_carPlayNetworkTypeChangedCallback:(int)callback;
- (void)_currentNetworkDidChangeWithReason:(unint64_t)reason previousNetwork:(id)network;
- (void)_hostAPStateDidChange:(id)change;
- (void)_initCurrentNetwork;
- (void)_linkChangedWithInfo:(id)info;
- (void)_linkQualityChanged:(id)changed;
- (void)_resetCurrentNetworkStates;
- (void)_startMonitoringWiFiEvents;
- (void)_stopMonitoringWiFiEvents;
- (void)_updateCurrentNetworkWithNetwork:(__WiFiNetwork *)network callback:(id)callback;
- (void)_updateCurrentNetworkWithNetwork:(__WiFiNetwork *)network forceUpdateNetwork:(BOOL)updateNetwork callback:(id)callback userInfo:(id)info;
- (void)_wifiManagerRestarted:(id)restarted;
- (void)asyncAssociateToNetwork:(id)network password:(id)password reply:(id)reply;
- (void)asyncAssociateToNetwork:(id)network profile:(id)profile reply:(id)reply;
- (void)asyncCurrentNetwork:(id)network;
- (void)asyncCurrentScanResult:(id)result;
- (void)asyncHS20Supported:(id)supported;
- (void)asyncScanRequest:(id)request reply:(id)reply;
- (void)createNANInterface;
- (void)dealloc;
- (void)deviceScanChannels;
- (void)disassociateFromCarPlayUserConfiguredNetwork;
- (void)disassociateFromCurrentNetworkWithCompletion:(id)completion;
- (void)disassociateFromCurrentNetworkWithReason:(int64_t)reason;
- (void)notifyNoNetworksFound;
- (void)setDevice:(__WiFiDeviceClient *)device;
- (void)updateDeviceScanChannelsPerCurLocale;
@end

@implementation WFInterface

- (WFNetworkScanRecord)currentNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  currentNetworkQueue = self->_currentNetworkQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__WFInterface_currentNetwork__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(currentNetworkQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __29__WFInterface_currentNetwork__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) coreWiFiCurrentNetwork];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isReadyForConnectionVelocityTest
{
  v31 = *MEMORY[0x277D85DE8];
  cInterface = [(WFInterface *)self cInterface];

  if (cInterface)
  {
    cInterface2 = [(WFInterface *)self cInterface];
    iPv4RouterAddress = [cInterface2 IPv4RouterAddress];
    if (iPv4RouterAddress)
    {
      v6 = 1;
    }

    else
    {
      cInterface3 = [(WFInterface *)self cInterface];
      iPv6RouterAddress = [cInterface3 IPv6RouterAddress];
      v6 = iPv6RouterAddress != 0;
    }

    cInterface4 = [(WFInterface *)self cInterface];
    dHCPLeaseStartedAt = [cInterface4 DHCPLeaseStartedAt];

    ipMonitor = [(WFInterface *)self ipMonitor];
    if ([ipMonitor isIPv4Primary])
    {
      isIPv6Primary = 1;
    }

    else
    {
      ipMonitor2 = [(WFInterface *)self ipMonitor];
      isIPv6Primary = [ipMonitor2 isIPv6Primary];
    }

    v19 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(4uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) >= 4 && v19 && os_log_type_enabled(v19, v21))
    {
      v23 = "not primary";
      v25 = 136315650;
      if (isIPv6Primary)
      {
        v23 = "primary";
      }

      v26 = v23;
      v27 = 1024;
      v28 = v6;
      v29 = 1024;
      v30 = dHCPLeaseStartedAt != 0;
      _os_log_impl(&dword_273ECD000, v19, v21, "network is %s, has valid IP: %d, network has DHCP Lease: %d", &v25, 0x18u);
    }

    if (dHCPLeaseStartedAt)
    {
      v24 = v6;
    }

    else
    {
      v24 = 0;
    }

    return v24 & isIPv6Primary;
  }

  else
  {
    v7 = WFLogForCategory(0);
    v8 = OSLogForWFLogLevel(1uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_273ECD000, v7, v9, "Unable to get core wifi interface!", &v25, 2u);
    }

    return 0;
  }
}

- (WFInterface)initWithDevice:(__WiFiDeviceClient *)device coreWiFiInterface:(id)interface interfaceName:(id)name
{
  v43 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  nameCopy = name;
  if (!device)
  {
    [WFInterface initWithDevice:&v39 coreWiFiInterface:buf interfaceName:?];
    v16 = v39;
    v12 = *buf;
LABEL_25:

    goto LABEL_26;
  }

  v38.receiver = self;
  v38.super_class = WFInterface;
  v11 = [(WFInterface *)&v38 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_26;
  }

  [(WFInterface *)v11 setDevice:device];
  if (nameCopy)
  {
    v13 = nameCopy;
  }

  else
  {
    v13 = [WiFiDeviceClientGetInterfaceName() copy];
  }

  interfaceName = v12->_interfaceName;
  v12->_interfaceName = v13;

  v15 = v12->_interfaceName;
  v16 = WFLogForCategory(0);
  if (!v15)
  {
    v35 = OSLogForWFLogLevel(1uLL);
    v36 = v35;
    if (WFCurrentLogLevel(v35, v37) && v16 && os_log_type_enabled(v16, v36))
    {
      *buf = 136315138;
      *&buf[4] = "[WFInterface initWithDevice:coreWiFiInterface:interfaceName:]";
      _os_log_impl(&dword_273ECD000, v16, v36, "%s: nil interface name", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v17 = OSLogForWFLogLevel(3uLL);
  v18 = v17;
  if (WFCurrentLogLevel(v17, v19) >= 3 && v16 && os_log_type_enabled(v16, v18))
  {
    *buf = 136315394;
    *&buf[4] = "[WFInterface initWithDevice:coreWiFiInterface:interfaceName:]";
    v41 = 2112;
    v42 = nameCopy;
    _os_log_impl(&dword_273ECD000, v16, v18, "%s: interface name %@", buf, 0x16u);
  }

  v20 = dispatch_queue_create(0, 0);
  currentNetworkQueue = v12->_currentNetworkQueue;
  v12->_currentNetworkQueue = v20;

  if (v12->_currentNetworkQueue)
  {
    v22 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
    networkProcessingQueue = v12->_networkProcessingQueue;
    v12->_networkProcessingQueue = v22;

    if (v12->_networkProcessingQueue)
    {
      v24 = objc_alloc_init(MEMORY[0x277CCABD8]);
      joinQueue = v12->_joinQueue;
      v12->_joinQueue = v24;

      v26 = v12->_joinQueue;
      if (v26)
      {
        [(NSOperationQueue *)v26 setQualityOfService:25];
        v27 = [[WFIPMonitor alloc] initWithInterfaceName:v12->_interfaceName];
        ipMonitor = v12->_ipMonitor;
        v12->_ipMonitor = v27;

        if (v12->_ipMonitor)
        {
          objc_storeStrong(&v12->_cInterface, interface);
          if (interfaceCopy)
          {
            [(WFInterface *)v12 createNANInterface];
          }

          else
          {
            v29 = WFLogForCategory(0);
            v30 = OSLogForWFLogLevel(1uLL);
            v31 = v30;
            if (WFCurrentLogLevel(v30, v32) && v29 && os_log_type_enabled(v29, v31))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v29, v31, "CoreWiFi Interface is Missing while initializing WFInterface", buf, 2u);
            }
          }

          [(WFInterface *)v12 _startMonitoringWiFiEvents];
          [(WFInterface *)v12 _initCurrentNetwork];
          goto LABEL_23;
        }
      }
    }
  }

LABEL_26:
  device = v12->_device;
  if (device)
  {
    CFRelease(device);
    v12->_device = 0;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (void)createNANInterface
{
  v15 = *MEMORY[0x277D85DE8];
  cInterface = [(WFInterface *)self cInterface];
  nANData = [cInterface NANData];
  irInterface = self->_irInterface;
  self->_irInterface = nANData;

  self->_associatedOnIRInterface = 0;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = self->_irInterface;
    v11 = 136315394;
    v12 = "[WFInterface createNANInterface]";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: NAN interface: %@", &v11, 0x16u);
  }
}

- (void)_startMonitoringWiFiEvents
{
  if ([(WFInterface *)self monitoringEvents])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(2uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 2 && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "Already monitoring wifi events.", buf, 2u);
    }
  }

  else
  {
    [(WFInterface *)self setMonitoringEvents:1];
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    WiFiDeviceClientRegisterCarPlayNetworkTypeChangeCallback();
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__wifiManagerRestarted_ name:@"WFClientServerRestartedNotification" object:0];
  }
}

- (void)_stopMonitoringWiFiEvents
{
  if ([(WFInterface *)self monitoringEvents])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  else
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(2uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 2 && v3 && os_log_type_enabled(v3, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "Unable to stop monitoring wifi events, currently not monitoring.", buf, 2u);
    }
  }
}

- (void)_wifiManagerRestarted:(id)restarted
{
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFInterface__wifiManagerRestarted___block_invoke;
  block[3] = &unk_279EBCFE0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)setDevice:(__WiFiDeviceClient *)device
{
  device = self->_device;
  if (device)
  {
    CFRelease(device);
  }

  self->_device = device;
  if (device)
  {

    CFRetain(device);
  }
}

- (void)asyncHS20Supported:(id)supported
{
  supportedCopy = supported;
  if (supportedCopy)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__WFInterface_asyncHS20Supported___block_invoke;
    v6[3] = &unk_279EBD9A8;
    v6[4] = self;
    v7 = supportedCopy;
    dispatch_async(v5, v6);
  }
}

void __34__WFInterface_asyncHS20Supported___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCABB0] numberWithInt:12];
  v2 = WiFiDeviceClientCopyProperty();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:45];
  v4 = [v2 containsObject:v3];

  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *buf = 136315394;
    v13 = "[WFInterface asyncHS20Supported:]_block_invoke";
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: _deviceSupportsHS20 %d", buf, 0x12u);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__WFInterface_asyncHS20Supported___block_invoke_47;
  v9[3] = &unk_279EBD980;
  v10 = *(a1 + 40);
  v11 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (NSString)interfaceName
{
  if (self->_associatedOnIRInterface)
  {
    irInterface = [(WFInterface *)self irInterface];
    interfaceName = [irInterface interfaceName];
  }

  else
  {
    interfaceName = self->_interfaceName;
  }

  return interfaceName;
}

- (void)_linkChangedWithInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = 138412290;
    v10 = infoCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "Link change with info %@", &v9, 0xCu);
  }

  [infoCopy objectForKey:@"LINK_CHANGED_NETWORK"];
  [(WFInterface *)self _updateCurrentNetworkWithNetwork:objc_claimAutoreleasedReturnValue() forceUpdateNetwork:0 callback:0 userInfo:infoCopy];
}

- (void)_linkQualityChanged:(id)changed
{
  v35 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = WFLogForCategory(0);
  v6 = v5;
  if (changedCopy)
  {
    v7 = OSLogForWFLogLevel(3uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
    {
      v10 = v6;
      if (os_log_type_enabled(v10, v8))
      {
        v11 = [(WFInterface *)self _debugLQMString:changedCopy];
        *buf = 136315394;
        *&buf[4] = "[WFInterface _linkQualityChanged:]";
        v33 = 2112;
        v34 = v11;
        _os_log_impl(&dword_273ECD000, v10, v8, "%s %@", buf, 0x16u);
      }
    }

    currentNetwork = [(WFInterface *)self currentNetwork];

    if (currentNetwork)
    {
      v13 = [changedCopy objectForKey:@"RSSI"];
      v14 = [changedCopy objectForKey:@"SCALED_RSSI"];
      v15 = v14;
      v16 = 0;
      if (v13 && v14)
      {
        currentNetwork2 = [(WFInterface *)self currentNetwork];
        matchingKnownNetworkProfile = [currentNetwork2 matchingKnownNetworkProfile];
        displayFriendlyName = [matchingKnownNetworkProfile displayFriendlyName];

        if (!displayFriendlyName)
        {
          currentNetwork3 = [(WFInterface *)self currentNetwork];
          displayFriendlyName = [currentNetwork3 ssid];
        }

        v21 = [WFLinkQuality alloc];
        integerValue = [v13 integerValue];
        [v15 floatValue];
        v16 = [(WFLinkQuality *)v21 initWithSSID:displayFriendlyName rssi:integerValue scaledRSSI:?];
      }

      v23 = [changedCopy objectForKey:*MEMORY[0x277D29808]];
      v24 = v23;
      if (v23)
      {
        ipState = self->_ipState;
        if (ipState != [v23 intValue])
        {
          intValue = [v24 intValue];
          self->_ipState = intValue;
          self->_ipv4SelfAssigned = intValue == 1;
        }
      }

      v27 = [changedCopy objectForKey:*MEMORY[0x277D297E8]];
      v28 = v27;
      if (v27 && self->_hasNoGatewayIP != [v27 BOOLValue])
      {
        self->_hasNoGatewayIP = [v28 BOOLValue];
      }

      if (v16)
      {
        v30 = @"WFInterfaceLinkQualityKey";
        v31 = v16;
        currentNetwork = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      }

      else
      {
        currentNetwork = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WFInterfaceLinkQualityNotification" object:self userInfo:currentNetwork];
  }

  else
  {
    [(WFInterface *)v5 != 0 _linkQualityChanged:v5, buf];
    v16 = *buf;
  }
}

- (void)_currentNetworkDidChangeWithReason:(unint64_t)reason previousNetwork:(id)network
{
  v27 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  currentNetwork = [(WFInterface *)self currentNetwork];
  v8 = [currentNetwork copy];

  if (networkCopy | v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = dictionary;
    if (v8)
    {
      [dictionary setObject:v8 forKey:@"WFInterfaceNetworkKey"];
    }

    if (networkCopy)
    {
      [v10 setObject:networkCopy forKey:@"WFInterfacePreviousNetworkKey"];
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
    [v10 setObject:v11 forKey:@"WFInterfaceNetworkChangeReason"];

    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) >= 3 && v12)
    {
      v16 = v12;
      if (os_log_type_enabled(v16, v14))
      {
        ssid = [networkCopy ssid];
        ssid2 = [v8 ssid];
        *v20 = 138413058;
        *&v20[4] = self;
        v21 = 2112;
        v22 = ssid;
        v23 = 2112;
        v24 = ssid2;
        v25 = 2048;
        reasonCopy = reason;
        _os_log_impl(&dword_273ECD000, v16, v14, "%@: current network changed from %@ to %@ (reason %lu)", v20, 0x2Au);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WFInterfaceNetworkChangedNotification" object:self userInfo:v10];
  }

  else
  {
    [WFInterface _currentNetworkDidChangeWithReason:v20 previousNetwork:?];
    v10 = *v20;
  }
}

- (void)asyncCurrentNetwork:(id)network
{
  networkCopy = network;
  objc_initWeak(&location, self);
  networkProcessingQueue = self->_networkProcessingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WFInterface_asyncCurrentNetwork___block_invoke;
  v7[3] = &unk_279EBDA20;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = networkCopy;
  v6 = networkCopy;
  dispatch_async(networkProcessingQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__WFInterface_asyncCurrentNetwork___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained cInterface];
  v4 = [v3 currentScanResult];

  v5 = [WeakRetained irInterface];
  v6 = [v5 currentScanResult];

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315650;
    *&buf[4] = "[WFInterface asyncCurrentNetwork:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    v50 = v6;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: infraScanResult='%@' nanScanResult='%@'", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  v11 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WFInterface_asyncCurrentNetwork___block_invoke_60;
  block[3] = &unk_279EBD9D0;
  block[4] = WeakRetained;
  block[5] = buf;
  dispatch_sync(v11, block);
  if (v4)
  {
    v12 = [WFCurrentNetworkScanRecord alloc];
    v13 = [WeakRetained cInterface];
    v14 = [v13 currentKnownNetworkProfile];
    v15 = [(WFCurrentNetworkScanRecord *)v12 initWithScanResult:v4 knownNetworkProfile:v14];
    v16 = 0;
  }

  else
  {
    if (!v6)
    {
      v15 = 0;
      goto LABEL_10;
    }

    v17 = [WFCurrentNetworkScanRecord alloc];
    v13 = [WeakRetained irInterface];
    v14 = [v13 currentKnownNetworkProfile];
    v15 = [(WFCurrentNetworkScanRecord *)v17 initWithScanResult:v6 knownNetworkProfile:v14];
    v16 = 1;
  }

  *(*(a1 + 32) + 13) = v16;
LABEL_10:
  v18 = *(*(a1 + 32) + 80);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __35__WFInterface_asyncCurrentNetwork___block_invoke_2;
  v40[3] = &unk_279EBD290;
  v40[4] = WeakRetained;
  v19 = v15;
  v41 = v19;
  dispatch_sync(v18, v40);
  v20 = *(*&buf[8] + 40);
  if (v20 && v19 && (v21 = [v20 isEqual:v19], v20 = *(*&buf[8] + 40), !v21))
  {
    v24 = 1;
  }

  else
  {
    if (v19)
    {
      v22 = 1;
    }

    else
    {
      v22 = v20 == 0;
    }

    v23 = !v22;
    if (v19)
    {
      v24 = v20 == 0;
    }

    else
    {
      v24 = v23;
    }
  }

  v25 = [v20 matchingKnownNetworkProfile];
  v26 = [v25 isStandalone6G];
  v27 = [(WFNetworkScanRecord *)v19 matchingKnownNetworkProfile];
  LOBYTE(v26) = (v24 | v26 ^ [v27 isStandalone6G]) == 0;

  if (v26)
  {
    v33 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(3uLL);
    v35 = v34;
    if (WFCurrentLogLevel(v34, v36) >= 3 && v33 && os_log_type_enabled(v33, v35))
    {
      v37 = *(*&buf[8] + 40);
      *v43 = 136315394;
      v44 = "[WFInterface asyncCurrentNetwork:]_block_invoke_2";
      v45 = 2112;
      v46 = v37;
      _os_log_impl(&dword_273ECD000, v33, v35, "%s: no change to network '%@'", v43, 0x16u);
    }
  }

  else
  {
    v28 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(3uLL);
    v30 = v29;
    if (WFCurrentLogLevel(v29, v31) >= 3 && v28 && os_log_type_enabled(v28, v30))
    {
      v32 = *(*&buf[8] + 40);
      *v43 = 136315650;
      v44 = "[WFInterface asyncCurrentNetwork:]_block_invoke_3";
      v45 = 2112;
      v46 = v19;
      v47 = 2112;
      v48 = v32;
      _os_log_impl(&dword_273ECD000, v28, v30, "%s: network changed to: '%@' from: '%@'", v43, 0x20u);
    }

    [WeakRetained _resetCurrentNetworkStates];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __35__WFInterface_asyncCurrentNetwork___block_invoke_63;
    v39[3] = &unk_279EBD9F8;
    v39[4] = WeakRetained;
    v39[5] = buf;
    v39[6] = 0;
    dispatch_async(MEMORY[0x277D85CD0], v39);
  }

  v38 = *(a1 + 40);
  if (v38)
  {
    (*(v38 + 16))(v38, v19);
  }

  _Block_object_dispose(buf, 8);
}

void __35__WFInterface_asyncCurrentNetwork___block_invoke_60(uint64_t a1)
{
  v4 = [*(a1 + 32) coreWiFiCurrentNetwork];
  if (v4)
  {
    v1 = [*(a1 + 32) coreWiFiCurrentNetwork];
    v3 = [v1 copy];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

- (void)asyncCurrentScanResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__WFInterface_asyncCurrentScanResult___block_invoke;
  v6[3] = &unk_279EBDA48;
  v7 = resultCopy;
  v5 = resultCopy;
  [(WFInterface *)self asyncCurrentNetwork:v6];
}

void __38__WFInterface_asyncCurrentScanResult___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    a2 = [a2 scanResult];
  }

  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)_updateCurrentNetworkWithNetwork:(__WiFiNetwork *)network forceUpdateNetwork:(BOOL)updateNetwork callback:(id)callback userInfo:(id)info
{
  updateNetworkCopy = updateNetwork;
  v56 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  infoCopy = info;
  if (!network && updateNetworkCopy)
  {
    network = WiFiDeviceClientCopyCurrentNetwork();
    if (network)
    {
      v12 = WiFiNetworkCopyRecord();
      v43 = WiFiNetworkGetSSID();
      v13 = [v12 objectForKey:@"PRIVATE_MAC_ADDRESS"];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 objectForKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
        if (v15)
        {
          v16 = WFConvertEthernetNetworkAddressToString(v15);
        }

        else
        {
          v16 = &stru_2882E4AD8;
        }

        v17 = infoCopy;
        v19 = [v14 objectForKey:@"PRIVATE_MAC_ADDRESS_TYPE"];
        v18 = ([v19 intValue] & 0xFFFFFFFE) == 2;
      }

      else
      {
        v17 = infoCopy;
        v18 = 0;
        v16 = &stru_2882E4AD8;
      }

      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(4uLL);
      v22 = v21;
      if (WFCurrentLogLevel(v21, v23) >= 4 && v20 && os_log_type_enabled(v20, v22))
      {
        *buf = 138412802;
        v51 = v43;
        v52 = 2112;
        v53 = v16;
        v54 = 1024;
        v55 = v18;
        _os_log_impl(&dword_273ECD000, v20, v22, "RANDOM DICT FROM copyCurrentNetwork: SSID: %@, random address: %@, enabled :%d", buf, 0x1Cu);
      }

      infoCopy = v17;
    }
  }

  currentNetwork = [(WFInterface *)self currentNetwork];
  if (currentNetwork)
  {
    currentNetwork2 = [(WFInterface *)self currentNetwork];
    v26 = [currentNetwork2 copy];
  }

  else
  {
    v26 = 0;
  }

  if (network)
  {
    v27 = [[WFNetworkScanRecord alloc] initWithNetworkRef:network];
  }

  else
  {
    v27 = 0;
  }

  currentNetwork3 = [(WFInterface *)self currentNetwork];
  v29 = currentNetwork3;
  if (!network || currentNetwork3)
  {
    currentNetwork4 = [(WFInterface *)self currentNetwork];
    IsEqualToNetwork = NetworkRefIsEqualToNetwork(network, currentNetwork4);

    if (!network || IsEqualToNetwork)
    {
      currentNetwork5 = [(WFInterface *)self currentNetwork];

      if (network)
      {
        v38 = 1;
      }

      else
      {
        v38 = currentNetwork5 == 0;
      }

      v32 = !v38;
      goto LABEL_38;
    }
  }

  if (v27)
  {
    v32 = 1;
LABEL_38:
    v39 = WFLogForCategory(0);
    v40 = OSLogForWFLogLevel(3uLL);
    v41 = v40;
    if (WFCurrentLogLevel(v40, v42) >= 3 && v39 && os_log_type_enabled(v39, v41))
    {
      *buf = 136315394;
      v51 = "[WFInterface _updateCurrentNetworkWithNetwork:forceUpdateNetwork:callback:userInfo:]";
      v52 = 1024;
      LODWORD(v53) = v32;
      _os_log_impl(&dword_273ECD000, v39, v41, "%s: network change %d", buf, 0x12u);
    }

    if (v32)
    {
      [(WFInterface *)self _resetCurrentNetworkStates];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__WFInterface__updateCurrentNetworkWithNetwork_forceUpdateNetwork_callback_userInfo___block_invoke;
      block[3] = &unk_279EBD5D0;
      block[4] = self;
      v49 = 0;
      v48 = v26;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    if (callbackCopy)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __85__WFInterface__updateCurrentNetworkWithNetwork_forceUpdateNetwork_callback_userInfo___block_invoke_2;
      v44[3] = &unk_279EBD9A8;
      v45 = v27;
      v46 = callbackCopy;
      dispatch_async(MEMORY[0x277D85CD0], v44);
    }

    if (network)
    {
      CFRelease(network);
    }

    goto LABEL_48;
  }

  v33 = WFLogForCategory(0);
  v34 = OSLogForWFLogLevel(1uLL);
  v35 = v34;
  if (WFCurrentLogLevel(v34, v36) && v33 && os_log_type_enabled(v33, v35))
  {
    *buf = 136315138;
    v51 = "[WFInterface _updateCurrentNetworkWithNetwork:forceUpdateNetwork:callback:userInfo:]";
    _os_log_impl(&dword_273ECD000, v33, v35, "%s: failed to create network", buf, 0xCu);
  }

LABEL_48:
}

void __85__WFInterface__updateCurrentNetworkWithNetwork_forceUpdateNetwork_callback_userInfo___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  (*(*(a1 + 40) + 16))();
}

- (void)_updateCurrentNetworkWithNetwork:(__WiFiNetwork *)network callback:(id)callback
{
  v52 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  currentNetworkQueue = self->_currentNetworkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke;
  block[3] = &unk_279EBD9D0;
  block[4] = self;
  block[5] = &v38;
  dispatch_sync(currentNetworkQueue, block);
  cInterface = [(WFInterface *)self cInterface];
  currentScanResult = [cInterface currentScanResult];

  irInterface = [(WFInterface *)self irInterface];
  currentScanResult2 = [irInterface currentScanResult];

  coreWiFiCurrentNetwork = self->_coreWiFiCurrentNetwork;
  self->_coreWiFiCurrentNetwork = 0;

  if (currentScanResult)
  {
    v12 = self->_currentNetworkQueue;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_2;
    v35[3] = &unk_279EBD290;
    v35[4] = self;
    v36 = currentScanResult;
    dispatch_sync(v12, v35);
    self->_associatedOnIRInterface = 0;
  }

  else if (currentScanResult2)
  {
    v13 = self->_currentNetworkQueue;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_3;
    v33[3] = &unk_279EBD290;
    v33[4] = self;
    v34 = currentScanResult2;
    dispatch_sync(v13, v33);
    self->_associatedOnIRInterface = 1;
  }

  else
  {
    self->_associatedOnIRInterface = 0;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v14 = self->_currentNetworkQueue;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_4;
  v26[3] = &unk_279EBD9D0;
  v26[4] = self;
  v26[5] = &v27;
  dispatch_sync(v14, v26);
  v15 = v39[5];
  v16 = v28;
  if (!v15)
  {
    goto LABEL_12;
  }

  if (v28[5])
  {
    if (![v15 isEqual:?])
    {
LABEL_13:
      v17 = 1;
      goto LABEL_14;
    }

    v16 = v28;
    if (!v39[5])
    {
LABEL_12:
      v17 = v16[5] != 0;
      goto LABEL_14;
    }
  }

  if (!v16[5])
  {
    goto LABEL_13;
  }

  v17 = 0;
LABEL_14:
  v18 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(3uLL);
  v20 = v19;
  if (WFCurrentLogLevel(v19, v21) >= 3 && v18 && os_log_type_enabled(v18, v20))
  {
    *buf = 136315906;
    v45 = "[WFInterface _updateCurrentNetworkWithNetwork:callback:]";
    v46 = 1024;
    v47 = v17;
    v48 = 2112;
    v49 = currentScanResult;
    v50 = 2112;
    v51 = currentScanResult2;
    _os_log_impl(&dword_273ECD000, v18, v20, "%s: network change=%d, infraScanResult='%@' nanScanResult='%@'", buf, 0x26u);
  }

  if (v17)
  {
    [(WFInterface *)self _resetCurrentNetworkStates];
    v22 = [v39[5] copy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_79;
    v24[3] = &unk_279EBD290;
    v24[4] = self;
    v25 = v22;
    v23 = v22;
    dispatch_async(MEMORY[0x277D85CD0], v24);
  }

  if (callbackCopy)
  {
    callbackCopy[2](callbackCopy, v28[5]);
  }

  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v38, 8);
}

void __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) coreWiFiCurrentNetwork];
  if (v4)
  {
    v1 = [*(a1 + 32) coreWiFiCurrentNetwork];
    v3 = [v1 copy];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v4)
  {
  }
}

void __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_2(uint64_t a1)
{
  v2 = [WFCurrentNetworkScanRecord alloc];
  v3 = *(a1 + 40);
  v8 = [*(a1 + 32) cInterface];
  v4 = [v8 currentKnownNetworkProfile];
  v5 = [(WFCurrentNetworkScanRecord *)v2 initWithScanResult:v3 knownNetworkProfile:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;
}

void __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_3(uint64_t a1)
{
  v2 = [WFCurrentNetworkScanRecord alloc];
  v3 = *(a1 + 40);
  v8 = [*(a1 + 32) irInterface];
  v4 = [v8 currentKnownNetworkProfile];
  v5 = [(WFCurrentNetworkScanRecord *)v2 initWithScanResult:v3 knownNetworkProfile:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;
}

void __57__WFInterface__updateCurrentNetworkWithNetwork_callback___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) coreWiFiCurrentNetwork];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_resetCurrentNetworkStates
{
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v3, v5, "resetting current network states", v8, 2u);
  }

  self->_ipState = 0;
  *&self->_ipv4SelfAssigned = 0;
  currentNetworkIssues = self->_currentNetworkIssues;
  self->_currentNetworkIssues = 0;
}

- (void)_initCurrentNetwork
{
  objc_initWeak(&location, self);
  networkProcessingQueue = self->_networkProcessingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WFInterface__initCurrentNetwork__block_invoke;
  block[3] = &unk_279EBCDE8;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(networkProcessingQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __34__WFInterface__initCurrentNetwork__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(*(a1 + 32) + 136) currentScanResult];
  v4 = [*(*(a1 + 32) + 144) currentScanResult];
  v5 = [*(*(a1 + 32) + 136) currentKnownNetworkProfile];
  v6 = v5;
  if (v3)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__WFInterface__initCurrentNetwork__block_invoke_2;
    block[3] = &unk_279EBD268;
    block[4] = v7;
    v9 = v24;
    v24[0] = v3;
    v24[1] = WeakRetained;
    dispatch_sync(v8, block);
    *(*(a1 + 32) + 13) = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__0;
    v21[4] = __Block_byref_object_dispose__0;
    v22 = 0;
    v10 = *(a1 + 32);
    v11 = *(v10 + 80);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __34__WFInterface__initCurrentNetwork__block_invoke_3;
    v20[3] = &unk_279EBD9D0;
    v20[4] = v10;
    v20[5] = v21;
    dispatch_sync(v11, v20);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __34__WFInterface__initCurrentNetwork__block_invoke_4;
    v19[3] = &unk_279EBCFE0;
    v19[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v19);
    _Block_object_dispose(v21, 8);
    v12 = v22;
LABEL_5:

    goto LABEL_6;
  }

  if (v4)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 80);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__WFInterface__initCurrentNetwork__block_invoke_5;
    v16[3] = &unk_279EBD268;
    v9 = &v17;
    v16[4] = v13;
    v17 = 0;
    v18 = v5;
    dispatch_sync(v14, v16);
    *(*(a1 + 32) + 13) = 1;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__WFInterface__initCurrentNetwork__block_invoke_6;
    v15[3] = &unk_279EBCFE0;
    v15[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v15);
    v12 = v18;
    goto LABEL_5;
  }

LABEL_6:
}

void __34__WFInterface__initCurrentNetwork__block_invoke_2(uint64_t a1)
{
  v2 = [WFCurrentNetworkScanRecord alloc];
  v3 = *(a1 + 40);
  v8 = [*(a1 + 48) cInterface];
  v4 = [v8 currentKnownNetworkProfile];
  v5 = [(WFCurrentNetworkScanRecord *)v2 initWithScanResult:v3 knownNetworkProfile:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;
}

uint64_t __34__WFInterface__initCurrentNetwork__block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 72) copy];

  return MEMORY[0x2821F96F8]();
}

uint64_t __34__WFInterface__initCurrentNetwork__block_invoke_5(void *a1)
{
  *(a1[4] + 72) = [[WFCurrentNetworkScanRecord alloc] initWithScanResult:a1[5] knownNetworkProfile:a1[6]];

  return MEMORY[0x2821F96F8]();
}

- (id)currentKnownNetworkProfile
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_associatedOnIRInterface)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(3uLL);
    v5 = v4;
    if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
    {
      v14 = 136315394;
      v15 = "[WFInterface currentKnownNetworkProfile]";
      v16 = 2112;
      v17 = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "%s: using ir0 profile='%@'", &v14, 0x16u);
    }

    irInterface = [(WFInterface *)self irInterface];
    currentKnownNetworkProfile = [irInterface currentKnownNetworkProfile];
  }

  else
  {
    cInterface = [(WFInterface *)self cInterface];
    currentKnownNetworkProfile = [cInterface currentKnownNetworkProfile];

    irInterface = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && irInterface && os_log_type_enabled(irInterface, v12))
    {
      v14 = 136315394;
      v15 = "[WFInterface currentKnownNetworkProfile]";
      v16 = 2112;
      v17 = currentKnownNetworkProfile;
      _os_log_impl(&dword_273ECD000, irInterface, v12, "%s: using en0 profile='%@'", &v14, 0x16u);
    }
  }

  return currentKnownNetworkProfile;
}

- (void)asyncScanRequest:(id)request reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  v8 = WFLogForCategory(6uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) && v8)
  {
    v12 = v8;
    if (os_log_type_enabled(v12, v10))
    {
      cScanParameters = [requestCopy cScanParameters];
      *buf = 138412290;
      v20 = cScanParameters;
      _os_log_impl(&dword_273ECD000, v12, v10, "starting wifi scan with parameters: %@", buf, 0xCu);
    }
  }

  cInterface = [(WFInterface *)self cInterface];
  cScanParameters2 = [requestCopy cScanParameters];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__WFInterface_asyncScanRequest_reply___block_invoke;
  v17[3] = &unk_279EBDA70;
  v18 = replyCopy;
  v16 = replyCopy;
  [cInterface performScanWithParameters:cScanParameters2 reply:v17];
}

void __38__WFInterface_asyncScanRequest_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [[WFNetworkScanRecord alloc] initWithScanResults:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = WFLogForCategory(0);
          v14 = OSLogForWFLogLevel(1uLL);
          v15 = v14;
          if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
          {
            *buf = 136315394;
            v24 = "[WFInterface asyncScanRequest:reply:]_block_invoke";
            v25 = 2112;
            v26 = v11;
            _os_log_impl(&dword_273ECD000, v13, v15, "%s: failed to convert CWFScanResult (%@) to WFNetworkScanRecord", buf, 0x16u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 32) + 16))();
}

- (NSArray)deviceScanChannels
{
  selfCopy = self;
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_deviceScanChannels)
  {
    if (self->_device)
    {
      [MEMORY[0x277CCABB0] numberWithInt:254];
      v3 = WiFiDeviceClientCopyProperty();
      if (v3)
      {
        v4 = v3;
        v27 = selfCopy;
        array = [MEMORY[0x277CBEB18] array];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = v4;
        v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v32;
          v8 = @"SUP_CHANNEL";
          v9 = @"SUP_CHANNEL_FLAGS";
          v10 = 0x279EBC000uLL;
          do
          {
            v11 = 0;
            v28 = v6;
            do
            {
              if (*v32 != v7)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v31 + 1) + 8 * v11);
              v13 = [v12 objectForKey:v8];
              v14 = [v12 objectForKey:v9];
              v15 = [objc_alloc(*(v10 + 568)) initWithChannel:objc_msgSend(v13 flags:{"integerValue"), objc_msgSend(v14, "integerValue")}];
              if (v15)
              {
                [(NSArray *)array addObject:v15];
              }

              else
              {
                v16 = v7;
                v17 = v10;
                v18 = v9;
                v19 = v8;
                v20 = WFLogForCategory(0);
                v21 = OSLogForWFLogLevel(1uLL);
                v22 = v21;
                if (WFCurrentLogLevel(v21, v23) && v20 && os_log_type_enabled(v20, v22))
                {
                  *buf = 138412546;
                  v36 = v13;
                  v37 = 2112;
                  v38 = v14;
                  _os_log_impl(&dword_273ECD000, v20, v22, "Unable to create scan channel for channel %@ flags %@", buf, 0x16u);
                }

                v8 = v19;
                v9 = v18;
                v10 = v17;
                v7 = v16;
                v6 = v28;
              }

              ++v11;
            }

            while (v6 != v11);
            v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v6);
        }

        selfCopy = v27;
        deviceScanChannels = v27->_deviceScanChannels;
        v27->_deviceScanChannels = array;

        CFRelease(obj);
      }

      else
      {
        [WFInterface deviceScanChannels];
      }
    }

    else
    {
      [WFInterface deviceScanChannels];
    }
  }

  v25 = selfCopy->_deviceScanChannels;

  return v25;
}

- (void)updateDeviceScanChannelsPerCurLocale
{
  v45 = *MEMORY[0x277D85DE8];
  if (!self->_device)
  {
    v25 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(1uLL);
    v27 = v26;
    if (!WFCurrentLogLevel(v26, v28) || !v25 || !os_log_type_enabled(v25, v27))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v41 = "[WFInterface updateDeviceScanChannelsPerCurLocale]";
    v29 = "%s: Failed to get WiFiDeviceClientRef";
    goto LABEL_26;
  }

  [MEMORY[0x277CCABB0] numberWithInt:27];
  v3 = WiFiDeviceClientCopyProperty();
  if (!v3)
  {
    v25 = WFLogForCategory(0);
    v30 = OSLogForWFLogLevel(1uLL);
    v27 = v30;
    if (!WFCurrentLogLevel(v30, v31) || !v25 || !os_log_type_enabled(v25, v27))
    {
      goto LABEL_27;
    }

    *buf = 136315138;
    v41 = "[WFInterface updateDeviceScanChannelsPerCurLocale]";
    v29 = "%s: Failed to get IOC supported channels from WiFiDeviceClient";
LABEL_26:
    _os_log_impl(&dword_273ECD000, v25, v27, v29, buf, 0xCu);
LABEL_27:

    return;
  }

  v4 = v3;
  selfCopy = self;
  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    v8 = @"SUP_CHANNEL";
    v9 = @"SUP_CHANNEL_FLAGS";
    v10 = 0x279EBC000uLL;
    do
    {
      v11 = 0;
      v33 = v6;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        v13 = [v12 objectForKey:v8];
        v14 = [v12 objectForKey:v9];
        v15 = [objc_alloc(*(v10 + 568)) initWithChannel:objc_msgSend(v13 flags:{"integerValue"), objc_msgSend(v14, "integerValue")}];
        if (v15)
        {
          [(NSArray *)array addObject:v15];
        }

        else
        {
          v16 = v7;
          v17 = v10;
          v18 = v9;
          v19 = v8;
          v20 = WFLogForCategory(0);
          v21 = OSLogForWFLogLevel(1uLL);
          v22 = v21;
          if (WFCurrentLogLevel(v21, v23) && v20 && os_log_type_enabled(v20, v22))
          {
            *buf = 138412546;
            v41 = v13;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_273ECD000, v20, v22, "Unable to create scan channel for channel %@ flags %@", buf, 0x16u);
          }

          v8 = v19;
          v9 = v18;
          v10 = v17;
          v7 = v16;
          v6 = v33;
        }

        ++v11;
      }

      while (v6 != v11);
      v6 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v6);
  }

  deviceScanChannelsPerCurLocale = selfCopy->_deviceScanChannelsPerCurLocale;
  selfCopy->_deviceScanChannelsPerCurLocale = array;

  CFRelease(obj);
}

- (NSArray)deviceScanChannelsPerCurLocale
{
  deviceScanChannelsPerCurLocale = self->_deviceScanChannelsPerCurLocale;
  if (!deviceScanChannelsPerCurLocale)
  {
    [(WFInterface *)self updateDeviceScanChannelsPerCurLocale];
    deviceScanChannelsPerCurLocale = self->_deviceScanChannelsPerCurLocale;
  }

  return deviceScanChannelsPerCurLocale;
}

- (void)asyncAssociateToNetwork:(id)network password:(id)password reply:(id)reply
{
  replyCopy = reply;
  passwordCopy = password;
  networkCopy = network;
  v11 = [[WFMutableNetworkProfile alloc] initWithNetwork:networkCopy];
  [(WFMutableNetworkProfile *)v11 setPassword:passwordCopy];
  [(WFInterface *)self asyncAssociateToNetwork:networkCopy password:passwordCopy reply:replyCopy];
}

- (void)asyncAssociateToNetwork:(id)network profile:(id)profile reply:(id)reply
{
  v46 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  profileCopy = profile;
  replyCopy = reply;
  if (![networkCopy requiresPassword])
  {
    goto LABEL_13;
  }

  if ([networkCopy isEnterprise])
  {
    v11 = WFLogForCategory(5uLL);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11)
    {
      v15 = v11;
      if (os_log_type_enabled(v15, v13))
      {
        *buf = 136315650;
        v42 = "[WFInterface asyncAssociateToNetwork:profile:reply:]";
        v43 = 1024;
        *v44 = [profileCopy canAttemptJoin];
        *&v44[4] = 1024;
        *&v44[6] = [profileCopy isHS20Network];
        _os_log_impl(&dword_273ECD000, v15, v13, "%s: enterprise and requires password (canAttemptJoin %d, hs20Network %d)", buf, 0x18u);
      }
    }

    if ([profileCopy canAttemptJoin] & 1) != 0 || (objc_msgSend(profileCopy, "isHS20Network"))
    {
      goto LABEL_13;
    }
  }

  matchingKnownNetworkProfile = [networkCopy matchingKnownNetworkProfile];
  if (matchingKnownNetworkProfile)
  {

    goto LABEL_13;
  }

  password = [profileCopy password];
  v18 = password == 0;

  if (!v18)
  {
LABEL_13:
    objc_initWeak(&location, self);
    v19 = [MEMORY[0x277D02AE0] associationParametersFromScanRecord:networkCopy profile:profileCopy];
    v20 = WFLogForCategory(5uLL);
    v21 = OSLogForWFLogLevel(1uLL);
    v22 = v21;
    if (WFCurrentLogLevel(v21, v23) && v20 && os_log_type_enabled(v20, v22))
    {
      *buf = 136315650;
      v42 = "[WFInterface asyncAssociateToNetwork:profile:reply:]";
      v43 = 2112;
      *v44 = networkCopy;
      *&v44[8] = 2112;
      v45 = v19;
      _os_log_impl(&dword_273ECD000, v20, v22, "%s: associating to %@ with params %@", buf, 0x20u);
    }

    [networkCopy isEnterprise];
    v24 = objc_alloc(objc_opt_class());
    cInterface = [(WFInterface *)self cInterface];
    v26 = [v24 initWithAssocParameters:v19 interface:cInterface];

    objc_initWeak(buf, v26);
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __53__WFInterface_asyncAssociateToNetwork_profile_reply___block_invoke;
    v36 = &unk_279EBDAC0;
    objc_copyWeak(&v38, &location);
    objc_copyWeak(&v39, buf);
    v37 = replyCopy;
    [v26 setCompletionBlock:&v33];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    [mainQueue addOperation:v26];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);

    objc_destroyWeak(&location);
    goto LABEL_18;
  }

  v28 = [MEMORY[0x277CCA9B8] associationErrorWithReason:0];
  v29 = WFLogForCategory(5uLL);
  v30 = OSLogForWFLogLevel(1uLL);
  v31 = v30;
  if (WFCurrentLogLevel(v30, v32) && v29 && os_log_type_enabled(v29, v31))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v29, v31, "unable to find password in keychain", buf, 2u);
  }

  (*(replyCopy + 2))(replyCopy, 0, v28);
LABEL_18:
}

void __53__WFInterface_asyncAssociateToNetwork_profile_reply___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = [v3 error];
  if (!v4)
  {
    v5 = WFLogForCategory(5uLL);
    v6 = OSLogForWFLogLevel(1uLL);
    v7 = v6;
    if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
    {
      *buf = 136315138;
      v15 = "[WFInterface asyncAssociateToNetwork:profile:reply:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v5, v7, "%s: forcing network update for successful association", buf, 0xCu);
    }

    [WeakRetained _updateCurrentNetworkWithNetwork:0 callback:0];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__WFInterface_asyncAssociateToNetwork_profile_reply___block_invoke_94;
  v11[3] = &unk_279EBDA98;
  v9 = a1[4];
  v12 = v4;
  v13 = v9;
  v10 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

- (void)disassociateFromCurrentNetworkWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  wifiClient = [(WFInterface *)self wifiClient];
  cInterface = [wifiClient cInterface];

  wifiClient2 = WFLogForCategory(5uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10))
  {
    v11 = wifiClient2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (cInterface)
  {
    if (v12 && os_log_type_enabled(wifiClient2, v9))
    {
      v14 = 136315138;
      v15 = "[WFInterface disassociateFromCurrentNetworkWithCompletion:]";
      _os_log_impl(&dword_273ECD000, wifiClient2, v9, "%s: disassociating from current network", &v14, 0xCu);
    }

    wifiClient2 = [(WFInterface *)self wifiClient];
    cInterface2 = [wifiClient2 cInterface];
    [cInterface2 disassociateWithReason:2];
  }

  else if (v12 && os_log_type_enabled(wifiClient2, v9))
  {
    v14 = 136315138;
    v15 = "[WFInterface disassociateFromCurrentNetworkWithCompletion:]";
    _os_log_impl(&dword_273ECD000, wifiClient2, v9, "%s: failed to get CWFInterface", &v14, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)disassociateFromCurrentNetworkWithReason:(int64_t)reason
{
  v16 = *MEMORY[0x277D85DE8];
  wifiClient = [(WFInterface *)self wifiClient];
  cInterface = [wifiClient cInterface];

  wifiClient2 = WFLogForCategory(5uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10))
  {
    v11 = wifiClient2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (cInterface)
  {
    if (v12 && os_log_type_enabled(wifiClient2, v9))
    {
      v14 = 136315138;
      v15 = "[WFInterface disassociateFromCurrentNetworkWithReason:]";
      _os_log_impl(&dword_273ECD000, wifiClient2, v9, "%s: disassociating from current network", &v14, 0xCu);
    }

    wifiClient2 = [(WFInterface *)self wifiClient];
    cInterface2 = [wifiClient2 cInterface];
    [cInterface2 disassociateWithReason:reason];
  }

  else if (v12 && os_log_type_enabled(wifiClient2, v9))
  {
    v14 = 136315138;
    v15 = "[WFInterface disassociateFromCurrentNetworkWithReason:]";
    _os_log_impl(&dword_273ECD000, wifiClient2, v9, "%s: failed to get CWFInterface", &v14, 0xCu);
  }
}

- (void)disassociateFromCarPlayUserConfiguredNetwork
{
  currentNetwork = [(WFInterface *)self currentNetwork];
  if ([currentNetwork carPlayType] == 2)
  {
    v3 = WiFiDeviceClientCopyCurrentNetwork();
    WiFiNetworkSetAssociationDate();
    [(WFInterface *)self _updateCurrentNetworkWithNetwork:v3 callback:0];
  }
}

- (id)_debugLQMString:(id)string
{
  stringCopy = string;
  string = [MEMORY[0x277CCAB68] string];
  v5 = [stringCopy objectForKey:@"RSSI"];
  v6 = [stringCopy objectForKey:@"SCALED_RSSI"];
  [string appendFormat:@"RSSI %@, Scaled RSSI: %@", v5, v6];

  v7 = [stringCopy objectForKey:*MEMORY[0x277D29808]];
  v8 = [stringCopy objectForKey:*MEMORY[0x277D297E8]];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [string appendFormat:@", ipState: %@, noGatewayIP: %@", v7, v8];
  }

  v11 = [stringCopy objectForKey:@"DIRECTED_NETWORK"];
  v12 = v11;
  if (v11)
  {
    [string appendFormat:@", directed %@", v11];
  }

  return string;
}

- (id)_currentInterface
{
  v14 = *MEMORY[0x277D85DE8];
  cInterface = [(WFInterface *)self cInterface];
  associatedOnIRInterface = self->_associatedOnIRInterface;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  v10 = WFCurrentLogLevel(v6, v8) > 2 && v5 != 0;
  if (associatedOnIRInterface)
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      v12 = 136315138;
      v13 = "[WFInterface _currentInterface]";
      _os_log_impl(&dword_273ECD000, v5, v7, "%s: querying current network's IP from ir0.", &v12, 0xCu);
    }

    v5 = cInterface;
    cInterface = self->_irInterface;
  }

  else if (v10 && os_log_type_enabled(v5, v7))
  {
    v12 = 136315138;
    v13 = "[WFInterface _currentInterface]";
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: querying current network's IP from en0.", &v12, 0xCu);
  }

  return cInterface;
}

- (id)IPv4Addresses
{
  v13 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv4Addresses = [_currentInterface IPv4Addresses];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFInterface IPv4Addresses]";
    v11 = 2112;
    v12 = iPv4Addresses;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: addresses='%@'", &v9, 0x16u);
  }

  return iPv4Addresses;
}

- (id)IPv4ARPResolvedIPAddress
{
  v13 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv4ARPResolvedIPAddress = [_currentInterface IPv4ARPResolvedIPAddress];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFInterface IPv4ARPResolvedIPAddress]";
    v11 = 2112;
    v12 = iPv4ARPResolvedIPAddress;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: addresses='%@'", &v9, 0x16u);
  }

  return iPv4ARPResolvedIPAddress;
}

- (id)IPv4SubnetMasks
{
  v13 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv4SubnetMasks = [_currentInterface IPv4SubnetMasks];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFInterface IPv4SubnetMasks]";
    v11 = 2112;
    v12 = iPv4SubnetMasks;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: subnetMasks='%@'", &v9, 0x16u);
  }

  return iPv4SubnetMasks;
}

- (id)IPv4RouterAddress
{
  v13 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv4RouterAddress = [_currentInterface IPv4RouterAddress];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFInterface IPv4RouterAddress]";
    v11 = 2112;
    v12 = iPv4RouterAddress;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: address='%@'", &v9, 0x16u);
  }

  return iPv4RouterAddress;
}

- (id)IPv6Addresses
{
  v13 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv6Addresses = [_currentInterface IPv6Addresses];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFInterface IPv6Addresses]";
    v11 = 2112;
    v12 = iPv6Addresses;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: addresses='%@'", &v9, 0x16u);
  }

  return iPv6Addresses;
}

- (id)IPv6RouterAddress
{
  v13 = *MEMORY[0x277D85DE8];
  _currentInterface = [(WFInterface *)self _currentInterface];
  iPv6RouterAddress = [_currentInterface IPv6RouterAddress];

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(4uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 4 && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFInterface IPv6RouterAddress]";
    v11 = 2112;
    v12 = iPv6RouterAddress;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: address='%@'", &v9, 0x16u);
  }

  return iPv6RouterAddress;
}

- (BOOL)hasValidIPAddress
{
  v32 = *MEMORY[0x277D85DE8];
  ipMonitor = [(WFInterface *)self ipMonitor];
  if ([ipMonitor ipv4ConfigMethod] == 4)
  {
    iPv4RouterAddress = [(WFInterface *)self IPv4RouterAddress];

    if (iPv4RouterAddress)
    {
      currentNetwork2 = WFLogForCategory(0);
      v6 = OSLogForWFLogLevel(4uLL);
      v7 = v6;
      v9 = 1;
      if (WFCurrentLogLevel(v6, v8) < 4 || !currentNetwork2 || !os_log_type_enabled(currentNetwork2, v7))
      {
        goto LABEL_29;
      }

      v30 = 136315138;
      v31 = "[WFInterface hasValidIPAddress]";
      v10 = "%s: manual config with valid router address";
      goto LABEL_22;
    }
  }

  else
  {
  }

  iPv4Addresses = [(WFInterface *)self IPv4Addresses];
  if (iPv4Addresses)
  {
    v12 = iPv4Addresses;
    iPv4RouterAddress2 = [(WFInterface *)self IPv4RouterAddress];
    if (iPv4RouterAddress2)
    {

      goto LABEL_12;
    }

    iPv4ARPResolvedIPAddress = [(WFInterface *)self IPv4ARPResolvedIPAddress];

    if (iPv4ARPResolvedIPAddress)
    {
LABEL_12:
      currentNetwork2 = WFLogForCategory(0);
      v15 = OSLogForWFLogLevel(4uLL);
      v7 = v15;
      v9 = 1;
      if (WFCurrentLogLevel(v15, v16) < 4 || !currentNetwork2 || !os_log_type_enabled(currentNetwork2, v7))
      {
        goto LABEL_29;
      }

      v30 = 136315138;
      v31 = "[WFInterface hasValidIPAddress]";
      v10 = "%s: valid client and router IPv4 address";
      goto LABEL_22;
    }
  }

  iPv6Addresses = [(WFInterface *)self IPv6Addresses];
  if (iPv6Addresses)
  {
    v18 = iPv6Addresses;
    iPv6RouterAddress = [(WFInterface *)self IPv6RouterAddress];

    if (iPv6RouterAddress)
    {
      currentNetwork2 = WFLogForCategory(0);
      v20 = OSLogForWFLogLevel(4uLL);
      v7 = v20;
      v9 = 1;
      if (WFCurrentLogLevel(v20, v21) < 4 || !currentNetwork2 || !os_log_type_enabled(currentNetwork2, v7))
      {
        goto LABEL_29;
      }

      v30 = 136315138;
      v31 = "[WFInterface hasValidIPAddress]";
      v10 = "%s: valid client and router IPv6 address";
LABEL_22:
      _os_log_impl(&dword_273ECD000, currentNetwork2, v7, v10, &v30, 0xCu);
      goto LABEL_29;
    }
  }

  currentNetwork = [(WFInterface *)self currentNetwork];
  isAdhoc = [currentNetwork isAdhoc];

  if (!isAdhoc)
  {
    return 0;
  }

  v24 = WFLogForCategory(0);
  v25 = OSLogForWFLogLevel(4uLL);
  v26 = v25;
  if (WFCurrentLogLevel(v25, v27) >= 4 && v24 && os_log_type_enabled(v24, v26))
  {
    v30 = 136315138;
    v31 = "[WFInterface hasValidIPAddress]";
    _os_log_impl(&dword_273ECD000, v24, v26, "%s: adhoc network", &v30, 0xCu);
  }

  currentNetwork2 = [(WFInterface *)self currentNetwork];
  matchingKnownNetworkProfile = [currentNetwork2 matchingKnownNetworkProfile];
  v9 = matchingKnownNetworkProfile != 0;

LABEL_29:
  return v9;
}

- (BOOL)hasPrimaryIPConfiguration
{
  ipMonitor = [(WFInterface *)self ipMonitor];
  if ([ipMonitor isIPv4Primary])
  {
    isIPv6Primary = 1;
  }

  else
  {
    ipMonitor2 = [(WFInterface *)self ipMonitor];
    isIPv6Primary = [ipMonitor2 isIPv6Primary];
  }

  return isIPv6Primary;
}

- (void)notifyNoNetworksFound
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

- (void)_hostAPStateDidChange:(id)change
{
  v19 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v15 = 136315394;
    v16 = "[WFInterface _hostAPStateDidChange:]";
    v17 = 2112;
    v18 = changeCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: eventData %@", &v15, 0x16u);
  }

  if (changeCopy)
  {
    v9 = [changeCopy objectForKey:@"HostApEnabled"];

    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && v10 && os_log_type_enabled(v10, v12))
    {
      v15 = 136315394;
      v16 = "[WFInterface _hostAPStateDidChange:]";
      v17 = 1024;
      LODWORD(v18) = v9 != 0;
      _os_log_impl(&dword_273ECD000, v10, v12, "%s: host ap state is %d", &v15, 0x12u);
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"WFInterfaceHostAPStateChangeNotification" object:self userInfo:0];
}

- (void)_carPlayNetworkTypeChangedCallback:(int)callback
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v10 = 136315394;
    v11 = "[WFInterface _carPlayNetworkTypeChangedCallback:]";
    v12 = 1024;
    callbackCopy = callback;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: networkType: %d", &v10, 0x12u);
  }

  if ((callback - 1) <= 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WFInterfaceCarPlayNetworkTypeDidChangeNotification" object:self userInfo:0];
  }
}

- (WFClient)wifiClient
{
  WeakRetained = objc_loadWeakRetained(&self->_wifiClient);

  return WeakRetained;
}

- (void)dealloc
{
  if (self->_device)
  {
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    WiFiDeviceClientRegisterCarPlayNetworkTypeChangeCallback();
    device = self->_device;
    if (device)
    {
      CFRelease(device);
      self->_device = 0;
    }
  }

  [(WFInterface *)self _stopMonitoringWiFiEvents];
  v4.receiver = self;
  v4.super_class = WFInterface;
  [(WFInterface *)&v4 dealloc];
}

- (void)initWithDevice:(uint64_t)a1 coreWiFiInterface:(NSObject *)a2 interfaceName:(void *)a3 .cold.1(uint64_t a1, NSObject **a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(1uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = 136315138;
    v11 = "[WFInterface initWithDevice:coreWiFiInterface:interfaceName:]";
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: nil WiFiDeviceClientRef", &v10, 0xCu);
  }

  *a3 = a1;
  *a2 = v6;
}

- (void)_linkQualityChanged:(NSObject *)a3 .cold.1(char a1, NSObject *a2, NSObject **a3)
{
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && (a1 & 1) != 0 && os_log_type_enabled(a2, v7))
  {
    LODWORD(v15) = 136315138;
    *(&v15 + 4) = "[WFInterface _linkQualityChanged:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v9, v10, "%s: linkQualityChanged is nil", v11, v12, v13, v14, v15, "[WFInterface _linkQualityChanged:]" >> 32);
  }

  *a3 = a2;
}

- (void)_currentNetworkDidChangeWithReason:(NSObject *)a1 previousNetwork:.cold.1(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFInterface _currentNetworkDidChangeWithReason:previousNetwork:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: current/previous network are both nil", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

- (void)deviceScanChannels
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }
}

@end