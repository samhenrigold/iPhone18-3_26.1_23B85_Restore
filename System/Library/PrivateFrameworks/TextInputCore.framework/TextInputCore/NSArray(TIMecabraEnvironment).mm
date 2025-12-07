@interface NSArray(TIMecabraEnvironment)
- (id)deletionRangesWithElementsToKeep:()TIMecabraEnvironment;
- (id)mecabraCandidateSurfaces;
@end

@implementation NSArray(TIMecabraEnvironment)

- (id)mecabraCandidateSurfaces
{
  v14 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        [array addObject:{MecabraCandidateGetSurface(), v9}];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)deletionRangesWithElementsToKeep:()TIMecabraEnvironment
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v19 = v4;
  v9 = 0;
  v10 = *v23;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  obj = selfCopy;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      v15 = v12;
      v16 = v11;
      if (*v23 != v10)
      {
        objc_enumerationMutation(obj);
      }

      if ([v5 containsObject:*(*(&v22 + 1) + 8 * i)])
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        v13 = 0x7FFFFFFFFFFFFFFFLL;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = [MEMORY[0x277CCAE60] valueWithRange:{v15, v16}];
          [array addObject:v17];

          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = 1;
        }

        else
        {
          ++v11;
        }

        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v9;
        }

        v13 = v9;
      }

      ++v9;
    }

    v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v8);

  v4 = v19;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = [MEMORY[0x277CCAE60] valueWithRange:{v12, v11}];
    [array addObject:selfCopy];
LABEL_19:
  }

  return array;
}

@end