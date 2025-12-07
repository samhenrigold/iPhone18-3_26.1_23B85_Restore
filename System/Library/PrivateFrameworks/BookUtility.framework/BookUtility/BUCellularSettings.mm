@interface BUCellularSettings
+ (BOOL)shouldShowCellularAutomaticDownloadsSwitch;
+ (id)_copyValueForCarrierBundleKey:(id)key;
+ (id)settingsForIdentity:(id)identity;
- (BUCellularSettings)initWithDefaultsKey:(id)key;
- (id)_cellularSettings;
- (int64_t)cellularDataPrompt;
- (void)setAllowAutomaticDownloads:(BOOL)downloads;
- (void)setCellularDataPrompt:(int64_t)prompt;
@end

@implementation BUCellularSettings

+ (id)settingsForIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [self alloc];
  v8 = objc_msgSend_defaultsKey(identityCopy, v6, v7);

  v10 = objc_msgSend_initWithDefaultsKey_(v5, v9, v8);

  return v10;
}

- (BUCellularSettings)initWithDefaultsKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = BUCellularSettings;
  v6 = [(BUCellularSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsKey, key);
  }

  return v7;
}

- (void)setAllowAutomaticDownloads:(BOOL)downloads
{
  v3 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, downloads);
  CFPreferencesSetAppValue(@"AllowAutoDownloadOnCellular", v3, @"com.apple.iBooks");
}

- (int64_t)cellularDataPrompt
{
  v4 = objc_msgSend__cellularSettings(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, self->_defaultsKey);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"CellularDataPrompt");
  if (objc_msgSend_isEqualToString_(v8, v9, @"Always"))
  {
    v11 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v8, v10, @"OverLimit"))
  {
    v11 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v8, v12, @"Never"))
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setCellularDataPrompt:(int64_t)prompt
{
  v15 = objc_msgSend__cellularSettings(self, a2, prompt);
  v6 = objc_msgSend_objectForKey_(v15, v5, self->_defaultsKey);
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = objc_msgSend_initWithDictionary_(v7, v8, v15);
  v10 = objc_alloc(MEMORY[0x277CBEB38]);
  v12 = objc_msgSend_initWithDictionary_(v10, v11, v6);
  objc_msgSend_setObject_forKey_(v9, v13, v12, self->_defaultsKey);
  if (prompt <= 2)
  {
    objc_msgSend_setObject_forKey_(v12, v14, off_278D1D200[prompt], @"CellularDataPrompt");
  }

  CFPreferencesSetAppValue(@"CellularSettings", v9, @"com.apple.iBooks");
}

+ (BOOL)shouldShowCellularAutomaticDownloadsSwitch
{
  v2 = objc_opt_class();
  v4 = objc_msgSend__copyValueForCarrierBundleKey_(v2, v3, @"ShowiTunesStoreAutoDownloadOverCellularSwitch");
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = objc_msgSend_BOOLValue(v4, v5, v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_cellularSettings
{
  v2 = CFPreferencesCopyValue(@"CellularSettings", @"com.apple.iBooks", @"mobile", *MEMORY[0x277CBF010]);

  return v2;
}

+ (id)_copyValueForCarrierBundleKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc(MEMORY[0x277CC37B0]);
  v6 = objc_msgSend_initWithQueue_(v4, v5, 0);
  v22 = 0;
  v8 = objc_msgSend_getCurrentDataSubscriptionContextSync_(v6, v7, &v22);
  v9 = v22;
  v10 = v9;
  if (v8)
  {
    v11 = objc_alloc(MEMORY[0x277CC3620]);
    v13 = objc_msgSend_initWithBundleType_(v11, v12, 1);
    v21 = v10;
    v15 = objc_msgSend_copyCarrierBundleValue_key_bundleType_error_(v6, v14, v8, keyCopy, v13, &v21);
    v16 = v21;

    v10 = v16;
  }

  else
  {
    v13 = BookUtilityLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF934(v10, v13);
    }

    v15 = 0;
  }

  if (v10)
  {
    v18 = BookUtilityLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF9AC(v10, v18, v19);
    }
  }

  return v15;
}

@end