@interface LTTranslationSession
@end

@implementation LTTranslationSession

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) service];

  if (v2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v4 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2;
    v9[3] = &unk_278B6DBE8;
    v5 = *(a1 + 32);
    v10 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_4;
    v6[3] = &unk_278B6DC38;
    objc_copyWeak(&v8, &location);
    v7 = *(a1 + 40);
    [_LTTranslator _getTextServiceProxyWithDelegate:v5 useDedicatedTextMachPort:v4 errorHandler:v9 block:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogXPC(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setService:v5];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 service];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2_5;
  v10[3] = &unk_278B6DC10;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = *(a1 + 32);
  [v9 configInfoForLocale:0 otherLocale:0 completion:v10];

  objc_destroyWeak(&v12);
}

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"RateLimitingMaximumPageLoadRequests"];
  v5 = [v4 unsignedIntValue];

  v6 = [v3 objectForKeyedSubscript:@"RateLimitingMaximumDynamicContentRequests"];

  v7 = [v6 unsignedIntValue];
  v8 = [[_LTRateLimiter alloc] initWithMaximumPageLoadRequest:v5 maximumDynamicContentRequests:v7];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setRateLimiter:v8];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 translationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_3;
  block[3] = &unk_278B6D5E8;
  v13 = *(a1 + 32);
  dispatch_async(v11, block);
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = _LTOSLogXPC(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_cold_1(a1, v6);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v8)
    {
      v9 = *v59;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v59 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v58 + 1) + 8 * i) completionHandler];
          (v11)[2](v11, 0, v5);
        }

        v8 = [v7 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v8);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      dispatch_assert_queue_V2(WeakRetained[10]);
      v13 = v7[9];
      if (v13 && (v14 = (a1 + 32), v15 = [v13 allowedForRequests:{objc_msgSend(*(a1 + 32), "count")}], (v15 & 1) == 0))
      {
        v38 = _LTOSLogXPC(v15, v16);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_cold_2(v14, v38);
        }

        v39 = MEMORY[0x277CCA9B8];
        v40 = [MEMORY[0x277CCA8D8] mainBundle];
        v41 = [v40 localizedStringForKey:@"RATE_LIMIT_EXCEEDED_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
        v37 = [v39 lt_errorWithCode:15 description:v41 userInfo:0];

        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        v54 = 0u;
        v31 = *v14;
        v42 = [v31 countByEnumeratingWithState:&v54 objects:v65 count:16];
        if (v42)
        {
          v43 = *v55;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v55 != v43)
              {
                objc_enumerationMutation(v31);
              }

              v45 = [*(*(&v54 + 1) + 8 * j) completionHandler];
              (v45)[2](v45, 0, v37);
            }

            v42 = [v31 countByEnumeratingWithState:&v54 objects:v65 count:16];
          }

          while (v42);
        }
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v17 = *(a1 + 32);
        v18 = [v17 countByEnumeratingWithState:&v50 objects:v64 count:16];
        if (v18)
        {
          v19 = *v51;
          do
          {
            for (k = 0; k != v18; ++k)
            {
              if (*v51 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v50 + 1) + 8 * k);
              v22 = v7[1];
              v23 = [v21 uniqueID];
              [v22 setObject:v21 forKeyedSubscript:v23];
            }

            v18 = [v17 countByEnumeratingWithState:&v50 objects:v64 count:16];
          }

          while (v18);
        }

        v24 = [*(a1 + 32) _ltCompactMap:&__block_literal_global_15];
        v26 = _LTOSLogXPC(v24, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = *(a1 + 32);
          v28 = v26;
          v29 = [v27 count];
          *buf = 134217984;
          v63 = v29;
          _os_log_impl(&dword_23AAF5000, v28, OS_LOG_TYPE_INFO, "Session sending %zd requests", buf, 0xCu);
        }

        v30 = [*(a1 + 32) firstObject];
        v31 = [v30 requestContext];

        v32 = [v7[3] UUIDString];
        [v31 setSessionID:v32];

        [v31 setLogIdentifier:v7[6]];
        if (!v7[2])
        {
          [v31 setSourceURL:v7[5]];
          v33 = objc_alloc_init(_LTSafariLatencyLoggingRequest);
          v34 = [v31 localePair];
          [(_LTSafariLatencyLoggingRequest *)v33 setLocalePair:v34];

          v35 = v7[2];
          v7[2] = v33;
        }

        v36 = [v7 service];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_19;
        v46[3] = &unk_278B6DCD0;
        objc_copyWeak(&v49, (a1 + 40));
        v37 = v24;
        v47 = v37;
        v48 = *(a1 + 32);
        [v36 translateParagraphs:v37 withContext:v31 completion:v46];

        objc_destroyWeak(&v49);
      }
    }
  }
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_19(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[10];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_2;
    v7[3] = &unk_278B6DCA8;
    v8 = v3;
    v9 = a1[4];
    v10 = a1[5];
    v11 = v5;
    dispatch_async(v6, v7);
  }
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  v5 = _LTOSLogTranslationEngine(a1, a2);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_2_cold_1(a1, v6);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = *(a1 + 48);
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 completionHandler];

          if (v13)
          {
            v14 = [v12 completionHandler];
            v14[2](v14, 0, *v3);
          }

          v15 = *(*(a1 + 56) + 8);
          v16 = [v12 uniqueID];
          [v15 removeObjectForKey:v16];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 40);
    v18 = v6;
    *buf = 134217984;
    v24 = [v17 count];
    _os_log_impl(&dword_23AAF5000, v18, OS_LOG_TYPE_INFO, "Finished sending %zu paragraphs", buf, 0xCu);
  }
}

void __42___LTTranslationSession_cancelPendingWork__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = _LTOSLogXPC(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __42___LTTranslationSession_cancelPendingWork__block_invoke_cold_1(v2);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained sessionID];
      v7 = _LTOSLogTranslationEngine(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "Client requested to cancel pending work for sessionID %{public}@", &v9, 0xCu);
      }

      v8 = [v4 service];
      [v8 attemptToCancelRequestsWithSessionID:v5];
    }
  }
}

void __41___LTTranslationSession_provideFeedback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = _LTOSLogXPC(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41___LTTranslationSession_provideFeedback___block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = _LTOSLogUserFeedback(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_DEFAULT, "Session sending feedback", v14, 2u);
      }

      v11 = [*(a1 + 32) localePair];

      if (!v11)
      {
        v12 = [v9[2] localePair];
        [*(a1 + 32) setLocalePair:v12];
      }

      v13 = [v9[3] UUIDString];
      [*(a1 + 32) setSessionID:v13];

      [v9[7] log:*(a1 + 32)];
    }
  }
}

void __51___LTTranslationSession_markFirstParagraphComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] markFirstParagraphComplete];
    WeakRetained = v2;
  }
}

void __41___LTTranslationSession_markProgressDone__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] markProgressDone];
    WeakRetained = v2;
  }
}

void __41___LTTranslationSession_markPageComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[9] markPageLoaded];
    [v2[2] markPageComplete];
    [v2[7] log:v2[2]];
    WeakRetained = v2;
  }
}

void __59___LTTranslationSession_paragraphTranslation_result_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained[2] markResponse];
    v3 = [v7[1] objectForKeyedSubscript:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 completionHandler];

      if (v5)
      {
        v6 = [v4 completionHandler];
        v6[2](v6, *(a1 + 40), *(a1 + 48));
      }

      [v7[1] removeObjectForKey:*(a1 + 32)];
    }

    WeakRetained = v7;
  }
}

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_ERROR, "Error ensuring service connection %@", v1, 0xCu);
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_23AAF5000, v4, v5, "Translation XPC connection failure, ignoring %zu requests", v6, v7, v8, v9);
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_cold_2(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_23AAF5000, v4, v5, "Translation rate limit reached, ignoring %zu requests", v6, v7, v8, v9);
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_1();
  v6 = 2114;
  v7 = v4;
  _os_log_error_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_ERROR, "Error sending %zd paragraphs %{public}@", v5, 0x16u);
}

void __41___LTTranslationSession_provideFeedback___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_ERROR, "Translation XPC connection failure, abort sending session feedback: %@", v1, 0xCu);
}

@end