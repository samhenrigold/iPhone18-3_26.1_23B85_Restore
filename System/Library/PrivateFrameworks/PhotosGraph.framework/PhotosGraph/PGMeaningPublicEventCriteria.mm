@interface PGMeaningPublicEventCriteria
+ (id)_publicEventCategoryForPublicEventCategoryName:(id)name;
+ (id)criteriaWithDictionary:(id)dictionary;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache;
- (NSString)description;
@end

@implementation PGMeaningPublicEventCriteria

+ (id)_publicEventCategoryForPublicEventCategoryName:(id)name
{
  v25[13] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v24[0] = @"musicConcerts";
  musicConcerts = [MEMORY[0x277D27780] musicConcerts];
  v25[0] = musicConcerts;
  v24[1] = @"nightLife";
  nightLife = [MEMORY[0x277D27780] nightLife];
  v25[1] = nightLife;
  v24[2] = @"theater";
  theater = [MEMORY[0x277D27780] theater];
  v25[2] = theater;
  v24[3] = @"dance";
  dance = [MEMORY[0x277D27780] dance];
  v25[3] = dance;
  v24[4] = @"festivalsAndFairs";
  festivalsAndFairs = [MEMORY[0x277D27780] festivalsAndFairs];
  v25[4] = festivalsAndFairs;
  v24[5] = @"artsAndMuseums";
  artsAndMuseums = [MEMORY[0x277D27780] artsAndMuseums];
  v25[5] = artsAndMuseums;
  v24[6] = @"sports";
  sports = [MEMORY[0x277D27780] sports];
  v25[6] = sports;
  v24[7] = @"businessAndTechnology";
  businessAndTechnology = [MEMORY[0x277D27780] businessAndTechnology];
  v25[7] = businessAndTechnology;
  v24[8] = @"community";
  community = [MEMORY[0x277D27780] community];
  v25[8] = community;
  v24[9] = @"educational";
  educational = [MEMORY[0x277D27780] educational];
  v25[9] = educational;
  v24[10] = @"familyEvents";
  familyEvents = [MEMORY[0x277D27780] familyEvents];
  v25[10] = familyEvents;
  v24[11] = @"tours";
  tours = [MEMORY[0x277D27780] tours];
  v25[11] = tours;
  v24[12] = @"appleEvents";
  appleEvents = [MEMORY[0x277D27780] appleEvents];
  v25[12] = appleEvents;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:13];

  v13 = [v12 objectForKeyedSubscript:nameCopy];
  if (!v13)
  {
    v14 = +[PGLogging sharedLogging];
    loggingConnection = [v14 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = nameCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid public event category name %@", buf, 0xCu);
    }
  }

  return v13;
}

+ (id)criteriaWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"publicEventCategory"];

  if (v6)
  {
    [v5 setPublicEventCategoryNameString:v6];
    v7 = [self _publicEventCategoryForPublicEventCategoryName:v6];
    [v5 setPublicEventCategory:v7];
  }

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  publicEventCategory = [(PGMeaningPublicEventCriteria *)self publicEventCategory];
  v4 = [v2 stringWithFormat:@"publicEventCategory: %@\n", publicEventCategory];

  return v4;
}

- (BOOL)isValid
{
  v10 = *MEMORY[0x277D85DE8];
  publicEventCategory = [(PGMeaningPublicEventCriteria *)self publicEventCategory];

  if (!publicEventCategory)
  {
    v4 = +[PGLogging sharedLogging];
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      publicEventCategoryNameString = [(PGMeaningPublicEventCriteria *)self publicEventCategoryNameString];
      v8 = 138412290;
      v9 = publicEventCategoryNameString;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid public event category name %@", &v8, 0xCu);
    }
  }

  return publicEventCategory != 0;
}

- (BOOL)passesForMomentNode:(id)node momentNodeCache:(id)cache
{
  nodeCopy = node;
  cacheCopy = cache;
  publicEventCategory = [(PGMeaningPublicEventCriteria *)self publicEventCategory];

  if (publicEventCategory)
  {
    publicEventCategory2 = [(PGMeaningPublicEventCriteria *)self publicEventCategory];
    graph = [nodeCopy graph];
    v11 = [PGGraphPublicEventCategoryNodeCollection publicEventCategoryNodesForCategory:publicEventCategory2 inGraph:graph];

    if ([v11 count])
    {
      publicEventCategoryNodes = [cacheCopy publicEventCategoryNodes];
      v13 = [publicEventCategoryNodes intersectsCollection:v11];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end