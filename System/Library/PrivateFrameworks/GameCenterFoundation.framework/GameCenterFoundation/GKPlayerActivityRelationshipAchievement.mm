@interface GKPlayerActivityRelationshipAchievement
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityRelationshipAchievement)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivityRelationshipAchievement

+ (id)secureCodedPropertyKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__GKPlayerActivityRelationshipAchievement_secureCodedPropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (secureCodedPropertyKeys_onceToken_499 != -1)
  {
    dispatch_once(&secureCodedPropertyKeys_onceToken_499, block);
  }

  v2 = secureCodedPropertyKeys_sSecureCodedKeys_498;

  return v2;
}

void __66__GKPlayerActivityRelationshipAchievement_secureCodedPropertyKeys__block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___GKPlayerActivityRelationshipAchievement;
  v1 = objc_msgSendSuper2(&v5, sel_secureCodedPropertyKeys);
  v2 = [v1 mutableCopy];

  v6[0] = @"achDescription";
  v7[0] = objc_opt_class();
  v6[1] = @"timeStamp";
  v7[1] = objc_opt_class();
  v6[2] = @"progress";
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:v3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_498;
  secureCodedPropertyKeys_sSecureCodedKeys_498 = v2;
}

- (GKPlayerActivityRelationshipAchievement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = GKPlayerActivityRelationshipAchievement;
  v5 = [(GKPlayerActivityRelationshipBase *)&v14 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"description"];
    [(GKPlayerActivityRelationshipAchievement *)v5 setAchDescription:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v7 doubleValue];
    v10 = [v8 initWithTimeIntervalSince1970:v9 / 1000.0];
    [(GKPlayerActivityRelationshipAchievement *)v5 setTimeStamp:v10];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"progress"];
    if (v11)
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"progress"];
      -[GKPlayerActivityRelationshipAchievement setProgress:](v5, "setProgress:", [v12 integerValue]);
    }

    else
    {
      [(GKPlayerActivityRelationshipAchievement *)v5 setProgress:100];
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = GKPlayerActivityRelationshipAchievement;
  v4 = [(GKPlayerActivityRelationshipBase *)&v10 description];
  achDescription = [(GKPlayerActivityRelationshipAchievement *)self achDescription];
  timeStamp = [(GKPlayerActivityRelationshipAchievement *)self timeStamp];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKPlayerActivityRelationshipAchievement progress](self, "progress")}];
  v8 = [v3 stringWithFormat:@"%@ \ndescription: %@, \ntimeStamp: %@, \nprogress: %@", v4, achDescription, timeStamp, v7];

  return v8;
}

@end