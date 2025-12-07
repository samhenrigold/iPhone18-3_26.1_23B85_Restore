@interface STSELFLoggingClient
@end

@implementation STSELFLoggingClient

void __57___STSELFLoggingClient_registerClientList_configuration___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277CE1B38]);
    v4 = [*(a1 + 32) sourceLocale];
    v5 = [*(a1 + 32) targetLocale];
    v6 = [v3 initWithSourceLocale:v4 targetLocale:v5];

    v8 = *(*(a1 + 40) + 8);
    if (v8)
    {
      v9 = [v8 localePair];
      v10 = [v9 isBidirectionalEqual:v6];

      v13 = _LTOSLogSTInstrumentation(v11, v12);
      v14 = v13;
      if (v10)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __57___STSELFLoggingClient_registerClientList_configuration___block_invoke_cold_2(v14);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __57___STSELFLoggingClient_registerClientList_configuration___block_invoke_cold_1(v14);
      }
    }

    else
    {
      v15 = _LTOSLogSTInstrumentation(0, v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [v6 sourceLocale];
        v18 = [v17 _ltLocaleIdentifier];
        v19 = [v6 targetLocale];
        v20 = [v19 _ltLocaleIdentifier];
        v24 = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v20;
        _os_log_impl(&dword_26B5BC000, v16, OS_LOG_TYPE_INFO, "Creating new logging session with languages: %{public}@ - %{public}@", &v24, 0x16u);
      }

      v21 = [[_STSELFLoggingSession alloc] initWithLocalePair:v6];
      v22 = *(a1 + 40);
      v23 = *(v22 + 8);
      *(v22 + 8) = v21;

      [*(*(a1 + 40) + 8) setTtsPlaybackEnabled:{objc_msgSend(*(a1 + 32), "omitTranslatedAudio") ^ 1}];
    }
  }
}

uint64_t __45___STSELFLoggingClient__endSessionWithError___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 48)))
  {
    v2 = *(*(a1 + 32) + 8);
    if (v2)
    {
      [v2 logSessionEnd:*(a1 + 40)];
      v3 = *(a1 + 32);
      v4 = *(v3 + 8);
      *(v3 + 8) = 0;
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __43___STSELFLoggingClient_translationDidStart__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(*(a1 + 32) + 8) logSessionStart];
    WeakRetained = v3;
  }
}

@end