@interface LTLanguageDetector
@end

@implementation LTLanguageDetector

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 50) == 1)
    {
      v5 = _LTOSLogLID(WeakRetained, v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_4();
      }
    }

    else
    {
      v6 = WeakRetained[9];
      v7 = (a1 + 32);
      v8 = [*(a1 + 32) locale];
      v9 = [v6 objectForKeyedSubscript:v8];

      v10 = [*(a1 + 32) modelVersion];
      if (v10)
      {
        v11 = v10;
        v12 = [*v7 modelVersion];

        if (v9 != v12)
        {
          v15 = _LTOSLogLID(v13, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_1((a1 + 32), v15);
          }

          v16 = [*v7 modelVersion];
          v17 = [v16 copy];
          v18 = *(v4 + 9);
          v19 = [*v7 locale];
          [v18 setObject:v17 forKeyedSubscript:v19];

          v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v21 = *(v4 + 7);
          v22 = [*v7 locale];
          [v21 setObject:v20 forKeyedSubscript:v22];
        }
      }

      if ([*v7 isFinal])
      {
        v23 = *v7;
        v24 = *(v4 + 8);
        v25 = [v23 locale];
        [v24 setObject:v23 forKeyedSubscript:v25];

        v28 = _LTOSLogLID(v26, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_3();
        }

        [v4 endAudio];
        if (_LTPreferencesFinalThresholdsLanguageDetectionResultWaitTime())
        {
          if ((*(v4 + 49) & 1) == 0)
          {
            v29 = _LTPreferencesFinalThresholdsLanguageDetectionResultWaitTime();
            if (v29 < _LTPreferencesFinalLanguageDetectionResultWaitTime())
            {
              v30 = *(v4 + 13);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_21;
              block[3] = &unk_2789B53F0;
              objc_copyWeak(&v51, (a1 + 40));
              dispatch_async(v30, block);
              objc_destroyWeak(&v51);
            }
          }
        }

        else
        {
          *(v4 + 49) = 1;
        }

        v43 = _LTPreferencesFinalLanguageDetectionResultWaitTime() == 0;
        if (([v4 haveFinalASRResults] & 1) == 0 && _LTPreferencesFinalLanguageDetectionResultWaitTime())
        {
          v44 = *(v4 + 13);
          v45 = MEMORY[0x277D85DD0];
          v46 = 3221225472;
          v47 = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_23;
          v48 = &unk_2789B53F0;
          objc_copyWeak(&v49, (a1 + 40));
          dispatch_async(v44, &v45);
          objc_destroyWeak(&v49);
        }
      }

      else
      {
        v31 = *(v4 + 7);
        *(v4 + 51) = 1;
        v32 = [*v7 locale];
        v33 = [v31 objectForKeyedSubscript:v32];
        v34 = MEMORY[0x277CCABB0];
        v35 = [*v7 bestTranscription];
        [v35 confidence];
        v36 = [v34 numberWithDouble:?];
        [v33 addObject:v36];

        v39 = _LTOSLogLID(v37, v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_2((a1 + 32), v39, v4 + 7);
        }

        v40 = [*v7 bestTranscription];
        [v40 confidence];
        v42 = v41;

        v43 = 0;
        if (v42 > 0.0)
        {
          *(v4 + 52) = 1;
        }
      }

      [v4 sendFinalLanguageDetectionResult:{v43, v45, v46, v47, v48}];
    }
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _LTPreferencesFinalThresholdsLanguageDetectionResultWaitTime();
    v4 = dispatch_time(0, 1000000 * v3);
    v5 = WeakRetained[12];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2;
    block[3] = &unk_2789B53F0;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_after(v4, v5, block);
    objc_destroyWeak(&v7);
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogLID(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2_cold_1();
    }

    v3[49] = 1;
    [v3 sendFinalLanguageDetectionResult:0];
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _LTPreferencesFinalLanguageDetectionResultWaitTime();
    v4 = dispatch_time(0, 1000000 * v3);
    v5 = WeakRetained[12];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2_24;
    block[3] = &unk_2789B53F0;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_after(v4, v5, block);
    objc_destroyWeak(&v7);
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogLID(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_2_24_cold_1();
    }

    [v3 sendFinalLanguageDetectionResult:1];
  }
}

void __31___LTLanguageDetector_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 48) = 1;
    v4 = _LTOSLogLID(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __31___LTLanguageDetector_endAudio__block_invoke_cold_1();
    }

    [v3 sendFinalLanguageDetectionResult:0];
  }
}

void __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = (*(WeakRetained + 50) & 1) == 0 && (WeakRetained[17] || [WeakRetained[8] count] == 1);
    *(*(*(a1 + 40) + 8) + 24) = v4;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v5 = v3[17];
      if (v5)
      {
        v6 = [v5 setIsFinal:1];
        v8 = _LTOSLogLID(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke_cold_1();
        }
      }

      else
      {
        v9 = [v3[8] objectEnumerator];
        v10 = [v9 nextObject];
        v11 = [v10 locale];

        v14 = _LTOSLogLID(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke_cold_2(v14, v11);
        }

        v15 = objc_alloc(MEMORY[0x277CE1B08]);
        v19 = v11;
        v20[0] = &unk_284868248;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        v17 = [v15 initWithConfidences:v16 isConfident:objc_msgSend(v3 dominantLanguage:"isLowConfidencePair") ^ 1 isFinal:{v11, 1}];
        v18 = v3[17];
        v3[17] = v17;
      }

      [v3 sendLIDResult:*(*(a1 + 32) + 136)];
    }
  }
}

void __94___LTLanguageDetector_languageDetectorDidDetectLanguageWithConfidence_confidence_isConfident___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[16];
    v5 = [objc_alloc(MEMORY[0x277CE1B08]) initWithConfidences:*(a1 + 32) isConfident:*(a1 + 56) dominantLanguage:*(a1 + 40) isFinal:0];
    [v4 addObject:v5];

    v8 = _LTOSLogLID(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __94___LTLanguageDetector_languageDetectorDidDetectLanguageWithConfidence_confidence_isConfident___block_invoke_cold_1();
    }

    [v3 sendFinalLanguageDetectionResult:0];
    if (*(v3 + 51) == 1 && (*(v3 + 52) & 1) == 0)
    {
      v9 = [v3[16] lastObject];
      [v3 sendLIDResult:v9];
    }
  }
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 locale];
  v5 = [v4 localeIdentifier];
  LODWORD(v12) = 138543362;
  *(&v12 + 4) = v5;
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v6, v7, "Change in model-version triggers deletion of cached %{public}@ partial-confidences", v8, v9, v10, v11, v12, DWORD2(v12));
}

void __50___LTLanguageDetector_addSpeechRecognitionResult___block_invoke_cold_2(id *a1, void *a2, void **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = [v5 locale];
  v8 = [v7 localeIdentifier];
  v9 = [*a1 bestTranscription];
  [v9 confidence];
  v11 = v10;
  v12 = *a3;
  v13 = [*a1 locale];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = 138543874;
  v16 = v8;
  v17 = 2048;
  v18 = v11;
  v19 = 2048;
  v20 = [v14 count];
  _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Added %{public}@ partial-confidence: %f; new array length: %zu", &v15, 0x20u);
}

void __51___LTLanguageDetector_forceLanguageDetectionResult__block_invoke_cold_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 _ltLocaleIdentifier];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_5_1(&dword_232E53000, v5, v6, "Forcing language detection result to be %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end