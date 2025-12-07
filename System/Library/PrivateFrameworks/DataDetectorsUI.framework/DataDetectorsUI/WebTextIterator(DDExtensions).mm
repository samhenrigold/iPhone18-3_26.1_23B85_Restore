@interface WebTextIterator(DDExtensions)
- (id)dd_collectDDRangesForQuery:()DDExtensions forResults:;
@end

@implementation WebTextIterator(DDExtensions)

- (id)dd_collectDDRangesForQuery:()DDExtensions forResults:
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v33 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v33)
  {
    v6 = 0;
    v31 = *v36;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(obj);
        }

        QueryRangeForURLification = DDResultGetQueryRangeForURLification();
        v9 = v8;
        v10 = QueryRangeForURLification >> 16;
        FragmentMetaData = DDScanQueryGetFragmentMetaData();
        v12 = FragmentMetaData;
        if (v6 < FragmentMetaData)
        {
          v13 = FragmentMetaData - v6;
          do
          {
            [self advance];
            --v13;
          }

          while (v13);
          v6 = v12;
        }

        currentRange = [self currentRange];
        v15 = [DDRange rangeWithDOMRange:currentRange];

        v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v15, 0}];
        node = [v15 node];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v19 = v9 >> 16;
        if (v10 < v19)
        {
          do
          {
            ++v10;
            v20 = DDScanQueryGetFragmentMetaData();
            v21 = v20;
            if (v6 < v20)
            {
              v22 = v20 - v6;
              do
              {
                [self advance];
                --v22;
              }

              while (v22);
              v6 = v21;
            }

            currentRange2 = [self currentRange];
            v24 = [DDRange rangeWithDOMRange:currentRange2];
            [v16 addObject:v24];

            if (isKindOfClass)
            {
              node2 = [v15 node];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          while (v10 != v19);
        }

        if (isKindOfClass)
        {
          [v32 addObject:v16];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
          [v32 addObject:null];
        }
      }

      v33 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v33);
  }

  objc_autoreleasePoolPop(context);
  v27 = v32;

  return v27;
}

@end