@interface CWFAssocParameters(WiFiKit)
+ (id)associationParametersFromScanRecord:()WiFiKit profile:;
@end

@implementation CWFAssocParameters(WiFiKit)

+ (id)associationParametersFromScanRecord:()WiFiKit profile:
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D02AE0]);
  attributes = [v5 attributes];
  v9 = [attributes mutableCopy];
  v10 = WiFiNetworkCreate();

  if ([v5 carPlayType] == 1)
  {
    v11 = WFLogForCategory(5uLL);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11)
    {
      v15 = v11;
      if (os_log_type_enabled(v15, v13))
      {
        ssid = [v5 ssid];
        *buf = 138412290;
        v72 = ssid;
        _os_log_impl(&dword_273ECD000, v15, v13, "adding kWiFiJoiningFromUI == 1 for CarPlayOnly network %@", buf, 0xCu);
      }
    }

    WiFiNetworkSetProperty();
  }

  if ([v6 isInstantHotspotJoin])
  {
    v17 = WFLogForCategory(5uLL);
    v18 = OSLogForWFLogLevel(1uLL);
    v19 = v18;
    if (WFCurrentLogLevel(v18, v20) && v17)
    {
      v21 = v17;
      if (os_log_type_enabled(v21, v19))
      {
        ssid2 = [v5 ssid];
        *buf = 138412290;
        v72 = ssid2;
        _os_log_impl(&dword_273ECD000, v21, v19, "adding kWiFiInstantHotspotJoining for instant hotspot join to %@", buf, 0xCu);
      }
    }

    WiFiNetworkSetProperty();
  }

  if (v6)
  {
    scanAttributes = [v6 scanAttributes];
    v24 = [scanAttributes mutableCopy];

    [v24 removeObjectForKey:@"enabled"];
    [v24 removeObjectForKey:*MEMORY[0x277D29848]];
    v25 = 0x277CCA000uLL;
    v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isHidden")}];
    [v24 setObject:v26 forKey:@"HIDDEN_NETWORK"];

    WiFiNetworkCreate();
    if ([v5 isEnterprise])
    {
      WiFiNetworkMergeForAssociation();
      enterpriseProfile = [v6 enterpriseProfile];
      if (enterpriseProfile)
      {
        WiFiNetworkSetProperty();
      }

      else
      {
        v28 = WFLogForCategory(5uLL);
        v29 = OSLogForWFLogLevel(1uLL);
        v30 = v29;
        if (WFCurrentLogLevel(v29, v31) && v28)
        {
          v32 = v28;
          if (os_log_type_enabled(v32, v30))
          {
            ssid3 = [v5 ssid];
            *buf = 138412290;
            v72 = ssid3;
            _os_log_impl(&dword_273ECD000, v32, v30, "enterprise profile is nil for %@", buf, 0xCu);
          }

          v25 = 0x277CCA000;
        }
      }

      policyUUID = [v6 policyUUID];
      if (policyUUID)
      {
        v34 = policyUUID;
        Property = WiFiNetworkGetProperty();

        if (!Property)
        {
          v36 = WFLogForCategory(5uLL);
          v37 = OSLogForWFLogLevel(1uLL);
          v38 = v37;
          if (WFCurrentLogLevel(v37, v39) && v36)
          {
            v40 = v36;
            if (os_log_type_enabled(v40, v38))
            {
              policyUUID2 = [v6 policyUUID];
              ssid4 = [v5 ssid];
              *buf = 138412546;
              v72 = policyUUID2;
              v73 = 2112;
              v74 = ssid4;
              _os_log_impl(&dword_273ECD000, v40, v38, "setting policyUUID %@ for %@", buf, 0x16u);
            }

            v25 = 0x277CCA000uLL;
          }

          policyUUID3 = [v6 policyUUID];
          WiFiNetworkSetProperty();
        }
      }
    }

    originatorBundleIdentifier = [v6 originatorBundleIdentifier];

    if (originatorBundleIdentifier)
    {
      originatorBundleIdentifier2 = [v6 originatorBundleIdentifier];
      WiFiNetworkSetProperty();
    }

    hotspotDeviceIdentifier = [v6 hotspotDeviceIdentifier];

    if (hotspotDeviceIdentifier)
    {
      hotspotDeviceIdentifier2 = [v6 hotspotDeviceIdentifier];
      WiFiNetworkSetProperty();
    }

    if ([v6 isInSaveDataMode])
    {
      v46 = 1;
    }

    else
    {
      v46 = 2;
    }

    [*(v25 + 2992) numberWithInt:v46];
    WiFiNetworkSetProperty();
    CoreWiFiNetworkProfile = WiFiNetworkCreateCoreWiFiNetworkProfile();
    if ([v6 wasAddedFromWiFiPasswordSharing])
    {
      v48 = WFLogForCategory(5uLL);
      v49 = OSLogForWFLogLevel(1uLL);
      v50 = v49;
      if (WFCurrentLogLevel(v49, v51) && v48)
      {
        v52 = v48;
        if (os_log_type_enabled(v52, v50))
        {
          ssid5 = [v5 ssid];
          *buf = 138412290;
          v72 = ssid5;
          _os_log_impl(&dword_273ECD000, v52, v50, "'%@' was added from WiFi password sharing, setting add reason.", buf, 0xCu);
        }
      }

      [CoreWiFiNetworkProfile setAddReason:11];
    }

    [v7 setKnownNetworkProfile:CoreWiFiNetworkProfile];
    v54 = WFLogForCategory(5uLL);
    v55 = OSLogForWFLogLevel(1uLL);
    v56 = v55;
    if (WFCurrentLogLevel(v55, v57) && v54 && os_log_type_enabled(v54, v56))
    {
      *buf = 138412290;
      v72 = CoreWiFiNetworkProfile;
      _os_log_impl(&dword_273ECD000, v54, v56, "known network profile %@", buf, 0xCu);
    }
  }

  password = [v6 password];

  if (password)
  {
    v59 = WFLogForCategory(5uLL);
    v60 = OSLogForWFLogLevel(1uLL);
    v61 = v60;
    if (WFCurrentLogLevel(v60, v62) && v59)
    {
      v63 = v59;
      if (os_log_type_enabled(v63, v61))
      {
        ssid6 = [v5 ssid];
        *buf = 138412290;
        v72 = ssid6;
        _os_log_impl(&dword_273ECD000, v63, v61, "password provided to assoication parameters for %@", buf, 0xCu);
      }
    }

    password2 = [v6 password];
    [v7 setPassword:password2];
  }

  CoreWiFiScanResult = WiFiNetworkCreateCoreWiFiScanResult();
  [v7 setScanResult:CoreWiFiScanResult];
  if (v10)
  {
    CFRelease(v10);
  }

  [v7 setRememberUponSuccessfulAssociation:1];

  return v7;
}

@end