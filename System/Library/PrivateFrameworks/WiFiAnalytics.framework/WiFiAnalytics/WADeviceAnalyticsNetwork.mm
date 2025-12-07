@interface WADeviceAnalyticsNetwork
+ (id)networkWith:(id)with;
- (WADeviceAnalyticsNetwork)initWith:(id)with;
- (id)description;
@end

@implementation WADeviceAnalyticsNetwork

+ (id)networkWith:(id)with
{
  withCopy = with;
  v4 = [[WADeviceAnalyticsNetwork alloc] initWith:withCopy];

  return v4;
}

- (WADeviceAnalyticsNetwork)initWith:(id)with
{
  v41 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v33.receiver = self;
  v33.super_class = WADeviceAnalyticsNetwork;
  v5 = [(WADeviceAnalyticsNetwork *)&v33 init];
  if (v5)
  {
    ssid = [withCopy ssid];
    ssid = v5->_ssid;
    v5->_ssid = ssid;

    v27 = v5;
    v5->_isHome = [withCopy isHome];
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = withCopy;
    v10 = [withCopy bss];
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 lan];

          if (!v16)
          {
            v17 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v35 = "[WADeviceAnalyticsNetwork initWith:]";
              v36 = 1024;
              v37 = 1538;
              v38 = 2112;
              v39 = v15;
              _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Warning: nil LAN for %@", buf, 0x1Cu);
            }
          }

          v18 = [v15 lan];
          v19 = [WAPersistentContainer getConstraintsValues:v18];

          [v8 addObject:v19];
          allValues = [v19 allValues];
          bssid = [v15 bssid];
          [(NSDictionary *)v9 setObject:allValues forKeyedSubscript:bssid];
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v40 count:16];
      }

      while (v12);
    }

    v5 = v27;
    bssidsAndLans = v27->_bssidsAndLans;
    v27->_bssidsAndLans = v9;
    v23 = v9;

    v24 = [MEMORY[0x1E695DFD8] setWithSet:v8];
    lans = v27->_lans;
    v27->_lans = v24;

    withCopy = v28;
  }

  return v5;
}

- (id)description
{
  v2 = &stru_1F481C4A0;
  if (self->_isHome)
  {
    v2 = @"(isHome)";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ lans:%@ bssidsAndLans:%@", self->_ssid, v2, self->_lans, self->_bssidsAndLans];
}

@end