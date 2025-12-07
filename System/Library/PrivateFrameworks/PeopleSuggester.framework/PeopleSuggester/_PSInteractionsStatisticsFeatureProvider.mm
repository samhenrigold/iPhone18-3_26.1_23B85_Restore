@interface _PSInteractionsStatisticsFeatureProvider
- (_PSInteractionsStatisticsFeatureProvider)initWithInteractionsStatistics:(id)statistics;
- (id)featureValueForFeature:(id)feature forConversationId:(id)id;
- (id)mlFeatures;
- (id)mlFeaturesForConversationId:(id)id;
@end

@implementation _PSInteractionsStatisticsFeatureProvider

- (_PSInteractionsStatisticsFeatureProvider)initWithInteractionsStatistics:(id)statistics
{
  v44 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  v41.receiver = self;
  v41.super_class = _PSInteractionsStatisticsFeatureProvider;
  v5 = [(_PSInteractionsStatisticsFeatureProvider *)&v41 init];
  if (v5)
  {
    v6 = objc_opt_new();
    mlFeatures = v5->_mlFeatures;
    v5->_mlFeatures = v6;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [statisticsCopy properties];
    v8 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          v13 = objc_opt_new();
          properties = [statisticsCopy properties];
          v15 = [properties objectForKeyedSubscript:v12];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __75___PSInteractionsStatisticsFeatureProvider_initWithInteractionsStatistics___block_invoke;
          v35[3] = &unk_1E7C23C68;
          v36 = v13;
          v16 = v13;
          [v15 enumerateKeysAndObjectsUsingBlock:v35];

          [(NSMutableDictionary *)v5->_mlFeatures setObject:v16 forKeyedSubscript:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v9);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obja = [statisticsCopy features];
    v17 = [obja countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(obja);
          }

          v21 = *(*(&v31 + 1) + 8 * j);
          v22 = [(NSMutableDictionary *)v5->_mlFeatures objectForKeyedSubscript:v21];
          if (!v22)
          {
            v22 = objc_opt_new();
            [(NSMutableDictionary *)v5->_mlFeatures setObject:v22 forKeyedSubscript:v21];
          }

          features = [statisticsCopy features];
          v24 = [features objectForKeyedSubscript:v21];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __75___PSInteractionsStatisticsFeatureProvider_initWithInteractionsStatistics___block_invoke_2;
          v29[3] = &unk_1E7C23C90;
          v30 = v22;
          v25 = v22;
          [v24 enumerateKeysAndObjectsUsingBlock:v29];
        }

        v18 = [obja countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v18);
    }
  }

  return v5;
}

- (id)mlFeatures
{
  v2 = [(NSMutableDictionary *)self->_mlFeatures copy];

  return v2;
}

- (id)mlFeaturesForConversationId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_mlFeatures objectForKeyedSubscript:id];
  v4 = [v3 copy];

  return v4;
}

- (id)featureValueForFeature:(id)feature forConversationId:(id)id
{
  mlFeatures = self->_mlFeatures;
  featureCopy = feature;
  v7 = [(NSMutableDictionary *)mlFeatures objectForKeyedSubscript:id];
  v8 = [v7 featureValueForName:featureCopy];

  v9 = [v8 copy];

  return v9;
}

@end