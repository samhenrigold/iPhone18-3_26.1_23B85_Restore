@interface ATXActionResolution
- (ATXActionResolution)init;
- (ATXActionResolution)initWithSlotResolver:(id)resolver predictionContextBuilder:(id)builder;
- (id)actionPredictionsForActionKey:(id)key statistics:(id)statistics appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability scoreLogger:(id)logger andLimit:(int)limit forMagicalMoments:(BOOL)moments currentDate:(id)self0;
- (id)actionPredictionsForActionKey:(id)key statistics:(id)statistics appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability scoreLogger:(id)logger andLimit:(int)limit forMagicalMoments:(BOOL)moments predictionItemsToKeep:(void *)self0 currentDate:(id)self1;
- (id)statisticsForActionKey:(id)key;
- (id)statisticsForActionKey:(id)key context:(id)context;
@end

@implementation ATXActionResolution

- (ATXActionResolution)init
{
  v3 = objc_opt_new();
  v4 = +[ATXPredictionContextBuilder sharedInstance];
  v5 = [(ATXActionResolution *)self initWithSlotResolver:v3 predictionContextBuilder:v4];

  return v5;
}

- (ATXActionResolution)initWithSlotResolver:(id)resolver predictionContextBuilder:(id)builder
{
  resolverCopy = resolver;
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ATXActionResolution;
  v9 = [(ATXActionResolution *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotResolver, resolver);
    objc_storeStrong(&v10->_predictionContextBuilder, builder);
  }

  return v10;
}

- (id)statisticsForActionKey:(id)key
{
  keyCopy = key;
  slotResolver = self->_slotResolver;
  predictionContextForCurrentContext = [(ATXPredictionContextBuilderProtocol *)self->_predictionContextBuilder predictionContextForCurrentContext];
  v7 = [(ATXSlotResolution *)slotResolver statisticsForActionKey:keyCopy context:predictionContextForCurrentContext];

  return v7;
}

- (id)statisticsForActionKey:(id)key context:(id)context
{
  keyCopy = key;
  contextCopy = context;
  if (contextCopy)
  {
    v8 = [(ATXSlotResolution *)self->_slotResolver statisticsForActionKey:keyCopy context:contextCopy];
  }

  else
  {
    v9 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXActionResolution statisticsForActionKey:v9 context:?];
    }

    v8 = 0;
  }

  return v8;
}

- (id)actionPredictionsForActionKey:(id)key statistics:(id)statistics appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability scoreLogger:(id)logger andLimit:(int)limit forMagicalMoments:(BOOL)moments currentDate:(id)self0
{
  v10 = [(ATXActionResolution *)self actionPredictionsForActionKey:key statistics:statistics appActionPredictionItem:item appActionLogProbability:logger scoreLogger:*&limit andLimit:moments forMagicalMoments:probability predictionItemsToKeep:0 currentDate:date];

  return v10;
}

- (id)actionPredictionsForActionKey:(id)key statistics:(id)statistics appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability scoreLogger:(id)logger andLimit:(int)limit forMagicalMoments:(BOOL)moments predictionItemsToKeep:(void *)self0 currentDate:(id)self1
{
  v11 = *&limit;
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  statisticsCopy = statistics;
  v19 = [(ATXSlotResolution *)self->_slotResolver actionPredictionsForStatistics:statisticsCopy appActionPredictionItem:item appActionLogProbability:logger scoreLogger:date currentDate:probability];
  v20 = [ATXActionPredictionsHelpers processCandidateActionPredictions:v19 limit:v11 predictionItemsToKeep:keep];

  v21 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:keyCopy];
  first = [v21 first];
  second = [v21 second];
  v24 = second;
  if (first && second)
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v24 isEqualToString:v26];

    if (v27)
    {
      v28 = [MEMORY[0x277CEB3B8] isSystemAppForBundleId:first];
      v29 = [MEMORY[0x277CEB8F0] getUpcomingMediaForBundle:first isInternalApplication:v28];
      v30 = [ATXMediaActionPrediction updatePlayMediaActionPredictions:v20 withUpcomingMedia:v29 forActionKey:keyCopy appActionPredictionItem:item appActionLogProbability:statisticsCopy statistics:probability];

      v20 = v30;
    }

    v31 = [_ATXActionUtils filterContainersWithNilAction:v20];
  }

  else
  {
    v32 = __atxlog_handle_default(second);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412290;
      v35 = keyCopy;
      _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "Error parsing '%@'", &v34, 0xCu);
    }

    v31 = MEMORY[0x277CBEBF8];
  }

  return v31;
}

@end