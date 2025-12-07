@interface WBSBrowsingAssistantContentProvider
+ (BOOL)assistantEnabledForCurrentDevice;
+ (BOOL)assistantEnabledForLocale:(id)locale;
+ (PARSession)sharedPARSession;
+ (id)_assetManagerForCurrentSystemLocale;
+ (id)_sharedSessionConfiguration;
+ (id)filteredStringForURL:(id)l needsVariants:(BOOL *)variants;
+ (void)_assetManagerForCurrentSystemLocale;
+ (void)clearAssistantAssetCache;
+ (void)subscribeToAssistantAssetAndDownloadNow:(BOOL)now;
+ (void)unsubscribeFromAssistantAsset;
- (void)checkContentAvailabilityForURL:(id)l locale:(id)locale webpageIdentifier:(id)identifier completion:(id)completion;
- (void)fetchContentForURL:(id)l completion:(id)completion;
@end

@implementation WBSBrowsingAssistantContentProvider

+ (id)_sharedSessionConfiguration
{
  if (_sharedSessionConfiguration_onceToken != -1)
  {
    +[WBSBrowsingAssistantContentProvider _sharedSessionConfiguration];
  }

  v3 = _sharedSessionConfiguration_configuration;

  return v3;
}

void __66__WBSBrowsingAssistantContentProvider__sharedSessionConfiguration__block_invoke()
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Safari/%s", "8622.2.11.10.8"];
  v0 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"Safari" userAgent:v2];
  v1 = _sharedSessionConfiguration_configuration;
  _sharedSessionConfiguration_configuration = v0;
}

+ (PARSession)sharedPARSession
{
  _sharedSessionConfiguration = [self _sharedSessionConfiguration];
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E6998670] sharedPARSessionWithConfiguration:_sharedSessionConfiguration];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__WBSBrowsingAssistantContentProvider_sharedPARSession__block_invoke;
    block[3] = &unk_1E7FB6D90;
    v6 = _sharedSessionConfiguration;
    if (sharedPARSession_onceToken != -1)
    {
      dispatch_once(&sharedPARSession_onceToken, block);
    }

    v3 = sharedPARSession_sharedSession;
  }

  return v3;
}

void __55__WBSBrowsingAssistantContentProvider_sharedPARSession__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6998670] sessionWithConfiguration:*(a1 + 32)];
  v2 = sharedPARSession_sharedSession;
  sharedPARSession_sharedSession = v1;
}

+ (BOOL)assistantEnabledForCurrentDevice
{
  sharedPARSession = [objc_opt_class() sharedPARSession];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v3 = [sharedPARSession safariAssistantEnabledStatus], v3 != 1))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v3, v4);
    v5 = 0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_DEFAULT, "Assistant is not supported for this device.", v8, 2u);
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (BOOL)assistantEnabledForLocale:(id)locale
{
  v12 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  sharedPARSession = [objc_opt_class() sharedPARSession];
  v5 = [sharedPARSession safariAssistantEnabledStatusForPageLanguage:localeCopy];
  v7 = v5;
  if (v5 != 1)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138739971;
      v11 = localeCopy;
      _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Assitant is not eligible for page language: %{sensitive}@", &v10, 0xCu);
    }
  }

  return v7 == 1;
}

+ (id)filteredStringForURL:(id)l needsVariants:(BOOL *)variants
{
  absoluteString = [l absoluteString];
  _assetManagerForCurrentSystemLocale = [self _assetManagerForCurrentSystemLocale];
  if (_assetManagerForCurrentSystemLocale)
  {
    sharedPARSession = [self sharedPARSession];
    v9 = [sharedPARSession bag];

    if (objc_opt_respondsToSelector())
    {
      safariAssistantHashPrefixLength = [v9 safariAssistantHashPrefixLength];
    }

    else
    {
      safariAssistantHashPrefixLength = 21;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [_assetManagerForCurrentSystemLocale prefilterSafariSummarizationPrefetchRequestModelWithUrlString:absoluteString prefetchHashPrefixLength:safariAssistantHashPrefixLength];
      if (([v12 hasMatchedPattern] & 1) == 0)
      {
        *variants = 1;
      }

      prefilterUrl = [v12 prefilterUrl];
    }

    else
    {
      prefilterUrl = absoluteString;
    }
  }

  else
  {
    prefilterUrl = absoluteString;
  }

  return prefilterUrl;
}

+ (id)_assetManagerForCurrentSystemLocale
{
  getSAAssetManagerFactoryClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_12;
  }

  if (!_assetManagerForCurrentSystemLocale__localeToAssetManagerMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v3 = _assetManagerForCurrentSystemLocale__localeToAssetManagerMap;
    _assetManagerForCurrentSystemLocale__localeToAssetManagerMap = dictionary;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v6 = [_assetManagerForCurrentSystemLocale__localeToAssetManagerMap objectForKeyedSubscript:localeIdentifier];
  if (!v6)
  {
    v13 = 0;
    v6 = [getSAAssetManagerFactoryClass() safariAssistantAssetManagerWithLocale:localeIdentifier error:&v13];
    v8 = v13;
    if (v8)
    {
      v10 = v8;
      v11 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[(WBSBrowsingAssistantContentProvider *)localeIdentifier];
      }

      v7 = 0;
      goto LABEL_11;
    }

    [_assetManagerForCurrentSystemLocale__localeToAssetManagerMap setObject:v6 forKeyedSubscript:localeIdentifier];
  }

  v6 = v6;
  v7 = v6;
LABEL_11:

LABEL_12:

  return v7;
}

+ (void)subscribeToAssistantAssetAndDownloadNow:(BOOL)now
{
  v16 = *MEMORY[0x1E69E9840];
  _assetManagerForCurrentSystemLocale = [self _assetManagerForCurrentSystemLocale];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (_assetManagerForCurrentSystemLocale)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __79__WBSBrowsingAssistantContentProvider_subscribeToAssistantAssetAndDownloadNow___block_invoke;
      v10[3] = &unk_1E7FB7098;
      v11 = localeIdentifier;
      nowCopy = now;
      v12 = _assetManagerForCurrentSystemLocale;
      [v12 subscribeToAndPreloadSafariSummarizationAssetsForLocale:v11 completionHandler:v10];
    }
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v15 = localeIdentifier;
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Safari failed to subscribe to UAF asset download for locale: %{sensitive}@", buf, 0xCu);
    }
  }
}

void __79__WBSBrowsingAssistantContentProvider_subscribeToAssistantAssetAndDownloadNow___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138739971;
    v10 = v4;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Safari finishes subscribing to assistant assets: %{sensitive}@", buf, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__WBSBrowsingAssistantContentProvider_subscribeToAssistantAssetAndDownloadNow___block_invoke_22;
    v7[3] = &unk_1E7FB6D90;
    v8 = v5;
    [v6 ensureSafariSummarizationAssetsDownloadedForLocale:v8 completionHandler:v7];
  }
}

void __79__WBSBrowsingAssistantContentProvider_subscribeToAssistantAssetAndDownloadNow___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138739971;
    v6 = v4;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Safari finishes downloading assistant assets: %{sensitive}@", &v5, 0xCu);
  }
}

+ (void)clearAssistantAssetCache
{
  _assetManagerForCurrentSystemLocale = [self _assetManagerForCurrentSystemLocale];
  v3 = _assetManagerForCurrentSystemLocale;
  if (_assetManagerForCurrentSystemLocale)
  {
    v5 = _assetManagerForCurrentSystemLocale;
    v4 = objc_opt_respondsToSelector();
    v3 = v5;
    if (v4)
    {
      [v5 resetSafariSummarizationAssets];
      v3 = v5;
    }
  }
}

+ (void)unsubscribeFromAssistantAsset
{
  _assetManagerForCurrentSystemLocale = [self _assetManagerForCurrentSystemLocale];
  [_assetManagerForCurrentSystemLocale unsubscribeFromSafariSummarizationAssetsWithCompletionHandler:&__block_literal_global_26];
}

void __68__WBSBrowsingAssistantContentProvider_unsubscribeFromAssistantAsset__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_DEFAULT, "Safari finishes unsubscribing assistant assets", v3, 2u);
  }
}

- (void)checkContentAvailabilityForURL:(id)l locale:(id)locale webpageIdentifier:(id)identifier completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  v38 = 0;
  v11 = [objc_opt_class() filteredStringForURL:lCopy needsVariants:&v38];
  v13 = v11;
  if (lCopy && v11)
  {
    v14 = +[WBSBiomeDonationManager sharedManager];
    [v14 donateBrowsingAssistantBloomFilterPassedEventWithWebPageID:identifierCopy];

    v15 = MEMORY[0x1E6998648];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v18 = [v15 prefetchRequestForUrl:v13 locale:localeIdentifier];

    if (v38 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v19 = [WBSBrowsingAssistantURLVariants variantsForURL:lCopy];
      variants = [v19 variants];
      [v18 setUrlVariants:variants];
    }

    if (v38)
    {
      absoluteString = [lCopy absoluteString];
    }

    else
    {
      absoluteString = v13;
    }

    v27 = absoluteString;
    v28 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(absoluteString, v22);
    if (os_signpost_enabled(v28))
    {
      *buf = 134217984;
      v40 = v18;
      _os_signpost_emit_with_name_impl(&dword_1BB6F3000, v28, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HashPrefixFetching", "Request [%p]", buf, 0xCu);
    }

    sharedPARSession = [objc_opt_class() sharedPARSession];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke;
    v33[3] = &unk_1E7FB70C0;
    v34 = v18;
    v35 = lCopy;
    v36 = v27;
    v37 = completionCopy;
    v30 = v27;
    v31 = v18;
    v32 = [sharedPARSession taskWithRequest:v31 completion:v33];

    [v32 resume];
  }

  else
  {
    v23 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v11, v12);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v24)
    {
      *buf = 138739971;
      v40 = lCopy;
      _os_log_impl(&dword_1BB6F3000, v23, OS_LOG_TYPE_INFO, "Safari didn't find a match for the URL in bloom filter or pattern list. URL: %{sensitive}@", buf, 0xCu);
    }

    if (v13)
    {
      v26 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [WBSBrowsingAssistantContentProvider checkContentAvailabilityForURL:v26 locale:? webpageIdentifier:? completion:?];
      }
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v6, v7);
  v9 = os_signpost_enabled(v8);
  if (v9)
  {
    v11 = @"YES";
    v12 = a1[4];
    if (!v5)
    {
      v11 = @"NO";
    }

    *buf = 134218242;
    v65 = v12;
    v66 = 2112;
    v67 = v11;
    _os_signpost_emit_with_name_impl(&dword_1BB6F3000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HashPrefixFetching", "Request [%p] Success=%@ enableTelemetry=YES ", buf, 0x16u);
  }

  if (v6)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v9, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke_cold_1(a1, v13);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v14 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v41 = v5;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v40 = v14;
      obj = [v14 hashBucketDetails];
      v44 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      v17 = 0;
      v18 = 0;
      if (v44)
      {
        v43 = *v58;
        do
        {
          v19 = 0;
          do
          {
            if (*v58 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v45 = v19;
            v20 = *(*(&v57 + 1) + 8 * v19);
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v48 = [v20 hash_details];
            v21 = [v48 countByEnumeratingWithState:&v53 objects:v62 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v54;
              do
              {
                v24 = 0;
                v25 = sel_matched_url_variant;
                v26 = sel_sba_entity_types;
                v46 = v22;
                do
                {
                  if (*v54 != v23)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v27 = *(*(&v53 + 1) + 8 * v24);
                  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v27 matched_url_variant], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", a1[6]), v28, v29))
                  {
                    v18 |= [v27 has_summary];
                    v17 |= [v27 has_table_of_contents];
                    if (objc_opt_respondsToSelector())
                    {
                      v30 = v25;
                      v31 = v17;
                      v32 = v26;
                      v51 = 0u;
                      v52 = 0u;
                      v49 = 0u;
                      v50 = 0u;
                      v33 = [v27 sba_entity_types];
                      v34 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
                      if (v34)
                      {
                        v35 = v34;
                        v36 = *v50;
                        do
                        {
                          for (i = 0; i != v35; ++i)
                          {
                            if (*v50 != v36)
                            {
                              objc_enumerationMutation(v33);
                            }

                            v38 = [*(*(&v49 + 1) + 8 * i) integerValue];
                            if (v38 > 2)
                            {
                              if (v38 == 3)
                              {
                                v18 |= 8uLL;
                              }

                              else if (v38 == 4)
                              {
                                v18 |= 0x10uLL;
                              }
                            }

                            else if (v38 == 1)
                            {
                              v18 |= 2uLL;
                            }

                            else if (v38 == 2)
                            {
                              v18 |= 4uLL;
                            }
                          }

                          v35 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
                        }

                        while (v35);
                      }

                      v26 = v32;
                      v17 = v31;
                      v25 = v30;
                      v22 = v46;
                    }
                  }

                  ++v24;
                }

                while (v24 != v22);
                v22 = [v48 countByEnumeratingWithState:&v53 objects:v62 count:16];
              }

              while (v22);
            }

            v19 = v45 + 1;
          }

          while (v45 + 1 != v44);
          v44 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
        }

        while (v44);
      }

      (*(a1[7] + 16))();
      v6 = 0;
      v5 = v41;
      v14 = v40;
    }

    else
    {
      if (v14)
      {
        v39 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(isKindOfClass, v16);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke_cold_2(v39);
        }
      }

      (*(a1[7] + 16))();
    }
  }
}

- (void)fetchContentForURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    v22 = 0;
    v7 = [objc_opt_class() filteredStringForURL:lCopy needsVariants:&v22];
    v9 = v7;
    if (v7)
    {
      if (v22)
      {
        absoluteString = [lCopy absoluteString];
      }

      else
      {
        absoluteString = v7;
      }

      v12 = absoluteString;
      v13 = MEMORY[0x1E6998648];
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      localeIdentifier = [currentLocale localeIdentifier];
      v16 = [v13 summarizeRequestForUrl:v12 locale:localeIdentifier];

      sharedPARSession = [objc_opt_class() sharedPARSession];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke;
      v19[3] = &unk_1E7FB70E8;
      v20 = lCopy;
      v21 = completionCopy;
      v18 = [sharedPARSession taskWithRequest:v16 completion:v19];

      [v18 resume];
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(0, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WBSBrowsingAssistantContentProvider fetchContentForURL:lCopy completion:v11];
      }

      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0]);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0]);
  }
}

void __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = v7;
  if (v7)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke_cold_1(a1, v10);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = v6;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = [v11 summaryCandidates];
      v15 = [v14 firstObject];
      v16 = *(a1 + 40);
      v17 = [v15 results];
      (*(v16 + 16))(v16, v17);
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant(isKindOfClass, v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke_cold_2(v18);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

+ (void)_assetManagerForCurrentSystemLocale
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  selfCopy = self;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Safari failed to create assistant assitant manager for locale: %{sensitive}@", &v2, 0xCu);
}

void __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [OUTLINED_FUNCTION_3_0() absoluteString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v6, v7, "Failed to check content availability for URL %{sensitive}@ with error %{public}@", v8, v9, v10, v11);
}

void __106__WBSBrowsingAssistantContentProvider_checkContentAvailabilityForURL_locale_webpageIdentifier_completion___block_invoke_cold_2(void *a1)
{
  v2 = MEMORY[0x1E6998658];
  v3 = a1;
  OUTLINED_FUNCTION_3_0();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v7, v8, "Checking content availability failed. Received unexpected response type. Expected %{public}@ but received %{public}@", v9, v10, v11, v12);
}

- (void)fetchContentForURL:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Trying to fetch assistant content for an URL that failed broom filter and pattern check, this should never happen. Please file a bug with URL: %{private}@", &v2, 0xCu);
}

void __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [OUTLINED_FUNCTION_3_0() absoluteString];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v6, v7, "Failed to fetch content for URL %{sensitive}@ with error %{public}@", v8, v9, v10, v11);
}

void __69__WBSBrowsingAssistantContentProvider_fetchContentForURL_completion___block_invoke_cold_2(void *a1)
{
  v2 = MEMORY[0x1E6998660];
  v3 = a1;
  OUTLINED_FUNCTION_3_0();
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_0();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1BB6F3000, v7, v8, "Fetching content failed. Received unexpected response type. Expected %{public}@ but received %{public}@", v9, v10, v11, v12);
}

@end