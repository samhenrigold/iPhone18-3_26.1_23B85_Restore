@interface GKPlayerActivitySectionInternal
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivitySectionInternal)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivitySectionInternal

- (GKPlayerActivitySectionInternal)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = GKPlayerActivitySectionInternal;
  v5 = [(GKPlayerActivitySectionInternal *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    [(GKPlayerActivitySectionInternal *)v5 setTitle:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    v20 = v5;
    [(GKPlayerActivitySectionInternal *)v5 setInstrumentationKey:v7];

    array = [MEMORY[0x277CBEB18] array];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"activity"];
    v10 = v9;
    if (v9)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [v15 objectForKeyedSubscript:@"symbol"];

            if (v16)
            {
              v17 = off_2785DBC58;
            }

            else
            {
              v17 = off_2785DBC10;
            }

            v18 = [objc_alloc(*v17) initWithDictionary:v15];
            [array addObject:v18];
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }
    }

    v5 = v20;
    [(GKPlayerActivitySectionInternal *)v20 setItems:array];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(GKPlayerActivitySectionInternal *)self title];
  items = [(GKPlayerActivitySectionInternal *)self items];
  instrumentationKey = [(GKPlayerActivitySectionInternal *)self instrumentationKey];
  v7 = [v3 stringWithFormat:@"title: %@            \n items: %@            \n instrumentationKey: %@", title, items, instrumentationKey];

  return v7;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_201 != -1)
  {
    +[GKPlayerActivitySectionInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_200;

  return v3;
}

void __58__GKPlayerActivitySectionInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0, @"title", @"instrumentationKey", @"items", v9, v10}];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:3];

  v7 = secureCodedPropertyKeys_sSecureCodedKeys_200;
  secureCodedPropertyKeys_sSecureCodedKeys_200 = v6;
}

@end