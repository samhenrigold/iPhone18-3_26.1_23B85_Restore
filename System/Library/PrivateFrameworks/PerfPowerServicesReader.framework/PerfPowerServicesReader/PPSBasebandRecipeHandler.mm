@interface PPSBasebandRecipeHandler
+ (id)formatBins:(id)bins;
+ (id)timeSeriesRecipes;
@end

@implementation PPSBasebandRecipeHandler

+ (id)timeSeriesRecipes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"BasebandMetrics::Events";
  basebandEventRecipe = [self basebandEventRecipe];
  v7[1] = @"BasebandMetrics::Histogram";
  v8[0] = basebandEventRecipe;
  basebandHistogramRecipe = [self basebandHistogramRecipe];
  v8[1] = basebandHistogramRecipe;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

PPSTimeSeries *__47__PPSBasebandRecipeHandler_basebandEventRecipe__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v28 = a3;
  v26 = objc_alloc_init(PPSTimeSeries);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v9 metrics];
        v11 = [v10 objectForKeyedSubscript:@"data"];

        if (v11)
        {
          v12 = [v9 metrics];
          v13 = [v12 objectForKeyedSubscript:@"data"];
          v14 = [v28 objectForKeyedSubscript:@"data"];
          v15 = [PPSBasebandDecoder decodeValue:v13 withMetric:v14];
          v16 = [v15 mutableCopy];

          if (v16)
          {
            v17 = [v16 objectForKeyedSubscript:@"metric_name"];
            [v16 removeObjectForKey:@"metric_name"];
            [v9 monotonicTimestamp];
            v19 = v18;
            [v9 timeOffset];
            v21 = v20;
            v22 = [v9 groupId];
            v23 = [v9 label];
            v24 = [PPSEvent eventWithMonotonicTimestamp:v16 timeOffset:v22 dictionary:v23 groupId:v19 label:v21];

            [v24 setLabel:v17];
            [(PPSTimeSeries *)v26 addEvent:v24];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  return v26;
}

PPSTimeSeries *__51__PPSBasebandRecipeHandler_basebandHistogramRecipe__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v42 = a3;
  v39 = objc_alloc_init(PPSTimeSeries);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
  v37 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v37)
  {
    v36 = *v56;
    do
    {
      v5 = 0;
      do
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v5;
        v6 = *(*(&v55 + 1) + 8 * v5);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v44 = [v6 metrics];
        v7 = [v44 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v52;
          v40 = *v52;
          v41 = v6;
          do
          {
            v10 = 0;
            v43 = v8;
            do
            {
              if (*v52 != v9)
              {
                objc_enumerationMutation(v44);
              }

              v11 = *(*(&v51 + 1) + 8 * v10);
              if ([v11 hasPrefix:@"data"])
              {
                v46 = v10;
                v12 = [v6 metrics];
                v13 = [v12 objectForKeyedSubscript:v11];
                v14 = [v42 objectForKeyedSubscript:@"data"];
                v15 = [PPSBasebandDecoder decodeValue:v13 withMetric:v14];
                v16 = [v15 mutableCopy];

                if (v16)
                {
                  v45 = [v16 objectForKeyedSubscript:@"metric_name"];
                  [v16 removeObjectForKey:@"metric_name"];
                  v49 = 0u;
                  v50 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v17 = [v16 copy];
                  v18 = [v17 countByEnumeratingWithState:&v47 objects:v59 count:16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *v48;
                    do
                    {
                      for (i = 0; i != v19; ++i)
                      {
                        if (*v48 != v20)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v22 = *(*(&v47 + 1) + 8 * i);
                        v23 = [v16 objectForKeyedSubscript:v22];
                        objc_opt_class();
                        isKindOfClass = objc_opt_isKindOfClass();

                        if (isKindOfClass)
                        {
                          v25 = [v16 objectForKeyedSubscript:v22];
                          v26 = [PPSBasebandRecipeHandler formatBins:v25];
                          [v16 setValuesForKeysWithDictionary:v26];

                          [v16 removeObjectForKey:v22];
                        }
                      }

                      v19 = [v17 countByEnumeratingWithState:&v47 objects:v59 count:16];
                    }

                    while (v19);
                  }

                  v6 = v41;
                  [v41 monotonicTimestamp];
                  v28 = v27;
                  [v41 timeOffset];
                  v30 = v29;
                  v31 = [v41 groupId];
                  v32 = [v41 label];
                  v33 = [PPSEvent eventWithMonotonicTimestamp:v16 timeOffset:v31 dictionary:v32 groupId:v28 label:v30];

                  [v33 setLabel:v45];
                  [(PPSTimeSeries *)v39 addEvent:v33];

                  v9 = v40;
                }

                v8 = v43;
                v10 = v46;
              }

              ++v10;
            }

            while (v10 != v8);
            v8 = [v44 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v8);
        }

        v5 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v37);
  }

  return v39;
}

+ (id)formatBins:(id)bins
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  binsCopy = bins;
  array = [v3 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__PPSBasebandRecipeHandler_formatBins___block_invoke;
  v15[3] = &unk_279A115F8;
  v16 = array;
  v6 = array;
  [binsCopy enumerateObjectsUsingBlock:v15];
  v17[0] = @"bin_size";
  v7 = MEMORY[0x277CCABB0];
  v8 = [binsCopy count];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v17[1] = @"duration_bins";
  v18[0] = v9;
  v10 = MEMORY[0x277CCACA8];
  v11 = [v6 componentsJoinedByString:{@", "}];
  v12 = [v10 stringWithFormat:@"[%@]", v11];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v13;
}

void __39__PPSBasebandRecipeHandler_formatBins___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 hasPrefix:@"duration"])
        {
          v9 = [v3 objectForKeyedSubscript:v8];
          if ([v9 intValue] < 1)
          {
            v12 = @"-";
          }

          else
          {
            v10 = MEMORY[0x277CCACA8];
            v11 = [v3 objectForKeyedSubscript:v8];
            v12 = [v10 stringWithFormat:@"%d", objc_msgSend(v11, "intValue")];
          }

          [*(a1 + 32) addObject:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

@end