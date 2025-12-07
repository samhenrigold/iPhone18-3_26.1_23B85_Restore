@interface HMDUserDataModel
+ (id)hmbProperties;
@end

@implementation HMDUserDataModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_93868 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_93868, &__block_literal_global_93869);
  }

  v3 = hmbProperties__properties_93870;

  return v3;
}

void __33__HMDUserDataModel_hmbProperties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"settingsRootUUID";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = hmbProperties__properties_93870;
  hmbProperties__properties_93870 = v1;
}

@end