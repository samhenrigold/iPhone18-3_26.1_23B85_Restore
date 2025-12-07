@interface IPKeywordFeatureExtractor
- (id)_matchingKeywordsForRegex:(id)regex inText:(id)text message:(id)message eventType:(id)type keywordType:(unint64_t)keywordType;
- (id)featuresForTextString:(id)string inMessageUnit:(id)unit context:(id)context;
- (id)matchesForTextString:(id)string inMessageUnit:(id)unit eventType:(id)type;
- (id)matchesForTextString:(id)string inMessageUnit:(id)unit eventType:(id)type keywordType:(unint64_t)keywordType;
- (id)queue;
@end

@implementation IPKeywordFeatureExtractor

- (id)featuresForTextString:(id)string inMessageUnit:(id)unit context:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  unitCopy = unit;
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = unitCopy;
  bestLanguageID = [unitCopy bestLanguageID];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v33 = [&unk_285B08CB8 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v33)
  {
    v31 = *v49;
    do
    {
      v9 = 0;
      do
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(&unk_285B08CB8);
        }

        v36 = v9;
        v10 = *(*(&v48 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v34 = +[IPEventClassificationType taxonomyForLanguageID:clusterType:](IPEventClassificationType, "taxonomyForLanguageID:clusterType:", bestLanguageID, [v10 integerValue]);
        v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v34, 0}];
        if ([v11 count])
        {
          v37 = v11;
          do
          {
            v12 = objc_autoreleasePoolPush();
            firstObject = [v11 firstObject];
            [v11 removeObjectAtIndex:0];
            v14 = [(IPKeywordFeatureExtractor *)self matchesForTextString:stringCopy inMessageUnit:v39 eventType:firstObject];
            if ([v14 count])
            {
              v41 = v14;
              v42 = v12;
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              obj = v14;
              v15 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v45;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v45 != v17)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v19 = *(*(&v44 + 1) + 8 * i);
                    v20 = objc_autoreleasePoolPush();
                    v21 = MEMORY[0x277CCACA8];
                    matchRange = [v19 matchRange];
                    [v19 matchRange];
                    v24 = [v21 stringWithFormat:@"%lu-%lu-%lu", matchRange, v23, objc_msgSend(v19, "type")];
                    v25 = [v8 objectForKeyedSubscript:v24];

                    if (!v25)
                    {
                      [v8 setObject:v19 forKeyedSubscript:v24];
                    }

                    v26 = [v8 objectForKeyedSubscript:v24];
                    [v26 addEventType:firstObject];

                    objc_autoreleasePoolPop(v20);
                  }

                  v16 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
                }

                while (v16);
              }

              children = [firstObject children];
              v11 = v37;
              [v37 addObjectsFromArray:children];

              v14 = v41;
              v12 = v42;
            }

            objc_autoreleasePoolPop(v12);
          }

          while ([v11 count]);
        }

        objc_autoreleasePoolPop(context);
        v9 = v36 + 1;
      }

      while (v36 + 1 != v33);
      v33 = [&unk_285B08CB8 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v33);
  }

  allValues = [v8 allValues];

  return allValues;
}

- (id)matchesForTextString:(id)string inMessageUnit:(id)unit eventType:(id)type
{
  v71 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  unitCopy = unit;
  typeCopy = type;
  v11 = [(IPKeywordFeatureExtractor *)self matchesForTextString:stringCopy inMessageUnit:unitCopy eventType:typeCopy keywordType:2];
  v50 = [v11 mutableCopy];

  v44 = stringCopy;
  selfCopy = self;
  v42 = typeCopy;
  v43 = unitCopy;
  [(IPKeywordFeatureExtractor *)self matchesForTextString:stringCopy inMessageUnit:unitCopy eventType:typeCopy keywordType:0];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v66 = 0u;
  v12 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v12)
  {
    v13 = v12;
    v48 = *v64;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v64 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v63 + 1) + 8 * i);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v16 = v50;
        v17 = [v16 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v60;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v60 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v59 + 1) + 8 * j);
              matchRange = [v15 matchRange];
              v24 = v23;
              v75.location = [v21 matchRange];
              v75.length = v25;
              v73.location = matchRange;
              v73.length = v24;
              if (NSIntersectionRange(v73, v75).length)
              {

                goto LABEL_16;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v59 objects:v69 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        [v16 addObject:v15];
LABEL_16:
        ;
      }

      v13 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v13);
  }

  [(IPKeywordFeatureExtractor *)selfCopy matchesForTextString:v44 inMessageUnit:v43 eventType:v42 keywordType:1];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = v58 = 0u;
  v26 = [v46 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v26)
  {
    v27 = v26;
    v49 = *v56;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v56 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v29 = *(*(&v55 + 1) + 8 * k);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v30 = v50;
        v31 = [v30 countByEnumeratingWithState:&v51 objects:v67 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v52;
          while (2)
          {
            for (m = 0; m != v32; ++m)
            {
              if (*v52 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v51 + 1) + 8 * m);
              matchRange2 = [v29 matchRange];
              v38 = v37;
              v76.location = [v35 matchRange];
              v76.length = v39;
              v74.location = matchRange2;
              v74.length = v38;
              if (NSIntersectionRange(v74, v76).length)
              {

                goto LABEL_33;
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v51 objects:v67 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

        [v30 addObject:v29];
LABEL_33:
        ;
      }

      v27 = [v46 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v27);
  }

  v40 = [v50 copy];

  return v40;
}

- (id)matchesForTextString:(id)string inMessageUnit:(id)unit eventType:(id)type keywordType:(unint64_t)keywordType
{
  stringCopy = string;
  unitCopy = unit;
  typeCopy = type;
  v13 = typeCopy;
  switch(keywordType)
  {
    case 2uLL:
      titleKeywords = [typeCopy titleKeywords];
      goto LABEL_7;
    case 1uLL:
      titleKeywords = [typeCopy genericPatternKeywords];
      goto LABEL_7;
    case 0uLL:
      titleKeywords = [typeCopy patternKeywords];
LABEL_7:
      v15 = titleKeywords;
      goto LABEL_9;
  }

  v15 = MEMORY[0x277CBEBF8];
LABEL_9:
  if ([v15 count])
  {
    v16 = MEMORY[0x277CCACA8];
    identifier = [v13 identifier];
    language = [v13 language];
    keywordType = [v16 stringWithFormat:@"%@-%@-%@-%lu", identifier, language, @"keywords", keywordType];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __86__IPKeywordFeatureExtractor_matchesForTextString_inMessageUnit_eventType_keywordType___block_invoke;
    v25[3] = &unk_278F23030;
    v20 = v13;
    v26 = v20;
    v27 = v15;
    v21 = [IPRegexToolbox regularExpressionWithKey:keywordType generator:v25];
    originalMessage = [unitCopy originalMessage];
    v23 = [(IPKeywordFeatureExtractor *)self _matchingKeywordsForRegex:v21 inText:stringCopy message:originalMessage eventType:v20 keywordType:keywordType];
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  return v23;
}

id __86__IPKeywordFeatureExtractor_matchesForTextString_inMessageUnit_eventType_keywordType___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) language];
  v3 = [IPRegexToolbox regexPatternForLanguageID:v2 eventVocabularyArray:*(a1 + 40)];

  v14 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v3 options:64 error:&v14];
  v5 = v14;
  v7 = v5;
  if (v5)
  {
    v8 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v5, v6);
      v8 = _IPLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 language];
      v12 = [*(a1 + 32) identifier];
      *buf = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_2485E4000, v10, OS_LOG_TYPE_ERROR, "Can't compile regex: [language=%{public}@ identifier=%{public}@]\n%{public}@ #EventClassification", buf, 0x20u);
    }
  }

  return v4;
}

- (id)_matchingKeywordsForRegex:(id)regex inText:(id)text message:(id)message eventType:(id)type keywordType:(unint64_t)keywordType
{
  v47 = *MEMORY[0x277D85DE8];
  regexCopy = regex;
  textCopy = text;
  typeCopy = type;
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = regexCopy;
  [IPRegexToolbox matchingKeywordResultsForRegex:regexCopy inString:textCopy needsToLowercase:0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v11 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        range = [v15 range];
        if (![IPRegexToolbox isRangeInsideQuotationMarks:range text:v17 limitToSurroundingText:textCopy, 1])
        {
          range2 = [v15 range];
          v20 = v19;
          language = [typeCopy language];
          v22 = [IPRegexToolbox isRangeNearbyExclusionKeyword:range2 text:v20 limitToSurroundingText:textCopy language:1, language];

          if (!v22)
          {
            range3 = [v15 range];
            v26 = [textCopy substringWithRange:{range3, v31}];
            range4 = [v15 range];
            v29 = [IPFeatureKeyword featureKeywordWithType:keywordType string:v26 matchRange:range4, v33];
            [v29 setTextUnit:textCopy];
            [v37 addObject:v29];
            goto LABEL_16;
          }

          if (IPDebuggingModeEnabled_once_0 != -1)
          {
            [IPKeywordFeatureExtractor _matchingKeywordsForRegex:inText:message:eventType:keywordType:];
          }

          if (IPDebuggingModeEnabled_sEnabled_0 == 1)
          {
            v25 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v23, v24);
              v25 = _IPLogHandle;
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = v25;
              range5 = [v15 range];
              v29 = [textCopy substringWithRange:{range5, v28}];
              *buf = 138412290;
              v45 = v29;
              _os_log_impl(&dword_2485E4000, v26, OS_LOG_TYPE_INFO, "      --> not counted because too close to an exclusion keyword [%@] #EventClassification", buf, 0xCu);
LABEL_16:
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v12);
  }

  return v37;
}

- (id)queue
{
  if (queue__onceToken != -1)
  {
    [IPKeywordFeatureExtractor queue];
  }

  v3 = queue__ipExprOnceResult;

  return v3;
}

void __34__IPKeywordFeatureExtractor_queue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("IPKeywordFeatureExtractor", v1);
  v3 = queue__ipExprOnceResult;
  queue__ipExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

@end