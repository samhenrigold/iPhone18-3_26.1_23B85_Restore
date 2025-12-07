@interface PGSharingManager
+ (id)_defaultOptions;
- (BOOL)_canIncludeUnverified;
- (BOOL)canProvideSuggestionsWithOptions:(id)options forGraph:(id)graph;
- (PGSharingManager)initWithWorkingContext:(id)context;
- (id)_filteredSuggestionResults:(id)results withOptions:(id)options graph:(id)graph;
- (id)_sortedSuggestionResults:(id)results withOptions:(id)options;
- (id)contextualStream;
- (id)presenceStream;
- (id)suggestionResultsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers options:(id)options;
- (id)suggestionSourcesForSharingStream:(unint64_t)stream;
- (void)_mergeSuggestionResultByPersonIdentifer:(id)identifer withSourceSuggestionResults:(id)results;
@end

@implementation PGSharingManager

- (id)_sortedSuggestionResults:(id)results withOptions:(id)options
{
  optionsCopy = options;
  v6 = [results sortedArrayUsingComparator:&__block_literal_global_3408];
  if ([optionsCopy fetchLimit])
  {
    fetchLimit = [optionsCopy fetchLimit];
    v8 = [v6 count];
    if (fetchLimit >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = fetchLimit;
    }

    v10 = [v6 subarrayWithRange:{0, v9}];

    v6 = v10;
  }

  return v6;
}

uint64_t __57__PGSharingManager__sortedSuggestionResults_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 score];
  v7 = v6;
  [v5 score];
  if (v7 <= v8)
  {
    [v4 score];
    v11 = v10;
    [v5 score];
    if (v11 >= v12)
    {
      v13 = [v4 person];
      v14 = [v5 person];
      v9 = [v13 compareToPerson:v14];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)_filteredSuggestionResults:(id)results withOptions:(id)options graph:(id)graph
{
  v48 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  optionsCopy = options;
  graphCopy = graph;
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  filterLowWeightResults = [optionsCopy filterLowWeightResults];
  v14 = filterLowWeightResults;
  if (filterLowWeightResults)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = resultsCopy;
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      v19 = 2.22507386e-308;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v43 + 1) + 8 * i) sourceWeight];
          v19 = fmax(v19, v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v17);
    }

    else
    {
      v19 = 2.22507386e-308;
    }
  }

  else
  {
    v19 = 2.22507386e-308;
  }

  mePerson = [serviceManager mePerson];
  fullName = [mePerson fullName];
  children = [graphCopy children];
  v25 = MEMORY[0x277CCAC30];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __65__PGSharingManager__filteredSuggestionResults_withOptions_graph___block_invoke;
  v36 = &unk_27887F3F0;
  v37 = children;
  v38 = serviceManager;
  v42 = v14;
  v41 = v19;
  v39 = fullName;
  v40 = loggingConnection;
  v26 = loggingConnection;
  v27 = fullName;
  v28 = serviceManager;
  v29 = children;
  v30 = [v25 predicateWithBlock:&v33];
  v31 = [resultsCopy filteredArrayUsingPredicate:{v30, v33, v34, v35, v36}];

  return v31;
}

BOOL __65__PGSharingManager__filteredSuggestionResults_withOptions_graph___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 person];
  v5 = [v4 contactIdentifier];
  if ([v5 length] || (objc_msgSend(*(a1 + 32), "containsObject:", v4) & 1) == 0)
  {
    v7 = [v4 birthdayDate];
    if ([v5 length])
    {
      if (v7)
      {
        v8 = [MEMORY[0x277CBEAA8] date];
        [v8 timeIntervalSinceDate:v7];
        v10 = v9;

        if (v10 < 189345600.0)
        {
          goto LABEL_19;
        }
      }
    }

    if ([v4 isInferredChild])
    {
      if (![v5 length])
      {
        goto LABEL_19;
      }

      v11 = [*(a1 + 40) personForIdentifier:v5];
      v12 = [v11 emailAddresses];
      if ([v12 count])
      {
      }

      else
      {
        v13 = [v11 phoneNumbers];
        v14 = [v13 count];

        if (!v14)
        {
          goto LABEL_19;
        }
      }
    }

    if (*(a1 + 72) == 1 && *(a1 + 64) > 0.25)
    {
      [v3 sourceWeight];
      v6 = v15 > 0.25;
LABEL_21:

      goto LABEL_22;
    }

    if (![*(a1 + 48) length] || (v16 = *(a1 + 48), objc_msgSend(v4, "fullName"), v17 = objc_claimAutoreleasedReturnValue(), LODWORD(v16) = objc_msgSend(v16, "isEqualToString:", v17), v17, !v16))
    {
      v6 = 1;
      goto LABEL_21;
    }

    v18 = *(a1 + 56);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138477827;
      v21 = v4;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Suggested person %{private}@ matches me contact name", &v20, 0xCu);
    }

LABEL_19:
    v6 = 0;
    goto LABEL_21;
  }

  v6 = 0;
LABEL_22:

  return v6;
}

- (void)_mergeSuggestionResultByPersonIdentifer:(id)identifer withSourceSuggestionResults:(id)results
{
  v23 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
  resultsCopy = results;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [resultsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        person = [v11 person];
        localIdentifier = [person localIdentifier];

        if (![localIdentifier length])
        {
          person2 = [v11 person];
          contactIdentifier = [person2 contactIdentifier];

          localIdentifier = contactIdentifier;
        }

        v16 = [identiferCopy objectForKeyedSubscript:localIdentifier];
        v17 = v16;
        if (v16)
        {
          [v16 mergeWithSuggestionResult:v11];
        }

        else
        {
          [identiferCopy setObject:v11 forKeyedSubscript:localIdentifier];
        }
      }

      v8 = [resultsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (BOOL)_canIncludeUnverified
{
  v17 = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  countOfClusteringEligibleFaces = [photoLibrary countOfClusteringEligibleFaces];
  if (countOfClusteringEligibleFaces)
  {
    v5 = [photoLibrary countOfUnclusteredFaces] / countOfClusteringEligibleFaces;
    v6 = v5 < 0.1;
  }

  else
  {
    v6 = 0;
    v5 = 0.0;
  }

  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218752;
    v10 = countOfClusteringEligibleFaces;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = 0x3FB999999999999ALL;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Can include unverified result: countOfClusteringEligibleFaces %lu, percentageOfFacesNotClustered %.2f < %.2f == %d", &v9, 0x26u);
  }

  return v6;
}

- (BOOL)canProvideSuggestionsWithOptions:(id)options forGraph:(id)graph
{
  optionsCopy = options;
  graphCopy = graph;
  if ([optionsCopy includeUnverified])
  {
    v7 = 1;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__PGSharingManager_canProvideSuggestionsWithOptions_forGraph___block_invoke;
    v9[3] = &unk_2788850E0;
    v11 = &v17;
    v10 = optionsCopy;
    v12 = &v13;
    [graphCopy enumeratePersonNodesIncludingMe:0 withBlock:v9];
    if (v18[3])
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v14 + 24);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  return v7 & 1;
}

void __62__PGSharingManager_canProvideSuggestionsWithOptions_forGraph___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 contactIdentifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = 40;
LABEL_3:
    *(*(*(a1 + v7) + 8) + 24) = 1;
    *a3 = 1;
    goto LABEL_7;
  }

  if ([*(a1 + 32) useContactSuggestion])
  {
    v8 = [v10 suggestedContactIdentifier];
    v9 = [v8 length];

    if (v9)
    {
      v7 = 48;
      goto LABEL_3;
    }
  }

LABEL_7:
}

- (id)suggestionResultsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers options:(id)options
{
  v75 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  localIdentifiersCopy = localIdentifiers;
  optionsCopy = options;
  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  v12 = [localIdentifiersCopy count];
  v13 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    info = 0;
    mach_timebase_info(&info);
    v14 = mach_absolute_time();
    if (!optionsCopy)
    {
      optionsCopy = [objc_opt_class() _defaultOptions];
    }

    if ([optionsCopy includeUnverified])
    {
      [optionsCopy setIncludeUnverified:{-[PGSharingManager _canIncludeUnverified](self, "_canIncludeUnverified")}];
    }

    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__3417;
    v66 = __Block_byref_object_dispose__3418;
    v67 = v13;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__3417;
    v60 = __Block_byref_object_dispose__3418;
    v61 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__3417;
    v54 = __Block_byref_object_dispose__3418;
    v55 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 1;
    workingContext = self->_workingContext;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke;
    v39[3] = &unk_27887F3A0;
    v43 = &v46;
    v39[4] = self;
    optionsCopy = optionsCopy;
    v40 = optionsCopy;
    v44 = &v50;
    v41 = identifiersCopy;
    v42 = localIdentifiersCopy;
    v45 = &v56;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v39];
    if (v47[3])
    {
      v16 = v14;
      v17 = objc_opt_new();
      v18 = [v57[5] count];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_265;
      block[3] = &unk_27887F3C8;
      block[4] = self;
      v37 = &v56;
      v19 = optionsCopy;
      v34 = v19;
      v20 = loggingConnection;
      v35 = v20;
      v38 = &v50;
      v21 = v17;
      v36 = v21;
      dispatch_apply(v18, 0, block);
      if ([v21 count])
      {
        v22 = self->_workingContext;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_267;
        v29[3] = &unk_278889308;
        v32 = &v62;
        v29[4] = self;
        v30 = v21;
        v31 = v19;
        [(PGManagerWorkingContext *)v22 performSynchronousConcurrentGraphReadUsingBlock:v29];
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v51[5];
        *buf = 138412290;
        v70 = v23;
        _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No suggestions found for %@", buf, 0xCu);
      }

      v24 = v20;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v63[5] count];
        v26 = mach_absolute_time();
        v27 = v63[5];
        *buf = 134218498;
        v70 = v25;
        v71 = 2048;
        v72 = ((((v26 - v16) * info.numer) / info.denom) / 1000000.0);
        v73 = 2112;
        v74 = v27;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Returning %lu suggestions in %.4fms:\n%@", buf, 0x20u);
      }

      v13 = v63[5];
    }

    else
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v70 = optionsCopy;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Cannot run with options %@, no eligible persons to suggest", buf, 0xCu);
      }

      v13 = MEMORY[0x277CBEBF8];
    }

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v50, 8);

    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v62, 8);
  }

  return v13;
}

void __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke(uint64_t a1, void *a2)
{
  v13 = [a2 graph];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) canProvideSuggestionsWithOptions:*(a1 + 40) forGraph:?];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v3 = [PGSharingSuggestionInput alloc];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = [*(*(a1 + 32) + 8) photoLibrary];
    v7 = [(PGSharingSuggestionInput *)v3 initWithAssetLocalIdentifiers:v4 momentLocalIdentifiers:v5 graph:v13 photoLibrary:v6];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(a1 + 32) suggestionSourcesForSharingStream:{objc_msgSend(*(a1 + 40), "sharingStream")}];
    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_265(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_2;
  v10[3] = &unk_278884610;
  v13 = *(a1 + 64);
  v15 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 72);
  v9 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v9;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v11 = v8;
  v12 = v7;
  [v3 performSynchronousConcurrentGraphReadUsingBlock:v10];
}

void __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_267(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) allValues];
  v6 = *(a1 + 48);
  v7 = [v3 graph];
  v8 = [v4 _filteredSuggestionResults:v5 withOptions:v6 graph:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) _sortedSuggestionResults:*(*(*(a1 + 56) + 8) + 40) withOptions:*(a1 + 48)];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if ([*(a1 + 48) useContactSuggestion])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18++) setUseContactSuggestion:{1, v19}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }
}

void __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:*(a1 + 80)];
  if (([v4 canRunWithOptions:*(a1 + 32)] & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 32);
    *buf = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = v13;
    v14 = "[Sharing Suggestion] Source %@ cannot run with options %@";
LABEL_10:
    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
    goto LABEL_11;
  }

  if (([v4 canRunWithInput:*(*(*(a1 + 72) + 8) + 40)] & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = v15;
    v14 = "[Sharing Suggestion] Source %@ cannot run with input %@";
    goto LABEL_10;
  }

  info = 0;
  mach_timebase_info(&info);
  v5 = mach_absolute_time();
  v6 = [v4 suggestedResultsForInput:*(*(*(a1 + 72) + 8) + 40) withOptions:*(a1 + 32)];
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 count];
    v10 = mach_absolute_time();
    *buf = 138413058;
    v18 = v4;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = ((((v10 - v5) * info.numer) / info.denom) / 1000000.0);
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Source %@ returned %lu suggestions in %.4fms:\n%@", buf, 0x2Au);
  }

  v11 = *(a1 + 48);
  objc_sync_enter(v11);
  [*(a1 + 48) _mergeSuggestionResultByPersonIdentifer:*(a1 + 56) withSourceSuggestionResults:v6];
  objc_sync_exit(v11);

LABEL_11:
}

- (id)suggestionSourcesForSharingStream:(unint64_t)stream
{
  streamCopy = stream;
  v5 = objc_opt_new();
  if (streamCopy)
  {
    presenceStream = [(PGSharingManager *)self presenceStream];
    [v5 addObjectsFromArray:presenceStream];
  }

  if ((streamCopy & 2) != 0)
  {
    contextualStream = [(PGSharingManager *)self contextualStream];
    [v5 addObjectsFromArray:contextualStream];
  }

  return v5;
}

- (id)contextualStream
{
  v11[7] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11[0] = v2;
  v3 = objc_opt_new();
  v11[1] = v3;
  v4 = objc_opt_new();
  v11[2] = v4;
  v5 = objc_opt_new();
  v11[3] = v5;
  v6 = objc_opt_new();
  v11[4] = v6;
  v7 = objc_opt_new();
  v11[5] = v7;
  v8 = objc_opt_new();
  v11[6] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:7];

  return v9;
}

- (id)presenceStream
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11[0] = v3;
  v4 = [PGSharingSuggestionSourceMergeCandidates alloc];
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  v6 = [(PGSharingSuggestionSourceMergeCandidates *)v4 initWithServiceManager:serviceManager];
  v11[1] = v6;
  v7 = objc_opt_new();
  v11[2] = v7;
  v8 = objc_opt_new();
  v11[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

  return v9;
}

- (PGSharingManager)initWithWorkingContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PGSharingManager;
  v6 = [(PGSharingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, context);
  }

  return v7;
}

+ (id)_defaultOptions
{
  v2 = objc_opt_new();

  return v2;
}

@end