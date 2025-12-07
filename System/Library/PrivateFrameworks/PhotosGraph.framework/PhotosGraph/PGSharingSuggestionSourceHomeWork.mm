@interface PGSharingSuggestionSourceHomeWork
- (id)suggestedResultsForInput:(id)input withOptions:(id)options;
@end

@implementation PGSharingSuggestionSourceHomeWork

- (id)suggestedResultsForInput:(id)input withOptions:(id)options
{
  v29 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  momentNodes = [inputCopy momentNodes];
  v21 = inputCopy;
  graph = [inputCopy graph];
  [graph _checkCanRead];
  v7 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = momentNodes;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __74__PGSharingSuggestionSourceHomeWork_suggestedResultsForInput_withOptions___block_invoke;
        v22[3] = &unk_278889878;
        v23 = v7;
        [v13 enumeratePreciseAddressNodesUsingBlock:v22];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  if ([v7 count] && (objc_msgSend(graph, "meNodeCollection"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "elementIdentifiers"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "subtractIdentifierSet:", v15), v15, v14, objc_msgSend(v7, "count")))
  {
    v16 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithGraph:graph elementIdentifiers:v7];
    temporarySet = [(MAElementCollection *)v16 temporarySet];
    v18 = [(PGSharingSuggestionSource *)self suggestionResultsWithPersons:temporarySet];
  }

  else
  {
    v18 = [MEMORY[0x277CBEB98] set];
  }

  return v18;
}

void __74__PGSharingSuggestionSourceHomeWork_suggestedResultsForInput_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v6 = [a2 collection];
  v3 = [v6 homeWorkNodes];
  v4 = [v3 ownerNodes];
  v5 = [v4 elementIdentifiers];
  [v2 unionWithIdentifierSet:v5];
}

@end