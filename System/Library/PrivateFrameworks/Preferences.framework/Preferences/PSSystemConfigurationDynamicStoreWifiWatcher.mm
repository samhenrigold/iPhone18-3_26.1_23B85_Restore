@interface PSSystemConfigurationDynamicStoreWifiWatcher
+ (BOOL)wifiEnabled;
+ (id)sharedInstance;
- (PSSystemConfigurationDynamicStoreWifiWatcher)init;
- (id)_wifiNameWithState:(id)state;
- (id)_wifiPowerWithState:(id)state;
- (id)_wifiTetheringWithState:(id)state;
- (id)wifiConfig;
- (void)dealloc;
- (void)findKeysAirPortState:(id *)state andTetheringState:(id *)tetheringState;
@end

@implementation PSSystemConfigurationDynamicStoreWifiWatcher

+ (id)sharedInstance
{
  if (sharedInstance_cacheOnce_71 != -1)
  {
    +[PSSystemConfigurationDynamicStoreWifiWatcher sharedInstance];
  }

  v3 = sharedInstance___dynamicStoreSharedInstance;

  return v3;
}

void __62__PSSystemConfigurationDynamicStoreWifiWatcher_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PSSystemConfigurationDynamicStoreWifiWatcher);
  v1 = sharedInstance___dynamicStoreSharedInstance;
  sharedInstance___dynamicStoreSharedInstance = v0;
}

+ (BOOL)wifiEnabled
{
  v2 = +[PSSystemConfigurationDynamicStoreWifiWatcher sharedInstance];
  wifiConfig = [v2 wifiConfig];
  v4 = [wifiConfig objectForKey:@"wifiPower"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)findKeysAirPortState:(id *)state andTetheringState:(id *)tetheringState
{
  v85 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69822F0];
  v8 = *MEMORY[0x1E6982318];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x1E69822F0], *MEMORY[0x1E69822E0], *MEMORY[0x1E6982318]);
  if (NetworkInterfaceEntity)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithObject:NetworkInterfaceEntity];
    SCDynamicStoreSetNotificationKeys(self->_prefs, v10, 0);
  }

  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, v7);
  if (!NetworkInterface)
  {
    goto LABEL_33;
  }

  v12 = NetworkInterface;
  v13 = SCDynamicStoreCopyValue(self->_prefs, NetworkInterface);
  CFRelease(v12);
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = CFGetTypeID(v13);
  if (v14 != CFDictionaryGetTypeID() || (v15 = *MEMORY[0x1E69822F8], !CFDictionaryContainsKey(v13, *MEMORY[0x1E69822F8])) || (Value = CFDictionaryGetValue(v13, v15)) == 0 || (v17 = Value, v18 = CFGetTypeID(Value), v18 != CFArrayGetTypeID()))
  {
    CFRelease(v13);
    goto LABEL_33;
  }

  tetheringStateCopy = tetheringState;
  stateCopy = state;
  if (CFArrayGetCount(v17))
  {
    v19 = socket(2, 2, 0);
    if (v19 == -1)
    {
      [PSSystemConfigurationDynamicStoreWifiWatcher findKeysAirPortState:v19 andTetheringState:?];
    }

    else
    {
      v20 = v19;
      theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (theArray)
      {
        if (CFArrayGetCount(v17) >= 1)
        {
          v21 = 0;
          do
          {
            memset(v84, 0, 44);
            *buffer = 0;
            v83 = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(v17, v21);
            if (ValueAtIndex)
            {
              v23 = ValueAtIndex;
              CString = CFStringGetCString(ValueAtIndex, buffer, 16, 0);
              if (buffer[0])
              {
                __strcpy_chk();
                if (!ioctl(v20, 0xC02C6938uLL, v84) && (v84[1] & 0xE0) == 0x80)
                {
                  CFArrayAppendValue(theArray, v23);
                }
              }

              else
              {
                v25 = _PSLoggingFacility(CString);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  v81 = "__WiFiManagerCopyAirPortInterfaces";
                  _os_log_impl(&dword_18B008000, v25, OS_LOG_TYPE_DEFAULT, "%s, interfaceCName is zero length.", buf, 0xCu);
                }
              }
            }

            ++v21;
          }

          while (v21 < CFArrayGetCount(v17));
        }

        v26 = theArray;
        Count = CFArrayGetCount(theArray);
        close(v20);
        if (Count)
        {
          goto LABEL_26;
        }

        CFRelease(theArray);
      }

      else
      {
        close(v20);
      }
    }
  }

  v26 = 0;
LABEL_26:
  CFRelease(v13);
  wifiKey = self->_wifiKey;
  theArraya = v26;
  selfCopy = self;
  if (wifiKey)
  {
    v29 = SCDynamicStoreCopyValue(self->_prefs, wifiKey);
    if (v29)
    {
      v30 = v29;
      if (stateCopy)
      {
        v31 = CFGetTypeID(v29);
        if (v31 == CFDictionaryGetTypeID())
        {
          v32 = v30;
          *stateCopy = v30;
        }
      }

      CFRelease(v30);
    }
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v33 = v26;
    v34 = [(__CFArray *)v33 countByEnumeratingWithState:&v74 objects:v79 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v75;
      while (2)
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v75 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v74 + 1) + 8 * i);
          v39 = CFGetTypeID(v38);
          if (v39 == CFStringGetTypeID() && CFStringFind(v38, @"lo", 8uLL).location == -1)
          {
            v40 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v7, v38, v8);
            if (v40)
            {
              v41 = v40;
              v42 = SCDynamicStoreCopyValue(selfCopy->_prefs, v40);
              if (v42)
              {
                v43 = v42;
                v44 = selfCopy->_wifiKey;
                if (v44)
                {
                  CFRelease(v44);
                }

                wifiInterface = selfCopy->_wifiInterface;
                if (wifiInterface)
                {
                  CFRelease(wifiInterface);
                }

                selfCopy->_wifiKey = v41;
                selfCopy->_wifiInterface = CFRetain(v38);
                if (stateCopy)
                {
                  v46 = CFGetTypeID(v43);
                  if (v46 == CFDictionaryGetTypeID())
                  {
                    v47 = v43;
                    *stateCopy = v43;
                  }
                }

                CFRelease(v43);
                goto LABEL_55;
              }

              CFRelease(v41);
            }
          }
        }

        v35 = [(__CFArray *)v33 countByEnumeratingWithState:&v74 objects:v79 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

LABEL_55:

    v26 = theArraya;
    self = selfCopy;
  }

  if (self->_wifiInterface)
  {
    [(__CFArray *)v26 removeObjectIdenticalTo:?];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v48 = v26;
    v49 = [(__CFArray *)v48 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v71;
      v52 = *MEMORY[0x1E6982350];
      while (2)
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v71 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v54 = *(*(&v70 + 1) + 8 * j);
          v55 = CFGetTypeID(v54);
          if (v55 == CFStringGetTypeID() && CFStringFind(v54, @"lo", 8uLL).location == -1)
          {
            v56 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v7, v54, v52);
            if (v56)
            {
              v57 = v56;
              v58 = SCDynamicStoreCopyValue(selfCopy->_prefs, v56);
              if (v58)
              {
                v59 = v58;
                tetheringLink = selfCopy->_tetheringLink;
                if (tetheringLink)
                {
                  CFRelease(tetheringLink);
                }

                selfCopy->_tetheringLink = v57;
                if (tetheringStateCopy)
                {
                  v61 = CFGetTypeID(v59);
                  if (v61 == CFDictionaryGetTypeID())
                  {
                    v62 = v59;
                    *tetheringStateCopy = v59;
                  }
                }

                CFRelease(v59);
                goto LABEL_76;
              }

              CFRelease(v57);
            }
          }
        }

        v50 = [(__CFArray *)v48 countByEnumeratingWithState:&v70 objects:v78 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

LABEL_76:

    v26 = theArraya;
    self = selfCopy;
  }

  v63 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v64 = v63;
  if (self->_wifiKey)
  {
    [v63 addObject:?];
    if (self->_tetheringLink)
    {
      [v64 addObject:?];
    }

    SCDynamicStoreSetNotificationKeys(self->_prefs, v64, 0);
  }

LABEL_33:
}

- (id)_wifiTetheringWithState:(id)state
{
  v3 = [state objectForKey:*MEMORY[0x1E6982548]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:0];
  }

  v5 = v4;

  return v5;
}

- (id)_wifiPowerWithState:(id)state
{
  v3 = [state objectForKey:@"POWER"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  v4 = [MEMORY[0x1E696AD98] numberWithBool:0];
LABEL_6:

  return v4;
}

- (id)_wifiNameWithState:(id)state
{
  stateCopy = state;
  v4 = [stateCopy objectForKey:@"WiFiNetworkType"];
  v5 = v4;
  if (v4 && [v4 intValue] == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [stateCopy objectForKey:@"SSID_STR"];
  }

  return v6;
}

- (id)wifiConfig
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  wifiKey = self->_wifiKey;
  if (wifiKey && self->_tetheringLink)
  {
    v5 = SCDynamicStoreCopyValue(self->_prefs, wifiKey);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFDictionaryGetTypeID())
      {
        CFRelease(v6);
        v6 = 0;
      }
    }

    v8 = SCDynamicStoreCopyValue(self->_prefs, self->_tetheringLink);
    v9 = v8;
    if (v8)
    {
      v10 = CFGetTypeID(v8);
      if (v10 != CFDictionaryGetTypeID())
      {
        CFRelease(v9);
        v9 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    [(PSSystemConfigurationDynamicStoreWifiWatcher *)self findKeysAirPortState:&v16 andTetheringState:&v15];
    v6 = v16;
    v9 = v15;
  }

  v11 = [(PSSystemConfigurationDynamicStoreWifiWatcher *)self _wifiNameWithState:v6];
  if (v11)
  {
    [v3 setObject:v11 forKey:@"wifiName"];
  }

  v12 = [(PSSystemConfigurationDynamicStoreWifiWatcher *)self _wifiPowerWithState:v6];
  if (v12)
  {
    [v3 setObject:v12 forKey:@"wifiPower"];
  }

  v13 = [(PSSystemConfigurationDynamicStoreWifiWatcher *)self _wifiTetheringWithState:v9];
  if (v13)
  {
    [v3 setObject:v13 forKey:@"wifiTethering"];
  }

  return v3;
}

- (PSSystemConfigurationDynamicStoreWifiWatcher)init
{
  v8.receiver = self;
  v8.super_class = PSSystemConfigurationDynamicStoreWifiWatcher;
  v2 = [(PSSystemConfigurationDynamicStoreWifiWatcher *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v7.version = 0;
    memset(&v7.retain, 0, 24);
    v7.info = v2;
    v4 = SCDynamicStoreCreateWithOptions(0, @"com.apple.preferences", 0, WifiStateChanged, &v7);
    v3->_prefs = v4;
    if (!v4)
    {
      v5 = 0;
      goto LABEL_6;
    }

    SCDynamicStoreSetDispatchQueue(v4, MEMORY[0x1E69E96A0]);
  }

  v5 = v3;
LABEL_6:

  return v5;
}

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    SCDynamicStoreSetDispatchQueue(prefs, 0);
    CFRelease(self->_prefs);
  }

  wifiKey = self->_wifiKey;
  if (wifiKey)
  {
    CFRelease(wifiKey);
  }

  wifiInterface = self->_wifiInterface;
  if (wifiInterface)
  {
    CFRelease(wifiInterface);
  }

  tetheringLink = self->_tetheringLink;
  if (tetheringLink)
  {
    CFRelease(tetheringLink);
  }

  v7.receiver = self;
  v7.super_class = PSSystemConfigurationDynamicStoreWifiWatcher;
  [(PSSystemConfigurationDynamicStoreWifiWatcher *)&v7 dealloc];
}

- (void)findKeysAirPortState:(uint64_t)a1 andTetheringState:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = _PSLoggingFacility(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "__WiFiManagerCopyAirPortInterfaces";
    _os_log_impl(&dword_18B008000, v1, OS_LOG_TYPE_DEFAULT, "Socket creation failed at %s", &v2, 0xCu);
  }
}

@end