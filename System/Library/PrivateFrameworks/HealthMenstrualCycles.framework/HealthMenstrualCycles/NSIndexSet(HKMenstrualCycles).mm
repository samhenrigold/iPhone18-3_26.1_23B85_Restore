@interface NSIndexSet(HKMenstrualCycles)
+ (id)hk_indexSetWithArray:()HKMenstrualCycles;
- (id)hk_indexSetSubtractingIndexes:()HKMenstrualCycles;
@end

@implementation NSIndexSet(HKMenstrualCycles)

+ (id)hk_indexSetWithArray:()HKMenstrualCycles
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addIndex:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "integerValue", v12)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];

  return v10;
}

- (id)hk_indexSetSubtractingIndexes:()HKMenstrualCycles
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeIndexes:v4];

  v6 = [v5 copy];

  return v6;
}

@end