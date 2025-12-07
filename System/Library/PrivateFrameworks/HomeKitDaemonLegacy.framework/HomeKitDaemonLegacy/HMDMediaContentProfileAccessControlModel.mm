@interface HMDMediaContentProfileAccessControlModel
+ (id)hmbProperties;
@end

@implementation HMDMediaContentProfileAccessControlModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_41082 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_41082, &__block_literal_global_41083);
  }

  v3 = hmbProperties__properties_41084;

  return v3;
}

void __57__HMDMediaContentProfileAccessControlModel_hmbProperties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"accessories";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = hmbProperties__properties_41084;
  hmbProperties__properties_41084 = v1;
}

@end