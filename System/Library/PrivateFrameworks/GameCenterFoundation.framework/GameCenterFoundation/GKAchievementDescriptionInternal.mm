@interface GKAchievementDescriptionInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKAchievementDescriptionInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_7 != -1)
  {
    +[GKAchievementDescriptionInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_7;

  return v3;
}

void __59__GKAchievementDescriptionInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v9[2] = objc_opt_class();
  v9[3] = objc_opt_class();
  v9[4] = objc_opt_class();
  v9[5] = objc_opt_class();
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0, @"identifier", @"title", @"achievedDescription", @"unachievedDescription", @"maximumPoints", @"hidden", @"icons"}];
  v9[6] = v5;
  v8[7] = @"replayable";
  v9[7] = objc_opt_class();
  v8[8] = @"groupIdentifier";
  v9[8] = objc_opt_class();
  v8[9] = @"rarityPercent";
  v9[9] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:10];
  v7 = secureCodedPropertyKeys_sSecureCodedKeys_7;
  secureCodedPropertyKeys_sSecureCodedKeys_7 = v6;
}

@end