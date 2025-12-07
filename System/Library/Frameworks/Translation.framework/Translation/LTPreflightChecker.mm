@interface LTPreflightChecker
@end

@implementation LTPreflightChecker

uint64_t __35___LTPreflightChecker__sharedQueue__block_invoke()
{
  _sharedQueue_sharedQueue = dispatch_queue_create("com.apple.translation.TextSession.PreflightChecker", 0);

  return MEMORY[0x2821F96F8]();
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = a1[4];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2;
    v4[3] = &unk_278B6D488;
    objc_copyWeak(&v8, a1 + 7);
    v5 = a1[5];
    v6 = a1[4];
    v7 = a1[6];
    [WeakRetained _checkTranslationSupportForConfiguration:v3 completion:v4];

    objc_destroyWeak(&v8);
  }
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (a2)
    {
      v5 = *(a1 + 40);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2;
      v13[3] = &unk_278B6D460;
      objc_copyWeak(&v17, (a1 + 56));
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      [WeakRetained _resolveSourceLocaleIfNeeded:v5 completion:v13];

      objc_destroyWeak(&v17);
    }

    else
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = [*(a1 + 40) effectiveSourceLocale];
      v8 = [*(a1 + 40) effectiveTargetLocale];
      v9 = [v6 lt_unsupportedPairingErrorWithSource:v7 target:v8];

      v12 = _LTOSLogTextAPI(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v5 = *(a1 + 40);
    if (v3)
    {
      [v5 setResolvedSourceLocale:v3];
      v6 = *(a1 + 40);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_3;
      v20[3] = &unk_278B6D460;
      objc_copyWeak(&v24, (a1 + 56));
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      [WeakRetained _resolveTargetLocaleIfNeeded:v6 completion:v20];

      objc_destroyWeak(&v24);
      goto LABEL_14;
    }

    v7 = [v5 requestedSourceLocale];

    if (v7)
    {
      v10 = _LTOSLogTextAPI(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2_cold_1((a1 + 40), v10);
      }

      v11 = MEMORY[0x277CCA9B8];
      v12 = [*(a1 + 40) requestedSourceLocale];
      v13 = [v11 lt_unsupportedSourceLanguageError:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:21 userInfo:0];
      v14 = [*(a1 + 40) sourceStrings];
      v15 = [v14 count];

      v18 = _LTOSLogTextAPI(v16, v17);
      v19 = v18;
      if (v15)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23AAF5000, v19, OS_LOG_TYPE_DEFAULT, "Failed to identify source text, asking delegate to resolve it", buf, 2u);
        }

        [WeakRetained _callDelegateOrGiveError:v13 forConfiguration:*(a1 + 40) completion:*(a1 + 48)];
        goto LABEL_13;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23AAF5000, v19, OS_LOG_TYPE_INFO, "Failed to identify source text because there aren't any source strings, returning LID failed error", buf, 2u);
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_13:
  }

LABEL_14:
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v3)
    {
      [*(a1 + 40) setResolvedTargetLocale:v3];
      v7 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_4;
      v12[3] = &unk_278B6D438;
      objc_copyWeak(&v16, (a1 + 56));
      v13 = *(a1 + 32);
      v15 = *(a1 + 48);
      v14 = *(a1 + 40);
      [WeakRetained _resolveLocalePairingForConfiguration:v7 completion:v12];

      objc_destroyWeak(&v16);
    }

    else
    {
      v8 = _LTOSLogTextAPI(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_3_cold_1();
      }

      v9 = MEMORY[0x277CCA9B8];
      v10 = [*(a1 + 40) effectiveTargetLocale];
      v11 = [v9 lt_unsupportedTargetLanguageError:v10];

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v3)
    {
      v7 = _LTOSLogTextAPI(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_4_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:13 userInfo:0];
      v9 = *(a1 + 40);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_5;
      v10[3] = &unk_278B6D410;
      objc_copyWeak(&v14, (a1 + 56));
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      [WeakRetained _callDelegateOrGiveError:v8 forConfiguration:v9 completion:v10];

      objc_destroyWeak(&v14);
    }
  }
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v6)
    {
      v8 = [*(a1 + 40) isForDownloadApprovalOnly];
      if (v8 && (v8 = [*(a1 + 40) isHeadless], (v8 & 1) == 0))
      {
        v12 = _LTOSLogTextAPI(v8, v9);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v6;
          _os_log_impl(&dword_23AAF5000, v12, OS_LOG_TYPE_INFO, "Download-only request got error, but ignoring it since it's likely the user cancelled: %@", &v13, 0xCu);
        }

        v11 = *(*(a1 + 48) + 16);
      }

      else
      {
        v10 = _LTOSLogTextAPI(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_5_cold_1();
        }

        v11 = *(*(a1 + 48) + 16);
      }
    }

    else
    {
      v11 = *(*(a1 + 48) + 16);
    }

    v11();
  }
}

uint64_t __75___LTPreflightChecker__checkTranslationSupportForConfiguration_completion___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __76___LTPreflightChecker__callDelegateOrGiveError_forConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76___LTPreflightChecker__callDelegateOrGiveError_forConfiguration_completion___block_invoke_2;
    block[3] = &unk_278B6D500;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __63___LTPreflightChecker__resolveSourceLocaleIfNeeded_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63___LTPreflightChecker__resolveSourceLocaleIfNeeded_completion___block_invoke_2;
  v10[3] = &unk_278B6D570;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __63___LTPreflightChecker__resolveSourceLocaleIfNeeded_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) || (v3 = MEMORY[0x277CBEAF8], v23[0] = *(a1 + 32), [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "supportedLocales"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "lt_bestMatchForPreferredLocales:fromSupportedLocales:", v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6))
  {
    v7 = _LTOSLogTextAPI(a1, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 _ltLocaleIdentifier];
      v11 = *(a1 + 48) != 0;
      v19 = 138543618;
      v20 = v10;
      v21 = 1024;
      LODWORD(v22) = v11;
      _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "LID resolved source locale of '%{public}@' doesn't match any supportedLocales, considering the source language unsupported, and adding low confidence locales: %{BOOL}i", &v19, 0x12u);
    }

    [*(a1 + 40) setLidUnsupportedLocale:*(a1 + 32)];
    v6 = 0;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = [v12 _ltCompactMap:&__block_literal_global_19_0];
    v15 = _LTOSLogTextAPI(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = [v16 _ltLocaleIdentifier];
      v19 = 138543618;
      v20 = v18;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "LID resolved source locale of '%{public}@', but also had low confidence locales so will need more user intervention: %{public}@", &v19, 0x16u);
    }

    [*(a1 + 40) setLowConfidenceLocales:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = [a1[4] copy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_2;
    v5[3] = &unk_278B6D460;
    objc_copyWeak(&v9, a1 + 7);
    v6 = a1[5];
    v4 = v3;
    v7 = v4;
    v8 = a1[6];
    [WeakRetained _resolveTargetLocaleIfNeeded:v4 completion:v5];

    objc_destroyWeak(&v9);
  }
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v3)
    {
      [*(a1 + 40) setResolvedTargetLocale:v3];
      v7 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_21;
      v12[3] = &unk_278B6D438;
      objc_copyWeak(&v16, (a1 + 56));
      v13 = *(a1 + 32);
      v15 = *(a1 + 48);
      v14 = *(a1 + 40);
      [WeakRetained _resolveLocalePairingForConfiguration:v7 completion:v12];

      objc_destroyWeak(&v16);
    }

    else
    {
      v8 = _LTOSLogTextAPI(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_2_cold_1();
      }

      v9 = MEMORY[0x277CCA9B8];
      v10 = [*(a1 + 40) effectiveTargetLocale];
      v11 = [v9 lt_unsupportedTargetLanguageError:v10];

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v3)
    {
      v7 = _LTOSLogTextAPI(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_21_cold_1();
      }

      v8 = *(*(a1 + 48) + 16);
    }

    else
    {
      v8 = *(*(a1 + 48) + 16);
    }

    v8();
  }
}

void __70___LTPreflightChecker_resolveSourceLocaleForConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 dominantLocale];
  v4 = [v11 lowConfidenceLocales];
  v5 = [_LTSELFLoggingInvocation alloc];
  v6 = [*(a1 + 32) selfLoggingID];
  v7 = [(_LTSELFLoggingInvocation *)v5 initWithInvocationId:v6];

  if (v3)
  {
    [(_LTSELFLoggingInvocation *)v7 languageIdentificationCompletedWithInputSource:1 topLocale:v3 lowConfidenceLocales:MEMORY[0x277CBEBF8]];
    v8 = *(*(a1 + 40) + 16);
LABEL_5:
    v8();
    goto LABEL_6;
  }

  if (v4)
  {
    [(_LTSELFLoggingInvocation *)v7 languageIdentificationCompletedWithInputSource:1 topLocale:0 lowConfidenceLocales:v4];
    v8 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v9 = *(a1 + 40);
  v10 = [v11 dominantUnsupportedLocale];
  (*(v9 + 16))(v9, v10, 0);

LABEL_6:
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 requestedSourceLocale];
  v5 = [v4 _ltLocaleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_23AAF5000, v6, v7, "Failed to validate requested source locale of %{public}@; reporting it's invalid", v8, v9, v10, v11);
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_21_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end