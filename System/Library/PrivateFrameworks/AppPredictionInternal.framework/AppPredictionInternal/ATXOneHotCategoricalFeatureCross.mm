@interface ATXOneHotCategoricalFeatureCross
- (ATXOneHotCategoricalFeatureCross)initWithFeatures:(id)features;
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXOneHotCategoricalFeatureCross

- (ATXOneHotCategoricalFeatureCross)initWithFeatures:(id)features
{
  featuresCopy = features;
  v9.receiver = self;
  v9.super_class = ATXOneHotCategoricalFeatureCross;
  v6 = [(ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_features, features);
  }

  return v7;
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  candidateCopy = candidate;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_features;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) categoricalFeatureValueForContext:contextCopy candidate:{candidateCopy, v17}];
        [v8 addObject:v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 componentsJoinedByString:@"_"];

  return v15;
}

@end