@interface PGSharingSuggestionSourceActivity
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceActivity

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v58 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  optionsCopy = options;
  v32 = inputCopy;
  momentNodes = [inputCopy momentNodes];
  graph = [inputCopy graph];
  [graph _checkCanRead];
  v7 = [MEMORY[0x277CBEB58] set];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = momentNodes;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v9)
  {
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v8);
        }

        meaningLabels = [*(*(&v51 + 1) + 8 * i) meaningLabels];
        [v7 unionSet:meaningLabels];
      }

      v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v30 = [MEMORY[0x277CBEB98] setWithObjects:{@"Hiking", @"Climbing", @"Beaching", @"Diving", @"WinterSport", @"AmusementPark", @"Performance", @"Concert", @"Festival", @"SportEvent", @"NightOut", @"Museum", 0}];
    [v7 intersectSet:v30];
    if ([v7 count])
    {
      v13 = [MEMORY[0x277CBEB58] set];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v7;
      v14 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v14)
      {
        v34 = *v48;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v48 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v47 + 1) + 8 * j);
            v17 = [MEMORY[0x277CCA940] set];
            v43 = 0;
            v44 = &v43;
            v45 = 0x2020000000;
            v46 = 0;
            v18 = [PGGraph meaningForMeaningLabel:v16];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __74__PGSharingSuggestionSourceActivity_suggestedResultsForInput_withOptions___block_invoke;
            v40[3] = &unk_2788881B8;
            v19 = v17;
            v41 = v19;
            v42 = &v43;
            [graph enumerateMeaningfulEventsWithMeaning:v18 usingBlock:v40];
            v20 = v44[3];
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v21 = v19;
            v22 = [v21 countByEnumeratingWithState:&v36 objects:v55 count:16];
            if (v22)
            {
              v23 = v20 * 0.5;
              v24 = *v37;
              do
              {
                for (k = 0; k != v22; ++k)
                {
                  if (*v37 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v36 + 1) + 8 * k);
                  if (([v26 isMeNode] & 1) == 0 && v23 <= objc_msgSend(v21, "countForObject:", v26))
                  {
                    [v13 addObject:v26];
                  }
                }

                v22 = [v21 countByEnumeratingWithState:&v36 objects:v55 count:16];
              }

              while (v22);
            }

            _Block_object_dispose(&v43, 8);
          }

          v14 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v14);
      }

      if ([v13 count])
      {
        v27 = [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v13];

        goto LABEL_32;
      }
    }
  }

  v27 = [MEMORY[0x277CBEB98] set];
LABEL_32:

  return v27;
}

void __74__PGSharingSuggestionSourceActivity_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 peopledEvent];
  if (v3)
  {
    v4 = *(a1 + 32);
    v6 = v3;
    v5 = [v3 personNodes];
    [v4 unionSet:v5];

    v3 = v6;
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

@end