@interface BAApplicationConfigurationOverrides
+ (BAApplicationConfigurationOverrides)_getOverridesForAppBundleIdentifier:(uint64_t)identifier;
+ (BOOL)_saveOverrides:(void *)overrides forAppBundleIdentifier:;
+ (BOOL)clearAllOverrides;
+ (id)_getInternalAppOverridesDict;
- (void)setDomainAllowlist:(id)allowlist;
- (void)setDownloadAllowance:(id)allowance;
- (void)setEssentialDownloadAllowance:(id)allowance;
- (void)setEssentialMaxInstallSize:(id)size;
- (void)setManifestURL:(id)l;
- (void)setMaxInstallSize:(id)size;
@end

@implementation BAApplicationConfigurationOverrides

- (void)setEssentialMaxInstallSize:(id)size
{
  sizeCopy = size;
  v5 = sizeCopy;
  if (sizeCopy && [(NSNumber *)sizeCopy integerValue]< 0)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setEssentialMaxInstallSize:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([essentialMaxInstallSize integerValue] >= 0), essentialMaxInstallSize must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    essentialMaxInstallSize = self->_essentialMaxInstallSize;
    self->_essentialMaxInstallSize = v5;
  }
}

- (void)setMaxInstallSize:(id)size
{
  sizeCopy = size;
  v5 = sizeCopy;
  if (sizeCopy && [(NSNumber *)sizeCopy integerValue]< 0)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setMaxInstallSize:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([maxInstallSize integerValue] >= 0), maxInstallSize must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    maxInstallSize = self->_maxInstallSize;
    self->_maxInstallSize = v5;
  }
}

- (void)setEssentialDownloadAllowance:(id)allowance
{
  allowanceCopy = allowance;
  v5 = allowanceCopy;
  if (allowanceCopy && [(NSNumber *)allowanceCopy integerValue]< 0)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setEssentialDownloadAllowance:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([essentialDownloadAllowance integerValue] >= 0), essentialDownloadAllowance must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    essentialDownloadAllowance = self->_essentialDownloadAllowance;
    self->_essentialDownloadAllowance = v5;
  }
}

- (void)setDownloadAllowance:(id)allowance
{
  allowanceCopy = allowance;
  v5 = allowanceCopy;
  if (allowanceCopy && [(NSNumber *)allowanceCopy integerValue]< 0)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setDownloadAllowance:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([downloadAllowance integerValue] >= 0), downloadAllowance must be >= 0.";
    __break(0xB001u);
  }

  else
  {
    downloadAllowance = self->_downloadAllowance;
    self->_downloadAllowance = v5;
  }
}

- (void)setManifestURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy && ![(NSString *)lCopy length])
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      [(BAApplicationConfigurationOverrides *)v7 setManifestURL:v8, v9, v10, v11, v12, v13, v14];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([manifestURL length] > 0), manifestURL cannot be empty.";
    __break(0xB001u);
  }

  else
  {
    manifestURL = self->_manifestURL;
    self->_manifestURL = v5;
  }
}

- (void)setDomainAllowlist:(id)allowlist
{
  v33 = *MEMORY[0x277D85DE8];
  allowlistCopy = allowlist;
  v5 = allowlistCopy;
  if (!allowlistCopy)
  {
LABEL_12:
    domainAllowlist = self->_domainAllowlist;
    self->_domainAllowlist = v5;

    return;
  }

  if ([(NSArray *)allowlistCopy count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v5;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v28 + 1) + 8 * i) length])
          {
            v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
            if (v12)
            {
              [(BAApplicationConfigurationOverrides *)v12 setDomainAllowlist:v13, v14, v15, v16, v17, v18, v19];
            }

            qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([item length] > 0), domainAllowlist items cannot be empty.";
            __break(0xB001u);
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    goto LABEL_12;
  }

  v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (v20)
  {
    [(BAApplicationConfigurationOverrides *)v20 setDomainAllowlist:v21, v22, v23, v24, v25, v26, v27];
  }

  qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Assertion failed: ([domainAllowlist count] > 0), domainAllowlist cannot be empty.";
  __break(0xB001u);
}

+ (BAApplicationConfigurationOverrides)_getOverridesForAppBundleIdentifier:(uint64_t)identifier
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_opt_new();
  v5 = +[(BAApplicationConfigurationOverrides *)v3];
  v6 = [v5 objectForKey:v2];

  if (v6)
  {
    v7 = [v6 objectForKey:@"BAEssentialMaxInstallSize"];
    [v4 setEssentialMaxInstallSize:v7];

    v8 = [v6 objectForKey:@"BAMaxInstallSize"];
    [v4 setMaxInstallSize:v8];

    v9 = [v6 objectForKey:@"BAEssentialDownloadAllowance"];
    [v4 setEssentialDownloadAllowance:v9];

    v10 = [v6 objectForKey:@"BADownloadAllowance"];
    [v4 setDownloadAllowance:v10];

    v11 = [v6 objectForKey:@"BAManifestURL"];
    [v4 setManifestURL:v11];

    v12 = [v6 objectForKey:@"BADownloadDomainAllowList"];
    [v4 setDomainAllowlist:v12];
  }

  return v4;
}

+ (BOOL)_saveOverrides:(void *)overrides forAppBundleIdentifier:
{
  v4 = a2;
  overridesCopy = overrides;
  v6 = objc_opt_self();
  v7 = +[(BAApplicationConfigurationOverrides *)v6];
  v8 = v7;
  if (v4)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    manifestURL = [v4 manifestURL];

    if (manifestURL)
    {
      manifestURL2 = [v4 manifestURL];
      [dictionary setValue:manifestURL2 forKey:@"BAManifestURL"];
    }

    domainAllowlist = [v4 domainAllowlist];

    if (domainAllowlist)
    {
      domainAllowlist2 = [v4 domainAllowlist];
      [dictionary setValue:domainAllowlist2 forKey:@"BADownloadDomainAllowList"];
    }

    essentialMaxInstallSize = [v4 essentialMaxInstallSize];

    if (essentialMaxInstallSize)
    {
      essentialMaxInstallSize2 = [v4 essentialMaxInstallSize];
      [dictionary setValue:essentialMaxInstallSize2 forKey:@"BAEssentialMaxInstallSize"];
    }

    maxInstallSize = [v4 maxInstallSize];

    if (maxInstallSize)
    {
      maxInstallSize2 = [v4 maxInstallSize];
      [dictionary setValue:maxInstallSize2 forKey:@"BAMaxInstallSize"];
    }

    essentialDownloadAllowance = [v4 essentialDownloadAllowance];

    if (essentialDownloadAllowance)
    {
      essentialDownloadAllowance2 = [v4 essentialDownloadAllowance];
      [dictionary setValue:essentialDownloadAllowance2 forKey:@"BAEssentialDownloadAllowance"];
    }

    downloadAllowance = [v4 downloadAllowance];

    if (downloadAllowance)
    {
      downloadAllowance2 = [v4 downloadAllowance];
      [dictionary setValue:downloadAllowance2 forKey:@"BADownloadAllowance"];
    }

    [v8 setValue:dictionary forKey:overridesCopy];
  }

  else
  {
    [v7 removeObjectForKey:overridesCopy];
  }

  CFPreferencesSetAppValue(@"InternalAppOverrides", v8, @"com.apple.backgroundassets");
  v22 = CFPreferencesAppSynchronize(@"com.apple.backgroundassets") != 0;

  return v22;
}

+ (BOOL)clearAllOverrides
{
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  CFPreferencesSetAppValue(@"InternalAppOverrides", dictionary, @"com.apple.backgroundassets");
  v3 = CFPreferencesAppSynchronize(@"com.apple.backgroundassets") != 0;

  return v3;
}

+ (id)_getInternalAppOverridesDict
{
  objc_opt_self();
  v1 = CFPreferencesCopyAppValue(@"InternalAppOverrides", @"com.apple.backgroundassets");
  v2 = v1;
  if (v1)
  {
    dictionary = [v1 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v4 = dictionary;

  return v4;
}

- (void)setEssentialMaxInstallSize:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Assertion failed: ([essentialMaxInstallSize integerValue] >= 0), essentialMaxInstallSize must be >= 0.";
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setMaxInstallSize:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Assertion failed: ([maxInstallSize integerValue] >= 0), maxInstallSize must be >= 0.";
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setEssentialDownloadAllowance:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Assertion failed: ([essentialDownloadAllowance integerValue] >= 0), essentialDownloadAllowance must be >= 0.";
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setDownloadAllowance:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Assertion failed: ([downloadAllowance integerValue] >= 0), downloadAllowance must be >= 0.";
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setManifestURL:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Assertion failed: ([manifestURL length] > 0), manifestURL cannot be empty.";
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setDomainAllowlist:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Assertion failed: ([item length] > 0), domainAllowlist items cannot be empty.";
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setDomainAllowlist:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "Assertion failed: ([domainAllowlist count] > 0), domainAllowlist cannot be empty.";
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end