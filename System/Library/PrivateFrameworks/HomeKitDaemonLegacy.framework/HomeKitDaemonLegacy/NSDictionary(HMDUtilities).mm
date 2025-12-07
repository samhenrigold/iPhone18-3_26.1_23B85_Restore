@interface NSDictionary(HMDUtilities)
+ (id)dictionaryByCombiningNonOverlappingDictionaries:()HMDUtilities;
- (id)firstKeyWithValue:()HMDUtilities;
@end

@implementation NSDictionary(HMDUtilities)

- (id)firstKeyWithValue:()HMDUtilities
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__NSDictionary_HMDUtilities__firstKeyWithValue___block_invoke;
  v8[3] = &unk_279727380;
  v9 = v4;
  v5 = v4;
  v6 = [self na_firstKeyPassingTest:v8];

  return v6;
}

+ (id)dictionaryByCombiningNonOverlappingDictionaries:()HMDUtilities
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [dictionary addEntriesFromDictionary:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return dictionary;
}

@end