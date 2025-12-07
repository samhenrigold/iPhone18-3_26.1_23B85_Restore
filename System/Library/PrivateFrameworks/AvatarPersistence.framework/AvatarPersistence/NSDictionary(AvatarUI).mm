@interface NSDictionary(AvatarUI)
+ (id)_avtui_dictionaryByIndexingObjectsInArray:()AvatarUI by:;
- (id)_avtui_deepCopy;
@end

@implementation NSDictionary(AvatarUI)

- (id)_avtui_deepCopy
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__NSDictionary_AvatarUI___avtui_deepCopy__block_invoke;
  v6[3] = &unk_278CFA4A0;
  v7 = dictionary;
  v3 = dictionary;
  [self enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

+ (id)_avtui_dictionaryByIndexingObjectsInArray:()AvatarUI by:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = *MEMORY[0x277CBE658];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        if (!v14)
        {
          [MEMORY[0x277CBEAD8] raise:v11 format:{@"Nil key provided for %@", v13}];
        }

        v15 = [dictionary objectForKeyedSubscript:v14];

        if (v15)
        {
          [MEMORY[0x277CBEAD8] raise:v11 format:{@"Already have an object for %@", v14}];
        }

        [dictionary setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [dictionary copy];

  return v16;
}

@end