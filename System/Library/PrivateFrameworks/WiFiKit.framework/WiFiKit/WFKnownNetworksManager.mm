@interface WFKnownNetworksManager
- (BOOL)removeNetworks:(id)networks;
- (WFKnownNetworksManager)initWithInterface:(id)interface;
- (id)allEditableNetworkProfiles;
- (id)allNonEditableNetworkProfiles;
- (id)passwordForNetworksWithSSID:(id)d;
- (id)privateAddressConfigForNetworkName:(id)name;
@end

@implementation WFKnownNetworksManager

- (WFKnownNetworksManager)initWithInterface:(id)interface
{
  v20 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v17.receiver = self;
  v17.super_class = WFKnownNetworksManager;
  v6 = [(WFKnownNetworksManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    if (interfaceCopy)
    {
      objc_storeStrong(&v6->_interface, interface);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
      interface = v7->_interface;
      v7->_interface = v8;

      [(CWFInterface *)v7->_interface resume];
    }

    v10 = objc_alloc_init(WFPrivateAddressConfigManager);
    privateAddressConfigManager = v7->_privateAddressConfigManager;
    v7->_privateAddressConfigManager = v10;

    if (!v7->_privateAddressConfigManager)
    {
      v12 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(1uLL);
      v14 = v13;
      if (WFCurrentLogLevel(v13, v15) && v12 && os_log_type_enabled(v12, v14))
      {
        *buf = 136315138;
        v19 = "[WFKnownNetworksManager initWithInterface:]";
        _os_log_impl(&dword_273ECD000, v12, v14, "%s: failed to create WFPrivateAddressConfigManager", buf, 0xCu);
      }
    }
  }

  return v7;
}

- (id)allNonEditableNetworkProfiles
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  _getAllKnownProfiles = [(WFKnownNetworksManager *)self _getAllKnownProfiles];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [_getAllKnownProfiles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_getAllKnownProfiles);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isProfileBased])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [_getAllKnownProfiles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allEditableNetworkProfiles
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  _getAllKnownProfiles = [(WFKnownNetworksManager *)self _getAllKnownProfiles];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [_getAllKnownProfiles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_getAllKnownProfiles);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isProfileBased] & 1) == 0 && objc_msgSend(v9, "shouldShowInKnownNetworkList"))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [_getAllKnownProfiles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)removeNetworks:(id)networks
{
  v52 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      *buf = 134217984;
      v48 = [networksCopy count];
      _os_log_impl(&dword_273ECD000, v8, v6, "Trying to forget %lu networks.", buf, 0xCu);
    }
  }

  if (networksCopy)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = networksCopy;
    v10 = [v9 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v39 = networksCopy;
      v12 = 0;
      v13 = *v44;
      v14 = 1;
      obj = v9;
      do
      {
        v15 = 0;
        v16 = v12;
        do
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v43 + 1) + 8 * v15);
          if (!v17)
          {
            v18 = WFLogForCategory(0);
            v19 = OSLogForWFLogLevel(1uLL);
            v20 = v19;
            if (WFCurrentLogLevel(v19, v21) && v18 && os_log_type_enabled(v18, v20))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v18, v20, "Invalid CWFNetworkProfile object.", buf, 2u);
            }
          }

          v22 = WFLogForCategory(0);
          v23 = OSLogForWFLogLevel(4uLL);
          v24 = v23;
          if (WFCurrentLogLevel(v23, v25) >= 4 && v22)
          {
            v26 = v22;
            if (os_log_type_enabled(v26, v24))
            {
              networkName = [v17 networkName];
              *buf = 138412290;
              v48 = networkName;
              _os_log_impl(&dword_273ECD000, v26, v24, "Trying to forget network: %@", buf, 0xCu);
            }
          }

          interface = self->_interface;
          v42 = v16;
          [(CWFInterface *)interface removeKnownNetworkProfile:v17 reason:2 error:&v42];
          v12 = v42;

          if ([v12 code])
          {
            v29 = WFLogForCategory(0);
            v30 = OSLogForWFLogLevel(1uLL);
            v31 = v30;
            if (WFCurrentLogLevel(v30, v32) && v29)
            {
              v33 = v29;
              if (os_log_type_enabled(v33, v31))
              {
                networkName2 = [v17 networkName];
                *buf = 138412546;
                v48 = v12;
                v49 = 2112;
                v50 = networkName2;
                _os_log_impl(&dword_273ECD000, v33, v31, "Error:%@ happen when trying to remove network profile for %@", buf, 0x16u);
              }
            }

            v14 = 0;
          }

          ++v15;
          v16 = v12;
        }

        while (v11 != v15);
        v9 = obj;
        v11 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v11);

      networksCopy = v39;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v9 = WFLogForCategory(0);
    v35 = OSLogForWFLogLevel(1uLL);
    v36 = v35;
    v14 = 0;
    if (WFCurrentLogLevel(v35, v37) && v9)
    {
      if (os_log_type_enabled(v9, v36))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v9, v36, "No networks to delete, return function.", buf, 2u);
      }

      v14 = 0;
    }
  }

  return v14 & 1;
}

- (id)passwordForNetworksWithSSID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(WFKnownNetworksManager *)self _getAllKnownProfiles];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      networkName = [v10 networkName];
      v12 = [networkName isEqualToString:dCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [[WFNetworkProfile alloc] initWithCoreWiFiProfile:v13];
    password = [(WFNetworkProfile *)v14 password];
  }

  else
  {
LABEL_9:

LABEL_12:
    v13 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(1uLL);
    v17 = v16;
    password = 0;
    if (WFCurrentLogLevel(v16, v18) && v13)
    {
      if (os_log_type_enabled(v13, v17))
      {
        *buf = 138412290;
        v25 = dCopy;
        _os_log_impl(&dword_273ECD000, v13, v17, "failed to find password for network '%@'", buf, 0xCu);
      }

      password = 0;
    }
  }

  return password;
}

- (id)privateAddressConfigForNetworkName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  privateAddressConfigManager = [(WFKnownNetworksManager *)self privateAddressConfigManager];
  privateAddressConfig = [privateAddressConfigManager privateAddressConfig];

  if (!privateAddressConfig)
  {
    [WFKnownNetworksManager privateAddressConfigForNetworkName:?];
LABEL_12:

    v15 = 0;
    goto LABEL_14;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = privateAddressConfig;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v8)
  {
LABEL_10:

LABEL_11:
    [(WFKnownNetworksManager *)nameCopy privateAddressConfigForNetworkName:?];
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *v18;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v18 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v17 + 1) + 8 * v11);
    v13 = [v12 objectForKeyedSubscript:{@"SSID_STR", v17}];
    v14 = [v13 isEqualToString:nameCopy];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v15 = v12;

  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_14:

  return v15;
}

- (void)privateAddressConfigForNetworkName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4 && os_log_type_enabled(v4, v6))
  {
    v8 = 138412290;
    v9 = a1;
    _os_log_impl(&dword_273ECD000, v4, v6, "nil private address config for network '%@'", &v8, 0xCu);
  }

  *a2 = v4;
}

- (void)privateAddressConfigForNetworkName:(NSObject *)a1 .cold.2(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v2, v4, "nil private address configs", v6, 2u);
  }

  *a1 = v2;
}

@end