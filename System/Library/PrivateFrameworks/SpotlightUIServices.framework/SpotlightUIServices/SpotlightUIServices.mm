uint64_t sub_26B8843AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B8843E4()
{
  MEMORY[0x26D6846C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B88441C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B884454()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B884498()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B8844D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26B884510()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26B884548()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SPUISInitLogging(uint64_t result, uint64_t a2)
{
  if (SPUISInitLogging_once != -1)
  {
    SPUISInitLogging_cold_1();
  }
}

uint64_t __SPUISInitLogging_block_invoke()
{
  v0 = os_log_create("com.apple.SpotlightUIServices", "General");
  v1 = SPUISLogHandles;
  SPUISLogHandles = v0;

  qword_280425AB8 = os_log_create("com.apple.SpotlightUIServices", "Recents");

  return MEMORY[0x2821F96F8]();
}

id SPUISGeneralLog()
{
  v2 = SPUISLogHandles;
  if (SPUISLogHandles)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SPUISGeneralLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id SPUISRecentsLog()
{
  v2 = qword_280425AB8;
  if (qword_280425AB8)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SPUISRecentsLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id whiteSpaceCharacterSet(uint64_t a1)
{
  if (whiteSpaceCharacterSet_onceToken != -1)
  {
    whiteSpaceCharacterSet_cold_1();
  }

  v2 = whiteSpaceCharacterSet_sTrimSet;

  return v2;
}

uint64_t __whiteSpaceCharacterSet_block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = whiteSpaceCharacterSet_sTrimSet;
  whiteSpaceCharacterSet_sTrimSet = v0;

  v2 = whiteSpaceCharacterSet_sTrimSet;

  return [v2 addCharactersInRange:{65532, 0xFFFFLL}];
}

id reorderRanges(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = [a1 sortedArrayUsingComparator:&__block_literal_global_4];
  v3 = [v1 arrayWithArray:v2];

  return v3;
}

uint64_t __reorderRanges_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 rangeValue];
  if (v6 > [v5 rangeValue])
  {
    goto LABEL_2;
  }

  v8 = [v4 rangeValue];
  if (v8 < [v5 rangeValue])
  {
    v7 = -1;
    goto LABEL_9;
  }

  [v4 rangeValue];
  v10 = v9;
  [v5 rangeValue];
  if (v10 < v11)
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    [v4 rangeValue];
    v13 = v12;
    [v5 rangeValue];
    if (v13 <= v14)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

LABEL_9:

  return v7;
}

void mergeRanges(void *a1)
{
  v7 = a1;
  v1 = [MEMORY[0x277CCAB58] indexSet];
  if (objc_msgSend_count(v7) >= 2)
  {
    v2 = 1;
    do
    {
      v3 = [v7 objectAtIndexedSubscript:v2 - 1];
      v4 = [v3 rangeValue];

      v5 = [v7 objectAtIndexedSubscript:v2];
      v6 = [v5 rangeValue];

      if (v4 == v6)
      {
        [v1 addIndex:v2];
      }

      ++v2;
    }

    while (v2 < objc_msgSend_count(v7));
  }

  if (objc_msgSend_count(v1))
  {
    [v7 removeObjectsAtIndexes:v1];
  }
}

id getMatchedRanges(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  if ([v3 length])
  {
    v5 = [v4 queryString];
    v6 = [v5 length] == 0;

    if (!v6)
    {
      v7 = SPUISGeneralLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v4 queryTerms];
        v9 = [v4 queryString];
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "queryID")}];
        *buf = 138478595;
        v29 = v3;
        v30 = 2113;
        v31 = v8;
        v32 = 2113;
        v33 = v9;
        v34 = 2113;
        v35 = v10;
        _os_log_impl(&dword_26B882000, v7, OS_LOG_TYPE_DEFAULT, "getting matched ranges for string: %{private}@ queryTerms: %{private}@ queryString: %{private}@ queryID: %{private}@", buf, 0x2Au);
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __getMatchedRanges_block_invoke;
      v21[3] = &unk_279D0C098;
      v21[4] = &v22;
      [v4 evaluateAttribute:v3 ignoreSubtokens:1 skipTranscriptions:1 withHandler:v21];
      if (!objc_msgSend_count(v23[5]))
      {
        v11 = [v4 queryString];
        v12 = [v3 localizedStandardRangeOfString:v11];
        v14 = v13;

        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v23[5];
          v16 = [MEMORY[0x277CCAE60] valueWithRange:{v12, v14}];
          [v15 addObject:v16];
        }
      }

      v17 = reorderRanges(v23[5]);
      v18 = v23[5];
      v23[5] = v17;

      mergeRanges(v23[5]);
    }
  }

  v19 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v19;
}

void sub_26B8B7744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getMatchedRanges_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [MEMORY[0x277CCAE60] valueWithRange:?];
  [v1 addObject:v2];
}

id getFormattedTextsWithHeadTruncation(void *a1, void *a2, int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1;
  v42 = objc_opt_new();
  v7 = [v6 stringByReplacingOccurrencesOfString:@"[\t\n]" withString:@" " options:1024 range:{0, objc_msgSend(v6, "length")}];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v8)
  {
    v40 = 0;
    v9 = 0;
    v41 = *v51;
    v38 = a3 ^ 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v50 + 1) + 8 * i) rangeValue];
        v13 = v12;
        v14 = [v7 length];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v11 - v9;
          v16 = v11 == v9 || v11 > v14;
          if (!v16 && v15 <= v14)
          {
            if (((v38 | v40) & 1) == 0 && v15 >= 0xB)
            {
              if ([v7 length] < 0x15)
              {
                v40 = 0;
              }

              else
              {
                v44 = 0;
                v45 = &v44;
                v46 = 0x3010000000;
                v47 = &unk_26B8D297B;
                v48 = 0;
                v49 = 0;
                v43[0] = MEMORY[0x277D85DD0];
                v43[1] = 3221225472;
                v43[2] = __getFormattedTextsWithHeadTruncation_block_invoke;
                v43[3] = &unk_279D0C0C0;
                v43[4] = &v44;
                [v7 enumerateSubstringsInRange:v9 options:v11 - v9 usingBlock:{1283, v43}];
                v9 = v45[4];
                v15 = v45[5];
                v18 = [MEMORY[0x277D4C3A0] textWithString:@"…"];
                [v42 addObject:v18];

                _Block_object_dispose(&v44, 8);
                v40 = 1;
              }
            }

            v19 = MEMORY[0x277D4C3A0];
            v20 = [v7 substringWithRange:{v9, v15}];
            v21 = [v19 textWithString:v20];

            [v42 addObject:v21];
          }
        }

        v22 = [v7 length];
        v9 = v11 + v13;
        if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0 && v13 <= v22 && v9 <= v22)
        {
          v26 = MEMORY[0x277D4C3A0];
          v27 = [v7 substringWithRange:{v11, v13}];
          v28 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v29 = [v27 stringByTrimmingCharactersInSet:v28];
          v30 = [v26 textWithString:v29];

          [v30 setIsEmphasized:1];
          [v42 addObject:v30];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v31 = [v7 length];
  if (v9)
  {
    v32 = v31;
    v33 = [v7 length];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && v32 != v9 && v32 - v9 <= v33 && v32 <= v33)
    {
      v34 = MEMORY[0x277D4C3A0];
      v35 = [v7 substringWithRange:v9];
      v36 = [v34 textWithString:v35];

      [v42 addObject:v36];
    }
  }

  return v42;
}

void sub_26B8B7C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void removeMatchedRangesFromStringInTitle(void *a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v30 = v10;
    if (removeMatchedRangesFromStringInTitle_onceToken != -1)
    {
      removeMatchedRangesFromStringInTitle_cold_1();
    }

    v31 = v7;
    v32 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = [v15 rangeValue];
          v18 = v17;
          v19 = [v8 length];
          if (v16 != 0x7FFFFFFFFFFFFFFFLL && v18 != 0 && v18 <= v19 && v16 + v18 <= v19)
          {
            v23 = [v15 rangeValue];
            v25 = [v8 substringWithRange:{v23, v24}];
            if ([v25 rangeOfCharacterFromSet:removeMatchedRangesFromStringInTitle_symbolsAndPunctuations] != 0x7FFFFFFFFFFFFFFFLL)
            {

              v29 = v32;
              goto LABEL_27;
            }

            v26 = whiteSpaceCharacterSet(0x7FFFFFFFFFFFFFFFLL);
            v27 = [v25 stringByTrimmingCharactersInSet:v26];
            v28 = [v9 localizedCaseInsensitiveContainsString:v27];

            if (v28)
            {
              [v32 addObject:v15];
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v29 = v32;
    [obj removeObjectsInArray:v32];
LABEL_27:

    v10 = v30;
    v7 = v31;
  }
}

void __removeMatchedRangesFromStringInTitle_block_invoke()
{
  v0 = [MEMORY[0x277CCA900] symbolCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = removeMatchedRangesFromStringInTitle_symbolsAndPunctuations;
  removeMatchedRangesFromStringInTitle_symbolsAndPunctuations = v1;

  v3 = removeMatchedRangesFromStringInTitle_symbolsAndPunctuations;
  v4 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v3 formUnionWithCharacterSet:v4];
}

id formattedTextsForStringWithMatchesFromEvaluatorWithHeadTruncaction(void *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v10 = [v8 containsString:v9];
  v11 = [v9 precomposedStringWithCanonicalMapping];

  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = getMatchedRanges(v11, v7);
  }

  removeMatchedRangesFromStringInTitle(v12, v11, v8, v7);
  v13 = getFormattedTextsWithHeadTruncation(v11, v12, a4);

  return v13;
}

id getHighlightedRichText(void *a1, void *a2, void *a3, int a4)
{
  v4 = formattedTextsForStringWithMatchesFromEvaluatorWithHeadTruncaction(a1, a2, a3, a4);
  if (objc_msgSend_count(v4))
  {
    v5 = objc_opt_new();
    [v5 setFormattedTextPieces:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __getFormattedTextsWithHeadTruncation_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(*(*(result + 32) + 8) + 40) += a6;
  *(*(*(result + 32) + 8) + 32) = a5;
  if (*(*(*(result + 32) + 8) + 40) >= 0xAuLL)
  {
    *a7 = 1;
  }

  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t BiomeUtilities.SpotlightDiscoverabilitySignal.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26B8C80A4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26B8BB9E0()
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  return sub_26B8C8104();
}

uint64_t sub_26B8BBA3C(uint64_t a1)
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  return sub_26B8C8104();
}

uint64_t sub_26B8BBA84@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26B8C80A4();

  *a2 = v3 != 0;
  return result;
}

id BiomeUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiomeUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BiomeUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BiomeUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void _s19SpotlightUIServices14BiomeUtilitiesC06donateA10UsedSignalyyFZ_0()
{
  if (byte_280425100 == 1)
  {
    v0 = [BiomeLibrary() Discoverability];
    swift_unknownObjectRelease();
    v1 = [v0 Signals];
    swift_unknownObjectRelease();
    v2 = objc_allocWithZone(MEMORY[0x277CF1168]);
    v3 = sub_26B8C7E84();
    v5 = [v2 initWithContentIdentifier:v3 context:0 osBuild:0 userInfo:0];

    v4 = [v1 source];
    [v4 sendEvent_];

    byte_280425100 = 0;
  }
}

unint64_t sub_26B8BBD40()
{
  result = qword_280425108;
  if (!qword_280425108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425108);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BiomeUtilities.SpotlightDiscoverabilitySignal(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BiomeUtilities.SpotlightDiscoverabilitySignal(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id DefaultsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultsManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DefaultsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogCategory.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26B8C80A4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_26B8BC004()
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  return sub_26B8C8104();
}

uint64_t sub_26B8BC070(uint64_t a1)
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  return sub_26B8C8104();
}

uint64_t sub_26B8BC0C0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26B8C80A4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_26B8BC130()
{
  v0 = sub_26B8C7C64();
  __swift_allocate_value_buffer(v0, qword_280425618);
  __swift_project_value_buffer(v0, qword_280425618);
  return sub_26B8C7C54();
}

uint64_t sub_26B8BC1A8()
{
  if (qword_280425610 != -1)
  {
    swift_once();
  }

  v0 = sub_26B8C7C64();

  return __swift_project_value_buffer(v0, qword_280425618);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Log.generalLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280425610 != -1)
  {
    swift_once();
  }

  v2 = sub_26B8C7C64();
  v3 = __swift_project_value_buffer(v2, qword_280425618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_26B8BC2F0()
{
  result = qword_280425110;
  if (!qword_280425110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425110);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_26B8BC3D8()
{
  result = [objc_allocWithZone(type metadata accessor for SPUISICloudDriveAppLibraryCollectionObserver()) init];
  qword_280425AC0 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_26B8BC4F4()
{
  v1 = v0;
  v27 = sub_26B8C7F54();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B8C7F34();
  MEMORY[0x28223BE20](v5);
  v6 = sub_26B8C7DD4();
  MEMORY[0x28223BE20](v6 - 8);
  v26 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_collectionWorkingQueue;
  v7 = sub_26B8C0840(0, &qword_280425118, 0x277D85C78);
  v25[1] = ".Open-iCloudDrive";
  v25[2] = v7;
  sub_26B8C7DC4();
  v29 = MEMORY[0x277D84F90];
  sub_26B8C0798(&qword_280425120, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425128, &qword_26B8CD730);
  sub_26B8C03B4(&qword_280425130, &qword_280425128, &qword_26B8CD730);
  sub_26B8C7FC4();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v27);
  *&v0[v26] = sub_26B8C7F74();
  *&v0[OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem] = 0;
  v8 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v9 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain;
  *&v1[v9] = sub_26B8C0278(MEMORY[0x277D84F90]);
  v10 = type metadata accessor for SPUISICloudDriveAppLibraryCollectionObserver();
  v28.receiver = v1;
  v28.super_class = v10;
  v11 = objc_msgSendSuper2(&v28, sel_init);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  v15 = sub_26B8C7E84();
  [v14 addObserver:v13 selector:sel_endObserving name:v15 object:0];

  v16 = [v12 defaultCenter];
  v17 = v13;
  v18 = sub_26B8C7E84();
  [v16 addObserver:v17 selector:sel_beginObserving name:v18 object:0];

  v19 = [objc_opt_self() allFileProviderDomains];
  if (v19)
  {
    v20 = v19;
    sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
    v21 = sub_26B8C7EF4();
  }

  else
  {
    v21 = 0;
  }

  v22 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v17) + 0xC8))(v21);

  (*((*v22 & *v17) + 0xB8))(v23);

  return v17;
}

void sub_26B8BC9E4(uint64_t a1)
{
  v2 = sub_26B8C7DF4();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v39 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = v35 - v5;
  v36 = sub_26B8C7DB4();
  MEMORY[0x28223BE20](v36);
  v37 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  [*(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock) lock];
  v7 = *(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_26B8C8014() | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v9 = ~v12;
    v8 = v7 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v7 + 64);
    v11 = *(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
  }

  v15 = 0;
  v35[1] = v9;
  v16 = (v9 + 64) >> 6;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v15;
    v18 = v10;
    v19 = v15;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v11 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_18:
      sub_26B8C0888(v11);
      v24 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem;
      if (*(a1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem))
      {

        sub_26B8C7E24();
      }

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      swift_weakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v27 + 24) = v26;
      aBlock[4] = sub_26B8C0890;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26B8C08A0;
      aBlock[3] = &block_descriptor_33;
      _Block_copy(aBlock);
      v43 = MEMORY[0x277D84F90];
      sub_26B8C0798(&qword_280425160, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425168, &qword_26B8CD738);
      sub_26B8C03B4(&qword_280425170, &qword_280425168, &qword_26B8CD738);
      sub_26B8C7FC4();
      sub_26B8C7E34();
      swift_allocObject();
      v28 = sub_26B8C7E14();

      v29 = v39;
      sub_26B8C7DE4();
      v30 = v40;
      sub_26B8C7E44();
      v31 = *(v41 + 8);
      v32 = v29;
      v33 = v42;
      v31(v32, v42);
      sub_26B8C7F44();
      v31(v30, v33);
      *(a1 + v24) = v28;

      v34 = *(a1 + v38);
      [v34 unlock];

      return;
    }

    while (1)
    {
      [v21 startObserving];

      v15 = v19;
      v10 = v20;
      if ((v11 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_26B8C8044())
      {
        v23 = v22;
        swift_unknownObjectRelease();
        v43 = v23;
        sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
        swift_dynamicCast();
        v21 = aBlock[0];
        v19 = v15;
        v20 = v10;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_18;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_26B8BCF38(uint64_t a1, uint64_t a2)
{
  v2 = sub_26B8C7C64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = sub_26B8C7E04();

      if ((v8 & 1) == 0)
      {
        v9 = sub_26B8BC1A8();
        (*(v3 + 16))(v5, v9, v2);
        v10 = sub_26B8C7C44();
        v11 = sub_26B8C7F14();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_26B882000, v10, v11, "End observing app libraries due to timeout", v12, 2u);
          MEMORY[0x26D684690](v12, -1, -1);
        }

        v13 = (*(v3 + 8))(v5, v2);
        (*((*MEMORY[0x277D85000] & *v7) + 0xC0))(v13);
      }
    }

    v14 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem;
    v15 = *(v7 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_observationEndWorkItem);
    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (v15)
    {
      if (!v16 || (v17 = v16, , v17 != v15))
      {

        return;
      }
    }

    else if (v16)
    {
LABEL_13:

      return;
    }

    *(v7 + v14) = 0;
    goto LABEL_13;
  }
}

uint64_t sub_26B8BD19C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26B8BD258(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v6 = v4;
  v7 = sub_26B8C7DB4();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26B8C7DD4();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26B8C7C64();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26B8BC1A8();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_26B8C7C44();
  v19 = sub_26B8C7F14();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v12;
    v21 = v9;
    v22 = v6;
    v23 = v7;
    v24 = a4;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26B882000, v18, v19, v32, v20, 2u);
    v26 = v25;
    a4 = v24;
    v7 = v23;
    v6 = v22;
    v9 = v21;
    v12 = v31;
    MEMORY[0x26D684690](v26, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  aBlock[4] = v34;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B8C08A0;
  aBlock[3] = a4;
  v28 = _Block_copy(aBlock);
  v29 = v6;
  sub_26B8C7DC4();
  v38 = MEMORY[0x277D84F90];
  sub_26B8C0798(&qword_280425160, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425168, &qword_26B8CD738);
  sub_26B8C03B4(&qword_280425170, &qword_280425168, &qword_26B8CD738);
  sub_26B8C7FC4();
  MEMORY[0x26D683B20](0, v12, v9, v28);
  _Block_release(v28);
  (*(v37 + 8))(v9, v7);
  (*(v35 + 8))(v12, v36);
}

uint64_t sub_26B8BD694(unint64_t a1)
{
  v2 = v1;
  v4 = sub_26B8C7C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B8BC1A8();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_26B8C7C44();
  v10 = sub_26B8C7F14();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26B882000, v9, v10, "Updating app libraries domains", v11, 2u);
    MEMORY[0x26D684690](v11, -1, -1);
  }

  v12 = (*(v5 + 8))(v7, v4);
  v13 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xC0))(v12);
  v14 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  [*(v2 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock) lock];
  v15 = sub_26B8C0278(MEMORY[0x277D84F90]);
  v54 = v15;
  v16 = &OBJC_IVAR___SPUISToolResultBuilder__toolIconData;
  if (!a1)
  {
    goto LABEL_48;
  }

  v17 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_54:
    v43 = v16;
    v44 = v15;
    v18 = sub_26B8C8024();
    v15 = v44;
    v16 = v43;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_48:
    *(v2 + *(v16 + 336)) = v15;

    return (*((*v13 & *v2) + 0xB8))([*(v14 + v2) unlock]);
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_48;
  }

LABEL_6:
  v19 = 0;
  v20 = *(v16 + 336);
  v49 = a1;
  v50 = v20;
  v46 = v14;
  v47 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_collectionWorkingQueue;
  v21 = a1 & 0xC000000000000001;
  v14 = &unk_279D0C000;
  v48 = v2;
  v51 = v17;
  while (1)
  {
    if (v21)
    {
      v15 = MEMORY[0x26D683BB0](v19, a1);
    }

    else
    {
      if (v19 >= *(v17 + 16))
      {
        goto LABEL_50;
      }

      v15 = *(a1 + 8 * v19 + 32);
    }

    v22 = v15;
    v13 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if ([v15 v14[180]] && (objc_msgSend(v22, sel_needsAuthentication) & 1) == 0)
    {
      break;
    }

LABEL_8:
    ++v19;
    if (v13 == v18)
    {
      v15 = v54;
      v13 = MEMORY[0x277D85000];
      v14 = v46;
      v16 = &OBJC_IVAR___SPUISToolResultBuilder__toolIconData;
      goto LABEL_48;
    }
  }

  v23 = *(v2 + v50);
  if ((v23 & 0xC000000000000001) != 0)
  {

    v24 = v22;
    v25 = sub_26B8C8034();

    if (v25)
    {
      v52 = v25;
      sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
      swift_dynamicCast();
      a1 = v53;

      v17 = v51;
      if (a1)
      {
        goto LABEL_28;
      }
    }

    else
    {

      v17 = v51;
    }
  }

  else if (*(v23 + 16))
  {

    v26 = sub_26B8BF874(v22);
    if (v27)
    {
      a1 = *(*(v23 + 56) + 8 * v26);

      if (a1)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  v28 = [objc_opt_self() defaultManager];
  a1 = [v28 appLibraryCollectionForProviderDomain_];

  if (!a1)
  {
    v38 = sub_26B8BF98C(v22);

    a1 = v49;
    v14 = &unk_279D0C000;
    goto LABEL_8;
  }

  [a1 setWorkingQueue_];
LABEL_28:
  v14 = v54;
  if ((v54 & 0xC000000000000001) != 0)
  {
    if (v54 >= 0)
    {
      v14 = (v54 & 0xFFFFFFFFFFFFFF8);
    }

    v29 = a1;
    v15 = sub_26B8C8024();
    if (__OFADD__(v15, 1))
    {
      goto LABEL_52;
    }

    v14 = sub_26B8BFAD8(v14, (v15 + 1));
    v54 = v14;
  }

  else
  {
    v30 = a1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v14;
  v17 = sub_26B8BF874(v22);
  v33 = v14[2];
  v16 = (v32 & 1) == 0;
  v15 = &v33[v16];
  if (__OFADD__(v33, v16))
  {
    goto LABEL_51;
  }

  v2 = v32;
  if (v14[3] >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v14 = v53;
      if ((v32 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      sub_26B8C0118();
      v14 = v53;
      if ((v2 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_41;
  }

  sub_26B8BFD24(v15, isUniquelyReferenced_nonNull_native);
  v34 = sub_26B8BF874(v22);
  if ((v2 & 1) == (v35 & 1))
  {
    v17 = v34;
    v14 = v53;
    if ((v2 & 1) == 0)
    {
LABEL_44:
      v14[(v17 >> 6) + 8] = (v14[(v17 >> 6) + 8] | (1 << v17));
      *&v14[6][8 * v17] = v22;
      *&v14[7][8 * v17] = a1;

      v39 = v14[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_53;
      }

      v14[2] = v41;
      goto LABEL_46;
    }

LABEL_41:
    v36 = v14[7];
    v37 = *&v36[8 * v17];
    *&v36[8 * v17] = a1;

LABEL_46:
    v54 = v14;
    v2 = v48;
    a1 = v49;
    v17 = v51;
    v14 = &unk_279D0C000;
    goto LABEL_8;
  }

  sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
  result = sub_26B8C80D4();
  __break(1u);
  return result;
}

void *sub_26B8BDC90(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_26B8C8034();

    if (v4)
    {
      sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_26B8BF874(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void *sub_26B8BDDDC(void *a1)
{
  v3 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  [*(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock) lock];
  v4 = *(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);

  v5 = sub_26B8BDC90(a1, v4);

  [*(v1 + v3) unlock];
  return v5;
}

uint64_t sub_26B8BDF3C()
{
  v0 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v1 = [objc_opt_self() allFileProviderDomains];
  if (!v1)
  {
    return v0;
  }

  v2 = v1;
  sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
  v3 = sub_26B8C7EF4();

  if (qword_2804257B0 != -1)
  {
    swift_once();
  }

  result = (*((*MEMORY[0x277D85000] & *qword_280425AC0) + 0xB8))();
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  result = sub_26B8C8024();
  v5 = result;
  if (!result)
  {
LABEL_14:

    return MEMORY[0x277D84F90];
  }

LABEL_6:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D683BB0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = sub_26B8BE220(v7);
      sub_26B8BE0F4(v9);
    }

    while (v5 != v6);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B8BE0F4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_26B8BF0F4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_26B8C7BE4();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26B8BE220(void *a1)
{
  v110[1] = *MEMORY[0x277D85DE8];
  v2 = sub_26B8C7C64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v94 - v7;
  v9 = sub_26B8C7BE4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v108 = &v94 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v104 = &v94 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v94 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v94 - v21;
  MEMORY[0x28223BE20](v20);
  v105 = &v94 - v23;
  v24 = [a1 isiCloudDriveProvider];
  v107 = v10;
  v103 = v2;
  if (v24 && ([a1 needsAuthentication] & 1) == 0)
  {
    v106 = v6;
    v102 = v8;
    v43 = objc_opt_self();
    v44 = [a1 identifier];
    v110[0] = 0;
    v45 = [v43 rootURLForProviderDomainID:v44 cachePolicy:2 error:v110];

    v46 = v110[0];
    if (v45)
    {
      v47 = v105;
      sub_26B8C7BC4();
      v48 = v46;

      sub_26B8BECB0(v47, v22);
      v25 = sub_26B8BF0F4(0, 1, 1, MEMORY[0x277D84F90]);
      v29 = *(v25 + 2);
      v30 = *(v25 + 3);
      v31 = v29 + 1;
      v96 = v3;
      if (v29 < v30 >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_45;
    }

    v68 = v110[0];
    v69 = sub_26B8C7B94();

    swift_willThrow();
    v70 = sub_26B8BC1A8();
    (*(v3 + 16))(v106, v70, v2);
    v19 = a1;
    v71 = sub_26B8C7C44();
    v22 = sub_26B8C7F24();

    if (os_log_type_enabled(v71, v22))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      *(v72 + 4) = v19;
      *v73 = v19;
      v74 = v19;
      _os_log_impl(&dword_26B882000, v71, v22, "Failed to retrieve root URL for %@", v72, 0xCu);
      sub_26B8C06E4(v73);
      v75 = v73;
      v2 = v103;
      MEMORY[0x26D684690](v75, -1, -1);
      MEMORY[0x26D684690](v72, -1, -1);
    }

    (*(v3 + 8))(v106, v2);
    v25 = MEMORY[0x277D84F90];
    v8 = v102;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  while (1)
  {
    if (qword_2804257B0 != -1)
    {
      swift_once();
    }

    v26 = (*((*MEMORY[0x277D85000] & *qword_280425AC0) + 0xD0))(a1);
    if (!v26)
    {
      break;
    }

    v102 = v8;
    v27 = v26;
    v28 = [v26 items];

    sub_26B8C0840(0, &qword_280425190, 0x277CC63E8);
    v29 = sub_26B8C7EF4();

    if (v29 >> 62)
    {
      v31 = sub_26B8C8024();
      v95 = a1;
      v96 = v3;
      if (!v31)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v30 = v29 & 0xFFFFFFFFFFFFFF8;
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = a1;
      v96 = v3;
      if (!v31)
      {
        goto LABEL_39;
      }
    }

    if (v31 >= 1)
    {
      v32 = 0;
      v33 = v10;
      v34 = (v10 + 16);
      v105 = (v33 + 32);
      v106 = (v33 + 8);
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x26D683BB0](v32, v29);
        }

        else
        {
          v35 = *(v29 + 8 * v32 + 32);
        }

        v36 = v35;
        v37 = [v35 fileURL];
        if (v37)
        {
          v38 = v108;
          v39 = v37;
          sub_26B8C7BC4();

          (*v34)(v109, v38, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_26B8BF0F4(0, *(v25 + 2) + 1, 1, v25);
          }

          v41 = *(v25 + 2);
          v40 = *(v25 + 3);
          if (v41 >= v40 >> 1)
          {
            v25 = sub_26B8BF0F4((v40 > 1), v41 + 1, 1, v25);
          }

          v42 = v107;
          (*(v107 + 8))(v108, v9);
          *(v25 + 2) = v41 + 1;
          (*(v42 + 32))(&v25[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41], v109, v9);
        }

        else
        {
        }

        ++v32;
      }

      while (v31 != v32);
LABEL_39:

      v8 = v102;
      v2 = v103;
      a1 = v95;
      v3 = v96;
      break;
    }

    __break(1u);
LABEL_45:
    v25 = sub_26B8BF0F4((v30 > 1), v31, 1, v25);
LABEL_24:
    *(v25 + 2) = v31;
    v49 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v50 = *(v10 + 72);
    v100 = *(v10 + 32);
    v101 = v10 + 32;
    v100(&v25[v49 + v50 * v29], v22, v9);
    v95 = a1;
    v51 = [a1 storageURLs];
    v106 = v9;
    v52 = sub_26B8C7EF4();

    v53 = *(v52 + 16);
    if (v53)
    {
      v99 = v49;
      v94 = v52;
      v22 = (v52 + v49);
      v54 = v10 + 16;
      v55 = *(v10 + 16);
      v56 = (v54 - 8);
      v97 = v55;
      v98 = v54;
      do
      {
        v58 = v106;
        v55(v19, v22, v106);
        sub_26B8C0798(&qword_280425198, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        if (sub_26B8C7E54())
        {
          v57 = *v56;
          (*v56)(v19, v58);
        }

        else
        {
          v59 = v55;
          v60 = v56;
          v61 = v50;
          v62 = v19;
          v59(v104, v19, v58);
          v64 = *(v25 + 2);
          v63 = *(v25 + 3);
          if (v64 >= v63 >> 1)
          {
            v25 = sub_26B8BF0F4((v63 > 1), v64 + 1, 1, v25);
          }

          v57 = *v60;
          v65 = v19;
          v66 = v106;
          (*v60)(v65, v106);
          *(v25 + 2) = v64 + 1;
          v67 = &v25[v99 + v64 * v61];
          v50 = v61;
          v100(v67, v104, v66);
          v19 = v62;
          v56 = v60;
          v55 = v97;
        }

        v22 += v50;
        --v53;
      }

      while (v53);
    }

    else
    {

      v57 = *(v10 + 8);
    }

    v76 = v106;
    v57(v105, v106);
    v9 = v76;
    v8 = v102;
    v2 = v103;
    a1 = v95;
    v3 = v96;
    v10 = v107;
  }

  v77 = sub_26B8BC1A8();
  (*(v3 + 16))(v8, v77, v2);
  v78 = v2;
  v79 = v3;
  v80 = a1;
  v81 = v8;
  v82 = sub_26B8C7C44();
  v83 = sub_26B8C7F14();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v110[0] = v86;
    *v84 = 138412546;
    *(v84 + 4) = v80;
    *v85 = v80;
    *(v84 + 12) = 2080;
    v87 = v80;

    v89 = MEMORY[0x26D683AC0](v88, v9);
    v91 = v90;

    v92 = sub_26B8BF2CC(v89, v91, v110);

    *(v84 + 14) = v92;
    _os_log_impl(&dword_26B882000, v82, v83, "rootURLs for domain %@: %s", v84, 0x16u);
    sub_26B8C06E4(v85);
    MEMORY[0x26D684690](v85, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x26D684690](v86, -1, -1);
    MEMORY[0x26D684690](v84, -1, -1);

    (*(v79 + 8))(v81, v103);
  }

  else
  {

    (*(v79 + 8))(v81, v78);
  }

  return v25;
}

uint64_t sub_26B8BECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26B8C7BA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B8C7BE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(a2, a1, v8);
  if (sub_26B8C7BB4() == 0xD000000000000010 && 0x800000026B8CF3F0 == v12)
  {
  }

  else
  {
    v13 = sub_26B8C80B4();

    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  v15[0] = 0xD000000000000013;
  v15[1] = 0x800000026B8CF410;
  (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
  sub_26B8C0690();
  sub_26B8C7BD4();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(a2, v8);
  return (*(v9 + 32))(a2, v11, v8);
}

BOOL sub_26B8BEF20()
{
  v0 = *(sub_26B8BDF3C() + 16);

  return v0 != 0;
}

id SPUISICloudDriveUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUISICloudDriveUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISICloudDriveUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_26B8BF0B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_26B8BF0F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251A0, &qword_26B8CD7B8);
  v10 = *(sub_26B8C7BE4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B8C7BE4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_26B8BF2CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B8BF398(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26B8C07E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26B8BF398(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26B8BF4A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26B8C8004();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26B8BF4A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_26B8BF4F0(a1, a2);
  sub_26B8BF620(&unk_287C50890);
  return v3;
}

void *sub_26B8BF4F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26B8BF70C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26B8C8004();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26B8C7ED4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26B8BF70C(v10, 0);
        result = sub_26B8C7FE4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26B8BF620(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26B8BF780(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26B8BF70C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251A8, &qword_26B8CD7C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26B8BF780(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251A8, &qword_26B8CD7C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_26B8BF874(uint64_t a1)
{
  v2 = sub_26B8C7F94();

  return sub_26B8BF8B8(a1, v2);
}

unint64_t sub_26B8BF8B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26B8C7FA4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_26B8BF98C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_26B8BF874(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_26B8BFF8C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_26B8C0118();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_26B8C8034();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_26B8C8024();
  v8 = sub_26B8BFAD8(v4, v7);

  v9 = sub_26B8BF874(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_26B8BFF8C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_26B8BFAD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251B8, &qword_26B8CD7C8);
    v2 = sub_26B8C8084();
    v19 = v2;
    sub_26B8C8014();
    v3 = sub_26B8C8044();
    if (v3)
    {
      v4 = v3;
      sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_26B8BFD24(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_26B8C7F94();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_26B8C8044();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_26B8BFD24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251B8, &qword_26B8CD7C8);
  result = sub_26B8C8074();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_26B8C7F94();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_26B8BFF8C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B8C7FD4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_26B8C7F94();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

id sub_26B8C0118()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251B8, &qword_26B8CD7C8);
  v2 = *v0;
  v3 = sub_26B8C8064();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_26B8C0278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251B8, &qword_26B8CD7C8);
    v3 = sub_26B8C8094();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_26B8BF874(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B8C03B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26B8C0408()
{
  v1 = *(v0 + 16);
  v19 = OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock;
  [*(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsLock) lock];
  v2 = *(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_26B8C8014();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v5 = ~v8;
    v4 = v2 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v2 + 64);
    v7 = *(v1 + OBJC_IVAR___SPUISICloudDriveAppLibraryCollectionObserver_itemCollectionsForDomain);
  }

  v18 = v5;
  v11 = (v5 + 64) >> 6;

  v12 = 0;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v12;
    v14 = v6;
    v15 = v12;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v7 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_18:
      sub_26B8C0888(v7);
      [*(v1 + v19) unlock];
      return;
    }

    while (1)
    {
      [v17 stopObserving];

      v12 = v15;
      v6 = v16;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_26B8C8044())
      {
        swift_unknownObjectRelease();
        sub_26B8C0840(0, &qword_280425178, 0x277CC63F0);
        swift_dynamicCast();
        v17 = v20;
        v15 = v12;
        v16 = v6;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_26B8C0690()
{
  result = qword_280425180;
  if (!qword_280425180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425180);
  }

  return result;
}

uint64_t sub_26B8C06E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425188, &qword_26B8CD7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26B8C0798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B8C07E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26B8C0840(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id SPUISMarketplaceKitUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUISMarketplaceKitUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISMarketplaceKitUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SPUISMarketplaceKitUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISMarketplaceKitUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SPUISPasteboardHistoryOption.title.getter(uint64_t a1)
{
  v2 = sub_26B8C7C14();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_26B8C7E74();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  switch(a1)
  {
    case 604800:
      sub_26B8C7E64();
      sub_26B8C0840(0, &qword_2804251C0, 0x277CCA8D8);
      if (!sub_26B8C7F84())
      {
        [objc_opt_self() mainBundle];
      }

      goto LABEL_12;
    case 28800:
      sub_26B8C7E64();
      sub_26B8C0840(0, &qword_2804251C0, 0x277CCA8D8);
      if (!sub_26B8C7F84())
      {
        [objc_opt_self() mainBundle];
      }

LABEL_12:
      sub_26B8C7C04();
      return sub_26B8C7EA4();
    case 1800:
      sub_26B8C7E64();
      sub_26B8C0840(0, &qword_2804251C0, 0x277CCA8D8);
      if (!sub_26B8C7F84())
      {
        [objc_opt_self() mainBundle];
      }

      goto LABEL_12;
  }

  result = sub_26B8C80C4();
  __break(1u);
  return result;
}

uint64_t SPUISPasteboardHistoryOption.init(rawValue:)(uint64_t result)
{
  if (result == 604800)
  {
    v1 = 604800;
  }

  else
  {
    v1 = 0;
  }

  if (result == 28800)
  {
    v2 = 28800;
  }

  else
  {
    v2 = v1;
  }

  if (result != 1800)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26B8C0E14()
{
  v1 = *v0;
  sub_26B8C80E4();
  MEMORY[0x26D683CB0](v1);
  return sub_26B8C8104();
}

uint64_t sub_26B8C0E88(uint64_t a1)
{
  v2 = *v1;
  sub_26B8C80E4();
  MEMORY[0x26D683CB0](v2);
  return sub_26B8C8104();
}

uint64_t *sub_26B8C0ECC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == 1800 || v2 == 604800 || v2 == 28800)
  {
    v5 = 0;
  }

  else
  {
    v2 = 0;
    v5 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_26B8C0F1C@<X0>(uint64_t *a1@<X8>)
{
  result = SPUISPasteboardHistoryOption.title.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26B8C0FD4()
{
  result = sub_26B8C7E84();
  qword_2804257C8 = result;
  return result;
}

uint64_t sub_26B8C1030()
{
  result = sub_26B8C7E84();
  qword_2804257D8 = result;
  return result;
}

uint64_t sub_26B8C108C()
{
  result = sub_26B8C7E84();
  qword_2804257E8 = result;
  return result;
}

uint64_t sub_26B8C10E8()
{
  result = sub_26B8C7E84();
  qword_2804257F8 = result;
  return result;
}

uint64_t sub_26B8C1144()
{
  result = sub_26B8C7E84();
  qword_280425808 = result;
  return result;
}

id sub_26B8C11A0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_26B8C1200()
{
  result = [objc_allocWithZone(type metadata accessor for SPUISPasteboardHistoryDefaultsManager()) init];
  qword_280425818 = result;
  return result;
}

id SPUISPasteboardHistoryDefaultsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SPUISPasteboardHistoryDefaultsManager.shared.getter()
{
  if (qword_280425810 != -1)
  {
    swift_once();
  }

  v1 = qword_280425818;

  return v1;
}

id sub_26B8C131C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26B8C7E84();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() standardUserDefaults];

  return v4;
}

uint64_t sub_26B8C1400()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_26B8C7FB4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_26B8C3700(v9);
    return 28800;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 28800;
  }

  v4 = 28800;
  if (v6 == 28800)
  {
    v4 = 28800;
  }

  if (v6 == 604800)
  {
    v4 = 604800;
  }

  if (v6 == 1800)
  {
    return 1800;
  }

  else
  {
    return v4;
  }
}

void sub_26B8C1650(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x60))() != a1)
  {
    v4 = (*((*v3 & *v1) + 0x58))();
    v5 = sub_26B8C7E84();
    [v4 setInteger:a1 forKey:v5];
  }
}

uint64_t sub_26B8C1750@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

void (*sub_26B8C1804(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_26B8C1400();
  return sub_26B8C184C;
}

void sub_26B8C184C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x60))() != v1)
  {
    v5 = (*((*v3 & *v2) + 0x58))();
    v4 = sub_26B8C7E84();
    [v5 setInteger:v1 forKey:v4];
  }
}

id sub_26B8C1980()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_26B8C7FB4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_26B8C0840(0, &qword_2804251D0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_26B8C3700(v9);
  }

  return 0;
}

void sub_26B8C1BE0(char a1)
{
  v2 = a1 & 1;
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x78))() & 1) != v2)
  {
    v4 = (*((*v3 & *v1) + 0x58))();
    v5 = sub_26B8C7E84();
    [v4 setBool:v2 forKey:v5];
  }
}

uint64_t sub_26B8C1CE4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

void (*sub_26B8C1D9C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26B8C1980() & 1;
  return sub_26B8C1DE8;
}

void sub_26B8C1DE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = MEMORY[0x277D85000];
  if (v2 != ((*((*MEMORY[0x277D85000] & **a1) + 0x78))() & 1))
  {
    v5 = (*((*v3 & *v1) + 0x58))();
    v4 = sub_26B8C7E84();
    [v5 setBool:v2 forKey:v4];
  }
}

id sub_26B8C1F9C()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_26B8C2150(char a1)
{
  v2 = a1 & 1;
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x90))() & 1) != v2)
  {
    v4 = (*((*v3 & *v1) + 0x58))();
    v5 = sub_26B8C7E84();
    [v4 setBool:v2 forKey:v5];
  }
}

uint64_t sub_26B8C2254@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result & 1;
  return result;
}

void (*sub_26B8C230C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = ((*MEMORY[0x277D85000] & *v1) + 88) & 0xFFFFFFFFFFFFLL | 0x8A61000000000000;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = v3();
  v6 = sub_26B8C7E84();
  v7 = [v5 BOOLForKey_];

  *(a1 + 24) = v7;
  return sub_26B8C23DC;
}

void sub_26B8C23DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != ((*((*MEMORY[0x277D85000] & **a1) + 0x90))() & 1))
  {
    v4 = (*(a1 + 8))();
    v3 = sub_26B8C7E84();
    [v4 setBool:v2 forKey:v3];
  }
}

id sub_26B8C2570()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_26B8C2664(char a1)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0xA8))() & 1) != (a1 & 1))
  {
    v4 = *((*v3 & *v1) + 0x58);
    v5 = v4();
    v6 = sub_26B8C7E84();
    v7 = [v5 objectForKey_];

    if (v7)
    {
      sub_26B8C7FB4();
      swift_unknownObjectRelease();
      v8 = sub_26B8C3700(v11);
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      sub_26B8C3700(v11);
      v8 = (*((*v3 & *v1) + 0x68))(28800);
    }

    v9 = (v4)(v8);
    v10 = sub_26B8C7E84();
    [v9 setBool:a1 & 1 forKey:v10];
  }
}

uint64_t sub_26B8C2814@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result & 1;
  return result;
}

void (*sub_26B8C28CC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x58))();
  v4 = sub_26B8C7E84();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_26B8C2990;
}

id sub_26B8C2A64()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = sub_26B8C7E84();
  v3 = [v1 integerForKey_];

  return v3;
}

void sub_26B8C2C14(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xC0))() != a1)
  {
    v4 = (*((*v3 & *v1) + 0x58))();
    v5 = sub_26B8C7E84();
    [v4 setInteger:a1 forKey:v5];
  }
}

uint64_t sub_26B8C2D14@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

void (*sub_26B8C2DC8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v4 = ((*MEMORY[0x277D85000] & *v1) + 88) & 0xFFFFFFFFFFFFLL | 0x8A61000000000000;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v3();
  v6 = sub_26B8C7E84();
  v7 = [v5 integerForKey_];

  *a1 = v7;
  return sub_26B8C2E98;
}

void sub_26B8C2E98(uint64_t *a1)
{
  v2 = *a1;
  if ((*((*MEMORY[0x277D85000] & *a1[1]) + 0xC0))() != v2)
  {
    v4 = (a1[2])();
    v3 = sub_26B8C7E84();
    [v4 setInteger:v2 forKey:v3];
  }
}

uint64_t sub_26B8C3028()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xA8))() & 1) == 0)
  {
    return 0;
  }

  v2 = *((*v1 & *v0) + 0x90);

  return v2();
}

uint64_t sub_26B8C30C4()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x90))() & 1) == 0)
  {
    return 1;
  }

  v2 = *((*v1 & *v0) + 0xD8);

  return v2();
}

uint64_t sub_26B8C3160()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v3 = v2();
  v4 = sub_26B8C7E84();
  v5 = [v3 objectForKey_];

  if (!v5)
  {
    v32 = 0u;
    v33 = 0u;
    result = sub_26B8C3700(&v32);
LABEL_5:
    v8 = (v2)(result);
    v9 = sub_26B8C7E84();
    v10 = [v8 objectForKey_];

    if (v10)
    {
      sub_26B8C7FB4();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (*(&v31 + 1))
    {
      v11 = swift_dynamicCast();
      if (v11)
      {
        if (v28)
        {
          if (v28 >= 1)
          {
            (*((*v1 & *v0) + 0xB0))(1);
          }

          if (v28 == 1800 || v28 == 28800 || v28 == 604800)
          {
            return (*((*v1 & *v0) + 0xC8))(2);
          }

          goto LABEL_36;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v11 = sub_26B8C3700(&v32);
    }

    if (((*((*v1 & *v0) + 0x90))(v11) & 1) == 0)
    {
      return (*((*v1 & *v0) + 0xC8))(2);
    }

    v12 = v2();
    v13 = sub_26B8C7E84();
    v14 = [v12 arrayForKey_];

    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = sub_26B8C7EF4();

    v16 = *(v15 + 16);
    if (v16)
    {
      v27[4] = v15;
      v17 = v15 + 32;
      v18 = MEMORY[0x277D84F90];
      do
      {
        sub_26B8C07E4(v17, &v32);
        sub_26B8C3768(&v32, &v30);
        if (swift_dynamicCast())
        {
          v20 = v29;
          if (v29)
          {
            v21 = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_26B8C38AC(0, *(v18 + 2) + 1, 1, v18);
            }

            v23 = *(v18 + 2);
            v22 = *(v18 + 3);
            if (v23 >= v22 >> 1)
            {
              v18 = sub_26B8C38AC((v22 > 1), v23 + 1, 1, v18);
            }

            *(v18 + 2) = v23 + 1;
            v19 = &v18[16 * v23];
            *(v19 + 4) = v21;
            *(v19 + 5) = v20;
          }
        }

        v17 += 32;
        --v16;
      }

      while (v16);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    *&v32 = 0xD000000000000017;
    *(&v32 + 1) = 0x800000026B8CF610;
    MEMORY[0x28223BE20](v24);
    v27[2] = &v32;
    v25 = sub_26B8C3800(sub_26B8C39B8, v27, v18);

    v1 = MEMORY[0x277D85000];
    if ((v25 & 1) == 0)
    {
LABEL_34:
      v26 = 1;
      goto LABEL_35;
    }

LABEL_33:
    v26 = 0;
LABEL_35:
    (*((*v1 & *v0) + 0xB0))(v26);
LABEL_36:
    (*((*v1 & *v0) + 0x68))(28800);
    return (*((*v1 & *v0) + 0xC8))(2);
  }

  sub_26B8C7FB4();
  swift_unknownObjectRelease();
  v6 = sub_26B8C3700(&v32);
  result = (*((*v1 & *v0) + 0xC0))(v6);
  if (result == 2)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_26B8C3670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  sub_26B8C7FB4();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

id SPUISPasteboardHistoryDefaultsManager.init()()
{
  *&v0[OBJC_IVAR___SPUISPasteboardHistoryDefaultsManager_currentVersion] = 2;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISPasteboardHistoryDefaultsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_26B8C3700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251C8, &qword_26B8CD810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_26B8C3768(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id SPUISPasteboardHistoryDefaultsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISPasteboardHistoryDefaultsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26B8C3800(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

char *sub_26B8C38AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804251F8, &qword_26B8CD9B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26B8C39B8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B8C80B4() & 1;
  }
}

unint64_t sub_26B8C3A38()
{
  result = qword_2804251E0;
  if (!qword_2804251E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804251E0);
  }

  return result;
}

unint64_t sub_26B8C3A90()
{
  result = qword_2804251E8;
  if (!qword_2804251E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804251F0, &qword_26B8CD8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804251E8);
  }

  return result;
}

uint64_t sub_26B8C4078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425218, &qword_26B8CDA10);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_26B8C7CD4();
}

unint64_t sub_26B8C4148(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425248, &qword_26B8CDA60);
  v2 = MEMORY[0x28223BE20](v46);
  v45 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v44 = &v41 - v4;
  v47 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425250, &qword_26B8CDA68);
    v5 = sub_26B8C8094();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v6 = v47 + 64;
  v7 = 1 << *(v47 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v47 + 64);
  v10 = (v7 + 63) >> 6;
  v41 = v5 + 8;

  v12 = 0;
  v43 = v5;
  v42 = v6;
  while (v9)
  {
    v16 = v12;
LABEL_14:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v47 + 56);
    v20 = (*(v47 + 48) + 16 * v18);
    v22 = *v20;
    v48 = v20[1];
    v21 = v48;
    v23 = sub_26B8C7D84();
    v24 = *(v23 - 8);
    v25 = v19 + *(v24 + 72) * v18;
    v26 = v46;
    v27 = v44;
    (*(v24 + 16))(&v44[*(v46 + 48)], v25, v23);
    *v27 = v22;
    v27[1] = v21;
    v28 = v27;
    v29 = v45;
    sub_26B8C5A10(v28, v45);
    v30 = *(v26 + 48);
    v31 = *v29;
    v32 = v29[1];
    v50 = v23;
    v51 = MEMORY[0x277D72A68];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
    (*(v24 + 32))(boxed_opaque_existential_1, v29 + v30, v23);
    sub_26B8C5AE4(&v49, v53);
    v34 = v31;
    sub_26B8C5AE4(v53, v54);
    sub_26B8C5AE4(v54, &v52);

    v35 = v31;
    v5 = v43;
    result = sub_26B8C4690(v35, v32);
    if (v36)
    {
      v13 = (v5[6] + 16 * result);
      *v13 = v34;
      v13[1] = v32;
      v14 = result;

      v15 = (v5[7] + 40 * v14);
      __swift_destroy_boxed_opaque_existential_0(v15);
      result = sub_26B8C5AE4(&v52, v15);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_20;
      }

      *(v41 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v5[6] + 16 * result);
      *v37 = v34;
      v37[1] = v32;
      result = sub_26B8C5AE4(&v52, v5[7] + 40 * result);
      v38 = v5[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v5[2] = v40;
    }

    v12 = v16;
    v6 = v42;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id SPUISWindowTabUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUISWindowTabUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISWindowTabUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SPUISWindowTabUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SPUISWindowTabUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_26B8C4690(uint64_t a1, uint64_t a2)
{
  sub_26B8C80E4();
  sub_26B8C7EB4();
  v4 = sub_26B8C8104();

  return sub_26B8C4708(a1, a2, v4);
}

unint64_t sub_26B8C4708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26B8C80B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26B8C47C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425240, &qword_26B8CDA58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425258, &unk_26B8CDA70);
    v7 = sub_26B8C8094();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26B8C5AFC(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_26B8C4690(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_26B8C7D84();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_26B8C499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v116 = a6;
  v115 = a5;
  v120 = a4;
  v119 = a3;
  v118 = a2;
  v117 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425200, &qword_26B8CD9F8);
  MEMORY[0x28223BE20](v6 - 8);
  v121 = &v108 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425208, &qword_26B8CDA00);
  MEMORY[0x28223BE20](v8 - 8);
  v122 = &v108 - v9;
  v10 = sub_26B8C7CA4();
  v123 = *(v10 - 8);
  v124 = v10;
  MEMORY[0x28223BE20](v10);
  v112 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26B8C7D84();
  v131 = *(v12 - 8);
  v132 = v12;
  MEMORY[0x28223BE20](v12);
  v130 = (&v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425210, &qword_26B8CDA08);
  MEMORY[0x28223BE20](v14 - 8);
  v114 = &v108 - v15;
  v16 = sub_26B8C7D54();
  v128 = *(v16 - 8);
  v129 = v16;
  MEMORY[0x28223BE20](v16);
  v125 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26B8C7D94();
  v126 = *(v18 - 8);
  v127 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v113 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - v21;
  v23 = sub_26B8C7C14();
  v139 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v138 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425218, &qword_26B8CDA10);
  v134 = *(v25 - 8);
  v135 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = (&v108 - v26);
  v28 = sub_26B8C7CE4();
  v136 = *(v28 - 8);
  v137 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v108 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425220, &qword_26B8CDA18);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v108 - v35;
  v37 = sub_26B8C7C74();
  v140 = *(v37 - 8);
  v141 = v37;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v108 - v41;
  sub_26B8C7D24();
  v133 = sub_26B8C7D14();
  v109 = v40;
  v111 = v42;
  v110 = v22;
  sub_26B8C7CB4();
  swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = 0xD000000000000028;
  *(v43 + 24) = 0x800000026B8CF810;
  *v27 = v43;
  v45 = v134;
  v44 = v135;
  (*(v134 + 104))(v27, *MEMORY[0x277D721C8], v135);
  sub_26B8C58F4();
  sub_26B8C594C();
  sub_26B8C7D34();

  (*(v45 + 8))(v27, v44);
  v46 = *(v136 + 8);
  v47 = v31;
  v48 = v137;
  v46(v47, v137);
  v49 = v138;
  sub_26B8C7BF4();
  sub_26B8C7D04();

  v139[1](v49, v23);
  v46(v33, v48);
  v55 = v140;
  v54 = v141;
  if ((*(v140 + 48))(v36, 1, v141) == 1)
  {
    v50 = &qword_280425220;
    v51 = &qword_26B8CDA18;
    v52 = v36;
  }

  else
  {
    (*(v55 + 32))(v111, v36, v54);
    v56 = swift_allocObject();
    v56[2] = 0xD000000000000010;
    v56[3] = 0x800000026B8CF840;
    v56[4] = 0x6154776F646E6957;
    v56[5] = 0xEF797469746E4562;
    v57 = v110;
    *v110 = v56;
    v58 = *MEMORY[0x277D72D28];
    v59 = v126;
    v60 = *(v126 + 104);
    v139 = 0;
    v61 = v127;
    v60(v57, v58, v127);
    (*(v59 + 16))(v113, v57, v61);
    v136 = sub_26B8C7DA4();
    v62 = *(v136 - 8);
    v135 = *(v62 + 56);
    v137 = (v62 + 56);
    v63 = v114;
    v135(v114, 1, 1, v136);

    v64 = v125;
    sub_26B8C7D44();
    v65 = v129;
    v66 = swift_allocBox();
    (*(v128 + 16))(v67, v64, v65);
    v68 = v131;
    *v130 = v66;
    v69 = *(v68 + 104);
    v116 = v68 + 104;
    v133 = v69;
    v70 = v132;
    v69();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425238, &qword_26B8CDA50);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425240, &qword_26B8CDA58);
    v72 = *(*(v71 - 8) + 72);
    v73 = (*(*(v71 - 8) + 80) + 32) & ~*(*(v71 - 8) + 80);
    v134 = 2 * v72;
    v74 = swift_allocObject();
    v138 = v74;
    *(v74 + 16) = xmmword_26B8CD9C0;
    v75 = (v74 + v73);
    v76 = *(v71 + 48);
    v115 = v71;
    *v75 = 7368801;
    *(v75 + 1) = 0xE300000000000000;
    v77 = sub_26B8C7D74();
    v78 = swift_allocBox();
    v80 = v79;
    v135(v63, 1, 1, v136);

    sub_26B8C7D64();
    v81 = *MEMORY[0x277D72970];
    v137 = *(*(v77 - 8) + 104);
    v137(v80, v81, v77);
    *&v75[v76] = v78;
    v82 = *MEMORY[0x277D72A58];
    v83 = v70;
    v84 = v133;
    v133(&v75[v76], v82, v83);
    v85 = &v75[v72];
    v86 = *(v71 + 48);
    *v85 = 0xD000000000000019;
    *(v85 + 1) = 0x800000026B8CF8C0;
    v87 = swift_allocBox();
    v88 = v120;
    *v89 = v119;
    v89[1] = v88;
    v90 = v77;
    v91 = v132;
    v137(v89, *MEMORY[0x277D729B8], v90);
    *&v85[v86] = v87;
    v92 = &v85[v86];
    v94 = v140;
    v93 = v141;
    v96 = v130;
    v95 = v131;
    v84(v92, v82, v91);
    v97 = &v75[v134];
    v98 = *(v115 + 48);
    *v97 = 0x6154776F646E6977;
    *(v97 + 1) = 0xE900000000000062;
    (*(v95 + 16))(&v97[v98], v96, v91);

    v99 = sub_26B8C47C0(v138);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v94 + 16))(v109, v111, v93);
    sub_26B8C4148(v99);

    v100 = sub_26B8C7CF4();
    (*(*(v100 - 8) + 56))(v121, 1, 1, v100);
    v101 = v122;
    v102 = v139;
    sub_26B8C7C84();
    if (!v102)
    {
      v104 = v123;
      v103 = v124;
      (*(v123 + 56))(v101, 0, 1, v124);
      v105 = v112;
      (*(v104 + 32))(v112, v101, v103);
      v106 = [objc_allocWithZone(MEMORY[0x277D4C358]) init];
      v107 = sub_26B8C7C94();
      [v106 setToolInvocationData_];

      (*(v104 + 8))(v105, v103);
      (*(v95 + 8))(v96, v91);
      (*(v128 + 8))(v125, v129);
      (*(v126 + 8))(v110, v127);
      (*(v94 + 8))(v111, v93);
      return v106;
    }

    (*(v95 + 8))(v96, v91);
    (*(v128 + 8))(v125, v129);
    (*(v126 + 8))(v110, v127);
    (*(v94 + 8))(v111, v93);
    (*(v123 + 56))(v101, 1, 1, v124);
    v50 = &qword_280425208;
    v51 = &qword_26B8CDA00;
    v52 = v101;
  }

  sub_26B8C59B0(v52, v50, v51);
  return 0;
}

unint64_t sub_26B8C58F4()
{
  result = qword_280425228;
  if (!qword_280425228)
  {
    sub_26B8C7CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425228);
  }

  return result;
}

unint64_t sub_26B8C594C()
{
  result = qword_280425230;
  if (!qword_280425230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280425218, &qword_26B8CDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280425230);
  }

  return result;
}

uint64_t sub_26B8C59B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B8C5A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425248, &qword_26B8CDA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26B8C5AE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26B8C5AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425240, &qword_26B8CDA58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id SPUISQuickWebsiteSearchUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SPUISQuickWebsiteSearchUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SPUISQuickWebsiteSearchUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SPUISQuickWebsiteSearchUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SPUISQuickWebsiteSearchUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_26B8C5D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v110 = a6;
  v109 = a5;
  v108 = a4;
  v107 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425200, &qword_26B8CD9F8);
  MEMORY[0x28223BE20](v8 - 8);
  v111 = &v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425208, &qword_26B8CDA00);
  MEMORY[0x28223BE20](v10 - 8);
  v112 = &v100 - v11;
  v114 = sub_26B8C7CA4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v104 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26B8C7D84();
  v122 = *(v13 - 8);
  v123 = v13;
  MEMORY[0x28223BE20](v13);
  v121 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425210, &qword_26B8CDA08);
  MEMORY[0x28223BE20](v15 - 8);
  v106 = &v100 - v16;
  v17 = sub_26B8C7D54();
  v119 = *(v17 - 8);
  v120 = v17;
  MEMORY[0x28223BE20](v17);
  v116 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_26B8C7D94();
  v117 = *(v118 - 8);
  v19 = MEMORY[0x28223BE20](v118);
  v105 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v115 = (&v100 - v21);
  v22 = sub_26B8C7C14();
  v132 = *(v22 - 8);
  v133 = v22;
  MEMORY[0x28223BE20](v22);
  v131 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425218, &qword_26B8CDA10);
  v126 = *(v24 - 8);
  v127 = v24;
  MEMORY[0x28223BE20](v24);
  v125 = (&v100 - v25);
  v26 = sub_26B8C7CE4();
  v129 = *(v26 - 8);
  v130 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v128 = &v100 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425220, &qword_26B8CDA18);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v100 - v32;
  v34 = sub_26B8C7C74();
  v134 = *(v34 - 8);
  v135 = v34;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v100 - v38;
  v136 = a1;
  v137 = a2;

  MEMORY[0x26D683A80](0xD000000000000019, 0x800000026B8CF920);
  v40 = v136;
  v41 = v137;
  sub_26B8C7D24();
  v124 = sub_26B8C7D14();
  v100 = v37;
  v101 = a1;
  v102 = a2;
  v103 = v39;
  sub_26B8C7CB4();
  swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v41;
  v44 = v125;
  v43 = v126;
  *v125 = v42;
  v45 = v127;
  (*(v43 + 104))(v44, *MEMORY[0x277D721C8], v127);
  sub_26B8C58F4();
  sub_26B8C594C();
  v46 = v128;
  sub_26B8C7D34();

  (*(v43 + 8))(v44, v45);
  v47 = v130;
  v48 = *(v129 + 8);
  v48(v29, v130);
  v49 = v131;
  sub_26B8C7BF4();
  sub_26B8C7D04();

  (*(v132 + 8))(v49, v133);
  v48(v46, v47);
  v55 = v134;
  v54 = v135;
  if ((*(v134 + 48))(v33, 1, v135) == 1)
  {
    v50 = &qword_280425220;
    v51 = &qword_26B8CDA18;
    v52 = v33;
  }

  else
  {
    (*(v55 + 32))(v103, v33, v54);
    v56 = swift_allocObject();
    v57 = v102;
    v56[2] = v101;
    v56[3] = v57;
    v56[4] = 0xD000000000000020;
    v56[5] = 0x800000026B8CF940;
    v58 = v115;
    *v115 = v56;
    v59 = v117;
    v60 = v118;
    (*(v117 + 104))(v58, *MEMORY[0x277D72D28], v118);
    (*(v59 + 16))(v105, v58, v60);
    v61 = sub_26B8C7DA4();
    (*(*(v61 - 8) + 56))(v106, 1, 1, v61);

    v62 = v116;
    sub_26B8C7D44();
    v63 = v120;
    v64 = swift_allocBox();
    (*(v119 + 16))(v65, v62, v63);
    v66 = v121;
    *v121 = v64;
    v67 = *MEMORY[0x277D729F8];
    v68 = v122;
    v69 = v123;
    v70 = *(v122 + 104);
    v132 = v122 + 104;
    v133 = v70;
    v70(v66, v67, v123);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425238, &qword_26B8CDA50);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280425240, &qword_26B8CDA58);
    v72 = *(*(v71 - 8) + 72);
    v73 = (*(*(v71 - 8) + 80) + 32) & ~*(*(v71 - 8) + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_26B8CDA80;
    v75 = (v74 + v73);
    v76 = *(v71 + 48);
    *v75 = 0x65746973626577;
    *(v75 + 1) = 0xE700000000000000;
    (*(v68 + 16))(&v75[v76], v66, v69);
    v77 = &v75[v72];
    *v77 = 1836213620;
    *(v77 + 1) = 0xE400000000000000;
    if (v110)
    {
      v78 = v109;
    }

    else
    {
      v78 = 0;
    }

    if (v110)
    {
      v79 = v110;
    }

    else
    {
      v79 = 0xE000000000000000;
    }

    v80 = *(v71 + 48);
    v81 = sub_26B8C7D74();
    v82 = swift_allocBox();
    v131 = 0;
    v83 = v82;
    *v84 = v78;
    v84[1] = v79;
    v85 = v123;
    (*(*(v81 - 8) + 104))(v84, *MEMORY[0x277D729B8], v81);
    *&v77[v80] = v83;
    v86 = &v77[v80];
    v87 = v103;
    v89 = v134;
    v88 = v135;
    v133(v86, *MEMORY[0x277D72A58], v85);

    v90 = sub_26B8C47C0(v74);
    swift_setDeallocating();
    v91 = v88;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v89 + 16))(v100, v87, v88);
    sub_26B8C4148(v90);

    v92 = sub_26B8C7CF4();
    (*(*(v92 - 8) + 56))(v111, 1, 1, v92);
    v93 = v112;
    v94 = v131;
    sub_26B8C7C84();
    if (!v94)
    {
      v95 = v113;
      v96 = v114;
      (*(v113 + 56))(v93, 0, 1, v114);
      v97 = v104;
      (*(v95 + 32))(v104, v93, v96);
      v98 = [objc_allocWithZone(MEMORY[0x277D4C358]) init];
      v99 = sub_26B8C7C94();
      [v98 setToolInvocationData_];

      (*(v95 + 8))(v97, v96);
      (*(v122 + 8))(v121, v85);
      (*(v119 + 8))(v116, v120);
      (*(v117 + 8))(v115, v118);
      (*(v89 + 8))(v87, v91);
      return v98;
    }

    (*(v122 + 8))(v121, v85);
    (*(v119 + 8))(v116, v120);
    (*(v117 + 8))(v115, v118);
    (*(v89 + 8))(v87, v91);
    (*(v113 + 56))(v93, 1, 1, v114);
    v50 = &qword_280425208;
    v51 = &qword_26B8CDA00;
    v52 = v93;
  }

  sub_26B8C59B0(v52, v50, v51);
  return 0;
}

void SPUISGeneralLog_cold_1(void *a1)
{
  if (SPUISInitLogging_once != -1)
  {
    dispatch_once(&SPUISInitLogging_once, &__block_literal_global_16);
  }

  *a1 = SPUISLogHandles;
}

void SPUISRecentsLog_cold_1(void *a1)
{
  if (SPUISInitLogging_once != -1)
  {
    dispatch_once(&SPUISInitLogging_once, &__block_literal_global_16);
  }

  *a1 = qword_280425AB8;
}