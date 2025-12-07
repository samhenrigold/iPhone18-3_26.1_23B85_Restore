@interface PGSharingSuggestionSourceAppearance
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceAppearance

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v24 = *MEMORY[0x277D85DE8];
  momentNodes = [input momentNodes];
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = momentNodes;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        numberOfAssets = [v12 numberOfAssets];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __76__PGSharingSuggestionSourceAppearance_suggestedResultsForInput_withOptions___block_invoke;
        v15[3] = &unk_278884958;
        v18 = numberOfAssets;
        v16 = v6;
        selfCopy = self;
        [v12 enumeratePersonEdgesAndNodesUsingBlock:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v6;
}

void __76__PGSharingSuggestionSourceAppearance_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v5 isMeNode] & 1) == 0)
  {
    v6 = [v9 numberOfAssets];
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) suggestionResultWithPerson:v5 weight:v6 / *(a1 + 48)];
    [v7 addObject:v8];
  }
}

@end