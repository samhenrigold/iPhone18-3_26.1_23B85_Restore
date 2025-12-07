@interface VUIUTSConfigurationProxyNotificationName
+ (NSString)configurationDidChange;
+ (NSString)utskDidChange;
@end

@implementation VUIUTSConfigurationProxyNotificationName

+ (NSString)configurationDidChange
{
  v2 = static VUIUTSConfigurationProxyNotificationName.configurationDidChange.getter(self, a2);

  return v2;
}

+ (NSString)utskDidChange
{
  v2 = static VUIUTSConfigurationProxyNotificationName.utskDidChange.getter(self, a2);

  return v2;
}

@end