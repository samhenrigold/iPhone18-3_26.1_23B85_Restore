@interface CLSettingsManager
- (CLSettingsManager)init;
- (id)syncgetSetValue:(id)value forKey:(id)key withoutNotifying:(id)notifying;
- (void)beginService;
- (void)endService;
- (void)refresh;
@end

@implementation CLSettingsManager

- (CLSettingsManager)init
{
  v3.receiver = self;
  v3.super_class = CLSettingsManager;
  return [(CLIntersiloService *)&v3 initWithInboundProtocol:&unk_1F5ACAF90 outboundProtocol:&unk_1F5ACA808];
}

- (void)beginService
{
  v21.receiver = self;
  v21.super_class = CLSettingsManager;
  [(CLSettingsManagerInternal *)&v21 beginService];
  v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v6 = objc_msgSend_silo(self, v4, v5);
  v9 = objc_msgSend_queue(v6, v7, v8);
  objc_msgSend_setUnderlyingQueue_(v3, v10, v9);
  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
  v14 = *MEMORY[0x1E696AA70];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1DF815F74;
  v20[3] = &unk_1E86C8488;
  v20[4] = self;
  v16 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v13, v15, v14, 0, v3, v20);
  objc_msgSend_setNotificationObserver_(self, v17, v16);

  objc_msgSend_refresh(self, v18, v19);
}

- (void)endService
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  v7 = objc_msgSend_notificationObserver(self, v5, v6);
  objc_msgSend_removeObserver_(v4, v8, v7);
  v9.receiver = self;
  v9.super_class = CLSettingsManager;
  [(CLSettingsManagerInternal *)&v9 endService];
}

- (void)refresh
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, v2);
  v7 = objc_msgSend_dictionaryRepresentation(v4, v5, v6);
  v10 = objc_msgSend_cl_deepMutableCopy(v7, v8, v9);
  objc_msgSend_setSettingsDictionary_(self, v11, v10);
  v12 = MEMORY[0x1E695DF20];
  v15 = objc_msgSend_settingsDictionary(self, v13, v14);
  v17 = objc_msgSend_dictionaryWithDictionary_(v12, v16, v15);

  MEMORY[0x1EEE66B58](self, sel_updateClientsWithDictionary_, v17);
}

- (id)syncgetSetValue:(id)value forKey:(id)key withoutNotifying:(id)notifying
{
  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, value);
  objc_msgSend_setValue_forKey_(v9, v10, value, key);
  v12.receiver = self;
  v12.super_class = CLSettingsManager;
  return [(CLSettingsManagerInternal *)&v12 syncgetSetValue:value forKey:key withoutNotifying:notifying];
}

@end