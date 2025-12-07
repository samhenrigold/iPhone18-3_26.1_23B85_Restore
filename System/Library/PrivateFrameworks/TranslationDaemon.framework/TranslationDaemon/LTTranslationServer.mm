@interface LTTranslationServer
@end

@implementation LTTranslationServer

void __54___LTTranslationServer_preheatWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = _LTOSLogTranslationEngine(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Requested preheat with context: %{public}@", buf, 0xCu);
  }

  if ([*(a1 + 32) route] == 2)
  {
    (*(*(a1 + 48) + 16))();
    v3[2](v3);
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v19 = 0;
    v9 = [v7 _engineForContext:v8 error:&v19];
    v10 = v19;
    if (v9)
    {
      v11 = [v9 preheatAsynchronously:0 withContext:*(a1 + 32)];
      v13 = _LTOSLogTranslationEngine(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        *buf = 138543362;
        v21 = v14;
        _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Preheated engine with context: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v15 = NSStringFromSelector(*(a1 + 56));
      _LTAnalyticsSendOptionalErrorEvent(v10, v15);

      v18 = _LTOSLogTranslationEngine(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __54___LTTranslationServer_preheatWithContext_completion___block_invoke_cold_1();
      }
    }

    (*(*(a1 + 48) + 16))();
    v3[2](v3);
  }
}

void __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = 0;
  v6 = [v4 _engineForContext:v5 error:&v18];
  v7 = v18;
  v9 = v7;
  if (v6)
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_22;
    v14[3] = &unk_2789B7E70;
    v17[1] = *(a1 + 72);
    objc_copyWeak(v17, (a1 + 64));
    v15 = *(a1 + 56);
    v16 = v3;
    [v6 translateSentence:v10 withContext:v11 completion:v14];

    objc_destroyWeak(v17);
  }

  else
  {
    v12 = _LTOSLogTranslationEngine(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_cold_1();
    }

    v13 = NSStringFromSelector(*(a1 + 72));
    _LTAnalyticsSendOptionalErrorEvent(v9, v13);

    (*(*(a1 + 56) + 16))();
    v3[2](v3);
  }
}

uint64_t __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  v6 = a3;
  v7 = a2;
  v8 = NSStringFromSelector(v5);
  _LTAnalyticsSendOptionalErrorEvent(v6, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateOfflineEngineIdleTimer];

  (*(*(a1 + 32) + 16))();
  v10 = *(*(a1 + 40) + 16);

  return v10();
}

void __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) count];
  v6 = _LTOSLogTranslationEngine(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    *buf = 134218240;
    v29 = v4;
    v30 = 2048;
    v31 = [v7 route];
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Translating %zu paragraphs for route: %ld", buf, 0x16u);
  }

  [*(a1 + 48) registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v27 = 0;
  v11 = [v9 _engineForContext:v10 error:&v27];
  v12 = v27;
  v14 = v12;
  if (v11)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v17 = *(a1 + 64);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_24;
    v22[3] = &unk_2789B7EC0;
    objc_copyWeak(v26, (a1 + 72));
    v26[1] = v4;
    v18 = *(a1 + 40);
    v19 = *(a1 + 80);
    v23 = v18;
    v26[2] = v19;
    v24 = *(a1 + 56);
    v25 = v3;
    [v11 translate:v16 withContext:v15 paragraphResult:v17 completion:v22];

    objc_destroyWeak(v26);
  }

  else
  {
    v20 = _LTOSLogTranslationEngine(v12, v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_cold_1();
    }

    v21 = NSStringFromSelector(*(a1 + 80));
    _LTAnalyticsSendOptionalErrorEvent(v14, v21);

    (*(*(a1 + 56) + 16))();
    v3[2](v3);
  }
}

void __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = _LTOSLogTranslationEngine(WeakRetained, v5);
    v8 = v7;
    if (v3)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_24_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 64);
        v15 = 134217984;
        v16 = v9;
        _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Finished translating %zu paragraphs", &v15, 0xCu);
      }

      v10 = objc_alloc(MEMORY[0x277CE1B50]);
      v11 = [*(a1 + 32) logIdentifier];
      v12 = [v10 initWithType:2 invocationId:v11];

      [v6[10] selfLoggingEventWithData:v12];
    }

    v13 = NSStringFromSelector(*(a1 + 72));
    _LTAnalyticsSendOptionalErrorEvent(v3, v13);

    v14 = objc_loadWeakRetained((a1 + 56));
    [v14 _updateOfflineEngineIdleTimer];

    (*(*(a1 + 40) + 16))();
    (*(*(a1 + 48) + 16))();
  }
}

void __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _prepareStabilizerForContext:*(a1 + 32)];
    [v3 _cleanUpForContextIfNeeded:*(a1 + 32)];
    v5 = v3[3];
    v6 = [*(a1 + 32) sessionID];
    v7 = [*(a1 + 32) route];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke_2;
    v12[3] = &unk_2789B7F38;
    objc_copyWeak(v17, (a1 + 56));
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v13 = v8;
    v17[1] = v9;
    v16 = *(a1 + 48);
    v14 = *(a1 + 40);
    v10 = v4;
    v15 = v10;
    v11 = [v5 scheduleOperationWithGroupID:v6 route:v7 block:v12];

    objc_destroyWeak(v17);
  }
}

void __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [WeakRetained registerActivity:{objc_msgSend(*(a1 + 32), "taskHint")}];
    v5 = *(a1 + 32);
    v19 = 0;
    v6 = [WeakRetained _engineForContext:v5 error:&v19];
    v7 = v19;
    v9 = v7;
    if (v6)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(a1 + 48);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke_27;
      v15[3] = &unk_2789B7F10;
      v18[1] = *(a1 + 72);
      objc_copyWeak(v18, (a1 + 64));
      v16 = *(a1 + 56);
      v17 = v3;
      [v6 translateStreamingInput:v10 context:v11 stabilizer:v12 completion:v15];

      objc_destroyWeak(v18);
    }

    else
    {
      v13 = _LTOSLogTranslationEngine(v7, v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __65___LTTranslationServer_translateSentence_withContext_completion___block_invoke_cold_1();
      }

      v14 = NSStringFromSelector(*(a1 + 72));
      _LTAnalyticsSendOptionalErrorEvent(v9, v14);

      (*(*(a1 + 56) + 16))();
      v3[2](v3);
    }
  }
}

uint64_t __71___LTTranslationServer_translateStreamingInput_withContext_completion___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  v6 = a3;
  v7 = a2;
  v8 = NSStringFromSelector(v5);
  _LTAnalyticsSendOptionalErrorEvent(v6, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateOfflineEngineIdleTimer];

  (*(*(a1 + 32) + 16))();
  v10 = *(*(a1 + 40) + 16);

  return v10();
}

void __65___LTTranslationServer_textStreamingConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [_LTDConfigurationService textStreamingConfigurationWithError:0];
  v3 = *(a1 + 32);
  v11 = v2;
  if (v2)
  {
    v4 = objc_alloc(MEMORY[0x277CE1BE0]);
    [v11 minTimeBetweenTranslations];
    v6 = v5;
    [v11 maxTimeBetweenTranslations];
    v8 = v7;
    [v11 userIdleTime];
    v10 = [v4 initWithMinTimeBetweenTranslations:objc_msgSend(v11 maxTimeBetweenTranslations:"maxPartialTranslationAttempts") userIdleTime:objc_msgSend(v11 maxPartialTranslationAttempts:"minNumberOfCharactersForTranslation") minNumberOfCharactersForTranslation:{v6, v8, v9}];
    (*(v3 + 16))(v3, v10);
  }

  else
  {
    (*(v3 + 16))(v3, 0);
  }
}

void __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelExistingSessions];
    [v5 _removePendingSpeechSessionID:*(a1 + 32)];
    v6 = [v5 registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
    v8 = _LTOSLogTranslationEngine(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v9 route];
      v12 = [*(a1 + 40) autodetectLanguage];
      *buf = 134218240;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Handling text translation request for route: %zd (autodetect: %{BOOL}i)", buf, 0x12u);
    }

    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v28 = 0;
    v15 = [v13 _engineForContext:v14 error:&v28];
    v16 = v28;
    v18 = v16;
    if (v15)
    {
      v19 = [[_LTServerSpeechSession alloc] initWithEngine:v15 delegate:*(a1 + 56) selfLoggingManager:v5[10]];
      [(_LTServerSpeechSession *)v19 setSessionID:*(a1 + 64)];
      objc_storeStrong(v5 + 5, v19);
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_35;
      v25 = &unk_2789B7F88;
      v27[1] = *(a1 + 88);
      objc_copyWeak(v27, (a1 + 80));
      v26 = v3;
      [(_LTServerSpeechSession *)v19 setCompletionHandler:&v22];
      [(_LTServerSpeechSession *)v19 startTextToSpeechTranslationWithContext:*(a1 + 40) text:*(a1 + 72), v22, v23, v24, v25];

      objc_destroyWeak(v27);
    }

    else
    {
      v20 = _LTOSLogTranslationEngine(v16, v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_cold_1();
      }

      v21 = NSStringFromSelector(*(a1 + 88));
      _LTAnalyticsSendOptionalErrorEvent(v18, v21);

      [*(a1 + 56) translationDidFinishWithError:v18];
      v3[2](v3);
    }
  }
}

uint64_t __78___LTTranslationServer_startTextToSpeechTranslationWithContext_text_delegate___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v4, v5);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateOfflineEngineIdleTimer];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 _speechSessionCompleted];

  v8 = *(*(a1 + 32) + 16);

  return v8();
}

void __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelExistingSessions];
    [v5 _removePendingSpeechSessionID:*(a1 + 32)];
    [v5 registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v25 = 0;
    v8 = [v6 _engineForContext:v7 error:&v25];
    v9 = v25;
    v11 = v9;
    if (v8)
    {
      v12 = [[_LTServerSpeakSession alloc] initWithEngine:v8];
      v13 = v5[6];
      v5[6] = v12;

      v14 = v5[6];
      v15 = *(a1 + 56);
      v16 = *(a1 + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_37;
      v21[3] = &unk_2789B7FD8;
      v24[1] = *(a1 + 88);
      objc_copyWeak(v24, (a1 + 80));
      v22 = *(a1 + 72);
      v23 = v3;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_39;
      v19[3] = &unk_2789B8000;
      v20 = *(a1 + 64);
      [v14 speak:v15 context:v16 completion:v21 audioStartHandler:v19];

      objc_destroyWeak(v24);
    }

    else
    {
      v17 = _LTOSLogTranslationEngine(v9, v10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_cold_1();
      }

      v18 = NSStringFromSelector(*(a1 + 88));
      _LTAnalyticsSendOptionalErrorEvent(v11, v18);

      (*(*(a1 + 72) + 16))();
      v3[2](v3);
    }
  }
}

void __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = _LTOSLogTTS(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_37_cold_1();
    }

    v10 = NSStringFromSelector(*(a1 + 56));
    _LTAnalyticsSendOptionalErrorEvent(v8, v10);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateOfflineEngineIdleTimer];

  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void __62___LTTranslationServer_speak_withContext_delegate_completion___block_invoke_39(uint64_t a1, void *a2, double a3)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 32);
    v6 = [v7 wordTimingInfo];
    [v5 ttsAudioStarted:v6 duration:a3];
  }
}

void __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelExistingSessions];
    [v5 _removePendingSpeechSessionID:*(a1 + 32)];
    v6 = (a1 + 40);
    v7 = [v5 registerActivity:{objc_msgSend(*(a1 + 40), "taskHint")}];
    v9 = _LTOSLogTranslationEngine(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *v6;
      v11 = v9;
      v12 = [v10 route];
      v13 = [*v6 autodetectLanguage];
      *buf = 134218240;
      v43 = v12;
      v44 = 1024;
      v45 = v13;
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Handling speech translation request for route: %zd (autodetect: %{BOOL}i)", buf, 0x12u);
    }

    v14 = [*(a1 + 48) _modalitiesPerLocale];
    v15 = [*(a1 + 40) localePair];
    v16 = [v15 sourceLocale];
    if ([v14 locale:v16 supportsModality:1])
    {
      if (([*v6 autodetectLanguage] & 1) == 0)
      {

LABEL_13:
        v27 = *v6;
        v41 = 0;
        v28 = [v5 _engineForContext:v27 error:&v41];
        v29 = v41;
        v31 = _LTOSLogTranslationEngine(v29, v30);
        v32 = v31;
        if (v28)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_232E53000, v32, OS_LOG_TYPE_INFO, "Start speech translation session", buf, 2u);
          }

          v33 = [[_LTServerSpeechSession alloc] initWithEngine:v28 delegate:*(a1 + 56) selfLoggingManager:v5[10]];
          [(_LTServerSpeechSession *)v33 setSessionID:*(a1 + 64)];
          objc_storeStrong(v5 + 5, v33);
          v35 = MEMORY[0x277D85DD0];
          v36 = 3221225472;
          v37 = __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_43;
          v38 = &unk_2789B7F88;
          v40[1] = *(a1 + 80);
          objc_copyWeak(v40, (a1 + 72));
          v39 = v3;
          [(_LTServerSpeechSession *)v33 setCompletionHandler:&v35];
          [(_LTServerSpeechSession *)v33 startSpeechTranslationWithContext:*v6, v35, v36, v37, v38];

          objc_destroyWeak(v40);
        }

        else
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_cold_2();
          }

          v34 = NSStringFromSelector(*(a1 + 80));
          _LTAnalyticsSendOptionalErrorEvent(v29, v34);

          [*(a1 + 56) translationDidFinishWithError:v29];
          v3[2](v3);
        }

LABEL_21:
        goto LABEL_22;
      }

      v17 = [*v6 localePair];
      v18 = [v17 targetLocale];
      v19 = [v14 locale:v18 supportsModality:1];

      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v22 = _LTOSLogTranslationEngine(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_cold_1((a1 + 40), v22);
    }

    v23 = *(a1 + 56);
    v24 = MEMORY[0x277CCA9B8];
    v25 = [*(a1 + 40) localePair];
    v26 = [v24 lt_unsupporedLocalePairError:v25];
    [v23 translationDidFinishWithError:v26];

    v3[2](v3);
    goto LABEL_21;
  }

LABEL_22:
}

uint64_t __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v4, v5);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateOfflineEngineIdleTimer];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 _speechSessionCompleted];

  v8 = *(*(a1 + 32) + 16);

  return v8();
}

void __43___LTTranslationServer_cancelSpeechSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] cancel];
    v2 = v3[5];
    v3[5] = 0;

    WeakRetained = v3;
  }
}

void __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = _LTOSLogTranslationEngine(WeakRetained, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke_cold_1(a1, v4, v5);
    }

    v6 = [v4[5] sessionID];
    v7 = [v6 isEqual:*(a1 + 32)];

    if (v7)
    {
      v10 = [v4[5] cancel];
      v12 = _LTOSLogTranslationEngine(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Resetting session", v15, 2u);
      }

      v13 = v4[5];
      v4[5] = 0;
    }

    else
    {
      v14 = _LTOSLogTranslationEngine(v8, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke_cold_2();
      }
    }
  }
}

void __47___LTTranslationServer__speechSessionCompleted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[5];
    WeakRetained[5] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __43___LTTranslationServer_addSpeechAudioData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = _LTOSLogTranslationEngine(WeakRetained, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __43___LTTranslationServer_addSpeechAudioData___block_invoke_cold_1();
    }

    [v4[5] addSpeechAudioData:*(a1 + 32)];
  }
}

void __32___LTTranslationServer_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogTranslationEngine(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __32___LTTranslationServer_endAudio__block_invoke_cold_1();
    }

    [v3[5] endAudio];
  }
}

void __71___LTTranslationServer_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _LTPreferencesGetLanguageDetectorUnsupportedPairs();
  (*(v1 + 16))(v1, v2);
}

void __58___LTTranslationServer_modalitiesPerLocaleWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _modalitiesPerLocale];
  (*(v1 + 16))(v1, v2);
}

uint64_t __88___LTTranslationServer__markPendingSpeechSessionIfNeededWithContext_effectiveSessionID___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogSpeech(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_INFO, "Marking a speech session as pending: %{public}@", &v6, 0xCu);
  }

  return [*(*(a1 + 40) + 56) addObject:*(a1 + 32)];
}

void __37___LTTranslationServer__logStateSoon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained onDeviceModeEnabled:&__block_literal_global_34];
    WeakRetained = v2;
  }
}

void __37___LTTranslationServer__logStateSoon__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = *MEMORY[0x277D85DE8];
  v3 = _LTOSLogDeviceState(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEFAULT, "On-device mode enabled: %{BOOL}i", v4, 8u);
  }
}

void __44___LTTranslationServer_startLoggingRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[8] startLoggingRequest:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __44___LTTranslationServer_cleanupOfflineEngine__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __31___LTTranslationServer_cleanup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogSpeech(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Client requested a cleanup of ongoing speech sessions", v5, 2u);
    }

    [v3 cancelExistingSessions];
    [v3 _cancelPendingSpeechOperations];
  }
}

void __61___LTTranslationServer_attemptToCancelRequestsWithSessionID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    v5 = WeakRetained;
    v4 = [*(a1 + 32) UUIDString];
    [v3 cancelOperationsWithGroupID:v4];

    WeakRetained = v5;
  }
}

void __59___LTTranslationServer_shouldPresentSystemFirstUseConsent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v3 = *(a1 + 32);
  v5 = v2;
  if ([v2 lt_isOnDeviceOnly])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v5 lt_hasAcceptedFirstUseConsent] ^ 1;
  }

  (*(v3 + 16))(v3, v4);
}

void __51___LTTranslationServer_languageForText_completion___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(_LTTextLanguageDetector);
  v2 = _LTPreferencesSupportedLocales(2);
  [(_LTTextLanguageDetector *)v4 setAvailableLocales:v2];

  v3 = [(_LTTextLanguageDetector *)v4 detectionForString:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __72___LTTranslationServer_languagesForText_usingModel_strategy_completion___block_invoke(void *a1)
{
  v2 = [[_LTTextLanguageDetector alloc] initWithModel:a1[6]];
  v3 = _LTPreferencesSupportedLocales(2);
  [(_LTTextLanguageDetector *)v2 setAvailableLocales:v3];

  v4 = [(_LTTextLanguageDetector *)v2 detectionForStrings:a1[4] strategy:a1[7]];
  v6 = _LTOSLogXPC(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __72___LTTranslationServer_languagesForText_usingModel_strategy_completion___block_invoke_cold_1(v6);
  }

  (*(a1[5] + 16))();
}

void __47___LTTranslationServer__offlineLanguageStatus___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47___LTTranslationServer__offlineLanguageStatus___block_invoke_2;
  v3[3] = &unk_2789B5DC0;
  v4 = *(a1 + 32);
  [(_LTOfflineAssetManager *)v2 offlineLanguageStatus:v3];
}

void __79___LTTranslationServer__downloadAssetForLanguagePair_userInitiated_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79___LTTranslationServer__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_2;
  v7[3] = &unk_2789B80C8;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [(_LTOfflineAssetManager *)v2 downloadAssetsForLanguagePair:v3 userInitiated:v4 completion:v7];
}

void __79___LTTranslationServer__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  v4 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v5, v4);

  (*(*(a1 + 32) + 16))();
}

void __76___LTTranslationServer__purgeAssetForLanguagePair_userInitiated_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___LTTranslationServer__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_2;
  v7[3] = &unk_2789B80C8;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [(_LTOfflineAssetManager *)v2 purgeAssetForLanguagePair:v3 userInitiated:v4 completion:v7];
}

void __76___LTTranslationServer__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  v4 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v5, v4);

  (*(*(a1 + 32) + 16))();
}

void __66___LTTranslationServer__purgeAllAssetsExcludingConfig_completion___block_invoke(uint64_t a1)
{
  [_LTDLanguageAssetService setSelectedLocales:MEMORY[0x277CBEBF8]];
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66___LTTranslationServer__purgeAllAssetsExcludingConfig_completion___block_invoke_2;
  v6[3] = &unk_2789B80C8;
  v5 = *(a1 + 32);
  v4 = v5;
  v7 = v5;
  [(_LTOfflineAssetManager *)v2 purgeAllAssetsExcludingConfig:v3 completion:v6];
}

void __66___LTTranslationServer__purgeAllAssetsExcludingConfig_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  v4 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v5, v4);

  (*(*(a1 + 32) + 16))();
}

void __41___LTTranslationServer__updateAllAssets___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41___LTTranslationServer__updateAllAssets___block_invoke_2;
  v5[3] = &unk_2789B80C8;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [(_LTOfflineAssetManager *)v2 updateAllAssets:v5];
}

void __41___LTTranslationServer__updateAllAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  v4 = NSStringFromSelector(v3);
  _LTAnalyticsSendOptionalErrorEvent(v5, v4);

  (*(*(a1 + 32) + 16))();
}

void __41___LTTranslationServer_installedLocales___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetService selectedLocales];
  (*(*(a1 + 32) + 16))();
}

void __53___LTTranslationServer_ensureSelectedLocalesDownload__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    +[_LTDLanguageAssetService syncInstalledLocalesOnAssetUpdate];
    WeakRetained = v2;
  }
}

void __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_2;
  v2[3] = &unk_2789B8160;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  [_LTDLanguageAssetService assetsWithOptions:64 completion:v2];

  objc_destroyWeak(&v4);
}

void __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_3;
    block[3] = &unk_2789B61A8;
    v11 = v6;
    v13 = *(a1 + 32);
    v12 = v5;
    dispatch_async(v9, block);
  }
}

void __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = _LTOSLogAssets(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59___LTTranslationServer_installedLocalesForTask_completion___block_invoke_3_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(a1 + 40) _ltCompactMap:&__block_literal_global_56];
    (*(*(a1 + 48) + 16))();
  }
}

void __53___LTTranslationServer_startInstallRequest_delegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locales];
  v3 = [*(a1 + 32) useCellular];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___LTTranslationServer_startInstallRequest_delegate___block_invoke_2;
  v6[3] = &unk_2789B54B8;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53___LTTranslationServer_startInstallRequest_delegate___block_invoke_3;
  v4[3] = &unk_2789B54E0;
  v5 = *(a1 + 40);
  [_LTDLanguageAssetService setInstalledLocales:v2 useCellular:v3 progress:v6 completion:v4];
}

void __38___LTTranslationServer__getAssetSize___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LTOfflineAssetManager);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38___LTTranslationServer__getAssetSize___block_invoke_2;
  v5[3] = &unk_2789B8188;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [(_LTOfflineAssetManager *)v2 assetSize:v5];
}

void __38___LTTranslationServer__getAssetSize___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v8 = a2;
  v7 = NSStringFromSelector(v5);
  _LTAnalyticsSendOptionalErrorEvent(v6, v7);

  (*(*(a1 + 32) + 16))();
}

void __63___LTTranslationServer_availableLocalePairsForTask_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _LTPreferencesSupportedLocalePairsForTask(*(a1 + 40));
  (*(v1 + 16))(v1, v2);
}

void __77___LTTranslationServer_additionalLikelyPreferredLocalesForLocale_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = _LTPreferencesAdditionalLikelyPreferredLocales(*(a1 + 32));
  (*(v1 + 16))(v1, v2);
}

void __67___LTTranslationServer_configInfoForLocale_otherLocale_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = _LTPreferencesConfigInfoForLocale(*(a1 + 32), *(a1 + 40));
  (*(v1 + 16))(v1, v2);
}

void __38___LTTranslationServer__updateHotfix___block_invoke(uint64_t a1)
{
  v2 = +[_LTHotfixManager shared];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38___LTTranslationServer__updateHotfix___block_invoke_2;
  v3[3] = &unk_2789B5D20;
  v4 = *(a1 + 32);
  [v2 updateHotfix:v3];
}

void __38___LTTranslationServer__deleteHotfix___block_invoke(uint64_t a1)
{
  v2 = +[_LTHotfixManager shared];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38___LTTranslationServer__deleteHotfix___block_invoke_2;
  v3[3] = &unk_2789B5D20;
  v4 = *(a1 + 32);
  [v2 deleteHotfix:v3];
}

uint64_t __44___LTTranslationServer_onDeviceModeEnabled___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  [v2 lt_isOnDeviceOnly];

  v5 = _LTOSLogXPC(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __44___LTTranslationServer_onDeviceModeEnabled___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __46___LTTranslationServer_onDeviceModeSupported___block_invoke(uint64_t a1)
{
  v2 = +[_LTDLanguageAssetService onDeviceModeSupported];
  v4 = _LTOSLogTranslationEngine(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __46___LTTranslationServer_onDeviceModeSupported___block_invoke_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

void __49___LTTranslationServer_selfLoggingEventWithData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[10] selfLoggingEventWithData:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __78___LTTranslationServer_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[10] selfLoggingLanguageIdentificationCompletedWithLIDData:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __61___LTTranslationServer_selfLoggingInvocationCancelledForIDs___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9 = objc_alloc(MEMORY[0x277CE1B50]);
          v10 = [v9 initWithType:4 invocationId:{v8, v11}];
          [WeakRetained[10] selfLoggingEventWithData:v10];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

void __67___LTTranslationServer_selfLoggingInvocationDidError_invocationId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x277CE1B50]) initWithType:3 invocationId:*(a1 + 32)];
    [v3 setInvocationEndedError:*(a1 + 40)];
    [v4[10] selfLoggingEventWithData:v3];

    WeakRetained = v4;
  }
}

void __49___LTTranslationServer_updateOVADStreamingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] updateOVADStreamingState:{objc_msgSend(*(a1 + 32), "BOOLValue")}];
    WeakRetained = v3;
  }
}

void __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke_2;
  v6[3] = &unk_2789B8200;
  objc_copyWeak(&v8, (a1 + 40));
  v5 = v3;
  v7 = v5;
  (*(v4 + 16))(v4, v6);

  objc_destroyWeak(&v8);
}

void __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = _LTOSLogAssets(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Finished asset cleanup actions after a download completed", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[13];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke_60;
    block[3] = &unk_2789B81D8;
    v10 = v2;
    block[4] = WeakRetained;
    v9 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

uint64_t __49___LTTranslationServer_scheduleAssetCleanupWork___block_invoke_60(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = _LTOSLogAssets(a1, a2);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      return (*(*(a1 + 40) + 16))(*(a1 + 40));
    }

    v13 = 0;
    v8 = "No further cleanup required";
    v9 = &v13;
LABEL_10:
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, v8, v9, 2u);
    return (*(*(a1 + 40) + 16))(*(a1 + 40));
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = _LTOSLogTranslationEngine(a1, a2);
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      return (*(*(a1 + 40) + 16))(*(a1 + 40));
    }

    v11 = 0;
    v8 = "No need to clear offline engine after downloads finished because there wasn't a cached engine";
    v9 = &v11;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Clearing offline translation engine since assets may have changed and files may have changed locations", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  return (*(*(a1 + 40) + 16))(*(a1 + 40));
}

void __83___LTTranslationServer_translateParagraphs_withContext_paragraphResult_completion___block_invoke_24_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_232E53000, v1, OS_LOG_TYPE_ERROR, "Failed to translate %zu paragraphs: %@", v2, 0x16u);
}

void __67___LTTranslationServer_startSpeechTranslationWithContext_delegate___block_invoke_cold_1(void **a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 localePair];
  v5 = [v4 description];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Speech translation request for %{public}@ is not supported", v6, 0xCu);
}

void __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = [OUTLINED_FUNCTION_7() sessionID];
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __50___LTTranslationServer_cancelSpeechSessionWithID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __43___LTTranslationServer_addSpeechAudioData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __32___LTTranslationServer_endAudio__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __72___LTTranslationServer_languagesForText_usingModel_strategy_completion___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() description];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_11();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

@end