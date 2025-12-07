@interface _LTCombinedTranslationResult
+ (id)_translatedTextWithAttributesForResult:(id)result;
- (NSAttributedString)translatedText;
- (NSString)romanization;
- (_LTCombinedTranslationResult)initWithCoder:(id)coder;
- (_LTCombinedTranslationResult)initWithParagraphResults:(id)results localePair:(id)pair;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTCombinedTranslationResult

- (_LTCombinedTranslationResult)initWithParagraphResults:(id)results localePair:(id)pair
{
  v58 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  pairCopy = pair;
  v54.receiver = self;
  v54.super_class = _LTCombinedTranslationResult;
  v8 = [(_LTCombinedTranslationResult *)&v54 init];
  if (!v8)
  {
LABEL_19:
    v42 = 0;
    goto LABEL_31;
  }

  v9 = [resultsCopy copy];
  paragraphResults = v8->_paragraphResults;
  v8->_paragraphResults = v9;

  if (![(NSArray *)v8->_paragraphResults count])
  {
    v41 = _LTOSLogTranslationEngine(0, v11);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [_LTCombinedTranslationResult initWithParagraphResults:v41 localePair:?];
    }

    goto LABEL_19;
  }

  v48 = pairCopy;
  targetLocale = [pairCopy targetLocale];
  firstObject = [(NSArray *)v8->_paragraphResults firstObject];
  route = [firstObject route];

  firstObject2 = [(NSArray *)v8->_paragraphResults firstObject];
  isFinal = [firstObject2 isFinal];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = v8->_paragraphResults;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    v47 = resultsCopy;
LABEL_5:
    v20 = 0;
    while (1)
    {
      if (*v51 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v50 + 1) + 8 * v20);
      locale = [v21 locale];
      v23 = [locale isEqual:targetLocale];

      if ((v23 & 1) == 0)
      {
        v43 = _LTOSLogTranslationEngine(v24, v25);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [_LTCombinedTranslationResult initWithParagraphResults:v43 localePair:v21];
        }

        goto LABEL_26;
      }

      route2 = [v21 route];
      if (route2 != route)
      {
        break;
      }

      isFinal2 = [v21 isFinal];
      if (isFinal != isFinal2)
      {
        v45 = _LTOSLogTranslationEngine(isFinal2, v29);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [(_LTCombinedTranslationResult *)isFinal initWithParagraphResults:v45 localePair:v21];
        }

LABEL_26:
        v42 = 0;
        resultsCopy = v47;
        pairCopy = v48;
        goto LABEL_30;
      }

      if (v18 == ++v20)
      {
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v50 objects:v57 count:16];
        resultsCopy = v47;
        if (v18)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    v44 = _LTOSLogTranslationEngine(route2, v27);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [_LTCombinedTranslationResult initWithParagraphResults:v44 localePair:v21];
    }

    goto LABEL_26;
  }

LABEL_13:

  pairCopy = v48;
  v30 = [v48 copy];
  localePair = v8->_localePair;
  v8->_localePair = v30;

  v8->_route = route;
  v8->_isFinal = isFinal;
  v16 = [(NSArray *)v8->_paragraphResults _ltCompactMap:&__block_literal_global_0];
  v32 = [_LTDisambiguableResult combineResults:v16 joinedWithString:@"\n\n"];
  hasDisambiguations = [v32 hasDisambiguations];
  v34 = hasDisambiguations;
  v36 = _LTOSLogDisambiguation(hasDisambiguations, v35);
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
  if (v34)
  {
    if (v37)
    {
      v38 = v8->_paragraphResults;
      v39 = v36;
      v40 = [(NSArray *)v38 count];
      *buf = 134217984;
      v56 = v40;
      _os_log_impl(&dword_23AAF5000, v39, OS_LOG_TYPE_INFO, "Creating combined disambiguable result from %zu paragraphs since there are disambiguations somewhere", buf, 0xCu);
    }

    objc_storeStrong(&v8->_disambiguableResult, v32);
  }

  else if (v37)
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v36, OS_LOG_TYPE_INFO, "Not creating combined disambiguable result for combined translation result since nothing in the result has disambiguations", buf, 2u);
  }

  v42 = v8;

LABEL_30:
LABEL_31:

  return v42;
}

- (NSAttributedString)translatedText
{
  disambiguableResult = [(_LTCombinedTranslationResult *)self disambiguableResult];
  if (disambiguableResult && (v4 = disambiguableResult, v5 = +[_LTDisambiguableResult isGenderDisambiguationEnabled], v4, v5))
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    disambiguableResult2 = [(_LTCombinedTranslationResult *)self disambiguableResult];
    targetText = [disambiguableResult2 targetText];
    v9 = [v6 initWithString:targetText];
  }

  else
  {
    paragraphResults = self->_paragraphResults;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46___LTCombinedTranslationResult_translatedText__block_invoke;
    v13[3] = &unk_278B6C918;
    v13[4] = self;
    v11 = [(NSArray *)paragraphResults _ltCompactMap:v13];
    v9 = [MEMORY[0x277CCA898] lt_attributedStringByJoiningComponents:v11 withString:@"\n\n"];
  }

  return v9;
}

- (NSString)romanization
{
  disambiguableResult = [(_LTCombinedTranslationResult *)self disambiguableResult];

  if (disambiguableResult)
  {
    disambiguableResult2 = [(_LTCombinedTranslationResult *)self disambiguableResult];
    romanization = [disambiguableResult2 romanization];
LABEL_5:
    v7 = romanization;
    goto LABEL_6;
  }

  disambiguableResult2 = [(NSArray *)self->_paragraphResults _ltCompactMap:&__block_literal_global_6];
  v6 = [(NSArray *)self->_paragraphResults count];
  if (v6 == [disambiguableResult2 count])
  {
    romanization = [disambiguableResult2 componentsJoinedByString:@"\n\n"];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)_translatedTextWithAttributesForResult:(id)result
{
  v79 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  alignments = [resultCopy alignments];
  v5 = [alignments count];

  translations = [resultCopy translations];
  v7 = [translations count];

  v10 = v5 == 1 && v7 == 1 || v5 == 0;
  translations2 = [resultCopy translations];
  firstObject = [translations2 firstObject];

  sanitizedFormattedString = [firstObject sanitizedFormattedString];
  v14 = sanitizedFormattedString;
  if (sanitizedFormattedString)
  {
    v15 = sanitizedFormattedString;
  }

  else
  {
    formattedString = [firstObject formattedString];
    v17 = formattedString;
    v18 = &stru_284DBB9B8;
    if (formattedString)
    {
      v18 = formattedString;
    }

    v15 = v18;
  }

  v19 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v15];
  v62 = firstObject;
  v63 = resultCopy;
  v61 = v15;
  if (!v10)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    alignments2 = [resultCopy alignments];
    v21 = [alignments2 countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v70;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v70 != v23)
          {
            objc_enumerationMutation(alignments2);
          }

          v25 = *(*(&v69 + 1) + 8 * i);
          sourceAttributes = [v25 sourceAttributes];
          v27 = [sourceAttributes objectForKeyedSubscript:@"CTAdaptiveImageProvider"];

          if (!v27)
          {
            v30 = _LTOSLogTranslationEngine(v28, v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v34 = v30;
              targetRange = [v25 targetRange];
              [v25 targetRange];
              *buf = 134218240;
              v75 = targetRange;
              v76 = 2048;
              v77 = v36;
              _os_log_debug_impl(&dword_23AAF5000, v34, OS_LOG_TYPE_DEBUG, "Adding attributes for range (%zu, %zu)", buf, 0x16u);
            }

            sourceAttributes2 = [v25 sourceAttributes];
            targetRange2 = [v25 targetRange];
            [v19 addAttributes:sourceAttributes2 range:{targetRange2, v33}];
          }
        }

        v22 = [alignments2 countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v22);
    }

    v39 = _LTOSLogTranslationEngine(v37, v38);
    firstObject = v62;
    resultCopy = v63;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      +[_LTCombinedTranslationResult _translatedTextWithAttributesForResult:];
    }
  }

  replacementInfos = [resultCopy replacementInfos];
  v41 = [replacementInfos count];
  if (v41)
  {
    v43 = _LTOSLogTranslationEngine(v41, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [(_LTCombinedTranslationResult *)v43 _translatedTextWithAttributesForResult:replacementInfos];
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v60 = replacementInfos;
    obj = replacementInfos;
    v44 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v66;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v66 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v65 + 1) + 8 * j);
          placeholderString = [v48 placeholderString];
          string = [v19 string];
          v51 = [string rangeOfString:placeholderString];
          v53 = v52;

          if (v51 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v56 = _LTOSLogTranslationEngine(v54, v55);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              [(_LTCombinedTranslationResult *)buf _translatedTextWithAttributesForResult:v56];
            }
          }

          else
          {
            sourceAttributes3 = [v48 sourceAttributes];
            [v19 addAttributes:sourceAttributes3 range:{v51, v53}];

            originalSubstring = [v48 originalSubstring];
            [v19 replaceCharactersInRange:v51 withString:{v53, originalSubstring}];
          }
        }

        v45 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v45);
    }

    firstObject = v62;
    resultCopy = v63;
    replacementInfos = v60;
    v15 = v61;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  paragraphResults = self->_paragraphResults;
  coderCopy = coder;
  [coderCopy encodeObject:paragraphResults forKey:@"paragraphResults"];
  [coderCopy encodeObject:self->_disambiguableResult forKey:@"disambiguableResult"];
  [coderCopy encodeObject:self->_localePair forKey:@"localePair"];
  [coderCopy encodeInteger:self->_route forKey:@"route"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
  [coderCopy encodeBool:self->_endOfUtterance forKey:@"endOfUtterance"];
}

- (_LTCombinedTranslationResult)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _LTCombinedTranslationResult;
  v5 = [(_LTCombinedTranslationResult *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"paragraphResults"];
    paragraphResults = v5->_paragraphResults;
    v5->_paragraphResults = v9;

    v11 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"disambiguableResult"];
    disambiguableResult = v5->_disambiguableResult;
    v5->_disambiguableResult = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localePair"];
    localePair = v5->_localePair;
    v5->_localePair = v16;

    v5->_route = [coderCopy decodeIntegerForKey:@"route"];
    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v5->_endOfUtterance = [coderCopy decodeBoolForKey:@"endOfUtterance"];
    v18 = v5;
  }

  return v5;
}

- (void)initWithParagraphResults:(void *)a1 localePair:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 locale];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_23AAF5000, v5, v6, "Not creating _LTCombinedTranslationResult instance because a translation result is locale %{public}@ instead of expected locale %{public}@", v7, v8, v9, v10);
}

- (void)initWithParagraphResults:(void *)a1 localePair:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  [a2 route];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_23AAF5000, v4, v5, "Not creating _LTCombinedTranslationResult instance because a translation result has route %zd, which is mismatched from other results with route %zd", v6, v7, v8, v9);
}

- (void)initWithParagraphResults:(void *)a3 localePair:.cold.3(char a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a1 & 1;
  v5 = a2;
  v6[0] = 67109376;
  v6[1] = [a3 isFinal];
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_ERROR, "Not creating _LTCombinedTranslationResult instance because a translation result has isFinal %{BOOL}i, which is mismatched from other results with isFinal %{BOOL}i", v6, 0xEu);
}

+ (void)_translatedTextWithAttributesForResult:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_DEBUG, "Translation with attributes added %{sensitive}@", v1, 0xCu);
}

+ (void)_translatedTextWithAttributesForResult:(void *)a1 .cold.2(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEBUG, "Removing placeholder emoji for genmoji text in %zu places", v4, 0xCu);
}

+ (void)_translatedTextWithAttributesForResult:(os_log_t)log .cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_23AAF5000, log, OS_LOG_TYPE_ERROR, "Can't find placeholder emoji for putting back genmoji", buf, 2u);
}

@end