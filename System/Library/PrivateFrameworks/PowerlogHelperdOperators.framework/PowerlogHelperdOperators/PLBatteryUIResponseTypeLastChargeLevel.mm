@interface PLBatteryUIResponseTypeLastChargeLevel
- (void)configure:(id)configure;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeLastChargeLevel

- (void)configure:(id)configure
{
  v4 = [MEMORY[0x277D3F180] objectForKey:@"lastChargingValue" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [(PLBatteryUIResponseTypeLastChargeLevel *)self setLastChargeValue:v4];

  v5 = [MEMORY[0x277D3F180] objectForKey:@"lastChargingTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [(PLBatteryUIResponseTypeLastChargeLevel *)self setLastChargeTimestamp:v5];
}

- (void)run
{
  v10 = *MEMORY[0x277D85DE8];
  lastChargeTimestamp = [self lastChargeTimestamp];
  lastChargeValue = [self lastChargeValue];
  v6 = 138412546;
  v7 = lastChargeTimestamp;
  v8 = 2112;
  v9 = lastChargeValue;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Missing last charge info: %@ - %@%%", &v6, 0x16u);
}

@end