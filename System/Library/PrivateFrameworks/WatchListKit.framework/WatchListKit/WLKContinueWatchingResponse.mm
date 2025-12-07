@interface WLKContinueWatchingResponse
- (WLKContinueWatchingResponse)init;
- (WLKContinueWatchingResponse)initWithDictionary:(id)dictionary;
@end

@implementation WLKContinueWatchingResponse

- (WLKContinueWatchingResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKContinueWatchingResponse" format:@"-init is not supported"];

  return 0;
}

- (WLKContinueWatchingResponse)initWithDictionary:(id)dictionary
{
  v34[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = WLKContinueWatchingResponse;
  v5 = [(WLKContinueWatchingResponse *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    v7 = [WLKChannelsResponse parseChannelsFromPayload:v6];
    v26 = dictionaryCopy;
    v24 = v7;
    if (v7)
    {
      v33 = @"WLKModelContextKeyChannels";
      v34[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    }

    else
    {
      v8 = 0;
    }

    array = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v6;
    v10 = [v6 wlk_dictionaryForKey:@"shelf"];
    v11 = [v10 wlk_arrayForKey:@"items"];

    v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [[WLKContinuationMetadata alloc] initWithDictionary:v16 context:v8];
            if (v17)
            {
              [array addObject:v17];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v13);
    }

    v18 = [array copy];
    items = v5->_items;
    v5->_items = v18;

    v20 = [v25 wlk_dictionaryForKey:@"featured"];
    if (v20)
    {
      v21 = [[WLKContinueWatchingCollection alloc] initWithDictionary:v20];
      featured = v5->_featured;
      v5->_featured = v21;
    }

    dictionaryCopy = v26;
  }

  return v5;
}

@end