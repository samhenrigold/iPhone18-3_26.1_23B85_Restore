@interface TISceneTaxonomyGenerator
- (NLTagger)tagger;
- (NSSet)phrases;
- (NSSet)taxonomyIdentifiers;
- (NSSet)taxonomyIdentifiersAllowListSynonymExclusions;
- (TISceneTaxonomyGenerator)init;
- (id)_extractTokensForStickerComputation:(id)computation;
- (id)_generateQueries:(id)queries tokenize:(BOOL)tokenize;
- (id)_generateQueryTokens:(id)tokens;
- (id)_generateSearchableQueries:(id)queries disablePhraseListCheck:(BOOL)check;
- (id)_generateTokens:(id)tokens;
- (id)_generateTokensFromInputString:(id)string;
- (id)generateSearchableQueriesForText:(id)text tokenize:(BOOL)tokenize generativeEmojiSearchQueries:(BOOL)queries;
@end

@implementation TISceneTaxonomyGenerator

- (id)_generateSearchableQueries:(id)queries disablePhraseListCheck:(BOOL)check
{
  queriesCopy = queries;
  array = [MEMORY[0x277CBEB18] array];
  v8 = array;
  if (queriesCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__TISceneTaxonomyGenerator__generateSearchableQueries_disablePhraseListCheck___block_invoke;
    v12[3] = &unk_278733550;
    checkCopy = check;
    v9 = array;
    v13 = v9;
    selfCopy = self;
    [queriesCopy enumerateObjectsUsingBlock:v12];
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __78__TISceneTaxonomyGenerator__generateSearchableQueries_disablePhraseListCheck___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ((*(a1 + 48) & 1) != 0 || ([*(a1 + 40) phrases], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "normalizedQueryString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "containsObject:", v4), v4, v3, v5))
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (id)_generateQueries:(id)queries tokenize:(BOOL)tokenize
{
  tokenizeCopy = tokenize;
  v23[1] = *MEMORY[0x277D85DE8];
  queriesCopy = queries;
  if (!queriesCopy)
  {
    v10 = 0;
    goto LABEL_16;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [queriesCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  lastObject = [v8 lastObject];

  if (([lastObject _looksLikeEmailAddress] & 1) == 0 && (objc_msgSend(lastObject, "_looksLikeURL") & 1) == 0)
  {
    if (tokenizeCopy)
    {
      v11 = [(TISceneTaxonomyGenerator *)self _generateTokensFromInputString:queriesCopy];
      if (![v11 count])
      {
        v10 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v22 = lastObject;
    }

    else
    {
      v22 = lastObject;
      v12 = [[TIStickerQuery alloc] initWithQueryString:queriesCopy];
      v23[0] = v12;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    }

    v13 = [(TISceneTaxonomyGenerator *)self _extractTokensForStickerComputation:v11, v11];
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    if ([v13 count])
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = [v13 subarrayWithRange:{v15, objc_msgSend(v13, "count") + v14}];
        v17 = [v16 valueForKey:@"queryString"];
        v18 = [v17 componentsJoinedByString:@" "];

        v19 = [[TIStickerQuery alloc] initWithQueryString:v18];
        [v10 addObject:v19];
        ++v15;

        --v14;
      }

      while (v15 < [v13 count]);
    }

    v11 = v21;
    lastObject = v22;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_15:

LABEL_16:

  return v10;
}

- (id)_generateTokensFromInputString:(id)string
{
  stringCopy = string;
  phrases = [(TISceneTaxonomyGenerator *)self phrases];

  if (phrases)
  {
    v6 = [(TISceneTaxonomyGenerator *)self _generateQueryTokens:stringCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_extractTokensForStickerComputation:(id)computation
{
  computationCopy = computation;
  v4 = computationCopy;
  if (computationCopy)
  {
    v5 = computationCopy;
    if ([v5 count] >= 9)
    {
      v6 = [v5 subarrayWithRange:{objc_msgSend(v5, "count") - 8, 8}];

      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_generateTokens:(id)tokens
{
  tokensCopy = tokens;
  tagger = [(TISceneTaxonomyGenerator *)self tagger];
  [tagger setString:tokensCopy];

  array = [MEMORY[0x277CBEB18] array];
  tagger2 = [(TISceneTaxonomyGenerator *)self tagger];
  v8 = [tokensCopy length];
  v9 = *MEMORY[0x277CD8978];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__TISceneTaxonomyGenerator__generateTokens___block_invoke;
  v15[3] = &unk_278733528;
  v16 = tokensCopy;
  v10 = array;
  v17 = v10;
  v11 = tokensCopy;
  [tagger2 enumerateTagsInRange:0 unit:v8 scheme:0 options:v9 usingBlock:{6, v15}];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __44__TISceneTaxonomyGenerator__generateTokens___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) substringWithRange:?];
    v3 = [v5 localizedLowercaseString];
    v4 = [v3 decomposedStringWithCanonicalMapping];
    [*(a1 + 40) addObject:v4];
  }
}

- (id)_generateQueryTokens:(id)tokens
{
  tokensCopy = tokens;
  tagger = [(TISceneTaxonomyGenerator *)self tagger];
  [tagger setString:tokensCopy];

  array = [MEMORY[0x277CBEB18] array];
  tagger2 = [(TISceneTaxonomyGenerator *)self tagger];
  v8 = [tokensCopy length];
  v9 = *MEMORY[0x277CD8978];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__TISceneTaxonomyGenerator__generateQueryTokens___block_invoke;
  v15[3] = &unk_278733528;
  v16 = tokensCopy;
  v10 = array;
  v17 = v10;
  v11 = tokensCopy;
  [tagger2 enumerateTagsInRange:0 unit:v8 scheme:0 options:v9 usingBlock:{6, v15}];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __49__TISceneTaxonomyGenerator__generateQueryTokens___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) substringWithRange:?];
    v3 = [[TIStickerQuery alloc] initWithQueryString:v4];
    [*(a1 + 40) addObject:v3];
  }
}

- (id)generateSearchableQueriesForText:(id)text tokenize:(BOOL)tokenize generativeEmojiSearchQueries:(BOOL)queries
{
  queriesCopy = queries;
  tokenizeCopy = tokenize;
  v23 = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (![textCopy length])
  {
    goto LABEL_10;
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || (notSupportingInputModes = self->_notSupportingInputModes, [MEMORY[0x277CBEAF8] currentLocale], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "languageCode"), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(notSupportingInputModes) = -[NSArray containsObject:](notSupportingInputModes, "containsObject:", v11), v11, v10, !notSupportingInputModes))
  {
    phrases = [(TISceneTaxonomyGenerator *)self phrases];

    if (phrases)
    {
      v18 = [(TISceneTaxonomyGenerator *)self _generateQueries:textCopy tokenize:tokenizeCopy];
      v19 = [(TISceneTaxonomyGenerator *)self _generateSearchableQueries:v18 disablePhraseListCheck:queriesCopy];

      goto LABEL_11;
    }

    v12 = UnicodeScalar.__ivar_initializer();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Localized phrases haven't be set", "-[TISceneTaxonomyGenerator generateSearchableQueriesForText:tokenize:generativeEmojiSearchQueries:]"];
    *buf = 138412290;
    v22 = v16;
    _os_log_error_impl(&dword_22CA55000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    goto LABEL_15;
  }

  v12 = UnicodeScalar.__ivar_initializer();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = MEMORY[0x277CCACA8];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale languageCode];
    v16 = [v13 stringWithFormat:@"%s The locale %@ is not supported.", "-[TISceneTaxonomyGenerator generateSearchableQueriesForText:tokenize:generativeEmojiSearchQueries:]", languageCode];
    *buf = 138412290;
    v22 = v16;
    _os_log_error_impl(&dword_22CA55000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

LABEL_15:
  }

LABEL_9:

LABEL_10:
  v19 = 0;
LABEL_11:

  return v19;
}

- (NSSet)phrases
{
  v55 = *MEMORY[0x277D85DE8];
  phrases = self->_phrases;
  if (phrases)
  {
LABEL_31:
    v31 = phrases;
    goto LABEL_32;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  initWithLatestTaxonomy = [objc_alloc(MEMORY[0x277D3B4C8]) initWithLatestTaxonomy];
  if (initWithLatestTaxonomy)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    taxonomyIdentifiersAllowListSynonymExclusions = [(TISceneTaxonomyGenerator *)self taxonomyIdentifiersAllowListSynonymExclusions];
    v6 = [taxonomyIdentifiersAllowListSynonymExclusions countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v49;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v49 != v8)
          {
            objc_enumerationMutation(taxonomyIdentifiersAllowListSynonymExclusions);
          }

          v10 = *(*(&v48 + 1) + 8 * i);
          [initWithLatestTaxonomy nodeRefForSceneClassId:{objc_msgSend(v10, "unsignedIntValue")}];
          v11 = PFSceneTaxonomyNodeLocalizedLabel();
          if (v11)
          {
            v12 = [(TISceneTaxonomyGenerator *)self _generateTokens:v11];
            v13 = [v12 componentsJoinedByString:@" "];
            [v4 setObject:v10 forKey:v13];
          }
        }

        v7 = [taxonomyIdentifiersAllowListSynonymExclusions countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v7);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(TISceneTaxonomyGenerator *)self taxonomyIdentifiers];
    v35 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v35)
    {
      v34 = *v45;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * j);
          [initWithLatestTaxonomy nodeRefForSceneClassId:{objc_msgSend(v15, "unsignedIntValue")}];
          v16 = PFSceneTaxonomyNodeLocalizedLabel();
          if (v16)
          {
            v17 = [(TISceneTaxonomyGenerator *)self _generateTokens:v16];
            v18 = [v17 componentsJoinedByString:@" "];
            [v4 setObject:v15 forKey:v18];
          }

          v19 = PFSceneTaxonomyNodeLocalizedSynonyms();
          if ([v19 count])
          {
            v37 = v16;
            v38 = j;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v36 = v19;
            v20 = v19;
            v21 = [v20 countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v41;
              do
              {
                for (k = 0; k != v22; ++k)
                {
                  if (*v41 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = [(TISceneTaxonomyGenerator *)self _generateTokens:*(*(&v40 + 1) + 8 * k)];
                  v26 = [v25 componentsJoinedByString:@" "];
                  [v4 setObject:v15 forKey:v26];
                }

                v22 = [v20 countByEnumeratingWithState:&v40 objects:v52 count:16];
              }

              while (v22);
            }

            v16 = v37;
            j = v38;
            v19 = v36;
          }
        }

        v35 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v35);
    }

    v27 = MEMORY[0x277CBEB98];
    allKeys = [v4 allKeys];
    v29 = [v27 setWithArray:allKeys];
    v30 = self->_phrases;
    self->_phrases = v29;

    phrases = self->_phrases;
    goto LABEL_31;
  }

  v31 = 0;
LABEL_32:

  return v31;
}

- (NSSet)taxonomyIdentifiersAllowListSynonymExclusions
{
  v13 = *MEMORY[0x277D85DE8];
  taxonomyIdentifiersAllowListSynonymExclusions = self->_taxonomyIdentifiersAllowListSynonymExclusions;
  if (!taxonomyIdentifiersAllowListSynonymExclusions)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB98]);
    v5 = TIGetStickerTaxonomyIdentifiersAllowListSynonymExclusions();
    v6 = [v4 initWithArray:v5];
    v7 = self->_taxonomyIdentifiersAllowListSynonymExclusions;
    self->_taxonomyIdentifiersAllowListSynonymExclusions = v6;

    taxonomyIdentifiersAllowListSynonymExclusions = self->_taxonomyIdentifiersAllowListSynonymExclusions;
    if (!taxonomyIdentifiersAllowListSynonymExclusions)
    {
      v8 = UnicodeScalar.__ivar_initializer();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s StickerTaxonomyIdentifiersAllowListSynonymExclusions file does not have any identifiers. All the taxonomy should extend allow-list with their synonyms", "-[TISceneTaxonomyGenerator taxonomyIdentifiersAllowListSynonymExclusions]"];
        *buf = 138412290;
        v12 = v9;
        _os_log_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      taxonomyIdentifiersAllowListSynonymExclusions = self->_taxonomyIdentifiersAllowListSynonymExclusions;
    }
  }

  return taxonomyIdentifiersAllowListSynonymExclusions;
}

- (NSSet)taxonomyIdentifiers
{
  v15 = *MEMORY[0x277D85DE8];
  taxonomyIdentifiers = self->_taxonomyIdentifiers;
  if (!taxonomyIdentifiers)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB58]);
    v5 = TIGetStickerTaxonomyIdentifiers();
    v6 = [v4 initWithArray:v5];

    taxonomyIdentifiersAllowListSynonymExclusions = [(TISceneTaxonomyGenerator *)self taxonomyIdentifiersAllowListSynonymExclusions];
    [v6 minusSet:taxonomyIdentifiersAllowListSynonymExclusions];

    v8 = [v6 copy];
    v9 = self->_taxonomyIdentifiers;
    self->_taxonomyIdentifiers = v8;

    taxonomyIdentifiers = self->_taxonomyIdentifiers;
    if (!taxonomyIdentifiers)
    {
      v10 = UnicodeScalar.__ivar_initializer();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s No taxonomy identifiers available", "-[TISceneTaxonomyGenerator taxonomyIdentifiers]"];
        *buf = 138412290;
        v14 = v11;
        _os_log_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      taxonomyIdentifiers = self->_taxonomyIdentifiers;
    }
  }

  return taxonomyIdentifiers;
}

- (NLTagger)tagger
{
  v9[1] = *MEMORY[0x277D85DE8];
  tagger = self->_tagger;
  if (!tagger)
  {
    v4 = objc_alloc(MEMORY[0x277CD89D8]);
    v9[0] = *MEMORY[0x277CD8978];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [v4 initWithTagSchemes:v5];
    v7 = self->_tagger;
    self->_tagger = v6;

    tagger = self->_tagger;
  }

  return tagger;
}

- (TISceneTaxonomyGenerator)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = TISceneTaxonomyGenerator;
  v2 = [(TISceneTaxonomyGenerator *)&v13 init];
  if (v2)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      notSupportingInputModes = v2->_notSupportingInputModes;
      v2->_notSupportingInputModes = &unk_28400BB80;

      v4 = v2->_notSupportingInputModes;
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      languageCode = [currentLocale languageCode];
      LODWORD(v4) = [(NSArray *)v4 containsObject:languageCode];

      if (v4)
      {
        v7 = UnicodeScalar.__ivar_initializer();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = MEMORY[0x277CCACA8];
          currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
          languageCode2 = [currentLocale2 languageCode];
          v12 = [v9 stringWithFormat:@"%s The locale %@ is not supported. Sticker Suggestion would be disabled.", "-[TISceneTaxonomyGenerator init]", languageCode2];
          *buf = 138412290;
          v15 = v12;
          _os_log_error_impl(&dword_22CA55000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  return v2;
}

@end