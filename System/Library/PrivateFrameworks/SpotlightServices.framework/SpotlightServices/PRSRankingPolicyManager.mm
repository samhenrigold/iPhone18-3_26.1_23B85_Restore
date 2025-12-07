@interface PRSRankingPolicyManager
+ (double)termFrequencyComponentFor:(id)for matchingString:(id)string weighted:(BOOL)weighted;
+ (double)termFrequencyComponentForWord:(id)word inString:(id)string;
+ (id)getSharedRankingPolicyManager;
- (BOOL)doesOrderedSpanExistWithStartingIndex:(unint64_t)index nextArray:(id)array arrayOfIndexArrays:(id)arrays level:(unint64_t)level currentOrderedSpan:(int64_t *)span;
- (id)cookSQFOnClientWithServerProbabilities:(id)probabilities qiCEPValues:(id)values localResultOrder:(id)order poorTextMatchCategories:(id)categories minimumBagCEP:(double)p cook_sqf_topdown:(BOOL)cook_sqf_topdown cook_sqf_fallback_qi_cep:(BOOL)cook_sqf_fallback_qi_cep;
- (id)cosineComponentsUsingWordMatches:(id)matches withField:(id)field withCorpusCount:(double)count prefixVersion:(BOOL)version;
- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count;
- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count ordered_first_term_position:(double *)ordered_first_term_position prefixMatch:(BOOL)self0 queryBreakDown:(id)self1 isVirtualField:(BOOL)self2 locale:(id)self3;
- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count prefixMatch:(BOOL)match;
- (void)minimumAnyOrderSpanWithStartingIndex:(int64_t)index nextArray:(id)array arrayOfIndexArrays:(id)arrays level:(unint64_t)level currentAnyOrderSpan:(int64_t)span minimumSpan:(int64_t *)minimumSpan minimumDistancePair:(int64_t *)pair currentMinimumIndex:(int64_t)self0 currentMaximumIndex:(int64_t)self1;
@end

@implementation PRSRankingPolicyManager

+ (id)getSharedRankingPolicyManager
{
  if (getSharedRankingPolicyManager_onceToken != -1)
  {
    +[PRSRankingPolicyManager getSharedRankingPolicyManager];
  }

  v3 = policyManager;

  return v3;
}

uint64_t __56__PRSRankingPolicyManager_getSharedRankingPolicyManager__block_invoke()
{
  policyManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (double)termFrequencyComponentFor:(id)for matchingString:(id)string weighted:(BOOL)weighted
{
  weightedCopy = weighted;
  v47 = *MEMORY[0x1E69E9840];
  forCopy = for;
  stringCopy = string;
  v9 = objc_opt_new();
  v10 = [forCopy length];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v35 = stringCopy;
  v12 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = v10;
    v16 = v10;
    v17 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v41 + 1) + 8 * i);
        if (v15 <= [v19 length] && !objc_msgSend(v19, "compare:options:range:", forCopy, 129, 0, v16))
        {
          v20 = [v9 objectForKey:v19];
          if (v20)
          {
            v21 = v20;
            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "unsignedIntegerValue") + 1}];
          }

          else
          {
            v22 = &unk_1F55B44B8;
          }

          [v9 setObject:v22 forKey:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v14);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  allKeys = [v9 allKeys];
  v24 = [allKeys countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    v27 = 0.0;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(allKeys);
        }

        v29 = *(*(&v37 + 1) + 8 * j);
        v30 = [v9 objectForKey:v29];
        unsignedIntegerValue = [v30 unsignedIntegerValue];

        v32 = log(unsignedIntegerValue) + 1.0;
        if (weightedCopy)
        {
          v33 = v32 * [forCopy length];
          v32 = v33 / [v29 length];
        }

        v27 = v27 + v32;
      }

      v25 = [allKeys countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v25);
  }

  else
  {
    v27 = 0.0;
  }

  return v27;
}

+ (double)termFrequencyComponentForWord:(id)word inString:(id)string
{
  v22 = *MEMORY[0x1E69E9840];
  wordCopy = word;
  stringCopy = string;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [stringCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v10)
  {

LABEL_13:
    v15 = 0.0;
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *v18;
  v13 = 0.0;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if (![*(*(&v17 + 1) + 8 * i) compare:wordCopy options:{129, v17}])
      {
        v13 = v13 + 1.0;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v11);

  if (v13 == 0.0)
  {
    goto LABEL_13;
  }

  v15 = log(v13) + 1.0;
LABEL_14:

  return v15;
}

- (id)cosineComponentsUsingWordMatches:(id)matches withField:(id)field withCorpusCount:(double)count prefixVersion:(BOOL)version
{
  versionCopy = version;
  matchesCopy = matches;
  fieldCopy = field;
  v11 = objc_opt_new();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v13 = [fieldCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (objc_msgSend_count(v13))
  {
    v14 = objc_msgSend_count(matchesCopy);
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    if (versionCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    }

    else
    {
      v16 = 0;
    }

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    if (versionCopy)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
    }

    else
    {
      v19 = 0;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __100__PRSRankingPolicyManager_cosineComponentsUsingWordMatches_withField_withCorpusCount_prefixVersion___block_invoke;
    v26[3] = &unk_1E8596C50;
    countCopy = count;
    v27 = v17;
    v34 = versionCopy;
    v28 = fieldCopy;
    v29 = v15;
    v30 = v16;
    v31 = v18;
    v32 = v19;
    v20 = v19;
    v21 = v18;
    v22 = v16;
    v23 = v15;
    v24 = v17;
    [matchesCopy enumerateKeysAndObjectsUsingBlock:v26];
    [v11 setTermFrequencies:v23];
    [v11 setTermFrequenciesWeighted:v22];
    [v11 setInverseDocFrequencies:v24];
    [v11 setTermInverseDoc:v21];
    [v11 setTermInverseDocWeighted:v20];
    [v11 setFieldLength:objc_msgSend_count(v13)];
  }

  return v11;
}

void __100__PRSRankingPolicyManager_cosineComponentsUsingWordMatches_withField_withCorpusCount_prefixVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  [v5 doubleValue];
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v7 = *(a1 + 80);
    [v5 doubleValue];
    v9 = log(v7 / v8 + 1.0);
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v10 addObject:v11];

  v12 = *(a1 + 40);
  if (*(a1 + 88) == 1)
  {
    [PRSRankingPolicyManager termFrequencyComponentFor:v28 matchingString:v12 weighted:0];
    v14 = v13;
    [PRSRankingPolicyManager termFrequencyComponentFor:v28 matchingString:*(a1 + 40) weighted:1];
    v16 = v15;
    v17 = *(a1 + 48);
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    [v17 addObject:v18];

    v19 = *(a1 + 56);
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
    [v19 addObject:v20];

    v21 = *(a1 + 64);
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v9 * v14];
    [v21 addObject:v22];
    v23 = 72;
  }

  else
  {
    [PRSRankingPolicyManager termFrequencyComponentForWord:v28 inString:v12];
    v16 = v24;
    v25 = *(a1 + 48);
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v25 addObject:v22];
    v23 = 64;
  }

  v26 = *(a1 + v23);
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v9 * v16];
  [v26 addObject:v27];
}

- (void)minimumAnyOrderSpanWithStartingIndex:(int64_t)index nextArray:(id)array arrayOfIndexArrays:(id)arrays level:(unint64_t)level currentAnyOrderSpan:(int64_t)span minimumSpan:(int64_t *)minimumSpan minimumDistancePair:(int64_t *)pair currentMinimumIndex:(int64_t)self0 currentMaximumIndex:(int64_t)self1
{
  arrayCopy = array;
  arraysCopy = arrays;
  if (objc_msgSend_count(arraysCopy) == level)
  {
    v15 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PRSRankingPolicyManager minimumAnyOrderSpanWithStartingIndex:level nextArray:v15 arrayOfIndexArrays:? level:? currentAnyOrderSpan:? minimumSpan:? minimumDistancePair:? currentMinimumIndex:? currentMaximumIndex:?];
    }
  }

  else if (objc_msgSend_count(arrayCopy))
  {
    v16 = 0;
    v17 = level + 1;
    v27 = arrayCopy;
    do
    {
      v18 = [arrayCopy objectAtIndex:v16];
      integerValue = [v18 integerValue];

      v20 = integerValue - index;
      if (integerValue - index < 0)
      {
        v20 = index - integerValue;
      }

      if (v20 < *pair)
      {
        *pair = v20;
      }

      v21 = integerValue - maximumIndex;
      if (integerValue <= maximumIndex)
      {
        maximumIndexCopy = maximumIndex;
      }

      else
      {
        maximumIndexCopy = integerValue;
      }

      if (integerValue <= maximumIndex)
      {
        v21 = 0;
      }

      if (minimumIndex > integerValue)
      {
        minimumIndexCopy = integerValue;
      }

      else
      {
        minimumIndexCopy = minimumIndex;
      }

      if (minimumIndex > integerValue)
      {
        maximumIndexCopy2 = maximumIndex;
      }

      else
      {
        maximumIndexCopy2 = maximumIndexCopy;
      }

      if (minimumIndex > integerValue)
      {
        v21 = minimumIndex - integerValue;
      }

      v25 = v21 + span;
      if (v17 == objc_msgSend_count(arraysCopy))
      {
        if (*minimumSpan > v25)
        {
          *minimumSpan = v25;
        }
      }

      else
      {
        v26 = [arraysCopy objectAtIndex:v17];
        [(PRSRankingPolicyManager *)self minimumAnyOrderSpanWithStartingIndex:integerValue nextArray:v26 arrayOfIndexArrays:arraysCopy level:v17 currentAnyOrderSpan:v25 minimumSpan:minimumSpan minimumDistancePair:pair currentMinimumIndex:minimumIndexCopy currentMaximumIndex:maximumIndexCopy2];

        arrayCopy = v27;
      }

      ++v16;
    }

    while (objc_msgSend_count(arrayCopy) > v16);
  }
}

- (BOOL)doesOrderedSpanExistWithStartingIndex:(unint64_t)index nextArray:(id)array arrayOfIndexArrays:(id)arrays level:(unint64_t)level currentOrderedSpan:(int64_t *)span
{
  arrayCopy = array;
  arraysCopy = arrays;
  if (objc_msgSend_count(arraysCopy) != level)
  {
    if (!objc_msgSend_count(arrayCopy))
    {
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    v15 = 0;
    while (1)
    {
      v16 = [arrayCopy objectAtIndex:v15];
      integerValue = [v16 integerValue];

      if (integerValue > index)
      {
        break;
      }

      if (objc_msgSend_count(arrayCopy) <= ++v15)
      {
        goto LABEL_7;
      }
    }

    *span += integerValue - index;
    v19 = level + 1;
    if (v19 != objc_msgSend_count(arraysCopy))
    {
      v20 = [arraysCopy objectAtIndex:v19];
      v14 = [(PRSRankingPolicyManager *)self doesOrderedSpanExistWithStartingIndex:integerValue nextArray:v20 arrayOfIndexArrays:arraysCopy level:v19 currentOrderedSpan:span];

      goto LABEL_8;
    }
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count
{
  v9 = 0;
  LOBYTE(v8) = 0;
  [(PRSRankingPolicyManager *)self computeNewFeaturesForProperty:property query:query qr_prop_query_norm_min_ordered_span:qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:qr_query_min_pair_dist_in_title prefix_match_norm_count:&v9 prefixMatch:v8];
}

- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count prefixMatch:(BOOL)match
{
  v21 = 0;
  v15 = MEMORY[0x1E695DF58];
  queryCopy = query;
  propertyCopy = property;
  currentLocale = [v15 currentLocale];
  LOBYTE(v20) = 0;
  LOBYTE(v19) = match;
  [(PRSRankingPolicyManager *)self computeNewFeaturesForProperty:propertyCopy query:queryCopy qr_prop_query_norm_min_ordered_span:qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:qr_query_min_pair_dist_in_title prefix_match_norm_count:prefix_match_norm_count ordered_first_term_position:&v21 prefixMatch:v19 queryBreakDown:0 isVirtualField:v20 locale:currentLocale];
}

- (void)computeNewFeaturesForProperty:(id)property query:(id)query qr_prop_query_norm_min_ordered_span:(double *)qr_prop_query_norm_min_ordered_span qr_prop_query_norm_min_unordered_span:(double *)qr_prop_query_norm_min_unordered_span qr_query_min_pair_dist_in_title:(double *)qr_query_min_pair_dist_in_title prefix_match_norm_count:(double *)prefix_match_norm_count ordered_first_term_position:(double *)ordered_first_term_position prefixMatch:(BOOL)self0 queryBreakDown:(id)self1 isVirtualField:(BOOL)self2 locale:(id)self3
{
  v129 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  downCopy = down;
  localeCopy = locale;
  v79 = objc_msgSend_count(downCopy);
  v86 = objc_opt_new();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v93 = [propertyCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = downCopy;
  v90 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
  if (v90)
  {
    v16 = 0;
    v100 = 0;
    v87 = propertyCopy;
    v88 = *v121;
    v85 = 1;
LABEL_3:
    v17 = 0;
    v18 = 5;
    if (v16 > 5)
    {
      v18 = v16;
    }

    v92 = v18 - v16;
    while (1)
    {
      if (*v121 != v88)
      {
        objc_enumerationMutation(obj);
      }

      if (v17 == v92)
      {
        break;
      }

      v95 = v17;
      v97 = v16;
      v19 = *(*(&v120 + 1) + 8 * v17);
      v20 = objc_opt_new();
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v21 = v93;
      v22 = [v21 countByEnumeratingWithState:&v116 objects:v127 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v117;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v117 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v116 + 1) + 8 * i);
            if ([PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:v26 isEqualToString:v19]|| match && [PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:v26 hasPrefix:v19 locale:localeCopy])
            {

              v114 = 0u;
              v115 = 0u;
              v112 = 0u;
              v113 = 0u;
              v27 = v21;
              v28 = [v27 countByEnumeratingWithState:&v112 objects:v126 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = 0;
                v31 = *v113;
                do
                {
                  for (j = 0; j != v29; ++j)
                  {
                    if (*v113 != v31)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v33 = *(*(&v112 + 1) + 8 * j);
                    if ([PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:v33 isEqualToString:v19]|| match && [PRSRankingUtilities caseAndDiacriticInsensitiveLocalizedString:v33 hasPrefix:v19 locale:localeCopy])
                    {
                      v34 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
                      [v20 addObject:v34];

                      ++v100;
                    }

                    ++v30;
                  }

                  v29 = [v27 countByEnumeratingWithState:&v112 objects:v126 count:16];
                }

                while (v29);
              }

              if (objc_msgSend_count(v20))
              {
                [v86 addObject:v20];
              }

              goto LABEL_33;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v116 objects:v127 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v85 = 0;
LABEL_33:
      propertyCopy = v87;
      v16 = v97 + 1;

      v17 = v95 + 1;
      if (v95 + 1 == v90)
      {
        v90 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
        if (v90)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v100 = 0;
    v85 = 1;
  }

  v35 = v86;
  if (!objc_msgSend_count(v86))
  {
    *qr_prop_query_norm_min_ordered_span = 2147483650.0;
    *qr_prop_query_norm_min_unordered_span = 2147483650.0;
    *prefix_match_norm_count = 2147483650.0;
    *qr_query_min_pair_dist_in_title = 2147483650.0;
    *ordered_first_term_position = 2147483650.0;
    goto LABEL_92;
  }

  [v86 firstObject];
  v110 = 0x7FFFFFFFLL;
  v98 = v111 = 0x7FFFFFFFLL;
  v36 = objc_msgSend_count(v98);
  if (!v36)
  {
    *qr_query_min_pair_dist_in_title = v110;
    *qr_prop_query_norm_min_ordered_span = 2147483650.0;
    *ordered_first_term_position = 2147483650.0;
    v74 = 2147483650.0;
    v77 = v100;
    v41 = v85;
    goto LABEL_88;
  }

  v37 = v36;
  v38 = 0;
  integerValue2 = 0x7FFFFFFFLL;
  v39 = 0x7FFFFFFFLL;
  v40 = 0x7FFFFFFFLL;
  v41 = v85;
  do
  {
    v109 = 0;
    if (objc_msgSend_count(v35) < 2)
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      firstObject = [v35 firstObject];
      v58 = [firstObject countByEnumeratingWithState:&v105 objects:v125 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v106;
        v61 = 1.79769313e308;
        do
        {
          for (k = 0; k != v59; ++k)
          {
            if (*v106 != v60)
            {
              objc_enumerationMutation(firstObject);
            }

            v63 = *(*(&v105 + 1) + 8 * k);
            [v63 doubleValue];
            if (v64 < v61)
            {
              [v63 doubleValue];
              v61 = v65;
            }
          }

          v59 = [firstObject countByEnumeratingWithState:&v105 objects:v125 count:16];
        }

        while (v59);
        integerValue2 = v61;
        v35 = v86;
        v41 = v85;
      }

      v66 = objc_msgSend_count(obj);
      if (v41)
      {
        if (v66 == 1)
        {
          v40 = 0;
          v39 = 0;
          v110 = 0;
          goto LABEL_81;
        }

LABEL_75:
        v40 = 0;
        v39 = 0;
        v110 = 0x7FFFFFFFLL;
        goto LABEL_81;
      }

      if (v66 < 2)
      {
        goto LABEL_75;
      }

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v67 = obj;
      v68 = [v67 countByEnumeratingWithState:&v101 objects:v124 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = 0;
        v71 = *v102;
        do
        {
          for (m = 0; m != v69; ++m)
          {
            if (*v102 != v71)
            {
              objc_enumerationMutation(v67);
            }

            v70 += [propertyCopy localizedStandardContainsString:*(*(&v101 + 1) + 8 * m)];
          }

          v69 = [v67 countByEnumeratingWithState:&v101 objects:v124 count:16];
        }

        while (v69);

        if (v70 == 1)
        {
          v73 = [propertyCopy componentsSeparatedByString:@" "];
          v110 = objc_msgSend_count(v73);
        }

        v40 = 0;
        v39 = 0;
        v35 = v86;
        v41 = v85;
      }

      else
      {

        v40 = 0;
        v39 = 0;
      }
    }

    else
    {
      if (v41)
      {
        v42 = [v98 objectAtIndexedSubscript:v38];
        integerValue = [v42 integerValue];
        v44 = [v35 objectAtIndex:1];
        LODWORD(integerValue) = [(PRSRankingPolicyManager *)self doesOrderedSpanExistWithStartingIndex:integerValue nextArray:v44 arrayOfIndexArrays:v35 level:1 currentOrderedSpan:&v109];

        if (integerValue)
        {
          if (v40 > v109)
          {
            v45 = [v98 objectAtIndexedSubscript:v38];
            integerValue2 = [v45 integerValue];

            v40 = v109;
          }
        }
      }

      if (field)
      {
        v91 = v40;
        v96 = v39;
        v46 = v37;
        v47 = [v98 objectAtIndexedSubscript:v38];
        integerValue3 = [v47 integerValue];
        v49 = [v35 objectAtIndex:1];
        v50 = [v98 objectAtIndexedSubscript:v38];
        integerValue4 = [v50 integerValue];
        [v98 objectAtIndexedSubscript:v38];
        v53 = v52 = v35;
        integerValue5 = [v53 integerValue];
        v55 = v52;
        v41 = v85;
        [(PRSRankingPolicyManager *)self minimumAnyOrderSpanWithStartingIndex:integerValue3 nextArray:v49 arrayOfIndexArrays:v55 level:1 currentAnyOrderSpan:0 minimumSpan:&v111 minimumDistancePair:&v110 currentMinimumIndex:integerValue4 currentMaximumIndex:integerValue5];

        if (v85)
        {
          v56 = v111;
          if (v96 < v111)
          {
            v56 = v96;
          }

          v35 = v86;
          v37 = v46;
          v40 = v91;
          if (v96 <= v111)
          {
            if (objc_msgSend_count(obj) == 1)
            {
              v110 = 0;
            }

            v39 = v96;
          }

          else
          {
            v39 = v56;
          }
        }

        else
        {
          v35 = v86;
          v37 = v46;
          v39 = v96;
          v40 = v91;
        }
      }
    }

LABEL_81:
    ++v38;
  }

  while (v38 != v37);
  *qr_query_min_pair_dist_in_title = v110;
  v74 = 2147483650.0;
  v75 = 2147483650.0;
  v76 = 2147483650.0;
  v77 = v100;
  if (((v40 != 0x7FFFFFFF) & v41) != 0)
  {
    v76 = integerValue2;
    v75 = (v40 + 2.0) / v79;
  }

  *qr_prop_query_norm_min_ordered_span = v75;
  *ordered_first_term_position = v76;
  if (((v39 != 0x7FFFFFFF) & v41) == 1)
  {
    v74 = (v39 + 2.0) / v79;
  }

LABEL_88:
  *qr_prop_query_norm_min_unordered_span = v74;
  if (((v77 != 0) & v41) == 1)
  {
    v78 = (v77 / v79);
  }

  else
  {
    v78 = 2147483650.0;
  }

  *prefix_match_norm_count = v78;

LABEL_92:
}

- (id)cookSQFOnClientWithServerProbabilities:(id)probabilities qiCEPValues:(id)values localResultOrder:(id)order poorTextMatchCategories:(id)categories minimumBagCEP:(double)p cook_sqf_topdown:(BOOL)cook_sqf_topdown cook_sqf_fallback_qi_cep:(BOOL)cook_sqf_fallback_qi_cep
{
  cook_sqf_topdownCopy = cook_sqf_topdown;
  v87 = *MEMORY[0x1E69E9840];
  probabilitiesCopy = probabilities;
  valuesCopy = values;
  orderCopy = order;
  categoriesCopy = categories;
  v51 = objc_opt_new();
  v54 = objc_opt_new();
  v16 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = orderCopy;
  v17 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v17)
  {
    v18 = *v75;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v75 != v18)
        {
          objc_enumerationMutation(obj);
        }

        valuesCopy = [PRSRankingUtilities bundleIDForCategory:*(*(&v74 + 1) + 8 * i), valuesCopy];
        [v54 addObject:valuesCopy];
      }

      v17 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v17);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v52 = categoriesCopy;
  v21 = [v52 countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v21)
  {
    v22 = *v71;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v71 != v22)
        {
          objc_enumerationMutation(v52);
        }

        valuesCopy2 = [PRSRankingUtilities bundleIDForCategory:*(*(&v70 + 1) + 8 * j), valuesCopy];
        [v16 addObject:valuesCopy2];
      }

      v21 = [v52 countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v21);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  allKeys = [probabilitiesCopy allKeys];
  v26 = 0;
  v27 = [allKeys countByEnumeratingWithState:&v66 objects:v84 count:16];
  if (v27)
  {
    v28 = *v67;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(*(&v66 + 1) + 8 * k);
        v31 = [probabilitiesCopy objectForKey:{v30, valuesCopy}];
        [v31 doubleValue];
        v33 = v32;

        if (v26)
        {
          v26 = 1;
        }

        else if ([v30 hasPrefix:@"com.apple.parsec."])
        {
          v26 = 0;
        }

        else
        {
          v26 = [v54 containsObject:v30];
        }

        if ([v30 hasPrefix:@"com.apple.parsec."])
        {
          v34 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
          [v51 setObject:v34 forKey:v30];
        }
      }

      v27 = [allKeys countByEnumeratingWithState:&v66 objects:v84 count:16];
    }

    while (v27);
  }

  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  pCopy = 0.0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v63[3] = 0;
  if (!cook_sqf_fallback_qi_cep)
  {
    pCopy = p;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __175__PRSRankingPolicyManager_cookSQFOnClientWithServerProbabilities_qiCEPValues_localResultOrder_poorTextMatchCategories_minimumBagCEP_cook_sqf_topdown_cook_sqf_fallback_qi_cep___block_invoke;
  aBlock[3] = &unk_1E8596C78;
  v62 = v26;
  v49 = valuesCopy;
  v56 = v49;
  v60 = v63;
  v61 = v64;
  v35 = v51;
  v57 = v35;
  v36 = probabilitiesCopy;
  v58 = v36;
  v37 = v16;
  v59 = v37;
  v38 = _Block_copy(aBlock);
  if (cook_sqf_topdownCopy)
  {
    v39 = 0;
    v40 = 1;
  }

  else
  {
    v39 = objc_msgSend_count(obj) - 1;
    v40 = -1;
  }

  v41 = 0;
  v42 = 0;
  while (v41 < objc_msgSend_count(obj, valuesCopy))
  {
    v43 = [v54 objectAtIndex:v39];

    (v38)[2](v38, v43, !cook_sqf_topdownCopy);
    ++v41;
    v39 += v40;
    v42 = v43;
  }

  v44 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v79 = v36;
    v80 = 2112;
    v81 = v54;
    v82 = 2112;
    v83 = v35;
    _os_log_impl(&dword_1D9F69000, v44, OS_LOG_TYPE_INFO, "[Ranking Log] Cooking SQF: Server SQF received:%@ \n Local sorted categories(desc order): %@\n Final cooked SQF dictionary: %@\n", buf, 0x20u);
  }

  v45 = v35;
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v64, 8);

  return v45;
}

void __175__PRSRankingPolicyManager_cookSQFOnClientWithServerProbabilities_qiCEPValues_localResultOrder_poorTextMatchCategories_minimumBagCEP_cook_sqf_topdown_cook_sqf_fallback_qi_cep___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v21 = v5;
  if ((*(a1 + 80) & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = v5;
    [v12 doubleValueForKey:{objc_msgSend(v21, "UTF8String")}];
    v11 = *(*(a1 + 64) + 8);
    v15 = *(v11 + 24);
    if (v15 == 0.0)
    {
      v16 = *(*(a1 + 72) + 8);
      if (*(v16 + 24) != 0.0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v17 = v15 < v14;
      if (!a3)
      {
        v17 = v15 > v14;
      }

      if (v15 <= 0.0 || !v17)
      {
        goto LABEL_19;
      }

      v16 = *(*(a1 + 72) + 8);
    }

    *(v16 + 24) = v14;
    v11 = *(*(a1 + 64) + 8);
LABEL_19:
    v8 = *(*(*(a1 + 72) + 8) + 24);
    goto LABEL_20;
  }

  v6 = [*(a1 + 48) objectForKey:v5];
  [v6 doubleValue];
  v8 = v7;

  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = v8 > v9;
  if (!a3)
  {
    v10 = v8 < v9;
  }

  if (v9 == 0.0 || v10)
  {
    v9 = v8;
  }

  *(*(*(a1 + 72) + 8) + 24) = v9;
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);
  if ([*(a1 + 56) containsObject:v21])
  {
    v11 = *(*(a1 + 72) + 8);
LABEL_20:
    *(v11 + 24) = v8;
  }

  v19 = *(a1 + 40);
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:*(*(*(a1 + 72) + 8) + 24)];
  [v19 setObject:v20 forKey:v21];
}

@end