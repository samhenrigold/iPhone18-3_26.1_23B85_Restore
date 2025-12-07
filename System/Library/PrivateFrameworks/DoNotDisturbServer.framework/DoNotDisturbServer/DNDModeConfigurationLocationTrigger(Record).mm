@interface DNDModeConfigurationLocationTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationLocationTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v3 = a3;
  v4 = [v3 bs_safeNumberForKey:@"latitude"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 bs_safeNumberForKey:@"longitude"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v3 bs_safeNumberForKey:@"radius"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 bs_safeStringForKey:@"identifier"];
  v14 = [v3 bs_safeNumberForKey:@"referenceFrame"];
  intValue = [v14 intValue];

  v16 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v13 radius:v6 identifier:{v9, v12}];
  [v16 setGeoReferenceFrame:intValue];
  v17 = [v3 bs_safeStringForKey:@"detail"];
  v18 = [v3 bs_safeNumberForKey:@"enabledSetting"];

  unsignedIntegerValue = [v18 unsignedIntegerValue];
  v20 = [objc_alloc(MEMORY[0x277D059B0]) initWithRegion:v16 detail:v17 enabledSetting:unsignedIntegerValue];

  return v20;
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v24[7] = *MEMORY[0x277D85DE8];
  v24[0] = @"DNDModeConfigurationLocationTrigger";
  v23[0] = @"class";
  v23[1] = @"latitude";
  v2 = MEMORY[0x277CCABB0];
  region = [self region];
  [region center];
  v21 = [v2 numberWithDouble:?];
  v24[1] = v21;
  v23[2] = @"longitude";
  v3 = MEMORY[0x277CCABB0];
  region2 = [self region];
  [region2 center];
  v19 = [v3 numberWithDouble:v4];
  v24[2] = v19;
  v23[3] = @"radius";
  v5 = MEMORY[0x277CCABB0];
  region3 = [self region];
  [region3 radius];
  v7 = [v5 numberWithDouble:?];
  v24[3] = v7;
  v23[4] = @"referenceFrame";
  v8 = MEMORY[0x277CCABB0];
  region4 = [self region];
  v10 = [v8 numberWithUnsignedInt:{objc_msgSend(region4, "geoReferenceFrame")}];
  v24[4] = v10;
  v23[5] = @"identifier";
  region5 = [self region];
  identifier = [region5 identifier];
  v24[5] = identifier;
  v23[6] = @"enabledSetting";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "enabledSetting")}];
  v24[6] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];
  v15 = [v14 mutableCopy];

  detail = [self detail];

  if (detail)
  {
    detail2 = [self detail];
    [v15 setObject:detail2 forKeyedSubscript:@"detail"];
  }

  return v15;
}

@end