@interface NMSRecommendationMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)type;
- (id)itemList;
@end

@implementation NMSRecommendationMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  if (type > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  recommendation = [(NMSRecommendationMediaItemGroup *)self recommendation];
  items = [recommendation items];

  v8 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(items);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (!v4 || (objc_opt_isKindOfClass() & 1) != 0)
        {
          identifiers = [v12 identifiers];
          v14 = [identifiers copy];
          [array addObject:v14];
        }
      }

      v9 = [items countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [array copy];

  return v15;
}

- (id)itemList
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (![(NMSMediaItemGroup *)self type]|| [(NMSMediaItemGroup *)self type]== 1)
  {
    v4 = [NMSDownloadableItem alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random()];
    if ([(NMSMediaItemGroup *)self type])
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    v7 = [(NMSDownloadableItem *)v4 initWithMediaLibraryIdentifier:v5 externalLibraryIdentifier:0 size:175000000 itemType:v6 manuallyAdded:[(NMSMediaItemGroup *)self manuallyAdded]];
    [v3 addObject:v7];
  }

  v8 = [v3 copy];

  return v8;
}

@end