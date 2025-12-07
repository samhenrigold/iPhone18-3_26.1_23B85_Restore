@interface WFNetworkListRandomMACManager
- (BOOL)isSSIDinCache:(id)cache;
- (BOOL)shouldEnableRandomMACForSSID:(id)d;
- (WFNetworkListRandomMACManager)initWithClient:(id)client;
- (id)cachedRandomMACForSSID:(id)d;
- (id)newScanRecordWithRandomMACFromScanRecord:(id)record;
- (void)resetCacheWithCurrentNetworkName:(id)name;
- (void)setRandomMAC:(id)c forNetwork:(id)network mode:(unint64_t)mode;
@end

@implementation WFNetworkListRandomMACManager

- (WFNetworkListRandomMACManager)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = WFNetworkListRandomMACManager;
  v5 = [(WFNetworkListRandomMACManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(WFNetworkListRandomMACManager *)v5 setClient:clientCopy];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(WFNetworkListRandomMACManager *)v6 setCache:v7];

    [(WFNetworkListRandomMACManager *)v6 setShouldResetCache:0];
  }

  return v6;
}

- (void)resetCacheWithCurrentNetworkName:(id)name
{
  *&v20[13] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = WFLogForCategory(8uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    shouldResetCache = self->_shouldResetCache;
    v17 = 136315650;
    v18 = "[WFNetworkListRandomMACManager resetCacheWithCurrentNetworkName:]";
    v19 = 1024;
    *v20 = shouldResetCache;
    v20[2] = 2112;
    *&v20[3] = nameCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: shouldResetCache=%d currentNetworkName=%@", &v17, 0x1Cu);
  }

  if (self->_shouldResetCache)
  {
    if (nameCopy)
    {
      v10 = [(NSMutableDictionary *)self->_cache objectForKey:nameCopy];
      cache = [(WFNetworkListRandomMACManager *)self cache];
      [cache removeAllObjects];

      if (v10)
      {
        v12 = WFLogForCategory(8uLL);
        v13 = OSLogForWFLogLevel(1uLL);
        v14 = v13;
        if (WFCurrentLogLevel(v13, v15) && v12 && os_log_type_enabled(v12, v14))
        {
          v17 = 136315394;
          v18 = "[WFNetworkListRandomMACManager resetCacheWithCurrentNetworkName:]";
          v19 = 2112;
          *v20 = nameCopy;
          _os_log_impl(&dword_273ECD000, v12, v14, "%s: leaving current network='%@' in cache", &v17, 0x16u);
        }

        cache2 = [(WFNetworkListRandomMACManager *)self cache];
        [cache2 setObject:v10 forKey:nameCopy];
      }

      self->_shouldResetCache = 0;
    }
  }

  else
  {
    self->_shouldResetCache = 1;
  }
}

- (id)newScanRecordWithRandomMACFromScanRecord:(id)record
{
  v47 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  attributes = [recordCopy attributes];
  v6 = [attributes mutableCopy];

  privateAddressMode = [recordCopy privateAddressMode];
  cache = self->_cache;
  ssid = [recordCopy ssid];
  v10 = [(NSMutableDictionary *)cache objectForKey:ssid];

  if (v10)
  {
    v11 = [v10 objectForKey:@"kWFNetworkListRandomMACCacheAddressKey"];
    if (!v11)
    {
      v12 = WFLogForCategory(8uLL);
      v13 = OSLogForWFLogLevel(1uLL);
      v14 = v13;
      if (WFCurrentLogLevel(v13, v15) && v12)
      {
        v16 = v12;
        if (os_log_type_enabled(v16, v14))
        {
          ssid2 = [recordCopy ssid];
          v39 = 136315394;
          v40 = "[WFNetworkListRandomMACManager newScanRecordWithRandomMACFromScanRecord:]";
          v41 = 2112;
          v42 = ssid2;
          _os_log_impl(&dword_273ECD000, v16, v14, "%s: private address not in cache for '%@'", &v39, 0x16u);
        }
      }

      client = [(WFNetworkListRandomMACManager *)self client];
      ssid3 = [recordCopy ssid];
      v11 = [client newRandomMACAddressForSSID:ssid3];
    }

    client2 = [v10 objectForKey:@"kWFNetworkListRandomMACCacheStatusKey"];
    privateAddressMode = [client2 intValue];
  }

  else
  {
    client2 = [(WFNetworkListRandomMACManager *)self client];
    ssid4 = [recordCopy ssid];
    v11 = [client2 newRandomMACAddressForSSID:ssid4];
  }

  v22 = WFLogForCategory(8uLL);
  v23 = OSLogForWFLogLevel(1uLL);
  v24 = v23;
  if (WFCurrentLogLevel(v23, v25) && v22)
  {
    v26 = v22;
    if (os_log_type_enabled(v26, v24))
    {
      ssid5 = [recordCopy ssid];
      v39 = 136315906;
      v40 = "[WFNetworkListRandomMACManager newScanRecordWithRandomMACFromScanRecord:]";
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = ssid5;
      v45 = 2048;
      v46 = privateAddressMode;
      _os_log_impl(&dword_273ECD000, v26, v24, "%s: private address='%@' for '%@' (mode=%lu)", &v39, 0x2Au);
    }
  }

  if (v11)
  {
    v28 = ether_aton([v11 UTF8String]);
    if (v28)
    {
      v29 = v28;
      v30 = objc_opt_new();
      v31 = CFDataCreate(0, v29, 6);
      if (v31)
      {
        v32 = v31;
        [v30 setObject:v31 forKey:@"PRIVATE_MAC_ADDRESS_VALUE"];

        v33 = [MEMORY[0x277CCABB0] numberWithInt:privateAddressMode];
        [v30 setObject:v33 forKey:@"PRIVATE_MAC_ADDRESS_TYPE"];

        [v6 setObject:v30 forKey:@"PRIVATE_MAC_ADDRESS"];
      }
    }

    ssid6 = [recordCopy ssid];

    if (ssid6)
    {
      ssid7 = [recordCopy ssid];
      [(WFNetworkListRandomMACManager *)self setRandomMAC:v11 forNetwork:ssid7 mode:privateAddressMode];
    }
  }

  v36 = WiFiNetworkCreate();
  v37 = [[WFNetworkScanRecord alloc] initWithNetworkRef:v36];
  CFRelease(v36);

  return v37;
}

- (void)setRandomMAC:(id)c forNetwork:(id)network mode:(unint64_t)mode
{
  v27 = *MEMORY[0x277D85DE8];
  cCopy = c;
  networkCopy = network;
  if (cCopy)
  {
    v10 = [(NSMutableDictionary *)self->_cache objectForKey:networkCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v10 setObject:cCopy forKey:@"kWFNetworkListRandomMACCacheAddressKey"];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    [v10 setObject:v11 forKey:@"kWFNetworkListRandomMACCacheStatusKey"];

    [(NSMutableDictionary *)self->_cache setObject:v10 forKey:networkCopy];
    v12 = WFLogForCategory(8uLL);
    v13 = OSLogForWFLogLevel(1uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) && v12 && os_log_type_enabled(v12, v14))
    {
      v19 = 136315906;
      v20 = "[WFNetworkListRandomMACManager setRandomMAC:forNetwork:mode:]";
      v21 = 2112;
      v22 = cCopy;
      v23 = 2112;
      modeCopy2 = networkCopy;
      v25 = 2048;
      modeCopy = mode;
      _os_log_impl(&dword_273ECD000, v12, v14, "%s: caching private address='%@' for '%@' (mode=%lu)", &v19, 0x2Au);
    }
  }

  else
  {
    v10 = WFLogForCategory(8uLL);
    v16 = OSLogForWFLogLevel(1uLL);
    v17 = v16;
    if (WFCurrentLogLevel(v16, v18) && v10 && os_log_type_enabled(v10, v17))
    {
      v19 = 136315650;
      v20 = "[WFNetworkListRandomMACManager setRandomMAC:forNetwork:mode:]";
      v21 = 2112;
      v22 = networkCopy;
      v23 = 2048;
      modeCopy2 = mode;
      _os_log_impl(&dword_273ECD000, v10, v17, "%s: unable to cache nil private address for '%@' (mode=%lu)", &v19, 0x20u);
    }
  }
}

- (BOOL)isSSIDinCache:(id)cache
{
  v17 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:cacheCopy];
  v6 = WFLogForCategory(8uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
  {
    v11 = 136315650;
    v12 = "[WFNetworkListRandomMACManager isSSIDinCache:]";
    v13 = 1024;
    v14 = v5 != 0;
    v15 = 2112;
    v16 = cacheCopy;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: cached=%d private address for '%@'", &v11, 0x1Cu);
  }

  return v5 != 0;
}

- (BOOL)shouldEnableRandomMACForSSID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"kWFNetworkListRandomMACCacheStatusKey"];
    bOOLValue = [v7 BOOLValue];

    v9 = WFLogForCategory(8uLL);
    v10 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel(v10, v11) >= 4 && v9 && os_log_type_enabled(v9, v10))
    {
      v19 = 136315650;
      v20 = "[WFNetworkListRandomMACManager shouldEnableRandomMACForSSID:]";
      v21 = 2112;
      v22 = dCopy;
      v23 = 1024;
      v24 = bOOLValue;
      v12 = "%s: cached value for '%@' enabled=%d";
      v13 = v9;
      v14 = v10;
      v15 = 28;
LABEL_10:
      _os_log_impl(&dword_273ECD000, v13, v14, v12, &v19, v15);
    }
  }

  else
  {
    v9 = WFLogForCategory(8uLL);
    v16 = OSLogForWFLogLevel(4uLL);
    LOBYTE(bOOLValue) = 1;
    if (WFCurrentLogLevel(v16, v17) >= 4 && v9 && os_log_type_enabled(v9, v16))
    {
      v19 = 136315394;
      v20 = "[WFNetworkListRandomMACManager shouldEnableRandomMACForSSID:]";
      v21 = 2112;
      v22 = dCopy;
      v12 = "%s: no cached value for '%@'";
      v13 = v9;
      v14 = v16;
      v15 = 22;
      goto LABEL_10;
    }
  }

  return bOOLValue;
}

- (id)cachedRandomMACForSSID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"kWFNetworkListRandomMACCacheAddressKey"];
    if (v7)
    {
      goto LABEL_13;
    }

    v8 = WFLogForCategory(8uLL);
    v9 = OSLogForWFLogLevel(1uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) && v8)
    {
      v8 = v8;
      if (os_log_type_enabled(v8, v10))
      {
        v12 = [(NSMutableDictionary *)self->_cache count];
        v17 = 136315650;
        v18 = "[WFNetworkListRandomMACManager cachedRandomMACForSSID:]";
        v19 = 2112;
        v20 = dCopy;
        v21 = 2048;
        v22 = v12;
        _os_log_impl(&dword_273ECD000, v8, v10, "%s: no private address found for '%@' (cached=%lu)", &v17, 0x20u);
      }
    }
  }

  else
  {
    v8 = WFLogForCategory(8uLL);
    v13 = OSLogForWFLogLevel(1uLL);
    v14 = v13;
    if (WFCurrentLogLevel(v13, v15) && v8 && os_log_type_enabled(v8, v14))
    {
      v17 = 136315394;
      v18 = "[WFNetworkListRandomMACManager cachedRandomMACForSSID:]";
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&dword_273ECD000, v8, v14, "%s: '%@' does not exist in cache", &v17, 0x16u);
    }
  }

  v7 = 0;
LABEL_13:

  return v7;
}

@end