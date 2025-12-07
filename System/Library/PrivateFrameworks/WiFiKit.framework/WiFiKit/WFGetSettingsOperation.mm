@interface WFGetSettingsOperation
- (NSOperationQueue)keychainQueue;
- (WFGetSettingsOperation)initWithSSID:(id)d interfaceName:(id)name;
- (void)dealloc;
- (void)start;
@end

@implementation WFGetSettingsOperation

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    CFRelease(prefs);
    self->_prefs = 0;
  }

  v4.receiver = self;
  v4.super_class = WFGetSettingsOperation;
  [(WFGetSettingsOperation *)&v4 dealloc];
}

- (void)start
{
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && (self & 1) != 0 && os_log_type_enabled(a2, v5))
  {
    *v7 = 0;
    _os_log_impl(&dword_273ECD000, a2, v5, "No custom settings exist in WiFiManager", v7, 2u);
  }
}

- (NSOperationQueue)keychainQueue
{
  keychainQueue = self->_keychainQueue;
  if (!keychainQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_keychainQueue;
    self->_keychainQueue = v4;

    [(NSOperationQueue *)self->_keychainQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_keychainQueue setQualityOfService:17];
    keychainQueue = self->_keychainQueue;
  }

  return keychainQueue;
}

- (WFGetSettingsOperation)initWithSSID:(id)d interfaceName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = WFGetSettingsOperation;
  v8 = [(WFGetSettingsOperation *)&v24 init];
  if (!v8)
  {
    name = 0;
    goto LABEL_6;
  }

  if (!dCopy)
  {
    v17 = WFLogForCategory(0);
    v18 = OSLogForWFLogLevel(1uLL);
    v19 = v18;
    if (!WFCurrentLogLevel(v18, v20) || !v17 || !os_log_type_enabled(v17, v19))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v26 = "[WFGetSettingsOperation initWithSSID:interfaceName:]";
    v21 = "%s: missing ssid";
    goto LABEL_16;
  }

  v9 = [dCopy copy];
  ssid = v8->_ssid;
  v8->_ssid = v9;

  if (!nameCopy)
  {
    v17 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(1uLL);
    v19 = v22;
    if (!WFCurrentLogLevel(v22, v23) || !v17 || !os_log_type_enabled(v17, v19))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v26 = "[WFGetSettingsOperation initWithSSID:interfaceName:]";
    v21 = "%s: missing interfaceName";
LABEL_16:
    _os_log_impl(&dword_273ECD000, v17, v19, v21, buf, 0xCu);
LABEL_17:

    goto LABEL_18;
  }

  v11 = [nameCopy copy];
  interfaceName = v8->_interfaceName;
  v8->_interfaceName = v11;

  v13 = SCPreferencesCreateWithAuthorization(0, @"com.apple.wifikit", 0, 0);
  v8->_prefs = v13;
  if (!v13)
  {
LABEL_18:
    name = v8;
    v8 = 0;
    goto LABEL_6;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Get settings for '%@'", v8->_ssid];
  name = v8->_name;
  v8->_name = v14;
LABEL_6:

  return v8;
}

@end