@interface GKInviteAcceptResponse
+ (id)secureCodedPropertyKeys;
@end

@implementation GKInviteAcceptResponse

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_416 != -1)
  {
    +[GKInviteAcceptResponse secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_415;

  return v3;
}

void __49__GKInviteAcceptResponse_secureCodedPropertyKeys__block_invoke()
{
  v4[5] = *MEMORY[0x277D85DE8];
  v3[0] = @"responsePlist";
  v0 = +[GKServiceInterface plistClasses];
  v4[0] = v0;
  v3[1] = @"sessionID";
  v4[1] = objc_opt_class();
  v3[2] = @"matchID";
  v4[2] = objc_opt_class();
  v3[3] = @"selfPseudonym";
  v4[3] = objc_opt_class();
  v3[4] = @"transportVersionToUse";
  v4[4] = objc_opt_class();
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = secureCodedPropertyKeys_sSecureCodedKeys_415;
  secureCodedPropertyKeys_sSecureCodedKeys_415 = v1;
}

@end