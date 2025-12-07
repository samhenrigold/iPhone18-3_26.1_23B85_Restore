@interface HDAudioAnalyticsNoiseSettingsResult
- (HDAudioAnalyticsNoiseSettingsResult)initWithWatchPairedWithNoiseApp:(BOOL)app hasNoiseEnabled:(BOOL)enabled hasNoiseNotificationsEnabled:(BOOL)notificationsEnabled noiseThreshold:(id)threshold;
@end

@implementation HDAudioAnalyticsNoiseSettingsResult

- (HDAudioAnalyticsNoiseSettingsResult)initWithWatchPairedWithNoiseApp:(BOOL)app hasNoiseEnabled:(BOOL)enabled hasNoiseNotificationsEnabled:(BOOL)notificationsEnabled noiseThreshold:(id)threshold
{
  notificationsEnabledCopy = notificationsEnabled;
  enabledCopy = enabled;
  appCopy = app;
  thresholdCopy = threshold;
  v17.receiver = self;
  v17.super_class = HDAudioAnalyticsNoiseSettingsResult;
  v11 = [(HDAudioAnalyticsNoiseSettingsResult *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(HDAudioAnalyticsNoiseSettingsResult *)v11 setHasWatchPairedWithNoiseApp:appCopy];
    [(HDAudioAnalyticsNoiseSettingsResult *)v12 setHasNoiseEnabled:enabledCopy];
    [(HDAudioAnalyticsNoiseSettingsResult *)v12 setHasNoiseNotificationsEnabled:notificationsEnabledCopy];
    if (notificationsEnabledCopy)
    {
      v13 = thresholdCopy;
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:0];
    }

    noiseThreshold = v12->_noiseThreshold;
    v12->_noiseThreshold = v13;

    v15 = v12;
  }

  return v12;
}

@end