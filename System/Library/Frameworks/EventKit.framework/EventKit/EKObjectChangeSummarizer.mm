@interface EKObjectChangeSummarizer
+ (id)changeSummaryForObject:(id)object;
+ (id)diffSummaryBetweenObject:(id)object andObject:(id)andObject;
@end

@implementation EKObjectChangeSummarizer

+ (id)changeSummaryForObject:(id)object
{
  objectCopy = object;
  v5 = [objectCopy copy];
  [v5 rollback];
  v6 = [self diffSummaryBetweenObject:v5 andObject:objectCopy];

  return v6;
}

+ (id)diffSummaryBetweenObject:(id)object andObject:(id)andObject
{
  v62 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  andObjectCopy = andObject;
  v9 = andObjectCopy;
  v46 = 0;
  v41 = objectCopy;
  if (objectCopy && andObjectCopy)
  {
    v43 = objc_opt_class();
    if (v43 != objc_opt_class())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EKObjectChangeSummarizer.m" lineNumber:93 description:@"Diff summary called on objects of different class"];
    }

    v38 = v9;
    v11 = [objectCopy diffWithObject:v9];
    summaryDictionary = [v11 summaryDictionary];

    v46 = objc_opt_new();
    [v43 EKObjectChangeSummarizer_singleValueDiffKeys];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = v58 = 0u;
    allKeys = [v40 allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v56;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(allKeys);
          }

          v18 = *(*(&v55 + 1) + 8 * i);
          v19 = [summaryDictionary objectForKey:v18];

          if (v19)
          {
            v20 = [v41 valueForKeyPath:v18];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              null = v20;
            }

            else
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            v22 = null;
            v23 = [v40 objectForKeyedSubscript:v18];
            [v46 setObject:v22 forKeyedSubscript:v23];
          }
        }

        v15 = [allKeys countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v15);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [v43 EKObjectChangeSummarizer_multiValueDiffKeys];
    v44 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v44)
    {
      v42 = *v52;
      do
      {
        v24 = 0;
        do
        {
          if (*v52 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v45 = v24;
          v25 = *(*(&v51 + 1) + 8 * v24);
          eKObjectChangeSummarizer_multiValueDiffKeys = [v43 EKObjectChangeSummarizer_multiValueDiffKeys];
          v27 = [eKObjectChangeSummarizer_multiValueDiffKeys objectForKeyedSubscript:v25];

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v28 = [&unk_1F1B6B1E8 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v48;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v48 != v30)
                {
                  objc_enumerationMutation(&unk_1F1B6B1E8);
                }

                v32 = *(*(&v47 + 1) + 8 * j);
                v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v25, v32];
                v34 = [summaryDictionary objectForKey:v33];

                if (v34)
                {
                  v35 = [v27 objectForKeyedSubscript:v32];
                  if (v35)
                  {
                    v36 = [summaryDictionary objectForKeyedSubscript:v33];
                    [v46 setObject:v36 forKeyedSubscript:v35];
                  }
                }
              }

              v29 = [&unk_1F1B6B1E8 countByEnumeratingWithState:&v47 objects:v59 count:16];
            }

            while (v29);
          }

          v24 = v45 + 1;
        }

        while (v45 + 1 != v44);
        v44 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v44);
    }

    v9 = v38;
  }

  return v46;
}

@end