@interface U2Output
- (NSArray)argIds;
- (NSArray)argScores;
@end

@implementation U2Output

- (NSArray)argIds
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  argIdsForTokens = [(U2Output *)self argIdsForTokens];
  v5 = [argIdsForTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(argIdsForTokens);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) objectAtIndexedSubscript:0];
        [array addObject:v8];
      }

      v5 = [argIdsForTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [array copy];

  return v9;
}

- (NSArray)argScores
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  argScoresForTokens = [(U2Output *)self argScoresForTokens];
  v5 = [argScoresForTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(argScoresForTokens);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) objectAtIndexedSubscript:0];
        [array addObject:v8];
      }

      v5 = [argScoresForTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [array copy];

  return v9;
}

@end