@interface WFJoinOperation
- (WFJoinOperation)initWithAssocParameters:(id)parameters interface:(id)interface;
- (WFJoinOperation)initWithNetwork:(id)network profile:(id)profile;
- (id)__hasPrivateMACUserJoinFailureUIState:(id)state;
- (void)_joinComplete:(int)complete userInfo:(__CFDictionary *)info network:(__WiFiNetwork *)network;
- (void)_joinWithCoreWiFi;
- (void)dealloc;
- (void)joinNetworkRef:(__WiFiNetwork *)ref;
- (void)start;
@end

@implementation WFJoinOperation

- (WFJoinOperation)initWithNetwork:(id)network profile:(id)profile
{
  networkCopy = network;
  profileCopy = profile;
  v17.receiver = self;
  v17.super_class = WFJoinOperation;
  v9 = [(WFJoinOperation *)&v17 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_profile, profile), !networkCopy))
  {
    v14 = 0;
LABEL_14:

    v10 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v10->_network, network);
  v11 = WiFiManagerClientCreate();
  v10->_manager = v11;
  if (!v11)
  {
    [WFEnterpriseJoinOperation initWithNetwork:&v19 profile:?];
    goto LABEL_13;
  }

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop getCFRunLoop];
  WiFiManagerClientScheduleWithRunLoop();

  v13 = WiFiManagerClientCopyDevices();
  v14 = v13;
  if (!v13 || ![v13 count])
  {
    [WFEnterpriseJoinOperation initWithNetwork:profile:];
LABEL_13:
    v14 = v19;

    goto LABEL_14;
  }

  v15 = [v14 objectAtIndex:0];
  v10->_device = v15;
  if (!v15)
  {
    [WFEnterpriseJoinOperation initWithNetwork:profile:];
    goto LABEL_13;
  }

  CFRetain(v15);
LABEL_8:

  return v10;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = WFJoinOperation;
  [(WFOperation *)&v3 start];
  [(WFJoinOperation *)self _joinWithCoreWiFi];
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
  interface = [(WFJoinOperation *)self interface];
  associationParameters = [(WFJoinOperation *)self associationParameters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__WFJoinOperation__joinWithCoreWiFi__block_invoke;
  v5[3] = &unk_279EBCEC8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [interface associateWithParameters:associationParameters reply:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __36__WFJoinOperation__joinWithCoreWiFi__block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
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
      v37 = v7;
      v38 = 2112;
      v39 = v3;
      _os_log_impl(&dword_273ECD000, v8, v10, "{ASSOC*} association failed to %@, error: %@", buf, 0x16u);
    }

    v35 = v7;

    v14 = [*(a1 + 32) associationParameters];
    v15 = [v14 scanResult];
    v33 = [v15 RSSI];

    v16 = [*(a1 + 32) associationParameters];
    v17 = [v16 scanResult];
    v8 = [v17 scanRecord];

    v18 = WiFiNetworkCreate();
    v19 = WiFiNetworkRequiresPassword();
    if (v18)
    {
      CFRelease(v18);
    }

    v20 = [*(a1 + 32) __hasPrivateMACUserJoinFailureUIState:{v3, v33}];
    if (v20)
    {
      v21 = [*(a1 + 32) interface];
      v22 = [v20 BOOLValue];
      v23 = [*(a1 + 32) associationParameters];
      v24 = [v23 scanResult];
      v25 = [v24 networkProfile];
      [v21 setPrivateMACAddressUserJoinFailureUIState:v22 networkProfile:v25];
    }

    v26 = [v20 BOOLValue];
    v27 = WFLogForCategory(5uLL);
    v28 = OSLogForWFLogLevel(1uLL);
    v29 = v28;
    if (WFCurrentLogLevel(v28, v30) && v27 && os_log_type_enabled(v27, v29))
    {
      v31 = "is not";
      *buf = 136315650;
      if (v19)
      {
        v31 = "is";
      }

      v37 = v31;
      v38 = 2112;
      v39 = v35;
      v40 = 2048;
      v41 = v34;
      _os_log_impl(&dword_273ECD000, v27, v29, "password %s required for %@, rssi at join: %ld", buf, 0x20u);
    }

    v32 = [MEMORY[0x277CCA9B8] associationErrorWithCode:objc_msgSend(v3 requiresPassword:"code") signalStrength:v19 != 0 isPrivateMACFailureThresholdMet:{v34, v26}];
    [WeakRetained setError:v32];

    v7 = v35;
  }

  else if (v13 && os_log_type_enabled(v8, v10))
  {
    *buf = 138412290;
    v37 = v7;
    _os_log_impl(&dword_273ECD000, v8, v10, "{ASSOC*} association successful to %@", buf, 0xCu);
  }

  [WeakRetained finish];
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
    v12 = "[WFJoinOperation joinNetworkRef:]";
    v13 = 2112;
    refCopy = ref;
    v15 = 2112;
    v16 = device;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: networkRef: %@ device %@", &v11, 0x20u);
  }

  v10 = WiFiDeviceClientAssociateAsync();
  if (v10)
  {
    [(WFJoinOperation *)self _joinComplete:v10 userInfo:0 network:0];
  }

  if (ref)
  {
    CFRelease(ref);
  }
}

- (void)_joinComplete:(int)complete userInfo:(__CFDictionary *)info network:(__WiFiNetwork *)network
{
  v7 = *&complete;
  v69 = *MEMORY[0x277D85DE8];
  v9 = WFLogForCategory(5uLL);
  v10 = OSLogForWFLogLevel(1uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) && v9 && os_log_type_enabled(v9, v11))
  {
    *buf = 136315650;
    v62 = "[WFJoinOperation _joinComplete:userInfo:network:]";
    v63 = 1024;
    v64 = v7;
    v65 = 2112;
    *v66 = info;
    _os_log_impl(&dword_273ECD000, v9, v11, "%s: error code %d (userInfo %@)", buf, 0x1Cu);
  }

  if (v7 || !network)
  {
    if (!network)
    {
      v47 = 0;
      RSSI = 0;
      v15 = 0;
LABEL_45:
      v56 = [MEMORY[0x277CCA9B8] associationErrorWithCode:v7 requiresPassword:v15 signalStrength:RSSI isPrivateMACFailureThresholdMet:{v47, v57}];
      [(WFOperation *)self setError:v56];

      goto LABEL_46;
    }

    RSSI = WiFiNetworkGetRSSI();
    v14 = WiFiNetworkRequiresPassword();
    v15 = v14 != 0;
    v59 = WiFiNetworkCopyRecord();
    v16 = [v59 objectForKey:*MEMORY[0x277D298D0]];
    bOOLValue = [v16 BOOLValue];

    v17 = WFLogForCategory(5uLL);
    v18 = OSLogForWFLogLevel(1uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) && v17)
    {
      v21 = v17;
      if (os_log_type_enabled(v21, v19))
      {
        profile = [(WFJoinOperation *)self profile];
        userProvidedPassword = [profile userProvidedPassword];
        *buf = 136316162;
        v62 = "[WFJoinOperation _joinComplete:userInfo:network:]";
        v63 = 1024;
        v64 = v14 != 0;
        v15 = v14 != 0;
        v65 = 1024;
        *v66 = userProvidedPassword;
        *&v66[4] = 2048;
        *&v66[6] = RSSI;
        v67 = 1024;
        v68 = bOOLValue;
        _os_log_impl(&dword_273ECD000, v21, v19, "%s: requiresPassword: %d userProvidedPassword: %d joinRssi: %ld, isPrivateMacFailureThresholdMet: %d", buf, 0x28u);
      }
    }

    if (v14)
    {
      profile2 = [(WFJoinOperation *)self profile];
      userProvidedPassword2 = [profile2 userProvidedPassword];

      if (userProvidedPassword2)
      {
        v26 = WFLogForCategory(5uLL);
        v27 = OSLogForWFLogLevel(1uLL);
        v28 = v27;
        if (WFCurrentLogLevel(v27, v29) && v26)
        {
          v30 = v26;
          if (os_log_type_enabled(v30, v28))
          {
            profile3 = [(WFJoinOperation *)self profile];
            userProvidedPassword3 = [profile3 userProvidedPassword];
            *buf = 136315650;
            v62 = "[WFJoinOperation _joinComplete:userInfo:network:]";
            v63 = 1024;
            v64 = 1;
            v65 = 1024;
            *v66 = userProvidedPassword3;
            _os_log_impl(&dword_273ECD000, v30, v28, "%s: requiresPassword %d userProvidedPassword %d", buf, 0x18u);
          }
        }

        v58 = v15;
        v57 = RSSI;

        profile4 = [(WFJoinOperation *)self profile];
        previousPassword = [profile4 previousPassword];
        if (previousPassword)
        {
          v35 = previousPassword;
          profile5 = [(WFJoinOperation *)self profile];
          password = [profile5 password];
          profile6 = [(WFJoinOperation *)self profile];
          previousPassword2 = [profile6 previousPassword];
          v40 = [password isEqualToString:previousPassword2];

          if ((v40 & 1) == 0)
          {
            v41 = WFLogForCategory(5uLL);
            v42 = OSLogForWFLogLevel(1uLL);
            v43 = v42;
            if (WFCurrentLogLevel(v42, v44) && v41 && os_log_type_enabled(v41, v43))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v41, v43, "Resave previous password to the keychain", buf, 2u);
            }

            profile7 = [(WFJoinOperation *)self profile];
            previousPassword3 = [profile7 previousPassword];
            WiFiNetworkSetPassword();

            RSSI = v57;
            v15 = v58;
            goto LABEL_44;
          }
        }

        else
        {
        }

        profile8 = [(WFJoinOperation *)self profile];
        previousPassword4 = [profile8 previousPassword];

        v50 = WFLogForCategory(5uLL);
        v51 = OSLogForWFLogLevel(1uLL);
        v52 = v51;
        if (WFCurrentLogLevel(v51, v53))
        {
          v54 = v50 == 0;
        }

        else
        {
          v54 = 1;
        }

        v55 = !v54;
        if (previousPassword4)
        {
          RSSI = v57;
          v15 = v58;
          if (v55 && os_log_type_enabled(v50, v52))
          {
            *buf = 0;
            _os_log_impl(&dword_273ECD000, v50, v52, "Same password in the keychain", buf, 2u);
          }
        }

        else
        {
          RSSI = v57;
          v15 = v58;
          if (v55 && os_log_type_enabled(v50, v52))
          {
            *buf = 0;
            _os_log_impl(&dword_273ECD000, v50, v52, "Remove added password from keychain", buf, 2u);
          }

          WiFiNetworkRemovePassword();
        }
      }
    }

LABEL_44:

    v47 = bOOLValue;
    goto LABEL_45;
  }

LABEL_46:
  [(WFOperation *)self finish];
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
  v5.super_class = WFJoinOperation;
  [(WFJoinOperation *)&v5 dealloc];
}

- (WFJoinOperation)initWithAssocParameters:(id)parameters interface:(id)interface
{
  v24 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  interfaceCopy = interface;
  v21.receiver = self;
  v21.super_class = WFJoinOperation;
  v9 = [(WFJoinOperation *)&v21 init];
  v10 = v9;
  if (v9)
  {
    if (parametersCopy)
    {
      objc_storeStrong(&v9->_associationParameters, parameters);
      objc_storeStrong(&v10->_interface, interface);
      v11 = MEMORY[0x277CCACA8];
      scanResult = [parametersCopy scanResult];
      networkName = [(WFJoinOperation *)scanResult networkName];
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
        v23 = "[WFJoinOperation initWithAssocParameters:interface:]";
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

@end