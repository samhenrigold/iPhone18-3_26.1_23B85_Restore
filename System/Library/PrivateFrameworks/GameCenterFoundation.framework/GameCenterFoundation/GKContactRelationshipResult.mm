@interface GKContactRelationshipResult
+ (id)secureCodedPropertyKeys;
@end

@implementation GKContactRelationshipResult

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_0 != -1)
  {
    +[GKContactRelationshipResult secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_0;

  return v3;
}

void __54__GKContactRelationshipResult_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"handle";
  v5[0] = objc_opt_class();
  v4[1] = @"relatedPlayer";
  v5[1] = objc_opt_class();
  v4[2] = @"relationship";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_0;
  secureCodedPropertyKeys_sSecureCodedKeys_0 = v2;
}

@end