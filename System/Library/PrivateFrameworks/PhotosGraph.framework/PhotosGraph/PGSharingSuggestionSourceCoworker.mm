@interface PGSharingSuggestionSourceCoworker
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceCoworker

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v40 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  optionsCopy = options;
  momentNodes = [inputCopy momentNodes];
  graph = [inputCopy graph];
  coworkers = [graph coworkers];
  if ([coworkers count])
  {
    meNodeCollection = [graph meNodeCollection];
    v20 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = momentNodes;
    v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v7)
    {
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v31 = 0;
          v32 = &v31;
          v33 = 0x2020000000;
          v34 = 0;
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          v30 = 0;
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __74__PGSharingSuggestionSourceCoworker_suggestedResultsForInput_withOptions___block_invoke;
          v23[3] = &unk_2788850E0;
          v24 = coworkers;
          v25 = &v31;
          v26 = &v27;
          [v10 enumeratePersonNodesUsingBlock:v23];
          if (v32[3])
          {
            if ([v10 happensPartiallyAtWorkOfPersonNodes:meNodeCollection] || (v11 = v32[3], v11 >= 3) && v11 / (v28[3] + v11) >= 0.75)
            {
              [v20 addObject:v10];
            }
          }

          _Block_object_dispose(&v27, 8);
          _Block_object_dispose(&v31, 8);
        }

        v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v7);
    }

    if ([v20 count])
    {
      v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_48268];
      v13 = [coworkers filteredSetUsingPredicate:v12];

      v14 = [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v13];
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

void *__74__PGSharingSuggestionSourceCoworker_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsObject:a2];
  v4 = 48;
  if (result)
  {
    v4 = 40;
  }

  ++*(*(*(a1 + v4) + 8) + 24);
  return result;
}

BOOL __74__PGSharingSuggestionSourceCoworker_suggestedResultsForInput_withOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__48271;
  v16 = __Block_byref_object_dispose__48272;
  v17 = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [v4 collection];
  v7 = [v6 momentNodes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__PGSharingSuggestionSourceCoworker_suggestedResultsForInput_withOptions___block_invoke_261;
  v11[3] = &unk_278885948;
  v11[4] = &v12;
  [v7 enumerateNodesUsingBlock:v11];

  [v13[5] timeIntervalSinceNow];
  v9 = fabs(v8) < 15778800.0;
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __74__PGSharingSuggestionSourceCoworker_suggestedResultsForInput_withOptions___block_invoke_261(uint64_t a1, void *a2)
{
  v6 = [a2 universalStartDate];
  v3 = [v6 laterDate:*(*(*(a1 + 32) + 8) + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end