@interface HMDAssistantAccessControlModelV2
+ (id)hmbProperties;
@end

@implementation HMDAssistantAccessControlModelV2

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_82976 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_82976, &__block_literal_global_82977);
  }

  v3 = hmbProperties__properties_82978;

  return v3;
}

void __49__HMDAssistantAccessControlModelV2_hmbProperties__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v6[0] = @"accessoryUUIDs";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"siriEndpointAccessoryUUIDs";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"requiresAuthenticationForSecureRequests";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[2] = v2;
  v6[3] = @"activityNotificationsEnabledForPersonalRequests";
  v3 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = hmbProperties__properties_82978;
  hmbProperties__properties_82978 = v4;
}

@end