@interface LTSpeechRecognizer
@end

@implementation LTSpeechRecognizer

void __99___LTSpeechRecognizer_startRecognitionWithAutoStop_enableStreamingSpeechTranslation_resultHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && !WeakRetained[2])
  {
    v4 = WeakRetained[4];
    WeakRetained[4] = 0;

    *(v3 + 24) = 0;
    *(v3 + 40) = *(a1 + 48);
    v5 = MEMORY[0x238398770](*(a1 + 32));
    v6 = *(v3 + 11);
    *(v3 + 11) = v5;

    if (*(a1 + 49))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a1 + 48);
    }

    [*(v3 + 1) setDetectUtterances:v7 & 1];
    [*(v3 + 1) setConcatenateUtterances:0];
    v8 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
    v9 = [v8 lt_asrTasks];
    v10 = [*(v3 + 10) localeIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];

    if ([(__CFString *)v11 length])
    {
      v12 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
      v14 = [v13 lt_asrTask];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = _LTASRModelTaskString();
      }

      v12 = v16;

      v17 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
      v18 = [v17 lt_asrTask];
      if (v18)
      {
      }

      else
      {
        v23 = *(v3 + 7);

        if (v23 != 10)
        {
          goto LABEL_14;
        }

        v17 = [*(v3 + 1) modelInfo];
        v24 = [v17 tasks];
        v25 = [v24 containsObject:v12];

        if ((v25 & 1) == 0)
        {

          v28 = _LTOSLogSpeech(v26, v27);
          v12 = @"LiveTranscription";
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
            v30 = [v17 language];
            v31 = 138412546;
            v32 = @"LiveTranscription";
            v33 = 2112;
            v34 = v30;
            _os_log_impl(&dword_232E53000, v29, OS_LOG_TYPE_DEFAULT, "Falling back to task name: %@ for language %@", &v31, 0x16u);
          }
        }
      }
    }

LABEL_14:
    v19 = *(v3 + 1);
    v20 = [*(v3 + 10) localeIdentifier];
    v21 = [v19 runRecognitionWithResultStream:v3 language:v20 task:v12 samplingRate:16000];
    v22 = *(v3 + 2);
    *(v3 + 2) = v21;
  }
}

void __42___LTSpeechRecognizer_addSpeechAudioData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] addAudioSampleData:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __31___LTSpeechRecognizer_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] endAudio];
    WeakRetained = v2;
  }
}

void __40___LTSpeechRecognizer_cancelRecognition__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] cancelRecognition];
    [v3[2] endAudio];
    v2 = v3[2];
    v3[2] = 0;

    WeakRetained = v3;
  }
}

void __50___LTSpeechRecognizer_triggerServerSideEndPointer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] triggerServerSideEndPointer];
    WeakRetained = v2;
  }
}

void __70___LTSpeechRecognizer_speechRecognizer_didFinishRecognitionWithError___block_invoke(uint64_t a1)
{
  v17[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    WeakRetained[2] = 0;

    if ((v3[3] & 1) == 0)
    {
      v5 = v3[4];
      if (v5 && ([MEMORY[0x277CE1B90] resultWithPackage:v5 locale:v3[10] modelVersion:v3[9] taskHint:v3[7] isFinal:1], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = v6;
        v8 = *(a1 + 32);
      }

      else
      {
        v8 = *(a1 + 32);
        if (!v8)
        {
          v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v10 = MEMORY[0x277CCA9B8];
          v11 = *MEMORY[0x277CE1C58];
          v16[0] = *MEMORY[0x277CCA450];
          v12 = [v9 localizedStringForKey:@"EMPTY_RECOGNITION_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
          v17[0] = v12;
          v16[1] = *MEMORY[0x277CCA470];
          v13 = [v9 localizedStringForKey:@"SPEECH_NOT_RECOGNIZED_ERROR_DESCRIPTION" value:&stru_284834138 table:0];
          v17[1] = v13;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
          v15 = [v10 errorWithDomain:v11 code:10 userInfo:v14];

          v7 = [MEMORY[0x277CE1B90] emptyResultWithLocale:v3[10] isFinal:1];
          [*(a1 + 40) _recognizedResult:v7 error:v15];

          goto LABEL_10;
        }

        v7 = 0;
      }

      [*(a1 + 40) _recognizedResult:v7 error:v8];
LABEL_10:
    }
  }
}

uint64_t __71___LTSpeechRecognizer_speechRecognizer_didRecognizeFinalResultPackage___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && (WeakRetained[3] & 1) == 0)
  {
    v9 = WeakRetained;
    if ([WeakRetained[1] detectUtterances])
    {
      v3 = v9;
      if (*(v9 + 40) == 1 && (v4 = [a1[4] isFinal], v3 = v9, !v4))
      {
        v5 = 0;
      }

      else
      {
        v5 = 1;
        *(v3 + 24) = 1;
        [a1[5] cancelRecognition];
        v3 = v9;
      }

      v7 = [MEMORY[0x277CE1B90] resultWithPackage:a1[4] locale:v3[10] modelVersion:v3[9] taskHint:v3[7] isFinal:v5 endOfUtterance:v5 ^ 1];
      [a1[5] _recognizedResult:v7 error:0];
    }

    else
    {
      v6 = a1[4];
      v7 = v9[4];
      v9[4] = v6;
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __66___LTSpeechRecognizer_speechRecognizer_didRecognizePartialResult___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v18 = a1;
    v19 = WeakRetained;
    v4 = [*(a1 + 32) tokens];
    v5 = [MEMORY[0x277CCAB68] stringWithString:&stru_284834138];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v21;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v20 + 1) + 8 * v11);
          if (v12 && [v12 hasSpaceAfter])
          {
            [v5 appendString:@" "];
          }

          v14 = MEMORY[0x277D07288];
          v15 = [v13 tokenName];
          v16 = [v14 hatToQsrString:v15];

          if (v16)
          {
            [v5 appendString:v16];
          }

          v9 = v13;

          ++v11;
          v12 = v9;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v3 = v19;
    v17 = [MEMORY[0x277CE1B90] resultWithResult:*(v18 + 32) locale:v19[10] modelVersion:v19[9] taskHint:v19[7] isFinal:0];
    [*(v18 + 40) _recognizedResult:v17 error:0];
  }
}

@end