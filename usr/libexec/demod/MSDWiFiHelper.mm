@interface MSDWiFiHelper
+ (id)sharedInstance;
- (BOOL)configureWiFi:(id)fi password:(id)password;
- (BOOL)connectTo:(id)to password:(id)password;
- (BOOL)enableWiFi:(BOOL)fi;
- (BOOL)isValidWiFiSettings:(id)settings;
- (BOOL)saveWiFiSettingsToPreferences:(id)preferences;
- (MSDWiFiHelper)init;
- (id)getCurrentWiFiSettings:(BOOL)settings;
- (id)getCurrentWiFiSsid;
- (id)getPersistentWiFiSsid;
- (id)lastJoinedWiFiNetworksProfile;
- (id)loadWiFiSettingsFromPreferences;
- (int64_t)getCurrentWiFiSignalStrength;
- (void)configureWiFiWithPersistentSettings;
- (void)disassociateAndForgetWiFi;
- (void)forgetAllKnownWiFiNetworksExcept:(id)except;
- (void)saveCurrentWiFiSettings;
- (void)waitForWiFiDriver;
- (void)waitForWiFiInterface;
- (void)waitForWiFiLink;
@end

@implementation MSDWiFiHelper

+ (id)sharedInstance
{
  if (qword_1001A5A70 != -1)
  {
    sub_1000E944C();
  }

  v3 = qword_1001A5A68;

  return v3;
}

- (BOOL)enableWiFi:(BOOL)fi
{
  fiCopy = fi;
  [(MSDWiFiHelper *)self waitForWiFiInterface];
  [(MSDWiFiHelper *)self waitForWiFiDriver];
  wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
  v13 = 0;
  v6 = [wifiInterface setPower:fiCopy error:&v13];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    sub_1000E9460(v7);
  }

  v9 = sub_100063A54(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "Failed";
    if (v6)
    {
      v10 = "Succeeded";
    }

    v11 = "Enable";
    if (!fiCopy)
    {
      v11 = "Disable";
    }

    *buf = 136446466;
    v15 = v10;
    v16 = 2082;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "enableWiFi - Operation %{public}s: %{public}s", buf, 0x16u);
  }

  return v6;
}

- (BOOL)configureWiFi:(id)fi password:(id)password
{
  fiCopy = fi;
  passwordCopy = password;
  v8 = [(MSDWiFiHelper *)self enableWiFi:1];
  if ((v8 & 1) == 0)
  {
    v14 = sub_100063A54(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9508();
    }

    goto LABEL_19;
  }

  v9 = [(MSDWiFiHelper *)self connectTo:fiCopy password:passwordCopy];
  if ((v9 & 1) == 0)
  {
    v14 = sub_100063A54(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9544();
    }

    goto LABEL_19;
  }

  [(MSDWiFiHelper *)self forgetAllKnownWiFiNetworksExcept:fiCopy];
  device = [(MSDWiFiHelper *)self device];
  isContentFrozen = [device isContentFrozen];

  if (!isContentFrozen)
  {
    v19 = 1;
    goto LABEL_13;
  }

  v13 = sub_100063A54(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving wifi ssid and password to demo volume.", buf, 2u);
  }

  v14 = [NSMutableDictionary dictionaryWithObjectsAndKeys:fiCopy, @"SSID", 0];
  if (!passwordCopy || (v15 = [(__CFString *)passwordCopy length], v16 = passwordCopy, !v15))
  {
    v16 = &stru_10016D9D8;
  }

  v17 = [(__CFString *)v16 dataUsingEncoding:4];
  [v14 setObject:v17 forKey:@"Password"];

  v18 = [(MSDWiFiHelper *)self saveWiFiSettingsToPreferences:v14];
  if ((v18 & 1) == 0)
  {
    sub_1000E9580(v18);
LABEL_19:
    v19 = 0;
    goto LABEL_11;
  }

  v19 = 1;
LABEL_11:

LABEL_13:
  return v19;
}

- (void)configureWiFiWithPersistentSettings
{
  loadWiFiSettingsFromPreferences = [(MSDWiFiHelper *)self loadWiFiSettingsFromPreferences];
  v4 = loadWiFiSettingsFromPreferences;
  if (!loadWiFiSettingsFromPreferences)
  {
    v9 = sub_100063A54(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9698();
    }

    v5 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_23;
  }

  v5 = [loadWiFiSettingsFromPreferences objectForKey:@"SSID"];
  v6 = sub_100063A54(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enforcing WiFi settings to AP with SSID - %{public}@", &v16, 0xCu);
  }

  v7 = [v4 objectForKey:@"Password"];
  if ([v7 length])
  {
    v8 = [[NSString alloc] initWithData:v7 encoding:4];
    if (!v8)
    {
      v9 = sub_100063A54(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E95E4();
      }

      v8 = 0;
LABEL_23:

      device2 = sub_100063A54(v15);
      if (os_log_type_enabled(device2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, device2, OS_LOG_TYPE_DEFAULT, "WiFi settings not enforced.", &v16, 2u);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [(MSDWiFiHelper *)self enableWiFi:1];
  if ((v10 & 1) == 0)
  {
    v9 = sub_100063A54(v10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9620();
    }

    goto LABEL_23;
  }

  v11 = [(MSDWiFiHelper *)self connectTo:v5 password:v8];
  if ((v11 & 1) == 0)
  {
    v9 = sub_100063A54(v11);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E965C();
    }

    goto LABEL_23;
  }

  [(MSDWiFiHelper *)self forgetAllKnownWiFiNetworksExcept:v5];
  device = [(MSDWiFiHelper *)self device];
  isContentFrozen = [device isContentFrozen];

  if ((isContentFrozen & 1) == 0)
  {
    device2 = [(MSDWiFiHelper *)self device];
    [device2 setWifiSettings:0];
LABEL_14:
  }
}

- (void)waitForWiFiLink
{
  v3 = objc_alloc_init(NSCondition);
  v4 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B39D4;
  v18[3] = &unk_10016C448;
  v6 = v3;
  v19 = v6;
  [wifiInterface setEventHandler:v18];

  wifiInterface2 = [(MSDWiFiHelper *)self wifiInterface];
  v17 = 0;
  v8 = [wifiInterface2 startMonitoringEventType:6 error:&v17];
  v9 = v17;

  if (v8)
  {
    [v6 lock];
    while (1)
    {
      wifiInterface3 = [(MSDWiFiHelper *)self wifiInterface];
      currentKnownNetworkProfile = [wifiInterface3 currentKnownNetworkProfile];

      if (currentKnownNetworkProfile)
      {
        break;
      }

      v13 = sub_100063A54(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current known wifi still returns nil.  Waiting for CWFEventTypeLinkChanged event.", buf, 2u);
      }

      v14 = [v6 waitUntilDate:v4];
      if ((v14 & 1) == 0)
      {
        v15 = sub_100063A54(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wait for current known wifi timed out after 5 seconds", buf, 2u);
        }

        break;
      }
    }

    [v6 unlock];
    wifiInterface4 = [(MSDWiFiHelper *)self wifiInterface];
    [wifiInterface4 stopMonitoringEventType:6];
  }

  else
  {
    sub_1000E96D4(v9, buf);
    wifiInterface4 = *buf;
  }
}

- (id)getCurrentWiFiSettings:(BOOL)settings
{
  settingsCopy = settings;
  [(MSDWiFiHelper *)self waitForWiFiLink];
  wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
  currentKnownNetworkProfile = [wifiInterface currentKnownNetworkProfile];

  if (!currentKnownNetworkProfile)
  {
    v8 = sub_100063A54(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to get current known network profile, fetching last joined wifi network...", buf, 2u);
    }

    lastJoinedWiFiNetworksProfile = [(MSDWiFiHelper *)self lastJoinedWiFiNetworksProfile];
    if (!lastJoinedWiFiNetworksProfile)
    {
      currentKnownNetworkProfile = sub_100063A54(0);
      if (os_log_type_enabled(currentKnownNetworkProfile, OS_LOG_TYPE_ERROR))
      {
        sub_1000E9860();
      }

      goto LABEL_21;
    }

    currentKnownNetworkProfile = lastJoinedWiFiNetworksProfile;
  }

  networkName = [currentKnownNetworkProfile networkName];
  if (networkName)
  {
    v11 = networkName;
    v12 = [NSMutableDictionary dictionaryWithObjectsAndKeys:networkName, @"SSID", 0];
    if (!settingsCopy)
    {
LABEL_14:
      v20 = [NSDictionary dictionaryWithDictionary:v12];

      goto LABEL_15;
    }

    sSID = [currentKnownNetworkProfile SSID];
    Password = CWFSecItemQueryPassword();
    v15 = 0;

    if (Password == -25300 || !Password)
    {
      if (!v15 || (v17 = [(__CFString *)v15 length], v18 = v15, !v17))
      {
        v18 = &stru_10016D9D8;
      }

      v19 = [(__CFString *)v18 dataUsingEncoding:4];
      [v12 setObject:v19 forKey:@"Password"];

      goto LABEL_14;
    }

    v22 = sub_100063A54(v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9788();
    }
  }

  else
  {
    sub_1000E97FC(0);
  }

LABEL_21:
  v20 = 0;
LABEL_15:

  return v20;
}

- (id)getPersistentWiFiSsid
{
  loadWiFiSettingsFromPreferences = [(MSDWiFiHelper *)self loadWiFiSettingsFromPreferences];
  v3 = loadWiFiSettingsFromPreferences;
  if (loadWiFiSettingsFromPreferences)
  {
    v4 = [loadWiFiSettingsFromPreferences objectForKey:@"SSID"];
    if (v4)
    {
      goto LABEL_3;
    }

    v6 = sub_100063A54(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E989C();
    }
  }

  else
  {
    v6 = sub_100063A54(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E991C();
    }
  }

  v4 = 0;
LABEL_3:

  return v4;
}

- (id)getCurrentWiFiSsid
{
  v2 = [(MSDWiFiHelper *)self getCurrentWiFiSettings:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"SSID"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)getCurrentWiFiSignalStrength
{
  wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
  currentKnownNetworkProfile = [wifiInterface currentKnownNetworkProfile];

  if (!currentKnownNetworkProfile)
  {
    return -100;
  }

  wifiInterface2 = [(MSDWiFiHelper *)self wifiInterface];
  rSSI = [wifiInterface2 RSSI];

  return rSSI;
}

- (void)disassociateAndForgetWiFi
{
  [(MSDWiFiHelper *)self forgetAllKnownWiFiNetworksExcept:0];
  wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
  [wifiInterface disassociateWithReason:0];

  device = [(MSDWiFiHelper *)self device];
  [device setWifiSettings:0];
}

- (BOOL)connectTo:(id)to password:(id)password
{
  toCopy = to;
  passwordCopy = password;
  v6 = objc_alloc_init(CWFScanParameters);
  [v6 setIncludeHiddenNetworks:1];
  v55 = toCopy;
  v7 = [NSArray arrayWithObjects:&v55 count:1];
  [v6 setSSIDList:v7];

  [v6 setMinimumRSSI:-80];
  v8 = [NSSet setWithArray:&off_10017BFB8];
  v44 = v6;
  [v6 setIncludeProperties:v8];

  v9 = 0;
  v10 = 3;
  while (1)
  {
    v11 = v9;
    wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
    v51 = v9;
    v13 = [wifiInterface performScanWithParameters:v44 error:&v51];
    v9 = v51;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v15)
    {
      break;
    }

LABEL_11:

LABEL_15:
    sleep(3u);

    if (!--v10)
    {
      v26 = sub_100063A54(v27);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000E9A0C();
      }

      v28 = 0;
      v29 = passwordCopy;
      goto LABEL_29;
    }
  }

  v16 = v15;
  v17 = 0;
  v18 = *v48;
LABEL_4:
  v19 = 0;
  v20 = v17;
  while (1)
  {
    if (*v48 != v18)
    {
      objc_enumerationMutation(v14);
    }

    v17 = *(*(&v47 + 1) + 8 * v19);

    networkName = [v17 networkName];
    v22 = [networkName isEqualToString:toCopy];

    if (v22)
    {
      break;
    }

    v19 = v19 + 1;
    v20 = v17;
    if (v16 == v19)
    {
      v16 = [v14 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v24 = sub_100063A54(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    networkName2 = [v17 networkName];
    *buf = 138543362;
    v53 = networkName2;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Found the wifi with ssid '%{public}@'", buf, 0xCu);
  }

  v26 = v17;
  if (!v26)
  {
    goto LABEL_15;
  }

  v30 = objc_alloc_init(CWFAssocParameters);
  [v30 setScanResult:v26];
  [v30 setRememberUponSuccessfulAssociation:1];
  v29 = passwordCopy;
  [v30 setPassword:passwordCopy];
  v31 = objc_alloc_init(CWFNetworkProfile);
  [v30 setKnownNetworkProfile:v31];

  knownNetworkProfile = [v30 knownNetworkProfile];
  [knownNetworkProfile setHiddenState:1];

  v33 = -3;
  while (1)
  {
    v34 = v9;
    wifiInterface2 = [(MSDWiFiHelper *)self wifiInterface];
    v46 = v9;
    v36 = [wifiInterface2 associateWithParameters:v30 error:&v46];
    v9 = v46;

    if (v36)
    {
      break;
    }

    v38 = sleep(3u);
    if (__CFADD__(v33++, 1))
    {
      v40 = sub_100063A54(v38);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1000E999C();
      }

      v28 = 0;
      goto LABEL_29;
    }
  }

  v41 = sub_100063A54(v37);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Connected to wifi.", buf, 2u);
  }

  v28 = 1;
LABEL_29:

  return v28;
}

- (void)waitForWiFiInterface
{
  v3 = objc_alloc_init(NSCondition);
  v4 = [NSDate dateWithTimeIntervalSinceNow:5.0];
  wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B4524;
  v20[3] = &unk_10016C448;
  v6 = v3;
  v21 = v6;
  [wifiInterface setEventHandler:v20];

  wifiInterface2 = [(MSDWiFiHelper *)self wifiInterface];
  v19 = 0;
  v8 = [wifiInterface2 startMonitoringEventType:10 error:&v19];
  v9 = v19;

  if (v8)
  {
    [v6 lock];
    while (1)
    {
      wifiInterface3 = [(MSDWiFiHelper *)self wifiInterface];
      interfaceName = [wifiInterface3 interfaceName];

      if (interfaceName)
      {
        break;
      }

      v14 = sub_100063A54(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Wifi interface is not intialized, waiting for CWFEventTypeInterfaceAdded event.", v18, 2u);
      }

      v15 = [v6 waitUntilDate:v4];
      if ((v15 & 1) == 0)
      {
        v16 = sub_100063A54(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wait for wifi interface initialization timed out after 5 seconds", v18, 2u);
        }

        break;
      }
    }

    [v6 unlock];
    wifiInterface4 = [(MSDWiFiHelper *)self wifiInterface];
    [wifiInterface4 stopMonitoringEventType:10];
  }

  else
  {
    wifiInterface4 = sub_100063A54(v10);
    if (os_log_type_enabled(wifiInterface4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9A88();
    }
  }
}

- (void)waitForWiFiDriver
{
  v3 = dispatch_semaphore_create(0);
  [(MSDWiFiHelper *)self setSem:v3];

  notification = 0;
  v4 = IONotificationPortCreate(0);
  v5 = IOServiceAddMatchingNotification(v4, "IOServiceMatched", &off_10017C0F8, sub_1000B3124, 0, &notification);
  if (v5)
  {
    v10 = sub_100063A54(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9AF8();
    }
  }

  else
  {
    if (sub_1000B3124(&notification) || (v6 = dispatch_time(0, 10000000000), [(MSDWiFiHelper *)self sem], v7 = objc_claimAutoreleasedReturnValue(), v8 = dispatch_semaphore_wait(v7, v6), v7, !v8))
    {
      if (!v4)
      {
        return;
      }

      goto LABEL_5;
    }

    v10 = sub_100063A54(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9B6C();
    }
  }

  if (!v4)
  {
    return;
  }

LABEL_5:
  IONotificationPortDestroy(v4);
}

- (void)forgetAllKnownWiFiNetworksExcept:(id)except
{
  exceptCopy = except;
  v5 = sub_100063A54(exceptCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = exceptCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forgetting all known WiFi networks except: '%{public}@'...", buf, 0xCu);
  }

  wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
  v7 = [wifiInterface knownNetworkProfilesWithProperties:0];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (exceptCopy && ([*(*(&v22 + 1) + 8 * i) networkName], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", exceptCopy), v14, v15))
        {
          v17 = sub_100063A54(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found known WiFi network with matching ssid!", buf, 2u);
          }
        }

        else
        {
          wifiInterface2 = [(MSDWiFiHelper *)self wifiInterface];
          v21 = 0;
          v19 = [wifiInterface2 removeKnownNetworkProfile:v13 reason:0 error:&v21];
          v17 = v21;

          if ((v19 & 1) == 0)
          {
            sub_1000E9BA8(v17);
            goto LABEL_18;
          }

          sSID = [v13 SSID];
          CWFSecItemSetPassword();
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
}

- (id)lastJoinedWiFiNetworksProfile
{
  wifiInterface = [(MSDWiFiHelper *)self wifiInterface];
  v3 = [wifiInterface knownNetworkProfilesWithProperties:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if (v7 || ([*(*(&v20 + 1) + 8 * i) lastJoinedAt], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
        {
          lastJoinedAt = [v10 lastJoinedAt];
          lastJoinedAt2 = [v7 lastJoinedAt];
          v13 = [lastJoinedAt compare:lastJoinedAt2];

          if (v13 == 1)
          {
            v14 = v10;

            v7 = v14;
          }
        }

        else
        {
          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v17 = sub_100063A54(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    networkName = [v7 networkName];
    *buf = 138543362;
    v25 = networkName;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Last joined WiFi network SSID: %{public}@", buf, 0xCu);
  }

  return v7;
}

- (BOOL)isValidWiFiSettings:(id)settings
{
  settingsCopy = settings;
  v4 = settingsCopy;
  if (!settingsCopy)
  {
    v8 = sub_100063A54(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No WiFi settings found.", v10, 2u);
    }

    v6 = 0;
    goto LABEL_9;
  }

  v5 = [settingsCopy objectForKey:@"SSID"];
  v6 = v5;
  if (!v5 || (v5 = [v5 length]) == 0 || (objc_msgSend(v4, "objectForKey:", @"Password"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = sub_100063A54(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E9C5C();
    }

LABEL_9:

    v5 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (MSDWiFiHelper)init
{
  v8.receiver = self;
  v8.super_class = MSDWiFiHelper;
  v2 = [(MSDWiFiHelper *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(CWFInterface);
    [(MSDWiFiHelper *)v2 setWifiInterface:v3];

    wifiInterface = [(MSDWiFiHelper *)v2 wifiInterface];
    [wifiInterface activate];

    v5 = +[MSDTargetDevice sharedInstance];
    [(MSDWiFiHelper *)v2 setDevice:v5];

    v6 = v2;
  }

  return v2;
}

- (void)saveCurrentWiFiSettings
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    sub_1000B4D00(&_mh_execute_header, v3, v4, "Saving current wifi settings.", v10);
  }

  v5 = [(MSDWiFiHelper *)self getCurrentWiFiSettings:1];
  if (v5)
  {
    v6 = [(MSDWiFiHelper *)self saveWiFiSettingsToPreferences:v5];
    if ((v6 & 1) == 0)
    {
      v7 = sub_100063A54(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        sub_1000B4CE8(&_mh_execute_header, v7, v8, "Failed to save wifi settings in our preferences file.", v9);
      }
    }
  }
}

- (id)loadWiFiSettingsFromPreferences
{
  device = [(MSDWiFiHelper *)self device];
  wifiSettings = [device wifiSettings];
  v5 = [wifiSettings mutableCopy];

  if (v5)
  {
    if (![(MSDWiFiHelper *)self isValidWiFiSettings:v5])
    {
      goto LABEL_9;
    }

    v7 = [v5 objectForKey:@"Password"];
    v8 = +[MSDCryptoHandler sharedInstance];
    v9 = [v8 performCryptoWithSecretKeyOnData:v7 isDecipher:1];

    if (v9)
    {
      v11 = sub_100063A54([v5 setObject:v9 forKey:@"Password"]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        sub_1000B4D00(&_mh_execute_header, v11, v12, "WiFi settings successfully loaded.", v16);
      }
    }

    else
    {
      v9 = sub_100063A54(v10);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        sub_1000B4CE8(&_mh_execute_header, v9, v15, "Failed to decrypt WiFi password.", v17);
      }
    }
  }

  else
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      sub_1000B4D00(&_mh_execute_header, v7, v14, "Persistent WiFi settings does not exist", v18);
    }
  }

LABEL_9:

  return v5;
}

- (BOOL)saveWiFiSettingsToPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if ([(MSDWiFiHelper *)self isValidWiFiSettings:preferencesCopy])
  {
    v5 = +[MSDCryptoHandler sharedInstance];
    v6 = [preferencesCopy objectForKey:@"Password"];
    v7 = [v5 performCryptoWithSecretKeyOnData:v6 isDecipher:0];

    v9 = v7 != 0;
    if (v7)
    {
      v10 = [preferencesCopy mutableCopy];
      [v10 setObject:v7 forKey:@"Password"];
      device = [(MSDWiFiHelper *)self device];
      [device setWifiSettings:v10];

      device2 = [(MSDWiFiHelper *)self device];
      isContentFrozen = [device2 isContentFrozen];

      if (isContentFrozen)
      {
        device3 = [(MSDWiFiHelper *)self device];
        [device3 setShouldForgetKnownNetworkUponUnlock:0];
      }

      v16 = sub_100063A54(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        sub_1000B4D00(&_mh_execute_header, v16, v17, "WiFi settings successfully saved.", v20);
      }
    }

    else
    {
      v10 = sub_100063A54(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        sub_1000B4CE8(&_mh_execute_header, v10, v19, "Failed to produce final password data.", v21);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end