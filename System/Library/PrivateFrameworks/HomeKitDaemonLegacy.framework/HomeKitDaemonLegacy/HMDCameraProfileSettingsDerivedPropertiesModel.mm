@interface HMDCameraProfileSettingsDerivedPropertiesModel
+ (id)hmbProperties;
- (int64_t)currentAccessModeChangeReason;
- (unint64_t)currentAccessMode;
- (void)setCurrentAccessMode:(unint64_t)mode;
- (void)setCurrentAccessModeChangeReason:(int64_t)reason;
@end

@implementation HMDCameraProfileSettingsDerivedPropertiesModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_145 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_145, &__block_literal_global_148_73924);
  }

  v3 = hmbProperties__properties_146;

  return v3;
}

void __63__HMDCameraProfileSettingsDerivedPropertiesModel_hmbProperties__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"currentAccessModeField";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[0] = v0;
  v5[1] = @"currentAccessModeChangeReasonField";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[1] = v1;
  v5[2] = @"currentAccessModeChangeDate";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = hmbProperties__properties_146;
  hmbProperties__properties_146 = v3;
}

- (int64_t)currentAccessModeChangeReason
{
  currentAccessModeChangeReasonField = [(HMDCameraProfileSettingsDerivedPropertiesModel *)self currentAccessModeChangeReasonField];
  unsignedIntegerValue = [currentAccessModeChangeReasonField unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setCurrentAccessModeChangeReason:(int64_t)reason
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:reason];
  [(HMDCameraProfileSettingsDerivedPropertiesModel *)self setCurrentAccessModeChangeReasonField:v4];
}

- (unint64_t)currentAccessMode
{
  currentAccessModeField = [(HMDCameraProfileSettingsDerivedPropertiesModel *)self currentAccessModeField];
  unsignedIntegerValue = [currentAccessModeField unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setCurrentAccessMode:(unint64_t)mode
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
  [(HMDCameraProfileSettingsDerivedPropertiesModel *)self setCurrentAccessModeField:v4];

  date = [MEMORY[0x277CBEAA8] date];
  [(HMDCameraProfileSettingsDerivedPropertiesModel *)self setCurrentAccessModeChangeDate:date];
}

@end