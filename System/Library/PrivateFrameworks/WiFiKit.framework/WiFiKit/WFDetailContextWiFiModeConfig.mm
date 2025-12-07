@interface WFDetailContextWiFiModeConfig
- (WFDetailContextWiFiModeConfig)initWithConfigurable:(BOOL)configurable wifiMode:(int64_t)mode;
@end

@implementation WFDetailContextWiFiModeConfig

- (WFDetailContextWiFiModeConfig)initWithConfigurable:(BOOL)configurable wifiMode:(int64_t)mode
{
  configurableCopy = configurable;
  v9.receiver = self;
  v9.super_class = WFDetailContextWiFiModeConfig;
  v6 = [(WFDetailContextWiFiModeConfig *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(WFDetailContextWiFiModeConfig *)v6 setWifiModeConfigurable:configurableCopy];
    [(WFDetailContextWiFiModeConfig *)v7 setWifiMode:mode];
  }

  return v7;
}

@end