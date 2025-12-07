@interface FCReadonlyPersonalizationAggregateStore
- (FCReadonlyPersonalizationAggregateStore)init;
- (FCReadonlyPersonalizationAggregateStore)initWithGenerator:(id)generator;
- (NSDictionary)allAggregates;
- (id)aggregateForFeatureKey:(id)key;
- (id)aggregatesForFeatureKeys:(id)keys;
- (id)aggregatesForFeatures:(id)features;
- (id)baselineAggregateWithConfigurableValues:(id)values;
- (void)enumerateAggregatesUsingBlock:(id)block;
- (void)modifyLocalAggregatesForFeatureKeys:(id)keys withAction:(unint64_t)action actionCount:(unint64_t)count defaultClicks:(double)clicks defaultImpressions:(double)impressions impressionBias:(double)bias configurableValues:(id)values;
- (void)prepareAggregatesForUseWithCompletionHandler:(id)handler;
- (void)processTodayPersonalizationUpdates:(id)updates withConfigurableValues:(id)values;
- (void)updateFeatures:(id)features withAction:(unint64_t)action displayRank:(int64_t)rank groupRank:(int64_t)groupRank individually:(BOOL)individually configurableValues:(id)values;
@end

@implementation FCReadonlyPersonalizationAggregateStore

- (FCReadonlyPersonalizationAggregateStore)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCReadonlyPersonalizationAggregateStore init]";
    v10 = 2080;
    v11 = "FCPersonalizationAggregate.m";
    v12 = 1024;
    v13 = 116;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCReadonlyPersonalizationAggregateStore init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCReadonlyPersonalizationAggregateStore)initWithGenerator:(id)generator
{
  v26 = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  if (!generatorCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "generator"];
    *buf = 136315906;
    v19 = "[FCReadonlyPersonalizationAggregateStore initWithGenerator:]";
    v20 = 2080;
    v21 = "FCPersonalizationAggregate.m";
    v22 = 1024;
    v23 = 121;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v17.receiver = self;
  v17.super_class = FCReadonlyPersonalizationAggregateStore;
  v6 = [(FCReadonlyPersonalizationAggregateStore *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_generator, generator);
    v8 = [FCDerivedPersonalizationData alloc];
    v9 = [(FCDerivedPersonalizationData *)v8 initWithAggregates:MEMORY[0x1E695E0F8] scoringType:0 decayRate:0.0];
    derivedPersonalizationData = v7->_derivedPersonalizationData;
    v7->_derivedPersonalizationData = v9;

    v11 = [[FCOnce alloc] initWithOptions:1];
    prepareOnce = v7->_prepareOnce;
    v7->_prepareOnce = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    overrideAggregatesByFeatureKey = v7->_overrideAggregatesByFeatureKey;
    v7->_overrideAggregatesByFeatureKey = dictionary;
  }

  return v7;
}

- (void)modifyLocalAggregatesForFeatureKeys:(id)keys withAction:(unint64_t)action actionCount:(unint64_t)count defaultClicks:(double)clicks defaultImpressions:(double)impressions impressionBias:(double)bias configurableValues:(id)values
{
  v37 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  valuesCopy = values;
  v18 = objc_alloc_init(MEMORY[0x1E69B6EF0]);
  [v18 setDefaultClicks:clicks];
  [v18 setDefaultImpressions:impressions];
  [v18 setImpressionBias:bias];
  date = [MEMORY[0x1E695DF00] date];
  [v18 setTimestamp:{objc_msgSend(date, "fc_millisecondTimeIntervalSince1970")}];

  [v18 addAction:action count:count];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = keysCopy;
  v20 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      v23 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v32 + 1) + 8 * v23);
        overrideAggregatesByFeatureKey = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
        v26 = [overrideAggregatesByFeatureKey objectForKeyedSubscript:v24];

        if (!v26)
        {
          v26 = objc_alloc_init(MEMORY[0x1E69B6EE8]);
          [v26 setFeatureKey:v24];
          derivedPersonalizationData = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
          v28 = [derivedPersonalizationData aggregateForFeatureKey:v24];

          if (v28)
          {
            [v28 clicks];
            [v26 setClicks:?];
            [v28 impressions];
            [v26 setImpressions:?];
            lastModified = [v28 lastModified];
            [v26 setTimestamp:{objc_msgSend(lastModified, "fc_millisecondTimeIntervalSince1970")}];

            [v26 setEventCount:{objc_msgSend(v28, "eventCount")}];
          }

          overrideAggregatesByFeatureKey2 = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
          [overrideAggregatesByFeatureKey2 setObject:v26 forKeyedSubscript:v24];
        }

        [v18 applyToAggregate:v26 withTreatment:valuesCopy];

        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v21);
  }
}

- (void)updateFeatures:(id)features withAction:(unint64_t)action displayRank:(int64_t)rank groupRank:(int64_t)groupRank individually:(BOOL)individually configurableValues:(id)values
{
  individuallyCopy = individually;
  rankCopy = rank;
  groupRankCopy = groupRank;
  v56 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  valuesCopy = values;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = featuresCopy;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0x1E69E9C10];
    v16 = *v43;
    do
    {
      v17 = 0;
      do
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v42 + 1) + 8 * v17);
        personalizationIdentifier = [v18 personalizationIdentifier];

        if (personalizationIdentifier)
        {
          [array addObject:v18];
          personalizationIdentifier2 = [v18 personalizationIdentifier];
          [array2 addObject:personalizationIdentifier2];
LABEL_8:

          goto LABEL_10;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          personalizationIdentifier2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Found a personalization feature without a personalization identifier"];
          *buf = 136315906;
          v48 = "[FCReadonlyPersonalizationAggregateStore updateFeatures:withAction:displayRank:groupRank:individually:configurableValues:]";
          v49 = 2080;
          v50 = "FCPersonalizationAggregate.m";
          v51 = 1024;
          v52 = 192;
          v53 = 2114;
          v54 = personalizationIdentifier2;
          _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          goto LABEL_8;
        }

LABEL_10:
        ++v17;
      }

      while (v14 != v17);
      v21 = [v12 countByEnumeratingWithState:&v42 objects:v55 count:16];
      v14 = v21;
    }

    while (v21);
  }

  v22 = [(FCReadonlyPersonalizationAggregateStore *)self baselineAggregateWithConfigurableValues:valuesCopy];
  v23 = FCPersonalizationAggregateImpressionBiasForAction(action, rankCopy, groupRankCopy, valuesCopy);
  [valuesCopy featureImpressionPrior];
  v25 = v24;
  defaultScoringConfig = [valuesCopy defaultScoringConfig];
  [defaultScoringConfig decayFactor];
  [v22 personalizationValueWithBaseline:0 decayRate:?];
  v28 = v25 * v27;
  [valuesCopy featureImpressionPrior];
  v29 = 1;
  [(FCReadonlyPersonalizationAggregateStore *)self modifyLocalAggregatesForFeatureKeys:array2 withAction:action actionCount:1 defaultClicks:valuesCopy defaultImpressions:v28 impressionBias:v30 configurableValues:v23];

  featureKey = [v22 featureKey];
  v46 = featureKey;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  if (individuallyCopy)
  {
    v29 = [array2 count];
  }

  [v22 clicks];
  v34 = v33;
  [v22 impressions];
  [(FCReadonlyPersonalizationAggregateStore *)self modifyLocalAggregatesForFeatureKeys:v32 withAction:action actionCount:v29 defaultClicks:valuesCopy defaultImpressions:v34 impressionBias:v35 configurableValues:v23];
}

- (id)baselineAggregateWithConfigurableValues:(id)values
{
  v4 = FCPersonalizationAggregateBaselineAggregateWithConfigurableValues(self, values);
  overrideAggregatesByFeatureKey = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  featureKey = [v4 featureKey];
  v7 = [overrideAggregatesByFeatureKey objectForKeyedSubscript:featureKey];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v9;
}

- (id)aggregateForFeatureKey:(id)key
{
  keyCopy = key;
  overrideAggregatesByFeatureKey = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  v6 = [overrideAggregatesByFeatureKey objectForKeyedSubscript:keyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    derivedPersonalizationData = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
    v8 = [derivedPersonalizationData aggregateForFeatureKey:keyCopy];
  }

  return v8;
}

- (id)aggregatesForFeatureKeys:(id)keys
{
  v4 = MEMORY[0x1E695DF90];
  keysCopy = keys;
  dictionary = [v4 dictionary];
  overrideAggregatesByFeatureKey = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  v8 = [overrideAggregatesByFeatureKey fc_subdictionaryForKeys:keysCopy];
  [dictionary addEntriesFromDictionary:v8];

  derivedPersonalizationData = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
  v10 = [derivedPersonalizationData aggregatesForFeatureKeys:keysCopy];

  [dictionary addEntriesFromDictionary:v10];

  return dictionary;
}

- (id)aggregatesForFeatures:(id)features
{
  featuresCopy = features;
  v5 = MEMORY[0x1E695DF20];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__FCReadonlyPersonalizationAggregateStore_aggregatesForFeatures___block_invoke;
  v9[3] = &unk_1E7C37D00;
  v10 = featuresCopy;
  selfCopy = self;
  v6 = featuresCopy;
  v7 = [v5 fc_dictionary:v9];

  return v7;
}

void __65__FCReadonlyPersonalizationAggregateStore_aggregatesForFeatures___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__FCReadonlyPersonalizationAggregateStore_aggregatesForFeatures___block_invoke_2;
  v6[3] = &unk_1E7C47218;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __65__FCReadonlyPersonalizationAggregateStore_aggregatesForFeatures___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 personalizationIdentifier];
  v4 = [*(a1 + 32) aggregateForFeatureKey:v3];
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v5];
  }
}

- (void)enumerateAggregatesUsingBlock:(id)block
{
  blockCopy = block;
  derivedPersonalizationData = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
  allAggregates = [derivedPersonalizationData allAggregates];
  v7 = [allAggregates mutableCopy];

  overrideAggregatesByFeatureKey = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  [v7 addEntriesFromDictionary:overrideAggregatesByFeatureKey];

  allValues = [v7 allValues];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__FCReadonlyPersonalizationAggregateStore_enumerateAggregatesUsingBlock___block_invoke;
  v11[3] = &unk_1E7C46B18;
  v12 = blockCopy;
  v10 = blockCopy;
  [allValues enumerateObjectsUsingBlock:v11];
}

- (NSDictionary)allAggregates
{
  overrideAggregatesByFeatureKey = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
  v4 = [overrideAggregatesByFeatureKey count];

  derivedPersonalizationData = [(FCReadonlyPersonalizationAggregateStore *)self derivedPersonalizationData];
  allAggregates = [derivedPersonalizationData allAggregates];
  v7 = allAggregates;
  if (v4)
  {
    v8 = [allAggregates mutableCopy];

    derivedPersonalizationData = [(FCReadonlyPersonalizationAggregateStore *)self overrideAggregatesByFeatureKey];
    [v8 addEntriesFromDictionary:derivedPersonalizationData];
    v7 = v8;
  }

  return v7;
}

- (void)processTodayPersonalizationUpdates:(id)updates withConfigurableValues:(id)values
{
  updatesCopy = updates;
  valuesCopy = values;
  v8 = FCProgressivePersonalizationLog;
  if (os_log_type_enabled(FCProgressivePersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEBUG, "Processing past events for accurate News Today Widget personalization", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__FCReadonlyPersonalizationAggregateStore_processTodayPersonalizationUpdates_withConfigurableValues___block_invoke;
  v10[3] = &unk_1E7C47268;
  v10[4] = self;
  v11 = valuesCopy;
  v9 = valuesCopy;
  [updatesCopy enumerateObjectsUsingBlock:v10];
}

void __101__FCReadonlyPersonalizationAggregateStore_processTodayPersonalizationUpdates_withConfigurableValues___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101__FCReadonlyPersonalizationAggregateStore_processTodayPersonalizationUpdates_withConfigurableValues___block_invoke_2;
  v5[3] = &unk_1E7C47240;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateObjectsUsingBlock:v5];
}

void __101__FCReadonlyPersonalizationAggregateStore_processTodayPersonalizationUpdates_withConfigurableValues___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [FCPersonalizationFeature featuresFromTodayPersonalizationEvent:v4];
  v5 = [v4 action] - 2;
  if (v5 > 4)
  {
    v6 = 22;
  }

  else
  {
    v6 = qword_1B681B7B0[v5];
  }

  v7 = [v4 overallOrder];
  v8 = [v4 sectionOrder];

  [v3 updateFeatures:v9 withAction:v6 displayRank:v7 groupRank:v8 individually:1 configurableValues:*(a1 + 40)];
}

- (void)prepareAggregatesForUseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  prepareOnce = [(FCReadonlyPersonalizationAggregateStore *)self prepareOnce];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__FCReadonlyPersonalizationAggregateStore_prepareAggregatesForUseWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7C36EA0;
  v6[4] = self;
  [prepareOnce executeOnce:v6];

  handlerCopy[2](handlerCopy);
}

void __88__FCReadonlyPersonalizationAggregateStore_prepareAggregatesForUseWithCompletionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) generator];
  v3 = [v2 generateDerivedData];

  v4 = FCReadonlyPersonalizationAggregateStoreLog;
  if (os_log_type_enabled(FCReadonlyPersonalizationAggregateStoreLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = NSStringFromFCScoringType([v3 scoringType]);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Generated personalization data with scoring type %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) setDerivedPersonalizationData:v3];
  [*(a1 + 32) setScoringType:{objc_msgSend(v3, "scoringType")}];
  [v3 decayRate];
  [*(a1 + 32) setDecayRate:?];
}

@end