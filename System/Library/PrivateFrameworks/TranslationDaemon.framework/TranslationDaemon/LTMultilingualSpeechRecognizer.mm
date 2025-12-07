@interface LTMultilingualSpeechRecognizer
@end

@implementation LTMultilingualSpeechRecognizer

void __76___LTMultilingualSpeechRecognizer_initWithModelURLs_modelVersions_taskHint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [_LTSpeechRecognizer alloc];
  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [(_LTSpeechRecognizer *)v7 initWithModelURL:v5 language:v6 modelVersion:v8 taskHint:*(a1 + 48)];

  [*(a1 + 40) setObject:v9 forKeyedSubscript:v6];
}

void __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = _LTOSLogSpeech(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_1(v6, v9);
    }

    objc_storeStrong((*(*(a1 + 96) + 8) + 40), a3);
    v10 = *(a1 + 32);
    v11 = v10;
    v12 = *(a1 + 112);
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v13 = *(a1 + 40);
      *buf = 138543618;
      v51 = v13;
      v52 = 2112;
      v53 = v6;
      _os_signpost_emit_with_name_impl(&dword_232E53000, v11, OS_SIGNPOST_INTERVAL_END, v12, "ASR", "Failed ASR (%{public}@) with error: %@", buf, 0x16u);
    }

    if (v5)
    {
      v14 = *(a1 + 48);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_5;
      block[3] = &unk_2789B6D38;
      v48 = *(a1 + 88);
      v47 = v5;
      dispatch_async(v14, block);
    }

    dispatch_group_leave(*(a1 + 56));
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_2(v9, v5);
    }

    if (*(a1 + 120) != 1 || ([v5 locale], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 64), "currentLocale"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, v17))
    {
      v18 = *(a1 + 48);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_7;
      v43[3] = &unk_2789B6D38;
      v45 = *(a1 + 88);
      v19 = v5;
      v44 = v19;
      dispatch_async(v18, v43);
      v20 = [v19 isFinal];
      if (v20)
      {
        v37 = 0;
        v22 = _LTOSLogSpeech(v20, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_3();
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v23 = *(a1 + 72);
        v24 = [v23 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v40;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v40 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v39 + 1) + 8 * i);
              v29 = [v28 language];
              v30 = [*(a1 + 80) language];
              v31 = [v29 isEqual:v30];

              if ((v31 & 1) == 0)
              {
                [v28 triggerServerSideEndPointer];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v39 objects:v49 count:16];
          }

          while (v25);
        }

        v32 = *(a1 + 48);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_8;
        v38[3] = &unk_2789B57C0;
        v38[4] = *(a1 + 104);
        dispatch_async(v32, v38);
        v33 = *(a1 + 32);
        v34 = v33;
        v35 = *(a1 + 112);
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          v36 = *(a1 + 40);
          *buf = 138412290;
          v51 = v36;
          _os_signpost_emit_with_name_impl(&dword_232E53000, v34, OS_SIGNPOST_INTERVAL_END, v35, "ASR", "Completed ASR for %@", buf, 0xCu);
        }

        dispatch_group_leave(*(a1 + 56));
        v6 = v37;
      }
    }
  }
}

void __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_10(void *a1, uint64_t a2)
{
  v3 = _LTOSLogSpeech(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_10_cold_1();
  }

  if (*(*(a1[5] + 8) + 40))
  {
    if (*(*(a1[6] + 8) + 24) <= 0)
    {
      (*(a1[4] + 16))();
    }
  }
}

void __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Recognition error: %@", &v2, 0xCu);
}

void __143___LTMultilingualSpeechRecognizer_startRecognitionForLocale_autoEndpoint_enableStreamingSpeechTranslation_enableMultiFieldInput_resultHandler___block_invoke_cold_2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 locale];
  v5 = [v4 _ltLocaleIdentifier];
  v6 = [a2 bestTranscription];
  v7 = [v6 formattedString];
  v8 = 138543619;
  v9 = v5;
  v10 = 2117;
  v11 = v7;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "ASR result (%{public}@): %{sensitive}@", &v8, 0x16u);
}

@end