@interface ULContextLayerUtilities
+ (id)_getContextLayerEnumToStringMapping;
+ (id)contextLayerStringTypeFromEnum:(unint64_t)enum;
+ (id)getDefaultContextLayerForService:(id)service;
+ (unint64_t)contextLayerEnumFromStringType:(id)type;
@end

@implementation ULContextLayerUtilities

+ (id)getDefaultContextLayerForService:(id)service
{
  serviceCopy = service;
  v4 = @"ULContextLayerTypeUnknown";
  if (getDefaultContextLayerForService__onceToken != -1)
  {
    +[ULContextLayerUtilities getDefaultContextLayerForService:];
  }

  v5 = [getDefaultContextLayerForService__serviceToDefaultContextLayerMap objectForKeyedSubscript:serviceCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;

    v4 = v7;
  }

  return v4;
}

void __60__ULContextLayerUtilities_getDefaultContextLayerForService___block_invoke()
{
  v23[20] = *MEMORY[0x277D85DE8];
  v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000017"];
  v22[0] = v21;
  v23[0] = @"ULContextLayerTypeFocusMode";
  v20 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
  v22[1] = v20;
  v23[1] = @"ULContextLayerTypeIRMediaRemote";
  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000002"];
  v22[2] = v19;
  v23[2] = @"ULContextLayerTypeIRMusic";
  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000003"];
  v22[3] = v18;
  v23[3] = @"ULContextLayerTypeIRTelephonyUtilities";
  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000004"];
  v22[4] = v17;
  v23[4] = @"ULContextLayerTypeIRControlCenter";
  v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000005"];
  v22[5] = v16;
  v23[5] = @"ULContextLayerTypeIRRoutePickerView";
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000006"];
  v22[6] = v15;
  v23[6] = @"ULContextLayerTypeIRTVRemote";
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000007"];
  v22[7] = v14;
  v23[7] = @"ULContextLayerTypeIRNeighborhoodActivity";
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000008"];
  v22[8] = v13;
  v23[8] = @"ULContextLayerTypeIRMedia";
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000009"];
  v22[9] = v12;
  v23[9] = @"ULContextLayerTypeIRAppleTVControl";
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000025"];
  v22[10] = v0;
  v23[10] = @"ULContextLayerTypeIRHome";
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000022"];
  v22[11] = v1;
  v23[11] = @"ULContextLayerTypeIRRoverApp";
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000018"];
  v22[12] = v2;
  v23[12] = @"ULContextLayerTypeLslApp";
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000019"];
  v22[13] = v3;
  v23[13] = @"ULContextLayerTypeDataCollectionApp";
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000020"];
  v22[14] = v4;
  v23[14] = @"ULContextLayerTypeHomeSlamApp";
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000021"];
  v22[15] = v5;
  v23[15] = @"ULContextLayerTypeMiLoPlaceholderApp";
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000011"];
  v22[16] = v6;
  v23[16] = @"ULContextLayerTypeMiLoHostTests";
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000010"];
  v22[17] = v7;
  v23[17] = @"ULContextLayerTypeIRHostTestsMedia";
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000023"];
  v22[18] = v8;
  v23[18] = @"ULContextLayerTypeIRHostTestsAppleTVControl";
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000024"];
  v22[19] = v9;
  v23[19] = @"ULContextLayerTypeIRHostTestsHome";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:20];
  v11 = getDefaultContextLayerForService__serviceToDefaultContextLayerMap;
  getDefaultContextLayerForService__serviceToDefaultContextLayerMap = v10;
}

+ (unint64_t)contextLayerEnumFromStringType:(id)type
{
  typeCopy = type;
  _getContextLayerEnumToStringMapping = [self _getContextLayerEnumToStringMapping];
  v6 = [_getContextLayerEnumToStringMapping keyForObject:typeCopy];

  if (v6)
  {
    unsignedIntValue = [v6 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

+ (id)contextLayerStringTypeFromEnum:(unint64_t)enum
{
  v5 = @"ULContextLayerTypeUnknown";
  _getContextLayerEnumToStringMapping = [self _getContextLayerEnumToStringMapping];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:enum];
  v8 = [_getContextLayerEnumToStringMapping objectForKey:v7];

  if (v8)
  {
    v9 = v8;

    v5 = v9;
  }

  return v5;
}

+ (id)_getContextLayerEnumToStringMapping
{
  if (_getContextLayerEnumToStringMapping_onceToken != -1)
  {
    +[ULContextLayerUtilities _getContextLayerEnumToStringMapping];
  }

  v3 = _getContextLayerEnumToStringMapping_contextLayerEnumToStringMap;

  return v3;
}

uint64_t __62__ULContextLayerUtilities__getContextLayerEnumToStringMapping__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D28848]);
  v1 = _getContextLayerEnumToStringMapping_contextLayerEnumToStringMap;
  _getContextLayerEnumToStringMapping_contextLayerEnumToStringMap = v0;

  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeUnknown" forKey:&unk_286A52870];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeWiFi" forKey:&unk_286A52888];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeRoomClass" forKey:&unk_286A528A0];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeFocusMode" forKey:&unk_286A528B8];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRMediaRemote" forKey:&unk_286A528D0];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRMusic" forKey:&unk_286A528E8];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRTelephonyUtilities" forKey:&unk_286A52900];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRControlCenter" forKey:&unk_286A52918];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRRoutePickerView" forKey:&unk_286A52930];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRTVRemote" forKey:&unk_286A52948];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRNeighborhoodActivity" forKey:&unk_286A52960];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRMedia" forKey:&unk_286A52978];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRAppleTVControl" forKey:&unk_286A52990];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRHome" forKey:&unk_286A529A8];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRRoverApp" forKey:&unk_286A529C0];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeLslApp" forKey:&unk_286A529D8];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeDataCollectionApp" forKey:&unk_286A529F0];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeHomeSlamApp" forKey:&unk_286A52A08];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeMiLoPlaceholderApp" forKey:&unk_286A52A20];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeMiLoHostTests" forKey:&unk_286A52A38];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRHostTestsMedia" forKey:&unk_286A52A50];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRHostTestsAppleTVControl" forKey:&unk_286A52A68];
  [_getContextLayerEnumToStringMapping_contextLayerEnumToStringMap setObject:@"ULContextLayerTypeIRHostTestsHome" forKey:&unk_286A52A80];
  v2 = _getContextLayerEnumToStringMapping_contextLayerEnumToStringMap;

  return [v2 setObject:@"ULContextLayerTypeMiLoDebug" forKey:&unk_286A52A98];
}

@end