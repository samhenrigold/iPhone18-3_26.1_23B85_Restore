@interface PPLocalQuickTypeBroker
+ (id)sharedInstance;
- (PPLocalQuickTypeBroker)init;
- (id)_cacheEntryWithRecipients:(uint64_t)recipients;
- (id)_recipientItemCacheKeyForRecipients:(void *)recipients;
- (id)filterFeedback:(id)feedback;
- (void)hibernateWithCompletion:(id)completion;
- (void)processFeedback:(id)feedback;
- (void)quickTypeItemsWithLanguageModelingTokens:(id)tokens localeIdentifier:(id)identifier recipients:(id)recipients bundleIdentifier:(id)bundleIdentifier limit:(unint64_t)limit completion:(id)completion;
- (void)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit completion:(id)completion;
- (void)recentQuickTypeItemsForRecipients:(id)recipients completion:(id)completion;
- (void)registerFeedback:(id)feedback completion:(id)completion;
- (void)warmUpWithCompletion:(id)completion;
@end

@implementation PPLocalQuickTypeBroker

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken5_11893 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken5_11893, &__block_literal_global_11894);
  }

  v3 = sharedInstance__pasExprOnceResult_11895;

  return v3;
}

- (id)filterFeedback:(id)feedback
{
  v38 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  feedbackItems = [feedbackCopy feedbackItems];
  v8 = [feedbackItems countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(feedbackItems);
        }

        itemString = [*(*(&v33 + 1) + 8 * i) itemString];
        [v5 addObject:itemString];
      }

      v9 = [feedbackItems countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  cacheLock = self->_cacheLock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __41__PPLocalQuickTypeBroker_filterFeedback___block_invoke;
  v30[3] = &unk_278974B00;
  v31 = v5;
  v14 = v6;
  v32 = v14;
  v15 = v5;
  [(_PASLock *)cacheLock runWithLockAcquired:v30];
  feedbackItems2 = [feedbackCopy feedbackItems];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __41__PPLocalQuickTypeBroker_filterFeedback___block_invoke_3;
  v28[3] = &unk_278974B78;
  v29 = v14;
  v17 = v14;
  v18 = [feedbackItems2 _pas_mappedArrayWithTransform:v28];

  v19 = [PPInternalFeedback alloc];
  timestamp = [feedbackCopy timestamp];
  clientIdentifier = [feedbackCopy clientIdentifier];
  clientBundleId = [feedbackCopy clientBundleId];
  mappingId = [feedbackCopy mappingId];
  build = [feedbackCopy build];
  v25 = [(PPInternalFeedback *)v19 initWithFeedbackItems:v18 timestamp:timestamp clientIdentifier:clientIdentifier clientBundleId:clientBundleId mappingId:mappingId storeType:7 build:build];

  objc_autoreleasePoolPop(context);

  return v25;
}

void __41__PPLocalQuickTypeBroker_filterFeedback___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__PPLocalQuickTypeBroker_filterFeedback___block_invoke_2;
  v4[3] = &unk_278974B50;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

id __41__PPLocalQuickTypeBroker_filterFeedback___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 itemString];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D3A3C0]) initWithItemString:&stru_284759D38 itemFeedbackType:{objc_msgSend(v3, "itemFeedbackType")}];
  }

  v7 = v6;

  return v7;
}

void __41__PPLocalQuickTypeBroker_filterFeedback___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a3 + 8);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = *(a1 + 32);
      v11 = [v9 value];
      LODWORD(v10) = [v10 containsObject:v11];

      if (v10)
      {
        v12 = *(a1 + 40);
        v13 = [v9 value];
        [v12 addObject:v13];
      }

      v14 = [*(a1 + 40) count];
      if (v14 == [*(a1 + 32) count])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)processFeedback:(id)feedback
{
  v37 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  feedbackItems = [feedbackCopy feedbackItems];
  v5 = [feedbackItems count];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    feedbackItems2 = [feedbackCopy feedbackItems];
    v9 = [feedbackItems2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(feedbackItems2);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          itemString = [v13 itemString];
          v15 = [itemString length];

          if (v15)
          {
            v16 = v6;
          }

          else
          {
            v16 = v7;
          }

          [v16 addObject:v13];
        }

        v10 = [feedbackItems2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    if ([v6 count])
    {
      v17 = objc_alloc(MEMORY[0x277D3A328]);
      timestamp = [feedbackCopy timestamp];
      clientIdentifier = [feedbackCopy clientIdentifier];
      clientBundleId = [feedbackCopy clientBundleId];
      mappingId = [feedbackCopy mappingId];
      v22 = [v17 initWithFeedbackItems:v6 timestamp:timestamp clientIdentifier:clientIdentifier clientBundleId:clientBundleId mappingId:mappingId];

      [PPFeedbackStorage logFeedback:v22 domain:6 domainStatus:2 inBackground:1];
      feedbackItems3 = [v22 feedbackItems];
      clientBundleId2 = [feedbackCopy clientBundleId];
      clientIdentifier2 = [feedbackCopy clientIdentifier];
      [PPFeedbackUtils recordUserEventsFromFeedback:feedbackCopy matchingFeedbackItems:feedbackItems3 clientBundleId:clientBundleId2 clientIdentifier:clientIdentifier2 domain:6];
    }

    if ([v7 count])
    {
      v26 = objc_alloc(MEMORY[0x277D3A328]);
      timestamp2 = [feedbackCopy timestamp];
      clientIdentifier3 = [feedbackCopy clientIdentifier];
      clientBundleId3 = [feedbackCopy clientBundleId];
      mappingId2 = [feedbackCopy mappingId];
      v31 = [v26 initWithFeedbackItems:v7 timestamp:timestamp2 clientIdentifier:clientIdentifier3 clientBundleId:clientBundleId3 mappingId:mappingId2];

      [PPFeedbackStorage logFeedback:v31 domain:6 domainStatus:1 inBackground:1];
    }
  }
}

- (void)registerFeedback:(id)feedback completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  completionCopy = completion;
  v8 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138739971;
    v14 = feedbackCopy;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "QuickType feedback received: %{sensitive}@", &v13, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [(PPQuickTypeContactsServant *)self->_contactsServant registerFeedback:feedbackCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PPQuickTypeEventsServant *)self->_eventsServant registerFeedback:feedbackCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PPQuickTypeConnectionsServant *)self->_connectionsServant registerFeedback:feedbackCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PPQuickTypeNavigationServant *)self->_navigationServant registerFeedback:feedbackCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PPQuickTypeURLServant *)self->_urlServant registerFeedback:feedbackCopy];
  }

  v9 = [PPInternalFeedback fromBaseFeedback:feedbackCopy storeType:7];
  v10 = [(PPLocalQuickTypeBroker *)self filterFeedback:v9];

  if (v10)
  {
    v11 = objc_opt_new();
    [v11 storePendingFeedback:v10 storeType:7 error:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v12 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "registerFeedback had no matches after filtering", &v13, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }
}

- (void)hibernateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPLocalQuickTypeBroker: hibernate", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)warmUpWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPLocalQuickTypeBroker: warmUp", v5, 2u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)recentQuickTypeItemsForRecipients:(id)recipients completion:(id)completion
{
  completionCopy = completion;
  if (self)
  {
    v7 = [(PPLocalQuickTypeBroker *)self _cacheEntryWithRecipients:recipients];
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 8);
    }

    else
    {
      v9 = 0;
    }

    completionCopy[2](completionCopy, v9);
  }

  else
  {
    v9 = 0;
    completionCopy[2](completionCopy, 0);
  }
}

- (id)_cacheEntryWithRecipients:(uint64_t)recipients
{
  v3 = a2;
  v4 = [PPLocalQuickTypeBroker _recipientItemCacheKeyForRecipients:v3];
  v5 = v4;
  if (v4 && [v4 length])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__11835;
    v16 = __Block_byref_object_dispose__11836;
    v17 = 0;
    v6 = *(recipients + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__PPLocalQuickTypeBroker__cacheEntryWithRecipients___block_invoke;
    v9[3] = &unk_278974B28;
    v11 = &v12;
    v10 = v5;
    [v6 runWithLockAcquired:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_recipientItemCacheKeyForRecipients:(void *)recipients
{
  v1 = [recipients sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 _pas_componentsJoinedByString:@":"];

  return v2;
}

void __52__PPLocalQuickTypeBroker__cacheEntryWithRecipients___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = [*(a2 + 16) objectForKeyedSubscript:v4];
    if (v5)
    {
      [*(a2 + 8) removeObject:v4];
      [*(a2 + 8) addObject:v4];
    }

    v6 = [*(a2 + 8) count];
    if (v6 != [*(a2 + 16) count])
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:sel_entryWithKey_ object:a2 file:@"PPLocalQuickTypeBroker.m" lineNumber:65 description:@"PQT cache count mismatch"];
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (void)quickTypeItemsWithLanguageModelingTokens:(id)tokens localeIdentifier:(id)identifier recipients:(id)recipients bundleIdentifier:(id)bundleIdentifier limit:(unint64_t)limit completion:(id)completion
{
  v14 = MEMORY[0x277D3A480];
  completionCopy = completion;
  v16 = [v14 quickTypeQueryFromLMTokens:tokens localeIdentifier:identifier recipients:recipients bundleIdentifier:bundleIdentifier];
  [(PPLocalQuickTypeBroker *)self quickTypeItemsWithQuery:v16 limit:limit completion:completionCopy];
}

- (void)quickTypeItemsWithQuery:(id)query limit:(unint64_t)limit completion:(id)completion
{
  v113 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  completionCopy = completion;
  v10 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = limit;
    *&buf[12] = 2112;
    *&buf[14] = queryCopy;
    _os_log_impl(&dword_23224A000, v10, OS_LOG_TYPE_DEFAULT, "PPQuickTypeBroker quickTypeItemsForQuery limit: %lu query: %@", buf, 0x16u);
  }

  v11 = pp_quicktype_signpost_handle();
  v12 = os_signpost_id_generate(v11);

  v13 = pp_quicktype_signpost_handle();
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PPLocalQuickTypeBroker.quickTypeItemsWithQuery", "", buf, 2u);
  }

  v16 = objc_opt_new();
  v17 = queryCopy;
  v18 = v17;
  if (!self)
  {
    v28 = 0;
    goto LABEL_18;
  }

  recipients = [v17 recipients];
  v20 = [(PPLocalQuickTypeBroker *)self _cacheEntryWithRecipients:recipients];

  if (!v20 || ![v18 isResultEquivelentToQuickTypeQuery:v20[2]])
  {
    goto LABEL_16;
  }

  v21 = v20;
  v22 = v18;
  type = [v22 type];
  if (type == 2)
  {
    [v21[3] timeIntervalSinceNow];
    v25 = v27;

    v26 = -900.0;
LABEL_15:
    if (v25 <= v26)
    {
      goto LABEL_16;
    }

LABEL_82:
    v28 = v21[1];
    goto LABEL_17;
  }

  if (type == 4)
  {
    [v21[3] timeIntervalSinceNow];
    v25 = v24;

    v26 = -60.0;
    goto LABEL_15;
  }

  if (type != 5)
  {

    goto LABEL_82;
  }

LABEL_16:
  v28 = 0;
LABEL_17:

LABEL_18:
  selfCopy = [v28 mutableCopy];

  if (!selfCopy || ![(PPLocalQuickTypeBroker *)selfCopy count])
  {
    v94 = v12 - 1;
    v95 = v12;
    v32 = v18;
    v33 = v16;
    v92 = v33;
    v93 = v32;
    if (!self)
    {
LABEL_74:
      v15 = v94;
      v12 = v95;

      p_super = &selfCopy->super;
      selfCopy = self;
      goto LABEL_75;
    }

    v34 = v33;
    v35 = objc_opt_new();
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __84__PPLocalQuickTypeBroker__quickTypeItemsFromServantsWithQuery_limit_explanationSet___block_invoke;
    v108 = &unk_278974AB0;
    v36 = v32;
    v109 = v36;
    limitCopy = limit;
    v110 = v34;
    v91 = v35;
    v37 = v35;
    v111 = v37;
    v97 = _Block_copy(buf);
    type2 = [v36 type];
    if (type2 > 2)
    {
      switch(type2)
      {
        case 3:
          v58 = pp_quicktype_signpost_handle();
          v59 = os_signpost_id_generate(v58);

          v60 = pp_quicktype_signpost_handle();
          v61 = v60;
          spid = v59;
          v62 = v59 - 1;
          if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
          {
            *v101 = 0;
            _os_signpost_emit_with_name_impl(&dword_23224A000, v61, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PPLocalQuickTypeBroker.quickTypeItems.connections", "", v101, 2u);
          }

          v97[2](v97, self->_connectionsServant);
          v63 = pp_quicktype_signpost_handle();
          v45 = v63;
          if (v62 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v63))
          {
            goto LABEL_68;
          }

          *v101 = 0;
          v46 = "PPLocalQuickTypeBroker.quickTypeItems.connections";
          goto LABEL_67;
        case 4:
          v70 = pp_quicktype_signpost_handle();
          v71 = os_signpost_id_generate(v70);

          v72 = pp_quicktype_signpost_handle();
          v73 = v72;
          spid = v71;
          v74 = v71 - 1;
          if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
          {
            *v101 = 0;
            _os_signpost_emit_with_name_impl(&dword_23224A000, v73, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PPLocalQuickTypeBroker.quickTypeItems.navigation", "", v101, 2u);
          }

          v97[2](v97, self->_navigationServant);
          v75 = pp_quicktype_signpost_handle();
          v45 = v75;
          if (v74 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v75))
          {
            goto LABEL_68;
          }

          *v101 = 0;
          v46 = "PPLocalQuickTypeBroker.quickTypeItems.navigation";
          goto LABEL_67;
        case 5:
          v47 = pp_quicktype_signpost_handle();
          v48 = os_signpost_id_generate(v47);

          v49 = pp_quicktype_signpost_handle();
          v50 = v49;
          spid = v48;
          v51 = v48 - 1;
          if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
          {
            *v101 = 0;
            _os_signpost_emit_with_name_impl(&dword_23224A000, v50, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PPLocalQuickTypeBroker.quickTypeItems.url", "", v101, 2u);
          }

          v97[2](v97, self->_urlServant);
          v52 = pp_quicktype_signpost_handle();
          v45 = v52;
          if (v51 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v52))
          {
            goto LABEL_68;
          }

          *v101 = 0;
          v46 = "PPLocalQuickTypeBroker.quickTypeItems.url";
          goto LABEL_67;
      }
    }

    else
    {
      switch(type2)
      {
        case 0:
          spida = v16;
          v53 = pp_quicktype_signpost_handle();
          v54 = os_signpost_id_generate(v53);

          v55 = pp_quicktype_signpost_handle();
          v56 = v55;
          if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
          {
            *v101 = 0;
            _os_signpost_emit_with_name_impl(&dword_23224A000, v56, OS_SIGNPOST_INTERVAL_BEGIN, v54, "PPLocalQuickTypeBroker.quickTypeItems.semantic", "", v101, 2u);
          }

          v97[2](v97, self->_contactsServant);
          v97[2](v97, self->_connectionsServant);
          v57 = pp_quicktype_signpost_handle();
          v45 = v57;
          if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
          {
            *v101 = 0;
            _os_signpost_emit_with_name_impl(&dword_23224A000, v45, OS_SIGNPOST_INTERVAL_END, v54, "PPLocalQuickTypeBroker.quickTypeItems.semantic", "", v101, 2u);
          }

          v16 = spida;
          goto LABEL_68;
        case 1:
          v64 = pp_quicktype_signpost_handle();
          v65 = os_signpost_id_generate(v64);

          v66 = pp_quicktype_signpost_handle();
          v67 = v66;
          spid = v65;
          v68 = v65 - 1;
          if (v68 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
          {
            *v101 = 0;
            _os_signpost_emit_with_name_impl(&dword_23224A000, v67, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PPLocalQuickTypeBroker.quickTypeItems.contacts", "", v101, 2u);
          }

          v97[2](v97, self->_contactsServant);
          v69 = pp_quicktype_signpost_handle();
          v45 = v69;
          if (v68 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v69))
          {
            goto LABEL_68;
          }

          *v101 = 0;
          v46 = "PPLocalQuickTypeBroker.quickTypeItems.contacts";
          goto LABEL_67;
        case 2:
          v39 = pp_quicktype_signpost_handle();
          v40 = os_signpost_id_generate(v39);

          v41 = pp_quicktype_signpost_handle();
          v42 = v41;
          spid = v40;
          v43 = v40 - 1;
          if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
          {
            *v101 = 0;
            _os_signpost_emit_with_name_impl(&dword_23224A000, v42, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PPLocalQuickTypeBroker.quickTypeItems.events", "", v101, 2u);
          }

          v97[2](v97, self->_eventsServant);
          v44 = pp_quicktype_signpost_handle();
          v45 = v44;
          if (v43 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v44))
          {
            goto LABEL_68;
          }

          *v101 = 0;
          v46 = "PPLocalQuickTypeBroker.quickTypeItems.events";
LABEL_67:
          _os_signpost_emit_with_name_impl(&dword_23224A000, v45, OS_SIGNPOST_INTERVAL_END, spid, v46, "", v101, 2u);
LABEL_68:

          break;
      }
    }

    if ([v37 count] >= 2)
    {
      [v37 sortUsingSelector:sel_reverseCompare_];
      v76 = objc_opt_new();
      v77 = objc_opt_new();
      *v101 = MEMORY[0x277D85DD0];
      v102 = 3221225472;
      v103 = __84__PPLocalQuickTypeBroker__quickTypeItemsFromServantsWithQuery_limit_explanationSet___block_invoke_127;
      v104 = &unk_278974AD8;
      v105 = v76;
      v106 = v77;
      v78 = v77;
      v79 = v76;
      [v37 enumerateObjectsUsingBlock:v101];
      [v37 removeObjectsAtIndexes:v78];
    }

    recipients2 = [v36 recipients];
    v81 = [PPLocalQuickTypeBroker _recipientItemCacheKeyForRecipients:recipients2];

    if (v81)
    {
      v82 = objc_opt_new();
      objc_storeStrong((v82 + 16), query);
      objc_storeStrong((v82 + 8), v91);
      v83 = objc_opt_new();
      v84 = *(v82 + 24);
      *(v82 + 24) = v83;

      cacheLock = self->_cacheLock;
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __84__PPLocalQuickTypeBroker__quickTypeItemsFromServantsWithQuery_limit_explanationSet___block_invoke_2;
      v98[3] = &unk_278974B00;
      v99 = v82;
      v100 = v81;
      v86 = v82;
      [(_PASLock *)cacheLock runWithLockAcquired:v98];
    }

    self = v37;

    goto LABEL_74;
  }

  p_super = pp_quicktype_log_handle();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(PPLocalQuickTypeBroker *)selfCopy count];
    *buf = 134217984;
    *&buf[4] = v31;
    _os_log_impl(&dword_23224A000, p_super, OS_LOG_TYPE_DEFAULT, "PQT item cache hit with %tu items", buf, 0xCu);
  }

LABEL_75:

  if ([(PPLocalQuickTypeBroker *)selfCopy count]> limit)
  {
    [(PPLocalQuickTypeBroker *)selfCopy removeObjectsInRange:limit, [(PPLocalQuickTypeBroker *)selfCopy count]- limit];
  }

  v87 = pp_quicktype_signpost_handle();
  v88 = v87;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v87))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v88, OS_SIGNPOST_INTERVAL_END, v12, "PPLocalQuickTypeBroker.quickTypeItemsWithQuery", "", buf, 2u);
  }

  completionCopy[2](completionCopy, selfCopy, v16);
}

void __84__PPLocalQuickTypeBroker__quickTypeItemsFromServantsWithQuery_limit_explanationSet___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 quickTypeItemsWithQuery:*(a1 + 32) limit:*(a1 + 56) explanationSet:*(a1 + 40)];
  if (v5)
  {
    v6 = pp_quicktype_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = [v5 count];
      v10 = [*(a1 + 40) count];
      v11 = 138412802;
      v12 = v7;
      v13 = 2048;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "%@ returned %lu items and explanation set now has %lu explanations", &v11, 0x20u);
    }

    [*(a1 + 48) addObjectsFromArray:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void __84__PPLocalQuickTypeBroker__quickTypeItemsFromServantsWithQuery_limit_explanationSet___block_invoke_127(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  v7 = [v5 value];
  LODWORD(v6) = [v6 containsObject:v7];

  if (v6)
  {
    [*(a1 + 40) addIndex:a3];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v10 value];
    [v8 addObject:v9];
  }
}

- (PPLocalQuickTypeBroker)init
{
  v3 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "instantiating PPLocalQuickTypeBroker", buf, 2u);
  }

  v20.receiver = self;
  v20.super_class = PPLocalQuickTypeBroker;
  v4 = [(PPLocalQuickTypeBroker *)&v20 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D425F8]);
    v6 = objc_opt_new();
    v7 = [v5 initWithGuardedData:v6];
    cacheLock = v4->_cacheLock;
    v4->_cacheLock = v7;

    v9 = objc_opt_new();
    navigationServant = v4->_navigationServant;
    v4->_navigationServant = v9;

    v11 = objc_opt_new();
    contactsServant = v4->_contactsServant;
    v4->_contactsServant = v11;

    v13 = objc_opt_new();
    eventsServant = v4->_eventsServant;
    v4->_eventsServant = v13;

    v15 = objc_opt_new();
    connectionsServant = v4->_connectionsServant;
    v4->_connectionsServant = v15;

    v17 = objc_opt_new();
    urlServant = v4->_urlServant;
    v4->_urlServant = v17;

    *buf = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __51__PPLocalQuickTypeBroker__registerForNotifications__block_invoke;
    v25 = &unk_2789790A8;
    v26 = v4;
    [MEMORY[0x277D3A458] addContactsObserverForLifetimeOfObject:v4 block:buf];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__PPLocalQuickTypeBroker__registerForNotifications__block_invoke_2;
    v21[3] = &unk_278977ED8;
    v21[4] = v4;
    [MEMORY[0x277D3A458] addEventKitObserverForLifetimeOfObject:v4 block:v21];
  }

  return v4;
}

void *__51__PPLocalQuickTypeBroker__registerForNotifications__block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return [*(v1 + 48) runWithLockAcquired:&__block_literal_global_118];
  }

  return result;
}

void *__51__PPLocalQuickTypeBroker__registerForNotifications__block_invoke_2(void *result)
{
  v1 = result[4];
  if (v1)
  {
    return [*(v1 + 48) runWithLockAcquired:&__block_literal_global_118];
  }

  return result;
}

void __38__PPLocalQuickTypeBroker__clearCaches__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = pp_quicktype_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPLocalQuickTypeBroker: clearing caches", v8, 2u);
  }

  if (v2)
  {
    v4 = objc_opt_new();
    v5 = v2[1];
    v2[1] = v4;

    v6 = objc_opt_new();
    v7 = v2[2];
    v2[2] = v6;
  }
}

void __40__PPLocalQuickTypeBroker_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_11895;
  sharedInstance__pasExprOnceResult_11895 = v1;

  objc_autoreleasePoolPop(v0);
}

@end