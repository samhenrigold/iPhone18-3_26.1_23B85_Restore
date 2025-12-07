@interface CAFAccessoryTypes
+ (NSDictionary)accessoryNameByType;
+ (NSDictionary)accessoryTypeByName;
+ (NSSet)stateCaptureValues;
+ (id)accessoryNameFor:(id)for;
+ (id)accessoryNameForType:(id)type;
@end

@implementation CAFAccessoryTypes

+ (NSDictionary)accessoryTypeByName
{
  if (accessoryTypeByName_onceToken != -1)
  {
    +[CAFAccessoryTypes accessoryTypeByName];
  }

  v3 = accessoryTypeByName__accessoryTypeByName;

  return v3;
}

void __40__CAFAccessoryTypes_accessoryTypeByName__block_invoke()
{
  v3[34] = *MEMORY[0x277D85DE8];
  v2[0] = @"AudioSettings";
  v2[1] = @"AutomakerApps";
  v3[0] = @"0x0000000002000001";
  v3[1] = @"0x0000000001800001";
  v2[2] = @"AutomakerExteriorCamera";
  v2[3] = @"AutomakerInputStreams";
  v3[2] = @"0x0000000001300001";
  v3[3] = @"0x000000000C000001";
  v2[4] = @"AutomakerNotificationHistory";
  v2[5] = @"AutomakerNotifications";
  v3[4] = @"0x0000000001400001";
  v3[5] = @"0x0000000006000001";
  v2[6] = @"AutomakerOverlays";
  v2[7] = @"AutomakerRequestContent";
  v3[6] = @"0x000000000C000002";
  v3[7] = @"0x0000000001200001";
  v2[8] = @"AutomakerSettings";
  v2[9] = @"Charging";
  v3[8] = @"0x0000000005000001";
  v3[9] = @"0x0000000009000008";
  v2[10] = @"Climate";
  v2[11] = @"Closure";
  v3[10] = @"0x0000000001000001";
  v3[11] = @"0x000000000D000001";
  v2[12] = @"DriveState";
  v2[13] = @"DriverAssistance";
  v3[12] = @"0x0000000009000003";
  v3[13] = @"0x000000000E000001";
  v2[14] = @"ElectricEngine";
  v2[15] = @"EnvironmentalConditions";
  v3[14] = @"0x0000000009000004";
  v3[15] = @"0x0000000001600001";
  v2[16] = @"Fuel";
  v2[17] = @"HighVoltageBattery";
  v3[16] = @"0x0000000009000006";
  v3[17] = @"0x0000000009000007";
  v2[18] = @"Indicators";
  v2[19] = @"InternalCombustionEngine";
  v3[18] = @"0x0000000001900001";
  v3[19] = @"0x0000000009000005";
  v2[20] = @"Lighting";
  v2[21] = @"Media";
  v3[20] = @"0x0000000002100001";
  v3[21] = @"0x0000000003000001";
  v2[22] = @"Navigation";
  v2[23] = @"NowPlayingInformation";
  v3[22] = @"0x000000000E000002";
  v3[23] = @"0x000000000F000001";
  v2[24] = @"PairedDevices";
  v2[25] = @"Seat";
  v3[24] = @"0x000000000B000001";
  v3[25] = @"0x0000000001500001";
  v2[26] = @"StatusIndicators";
  v2[27] = @"TestingUseOnly";
  v3[26] = @"0x0000000005100001";
  v3[27] = @"0x00000000FD000001";
  v2[28] = @"Tire";
  v2[29] = @"TripComputer";
  v3[28] = @"0x000000000A000001";
  v3[29] = @"0x0000000004000001";
  v2[30] = @"UIControl";
  v2[31] = @"VehicleMotion";
  v3[30] = @"0x0000000001100001";
  v3[31] = @"0x0000000009000001";
  v2[32] = @"VehicleResources";
  v2[33] = @"VehicleUnits";
  v3[32] = @"0x0000000001200002";
  v3[33] = @"0x0000000001700001";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:34];
  v1 = accessoryTypeByName__accessoryTypeByName;
  accessoryTypeByName__accessoryTypeByName = v0;
}

+ (NSDictionary)accessoryNameByType
{
  if (accessoryNameByType_onceToken != -1)
  {
    +[CAFAccessoryTypes accessoryNameByType];
  }

  v3 = accessoryNameByType__accessoryNameByType;

  return v3;
}

void __40__CAFAccessoryTypes_accessoryNameByType__block_invoke()
{
  v3[34] = *MEMORY[0x277D85DE8];
  v2[0] = @"0x0000000002000001";
  v2[1] = @"0x0000000001800001";
  v3[0] = @"AudioSettings";
  v3[1] = @"AutomakerApps";
  v2[2] = @"0x0000000001300001";
  v2[3] = @"0x000000000C000001";
  v3[2] = @"AutomakerExteriorCamera";
  v3[3] = @"AutomakerInputStreams";
  v2[4] = @"0x0000000001400001";
  v2[5] = @"0x0000000006000001";
  v3[4] = @"AutomakerNotificationHistory";
  v3[5] = @"AutomakerNotifications";
  v2[6] = @"0x000000000C000002";
  v2[7] = @"0x0000000001200001";
  v3[6] = @"AutomakerOverlays";
  v3[7] = @"AutomakerRequestContent";
  v2[8] = @"0x0000000005000001";
  v2[9] = @"0x0000000009000008";
  v3[8] = @"AutomakerSettings";
  v3[9] = @"Charging";
  v2[10] = @"0x0000000001000001";
  v2[11] = @"0x000000000D000001";
  v3[10] = @"Climate";
  v3[11] = @"Closure";
  v2[12] = @"0x0000000009000003";
  v2[13] = @"0x000000000E000001";
  v3[12] = @"DriveState";
  v3[13] = @"DriverAssistance";
  v2[14] = @"0x0000000009000004";
  v2[15] = @"0x0000000001600001";
  v3[14] = @"ElectricEngine";
  v3[15] = @"EnvironmentalConditions";
  v2[16] = @"0x0000000009000006";
  v2[17] = @"0x0000000009000007";
  v3[16] = @"Fuel";
  v3[17] = @"HighVoltageBattery";
  v2[18] = @"0x0000000001900001";
  v2[19] = @"0x0000000009000005";
  v3[18] = @"Indicators";
  v3[19] = @"InternalCombustionEngine";
  v2[20] = @"0x0000000002100001";
  v2[21] = @"0x0000000003000001";
  v3[20] = @"Lighting";
  v3[21] = @"Media";
  v2[22] = @"0x000000000E000002";
  v2[23] = @"0x000000000F000001";
  v3[22] = @"Navigation";
  v3[23] = @"NowPlayingInformation";
  v2[24] = @"0x000000000B000001";
  v2[25] = @"0x0000000001500001";
  v3[24] = @"PairedDevices";
  v3[25] = @"Seat";
  v2[26] = @"0x0000000005100001";
  v2[27] = @"0x00000000FD000001";
  v3[26] = @"StatusIndicators";
  v3[27] = @"TestingUseOnly";
  v2[28] = @"0x000000000A000001";
  v2[29] = @"0x0000000004000001";
  v3[28] = @"Tire";
  v3[29] = @"TripComputer";
  v2[30] = @"0x0000000001100001";
  v2[31] = @"0x0000000009000001";
  v3[30] = @"UIControl";
  v3[31] = @"VehicleMotion";
  v2[32] = @"0x0000000001200002";
  v2[33] = @"0x0000000001700001";
  v3[32] = @"VehicleResources";
  v3[33] = @"VehicleUnits";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:34];
  v1 = accessoryNameByType__accessoryNameByType;
  accessoryNameByType__accessoryNameByType = v0;
}

+ (NSSet)stateCaptureValues
{
  if (stateCaptureValues_onceToken_1 != -1)
  {
    +[CAFAccessoryTypes stateCaptureValues];
  }

  v3 = stateCaptureValues__stateCaptureValues_1;

  return v3;
}

void __39__CAFAccessoryTypes_stateCaptureValues__block_invoke()
{
  v4[28] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"0x0000000002000001";
  v4[1] = @"0x0000000001300001";
  v4[2] = @"0x000000000C000001";
  v4[3] = @"0x0000000006000001";
  v4[4] = @"0x000000000C000002";
  v4[5] = @"0x0000000001200001";
  v4[6] = @"0x0000000009000008";
  v4[7] = @"0x0000000001000001";
  v4[8] = @"0x000000000D000001";
  v4[9] = @"0x0000000009000003";
  v4[10] = @"0x000000000E000001";
  v4[11] = @"0x0000000009000004";
  v4[12] = @"0x0000000001600001";
  v4[13] = @"0x0000000009000006";
  v4[14] = @"0x0000000009000007";
  v4[15] = @"0x0000000001900001";
  v4[16] = @"0x0000000009000005";
  v4[17] = @"0x0000000002100001";
  v4[18] = @"0x0000000003000001";
  v4[19] = @"0x000000000E000002";
  v4[20] = @"0x000000000F000001";
  v4[21] = @"0x0000000001500001";
  v4[22] = @"0x0000000005100001";
  v4[23] = @"0x000000000A000001";
  v4[24] = @"0x0000000004000001";
  v4[25] = @"0x0000000001100001";
  v4[26] = @"0x0000000009000001";
  v4[27] = @"0x0000000001700001";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:28];
  v2 = [v0 setWithArray:v1];
  v3 = stateCaptureValues__stateCaptureValues_1;
  stateCaptureValues__stateCaptureValues_1 = v2;
}

+ (id)accessoryNameForType:(id)type
{
  typeCopy = type;
  accessoryNameByType = [self accessoryNameByType];
  v6 = [accessoryNameByType objectForKeyedSubscript:typeCopy];

  if (!v6)
  {
    v6 = typeCopy;
  }

  return v6;
}

+ (id)accessoryNameFor:(id)for
{
  v4 = [self accessoryTypeFor:for];
  v5 = [self accessoryNameForType:v4];

  return v5;
}

@end