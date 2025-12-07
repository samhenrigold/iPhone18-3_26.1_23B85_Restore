@interface HMBCloudZoneShareParticipantModel
+ (id)hmbProperties;
@end

@implementation HMBCloudZoneShareParticipantModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_3258 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_3258, &__block_literal_global_3259);
  }

  v3 = hmbProperties__properties_3260;

  return v3;
}

void __50__HMBCloudZoneShareParticipantModel_hmbProperties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"participant";
  v0 = [HMBModelField fieldWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = hmbProperties__properties_3260;
  hmbProperties__properties_3260 = v1;
}

@end