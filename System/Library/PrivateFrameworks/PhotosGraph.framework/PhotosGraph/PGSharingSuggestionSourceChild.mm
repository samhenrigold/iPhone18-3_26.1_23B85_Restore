@interface PGSharingSuggestionSourceChild
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceChild

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v34 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  optionsCopy = options;
  momentNodes = [inputCopy momentNodes];
  graph = [inputCopy graph];
  children = [graph children];
  if ([children count])
  {
    parents = [graph parents];
    partners = [graph partners];
    v18 = [parents setByAddingObjectsFromSet:partners];

    if ([v18 count])
    {
      v21 = objc_opt_new();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = momentNodes;
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v10)
      {
        v11 = *v30;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            v25 = 0;
            v26 = &v25;
            v27 = 0x2020000000;
            v28 = 0;
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __71__PGSharingSuggestionSourceChild_suggestedResultsForInput_withOptions___block_invoke;
            v22[3] = &unk_278889420;
            v23 = children;
            v24 = &v25;
            [v13 enumeratePersonNodesUsingBlock:v22];
            if (*(v26 + 24) == 1)
            {
              [v21 addObject:v13];
            }

            _Block_object_dispose(&v25, 8);
          }

          v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v10);
      }

      if ([v21 count])
      {
        [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v18];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v14 = ;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  return v14;
}

void *__71__PGSharingSuggestionSourceChild_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end