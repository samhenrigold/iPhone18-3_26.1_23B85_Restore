@interface ACCPlatformPluginWiFiSharing
- (BOOL)handleAccessoryWiFiInformationForWirelessCarPlay:(id)play;
- (BOOL)isDeviceConnectedToWiFi;
- (NSString)pluginName;
- (id)copyDeviceWiFiNetworkInformation;
- (void)initPlugin;
@end

@implementation ACCPlatformPluginWiFiSharing

- (NSString)pluginName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)initPlugin
{
  v9 = *MEMORY[0x277D85DE8];
  init_logging();
  [(ACCPlatformPluginWiFiSharing *)self setIsRunning:0];
  self->_hasWAPICapability = MGGetBoolAnswer();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformPluginWiFiSharing initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_hasWAPICapability)
    {
      v6 = @"yes";
    }

    else
    {
      v6 = @"no";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_233653000, v5, OS_LOG_TYPE_DEFAULT, "_hasWAPICapability = %@", &v7, 0xCu);
  }
}

- (BOOL)isDeviceConnectedToWiFi
{
  v2 = WiFiManagerClientCreate();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = WiFiManagerClientCopyDevices();
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) && (CFArrayGetValueAtIndex(v5, 0), (v6 = WiFiDeviceClientCopyCurrentNetwork()) != 0))
    {
      CFRelease(v6);
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

- (id)copyDeviceWiFiNetworkInformation
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = WiFiManagerClientCreate();
  if (!v3)
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_37;
  }

  v4 = v3;
  v5 = WiFiManagerClientCopyDevices();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5))
    {
      CFArrayGetValueAtIndex(v6, 0);
      v7 = WiFiDeviceClientCopyCurrentNetwork();
      if (v7)
      {
        v8 = v7;
        v9 = WiFiNetworkGetSSID();
        v27 = v9;
        if (v9)
        {
          v10 = [v9 copy];
        }

        else
        {
          v10 = &stru_2848F1848;
        }

        if (WiFiNetworkIsWEP())
        {
          v13 = 0;
LABEL_15:
          v12 = 0;
          v14 = 1;
          goto LABEL_28;
        }

        if (WiFiNetworkIsWPA())
        {
          v15 = WiFiNetworkCopyRecord();
          v12 = 2;
          if (v15)
          {
            v16 = v15;
            v17 = CFDictionaryContainsKey(v15, @"WPA_IE");
            v18 = CFDictionaryContainsKey(v16, @"RSN_IE");
            if (v17)
            {
              v19 = 3;
            }

            else
            {
              v19 = 2;
            }

            if (v18)
            {
              v13 = v19;
            }

            else
            {
              v13 = 1;
            }

            CFRelease(v16);
            goto LABEL_15;
          }

          v14 = 1;
        }

        else
        {
          v14 = 0;
          v12 = 0;
        }

        v13 = 1;
LABEL_28:
        v20 = WiFiNetworkCopyPassword();
        v21 = v20;
        if (v20)
        {
          v11 = [v20 copy];
        }

        else
        {
          v11 = &stru_2848F1848;
          if (v14)
          {
LABEL_33:
            v12 = 2;
LABEL_34:
            CFRelease(v8);

            goto LABEL_35;
          }
        }

        if (!WiFiNetworkRequiresUsername() && !WiFiNetworkRequiresIdentity())
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v11 = 0;
      v10 = 0;
      v12 = 2;
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v12 = 0;
    }

    v13 = 1;
LABEL_35:
    CFRelease(v6);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = 0;
  v13 = 1;
LABEL_36:
  CFRelease(v4);
LABEL_37:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
  [v2 setObject:v22 forKey:@"WiFiStatus"];

  if (v12 != 2)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
    [v2 setObject:v23 forKey:@"WiFiSecurityType"];

    if (v10)
    {
      [v2 setObject:v10 forKey:@"WiFiSSID"];
    }

    if (v11)
    {
      [v2 setObject:v11 forKey:@"WiFiPassphrase"];
    }
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v24 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformPluginWiFiSharing initPlugin];
    }

    v24 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v2;
    _os_log_impl(&dword_233653000, v24, OS_LOG_TYPE_INFO, "Returning deviceWiFiNetworkInformation %@", buf, 0xCu);
  }

  return v2;
}

- (BOOL)handleAccessoryWiFiInformationForWirelessCarPlay:(id)play
{
  v31 = *MEMORY[0x277D85DE8];
  playCopy = play;
  v4 = [playCopy objectForKey:@"WiFiBSSID"];
  v5 = [playCopy objectForKey:@"WiFiSSID"];
  v6 = [playCopy objectForKey:@"WiFiPassphrase"];
  v7 = [playCopy objectForKey:@"WiFiSecurityType"];
  v28 = [playCopy objectForKey:@"WiFiChannel"];
  v8 = [playCopy objectForKey:@"LegacyAccessoryExternalAccessoryConnectionID"];
  if (v7)
  {
    unsignedIntValue = [v7 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  if (!v5 || (v6 ? (v10 = unsignedIntValue == 0) : (v10 = 0), v10))
  {
    v11 = v4;
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v13 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformPluginWiFiSharing initPlugin];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_233653000, v13, OS_LOG_TYPE_DEFAULT, "ERROR: either SSID is nil (it's %@), or passphrase is present but securityType is none, not setting CarPlay WiFi params", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v11 = v4;
    v12 = 1;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v15 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformPluginWiFiSharing initPlugin];
    }

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
  }

  v17 = v11;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = playCopy;
    _os_log_impl(&dword_233653000, v15, OS_LOG_TYPE_DEFAULT, "accessory wifi info for CarPlay is %@", buf, 0xCu);
  }

  v18 = v8;
  if (v12)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v20 = dictionary;
    if (v17)
    {
      [dictionary setObject:v17 forKey:@"BSSID"];
    }

    if (v5)
    {
      [v20 setObject:v5 forKey:@"SSID_STR"];
    }

    if (v28)
    {
      [v20 setObject:v28 forKey:@"CHANNEL"];
    }

    if (v6)
    {
      [v20 setObject:v6 forKey:@"password"];
    }

    if (unsignedIntValue >= 3)
    {
      v22 = v17;
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v23 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCPlatformPluginWiFiSharing initPlugin];
        }

        v23 = MEMORY[0x277D86220];
        v24 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v30) = unsignedIntValue;
        _os_log_impl(&dword_233653000, v23, OS_LOG_TYPE_DEFAULT, "Invalid accessory security type %d", buf, 8u);
      }

      v21 = 0;
      v17 = v22;
      v18 = v8;
    }

    else
    {
      v21 = *(&off_2789E7FC8 + unsignedIntValue);
    }

    [v20 setObject:v21 forKey:@"securityType"];
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v25 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformPluginWiFiSharing initPlugin];
      }

      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(ACCPlatformPluginWiFiSharing *)v20 handleAccessoryWiFiInformationForWirelessCarPlay:v18, v25];
    }

    [v18 unsignedIntegerValue];
    CRSaveWiFiCredentialsForAccessoryConnectionIdentifier();
  }

  return 1;
}

- (void)handleAccessoryWiFiInformationForWirelessCarPlay:(NSObject *)a3 .cold.5(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 138412802;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 unsignedIntegerValue];
  v9 = 2048;
  v10 = [a2 unsignedIntegerValue];
  _os_log_debug_impl(&dword_233653000, a3, OS_LOG_TYPE_DEBUG, "Saving dictionary %@ to carPlay for EA connectionID %lu (0x%lX)", &v5, 0x20u);
}

@end