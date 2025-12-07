@interface HealthAppNotificationsLinkBuilder
- (id)URLForNotificationSettings;
@end

@implementation HealthAppNotificationsLinkBuilder

- (id)URLForNotificationSettings
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCACE0]);
  v3 = +[HAServicesDefines internalHealthAppURLScheme];
  [v2 setScheme:v3];

  v4 = +[HAServicesDefines healthProfileResourceSpecifier];
  [v2 setHost:v4];

  v10[0] = @"/";
  v5 = +[HAServicesDefines healthAppNotificationSettingsPath];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v7 = [v6 componentsJoinedByString:&stru_28635B3F0];
  [v2 setPath:v7];

  v8 = [v2 URL];

  return v8;
}

@end