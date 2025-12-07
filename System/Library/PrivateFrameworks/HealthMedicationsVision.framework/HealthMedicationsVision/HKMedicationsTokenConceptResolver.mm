@interface HKMedicationsTokenConceptResolver
- (HKMedicationsTokenConceptResolver)initWithAssetInterface:(id)interface;
- (double)_tokenMatchScoreForMedication:(id)medication usingTokens:(id)tokens;
- (id)_collectAllMedicationCandidatesUsingTokens:(id)tokens;
- (id)_expandedMedicationsFromCandidates:(id)candidates;
- (id)rankMedicationsUsingTokens:(id)tokens candidates:(id)candidates;
- (id)recognizedMedicationsFromTextBlock:(id)block;
- (id)recognizedMedicationsFromTranscript:(id)transcript;
- (id)removeMedicationsFromNoisyTokensUsingTokens:(id)tokens candidates:(id)candidates;
- (id)removeStowawayIngredientsUsingTokens:(id)tokens candidates:(id)candidates;
@end

@implementation HKMedicationsTokenConceptResolver

- (HKMedicationsTokenConceptResolver)initWithAssetInterface:(id)interface
{
  interfaceCopy = interface;
  v9.receiver = self;
  v9.super_class = HKMedicationsTokenConceptResolver;
  v5 = [(HKMedicationsTokenConceptResolver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(HKMedicationsTokenConceptResolver *)v5 setAssetInterface:interfaceCopy];
    v7 = objc_alloc_init(HKMedicationsTokenizer);
    [(HKMedicationsTokenConceptResolver *)v6 setTokenizer:v7];
  }

  return v6;
}

- (id)recognizedMedicationsFromTextBlock:(id)block
{
  getTranscript = [block getTranscript];
  v5 = [(HKMedicationsTokenConceptResolver *)self recognizedMedicationsFromTranscript:getTranscript];

  return v5;
}

- (id)recognizedMedicationsFromTranscript:(id)transcript
{
  transcriptCopy = transcript;
  v5 = objc_autoreleasePoolPush();
  if ([transcriptCopy length])
  {
    tokenizer = [(HKMedicationsTokenConceptResolver *)self tokenizer];
    v7 = [tokenizer wordsFromTranscript:transcriptCopy];

    v8 = [(HKMedicationsTokenConceptResolver *)self _collectAllMedicationCandidatesUsingTokens:v7];
    v9 = [(HKMedicationsTokenConceptResolver *)self _expandedMedicationsFromCandidates:v8];
    v10 = [(HKMedicationsTokenConceptResolver *)self removeMedicationsFromNoisyTokensUsingTokens:v7 candidates:v9];
    v11 = [(HKMedicationsTokenConceptResolver *)self removeStowawayIngredientsUsingTokens:v7 candidates:v10];
    v12 = [(HKMedicationsTokenConceptResolver *)self rankMedicationsUsingTokens:v7 candidates:v11];
    array = [v12 array];
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  objc_autoreleasePoolPop(v5);

  return array;
}

- (id)_collectAllMedicationCandidatesUsingTokens:(id)tokens
{
  v32 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  context = objc_autoreleasePoolPush();
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = tokensCopy;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = objc_alloc(MEMORY[0x277CBEB98]);
        assetInterface = [(HKMedicationsTokenConceptResolver *)self assetInterface];
        v30 = v9;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        v21 = 0;
        v13 = [assetInterface genericMedicationsFromTokens:v12 error:&v21];
        v14 = v21;
        v15 = [v10 initWithArray:v13];

        if (v14)
        {
          _HKInitializeLogging();
          v16 = HKLogMedication();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy = self;
            v28 = 2114;
            v29 = v14;
            _os_log_error_impl(&dword_2518A4000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Error searching generic medication: %{public}@", buf, 0x16u);
          }
        }

        else if ([v15 count])
        {
          [v19 setObject:v15 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);

  return v19;
}

- (id)_expandedMedicationsFromCandidates:(id)candidates
{
  v42 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  context = objc_autoreleasePoolPush();
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = candidatesCopy;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [candidatesCopy allKeys];
  v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v24)
  {
    v21 = *v33;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v32 + 1) + 8 * v5);
        v26 = v5;
        v6 = [v23 objectForKeyedSubscript:context];
        v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          do
          {
            v12 = 0;
            do
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v28 + 1) + 8 * v12);
              assetInterface = [(HKMedicationsTokenConceptResolver *)self assetInterface];
              v27 = 0;
              v15 = [assetInterface expandedGenericMedicationSearchResult:v13 error:&v27];
              v16 = v27;

              if (v16)
              {
                _HKInitializeLogging();
                v17 = HKLogMedication();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  selfCopy = self;
                  v38 = 2112;
                  v39 = v16;
                  _os_log_error_impl(&dword_2518A4000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Error expanding generic medication: %@{public}@", buf, 0x16u);
                }
              }

              else
              {
                [v7 addObject:v15];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v10);
        }

        [v22 setObject:v7 forKeyedSubscript:v25];
        v5 = v26 + 1;
      }

      while (v26 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v24);
  }

  objc_autoreleasePoolPop(context);

  return v22;
}

- (id)removeMedicationsFromNoisyTokensUsingTokens:(id)tokens candidates:(id)candidates
{
  v75 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  candidatesCopy = candidates;
  context = objc_autoreleasePoolPush();
  v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = tokensCopy;
  v38 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v38)
  {
    v37 = *v67;
    do
    {
      v6 = 0;
      do
      {
        if (*v67 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v6;
        v43 = [candidatesCopy objectForKeyedSubscript:{*(*(&v66 + 1) + 8 * v6), context}];
        if (v43)
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v46 = [v43 countByEnumeratingWithState:&v62 objects:v73 count:16];
          if (v46)
          {
            v45 = *v63;
            do
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v63 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                v8 = *(*(&v62 + 1) + 8 * i);
                v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                ingredients = [v8 ingredients];
                v11 = [ingredients countByEnumeratingWithState:&v58 objects:v72 count:16];
                if (v11)
                {
                  v12 = v11;
                  v44 = v8;
                  v47 = i;
                  v48 = ingredients;
                  v13 = *v59;
                  v14 = 0.0;
                  do
                  {
                    for (j = 0; j != v12; ++j)
                    {
                      if (*v59 != v13)
                      {
                        objc_enumerationMutation(v48);
                      }

                      ingredientName = [*(*(&v58 + 1) + 8 * j) ingredientName];
                      tokenizer = [(HKMedicationsTokenConceptResolver *)self tokenizer];
                      v18 = [tokenizer wordsFromTranscript:ingredientName];

                      v56 = 0u;
                      v57 = 0u;
                      v54 = 0u;
                      v55 = 0u;
                      v19 = v18;
                      v20 = [v19 countByEnumeratingWithState:&v54 objects:v71 count:16];
                      if (v20)
                      {
                        v21 = v20;
                        v22 = *v55;
                        do
                        {
                          for (k = 0; k != v21; ++k)
                          {
                            if (*v55 != v22)
                            {
                              objc_enumerationMutation(v19);
                            }

                            v24 = *(*(&v54 + 1) + 8 * k);
                            [v9 addObject:v24];
                            v14 = v14 + [v24 length];
                          }

                          v21 = [v19 countByEnumeratingWithState:&v54 objects:v71 count:16];
                        }

                        while (v21);
                      }
                    }

                    v12 = [v48 countByEnumeratingWithState:&v58 objects:v72 count:16];
                  }

                  while (v12);

                  i = v47;
                  if (v14 > 0.0)
                  {
                    [v9 intersectSet:obj];
                    v52 = 0u;
                    v53 = 0u;
                    v50 = 0u;
                    v51 = 0u;
                    v25 = v9;
                    v26 = [v25 countByEnumeratingWithState:&v50 objects:v70 count:16];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = *v51;
                      v29 = 0.0;
                      do
                      {
                        for (m = 0; m != v27; ++m)
                        {
                          if (*v51 != v28)
                          {
                            objc_enumerationMutation(v25);
                          }

                          v29 = v29 + [*(*(&v50 + 1) + 8 * m) length];
                        }

                        v27 = [v25 countByEnumeratingWithState:&v50 objects:v70 count:16];
                      }

                      while (v27);
                    }

                    else
                    {
                      v29 = 0.0;
                    }

                    v31 = [v25 count];
                    if (v29 / v14 >= 0.5)
                    {
                      v32 = v31;
                      allKeys = [candidatesCopy allKeys];
                      v34 = [allKeys count];

                      if (v32 == v34)
                      {
                        [v40 addObject:v44];
                      }
                    }
                  }
                }

                else
                {
                }
              }

              v46 = [v43 countByEnumeratingWithState:&v62 objects:v73 count:16];
            }

            while (v46);
          }
        }

        v6 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v38);
  }

  objc_autoreleasePoolPop(context);

  return v40;
}

- (id)removeStowawayIngredientsUsingTokens:(id)tokens candidates:(id)candidates
{
  v47 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  candidatesCopy = candidates;
  context = objc_autoreleasePoolPush();
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = candidatesCopy;
  v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v25)
  {
    v24 = *v41;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        ingredients = [v7 ingredients];
        v31 = [ingredients countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (!v31)
        {

LABEL_25:
          [v23 addObject:v7];
          continue;
        }

        v26 = v7;
        v27 = i;
        v9 = 0;
        v30 = *v37;
        v28 = ingredients;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v37 != v30)
            {
              objc_enumerationMutation(v28);
            }

            ingredientName = [*(*(&v36 + 1) + 8 * j) ingredientName];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v12 = tokensCopy;
            v13 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = 0;
              v16 = *v33;
              do
              {
                for (k = 0; k != v14; ++k)
                {
                  if (*v33 != v16)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v18 = *(*(&v32 + 1) + 8 * k);
                  lowercaseString = [ingredientName lowercaseString];
                  LOBYTE(v18) = [lowercaseString containsString:v18];

                  v15 |= v18;
                }

                v14 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
              }

              while (v14);

              v9 |= v15 ^ 1;
            }

            else
            {

              v9 = 1;
            }
          }

          v31 = [v28 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v31);

        v7 = v26;
        i = v27;
        if ((v9 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(context);

  return v23;
}

- (id)rankMedicationsUsingTokens:(id)tokens candidates:(id)candidates
{
  tokensCopy = tokens;
  candidatesCopy = candidates;
  v8 = objc_autoreleasePoolPush();
  allObjects = [candidatesCopy allObjects];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __75__HKMedicationsTokenConceptResolver_rankMedicationsUsingTokens_candidates___block_invoke;
  v18 = &unk_2796D2AC8;
  selfCopy = self;
  v10 = tokensCopy;
  v20 = v10;
  v11 = [allObjects sortedArrayUsingComparator:&v15];

  v12 = objc_alloc(MEMORY[0x277CBEB70]);
  v13 = [v12 initWithArray:{v11, v15, v16, v17, v18, selfCopy}];

  objc_autoreleasePoolPop(v8);

  return v13;
}

uint64_t __75__HKMedicationsTokenConceptResolver_rankMedicationsUsingTokens_candidates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) _tokenMatchScoreForMedication:v5 usingTokens:*(a1 + 40)];
  v8 = v7;
  [*(a1 + 32) _tokenMatchScoreForMedication:v6 usingTokens:*(a1 + 40)];
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v5 genericMedicationName];
      v12 = [v6 genericMedicationName];
      v10 = [v11 caseInsensitiveCompare:v12];
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (double)_tokenMatchScoreForMedication:(id)medication usingTokens:(id)tokens
{
  v29 = *MEMORY[0x277D85DE8];
  medicationCopy = medication;
  tokensCopy = tokens;
  context = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = medicationCopy;
  ingredients = [medicationCopy ingredients];
  v10 = [ingredients countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(ingredients);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        tokenizer = [(HKMedicationsTokenConceptResolver *)self tokenizer];
        ingredientName = [v14 ingredientName];
        v17 = [tokenizer wordsFromTranscript:ingredientName];
        [v8 unionSet:v17];

        ++v13;
      }

      while (v11 != v13);
      v11 = [ingredients countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v18 = [v8 mutableCopy];
  [v18 intersectSet:tokensCopy];
  v19 = [v18 count];
  v20 = [v8 count];

  objc_autoreleasePoolPop(context);
  return v19 / v20;
}

@end