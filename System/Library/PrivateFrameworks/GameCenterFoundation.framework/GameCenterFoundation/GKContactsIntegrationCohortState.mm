@interface GKContactsIntegrationCohortState
+ (id)secureCodedPropertyKeys;
- (id)initCohortNoneCount:(unint64_t)count cohortNotSetCount:(unint64_t)setCount cohortOptedInCount:(unint64_t)inCount cohortOptedOutCount:(unint64_t)outCount cohortUnknownCount:(unint64_t)unknownCount percentSyncedAtleastOnce:(double)once;
@end

@implementation GKContactsIntegrationCohortState

- (id)initCohortNoneCount:(unint64_t)count cohortNotSetCount:(unint64_t)setCount cohortOptedInCount:(unint64_t)inCount cohortOptedOutCount:(unint64_t)outCount cohortUnknownCount:(unint64_t)unknownCount percentSyncedAtleastOnce:(double)once
{
  v15.receiver = self;
  v15.super_class = GKContactsIntegrationCohortState;
  result = [(GKContactsIntegrationCohortState *)&v15 init];
  if (result)
  {
    *(result + 1) = count;
    *(result + 2) = setCount;
    *(result + 3) = inCount;
    *(result + 4) = outCount;
    *(result + 5) = unknownCount;
    *(result + 6) = once;
  }

  return result;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_25 != -1)
  {
    +[GKContactsIntegrationCohortState secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_24;

  return v3;
}

void __59__GKContactsIntegrationCohortState_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"cohortNoneCount";
  v5[0] = objc_opt_class();
  v4[1] = @"cohortNotSetCount";
  v5[1] = objc_opt_class();
  v4[2] = @"cohortOptedInCount";
  v5[2] = objc_opt_class();
  v4[3] = @"cohortOptedOutCount";
  v5[3] = objc_opt_class();
  v4[4] = @"cohortUnknownCount";
  v5[4] = objc_opt_class();
  v4[5] = @"percentSyncedAtleastOnce";
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:6];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_24;
  secureCodedPropertyKeys_sSecureCodedKeys_24 = v2;
}

@end