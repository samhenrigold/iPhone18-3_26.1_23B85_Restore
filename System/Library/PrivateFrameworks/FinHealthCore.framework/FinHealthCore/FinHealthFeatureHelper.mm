@interface FinHealthFeatureHelper
+ (id)reconstructAggregateFeaturesWithProcessingWindow:(id)window;
+ (id)reconstructCompoundFeatures:(id)features;
+ (unint64_t)transactionProcessingDateForFeature:(id)feature;
@end

@implementation FinHealthFeatureHelper

+ (id)reconstructAggregateFeaturesWithProcessingWindow:(id)window
{
  v30 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = windowCopy;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = objc_opt_new();
        v11 = [v9 componentsSeparatedByString:{@", "}];
        v12 = [v11 objectAtIndex:0];
        v13 = FHRepeatingAggregateFeatureSet([v10 setName:v12]);
        if (([v13 containsObject:v12] & 1) == 0)
        {
          v14 = [v11 count];

          if (v14 < 2)
          {
            goto LABEL_10;
          }

          v15 = MEMORY[0x277CBEAA8];
          v16 = [v11 objectAtIndex:1];
          [v16 doubleValue];
          v17 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
          [v10 setProcessingWindowStartDate:v17];

          v18 = MEMORY[0x277CBEAA8];
          v13 = [v11 objectAtIndex:2];
          [v13 doubleValue];
          v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
          [v10 setProcessingWindowEndDate:v19];
        }

LABEL_10:
        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v20 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"processingWindowEndDate" ascending:0];
  v21 = [MEMORY[0x277CBEA60] arrayWithObject:v20];
  v22 = [v4 sortedArrayUsingDescriptors:v21];

  return v22;
}

+ (id)reconstructCompoundFeatures:(id)features
{
  v61 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (featuresCopy)
  {
    v4 = MEMORY[0x277CCAAA0];
    v5 = [featuresCopy dataUsingEncoding:4];
    v54 = 0;
    v6 = [v4 JSONObjectWithData:v5 options:0 error:&v54];
    v7 = v54;

    if (v6)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      allKeys = [v6 allKeys];
      v40 = [allKeys countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v40)
      {
        v34 = v7;
        v35 = featuresCopy;
        v36 = *v51;
        v37 = allKeys;
        v38 = v6;
        do
        {
          v9 = 0;
          do
          {
            if (*v51 != v36)
            {
              objc_enumerationMutation(allKeys);
            }

            v42 = v9;
            v10 = *(*(&v50 + 1) + 8 * v9);
            v45 = objc_opt_new();
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v41 = v10;
            obj = [v6 objectForKey:v10];
            v11 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
            if (v11)
            {
              v12 = v11;
              v44 = *v47;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v47 != v44)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v14 = *(*(&v46 + 1) + 8 * i);
                  v15 = [v14 objectForKey:@"featureLabel"];
                  v16 = MEMORY[0x277CCACA8];
                  v17 = [v14 objectForKey:@"featureRank"];
                  [v17 doubleValue];
                  v19 = [v16 stringWithFormat:@"%f", v18];

                  v20 = [v14 objectForKey:@"featureEventIdentifiers"];
                  v21 = [FHSmartCompoundFeatureRankedValue alloc];
                  v22 = [objc_alloc(MEMORY[0x277CCA980]) initWithString:v19];
                  v23 = [(FHSmartCompoundFeatureRankedValue *)v21 initWithLabelAndRank:v15 featureRank:v22];

                  if (v20)
                  {
                    [(FHSmartCompoundFeatureRankedValue *)v23 setEventIdentifiers:v20];
                    v24 = objc_alloc(MEMORY[0x277CBEAA8]);
                    v25 = [v14 objectForKey:@"featureEventStartDate"];
                    [v25 doubleValue];
                    v26 = [v24 initWithTimeIntervalSinceReferenceDate:?];
                    [(FHSmartCompoundFeatureRankedValue *)v23 setEventStartDate:v26];

                    v27 = objc_alloc(MEMORY[0x277CBEAA8]);
                    v28 = [v14 objectForKey:@"featureEventEndDate"];
                    [v28 doubleValue];
                    v29 = [v27 initWithTimeIntervalSinceReferenceDate:?];
                    [(FHSmartCompoundFeatureRankedValue *)v23 setEventEndDate:v29];
                  }

                  [v45 addObject:v23];
                }

                v12 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
              }

              while (v12);
            }

            v30 = [MEMORY[0x277CBEA60] arrayWithArray:v45];
            [v39 setValue:v30 forKey:v41];

            v9 = v42 + 1;
            allKeys = v37;
            v6 = v38;
          }

          while (v42 + 1 != v40);
          v40 = [v37 countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v40);
        v7 = v34;
        featuresCopy = v35;
      }
    }

    else
    {
      allKeys = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEBUG))
      {
        localizedDescription = [v7 localizedDescription];
        *buf = 138412546;
        v56 = featuresCopy;
        v57 = 2112;
        v58 = localizedDescription;
        _os_log_impl(&dword_226DD4000, allKeys, OS_LOG_TYPE_DEBUG, "Failed to parse {%@} with error: %@", buf, 0x16u);
      }
    }
  }

  v32 = [v39 copy];

  return v32;
}

+ (unint64_t)transactionProcessingDateForFeature:(id)feature
{
  featureCopy = feature;
  v4 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_processing_history"];
  v5 = [FHDatabaseClauseFromBuilder initWithBuilder:&__block_literal_global_515];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__FinHealthFeatureHelper_transactionProcessingDateForFeature___block_invoke_2;
  v8[3] = &unk_2785CB080;
  v8[4] = &v9;
  [(FHDatabaseEntity *)v4 queryDataWithBlock:v5 logicalOperator:@"AND" limit:1 selectFields:&unk_283A88188 orderby:0 usingBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void *__62__FinHealthFeatureHelper_transactionProcessingDateForFeature___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 unsignedIntAtIndex:1];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end