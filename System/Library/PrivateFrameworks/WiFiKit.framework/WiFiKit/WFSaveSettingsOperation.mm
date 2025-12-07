@interface WFSaveSettingsOperation
- (NSOperationQueue)keychainQueue;
- (WFSaveSettingsOperation)initWithSSID:(id)d interfaceName:(id)name settings:(id)settings;
- (__SCNetworkSet)_createNewSetForNetworkNamed:(id)named interfaceName:(id)name;
- (__SCNetworkSet)_defaultSetRetained;
- (void)_applyProxySettings:(id)settings service:(__SCNetworkProtocol *)service;
- (void)dealloc;
- (void)start;
@end

@implementation WFSaveSettingsOperation

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    CFRelease(prefs);
    self->_prefs = 0;
  }

  v4.receiver = self;
  v4.super_class = WFSaveSettingsOperation;
  [(WFSaveSettingsOperation *)&v4 dealloc];
}

- (void)_applyProxySettings:(id)settings service:(__SCNetworkProtocol *)service
{
  selfCopy = self;
  v66 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v6 = SCNetworkProtocolGetConfiguration(service);
  v7 = [[WFSettingsProxy alloc] initWithDictionary:v6];
  if (-[WFSettingsProxy customProxy](v7, "customProxy") && -[WFSettingsProxy authenticated](v7, "authenticated") && ![settingsCopy authenticated] || objc_msgSend(settingsCopy, "authenticated", selfCopy))
  {
    if (v7 && ([settingsCopy authenticated] & 1) == 0)
    {
      v21 = WFLogForCategory(0);
      v22 = OSLogForWFLogLevel(4uLL);
      v23 = v22;
      if (WFCurrentLogLevel(v22, v24) >= 4 && v21)
      {
        v25 = v21;
        if (os_log_type_enabled(v25, v23))
        {
          server = [(WFSettingsProxy *)v7 server];
          port = [(WFSettingsProxy *)v7 port];
          username = [(WFSettingsProxy *)v7 username];
          *buf = 138412802;
          v61 = server;
          v62 = 2112;
          v63 = port;
          v64 = 2112;
          v65 = username;
          _os_log_impl(&dword_273ECD000, v25, v23, "Removing HTTP proxy password in KC server %@, port %@, username %@", buf, 0x20u);
        }
      }

      server2 = [(WFSettingsProxy *)v7 server];
      port2 = [(WFSettingsProxy *)v7 port];
      username2 = [(WFSettingsProxy *)v7 username];
      v20 = [WFProxyKeychainOperation removePasswordOperationForHost:server2 port:port2 username:username2];
    }

    else
    {
      if (![settingsCopy authenticated])
      {
        goto LABEL_22;
      }

      v8 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(4uLL);
      v10 = v9;
      if (WFCurrentLogLevel(v9, v11) >= 4 && v8)
      {
        v12 = v8;
        if (os_log_type_enabled(v12, v10))
        {
          server3 = [settingsCopy server];
          port3 = [settingsCopy port];
          username3 = [settingsCopy username];
          *buf = 138412802;
          v61 = server3;
          v62 = 2112;
          v63 = port3;
          v64 = 2112;
          v65 = username3;
          _os_log_impl(&dword_273ECD000, v12, v10, "Saving new HTTP proxy password in KC server %@, port %@, username %@", buf, 0x20u);
        }
      }

      server2 = [settingsCopy server];
      port2 = [settingsCopy port];
      username2 = [settingsCopy username];
      password = [settingsCopy password];
      v20 = [WFProxyKeychainOperation savePassswordOperationForHost:server2 port:port2 username:username2 password:password];
    }

    if (v20)
    {
      objc_initWeak(buf, v20);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __55__WFSaveSettingsOperation__applyProxySettings_service___block_invoke;
      v56[3] = &unk_279EBCDE8;
      objc_copyWeak(&v58, buf);
      v57 = settingsCopy;
      [v20 setCompletionBlock:v56];
      [(WFSaveSettingsOperation *)selfCopy addDependency:v20];
      keychainQueue = [(WFSaveSettingsOperation *)selfCopy keychainQueue];
      v59 = v20;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
      [keychainQueue addOperations:v30 waitUntilFinished:1];

      objc_destroyWeak(&v58);
      objc_destroyWeak(buf);
LABEL_27:

      goto LABEL_28;
    }

LABEL_22:
    v20 = WFLogForCategory(0);
    v31 = OSLogForWFLogLevel(1uLL);
    v32 = v31;
    if (WFCurrentLogLevel(v31, v33) && v20)
    {
      v20 = v20;
      if (os_log_type_enabled(v20, v32))
      {
        server4 = [settingsCopy server];
        port4 = [settingsCopy port];
        username4 = [settingsCopy username];
        *buf = 138412802;
        v61 = server4;
        v62 = 2112;
        v63 = port4;
        v64 = 2112;
        v65 = username4;
        _os_log_impl(&dword_273ECD000, v20, v32, "Failed to create WFProxyKeychainOperation for host: %@, port: %@, user: %@", buf, 0x20u);
      }
    }

    goto LABEL_27;
  }

LABEL_28:
  v37 = WFLogForCategory(0);
  v38 = OSLogForWFLogLevel(4uLL);
  v39 = v38;
  if (WFCurrentLogLevel(v38, v40) >= 4 && v37)
  {
    v41 = v37;
    if (os_log_type_enabled(v41, v39))
    {
      protocol = [settingsCopy protocol];
      items = [settingsCopy items];
      *buf = 138412546;
      v61 = protocol;
      v62 = 2112;
      v63 = items;
      _os_log_impl(&dword_273ECD000, v41, v39, "%@ saving to SC %@", buf, 0x16u);
    }
  }

  items2 = [settingsCopy items];
  v45 = SCNetworkProtocolSetConfiguration(service, items2) == 0;

  if (v45)
  {
    v46 = WFLogForCategory(0);
    v47 = OSLogForWFLogLevel(1uLL);
    v48 = v47;
    if (WFCurrentLogLevel(v47, v49) && v46)
    {
      v50 = v46;
      if (os_log_type_enabled(v50, v48))
      {
        protocol2 = [settingsCopy protocol];
        ssid = [(WFSaveSettingsOperation *)selfCopy ssid];
        v53 = SCError();
        v54 = SCErrorString(v53);
        *buf = 138412802;
        v61 = protocol2;
        v62 = 2112;
        v63 = ssid;
        v64 = 2080;
        v65 = v54;
        _os_log_impl(&dword_273ECD000, v50, v48, "WiFi: Couldn't set configuration for %@ for %@: %s", buf, 0x20u);
      }
    }
  }
}

void __55__WFSaveSettingsOperation__applyProxySettings_service___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = WFLogForCategory(0);
    v5 = OSLogForWFLogLevel(1uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) && v4)
    {
      v8 = v4;
      if (os_log_type_enabled(v8, v6))
      {
        v9 = [*(a1 + 32) server];
        v10 = [*(a1 + 32) port];
        v11 = [*(a1 + 32) username];
        v12 = 138412802;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_273ECD000, v8, v6, "Error saving password to the keychain for host: %@, port: %@, user: %@", &v12, 0x20u);
      }
    }
  }
}

- (__SCNetworkSet)_createNewSetForNetworkNamed:(id)named interfaceName:(id)name
{
  v84 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  nameCopy = name;
  _defaultSetRetained = [(WFSaveSettingsOperation *)self _defaultSetRetained];
  if (!_defaultSetRetained)
  {
    v11 = 0;
    goto LABEL_54;
  }

  v9 = _defaultSetRetained;
  v10 = SCNetworkSetCreate(self->_prefs);
  if (!v10)
  {
    v33 = WFLogForCategory(0);
    v34 = OSLogForWFLogLevel(1uLL);
    v35 = v34;
    if (WFCurrentLogLevel(v34, v36) && v33)
    {
      v37 = v33;
      if (os_log_type_enabled(v37, v35))
      {
        v38 = SCError();
        *buf = 136446210;
        v79 = SCErrorString(v38);
        _os_log_impl(&dword_273ECD000, v37, v35, "WiFi: SCNetworkSetCreate() failed: %{public}s\n", buf, 0xCu);
      }
    }

LABEL_52:
    v11 = 0;
    goto LABEL_53;
  }

  v11 = v10;
  if (([(__CFString *)namedCopy isEqualToString:@"Automatic"]& 1) == 0)
  {
    SCNetworkSetSetName(v11, namedCopy);
  }

  ServiceOrder = SCNetworkSetGetServiceOrder(v9);
  if (!SCNetworkSetSetServiceOrder(v11, ServiceOrder))
  {
    v39 = WFLogForCategory(0);
    v40 = OSLogForWFLogLevel(1uLL);
    v41 = v40;
    if (WFCurrentLogLevel(v40, v42) && v39)
    {
      v43 = v39;
      if (os_log_type_enabled(v43, v41))
      {
        v44 = SCError();
        *buf = 136446210;
        v79 = SCErrorString(v44);
        _os_log_impl(&dword_273ECD000, v43, v41, "WiFi: SCNetworkSetSetServiceOrder() failed: %{public}s\n", buf, 0xCu);
      }
    }

    v14 = 0;
LABEL_50:
    SCNetworkSetRemove(v11);
    CFRelease(v11);
    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_52;
  }

  v13 = SCNetworkSetCopyServices(v9);
  if (!v13)
  {
    goto LABEL_53;
  }

  v14 = v13;
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    goto LABEL_60;
  }

  v16 = Count;
  v75 = 0;
  v73 = v9;
  v74 = namedCopy;
  service = 0;
  v17 = 0;
  v18 = 0;
  v76 = v11;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
    Interface = SCNetworkServiceGetInterface(ValueAtIndex);
    if (Interface)
    {
      v21 = Interface;
      while (1)
      {
        v22 = v18;
        v18 = SCNetworkInterfaceGetBSDName(v21);

        if ([v18 isEqualToString:nameCopy])
        {
          break;
        }

        v21 = SCNetworkInterfaceGetInterface(v21);
        if (!v21)
        {
          goto LABEL_13;
        }
      }

      v24 = v14;
      v25 = WFLogForCategory(0);
      v26 = OSLogForWFLogLevel(3uLL);
      v27 = v26;
      if (WFCurrentLogLevel(v26, v28) >= 3 && v25 && os_log_type_enabled(v25, v27))
      {
        *buf = 136315650;
        v79 = "[WFSaveSettingsOperation _createNewSetForNetworkNamed:interfaceName:]";
        v80 = 2112;
        v81 = v21;
        v82 = 2112;
        v83 = nameCopy;
        _os_log_impl(&dword_273ECD000, v25, v27, "%s: found interface='%@' matching name='%@'", buf, 0x20u);
      }

      if (service)
      {
        v23 = ValueAtIndex;
        v14 = v24;
        v11 = v76;
      }

      else
      {
        v29 = SCNetworkServiceCreate(self->_prefs, v21);
        v14 = v24;
        if (!v29)
        {
          v59 = WFLogForCategory(0);
          v60 = OSLogForWFLogLevel(1uLL);
          v61 = v60;
          v9 = v73;
          v11 = v76;
          if (WFCurrentLogLevel(v60, v62) && v59)
          {
            v63 = v59;
            if (os_log_type_enabled(v63, v61))
            {
              v64 = SCError();
              v65 = SCErrorString(v64);
              *buf = 136446210;
              v79 = v65;
              _os_log_impl(&dword_273ECD000, v63, v61, "WiFi: SCNetworkServiceCreate() failed: %{public}s\n", buf, 0xCu);
            }
          }

          goto LABEL_49;
        }

        v23 = v29;
        v11 = v76;
        if (!SCNetworkServiceEstablishDefaultConfiguration(v29))
        {
          v66 = WFLogForCategory(0);
          v67 = OSLogForWFLogLevel(1uLL);
          v68 = v67;
          v9 = v73;
          if (WFCurrentLogLevel(v67, v69) && v66)
          {
            v70 = v66;
            if (os_log_type_enabled(v70, v68))
            {
              v71 = SCError();
              v72 = SCErrorString(v71);
              *buf = 136446210;
              v79 = v72;
              _os_log_impl(&dword_273ECD000, v70, v68, "WiFi: SCNetworkServiceEstablishDefaultConfiguration() failed: %{public}s\n", buf, 0xCu);
            }
          }

LABEL_48:
          SCNetworkServiceRemove(v23);
          CFRelease(v23);
LABEL_49:
          namedCopy = v74;
          goto LABEL_50;
        }

        SCNetworkServiceSetName(v23, @"Wi-Fi by wifikit");
        service = v23;
        v75 = ValueAtIndex;
      }
    }

    else
    {
LABEL_13:
      v23 = ValueAtIndex;
    }

    if (!SCNetworkSetAddService(v11, v23))
    {
      v45 = WFLogForCategory(0);
      v46 = OSLogForWFLogLevel(1uLL);
      v47 = v46;
      v9 = v73;
      if (WFCurrentLogLevel(v46, v48) && v45)
      {
        v49 = v45;
        if (os_log_type_enabled(v49, v47))
        {
          v50 = SCError();
          v51 = SCErrorString(v50);
          *buf = 136446210;
          v79 = v51;
          _os_log_impl(&dword_273ECD000, v49, v47, "WiFi: SCNetworkSetAddService() failed: %{public}s\n", buf, 0xCu);
        }
      }

      v23 = service;
      if (service)
      {
        goto LABEL_48;
      }

      goto LABEL_49;
    }

    ++v17;
  }

  while (v17 != v16);

  v9 = v73;
  namedCopy = v74;
  v30 = service;
  if (service)
  {
    if (v75)
    {
      v31 = SCNetworkSetGetServiceOrder(v73);
      if (v31)
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, v31);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      }

      v53 = MutableCopy;
      v54 = CFArrayGetCount(MutableCopy);
      ServiceID = SCNetworkServiceGetServiceID(v75);
      v85.location = 0;
      v85.length = v54;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v53, v85, ServiceID);
      if (FirstIndexOfValue != -1)
      {
        v57 = FirstIndexOfValue;
        v58 = SCNetworkServiceGetServiceID(service);
        CFArraySetValueAtIndex(v53, v57, v58);
        SCNetworkSetSetServiceOrder(v11, v53);
      }

      CFRelease(v53);
      v30 = service;
    }

    CFRelease(v30);
  }

LABEL_60:
  CFRelease(v14);
LABEL_53:
  CFRelease(v9);
LABEL_54:

  return v11;
}

- (__SCNetworkSet)_defaultSetRetained
{
  v3 = SCNetworkSetCopyAll(self->_prefs);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    goto LABEL_8;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    v9 = SCNetworkSetGetName(ValueAtIndex);
    if ([v9 isEqualToString:@"Automatic"])
    {
      break;
    }

    if (v6 == ++v7)
    {
      goto LABEL_8;
    }
  }

  CFRetain(ValueAtIndex);

  if (!ValueAtIndex)
  {
LABEL_8:
    ValueAtIndex = SCNetworkSetCopyCurrent(self->_prefs);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return ValueAtIndex;
}

- (NSOperationQueue)keychainQueue
{
  keychainQueue = self->_keychainQueue;
  if (!keychainQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_keychainQueue;
    self->_keychainQueue = v4;

    [(NSOperationQueue *)self->_keychainQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_keychainQueue setQualityOfService:17];
    keychainQueue = self->_keychainQueue;
  }

  return keychainQueue;
}

- (WFSaveSettingsOperation)initWithSSID:(id)d interfaceName:(id)name settings:(id)settings
{
  dCopy = d;
  nameCopy = name;
  settingsCopy = settings;
  v21.receiver = self;
  v21.super_class = WFSaveSettingsOperation;
  v11 = [(WFSaveSettingsOperation *)&v21 init];
  v12 = v11;
  if (!dCopy)
  {
    goto LABEL_8;
  }

  if (!v11)
  {
    name = 0;
    goto LABEL_7;
  }

  v13 = [dCopy copy];
  ssid = v12->_ssid;
  v12->_ssid = v13;

  if (nameCopy && (v15 = [nameCopy copy], interfaceName = v12->_interfaceName, v12->_interfaceName = v15, interfaceName, settingsCopy) && (objc_storeStrong(&v12->_settings, settings), v17 = SCPreferencesCreateWithAuthorization(0, @"com.apple.wifikit", 0, 0), (v12->_prefs = v17) != 0))
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Save settings for '%@'", v12->_ssid];
    name = v12->_name;
    v12->_name = v18;
  }

  else
  {
LABEL_8:
    name = v12;
    v12 = 0;
  }

LABEL_7:

  return v12;
}

- (void)start
{
  selfCopy = self;
  v230[1] = *MEMORY[0x277D85DE8];
  v221.receiver = self;
  v221.super_class = WFSaveSettingsOperation;
  [(WFOperation *)&v221 start];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel(v5, v6) >= 3 && v4)
  {
    if (OUTLINED_FUNCTION_5(v4))
    {
      ssid = [(WFSaveSettingsOperation *)selfCopy ssid];
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_1_0(&dword_273ECD000, v8, v9, "Starting persisting settings for ssid: %@", v10, v11, v12, v13, v189, v191, v192, set, v196, v198, v200, v202, *v204, *&v204[8], v205, v206, v208[0], v208[1], v209, v211, obj, v214, v215[0], v215[1], v216, *(&v216 + 1), v217[0], v217[1], v218, *(&v218 + 1), v219, v220, v221.receiver, v221.super_class);
    }
  }

  v14 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
  [v14 activate];
  v207 = selfCopy->_interfaceName;
  v201 = v14;
  userSettings = [v14 userSettings];
  oSSpecificAttributes = [userSettings OSSpecificAttributes];
  v16 = *MEMORY[0x277D298B0];
  v17 = [oSSpecificAttributes objectForKeyedSubscript:*MEMORY[0x277D298B0]];

  v199 = v17;
  if (!v17 || (-[WFSaveSettingsOperation ssid](selfCopy, "ssid"), v18 = objc_claimAutoreleasedReturnValue(), [v17 objectForKey:v18], v19 = objc_claimAutoreleasedReturnValue(), v18, !v19))
  {
    dictionary = WFLogForCategory(0);
    v35 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel(v35, v36) >= 3 && dictionary)
    {
      if (OUTLINED_FUNCTION_5(dictionary))
      {
        ssid2 = [(WFSaveSettingsOperation *)selfCopy ssid];
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_1_0(&dword_273ECD000, v38, v39, "No existing custom network settings for ssid: %@", v40, v41, v42, v43, v189, v191, v192, set, userSettings, v199, v14, v202, *v204, *&v204[8], v205, v207, v208[0], v208[1], v209, v211, obj, v214, v215[0], v215[1], v216, *(&v216 + 1), v217[0], v217[1], v218, *(&v218 + 1), v219, v220, v221.receiver, v221.super_class);

        v17 = v199;
      }
    }

    ssid5 = 0;
    v203 = 304;
LABEL_30:
    if (SCPreferencesLock(selfCopy->_prefs, 0) || (SCPreferencesSynchronize(selfCopy->_prefs), SCPreferencesLock(selfCopy->_prefs, 1u)))
    {
      dictionary = [v17 mutableCopy];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      ssid3 = [(WFSaveSettingsOperation *)selfCopy ssid];
      v53 = [(WFSaveSettingsOperation *)selfCopy _createNewSetForNetworkNamed:ssid3 interfaceName:v207];

      if (v53)
      {
        v54 = v53;
        v55 = SCNetworkSetGetSetID(v53);

        ssid4 = [(WFSaveSettingsOperation *)selfCopy ssid];
        [dictionary setObject:v55 forKey:ssid4];

        SCPreferencesCommitChanges(selfCopy->_prefs);
        SCPreferencesApplyChanges(selfCopy->_prefs);
        ssid5 = v55;
      }

      else
      {
        v54 = 0;
        v57 = WFLogForCategory(0);
        v58 = OSLogForWFLogLevel(1uLL);
        v59 = v58;
        if (WFCurrentLogLevel(v58, v60) && v57)
        {
          v61 = v57;
          if (os_log_type_enabled(v61, v59))
          {
            [(WFSaveSettingsOperation *)selfCopy ssid];
            v63 = v62 = ssid5;
            OUTLINED_FUNCTION_2();
            _os_log_impl(&dword_273ECD000, v61, v59, "Failed to create new set for network named %{public}@", buf, 0xCu);

            ssid5 = v62;
          }
        }
      }

      SCPreferencesUnlock(selfCopy->_prefs);
      SCPreferencesSynchronize(selfCopy->_prefs);
      v64 = objc_alloc_init(MEMORY[0x277D02B60]);
      v229 = v16;
      v230[0] = dictionary;
      v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v230 forKeys:&v229 count:1];
      [v64 setOSSpecificAttributes:v65];

      v220 = 0;
      v66 = v201;
      v67 = [v201 applyUserSettings:v64 properties:0 error:&v220];
      v68 = v220;
      if ((v67 & 1) == 0)
      {
        v69 = ssid5;
        v70 = WFLogForCategory(0);
        v71 = OSLogForWFLogLevel(1uLL);
        v72 = v71;
        if (WFCurrentLogLevel(v71, v73) && v70 && os_log_type_enabled(v70, v72))
        {
          *buf = 138412546;
          v223 = dictionary;
          OUTLINED_FUNCTION_6();
          v225 = v68;
          _os_log_impl(&dword_273ECD000, v70, v72, "failed to apply custom network set %@, error='%@'", buf, 0x16u);
        }

        ssid5 = v69;
      }

      if (v54)
      {
        v44 = v54;
        goto LABEL_50;
      }
    }

    else
    {
      WFLogForCategory(0);
      objc_claimAutoreleasedReturnValue();
      v125 = OUTLINED_FUNCTION_3();
      if (WFCurrentLogLevel(v125, v126) && dictionary && OUTLINED_FUNCTION_4())
      {
        *buf = 0;
        OUTLINED_FUNCTION_0_1();
        _os_log_impl(v127, v128, v129, v130, v131, 2u);
      }

      v66 = v201;
    }

    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    v132 = OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel(v132, v133) && dictionary && OUTLINED_FUNCTION_4())
    {
      *buf = 138543362;
      v223 = ssid5;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v134, v135, v136, v137, v138, 0xCu);
    }

    v44 = 0;
    v96 = 0;
    LOBYTE(items2) = 1;
    goto LABEL_114;
  }

  v20 = v19;
  dictionary = WFLogForCategory(0);
  v22 = OSLogForWFLogLevel(3uLL);
  ssid5 = v19;
  if (WFCurrentLogLevel(v22, v23) >= 3 && dictionary && OUTLINED_FUNCTION_4())
  {
    *buf = 138543362;
    v223 = v19;
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
  }

  v203 = 304;
  v30 = SCNetworkSetCopyAll(selfCopy->_prefs);
  if (!v30)
  {
LABEL_25:
    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    v45 = OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel(v45, v46) && dictionary && OUTLINED_FUNCTION_4())
    {
      *buf = 138543362;
      v223 = v20;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    }

    goto LABEL_30;
  }

  dictionary = v30;
  Count = CFArrayGetCount(v30);
  if (Count < 1)
  {
LABEL_17:
    CFRelease(dictionary);
    v17 = v199;
    goto LABEL_25;
  }

  v32 = Count;
  v33 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(dictionary, v33);
    if ([v20 isEqualToString:SCNetworkSetGetSetID(ValueAtIndex)])
    {
      break;
    }

    if (v32 == ++v33)
    {
      goto LABEL_17;
    }
  }

  v44 = CFRetain(ValueAtIndex);
  CFRelease(dictionary);
  v17 = v199;
  if (!v44)
  {
    goto LABEL_25;
  }

  v66 = v201;
LABEL_50:
  v74 = WFLogForCategory(0);
  v75 = "[WFSaveSettingsOperation start]";
  if (!v66)
  {
    v157 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel(v157, v158) && v74 && OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v159, v160, v161, v162, v163, 0xCu);
    }

    LOBYTE(items2) = 0;
    v96 = 0;
LABEL_114:
    protocol = userSettings;
    v75 = v199;
    goto LABEL_129;
  }

  v193 = ssid5;
  v76 = OSLogForWFLogLevel(3uLL);
  ssid5 = &off_273F75000;
  if (WFCurrentLogLevel(v76, v77) >= 3 && v74 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_6();
    v225 = v207;
    OUTLINED_FUNCTION_0_1();
    _os_log_impl(v78, v79, v80, v81, v82, 0x16u);
  }

  if (!v207)
  {
    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    v164 = OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel(v164, v165) && v74 && OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v166, v167, v168, v169, v170, 0xCu);
    }

    LOBYTE(items2) = 0;
    goto LABEL_144;
  }

  protocol = 304;
  if (!SCPreferencesLock(selfCopy->_prefs, 0))
  {
    SCPreferencesSynchronize(selfCopy->_prefs);
    if (!SCPreferencesLock(selfCopy->_prefs, 1u))
    {
      WFLogForCategory(0);
      objc_claimAutoreleasedReturnValue();
      v171 = OUTLINED_FUNCTION_3();
      v75 = v199;
      ssid5 = v193;
      if (WFCurrentLogLevel(v171, v172))
      {
        if (OUTLINED_FUNCTION_5(0x130))
        {
          v173 = SCError();
          SCErrorString(v173);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_1_0(&dword_273ECD000, v174, v175, "SCPreferencesLock failed %{public}s", v176, v177, v178, v179, v189, v191, v193, set, userSettings, v199, v201, 304, *v204, *&v204[8], v205, v207, v208[0], v208[1], v209, v211, obj, v214, v215[0], v215[1], v216, *(&v216 + 1), v217[0], v217[1], v218, *(&v218 + 1), v219, v220, v221.receiver, v221.super_class);
        }
      }

      LOBYTE(items2) = 0;
      v96 = 0;
      protocol = userSettings;
      goto LABEL_129;
    }
  }

  v84 = SCNetworkSetCopyServices(v44);
  items2 = v84;
  if (!v84)
  {
LABEL_144:
    v96 = 0;
    protocol = userSettings;
    v75 = v199;
    ssid5 = v193;
    goto LABEL_129;
  }

  seta = v44;
  if (CFArrayGetCount(v84) < 1)
  {
    goto LABEL_63;
  }

  protocol = 0;
  while (1)
  {
    v86 = CFArrayGetValueAtIndex(items2, protocol);
    Interface = SCNetworkServiceGetInterface(v86);
    v88 = SCNetworkInterfaceGetBSDName(Interface);
    v44 = [v88 isEqualToString:v207];

    if (v44)
    {
      break;
    }

    if (++protocol >= CFArrayGetCount(items2))
    {
      goto LABEL_63;
    }
  }

  if (v86)
  {
    v190 = items2;
    *v217 = 0u;
    v218 = 0u;
    *v215 = 0u;
    v216 = 0u;
    obja = [(WFSaveSettingsOperation *)selfCopy settings];
    v97 = [obja countByEnumeratingWithState:v215 objects:v228 count:16];
    v210 = selfCopy;
    if (v97)
    {
      v75 = v97;
      v66 = *v216;
      v214 = *MEMORY[0x277CE16B8];
      *&v98 = 138412546;
      *v208 = v98;
      *&v98 = 138412802;
      *v204 = v98;
      v211 = *v216;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v216 != v66)
          {
            objc_enumerationMutation(obja);
          }

          ssid5 = *(v215[1] + 8 * i);
          protocol = [ssid5 protocol];
          v100 = SCNetworkServiceCopyProtocol(v86, protocol);

          if (v100)
          {
            protocol = [ssid5 protocol];
            v101 = [protocol isEqualToString:v214];

            if (v101)
            {
              [(WFSaveSettingsOperation *)selfCopy _applyProxySettings:ssid5 service:v100];
            }

            else
            {
              v102 = WFLogForCategory(0);
              v103 = OSLogForWFLogLevel(4uLL);
              v104 = v103;
              if (WFCurrentLogLevel(v103, v105) >= 4 && v102)
              {
                v106 = v102;
                if (os_log_type_enabled(v106, v104))
                {
                  protocol2 = [ssid5 protocol];
                  items = [ssid5 items];
                  *buf = v208[0];
                  v223 = protocol2;
                  OUTLINED_FUNCTION_6();
                  v225 = v109;
                  _os_log_impl(&dword_273ECD000, v106, v104, "%@ saving to SC %@", buf, 0x16u);

                  selfCopy = v210;
                }

                v66 = v211;
              }

              items2 = [ssid5 items];
              protocol = SCNetworkProtocolSetConfiguration(v100, items2);

              if (!protocol)
              {
                v110 = WFLogForCategory(0);
                v111 = OSLogForWFLogLevel(1uLL);
                v112 = v111;
                if (WFCurrentLogLevel(v111, v113) && v110)
                {
                  protocol = v110;
                  if (os_log_type_enabled(protocol, v112))
                  {
                    items2 = [ssid5 protocol];
                    ssid5 = [(WFSaveSettingsOperation *)selfCopy ssid];
                    v114 = SCError();
                    SCErrorString(v114);
                    *buf = *v204;
                    v223 = items2;
                    OUTLINED_FUNCTION_6();
                    v225 = ssid5;
                    v226 = 2080;
                    v227 = v115;
                    _os_log_impl(&dword_273ECD000, protocol, v112, "WiFi: Couldn't set configuration for %@ for %@: %s", buf, 0x20u);
                  }
                }

                v66 = v211;
              }
            }

            CFRelease(v100);
          }
        }

        v75 = [obja countByEnumeratingWithState:v215 objects:v228 count:16];
      }

      while (v75);
    }

    v44 = seta;
    if ([(WFSaveSettingsOperation *)selfCopy isCurrentNetwork]&& !SCNetworkSetSetCurrent(seta))
    {
      WFLogForCategory(0);
      objc_claimAutoreleasedReturnValue();
      v180 = OUTLINED_FUNCTION_3();
      if (WFCurrentLogLevel(v180, v181) && protocol)
      {
        if (OUTLINED_FUNCTION_5(protocol))
        {
          v182 = SCError();
          SCErrorString(v182);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_1_0(&dword_273ECD000, v183, v184, "SCNetworkSetSetCurrent failed: %{public}s", v185, v186, v187, v188, v190, 304, v193, seta, userSettings, v199, v201, 304, *v204, *&v204[8], v205, v207, v208[0], v208[1], v210, v211, obja, v214, v215[0], v215[1], v216, *(&v216 + 1), v217[0], v217[1], v218, *(&v218 + 1), v219, v220, v221.receiver, v221.super_class);
        }

        selfCopy = v210;
      }

      OUTLINED_FUNCTION_7();
    }

    else
    {
      v75 = v199;
      v66 = v201;
      ssid5 = v193;
      if (SCPreferencesCommitChanges(selfCopy->_prefs))
      {
        if (SCPreferencesApplyChanges(selfCopy->_prefs))
        {
          if (!SCPreferencesUnlock(selfCopy->_prefs))
          {
            WFLogForCategory(0);
            objc_claimAutoreleasedReturnValue();
            v116 = OUTLINED_FUNCTION_3();
            if (WFCurrentLogLevel(v116, v117) && protocol)
            {
              if (OUTLINED_FUNCTION_5(protocol))
              {
                v118 = SCError();
                SCErrorString(v118);
                OUTLINED_FUNCTION_2();
                OUTLINED_FUNCTION_1_0(&dword_273ECD000, v119, v120, "WiFi: SCPreferencesUnlock failed: %{public}s", v121, v122, v123, v124, v190, 304, v193, seta, userSettings, v199, v201, 304, *v204, *&v204[8], v205, v207, v208[0], v208[1], v210, v211, obja, v214, v215[0], v215[1], v216, *(&v216 + 1), v217[0], v217[1], v218, *(&v218 + 1), v219, v220, v221.receiver, v221.super_class);
              }

              v44 = seta;
            }
          }

          SCPreferencesSynchronize(selfCopy->_prefs);
        }

        else
        {
          WFLogForCategory(0);
          objc_claimAutoreleasedReturnValue();
          v148 = OUTLINED_FUNCTION_3();
          if (WFCurrentLogLevel(v148, v149) && protocol)
          {
            if (OUTLINED_FUNCTION_5(protocol))
            {
              v150 = SCError();
              SCErrorString(v150);
              OUTLINED_FUNCTION_2();
              OUTLINED_FUNCTION_1_0(&dword_273ECD000, v151, v152, "WiFi: SCPreferencesApplyChanges failed: %{public}s", v153, v154, v155, v156, v190, 304, v193, seta, userSettings, v199, v201, 304, *v204, *&v204[8], v205, v207, v208[0], v208[1], v210, v211, obja, v214, v215[0], v215[1], v216, *(&v216 + 1), v217[0], v217[1], v218, *(&v218 + 1), v219, v220, v221.receiver, v221.super_class);
            }

            v44 = seta;
          }

          SCPreferencesUnlock(selfCopy->_prefs);
        }
      }

      else
      {
        WFLogForCategory(0);
        objc_claimAutoreleasedReturnValue();
        v139 = OUTLINED_FUNCTION_3();
        if (WFCurrentLogLevel(v139, v140) && protocol)
        {
          if (OUTLINED_FUNCTION_5(protocol))
          {
            v141 = SCError();
            SCErrorString(v141);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_1_0(&dword_273ECD000, v142, v143, "WiFi: SCPreferencesCommitChanges failed: %{public}s", v144, v145, v146, v147, v190, 304, v193, seta, userSettings, v199, v201, 304, *v204, *&v204[8], v205, v207, v208[0], v208[1], v210, v211, obja, v214, v215[0], v215[1], v216, *(&v216 + 1), v217[0], v217[1], v218, *(&v218 + 1), v219, v220, v221.receiver, v221.super_class);
          }

          v44 = seta;
        }
      }

      LOBYTE(items2) = 0;
      protocol = userSettings;
    }

    v96 = v190;
  }

  else
  {
LABEL_63:
    WFLogForCategory(0);
    objc_claimAutoreleasedReturnValue();
    v89 = OUTLINED_FUNCTION_3();
    if (WFCurrentLogLevel(v89, v90) && protocol && OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_8();
      v224 = 2114;
      v225 = items2;
      OUTLINED_FUNCTION_0_1();
      _os_log_impl(v91, v92, v93, v94, v95, 0x16u);
    }

    OUTLINED_FUNCTION_7();
    v96 = items2;
  }

LABEL_129:
  SCPreferencesUnlock(*(&selfCopy->super.super.super.isa + v203));
  if (v96)
  {
    CFRelease(v96);
  }

  if ((items2 & 1) == 0)
  {
    CFRelease(v44);
  }

  [(WFOperation *)selfCopy finish];
}

@end