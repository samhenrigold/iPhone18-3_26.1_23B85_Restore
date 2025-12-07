@interface HMBCloudStateModel
+ (id)hmbProperties;
@end

@implementation HMBCloudStateModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_6403 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_6403, &__block_literal_global_6404);
  }

  v3 = hmbProperties__properties_6405;

  return v3;
}

void __35__HMBCloudStateModel_hmbProperties__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"serverChangeToken";
  v0 = [HMBModelField fieldWithClass:objc_opt_class()];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = hmbProperties__properties_6405;
  hmbProperties__properties_6405 = v1;
}

@end