@interface GKAchievementThatAFriendHasInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKAchievementThatAFriendHasInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_34 != -1)
  {
    +[GKAchievementThatAFriendHasInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_33;

  return v3;
}

void __62__GKAchievementThatAFriendHasInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"friendPlayer";
  v4[1] = @"timestamp";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_33;
  secureCodedPropertyKeys_sSecureCodedKeys_33 = v2;
}

@end