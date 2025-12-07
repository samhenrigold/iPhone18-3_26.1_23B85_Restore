void sub_1C2A29184(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x5E0], 8);
  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  _Unwind_Resume(a1);
}

void *___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    if ([a2 objectForKeyedSubscript:@"kQPFavoritedAction"])
    {
      v9 = 32;
    }

    else if ([a2 objectForKeyedSubscript:@"kQPMedia"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPKind"))
    {
      v9 = 40;
    }

    else if ([a2 objectForKeyedSubscript:@"kQPTaggedPerson"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPGroundedPerson"))
    {
      v9 = 48;
    }

    else
    {
      result = [a2 objectForKeyedSubscript:@"kQPDate"];
      if (!result)
      {
        return result;
      }

      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (!result)
      {
        return result;
      }

      [*(a1 + 56) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
      v9 = 64;
    }

    v10 = *(a1 + v9);
    v11 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

    return [v10 addObject:v11];
  }

  return result;
}

void PhExactMatchRankingAttribs(void)
{
  {
    PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs = 0u;
    *&qword_1EBF483C0 = 0u;
    dword_1EBF483D0 = 1065353216;
  }

  if (PhExactMatchRankingAttribs(void)::onceToken != -1)
  {

    dispatch_once(&PhExactMatchRankingAttribs(void)::onceToken, &__block_literal_global_165);
  }
}

void *PhRankingTreeFromStr(char *a1, float a2, int *a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL20PhRankingTreeFromStrPKcfPi_block_invoke;
  v7[3] = &unk_1E8199740;
  v8 = a2;
  v7[4] = &v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __db_query_tree_apply_block_block_invoke;
  v13[3] = &unk_1E8198ED0;
  v13[4] = v7;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v13, 0);
  *a3 += *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return query_node_with_ann;
}

uint64_t _containsOnlyCharsInCharset(NSString *a1, NSCharacterSet *a2)
{
  if (![(NSString *)a1 length])
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = [(NSCharacterSet *)a2 characterIsMember:[(NSString *)a1 characterAtIndex:v4]];
    if (!v5)
    {
      break;
    }

    ++v4;
  }

  while (v4 < [(NSString *)a1 length]);
  return v5;
}

void *getSynonym(void *a1, uint64_t *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v2 = *(a2 + 23);
    if (v2 != 3)
    {
      if (v2 != 7)
      {
        if (v2 != 8)
        {
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      if (*a2 != 1684301175 || *(a2 + 3) != 1735289188)
      {
        goto LABEL_35;
      }

LABEL_30:
      v4 = "marriage";
      return std::string::basic_string[abi:nn200100]<0>(a1, v4);
    }

    if (*a2 != 29555 || *(a2 + 2) != 110)
    {
      goto LABEL_35;
    }

LABEL_36:
    v4 = "social security";
    return std::string::basic_string[abi:nn200100]<0>(a1, v4);
  }

  v3 = a2[1];
  if (v3 == 3)
  {
    if (**a2 != 29555 || *(*a2 + 2) != 110)
    {
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v3 == 7)
  {
    if (**a2 != 1684301175 || *(*a2 + 3) != 1735289188)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (v3 != 8)
  {
LABEL_35:
    v4 = "";
    return std::string::basic_string[abi:nn200100]<0>(a1, v4);
  }

  a2 = *a2;
LABEL_10:
  if (*a2 != 0x656761697272616DLL)
  {
    goto LABEL_35;
  }

  v4 = "wedding";
  return std::string::basic_string[abi:nn200100]<0>(a1, v4);
}

query_node *PhImpAttributesPrefixRankingNode(char *__s)
{
  QueryNode = createQueryNode("kMDItemPhotosPeopleNames", __s, 112, 1, -1, 0.17, 0.0);
  v3 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", __s, 112, 1, -1, 0.17, 0.0);
  v4 = createQueryNode("kMDItemPhotosSceneClassificationLabels", __s, 112, 1, -1, 0.16, 0.0);
  v5 = createQueryNode("kMDItemPhotosSceneClassificationSynonyms", __s, 112, 1, -1, 0.16, 0.0);
  v6 = createQueryNode("kMDItemPhotosLocationKeywords", __s, 112, 1, -1, 0.14, 0.0);
  v7 = makeOrNode(QueryNode, v3);
  v8 = makeOrNode(v4, v5);
  v9 = makeOrNode(v7, v8);

  return makeOrNode(v6, v9);
}

query_node *PhImpAttributesRankingNode(char *__s)
{
  QueryNode = createQueryNode("kMDItemPhotosPeopleNames", __s, 112, 1, 0, 0.17, 0.0);
  v3 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", __s, 112, 1, 0, 0.17, 0.0);
  v4 = makeOrNode(QueryNode, v3);
  v5 = createQueryNode("kMDItemPhotosSceneClassificationLabels", __s, 112, 1, 0, 0.16, 0.0);
  v6 = createQueryNode("kMDItemPhotosSceneClassificationSynonyms", __s, 112, 1, 0, 0.16, 0.0);
  v7 = makeOrNode(v5, v6);
  v8 = createQueryNode("kMDItemPhotosLocationKeywords", __s, 112, 1, 0, 0.14, 0.0);
  v9 = makeOrNode(v7, v8);

  return makeOrNode(v4, v9);
}

query_node *PhRankingBoostTree(void)
{
  QueryNode = createQueryNode("kMDItemPhotosFavorited", "1", 0, 4, 0, 1.13, 1.0);
  if (CurrentYear(void)::onceToken != -1)
  {
    dispatch_once(&CurrentYear(void)::onceToken, &__block_literal_global_218);
  }

  v1 = createQueryNode("_kMDItemContentCreationDateYear", CurrentYear(void)::currYear, 0, 4, 0, 1.1, 1.0);
  if (PhThreeYearAgo(void)::onceToken != -1)
  {
    dispatch_once(&PhThreeYearAgo(void)::onceToken, &__block_literal_global_223);
  }

  v2 = createQueryNode("_kMDItemContentCreationDateYear", PhThreeYearAgo(void)::oldYear, 0, 4, 0, 1.05, 1.0);
  v3 = makeOrNode(v1, v2);
  v4 = createQueryNode("kMDItemAestheticScore", "0.5", 0, 4, 0, 1.05, 1.0);
  v5 = createQueryNode("kMDItemAestheticScore", "0.2", 0, 4, 0, 1.02, 1.0);
  v6 = makeOrNode(v4, v5);
  v7 = createQueryNode("kMDItemCurationScore", "0.7", 0, 4, 0, 1.07, 1.0);
  v8 = createQueryNode("kMDItemCurationScore", "0.4", 0, 4, 0, 1.04, 1.0);
  v9 = makeOrNode(v7, v8);
  v10 = makeAndNode(QueryNode, v3);
  v11 = makeAndNode(v6, v9);

  return makeAndNode(v10, v11);
}

uint64_t ___ZL20PhotosLLMRankingTreePK10__CFStringPK20__CFAttributedStringPK14__CFDictionaryP9PRContext_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 32);
    }
  }

  return a2;
}

void *PhotosLLMRetrievalTree(const __CFString *a1, const __CFAttributedString *a2, const __CFDictionary *a3, PRContext *a4)
{
  v231 = *MEMORY[0x1E69E9840];
  v198 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[qid=%llu][%s][POMMES][LLM][Ph]", a4->var0, a4->var1];
  var23 = a4->var23;
  if (var23)
  {
    Value = CFDictionaryGetValue(a4->var23, @"disableMetadataSearch");
    valuePtr[0] = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt8Type, valuePtr);
      HIDWORD(v197) = valuePtr[0];
    }

    else
    {
      HIDWORD(v197) = 0;
    }

    v11 = CFDictionaryGetValue(var23, @"disableSemanticSearch");
    valuePtr[0] = 0;
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt8Type, valuePtr);
      v195 = valuePtr[0];
    }

    else
    {
      v195 = 0;
    }

    v12 = CFDictionaryGetValue(var23, @"disableU2");
    valuePtr[0] = 0;
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt8Type, valuePtr);
      LODWORD(v197) = valuePtr[0];
    }

    else
    {
      LODWORD(v197) = 0;
    }

    v13 = CFDictionaryGetValue(var23, @"maxANNResultCount");
    v10 = 1000;
    *valuePtr = 1000;
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberIntType, valuePtr);
      v10 = *valuePtr;
    }
  }

  else
  {
    v197 = 0;
    v195 = 0;
    v10 = 1000;
  }

  v191 = v10;
  v213 = 0;
  v214 = 0;
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DF70] array];
  theDict = a3;
  if (a2 && CFAttributedStringGetLength(a2) >= 1)
  {
    PhPopulateFiltersFromQuery(a2, &v214, &v213, v14, v15, 0, v198, (*(a4 + 7) >> 9) & 1);
  }

  v211 = 0;
  v212 = 0;
  v210 = 0;
  v209 = 0;
  if (v197 & HIDWORD(v197))
  {
    v16 = *__error();
    v17 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v198;
      _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "%@ Skipping aNN filters and metadata nodes (Reason: U2 and metadata search are disabled)", valuePtr, 0xCu);
    }

    *__error() = v16;
    goto LABEL_148;
  }

  if (isValidQueryUnderstanding(a3))
  {
    PhPopulateNodesFromLLMParse(a3, v14, v15, v195 & 1, &v211, &v212, &v210, &v209, v198);
    goto LABEL_144;
  }

  if (a3 && CFDictionaryContainsKey(a3, @"attributedParses") && (v18 = CFDictionaryGetValue(a3, @"attributedParses"), [v18 count]))
  {
    v19 = [v18 objectAtIndexedSubscript:0];
  }

  else
  {
    v19 = 0;
  }

  v20 = *__error();
  v21 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *valuePtr = 138412290;
    *&valuePtr[4] = v198;
    _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "%@ {QP} Using rule-based parse for creating ann filter and unigram node (U2 parse missing)", valuePtr, 0xCu);
  }

  *__error() = v20;
  v204 = [MEMORY[0x1E695DF70] array];
  v207 = [MEMORY[0x1E695DF70] array];
  v190 = [MEMORY[0x1E695DF70] array];
  v201 = [MEMORY[0x1E695DF70] array];
  v205 = [MEMORY[0x1E695DF70] array];
  v22 = [v19 length];
  *valuePtr = MEMORY[0x1E69E9820];
  *&valuePtr[8] = 3221225472;
  *&valuePtr[16] = ___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke;
  *&valuePtr[24] = &unk_1E8199768;
  *&valuePtr[32] = v190;
  *&valuePtr[40] = v201;
  *&valuePtr[48] = v205;
  *&valuePtr[56] = v204;
  v230 = v207;
  [v19 enumerateAttributesInRange:0 options:v22 usingBlock:{0, valuePtr}];
  if ([v207 count] || objc_msgSend(v190, "count") || objc_msgSend(v205, "count") || objc_msgSend(v201, "count"))
  {
    v23 = *__error();
    v24 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v207 count];
      v26 = [v190 count];
      v27 = [v205 count];
      v28 = [v201 count];
      *valuePtr = 138413314;
      *&valuePtr[4] = v198;
      *&valuePtr[12] = 2048;
      *&valuePtr[14] = v25;
      *&valuePtr[22] = 2048;
      *&valuePtr[24] = v26;
      *&valuePtr[32] = 2048;
      *&valuePtr[34] = v27;
      *&valuePtr[42] = 2048;
      *&valuePtr[44] = v28;
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "%@ {QP} Populated filters: time = %lu, fav = %lu, person = %lu, mediatype = %lu", valuePtr, 0x34u);
    }

    *__error() = v23;
  }

  v203 = [MEMORY[0x1E695DF90] dictionary];
  PhRetrievalAttribs();
  QueryTokens = CreateQueryTokens(a1, 1);
  if (QueryTokens)
  {
    v188 = QueryTokens;
    v30 = *QueryTokens;
    if (v30)
    {
      Count = CFArrayGetCount(v30);
      obj = Count;
      if (Count)
      {
        theArray = *v188;
        v193 = v188[2];
        v194 = v188[1];
        v210 = Count;
        v187 = Count - 1;
        if (Count >= 1)
        {
          v32 = 0;
          while (1)
          {
            RangeAtIndex = getRangeAtIndex(v194, v193, v32);
            v35 = v34;
            if (RangeAtIndex == -1)
            {
              break;
            }

            v36 = RangeAtIndex;
            if ([v14 count])
            {
              v37 = 0;
              while (1)
              {
                v238.location = [objc_msgSend(v14 objectAtIndexedSubscript:{v37), "rangeValue"}];
                v238.length = v38;
                v232.location = v36;
                v232.length = v35;
                if (NSIntersectionRange(v232, v238).length)
                {
                  break;
                }

                if (++v37 >= [v14 count])
                {
                  goto LABEL_47;
                }
              }

              v44 = *__error();
              v45 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138412546;
                *&valuePtr[4] = v198;
                *&valuePtr[12] = 2048;
                *&valuePtr[14] = v32;
                _os_log_impl(&dword_1C278D000, v45, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (REASON: Its a filter token)", valuePtr, 0x16u);
              }

              *__error() = v44;
              if ([v15 count])
              {
                v46 = 0;
                do
                {
                  v239.location = [objc_msgSend(v15 objectAtIndexedSubscript:{v46), "rangeValue"}];
                  v239.length = v47;
                  v233.location = v36;
                  v233.length = v35;
                  if (NSIntersectionRange(v233, v239).length)
                  {
                    goto LABEL_65;
                  }
                }

                while (++v46 < [v15 count]);
              }
            }

            else
            {
LABEL_47:
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v32);
              if (!CFStringGetLength(ValueAtIndex))
              {
                v42 = *__error();
                v48 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 138412546;
                  *&valuePtr[4] = v198;
                  *&valuePtr[12] = 2048;
                  *&valuePtr[14] = v32;
                  _os_log_impl(&dword_1C278D000, v48, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (Reason: Its zero-length)", valuePtr, 0x16u);
                }

LABEL_64:
                *__error() = v42;
                goto LABEL_65;
              }

              if (!hasOnlySpecialChar(ValueAtIndex))
              {
                if (isOptionalToken(ValueAtIndex, v32 == v187) && (--v210, v32 != v187))
                {
                  v42 = *__error();
                  v56 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 138412546;
                    *&valuePtr[4] = v198;
                    *&valuePtr[12] = 2048;
                    *&valuePtr[14] = v32;
                    _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (Reason: It is optional)", valuePtr, 0x16u);
                  }
                }

                else
                {
                  if ([v207 count])
                  {
                    v49 = 0;
                    while (1)
                    {
                      v240.location = [objc_msgSend(v207 objectAtIndexedSubscript:{v49), "rangeValue"}];
                      v240.length = v50;
                      v234.location = v36;
                      v234.length = v35;
                      if (NSIntersectionRange(v234, v240).length)
                      {
                        break;
                      }

                      if (++v49 >= [v207 count])
                      {
                        goto LABEL_73;
                      }
                    }

                    v57 = *__error();
                    v58 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                    {
                      *valuePtr = 138412546;
                      *&valuePtr[4] = v198;
                      *&valuePtr[12] = 2048;
                      *&valuePtr[14] = v32;
                      _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token %lu has a date parse, will process it after all tokens are processed", valuePtr, 0x16u);
                    }

                    *__error() = v57;
                    if ([v203 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v49)}])
                    {
                      [objc_msgSend(v203 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v49)), "addObject:", ValueAtIndex}];
                    }

                    else
                    {
                      v69 = [MEMORY[0x1E695DF70] arrayWithObject:ValueAtIndex];
                      [v203 setObject:v69 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v49)}];
                    }

                    goto LABEL_65;
                  }

LABEL_73:
                  v51 = [(__CFString *)ValueAtIndex UTF8String];
                  if (v51)
                  {
                    __s = v51;
                    v52 = qword_1EBF484B0;
                    if (qword_1EBF484B0)
                    {
                      v53 = 0;
                      do
                      {
                        v54 = (v52 + 16);
                        if (*(v52 + 39) < 0)
                        {
                          v54 = *v54;
                        }

                        QueryNode = createQueryNode(v54, __s, 112, 1, 0, 0.0, 0.0);
                        v53 = makeOrNode(v53, QueryNode);
                        v52 = *v52;
                      }

                      while (v52);
                    }

                    else
                    {
                      v53 = 0;
                    }

                    memset(valuePtr, 0, 24);
                    std::string::basic_string[abi:nn200100]<0>(buf, __s);
                    getSynonym(valuePtr, buf);
                    v60 = v190;
                    if (v228 < 0)
                    {
                      operator delete(*buf);
                    }

                    v61 = valuePtr[23];
                    if (valuePtr[23] < 0)
                    {
                      v61 = *&valuePtr[8];
                    }

                    if (v61)
                    {
                      v62 = *__error();
                      v63 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        *&buf[4] = v198;
                        v226 = 2048;
                        v227 = v32;
                        _os_log_impl(&dword_1C278D000, v63, OS_LOG_TYPE_DEFAULT, "%@ {QP} Adding synonym for token %lu", buf, 0x16u);
                      }

                      *__error() = v62;
                      if (valuePtr[23] >= 0)
                      {
                        v64 = valuePtr;
                      }

                      else
                      {
                        v64 = *valuePtr;
                      }

                      v65 = qword_1EBF484B0;
                      if (qword_1EBF484B0)
                      {
                        v66 = 0;
                        do
                        {
                          v67 = (v65 + 16);
                          if (*(v65 + 39) < 0)
                          {
                            v67 = *v67;
                          }

                          v68 = createQueryNode(v67, v64, 112, 1, 0, 0.0, 0.0);
                          v66 = makeOrNode(v66, v68);
                          v65 = *v65;
                        }

                        while (v65);
                      }

                      else
                      {
                        v66 = 0;
                      }

                      v53 = makeOrNode(v53, v66);
                      v60 = v190;
                    }

                    if ([v60 count])
                    {
                      v70 = 0;
                      while (1)
                      {
                        v241.location = [objc_msgSend(v60 objectAtIndexedSubscript:{v70), "rangeValue"}];
                        v241.length = v71;
                        v235.location = v36;
                        v235.length = v35;
                        if (NSIntersectionRange(v235, v241).length)
                        {
                          break;
                        }

                        if (++v70 >= [v60 count])
                        {
                          goto LABEL_114;
                        }
                      }

                      v72 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
                      v73 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
                      v53 = makeOrNode(v53, v73);
                    }

                    else
                    {
LABEL_114:
                      v72 = 0;
                    }

                    if ([v201 count])
                    {
                      v74 = v72;
                      v75 = 0;
                      do
                      {
                        v242.location = [objc_msgSend(v201 objectAtIndexedSubscript:{v75), "rangeValue"}];
                        v242.length = v76;
                        v236.location = v36;
                        v236.length = v35;
                        if (NSIntersectionRange(v236, v242).length)
                        {
                          goto LABEL_121;
                        }

                        ++v75;
                      }

                      while (v75 < [v201 count]);
                      v75 = -1;
LABEL_121:
                      v77 = v75 == -1;
                      v72 = v74;
                    }

                    else
                    {
                      v77 = 1;
                    }

                    if ([v205 count])
                    {
                      v186 = v72;
                      v78 = 0;
                      do
                      {
                        v243.location = [objc_msgSend(v205 objectAtIndexedSubscript:{v78), "rangeValue"}];
                        v243.length = v79;
                        v237.location = v36;
                        v237.length = v35;
                        if (NSIntersectionRange(v237, v243).length)
                        {
                          goto LABEL_128;
                        }

                        ++v78;
                      }

                      while (v78 < [v205 count]);
                      v78 = -1;
LABEL_128:
                      v80 = v78 == -1;
                      v72 = v186;
                      if (v77)
                      {
LABEL_129:
                        v81 = __s;
LABEL_132:
                        if (!v80)
                        {
                          v83 = createQueryNode("kMDItemPhotosPeopleNames", v81, 112, 1, -1, 0.0, 0.0);
                          v72 = makeOrNode(v72, v83);
                        }

                        if (v72)
                        {
                          --v210;
                        }

                        v211 = makeAndNode(v211, v72);
                        v212 = makeAndNode(v212, v53);
                        if ((valuePtr[23] & 0x80000000) != 0)
                        {
                          operator delete(*valuePtr);
                        }

                        goto LABEL_65;
                      }
                    }

                    else
                    {
                      v80 = 1;
                      if (v77)
                      {
                        goto LABEL_129;
                      }
                    }

                    v81 = __s;
                    v82 = createQueryNode("kMDItemPhotosMediaTypes", __s, 112, 1, -1, 0.0, 0.0);
                    v72 = makeOrNode(v72, v82);
                    goto LABEL_132;
                  }

                  v42 = *__error();
                  v59 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 138412546;
                    *&valuePtr[4] = v198;
                    *&valuePtr[12] = 2048;
                    *&valuePtr[14] = v32;
                    _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (ERROR: UTF8 encoding of token failed)", valuePtr, 0x16u);
                  }
                }

                goto LABEL_64;
              }

              v40 = *__error();
              v41 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138412546;
                *&valuePtr[4] = v198;
                *&valuePtr[12] = 2048;
                *&valuePtr[14] = v32;
                _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (Reason: It has only special characters)", valuePtr, 0x16u);
              }

              *__error() = v40;
            }

            --v210;
LABEL_65:
            if (++v32 == obj)
            {
              goto LABEL_194;
            }
          }

          v42 = *__error();
          v43 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 138413058;
            *&valuePtr[4] = v198;
            *&valuePtr[12] = 2048;
            *&valuePtr[14] = v32;
            *&valuePtr[22] = 2048;
            *&valuePtr[24] = -1;
            *&valuePtr[32] = 2048;
            *&valuePtr[34] = v35;
            _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (ERROR: invalid range: (%ld, %ld))", valuePtr, 0x2Au);
          }

          goto LABEL_64;
        }

LABEL_194:
        freeQueryTokensContext(v188);
        if (![v203 count])
        {
          goto LABEL_144;
        }

        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        obja = [v203 allKeys];
        v206 = [obja countByEnumeratingWithState:&v221 objects:valuePtr count:16];
        if (!v206)
        {
          goto LABEL_144;
        }

        v202 = *v222;
LABEL_197:
        v129 = 0;
        while (1)
        {
          if (*v222 != v202)
          {
            objc_enumerationMutation(obja);
          }

          v130 = *(*(&v221 + 1) + 8 * v129);
          v217 = 0u;
          v218 = 0u;
          v219 = 0u;
          v220 = 0u;
          v208 = v130;
          v131 = [v203 objectForKeyedSubscript:?];
          v132 = 0;
          v133 = [v131 countByEnumeratingWithState:&v217 objects:buf count:16];
          if (v133)
          {
            break;
          }

LABEL_220:
          v143 = [objc_msgSend(v204 objectAtIndexedSubscript:{objc_msgSend(v208, "intValue")), "UTF8String"}];
          v144 = v143;
          if (v143)
          {
            query_node_with_ann = db_make_query_node_with_ann(v143, 0);
            v211 = makeAndNode(v211, query_node_with_ann);
            v146 = db_make_query_node_with_ann(v144, 0);
          }

          else
          {
            v146 = 0;
          }

          v147 = makeOrNode(v132, v146);
          v212 = makeAndNode(v212, v147);
          if (++v129 == v206)
          {
            v206 = [obja countByEnumeratingWithState:&v221 objects:valuePtr count:16];
            if (!v206)
            {
              goto LABEL_144;
            }

            goto LABEL_197;
          }
        }

        v134 = *v218;
LABEL_202:
        v135 = 0;
        while (1)
        {
          if (*v218 != v134)
          {
            objc_enumerationMutation(v131);
          }

          v136 = [*(*(&v217 + 1) + 8 * v135) UTF8String];
          if (!v136)
          {
            goto LABEL_218;
          }

          std::string::basic_string[abi:nn200100]<0>(__p, v136);
          v137 = isOptionalWord(__p);
          v138 = v137;
          if (v216 < 0)
          {
            operator delete(__p[0]);
            if (!v138)
            {
LABEL_210:
              v139 = qword_1EBF484B0;
              if (qword_1EBF484B0)
              {
                v140 = 0;
                do
                {
                  v141 = (v139 + 16);
                  if (*(v139 + 39) < 0)
                  {
                    v141 = *v141;
                  }

                  v142 = createQueryNode(v141, v136, 112, 1, 0, 0.0, 0.0);
                  v140 = makeOrNode(v140, v142);
                  v139 = *v139;
                }

                while (v139);
              }

              else
              {
                v140 = 0;
              }

              v132 = makeAndNode(v132, v140);
            }
          }

          else if (!v137)
          {
            goto LABEL_210;
          }

LABEL_218:
          if (++v135 == v133)
          {
            v133 = [v131 countByEnumeratingWithState:&v217 objects:buf count:16];
            if (!v133)
            {
              goto LABEL_220;
            }

            goto LABEL_202;
          }
        }
      }
    }

    freeQueryTokensContext(v188);
    v84 = *__error();
    v85 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v198;
      _os_log_impl(&dword_1C278D000, v85, OS_LOG_TYPE_DEFAULT, "%@ {QP} Return no results (ERROR: zero tokens found from the userQuery)", valuePtr, 0xCu);
    }
  }

  else
  {
    v84 = *__error();
    v86 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v198;
      _os_log_impl(&dword_1C278D000, v86, OS_LOG_TYPE_DEFAULT, "%@ {QP} Return no results (ERROR: missing tokenization context on userQuery)", valuePtr, 0xCu);
    }
  }

  *__error() = v84;
LABEL_144:
  if (v197)
  {
    v87 = *__error();
    v88 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v198;
      _os_log_impl(&dword_1C278D000, v88, OS_LOG_TYPE_DEFAULT, "%@ Skipping aNN filters (U2 is disabled by client)", valuePtr, 0xCu);
    }

    *__error() = v87;
    db_free_query_node(v211);
    v211 = 0;
  }

LABEL_148:
  v89 = makeAndNode(v212, v213);
  v90 = v89;
  if ((v197 & 0x100000000) != 0)
  {
    v91 = *__error();
    v92 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v198;
      _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "%@ Skipping metadata node (metadata search is disabled)", valuePtr, 0xCu);
    }

    *__error() = v91;
    db_free_query_node(v90);
    v90 = 0;
  }

  else if (!v89)
  {
    v93 = *__error();
    v94 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v198;
      _os_log_impl(&dword_1C278D000, v94, OS_LOG_TYPE_DEFAULT, "%@ Skipping metadata node (query has no free tokens)", valuePtr, 0xCu);
    }

    v90 = 0;
    *__error() = v93;
  }

  if ((v195 & 1) == 0)
  {
    if (!(BYTE4(v197) & 1 | (v90 != 0)))
    {
      v95 = *__error();
      v120 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v198;
        _os_log_impl(&dword_1C278D000, v120, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (query has only suggestions)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    v97 = v210;
    if (v210 <= 0)
    {
      v95 = *__error();
      v122 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v198;
        _os_log_impl(&dword_1C278D000, v122, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (no visual token in the query)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    if (!theDict || !CFDictionaryContainsKey(theDict, @"kQPQueryPhotoEmbeddingEncodedData"))
    {
      v95 = *__error();
      v121 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v198;
        _os_log_impl(&dword_1C278D000, v121, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: missing query embedding)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    v98 = CFDictionaryGetValue(theDict, @"kQPQueryPhotoEmbeddingEncodedData");
    if (!v98)
    {
      v95 = *__error();
      v148 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v198;
        _os_log_impl(&dword_1C278D000, v148, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: encoded query embedding in null)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    v99 = decodeEmbeddingData(v98);
    if (!v99)
    {
      v95 = *__error();
      v149 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412290;
        *&valuePtr[4] = v198;
        _os_log_impl(&dword_1C278D000, v149, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: decoded query embedding in null)", valuePtr, 0xCu);
      }

      goto LABEL_185;
    }

    v100 = v99;
    v101 = [CFDictionaryGetValue(theDict @"embeddingVersion")];
    v102 = CFDictionaryGetValue(theDict, @"embeddingRelevanceThreshold");
    if (v102 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v102 floatValue], v103 >= 0.0))
    {
      [v102 floatValue];
      v107 = (1.0 - v162) + (1.0 - v162);
      v115 = *__error();
      v163 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        [v102 floatValue];
        *valuePtr = 138412802;
        *&valuePtr[4] = v198;
        *&valuePtr[12] = 2048;
        *&valuePtr[14] = v107;
        *&valuePtr[22] = 2048;
        *&valuePtr[24] = v164;
        v117 = "%@ Threshold based on client supplied values: %f, rel: %f";
        v118 = v163;
        v119 = 32;
        goto LABEL_262;
      }
    }

    else
    {
      v104 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      if (v104)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v104 floatValue];
          v106 = v105;
          v107 = (1.0 - v106) + (1.0 - v106);
          v108 = *__error();
          v109 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 138412802;
            *&valuePtr[4] = v198;
            *&valuePtr[12] = 2048;
            *&valuePtr[14] = v106;
            *&valuePtr[22] = 2048;
            *&valuePtr[24] = v107;
            _os_log_impl(&dword_1C278D000, v109, OS_LOG_TYPE_DEFAULT, "%@ Using user default threshold: %f, distance: %f", valuePtr, 0x20u);
          }

          *__error() = v108;
          if (v107 != -1.0)
          {
LABEL_264:
            v170 = [(__CFDictionary *)v100 length];
            if (v170 > 1)
            {
              v173 = [(__CFDictionary *)v100 bytes];
              if (v173)
              {
                v174 = MEMORY[0x1E69E9AC8];
                if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
                {
                  ++sTotal;
                }

                v175 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
                v176 = v170 >> 1;
                if (!v175)
                {
                  _log_fault_for_malloc_failure();
                }

                *v175 = strdup("_kMDItemPhotoEmbedding");
                *(v175 + 6) = 15;
                if (v176 == 512)
                {
                  v177 = 5;
                }

                else
                {
                  v177 = 6;
                }

                v175[16] = v107;
                *(v175 + 15) = v177 | (16 * (v191 & 0xFFFFF)) | (v101 << 25);
                *(v175 + 10) = 5;
                *(v175 + 40) |= 0x10000u;
                v178 = malloc_type_zone_malloc(queryZone, v170 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
                if (!v178)
                {
                  _log_fault_for_malloc_failure();
                }

                v179 = 0;
                *(v175 + 37) = v178;
                if (v176 <= 1)
                {
                  v180 = 1;
                }

                else
                {
                  v180 = v170 >> 1;
                }

                do
                {
                  *(*(v175 + 37) + 2 * v179) = *(v173 + 2 * v179);
                  ++v179;
                }

                while (v180 != v179);
                if (*v174 <= 0x4FuLL)
                {
                  ++sTotal;
                }

                v181 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
                if (v181)
                {
                  v181->var6 = 4;
                  v181->var2 = v175;
                  v123 = makeAndNode(v181, v211);
                  v182 = [(__CFDictionary *)v100 length];
                  v183 = *__error();
                  v184 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 138413314;
                    *&valuePtr[4] = v198;
                    *&valuePtr[12] = 2048;
                    *&valuePtr[14] = v182 >> 1;
                    *&valuePtr[22] = 2048;
                    *&valuePtr[24] = v107;
                    *&valuePtr[32] = 1024;
                    *&valuePtr[34] = v191;
                    *&valuePtr[38] = 2048;
                    *&valuePtr[40] = v97;
                    _os_log_impl(&dword_1C278D000, v184, OS_LOG_TYPE_DEFAULT, "%@ Adding ANN node (dim: %lu, thresh: %f, num results: %d, visual tokens: %ld)", valuePtr, 0x30u);
                  }

                  *__error() = v183;
                }

                else
                {
                  _log_fault_for_malloc_failure();
                  v123 = 0;
                  MEMORY[0x30] = 4;
                  MEMORY[0x10] = v175;
                }

                goto LABEL_291;
              }

              v171 = *__error();
              v185 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138412290;
                *&valuePtr[4] = v198;
                _os_log_impl(&dword_1C278D000, v185, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: Failed to get byte from embedding)", valuePtr, 0xCu);
              }
            }

            else
            {
              v171 = *__error();
              v172 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138412290;
                *&valuePtr[4] = v198;
                _os_log_impl(&dword_1C278D000, v172, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)", valuePtr, 0xCu);
              }
            }

            v123 = 0;
            *__error() = v171;
LABEL_291:
            CFRelease(v100);
            goto LABEL_186;
          }
        }
      }

      v110 = CFDictionaryGetValue(theDict, @"embeddingScale");
      v111 = CFDictionaryGetValue(theDict, @"embeddingBias");
      [v110 floatValue];
      v113 = v112;
      [v111 floatValue];
      if (v113 != 0.0)
      {
        v150 = v114;
        v151 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
        if (!v151)
        {
          goto LABEL_237;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        [v151 floatValue];
        v153 = v152;
        v154 = *__error();
        v155 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 138412546;
          *&valuePtr[4] = v198;
          *&valuePtr[12] = 2048;
          *&valuePtr[14] = v153;
          _os_log_impl(&dword_1C278D000, v155, OS_LOG_TYPE_DEFAULT, "%@ Using user default cutoff: %f", valuePtr, 0x16u);
        }

        *__error() = v154;
        v156 = logf(v153);
        v157 = v156 - logf(1.0 - v153);
        if (v157 == -1.0)
        {
LABEL_237:
          if (v101 == 5)
          {
            v158 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
            v157 = -0.9445;
            if (v158)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v159 = [v158 intValue];
                v160 = *__error();
                v161 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 138412546;
                  *&valuePtr[4] = v198;
                  *&valuePtr[12] = 1024;
                  *&valuePtr[14] = v159;
                  _os_log_impl(&dword_1C278D000, v161, OS_LOG_TYPE_DEFAULT, "%@ Using user default precision: %d", valuePtr, 0x12u);
                }

                *__error() = v160;
                if (v159 > 84)
                {
                  switch(v159)
                  {
                    case 'U':
                      v157 = -0.4055;
                      break;
                    case 'Z':
                      v157 = 0.0;
                      break;
                    case '_':
                      v157 = 0.7082;
                      break;
                  }
                }

                else
                {
                  switch(v159)
                  {
                    case 'F':
                      v157 = -1.3863;
                      break;
                    case 'K':
                      v157 = -1.046;
                      break;
                    case 'P':
                      v157 = -0.7538;
                      break;
                  }
                }
              }
            }
          }

          else if ((v101 & 0xFFFFFFFE) == 6)
          {
            v165 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
            v157 = -0.8473;
            if (v165)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v166 = [v165 intValue];
                v167 = *__error();
                v168 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 138412546;
                  *&valuePtr[4] = v198;
                  *&valuePtr[12] = 1024;
                  *&valuePtr[14] = v166;
                  _os_log_impl(&dword_1C278D000, v168, OS_LOG_TYPE_DEFAULT, "%@ Using user default precision for MD6: %d", valuePtr, 0x12u);
                }

                *__error() = v167;
                if (v166 > 84)
                {
                  switch(v166)
                  {
                    case 'U':
                      v157 = -0.3228;
                      break;
                    case 'Z':
                      v157 = 0.1201;
                      break;
                    case '_':
                      v157 = 1.046;
                      break;
                  }
                }

                else
                {
                  switch(v166)
                  {
                    case 'F':
                      v157 = -1.2657;
                      break;
                    case 'K':
                      v157 = -0.9946;
                      break;
                    case 'P':
                      v157 = -0.6633;
                      break;
                  }
                }
              }
            }
          }

          else
          {
            v157 = -1.0986;
          }
        }

        v107 = (1.0 - ((v157 - v150) / v113)) + (1.0 - ((v157 - v150) / v113));
        v115 = *__error();
        v169 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_263;
        }

        *valuePtr = 138413570;
        *&valuePtr[4] = v198;
        *&valuePtr[12] = 1024;
        *&valuePtr[14] = v101;
        *&valuePtr[18] = 2048;
        *&valuePtr[20] = v107;
        *&valuePtr[28] = 2048;
        *&valuePtr[30] = v157;
        *&valuePtr[38] = 2048;
        *&valuePtr[40] = v113;
        *&valuePtr[48] = 2048;
        *&valuePtr[50] = v150;
        v117 = "%@ MD%d calibrated threshold: %f, cutoffOffset: %f, scale: %f, bias: %f";
        v118 = v169;
        v119 = 58;
        goto LABEL_262;
      }

      v115 = *__error();
      v116 = _SILogForLogForCategory(19);
      v107 = 1.7;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 138412802;
        *&valuePtr[4] = v198;
        *&valuePtr[12] = 1024;
        *&valuePtr[14] = v101;
        *&valuePtr[18] = 2048;
        *&valuePtr[20] = 0x3FFB333340000000;
        v117 = "%@ MD%d: Using default similarity of 0.15 to get threshold = %f (ERROR: scale is 0)";
        v118 = v116;
        v119 = 28;
LABEL_262:
        _os_log_impl(&dword_1C278D000, v118, OS_LOG_TYPE_DEFAULT, v117, valuePtr, v119);
      }
    }

LABEL_263:
    *__error() = v115;
    goto LABEL_264;
  }

  v95 = *__error();
  v96 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    *valuePtr = 138412290;
    *&valuePtr[4] = v198;
    _os_log_impl(&dword_1C278D000, v96, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (semantic search is disabled)", valuePtr, 0xCu);
  }

LABEL_185:
  v123 = 0;
  *__error() = v95;
LABEL_186:
  if (!v123 && v211)
  {
    *valuePtr = MEMORY[0x1E69E9820];
    *&valuePtr[8] = 0x40000000;
    *&valuePtr[16] = __db_query_tree_apply_block_block_invoke;
    *&valuePtr[24] = &unk_1E8198ED0;
    *&valuePtr[32] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v211, valuePtr, 0);
  }

  v124 = makeOrNode(v123, v90);
  FalseNode = makeAndNode(v124, v214);
  if (!FalseNode)
  {
    FalseNode = makeFalseNode();
    v126 = *__error();
    v127 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 138412290;
      *&valuePtr[4] = v198;
      _os_log_impl(&dword_1C278D000, v127, OS_LOG_TYPE_DEFAULT, "%@ Return no results (missing all nodes)", valuePtr, 0xCu);
    }

    *__error() = v126;
  }

  return FalseNode;
}

void sub_1C2A2BF00(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  _Unwind_Resume(a1);
}

void PhPopulateNodesFromLLMParse(const __CFDictionary *a1, void *a2, void *a3, char a4, query_node **a5, query_node **a6, void *a7, _BYTE *a8, uint64_t a9)
{
  v393 = *MEMORY[0x1E69E9840];
  v11 = *__error();
  v12 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a9;
    _os_log_impl(&dword_1C278D000, v12, OS_LOG_TYPE_DEFAULT, "%@ Using LLM QU output for creating ann filter and unigram node", buf, 0xCu);
  }

  *__error() = v11;
  theArray = getTokensInfoFromQueryUnderstanding(a1);
  Value = CFDictionaryGetValue(a1, @"attributedParse");
  v326 = [(NSAttributedString *)Value string];
  if (!v326 || ![(NSString *)v326 length])
  {
    v99 = *__error();
    v100 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a9;
      _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "%@ Skipping adding nodes for the query (Reason: query is empty)", buf, 0xCu);
    }

    *__error() = v99;
    return;
  }

  v320 = [MEMORY[0x1E695DF70] array];
  v317 = [MEMORY[0x1E695DF70] array];
  v312 = [MEMORY[0x1E695DF70] array];
  v314 = [MEMORY[0x1E695DF70] array];
  v13 = [(NSAttributedString *)Value length];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL30PhPopulateSomeFiltersFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES5_S9__block_invoke;
  *&buf[24] = &unk_1E8199790;
  *&v385 = v320;
  *(&v385 + 1) = v317;
  v386 = v312;
  v387 = v314;
  [(NSAttributedString *)Value enumerateAttributesInRange:0 options:v13 usingBlock:0, buf];
  if ([v317 count])
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v317 count];
      *buf = 138412546;
      *&buf[4] = a9;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu date filters from LLM QU parse", buf, 0x16u);
    }

    *__error() = v14;
  }

  if ([v314 count])
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v314 count];
      *buf = 138412546;
      *&buf[4] = a9;
      *&buf[12] = 2048;
      *&buf[14] = v19;
      _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu people filters from LLM QU parse", buf, 0x16u);
    }

    *__error() = v17;
  }

  if (![v320 count])
  {
    if (CFDictionaryContainsKey(a1, @"attributedParses"))
    {
      v102 = CFDictionaryGetValue(a1, @"attributedParses");
      if ([v102 count] >= 2)
      {
        v103 = [v102 objectAtIndexedSubscript:1];
        v104 = [v103 length];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke;
        *&buf[24] = &unk_1E8199718;
        *&v385 = v320;
        *(&v385 + 1) = v317;
        [v103 enumerateAttributesInRange:0 options:v104 usingBlock:{0, buf}];
        if ([v317 count])
        {
          v105 = *__error();
          v106 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v107 = [v317 count];
            *buf = 138412546;
            *&buf[4] = a9;
            *&buf[12] = 2048;
            *&buf[14] = v107;
            _os_log_impl(&dword_1C278D000, v106, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu date filters from QP parse", buf, 0x16u);
          }

          *__error() = v105;
        }
      }
    }
  }

  PhRetrievalAttribs();
  v20 = *MEMORY[0x1E695E480];
  cf = CFCharacterSetCreateWithCharactersInString(v20, @"0123456789");
  v371 = 0uLL;
  v370 = 0;
  v368 = 0;
  v367 = 0;
  v369 = 0;
  Count = CFArrayGetCount(theArray);
  v22 = &unk_1C2BF9000;
  if (Count < 1)
  {
    v308 = -1;
    v101 = &unk_1C2BF9000;
LABEL_177:
    v108 = *__error();
    v109 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a9;
      _os_log_impl(&dword_1C278D000, v109, OS_LOG_TYPE_DEFAULT, "%@ No search terms found, adding event tokens to retrieval tree", buf, 0xCu);
    }

    v110 = v101;
    v111 = v22;
    *__error() = v108;
    v112 = v367;
    v113 = v368;
    v114 = v368 - v367;
    if ((v368 - v367) >= 1)
    {
      v115 = v371;
      if (*(&v371 + 1) - v371 >= v114)
      {
        if (v368 != v367)
        {
          v120 = 0;
          do
          {
            v121 = v112 + v120;
            v122 = &v115[v120 / 8];
            v123 = *(v112 + v120);
            v124 = *(v112 + v120 + 16);
            v122[4] = *(v112 + v120 + 32);
            *v122 = v123;
            *(v122 + 1) = v124;
            std::vector<int>::vector[abi:nn200100](&v115[v120 / 8 + 5], (v112 + v120 + 40));
            v125 = *(v112 + v120 + 64);
            v126 = *(v112 + v120 + 80);
            v122[12] = *(v112 + v120 + 96);
            *(v122 + 4) = v125;
            *(v122 + 5) = v126;
            std::unordered_set<std::string>::unordered_set(&v115[v120 / 8 + 13], v112 + v120 + 104);
            v120 += 144;
          }

          while (v121 + 144 != v113);
          v115 = (v115 + v120);
        }

        v310 = 0;
        *&v371 = v115;
        goto LABEL_198;
      }

      v116 = 0x8E38E38E38E38E39 * ((v371 - v370) >> 4);
      v117 = v116 - 0x71C71C71C71C71C7 * (v114 >> 4);
      if (v117 > 0x1C71C71C71C71C7)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v118 = 0x1C71C71C71C71C72 * ((*(&v371 + 1) - v370) >> 4);
      if (v118 <= v117)
      {
        v118 = v116 - 0x71C71C71C71C71C7 * (v114 >> 4);
      }

      if (0x8E38E38E38E38E39 * ((*(&v371 + 1) - v370) >> 4) >= 0xE38E38E38E38E3)
      {
        v119 = 0x1C71C71C71C71C7;
      }

      else
      {
        v119 = v118;
      }

      *&v385 = &v370;
      if (v119)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<PhLLMTokenInfo>>(v119);
      }

      v127 = 0;
      v128 = 16 * ((v371 - v370) >> 4);
      *buf = 0;
      *&buf[8] = v128;
      *&buf[16] = v128;
      *&buf[24] = 0;
      do
      {
        v129 = v128 + v127;
        v130 = *(v112 + v127);
        v131 = *(v112 + v127 + 16);
        *(v129 + 32) = *(v112 + v127 + 32);
        *v129 = v130;
        *(v129 + 16) = v131;
        std::vector<int>::vector[abi:nn200100]((v128 + v127 + 40), (v112 + v127 + 40));
        v132 = *(v112 + v127 + 64);
        v133 = *(v112 + v127 + 80);
        *(v129 + 96) = *(v112 + v127 + 96);
        *(v129 + 64) = v132;
        *(v129 + 80) = v133;
        std::unordered_set<std::string>::unordered_set(v128 + v127 + 104, v112 + v127 + 104);
        v127 += 144;
      }

      while (v114 != v127);
      *&buf[16] = v128 + v114;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(v115, v371, v128 + v114);
      *&buf[16] += v371 - v115;
      *&v371 = v115;
      v134 = (*&buf[8] + v370 - v115);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(v370, v115, v134);
      v135 = v370;
      v136 = *(&v371 + 1);
      v370 = v134;
      v371 = *&buf[16];
      *&buf[16] = v135;
      *&buf[24] = v136;
      *&buf[8] = v135;
      *buf = v135;
      std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(buf);
    }

    v310 = 0;
LABEL_198:
    v22 = v111;
    v101 = v110;
    goto LABEL_199;
  }

  v302 = a3;
  v332 = 0;
  v23 = 0;
  v308 = -1;
  v310 = 1;
  v335 = Count;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v23);
    LemmaFromTokenInfo = getLemmaFromTokenInfo(ValueAtIndex);
    RawTextTokensFromTokenInfo = getRawTextTokensFromTokenInfo(ValueAtIndex);
    if ((isValidTokenInfo(ValueAtIndex) & 1) == 0)
    {
      v35 = *__error();
      v36 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = a9;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1C278D000, v36, OS_LOG_TYPE_DEFAULT, "%@ Token %lu skipped (ERROR: token info is missing essential keys)", buf, 0x16u);
      }

      goto LABEL_33;
    }

    TokenFromTokenInfo = getTokenFromTokenInfo(ValueAtIndex);
    TokenIDsFromTokenInfo = getTokenIDsFromTokenInfo(ValueAtIndex);
    if (![TokenIDsFromTokenInfo count])
    {
      v35 = *__error();
      v37 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = a9;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_1C278D000, v37, OS_LOG_TYPE_DEFAULT, "%@ Token %lu skipped (ERROR: tokenIds is empty)", buf, 0x16u);
      }

LABEL_33:
      *__error() = v35;
      v38 = v335;
      goto LABEL_50;
    }

    v29 = [objc_msgSend(TokenIDsFromTokenInfo objectAtIndex:{0), "intValue"}];
    v30 = v29;
    v365 = 0;
    __p = 0;
    v31 = "Unknown";
    v366 = 0;
    if (v29 <= 0xD2)
    {
      v31 = off_1E8196D10[v29];
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, v31);
    if (v30 == 74)
    {
      *a8 = 1;
    }

    v329 = v30 == 1;
    if (isLLMPhotosIgnoredArgId(v30))
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        p_p = &__p;
        if (v366 < 0)
        {
          p_p = __p;
        }

        *buf = 138412802;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = p_p;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        _os_log_impl(&dword_1C278D000, v33, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a photos optional token)", buf, 0x20u);
      }
    }

    else if (isLLMInferredAppEntityTypeArgId(v30))
    {
      v32 = *__error();
      v39 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = &__p;
        if (v366 < 0)
        {
          v40 = __p;
        }

        *buf = 138412802;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v40;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's an inferred app entity type token)", buf, 0x20u);
      }
    }

    else if (isIgnoredAppEntityStatusArgId(v30) || isBundleSpecificFilterAppEntityStatusArgId(v30))
    {
      v32 = *__error();
      v41 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = &__p;
        if (v366 < 0)
        {
          v42 = __p;
        }

        *buf = 138412802;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v42;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's an ignored or bundle specific app entity status token)", buf, 0x20u);
      }
    }

    else if (isLLMSourceTypeArgId(v30))
    {
      v32 = *__error();
      v43 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = &__p;
        if (v366 < 0)
        {
          v44 = __p;
        }

        *buf = 138412802;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a source entity type token)", buf, 0x20u);
      }
    }

    else
    {
      if (!isLLMPhotosIgnoredArgId(v30))
      {
        std::string::basic_string[abi:nn200100]<0>(buf, -[__CFDictionary UTF8String](TokenFromTokenInfo, "UTF8String"));
        v45 = (isOptionalSearchTerm(v30, buf, theArray, v23, 0, 1, 0) & 1) != 0 || isLLMPhotosEventArgId(v30);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v310 &= v45;
      }

      TokenRangeFromTokenInfo = getTokenRangeFromTokenInfo(ValueAtIndex);
      range = v47;
      v48 = TokenRangeFromTokenInfo;
      if (TokenRangeFromTokenInfo == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = *__error();
        v49 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = SHIBYTE(v366);
          v51 = __p;
          v394.location = 0x7FFFFFFFFFFFFFFFLL;
          v394.length = range;
          v52 = NSStringFromRange(v394);
          *buf = 138413058;
          v53 = &__p;
          if (v50 < 0)
          {
            v53 = v51;
          }

          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v53;
          *&buf[22] = 2048;
          *&buf[24] = v23;
          LOWORD(v385) = 2112;
          *(&v385 + 2) = v52;
          _os_log_impl(&dword_1C278D000, v49, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (ERROR: invalid range: %@)", buf, 0x2Au);
        }
      }

      else if ([a2 count])
      {
        v54 = 0;
        while (1)
        {
          v398.location = [objc_msgSend(a2 objectAtIndexedSubscript:{v54), "rangeValue"}];
          v398.length = v55;
          v395.location = v48;
          v395.length = range;
          if (NSIntersectionRange(v395, v398).length)
          {
            break;
          }

          if (++v54 >= [a2 count])
          {
            goto LABEL_75;
          }
        }

        if ([v302 count])
        {
          v59 = 0;
          while (1)
          {
            v399.location = [objc_msgSend(v302 objectAtIndexedSubscript:{v59), "rangeValue"}];
            v399.length = v60;
            v396.location = v48;
            v396.length = range;
            if (NSIntersectionRange(v396, v399).length)
            {
              break;
            }

            if (++v59 >= [v302 count])
            {
              goto LABEL_160;
            }
          }

          ++*a7;
        }

LABEL_160:
        v32 = *__error();
        v97 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          v98 = &__p;
          if (v366 < 0)
          {
            v98 = __p;
          }

          *buf = 138412802;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v98;
          *&buf[22] = 2048;
          *&buf[24] = v23;
          _os_log_impl(&dword_1C278D000, v97, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a filter token)", buf, 0x20u);
        }
      }

      else
      {
LABEL_75:
        v56 = getTokenFromTokenInfo(ValueAtIndex);
        v350.__r_.__value_.__r.__words[0] = v56;
        if (v56)
        {
          *v363 = 0;
          tokenState(v56, cf, v304, &v363[1], v363);
          if (!v363[0])
          {
            v63 = *__error();
            v64 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = a9;
              *&buf[12] = 2048;
              *&buf[14] = v23;
              _os_log_impl(&dword_1C278D000, v64, OS_LOG_TYPE_DEFAULT, "%@ Token %lu added as new token", buf, 0x16u);
            }

            *__error() = v63;
            *&v392[8] = 0u;
            v389 = 0u;
            v388 = 0u;
            *&buf[16] = 0;
            *&buf[24] = -1;
            v385 = 0xFFFFFFFFFFFFFFFFLL;
            v386 = 0;
            v387 = 0;
            v390 = -1;
            v391 = 0u;
            *v392 = 0u;
            *&v392[16] = 1065353216;
            DWORD2(v389) = v30;
            *buf = v48;
            *&buf[8] = v48 + range;
            v38 = v335;
            if (LemmaFromTokenInfo && [(__CFDictionary *)LemmaFromTokenInfo length])
            {
              *&v389 = LemmaFromTokenInfo;
            }

            if ([(__CFDictionary *)RawTextTokensFromTokenInfo count])
            {
              *(&v388 + 1) = RawTextTokensFromTokenInfo;
            }

            v390 = v23;
            if (isLLMPhotosEventArgId(v30))
            {
              std::vector<PhLLMTokenInfo>::push_back[abi:nn200100](&v367, buf);
            }

            else
            {
              std::vector<PhLLMTokenInfo>::push_back[abi:nn200100](&v370, buf);
              v65 = _rangeIntersection(v48, range, v317);
              if (v65 != -1)
              {
                v66 = *__error();
                v67 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  v68 = &__p;
                  if (v366 < 0)
                  {
                    v68 = __p;
                  }

                  *v380 = 138413058;
                  *&v380[4] = a9;
                  *&v380[12] = 2080;
                  *&v380[14] = v68;
                  *&v380[22] = 2048;
                  v381 = v23;
                  v382 = 2048;
                  v383 = v65;
                  _os_log_impl(&dword_1C278D000, v67, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu has a date parse: %lu", v380, 0x2Au);
                }

                *__error() = v66;
                *(v371 - 120) = v65;
              }

              v69 = _rangeIntersection(v48, range, v314);
              if (v69 != -1)
              {
                v70 = *__error();
                v71 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  v72 = &__p;
                  if (v366 < 0)
                  {
                    v72 = __p;
                  }

                  *v380 = 138413058;
                  *&v380[4] = a9;
                  *&v380[12] = 2080;
                  *&v380[14] = v72;
                  *&v380[22] = 2048;
                  v381 = v23;
                  v382 = 2048;
                  v383 = v69;
                  _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu has a person parse: %lu", v380, 0x2Au);
                }

                *__error() = v70;
                *(v371 - 112) = v69;
              }

              rangeb = MEMORY[0x1E695DFD8];
              v300 = [MEMORY[0x1E696AD98] numberWithInt:70];
              v38 = v335;
              v299 = [MEMORY[0x1E696AD98] numberWithInt:41];
              v298 = [MEMORY[0x1E696AD98] numberWithInt:8];
              v297 = [MEMORY[0x1E696AD98] numberWithInt:21];
              v296 = [MEMORY[0x1E696AD98] numberWithInt:23];
              v295 = [MEMORY[0x1E696AD98] numberWithInt:31];
              v294 = [MEMORY[0x1E696AD98] numberWithInt:30];
              v293 = [MEMORY[0x1E696AD98] numberWithInt:187];
              v292 = [MEMORY[0x1E696AD98] numberWithInt:189];
              v291 = [MEMORY[0x1E696AD98] numberWithInt:184];
              v290 = [MEMORY[0x1E696AD98] numberWithInt:185];
              v289 = [MEMORY[0x1E696AD98] numberWithInt:186];
              v288 = [MEMORY[0x1E696AD98] numberWithInt:188];
              v287 = [MEMORY[0x1E696AD98] numberWithInt:190];
              v286 = [MEMORY[0x1E696AD98] numberWithInt:191];
              v285 = [MEMORY[0x1E696AD98] numberWithInt:192];
              v73 = [MEMORY[0x1E696AD98] numberWithInt:5];
              v74 = [MEMORY[0x1E696AD98] numberWithInt:64];
              v75 = [MEMORY[0x1E696AD98] numberWithInt:1];
              v76 = [MEMORY[0x1E696AD98] numberWithInt:65];
              v301 = [rangeb setWithObjects:{v300, v299, v298, v297, v296, v295, v294, v293, v292, v291, v290, v289, v288, v287, v286, v285, v73, v74, v75, v76, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 66), 0}];
              v77 = 0;
              while (v77 < [TokenIDsFromTokenInfo count])
              {
                v78 = [objc_msgSend(TokenIDsFromTokenInfo objectAtIndexedSubscript:{v77), "intValue"}];
                LODWORD(v375[0]) = v78;
                if (v78 && ![v301 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v78)}])
                {
                  if (((v78 - 65) < 2 || v78 == 52) && v308 == -1)
                  {
                    v308 = -1 - 0x71C71C71C71C71C7 * ((v371 - v370) >> 4);
                  }
                }

                else
                {
                  std::vector<int>::push_back[abi:nn200100](v371 - 104, v375);
                }

                v79 = isLLMPersonArgId(v78);
                rangea = v77;
                v80 = v78 == 104 || v79;
                if (v80 == 1)
                {
                  GroundedNamesTokenFromTokenInfo = getGroundedNamesTokenFromTokenInfo(ValueAtIndex);
                  v82 = [GroundedNamesTokenFromTokenInfo count];
                  v83 = v370;
                  v84 = v371 - v370;
                  if (v82)
                  {
                    *(v371 - 80) = GroundedNamesTokenFromTokenInfo;
                  }

                  v85 = (v83 + v84 - 40);
                  if ([GroundedNamesTokenFromTokenInfo count])
                  {
                    v361 = 0u;
                    v362 = 0u;
                    v359 = 0u;
                    v360 = 0u;
                    v86 = [GroundedNamesTokenFromTokenInfo countByEnumeratingWithState:&v359 objects:v379 count:16];
                    if (v86)
                    {
                      v87 = *v360;
                      do
                      {
                        for (i = 0; i != v86; ++i)
                        {
                          if (*v360 != v87)
                          {
                            objc_enumerationMutation(GroundedNamesTokenFromTokenInfo);
                          }

                          std::string::basic_string[abi:nn200100]<0>(v380, [objc_msgSend(objc_msgSend(*(*(&v359 + 1) + 8 * i) objectAtIndexedSubscript:{0), "lowercaseString"), "UTF8String"}]);
                          v89 = peopleNameAlias(v380);
                          if (v380[23] < 0)
                          {
                            operator delete(*v380);
                          }

                          v90 = *(v89 + 23);
                          if ((v90 & 0x80u) != 0)
                          {
                            v90 = v89[1];
                          }

                          if (v90)
                          {
                            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v85, v89, v89);
                          }
                        }

                        v86 = [GroundedNamesTokenFromTokenInfo countByEnumeratingWithState:&v359 objects:v379 count:16];
                      }

                      while (v86);
                    }
                  }

                  else
                  {
                    std::string::basic_string[abi:nn200100]<0>(v380, -[__CFDictionary UTF8String](TokenFromTokenInfo, "UTF8String"));
                    v91 = peopleNameAlias(v380);
                    if (v380[23] < 0)
                    {
                      operator delete(*v380);
                    }

                    v92 = *(v91 + 23);
                    if ((v92 & 0x80u) != 0)
                    {
                      v92 = v91[1];
                    }

                    if (v92)
                    {
                      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>((v83 + v84 - 40), v91, v91);
                    }
                  }
                }

                v77 = rangea + 1;
                v38 = v335;
              }

              utf8QueryString(v380, &v350, 1, 0);
              v93 = isRelationWord(v380);
              if (v380[23] < 0)
              {
                operator delete(*v380);
              }

              if (v93)
              {
                v94 = *__error();
                v95 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  v96 = &__p;
                  if (v366 < 0)
                  {
                    v96 = __p;
                  }

                  *v380 = 138412802;
                  *&v380[4] = a9;
                  *&v380[12] = 2080;
                  *&v380[14] = v96;
                  *&v380[22] = 2048;
                  v381 = v23;
                  _os_log_impl(&dword_1C278D000, v95, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu is a relationship token as per vocab", v380, 0x20u);
                }

                *__error() = v94;
                std::vector<int>::push_back[abi:nn200100](v371 - 104, &QUPP_ARG_PERSON);
                v38 = v335;
              }
            }

            PhLLMTokenInfo::~PhLLMTokenInfo(buf);
            goto LABEL_47;
          }

          v32 = *__error();
          v57 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = &__p;
            if (v366 < 0)
            {
              v58 = __p;
            }

            *buf = 138412802;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v58;
            *&buf[22] = 2048;
            *&buf[24] = v23;
            _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It has only special chars)", buf, 0x20u);
          }
        }

        else
        {
          v32 = *__error();
          v61 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = &__p;
            if (v366 < 0)
            {
              v62 = __p;
            }

            *buf = 138412802;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v62;
            *&buf[22] = 2048;
            *&buf[24] = v23;
            _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (ERROR: Token is null)", buf, 0x20u);
          }
        }
      }
    }

    *__error() = v32;
    v38 = v335;
LABEL_47:
    if (SHIBYTE(v366) < 0)
    {
      operator delete(__p);
    }

    v332 |= v329;
LABEL_50:
    ++v23;
  }

  while (v23 != v38);
  v22 = &unk_1C2BF9000;
  v101 = &unk_1C2BF9000;
  if ((v332 & 1) == 0)
  {
    goto LABEL_177;
  }

LABEL_199:
  k = v371;
  v138 = v370;
  if (v308 == -1)
  {
    v139 = 0x8E38E38E38E38E39 * ((v371 - v370) >> 4);
  }

  else
  {
    v139 = v308;
  }

  *a7 += 0x8E38E38E38E38E39 * ((v371 - v370) >> 4);
  if (k == v138)
  {
    goto LABEL_445;
  }

  v309 = 0;
  v140 = -1;
  v319 = v101[350];
  v315 = v22[353];
  v318 = k;
  while (2)
  {
    memset(v380, 0, sizeof(v380));
    v141 = *(v138 + 22);
    v142 = "Unknown";
    if (v141 <= 0xD2)
    {
      v142 = off_1E8196D10[v141];
    }

    std::string::basic_string[abi:nn200100]<0>(v380, v142);
    v143 = *v138;
    v144 = v138[1] - *v138;
    v145 = [[(NSString *)v326 substringWithRange:*v138 UTF8String];
    v146 = v140 + 1;
    if (!v145)
    {
      v149 = *__error();
      v152 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v153 = v380;
        if ((v380[23] & 0x80u) != 0)
        {
          v153 = *v380;
        }

        *buf = v319;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v153;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, "%@[%s] Search token %ld skipped (ERROR: UTF8 encoding of token failed)", buf, 0x20u);
      }

      goto LABEL_218;
    }

    __sa = v145;
    v147 = v138[5];
    if (v147 != v138[6])
    {
      v148 = *v147;
      if (isLLMInferredAppEntityTypeArgId(*v147))
      {
        v149 = *__error();
        v150 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          v151 = v380;
          if ((v380[23] & 0x80u) != 0)
          {
            v151 = *v380;
          }

          *buf = v315;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v151;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          LOWORD(v385) = 1024;
          *(&v385 + 2) = v148;
          _os_log_impl(&dword_1C278D000, v150, OS_LOG_TYPE_DEFAULT, "%@[%s] Skipping token %ld with tokenID %d (it is inferred app entity)", buf, 0x26u);
        }

        goto LABEL_218;
      }

      if (isLLMAppEntityTypeArgId(v148))
      {
        goto LABEL_458;
      }

      v154 = v138[5];
      v155 = v138[6];
      if (v154 != v155)
      {
        while (*v154 != 70)
        {
          if (++v154 == v155)
          {
            goto LABEL_237;
          }
        }
      }

      if (v154 != v155)
      {
LABEL_458:
        v397.location = v143;
        v397.length = v144;
        LLMTokenDescription = getLLMTokenDescription(v148, v397, Value, 0);
        if (LLMTokenDescription)
        {
          v157 = *__error();
          v158 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
          {
            v159 = v380;
            if ((v380[23] & 0x80u) != 0)
            {
              v159 = *v380;
            }

            *buf = v315;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v159;
            *&buf[22] = 2048;
            *&buf[24] = v146;
            LOWORD(v385) = 1024;
            *(&v385 + 2) = v148;
            _os_log_impl(&dword_1C278D000, v158, OS_LOG_TYPE_DEFAULT, "%@[%s] Added app entity / media-type filter for token %ld with tokenID %d", buf, 0x26u);
          }

          *__error() = v157;
          if ([LLMTokenDescription length] && (v160 = objc_msgSend(LLMTokenDescription, "UTF8String")) != 0)
          {
            query_node_with_ann = db_make_query_node_with_ann(v160, 0);
          }

          else
          {
            query_node_with_ann = 0;
          }

          v309 = makeOrNode(v309, query_node_with_ann);
          goto LABEL_219;
        }
      }

LABEL_237:
      if (!(v310 & 1 | ((*a8 & 1) == 0)))
      {
        std::string::basic_string[abi:nn200100]<0>(buf, __sa);
        v162 = isOptionalSearchTerm(v148, buf, theArray, v138[12], 0, 1, 0);
        v163 = v162;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if (v163)
          {
            goto LABEL_240;
          }
        }

        else if (v162)
        {
LABEL_240:
          v149 = *__error();
          v164 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
          {
            v165 = v380;
            if ((v380[23] & 0x80u) != 0)
            {
              v165 = *v380;
            }

            *buf = v319;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v165;
            *&buf[22] = 2048;
            *&buf[24] = v146;
            _os_log_impl(&dword_1C278D000, v164, OS_LOG_TYPE_DEFAULT, "%@[%s] Token %lu skipped (Reason: It's a trailing optional search token)", buf, 0x20u);
          }

LABEL_218:
          *__error() = v149;
          goto LABEL_219;
        }
      }
    }

    if (v140 != -2 - 0x71C71C71C71C71C7 * ((v371 - v370) >> 4))
    {
      v166 = v138[5];
      v167 = v138[6];
      if (v166 != v167)
      {
        while (*v166)
        {
          if (++v166 == v167)
          {
            goto LABEL_254;
          }
        }
      }

      if (v166 != v167)
      {
        goto LABEL_256;
      }

LABEL_254:
      std::string::basic_string[abi:nn200100]<0>(buf, __sa);
      v168 = isOptionalWord(buf);
      v169 = v168;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
        if (v169)
        {
          goto LABEL_256;
        }
      }

      else if (v168)
      {
LABEL_256:
        v170 = *__error();
        v171 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          v172 = v380;
          if ((v380[23] & 0x80u) != 0)
          {
            v172 = *v380;
          }

          *buf = v319;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v172;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          _os_log_impl(&dword_1C278D000, v171, OS_LOG_TYPE_DEFAULT, "%@[%s] Search token %ld skipped (Reason: It is optional)", buf, 0x20u);
        }

        *__error() = v170;
        --*a7;
        goto LABEL_219;
      }
    }

    v173 = 0;
    if (![v138[8] count] && v138[3] == -1)
    {
      v174 = *__error();
      v175 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
      {
        v176 = v380;
        if ((v380[23] & 0x80u) != 0)
        {
          v176 = *v380;
        }

        *buf = v319;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v176;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v175, OS_LOG_TYPE_DEFAULT, "%@[%s] Added Raw token match node for token %ld", buf, 0x20u);
      }

      *__error() = v174;
      v173 = PhAttribNodes(__sa, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
    }

    v365 = 0;
    __p = 0;
    v366 = 0;
    std::string::basic_string[abi:nn200100]<0>(buf, __sa);
    getSynonym(&__p, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v177 = HIBYTE(v366);
    if (v366 < 0)
    {
      v177 = v365;
    }

    if (v177)
    {
      v178 = *__error();
      v179 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
      {
        v180 = v380;
        if ((v380[23] & 0x80u) != 0)
        {
          v180 = *v380;
        }

        *buf = v319;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v180;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v179, OS_LOG_TYPE_DEFAULT, "%@[%s] Added a synonym for token %ld", buf, 0x20u);
      }

      *__error() = v178;
      if (v366 >= 0)
      {
        v181 = &__p;
      }

      else
      {
        v181 = __p;
      }

      v182 = PhAttribNodes(v181, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
      v173 = makeOrNode(v173, v182);
    }

    v183 = v138[10];
    if (v183)
    {
      v184 = [v183 UTF8String];
      v185 = PhAttribNodes(v184, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
      v173 = makeOrNode(v173, v185);
      v186 = *__error();
      v187 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
      {
        v188 = v380;
        if ((v380[23] & 0x80u) != 0)
        {
          v188 = *v380;
        }

        v189 = v138[10];
        *buf = v315;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v188;
        *&buf[22] = 2112;
        *&buf[24] = v189;
        LOWORD(v385) = 2048;
        *(&v385 + 2) = v146;
        _os_log_impl(&dword_1C278D000, v187, OS_LOG_TYPE_DEFAULT, "%@[%s] Added a lemma node: %@, of token %ld", buf, 0x2Au);
      }

      *__error() = v186;
    }

    if (v138[4] != -1)
    {
      v190 = [v312 objectAtIndexedSubscript:?];
      if ([v190 length] && (v191 = objc_msgSend(v190, "UTF8String")) != 0)
      {
        v192 = db_make_query_node_with_ann(v191, 0);
      }

      else
      {
        v192 = 0;
      }

      v173 = makeOrNode(v173, v192);
    }

    v193 = v138[5];
    v194 = v138[6];
    if (v193 != v194)
    {
      while (*v193 != 41)
      {
        if (++v193 == v194)
        {
          goto LABEL_300;
        }
      }
    }

    if (v193 != v194)
    {
      QueryNode = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
      v173 = makeOrNode(v173, QueryNode);
    }

LABEL_300:
    v196 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v357 = 0u;
    v358 = 0u;
    v355 = 0u;
    v356 = 0u;
    obj = v138[8];
    v197 = [obj countByEnumeratingWithState:&v355 objects:v378 count:16];
    if (v197)
    {
      v330 = *v356;
      do
      {
        v198 = 0;
        v333 = v197;
        do
        {
          if (*v356 != v330)
          {
            objc_enumerationMutation(obj);
          }

          v199 = *(*(&v355 + 1) + 8 * v198);
          v351 = 0u;
          v352 = 0u;
          v353 = 0u;
          v354 = 0u;
          v200 = [v199 countByEnumeratingWithState:&v351 objects:v377 count:16];
          v336 = v198;
          if (v200)
          {
            v201 = *v352;
            do
            {
              for (j = 0; j != v200; ++j)
              {
                if (*v352 != v201)
                {
                  objc_enumerationMutation(v199);
                }

                v203 = *(*(&v351 + 1) + 8 * j);
                if (([v196 containsObject:v203] & 1) == 0)
                {
                  v204 = [v203 UTF8String];
                  v205 = PhAttribNodes(v204, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
                  v173 = makeOrNode(v173, v205);
                  [v196 addObject:v203];
                }
              }

              v200 = [v199 countByEnumeratingWithState:&v351 objects:v377 count:16];
            }

            while (v200);
          }

          v198 = v336 + 1;
        }

        while ((v336 + 1) != v333);
        v197 = [obj countByEnumeratingWithState:&v355 objects:v378 count:16];
      }

      while (v197);
    }

    if (v138[16])
    {
      v206 = v138[15];
      for (k = v318; v206; v206 = *v206)
      {
        memset(&v350, 0, sizeof(v350));
        if (*(v206 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v350, *(v206 + 16), *(v206 + 24));
        }

        else
        {
          v350 = *(v206 + 16);
        }

        if ((v350.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v207 = &v350;
        }

        else
        {
          v207 = v350.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:nn200100]<0>(v375, "kMDItemTextContent");
        memset(buf, 0, sizeof(buf));
        LODWORD(v385) = 1065353216;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(buf, v375, v375);
        v208 = PhAttribNodes(v207, *&buf[16], *(v138 + 16), v146 >= v139);
        v173 = makeOrNode(v173, v208);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&buf[16]);
        v209 = *buf;
        *buf = 0;
        if (v209)
        {
          operator delete(v209);
        }

        if (v376 < 0)
        {
          operator delete(v375[0]);
        }

        if (SHIBYTE(v350.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v350.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      k = v318;
    }

    if (v138[3] != -1)
    {
      v210 = *__error();
      v211 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
      {
        v212 = v380;
        if ((v380[23] & 0x80u) != 0)
        {
          v212 = *v380;
        }

        *buf = v319;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v212;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_DEFAULT, "%@[%s] Added raw token node for token %ld using sub tokens", buf, 0x20u);
      }

      *__error() = v210;
      v348 = 0u;
      v349 = 0u;
      v346 = 0u;
      v347 = 0u;
      v213 = v138[9];
      v214 = 0;
      v215 = [v213 countByEnumeratingWithState:&v346 objects:v374 count:16];
      if (v215)
      {
        v216 = *v347;
        do
        {
          for (m = 0; m != v215; ++m)
          {
            if (*v347 != v216)
            {
              objc_enumerationMutation(v213);
            }

            v218 = [*(*(&v346 + 1) + 8 * m) UTF8String];
            v219 = PhAttribNodes(v218, qword_1EBF484B0, *(v138 + 16), v146 >= v139);
            v214 = makeAndNode(v214, v219);
          }

          v215 = [v213 countByEnumeratingWithState:&v346 objects:v374 count:16];
        }

        while (v215);
      }

      k = v318;
      v220 = [v320 objectAtIndexedSubscript:v138[3]];
      v221 = [v220 length];
      if (v221)
      {
        v221 = [v220 UTF8String];
        if (v221)
        {
          v221 = db_make_query_node_with_ann(v221, 0);
        }
      }

      v222 = processNode(v221);
      v223 = makeOrNode(v173, v214);
      v173 = makeOrNode(v223, v222);
    }

    *a6 = makeAndNode(*a6, v173);
    if ((a4 & 1) == 0)
    {
      if (v138[3] == -1)
      {
        goto LABEL_358;
      }

      v224 = *__error();
      v225 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
      {
        v226 = v380;
        if ((v380[23] & 0x80u) != 0)
        {
          v226 = *v380;
        }

        *buf = v319;
        *&buf[4] = a9;
        *&buf[12] = 2080;
        *&buf[14] = v226;
        *&buf[22] = 2048;
        *&buf[24] = v146;
        _os_log_impl(&dword_1C278D000, v225, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added date filter for token %lu", buf, 0x20u);
      }

      *__error() = v224;
      v227 = [v320 objectAtIndexedSubscript:v138[3]];
      if ([v227 length] && (v228 = objc_msgSend(v227, "UTF8String")) != 0)
      {
        v229 = db_make_query_node_with_ann(v228, 0);
      }

      else
      {
LABEL_358:
        v229 = 0;
      }

      if (v138[4] != -1)
      {
        v230 = *__error();
        v231 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
        {
          v232 = v380;
          if ((v380[23] & 0x80u) != 0)
          {
            v232 = *v380;
          }

          *buf = v319;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v232;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          _os_log_impl(&dword_1C278D000, v231, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added person identifier filter for token %lu", buf, 0x20u);
        }

        *__error() = v230;
        v233 = [v312 objectAtIndexedSubscript:v138[4]];
        if ([v233 length] && (v234 = objc_msgSend(v233, "UTF8String")) != 0)
        {
          v235 = db_make_query_node_with_ann(v234, 0);
        }

        else
        {
          v235 = 0;
        }

        v229 = makeOrNode(v229, v235);
        if ([v138[8] count])
        {
          v344 = 0u;
          v345 = 0u;
          v342 = 0u;
          v343 = 0u;
          v236 = [v196 countByEnumeratingWithState:&v342 objects:v373 count:16];
          if (v236)
          {
            v237 = *v343;
            do
            {
              for (n = 0; n != v236; ++n)
              {
                if (*v343 != v237)
                {
                  objc_enumerationMutation(v196);
                }

                v239 = createQueryNode("kMDItemTextContent", [*(*(&v342 + 1) + 8 * n) UTF8String], 112, 1, 0, 0.0, 0.0);
                v229 = makeOrNode(v229, v239);
              }

              v236 = [v196 countByEnumeratingWithState:&v342 objects:v373 count:16];
            }

            while (v236);
          }
        }

        else
        {
          v240 = createQueryNode("kMDItemTextContent", __sa, 112, 1, 0, 0.0, 0.0);
          v229 = makeOrNode(v229, v240);
        }

        if (v138[16])
        {
          for (ii = v138[15]; ii; ii = *ii)
          {
            memset(buf, 0, 24);
            if (*(ii + 39) < 0)
            {
              std::string::__init_copy_ctor_external(buf, *(ii + 16), *(ii + 24));
            }

            else
            {
              *buf = *(ii + 16);
              *&buf[16] = *(ii + 32);
            }

            if (buf[23] >= 0)
            {
              v242 = buf;
            }

            else
            {
              v242 = *buf;
            }

            v243 = createQueryNode("kMDItemTextContent", v242, 112, 1, 0, 0.0, 0.0);
            v229 = makeOrNode(v229, v243);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }
      }

      v244 = v138[5];
      v245 = v138[6];
      v246 = v244;
      if (v244 != v245)
      {
        v246 = v138[5];
        while (*v246 != 8)
        {
          if (++v246 == v245)
          {
            goto LABEL_407;
          }
        }
      }

      if (v246 != v245)
      {
        v247 = *__error();
        v248 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
        {
          v249 = v380;
          if ((v380[23] & 0x80u) != 0)
          {
            v249 = *v380;
          }

          *buf = v319;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v249;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          _os_log_impl(&dword_1C278D000, v248, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added holiday/season filter for token %lu", buf, 0x20u);
        }

        *__error() = v247;
        v340 = 0u;
        v341 = 0u;
        v338 = 0u;
        v339 = 0u;
        v334 = v138[9];
        v250 = [v334 countByEnumeratingWithState:&v338 objects:v372 count:16];
        v331 = v229;
        v251 = 0;
        v252 = 0;
        if (v250)
        {
          v337 = *v339;
          do
          {
            for (jj = 0; jj != v250; ++jj)
            {
              if (*v339 != v337)
              {
                objc_enumerationMutation(v334);
              }

              v254 = *(*(&v338 + 1) + 8 * jj);
              v255 = createQueryNode("kMDItemPhotosHolidays", [v254 UTF8String], 112, 1, 0, 0.0, 0.0);
              v256 = createQueryNode("kMDItemPhotosSeasons", [v254 UTF8String], 112, 1, 0, 0.0, 0.0);
              v251 = makeAndNode(v251, v255);
              v252 = makeAndNode(v252, v256);
            }

            v250 = [v334 countByEnumeratingWithState:&v338 objects:v372 count:16];
          }

          while (v250);
        }

        v257 = makeOrNode(v331, v251);
        v229 = makeOrNode(v257, v252);
        v244 = v138[5];
        v245 = v138[6];
        k = v318;
      }

LABEL_407:
      if (v244 == v245)
      {
        goto LABEL_419;
      }

      v258 = v244;
      while (*v258 != 5)
      {
        if (++v258 == v245)
        {
          goto LABEL_419;
        }
      }

      if (v258 != v245)
      {
        v259 = *__error();
        v260 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
        {
          v261 = v380;
          if ((v380[23] & 0x80u) != 0)
          {
            v261 = *v380;
          }

          *buf = v319;
          *&buf[4] = a9;
          *&buf[12] = 2080;
          *&buf[14] = v261;
          *&buf[22] = 2048;
          *&buf[24] = v146;
          _os_log_impl(&dword_1C278D000, v260, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added location filter for token %lu", buf, 0x20u);
        }

        *__error() = v259;
        v262 = createQueryNode("kMDItemPhotosLocationKeywords", __sa, 112, 1, 0, 0.0, 0.0);
        v229 = makeOrNode(v229, v262);
        v244 = v138[5];
        v245 = v138[6];
      }

LABEL_419:
      while (v244 != v245)
      {
        if (*v244 == 41)
        {
          if (v244 != v245)
          {
            v263 = *__error();
            v264 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
            {
              v265 = v380;
              if ((v380[23] & 0x80u) != 0)
              {
                v265 = *v380;
              }

              *buf = v319;
              *&buf[4] = a9;
              *&buf[12] = 2080;
              *&buf[14] = v265;
              *&buf[22] = 2048;
              *&buf[24] = v146;
              _os_log_impl(&dword_1C278D000, v264, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added favorited filter for token %lu", buf, 0x20u);
            }

            *__error() = v263;
            v266 = createQueryNode("kMDItemPhotosFavorited", "1", 0, 1, 0, 0.0, 0.0);
            v229 = makeOrNode(v229, v266);
          }

          break;
        }

        ++v244;
      }

      if (v138[4] == -1)
      {
        v267 = v138[5];
        v268 = v138[6];
        if (v267 != v268)
        {
          while (*v267 != 64)
          {
            if (++v267 == v268)
            {
              goto LABEL_438;
            }
          }
        }

        if (v267 != v268)
        {
          v269 = *__error();
          v270 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
          {
            v271 = v380;
            if ((v380[23] & 0x80u) != 0)
            {
              v271 = *v380;
            }

            *buf = v319;
            *&buf[4] = a9;
            *&buf[12] = 2080;
            *&buf[14] = v271;
            *&buf[22] = 2048;
            *&buf[24] = v146;
            _os_log_impl(&dword_1C278D000, v270, OS_LOG_TYPE_DEFAULT, "%@[%s] {ANN} Added person name/alternative filter for token %lu", buf, 0x20u);
          }

          *__error() = v269;
          v272 = createQueryNode("kMDItemPhotosPeopleNames", __sa, 112, 1, 0, 0.0, 0.0);
          v273 = makeOrNode(v229, v272);
          v274 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", __sa, 112, 1, 0, 0.0, 0.0);
          v229 = makeOrNode(v273, v274);
        }
      }

LABEL_438:
      if (v229)
      {
        *a5 = makeAndNode(*a5, v229);
        if (v138[3] == -1)
        {
          --*a7;
        }
      }
    }

    if (SHIBYTE(v366) < 0)
    {
      operator delete(__p);
    }

LABEL_219:
    if (v380[23] < 0)
    {
      operator delete(*v380);
    }

    v138 += 18;
    v140 = v146;
    if (v138 != k)
    {
      continue;
    }

    break;
  }

  if (v309)
  {
    *a6 = makeAndNode(*a6, v309);
    v275 = *a5;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    *&buf[24] = &unk_1E8198ED0;
    *&v385 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v309, buf, &__block_literal_global_25_15416);
    *a5 = makeAndNode(v275, v276);
  }

LABEL_445:
  v277 = v371;
  v278 = v370;
  v279 = v370;
  if (v371 != v370)
  {
    do
    {
      v277 -= 144;
      std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](v277);
    }

    while (v277 != v278);
    v279 = v370;
  }

  *&v371 = v278;
  v280 = v278 - v279;
  if (*(&v371 + 1) - v279 > (v278 - v279))
  {
    *&v385 = &v370;
    if (v278 != v279)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<PhLLMTokenInfo>>(0x8E38E38E38E38E39 * (v280 >> 4));
    }

    v281 = 16 * (v280 >> 4);
    *buf = 0;
    *&buf[8] = v281;
    *&buf[16] = v281;
    *&buf[24] = 0;
    if (0x8E38E38E38E38E39 * ((*(&v371 + 1) - v279) >> 4))
    {
      v282 = (&v279[v281 / 8] - v371);
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(v279, v371, v282);
      v283 = v370;
      v284 = *(&v371 + 1);
      v370 = v282;
      v371 = *&buf[16];
      *&buf[16] = v283;
      *&buf[24] = v284;
      *&buf[8] = v283;
      *buf = v283;
    }

    std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(buf);
  }

  CFRelease(cf);
  CFRelease(v304);
  *buf = &v367;
  std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](buf);
  *buf = &v370;
  std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](buf);
}

void sub_1C2A2EE2C(_Unwind_Exception *a1)
{
  PhLLMTokenInfo::~PhLLMTokenInfo(&STACK[0x770]);
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  STACK[0x740] = &STACK[0x3F8];
  std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](&STACK[0x740]);
  STACK[0x740] = &STACK[0x410];
  std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](&STACK[0x740]);
  _Unwind_Resume(a1);
}

void PhRetrievalAttribs(void)
{
  {
    PhRetrievalAttribs(void)::_retrievalAttribs = 0u;
    *&qword_1EBF484B0 = 0u;
    dword_1EBF484C0 = 1065353216;
  }

  if (PhRetrievalAttribs(void)::onceToken != -1)
  {

    dispatch_once(&PhRetrievalAttribs(void)::onceToken, &__block_literal_global_248);
  }
}

void ___ZL18PhRetrievalAttribsv_block_invoke()
{
  v13.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "*");
  std::string::basic_string[abi:nn200100]<0>(v2, "kMDItemTextContent");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemCardAddress");
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemCardCategory");
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemCardCountry");
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemCardGroupNumber");
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemCardIssuedBy");
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemCardNumber");
  std::string::basic_string[abi:nn200100]<0>(v9, "kMDItemCardPlaceOfBirth");
  std::string::basic_string[abi:nn200100]<0>(v10, "kMDItemCardRegion");
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemCardSubType");
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemCardUnderName");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&PhRetrievalAttribs(void)::_retrievalAttribs, &__str, &v13);
  v0 = 288;
  do
  {
    if (__str.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&__str.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
}

void sub_1C2A2F320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 287);
  v13 = -288;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void *___ZL30PhPopulateSomeFiltersFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES5_S9__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (!result)
  {
    return result;
  }

  if ([a2 objectForKeyedSubscript:@"kQPDate"] && objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"))
  {
    v9 = 40;
    v10 = 32;
LABEL_9:
    [*(a1 + v10) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
    v11 = *(a1 + v9);
    v12 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

    return [v11 addObject:v12];
  }

  if ([a2 objectForKeyedSubscript:@"kQPGroundedPerson"] || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPTaggedPerson")) != 0)
  {
    result = [a2 objectForKeyedSubscript:@"kQPDescription"];
    if (result)
    {
      v9 = 56;
      v10 = 48;
      goto LABEL_9;
    }
  }

  return result;
}

void *___ZL29PhPopulateDateFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueE_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    result = [a2 objectForKeyedSubscript:@"kQPDate"];
    if (result)
    {
      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (result)
      {
        [*(a1 + 32) addObject:{objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPDescription"}];
        v9 = *(a1 + 40);
        v10 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

        return [v9 addObject:v10];
      }
    }
  }

  return result;
}

uint64_t tokenState(CFStringRef theString, const __CFCharacterSet *a2, const __CFCharacterSet *a3, BOOL *a4, BOOL *a5)
{
  v10 = 0;
  *a4 = 1;
  *a5 = 1;
  while (1)
  {
    result = CFStringGetLength(theString);
    if (v10 >= result)
    {
      break;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v10);
    if (CFCharacterSetIsCharacterMember(a2, CharacterAtIndex))
    {
      *a5 = 0;
    }

    else
    {
      *a4 = 0;
      result = CFCharacterSetIsCharacterMember(a3, CharacterAtIndex);
      if (!result)
      {
        *a5 = 0;
        return result;
      }
    }

    ++v10;
  }

  return result;
}

uint64_t std::vector<PhLLMTokenInfo>::push_back[abi:nn200100](unint64_t *a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v12 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 4);
    if (v12 + 1 > 0x1C71C71C71C71C7)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v13 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 4);
    v14 = 2 * v13;
    if (2 * v13 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0xE38E38E38E38E3)
    {
      v15 = 0x1C71C71C71C71C7;
    }

    else
    {
      v15 = v14;
    }

    v29 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<PhLLMTokenInfo>>(v15);
    }

    v16 = 144 * v12;
    v26 = 0;
    v27 = v16;
    v28 = v16;
    v17 = *a2;
    v18 = a2[1];
    *(v16 + 32) = *(a2 + 4);
    *v16 = v17;
    *(v16 + 16) = v18;
    std::vector<int>::vector[abi:nn200100]((v16 + 40), a2 + 5);
    v19 = a2[4];
    v20 = a2[5];
    *(v16 + 96) = *(a2 + 12);
    *(v16 + 64) = v19;
    *(v16 + 80) = v20;
    std::unordered_set<std::string>::unordered_set(v16 + 104, a2 + 104);
    *&v28 = v28 + 144;
    v21 = a1[1];
    v22 = v27 + *a1 - v21;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(*a1, v21, v22);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    v25 = v28;
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    result = std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(&v26);
    v11 = v25;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v5 + 32) = *(a2 + 4);
    *v5 = v6;
    *(v5 + 16) = v7;
    std::vector<int>::vector[abi:nn200100]((v5 + 40), a2 + 5);
    v8 = a2[4];
    v9 = a2[5];
    *(v5 + 96) = *(a2 + 12);
    *(v5 + 64) = v8;
    *(v5 + 80) = v9;
    result = std::unordered_set<std::string>::unordered_set(v5 + 104, a2 + 104);
    v11 = v5 + 144;
    a1[1] = v5 + 144;
  }

  a1[1] = v11;
  return result;
}

void sub_1C2A2F7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 + 40);
  if (v9)
  {
    *(v7 + 48) = v9;
    operator delete(v9);
  }

  std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t _rangeIntersection(NSUInteger a1, NSUInteger a2, void *a3)
{
  if (![a3 count])
  {
    return -1;
  }

  v6 = 0;
  while (1)
  {
    v10.location = [objc_msgSend(a3 objectAtIndexedSubscript:{v6), "rangeValue"}];
    v10.length = v7;
    v9.location = a1;
    v9.length = a2;
    if (NSIntersectionRange(v9, v10).length)
    {
      break;
    }

    if (++v6 >= [a3 count])
    {
      return -1;
    }
  }

  return v6;
}

void std::vector<int>::push_back[abi:nn200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void PhLLMTokenInfo::~PhLLMTokenInfo(PhLLMTokenInfo *this)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 104);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

query_node *PhAttribNodes(char *__s, uint64_t *a2, int a3, char a4)
{
  v5 = a2;
  v7 = 0;
  if (!a3)
  {
    while (v5)
    {
      v11 = (v5 + 2);
      if (*(v5 + 39) < 0)
      {
        v11 = *v11;
      }

      QueryNode = createQueryNode(v11, __s, 112, 1, 0, 0.0, 0.0);
      v7 = makeOrNode(v7, QueryNode);
      v5 = *v5;
    }

    if (a4)
    {
      v10 = 0;
      goto LABEL_14;
    }

    return v7;
  }

  if (a2)
  {
    do
    {
      v8 = (v5 + 2);
      if (*(v5 + 39) < 0)
      {
        v8 = *v8;
      }

      v9 = createQueryNode(v8, __s, 112, 1, -1, 0.0, 0.0);
      v7 = makeOrNode(v7, v9);
      v5 = *v5;
    }

    while (v5);
  }

  if ((a4 & 1) == 0)
  {
    return v7;
  }

  v10 = -1;
LABEL_14:
  v13 = createQueryNode("kMDItemPhotosSharedLibraryContributorsNames", __s, 112, 1, v10, 0.0, 0.0);
  v14 = makeOrNode(v7, v13);
  v15 = createQueryNode("kMDItemPhotosSharedLibraryContributorsNamesAlternatives", __s, 112, 1, v10, 0.0, 0.0);

  return makeOrNode(v14, v15);
}

query_node *processNode(query_node *a1)
{
  v1 = a1;
  var0 = a1->var0;
  var1 = v1->var1;
  if (var0 | var1)
  {
    v4 = processNode(var0);
    v5 = processNode(var1);
    var6 = v1->var6;
    if (var6 == 2)
    {
      v7 = makeAndNode(v4, v5);
    }

    else
    {
      if (var6 != 1)
      {
        db_free_query_node(v4);
        db_free_query_node(v5);
        v19 = 0;
        goto LABEL_22;
      }

      v7 = makeOrNode(v4, v5);
    }

    v19 = v7;
LABEL_22:
    v1->var0 = 0;
    v1->var1 = 0;
    v20 = MEMORY[0x1E69E9820];
    v21 = 0x40000000;
    v22 = __db_query_tree_apply_block_block_invoke;
    v23 = &unk_1E8198ED0;
    v24 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v1, &v20, 0);
    return v19;
  }

  var2 = v1->var2;
  if (!var2 || !*var2 || strcmp(*var2, "kMDItemContentCreationDate"))
  {
    return v1;
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __db_query_tree_apply_block_block_invoke;
  v23 = &unk_1E8198ED0;
  v24 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v1, &v20, &__block_literal_global_25_15416);
  v10 = v9;
  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __db_query_tree_apply_block_block_invoke;
  v23 = &unk_1E8198ED0;
  v24 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v1, &v20, &__block_literal_global_25_15416);
  v12 = v11;
  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __db_query_tree_apply_block_block_invoke;
  v23 = &unk_1E8198ED0;
  v24 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v1, &v20, &__block_literal_global_25_15416);
  v14 = v13;
  v20 = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __db_query_tree_apply_block_block_invoke;
  v23 = &unk_1E8198ED0;
  v24 = &__block_literal_global_174;
  db_query_tree_apply_block_with_meta(v1, &v20, 0);
  if (v12)
  {
    v15 = v12->var2;
    if (v15)
    {
      if (*v15)
      {
        free(*v15);
      }
    }
  }

  *v12->var2 = strdup("kMDItemCardIssueDate");
  if (v14)
  {
    v16 = v14->var2;
    if (v16)
    {
      if (*v16)
      {
        free(*v16);
      }
    }
  }

  *v14->var2 = strdup("kMDItemCardExpirationDate");
  v17 = makeOrNode(v10, v12);

  return makeOrNode(v17, v14);
}

void std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 104);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

void std::vector<PhLLMTokenInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 144;
        std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<PhLLMTokenInfo>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<PhLLMTokenInfo>,PhLLMTokenInfo*>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 13;
    v6 = a3 + 104;
    do
    {
      v7 = *(v5 - 13);
      v8 = *(v5 - 9);
      *(v6 - 88) = *(v5 - 11);
      *(v6 - 104) = v7;
      *(v6 - 72) = v8;
      *(v6 - 64) = 0;
      *(v6 - 56) = 0;
      *(v6 - 48) = 0;
      *(v6 - 64) = *(v5 - 4);
      *(v6 - 48) = *(v5 - 6);
      *(v5 - 8) = 0;
      *(v5 - 7) = 0;
      *(v5 - 6) = 0;
      v9 = *(v5 - 5);
      v10 = *(v5 - 3);
      *(v6 - 8) = *(v5 - 1);
      *(v6 - 24) = v10;
      *(v6 - 40) = v9;
      v11 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(v6, v5);
      v12 = v5 + 5;
      v5 += 18;
      v6 = v11 + 144;
    }

    while (v12 != a2);
    do
    {
      std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](v4);
      v4 += 144;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<PhLLMTokenInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    std::allocator<PhLLMTokenInfo>::destroy[abi:nn200100](i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, (i + 2), (i + 2));
  }

  return a1;
}

void ___ZL14PhThreeYearAgov_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF00] date];
  asprintf(&PhThreeYearAgo(void)::oldYear, "%lu", [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")] - 3);

  objc_autoreleasePoolPop(v0);
}

void ___ZL11CurrentYearv_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DF00] date];
  asprintf(&CurrentYear(void)::currYear, "%lu", [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")]);

  objc_autoreleasePoolPop(v0);
}

uint64_t ___ZL20PhRankingTreeFromStrPKcfPi_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 52) = *(a1 + 40);
      *(v2 + 56) = 0;
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  return a2;
}

void ___ZL26PhExactMatchRankingAttribsv_block_invoke()
{
  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosFavorites");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1043878380;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosPeopleNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1043207291;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosPeopleNamesAlternatives");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1043207291;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSceneClassificationLabels");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1042536202;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSceneClassificationSynonyms");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1042536202;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosDescription");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1041865114;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1041865114;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosLocationKeywords");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1041194025;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosHolidays");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSeasons");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosContentCreationDateMonth");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosContentCreationDateYear");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1040522936;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosBusinessCategories");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1039516303;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosBusinessNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1039516303;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventCategories");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosEventPerformers");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1038174126;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSharedLibraryContributorsNames");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSharedLibraryContributorsNamesAlternatives");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosSavedFromAppName");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosUtilityTypes");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemAcquisitionModel");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosMeanings");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosMediaTypes");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "kMDItemPhotosTitle");
  v2 = __p;
  *(std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&PhExactMatchRankingAttribs(void)::_phExactMatchRankingAttribs, __p, &v2) + 10) = 1036831949;
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1C2A309AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *___ZL25PhRankingTreeFromLLMParsePK14__CFDictionaryP7NSArrayIP7NSValueEP14NSCharacterSetP8NSString_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (result)
  {
    result = [a2 objectForKeyedSubscript:@"kQPMedia"];
    if (result)
    {
      result = [a2 objectForKeyedSubscript:@"kQPDescription"];
      if (result)
      {
        result = [a2 objectForKeyedSubscript:@"kQPDescription"];
        *(*(*(a1 + 32) + 8) + 40) = result;
      }
    }
  }

  return result;
}

void ___ZL37PhPreExtractionMatchLLMRankingAttribsv_block_invoke()
{
  *(&v4 + 1) = *MEMORY[0x1E69E9840];
  LODWORD(v0) = 1045220557;
  std::string::basic_string[abi:nn200100]<0>(&v3, "kMDItemCardUnderName");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(&v1, &v3, &v4, 1uLL);
}

void sub_1C2A30F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a10);
  v23 = &a22;
  v24 = -72;
  v25 = &a22;
  while (1)
  {
    v26 = *v25;
    v25 -= 24;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 24;
    if (!v24)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,PhRankingInfo>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PhRankingInfo>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PhRankingInfo>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PhRankingInfo>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(float *a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,PhRankingInfo>,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 4;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void ___ZL19PhOCRRankingAttribsv_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = xmmword_1C2BFA440;
  v1 = 0xE00000008;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__assign_unique<int const*>(&PhOCRRankingAttribs(void)::_OCRRankingAttribs, &v0, &v2);
}

void ___ZL30PhPrefixMatchLLMRankingAttribsv_block_invoke()
{
  *(&v4 + 1) = *MEMORY[0x1E69E9840];
  LODWORD(v0) = 1043878380;
  std::string::basic_string[abi:nn200100]<0>(&v3, "kMDItemPhotosFavorites");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(&v1, &v3, &v4, 1uLL);
}

void sub_1C2A31D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v10;
  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a10);
  if (*(v11 - 49) < 0)
  {
    operator delete(*(v11 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1C2A31F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  while (1)
  {
    v12 = *(v11 - 1);
    v11 -= 3;
    if (v12 < 0)
    {
      operator delete(*v11);
    }

    if (v11 == &a11)
    {
      JUMPOUT(0x1C2A31F88);
    }
  }
}

void sub_1C2A31FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  while (1)
  {
    v12 = *(v11 - 1);
    v11 -= 3;
    if (v12 < 0)
    {
      operator delete(*v11);
    }

    if (v11 == &a11)
    {
      JUMPOUT(0x1C2A31F88);
    }
  }
}

void ___ZL28PhSpanMatchLLMRankingAttribsv_block_invoke()
{
  *(&v4 + 1) = *MEMORY[0x1E69E9840];
  LODWORD(v0) = 1043878380;
  std::string::basic_string[abi:nn200100]<0>(&v3, "kMDItemPhotosFavorites");
  v1 = 0uLL;
  v2 = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(&v1, &v3, &v4, 1uLL);
}

void sub_1C2A327DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](va);
  if (*(v5 - 49) < 0)
  {
    operator delete(*(v5 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_bP8NSStringb_block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if ([a2 count])
  {
    [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_bP8NSStringb_block_invoke_2;
  v17[3] = &unk_1E8194988;
  v21 = a3;
  v22 = a4;
  v18 = *(a1 + 40);
  v24 = *(a1 + 72);
  v19 = &v29;
  v20 = &v25;
  v23 = *(a1 + 56);
  [a2 enumerateKeysAndObjectsUsingBlock:v17];
  v8 = v26[3];
  v9 = v30[3];
  if (v8 && v9)
  {
    v10 = makeOrNode(v8, v9);
    if (*(a1 + 72) == 1)
    {
      v11 = makeAndNode(**(a1 + 64), v10);
      v12 = *(a1 + 64);
LABEL_9:
      *v12 = v11;
      goto LABEL_13;
    }

    **(a1 + 56) = makeAndNode(**(a1 + 56), v10);
    v13 = *__error();
    v14 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v38.location = a3;
      v38.length = a4;
      v16 = NSStringFromRange(v38);
      *buf = 138412546;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "%@ Token (range: %@) has generic and metdata filters (ORing them together)", buf, 0x16u);
    }

    *__error() = v13;
  }

  else
  {
    **(a1 + 64) = makeAndNode(**(a1 + 64), v9);
    if ((*(a1 + 72) & 1) == 0)
    {
      v11 = makeAndNode(**(a1 + 56), v26[3]);
      v12 = *(a1 + 56);
      goto LABEL_9;
    }
  }

LABEL_13:
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void sub_1C2A32C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

int *___ZL26PhPopulateFiltersFromQueryPK20__CFAttributedStringPP10query_nodeS4_P14NSMutableArrayIP7NSValueES9_bP8NSStringb_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = [a2 length];
  if (!a3)
  {
    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (![a3 length])
  {
    goto LABEL_17;
  }

  v7 = [a2 UTF8String];
  v8 = [a3 UTF8String];
  if (!v7)
  {
    goto LABEL_17;
  }

  v9 = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

  std::string::basic_string[abi:nn200100]<0>(__p, v7);
  {
    MetadataKeys(void)::_metadataKeys = 0u;
    *algn_1EBF61F30 = 0u;
    dword_1EBF61F40 = 1065353216;
  }

  if (MetadataKeys(void)::onceToken != -1)
  {
    dispatch_once(&MetadataKeys(void)::onceToken, &__block_literal_global_94_7573);
  }

  v10 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&MetadataKeys(void)::_metadataKeys, __p);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(*__p);
  }

  if (!v10)
  {
    if ((*(a1 + 88) & 1) == 0)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, v7);
      v24 = isGenericFilterKey(__p);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*__p);
      }

      if (v24)
      {
        v25 = *(*(*(a1 + 56) + 8) + 24);
        query_node_with_ann = db_make_query_node_with_ann(v9, 0);
        *(*(*(a1 + 56) + 8) + 24) = makeOrNode(v25, query_node_with_ann);
        v13 = *__error();
        v14 = _SILogForLogForCategory(19);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v27 = *(a1 + 40);
        v28 = NSStringFromRange(*(a1 + 64));
        *__p = 138412802;
        *&__p[4] = v27;
        v35 = 2112;
        v36 = a3;
        v37 = 2112;
        v38 = v28;
        v17 = "%@ Adding generic filter: %@, token range: %@";
        goto LABEL_15;
      }

      if ((*(a1 + 88) & 1) == 0)
      {
        std::string::basic_string[abi:nn200100]<0>(__p, v7);
        v29 = isGenericFilterTopLevelKey(__p);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(*__p);
        }

        if (v29)
        {
          v30 = **(a1 + 80);
          v31 = db_make_query_node_with_ann(v9, 0);
          **(a1 + 80) = makeAndNode(v30, v31);
          v13 = *__error();
          v14 = _SILogForLogForCategory(19);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

          v32 = *(a1 + 40);
          v33 = NSStringFromRange(*(a1 + 64));
          *__p = 138412802;
          *&__p[4] = v32;
          v35 = 2112;
          v36 = a3;
          v37 = 2112;
          v38 = v33;
          v17 = "%@ Adding generic top level filter: %@, token range: %@";
          goto LABEL_15;
        }
      }
    }

LABEL_17:
    v19 = *(a1 + 88);
    v13 = *__error();
    if (v19)
    {
      v20 = _SILogForLogForCategory(20);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v20 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }
    }

    v21 = *(a1 + 40);
    v22 = NSStringFromRange(*(a1 + 64));
    *__p = 138412802;
    *&__p[4] = v21;
    v35 = 2112;
    v36 = v22;
    v37 = 2112;
    v38 = a2;
    v17 = "%@ [WARN] Ignoring filter, token range: %@, key: %@";
    v18 = v20;
    goto LABEL_22;
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  v12 = db_make_query_node_with_ann(v9, 0);
  *(*(*(a1 + 48) + 8) + 24) = makeOrNode(v11, v12);
  [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", *(a1 + 64), *(a1 + 72))}];
  v13 = *__error();
  v14 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = NSStringFromRange(*(a1 + 64));
    *__p = 138412802;
    *&__p[4] = v15;
    v35 = 2112;
    v36 = a3;
    v37 = 2112;
    v38 = v16;
    v17 = "%@ Adding metadata filter: %@, token range: %@";
LABEL_15:
    v18 = v14;
LABEL_22:
    _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, v17, __p, 0x20u);
  }

LABEL_23:
  result = __error();
  *result = v13;
  return result;
}

void sub_1C2A33134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL isGenericFilterKey(uint64_t a1)
{
  {
    GenericFilterKeys(void)::_genericFilterKeys = 0u;
    unk_1EBF61F68 = 0u;
    dword_1EBF61F78 = 1065353216;
  }

  if (GenericFilterKeys(void)::onceToken != -1)
  {
    dispatch_once(&GenericFilterKeys(void)::onceToken, &__block_literal_global_98);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&GenericFilterKeys(void)::_genericFilterKeys, a1) != 0;
}

{
  {
    GenericFilterKeys(void)::_genericFilterKeys = 0u;
    *algn_1EC058EF0 = 0u;
    dword_1EC058F00 = 1065353216;
  }

  if (GenericFilterKeys(void)::onceToken != -1)
  {
    dispatch_once(&GenericFilterKeys(void)::onceToken, &__block_literal_global_32_16773);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&GenericFilterKeys(void)::_genericFilterKeys, a1) != 0;
}

BOOL isGenericFilterTopLevelKey(uint64_t a1)
{
  {
    GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys = 0u;
    unk_1EBF61FA0 = 0u;
    dword_1EBF61FB0 = 1065353216;
  }

  if (GenericFilterTopLevelKeys(void)::onceToken != -1)
  {
    dispatch_once(&GenericFilterTopLevelKeys(void)::onceToken, &__block_literal_global_126);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys, a1) != 0;
}

{
  {
    GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys = 0u;
    unk_1EC058F28 = 0u;
    dword_1EC058F38 = 1065353216;
  }

  if (GenericFilterTopLevelKeys(void)::onceToken != -1)
  {
    dispatch_once(&GenericFilterTopLevelKeys(void)::onceToken, &__block_literal_global_65_16765);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys, a1) != 0;
}

void ___ZL25GenericFilterTopLevelKeysv_block_invoke()
{
  v1.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__p, "kMDItemPhotosResultType");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&GenericFilterTopLevelKeys(void)::_genericFilterTopLevelKeys, &__p, &v1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1C2A33334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL17GenericFilterKeysv_block_invoke()
{
  v27.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "kMDItemAcquisitionModel");
  std::string::basic_string[abi:nn200100]<0>(v2, "kMDItemContentCreationDate");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemContentType");
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemFilename");
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemPhotosBusinessCategories");
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemPhotosBusinessNames");
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemPhotosContentCreationDateMonth");
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemPhotosContentCreationDateYear");
  std::string::basic_string[abi:nn200100]<0>(v9, "kMDItemPhotosDescription");
  std::string::basic_string[abi:nn200100]<0>(v10, "kMDItemPhotosEventCategories");
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemPhotosEventNames");
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemPhotosEventPerformers");
  std::string::basic_string[abi:nn200100]<0>(v13, "kMDItemPhotosFavorited");
  std::string::basic_string[abi:nn200100]<0>(v14, "kMDItemPhotosHolidays");
  std::string::basic_string[abi:nn200100]<0>(v15, "kMDItemPhotosKeywords");
  std::string::basic_string[abi:nn200100]<0>(v16, "kMDItemPhotosLibraryName");
  std::string::basic_string[abi:nn200100]<0>(v17, "kMDItemPhotosLocationKeywords");
  std::string::basic_string[abi:nn200100]<0>(v18, "kMDItemPhotosMediaTypes");
  std::string::basic_string[abi:nn200100]<0>(v19, "kMDItemPhotosPeopleNames");
  std::string::basic_string[abi:nn200100]<0>(v20, "kMDItemPhotosPeopleNamesAlternatives");
  std::string::basic_string[abi:nn200100]<0>(v21, "kMDItemPhotosPeoplePersonIdentifiers");
  std::string::basic_string[abi:nn200100]<0>(v22, "kMDItemPhotosSavedFromAppName");
  std::string::basic_string[abi:nn200100]<0>(v23, "kMDItemPhotosSeasons");
  std::string::basic_string[abi:nn200100]<0>(v24, "kMDItemPhotosSharedLibraryContributorsPersonIdentifiers");
  std::string::basic_string[abi:nn200100]<0>(v25, "kMDItemPhotosTitle");
  std::string::basic_string[abi:nn200100]<0>(v26, "kMDItemTextContent");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&GenericFilterKeys(void)::_genericFilterKeys, &__str, &v27);
  v0 = 624;
  do
  {
    if (__str.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&__str.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
}

void sub_1C2A33620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 623);
  v13 = -624;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ___ZL12MetadataKeysv_block_invoke()
{
  v3.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__str, "kMDItemPhotosMeanings");
  std::string::basic_string[abi:nn200100]<0>(v2, "kMDItemPhotosSceneClassificationLabels");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&MetadataKeys(void)::_metadataKeys, &__str, &v3);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v2[i + 2]) < 0)
    {
      operator delete(*(&__str + i * 8 + 24));
    }
  }
}

void sub_1C2A3373C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v22 = &a21;
  v23 = -48;
  v24 = &a21;
  while (1)
  {
    v25 = *v24;
    v24 -= 24;
    if (v25 < 0)
    {
      operator delete(*(v22 - 23));
    }

    v22 = v24;
    v23 += 24;
    if (!v23)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void slab_vm_deallocate(void *a1, int64_t a2, unsigned int a3)
{
  if (a3 == 250)
  {
    if (a2 != 0x100000)
    {
      v9 = MEMORY[0x1E69E9AC8];
      if (*MEMORY[0x1E69E9AC8] == a2)
      {
        v10 = node_alloc();
        v10[1] = a1;
        madvise(a1, *v9, 5);
        atomic_fetch_add_explicit(qword_1EDD78CE0, -a2, memory_order_relaxed);
        v8 = &stru_1EDD78D30;
        v7 = v10;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    madvise(a1, 0x100000uLL, 5);
    atomic_fetch_add_explicit(qword_1EDD78CE0, 0xFFFFFFFFFFF00000, memory_order_relaxed);
    v6 = qword_1EDD78D50;
    if (atomic_fetch_add(qword_1EDD78D50, 1uLL) <= 4)
    {
      v7 = node_alloc();
      v7[1] = a1;
      v8 = &stru_1EDD78D40;
LABEL_16:

      OSAtomicEnqueue(v8, v7, 0);
      return;
    }
  }

  else
  {
    if (a3 - 243 > 4)
    {
      if (a3 - 240 >= 0x11)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (a2 != 0x100000)
    {
      if (*MEMORY[0x1E69E9AC8] == a2)
      {
        v7 = node_alloc();
        v7[1] = a1;
        atomic_fetch_add_explicit(&tag_sizes[a3 - 240], -a2, memory_order_relaxed);
        v8 = &stru_1EDD78B00;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    atomic_fetch_add_explicit(&tag_sizes[a3 - 240], 0xFFFFFFFFFFF00000, memory_order_relaxed);
    v6 = qword_1EDD78B20;
    if (atomic_fetch_add(qword_1EDD78B20, 1uLL) <= 4)
    {
      v7 = node_alloc();
      v7[1] = a1;
      v8 = &stru_1EDD78B10;
      goto LABEL_16;
    }
  }

  atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL);
LABEL_19:
  atomic_fetch_add_explicit(&tag_sizes[a3 - 240], -a2, memory_order_relaxed);
LABEL_20:

  munmap(a1, a2);
}

BOOL _writepos_match_address(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = v2 > a2;
  v3 = v2 + 0x100000;
  return !v4 && v3 > a2;
}

uint64_t packContextFinalize(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v3;
  v7 = v6;
  v8 = v2;
  v9 = v1;
  v45 = *MEMORY[0x1E69E9840];
  v10 = *(v2 + 2);
  if (v10 >= 2)
  {
    v1[2] = 20;
    goto LABEL_6;
  }

  v11 = v7[1];
  if (v11)
  {
    v1[2] = 20;
    if (!v10)
    {
      goto LABEL_7;
    }

    v10 = 1;
LABEL_6:
    packPostingChunks(v1, *v2, v10, (v2 + 4));
    v11 = v7[1];
    if (!v11)
    {
LABEL_15:
      v13 = *v9;
      v14 = *(v9 + 4) - 20;
      v15 = 20;
LABEL_16:
      v16 = packRunHeadR(v13, v15, v5, v14);
      goto LABEL_17;
    }

LABEL_7:
    v12 = v44;
    bzero(v44, 0x2000uLL);
    if (v11 >= 1024)
    {
      v12 = malloc_type_malloc(8 * v11 + 8, 0x100004000313F17uLL);
    }

    v43 = v12;
    changeHolderApply(v7, changeHolderGetAdd, &v43);
    *v43 = 0;
    if (*v12)
    {
      packPostingChunkUpdatesWithType(v9, v12, 1u);
    }

    v43 = v12;
    changeHolderApply(v7, changeHolderGetRemove, &v43);
    *v43 = 0;
    if (*v12)
    {
      packPostingChunkUpdatesWithType(v9, v12, 2u);
    }

    if (v12 != v44)
    {
      free(v12);
    }

    goto LABEL_15;
  }

  v16 = v1[2];
  if (v10 != 1)
  {
    if (!v4)
    {
      goto LABEL_17;
    }

    packPostingChunks(v1, *v2, 0, (v2 + 4));
    v13 = *v9;
    v14 = *(v9 + 4) - 20;
    v15 = v16;
    goto LABEL_16;
  }

  v18 = **v2;
  v19 = *v1;
  v20 = 2 * v3;
  if ((v3 >> 31))
  {
    v23 = v20 | 0x80;
    if ((v20 & 0x8000000000000000) != 0)
    {
      v27 = &v19[v16];
      *v27 = v23;
      v28 = vdupq_n_s64(v20);
      v28.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v28, xmmword_1C2BFA320), vshlq_u64(v28, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v27 + 1) = vuzp1_s8(*v28.i8, *v28.i8).u32[0];
      v27[5] = (v20 >> 35) | 0x80;
      v27[6] = (v20 >> 42) | 0x80;
      v27[7] = (v20 >> 49) | 0x80;
      v27[8] = HIBYTE(v20);
      v22 = v16 + 10;
      v27[9] = 1;
    }

    else if (HIBYTE(v20))
    {
      v29 = &v19[v16];
      *v29 = v23;
      v30 = vdupq_n_s64(v20);
      v30.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v30, xmmword_1C2BFA320), vshlq_u64(v30, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v29 + 1) = vuzp1_s8(*v30.i8, *v30.i8).u32[0];
      v29[5] = (v20 >> 35) | 0x80;
      v29[6] = (v20 >> 42) | 0x80;
      v29[7] = ((v3 >> 31) >> 17) | 0x80;
      v22 = v16 + 9;
      v29[8] = HIBYTE(v20);
    }

    else if (v20 >> 49)
    {
      v32 = &v19[v16];
      *v32 = v23;
      v33 = vdupq_n_s64(v20);
      v33.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v33, xmmword_1C2BFA320), vshlq_u64(v33, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v32 + 1) = vuzp1_s8(*v33.i8, *v33.i8).u32[0];
      v32[5] = (v20 >> 35) | 0x80;
      v32[6] = ((v3 >> 31) >> 10) | 0x80;
      v22 = v16 + 8;
      v32[7] = v20 >> 49;
    }

    else
    {
      v24 = &v19[v16];
      *v24 = v23;
      v25 = vdupq_n_s64(v20);
      v25.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v25, xmmword_1C2BFA320), vshlq_u64(v25, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v24 + 1) = vuzp1_s8(*v25.i8, *v25.i8).u32[0];
      if (v20 >> 42)
      {
        v24[5] = ((v3 >> 31) >> 3) | 0x80;
        v22 = v16 + 7;
        v24[6] = v20 >> 42;
      }

      else
      {
        v22 = v16 + 6;
        v24[5] = v20 >> 35;
      }
    }
  }

  else if (v20 >> 28)
  {
    v26 = &v19[v16];
    *v26 = v20 | 0x80;
    v26[1] = (v20 >> 7) | 0x80;
    v26[2] = (v20 >> 14) | 0x80;
    v26[3] = (v20 >> 21) | 0x80;
    v22 = v16 + 5;
    v26[4] = v20 >> 28;
  }

  else if (v20 >= 0x200000)
  {
    v31 = &v19[v16];
    *v31 = v20 | 0x80;
    v31[1] = (v20 >> 7) | 0x80;
    v31[2] = (v20 >> 14) | 0x80;
    v22 = v16 + 4;
    v31[3] = v20 >> 21;
  }

  else
  {
    v21 = &v19[v16];
    if (v20 >= 0x4000)
    {
      *v21 = v20 | 0x80;
      v21[1] = (v20 >> 7) | 0x80;
      v22 = v16 + 3;
      v21[2] = v20 >> 14;
    }

    else if (v20 >= 0x80)
    {
      *v21 = v20 | 0x80;
      v22 = v16 + 2;
      v21[1] = v20 >> 7;
    }

    else
    {
      v22 = v16 + 1;
      *v21 = v20;
    }
  }

  v34 = 2 * v18;
  v35 = (2 * v18) | 1;
  if (((v18 >> 27) & 0xF) != 0)
  {
    v38 = &v19[v22];
    *v38 = (2 * v18) | 0x81;
    v38[1] = (v18 >> 6) | 0x80;
    v38[2] = (v18 >> 13) | 0x80;
    v38[3] = (v18 >> 20) | 0x80;
    v37 = v22 + 5;
    v38[4] = v34 >> 28;
  }

  else if (v34 >= 0x200000)
  {
    v39 = &v19[v22];
    *v39 = (2 * v18) | 0x81;
    v39[1] = (v18 >> 6) | 0x80;
    v39[2] = (v18 >> 13) | 0x80;
    v40 = v18 >> 20;
    v37 = v22 + 4;
    v39[3] = v40;
  }

  else
  {
    v36 = &v19[v22];
    if (v34 >= 0x4000)
    {
      *v36 = (2 * v18) | 0x81;
      v36[1] = (v18 >> 6) | 0x80;
      v41 = v18 >> 13;
      v37 = v22 + 3;
      v36[2] = v41;
    }

    else if (v34 >= 0x80)
    {
      *v36 = (2 * v18) | 0x81;
      v42 = v18 >> 6;
      v37 = v22 + 2;
      v36[1] = v42;
    }

    else
    {
      v37 = v22 + 1;
      *v36 = v35;
    }
  }

  v1[2] = v37;
LABEL_17:
  v7[1] = 0;
  v7[3] = 0;
  *(v8 + 2) = 0;
  *(v8 + 6) = 0;
  v8[2] = 0;
  v8[10] = 0;
  return v16;
}

void *changeHolderApply(void *result, uint64_t (*a2)(void, void, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  v7 = result[3];
  v8 = v6 - result[1] + v7;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      result = a2(*(*v5 + v9), *(*v5 + v9 + 8), a3);
      v9 += 16;
      --v7;
    }

    while (v7);
    v6 = v5[2];
  }

  if (v8 < v6)
  {
    v10 = 16 * v8;
    do
    {
      result = a2(*(*v5 + v10), *(*v5 + v10 + 8), a3);
      ++v8;
      v10 += 16;
    }

    while (v8 < v5[2]);
  }

  return result;
}

uint64_t packRunHeadR(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  if (a4 >> 28)
  {
    v5 = a1 + a2;
    *(v5 - 1) = a4 >> 28;
    *(v5 - 2) = (a4 >> 21) | 0x80;
    *(v5 - 3) = (a4 >> 14) | 0x80;
    *(v5 - 4) = (a4 >> 7) | 0x80;
    LOBYTE(a4) = a4 | 0x80;
    v4 = -5;
  }

  else if (a4 >= 0x200000)
  {
    v6 = a1 + a2;
    *(v6 - 1) = a4 >> 21;
    *(v6 - 2) = (a4 >> 14) | 0x80;
    *(v6 - 3) = (a4 >> 7) | 0x80;
    LOBYTE(a4) = a4 | 0x80;
    v4 = -4;
  }

  else if (a4 >= 0x4000)
  {
    v7 = a1 + a2;
    *(v7 - 1) = a4 >> 14;
    *(v7 - 2) = (a4 >> 7) | 0x80;
    LOBYTE(a4) = a4 | 0x80;
    v4 = -3;
  }

  else if (a4 >= 0x80)
  {
    *(a1 + a2 - 1) = a4 >> 7;
    LOBYTE(a4) = a4 | 0x80;
    v4 = -2;
  }

  else
  {
    v4 = -1;
  }

  v8 = v4 + a2;
  v9 = a1 + v8;
  *(a1 + v8) = a4;
  v10 = 2 * a3;
  v11 = (2 * a3) | 1;
  if ((a3 >> 31))
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      *(v9 - 1) = 1;
      *(v9 - 2) = HIBYTE(v10);
      *(v9 - 3) = (v10 >> 49) | 0x80;
      *(v9 - 4) = (v10 >> 42) | 0x80;
      *(v9 - 5) = (v10 >> 35) | 0x80;
      v14 = vdupq_n_s64(v10);
      v14.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v14, xmmword_1C2BFA320), vshlq_u64(v14, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 9) = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -10;
    }

    else if (HIBYTE(v10))
    {
      *(v9 - 1) = HIBYTE(v10);
      *(v9 - 2) = (v10 >> 49) | 0x80;
      *(v9 - 3) = (v10 >> 42) | 0x80;
      *(v9 - 4) = (v10 >> 35) | 0x80;
      v15 = vdupq_n_s64(v10);
      v15.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v15, xmmword_1C2BFA320), vshlq_u64(v15, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 8) = vuzp1_s8(*v15.i8, *v15.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -9;
    }

    else if (v10 >> 49)
    {
      *(v9 - 1) = v10 >> 49;
      *(v9 - 2) = (v10 >> 42) | 0x80;
      *(v9 - 3) = (v10 >> 35) | 0x80;
      v16 = vdupq_n_s64(v10);
      v16.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v16, xmmword_1C2BFA320), vshlq_u64(v16, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 7) = vuzp1_s8(*v16.i8, *v16.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -8;
    }

    else if (v10 >> 42)
    {
      *(v9 - 1) = v10 >> 42;
      *(v9 - 2) = (v10 >> 35) | 0x80;
      v17 = vdupq_n_s64(v10);
      v17.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v17, xmmword_1C2BFA320), vshlq_u64(v17, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 6) = vuzp1_s8(*v17.i8, *v17.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -7;
    }

    else
    {
      *(v9 - 1) = v10 >> 35;
      v13 = vdupq_n_s64(v10);
      v13.i64[0] = *&vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_1C2BFA320), vshlq_u64(v13, xmmword_1C2BFA310))) | 0x80008000800080;
      *(v9 - 5) = vuzp1_s8(*v13.i8, *v13.i8).u32[0];
      v11 = (2 * a3) | 0x81;
      v12 = -6;
    }
  }

  else if (v10 >> 28)
  {
    *(v9 - 1) = v10 >> 28;
    *(v9 - 2) = (v10 >> 21) | 0x80;
    *(v9 - 3) = (v10 >> 14) | 0x80;
    *(v9 - 4) = (v10 >> 7) | 0x80;
    v11 = (2 * a3) | 0x81;
    v12 = -5;
  }

  else if (v10 >= 0x200000)
  {
    *(v9 - 1) = v10 >> 21;
    *(v9 - 2) = (v10 >> 14) | 0x80;
    *(v9 - 3) = (v10 >> 7) | 0x80;
    v11 = (2 * a3) | 0x81;
    v12 = -4;
  }

  else if (v10 >= 0x4000)
  {
    *(v9 - 1) = v10 >> 14;
    *(v9 - 2) = (v10 >> 7) | 0x80;
    v11 = (2 * a3) | 0x81;
    v12 = -3;
  }

  else if (v10 >= 0x80)
  {
    *(v9 - 1) = v10 >> 7;
    v11 = (2 * a3) | 0x81;
    v12 = -2;
  }

  else
  {
    v12 = -1;
  }

  v18 = v12 + v8;
  *(a1 + v18) = v11;
  return v18;
}

uint64_t changeHolderGetRemove(uint64_t result, int a2, void **a3)
{
  if (a2 < 0)
  {
    v3 = *a3;
    *v3 = result;
    *a3 = v3 + 1;
  }

  return result;
}

uint64_t changeHolderGetAdd(uint64_t result, int a2, void **a3)
{
  if (a2 >= 1)
  {
    v3 = *a3;
    *v3 = result;
    *a3 = v3 + 1;
  }

  return result;
}

void packContextDestroy(void **a1)
{
  v1 = a1 + 4;
  free(*a1);

  FlattenPostingsContextDestroy(v1);
}

uint64_t mergeIndexData(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v1046 = *MEMORY[0x1E69E9840];
  v1029 = -1;
  v11 = *(*v9 + 80);
  v1028 = 0;
  v1027 = 0;
  bzero(v1023, 0x3C8uLL);
  v920 = v690;
  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  v888 = v12;
  if (v4)
  {
    *v4 = 0;
  }

  if (v8 < 1)
  {
    v27 = 0;
    v32 = 0;
    v25 = 0;
    v33 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
  }

  else
  {
    v13 = 0;
    v14 = v10;
    v15 = v8;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v23 = *v14++;
      v22 = v23;
      v24 = *(v23 + 15560);
      if (v24 <= v18)
      {
        v25 = v18;
      }

      else
      {
        v25 = v24;
      }

      if (*(v22 + 15568) <= v19)
      {
        v26 = v19;
      }

      else
      {
        v26 = *(v22 + 15568);
      }

      v27 = v20 + *(v22 + 15202);
      if (*(v22 + 40) <= v13)
      {
        v28 = v13;
      }

      else
      {
        v28 = *(v22 + 40);
      }

      v29 = *(v22 + 4968) + v16;
      v30 = *(v22 + 9688) + v21;
      v31 = *(v22 + 488) + v17;
      v20 += *(v22 + 15202);
      v19 = v26;
      v32 = v26;
      v18 = v25;
      v13 = v28;
      v17 = v31;
      v33 = v31;
      v16 = v29;
      v21 = v30;
      --v15;
    }

    while (v15);
  }

  v897 = v30;
  v889 = v29;
  v911 = v33;
  v739 = v28;
  v741 = v25;
  v742 = v32;
  v730 = v27;
  v34 = *__error();
  v35 = _SILogForLogForCategory(0);
  v36 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v35, v36))
  {
    *v1034 = 136315394;
    *&v1034[4] = v6;
    v1035 = 1024;
    LODWORD(v1036[0]) = v8;
    _os_log_impl(&dword_1C278D000, v35, v36, "Merging started (%s) count:%d", v1034, 0x12u);
  }

  *__error() = v34;
  v918 = v8;
  v916 = v2;
  v915 = v10;
  v919 = v6;
  if (v8 < 1)
  {
    v47 = 0;
  }

  else
  {
    v744 = v11;
    v917 = v4;
    v38 = 0;
    *&v37 = 136315138;
    v692 = v37;
    do
    {
      v39 = *__error();
      v40 = _SILogForLogForCategory(0);
      v41 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v915[v38] + 15208;
        *v1034 = v692;
        *&v1034[4] = v42;
        _os_log_impl(&dword_1C278D000, v40, v41, "\t%s", v1034, 0xCu);
      }

      *__error() = v39;
      ++v38;
      v8 = v918;
    }

    while (v918 != v38);
    v43 = 1;
    v10 = v915;
    v44 = v915;
    v11 = v744;
    do
    {
      v45 = *v44++;
      v46 = *(v45 + 4928);
      if (v43 >= v918)
      {
        break;
      }

      ++v43;
    }

    while (!v46);
    v47 = (v46 != 0) << 6;
    v6 = v919;
    v4 = v917;
    v2 = v916;
  }

  v48 = v11;
  v49 = *(*v10 + 15672);
  if (*(*v10 + 15714))
  {
    v50 = *v10;
    v51 = 0x8000;
  }

  else
  {
    v52 = *__error();
    v53 = _SILogForLogForCategory(10);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *v10 + 15208;
      *v1034 = 136315138;
      *&v1034[4] = v54;
      _os_log_impl(&dword_1C278D000, v53, OS_LOG_TYPE_DEFAULT, "vectorIndex %s not supported", v1034, 0xCu);
    }

    *__error() = v52;
    v50 = *v10;
    if (*(*v10 + 15714))
    {
      v51 = 0x8000;
    }

    else
    {
      v51 = 0;
    }

    v2 = v916;
  }

  v55 = *(v50 + 45);
  if (*(v50 + 45))
  {
    v56 = 256;
  }

  else
  {
    v56 = 0;
  }

  if (*(v50 + 46))
  {
    v57 = 1024;
  }

  else
  {
    v57 = 0;
  }

  v1022 = createIndex(*(v50 + 64), v6, v48, v49, v47 | (16 * (v730 == v8)) | v56 | v57 | v51, 1, 0, &v1028, *(v50 + 4), *(v50 + 14384), *(v2 + 64), *(v50 + 4936), *(v50 + 15716));
  if (v1028)
  {
    return 0;
  }

  v59 = v2;
  v60 = v4;
  v824 = v55;
  *(v1022 + 40) = v739;
  v61 = v742;
  *(v1022 + 15560) = v741;
  *(v1022 + 15568) = v61;
  v62 = v59;
  v1021 = (*(v59 + 16))(*(v59 + 32));
  v63 = CICleanUpThreadLoc();
  v64 = &threadData[9 * v63];
  v65 = *(v64 + 8);
  v885 = (v64 + 4);
  v66 = v888;
  v67 = malloc_type_calloc(1uLL, 240 * v888 + 256, 0xDCABA7F9uLL);
  v67[30] = v67 + 32;
  v67[31] = &v67[2 * v66 + 32];
  v822 = v63;
  CICleanUpPush(v63, MEMORY[0x1E69E9B38], v67);
  v69 = v67[30];
  v68 = v67[31];
  v905 = v67;
  if (*(v1022 + 8) != 1)
  {
    v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    v78 = v60;
    v79 = v62;
    v81 = v919;
    if (v83)
    {
      *v1034 = 0;
      _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", v1034, 2u);
    }

    goto LABEL_740;
  }

  v903 = v69;
  v904 = v68;
  v912 = v65;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v1020 = 0;
  memset(v1019, 0, sizeof(v1019));
  v71 = *(v1022 + 64);
  v914 = add_explicit;
  v72 = setThreadIdAndInfo(v71, sIndexExceptionCallbacks, v1022, 0x20000000, add_explicit + 1);
  *&v1019[8] = HIDWORD(v72);
  v1020 = v72;
  *&v1019[4] = v73;
  *v1019 = v74;
  v75 = threadData[9 * v72 + 1] + 320 * HIDWORD(v72);
  *(v75 + 216) = 0;
  v76 = *(v75 + 312);
  v77 = *(v75 + 224);
  v78 = v60;
  if (v77)
  {
    v77(*(v75 + 288));
  }

  v1018 = v1020;
  v1017 = *&v1019[8];
  v1016 = *v1019;
  v79 = v62;
  if (_setjmp(v75))
  {
    v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v81 = v919;
    if (v80)
    {
      *v1034 = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v1034, 2u);
    }

    *(v75 + 312) = v76;
    if ((~*(v75 + 212) & 0xA0000000) == 0)
    {
      v82 = *(v75 + 288);
      if (v82)
      {
        _CIMakeInvalid(v82);
      }
    }

    CIOnThreadCleanUpReset(v1016);
    dropThreadId(v1018, 1, v914 + 1);
    CICleanUpReset(v1018, HIDWORD(v1016));
    goto LABEL_740;
  }

  v913 = v76;
  *(v1022 + 4680) = 1;
  bzero(v1042, 0x848uLL);
  v1039[0] = v1022 + 96;
  v1045 = 0u;
  *&v1042[1044] = 0u;
  v1043 = 0;
  v1039[1] = 1;
  v1040 = 0u;
  v1041 = 0u;
  LODWORD(v1040) = 1;
  v1044 = 0;
  v814 = v1022;
  v1012 = 0;
  v1013 = &v1012;
  v1014 = 0x2000000000;
  v1015 = 0;
  v1010[0] = 0;
  v1010[1] = v1010;
  v1010[2] = 0x2000000000;
  v1011 = 0;
  v84 = v915;
  v85 = atomic_load((*v915 + 15192));
  v86 = 1;
  if (!v85)
  {
    v86 = (*(v62 + 16))(*(v62 + 32));
  }

  v1021 = v86;
  v87 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 500, 0, 0);
  v88 = MEMORY[0x1E695E9E8];
  v908 = CFDictionaryCreateMutable(v87, 500, 0, MEMORY[0x1E695E9E8]);
  v1006 = 0;
  v1007 = &v1006;
  v1008 = 0x2000000000;
  v909 = v87;
  v1009 = CFDictionaryCreateMutable(v87, 500, 0, v88);
  bzero(v1038, 0x400uLL);
  accurate_realpath(".", v1038);
  bzero(v1037, 0x400uLL);
  snprintf(v1037, 0x400uLL, "tmp.merge.termIdFile.%d", atomic_fetch_add_explicit(mergeIndexData_termIdFileCount, 1u, memory_order_relaxed) + 1);
  v1029 = openat(*(v1022 + 64), v1037, 536873474, 384);
  unlinkat(*(v1022 + 64), v1037, 0);
  if (v1029 == -1)
  {
    v89 = *__error();
    v90 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v319 = *__error();
      *v1034 = 136315650;
      *&v1034[4] = "mergeIndexData";
      v1035 = 1024;
      LODWORD(v1036[0]) = 2086;
      WORD2(v1036[0]) = 1024;
      *(v1036 + 6) = v319;
      _os_log_error_impl(&dword_1C278D000, v90, OS_LOG_TYPE_ERROR, "%s:%d: open termIdFile error: %d", v1034, 0x18u);
    }

    *__error() = v89;
    v1021 = 1;
  }

  bzero(v1034, 0x11000uLL);
  v1002 = 0;
  v1003 = &v1002;
  v1004 = 0x2000000000;
  v1005 = 0;
  v998 = 0;
  v999 = &v998;
  v1000 = 0x2000000000;
  v1001 = 0;
  v994 = 0;
  v995 = &v994;
  v996 = 0x2000000000;
  v997 = 0;
  v990 = 0;
  v991 = &v990;
  v992 = 0x2000000000;
  v993 = 0;
  v917 = v78;
  if (v8 <= 1)
  {
    *(v1022 + 52) = 0;
    v91 = malloc_type_calloc(v8, 8uLL, 0x80040B8603338uLL);
    if (v8 < 1)
    {
      goto LABEL_91;
    }
  }

  else
  {
    *(v1022 + 52) = 1;
    v91 = malloc_type_calloc(v8, 8uLL, 0x80040B8603338uLL);
  }

  v93 = 0;
  v92.n128_u64[0] = 136315650;
  v697 = v92;
  do
  {
    v94 = *(v84[v93] + 4912);
    if (v94)
    {
      std::mutex::lock((v94 + 16));
      v95 = *__error();
      v96 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = (v94 + 128);
        if (*(v94 + 151) < 0)
        {
          v97 = *v97;
        }

        v98 = v97;
        IVFVectorIndex_s::name(&v1030, v94 + 8);
        if ((v1030.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v99 = &v1030;
        }

        else
        {
          v99 = v1030.__r_.__value_.__r.__words[0];
        }

        v1033.f_bsize = v697.n128_u32[0];
        *&v1033.f_iosize = v98;
        WORD2(v1033.f_blocks) = 2048;
        *(&v1033.f_blocks + 6) = v94 + 8;
        HIWORD(v1033.f_bfree) = 2080;
        v1033.f_bavail = v99;
        _os_log_impl(&dword_1C278D000, v96, OS_LOG_TYPE_DEFAULT, "[%s] createVectorIndexDumpContext: %p %s", &v1033, 0x20u);
        if (SHIBYTE(v1030.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v1030.__r_.__value_.__l.__data_);
        }

        v84 = v915;
      }

      *__error() = v95;
      if (*(v94 + 13) == 1)
      {
        v527 = __si_assert_copy_extra_332();
        v528 = v527;
        v529 = "";
        if (v527)
        {
          v529 = v527;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4906, "!fMerging", v529);
LABEL_637:
        free(v528);
        if (__valid_fs(-1))
        {
          v530 = 2989;
        }

        else
        {
          v530 = 3072;
        }

        *v530 = -559038737;
        abort();
      }

      *(v94 + 13) = 1;
      std::mutex::unlock((v94 + 16));
      v91[v93] = v94 + 8;
      v8 = v918;
    }

    ++v93;
  }

  while (v8 != v93);
  v78 = v917;
  if (v8 < 1)
  {
    v79 = v916;
  }

  else
  {
    v79 = v916;
    if ((v1021 & 1) == 0)
    {
      for (i = 0; i != v8; ++i)
      {
        v101 = *(v84[i] + 4912);
        if (v101)
        {
          processVectorIndexDumpContexts(v101, i, v8, v91, 1);
        }
      }
    }
  }

LABEL_91:
  v910 = v91;
  v986 = 0;
  v987 = &v986;
  v988 = 0x2000000000;
  v989 = 0;
  if ((v1021 & 1) == 0)
  {
    v973 = MEMORY[0x1E69E9820];
    v92.n128_u64[0] = 0x40000000;
    v974 = 0x40000000;
    v975 = __mergeIndexData_block_invoke;
    v976 = &unk_1E81949F8;
    v977 = &v1002;
    v985 = v1029;
    v984 = v1034;
    v978 = &v994;
    v979 = &v1012;
    v980 = v1010;
    v981 = &v998;
    v982 = &v990;
    v983 = &v986;
    v1021 = iterateTermsForIndexes(v92);
  }

  if ((v1021 & 1) != 0 || (v102 = atomic_load((*v84 + 15192))) != 0)
  {
    v103 = 1;
  }

  else
  {
    v103 = (*(v79 + 16))(*(v79 + 32));
  }

  v1021 = v103;
  if ((v103 & 1) == 0)
  {
    if (prot_pwrite(v1029, v1034, v1003[3], v995[3]) == -1)
    {
      v106 = *__error();
      v107 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v320 = *__error();
        v1033.f_bsize = 136315650;
        *&v1033.f_iosize = "mergeIndexData";
        WORD2(v1033.f_blocks) = 1024;
        *(&v1033.f_blocks + 6) = 2208;
        WORD1(v1033.f_bfree) = 1024;
        HIDWORD(v1033.f_bfree) = v320;
        _os_log_error_impl(&dword_1C278D000, v107, OS_LOG_TYPE_ERROR, "%s:%d: pwrite error: %d", &v1033, 0x18u);
      }

      *__error() = v106;
    }

    else if (!atomic_load((*v84 + 15192)))
    {
      v105 = (*(v79 + 16))(*(v79 + 32));
LABEL_105:
      v1021 = v105;
      goto LABEL_106;
    }

    v105 = 1;
    goto LABEL_105;
  }

LABEL_106:
  if ((v1021 & 1) != 0 || (v108 = atomic_load((*v84 + 15192))) != 0)
  {
    v109 = 1;
  }

  else
  {
    v109 = (*(v79 + 16))(*(v79 + 32));
  }

  v1021 = v109;
  if ((v109 & 1) == 0)
  {
    v110 = *(v1013 + 6);
    if (*(v1022 + 9400) <= v110)
    {
      if (termIdStoreAllocBulk(v1022 + 4984, v110 - *(v1022 + 9400) + 1))
      {
        v1021 = 1;
      }
    }
  }

  if ((v1021 & 1) == 0)
  {
    v111 = *(v1013 + 6);
    if (*(v1022 + 14120) <= v111)
    {
      if (termIdStoreAllocBulk(v1022 + 9704, v111 - *(v1022 + 14120) + 1))
      {
        v1021 = 1;
      }
    }
  }

  v112 = v822;
  v113 = v814;
  v907 = Mutable;
  v114 = MEMORY[0x1E69E9AC8];
  v906 = v822;
  v902 = v814;
  if (v1021)
  {
    goto LABEL_688;
  }

  v847 = v690;
  MEMORY[0x1EEE9AC00](v92);
  v116 = &v690[-((v115 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v116, v115);
  v901 = v116;
  bzero(v116, 24 * v8);
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v690[-((v118 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v877 = v119;
  bzero(v119, v118);
  if (v8 >= 1)
  {
    v120 = v84;
    v121 = v119;
    v122 = v8;
    do
    {
      v123 = *v120++;
      *v121++ = *(v123 + 68);
      --v122;
    }

    while (v122);
  }

  v899 = v824;
  v900 = v119;
  if (!v78)
  {
    v813 = CFSetCreateMutable(0, v8, MEMORY[0x1E695E9F8]);
    v812 = CICleanUpPush(v112, MEMORY[0x1E695D7C0], v813);
    if (v8 < 1)
    {
      v243 = 0;
      v210 = 1;
LABEL_277:
      v245 = v812;
      atomic_store(v243, (v1022 + 16));
      v244 = v210;
      v246 = v813;
      v8 = v918;
      v112 = v906;
      goto LABEL_278;
    }

    v183 = 0;
    v184 = 0;
    v810 = 24;
    v809 = 72;
    v808 = 320;
    v807 = 15192;
    while (1)
    {
      v185 = &v901[v183 * v810];
      *v185 = 1;
      v186 = &v84[v183];
      v187 = *v186;
      *(v185 + 1) = *(*v186 + 80) - *(v1022 + 80);
      v188 = CIIndexSetCreateWithRange(0, *(v187 + 68), 2);
      if (v188)
      {
        CFSetSetValue(v813, v188);
        CFRelease(v188);
      }

      *(v185 + 2) = v188;
      v189 = *(v1022 + 72);
      v190 = *v186;
      v191 = *(*v186 + 80);
      v192 = *(v1022 + 80);
      if (v183)
      {
        v193 = *(v186 - 1);
        v194 = *(v193 + 68);
        v195 = *(v193 + 80);
        if (v194 >= 2)
        {
          v196 = v194;
        }

        else
        {
          v196 = 0;
        }

        v184 += v191 - v195 - v196;
      }

      v803 = v184;
      v197 = v191 - v192;
      v198 = atomic_load((v190 + 16));
      v802 = v198;
      LOBYTE(v970) = 0;
      v199 = *v186;
      if (*(*v186 + 8) != 1)
      {
        break;
      }

      v200 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      LODWORD(v1030.__r_.__value_.__l.__data_) = 0;
      LODWORD(v962) = 0;
      LODWORD(v945) = 0;
      LODWORD(v941) = 0;
      v201 = *(v199 + 64);
      v801 = v200;
      v202 = setThreadIdAndInfo(v201, sIndexExceptionCallbacks, v199, 0x20000000, v200 + 1);
      LODWORD(v962) = HIDWORD(v202);
      LODWORD(v1030.__r_.__value_.__l.__data_) = v202;
      LODWORD(v945) = v203;
      LODWORD(v941) = v204;
      v205 = *(&threadData[1] + v202 * v809) + HIDWORD(v202) * v808;
      *(v205 + 216) = 0;
      v781 = *(v205 + 312);
      v206 = *(v205 + 224);
      if (v206)
      {
        v206(*(v205 + 288));
      }

      LODWORD(v948[0]) = v1030.__r_.__value_.__l.__data_;
      v972[0] = v962;
      v971 = __PAIR64__(v945, v941);
      if (!_setjmp(v205))
      {
        if (*(*v186 + 68) >= 2u)
        {
          v212 = 1;
          v213 = v197;
          v214 = v189;
          while (1)
          {
            v215 = v214;
            v216 = v213;
            v217 = v213 + 1;
            if (v213 + 1 >= v215)
            {
              v239 = v215;
              while (1)
              {
                v215 = v239;
                if (indexGrowDocumentPayloads(v1022, 0, 0))
                {
                  break;
                }

                if (v1021)
                {
                  break;
                }

                if (atomic_load((*v915 + v807)))
                {
                  break;
                }

                v1021 = (*(v79 + 16))(*(v79 + 32));
                if ((v1021 & 1) == 0)
                {
                  v239 = *(v1022 + 72);
                  v215 = v239;
                  if (v217 >= v239)
                  {
                    continue;
                  }
                }

                goto LABEL_228;
              }

              v1021 = 1;
            }

LABEL_228:
            v214 = v215;
            v84 = v915;
            if (v1021)
            {
              goto LABEL_264;
            }

            if (v899)
            {
              v218 = *v186;
              v219 = *(*(*v186 + 14432) + v212);
            }

            else
            {
              v219 = (*(*(*v186 + 14432) + 4 * (v212 / 5uLL)) >> (6 * (v212 % 5))) & 0x3F;
              v218 = *v186;
            }

            v220 = v218;
            v221 = *(v218 + 80) + v212 - *(v1022 + 80);
            v222 = v221;
            if (v219)
            {
              v223 = v221;
              v224 = *(v185 + 2);
              v1033.f_bsize = -1;
              _CIIndexSetAddIndex(v224, v212, 0, &v1033, v207);
              v225 = v223;
              v226 = *v186;
              *(*(v1022 + 14408) + 8 * v223) = *(*(*v186 + 14408) + 8 * v212);
              v227 = *(v226 + 14416);
              if (v227)
              {
                *(*(v1022 + 14416) + 4 * v223) = *(v227 + 4 * v212);
              }

              v228 = *(v226 + 14424);
              if (v228)
              {
                *(*(v1022 + 14424) + 8 * v223) = *(v228 + 8 * v212);
              }

              v84 = v915;
              if (*(v1022 + 45) == 1)
              {
                v229 = *(*(v1022 + 14432) + v225);
              }

              else
              {
                v229 = (*(*(v1022 + 14432) + 4 * (v222 / 5uLL)) >> (6 * (v222 % 5))) & 0x3F;
              }

              if ((v229 & 0xFFFFFFDF) != 0)
              {
                v647 = __si_assert_copy_extra_7645(0, -1);
                v641 = v647;
                v648 = "";
                if (v647)
                {
                  HIDWORD(v648) = HIDWORD(v647);
                }

                HIDWORD(v689) = HIDWORD(v648);
                goto LABEL_849;
              }

              if (*(v1022 + 45) == 1)
              {
                *(*(v1022 + 14432) + v225) = v219;
                if (*(v1022 + 14440))
                {
                  *(*(v1022 + 14440) + v225 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v225 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
                }
              }

              else
              {
                v230 = v222 / 5uLL;
                v231 = *(*(v1022 + 14432) + 4 * v230);
                if (*(v1022 + 14440))
                {
                  v232 = MEMORY[0x1E69E9AC8];
                  v233 = v230 / (8 * *MEMORY[0x1E69E9AC8]);
                  v234 = (v230 / *MEMORY[0x1E69E9AC8]) & 7;
                  *(*(v1022 + 14440) + v233) |= 1 << v234;
                  if (!*(*(v1022 + 14440) + v233))
                  {
                    v655 = __si_assert_copy_extra_7645(0, -1);
                    v641 = v655;
                    v656 = "";
                    if (v655)
                    {
                      HIDWORD(v656) = HIDWORD(v655);
                    }

                    HIDWORD(v689) = HIDWORD(v656);
                    goto LABEL_849;
                  }

                  v235 = v234 | (8 * v233);
                  if (*v232 * v235 > v230)
                  {
                    v657 = __si_assert_copy_extra_7645(0, -1);
                    v528 = v657;
                    v650 = "";
                    if (v657)
                    {
                      HIDWORD(v650) = HIDWORD(v657);
                    }

                    goto LABEL_827;
                  }

                  if (*v232 * (v235 + 1) <= v230)
                  {
                    v658 = __si_assert_copy_extra_7645(0, -1);
                    v528 = v658;
                    v650 = "";
                    if (v658)
                    {
                      HIDWORD(v650) = HIDWORD(v658);
                    }

                    goto LABEL_827;
                  }
                }

                v236 = v222 / 5uLL;
                *(*(v1022 + 14432) + 4 * v236) = v231 & ~(63 << (6 * (v222 % 5))) | ((v219 & 0x3F) << (6 * (v222 % 5)));
                v237 = *(v1022 + 14432);
                if (*(v1022 + 45) == 1)
                {
                  v238 = *(v237 + v225);
                }

                else
                {
                  v238 = (*(v237 + 4 * v236) >> (6 * (v222 % 5))) & 0x3F;
                }

                if (v238 != (v219 & 0x3F))
                {
                  v649 = __si_assert_copy_extra_7645(0, -1);
                  v528 = v649;
                  v650 = "";
                  if (v649)
                  {
                    HIDWORD(v650) = HIDWORD(v649);
                  }

LABEL_827:
                  HIDWORD(v689) = HIDWORD(v650);
                  goto LABEL_856;
                }
              }

              v220 = *v186;
            }

            v213 = v222 + 1;
            ++v212;
            v216 = v222 + 1;
            v79 = v916;
            if (v212 >= *(v220 + 68))
            {
              goto LABEL_264;
            }
          }
        }

        v216 = v197;
LABEL_264:
        LOBYTE(v970) = 1;
        v241 = threadData[9 * LODWORD(v948[0]) + 1] + 320 * v972[0];
        *(v241 + 312) = v781;
        v242 = *(v241 + 232);
        if (v242)
        {
          v242(*(v241 + 288));
        }

        dropThreadId(LODWORD(v948[0]), 0, v801 + 1);
        v210 = v216;
        goto LABEL_267;
      }

      v208 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v1033.f_bsize) = 0;
        _os_log_error_impl(&dword_1C278D000, v208, OS_LOG_TYPE_ERROR, "Caught mach exception", &v1033, 2u);
      }

      *(v205 + 312) = v781;
      v78 = v917;
      if ((~*(v205 + 212) & 0xA0000000) == 0)
      {
        v209 = *(v205 + 288);
        if (v209)
        {
          _CIMakeInvalid(v209);
        }
      }

      CIOnThreadCleanUpReset(v971);
      dropThreadId(LODWORD(v948[0]), 1, v801 + 1);
      CICleanUpReset(LODWORD(v948[0]), HIDWORD(v971));
      v210 = v197;
LABEL_268:
      v243 = v802 + v803;
      if ((v970 & 1) == 0)
      {
        v1021 = 1;
        goto LABEL_277;
      }

      ++v183;
      v184 = v802 + v803;
      if (v183 == v918)
      {
        goto LABEL_277;
      }
    }

    v211 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LOWORD(v1033.f_bsize) = 0;
      _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_INFO, "Skipping because index is shut down", &v1033, 2u);
    }

    v210 = v197;
LABEL_267:
    v78 = v917;
    goto LABEL_268;
  }

  v124 = malloc_type_calloc(1uLL, 0x10uLL, 0x4DBFA8FFuLL);
  if (!v124)
  {
    v663 = __si_assert_copy_extra_7645(0, -1);
    v641 = v663;
    v664 = "";
    if (v663)
    {
      v664 = v663;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got 0 from calloc for allocation of count %ld size %ld", "CIMerging.c", 1321, "p||count==0||size==0", v664, 1, 16);
    goto LABEL_850;
  }

  *v78 = v124;
  v125 = malloc_type_calloc(v8, 0x20uLL, 0x20CF981uLL);
  if (v8 && !v125)
  {
    v665 = __si_assert_copy_extra_7645(0, -1);
    v641 = v665;
    v666 = "";
    if (v665)
    {
      v666 = v665;
    }

    __message_assert("%s:%u: failed assertion '%s' %s Got 0 from calloc for allocation of count %ld size %ld", "CIMerging.c", 1322, "p||count==0||size==0", v666, v8, 32);
LABEL_850:
    v646 = v641;
    goto LABEL_851;
  }

  *(*v78 + 1) = v125;
  if (v8 < 1)
  {
    v244 = 1;
    v245 = 0;
    v246 = 0;
    goto LABEL_274;
  }

  v127 = 0;
  v821 = 0;
  v128 = 1;
  v820 = 24;
  v819 = 4;
  v818 = 3812395194;
  v817 = 72;
  v129 = MEMORY[0x1E69E9C10];
  v816 = 320;
  v815 = 15192;
  do
  {
    v130 = &v901[v127 * v820];
    *v130 = 0;
    v131 = *(v84[v127] + 68);
    v132 = malloc_type_calloc(v819, v131, v818);
    if (v131)
    {
      v133 = v132 == 0;
    }

    else
    {
      v133 = 0;
    }

    if (v133)
    {
      v643 = __si_assert_copy_extra_7645(0, -1);
      v644 = v643;
      v645 = "";
      if (v643)
      {
        v645 = v643;
      }

      __message_assert("%s:%u: failed assertion '%s' %s Got 0 from calloc for allocation of count %ld size %ld", "CIMerging.c", 1323, "p||count==0||size==0", v645, 4, v131);
      v646 = v644;
LABEL_851:
      free(v646);
      if (__valid_fs(-1))
      {
        v671 = 2989;
        goto LABEL_882;
      }

      goto LABEL_881;
    }

    *(v130 + 2) = v132;
    v134 = v917;
    v135 = *(*v917 + 1) + 32 * v127;
    *(v135 + 24) = 0;
    *(v135 + 16) = *(v130 + 2);
    ++**v134;
    v136 = *(v1022 + 72);
    v137 = v84[v127];
    v138 = 4 * *(v137 + 68);
    *&v1033.f_bsize = *(v130 + 2);
    v1033.f_blocks = v138;
    v1033.f_bfree = v821;
    v1030.__r_.__value_.__r.__words[0] = 1;
    v1030.__r_.__value_.__l.__size_ = &v1033;
    BYTE4(v959) = 0;
    if (*(v137 + 8) != 1)
    {
      if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
      {
        LOWORD(v962) = 0;
        _os_log_impl(&dword_1C278D000, v129, OS_LOG_TYPE_INFO, "Skipping because index is shut down", &v962, 2u);
      }

      v146 = v128;
      v112 = v906;
      goto LABEL_199;
    }

    v139 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    LODWORD(v962) = 0;
    LODWORD(v945) = 0;
    LODWORD(v941) = 0;
    LODWORD(v948[0]) = 0;
    v140 = setThreadIdAndInfo(*(v137 + 64), sIndexExceptionCallbacks, v137, 0x20000000, v139 + 1);
    LODWORD(v945) = HIDWORD(v140);
    LODWORD(v962) = v140;
    LODWORD(v941) = v141;
    LODWORD(v948[0]) = v142;
    v143 = *(&threadData[1] + v140 * v817) + HIDWORD(v140) * v816;
    *(v143 + 216) = 0;
    v804 = *(v143 + 312);
    v144 = *(v143 + 224);
    if (v144)
    {
      v144(*(v143 + 288));
    }

    v972[0] = v962;
    v971 = __PAIR64__(v945, v941);
    v970 = v948[0];
    if (_setjmp(v143))
    {
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v969[0]) = 0;
        _os_log_error_impl(&dword_1C278D000, v129, OS_LOG_TYPE_ERROR, "Caught mach exception", v969, 2u);
      }

      *(v143 + 312) = v804;
      v112 = v906;
      if ((~*(v143 + 212) & 0xA0000000) == 0)
      {
        v145 = *(v143 + 288);
        if (v145)
        {
          _CIMakeInvalid(v145);
        }
      }

      CIOnThreadCleanUpReset(v970);
      dropThreadId(v972[0], 1, v139 + 1);
      CICleanUpReset(v972[0], v971);
      v146 = v128;
      goto LABEL_199;
    }

    if (!v1030.__r_.__value_.__r.__words[0])
    {
      v154 = os_log_type_enabled(v129, OS_LOG_TYPE_INFO);
      v112 = v906;
      if (v154)
      {
        LOWORD(v969[0]) = 0;
        _os_log_impl(&dword_1C278D000, v129, OS_LOG_TYPE_INFO, "Skipping because index is shut down", v969, 2u);
      }

      v153 = v128;
      goto LABEL_196;
    }

    v147 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v969[0] = 0;
    v968 = 0;
    v967 = 0;
    v800 = v147;
    v148 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, &v1030, 0, v147 + 1);
    v969[0] = v148;
    v968 = __PAIR64__(HIDWORD(v148), v149);
    v967 = v150;
    v151 = threadData[9 * v148 + 1] + 320 * HIDWORD(v148);
    *(v151 + 216) = 0;
    v782 = *(v151 + 312);
    v152 = *(v151 + 224);
    if (v152)
    {
      v152(*(v151 + 288));
    }

    *&v966[8] = v969[0];
    *v966 = v968;
    v965 = v967;
    if (_setjmp(v151))
    {
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v960[0]) = 0;
        _os_log_error_impl(&dword_1C278D000, v129, OS_LOG_TYPE_ERROR, "Caught mach exception", v960, 2u);
      }

      *(v151 + 312) = v782;
      CIOnThreadCleanUpReset(v965);
      dropThreadId(*&v966[8], 1, v800 + 1);
      CICleanUpReset(*&v966[8], *v966);
      v153 = v128;
      v112 = v906;
      goto LABEL_196;
    }

    v155 = v84[v127];
    if (*(v155 + 68) < 2u)
    {
      LODWORD(v175) = *(v155 + 68);
      v174 = v84[v127];
      v153 = v128;
      v112 = v906;
      goto LABEL_193;
    }

    v156 = 1;
    v157 = v136;
    v112 = v906;
    while (1)
    {
      v158 = v157;
      if (!v899)
      {
        break;
      }

      if (*(*(v155 + 14432) + v156))
      {
        goto LABEL_158;
      }

LABEL_167:
      v164 = v128;
LABEL_181:
      v157 = v158;
      v174 = v155;
      ++v156;
      v175 = *(v155 + 68);
      v128 = v164;
      if (v156 >= v175)
      {
        v153 = v164;
        goto LABEL_193;
      }
    }

    if (((*(*(v155 + 14432) + 4 * (v156 / 5uLL)) >> (6 * (v156 % 5))) & 0x3F) == 0)
    {
      goto LABEL_167;
    }

LABEL_158:
    if (v128 + 1 >= v157)
    {
      v176 = v157;
      while (!indexGrowDocumentPayloads(v1022, 0, 0))
      {
        if (v1021)
        {
          break;
        }

        if (atomic_load((*v915 + v815)))
        {
          break;
        }

        v1021 = (*(v916 + 16))(*(v916 + 32));
        v158 = v176;
        if ((v1021 & 1) == 0)
        {
          v176 = *(v1022 + 72);
          v158 = v176;
          if (v128 + 1 >= v176)
          {
            continue;
          }
        }

        goto LABEL_159;
      }

      v1021 = 1;
      v158 = v176;
    }

LABEL_159:
    v159 = v158;
    v84 = v915;
    v160 = v915[v127];
    if (v1021 != 1)
    {
      *(*(v130 + 2) + 4 * v156) = v128;
      *(*(v1022 + 14408) + 8 * v128) = *(*(v160 + 14408) + 8 * v156);
      v161 = *(v160 + 14416);
      if (v161)
      {
        *(*(v1022 + 14416) + 4 * v128) = *(v161 + 4 * v156);
      }

      v162 = *(v160 + 14424);
      if (v162)
      {
        *(*(v1022 + 14424) + 8 * v128) = *(v162 + 8 * v156);
      }

      if (v899)
      {
        LOBYTE(v163) = *(*(v84[v127] + 14432) + v156);
      }

      else
      {
        v163 = (*(*(v84[v127] + 14432) + 4 * (v156 / 5uLL)) >> (6 * (v156 % 5))) & 0x3F;
      }

      if (*(v1022 + 45) == 1)
      {
        *(*(v1022 + 14432) + v128) = v163;
        if (*(v1022 + 14440))
        {
          *(*(v1022 + 14440) + v128 / (32 * *MEMORY[0x1E69E9AC8])) |= 1 << ((v128 / (4 * *MEMORY[0x1E69E9AC8])) & 7);
        }

        goto LABEL_180;
      }

      v165 = v128 / 5uLL;
      v166 = *(*(v1022 + 14432) + 4 * v165);
      if (*(v1022 + 14440))
      {
        v167 = MEMORY[0x1E69E9AC8];
        v168 = v165 / (8 * *MEMORY[0x1E69E9AC8]);
        v169 = (v165 / *MEMORY[0x1E69E9AC8]) & 7;
        *(*(v1022 + 14440) + v168) |= 1 << v169;
        if (*(*(v1022 + 14440) + v168))
        {
          v170 = v169 | (8 * v168);
          if (*v167 * v170 <= v165)
          {
            if (*v167 * (v170 + 1) > v165)
            {
              goto LABEL_176;
            }

            v672 = __si_assert_copy_extra_7645(0, -1);
            v528 = v672;
            v673 = "";
            if (v672)
            {
              HIDWORD(v673) = HIDWORD(v672);
            }

            HIDWORD(v689) = HIDWORD(v673);
LABEL_856:
            __message_assert("%s:%u: failed assertion '%s' %s ");
            goto LABEL_637;
          }

          v670 = __si_assert_copy_extra_7645(0, -1);
          v641 = v670;
          v662 = "";
          if (v670)
          {
            HIDWORD(v662) = HIDWORD(v670);
          }
        }

        else
        {
          v669 = __si_assert_copy_extra_7645(0, -1);
          v641 = v669;
          v662 = "";
          if (v669)
          {
            HIDWORD(v662) = HIDWORD(v669);
          }
        }
      }

      else
      {
LABEL_176:
        v171 = v163 & 0x3F;
        *(*(v1022 + 14432) + 4 * (v128 / 5uLL)) = v166 & ~(63 << (6 * (v128 % 5))) | (v171 << (6 * (v128 % 5)));
        v172 = *(v1022 + 14432);
        if (*(v1022 + 45) == 1)
        {
          v173 = *(v172 + v128);
        }

        else
        {
          v173 = (*(v172 + 4 * v165) >> (6 * (v128 % 5))) & 0x3F;
        }

        if (v173 == v171)
        {
LABEL_180:
          v155 = v84[v127];
          v158 = v159;
          v164 = (v128 + 1);
          v112 = v906;
          goto LABEL_181;
        }

        v661 = __si_assert_copy_extra_7645(0, -1);
        v641 = v661;
        v662 = "";
        if (v661)
        {
          HIDWORD(v662) = HIDWORD(v661);
        }
      }

      HIDWORD(v689) = HIDWORD(v662);
      goto LABEL_849;
    }

    LODWORD(v175) = *(v160 + 68);
    v174 = v915[v127];
    v153 = v128;
    v112 = v906;
LABEL_193:
    v178 = *(*v917 + 1) + 32 * v127;
    *v178 = *(v174 + 80);
    *(v178 + 8) = v175;
    BYTE4(v959) = 1;
    v179 = threadData[9 * *&v966[8] + 1] + 320 * *&v966[4];
    *(v179 + 312) = v782;
    v180 = *(v179 + 232);
    if (v180)
    {
      v180(*(v179 + 288));
    }

    dropThreadId(*&v966[8], 0, v800 + 1);
LABEL_196:
    v181 = threadData[9 * v972[0] + 1] + 320 * HIDWORD(v971);
    *(v181 + 312) = v804;
    v182 = *(v181 + 232);
    if (v182)
    {
      v182(*(v181 + 288));
    }

    dropThreadId(v972[0], 0, v139 + 1);
    v146 = v153;
LABEL_199:
    if ((v959 & 0x100000000) == 0)
    {
      v1021 = 1;
      break;
    }

    ++v127;
    v128 = v146;
  }

  while (v127 != v918);
  v244 = v146;
  v245 = 0;
  v246 = 0;
  v8 = v918;
  v78 = v917;
LABEL_274:
  v79 = v916;
LABEL_278:
  v895 = v245;
  v896 = v246;
  if (v244 <= 1)
  {
    v247 = 1;
  }

  else
  {
    v247 = v244;
  }

  *(v1022 + 68) = v247;
  if (*(v1022 + 80) + *(v1022 + 68) > *(v84[v8 - 1] + 80) + *(v84[v8 - 1] + 68))
  {
    v659 = __si_assert_copy_extra_7645(0, -1);
    v528 = v659;
    v660 = "";
    if (v659)
    {
      HIDWORD(v660) = HIDWORD(v659);
    }

    HIDWORD(v689) = HIDWORD(v660);
    goto LABEL_856;
  }

  v891 = v905;
  v890 = v903;
  v248 = v904;
  v249 = v847;
  while (v244 >= *(v1022 + 72))
  {
    if (indexGrowDocumentPayloads(v1022, 0, 0) || (v1021 & 1) != 0 || (v250 = atomic_load((*v915 + 15192))) != 0)
    {
      v1021 = 1;
      break;
    }

    v1021 = (*(v79 + 16))(*(v79 + 32));
    if (v1021)
    {
      break;
    }
  }

  v894 = v690;
  v902[619] = 8;
  v251 = 8 * v888;
  MEMORY[0x1EEE9AC00](v126);
  v252 = &v690[-((v251 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v252, v251);
  MEMORY[0x1EEE9AC00](v253);
  bzero(v252, v251);
  v962 = 0;
  v964 = 0u;
  v963 = 0x8000;
  v962 = malloc_type_malloc(0x8000uLL, 0x82ECAA0EuLL);
  v887 = CICleanUpPush(v112, RunBufferDestroy, &v962);
  v945 = xmmword_1C2BFF7A8;
  v946 = 0x100000;
  v961 = 1;
  v254 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  LODWORD(v948[0]) = 0;
  v972[0] = 0;
  v971 = 0;
  v893 = v254;
  v255 = setThreadIdAndInfo(-1, sMergeExceptionCallbacks, &v945, 0, v254 + 1);
  v972[0] = HIDWORD(v255);
  LODWORD(v948[0]) = v255;
  v971 = __PAIR64__(v256, v257);
  v258 = threadData[9 * v255 + 1] + 320 * HIDWORD(v255);
  v892 = *(v258 + 312);
  v259 = *(v258 + 224);
  if (v259)
  {
    v259(*(v258 + 288));
  }

  v970 = v948[0];
  v969[0] = v972[0];
  v968 = v971;
  v260 = _setjmp(v258);
  v84 = v915;
  if (v260)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v1033.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v1033, 2u);
    }

    *(v258 + 312) = v892;
    CIOnThreadCleanUpReset(v968);
    dropThreadId(v970, 1, v893 + 1);
    CICleanUpReset(v970, HIDWORD(v968));
    v79 = v916;
    v114 = MEMORY[0x1E69E9AC8];
    v261 = v896;
    goto LABEL_661;
  }

  v262 = (*MEMORY[0x1E69E9AC8] + v889) & ~*MEMORY[0x1E69E9AB8];
  v263 = v902;
  v902[621] = v262;
  v264 = fd_truncate(v263[1179], v262);
  v806 = v248;
  if (v264 == -1)
  {
    v265 = *__error();
    v266 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
    {
      v531 = *__error();
      v1033.f_bsize = 136315650;
      *&v1033.f_iosize = "mergeIndexData";
      WORD2(v1033.f_blocks) = 1024;
      *(&v1033.f_blocks + 6) = 2455;
      WORD1(v1033.f_bfree) = 1024;
      HIDWORD(v1033.f_bfree) = v531;
      _os_log_error_impl(&dword_1C278D000, v266, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate error: %d", &v1033, 0x18u);
    }

    *__error() = v265;
    v1021 = 1;
    v248 = v806;
  }

  else
  {
    *&v945 = fd_mmap(v263[1179], v946, 3, 1025, *(&v945 + 1));
    if (v945 == -1)
    {
      v1021 = 1;
    }
  }

  v883 = *v885;
  v267 = v890;
  bzero(v890, 16 * v8);
  bzero(v248, 224 * v8);
  v881 = v252;
  v882 = v252;
  if (v8 >= 1)
  {
    v898 = v249;
    v725 = 4203394872;
    v722 = 0x10000;
    v721 = 1200167462;
    v268 = v252;
    v269 = v252;
    v270 = v8;
    v271 = v84;
    v272 = v248;
    while (1)
    {
      v273 = v270;
      v274 = atomic_load((*v271 + 36));
      v711 = v269;
      v712 = v268;
      *v269 = 0;
      v275 = *(*v271 + 9432);
      *v268 = v275;
      v267[1] = 0;
      if ((v274 & 4) != 0)
      {
        break;
      }

      v276 = fd_lseek(v275, 0, 2);
      if (v276 == -1 || (v277 = v276, v278 = fd_mmap(v275, v276, 1, 1025, 0), v278 == -1))
      {
        if (!v267[1])
        {
          break;
        }
      }

      else
      {
        if (!v278)
        {
          v651 = __si_assert_copy_extra_7645(0, -1);
          v641 = v651;
          v652 = "";
          if (v651)
          {
            HIDWORD(v652) = HIDWORD(v651);
          }

          HIDWORD(v689) = HIDWORD(v652);
          goto LABEL_849;
        }

        *v267 = v278;
        v267[1] = v277;
        if (!v277)
        {
          break;
        }
      }

LABEL_309:
      CICleanUpPush(v112, finalizeReadBuffer, v267);
      v279 = *(*v271 + 14152);
      *(v272 + 65) = 0;
      *v272 = v279;
      *(v272 + 24) = 0;
      v280 = (v272 + 24);
      *(v272 + 32) = 0;
      *(v272 + 216) = v1023;
      *(v272 + 200) = -1;
      *(v272 + 208) = -1;
      if ((v274 & 4) == 0)
      {
        v281 = fd_lseek(v279, 0, 2);
        if ((v281 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v282 = v281;
          v283 = fd_mmap(v279, v281, 1, 1025, 0);
          if (v283 != -1)
          {
            *(v272 + 24) = v283;
            *(v272 + 32) = v282;
            v285 = v711;
            v284 = v712;
            if (v283)
            {
              *(v272 + 8) = 0;
              *(v272 + 16) = 0;
            }

            goto LABEL_321;
          }
        }
      }

      if (*(v272 + 32))
      {
        v286 = *v280;
        v285 = v711;
        v284 = v712;
        if (!*v280)
        {
          goto LABEL_321;
        }

        *(v272 + 8) = 0;
        *(v272 + 16) = 0;
        v287 = v286;
        if ((v274 & 4) == 0)
        {
          goto LABEL_321;
        }

        goto LABEL_320;
      }

      v288 = malloc_type_malloc(v722, v721);
      *v280 = v288;
      v285 = v711;
      v284 = v712;
      if (v288)
      {
        *(v272 + 8) = 0;
        *(v272 + 16) = 0;
        v287 = v288;
LABEL_320:
        fd_pread(*v272, v287, 0x10000uLL, 0);
      }

LABEL_321:
      v112 = v906;
      v289 = CICleanUpPush(v906, finalizeReadPosContext, v272);
      v290 = atomic_load((*v271 + 36));
      if ((v290 & 4) != 0)
      {
        *(v272 + 56) = 0;
        *(v272 + 66) = 1;
      }

      v272 += 224;
      ++v271;
      v269 = v285 + 1;
      v268 = v284 + 1;
      v267 += 2;
      v270 = v273 - 1;
      if (v273 == 1)
      {
        v291 = v289;
        v8 = v918;
        v78 = v917;
        v84 = v915;
        v249 = v898;
        v267 = v890;
        goto LABEL_329;
      }
    }

    *v267 = malloc_type_malloc(*MEMORY[0x1E69E9AC8] << 6, v725);
    goto LABEL_309;
  }

  v291 = 0;
LABEL_329:
  v878 = v291;
  v292 = v891;
  *(v891 + 120) = v8;
  *(v292 + 128) = v267;
  v293 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v967 = 0;
  memset(v966, 0, sizeof(v966));
  v294 = setThreadIdAndInfo(-1, mergeIndexData_sExcReadBufferCallbacks, v905 + 120, 0, v293 + 1);
  *&v966[8] = HIDWORD(v294);
  v967 = v294;
  *&v966[4] = v295;
  *v966 = v296;
  v297 = threadData[9 * v294 + 1] + 320 * HIDWORD(v294);
  v884 = *(v297 + 312);
  v298 = *(v297 + 224);
  v79 = v916;
  if (v298)
  {
    v298(*(v297 + 288));
  }

  v965 = v967;
  v960[0] = *&v966[8];
  v959 = *v966;
  v299 = _setjmp(v297);
  v114 = MEMORY[0x1E69E9AC8];
  if (v299)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v1033.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v1033, 2u);
    }

    *(v297 + 312) = v884;
    CIOnThreadCleanUpReset(v959);
    dropThreadId(v965, 1, v293 + 1);
    CICleanUpReset(v965, HIDWORD(v959));
    v261 = v896;
    goto LABEL_658;
  }

  v300 = v891;
  v301 = v806;
  *(v891 + 136) = v8;
  *(v300 + 144) = v301;
  LODWORD(v301) = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v958 = 0;
  memset(v957, 0, sizeof(v957));
  v880 = v301;
  v302 = setThreadIdAndInfo(-1, mergeIndexData_sExcReadPositionsCallbacks, v905 + 136, 0, v301 + 1);
  *&v957[8] = HIDWORD(v302);
  v958 = v302;
  *&v957[4] = v303;
  *v957 = v304;
  v305 = threadData[9 * v302 + 1] + 320 * HIDWORD(v302);
  v879 = *(v305 + 312);
  v306 = *(v305 + 224);
  if (v306)
  {
    v306(*(v305 + 288));
  }

  v956 = v958;
  v955 = *&v957[8];
  v954 = *v957;
  if (_setjmp(v305))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v1033.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v1033, 2u);
    }

    *(v305 + 312) = v879;
    CIOnThreadCleanUpReset(v954);
    dropThreadId(v956, 1, v880 + 1);
    CICleanUpReset(v956, HIDWORD(v954));
    v261 = v896;
    goto LABEL_655;
  }

  v886 = v293;
  v307 = v905;
  *(v905 + 104) = 0u;
  *(v307 + 88) = 0u;
  v874 = CICleanUpPush(v112, ChangeHolderFreeDocIds, v307 + 88);
  v995[3] = 0;
  v1003[3] = 0;
  if (prot_pread(v1029, v1034, 0x10000uLL, 0) == -1)
  {
    v1021 = 1;
  }

  v308 = v891;
  *(v891 + 80) = 0;
  v308[3] = 0u;
  v308[4] = 0u;
  *v308 = 0u;
  v308[1] = 0u;
  v308[2] = 0u;
  v873 = v308 + 2;
  FlattenPostingsContextInit((v308 + 2));
  v872 = CICleanUpPush(v112, packContextDestroy, v308);
  *(v307 + 152) = 0u;
  *(v307 + 168) = 0u;
  *(v307 + 184) = 0u;
  *(v307 + 200) = 0u;
  *(v307 + 216) = 0u;
  *(v307 + 232) = 0;
  writeWindowInit((v307 + 152), (v1022 + 9664), 3 * v991[3] + v897, (*(*v84 + 15713) & 1) == 0);
  v309 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v953 = 0;
  memset(v952, 0, sizeof(v952));
  v876 = v309;
  v310 = setThreadIdAndInfo(-1, sWritePosWindowExceptionCallbacks, v307 + 152, 0, v309 + 1);
  *&v952[8] = HIDWORD(v310);
  v953 = v310;
  *&v952[4] = v311;
  *v952 = v312;
  v313 = threadData[9 * v310 + 1] + 320 * HIDWORD(v310);
  v875 = *(v313 + 312);
  v314 = *(v313 + 224);
  if (v314)
  {
    v314(*(v313 + 288));
  }

  v951 = v953;
  v950 = *&v952[8];
  v949 = *v952;
  v315 = _setjmp(v313);
  v114 = MEMORY[0x1E69E9AC8];
  if (v315)
  {
    v318 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v293 = v886;
    if (v318)
    {
      LOWORD(v1033.f_bsize) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v1033, 2u);
    }

    *(v313 + 312) = v875;
    CIOnThreadCleanUpReset(v949);
    dropThreadId(v951, 1, v876 + 1);
    CICleanUpReset(v951, HIDWORD(v949));
    v261 = v896;
    goto LABEL_652;
  }

  v321 = v999[3];
  v322 = v891;
  v898 = v249;
  if (!v321)
  {
    goto LABEL_642;
  }

  v870 = v84 - 1;
  v869 = v901 - 24;
  v868 = v877 - 4;
  v871 = 0;
  v323 = 1;
  v324 = 26570;
  v867 = 15192;
  v866 = 24;
  v865 = 224;
  *&v316 = 134218240;
  v864 = v316;
  *&v316 = 136315906;
  v863 = v316;
  *&v316 = 136316162;
  v862 = v316;
  v861 = 2168;
  *&v316 = 136316418;
  *&v317 = 136316418;
  v860 = v317;
  v859 = v316;
  *&v316 = 67109120;
  v858 = v316;
  v857 = 3628666700;
  *&v316 = 134217984;
  v856 = v316;
  v855 = xmmword_1C2BFA3F0;
  v854 = 0x8200302uLL;
  v853 = 4984;
  v852 = 9704;
  v325 = 0;
  v851 = 0x10000;
  while (2)
  {
    v850 = v323;
    if (v1021)
    {
      break;
    }

    if (v325 > v324)
    {
      v1021 = 0;
      ++v324;
    }

    v849 = v324;
    if (atomic_load((*v84 + v867)))
    {
      v327 = 1;
    }

    else
    {
      v328 = (*(v79 + 16))(*(v79 + 32));
      v322 = v891;
      v327 = v328;
    }

    v329 = v905;
    v1021 = v327;
    *(v322 + 8) = 0;
    *(v322 + 24) = 0;
    v330 = v871;
    *(v322 + 16) = v871;
    *(v322 + 80) = v330;
    *(v322 + 96) = v330;
    *(v322 + 112) = v330;
    v331 = v995;
    v332 = v995[3];
    v333 = v325 + 2;
    if (v332 + 0x10000 <= v325 + 2)
    {
      v334 = v325 & ~*MEMORY[0x1E69E9AB8];
      v995[3] = v334;
      if (prot_pread(v1029, v1034, 0x10000uLL, v334) == -1)
      {
        goto LABEL_641;
      }

      v331 = v995;
      v332 = v995[3];
      v322 = v891;
    }

    v335 = *&v1034[v325 - v332];
    if (!v335)
    {
      v676 = __si_assert_copy_extra_7645(0, -1);
      v641 = v676;
      v677 = "";
      if (v676)
      {
        HIDWORD(v677) = HIDWORD(v676);
      }

      HIDWORD(v689) = HIDWORD(v677);
      goto LABEL_849;
    }

    if (v335 > v8)
    {
      v678 = __si_assert_copy_extra_7645(0, -1);
      v641 = v678;
      v679 = "";
      if (v678)
      {
        HIDWORD(v679) = HIDWORD(v678);
      }

      HIDWORD(v689) = HIDWORD(v679);
      goto LABEL_849;
    }

    v845 = v335;
    if (v332 + 0x10000 <= v333 + v335 * v866)
    {
      v336 = v333 & ~*MEMORY[0x1E69E9AB8];
      v331[3] = v336;
      v337 = prot_pread(v1029, v1034, v851, v336);
      v322 = v891;
      if (v337 == -1)
      {
        goto LABEL_641;
      }
    }

    v848 = *(v1022 + 9672);
    *(v322 + 224) = v871;
    *(v322 + 232) = -1;
    if (v899 && v333 < v987[3])
    {
      createWPCOccurenceCountMap((v329 + 200));
      v322 = v891;
    }

    if (v335 < 1)
    {
      v484 = 0;
      v485 = v333;
      goto LABEL_580;
    }

    v338 = 0xFFFFFFFFLL;
    v339 = 0;
    v340 = v903;
    v341 = v870;
    while (2)
    {
      v342 = &v1034[v333 - v995[3]];
      v343 = v342[2];
      if (v338 <= v343)
      {
        v680 = __si_assert_copy_extra_7645(0, -1);
        v528 = v680;
        v681 = "";
        if (v680)
        {
          HIDWORD(v681) = HIDWORD(v680);
        }

        HIDWORD(v689) = HIDWORD(v681);
        goto LABEL_856;
      }

      v846 = v342[2];
      v843 = v339;
      if (v339)
      {
        v344 = (v846 + 1);
        if (v338 > v344)
        {
          v345 = &v869[24 * v338];
          v346 = v338;
          do
          {
            *(v322 + 24) = *&v868[4 * v346];
            *(v322 + 16) = v345;
            *(v322 + 80) = *(v341[v346] + 14472);
            if (*(v322 + 96))
            {
              merge_checkAgainstUpdates1(v322, (v329 + 88), 0, *(v341[v346] + 80));
              v341 = v870;
              v322 = v891;
              v340 = v903;
            }

            --v346;
            v345 -= 24;
          }

          while (v346 > v344);
        }
      }

      if (v343 >= v8)
      {
        v682 = __si_assert_copy_extra_7645(0, -1);
        v641 = v682;
        v683 = "";
        if (v682)
        {
          HIDWORD(v683) = HIDWORD(v682);
        }

        HIDWORD(v689) = HIDWORD(v683);
        goto LABEL_849;
      }

      v347 = v846;
      *(v322 + 24) = *&v900[4 * v846];
      *(v322 + 16) = &v901[24 * v343];
      v84 = v915;
      *(v322 + 80) = *(v915[v347] + 14472);
      v348 = v84[v347];
      v842 = *(v348 + 14408);
      v349 = *v342;
      v350 = v342[1];
      v351 = &v340[16 * v343];
      v352 = *&v881[8 * v347];
      v353 = *(v348 + 68);
      v354 = *(v348 + 80);
      v355 = atomic_load((v348 + 36));
      v356 = *&v882[8 * v347];
      v357 = *(v916 + 40);
      v358 = *(v322 + 16);
      v359 = *(v351 + 1);
      if (v359)
      {
        v360 = dword_1EBF46AF4 < 5;
      }

      else
      {
        v360 = 1;
      }

      v361 = v904;
      v841 = *(v348 + 80);
      v840 = v355;
      if (!v360)
      {
        v693 = v353;
        v694 = v352;
        v695 = v350;
        v696 = v349;
        v691 = *__error();
        v486 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v486, OS_LOG_TYPE_DEFAULT))
        {
          v1033.f_bsize = v856;
          *&v1033.f_iosize = v696;
          _os_log_impl(&dword_1C278D000, v486, OS_LOG_TYPE_DEFAULT, "start %lld", &v1033, 0xCu);
        }

        *__error() = v691;
        v84 = v915;
        v361 = v904;
        v354 = v841;
        v355 = v840;
        v350 = v695;
        v349 = v696;
        v352 = v694;
        v353 = v693;
      }

      v844 = v333 + 24;
      v836 = v348;
      v835 = v361 + v343 * v865;
      v362 = v350;
      v839 = v352;
      v834 = v354;
      v833 = v355;
      v832 = v357;
      v831 = v358;
      v830 = v359;
      v829 = v354 + v353;
      v828 = v354 + v353;
      v363 = v356;
      v364 = v349;
      v8 = v918;
      v78 = v917;
      v329 = v905;
      v365 = v846;
      v838 = v351;
      while (2)
      {
        v837 = v364;
        v366 = v362;
        v112 = v906;
        v827 = v362;
        if (v830 && dword_1EBF46AF4 >= 5)
        {
          v454 = *__error();
          v455 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v455, OS_LOG_TYPE_DEFAULT))
          {
            v1033.f_bsize = v864;
            *&v1033.f_iosize = v838;
            WORD2(v1033.f_blocks) = 2048;
            *(&v1033.f_blocks + 6) = v837;
            _os_log_impl(&dword_1C278D000, v455, OS_LOG_TYPE_DEFAULT, "%p offset %lld", &v1033, 0x16u);
          }

          *__error() = v454;
          v8 = v918;
          v78 = v917;
          v84 = v915;
          v112 = v906;
          v329 = v905;
          v365 = v846;
          v355 = v840;
          v351 = v838;
          v366 = v827;
        }

        if (resetReadPosContext(v366, v835, (v355 >> 2) & 1) == -1)
        {
          v478 = __error();
          v479 = *v478;
          v322 = v891;
          *(v891 + 176) = *v478;
          goto LABEL_565;
        }

        v322 = v891;
        v368 = v837;
        if (!v837)
        {
          break;
        }

        if (!v830)
        {
          v372 = *MEMORY[0x1E69E9AC8] << 6;
          if (v363 && v837 > v363 && v372 + v363 > v837 + 25 || (v363 = (0x4000000000000000 - *MEMORY[0x1E69E9AC8]) & v837, *&v882[8 * v365] = v363, v373 = fd_pread(v839, *v351, v372, v363), v368 = v837, v322 = v891, v373 != -1))
          {
            v371 = v368 - v363;
            v370 = v363;
            goto LABEL_396;
          }

          v520 = __error();
          v322 = v891;
          *(v891 + 176) = *v520;
          goto LABEL_578;
        }

        *&v882[8 * v365] = v871;
        v369 = *(v351 + 1);
        if (v368 > v369)
        {
          v517 = *__error();
          v518 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v518, OS_LOG_TYPE_ERROR))
          {
            v521 = *(v838 + 1);
            v1033.f_bsize = v863;
            *&v1033.f_iosize = "unpackAndCleanse";
            WORD2(v1033.f_blocks) = 1024;
            *(&v1033.f_blocks + 6) = 3902;
            WORD1(v1033.f_bfree) = 2048;
            *(&v1033.f_bfree + 4) = v837;
            WORD2(v1033.f_bavail) = 2048;
            *(&v1033.f_bavail + 6) = v521;
            _os_log_error_impl(&dword_1C278D000, v518, OS_LOG_TYPE_ERROR, "%s:%d: Nextlink out of bounds %lld %lld", &v1033, 0x26u);
          }

          *__error() = v517;
          v322 = v891;
          *(v891 + 176) = 22;
          v84 = v915;
          goto LABEL_578;
        }

        if (v368 >= v369)
        {
          v674 = __si_assert_copy_extra_7645(0, -1);
          v641 = v674;
          v675 = "";
          if (v674)
          {
            HIDWORD(v675) = HIDWORD(v674);
          }

          HIDWORD(v689) = HIDWORD(v675);
          goto LABEL_849;
        }

        v370 = 0;
        v371 = v368;
LABEL_396:
        v825 = v370;
        v374 = 0;
        v375 = 0;
        v376 = v371;
        do
        {
          v377 = v376;
          v378 = v375;
          v379 = v376 + 1;
          v380 = ((*(*v351 + v376) & 0x7F) << v375) | v374;
          v381 = v380;
          if ((*(*v351 + v376) & 0x80) == 0)
          {
            break;
          }

          v375 += 7;
          ++v376;
          v374 = v380;
        }

        while (v378 != 63);
        v826 = v380 >> 1;
        if (v830 && v380 >> 1 > *(v351 + 1))
        {
          v382 = *__error();
          v383 = _SILogForLogForCategory(10);
          if (os_log_type_enabled(v383, OS_LOG_TYPE_ERROR))
          {
            v417 = *(v838 + 1);
            v1033.f_bsize = v862;
            *&v1033.f_iosize = "unpackAndCleanse";
            WORD2(v1033.f_blocks) = 1024;
            *(&v1033.f_blocks + 6) = 3935;
            WORD1(v1033.f_bfree) = 2048;
            *(&v1033.f_bfree + 4) = v837;
            WORD2(v1033.f_bavail) = 2048;
            *(&v1033.f_bavail + 6) = v826;
            HIWORD(v1033.f_files) = 2048;
            v1033.f_ffree = v417;
            _os_log_error_impl(&dword_1C278D000, v383, OS_LOG_TYPE_ERROR, "%s:%d: %lld %lld %lld", &v1033, 0x30u);
          }

          *__error() = v382;
          v322 = v891;
          v351 = v838;
        }

        if ((v833 & 4) != 0 && v380 >= 2)
        {
          bzero(&v1033, v861);
          if (!fd_validfs(v839) || (!v839 ? (v523 = -1) : (v523 = v839[11]), fstatfs(v523, &v1033)))
          {
            v524 = __error();
            v322 = v891;
            *(v891 + 176) = *v524;
            goto LABEL_632;
          }

          if (__valid_fsp(v839))
          {
            v686 = __si_assert_copy_extra_7645(v839, -1);
            v687 = v686;
            v688 = "";
            if (v686)
            {
              v688 = v686;
            }

            si_analytics_log_2752("%s:%u: failed assertion '%s' %s Unexpected compact nxtLink %lld at offset %ld", "CIMerging.c", 3954, "!(isCompact && nxtLink != 0)", v688, v826, v379);
            free(v687);
            v671 = 2816;
LABEL_882:
            *v671 = -559038737;
            abort();
          }

LABEL_881:
          v671 = 3072;
          goto LABEL_882;
        }

        v823 = v380 >> 1;
        v384 = *v351;
        if ((v380 & 1) == 0)
        {
          v385 = 0;
          v386 = 0;
          do
          {
            v387 = v379;
            v388 = v386;
            v389 = v379 + 1;
            v390 = ((v384[v379] & 0x7F) << v386) | v385;
            v391 = v390;
            if ((v384[v379] & 0x80) == 0)
            {
              break;
            }

            v386 += 7;
            ++v379;
            v385 = v390;
          }

          while (v388 != 63);
          v365 = v846;
          if (v390)
          {
            v400 = v390 >> 1;
            goto LABEL_480;
          }

          v392 = v387 + 2;
          v393 = v384[v389];
          v394 = v384[v389];
          if (v393 < 0)
          {
            v404 = v387 + 3;
            v405 = v384[v392];
            v406 = v384[v392];
            if (v405 < 0)
            {
              v410 = v387 + 4;
              v411 = v384[v404];
              v412 = v384[v404];
              if (v411 < 0)
              {
                v418 = v387 + 5;
                v419 = v384[v410];
                v420 = v384[v410];
                if (v419 < 0)
                {
                  v444 = v384[v418];
                  if (v444 < 0)
                  {
LABEL_875:
                    v528 = __si_assert_copy_extra_7645(0, -1);
                    __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
                    goto LABEL_637;
                  }

                  v445 = ((v420 & 0x7F) << 21) | (v444 << 28) | ((v412 & 0x7F) << 14) | ((v406 & 0x7F) << 7) | v394 & 0x7F;
                  v389 = v387 + 6;
                  v396 = v445;
                  v78 = v917;
                  v329 = v905;
                  v322 = v891;
                  v365 = v846;
                }

                else
                {
                  v396 = ((v412 & 0x7F) << 14) | (v420 << 21) | ((v406 & 0x7F) << 7) | v394 & 0x7F;
                  v389 = v418;
                }
              }

              else
              {
                v396 = ((v406 & 0x7F) << 7) | (v412 << 14) | v394 & 0x7F;
                v389 = v410;
              }
            }

            else
            {
              v396 = v394 & 0x7F | (v406 << 7);
              v389 = v404;
            }
          }

          else
          {
            v395 = v394;
            v389 = v387 + 2;
            v396 = v395;
          }

          v446 = v390 >> 1;
          v400 = v446;
          if (v396)
          {
LABEL_480:
            v443 = v389;
LABEL_481:
            if (*(v322 + 96))
            {
              if (!*(v322 + 112))
              {
                v684 = __si_assert_copy_extra_7645(0, -1);
                v528 = v684;
                v685 = "";
                if (v684)
                {
                  HIDWORD(v685) = HIDWORD(v684);
                }

                HIDWORD(v689) = HIDWORD(v685);
                goto LABEL_856;
              }

              if (v400 + v841 <= **(v329 + 88))
              {
                v456 = merge_checkAgainstUpdates(v322, v329 + 88, v400, v834);
                v322 = v891;
                if (v456)
                {
                  v84 = v915;
LABEL_553:
                  v355 = v840;
                  v351 = v838;
                  v442 = v837;
                  goto LABEL_501;
                }
              }
            }

            if (v400 && v400 < *(v322 + 24))
            {
              v447 = *(v831 + 16);
              if (*v831 == 1)
              {
                HasIndex = CIIndexSetHasIndex(v447, v400);
                v322 = v891;
                if (HasIndex)
                {
                  if (*v831)
                  {
                    v449 = *(v831 + 8) + v400;
                  }

                  else
                  {
                    v449 = *(*(v831 + 16) + 4 * v400);
                  }

LABEL_506:
                  packContextAppend(v322, v449);
                  DataForOneDocument = readDataForOneDocument(v329 + 152, 0, v835, v400, v833, v832, v452);
                  if (DataForOneDocument != -1)
                  {
                    v84 = v915;
                    v322 = v891;
                    v355 = v840;
                    v442 = v837;
                    if (DataForOneDocument < 1 || !v899)
                    {
                      goto LABEL_500;
                    }

                    if (!*(v329 + 200))
                    {
LABEL_499:
                      v355 = v840;
                      goto LABEL_500;
                    }

LABEL_497:
                    MDDictionaryUIntUIntIncrementValue();
                    v442 = v837;
LABEL_498:
                    v322 = v891;
                    goto LABEL_499;
                  }

                  goto LABEL_622;
                }
              }

              else
              {
                v449 = *(v447 + 4 * v400);
                if (v449)
                {
                  goto LABEL_506;
                }
              }
            }

            v450 = readDataForOneDocument(v329 + 152, 1, v835, v400, v833, v832, v367);
            if (v450 != -1)
            {
              v451 = v450 < 1 || v899 == 0;
              v84 = v915;
              v442 = v837;
              if (!v451 && *(v329 + 200))
              {
                goto LABEL_497;
              }

              goto LABEL_498;
            }

LABEL_622:
            v519 = __error();
            v322 = v891;
            *(v891 + 176) = *v519;
            v8 = v918;
            v84 = v915;
            v112 = v906;
LABEL_578:
            v1021 = 1;
            v484 = v365;
            v485 = v844;
            goto LABEL_580;
          }

          v443 = v389 + 1;
          v457 = v384[v389];
          if ((v457 & 0x80000000) == 0)
          {
            v458 = v384[v389];
            goto LABEL_543;
          }

          v466 = v389 + 2;
          v467 = v384[v443];
          if ((v384[v443] & 0x80000000) == 0)
          {
            v458 = v457 & 0x7F | (v467 << 7);
            v443 = v389 + 2;
            goto LABEL_543;
          }

          v443 = v389 + 3;
          v471 = v384[v466];
          v472 = v384[v466];
          if ((v471 & 0x80000000) == 0)
          {
            v473 = ((v467 & 0x7F) << 7) | (v472 << 14);
            goto LABEL_540;
          }

          v474 = v384[v443];
          if (v384[v443] < 0)
          {
            v477 = v384[v389 + 4];
            if (v477 < 0)
            {
              v641 = __si_assert_copy_extra_7645(0, -1);
              __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t");
              goto LABEL_850;
            }

            v443 = v389 + 5;
            v473 = ((v474 & 0x7F) << 21) | (v477 << 28) | ((v472 & 0x7F) << 14) | ((v467 & 0x7F) << 7);
LABEL_540:
            v458 = v473 & 0xFFFFFF80 | v457 & 0x7F;
          }

          else
          {
            v458 = ((v472 & 0x7F) << 14) | (v474 << 21) | ((v467 & 0x7F) << 7) | v457 & 0x7F;
            v443 = v389 + 4;
          }

LABEL_543:
          if (!v458)
          {
            v78 = v917;
            v329 = v905;
            v322 = v891;
            v365 = v846;
            goto LABEL_481;
          }

          if (v829 <= v446)
          {
            v475 = *__error();
            v476 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v476, OS_LOG_TYPE_ERROR))
            {
              v1033.f_bsize = v859;
              *&v1033.f_iosize = "unpackAndCleanse";
              WORD2(v1033.f_blocks) = 1024;
              *(&v1033.f_blocks + 6) = 3975;
              WORD1(v1033.f_bfree) = 2048;
              *(&v1033.f_bfree + 4) = v400;
              WORD2(v1033.f_bavail) = 2048;
              *(&v1033.f_bavail + 6) = v828;
              HIWORD(v1033.f_files) = 1024;
              LODWORD(v1033.f_ffree) = v458;
              WORD2(v1033.f_ffree) = 2048;
              *(&v1033.f_ffree + 6) = v828;
              _os_log_error_impl(&dword_1C278D000, v476, OS_LOG_TYPE_ERROR, "%s:%d: Element outside legal range %lld>=%lld type %d (starting max %lld)", &v1033, 0x36u);
            }

            *__error() = v475;
          }

          else if (v391)
          {
            v329 = v905;
            merge_handleUpdate(v905 + 88, v446, v458);
            v78 = v917;
            v84 = v915;
LABEL_552:
            v322 = v891;
            v365 = v846;
            goto LABEL_553;
          }

          v78 = v917;
          v84 = v915;
          v329 = v905;
          goto LABEL_552;
        }

        v397 = v377 + 2;
        v398 = v384[v379];
        if (v384[v379] < 0)
        {
          v401 = v377 + 3;
          v402 = v384[v397];
          v403 = v384[v397];
          if (v402 < 0)
          {
            v407 = v377 + 4;
            v408 = v384[v401];
            v409 = v384[v401];
            if (v408 < 0)
            {
              v413 = v377 + 5;
              v414 = v384[v407];
              v415 = v384[v407];
              if (v414 < 0)
              {
                v421 = v384[v413];
                if (v421 < 0)
                {
                  goto LABEL_875;
                }

                v413 = v377 + 6;
                v416 = ((v415 & 0x7F) << 21) | (v421 << 28) | ((v409 & 0x7F) << 14);
              }

              else
              {
                v416 = ((v409 & 0x7F) << 14) | (v415 << 21);
              }

              v398 = v416 & 0xFFFFC000 | ((v403 & 0x7F) << 7) | v398 & 0x7F;
              v399 = v413;
            }

            else
            {
              v398 = ((v403 & 0x7F) << 7) | (v409 << 14) | v398 & 0x7F;
              v399 = v377 + 4;
            }
          }

          else
          {
            v398 = v398 & 0x7F | (v403 << 7);
            v399 = v377 + 3;
          }
        }

        else
        {
          v399 = v377 + 2;
        }

        v422 = v399;
        v423 = (*v351 + v399);
        v424 = v398;
        if (!v830 && v399 + v398 > (*MEMORY[0x1E69E9AC8] & 0x3FFFFFFuLL) << 6)
        {
          v459 = malloc_type_malloc(v398, v857);
          v460 = v424;
          if (v424 < 0x80)
          {
            v461 = 1;
          }

          else
          {
            v461 = 2;
          }

          if (v424 >> 14)
          {
            v462 = 3;
          }

          else
          {
            v462 = v461;
          }

          if (v424 >> 21)
          {
            v463 = 4;
          }

          else
          {
            v463 = v462;
          }

          if (v424 >> 28)
          {
            v464 = 5;
          }

          else
          {
            v464 = v463;
          }

          if (v380 >= 0x80)
          {
            v468 = 1;
            do
            {
              ++v468;
              v469 = v381 >> 14;
              v465 = v468;
              v381 >>= 7;
            }

            while (v469);
          }

          else
          {
            v465 = 1;
          }

          v470 = v459;
          if (fd_pread(*(v836 + 9432), v459, v460, v837 + (v465 + v464)) != -1)
          {
            v423 = v470;
            v329 = v905;
            v424 = v460;
            goto LABEL_433;
          }

          v525 = __error();
          v526 = v891;
          *(v891 + 176) = *v525;
          free(v470);
          v322 = v526;
LABEL_632:
          v8 = v918;
          v78 = v917;
          v84 = v915;
          v112 = v906;
          v329 = v905;
LABEL_577:
          v365 = v846;
          goto LABEL_578;
        }

LABEL_433:
        v1032 = v871;
        *&v1030.__r_.__value_.__l.__data_ = 0u;
        v1030.__r_.__value_.__r.__words[2] = v423;
        v766 = v424;
        v1031 = v424;
        v743 = v423;
        if (v423)
        {
          v425 = v424 == 0;
        }

        else
        {
          v425 = 1;
        }

        v426 = v425;
        HIDWORD(v1032) = v426;
        LODWORD(v941) = 0;
        v427 = v828;
        while (1)
        {
          v428 = v427;
          DocID = PostingChunkEnumeratorNextDocID(&v1030, &v941);
          if (!DocID)
          {
            break;
          }

          v431 = DocID;
          if (v941)
          {
            if (v428 <= DocID)
            {
              v440 = *__error();
              v441 = _SILogForLogForCategory(10);
              if (os_log_type_enabled(v441, OS_LOG_TYPE_ERROR))
              {
                v1033.f_bsize = v860;
                *&v1033.f_iosize = "unpackAndCleanse";
                WORD2(v1033.f_blocks) = 1024;
                *(&v1033.f_blocks + 6) = 4077;
                WORD1(v1033.f_bfree) = 2048;
                *(&v1033.f_bfree + 4) = v431;
                WORD2(v1033.f_bavail) = 2048;
                *(&v1033.f_bavail + 6) = v428;
                HIWORD(v1033.f_files) = 1024;
                LODWORD(v1033.f_ffree) = v941;
                WORD2(v1033.f_ffree) = 2048;
                *(&v1033.f_ffree + 6) = v828;
                _os_log_error_impl(&dword_1C278D000, v441, OS_LOG_TYPE_ERROR, "%s:%d: Element outside legal range %lld>=%lld type %d (starting max %lld)", &v1033, 0x36u);
              }

              *__error() = v440;
              v427 = v428;
              v329 = v905;
            }

            else
            {
              v329 = v905;
              merge_handleUpdate(v905 + 88, DocID, v941);
              v427 = v428;
            }
          }

          else
          {
            v432 = v891;
            if (!*(v891 + 96))
            {
              goto LABEL_445;
            }

            if (!*(v891 + 112))
            {
              v653 = __si_assert_copy_extra_7645(0, -1);
              v528 = v653;
              v654 = "";
              if (v653)
              {
                HIDWORD(v654) = HIDWORD(v653);
              }

              HIDWORD(v689) = HIDWORD(v654);
              goto LABEL_856;
            }

            if (v841 + DocID > **(v329 + 88) || (v439 = merge_checkAgainstUpdates(v891, v329 + 88, DocID, v834), v432 = v891, v427 = v428, (v439 & 1) == 0))
            {
LABEL_445:
              if (!v431)
              {
                v436 = v428;
                goto LABEL_458;
              }

              v433 = *(v432 + 24);
              if (v431 >= v433)
              {
                goto LABEL_455;
              }

              v434 = *(v831 + 16);
              if (*v831 == 1)
              {
                if (!CIIndexSetHasIndex(v434, v431))
                {
                  v433 = *(v891 + 24);
LABEL_455:
                  if (v431 >= v433)
                  {
                    v436 = v428;
                  }

                  else
                  {
                    v436 = v431 + v841;
                  }

LABEL_458:
                  v437 = readDataForOneDocument(v329 + 152, 1, v835, v431, v833, v832, v430);
                  if (v437 == -1)
                  {
                    goto LABEL_576;
                  }

                  goto LABEL_459;
                }

                v432 = v891;
                if (*v831)
                {
                  v435 = *(v831 + 8) + v431;
                }

                else
                {
                  v435 = *(*(v831 + 16) + 4 * v431);
                }
              }

              else
              {
                v435 = *(v434 + 4 * v431);
                if (!v435)
                {
                  goto LABEL_455;
                }
              }

              packContextAppend(v432, v435);
              v437 = readDataForOneDocument(v329 + 152, 0, v835, v431, v833, v832, v438);
              if (v437 == -1)
              {
LABEL_576:
                v488 = __error();
                v322 = v891;
                *(v891 + 176) = *v488;
                v8 = v918;
                v78 = v917;
                v84 = v915;
                v112 = v906;
                goto LABEL_577;
              }

              v436 = v431 + v841;
LABEL_459:
              v427 = v436;
              if (v437 >= 1)
              {
                v427 = v436;
                if (v899)
                {
                  v427 = v436;
                  if (*(v329 + 200))
                  {
                    MDDictionaryUIntUIntIncrementValue();
                    v427 = v436;
                  }
                }
              }
            }
          }
        }

        v84 = v915;
        v365 = v846;
        v355 = v840;
        v442 = v837;
        if (!v830 && v422 + v766 > (*MEMORY[0x1E69E9AC8] & 0x3FFFFFFuLL) << 6)
        {
          free(v743);
          v442 = v837;
          v355 = v840;
        }

        v443 = v422;
        v78 = v917;
        v322 = v891;
LABEL_500:
        v351 = v838;
LABEL_501:
        if (v380 < 2)
        {
          v8 = v918;
          v112 = v906;
          if (dword_1EBF46AF4 >= 5)
          {
            v480 = *__error();
            v481 = _SILogForLogForCategory(10);
            if (os_log_type_enabled(v481, OS_LOG_TYPE_DEFAULT))
            {
              *&v1033.f_bsize = v858;
              _os_log_impl(&dword_1C278D000, v481, OS_LOG_TYPE_DEFAULT, "merging last id %d", &v1033, 8u);
            }

            *__error() = v480;
            v8 = v918;
            v78 = v917;
            v84 = v915;
            v112 = v906;
            v329 = v905;
            v322 = v891;
            v365 = v846;
          }
        }

        else
        {
          v8 = v918;
          if (v442 != v823)
          {
            v363 = v825;
            v362 = 0;
            v364 = v826;
            if (v827)
            {
              v362 = *(v835 + 40);
              v363 = v825;
              v364 = v826;
            }

            continue;
          }

          v482 = "";
          if ((v355 & 4) != 0)
          {
            v482 = " (compact)";
          }

          si_analytics_log_2752("Unexpected loop in postings file at position %llu offset %lu %s", v442, v443, v482);
          v112 = v906;
          v322 = v891;
        }

        break;
      }

      v479 = *(v322 + 176);
LABEL_565:
      if (v479)
      {
        goto LABEL_578;
      }

      if ((v1021 & 1) != 0 || (v483 = atomic_load((*v84 + 15192))) != 0)
      {
        v1021 = 1;
LABEL_625:
        v484 = v365;
        v485 = v844;
        v322 = v891;
        break;
      }

      v1021 = (*(v916 + 16))(*(v916 + 32));
      if (v1021)
      {
        goto LABEL_625;
      }

      v322 = v891;
      if (*(v891 + 96))
      {
        merge_checkAgainstUpdates1(v891, (v329 + 88), 0, *(v84[v365] + 80));
        v322 = v891;
      }

      v339 = v843 + 1;
      v333 = v844;
      v338 = v365;
      v484 = v365;
      v485 = v844;
      v340 = v903;
      v341 = v870;
      if (v843 + 1 != v845)
      {
        continue;
      }

      break;
    }

LABEL_580:
    if (v899)
    {
      v489 = *(v329 + 200);
      if (v489)
      {
        push_termid_counts(v907, v850, v489);
        v322 = v891;
      }
    }

    if (v1021)
    {
      goto LABEL_614;
    }

    v490 = *(v322 + 8);
    if (!v490)
    {
      if (*(v322 + 96))
      {
        v491 = v855;
        v964 = v855;
        v492 = v905;
        v493 = v870;
        goto LABEL_592;
      }

      goto LABEL_614;
    }

    v491 = v855;
    v964 = v855;
    v492 = v905;
    v493 = v870;
    if (v490 != 1)
    {
      v494 = (*v322 + 4);
      v495 = **v322;
      v496 = v490 - 1;
      while (1)
      {
        v497 = v495;
        v498 = *v494++;
        v495 = v498;
        if (v497 <= v498)
        {
          break;
        }

        if (!--v496)
        {
          goto LABEL_592;
        }
      }

      v667 = __si_assert_copy_extra_7645(0, -1);
      v641 = v667;
      v668 = "";
      if (v667)
      {
        HIDWORD(v668) = HIDWORD(v667);
      }

      HIDWORD(v689) = HIDWORD(v668);
LABEL_849:
      __message_assert("%s:%u: failed assertion '%s' %s ");
      goto LABEL_850;
    }

LABEL_592:
    if (v484)
    {
      v499 = &v869[24 * v484];
      do
      {
        *(v322 + 24) = *&v868[4 * v484];
        *(v322 + 16) = v499;
        *(v322 + 80) = *(v493[v484] + 14472);
        if (*(v322 + 96))
        {
          merge_checkAgainstUpdates1(v322, (v492 + 88), 0, *(v493[v484] + 80));
          v493 = v870;
          v322 = v891;
        }

        v499 -= 24;
        --v484;
      }

      while (v484);
    }

    v500 = packContextFinalize(v491);
    v322 = v891;
    v84 = v915;
    v501 = MEMORY[0x1E69E9AC8];
    v502 = v902;
    if (v964 == v500)
    {
      goto LABEL_614;
    }

    v503 = v500;
    v504 = v848;
    while (1)
    {
      v505 = v502[619] - v503 + v964 + *v501;
      v502 = v902;
      v506 = v902[621];
      if (v505 <= v506)
      {
        break;
      }

      v507 = v946 + v506;
      v902[621] = v946 + v506;
      v508 = fd_truncate(v502[1179], v507);
      v322 = v891;
      v502 = v902;
      if (v508)
      {
        v1021 = 1;
        break;
      }
    }

    if (v1021)
    {
      goto LABEL_614;
    }

    v509 = v964 - v503;
    if (v964 - v503 + *v501 <= v946)
    {
      v512 = v502[619];
      v513 = *(&v945 + 1);
      v514 = v945;
      if (v964 + v512 - (v503 + *(&v945 + 1)) > v946)
      {
        sync_invalidate_mapping(v945, v946);
        munmap(v945, v946);
        v515 = v902;
        *(&v945 + 1) = v902[619] & ~*MEMORY[0x1E69E9AB8];
        v514 = fd_mmap(v902[1179], v946, 3, 1025, *(&v945 + 1));
        *&v945 = v514;
        if (v514 == -1)
        {
LABEL_641:
          v1021 = 1;
          break;
        }

        v512 = v515[619];
        v513 = *(&v945 + 1);
        v509 = v964 - v503;
      }

      memcpy((v514 + v512 - v513), &v962[v503], v509);
      goto LABEL_612;
    }

    if (fd_pwrite(v502[1179], &v962[v503], v509, v502[619]) == -1)
    {
      v510 = *__error();
      v511 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v511, OS_LOG_TYPE_ERROR))
      {
        v522 = *__error();
        v1033.f_bsize = v854;
        *&v1033.f_iosize = "mergeIndexData";
        WORD2(v1033.f_blocks) = 1024;
        *(&v1033.f_blocks + 6) = 2682;
        WORD1(v1033.f_bfree) = 1024;
        HIDWORD(v1033.f_bfree) = v522;
        _os_log_error_impl(&dword_1C278D000, v511, OS_LOG_TYPE_ERROR, "%s:%d: pwrite error: %d", &v1033, 0x18u);
      }

      *__error() = v510;
      v1021 = 1;
      v84 = v915;
    }

LABEL_612:
    v516 = v902;
    termIdStoreSetNext(v1022 + v853, v850, v902[619]);
    v516[619] += v964 - v503;
    finishTermForWPCBuffer(v905 + 152);
    v322 = v891;
    if (v848 != *(v1022 + 9672))
    {
      termIdStoreSetNext(v1022 + v852, v850, v504);
      v322 = v891;
    }

LABEL_614:
    if (v899 && *(v905 + 200))
    {
      destroyWPCOccurenceCountMap((v905 + 200));
      v322 = v891;
    }

    v323 = v850 + 1;
    v324 = v849;
    v325 = v485;
    v79 = v916;
    if (v485 < v999[3])
    {
      continue;
    }

    break;
  }

LABEL_642:
  if (v878)
  {
    v532 = v883;
    if (v878 >= v883)
    {
      v533 = v878 + 1;
      do
      {
        CICleanUpClearItem(v112, v532++);
      }

      while (v533 != v532);
    }
  }

  v534 = v887;
  v535 = v874;
  v536 = v873;
  v537 = v872;
  if (v8 >= 1)
  {
    v538 = v904 + 24;
    v539 = v890;
    v540 = v918;
    do
    {
      v541 = v540;
      finalizeReadBuffer(v539);
      finalizeReadBuffer(v538);
      v538 += 224;
      v539 += 16;
      v540 = v541 - 1;
    }

    while (v541 != 1);
  }

  CICleanUpClearItem(v112, v537);
  v542 = v891;
  free(*v891);
  FlattenPostingsContextDestroy(v536);
  CICleanUpClearItem(v112, v534);
  free(v962);
  sync_invalidate_mapping(v945, v946);
  munmap(v945, v946);
  CICleanUpClearItem(v112, v535);
  free(*(v542 + 88));
  free(*(v542 + 208));
  writeWindowFinalize((v905 + 152));
  v961 = 0;
  v543 = threadData[9 * v951 + 1] + 320 * v950;
  *(v543 + 312) = v875;
  v544 = *(v543 + 232);
  if (v544)
  {
    v544(*(v543 + 288));
  }

  dropThreadId(v951, 0, v876 + 1);
  v8 = v918;
  v79 = v916;
  v84 = v915;
  v114 = MEMORY[0x1E69E9AC8];
  v261 = v896;
  v293 = v886;
LABEL_652:
  v545 = threadData[9 * v956 + 1] + 320 * v955;
  *(v545 + 312) = v879;
  v546 = *(v545 + 232);
  if (v546)
  {
    v546(*(v545 + 288));
  }

  dropThreadId(v956, 0, v880 + 1);
LABEL_655:
  v547 = threadData[9 * v965 + 1] + 320 * v960[0];
  *(v547 + 312) = v884;
  v548 = *(v547 + 232);
  if (v548)
  {
    v548(*(v547 + 288));
  }

  dropThreadId(v965, 0, v293 + 1);
LABEL_658:
  v549 = threadData[9 * v970 + 1] + 320 * v969[0];
  *(v549 + 312) = v892;
  v550 = *(v549 + 232);
  if (v550)
  {
    v550(*(v549 + 288));
  }

  dropThreadId(v970, 0, v893 + 1);
LABEL_661:
  if (v961 == 1)
  {
    v1021 = 1;
  }

  if (v895)
  {
    CICleanUpClearItem(v112, v895);
  }

  if (v261)
  {
    CFRelease(v261);
  }

  if (!v78 || (v1021 & 1) != 0)
  {
    if (v8 >= 1)
    {
      v551 = vdupq_n_s64(v8 - 1);
      v552 = xmmword_1C2BF7A50;
      v553 = vdupq_n_s64(2uLL);
      v554 = v901 + 40;
      v555 = (v8 + 1) & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v556 = vmovn_s64(vcgeq_u64(v551, v552));
        if (v556.i8[0])
        {
          *(v554 - 3) = 0;
        }

        if (v556.i8[4])
        {
          *v554 = 0;
        }

        v552 = vaddq_s64(v552, v553);
        v554 += 6;
        v555 -= 2;
      }

      while (v555);
    }

    if (v78)
    {
      v557 = *v78;
      if (*v78)
      {
        if (*v557 < 1)
        {
          v562 = *v78;
        }

        else
        {
          v558 = 0;
          v559 = 0;
          do
          {
            v560 = v557[1] + v558;
            v561 = *(v560 + 16);
            if (*(v560 + 24) == 1)
            {
              munmap(v561, *(v560 + 8));
            }

            else
            {
              free(v561);
            }

            *(*(*v78 + 1) + v558 + 16) = 0;
            ++v559;
            v557 = *v78;
            v562 = *v78;
            v558 += 32;
          }

          while (v559 < **v78);
        }

        free(v562[1]);
        *(*v78 + 1) = 0;
        free(*v78);
        *v78 = 0;
        v84 = v915;
        v114 = MEMORY[0x1E69E9AC8];
      }
    }
  }

  v113 = v902;
LABEL_688:
  if (v1029 != -1)
  {
    close(v1029);
    v113 = v902;
  }

  v1029 = -1;
  if ((v1021 & 1) != 0 || (v563 = atomic_load((*v84 + 15192))) != 0)
  {
    v564 = 1;
  }

  else
  {
    v581 = (*(v79 + 16))(*(v79 + 32));
    v113 = v902;
    v564 = v581;
  }

  v565 = v909;
  v566 = v908;
  v1021 = v564;
  v567 = v113[619];
  v113[621] = v567;
  v113[618] = v567;
  v113[622] = v567;
  v568 = *(v1022 + 9672);
  *(v1022 + 9688) = v568;
  *(v1022 + 9664) = v568;
  *(v1022 + 9696) = v568;
  *(v1022 + 60) = *(v1022 + 68) - 1;
  fd_truncate(v113[1179], v113[621]);
  fd_truncate(*(v1022 + 14152), *(v1022 + 9688));
  v569 = (*v114 + v911) & ~*MEMORY[0x1E69E9AB8];
  if (fd_truncate(*(v1022 + 472), v569))
  {
    v1021 = 1;
  }

  else
  {
    *(v1022 + 480) = v569;
    storageUnmap(v1022 + 256);
  }

  v570 = v912;
  v571 = CFDictionaryCreateMutable(v565, 0, 0, MEMORY[0x1E695E9E8]);
  v805 = v566;
  v948[0] = v566;
  v948[1] = v571;
  CFDictionaryApplyFunction(v907, popTermIdCountPairsApplier, v948);
  if ((v1021 & 1) == 0)
  {
    v1030.__r_.__value_.__r.__words[0] = 0;
    v1030.__r_.__value_.__l.__size_ = &v1030;
    v1030.__r_.__value_.__r.__words[2] = 0x2000000000;
    v1031 = 0;
    v962 = 0;
    v963 = &v962;
    v964 = 0x2000000000uLL;
    *&v945 = 0;
    *(&v945 + 1) = &v945;
    v946 = 0x2000000000;
    v947 = 0;
    *(v1013 + 6) = 0;
    bzero(&v1033, 0x1020uLL);
    v941 = 0;
    v942 = &v941;
    v943 = 0x2000000000;
    v944 = 0;
    v572 = _SILogForLogForCategory(0);
    v573 = os_signpost_id_make_with_pointer(v572, 0);
    v575 = v573;
    v576 = *(v1022 + 9400);
    if ((v1021 & 1) == 0)
    {
      v921 = MEMORY[0x1E69E9820];
      v574.n128_u64[0] = 0x40000000;
      v922 = 0x40000000;
      v923 = __mergeIndexData_block_invoke_22;
      v924 = &unk_1E8194A20;
      v925 = &v1030;
      v926 = &v1012;
      v940 = v576;
      v932 = v805;
      v927 = &v1006;
      v933 = v571;
      v934 = v1039;
      v935 = v1022;
      v928 = &v945;
      v929 = &v962;
      v930 = v1010;
      v931 = &v941;
      v936 = &v1033;
      v937 = v573;
      v938 = v918;
      v939 = v915;
      v1021 |= iterateTermsForIndexes(v574);
    }

    if (*(v942 + 24) == 1)
    {
      v577 = _SILogForLogForCategory(0);
      if (v573 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v578 = v577;
        if (os_signpost_enabled(v577))
        {
          LOWORD(v972[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C278D000, v578, OS_SIGNPOST_INTERVAL_END, v575, "vectorIndexInsertForMerge", "End", v972, 2u);
        }
      }
    }

    v8 = v918;
    v112 = v906;
    if (v1021)
    {
      v579 = 1;
      v84 = v915;
      v570 = v912;
    }

    else
    {
      v84 = v915;
      v580 = atomic_load((*v915 + 15192));
      v570 = v912;
      if (v580)
      {
        v579 = 1;
      }

      else
      {
        v579 = (*(v916 + 16))(*(v916 + 32));
      }
    }

    v1021 = v579;
    _Block_object_dispose(&v941, 8);
    _Block_object_dispose(&v945, 8);
    _Block_object_dispose(&v962, 8);
    _Block_object_dispose(&v1030, 8);
  }

  _fd_unlink_with_origin(*(v1022 + 5200), 0);
  termIdStoreDestroy(v1022 + 4984);
  _fd_unlink_with_origin(*(v1022 + 9920), 0);
  termIdStoreDestroy(v1022 + 9704);
  fd_truncate(*(v1022 + 14448), 8 * *(v1022 + 68));
  fd_truncate(*(v1022 + 14456), 4 * *(v1022 + 68));
  if (*(v1022 + 14464))
  {
    fd_truncate(*(v1022 + 14464), 8 * *(v1022 + 68));
  }

  v582 = *(v1022 + 68);
  if ((*(v1022 + 45) & 1) == 0)
  {
    v582 = (4 * *(v1022 + 68) + 4) / 5u;
  }

  fd_truncate(*(v1022 + 14472), v582);
  storageTruncate((v1022 + 256));
  if ((v1021 & 1) == 0)
  {
    if (*(v1022 + 4912))
    {
      truncateVectorIndex(*(v1022 + 4912));
    }

    indexPerformSync(v583);
    if (*(v1022 + 4912))
    {
      IVFVectorIndex_s::makeReadOnly((*(v1022 + 4912) + 8));
    }
  }

  CICleanUpReset(v112, v570);
  if (v1022 && (v1021 & 1) == 0 && CFDictionaryGetCount(v1007[3]))
  {
    emitTopKTerms(v1022, v1007[3]);
  }

  v1027 = 1;
  CFRelease(v571);
  if (v8 >= 1)
  {
    *&v584 = 136315650;
    v698 = v584;
    v585 = v84;
    for (j = v8; j; --j)
    {
      v587 = *(*v585 + 4912);
      if (v587)
      {
        std::mutex::lock((v587 + 16));
        if ((*(v587 + 13) & 1) == 0)
        {
          v640 = __si_assert_copy_extra_332();
          v641 = v640;
          v642 = "";
          if (v640)
          {
            v642 = v640;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 4913, "fMerging", v642);
          goto LABEL_850;
        }

        *(v587 + 13) = 0;
        v588 = *__error();
        v589 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v589, OS_LOG_TYPE_DEFAULT))
        {
          v590 = (v587 + 128);
          if (*(v587 + 151) < 0)
          {
            v590 = *v590;
          }

          v591 = v590;
          IVFVectorIndex_s::name(&v1030, v587 + 8);
          if ((v1030.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v592 = &v1030;
          }

          else
          {
            v592 = v1030.__r_.__value_.__r.__words[0];
          }

          v1033.f_bsize = v698;
          *&v1033.f_iosize = v591;
          WORD2(v1033.f_blocks) = 2048;
          *(&v1033.f_blocks + 6) = v587 + 8;
          HIWORD(v1033.f_bfree) = 2080;
          v1033.f_bavail = v592;
          _os_log_impl(&dword_1C278D000, v589, OS_LOG_TYPE_DEFAULT, "[%s] destroyVectorIndexDumpContext: %p %s", &v1033, 0x20u);
          if (SHIBYTE(v1030.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1030.__r_.__value_.__l.__data_);
          }
        }

        *__error() = v588;
        std::mutex::unlock((v587 + 16));
        v8 = v918;
      }

      ++v585;
    }
  }

  free(v910);
  v593 = v907;
  CFDictionaryApplyFunction(v907, pqDisposeApplier_7720, 0);
  CFRelease(v593);
  CFRelease(v805);
  CFRelease(v1007[3]);
  _Block_object_dispose(&v986, 8);
  _Block_object_dispose(&v990, 8);
  _Block_object_dispose(&v994, 8);
  _Block_object_dispose(&v998, 8);
  _Block_object_dispose(&v1002, 8);
  _Block_object_dispose(&v1006, 8);
  _Block_object_dispose(v1010, 8);
  _Block_object_dispose(&v1012, 8);
  v594 = threadData[9 * v1018 + 1] + 320 * v1017;
  *(v594 + 312) = v913;
  v595 = *(v594 + 232);
  if (v595)
  {
    v595(*(v594 + 288));
  }

  dropThreadId(v1018, 0, v914 + 1);
  v81 = v919;
  v78 = v917;
  v79 = v916;
LABEL_740:
  if ((v1027 & 1) == 0)
  {
    v596 = *__error();
    v597 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v597, OS_LOG_TYPE_ERROR))
    {
      *v1034 = 136315394;
      *&v1034[4] = "mergeIndexData";
      v1035 = 1024;
      LODWORD(v1036[0]) = 3277;
      _os_log_error_impl(&dword_1C278D000, v597, OS_LOG_TYPE_ERROR, "%s:%d: Exception raised during merging", v1034, 0x12u);
    }

    *__error() = v596;
    v1021 = 1;
  }

  if (v1029 != -1)
  {
    close(v1029);
    v1029 = -1;
  }

  if (v1021 == 1)
  {
    if (*(v1022 + 4912))
    {
      vectorIndexCancelMerge(*(v1022 + 4912));
    }

    ContentIndexDeleteIndex(v1022, 1);
    v1022 = 0;
  }

  if (v78)
  {
    if (!v1022)
    {
      v598 = *v78;
      if (*v78)
      {
        if (*v598 < 1)
        {
          v603 = *v78;
        }

        else
        {
          v599 = 0;
          v600 = 0;
          do
          {
            v601 = v598[1] + v600;
            v602 = *(v601 + 16);
            if (*(v601 + 24) == 1)
            {
              munmap(v602, *(v601 + 8));
            }

            else
            {
              free(v602);
            }

            ++v599;
            v598 = *v78;
            v603 = *v78;
            v600 += 32;
          }

          while (v599 < **v78);
        }

        free(v603[1]);
        free(*v78);
        *v78 = 0;
      }
    }
  }

  v604 = *(v79 + 24);
  if (v604)
  {
    if (v1022)
    {
      v605 = *(v79 + 32);
      if (v78)
      {
        v606 = "vacuum";
      }

      else
      {
        v606 = "";
      }

      v607 = "MergeSuccess";
      v608 = 1;
    }

    else if ((*(v79 + 16))(*(v79 + 32)))
    {
      v604 = *(v79 + 24);
      v605 = *(v79 + 32);
      if (v78)
      {
        v606 = "vacuum";
      }

      else
      {
        v606 = "";
      }

      v608 = 0;
      v607 = "MergeCanceled";
    }

    else
    {
      v604 = *(v79 + 24);
      v605 = *(v79 + 32);
      if (v78)
      {
        v606 = "vacuum";
      }

      else
      {
        v606 = "";
      }

      v608 = 0;
      if (v1027)
      {
        v607 = "MergeError";
      }

      else
      {
        v607 = "MergeException";
      }
    }

    v604(v605, v607, v608, "Merge", v606, v8);
  }

  v609 = *__error();
  v610 = _SILogForLogForCategory(0);
  v611 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v610, v611))
  {
    v612 = "Complete";
    if (!v1022)
    {
      v612 = "Canceled";
    }

    *v1034 = 136315394;
    *&v1034[4] = v612;
    v1035 = 2080;
    v1036[0] = v81;
    _os_log_impl(&dword_1C278D000, v610, v611, "Merging %s (%s)", v1034, 0x16u);
  }

  *__error() = v609;
  v799 = v1023[15];
  v798 = v1023[16];
  v797 = v1023[17];
  v796 = v1023[18];
  v795 = v1023[19];
  v794 = v1023[20];
  v793 = v1023[21];
  v792 = v1023[22];
  v791 = v1023[23];
  v790 = v1023[24];
  v789 = v1023[25];
  v788 = v1023[26];
  v787 = v1023[27];
  v786 = v1023[28];
  v785 = v1023[29];
  v784 = v1023[0];
  v783 = v1023[1];
  v780 = v1023[2];
  v779 = v1023[3];
  v778 = v1023[4];
  v777 = v1023[5];
  v776 = v1023[6];
  v775 = v1023[7];
  v774 = v1023[8];
  v773 = v1023[9];
  v772 = v1023[10];
  v771 = v1023[11];
  v770 = v1023[12];
  v769 = v1023[13];
  v768 = v1023[14];
  v767 = v1023[30];
  v765 = v1023[31];
  v764 = v1023[32];
  v763 = v1023[33];
  v762 = v1023[34];
  v761 = v1023[35];
  v760 = v1023[36];
  v759 = v1023[37];
  v758 = v1023[38];
  v757 = v1023[39];
  v756 = v1023[40];
  v755 = v1023[41];
  v754 = v1023[42];
  v753 = v1023[43];
  v752 = v1023[44];
  v751 = v1024[0];
  v749 = v1024[2];
  v750 = v1024[1];
  v747 = v1024[4];
  v748 = v1024[3];
  v745 = v1024[6];
  v746 = v1024[5];
  v740 = v1024[7];
  v737 = v1024[9];
  v738 = v1024[8];
  v736 = v1024[10];
  v734 = v1024[12];
  v735 = v1024[11];
  v732 = v1024[14];
  v733 = v1024[13];
  *v1034 = 0;
  v613 = 0;
  for (k = 0; k != 15; ++k)
  {
    v615 = v1024[k] + v613;
    v613 = v615;
  }

  v616 = v1025;
  v728 = v1025[1];
  v729 = v1025[0];
  v726 = v1025[3];
  v727 = v1025[2];
  v723 = v1025[5];
  v724 = v1025[4];
  v719 = v1025[7];
  v720 = v1025[6];
  v717 = v1025[9];
  v718 = v1025[8];
  v715 = v1025[11];
  v716 = v1025[10];
  v713 = v1025[13];
  v714 = v1025[12];
  v710 = v1025[14];
  v617 = 0;
  for (m = 0; m != 15; ++m)
  {
    v619 = v1025[m] + v617;
    v617 = v619;
  }

  v731 = v615;
  v708 = v1026[1];
  v709 = v1026[0];
  v706 = v1026[3];
  v707 = v1026[2];
  v704 = v1026[5];
  v705 = v1026[4];
  v702 = v1026[7];
  v703 = v1026[6];
  v700 = v1026[9];
  v701 = v1026[8];
  v699 = v1026[10];
  v620 = 0;
  for (n = 0; n != 15; ++n)
  {
    v622 = v1026[n] + v620;
    v620 = v622;
  }

  v623 = 0;
  v624 = 15;
  v625 = v1025;
  do
  {
    v626 = v625[15];
    v628 = *v625++;
    v627 = v628;
    if (v626 >= v628)
    {
      v626 = v627;
    }

    v629 = v626 + v623;
    v623 = v629;
    --v624;
  }

  while (v624);
  v630 = 0;
  v631 = 15;
  do
  {
    v632 = v616[30];
    v634 = *v616++;
    v633 = v634;
    if (v632 >= v634)
    {
      v632 = v633;
    }

    v635 = v632 + v630;
    v630 = v635;
    --v631;
  }

  while (v631);
  asprintf(v1034, "absolute:  %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu\ndelta:     %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu\ncount:     %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu, %lu\nbytes:     %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu total: %lld\nterm - bytes:     %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu total: %lld\nterm  - words:     %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu total:%lld\nterm  - packings:     %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu, %llu,%lld\ntotal optimized term byte count: %llu\ntotal optimized term byte count with overhead: %llu\n", v799, v798, v797, v796, v795, v794, v793, v792, v791, v790, v789, v788, v787, v786, v785, v784, v783, v780, v779, v778, v777, v776, v775, v774, v773, v772, v771, v770, v769, v768, v767, v765, v764, v763, v762, v761, v760, v759, v758, v757, v756, v755, v754, v753, v752, v751, v750, v749, v748, v747, v746, v745, v740, v738, v737, v736, v735, v734, v733, v732, v731, v729, v728, v727, v726, v724, v723, v720, v719, v718, v717, v716, v715, v714, v713, v710, v619, v709, v708, v707, v706, v705, v704, v703, v702, v701, v700, v699, v1026[11], v1026[12], v1026[13], v1026[14], v622, v1026[30], v1026[31], v1026[32], v1026[33], v1026[34], v1026[35], v1026[36], v1026[37], v1026[38], v1026[39], v1026[40], v1026[41], v1026[42], v1026[43], v1026[44], v1026[45], v629, v635);
  v636 = *v1034;
  v637 = *__error();
  v638 = _SILogForLogForCategory(0);
  v639 = 2 * (gSILogLevels[0] < 4);
  if (os_log_type_enabled(v638, v639))
  {
    *v1034 = 136315138;
    *&v1034[4] = v636;
    _os_log_impl(&dword_1C278D000, v638, v639, "Merge statistics: %s", v1034, 0xCu);
  }

  *__error() = v637;
  free(v636);
  return v1022;
}