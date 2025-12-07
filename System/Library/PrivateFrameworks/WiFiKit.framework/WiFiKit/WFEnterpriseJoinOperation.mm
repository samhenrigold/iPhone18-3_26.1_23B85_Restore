@interface WFEnterpriseJoinOperation
- (WFEnterpriseJoinOperation)initWithAssocParameters:(id)parameters interface:(id)interface;
- (WFEnterpriseJoinOperation)initWithNetwork:(id)network profile:(id)profile;
- (id)__hasPrivateMACUserJoinFailureUIState:(id)state;
- (void)_handleEnterpriseJoinResult:(int64_t)result userInfo:(id)info network:(__WiFiNetwork *)network;
- (void)_joinComplete:(int)complete userInfo:(__CFDictionary *)info network:(__WiFiNetwork *)network;
- (void)_joinWithCoreWiFi;
- (void)_joinWithMobileWiFi;
- (void)dealloc;
- (void)joinNetworkRef:(__WiFiNetwork *)ref;
- (void)start;
@end

@implementation WFEnterpriseJoinOperation

- (WFEnterpriseJoinOperation)initWithNetwork:(id)network profile:(id)profile
{
  networkCopy = network;
  profileCopy = profile;
  v17.receiver = self;
  v17.super_class = WFEnterpriseJoinOperation;
  v9 = [(WFEnterpriseJoinOperation *)&v17 init];
  v10 = v9;
  v11 = 0;
  if (!networkCopy || !v9)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v9->_network, network);
  if (!profileCopy)
  {
    v11 = 0;
LABEL_15:

    v10 = 0;
    goto LABEL_9;
  }

  objc_storeStrong(&v10->_profile, profile);
  v12 = WiFiManagerClientCreate();
  v10->_manager = v12;
  if (!v12)
  {
    [WFEnterpriseJoinOperation initWithNetwork:&v19 profile:?];
    goto LABEL_14;
  }

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop getCFRunLoop];
  WiFiManagerClientScheduleWithRunLoop();

  v14 = WiFiManagerClientCopyDevices();
  v11 = v14;
  if (!v14 || ![v14 count])
  {
    [WFEnterpriseJoinOperation initWithNetwork:profile:];
LABEL_14:
    v11 = v19;

    goto LABEL_15;
  }

  v15 = [v11 objectAtIndex:0];
  v10->_device = v15;
  if (!v15)
  {
    [WFEnterpriseJoinOperation initWithNetwork:profile:];
    goto LABEL_14;
  }

  CFRetain(v15);
LABEL_9:

  return v10;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = WFEnterpriseJoinOperation;
  [(WFOperation *)&v3 start];
  [(WFEnterpriseJoinOperation *)self _joinWithCoreWiFi];
}

- (id)__hasPrivateMACUserJoinFailureUIState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  userInfo = [stateCopy userInfo];
  v5 = *MEMORY[0x277D02AB0];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D02AB0]];

  if (!v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    underlyingErrors = [stateCopy underlyingErrors];
    v8 = [underlyingErrors countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(underlyingErrors);
        }

        userInfo2 = [*(*(&v14 + 1) + 8 * v11) userInfo];
        v6 = [userInfo2 objectForKeyedSubscript:v5];

        if (v6)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [underlyingErrors countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v6 = 0;
    }
  }

  return v6;
}

- (void)_joinWithCoreWiFi
{
  objc_initWeak(&location, self);
  interface = [(WFEnterpriseJoinOperation *)self interface];
  associationParameters = [(WFEnterpriseJoinOperation *)self associationParameters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__WFEnterpriseJoinOperation__joinWithCoreWiFi__block_invoke;
  v5[3] = &unk_279EBCEC8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [interface associateWithParameters:associationParameters reply:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__WFEnterpriseJoinOperation__joinWithCoreWiFi__block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained associationParameters];
  v6 = [v5 scanResult];
  v7 = [v6 networkName];

  v8 = WFLogForCategory(5uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v3)
  {
    if (v13 && os_log_type_enabled(v8, v10))
    {
      *buf = 138412546;
      v43 = v7;
      v44 = 2112;
      v45 = v3;
      _os_log_impl(&dword_273ECD000, v8, v10, "{ASSOC*} association failed to %@, error: %@", buf, 0x16u);
    }

    v14 = [v3 code];
    if ((v14 & 0xFFFF0000) == 0xEA010000)
    {
      v15 = v14;
      v16 = WFLogForCategory(5uLL);
      v17 = OSLogForWFLogLevel(1uLL);
      v18 = v17;
      if (WFCurrentLogLevel(v17, v19) && v16 && os_log_type_enabled(v16, v18))
      {
        *buf = 134217984;
        v43 = v15;
        _os_log_impl(&dword_273ECD000, v16, v18, "association failed with EAP specific error: %ld", buf, 0xCu);
      }

      v8 = [v3 userInfo];
      [WeakRetained _handleEnterpriseJoinResult:v15 userInfo:v8 network:0];
    }

    else
    {
      v20 = [*(a1 + 32) associationParameters];
      v21 = [v20 scanResult];
      v41 = [v21 RSSI];

      v22 = [*(a1 + 32) associationParameters];
      v23 = [v22 scanResult];
      v8 = [v23 scanRecord];

      v24 = WiFiNetworkCreate();
      v25 = WiFiNetworkRequiresPassword();
      if (v24)
      {
        CFRelease(v24);
      }

      v26 = WFLogForCategory(5uLL);
      v27 = OSLogForWFLogLevel(1uLL);
      v28 = v27;
      if (WFCurrentLogLevel(v27, v29) && v26 && os_log_type_enabled(v26, v28))
      {
        v30 = "is not";
        *buf = 136315650;
        if (v25)
        {
          v30 = "is";
        }

        v43 = v30;
        v44 = 2112;
        v45 = v7;
        v46 = 2048;
        v47 = v41;
        _os_log_impl(&dword_273ECD000, v26, v28, "password %s required for %@, rssi at join: %ld", buf, 0x20u);
      }

      v31 = [*(a1 + 32) __hasPrivateMACUserJoinFailureUIState:v3];
      if (v31)
      {
        v32 = [*(a1 + 32) interface];
        v40 = v7;
        v33 = [v31 BOOLValue];
        v34 = [*(a1 + 32) associationParameters];
        v35 = [v34 scanResult];
        v36 = [v35 networkProfile];
        v37 = v33;
        v7 = v40;
        [v32 setPrivateMACAddressUserJoinFailureUIState:v37 networkProfile:v36];
      }

      v38 = [v31 BOOLValue];
      v39 = [MEMORY[0x277CCA9B8] associationErrorWithCode:objc_msgSend(v3 requiresPassword:"code") signalStrength:v25 != 0 isPrivateMACFailureThresholdMet:{v41, v38}];
      [WeakRetained setError:v39];
    }
  }

  else if (v13 && os_log_type_enabled(v8, v10))
  {
    *buf = 138412290;
    v43 = v7;
    _os_log_impl(&dword_273ECD000, v8, v10, "{ASSOC*} association successful to %@", buf, 0xCu);
  }

  [WeakRetained finish];
}

- (void)_joinWithMobileWiFi
{
  v2 = WFLogForCategory(5uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    v12 = 0;
    OUTLINED_FUNCTION_1_1(&dword_273ECD000, v6, v7, "Unable to create WiFiNetworkRef", v8, v9, v10, v11, v12);
  }

  *self = v2;
}

- (void)joinNetworkRef:(__WiFiNetwork *)ref
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(5uLL);
  v6 = OSLogForWFLogLevel(4uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 4 && v5 && os_log_type_enabled(v5, v7))
  {
    device = self->_device;
    v11 = 136315650;
    v12 = "[WFEnterpriseJoinOperation joinNetworkRef:]";
    v13 = 2112;
    refCopy = ref;
    v15 = 2112;
    v16 = device;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: networkRef: %@ device %@", &v11, 0x20u);
  }

  v10 = WiFiDeviceClientAssociateAsync();
  if (v10)
  {
    [(WFEnterpriseJoinOperation *)self _joinComplete:v10 userInfo:0 network:0];
  }

  if (ref)
  {
    CFRelease(ref);
  }
}

- (void)_joinComplete:(int)complete userInfo:(__CFDictionary *)info network:(__WiFiNetwork *)network
{
  v7 = *&complete;
  v24 = *MEMORY[0x277D85DE8];
  if (HIWORD(complete) == 59905)
  {

    [WFEnterpriseJoinOperation _handleEnterpriseJoinResult:"_handleEnterpriseJoinResult:userInfo:network:" userInfo:complete network:?];
  }

  else
  {
    v9 = WFLogForCategory(5uLL);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
    {
      v20 = 136315650;
      v21 = "[WFEnterpriseJoinOperation _joinComplete:userInfo:network:]";
      v22 = 1024;
      *v23 = v7;
      *&v23[4] = 2112;
      *&v23[6] = info;
      _os_log_impl(&dword_273ECD000, v9, v11, "%s: error code %d (userInfo %@)", &v20, 0x1Cu);
    }

    if (v7 || !network)
    {
      if (network)
      {
        RSSI = WiFiNetworkGetRSSI();
        v14 = WiFiNetworkRequiresPassword();
        network = (v14 != 0);
        v15 = WFLogForCategory(5uLL);
        v16 = OSLogForWFLogLevel(1uLL);
        v17 = v16;
        if (WFCurrentLogLevel(v16, v18) && v15 && os_log_type_enabled(v15, v17))
        {
          v20 = 136315650;
          v21 = "[WFEnterpriseJoinOperation _joinComplete:userInfo:network:]";
          v22 = 2048;
          *v23 = RSSI;
          *&v23[8] = 1024;
          *&v23[10] = v14 != 0;
          _os_log_impl(&dword_273ECD000, v15, v17, "%s: joinRssi: %ld requiresPassword: %d", &v20, 0x1Cu);
        }
      }

      else
      {
        RSSI = 0;
      }

      v19 = [MEMORY[0x277CCA9B8] associationErrorWithCode:v7 requiresPassword:network signalStrength:RSSI];
      [(WFOperation *)self setError:v19];
    }

    [(WFOperation *)self finish];
  }
}

- (void)_handleEnterpriseJoinResult:(int64_t)result userInfo:(id)info network:(__WiFiNetwork *)network
{
  v52 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (network)
  {
    v9 = WiFiNetworkCopyRecord();
    v10 = [v9 objectForKey:*MEMORY[0x277D298D0]];
    network = [v10 BOOLValue];
  }

  v11 = WFLogForCategory(5uLL);
  v12 = OSLogForWFLogLevel(1uLL);
  v13 = v12;
  if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
  {
    *buf = 134218498;
    resultCopy2 = result;
    v48 = 2112;
    v49 = infoCopy;
    v50 = 1024;
    networkCopy = network;
    _os_log_impl(&dword_273ECD000, v11, v13, "handling enterprise join result: %ld userInfo: %@ isPrivateMACFailureThresholdMet: %d", buf, 0x1Cu);
  }

  switch(result)
  {
    case 3:
      v24 = [infoCopy objectForKey:@"RequiredProperties"];
      v25 = WFLogForCategory(5uLL);
      v26 = OSLogForWFLogLevel(1uLL);
      v27 = v26;
      if (WFCurrentLogLevel(v26, v28) && v25 && os_log_type_enabled(v25, v27))
      {
        *buf = 138412290;
        resultCopy2 = v24;
        _os_log_impl(&dword_273ECD000, v25, v27, "user input required, requested info %@", buf, 0xCu);
      }

      v29 = [infoCopy objectForKey:@"TLSServerCertificateChain"];
      v30 = v29;
      if (v29)
      {
        v44 = @"kWFAssociationCertificateChainKey";
        v45 = v29;
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v45;
        v33 = &v44;
      }

      else if ([v24 containsObject:@"UserName"])
      {
        v42 = @"kWFAssociationUsernameRequiredKey";
        v43 = MEMORY[0x277CBEC38];
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v43;
        v33 = &v42;
      }

      else
      {
        if (![v24 containsObject:@"UserPassword"])
        {
          v38 = 0;
          goto LABEL_37;
        }

        v40 = @"kWFAssociationPasswordRequiredKey";
        v41 = MEMORY[0x277CBEC38];
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v41;
        v33 = &v40;
      }

      v38 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:{1, v40, v41, v42, v43, v44, v45}];
LABEL_37:
      v39 = [MEMORY[0x277CCA9B8] associationErrorWithReason:7 userInfo:v38];
      [(WFOperation *)self setError:v39];

      [(WFOperation *)self finish];
      goto LABEL_38;
    case 1:
      v19 = WFLogForCategory(5uLL);
      v20 = OSLogForWFLogLevel(1uLL);
      v21 = v20;
      if (WFCurrentLogLevel(v20, v22) && v19 && os_log_type_enabled(v19, v21))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v19, v21, "EAP status = failed", buf, 2u);
      }

      v23 = [MEMORY[0x277CCA9B8] associationErrorWithReason:12];
      break;
    case 0:
      v15 = WFLogForCategory(5uLL);
      v16 = OSLogForWFLogLevel(1uLL);
      v17 = v16;
      if (WFCurrentLogLevel(v16, v18) && v15 && os_log_type_enabled(v15, v17))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v15, v17, "EAP status = ok", buf, 2u);
      }

      goto LABEL_31;
    default:
      v34 = WFLogForCategory(5uLL);
      v35 = OSLogForWFLogLevel(1uLL);
      v36 = v35;
      if (WFCurrentLogLevel(v35, v37) && v34 && os_log_type_enabled(v34, v36))
      {
        *buf = 134349056;
        resultCopy2 = result;
        _os_log_impl(&dword_273ECD000, v34, v36, "EAP status = unhandled error code %{public}ld", buf, 0xCu);
      }

      v23 = [MEMORY[0x277CCA9B8] associationErrorWithCode:result isPrivateMACFailureThresholdMet:network];
      break;
  }

  v15 = v23;
  [(WFOperation *)self setError:v23];
LABEL_31:

  [(WFOperation *)self finish];
LABEL_38:
}

- (void)dealloc
{
  device = self->_device;
  if (device)
  {
    CFRelease(device);
    self->_device = 0;
  }

  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  v5.receiver = self;
  v5.super_class = WFEnterpriseJoinOperation;
  [(WFEnterpriseJoinOperation *)&v5 dealloc];
}

- (WFEnterpriseJoinOperation)initWithAssocParameters:(id)parameters interface:(id)interface
{
  v24 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  interfaceCopy = interface;
  v21.receiver = self;
  v21.super_class = WFEnterpriseJoinOperation;
  v9 = [(WFEnterpriseJoinOperation *)&v21 init];
  v10 = v9;
  if (v9)
  {
    if (parametersCopy)
    {
      objc_storeStrong(&v9->_associationParameters, parameters);
      objc_storeStrong(&v10->_interface, interface);
      v11 = MEMORY[0x277CCACA8];
      scanResult = [parametersCopy scanResult];
      networkName = [(WFEnterpriseJoinOperation *)scanResult networkName];
      v14 = [v11 stringWithFormat:@"Association operation to network='%@'", networkName];
      name = v10->_name;
      v10->_name = v14;
    }

    else
    {
      networkName = WFLogForCategory(5uLL);
      v18 = OSLogForWFLogLevel(1uLL);
      v19 = v18;
      if (WFCurrentLogLevel(v18, v20) && networkName && os_log_type_enabled(networkName, v19))
      {
        *buf = 136315138;
        v23 = "[WFEnterpriseJoinOperation initWithAssocParameters:interface:]";
        _os_log_impl(&dword_273ECD000, networkName, v19, "%s: missing association parameters", buf, 0xCu);
      }

      scanResult = v10;
      v10 = 0;
    }

    v16 = v10;

    v10 = scanResult;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)initWithNetwork:profile:.cold.1()
{
  v3 = OUTLINED_FUNCTION_0_2();
  v4 = WFLogForCategory(v3);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v14 = 0;
    OUTLINED_FUNCTION_2_0(&dword_273ECD000, v8, v9, "failed to get WiFiDeviceClient", v10, v11, v12, v13, v14);
  }

  *v1 = v2;
  *v0 = v4;
}

- (void)initWithNetwork:profile:.cold.2()
{
  v3 = OUTLINED_FUNCTION_0_2();
  v4 = WFLogForCategory(v3);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v14 = 0;
    OUTLINED_FUNCTION_2_0(&dword_273ECD000, v8, v9, "failed to get array of WiFiDeviceClients", v10, v11, v12, v13, v14);
  }

  *v1 = v2;
  *v0 = v4;
}

- (void)initWithNetwork:(NSObject *)a1 profile:(void *)a2 .cold.3(NSObject **a1, void *a2)
{
  v4 = WFLogForCategory(5uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v4, v6, "failed to create WiFiManagerClientRef", v8, 2u);
  }

  *a2 = 0;
  *a1 = v4;
}

@end