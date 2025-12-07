@interface NSArray(MicroLocationUtilities)
- (BOOL)ul_containsObjectPassingTest:()MicroLocationUtilities;
- (id)ul_allWhere:()MicroLocationUtilities;
- (id)ul_firstWhere:()MicroLocationUtilities;
@end

@implementation NSArray(MicroLocationUtilities)

- (id)ul_firstWhere:()MicroLocationUtilities
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)ul_containsObjectPassingTest:()MicroLocationUtilities
{
  v1 = [self ul_firstWhere:?];
  v2 = v1 != 0;

  return v2;
}

- (id)ul_allWhere:()MicroLocationUtilities
{
  v4 = a3;
  v5 = [self mutableCopy];
  if ([self count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [self objectAtIndexedSubscript:v7];
      if ((v4[2](v4, v8) & 1) == 0)
      {
        [v5 removeObjectAtIndex:v7 - v6++];
      }

      ++v7;
    }

    while (v7 < [self count]);
  }

  v9 = [v5 copy];

  return v9;
}

@end