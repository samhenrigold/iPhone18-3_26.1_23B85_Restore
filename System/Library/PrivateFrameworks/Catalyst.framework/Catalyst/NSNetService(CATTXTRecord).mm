@interface NSNetService(CATTXTRecord)
+ (id)cat_dataFromDictionary:()CATTXTRecord;
+ (id)cat_dictionaryFromData:()CATTXTRecord;
@end

@implementation NSNetService(CATTXTRecord)

+ (id)cat_dictionaryFromData:()CATTXTRecord
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    context = objc_autoreleasePoolPush();
    v30 = v3;
    v5 = [MEMORY[0x277CBAB60] dictionaryFromTXTRecordData:v3];
    allKeys = [v5 allKeys];
    v7 = [MEMORY[0x277CBEB58] setWithArray:allKeys];
    v27 = [allKeys indexesOfObjectsPassingTest:&__block_literal_global_28];
    v28 = allKeys;
    v8 = [allKeys objectsAtIndexes:?];
    v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
    [v7 minusSet:v9];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v8;
    v33 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v33)
    {
      v32 = *v39;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          v11 = v4;
          if (*v39 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [*(*(&v38 + 1) + 8 * i) substringToIndex:{objc_msgSend(*(*(&v38 + 1) + 8 * i), "length") - objc_msgSend(@"-0", "length")}];
          v13 = objc_opt_new();
          for (j = 0; ; ++j)
          {
            v15 = [v12 stringByAppendingFormat:@"-%lu", j];
            [v7 removeObject:v15];
            v16 = [v5 objectForKeyedSubscript:v15];
            if (!v16)
            {
              break;
            }

            v17 = v16;
            [v13 appendData:v16];
          }

          v4 = v11;
          [v11 setObject:v13 forKeyedSubscript:v12];
        }

        v33 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v33);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v34 + 1) + 8 * k);
          v24 = [v5 objectForKeyedSubscript:v23];
          [v4 setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v20);
    }

    objc_autoreleasePoolPop(context);
    v25 = [v4 copy];

    v3 = v30;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)cat_dataFromDictionary:()CATTXTRecord
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v24 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v24)
  {
    v23 = *v30;
    v5 = @"-%lu";
    v28 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v6;
        v7 = *(*(&v29 + 1) + 8 * v6);
        v8 = [obj objectForKeyedSubscript:v7];
        v9 = [v7 length];
        v10 = 249 - v9;
        v11 = [v8 length] / (249 - v9) + 1;
        if (v11 < 2)
        {
          [v4 setObject:v8 forKey:v7];
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v27 = v9 - 249;
          do
          {
            v15 = v11;
            v16 = [v8 length];
            if (v10 >= v16 + v12)
            {
              v17 = v16 + v12;
            }

            else
            {
              v17 = v10;
            }

            v18 = [v8 subdataWithRange:{v13, v17}];
            [v7 stringByAppendingFormat:v5, v14];
            v20 = v19 = v5;
            [v28 setObject:v18 forKey:v20];

            v5 = v19;
            v11 = v15;
            ++v14;
            v13 += v10;
            v12 += v27;
          }

          while (v14 < v15);
        }

        v6 = v26 + 1;
        v4 = v28;
      }

      while (v26 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v24);
  }

  v21 = [MEMORY[0x277CBAB60] dataFromTXTRecordDictionary:v4];

  return v21;
}

@end