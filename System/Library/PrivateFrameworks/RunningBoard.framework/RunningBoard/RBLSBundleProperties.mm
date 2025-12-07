@interface RBLSBundleProperties
- (id)bundleInfoValuesForKeys:(id)keys;
- (id)proxy;
- (void)initWithApplicationProxy:(void *)proxy;
- (void)initWithBundleProxy:(void *)proxy;
@end

@implementation RBLSBundleProperties

- (id)bundleInfoValuesForKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    [(RBLSBundleProperties *)self bundleInfoValuesForKeys:keysCopy, &v7];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithBundleProxy:(void *)proxy
{
  v3 = a2;
  if (proxy)
  {
    proxy = [proxy init];
    if (proxy)
    {
      bundleIdentifier = [v3 bundleIdentifier];
      v5 = *(proxy + 3);
      *(proxy + 3) = bundleIdentifier;

      bundleURL = [v3 bundleURL];
      path = [bundleURL path];
      v8 = *(proxy + 4);
      *(proxy + 4) = path;

      canonicalExecutablePath = [v3 canonicalExecutablePath];
      v10 = *(proxy + 5);
      *(proxy + 5) = canonicalExecutablePath;

      dataContainerURL = [v3 dataContainerURL];
      v12 = *(proxy + 7);
      *(proxy + 7) = dataContainerURL;

      environmentVariables = [v3 environmentVariables];
      v14 = *(proxy + 9);
      *(proxy + 9) = environmentVariables;

      _rb_extensionPointIdentifier = [v3 _rb_extensionPointIdentifier];
      v16 = *(proxy + 6);
      *(proxy + 6) = _rb_extensionPointIdentifier;

      v17 = *(proxy + 6);
      *(proxy + 15) = v17 != 0;
      if (v17)
      {
        v18 = [v3 entitlementValueForKey:@"com.apple.private.security.container-required" ofClass:objc_opt_class()];
        v19 = *(proxy + 8);
        *(proxy + 8) = v18;
      }

      v20 = objc_opt_new();
      v21 = *(proxy + 10);
      *(proxy + 10) = v20;

      entitlements = [v3 entitlements];
      v23 = [entitlements objectForKey:@"com.apple.security.application-groups"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [MEMORY[0x277CBEB98] setWithArray:v23];
        v25 = *(proxy + 10);
        *(proxy + 10) = v24;
      }
    }
  }

  return proxy;
}

- (void)initWithApplicationProxy:(void *)proxy
{
  v3 = a2;
  if (proxy)
  {
    proxy = [(RBLSBundleProperties *)proxy initWithBundleProxy:v3];
    if (proxy)
    {
      uIBackgroundModes = [v3 UIBackgroundModes];
      if ([uIBackgroundModes containsObject:@"fetch"])
      {
        v5 = 1;
      }

      else
      {
        v5 = [uIBackgroundModes containsObject:@"remote-notification"];
      }

      *(proxy + 9) = v5;
      if ([uIBackgroundModes containsObject:@"voip"])
      {
        v6 = 1;
      }

      else
      {
        v6 = [uIBackgroundModes containsObject:@"push-to-talk"];
      }

      *(proxy + 13) = v6;
      *(proxy + 12) = [uIBackgroundModes containsObject:@"unboundedTaskCompletion"];
      *(proxy + 10) = [uIBackgroundModes containsObject:@"network-authentication"];
      *(proxy + 11) = [uIBackgroundModes containsObject:@"audio"];
      *(proxy + 14) = [uIBackgroundModes containsObject:@"continuous"];
      v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"SBPreferredPriorityBand", 0}];
      v8 = [v3 objectsForInfoDictionaryKeys:v7];
      v9 = [v8 stringForKey:@"SBPreferredPriorityBand"];
      if ([v9 isEqualToString:@"PriorityBandSuspended"])
      {
        *(proxy + 4) = 0;
      }

      else
      {
        if (![v9 isEqualToString:@"PriorityBandMail"])
        {
          v10 = 0;
          *(proxy + 4) = -1;
          goto LABEL_15;
        }

        *(proxy + 4) = 40;
      }

      v10 = 1;
LABEL_15:
      *(proxy + 8) = v10;
    }
  }

  return proxy;
}

- (id)proxy
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = MEMORY[0x277CC1E88];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:*(self + 32)];
    v9 = 0;
    v4 = [v2 bundleProxyForURL:v3 error:&v9];
    v5 = v9;

    if (!v4)
    {
      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8 = [MEMORY[0x277CBEBC0] URLWithString:*(self + 32)];
        *buf = 138543618;
        v11 = v8;
        v12 = 2114;
        v13 = v5;
        _os_log_fault_impl(&dword_262485000, v6, OS_LOG_TYPE_FAULT, "LSBundleProxy lookup for %{public}@, failed with %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)bundleInfoValuesForKeys:(uint64_t *)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = [(RBLSBundleProperties *)a1 proxy];
  v6 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v7 = [v5 objectsForInfoDictionaryKeys:v6];

  *a3 = [v7 rawValues];
}

@end