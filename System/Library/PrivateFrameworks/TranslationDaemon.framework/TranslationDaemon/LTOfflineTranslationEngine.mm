@interface LTOfflineTranslationEngine
@end

@implementation LTOfflineTranslationEngine

void __65___LTOfflineTranslationEngine_preheatAsynchronously_withContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogTranslationEngine(a1, a2);
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PreheatModels", "Loading all models", buf, 2u);
  }

  [*(a1 + 32) _loadRecognizersWithContext:*(a1 + 40)];
  [*(a1 + 40) taskHint];
  v7 = _LTTranslationModelTaskString();
  [*(a1 + 32) _loadTranslatorForTask:v7];
  if ([*(a1 + 40) censorSpeech])
  {
    [*(a1 + 32) _loadEtiquetteSanitizersForTaskHint:{objc_msgSend(*(a1 + 40), "taskHint")}];
  }

  v8 = v6;
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v9, OS_SIGNPOST_INTERVAL_END, v4, "PreheatModels", "Finished loading models", v10, 2u);
  }
}

id __105___LTOfflineTranslationEngine__handleTranslationResults_withContext_sourceString_sourceSpans_stabilizer___block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v54 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v53 = v3;
  if (!WeakRetained)
  {
    v35 = 0;
    goto LABEL_34;
  }

  v50 = WeakRetained;
  v5 = [MEMORY[0x277CBEB18] array];
  v55 = [MEMORY[0x277CBEB18] array];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v6 = [v3 tokens];
  v7 = [v6 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v7)
  {
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CE1C38]);
        v12 = [v10 text];
        [v10 confidence];
        v14 = [v11 initWithText:v12 confidence:v13];

        [v5 addObject:v14];
        v15 = [v10 text];
        v16 = [v15 length] == 0;

        if (!v16)
        {
          v17 = [v10 text];
          [v55 addObject:v17];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v7);
  }

  v18 = [v55 componentsJoinedByString:@" "];
  v19 = v53;
  if ([*(v54 + 32) censorSpeech] && (v20 = v50[5]) != 0)
  {
    v52 = [v20 objectForKeyedSubscript:*(v54 + 40)];
  }

  else
  {
    v52 = 0;
  }

  if ([*(v54 + 32) enableTranslationSemanticSegmentation])
  {
    v21 = [v53 stableSegments];
    v22 = [v21 count] == 0;

    if (v22)
    {
      v51 = 0;
    }

    else
    {
      v23 = [v53 stableSegments];
      v24 = [v23 componentsJoinedByString:&stru_284834138];

      v25 = [v52 sanitizedStringForString:v24];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v24;
      }

      v51 = v27;

      v30 = _LTOSLogTranslationEngine(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v53 stableSegments];
        v32 = [v31 count];
        v33 = [v53 stableSegments];
        v34 = v50[16];
        *buf = 134218499;
        v61 = v32;
        v62 = 2117;
        v63 = v33;
        v64 = 2050;
        v65 = v34;
        _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Received %lu stableSegments %{sensitive}@ with stablePrefixState %{public}p", buf, 0x20u);
      }
    }

    v19 = v53;
  }

  else
  {
    v51 = 0;
  }

  v36 = [v52 sanitizedStringForString:v18];
  v37 = objc_alloc(MEMORY[0x277CE1BF8]);
  [v19 confidence];
  v39 = v38;
  v40 = [v19 lowConfidence];
  v35 = [v37 initWithFormattedString:v18 sanitizedFormattedString:v36 confidence:v40 lowConfidence:0 romanization:v5 tokens:MEMORY[0x277CBEBF8] preToPostITN:v39 stableString:v51];
  v41 = [v19 metaInfo];
  [v35 updateWithEngineMeta:v41 locale:*(v54 + 40)];

  v42 = MEMORY[0x277CE1AF8];
  if (v36)
  {
    v43 = [v35 romanization];
    v44 = [v42 nodeWithText:v36 romanization:v43];
    goto LABEL_29;
  }

  v46 = *(v54 + 48);
  v47 = [v35 romanization];
  v45 = [v42 nodeFromEMTResult:v53 sourceText:v46 romanization:v47];

  if (!v45)
  {
    v49 = MEMORY[0x277CE1AF8];
    v43 = [v35 romanization];
    v44 = [v49 nodeWithText:v18 romanization:v43];
LABEL_29:
    v45 = v44;

    if (!v45)
    {
      goto LABEL_33;
    }
  }

  [*(v54 + 56) addObject:v45];
LABEL_33:

  WeakRetained = v50;
LABEL_34:

  return v35;
}

void __109___LTOfflineTranslationEngine__translateString_isFinal_withContext_toLocale_withSpans_stabilizer_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = _LTOSLogTranslationEngine(WeakRetained, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Done translating", buf, 2u);
    }

    v8 = *(a1 + 32);
    v9 = v8;
    v10 = *(a1 + 104);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v9, OS_SIGNPOST_INTERVAL_END, v10, "TranslateTokens", "Offline: Finished translating", buf, 2u);
    }

    v11 = v6[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109___LTOfflineTranslationEngine__translateString_isFinal_withContext_toLocale_withSpans_stabilizer_completion___block_invoke_33;
    block[3] = &unk_2789B7068;
    objc_copyWeak(&v25, (a1 + 96));
    v19 = v3;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v20 = v17;
    v21 = v16;
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    v24 = *(a1 + 88);
    dispatch_async(v11, block);

    objc_destroyWeak(&v25);
  }
}

void __109___LTOfflineTranslationEngine__translateString_isFinal_withContext_toLocale_withSpans_stabilizer_completion___block_invoke_33(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _handleTranslationResults:*(a1 + 32) withContext:*(a1 + 40) sourceString:*(a1 + 48) sourceSpans:*(a1 + 56) stabilizer:*(a1 + 64)];
    if (!v5)
    {
      v6 = _LTOSLogTranslationEngine(0, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Unable to create a translation result from EMT results; returning result without any translations", &v28, 2u);
      }

      v5 = [MEMORY[0x277CE1C18] resultWithLocale:*(a1 + 72) translations:MEMORY[0x277CBEBF8]];
    }

    [v5 setRoute:1];
    [v5 setSourceString:*(a1 + 48)];
    if ([*(a1 + 40) censorSpeech])
    {
      v7 = v3[5];
      if (v7)
      {
        v8 = [v5 locale];
        v9 = [v7 objectForKeyedSubscript:v8];

        v10 = [v9 sanitizedStringForString:*(a1 + 48)];
        [v5 setSanitizedSourceString:v10];
      }
    }

    v11 = [v5 translations];
    v12 = [v11 firstObject];

    v13 = *(a1 + 80);
    v32 = @"bestConfidence";
    v14 = MEMORY[0x277CCABB0];
    [v12 confidence];
    v15 = [v14 numberWithDouble:?];
    v33[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v13 addFieldsFromDictionary:v16];

    v17 = *(a1 + 80);
    v30 = @"bestTranslation";
    v18 = [v12 formattedString];
    v19 = v18;
    v20 = &stru_284834138;
    if (v18)
    {
      v20 = v18;
    }

    v31 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v17 addFieldsFromDictionary:v21 internalOnly:1];

    v24 = _LTOSLogTranslationEngine(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v5 translations];
      v26 = [v25 firstObject];
      v27 = [v26 formattedString];
      v28 = 138739971;
      v29 = v27;
      _os_log_impl(&dword_232E53000, v24, OS_LOG_TYPE_INFO, "Finished translating: %{sensitive}@", &v28, 0xCu);
    }

    [*(a1 + 80) sendLazy];
    (*(*(a1 + 88) + 16))();
  }
}

id __61___LTOfflineTranslationEngine__paragraphResultFromSentences___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 translations];
  v3 = [v2 firstObject];
  v4 = [v3 formattedString];

  return v4;
}

id __61___LTOfflineTranslationEngine__paragraphResultFromSentences___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 translations];
  v3 = [v2 firstObject];
  v4 = [v3 romanization];

  return v4;
}

id __61___LTOfflineTranslationEngine__paragraphResultFromSentences___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 translations];
  v5 = [v4 firstObject];

  v6 = [v5 sanitizedFormattedString];
  v7 = v6;
  *(*(*(a1 + 32) + 8) + 24) |= v6 != 0;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 formattedString];
  }

  v9 = v8;

  return v9;
}

id __68___LTOfflineTranslationEngine__concatenatedAlignmentsFromSentences___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 translations];
  v3 = [v2 firstObject];
  v4 = [v3 formattedString];

  return v4;
}

void __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = _LTOSLogTranslationEngine(WeakRetained, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138739971;
      v19 = v5;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Translating sentence with offline engine: %{sensitive}@", buf, 0xCu);
    }

    v11 = [v5 text];
    v12 = [*(a1 + 32) isFinal];
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = [v5 spans];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_55;
    v16[3] = &unk_2789B7100;
    v17 = v6;
    [v9 _translateString:v11 isFinal:v12 withContext:v14 toLocale:v13 withSpans:v15 stabilizer:0 completion:v16];
  }
}

void __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = _LTOSLogTranslationEngine(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_2_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v11 = [WeakRetained _paragraphResultFromSentences:v5];
      v12 = [*(a1 + 32) identifier];
      [v11 setIdentifier:v12];

      v13 = [*(a1 + 32) text];
      [v11 setSourceString:v13];

      if ([*(a1 + 40) censorSpeech])
      {
        v14 = *(v9 + 5);
        if (v14)
        {
          v15 = [*(v9 + 21) sourceLocale];
          v16 = [v14 objectForKeyedSubscript:v15];

          v17 = [*(a1 + 32) text];
          v18 = [v16 sanitizedStringForString:v17];
          [v11 setSanitizedSourceString:v18];
        }
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = _LTOSLogTranslationEngine(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v5 text];
    *buf = 138739971;
    v18 = v9;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Translating paragraph with offline engine: %{sensitive}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke_59;
    v13[3] = &unk_2789B7178;
    v15 = *(a1 + 48);
    v14 = v5;
    v16 = v6;
    [WeakRetained _translateParagraph:v14 withContext:v11 toLocale:v12 completion:v13];
  }
}

void __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    v8 = _LTOSLogTranslationEngine(0, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Finished translating paragraph with offline engine", v11, 2u);
    }
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) identifier];
  (*(v9 + 16))(v9, v10, v5, v7);

  (*(*(a1 + 48) + 16))();
}

void __90___LTOfflineTranslationEngine__translate_withContext_toLocale_paragraphResult_completion___block_invoke_60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = _LTOSLogTranslationEngine(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Finished translation with offline engine, sending analytics event", v7, 2u);
  }

  [*(a1 + 32) sendLazy];
  (*(*(a1 + 40) + 16))();
}

void __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v3 = [a1[4] text];
    v4 = [a1[5] localePair];
    v5 = [v4 targetLocale];

    v6 = [a1[4] isFinal];
    v8 = a1[5];
    v7 = a1[6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2;
    v11[3] = &unk_2789B71F0;
    objc_copyWeak(&v17, a1 + 8);
    v16 = a1[7];
    v9 = v3;
    v12 = v9;
    v10 = v5;
    v13 = v10;
    v14 = a1[4];
    v15 = a1[6];
    v18 = v6;
    [WeakRetained _translateString:v9 isFinal:v6 withContext:v8 toLocale:v10 withSpans:0 stabilizer:v7 completion:v11];

    objc_destroyWeak(&v17);
  }
}

void __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = _LTOSLogSpeech(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2_cold_1();
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      if (v5)
      {
        v11 = [v5 translations];
        v12 = [v11 firstObject];
        v13 = [v12 formattedString];

        if (!v13)
        {
          v14 = [v5 disambiguableResult];
          v13 = [v14 targetText];
        }

        v15 = objc_alloc(MEMORY[0x277CE1BC8]);
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = [*(a1 + 48) isFinal];
        v19 = [*(a1 + 48) sourceIdentifier];
        v20 = [v15 initWithText:v13 sourceText:v16 locale:v17 isFinal:v18 sourceIdentifier:v19];

        v21 = objc_alloc(MEMORY[0x277CE1BB8]);
        v22 = [*(a1 + 56) stableSegments];
        v23 = [v21 initWithOutput:v20 stableSegments:v22];

        if (*(a1 + 80) == 1)
        {
          [*(a1 + 56) reset];
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v13 = [MEMORY[0x277CCA9B8] ltd_invalidResultError];
        v25 = _LTOSLogSpeech(v13, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2_cold_2();
        }

        (*(*(a1 + 64) + 16))();
      }
    }
  }
}

void __72___LTOfflineTranslationEngine_translateSentence_withContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if ([*(a1 + 32) censorSpeech])
    {
      [*(a1 + 40) _loadEtiquetteSanitizersForTaskHint:{objc_msgSend(*(a1 + 32), "taskHint")}];
    }

    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) isFinal];
    v5 = *(a1 + 32);
    v6 = [v5 localePair];
    v7 = [v6 targetLocale];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72___LTOfflineTranslationEngine_translateSentence_withContext_completion___block_invoke_2;
    v8[3] = &unk_2789B7100;
    v9 = *(a1 + 56);
    [WeakRetained _translateString:v3 isFinal:v4 withContext:v5 toLocale:v7 withSpans:0 stabilizer:0 completion:v8];
  }
}

void __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke(id *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  if (WeakRetained)
  {
    v2 = [a1[4] censorSpeech];
    if (v2)
    {
      v2 = [a1[5] _loadEtiquetteSanitizersForTaskHint:{objc_msgSend(a1[4], "taskHint")}];
    }

    v4 = _LTOSLogTranslationEngine(v2, v3);
    v5 = os_signpost_id_generate(v4);
    v6 = v4;
    v7 = v6;
    v31 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = [a1[6] count];
      *buf = 134217984;
      v48 = v8;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "TranslateParagraphs", "Offline: Translating %zu paragraphs", buf, 0xCu);
    }

    v33 = a1;

    v9 = [a1[4] localePair];
    v32 = [v9 targetLocale];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v33[6];
    v10 = 0;
    v11 = 0;
    v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v12)
    {
      v13 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          v16 = [v15 text];
          v17 = [v16 length];

          v18 = objc_alloc(MEMORY[0x277CCA898]);
          v19 = [v15 text];
          v20 = [v18 initWithString:v19];

          v21 = [v20 lt_sentences];
          v22 = [v21 count];

          v10 += v17;
          v11 += v22;
        }

        v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v12);
    }

    v23 = WeakRetained[15];
    v24 = [v33[4] logIdentifier];
    v25 = [v23 sendFrameworkRequestWithInvocationId:v24 qssSessionId:0 requestType:1 requestRoute:2 requestSize:v10];

    v26 = v33[4];
    v27 = v33[6];
    v28 = v33[7];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_64;
    v36[3] = &unk_2789B7240;
    v29 = v31;
    v37 = v29;
    v38 = v25;
    v40 = v5;
    v41 = v11;
    v39 = v33[8];
    v30 = v25;
    [WeakRetained _translate:v27 withContext:v26 toLocale:v32 paragraphResult:v28 completion:v36];
  }
}

void __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v5, OS_SIGNPOST_INTERVAL_END, v6, "TranslateParagraphs", "Offline: Finished translating", buf, 2u);
  }

  v7 = [*(a1 + 40) responseReceived:*(a1 + 64)];
  if (v3)
  {
    v9 = _LTOSLogTranslationEngine(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_64_cold_1();
    }
  }

  else
  {
    v10 = _LTOSLogTranslationEngine(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Successfully finished all paragraph translations with offline engine", v11, 2u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __55___LTOfflineTranslationEngine_cancelSpeechTranslation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _performCancelRecognition:*(a1 + 40)];
  }
}

void __50___LTOfflineTranslationEngine_addSpeechAudioData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[3] addSpeechAudioData:*(a1 + 32)];
  }
}

void __39___LTOfflineTranslationEngine_endpoint__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 104) = 1;
    [*(WeakRetained + 3) endAudio];
  }
}

uint64_t __62___LTOfflineTranslationEngine_setLanguagesRecognized_context___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = WeakRetained + 11;
    if (([WeakRetained[11] isEqual:a1[4]] & 1) == 0 && (objc_msgSend(a1[5], "forceSourceLocale") & 1) == 0)
    {
      [v5 _translatePrepare:a1[4]];
    }

    objc_storeStrong(v3, a1[4]);
    objc_storeStrong(v5 + 12, a1[6]);
    if (![_LTOfflineTranslationEngine _needToWaitForBothFinalTranslationResultsWithContext:a1[5] lidResult:a1[6]])
    {
      [v5[3] setLanguagesRecognized:a1[6]];
    }

    if (v5[10] && [v5[12] isFinal])
    {
      dispatch_group_leave(v5[10]);
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __65___LTOfflineTranslationEngine__waitForLIDWithContext_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (![a1[4] autodetectLanguage] || (objc_msgSend(a1[4], "forceSourceLocale") & 1) != 0)
    {
LABEL_4:
      (*(a1[5] + 2))();
      goto LABEL_5;
    }

    v3 = *(WeakRetained + 12);
    if (v3)
    {
      v4 = [v3 isFinal];
      if (v4)
      {
        v6 = _LTOSLogTranslationEngine(v4, v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Already got final LID result, forwarding...", buf, 2u);
        }

        goto LABEL_4;
      }
    }

    if (!*(WeakRetained + 10))
    {
      v7 = dispatch_group_create();
      v8 = *(WeakRetained + 10);
      *(WeakRetained + 10) = v7;

      dispatch_group_enter(*(WeakRetained + 10));
      v11 = _LTOSLogTranslationEngine(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Waiting for LID result", buf, 2u);
      }

      v12 = *(WeakRetained + 10);
      v13 = *(WeakRetained + 7);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65___LTOfflineTranslationEngine__waitForLIDWithContext_completion___block_invoke_67;
      v14[3] = &unk_2789B7330;
      v14[4] = WeakRetained;
      v15 = a1[5];
      dispatch_group_notify(v12, v13, v14);
    }
  }

LABEL_5:
}

uint64_t __65___LTOfflineTranslationEngine__waitForLIDWithContext_completion___block_invoke_67(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogTranslationEngine(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Received final LID result, continue with wait block", v7, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  return (*(*(a1 + 40) + 16))();
}

void __60___LTOfflineTranslationEngine_speak_withContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60___LTOfflineTranslationEngine_speak_withContext_completion___block_invoke_2;
    block[3] = &unk_2789B7380;
    v12 = v6;
    v14 = *(a1 + 32);
    v13 = v5;
    dispatch_async(v9, block);
    v10 = v8[4];
    v8[4] = 0;
  }
}

void __60___LTOfflineTranslationEngine_speak_withContext_completion___block_invoke_2(void *a1)
{
  v1 = a1[6];
  if (a1[4])
  {
    v5 = [MEMORY[0x277CCA9B8] lt_offlineTTSErrorWithError:?];
    (*(v1 + 16))(v1, 0);
  }

  else
  {
    v2 = a1[5];
    v3 = *(v1 + 16);
    v4 = a1[6];

    v3(v4, v2);
  }
}

void __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CE1C18];
  v3 = [*(a1 + 32) formattedString];
  v4 = [*(a1 + 32) sanitizedFormattedString];
  v7 = [v2 passthroughResultWithString:v3 sanitizedString:v4 locale:*(a1 + 40)];

  v5 = [*(a1 + 48) uniqueID];
  [v7 setIdentifier:v5];

  v6 = [*(a1 + 32) sanitizedFormattedString];
  [v7 setSanitizedSourceString:v6];

  (*(*(a1 + 56) + 16))();
}

void __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[7];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke_3;
    v7[3] = &unk_2789B73F8;
    v8 = *(a1 + 32);
    v9 = v5;
    v10 = v3;
    v11 = *(a1 + 40);
    v13 = *(a1 + 64);
    v12 = *(a1 + 48);
    dispatch_async(v6, v7);
  }
}

void __73___LTOfflineTranslationEngine__translate_withContext_isFinal_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) bestTranscription];
  v7 = [v2 formattedString];

  v3 = [*(a1 + 40) _handleTranslationResults:*(a1 + 48) withContext:*(a1 + 56) sourceString:v7 sourceSpans:0 stabilizer:0];
  v4 = [*(a1 + 56) uniqueID];
  [v3 setIdentifier:v4];

  v5 = [*(a1 + 32) bestTranscription];
  v6 = [v5 sanitizedFormattedString];
  [v3 setSanitizedSourceString:v6];

  [v3 setIsFinal:*(a1 + 72)];
  (*(*(a1 + 64) + 16))();
}

void __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) translationDidFinishWithError:?];
  if (v3)
  {
    [*(a1 + 40) addFieldsWithError:v3];
  }

  [*(a1 + 40) sendLazy];
}

void __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_2(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  if (WeakRetained)
  {
    [a1[4] taskHint];
    v3 = _LTTranslationModelTaskString();
    v4 = [WeakRetained _loadTranslatorForTask:v3];
    if (WeakRetained[14])
    {
      (*(a1[9] + 2))();
    }

    else
    {
      v5 = _LTOSLogTranslationEngine(v4, 0);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Starting TTS translation with offline engine", buf, 2u);
      }

      v8 = _LTOSLogTranslationEngine(v6, v7);
      v9 = os_signpost_id_generate(v8);
      v10 = v8;
      v11 = v10;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        v12 = a1[5];
        *buf = 138739971;
        v29 = v12;
        _os_signpost_emit_with_name_impl(&dword_232E53000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "OfflineTranslation", "Offline: Translating text: %{sensitive}@", buf, 0xCu);
      }

      [a1[6] timestampWithName:@"mtStartTime"];
      v13 = WeakRetained[15];
      v14 = [a1[4] logIdentifier];
      v15 = [v13 sendFrameworkRequestWithInvocationId:v14 qssSessionId:0 requestType:2 requestRoute:2 requestSize:{objc_msgSend(a1[5], "length")}];

      v17 = a1[4];
      v16 = a1[5];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_75;
      v20[3] = &unk_2789B7470;
      v18 = v11;
      v21 = v18;
      v27 = v9;
      v22 = a1[7];
      v23 = v15;
      v24 = a1[6];
      v25 = a1[8];
      v26 = a1[9];
      v19 = v15;
      [WeakRetained translateSentence:v16 withContext:v17 completion:v20];
    }
  }
}

void __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_75(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v28 = a3;
  v6 = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 40);
    *buf = 138543362;
    v34 = v9;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v7, OS_SIGNPOST_INTERVAL_END, v8, "OfflineTranslation", "Offline: Finished translating speech result, (id: %{public}@)", buf, 0xCu);
  }

  [*(a1 + 48) responseReceived:0];
  v10 = [*(a1 + 56) timestampWithName:@"mtResultTime"];
  if (v28)
  {
    v12 = _LTOSLogTranslationEngine(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_75_cold_1();
    }
  }

  v13 = [v5 translations];
  v14 = [v13 firstObject];

  v15 = *(a1 + 56);
  v31[0] = @"mtLocale";
  v16 = [v5 locale];
  v17 = [v16 _ltLocaleIdentifier];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_284834138;
  }

  v31[1] = @"mtBestConfidence";
  v32[0] = v19;
  v20 = MEMORY[0x277CCABB0];
  [v14 confidence];
  v21 = [v20 numberWithDouble:?];
  v32[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [v15 addFieldsFromDictionary:v22];

  v23 = *(a1 + 56);
  v29 = @"mtBestText";
  v24 = [v14 formattedString];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &stru_284834138;
  }

  v30 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v23 addFieldsFromDictionary:v27 internalOnly:1];

  [*(a1 + 64) translatorDidTranslate:v5];
  (*(*(a1 + 72) + 16))();
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(WeakRetained + 7));
    if (([*(*(*(a1 + 64) + 8) + 40) count] > 1 || !+[_LTOfflineTranslationEngine _needToWaitForBothFinalTranslationResultsWithContext:lidResult:](_LTOfflineTranslationEngine, "_needToWaitForBothFinalTranslationResultsWithContext:lidResult:", *(a1 + 32), *(*(a1 + 40) + 96))) && *(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v5 = *(*(a1 + 80) + 8);
      if ((*(v5 + 24) & 1) == 0)
      {
        *(v5 + 24) = 1;
        if (v4[72] != 1 || v4[73] == 1)
        {
          [*(a1 + 48) translationDidFinishWithError:v6];
        }

        if (v6)
        {
          [*(a1 + 56) addFieldsWithError:v6];
        }

        [*(a1 + 56) sendLazy];
      }
    }
  }
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[7]);
    v10 = _LTOSLogTranslationEngine(v8, v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Starting speech translation with offline engine", buf, 2u);
    }

    v13 = _LTOSLogTranslationEngine(v11, v12);
    v14 = os_signpost_id_generate(v13);
    v15 = v13;
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = *(a1 + 32);
      *buf = 138543362;
      v38 = v17;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "OfflineTranslation", "Offline: Translating speech result, (id: %{public}@)", buf, 0xCu);
    }

    if (a3)
    {
      [*(a1 + 40) timestampWithName:@"mtStartTime"];
    }

    v18 = *(a1 + 48);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_92;
    v24[3] = &unk_2789B7510;
    v19 = v16;
    v25 = v19;
    v35 = v14;
    v26 = *(a1 + 32);
    v27 = v7;
    v36 = a3;
    v28 = *(a1 + 40);
    v20 = *(a1 + 56);
    v21 = *(a1 + 72);
    v29 = v20;
    v33 = v21;
    v30 = v5;
    v22 = *(a1 + 48);
    v23 = *(a1 + 80);
    v31 = v22;
    v34 = v23;
    v32 = *(a1 + 64);
    [(dispatch_queue_t *)v7 _translate:v30 withContext:v18 isFinal:1 completion:v24];
  }
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_92(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 112);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 40);
    *buf = 138543362;
    v26 = v7;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v5, OS_SIGNPOST_INTERVAL_END, v6, "OfflineTranslation", "Offline: Finished translating speech result, (id: %{public}@)", buf, 0xCu);
  }

  v8 = *(*(a1 + 48) + 56);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_93;
  v14[3] = &unk_2789B74E8;
  v24 = *(a1 + 120);
  v15 = *(a1 + 56);
  v16 = v3;
  v17 = *(a1 + 48);
  v9 = *(a1 + 64);
  v10 = *(a1 + 96);
  v18 = v9;
  v22 = v10;
  v19 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 104);
  v20 = v11;
  v23 = v12;
  v21 = *(a1 + 88);
  v13 = v3;
  dispatch_async(v8, v14);
}

uint64_t __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_93(uint64_t a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == 1)
  {
    [*(a1 + 32) timestampWithName:@"mtResultTime"];
    v2 = [*(a1 + 40) translations];
    v3 = [v2 firstObject];

    v23[0] = @"mtLocale";
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) locale];
    v6 = [v5 _ltLocaleIdentifier];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_284834138;
    }

    v23[1] = @"mtBestConfidence";
    v24[0] = v8;
    v9 = MEMORY[0x277CCABB0];
    [v3 confidence];
    v10 = [v9 numberWithDouble:?];
    v24[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v4 addFieldsFromDictionary:v11];

    v12 = *(a1 + 32);
    v21 = @"mtBestText";
    v13 = [v3 formattedString];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_284834138;
    }

    v22 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v12 addFieldsFromDictionary:v16 internalOnly:1];
  }

  if ((*(*(a1 + 48) + 72) & 1) == 0)
  {
    [*(a1 + 56) translatorDidTranslate:*(a1 + 40)];
  }

  v17 = *(a1 + 40);
  v18 = *(*(*(a1 + 88) + 8) + 40);
  v19 = [*(a1 + 64) locale];
  [v18 setObject:v17 forKeyedSubscript:v19];

  if ([*(*(*(a1 + 88) + 8) + 40) count] == 2 || !+[_LTOfflineTranslationEngine _needToWaitForBothFinalTranslationResultsWithContext:lidResult:](_LTOfflineTranslationEngine, "_needToWaitForBothFinalTranslationResultsWithContext:lidResult:", *(a1 + 72), *(*(a1 + 48) + 96)))
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
  }

  return (*(*(a1 + 80) + 16))();
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2_96(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[7]);
    v8 = _LTOSLogTranslationEngine(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Starting partial speech translation with offline engine", buf, 2u);
    }

    v9 = a1[4];
    v10 = [v3 endOfUtterance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_97;
    v11[3] = &unk_2789B7560;
    v11[4] = v5;
    v12 = v3;
    v13 = a1[5];
    v14 = a1[4];
    [(dispatch_queue_t *)v5 _translate:v12 withContext:v9 isFinal:v10 completion:v11];
  }
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_97(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(*(a1 + 32) + 72) & 1) == 0)
  {
    [v3 setEndOfUtterance:{objc_msgSend(*(a1 + 40), "endOfUtterance")}];
    [*(a1 + 48) translatorDidTranslate:v3];
    if ([*(a1 + 56) enableStreamingSpeechTranslation])
    {
      if ([v3 isFinal])
      {
        if ([*(*(a1 + 32) + 136) count])
        {
          v4 = *(a1 + 40);
          v5 = [*(*(a1 + 32) + 136) firstObject];

          if (v4 == v5)
          {
            v6 = [*(*(a1 + 32) + 136) removeObjectAtIndex:0];
            v8 = _LTOSLogTranslationEngine(v6, v7);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              v10 = *(a1 + 40);
              *buf = 134217984;
              v29 = v10;
              _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Removing Barrier Streaming Speech Result: %p", buf, 0xCu);
            }

            *&v9 = 134217984;
            v27 = v9;
            while ([*(*(a1 + 32) + 136) count])
            {
              v11 = [*(*(a1 + 32) + 136) firstObject];
              v12 = [v11 endOfUtterance];

              if (v12)
              {
                break;
              }

              v13 = *(a1 + 48);
              v14 = [*(*(a1 + 32) + 136) firstObject];
              [v13 speechRecognitionResult:v14];

              v17 = _LTOSLogTranslationEngine(v15, v16);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v18 = [*(*(a1 + 32) + 136) firstObject];
                *buf = v27;
                v29 = v18;
                _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "Deliver Stashed Streaming Speech Result: %p", buf, 0xCu);
              }

              [*(*(a1 + 32) + 136) removeObjectAtIndex:0];
            }

            if ([*(*(a1 + 32) + 136) count])
            {
              v19 = [*(*(a1 + 32) + 136) firstObject];
              v20 = [v19 endOfUtterance];

              if (v20)
              {
                v21 = *(a1 + 48);
                v22 = [*(*(a1 + 32) + 136) firstObject];
                [v21 speechRecognitionResult:v22];

                v25 = _LTOSLogTranslationEngine(v23, v24);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  v26 = [*(*(a1 + 32) + 136) firstObject];
                  *buf = v27;
                  v29 = v26;
                  _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, "Deliver Stashed Barrier Streaming Speech Result: %p", buf, 0xCu);
                }
              }
            }
          }
        }
      }
    }
  }
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_99(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (!WeakRetained)
  {
    goto LABEL_44;
  }

  dispatch_assert_queue_V2(*(WeakRetained + 7));
  v69 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  obj = [v3 transcriptions];
  v4 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v4)
  {
    v6 = *v67;
    *&v5 = 134218496;
    v56 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v67 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v66 + 1) + 8 * v7);
        if ([v3 isFinal])
        {
          v9 = [v3 locale];
          v10 = *(WeakRetained + 2);
          v11 = [v3 locale];
          v12 = [v10 speechModelVersionForLocale:v11];
          v13 = _LTPreferencesOfflineASRConfidenceThreshold(v9, v12);

          v16 = _LTOSLogTranslationEngine(v14, v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(WeakRetained + 2);
            v27 = [v3 locale];
            v28 = [v26 speechModelVersionForLocale:v27];
            *buf = 138543362;
            v71 = v28;
            _os_log_debug_impl(&dword_232E53000, v16, OS_LOG_TYPE_DEBUG, "ModelVersion %{public}@", buf, 0xCu);
          }

          if (([*(a1 + 32) asrConfidenceThreshold] & 0x8000000000000000) == 0)
          {
            v13 = [*(a1 + 32) asrConfidenceThreshold];
          }

          [v8 confidence];
          v18 = [v8 setLowConfidence:v17 <= v13];
          v20 = _LTOSLogTranslationEngine(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [v8 confidence];
            v30 = v29;
            v31 = [v8 isLowConfidence];
            *buf = v56;
            v71 = v30;
            v72 = 1024;
            v73 = v31;
            v74 = 2048;
            v75 = v13;
            _os_log_debug_impl(&dword_232E53000, v20, OS_LOG_TYPE_DEBUG, "LowConfidence (%f): %d with threshold %ld", buf, 0x1Cu);
          }
        }

        if ([*(a1 + 32) censorSpeech])
        {
          v21 = *(WeakRetained + 5);
          if (v21)
          {
            v22 = [v8 locale];
            v23 = [v21 objectForKeyedSubscript:v22];

            v24 = [v8 formattedString];
            v25 = [v23 sanitizedStringForString:v24];
            [v8 setSanitizedFormattedString:v25];
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v4);
  }

  if ((*(WeakRetained + 72) & 1) == 0)
  {
    if (![*(a1 + 32) enableStreamingSpeechTranslation])
    {
      [*(a1 + 40) speechRecognitionResult:v3];
      goto LABEL_32;
    }

    if ([*(WeakRetained + 17) count])
    {
      v32 = [*(WeakRetained + 17) addObject:v3];
      v34 = _LTOSLogTranslationEngine(v32, v33);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        goto LABEL_32;
      }

      *buf = 134217984;
      v71 = v3;
      v35 = "Stashing Pending Streaming Speech Result: %p";
      goto LABEL_31;
    }

    v36 = [*(a1 + 40) speechRecognitionResult:v3];
    v38 = _LTOSLogTranslationEngine(v36, v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v71 = v3;
      _os_log_impl(&dword_232E53000, v38, OS_LOG_TYPE_INFO, "Deliver Streaming Speech Result: %p", buf, 0xCu);
    }

    if ([v3 endOfUtterance])
    {
      v39 = [*(WeakRetained + 17) addObject:v3];
      v34 = _LTOSLogTranslationEngine(v39, v40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v71 = v3;
        v35 = "Adding Barrier Pending Streaming Speech Result: %p";
LABEL_31:
        _os_log_impl(&dword_232E53000, v34, OS_LOG_TYPE_INFO, v35, buf, 0xCu);
      }
    }
  }

LABEL_32:
  if ([v3 isFinal])
  {
    v41 = *(*(*(a1 + 88) + 8) + 40);
    v42 = [v3 locale];
    [v41 setObject:v3 forKeyedSubscript:v42];

    v43 = *(a1 + 48);
    v44 = *(a1 + 32);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100;
    v59[3] = &unk_2789B75B0;
    v59[4] = WeakRetained;
    v45 = v44;
    v46 = *(a1 + 88);
    v60 = v45;
    v64 = v46;
    v47 = *(a1 + 56);
    v48 = *(a1 + 96);
    v61 = v47;
    v65 = v48;
    v62 = *(a1 + 72);
    v63 = *(a1 + 80);
    [v43 _waitForLIDWithContext:v45 completion:v59];
  }

  else if ([v3 isStable])
  {
    if ([*(a1 + 32) autodetectLanguage])
    {
      v49 = *(WeakRetained + 11);
      v50 = [v3 locale];
      if (([v49 _ltEqual:v50] & 1) != 0 || (v51 = *(WeakRetained + 12)) != 0 && !objc_msgSend(v51, "isConfident"))
      {
      }

      else
      {
        if (![*(a1 + 32) forceSourceLocale])
        {

          goto LABEL_44;
        }

        v52 = [*(a1 + 32) localePair];
        v53 = [v52 sourceLocale];
        v54 = [v3 locale];
        v55 = [v53 _ltEqual:v54];

        if ((v55 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    (*(*(a1 + 64) + 16))();
  }

LABEL_44:
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100(uint64_t a1)
{
  v45[4] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 56));
  v2 = [_LTOfflineTranslationEngine _needToWaitForBothFinalTranslationResultsWithContext:*(a1 + 40) lidResult:*(*(a1 + 32) + 96)];
  v3 = [*(a1 + 32) _getBestRecognitionResult:*(*(*(a1 + 72) + 8) + 40) context:*(a1 + 40)];
  v5 = v3;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v2;
  }

  if (v6)
  {
    if (v3)
    {
      v7 = [*(a1 + 48) timestampWithName:@"asrResultTime"];
      v9 = _LTOSLogTranslationEngine(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [v5 locale];
        [objc_claimAutoreleasedReturnValue() localeIdentifier];
        objc_claimAutoreleasedReturnValue();
        __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100_cold_2();
      }

      v10 = *(a1 + 48);
      v44[0] = @"asrLocale";
      v11 = [v5 locale];
      v12 = [v11 _ltLocaleIdentifier];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = @"unknown";
      }

      v44[1] = @"asrBestConfidence";
      v45[0] = v14;
      v15 = MEMORY[0x277CCABB0];
      v16 = [v5 bestTranscription];
      [v16 confidence];
      v17 = [v15 numberWithDouble:?];
      v45[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      [v10 addFieldsFromDictionary:v18];

      v19 = *(a1 + 48);
      v42 = @"asrBestText";
      v20 = [v5 bestTranscription];
      v21 = [v20 formattedString];
      v22 = v21;
      v23 = &stru_284834138;
      if (v21)
      {
        v23 = v21;
      }

      v43 = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [v19 addFieldsFromDictionary:v24 internalOnly:1];
    }

    if (v2)
    {
      v25 = [*(*(*(a1 + 72) + 8) + 40) allValues];
    }

    else
    {
      v41 = v5;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v28)
    {
      v29 = *v37;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v36 + 1) + 8 * i);
          v32 = *(*(*(a1 + 80) + 8) + 40);
          v33 = [v31 locale];
          LOBYTE(v32) = [v32 containsObject:v33];

          if ((v32 & 1) == 0)
          {
            (*(*(a1 + 56) + 16))(*(a1 + 56), v31, v31 == v5);
            v34 = *(*(*(a1 + 80) + 8) + 40);
            v35 = [v31 locale];
            [v34 addObject:v35];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v28);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v26 = _LTOSLogTranslationEngine(v3, v4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100_cold_1();
    }
  }
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_116(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[16];
    WeakRetained[16] = 0;

    v7 = _LTOSLogTranslationEngine(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3[17] count];
      *buf = 134217984;
      v29 = v8;
      _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Clear Pending Streaming Speech Results. Count: %lu", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CBEB18] array];
    v10 = v3[17];
    v3[17] = v9;

    *(v3 + 72) = 0;
    [v3 _loadRecognizersWithContext:a1[4]];
    if ([a1[4] censorSpeech])
    {
      [v3 _loadEtiquetteSanitizersForTaskHint:{objc_msgSend(a1[4], "taskHint")}];
    }

    v11 = v3[14];
    if (v11)
    {
      if (*(v3 + 72) != 1 || *(v3 + 73) == 1)
      {
        [a1[5] translationDidFinishWithError:?];
        v11 = v3[14];
      }

      [a1[6] addFieldsWithError:v11];
      [a1[6] sendLazy];
    }

    else
    {
      [a1[4] taskHint];
      v12 = _LTTranslationModelTaskString();
      [v3 _loadTranslatorForTask:v12];
      v13 = v3[12];
      v3[12] = 0;

      v14 = v3[10];
      v3[10] = 0;

      v15 = v3[11];
      v3[11] = 0;

      *(v3 + 104) = 0;
      if ([a1[4] autodetectLanguage])
      {
        v16 = 0;
      }

      else
      {
        v17 = [a1[4] localePair];
        v16 = [v17 sourceLocale];
      }

      if (![a1[4] autodetectLanguage] || objc_msgSend(a1[4], "forceSourceLocale"))
      {
        v18 = [a1[4] localePair];
        v19 = [v18 sourceLocale];
        [v3 _translatePrepare:v19];
      }

      v20 = v3[3];
      v21 = [a1[4] autoEndpoint];
      v22 = [a1[4] enableStreamingSpeechTranslation];
      v23 = [a1[4] enableMultiFieldInput];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_117;
      v24[3] = &unk_2789B7628;
      v24[4] = v3;
      v25 = a1[5];
      v26 = a1[6];
      v27 = a1[7];
      [v20 startRecognitionForLocale:v16 autoEndpoint:v21 enableStreamingSpeechTranslation:v22 enableMultiFieldInput:v23 resultHandler:v24];
    }
  }
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 56);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2_118;
  v13[3] = &unk_2789B7600;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v17 = *(a1 + 48);
  v10 = *(a1 + 56);
  v18 = v5;
  v19 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v9, v13);
}

uint64_t __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_2_118(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (*(v3 + 72) != 1 || *(v3 + 73) == 1)
    {
      [*(a1 + 48) translationDidFinishWithError:?];
      v2 = *(a1 + 32);
    }

    [*(a1 + 56) addFieldsWithError:v2];
    v4 = *(a1 + 56);

    return [v4 sendLazy];
  }

  else
  {
    v6 = *(*(a1 + 72) + 16);

    return v6();
  }
}

void __39___LTOfflineTranslationEngine_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained[3] endAudio];
    [WeakRetained[4] cancel];
  }
}

void __49___LTOfflineTranslationEngine_cancelRecognition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _performCancelRecognition:*(a1 + 40)];
  }
}

void __83___LTOfflineTranslationEngine__translateParagraph_withContext_toLocale_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __85___LTOfflineTranslationEngine_translateStreamingInput_context_stabilizer_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80___LTOfflineTranslationEngine_translate_withContext_paragraphResult_completion___block_invoke_64_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __85___LTOfflineTranslationEngine_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_75_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __74___LTOfflineTranslationEngine_startSpeechTranslationWithContext_delegate___block_invoke_100_cold_2()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1(v2, v3, 5.8381e-34);
  _os_log_debug_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEBUG, "Best recognition: %{public}@", v5, 0xCu);
}

@end