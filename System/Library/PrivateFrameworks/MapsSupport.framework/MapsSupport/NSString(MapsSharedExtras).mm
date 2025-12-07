@interface NSString(MapsSharedExtras)
- (id)_maps_prefixMatchesForSearchString:()MapsSharedExtras;
@end

@implementation NSString(MapsSharedExtras)

- (id)_maps_prefixMatchesForSearchString:()MapsSharedExtras
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_autoreleasePoolPush();
  array2 = [MEMORY[0x277CBEB18] array];
  v8 = [v4 length];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __65__NSString_MapsSharedExtras___maps_prefixMatchesForSearchString___block_invoke;
  v45[3] = &unk_279867D38;
  v9 = array2;
  v46 = v9;
  [v4 enumerateSubstringsInRange:0 options:v8 usingBlock:{1027, v45}];
  array3 = [MEMORY[0x277CBEB18] array];
  v11 = [self length];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __65__NSString_MapsSharedExtras___maps_prefixMatchesForSearchString___block_invoke_2;
  v43[3] = &unk_279867D38;
  v12 = array3;
  v44 = v12;
  [self enumerateSubstringsInRange:0 options:v11 usingBlock:{1027, v43}];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v9;
  v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v34)
  {
    v32 = array;
    v33 = *v40;
    context = v6;
    v29 = v4;
    v31 = v12;
    while (1)
    {
      v13 = 0;
LABEL_4:
      if (*v40 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v39 + 1) + 8 * v13);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v15 = [v12 copy];
      v16 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = *v36;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * v19);
        v21 = [v20 objectAtIndexedSubscript:0];
        v22 = [v20 objectAtIndexedSubscript:1];
        rangeValue = [v22 rangeValue];

        if (![v21 localizedStandardRangeOfString:v14])
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      v24 = [v14 length];
      v25 = [MEMORY[0x277CCAE60] valueWithRange:{rangeValue, v24}];
      array = v32;
      [v32 addObject:v25];

      v12 = v31;
      [v31 removeObject:v20];

      if (++v13 != v34)
      {
        goto LABEL_4;
      }

      v6 = context;
      v4 = v29;
      v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (!v34)
      {
        goto LABEL_17;
      }
    }

LABEL_18:

    objc_autoreleasePoolPop(context);
    v26 = 0;
    v4 = v29;
    array = v32;
  }

  else
  {
LABEL_17:

    objc_autoreleasePoolPop(v6);
    v26 = array;
  }

  return v26;
}

@end