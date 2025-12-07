@interface WPDManager
+ (id)cbStateAsString:(int64_t)string;
+ (id)wpStateAsString:(int64_t)string;
+ (void)initialize;
+ (void)initializeAdvDenylist:(id)denylist AdvAllowlist:(id)allowlist ScanDenylist:(id)scanDenylist ScanAllowlist:(id)scanAllowlist;
- (BOOL)isAdvertisingAllowlistedForType:(unsigned __int8)type;
- (BOOL)isScanAllowlistedForType:(unsigned __int8)type;
- (NSString)description;
- (WPDManager)initWithServer:(id)server Name:(id)name;
- (WPDaemonServer)server;
- (id)generateStateDumpStrings;
- (void)cbManagerDidUpdateState:(id)state;
- (void)cleanup;
- (void)dealloc;
- (void)generateStateDump;
- (void)update;
- (void)updateState:(int64_t)state Restricted:(BOOL)restricted;
@end

@implementation WPDManager

- (WPDaemonServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

+ (void)initialize
{
  v13 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    _isInternalBuild = os_variant_has_internal_diagnostics();
    if (WPLogInitOnce != -1)
    {
      +[WPDManager initialize];
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = _isInternalBuild;
      _os_log_impl(&dword_272965000, v2, OS_LOG_TYPE_DEFAULT, "WPDManager _isInternalBuild: %d", &v11, 8u);
    }

    if (_isInternalBuild == 1)
    {
      v3 = _getCombinedAllowlist(@"ScanDenylist", @"ScanAllowlist");
      v4 = _scanAllowlist;
      _scanAllowlist = v3;

      if (WPLogInitOnce != -1)
      {
        +[WPDManager initialize];
      }

      v5 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = _scanAllowlist;
        _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "WPDManager scanAllowlist: %@", &v11, 0xCu);
      }

      v6 = _getCombinedAllowlist(@"AdvDenylist", @"AdvAllowlist");
      v7 = _advAllowlist;
      _advAllowlist = v6;

      if (WPLogInitOnce != -1)
      {
        +[WPDManager initialize];
      }

      v8 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = _advAllowlist;
        _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPDManager advAllowlist %@", &v11, 0xCu);
      }
    }

    else
    {
      v9 = _scanAllowlist;
      _scanAllowlist = 0;

      v10 = _advAllowlist;
      _advAllowlist = 0;
    }
  }
}

- (WPDManager)initWithServer:(id)server Name:(id)name
{
  serverCopy = server;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = WPDManager;
  v8 = [(WPDManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_server, serverCopy);
    objc_storeStrong(&v9->_name, name);
    v9->_state = 0;
    *&v9->_restricted = 0;
    cbManagers = v9->_cbManagers;
    v9->_cbManagers = 0;

    v9->_isHomePod = +[WPDaemonServer isHomePod];
  }

  return v9;
}

- (void)cleanup
{
  v7 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDManager cleanup];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    v5 = 138412290;
    v6 = name;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "%@ dealloc", &v5, 0xCu);
  }

  [(WPDManager *)self setState:0];
}

- (void)dealloc
{
  [(WPDManager *)self cleanup];
  v3.receiver = self;
  v3.super_class = WPDManager;
  [(WPDManager *)&v3 dealloc];
}

- (NSString)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  generateStateDumpStrings = [(WPDManager *)self generateStateDumpStrings];
  v5 = [generateStateDumpStrings count] - 1;
  v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@\n", self->_name];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [generateStateDumpStrings subarrayWithRange:{1, v5}];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendString:*(*(&v14 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:v6];

  objc_autoreleasePoolPop(v3);

  return v12;
}

- (id)generateStateDumpStrings
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"========= %@ =========\n", self->_name];
  [array addObject:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = [WPDManager wpStateAsString:[(WPDManager *)self state]];
  v7 = [v5 stringWithFormat:@"state: %@ (%d)\n", v6, -[WPDManager state](self, "state")];
  [array addObject:v7];

  v8 = MEMORY[0x277CCACA8];
  testMode = [(WPDManager *)self testMode];
  v10 = "no";
  if (testMode)
  {
    v10 = "yes";
  }

  v11 = [v8 stringWithFormat:@"testMode: %s\n", v10];
  [array addObject:v11];

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  return v12;
}

- (void)generateStateDump
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  generateStateDumpStrings = [(WPDManager *)self generateStateDumpStrings];
  v3 = [generateStateDumpStrings countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(generateStateDumpStrings);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (WPLogInitOnce != -1)
        {
          [WPDManager generateStateDump];
        }

        v8 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: %@", buf, 0xCu);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [generateStateDumpStrings countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)cbManagerDidUpdateState:(id)state
{
  stateCopy = state;
  cbManagers = [(WPDManager *)self cbManagers];
  v6 = [cbManagers containsObject:stateCopy];

  if (v6)
  {
    server = [(WPDManager *)self server];
    [server cbManagerDidUpdateState:stateCopy];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDManager cbManagerDidUpdateState:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDManager *)v8 cbManagerDidUpdateState:stateCopy];
    }
  }
}

- (void)updateState:(int64_t)state Restricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  stateCopy = state;
  v16 = *MEMORY[0x277D85DE8];
  [(WPDManager *)self setState:?];
  [(WPDManager *)self setRestricted:restrictedCopy];
  if (WPLogInitOnce != -1)
  {
    [WPDManager updateState:Restricted:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    v8 = v7;
    name = [(WPDManager *)self name];
    v10 = 138412802;
    v11 = name;
    v12 = 1024;
    v13 = stateCopy;
    v14 = 1024;
    v15 = restrictedCopy;
    _os_log_debug_impl(&dword_272965000, v8, OS_LOG_TYPE_DEBUG, "Manager %@ updated state:%d restricted:%d", &v10, 0x18u);
  }

  [(WPDManager *)self update];
}

- (void)update
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[WPDManager update]";
  _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "%s must override", &v1, 0xCu);
}

- (BOOL)isScanAllowlistedForType:(unsigned __int8)type
{
  typeCopy = type;
  v4 = +[WPDManager scanAllowlist];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsIndex:typeCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isAdvertisingAllowlistedForType:(unsigned __int8)type
{
  typeCopy = type;
  v4 = +[WPDManager advAllowlist];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsIndex:typeCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)wpStateAsString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279E58E58[string - 1];
  }
}

+ (id)cbStateAsString:(int64_t)string
{
  if ((string - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_279E58E70[string - 1];
  }
}

+ (void)initializeAdvDenylist:(id)denylist AdvAllowlist:(id)allowlist ScanDenylist:(id)scanDenylist ScanAllowlist:(id)scanAllowlist
{
  v25 = *MEMORY[0x277D85DE8];
  denylistCopy = denylist;
  allowlistCopy = allowlist;
  scanDenylistCopy = scanDenylist;
  scanAllowlistCopy = scanAllowlist;
  if (_isInternalBuild == 1)
  {
    v13 = _combineDenylistAndAllowlist(scanDenylistCopy, scanAllowlistCopy);
  }

  else
  {
    v13 = 0;
  }

  v14 = _scanAllowlist;
  _scanAllowlist = v13;

  if (_scanAllowlist)
  {
    if (WPLogInitOnce != -1)
    {
      +[WPDManager initializeAdvDenylist:AdvAllowlist:ScanDenylist:ScanAllowlist:];
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = @"ScanDenylist";
      v21 = 2112;
      v22 = @"ScanAllowlist";
      v23 = 2112;
      v24 = _scanAllowlist;
      _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Combined %@ and %@ into allowlist: %@", &v19, 0x20u);
    }
  }

  if (_isInternalBuild == 1)
  {
    v16 = _combineDenylistAndAllowlist(denylistCopy, allowlistCopy);
  }

  else
  {
    v16 = 0;
  }

  v17 = _advAllowlist;
  _advAllowlist = v16;

  if (_advAllowlist)
  {
    if (WPLogInitOnce != -1)
    {
      +[WPDManager initializeAdvDenylist:AdvAllowlist:ScanDenylist:ScanAllowlist:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = @"AdvDenylist";
      v21 = 2112;
      v22 = @"AdvAllowlist";
      v23 = 2112;
      v24 = _advAllowlist;
      _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "Combined %@ and %@ into allowlist: %@", &v19, 0x20u);
    }
  }
}

- (void)cbManagerDidUpdateState:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 name];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_272965000, v5, OS_LOG_TYPE_ERROR, "%@ manager - unexpected CB manager %@", &v7, 0x16u);
}

@end