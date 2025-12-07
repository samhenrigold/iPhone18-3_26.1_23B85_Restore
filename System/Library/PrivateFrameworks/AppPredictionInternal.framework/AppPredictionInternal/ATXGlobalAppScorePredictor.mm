@interface ATXGlobalAppScorePredictor
+ (id)sharedInstance;
- (ATXGlobalAppScorePredictor)init;
- (id)globalPopularitiesForBundleIds:(id)ids atTimeOfDayIndex:(int)index atDayOfWeekIndex:(int)weekIndex atLocationIndex:(int)locationIndex;
- (id)globalPopularityForBundleIdsGivenTimeDayAndLocation:(id)location context:(id)context;
@end

@implementation ATXGlobalAppScorePredictor

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_37 != -1)
  {
    +[ATXGlobalAppScorePredictor sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_45;

  return v3;
}

void __44__ATXGlobalAppScorePredictor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_45;
  sharedInstance__pasExprOnceResult_45 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXGlobalAppScorePredictor)init
{
  v8.receiver = self;
  v8.super_class = ATXGlobalAppScorePredictor;
  v2 = [(ATXGlobalAppScorePredictor *)&v8 init];
  if (v2)
  {
    v3 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalAppSignalsIndex"];
    index = v2->_index;
    v2->_index = v3;

    v5 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalAppSignalsHistogram"];
    signalsTrie = v2->_signalsTrie;
    v2->_signalsTrie = v5;
  }

  return v2;
}

- (id)globalPopularityForBundleIdsGivenTimeDayAndLocation:(id)location context:(id)context
{
  contextCopy = context;
  locationCopy = location;
  locationMotionContext = [contextCopy locationMotionContext];
  currentLOI = [locationMotionContext currentLOI];

  if (currentLOI)
  {
    type = [currentLOI type];
  }

  else
  {
    type = -1;
  }

  timeContext = [contextCopy timeContext];
  date = [timeContext date];

  v13 = [(ATXGlobalAppScorePredictor *)self globalPopularitiesForBundleIds:locationCopy atTimeOfDayIndex:[ATXGlobalAppScoresUtil timeOfDayIndexFromDate:?], [ATXGlobalAppScoresUtil dayOfWeekIndexFromDate:date], [ATXGlobalAppScoresUtil locationTypeIndexFromRTLocationOfInterestType:type]];

  return v13;
}

- (id)globalPopularitiesForBundleIds:(id)ids atTimeOfDayIndex:(int)index atDayOfWeekIndex:(int)weekIndex atLocationIndex:(int)locationIndex
{
  v6 = *&weekIndex;
  v7 = *&index;
  v28 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  if (self->_signalsTrie)
  {
    v10 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = idsCopy;
    obj = idsCopy;
    v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [ATXGlobalAppScoresUtil getContextKeyForTimeOfDayIndex:v7 dayOfWeekIndex:v6 locationIndex:locationIndex bundleIdIndex:[(_PASCFBurstTrie *)self->_index payloadForString:v15]];
          v17 = [MEMORY[0x277CCABB0] numberWithDouble:{-[_PASCFBurstTrie payloadForString:](self->_signalsTrie, "payloadForString:", v16) / 100000.0}];
          [v10 setObject:v17 forKeyedSubscript:v15];
        }

        v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v18 = [ATXGlobalAppScoresUtil normalizeValues:v10];

    idsCopy = v20;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end