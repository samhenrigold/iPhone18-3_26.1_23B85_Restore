@interface MTBridgeSettingsControllerFactory
+ (BOOL)_supportsPodcastsPinningSettingsV2;
+ (id)allocWithZone:(_NSZone *)zone;
@end

@implementation MTBridgeSettingsControllerFactory

+ (id)allocWithZone:(_NSZone *)zone
{
  [self _supportsPodcastsPinningSettingsV2];
  v4 = objc_opt_class();

  return [v4 allocWithZone:zone];
}

+ (BOOL)_supportsPodcastsPinningSettingsV2
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];
  v6 = [[NSUUID alloc] initWithUUIDString:@"D718E4BE-8067-432E-AF41-7342473499D5"];
  v7 = [firstObject supportsCapability:v6];

  return v7;
}

@end