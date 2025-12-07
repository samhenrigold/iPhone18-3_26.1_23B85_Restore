@interface MODefaultSettingsManagerDelegate
- (void)onStateChange:(BOOL)change forSetting:(unint64_t)setting;
@end

@implementation MODefaultSettingsManagerDelegate

- (void)onStateChange:(BOOL)change forSetting:(unint64_t)setting
{
  changeCopy = change;
  v13 = *MEMORY[0x277D85DE8];
  v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:changeCopy];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:setting];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_25A200000, v6, OS_LOG_TYPE_DEFAULT, "MODefaultSettingsManagerDelegate onStateChange:%@ forSetting:%@", &v9, 0x16u);
  }
}

@end