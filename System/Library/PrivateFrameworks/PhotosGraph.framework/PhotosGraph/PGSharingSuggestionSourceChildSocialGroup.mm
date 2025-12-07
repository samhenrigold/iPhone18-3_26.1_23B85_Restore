@interface PGSharingSuggestionSourceChildSocialGroup
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceChildSocialGroup

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v50 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  optionsCopy = options;
  v31 = inputCopy;
  momentNodes = [inputCopy momentNodes];
  graph = [inputCopy graph];
  v7 = objc_opt_new();
  meNode = [graph meNode];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = momentNodes;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v9)
  {
    v10 = *v41;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __82__PGSharingSuggestionSourceChildSocialGroup_suggestedResultsForInput_withOptions___block_invoke;
        v37[3] = &unk_278889420;
        v38 = v7;
        v39 = &v44;
        [v12 enumeratePersonNodesUsingBlock:v37];
        if (*(v45 + 24) == 1)
        {
          v21 = [MEMORY[0x277CBEB98] set];
          v15 = v38;
          v14 = v8;
          goto LABEL_24;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if ([v7 count] <= 2 && objc_msgSend(v7, "count"))
  {
    if (meNode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = [MEMORY[0x277CBEB58] set];
    [graph socialGroupNodesSortedByImportance];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v15 = v34 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (v16)
    {
      v17 = *v34;
LABEL_16:
      v18 = 0;
      while (1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v15);
        }

        personNodes = [*(*(&v33 + 1) + 8 * v18) personNodes];
        v20 = [personNodes count];
        if (v20 != v13)
        {
          break;
        }

        [v14 unionSet:personNodes];

        if (v16 == ++v18)
        {
          v16 = [v15 countByEnumeratingWithState:&v33 objects:v48 count:16];
          if (v16)
          {
            goto LABEL_16;
          }

          goto LABEL_36;
        }
      }

      if ([v14 count] && !objc_msgSend(v14, "intersectsSet:", personNodes) || !objc_msgSend(personNodes, "intersectsSet:", v7))
      {

        goto LABEL_36;
      }

      if (v20 >= 6)
      {
        v23 = +[PGGraphPersonNode personScoreSortDescriptors];
        v24 = [personNodes sortedArrayUsingDescriptors:v23];

        v25 = MEMORY[0x277CBEB98];
        v26 = [v24 subarrayWithRange:{0, 5}];
        v27 = [v25 setWithArray:v26];

        personNodes = v27;
      }

      v21 = [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:personNodes];
    }

    else
    {
LABEL_36:

      v21 = [MEMORY[0x277CBEB98] set];
    }

LABEL_24:
  }

  else
  {
    v21 = [MEMORY[0x277CBEB98] set];
  }

  _Block_object_dispose(&v44, 8);

  return v21;
}

void __82__PGSharingSuggestionSourceChildSocialGroup_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if (([v7 isMeNode] & 1) == 0)
  {
    [*(a1 + 32) addObject:v7];
    v5 = [v7 ageCategory];
    v6 = [v7 contactIdentifier];
    if ([v6 length])
    {

      if ((v5 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a3 = 1;
      }
    }

    else
    {
    }
  }
}

@end