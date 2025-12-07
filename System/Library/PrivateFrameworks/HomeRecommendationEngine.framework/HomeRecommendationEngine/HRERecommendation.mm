@interface HRERecommendation
+ (id)highestRankInRecommendations:(id)recommendations;
- (HMCharacteristic)splitCharacteristic;
- (HMRoom)room;
- (HMZone)zone;
- (HRERecommendation)initWithHome:(id)home uniqueIdentifier:(id)identifier;
- (HRETemplate)sourceTemplate;
- (NADescriptionBuilder)descriptionBuilder;
- (NSArray)roomsToFilterHomeObjects;
- (NSDictionary)analyticsData;
- (NSString)uniqueIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)splitUsingSplitCharacteristics:(id)characteristics;
- (id)splitUsingSplitStrategy:(unint64_t)strategy inHome:(id)home;
- (unint64_t)numberOfEnabledRecommendationsForTemplate;
- (void)setNumberOfEnabledRecommendationsForTemplate:(unint64_t)template;
- (void)setRankingConfidenceScore:(double)score rankVersion:(int64_t)version;
- (void)setRoom:(id)room;
- (void)setSourceTemplate:(id)template;
- (void)setSplitCharacteristic:(id)characteristic;
- (void)setZone:(id)zone;
@end

@implementation HRERecommendation

- (HRERecommendation)initWithHome:(id)home uniqueIdentifier:(id)identifier
{
  homeCopy = home;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HRERecommendation;
  v9 = [(HRERecommendation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_uniqueIdentifier, identifier);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    defaultAnalyticsData = v10->_defaultAnalyticsData;
    v10->_defaultAnalyticsData = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    userInfo = v10->_userInfo;
    v10->_userInfo = dictionary2;

    v10->_rankModifier = 0.0;
    [(HRERecommendation *)v10 setRankingConfidenceScore:-1 rankVersion:0.0];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HRERecommendation *)self home];
  v6 = [v4 initWithHome:home uniqueIdentifier:self->_uniqueIdentifier];

  [(HRERecommendation *)self rankingConfidenceScore];
  v6[4] = v7;
  userInfo = [(HRERecommendation *)self userInfo];
  v9 = [userInfo mutableCopy];
  v10 = v6[6];
  v6[6] = v9;

  identifierBuilder = [(HRERecommendation *)self identifierBuilder];
  v12 = [identifierBuilder copy];
  [v6 setIdentifierBuilder:v12];

  [(HRERecommendation *)self rankModifier];
  [v6 setRankModifier:?];
  [(HRERecommendation *)self sortingPriority];
  [v6 setSortingPriority:?];
  defaultAnalyticsData = [(HRERecommendation *)self defaultAnalyticsData];
  v14 = [defaultAnalyticsData mutableCopy];
  [v6 setDefaultAnalyticsData:v14];

  return v6;
}

- (NSString)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    composedString = uniqueIdentifier;
  }

  else
  {
    identifierBuilder = [(HRERecommendation *)self identifierBuilder];
    composedString = [identifierBuilder composedString];
  }

  return composedString;
}

- (NADescriptionBuilder)descriptionBuilder
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  uniqueIdentifier = [(HRERecommendation *)self uniqueIdentifier];
  [v3 appendString:uniqueIdentifier withName:@"uniqueIdentifier"];

  [(HRERecommendation *)self rankingConfidenceScore];
  v5 = [v3 appendDouble:@"rankingConfidenceScore" withName:2 decimalPrecision:?];

  return v3;
}

- (id)description
{
  descriptionBuilder = [(HRERecommendation *)self descriptionBuilder];
  build = [descriptionBuilder build];

  return build;
}

- (void)setRankingConfidenceScore:(double)score rankVersion:(int64_t)version
{
  self->_rankingConfidenceScore = score;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  defaultAnalyticsData = [(HRERecommendation *)self defaultAnalyticsData];
  [defaultAnalyticsData setObject:v7 forKeyedSubscript:*MEMORY[0x277D13558]];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:round(score)];
  defaultAnalyticsData2 = [(HRERecommendation *)self defaultAnalyticsData];
  [defaultAnalyticsData2 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13550]];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  defaultAnalyticsData3 = [(HRERecommendation *)self defaultAnalyticsData];
  [defaultAnalyticsData3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13560]];
}

- (NSDictionary)analyticsData
{
  defaultAnalyticsData = [(HRERecommendation *)self defaultAnalyticsData];
  v3 = [defaultAnalyticsData copy];

  return v3;
}

+ (id)highestRankInRecommendations:(id)recommendations
{
  v20 = *MEMORY[0x277D85DE8];
  recommendationsCopy = recommendations;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [recommendationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = -5.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(recommendationsCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [v9 rankingConfidenceScore];
        if (v10 > v7)
        {
          [v9 rankingConfidenceScore];
          v7 = v11;
        }
      }

      v5 = [recommendationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -5.0;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__HRERecommendation_highestRankInRecommendations___block_invoke;
  v14[3] = &__block_descriptor_40_e27_B16__0__HRERecommendation_8l;
  *&v14[4] = v7;
  v12 = [recommendationsCopy na_filter:v14];

  return v12;
}

- (HMRoom)room
{
  objc_opt_class();
  userInfo = [(HRERecommendation *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"room"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setRoom:(id)room
{
  roomCopy = room;
  userInfo = [(HRERecommendation *)self userInfo];
  [userInfo setObject:roomCopy forKeyedSubscript:@"room"];
}

- (HMZone)zone
{
  objc_opt_class();
  userInfo = [(HRERecommendation *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"zone"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setZone:(id)zone
{
  zoneCopy = zone;
  userInfo = [(HRERecommendation *)self userInfo];
  [userInfo setObject:zoneCopy forKeyedSubscript:@"zone"];
}

- (NSArray)roomsToFilterHomeObjects
{
  v8[1] = *MEMORY[0x277D85DE8];
  room = [(HRERecommendation *)self room];

  if (room)
  {
    room2 = [(HRERecommendation *)self room];
    v8[0] = room2;
    rooms = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    room2 = [(HRERecommendation *)self zone];
    rooms = [room2 rooms];
  }

  v6 = rooms;

  return v6;
}

- (HMCharacteristic)splitCharacteristic
{
  objc_opt_class();
  userInfo = [(HRERecommendation *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"splitCharacteristic"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setSplitCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  userInfo = [(HRERecommendation *)self userInfo];
  [userInfo setObject:characteristicCopy forKeyedSubscript:@"splitCharacteristic"];
}

- (HRETemplate)sourceTemplate
{
  objc_opt_class();
  userInfo = [(HRERecommendation *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"template"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setSourceTemplate:(id)template
{
  templateCopy = template;
  userInfo = [(HRERecommendation *)self userInfo];
  [userInfo setObject:templateCopy forKeyedSubscript:@"template"];
}

- (unint64_t)numberOfEnabledRecommendationsForTemplate
{
  objc_opt_class();
  userInfo = [(HRERecommendation *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"numberOfEnabledRecommendationsForTemplate"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)setNumberOfEnabledRecommendationsForTemplate:(unint64_t)template
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:template];
  userInfo = [(HRERecommendation *)self userInfo];
  [userInfo setObject:v5 forKeyedSubscript:@"numberOfEnabledRecommendationsForTemplate"];
}

- (id)splitUsingSplitStrategy:(unint64_t)strategy inHome:(id)home
{
  v21[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v8 = homeCopy;
  if (!strategy)
  {
    v17 = MEMORY[0x277CBEB98];
    v21[0] = self;
    zones = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v14 = [v17 setWithArray:zones];
LABEL_9:
    v4 = v14;
    goto LABEL_10;
  }

  if (strategy != 2)
  {
    if (strategy != 1)
    {
      goto LABEL_11;
    }

    v9 = MEMORY[0x277CBEB58];
    rooms = [homeCopy rooms];
    zones = [v9 setWithArray:rooms];

    roomForEntireHome = [v8 roomForEntireHome];

    if (roomForEntireHome)
    {
      roomForEntireHome2 = [v8 roomForEntireHome];
      [zones addObject:roomForEntireHome2];
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HRERecommendation_TemplateAdditions__splitUsingSplitStrategy_inHome___block_invoke;
    v20[3] = &unk_2797773B8;
    v20[4] = self;
    v14 = [zones na_map:v20];
    goto LABEL_9;
  }

  v15 = MEMORY[0x277CBEB98];
  zones = [homeCopy zones];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__HRERecommendation_TemplateAdditions__splitUsingSplitStrategy_inHome___block_invoke_2;
  v19[3] = &unk_2797773E0;
  v19[4] = self;
  v16 = [zones na_map:v19];
  v4 = [v15 setWithArray:v16];

LABEL_10:
LABEL_11:

  return v4;
}

id __71__HRERecommendation_TemplateAdditions__splitUsingSplitStrategy_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v4 setRoom:v3];
  v5 = [v4 identifierBuilder];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  [v5 setObject:v7 forKey:@"room"];

  return v4;
}

id __71__HRERecommendation_TemplateAdditions__splitUsingSplitStrategy_inHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v4 setZone:v3];
  v5 = [v4 identifierBuilder];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  [v5 setObject:v7 forKey:@"zone"];

  return v4;
}

- (id)splitUsingSplitCharacteristics:(id)characteristics
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HRERecommendation_TemplateAdditions__splitUsingSplitCharacteristics___block_invoke;
  v5[3] = &unk_279777408;
  v5[4] = self;
  v3 = [characteristics na_map:v5];

  return v3;
}

id __71__HRERecommendation_TemplateAdditions__splitUsingSplitCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v4 setSplitCharacteristic:v3];
  v5 = [v4 identifierBuilder];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  [v5 setObject:v7 forKey:@"splitCharacteristic"];

  return v4;
}

@end