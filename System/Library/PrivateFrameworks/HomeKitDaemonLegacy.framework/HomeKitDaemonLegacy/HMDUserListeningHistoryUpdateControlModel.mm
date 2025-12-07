@interface HMDUserListeningHistoryUpdateControlModel
+ (id)hmbProperties;
@end

@implementation HMDUserListeningHistoryUpdateControlModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_189065 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_189065, &__block_literal_global_189066);
  }

  v3 = hmbProperties__properties_189067;

  return v3;
}

void __58__HMDUserListeningHistoryUpdateControlModel_hmbProperties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"accessories";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = hmbProperties__properties_189067;
  hmbProperties__properties_189067 = v1;
}

@end