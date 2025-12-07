@interface _LTDisambiguableResult
+ (BOOL)isGenderDisambiguationEnabled;
+ (id)combineResults:(id)results joinedWithString:(id)string;
+ (id)combinedDisambiguableResultFromTranslationResults:(id)results joinedWithString:(id)string;
- (BOOL)hasDisambiguationsOfType:(unint64_t)type;
- (NSArray)observers;
- (NSString)description;
- (NSString)romanization;
- (NSString)sourceText;
- (NSString)targetText;
- (_LTDisambiguableResult)initWithCoder:(id)coder;
- (_LTDisambiguableResult)initWithDictionary:(id)dictionary;
- (_LTDisambiguableResult)initWithSentences:(id)sentences;
- (_LTDisambiguableResult)initWithSentences:(id)sentences joinedWithString:(id)string;
- (_LTDisambiguableResultDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)excludedTypesForDisambiguableSentence:(id)sentence;
- (id)generateAttributedStringForLocation:(unint64_t)location withGlobalAttributes:(id)attributes attributeProvider:(id)provider;
- (id)sentenceWithUUID:(id)d;
- (void)_commonInit;
- (void)_insertPrefix:(id)prefix;
- (void)disambiguableSentence:(id)sentence didSelectNode:(id)node atIndex:(unint64_t)index withSelection:(id)selection;
@end

@implementation _LTDisambiguableResult

- (_LTDisambiguableResult)initWithDictionary:(id)dictionary
{
  v123 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = dictionaryCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 objectForKeyedSubscript:@"alternative_descriptions"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v6 objectForKeyedSubscript:@"engine_input"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v6 objectForKeyedSubscript:@"n_best_translated_phrases"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

        v11 = 0;
        goto LABEL_128;
      }

      array = [MEMORY[0x277CBEB18] array];
      if (![v9 count])
      {
        goto LABEL_107;
      }

      v10 = 0;
LABEL_14:
      v11 = [v9 objectAtIndexedSubscript:v10];
      v100 = v11;
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_127;
        }

        v91 = v10;
        v12 = [(_LTDisambiguableResult *)v11 objectForKeyedSubscript:@"translated_tokens"];
        if (!v12)
        {
          goto LABEL_125;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_125;
        }

        v13 = [(_LTDisambiguableResult *)v11 objectForKeyedSubscript:@"meta_info_data"];
        if (!v13)
        {
          goto LABEL_124;
        }

        v104 = v13;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v13 = v104;
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_124;
        }

        v15 = [v104 objectForKeyedSubscript:@"romanization"];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v93 = v16;

        v17 = [v104 objectForKeyedSubscript:@"selection_spans"];
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
LABEL_123:

          v13 = v104;
LABEL_124:

LABEL_125:
          v11 = 0;
LABEL_126:

          goto LABEL_127;
        }

        array2 = [MEMORY[0x277CBEB18] array];
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        obj = v17;
        v97 = [obj countByEnumeratingWithState:&v115 objects:v122 count:16];
        if (!v97)
        {
          goto LABEL_106;
        }

        v98 = *v116;
        v102 = v12;
        while (1)
        {
          v18 = 0;
          do
          {
            if (*v116 != v98)
            {
              objc_enumerationMutation(obj);
            }

            v103 = v18;
            v19 = *(*(&v115 + 1) + 8 * v18);
            if (!v19)
            {
              goto LABEL_122;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_122;
            }

            v114 = 0;
            v105 = v19;
            v20 = [v19 objectForKeyedSubscript:@"source"];
            v21 = rangeFromDictionary(v20, &v114);
            v23 = v22;

            if (v114)
            {
              goto LABEL_111;
            }

            v24 = [v8 lt_codeUnitsRangeFromCodePointsRange:{v21, v23}];
            v95 = v25;
            v96 = v24;
            if (v24 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_38:
              v12 = v102;
              v32 = v105;
              goto LABEL_39;
            }

            v26 = [v105 objectForKeyedSubscript:@"projection"];
            v27 = rangeFromDictionary(v26, &v114);
            v29 = v28;

            if (v114)
            {
LABEL_111:
              v12 = v102;
              v19 = v105;
LABEL_122:

              v17 = obj;
              goto LABEL_123;
            }

            v30 = [v102 lt_codeUnitsRangeFromCodePointsRange:{v27, v29}];
            if (v30 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_38;
            }

            v85 = v31;
            v86 = v30;
            array3 = [MEMORY[0x277CBEB18] array];
            v19 = v105;
            v34 = [v105 objectForKeyedSubscript:@"alternatives"];
            if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
LABEL_121:

              v12 = v102;
              goto LABEL_122;
            }

            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v88 = v34;
            v35 = v34;
            v36 = [v35 countByEnumeratingWithState:&v110 objects:v121 count:16];
            if (!v36)
            {
              goto LABEL_104;
            }

            v37 = *v111;
            v89 = array3;
            v90 = v9;
            v87 = v35;
            v83 = *v111;
            do
            {
              v82 = v36;
              v38 = 0;
              do
              {
                if (*v111 != v37)
                {
                  v39 = v38;
                  objc_enumerationMutation(v35);
                  v38 = v39;
                }

                v84 = v38;
                v92 = *(*(&v110 + 1) + 8 * v38);
                if (!v92)
                {
                  goto LABEL_120;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_120;
                }

                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v40 = [&unk_284DC9858 countByEnumeratingWithState:&v106 objects:v120 count:16];
                if (v40)
                {
                  v41 = v40;
                  v42 = *v107;
LABEL_52:
                  v43 = 0;
                  while (1)
                  {
                    if (*v107 != v42)
                    {
                      objc_enumerationMutation(&unk_284DC9858);
                    }

                    v44 = *(*(&v106 + 1) + 8 * v43);
                    if (!v44)
                    {
                      goto LABEL_119;
                    }

                    objc_opt_class();
                    v45 = objc_opt_isKindOfClass();

                    v19 = v105;
                    if ((v45 & 1) == 0)
                    {
                      goto LABEL_120;
                    }

                    if (v41 == ++v43)
                    {
                      v41 = [&unk_284DC9858 countByEnumeratingWithState:&v106 objects:v120 count:16];
                      if (v41)
                      {
                        goto LABEL_52;
                      }

                      break;
                    }
                  }
                }

                v46 = [v92 objectForKeyedSubscript:@"alternative_description_index"];
                if (v46)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v47 = v46;
                  }

                  else
                  {
                    v47 = 0;
                  }
                }

                else
                {
                  v47 = 0;
                }

                v44 = v47;

                v48 = [v92 objectForKeyedSubscript:@"translation_phrase_index"];
                if (v48)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v49 = v48;
                  }

                  else
                  {
                    v49 = 0;
                  }
                }

                else
                {
                  v49 = 0;
                }

                v50 = v49;

                v51 = [v92 objectForKeyedSubscript:@"selection_span_index"];
                if (v51)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v52 = v51;
                  }

                  else
                  {
                    v52 = 0;
                  }
                }

                else
                {
                  v52 = 0;
                }

                v53 = v52;

                if (!v44 || !v50 || !v53)
                {
                  goto LABEL_118;
                }

                unsignedIntegerValue = [v44 unsignedIntegerValue];
                unsignedIntegerValue2 = [v50 unsignedIntegerValue];
                unsignedIntegerValue3 = [v53 unsignedIntegerValue];
                v55 = [v7 objectAtIndexedSubscript:unsignedIntegerValue];
                if (!v55)
                {
                  v60 = 0;
LABEL_117:

LABEL_118:
LABEL_119:

                  v19 = v105;
LABEL_120:

                  array3 = v89;
                  v9 = v90;
                  v34 = v88;
                  goto LABEL_121;
                }

                v80 = v53;
                v81 = v50;
                objc_opt_class();
                v9 = v90;
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v60 = v55;
LABEL_116:
                  v53 = v80;
                  v50 = v81;
                  goto LABEL_117;
                }

                v56 = genderPayloadValueForDescription(v55, @"gender");
                v57 = genderPayloadValueForDescription(v55, @"default_gender");
                v76 = v55;
                v77 = v56;
                if (v56 && v57)
                {
                  v58 = v57;
                  v59 = +[_LTUnvalidatedEdgeInfo genderEdgeInfoWithTargetPhraseIndex:targetLinkIndex:gender:defaultGender:](_LTUnvalidatedEdgeInfo, "genderEdgeInfoWithTargetPhraseIndex:targetLinkIndex:gender:defaultGender:", unsignedIntegerValue2, unsignedIntegerValue3, [v56 unsignedIntegerValue], objc_msgSend(v57, "unsignedIntegerValue"));
                  array3 = v89;
                  [v89 addObject:v59];
                  goto LABEL_100;
                }

                v75 = v57;
                v60 = v55;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v61 = v60;
                }

                else
                {
                  v61 = 0;
                }

                v62 = v61;
                if (v62)
                {
                  v74 = v62;
                  v63 = [v62 objectForKeyedSubscript:@"type"];
                  array3 = v89;
                  if (!v63)
                  {
                    v65 = 0;
                    v73 = 0;
                    goto LABEL_94;
                  }

                  v64 = v63;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v73 = v64;
                    if ([v64 isEqualToString:@"meaning"])
                    {
                      v65 = [v74 objectForKeyedSubscript:@"payload"];
                      if (v65)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v59 = [v65 objectForKeyedSubscript:@"definition"];
                          goto LABEL_96;
                        }
                      }

LABEL_94:
                      v59 = 0;
LABEL_96:

                      array3 = v89;
                    }

                    else
                    {
                      v59 = 0;
                    }

                    v62 = v74;
                    goto LABEL_98;
                  }

                  v65 = v64;
                  v59 = 0;
                  v73 = 0;
                  goto LABEL_96;
                }

                v59 = 0;
                array3 = v89;
LABEL_98:

                if (!v59)
                {

                  goto LABEL_116;
                }

                v66 = [_LTUnvalidatedEdgeInfo meaningEdgeInfoWithTargetPhraseIndex:unsignedIntegerValue2 targetLinkIndex:unsignedIntegerValue3 meaningDescription:v59];
                [array3 addObject:v66];

                v58 = v75;
LABEL_100:

                v37 = v83;
                v38 = v84 + 1;
                v19 = v105;
                v35 = v87;
              }

              while (v84 + 1 != v82);
              v36 = [v87 countByEnumeratingWithState:&v110 objects:v121 count:16];
              v37 = v83;
            }

            while (v36);
LABEL_104:

            v67 = [[_LTDisambiguationLinkConfiguration alloc] initWithSourceRange:v96 targetRange:v95 unvalidatedAdjacencyList:v86, v85, array3];
            [array2 addObject:v67];

            v32 = v105;
            v12 = v102;
LABEL_39:

            v18 = v103 + 1;
          }

          while (v103 + 1 != v97);
          v68 = [obj countByEnumeratingWithState:&v115 objects:v122 count:16];
          v97 = v68;
          if (!v68)
          {
LABEL_106:

            v69 = [[_LTDisambiguationNode alloc] initWithText:v12 links:array2 romanization:v93];
            [array addObject:v69];

            v10 = v91 + 1;
            if (v91 + 1 >= [v9 count])
            {
LABEL_107:
              v70 = [[_LTDisambiguableSentence alloc] initWithSourceText:v8 targetPhrases:array selectedPhraseIndex:0];
              v71 = [_LTDisambiguableResult alloc];
              v100 = v70;
              v119 = v70;
              v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
              v11 = [(_LTDisambiguableResult *)v71 initWithSentences:v12];
              goto LABEL_126;
            }

            goto LABEL_14;
          }
        }
      }

LABEL_127:

LABEL_128:
    }

    else
    {

      v11 = 0;
    }
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (_LTDisambiguableResult)initWithSentences:(id)sentences
{
  sentencesCopy = sentences;
  v13.receiver = self;
  v13.super_class = _LTDisambiguableResult;
  v5 = [(_LTDisambiguableResult *)&v13 init];
  if (!v5)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (![sentencesCopy count])
  {
    v10 = _LTOSLogDisambiguation(0, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_INFO, "Not creating disambiguable result because there's no sentences to create it with", v12, 2u);
    }

    goto LABEL_6;
  }

  v7 = [sentencesCopy copy];
  sentences = v5->_sentences;
  v5->_sentences = v7;

  [(_LTDisambiguableResult *)v5 _commonInit];
  v9 = v5;
LABEL_7:

  return v9;
}

- (_LTDisambiguableResult)initWithSentences:(id)sentences joinedWithString:(id)string
{
  stringCopy = string;
  v7 = MEMORY[0x277CBEB18];
  sentencesCopy = sentences;
  v9 = [[v7 alloc] initWithCapacity:{objc_msgSend(sentencesCopy, "count")}];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61___LTDisambiguableResult_initWithSentences_joinedWithString___block_invoke;
  v17 = &unk_278B6C960;
  v18 = stringCopy;
  v19 = v9;
  v10 = v9;
  v11 = stringCopy;
  [sentencesCopy enumerateObjectsUsingBlock:&v14];

  v12 = [(_LTDisambiguableResult *)self initWithSentences:v10, v14, v15, v16, v17];
  return v12;
}

+ (id)combineResults:(id)results joinedWithString:(id)string
{
  v31 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __58___LTDisambiguableResult_combineResults_joinedWithString___block_invoke;
  v22 = &unk_278B6C988;
  v23 = stringCopy;
  v9 = array;
  v24 = v9;
  v10 = stringCopy;
  [resultsCopy enumerateObjectsUsingBlock:&v19];
  v11 = [self alloc];
  v12 = [v11 initWithSentences:{v9, v19, v20, v21, v22}];
  v14 = _LTOSLogDisambiguation(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = v14;
    v17 = [resultsCopy count];
    v18 = [v9 count];
    *buf = 134218498;
    v26 = v17;
    v27 = 2048;
    v28 = v18;
    v29 = 2114;
    v30 = v12;
    _os_log_debug_impl(&dword_23AAF5000, v16, OS_LOG_TYPE_DEBUG, "Combined %zu disambiguationResults with total of %zu sentences into combined disambiguationResult: %{public}@", buf, 0x20u);
  }

  return v12;
}

+ (id)combinedDisambiguableResultFromTranslationResults:(id)results joinedWithString:(id)string
{
  resultsCopy = results;
  v5 = [resultsCopy _ltCompactMap:&__block_literal_global_1];
  v6 = [v5 count];
  v7 = [resultsCopy count];
  if (v6 == v7)
  {
    v9 = [_LTDisambiguableResult combineResults:v5 joinedWithString:@" "];
    hasDisambiguations = [v9 hasDisambiguations];
    v11 = hasDisambiguations;
    v13 = _LTOSLogDisambiguation(hasDisambiguations, v12);
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(_LTDisambiguableResult *)v9 combinedDisambiguableResultFromTranslationResults:v14 joinedWithString:resultsCopy];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_INFO, "Combined paragraph disambiguableResult has no disambiguations, but returning it anyway since it may be later combined with other disambiguable results", v17, 2u);
    }
  }

  else
  {
    v15 = _LTOSLogDisambiguation(v7, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(_LTDisambiguableResult *)v15 combinedDisambiguableResultFromTranslationResults:v5 joinedWithString:resultsCopy];
    }

    v9 = 0;
  }

  return v9;
}

- (id)sentenceWithUUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    sentences = self->_sentences;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43___LTDisambiguableResult_sentenceWithUUID___block_invoke;
    v9[3] = &unk_278B6C9B0;
    v10 = dCopy;
    v7 = [(NSArray *)sentences lt_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)targetText
{
  v17 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_sentences;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        targetText = [*(*(&v12 + 1) + 8 * i) targetText];
        [string appendString:targetText];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [string copy];

  return v10;
}

- (NSString)sourceText
{
  v17 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_sentences;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        sourceText = [*(*(&v12 + 1) + 8 * i) sourceText];
        [string appendString:sourceText];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [string copy];

  return v10;
}

- (NSString)romanization
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_sentences _ltCompactMap:&__block_literal_global_9];
  v4 = [(NSArray *)self->_sentences count];
  v5 = [v3 count];
  if (v4 == v5)
  {
    v7 = [v3 componentsJoinedByString:&stru_284DBB9B8];
  }

  else
  {
    v8 = _LTOSLogRomanization(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v3 count];
      v11 = [(NSArray *)self->_sentences count];
      v13 = 134218240;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "Not returning romanization for disambiguable result since only %zu out of %zu sentences had romanization", &v13, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)generateAttributedStringForLocation:(unint64_t)location withGlobalAttributes:(id)attributes attributeProvider:(id)provider
{
  v27 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v20 = WeakRetained;
  if (objc_opt_respondsToSelector())
  {
    v11 = [WeakRetained excludedTypesForResult:{self, WeakRetained}];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(_LTDisambiguableResult *)self sentences];
  v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v22 + 1) + 8 * i) _generateAttributedStringForLocation:location result:self excludedTypes:v11 globalAttributes:attributesCopy attributeProvider:{providerCopy, v20}];
        [v12 appendAttributedString:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = [v12 copy];

  return v18;
}

- (BOOL)hasDisambiguationsOfType:(unint64_t)type
{
  sentences = self->_sentences;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___LTDisambiguableResult_hasDisambiguationsOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e34_B16__0___LTDisambiguableSentence_8l;
  v5[4] = type;
  return [(NSArray *)sentences lt_hasObjectPassingTest:v5];
}

+ (BOOL)isGenderDisambiguationEnabled
{
  if (isGenderDisambiguationEnabled_onceToken != -1)
  {
    +[_LTDisambiguableResult isGenderDisambiguationEnabled];
  }

  return isGenderDisambiguationEnabled_isGenderDisambiguationEnabled;
}

- (NSArray)observers
{
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v3 = [allObjects copy];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSArray *)self->_sentences count];
  [(_LTDisambiguableResult *)self hasDisambiguations];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@: %p number of sentences: %zu; hasDisambiguations: %@>", v5, self, v6, v7];;

  return v8;
}

- (void)_insertPrefix:(id)prefix
{
  sentences = self->_sentences;
  prefixCopy = prefix;
  firstObject = [(NSArray *)sentences firstObject];
  [firstObject _insertPrefix:prefixCopy];
}

- (void)disambiguableSentence:(id)sentence didSelectNode:(id)node atIndex:(unint64_t)index withSelection:(id)selection
{
  v24 = *MEMORY[0x277D85DE8];
  sentenceCopy = sentence;
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 disambiguableResult:self didChangeResultForSentence:sentenceCopy withSelection:selectionCopy];
  }

  v18 = sentenceCopy;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v13 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(allObjects);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 disambiguableResultDidUpdate:self];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

- (id)excludedTypesForDisambiguableSentence:(id)sentence
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained excludedTypesForResult:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_LTDisambiguableResult)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _LTDisambiguableResult;
  v5 = [(_LTDisambiguableResult *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sentences"];
    sentences = v5->_sentences;
    v5->_sentences = v9;

    [(_LTDisambiguableResult *)v5 _commonInit];
    v11 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(MEMORY[0x277CBEA60] "allocWithZone:{"initWithArray:copyItems:", self->_sentences, 1}")];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSentences:", v4}];

  return v5;
}

- (void)_commonInit
{
  v15 = *MEMORY[0x277D85DE8];
  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  observers = self->_observers;
  self->_observers = weakObjectsHashTable;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sentences;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setDelegate:{self, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (_LTDisambiguableResultDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)combinedDisambiguableResultFromTranslationResults:(void *)a3 joinedWithString:.cold.1(void *a1, void *a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 count];
  [a3 count];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_ERROR, "Unable to create combined paragraph disambiguableResult from array of translationResults because only %zu out of %zu translationResults had disambiguableResults set", v6, 0x16u);
}

+ (void)combinedDisambiguableResultFromTranslationResults:(void *)a3 joinedWithString:.cold.2(uint64_t a1, void *a2, void *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a2;
  [a3 count];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23AAF5000, v4, OS_LOG_TYPE_DEBUG, "Created combined disambiguation result: %{public}@; from %zu individual translation results", v5, 0x16u);
}

@end