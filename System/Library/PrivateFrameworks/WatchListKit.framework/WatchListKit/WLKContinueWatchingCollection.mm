@interface WLKContinueWatchingCollection
- (WLKContinueWatchingCollection)initWithDictionary:(id)dictionary;
@end

@implementation WLKContinueWatchingCollection

- (WLKContinueWatchingCollection)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = WLKContinueWatchingCollection;
  v5 = [(WLKContinueWatchingCollection *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_stringForKey:@"title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [dictionaryCopy wlk_stringForKey:@"id"];
    v10 = [v9 copy];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    array = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [dictionaryCopy wlk_arrayForKey:{@"items", 0}];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [[WLKBasicContentMetadata alloc] initWithDictionary:v18];
            if (v19)
            {
              [array addObject:v19];
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    v20 = [array copy];
    items = v5->_items;
    v5->_items = v20;
  }

  return v5;
}

@end