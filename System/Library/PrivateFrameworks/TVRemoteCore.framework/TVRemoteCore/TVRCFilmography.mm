@interface TVRCFilmography
+ (id)filmographyWithDictionaries:(id)dictionaries;
- (TVRCFilmography)initWithDictionaries:(id)dictionaries;
@end

@implementation TVRCFilmography

- (TVRCFilmography)initWithDictionaries:(id)dictionaries
{
  v21 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v19.receiver = self;
  v19.super_class = TVRCFilmography;
  v5 = [(TVRCFilmography *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = dictionariesCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [TVRCFilmographyCategory filmographyCategoryWithDictionary:*(*(&v15 + 1) + 8 * v11), v15];
          [(NSArray *)v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    categories = v5->_categories;
    v5->_categories = v6;
  }

  return v5;
}

+ (id)filmographyWithDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v5 = [[self alloc] initWithDictionaries:dictionariesCopy];

  return v5;
}

@end