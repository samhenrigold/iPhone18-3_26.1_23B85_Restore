@interface NSString
@end

@implementation NSString

void __54__NSString_PLPowerUIChargingLimitedReason__priorities__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"TLC";
  v2[1] = @"optimizedBatteryCharging";
  v3[0] = &unk_282C0C990;
  v3[1] = &unk_282C0C9A8;
  v2[2] = @"cleanEnergyCharging";
  v2[3] = @"manualChargeLimit";
  v3[2] = &unk_282C0C9C0;
  v3[3] = &unk_282C0C9D8;
  v2[4] = @"optimizedChargeLimit";
  v2[5] = @"mobileChargeMode";
  v3[4] = &unk_282C0C9F0;
  v3[5] = &unk_282C0CA08;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = qword_2811F7078;
  qword_2811F7078 = v0;
}

void __65__NSString_PLPowerUIChargingLimitedReason__chargingIntervalTypes__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = @"TLC";
  v2[1] = @"optimizedBatteryCharging";
  v3[0] = &unk_282C0CA20;
  v3[1] = &unk_282C0CA38;
  v2[2] = @"cleanEnergyCharging";
  v2[3] = @"manualChargeLimit";
  v3[2] = &unk_282C0CA50;
  v3[3] = &unk_282C0CA68;
  v2[4] = @"optimizedChargeLimit";
  v2[5] = @"PowerD-BatteryGaugingMitigation";
  v3[4] = &unk_282C0CA80;
  v3[5] = &unk_282C0CA98;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = qword_2811F7088;
  qword_2811F7088 = v0;
}

@end