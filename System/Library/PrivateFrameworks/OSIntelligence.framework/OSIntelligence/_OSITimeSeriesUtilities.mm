@interface _OSITimeSeriesUtilities
+ (id)resampleTimeSeries:(id)series withMaxDays:(int64_t)days withFrequency:(double)frequency;
@end

@implementation _OSITimeSeriesUtilities

+ (id)resampleTimeSeries:(id)series withMaxDays:(int64_t)days withFrequency:(double)frequency
{
  v44 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  v8 = seriesCopy;
  if (seriesCopy)
  {
    v9 = [seriesCopy count];
    v10 = 0;
    if (days >= 1 && v9 >= 2)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      context = objc_autoreleasePoolPush();
      allKeys = [v8 allKeys];
      v13 = [allKeys sortedArrayUsingSelector:sel_compare_];

      firstObject = [v13 firstObject];
      lastObject = [v13 lastObject];
      v16 = [lastObject dateByAddingTimeInterval:(-86400 * days)];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v40;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v40 != v21)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v39 + 1) + 8 * i) timeIntervalSinceDate:v16];
            if (v23 < 0.0)
            {
              ++v20;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v19);
      }

      else
      {
        v20 = 0;
      }

      v24 = [v17 subarrayWithRange:{v20, objc_msgSend(v17, "count") - v20}];

      if (v24 && [v24 count] >= 2)
      {
        firstObject2 = [v24 firstObject];

        v26 = firstObject2;
        v27 = [v8 objectForKeyedSubscript:v26];
        v36 = 1;
        v28 = [v24 objectAtIndexedSubscript:1];
        v29 = 0;
        v37 = v26;
LABEL_20:
        v30 = v26;
        while (1)
        {
          [v30 timeIntervalSinceDate:{lastObject, v35}];
          if (v31 > 0.0 || [v24 count] <= v29)
          {
            break;
          }

          [dictionary setObject:v27 forKeyedSubscript:v30];
          v26 = [v30 dateByAddingTimeInterval:frequency];

          [v26 timeIntervalSinceDate:v28];
          v30 = v26;
          if (v32 >= 0.0)
          {
            v35 = [v8 objectForKeyedSubscript:v28];

            ++v29;
            v27 = v35;
            if ([v24 count] > ++v36)
            {
              v33 = [v24 objectAtIndexedSubscript:v36];

              v28 = v33;
              v27 = v35;
            }

            goto LABEL_20;
          }
        }

        objc_autoreleasePoolPop(context);
        v10 = dictionary;
      }

      else
      {

        objc_autoreleasePoolPop(context);
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end