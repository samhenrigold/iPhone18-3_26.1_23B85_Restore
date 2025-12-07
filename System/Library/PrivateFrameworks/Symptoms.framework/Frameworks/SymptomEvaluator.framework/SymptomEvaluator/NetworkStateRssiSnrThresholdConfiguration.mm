@interface NetworkStateRssiSnrThresholdConfiguration
- (NetworkStateRssiSnrThresholdConfiguration)initWithLowerSNRThreshold:(int)threshold upperSNRThreshold:(int)rThreshold lowerRSSIThreshold:(int)iThreshold upperRSSIThreshold:(int)sIThreshold;
@end

@implementation NetworkStateRssiSnrThresholdConfiguration

- (NetworkStateRssiSnrThresholdConfiguration)initWithLowerSNRThreshold:(int)threshold upperSNRThreshold:(int)rThreshold lowerRSSIThreshold:(int)iThreshold upperRSSIThreshold:(int)sIThreshold
{
  v6 = *&sIThreshold;
  v7 = *&iThreshold;
  v8 = *&rThreshold;
  v9 = *&threshold;
  v13.receiver = self;
  v13.super_class = NetworkStateRssiSnrThresholdConfiguration;
  v10 = [(NetworkStateRssiSnrThresholdConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NetworkStateRssiSnrThresholdConfiguration *)v10 setLowerSNRThreshold:v9];
    [(NetworkStateRssiSnrThresholdConfiguration *)v11 setUpperSNRThreshold:v8];
    [(NetworkStateRssiSnrThresholdConfiguration *)v11 setLowerRSSIThreshold:v7];
    [(NetworkStateRssiSnrThresholdConfiguration *)v11 setUpperRSSIThreshold:v6];
  }

  return v11;
}

@end