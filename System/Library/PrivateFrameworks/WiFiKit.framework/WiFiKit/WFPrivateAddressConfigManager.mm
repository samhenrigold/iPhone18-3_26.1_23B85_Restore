@interface WFPrivateAddressConfigManager
- (WFPrivateAddressConfigManager)init;
- (id)privateAddressConfig;
- (void)dealloc;
- (void)init;
- (void)privateAddressConfig;
@end

@implementation WFPrivateAddressConfigManager

- (WFPrivateAddressConfigManager)init
{
  v5.receiver = self;
  v5.super_class = WFPrivateAddressConfigManager;
  v2 = [(WFPrivateAddressConfigManager *)&v5 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = SCPreferencesCreateWithOptions();
  v2->_prefs = v3;
  if (!v3)
  {
    [WFPrivateAddressConfigManager init];
LABEL_5:

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    CFRelease(prefs);
    self->_prefs = 0;
  }

  v4.receiver = self;
  v4.super_class = WFPrivateAddressConfigManager;
  [(WFPrivateAddressConfigManager *)&v4 dealloc];
}

- (id)privateAddressConfig
{
  if ([(WFPrivateAddressConfigManager *)self prefs])
  {
    if (!SCPreferencesLock([(WFPrivateAddressConfigManager *)self prefs], 0))
    {
      SCPreferencesSynchronize([(WFPrivateAddressConfigManager *)self prefs]);
      SCPreferencesLock([(WFPrivateAddressConfigManager *)self prefs], 1u);
    }

    v3 = SCPreferencesGetValue([(WFPrivateAddressConfigManager *)self prefs], @"List of scanned networks with private mac");
  }

  else
  {
    [WFPrivateAddressConfigManager privateAddressConfig];
    v3 = 0;
  }

  return v3;
}

- (void)init
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[WFPrivateAddressConfigManager init]";
    OUTLINED_FUNCTION_0_6(&dword_273ECD000, v4, v5, "%s: failed to get SCPreferencesRef", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

- (void)privateAddressConfig
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "[WFPrivateAddressConfigManager privateAddressConfig]";
    OUTLINED_FUNCTION_0_6(&dword_273ECD000, v4, v5, "%s: failed to get SCPreferencesRef", v6, v7, v8, v9, v10, DWORD2(v10));
  }
}

@end