@interface DNDModeConfigurationGameControllerTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationGameControllerTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v3 = [a3 bs_safeNumberForKey:@"enabledSetting"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v5 = objc_alloc(MEMORY[0x277D059A8]);

  return [v5 initWithEnabledSetting:unsignedIntegerValue];
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"class";
  v4[1] = @"enabledSetting";
  v5[0] = @"DNDModeConfigurationGameControllerTrigger";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "enabledSetting")}];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end