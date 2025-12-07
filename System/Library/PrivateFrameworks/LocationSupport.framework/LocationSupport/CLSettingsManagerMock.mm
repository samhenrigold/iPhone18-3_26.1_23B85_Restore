@interface CLSettingsManagerMock
- (CLSettingsManagerMock)init;
- (void)setSettings:(id)settings;
@end

@implementation CLSettingsManagerMock

- (CLSettingsManagerMock)init
{
  v3.receiver = self;
  v3.super_class = CLSettingsManagerMock;
  return [(CLIntersiloService *)&v3 initWithInboundProtocol:&unk_1F5ACB008 outboundProtocol:&unk_1F5ACA808];
}

- (void)setSettings:(id)settings
{
  v4 = objc_msgSend_cl_deepMutableCopy(settings, a2, settings);
  objc_msgSend_setSettingsDictionary_(self, v5, v4);
  v6 = MEMORY[0x1E695DF20];
  v9 = objc_msgSend_settingsDictionary(self, v7, v8);
  v11 = objc_msgSend_dictionaryWithDictionary_(v6, v10, v9);

  MEMORY[0x1EEE66B58](self, sel_updateClientsWithDictionary_, v11);
}

@end