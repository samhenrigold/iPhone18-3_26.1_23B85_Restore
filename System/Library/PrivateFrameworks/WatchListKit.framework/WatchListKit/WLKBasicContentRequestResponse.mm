@interface WLKBasicContentRequestResponse
- (WLKBasicContentRequestResponse)initWithDictionary:(id)dictionary;
@end

@implementation WLKBasicContentRequestResponse

- (WLKBasicContentRequestResponse)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = WLKBasicContentRequestResponse;
  v5 = [(WLKBasicContentRequestResponse *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_arrayForKey:@"data"];
    array = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [WLKBasicContentMetadata alloc];
            v15 = [(WLKBasicContentMetadata *)v14 initWithDictionary:v13, v19];
            if (v15)
            {
              [array addObject:v15];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = [array copy];
    items = v5->_items;
    v5->_items = v16;
  }

  return v5;
}

@end