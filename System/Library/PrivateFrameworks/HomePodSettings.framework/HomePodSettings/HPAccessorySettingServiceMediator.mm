@interface HPAccessorySettingServiceMediator
- (HPAccessorySettingServiceMediator)initWithInterface:(id)interface;
- (HPSAccessorySettingService)settingsInterface;
- (void)didUpdateHH2State:(BOOL)state;
- (void)notifyDidUpdateSetting:(id)setting forKeyPath:(id)path;
@end

@implementation HPAccessorySettingServiceMediator

- (HPAccessorySettingServiceMediator)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v8.receiver = self;
  v8.super_class = HPAccessorySettingServiceMediator;
  v5 = [(HPAccessorySettingServiceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_settingsInterface, interfaceCopy);
  }

  return v6;
}

- (void)notifyDidUpdateSetting:(id)setting forKeyPath:(id)path
{
  pathCopy = path;
  settingCopy = setting;
  settingsInterface = [(HPAccessorySettingServiceMediator *)self settingsInterface];
  [settingsInterface notifyDidUpdateSetting:settingCopy forKeyPath:pathCopy];
}

- (void)didUpdateHH2State:(BOOL)state
{
  stateCopy = state;
  v14 = *MEMORY[0x277D85DE8];
  v5 = _HPSLoggingFacility(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = stateCopy;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "Posting notification OptedToHH2State changed. OptedToHH2 %d", buf, 8u);
  }

  settingsInterface = [(HPAccessorySettingServiceMediator *)self settingsInterface];
  [settingsInterface setMigrationToHH2Complete:stateCopy];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{stateCopy, @"optedtohh2state"}];
  v11 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"com.apple.homepodsettings.optedtohh2state" object:0 userInfo:v9];
}

- (HPSAccessorySettingService)settingsInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsInterface);

  return WeakRetained;
}

@end