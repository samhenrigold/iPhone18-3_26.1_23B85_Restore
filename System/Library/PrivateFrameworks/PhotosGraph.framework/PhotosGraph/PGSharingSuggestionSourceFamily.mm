@interface PGSharingSuggestionSourceFamily
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceFamily

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v52 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  optionsCopy = options;
  v26 = inputCopy;
  momentNodes = [inputCopy momentNodes];
  graph = [inputCopy graph];
  familyMembers = [graph familyMembers];
  partners = [graph partners];
  v8 = [familyMembers setByAddingObjectsFromSet:partners];

  if ([v8 count])
  {
    v28 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = momentNodes;
    v9 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v9)
    {
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          collection = [v12 collection];
          birthdayPersonNodes = [collection birthdayPersonNodes];

          if ([birthdayPersonNodes count] && (objc_msgSend(birthdayPersonNodes, "temporarySet"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intersectsSet:", v8), v15, v16))
          {
            [v28 addObject:v12];
          }

          else
          {
            v43 = 0;
            v44 = &v43;
            v45 = 0x2020000000;
            v46 = 0;
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __72__PGSharingSuggestionSourceFamily_suggestedResultsForInput_withOptions___block_invoke;
            v42[3] = &unk_278885C70;
            v42[4] = &v43;
            [v12 enumerateCelebratedHolidayNodesUsingBlock:v42];
            if (v44[3] & 1) != 0 || ([MEMORY[0x277CBEB98] setWithObjects:{@"Wedding", @"Celebration", @"Gathering", 0}], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "meaningLabels"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "intersectsSet:", v17), v18, v17, ((*(v44 + 24) | v19)))
            {
              v38 = 0;
              v39 = &v38;
              v40 = 0x2020000000;
              v41 = 0;
              v34 = 0;
              v35 = &v34;
              v36 = 0x2020000000;
              v37 = 0;
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __72__PGSharingSuggestionSourceFamily_suggestedResultsForInput_withOptions___block_invoke_2;
              v30[3] = &unk_2788850E0;
              v31 = v8;
              v32 = &v38;
              v33 = &v34;
              [v12 enumeratePersonNodesUsingBlock:v30];
              v20 = v39[3];
              if (v20 >= 2 && v20 / (v35[3] + v20) >= 0.25)
              {
                [v28 addObject:v12];
              }

              _Block_object_dispose(&v34, 8);
              _Block_object_dispose(&v38, 8);
            }

            _Block_object_dispose(&v43, 8);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v9);
    }

    if ([v28 count])
    {
      [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:v8];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v21 = ;
  }

  else
  {
    v21 = [MEMORY[0x277CBEB98] set];
  }

  return v21;
}

void *__72__PGSharingSuggestionSourceFamily_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 category];
  if (result == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void *__72__PGSharingSuggestionSourceFamily_suggestedResultsForInput_withOptions___block_invoke_2(uint64_t a1, uint64_t a2)
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

@end