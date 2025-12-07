@interface WFGasQueryController
- (WFGasQueryController)init;
- (WFGasQueryController)initWithInterface:(id)interface;
- (WFGasQueryControllerDelegate)delegate;
- (id)_ANQPDictionaryFromScanResult:(id)result;
- (id)_defaultANQPParameterForNetworks:(id)networks;
- (id)profileForNetwork:(id)network;
- (void)_processANQPResults:(id)results scanRecords:(id)records error:(id)error;
- (void)removeAllProfiles;
- (void)removeProfileForNetwork:(id)network;
- (void)resolveProfileForNetwork:(id)network handler:(id)handler force:(BOOL)force;
- (void)resolveProfilesForNetworks:(id)networks;
@end

@implementation WFGasQueryController

- (WFGasQueryController)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFGasQueryController init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (WFGasQueryController)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v13.receiver = self;
  v13.super_class = WFGasQueryController;
  v6 = [(WFGasQueryController *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  if (!interfaceCopy)
  {
    [WFGasQueryController initWithInterface:];
LABEL_5:

    v7 = 0;
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_cInterface, interface);
  v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:0];
  gasResponseCache = v7->_gasResponseCache;
  v7->_gasResponseCache = v8;

  if (!v7->_gasResponseCache)
  {
    goto LABEL_5;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  resolvedNetworks = v7->_resolvedNetworks;
  v7->_resolvedNetworks = v10;

  if (!v7->_resolvedNetworks)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (id)profileForNetwork:(id)network
{
  networkCopy = network;
  gasResponseCache = [(WFGasQueryController *)self gasResponseCache];
  v6 = [gasResponseCache objectForKey:networkCopy];

  return v6;
}

- (void)resolveProfilesForNetworks:(id)networks
{
  v33 = *MEMORY[0x277D85DE8];
  networksCopy = networks;
  v5 = networksCopy;
  if (networksCopy && [networksCopy count])
  {
    v6 = [v5 mutableCopy];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    resolvedNetworks = [(WFGasQueryController *)self resolvedNetworks];
    v8 = [resolvedNetworks countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(resolvedNetworks);
          }

          [v6 removeObject:*(*(&v26 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [resolvedNetworks countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v11 = [v6 count]== 0;
    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    v14 = v13;
    v17 = WFCurrentLogLevel(v13, v15) > 2 && v12 != 0;
    if (v11)
    {
      if (v17 && os_log_type_enabled(v12, v14))
      {
        *buf = 136315138;
        v32 = "[WFGasQueryController resolveProfilesForNetworks:]";
        _os_log_impl(&dword_273ECD000, v12, v14, "%s: no new HS20 networks to resolve", buf, 0xCu);
      }
    }

    else
    {
      if (v17 && os_log_type_enabled(v12, v14))
      {
        *buf = 138412290;
        v32 = v6;
        _os_log_impl(&dword_273ECD000, v12, v14, "Starting GAS query for %@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v18 = [(WFGasQueryController *)self _defaultANQPParameterForNetworks:v6];
      cInterface = [(WFGasQueryController *)self cInterface];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __51__WFGasQueryController_resolveProfilesForNetworks___block_invoke;
      v23[3] = &unk_279EBDB88;
      v23[4] = self;
      objc_copyWeak(&v25, buf);
      v6 = v6;
      v24 = v6;
      [cInterface performANQPWithParameters:v18 reply:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v6 = WFLogForCategory(0);
    v20 = OSLogForWFLogLevel(3uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) >= 3 && v6 && os_log_type_enabled(v6, v21))
    {
      *buf = 136315138;
      v32 = "[WFGasQueryController resolveProfilesForNetworks:]";
      _os_log_impl(&dword_273ECD000, v6, v21, "%s: nil networks", buf, 0xCu);
    }
  }
}

void __51__WFGasQueryController_resolveProfilesForNetworks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__WFGasQueryController_resolveProfilesForNetworks___block_invoke_3;
  v13[3] = &unk_279EBDB60;
  v13[4] = *(a1 + 32);
  v13[5] = &v14;
  [v6 enumerateObjectsUsingBlock:v13];
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    v11 = v15[5];
    *buf = 136315650;
    v21 = "[WFGasQueryController resolveProfilesForNetworks:]_block_invoke_2";
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: responses %@ error %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processANQPResults:v15[5] scanRecords:*(a1 + 40) error:v5];

  _Block_object_dispose(&v14, 8);
}

void __51__WFGasQueryController_resolveProfilesForNetworks___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFANQPQueryResponse alloc];
  v5 = [*(a1 + 32) _ANQPDictionaryFromScanResult:v3];
  v6 = [(WFANQPQueryResponse *)v4 initWithScanResult:v3 ANQPResponse:v5];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
}

- (id)_ANQPDictionaryFromScanResult:(id)result
{
  v3 = MEMORY[0x277CBEB38];
  resultCopy = result;
  v5 = objc_alloc_init(v3);
  cellularNetworkInfo = [resultCopy cellularNetworkInfo];
  [v5 setValue:cellularNetworkInfo forKey:@"ANQP_CELL_NETWORK_INFO"];

  roamingConsortiumList = [resultCopy roamingConsortiumList];
  [v5 setValue:roamingConsortiumList forKey:@"ANQP_ROAMING_CONSORTIUM_OI_LIST"];

  domainNameList = [resultCopy domainNameList];
  [v5 setValue:domainNameList forKey:@"ANQP_DOMAIN_NAME_LIST"];

  bSSID = [resultCopy BSSID];
  [v5 setValue:bSSID forKey:@"BSSID"];

  operatorFriendlyNameList = [resultCopy operatorFriendlyNameList];

  firstObject = [operatorFriendlyNameList firstObject];
  [v5 setValue:firstObject forKey:@"ANQP_OPERATOR_NAME"];

  return v5;
}

- (id)_defaultANQPParameterForNetworks:(id)networks
{
  networksCopy = networks;
  v4 = objc_alloc_init(MEMORY[0x277D02AB8]);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WFGasQueryController__defaultANQPParameterForNetworks___block_invoke;
  v7[3] = &unk_279EBDBB0;
  v7[4] = &v8;
  [networksCopy enumerateObjectsUsingBlock:v7];
  allObjects = [v9[5] allObjects];
  [v4 setScanResults:allObjects];

  [v4 setANQPElementIDList:&unk_288304F00];
  [v4 setMaximumCacheAge:0];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __57__WFGasQueryController__defaultANQPParameterForNetworks___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 mutableCopy];
  WiFiNetworkCreate();

  CoreWiFiScanResult = WiFiNetworkCreateCoreWiFiScanResult();
  [*(*(*(a1 + 32) + 8) + 40) addObject:CoreWiFiScanResult];
}

- (void)resolveProfileForNetwork:(id)network handler:(id)handler force:(BOOL)force
{
  v37 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  handlerCopy = handler;
  if (force)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && v10 && os_log_type_enabled(v10, v12))
    {
      *buf = 136315138;
      v32 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]";
      _os_log_impl(&dword_273ECD000, v10, v12, "%s: skipping cache, forcing resolution", buf, 0xCu);
    }

    goto LABEL_14;
  }

  gasResponseCache = [(WFGasQueryController *)self gasResponseCache];
  v15 = [gasResponseCache objectForKey:networkCopy];

  if (!v15)
  {
LABEL_14:
    v20 = WFLogForCategory(0);
    v21 = OSLogForWFLogLevel(3uLL);
    v22 = v21;
    if (WFCurrentLogLevel(v21, v23) >= 3 && v20 && os_log_type_enabled(v20, v22))
    {
      *buf = 136315394;
      v32 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]";
      v33 = 2112;
      v34 = networkCopy;
      _os_log_impl(&dword_273ECD000, v20, v22, "%s: resolving profile for %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v24 = [MEMORY[0x277CBEB98] setWithObject:networkCopy];
    v25 = [(WFGasQueryController *)self _defaultANQPParameterForNetworks:v24];

    cInterface = [(WFGasQueryController *)self cInterface];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke;
    v27[3] = &unk_279EBDC00;
    v27[4] = self;
    objc_copyWeak(&v30, buf);
    v28 = networkCopy;
    v29 = handlerCopy;
    [cInterface performANQPWithParameters:v25 reply:v27];

    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
    v15 = 0;
    goto LABEL_19;
  }

  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(3uLL);
  v18 = v17;
  if (WFCurrentLogLevel(v17, v19) >= 3 && v16 && os_log_type_enabled(v16, v18))
  {
    *buf = 136315650;
    v32 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]";
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = networkCopy;
    _os_log_impl(&dword_273ECD000, v16, v18, "%s: found cached profile %@ for %@", buf, 0x20u);
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v15, 0);
  }

LABEL_19:
}

void __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke_2;
  v10[3] = &unk_279EBDBD8;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  objc_copyWeak(&v16, (a1 + 56));
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v16);
}

void __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke_2(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = [MEMORY[0x277CBEB58] set];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke_3;
  v29[3] = &unk_279EBDB60;
  v2 = *(a1 + 32);
  v29[4] = *(a1 + 40);
  v29[5] = &v30;
  [v2 enumerateObjectsUsingBlock:v29];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v7 = v31[5];
    v8 = *(a1 + 48);
    *buf = 136315650;
    v37 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]_block_invoke_2";
    v38 = 2112;
    v39 = v7;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&dword_273ECD000, v3, v5, "%s: responses %@ error %@", buf, 0x20u);
  }

  if ([v31[5] count] && !*(a1 + 48))
  {
    v10 = [v31[5] anyObject];
    v11 = [v10 scanResult];
    v12 = [v11 matchingKnownNetworkProfile];

    if (v12 || ([*(a1 + 40) cInterface], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "scanResult"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "knownNetworkProfileMatchingScanResult:", v14), v12 = objc_claimAutoreleasedReturnValue(), v14, v13, v12))
    {
      v15 = [[WFNetworkProfile alloc] initWithCoreWiFiProfile:v12];
      v9 = [[WFHotspotProfile alloc] initWithProfile:v15 anqpResponse:v10];
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v17 = [WeakRetained gasResponseCache];
      [v17 setObject:v9 forKey:*(a1 + 56)];
    }

    else
    {
      v12 = WFLogForCategory(0);
      v24 = OSLogForWFLogLevel(1uLL);
      v25 = v24;
      v9 = 0;
      if (!WFCurrentLogLevel(v24, v26) || !v12)
      {
        goto LABEL_12;
      }

      v15 = v12;
      if (os_log_type_enabled(&v15->super, v25))
      {
        v27 = *(a1 + 56);
        v28 = [v10 ssid];
        *buf = 136315650;
        v37 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]_block_invoke";
        v38 = 2112;
        v39 = v27;
        v40 = 2112;
        v41 = v28;
        _os_log_impl(&dword_273ECD000, &v15->super, v25, "%s: no existing profile for network %@ (response %@)", buf, 0x20u);
      }

      v9 = 0;
      v12 = v15;
    }

LABEL_12:
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:
  v18 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(3uLL);
  v20 = v19;
  if (WFCurrentLogLevel(v19, v21) >= 3 && v18 && os_log_type_enabled(v18, v20))
  {
    v22 = *(a1 + 48);
    *buf = 136315650;
    v37 = "[WFGasQueryController resolveProfileForNetwork:handler:force:]_block_invoke";
    v38 = 2112;
    v39 = v9;
    v40 = 2112;
    v41 = v22;
    _os_log_impl(&dword_273ECD000, v18, v20, "%s: profile %@ error %@", buf, 0x20u);
  }

  v23 = *(a1 + 64);
  if (v23)
  {
    (*(v23 + 16))(v23, v9, *(a1 + 48));
  }

  _Block_object_dispose(&v30, 8);
}

void __63__WFGasQueryController_resolveProfileForNetwork_handler_force___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFANQPQueryResponse alloc];
  v5 = [*(a1 + 32) _ANQPDictionaryFromScanResult:v3];
  v6 = [(WFANQPQueryResponse *)v4 initWithScanResult:v3 ANQPResponse:v5];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
}

- (void)_processANQPResults:(id)results scanRecords:(id)records error:(id)error
{
  v62 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  recordsCopy = records;
  v10 = [resultsCopy count];
  if (!error && v10)
  {
    v45 = objc_opt_new();
    v47 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v44 = resultsCopy;
    obj = resultsCopy;
    v11 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v52;
      do
      {
        v14 = 0;
        do
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v51 + 1) + 8 * v14);
          ssid = [v15 ssid];
          v17 = [recordsCopy scanRecordWithSSID:ssid];

          matchingKnownNetworkProfile = WFLogForCategory(0);
          if (v17)
          {
            v19 = OSLogForWFLogLevel(3uLL);
            v20 = v19;
            if (WFCurrentLogLevel(v19, v21) >= 3 && matchingKnownNetworkProfile && os_log_type_enabled(matchingKnownNetworkProfile, v20))
            {
              *buf = 136315394;
              v56 = "[WFGasQueryController _processANQPResults:scanRecords:error:]";
              v57 = 2112;
              v58 = v17;
              _os_log_impl(&dword_273ECD000, matchingKnownNetworkProfile, v20, "%s: resolved %@", buf, 0x16u);
            }

            resolvedNetworks = [(WFGasQueryController *)self resolvedNetworks];
            [resolvedNetworks addObject:v17];

            scanResult = [v15 scanResult];
            matchingKnownNetworkProfile = [scanResult matchingKnownNetworkProfile];

            if (matchingKnownNetworkProfile || (-[WFGasQueryController cInterface](self, "cInterface"), v24 = objc_claimAutoreleasedReturnValue(), [v15 scanResult], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "knownNetworkProfileMatchingScanResult:", v25), matchingKnownNetworkProfile = objc_claimAutoreleasedReturnValue(), v25, v24, matchingKnownNetworkProfile))
            {
              v26 = WFLogForCategory(0);
              v27 = OSLogForWFLogLevel(3uLL);
              v28 = v27;
              if (WFCurrentLogLevel(v27, v29) >= 3 && v26 && os_log_type_enabled(v26, v28))
              {
                *buf = 136315650;
                v56 = "[WFGasQueryController _processANQPResults:scanRecords:error:]";
                v57 = 2112;
                v58 = matchingKnownNetworkProfile;
                v59 = 2112;
                v60 = v17;
                _os_log_impl(&dword_273ECD000, v26, v28, "%s: resolved profile %@ for %@", buf, 0x20u);
              }

              v30 = [[WFNetworkProfile alloc] initWithCoreWiFiProfile:matchingKnownNetworkProfile];
              v31 = [[WFHotspotProfile alloc] initWithProfile:v30 anqpResponse:v15];
              gasResponseCache = [(WFGasQueryController *)self gasResponseCache];
              [gasResponseCache setObject:v31 forKey:v17];

              if (v30)
              {
                [v45 addObject:v30];
              }

              ssid2 = [v17 ssid];
              [v47 addObject:ssid2];
            }

            else
            {
              matchingKnownNetworkProfile = WFLogForCategory(0);
              v37 = OSLogForWFLogLevel(1uLL);
              v38 = v37;
              if (WFCurrentLogLevel(v37, v39) && matchingKnownNetworkProfile)
              {
                matchingKnownNetworkProfile = matchingKnownNetworkProfile;
                if (os_log_type_enabled(matchingKnownNetworkProfile, v38))
                {
                  ssid3 = [v15 ssid];
                  *buf = 136315650;
                  v56 = "[WFGasQueryController _processANQPResults:scanRecords:error:]";
                  v57 = 2112;
                  v58 = v17;
                  v59 = 2112;
                  v60 = ssid3;
                  _os_log_impl(&dword_273ECD000, matchingKnownNetworkProfile, v38, "%s: no existing profile for network %@ (response %@)", buf, 0x20u);
                }
              }
            }
          }

          else
          {
            v34 = OSLogForWFLogLevel(2uLL);
            v35 = v34;
            if (WFCurrentLogLevel(v34, v36) >= 2 && matchingKnownNetworkProfile && os_log_type_enabled(matchingKnownNetworkProfile, v35))
            {
              *buf = 138412290;
              v56 = v15;
              _os_log_impl(&dword_273ECD000, matchingKnownNetworkProfile, v35, "Missing scanRecord for ANQP response %@", buf, 0xCu);
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v41 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        v12 = v41;
      }

      while (v41);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__WFGasQueryController__processANQPResults_scanRecords_error___block_invoke;
    block[3] = &unk_279EBD268;
    block[4] = self;
    v49 = v45;
    v50 = v47;
    v42 = v47;
    v43 = v45;
    dispatch_async(MEMORY[0x277D85CD0], block);

    resultsCopy = v44;
  }
}

void __62__WFGasQueryController__processANQPResults_scanRecords_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 gasQueryController:*(a1 + 32) didUpdateProfiles:*(a1 + 40) networkNames:*(a1 + 48)];
}

- (void)removeProfileForNetwork:(id)network
{
  v16 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    *v13 = 136315394;
    *&v13[4] = "[WFGasQueryController removeProfileForNetwork:]";
    v14 = 2112;
    v15 = networkCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: removing profile for network %@", v13, 0x16u);
  }

  if (!networkCopy)
  {
    [WFGasQueryController removeProfileForNetwork:v13];
LABEL_11:
    gasResponseCache2 = *v13;
    goto LABEL_8;
  }

  resolvedNetworks = [(WFGasQueryController *)self resolvedNetworks];
  [resolvedNetworks removeObject:networkCopy];

  gasResponseCache = [(WFGasQueryController *)self gasResponseCache];
  v11 = [gasResponseCache objectForKey:networkCopy];

  if (!v11)
  {
    [WFGasQueryController removeProfileForNetwork:v13];
    goto LABEL_11;
  }

  gasResponseCache2 = [(WFGasQueryController *)self gasResponseCache];
  [gasResponseCache2 removeObjectForKey:networkCopy];
LABEL_8:
}

- (void)removeAllProfiles
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      gasResponseCache = [(WFGasQueryController *)self gasResponseCache];
      v11 = 136315394;
      v12 = "[WFGasQueryController removeAllProfiles]";
      v13 = 2112;
      v14 = gasResponseCache;
      _os_log_impl(&dword_273ECD000, v7, v5, "%s: removing profiles %@", &v11, 0x16u);
    }
  }

  gasResponseCache2 = [(WFGasQueryController *)self gasResponseCache];
  [gasResponseCache2 removeAllObjects];

  resolvedNetworks = [(WFGasQueryController *)self resolvedNetworks];
  [resolvedNetworks removeAllObjects];
}

- (WFGasQueryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithInterface:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    v4 = 136315138;
    v5 = "[WFGasQueryController initWithInterface:]";
    _os_log_impl(&dword_273ECD000, v0, v2, "%s: nil interface", &v4, 0xCu);
  }
}

- (void)removeProfileForNetwork:(NSObject *)a1 .cold.1(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFGasQueryController removeProfileForNetwork:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: no existing profile for network", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

- (void)removeProfileForNetwork:(NSObject *)a1 .cold.2(NSObject **a1)
{
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    LODWORD(v12) = 136315138;
    *(&v12 + 4) = "[WFGasQueryController removeProfileForNetwork:]";
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v6, v7, "%s: nil network", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  *a1 = v2;
}

@end