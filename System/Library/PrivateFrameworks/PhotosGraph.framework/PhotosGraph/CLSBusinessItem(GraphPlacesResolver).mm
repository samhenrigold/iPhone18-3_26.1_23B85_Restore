@interface CLSBusinessItem(GraphPlacesResolver)
- (id)categoryNames;
@end

@implementation CLSBusinessItem(GraphPlacesResolver)

- (id)categoryNames
{
  v15 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  categories = [self categories];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [categories countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(categories);
        }

        v8 = +[PGGraphPlacesResolver poiStringFromSpatialLookupCategory:](PGGraphPlacesResolver, "poiStringFromSpatialLookupCategory:", [*(*(&v10 + 1) + 8 * i) integerValue]);
        if (v8)
        {
          [array addObject:v8];
        }
      }

      v5 = [categories countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

@end