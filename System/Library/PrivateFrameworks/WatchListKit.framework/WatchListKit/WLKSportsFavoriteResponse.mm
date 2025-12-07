@interface WLKSportsFavoriteResponse
- (WLKSportsFavoriteResponse)initWithDictionary:(id)dictionary;
@end

@implementation WLKSportsFavoriteResponse

- (WLKSportsFavoriteResponse)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = WLKSportsFavoriteResponse;
  v5 = [(WLKSportsFavoriteResponse *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [dictionaryCopy wlk_arrayForKey:{@"data", 0}];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [WLKSportsFavoriteFactory favoriteFromDictionary:v12];
            if (v13)
            {
              [v6 addObject:v13];
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    favorites = v5->_favorites;
    v5->_favorites = v14;
  }

  return v5;
}

@end