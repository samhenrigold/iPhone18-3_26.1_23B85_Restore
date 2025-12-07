@interface ATXLayoutGenerator
+ (id)sortLayouts:(id)layouts;
- (ATXLayoutGenerator)initWithRankedSuggestions:(id)suggestions layoutsToConsider:(id)consider hyperParameters:(id)parameters suggestionDeduplicator:(id)deduplicator;
- (double)marginalScoreForSuggestion:(id)suggestion topRankingSuggestion:(id)rankingSuggestion;
- (double)weightForConfidenceCategory:(int64_t)category;
- (id)generateGreedySuggestionLayoutForUILayoutType:(int64_t)type layoutTypesForRankedSuggestions:(id)suggestions isSuggestionsWidgetLayout:(BOOL)layout;
- (id)generateLayoutToSuggestionDictionary;
- (id)generateValidLayouts;
- (id)uuidOfHighestConfidenceSuggestionFromRankedSuggestions:(id)suggestions uiLayoutType:(int64_t)type;
- (void)scoreLayout:(id)layout;
@end

@implementation ATXLayoutGenerator

- (ATXLayoutGenerator)initWithRankedSuggestions:(id)suggestions layoutsToConsider:(id)consider hyperParameters:(id)parameters suggestionDeduplicator:(id)deduplicator
{
  suggestionsCopy = suggestions;
  considerCopy = consider;
  parametersCopy = parameters;
  deduplicatorCopy = deduplicator;
  v18.receiver = self;
  v18.super_class = ATXLayoutGenerator;
  v15 = [(ATXLayoutGenerator *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_rankedSuggestions, suggestions);
    objc_storeStrong(&v16->_layoutsToConsider, consider);
    objc_storeStrong(&v16->_hyperParameters, parameters);
    objc_storeStrong(&v16->_deduplicator, deduplicator);
  }

  return v16;
}

- (id)generateValidLayouts
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  generateLayoutToSuggestionDictionary = [(ATXLayoutGenerator *)self generateLayoutToSuggestionDictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_layoutsToConsider;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = -[ATXLayoutGenerator generateGreedySuggestionLayoutForUILayoutType:layoutTypesForRankedSuggestions:isSuggestionsWidgetLayout:](self, "generateGreedySuggestionLayoutForUILayoutType:layoutTypesForRankedSuggestions:isSuggestionsWidgetLayout:", [v10 integerValue], generateLayoutToSuggestionDictionary, 1);
        if (v11)
        {
          [v3 addObject:v11];
        }

        v12 = -[ATXLayoutGenerator generateGreedySuggestionLayoutForUILayoutType:layoutTypesForRankedSuggestions:isSuggestionsWidgetLayout:](self, "generateGreedySuggestionLayoutForUILayoutType:layoutTypesForRankedSuggestions:isSuggestionsWidgetLayout:", [v10 integerValue], generateLayoutToSuggestionDictionary, 0);
        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [objc_opt_class() sortLayouts:v3];

  return v13;
}

- (id)generateLayoutToSuggestionDictionary
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_rankedSuggestions;
  v23 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v4;
        v5 = *(*(&v29 + 1) + 8 * v4);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        uiSpecification = [v5 uiSpecification];
        preferredLayoutConfigs = [uiSpecification preferredLayoutConfigs];

        v8 = [preferredLayoutConfigs countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v26;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(preferredLayoutConfigs);
              }

              v12 = *(*(&v25 + 1) + 8 * i);
              v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "applicableLayoutType")}];
              v14 = [v3 objectForKeyedSubscript:v13];

              if (!v14)
              {
                v15 = objc_opt_new();
                v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "applicableLayoutType")}];
                [v3 setObject:v15 forKeyedSubscript:v16];
              }

              v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "applicableLayoutType")}];
              v18 = [v3 objectForKeyedSubscript:v17];
              [v18 addObject:v5];
            }

            v9 = [preferredLayoutConfigs countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v9);
        }

        v4 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  v19 = [v3 copy];

  return v19;
}

- (id)generateGreedySuggestionLayoutForUILayoutType:(int64_t)type layoutTypesForRankedSuggestions:(id)suggestions isSuggestionsWidgetLayout:(BOOL)layout
{
  layoutCopy = layout;
  v108 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v6 = 0x1E86A3000uLL;
  v79 = [ATXSuggestionLayout minSuggestionLayoutTypesForUILayoutType:type];
  typeCopy = type;
  v92 = [ATXSuggestionLayout maxSuggestionLayoutTypesForUILayoutType:type];
  v90 = objc_opt_new();
  v7 = 1;
  v8 = 0x1E696A000uLL;
  v93 = objc_opt_new();
  do
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v10 = [suggestionsCopy objectForKeyedSubscript:v9];
    v11 = [v10 count];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v13 = [v79 objectForKeyedSubscript:v12];
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    if (v11 < unsignedIntegerValue)
    {
      v48 = __atxlog_handle_blending(v15);
      v18 = v93;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [ATXSuggestionLayout stringFromUILayoutType:typeCopy];
        *buf = 138412290;
        v103 = v49;
        _os_log_impl(&dword_1DEFC4000, v48, OS_LOG_TYPE_DEFAULT, "Blending: Don't have enough suggestions to create UI layout %@", buf, 0xCu);
      }

      v50 = 0;
      v51 = v90;
      goto LABEL_53;
    }

    v16 = objc_opt_new();
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v18 = v93;
    [v93 setObject:v16 forKeyedSubscript:v17];

    ++v7;
  }

  while (v7 != 8);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = self->_rankedSuggestions;
  v19 = [(NSArray *)obj countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (v19)
  {
    v20 = v19;
    v88 = 0;
    v21 = *v99;
    v22 = !layoutCopy;
    v87 = 1;
    v80 = *v99;
    while (1)
    {
      v23 = 0;
      v81 = v20;
      do
      {
        if (*v99 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v98 + 1) + 8 * v23);
        v25 = objc_autoreleasePoolPush();
        isValidForSuggestionsWidget = [v24 isValidForSuggestionsWidget];
        if (!isValidForSuggestionsWidget || layoutCopy)
        {
          if ((isValidForSuggestionsWidget | v22) != 1)
          {
            goto LABEL_39;
          }

LABEL_15:
          v84 = v25;
          v85 = v23;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          uiSpecification = [v24 uiSpecification];
          preferredLayoutConfigs = [uiSpecification preferredLayoutConfigs];

          v29 = [preferredLayoutConfigs countByEnumeratingWithState:&v94 objects:v106 count:16];
          if (!v29)
          {
            goto LABEL_38;
          }

          v30 = v29;
          v31 = *v95;
          while (2)
          {
            v32 = 0;
LABEL_18:
            if (*v95 != v31)
            {
              objc_enumerationMutation(preferredLayoutConfigs);
            }

            v33 = [*(v8 + 3480) numberWithInteger:{objc_msgSend(*(*(&v94 + 1) + 8 * v32), "applicableLayoutType")}];
            v34 = [v18 objectForKeyedSubscript:v33];
            v35 = [v34 count];
            v36 = [v92 objectForKeyedSubscript:v33];
            unsignedIntegerValue2 = [v36 unsignedIntegerValue];

            if (v35 >= unsignedIntegerValue2)
            {
              goto LABEL_35;
            }

            executableSpecification = [v24 executableSpecification];
            if (![executableSpecification executableType])
            {
              goto LABEL_24;
            }

            executableSpecification2 = [v24 executableSpecification];
            if ([executableSpecification2 executableType] == 3)
            {

LABEL_24:
              v40 = typeCopy;
LABEL_25:
              if ((v40 > 0x10 || ((1 << v40) & 0x10428) == 0) && ![ATXSuggestionLayout isCompositeLayout:?])
              {
LABEL_35:
                v18 = v93;
                goto LABEL_36;
              }
            }

            else
            {
              executableSpecification3 = [v24 executableSpecification];
              executableType = [executableSpecification3 executableType];

              v40 = typeCopy;
              if (executableType == 4)
              {
                goto LABEL_25;
              }
            }

            v41 = [(ATXUniversalSuggestionDeduplicatorProtocol *)self->_deduplicator suggestionIsDuplicate:v24 existingSuggestions:v90];
            v18 = v93;
            if (v41)
            {
              v42 = __atxlog_handle_blending(v41);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v103 = v24;
                _os_log_debug_impl(&dword_1DEFC4000, v42, OS_LOG_TYPE_DEBUG, "Ignore duplicate prediction while building layout. Suggestion: %@", buf, 0xCu);
              }
            }

            else
            {
              v43 = [v93 objectForKeyedSubscript:v33];
              [v43 addObject:v24];

              [v90 addObject:v24];
              v87 &= isValidForSuggestionsWidget;
              scoreSpecification = [v24 scoreSpecification];
              v45 = [scoreSpecification suggestedConfidenceCategory] > 2;

              v88 |= v45;
            }

LABEL_36:
            v8 = 0x1E696A000;

            if (v30 == ++v32)
            {
              v30 = [preferredLayoutConfigs countByEnumeratingWithState:&v94 objects:v106 count:16];
              if (!v30)
              {
LABEL_38:

                v6 = 0x1E86A3000;
                v21 = v80;
                v20 = v81;
                v22 = !layoutCopy;
                v25 = v84;
                v23 = v85;
                goto LABEL_39;
              }

              continue;
            }

            goto LABEL_18;
          }
        }

        v26 = [*(v6 + 2600) isCompositeLayout:typeCopy];
        if (isValidForSuggestionsWidget | v22) == 1 && (v26)
        {
          goto LABEL_15;
        }

LABEL_39:
        objc_autoreleasePoolPop(v25);
        ++v23;
      }

      while (v23 != v20);
      v20 = [(NSArray *)obj countByEnumeratingWithState:&v98 objects:v107 count:16];
      if (!v20)
      {
        goto LABEL_46;
      }
    }
  }

  v87 = 1;
  v88 = 0;
LABEL_46:

  for (i = 1; i != 8; ++i)
  {
    v53 = [*(v8 + 3480) numberWithUnsignedInteger:i];
    v54 = [v18 objectForKeyedSubscript:v53];
    v55 = v8;
    v56 = [v54 count];
    v57 = [*(v55 + 3480) numberWithUnsignedInteger:i];
    v58 = [v92 objectForKeyedSubscript:v57];
    unsignedIntegerValue3 = [v58 unsignedIntegerValue];

    if (v56 > unsignedIntegerValue3 || ([*(v55 + 3480) numberWithUnsignedInteger:i], v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", v60), v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "count"), objc_msgSend(*(v55 + 3480), "numberWithUnsignedInteger:", i), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v79, "objectForKeyedSubscript:", v63), v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v64, "unsignedIntegerValue"), v64, v63, v61, v60, v62 < v65))
    {
      v50 = 0;
      v51 = v90;
      goto LABEL_55;
    }

    v8 = 0x1E696A000;
  }

  v66 = objc_alloc(*(v6 + 2600));
  v67 = [v18 objectForKeyedSubscript:&unk_1F5A411B8];
  v68 = [v18 objectForKeyedSubscript:&unk_1F5A411D0];
  v69 = [v18 objectForKeyedSubscript:&unk_1F5A411E8];
  v70 = [v18 objectForKeyedSubscript:&unk_1F5A41200];
  v71 = [v18 objectForKeyedSubscript:&unk_1F5A41218];
  v72 = [v18 objectForKeyedSubscript:&unk_1F5A41230];
  v73 = [v18 objectForKeyedSubscript:&unk_1F5A41248];
  v50 = [v66 initWithLayoutType:typeCopy oneByOneSuggestions:v67 oneByTwoSuggestions:v68 twoByTwoSuggestions:v69 oneByFourSuggestions:v70 twoByFourSuggestions:v71 fourByFourSuggestions:v72 fourByEightSuggestions:v73];

  [v50 setIsValidForSuggestionsWidget:v87 & 1];
  [v50 setConfidenceWarrantsSnappingOrNPlusOne:v88 & 1];
  v51 = v90;
  v74 = [(ATXLayoutGenerator *)self uuidOfHighestConfidenceSuggestionFromRankedSuggestions:v90 uiLayoutType:typeCopy];
  [v50 setUuidOfHighestConfidenceSuggestion:v74];

  v48 = __atxlog_handle_blending([(ATXLayoutGenerator *)self scoreLayout:v50]);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v75 = [ATXSuggestionLayout stringFromUILayoutType:typeCopy];
    [v50 layoutScore];
    *buf = 138412546;
    v103 = v75;
    v104 = 2048;
    v105 = v76;
    _os_log_impl(&dword_1DEFC4000, v48, OS_LOG_TYPE_DEFAULT, "Blending: Created UI layout %@ (score: %.2f)", buf, 0x16u);
  }

  v18 = v93;
LABEL_53:

LABEL_55:

  return v50;
}

- (id)uuidOfHighestConfidenceSuggestionFromRankedSuggestions:(id)suggestions uiLayoutType:(int64_t)type
{
  suggestionsCopy = suggestions;
  if ([suggestionsCopy count])
  {
    if (type)
    {
      firstObject = [suggestionsCopy firstObject];
      uuid = [(ATXSuggestionReranker *)firstObject uuid];
    }

    else
    {
      firstObject = [[ATXSuggestionReranker alloc] initWithProactiveSuggestions:suggestionsCopy hyperParameters:self->_hyperParameters];
      rerankedSuggestions = [(ATXSuggestionReranker *)firstObject rerankedSuggestions];
      firstObject2 = [rerankedSuggestions firstObject];
      uuid = [firstObject2 uuid];
    }
  }

  else
  {
    v9 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXLayoutGenerator uuidOfHighestConfidenceSuggestionFromRankedSuggestions:v9 uiLayoutType:?];
    }

    uuid = objc_opt_new();
  }

  return uuid;
}

- (void)scoreLayout:(id)layout
{
  layoutCopy = layout;
  firstObject = [(NSArray *)self->_rankedSuggestions firstObject];
  if (firstObject)
  {
    v6 = +[ATXSuggestionLayout minSuggestionLayoutTypesForUILayoutType:](ATXSuggestionLayout, "minSuggestionLayoutTypesForUILayoutType:", [layoutCopy layoutType]);
    v7 = [v6 objectForKeyedSubscript:&unk_1F5A411B8];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v9 = 0;
      v10 = 0.0;
      do
      {
        oneByOneSuggestions = [layoutCopy oneByOneSuggestions];
        v12 = [oneByOneSuggestions objectAtIndexedSubscript:v9];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v12 topRankingSuggestion:firstObject];
        v10 = v10 + v13;

        ++v9;
        v14 = [v6 objectForKeyedSubscript:&unk_1F5A411B8];
        unsignedIntegerValue2 = [v14 unsignedIntegerValue];
      }

      while (v9 < unsignedIntegerValue2);
    }

    else
    {
      v10 = 0.0;
    }

    v17 = [v6 objectForKeyedSubscript:&unk_1F5A411D0];
    unsignedIntegerValue3 = [v17 unsignedIntegerValue];

    if (unsignedIntegerValue3)
    {
      v19 = 0;
      do
      {
        oneByTwoSuggestions = [layoutCopy oneByTwoSuggestions];
        v21 = [oneByTwoSuggestions objectAtIndexedSubscript:v19];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v21 topRankingSuggestion:firstObject];
        v10 = v10 + v22;

        ++v19;
        v23 = [v6 objectForKeyedSubscript:&unk_1F5A411D0];
        unsignedIntegerValue4 = [v23 unsignedIntegerValue];
      }

      while (v19 < unsignedIntegerValue4);
    }

    v25 = [v6 objectForKeyedSubscript:&unk_1F5A411E8];
    unsignedIntegerValue5 = [v25 unsignedIntegerValue];

    if (unsignedIntegerValue5)
    {
      v27 = 0;
      do
      {
        twoByTwoSuggestions = [layoutCopy twoByTwoSuggestions];
        v29 = [twoByTwoSuggestions objectAtIndexedSubscript:v27];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v29 topRankingSuggestion:firstObject];
        v10 = v10 + v30;

        ++v27;
        v31 = [v6 objectForKeyedSubscript:&unk_1F5A411E8];
        unsignedIntegerValue6 = [v31 unsignedIntegerValue];
      }

      while (v27 < unsignedIntegerValue6);
    }

    v33 = [v6 objectForKeyedSubscript:&unk_1F5A41200];
    unsignedIntegerValue7 = [v33 unsignedIntegerValue];

    if (unsignedIntegerValue7)
    {
      v35 = 0;
      do
      {
        oneByFourSuggestions = [layoutCopy oneByFourSuggestions];
        v37 = [oneByFourSuggestions objectAtIndexedSubscript:v35];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v37 topRankingSuggestion:firstObject];
        v10 = v10 + v38;

        ++v35;
        v39 = [v6 objectForKeyedSubscript:&unk_1F5A41200];
        unsignedIntegerValue8 = [v39 unsignedIntegerValue];
      }

      while (v35 < unsignedIntegerValue8);
    }

    v41 = [v6 objectForKeyedSubscript:&unk_1F5A41218];
    unsignedIntegerValue9 = [v41 unsignedIntegerValue];

    if (unsignedIntegerValue9)
    {
      v43 = 0;
      do
      {
        twoByFourSuggestions = [layoutCopy twoByFourSuggestions];
        v45 = [twoByFourSuggestions objectAtIndexedSubscript:v43];

        [(ATXLayoutGenerator *)self marginalScoreForSuggestion:v45 topRankingSuggestion:firstObject];
        v10 = v10 + v46;

        ++v43;
        v47 = [v6 objectForKeyedSubscript:&unk_1F5A41218];
        unsignedIntegerValue10 = [v47 unsignedIntegerValue];
      }

      while (v43 < unsignedIntegerValue10);
    }

    [layoutCopy setLayoutScore:v10];
  }

  else
  {
    v16 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ATXLayoutGenerator scoreLayout:v16];
    }
  }
}

- (double)marginalScoreForSuggestion:(id)suggestion topRankingSuggestion:(id)rankingSuggestion
{
  rankingSuggestionCopy = rankingSuggestion;
  suggestionCopy = suggestion;
  scoreSpecification = [suggestionCopy scoreSpecification];
  -[ATXLayoutGenerator weightForConfidenceCategory:](self, "weightForConfidenceCategory:", [scoreSpecification suggestedConfidenceCategory]);
  v10 = v9 + 0.0;

  LODWORD(self) = [suggestionCopy isEqual:rankingSuggestionCopy];
  result = v10 + 1000.0;
  if (!self)
  {
    return v10;
  }

  return result;
}

- (double)weightForConfidenceCategory:(int64_t)category
{
  if (category > 3)
  {
    return 100.0;
  }

  else
  {
    return dbl_1DF03AAF0[category];
  }
}

+ (id)sortLayouts:(id)layouts
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  layoutsCopy = layouts;
  v5 = [v3 sortDescriptorWithKey:@"self.layoutScore" ascending:0];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [layoutsCopy sortedArrayUsingDescriptors:v6];

  return v7;
}

@end