@interface HPSFeatureStatus
+ (BOOL)isLocalSettingsEnabled;
@end

@implementation HPSFeatureStatus

+ (BOOL)isLocalSettingsEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _os_feature_enabled_impl();
  v3 = _HPSLoggingFacility(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "+[HPSFeatureStatus isLocalSettingsEnabled]";
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v5, 0x12u);
  }

  return v2;
}

@end