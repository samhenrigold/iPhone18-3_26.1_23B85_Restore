@interface LTLanguageAvailability
@end

@implementation LTLanguageAvailability

void __31___LTLanguageAvailability_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = _LTOSLogTextAPI(WeakRetained, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __31___LTLanguageAvailability_init__block_invoke_cold_1(v7, v3);
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v11 = __31___LTLanguageAvailability_init__block_invoke_2;
    v12 = &unk_278B6CD80;
    v14 = &v15;
    v13 = v6;
    v8 = v10;
    os_unfair_lock_assert_not_owner(v6 + 2);
    os_unfair_lock_lock(v6 + 2);
    v11(v8);

    os_unfair_lock_unlock(v6 + 2);
    v9 = v16[5];
    if (v9)
    {
      (*(v9 + 16))(v9, v3);
    }

    _Block_object_dispose(&v15, 8);
  }
}

void __31___LTLanguageAvailability_init__block_invoke_2(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

void __60___LTLanguageAvailability_supportedLanguagesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained _uniqueLocalesFromSupportedPairs:v7];
    (*(v5 + 16))(v5, v6);
  }
}

void __68___LTLanguageAvailability_statusFromLanguage_toLanguage_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v7 = _LTOSLogTextAPI(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "Got an error when checking status so returning unsupported: %@", &v9, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

void __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v14[0] = *(a1 + 32);
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    v6 = [[_LTPreflightConfiguration alloc] initWithSourceStrings:v5 supportedLocalePairs:v3];
    [(_LTPreflightConfiguration *)v6 setRequestedSourceLocale:*(a1 + 40)];
    [(_LTPreflightConfiguration *)v6 setRequestedTargetLocale:*(a1 + 48)];
    v7 = WeakRetained[6];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2;
    v8[3] = &unk_278B6CE98;
    objc_copyWeak(&v13, (a1 + 64));
    v12 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = v3;
    [v7 preflightConfiguration:v6 completion:v8];

    objc_destroyWeak(&v13);
  }
}

void __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:11 userInfo:0];
      v9 = [v6 domain];
      v10 = [v8 domain];
      if ([v9 isEqualToString:v10])
      {
        v11 = [v6 code];
        v12 = [v8 code];

        if (v11 == v12)
        {
          v15 = _LTOSLogTextAPI(v13, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23AAF5000, v15, OS_LOG_TYPE_INFO, "Preflight checks determined the language pairing isn't supported; returning unsupported rather than an error", buf, 2u);
          }

          (*(*(a1 + 56) + 16))();
          goto LABEL_35;
        }
      }

      else
      {
      }

      v31 = _LTOSLogTextAPI(v13, v14);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_cold_1();
      }

      goto LABEL_22;
    }

    if ([v5 nextStep] != 1)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:21 userInfo:0];
      v33 = _LTOSLogTextAPI(v8, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_cold_2();
      }

LABEL_22:
      (*(*(a1 + 56) + 16))();
LABEL_35:

      goto LABEL_36;
    }

    v8 = [v5 resolvedSourceLocale];
    v16 = [v5 resolvedTargetLocale];
    v18 = _LTOSLogTextAPI(v16, v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (!v8 || !v16)
    {
      if (v19)
      {
        v34 = *(a1 + 32);
        v35 = v18;
        v36 = [v34 _ltLocaleIdentifier];
        v37 = [*(a1 + 40) _ltLocaleIdentifier];
        *buf = 138543618;
        v51 = v36;
        v52 = 2114;
        v53 = v37;
        _os_log_impl(&dword_23AAF5000, v35, OS_LOG_TYPE_INFO, "Unable to determine language status since source ('%{public}@') or target ('%{public}@') language isn't supported", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_34;
    }

    if (v19)
    {
      v20 = v18;
      v21 = [v8 _ltLocaleIdentifier];
      v22 = [v16 _ltLocaleIdentifier];
      *buf = 138543618;
      v51 = v21;
      v52 = 2114;
      v53 = v22;
      _os_log_impl(&dword_23AAF5000, v20, OS_LOG_TYPE_INFO, "Checking language status for validated locales of source '%{public}@' and target '%{public}@'", buf, 0x16u);
    }

    v23 = *(a1 + 48);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_8;
    v47[3] = &unk_278B6CE20;
    v24 = v8;
    v48 = v24;
    v25 = v16;
    v49 = v25;
    v26 = [v23 lt_hasObjectPassingTest:v47];
    if (v26)
    {
      if (![WeakRetained allowOnlineTranslation] || (v28 = _LTIsInternalInstall(), !v28))
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_10;
        v42[3] = &unk_278B6CE70;
        objc_copyWeak(&v46, (a1 + 64));
        v43 = v24;
        v44 = v25;
        v45 = *(a1 + 56);
        [WeakRetained _installedLocalesWithCompletion:v42];

        objc_destroyWeak(&v46);
        goto LABEL_33;
      }

      v30 = _LTOSLogTextAPI(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23AAF5000, v30, OS_LOG_TYPE_INFO, "Not checking installed locales since online translation is allowed, just reporting the pairing is installed", buf, 2u);
      }
    }

    else
    {
      v38 = _LTOSLogTextAPI(v26, v27);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = v38;
        v40 = [v24 _ltLocaleIdentifier];
        v41 = [v25 _ltLocaleIdentifier];
        *buf = 138543618;
        v51 = v40;
        v52 = 2114;
        v53 = v41;
        _os_log_impl(&dword_23AAF5000, v39, OS_LOG_TYPE_INFO, "Returning unsupported language pairing since there's no supported pairing from '%{public}@' to '%{public}@'", buf, 0x16u);
      }
    }

    (*(*(a1 + 56) + 16))();
LABEL_33:

LABEL_34:
    goto LABEL_35;
  }

LABEL_36:
}

uint64_t __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceLocale];
  if ([v4 _ltEqual:*(a1 + 32)])
  {
    v5 = [v3 targetLocale];
    v6 = [v5 _ltEqual:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_11;
    v41[3] = &unk_278B6CE48;
    v42 = *(a1 + 32);
    v8 = [v5 lt_hasObjectPassingTest:v41];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_3;
    v39[3] = &unk_278B6CE48;
    v40 = *(a1 + 40);
    v9 = [v5 lt_hasObjectPassingTest:v39];
    v11 = v9;
    if (v8 && v9)
    {
      v12 = _LTOSLogTextAPI(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = v12;
        v15 = [v13 _ltLocaleIdentifier];
        v16 = [*(a1 + 40) _ltLocaleIdentifier];
        *buf = 138543618;
        v44 = v15;
        v45 = 2114;
        v46 = v16;
        _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_INFO, "Both source ('%{public}@') and target ('%{public}@') languages are installed", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_13;
      v37[3] = &unk_278B6CE48;
      v38 = *(a1 + 32);
      v17 = [v6 lt_hasObjectPassingTest:v37];
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_14;
      v35 = &unk_278B6CE48;
      v36 = *(a1 + 40);
      v18 = [v6 lt_hasObjectPassingTest:&v32];
      v19 = v18;
      v20 = v17 | v8;
      v22 = _LTOSLogTextAPI(v18, v21);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (v20 & 1) != 0 && ((v19 | v11))
      {
        if (v23)
        {
          v24 = *(a1 + 32);
          v25 = v22;
          v26 = [v24 _ltLocaleIdentifier];
          v27 = [*(a1 + 40) _ltLocaleIdentifier];
          *buf = 138543618;
          v44 = v26;
          v45 = 2114;
          v46 = v27;
          _os_log_impl(&dword_23AAF5000, v25, OS_LOG_TYPE_INFO, "Both source ('%{public}@') and target ('%{public}@') languages are at least downloading, saying this pairing is downloading", buf, 0x16u);
        }
      }

      else if (v23)
      {
        v28 = *(a1 + 32);
        v29 = v22;
        v30 = [v28 _ltLocaleIdentifier];
        v31 = [*(a1 + 40) _ltLocaleIdentifier];
        *buf = 138543618;
        v44 = v30;
        v45 = 2114;
        v46 = v31;
        _os_log_impl(&dword_23AAF5000, v29, OS_LOG_TYPE_INFO, "Either source ('%{public}@') and/or target ('%{public}@') language isn't installed or downloading, saying this pairing is supported but not installed or downloading", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __45___LTLanguageAvailability_setLocaleProvider___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t __46___LTLanguageAvailability__updateCachedValues__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_loadWeakRetained((*(a1 + 32) + 64));

  return MEMORY[0x2821F96F8]();
}

void __46___LTLanguageAvailability__updateCachedValues__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = __46___LTLanguageAvailability__updateCachedValues__block_invoke_3;
    v9 = &unk_278B6CF10;
    v10 = WeakRetained;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = v3;
    v6 = v7;
    os_unfair_lock_assert_not_owner(v5 + 2);
    os_unfair_lock_lock(v5 + 2);
    v8(v6);

    os_unfair_lock_unlock(v5 + 2);
    [(os_unfair_lock_s *)v5 _didUpdateCachedValues];

    objc_destroyWeak(&v12);
  }
}

void __46___LTLanguageAvailability__updateCachedValues__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained == v3)
  {
    *(*(a1 + 32) + 16) = [*(a1 + 40) copy];

    MEMORY[0x2821F96F8]();
  }
}

void __49___LTLanguageAvailability__didUpdateCachedValues__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 16));
  v2 = _Block_copy(*(a1[4] + 24));
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;
}

void __63___LTLanguageAvailability__supportedLocalePairsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _Block_copy(*(WeakRetained + 3));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63___LTLanguageAvailability__supportedLocalePairsWithCompletion___block_invoke_3;
    aBlock[3] = &unk_278B6CF88;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v4;
    v10 = *(a1 + 32);
    v5 = v4;
    v6 = _Block_copy(aBlock);
    v7 = v3[3];
    v3[3] = v6;

    objc_destroyWeak(&v11);
  }
}

void __63___LTLanguageAvailability__supportedLocalePairsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) cachedStatus];

  return MEMORY[0x2821F96F8]();
}

void __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _Block_copy(*(WeakRetained + 4));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke_3;
    aBlock[3] = &unk_278B6CF88;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v4;
    v10 = *(a1 + 32);
    v5 = v4;
    v6 = _Block_copy(aBlock);
    v7 = v3[4];
    v3[4] = v6;

    objc_destroyWeak(&v11);
  }
}

void __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_loadWeakRetained((*(a1 + 32) + 64));

  return MEMORY[0x2821F96F8]();
}

void __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v12 = __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke_3;
    v13 = &unk_278B6CFD8;
    v14 = WeakRetained;
    v15 = &v17;
    objc_copyWeak(&v16, (a1 + 48));
    v9 = v11;
    os_unfair_lock_assert_not_owner(v8 + 2);
    os_unfair_lock_lock(v8 + 2);
    v12(v9);

    os_unfair_lock_unlock(v8 + 2);
    v10 = *(a1 + 32);
    if (*(v18 + 24) == 1)
    {
      [(os_unfair_lock_s *)v8 _installedLocalesWithCompletion:v10];
    }

    else
    {
      (*(v10 + 16))(*(a1 + 32), v5, v6);
    }

    objc_destroyWeak(&v16);
    _Block_object_dispose(&v17, 8);
  }
}

void __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v2 = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = WeakRetained != v2;
}

void __67___LTLanguageAvailability_currentlyInstalledLocalesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    v10 = *v21;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 status];
        v14 = v5;
        if (v13 != 2)
        {
          if (v13 != 1)
          {
            continue;
          }

          v14 = v6;
        }

        v15 = [v12 locale];
        [v14 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v9)
      {
LABEL_13:

        v16 = *(a1 + 32);
        v17 = [v5 copy];
        v18 = [v6 copy];
        (*(v16 + 16))(v16, v17, v18);

        v3 = v19;
        break;
      }
    }
  }
}

void __31___LTLanguageAvailability_init__block_invoke_cold_1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 count];
  _os_log_debug_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEBUG, "Got updated list of %zu language statuses", &v4, 0xCu);
}

@end