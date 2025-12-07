@interface GKFriendRecommendationInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKFriendRecommendationInternal

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__GKFriendRecommendationInternal_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_654 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_654, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_653;

  return v2;
}

void __57__GKFriendRecommendationInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___GKFriendRecommendationInternal;
  v1 = objc_msgSendSuper2(&v5, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v6[0] = @"reason";
  v7[0] = objc_opt_class();
  v6[1] = @"reason2";
  v7[1] = objc_opt_class();
  v6[2] = @"rid";
  v7[2] = objc_opt_class();
  v6[3] = @"source";
  v7[3] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:4];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_653;
  secureCodedPropertyKeys_sSecureCodedKeys_653 = v2;
}

@end