@interface WBSFoundInRecommendationManager
+ (BOOL)isBundleIdentifierFromCalendar:(id)calendar;
+ (BOOL)isBundleIdentifierFromMessages:(id)messages;
+ (id)_linkRecommendationsFromSGSuggestions:(id)suggestions contactStoreProvider:(id)provider;
+ (unint64_t)foundInSourceFromBundleIdentifier:(id)identifier;
- (void)_createInternalQueueIfNecessary;
- (void)_recentURLRecommendationsWithCompletionHandler:(id)handler;
- (void)beginListeningForURLSuggestionChanges;
- (void)recentRecommendationsWithCompletionHandler:(id)handler;
- (void)stopListeningForURLSuggestionChanges;
@end

@implementation WBSFoundInRecommendationManager

- (void)beginListeningForURLSuggestionChanges
{
  p_changeNotificationToken = &self->_changeNotificationToken;
  if (!self->_changeNotificationToken)
  {
    objc_initWeak(&location, self);
    [(WBSFoundInRecommendationManager *)self _createInternalQueueIfNecessary];
    v4 = *MEMORY[0x1E6999328];
    internalQueue = self->_internalQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__WBSFoundInRecommendationManager_beginListeningForURLSuggestionChanges__block_invoke;
    v9[3] = &unk_1E8285568;
    objc_copyWeak(&v10, &location);
    v6 = notify_register_dispatch(v4, p_changeNotificationToken, internalQueue, v9);
    if (v6)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(WBSFoundInRecommendationManager *)v8 beginListeningForURLSuggestionChanges];
      }
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __72__WBSFoundInRecommendationManager_beginListeningForURLSuggestionChanges__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WBSFoundInRecommendationManager_beginListeningForURLSuggestionChanges__block_invoke_2;
  block[3] = &unk_1E8283A38;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __72__WBSFoundInRecommendationManager_beginListeningForURLSuggestionChanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"WBSFoundInRecommendationManagerDidUpdateSuggestionsNotification" object:v3];

    WeakRetained = v3;
  }
}

- (void)stopListeningForURLSuggestionChanges
{
  changeNotificationToken = self->_changeNotificationToken;
  if (changeNotificationToken)
  {
    notify_cancel(changeNotificationToken);
    self->_changeNotificationToken = 0;
  }
}

- (void)recentRecommendationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  [(WBSFoundInRecommendationManager *)self _createInternalQueueIfNecessary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__WBSFoundInRecommendationManager_recentRecommendationsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8285590;
  objc_copyWeak(&v8, &location);
  v5 = handlerCopy;
  v7 = v5;
  [(WBSFoundInRecommendationManager *)self _recentURLRecommendationsWithCompletionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __78__WBSFoundInRecommendationManager_recentRecommendationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__WBSFoundInRecommendationManager_recentRecommendationsWithCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E8284B78;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_recentURLRecommendationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8284830;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = [MEMORY[0x1E69992A0] serviceForURLs];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke_2;
  aBlock[3] = &unk_1E82855D8;
  v14 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [v6 dateByAddingUnit:16 value:1 toDate:v7 options:0];

    v9 = [v6 startOfDayForDate:v8];
    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.mail", @"com.apple.mobilemail", 0}];
    v11 = *(*(a1 + 32) + 8);
    v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-*MEMORY[0x1E69C9300]];
    [v11 urlsFoundBetweenStartDate:v12 endDate:v9 excludingBundleIdentifiers:v10 limit:64 withCompletion:v5];
  }

  else
  {
    [*(*(a1 + 32) + 8) recentURLsWithLimit:64 withCompletion:v5];
  }
}

void __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (*(a1 + 32))
  {
    if (v6)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke_2_cold_1(v9, v8);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = [WBSFoundInRecommendationManager _linkRecommendationsFromSGSuggestions:v5 contactStoreProvider:&__block_literal_global_16];
      v12 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = 134218240;
        v15 = [v10 count];
        v16 = 2048;
        v17 = [v5 count];
        _os_log_impl(&dword_1C6968000, v13, OS_LOG_TYPE_INFO, "Got %ld recommendations out of %ld Found In links retrieved from suggestions service.", &v14, 0x16u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }
}

- (void)_createInternalQueueIfNecessary
{
  if (!self->_internalQueue)
  {
    v4 = dispatch_queue_create("com.apple.Safari.FoundInRecommendationManager.internalQueue", 0);
    internalQueue = self->_internalQueue;
    self->_internalQueue = v4;
  }
}

+ (id)_linkRecommendationsFromSGSuggestions:(id)suggestions contactStoreProvider:(id)provider
{
  v141 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  providerCopy = provider;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v128 objects:v140 count:16];
  v105 = providerCopy;
  if (!v8)
  {
    v118 = 0;
    v110 = 0;
    goto LABEL_108;
  }

  v9 = v8;
  v108 = 0;
  v118 = 0;
  v110 = 0;
  v10 = *v129;
  v11 = 0x1E8281000uLL;
  v123 = v7;
  do
  {
    v12 = 0;
    do
    {
      if (*v129 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v128 + 1) + 8 * v12);
      v14 = *(v11 + 2400);
      bundleIdentifier = [v13 bundleIdentifier];
      v16 = [v14 foundInSourceFromBundleIdentifier:bundleIdentifier];

      if (v16 < 2)
      {
        goto LABEL_45;
      }

      v17 = [v13 url];
      scheme = [v17 scheme];
      if ([scheme length])
      {
        safari_isHTTPFamilyURL = [v17 safari_isHTTPFamilyURL];

        if ((safari_isHTTPFamilyURL & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      safari_canonicalURLForStartPage = [v17 safari_canonicalURLForStartPage];
      host = [safari_canonicalURLForStartPage host];
      if (![host length] || (objc_msgSend(host, "safari_looksLikeIPAddress") & 1) != 0)
      {
        goto LABEL_43;
      }

      v22 = bestDateForSuggestion(v13);
      if (!v22)
      {
        goto LABEL_41;
      }

      if (v16 == 2)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 documentTitle], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "length"), v29, !v30))
        {
LABEL_41:

          goto LABEL_42;
        }

        documentDate = [v13 documentDate];
        if (documentDate)
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v32 = v31;
          [documentDate timeIntervalSinceReferenceDate];
          v34 = v33;
          if (v32 >= v33 + -600.0)
          {
            [v13 documentTimeInterval];
            LOBYTE(v7) = v32 <= v34 + v55;
            goto LABEL_29;
          }
        }
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_30;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_41;
        }

        documentDate = [v13 documentDate];
        if (documentDate)
        {
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          [currentCalendar components:96 fromDate:documentDate];
          v25 = v114 = documentDate;

          v121 = v25;
          if ([v25 hour] || objc_msgSend(v25, "minute"))
          {
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v27 = v26;
            documentDate = v114;
            [v114 timeIntervalSinceReferenceDate];
            LOBYTE(v7) = v27 <= v28 + 3600.0 && v27 >= v28 + -3600.0;
          }

          else
          {
            LOBYTE(v7) = 0;
            documentDate = v114;
          }

          goto LABEL_29;
        }
      }

      LOBYTE(v7) = 0;
LABEL_29:

LABEL_30:
      if (v7)
      {
        documentIdentifier = [v13 documentIdentifier];
        v35 = [dictionary objectForKeyedSubscript:?];
        v17 = v35;
        if (!v35)
        {
LABEL_37:
          v48 = [v13 url];
          safari_canonicalURLForStartPage = [v48 safari_canonicalURLForStartPage];

          host = bestDateForSuggestion(v13);
          bundleIdentifier2 = [v13 bundleIdentifier];
          v50 = [WBSFoundInRecommendationManager foundInSourceFromBundleIdentifier:bundleIdentifier2];

          v51 = 0;
          if (v50 > 1)
          {
            if (v50 == 2)
            {
              v51 = 6;
            }

            else if (v50 == 3)
            {
              v51 = 7;
            }

LABEL_58:
            v116 = v51;
            v111 = [WBSForYouLinkRecommendation alloc];
            v56 = v13;
            if ((objc_opt_respondsToSelector() & 1) != 0 && ([v56 documentTitle], v57 = objc_claimAutoreleasedReturnValue(), v58 = objc_msgSend(v57, "length"), v57, v58))
            {
              documentTitle = [v56 documentTitle];
            }

            else
            {
              title = [v56 title];
              v61 = [title length];

              if (!v61)
              {
                v62 = &stru_1F4646D10;
                goto LABEL_65;
              }

              documentTitle = [v56 title];
            }

            v62 = documentTitle;
LABEL_65:

            v63 = [(WBSForYouLinkRecommendation *)v111 initWithTitle:v62 url:safari_canonicalURLForStartPage lastSeenDate:host source:v116 topicSource:0];
            bundleIdentifier3 = [v56 bundleIdentifier];
            [(WBSForYouLinkRecommendation *)v63 setBundleIdentifier:bundleIdentifier3];

            v13 = documentIdentifier;
            [(WBSForYouLinkRecommendation *)v63 setSourceID:documentIdentifier];
            if (v50 == 3 || v50 == 2)
            {
              v72 = MEMORY[0x1E696AEC0];
              v73 = _WBSLocalizedString();
              title2 = [(WBSForYouLinkRecommendation *)v63 title];
              v75 = [v72 localizedStringWithFormat:v73, title2];
              [(WBSForYouLinkRecommendation *)v63 setTitle:v75];

              v76 = _WBSLocalizedString();
              [(WBSForYouLinkRecommendation *)v63 setFootnote:v76];
              v77 = v118;
            }

            else
            {
              if (v50 != 1)
              {
                v77 = v118;
                v7 = v123;
                goto LABEL_77;
              }

              v107 = _WBSLocalizedString();
              receivedFromHandle = [v56 receivedFromHandle];
              if ([receivedFromHandle hasPrefix:@"e:"])
              {
                v66 = [receivedFromHandle substringFromIndex:2];

                receivedFromHandle = v66;
              }

              v67 = v110;
              v68 = receivedFromHandle;
              if (!v110)
              {
                v69 = v68;
                v70 = v105[2]();
                v68 = v69;
                v67 = v70;
              }

              v110 = v67;
              v106 = v63;
              if (v108)
              {
                v71 = v118;
              }

              else
              {
                v78 = v68;
                if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
                {
                  v127 = 0;
                  v112 = [v67 _ios_meContactWithKeysToFetch:MEMORY[0x1E695E0F0] error:&v127];
                  v79 = v127;

                  if (v79)
                  {
                    v82 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v80, v81);
                    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                    {
                      [(WBSFoundInRecommendationManager *)v138 _linkRecommendationsFromSGSuggestions:v82 contactStoreProvider:v79, &v139];
                    }

                    v67 = v110;
                  }

                  v71 = v112;
                }

                else
                {
                  v71 = v118;
                }

                v68 = v78;
              }

              v126 = 0;
              v117 = v68;
              v83 = [v67 contactForHandle:v68 error:&v126];
              v119 = v126;
              v113 = v71;
              identifier = [v71 identifier];
              identifier2 = [v83 identifier];
              v86 = [identifier isEqualToString:identifier2];

              if (v86)
              {
                v89 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v87, v88);
                v7 = v123;
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138478083;
                  v135 = v117;
                  v136 = 2113;
                  v137 = documentIdentifier;
                  _os_log_debug_impl(&dword_1C6968000, v89, OS_LOG_TYPE_DEBUG, "Skipping suggestion from Me contact with handle: %{private}@ document identifier: %{private}@", buf, 0x16u);
                }

                v108 = 1;
                v13 = documentIdentifier;
                v77 = v113;
LABEL_92:
                v63 = v106;
                goto LABEL_78;
              }

              safari_fullName = [v83 safari_fullName];
              v92 = v83;
              v109 = v83;
              if ([safari_fullName length])
              {
                v93 = safari_fullName;
              }

              else
              {
                v93 = v117;
                if (v110)
                {
                  v96 = safari_fullName;
                  v97 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(0, v91);
                  v98 = v97;
                  v7 = v123;
                  if (v119)
                  {
                    v77 = v113;
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                    {
                      [(WBSFoundInRecommendationManager *)v132 _linkRecommendationsFromSGSuggestions:v98 contactStoreProvider:v119, &v133];
                    }
                  }

                  else
                  {
                    v77 = v113;
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                    {
                      [(WBSFoundInRecommendationManager *)&v124 _linkRecommendationsFromSGSuggestions:v125 contactStoreProvider:v98];
                    }
                  }

                  v108 = 1;
                  v13 = documentIdentifier;
                  goto LABEL_92;
                }
              }

              v63 = v106;
              [(WBSForYouLinkRecommendation *)v106 setContact:v92];
              v104 = v93;
              v102 = MEMORY[0x1E696AEC0];
              _WBSLocalizedString();
              v94 = v103 = safari_fullName;
              v76 = v107;
              v95 = [v102 localizedStringWithFormat:v94, v107, v93];
              [(WBSForYouLinkRecommendation *)v106 setFootnote:v95];

              v108 = 1;
              v77 = v113;
            }

            v7 = v123;
            v13 = documentIdentifier;
LABEL_77:
            [dictionary setObject:v63 forKeyedSubscript:v13];
LABEL_78:

            v118 = v77;
LABEL_43:

            v11 = 0x1E8281000;
LABEL_44:

LABEL_45:
            goto LABEL_46;
          }

          if (v50)
          {
            if (v50 == 1)
            {
              v51 = 5;
            }

            goto LABEL_58;
          }

          goto LABEL_55;
        }

        safari_canonicalURLForStartPage = [v35 pageURL];
        host = [v13 url];
        host2 = [safari_canonicalURLForStartPage host];
        v21Host = [host host];
        v38 = [host2 isEqualToString:v21Host];

        if (v38)
        {
          pathComponents = [host pathComponents];
          v115 = [pathComponents count];
          pathComponents2 = [safari_canonicalURLForStartPage pathComponents];
          v43 = [pathComponents2 count];

          v46 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v44, v45);
          v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
          if (v115 > v43)
          {
            if (v47)
            {
              *buf = 138543362;
              v135 = documentIdentifier;
              _os_log_error_impl(&dword_1C6968000, v46, OS_LOG_TYPE_ERROR, "We have a Found In link with a duplicate GUID and host but more path components so we'll replace the existing one: %{public}@", buf, 0xCu);
            }

            goto LABEL_37;
          }

          if (!v47)
          {
LABEL_55:
            v13 = documentIdentifier;
LABEL_42:
            v7 = v123;
            goto LABEL_43;
          }

          *buf = 138543362;
          v13 = documentIdentifier;
          v135 = documentIdentifier;
          v53 = v46;
          v54 = "Skipping Found In link with a duplicate GUID and host but less path components: %{public}@";
        }

        else
        {
          v52 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence(v39, v40);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_55;
          }

          *buf = 138543362;
          v13 = documentIdentifier;
          v135 = documentIdentifier;
          v53 = v52;
          v54 = "Skipping Found In link with a duplicate GUID but different URL host: %{public}@";
        }

        _os_log_error_impl(&dword_1C6968000, v53, OS_LOG_TYPE_ERROR, v54, buf, 0xCu);
        goto LABEL_42;
      }

      v7 = v123;
      v11 = 0x1E8281000;
LABEL_46:
      ++v12;
    }

    while (v9 != v12);
    v99 = [v7 countByEnumeratingWithState:&v128 objects:v140 count:16];
    v9 = v99;
  }

  while (v99);
LABEL_108:

  allValues = [dictionary allValues];

  return allValues;
}

+ (unint64_t)foundInSourceFromBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([self isBundleIdentifierFromCalendar:identifierCopy])
  {
    v5 = 2;
  }

  else if ([self isBundleIdentifierFromMessages:identifierCopy])
  {
    v5 = 1;
  }

  else
  {
    lowercaseString = [identifierCopy lowercaseString];
    v7 = [lowercaseString isEqualToString:@"com.apple.reminders"];

    if (v7)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)isBundleIdentifierFromCalendar:(id)calendar
{
  calendarCopy = calendar;
  if ([calendarCopy isEqualToString:@"com.apple.mobilecal"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [calendarCopy isEqualToString:@"com.apple.iCal"];
  }

  return v4;
}

+ (BOOL)isBundleIdentifierFromMessages:(id)messages
{
  messagesCopy = messages;
  if ([messagesCopy isEqualToString:@"com.apple.iChat"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [messagesCopy isEqualToString:@"com.apple.MobileSMS"];
  }

  return v4;
}

void __82__WBSFoundInRecommendationManager__recentURLRecommendationsWithCompletionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Unable to get Found In suggestions: %{public}@", &v5, 0xCu);
}

+ (void)_linkRecommendationsFromSGSuggestions:(void *)a3 contactStoreProvider:(void *)a4 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v9, v10, "Could not fetch me card with error: %{public}@");
}

+ (void)_linkRecommendationsFromSGSuggestions:(void *)a3 contactStoreProvider:(void *)a4 .cold.2(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  *a1 = 138543362;
  *a4 = v8;
  OUTLINED_FUNCTION_0_6(&dword_1C6968000, v9, v10, "Unable to get full contact name for Messages link with error: %{public}@");
}

+ (void)_linkRecommendationsFromSGSuggestions:(os_log_t)log contactStoreProvider:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1C6968000, log, OS_LOG_TYPE_DEBUG, "Unable to get full contact name for Messages link", buf, 2u);
}

@end