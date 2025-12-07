@interface WLKSearchWatchListResponse
- (WLKSearchWatchListResponse)init;
- (WLKSearchWatchListResponse)initWithDictionary:(id)dictionary;
@end

@implementation WLKSearchWatchListResponse

- (WLKSearchWatchListResponse)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = WLKSearchWatchListResponse;
  v6 = [(WLKSearchWatchListResponse *)&v27 init];
  v7 = v6;
  if (v6)
  {
    v22 = v6;
    objc_storeStrong(&v6->_dictionary, dictionary);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v9 = [v21 wlk_arrayForKey:@"items"];
    v10 = v9;
    if (v9)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 wlk_dictionaryForKey:@"content"];
              v17 = [[WLKBasicContentMetadata alloc] initWithDictionary:v16];
              if (v17)
              {
                [v8 addObject:v17];
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v12);
      }
    }

    v18 = [v8 copy];
    v7 = v22;
    items = v22->_items;
    v22->_items = v18;
  }

  return v7;
}

- (WLKSearchWatchListResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKSearchWatchListResponse" format:@"-init is not supported"];

  return 0;
}

@end