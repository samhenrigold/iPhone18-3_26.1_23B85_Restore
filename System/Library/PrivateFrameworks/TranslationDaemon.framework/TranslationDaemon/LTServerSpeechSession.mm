@interface LTServerSpeechSession
@end

@implementation LTServerSpeechSession

void __51___LTServerSpeechSession_updateOVADStreamingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _updateOVADStreamingState_onQueue:*(a1 + 40)];
  }
}

void __47___LTServerSpeechSession_swapLocalesAndRestart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _translateSpeechAudioData:v3];
  }
}

uint64_t __66___LTServerSpeechSession_updateOwnVoicePendingSwapAndRestartTimer__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogSpeech(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __66___LTServerSpeechSession_updateOwnVoicePendingSwapAndRestartTimer__block_invoke_cold_1();
  }

  return [*(a1 + 32) forcePendingSwapAndRestart];
}

void __50___LTServerSpeechSession_languageDetectionResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[9] = 1;
    if (WeakRetained[10] == 1)
    {
      [WeakRetained delegateTranslationDidFinishWithError:*(WeakRetained + 2)];
    }
  }
}

void __50___LTServerSpeechSession_speechRecognitionResult___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[6] targetLocale];
    v5 = [v4 localeIdentifier];
    v6 = [*(a1 + 32) locale];
    v7 = [v6 localeIdentifier];
    v8 = [v5 isEqualToString:v7];

    if (v8)
    {
      v11 = atomic_load(v3 + 13);
      if ((v11 & 1) == 0)
      {
        v12 = _LTOSLogSpeech(v9, v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v3[6] targetLocale];
          v14 = [v13 localeIdentifier];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEFAULT, "OVAD speech recognized waiting for pending final translation: %@", &v15, 0xCu);
        }

        atomic_store(1u, v3 + 13);
      }
    }
  }
}

void __49___LTServerSpeechSession_translatorDidTranslate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isFinal])
    {
      v2 = [WeakRetained[6] sourceLocale];
      v3 = [v2 localeIdentifier];
      v4 = [*(a1 + 32) locale];
      v5 = [v4 localeIdentifier];
      v6 = [v3 isEqualToString:v5];

      if (v6)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = [*(*(a1 + 40) + 48) targetLocale];
        v9 = [v8 localeIdentifier];
        v10 = [v7 stringWithFormat:@"OVAD received pending final translation for source: %@", v9];
        [WeakRetained swapLocalesAndRestartWithStateResetAndLogMessage:v10];
      }
    }
  }
}

void __56___LTServerSpeechSession_translationDidFinishWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (*(WeakRetained + 8) != 1 || *(WeakRetained + 9) == 1)
    {
      [WeakRetained delegateTranslationDidFinishWithError:*(a1 + 32)];
      v3 = MEMORY[0x277CCACA8];
      v4 = [v8[6] targetLocale];
      v5 = [v4 localeIdentifier];
      v6 = [v3 stringWithFormat:@"OVAD did finish while in pending locale swap and restart case for source: %@", v5];
      [v8 swapLocalesAndRestartWithStateResetAndLogMessage:v6];

LABEL_5:
      WeakRetained = v8;
      goto LABEL_6;
    }

    if (!*(a1 + 32) || ([WeakRetained[10] forceLanguageDetectionResult] & 1) != 0)
    {
      *(v8 + 10) = 1;
      v7 = *(a1 + 32);
      v4 = v8[2];
      v8[2] = v7;
      goto LABEL_5;
    }

    [v8 delegateTranslationDidFinishWithError:*(a1 + 32)];
    WeakRetained = v8;
  }

LABEL_6:
}

@end