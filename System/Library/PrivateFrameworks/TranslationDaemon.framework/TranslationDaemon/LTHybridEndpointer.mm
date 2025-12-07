@interface LTHybridEndpointer
@end

@implementation LTHybridEndpointer

void __62___LTHybridEndpointer_setServerEndpointerFeatures_withLocale___block_invoke(void **a1)
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_25;
  }

  v4 = a1 + 4;
  v5 = a1[4];
  v6 = [WeakRetained[1] localePair];
  v7 = [v6 sourceLocale];

  if (v5 == v7)
  {
    v16 = _LTOSLogSpeech(v8, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Received server endpointer features for source locale", &v39, 2u);
    }

    objc_storeStrong(v3 + 6, a1[5]);
    if (v3[3] && v3[5])
    {
      v19 = v3[4];
      v20 = _LTOSLogSpeech(v17, v18);
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (v19)
      {
        if (v21)
        {
          v22 = v3[4];
          v23 = v20;
          [v22 floatValue];
          v39 = 134217984;
          v40 = v24;
          _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "Updating source endpointer threshold to %f", &v39, 0xCu);
        }

        v26 = v3[3];
        v25 = v3[4];
        goto LABEL_22;
      }

      if (v21)
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Re-request sampling rate for source endpointer", &v39, 2u);
      }

      v38 = v3[3];
LABEL_32:
      [v38 requestSupportedWithSamplingRate:v3[18]];
    }
  }

  else
  {
    v10 = *v4;
    v11 = [v3[1] localePair];
    v12 = [v11 targetLocale];
    v13 = v12;
    if (v10 != v12)
    {

      goto LABEL_23;
    }

    v27 = [v3[1] autodetectLanguage];

    if (!v27)
    {
LABEL_23:
      v37 = _LTOSLogSpeech(v14, v15);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        __62___LTHybridEndpointer_setServerEndpointerFeatures_withLocale___block_invoke_cold_1(v4, v37);
      }

      goto LABEL_25;
    }

    v28 = _LTOSLogSpeech(v14, v15);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      LOWORD(v39) = 0;
      _os_log_impl(&dword_232E53000, v28, OS_LOG_TYPE_INFO, "Received server endpointer features for target locale", &v39, 2u);
    }

    objc_storeStrong(v3 + 10, a1[5]);
    if (v3[7] && v3[9])
    {
      v31 = v3[8];
      v32 = _LTOSLogSpeech(v29, v30);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
      if (v31)
      {
        if (v33)
        {
          v34 = v3[8];
          v35 = v32;
          [v34 floatValue];
          v39 = 134217984;
          v40 = v36;
          _os_log_impl(&dword_232E53000, v35, OS_LOG_TYPE_INFO, "Updating target endpointer threshold to %f", &v39, 0xCu);
        }

        v26 = v3[7];
        v25 = v3[8];
LABEL_22:
        [v25 floatValue];
        [v26 updateEndpointerThresholdWithValue:?];
        goto LABEL_25;
      }

      if (v33)
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_232E53000, v32, OS_LOG_TYPE_INFO, "Re-request sampling rate for target endpointer", &v39, 2u);
      }

      v38 = v3[7];
      goto LABEL_32;
    }
  }

LABEL_25:
}

void __42___LTHybridEndpointer_addSpeechAudioData___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) length];
    v4 = v3 / *(WeakRetained + 19);
    v6 = _LTOSLogSpeech(v3, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Adding audio samples %zu", &v7, 0xCu);
    }

    [*(WeakRetained + 11) addAudio:*(a1 + 32) numSamples:v4];
  }
}

void __31___LTHybridEndpointer_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogSpeech(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_232E53000, v4, OS_LOG_TYPE_INFO, "Sending end of audio to SPG", v5, 2u);
    }

    [v3[11] endAudio];
  }
}

void __54___LTHybridEndpointer_clientSilenceFeaturesAvailable___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[3])
    {
      v4 = [WeakRetained didEndpointWithFeatures:WeakRetained[6] silenceFeatures:*(a1 + 32) endpointer:?];
      *(v3 + 104) = v4;
      v6 = _LTOSLogSpeech(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(v3 + 104);
        v15 = 67109120;
        v16 = v7;
        _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Endpointing decision from source endpointer %{BOOL}i", &v15, 8u);
      }
    }

    if (v3[7])
    {
      if ((v3[13] & 1) == 0)
      {
        if ([v3[1] autodetectLanguage])
        {
          v8 = [v3 didEndpointWithFeatures:v3[10] silenceFeatures:*(a1 + 32) endpointer:v3[7]];
          *(v3 + 104) = v8;
          v10 = _LTOSLogSpeech(v8, v9);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = *(v3 + 104);
            v15 = 67109120;
            v16 = v11;
            _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Endpointing decision from target endpointer %{BOOL}i", &v15, 8u);
          }
        }
      }
    }

    if (*(v3 + 104) == 1)
    {
      v12 = objc_loadWeakRetained(v3 + 12);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained(v3 + 12);
        [v14 hybridEndpointerFoundEndpoint];
      }
    }
  }
}

void __62___LTHybridEndpointer_setServerEndpointerFeatures_withLocale___block_invoke_cold_1(void **a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 localeIdentifier];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_232E53000, v3, OS_LOG_TYPE_ERROR, "Unexpected locale %{public}@ for server endpointer features", &v5, 0xCu);
}

@end