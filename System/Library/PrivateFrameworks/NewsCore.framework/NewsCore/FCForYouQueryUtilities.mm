@interface FCForYouQueryUtilities
+ (id)_filterTagsForQuerying:(id)querying withMutedTagIDs:(id)ds;
+ (id)feedRequestsForTags:(id)tags tagBinProvider:(id)provider hiddenFeedIDs:(id)ds purchasedTagIDs:(id)iDs bundleSubscriptionProvider:(id)subscriptionProvider configuration:(id)configuration maxCount:(unint64_t)count feedRange:(id)self0 sidecar:(id)self1 options:(unint64_t)self2;
+ (void)fetchTagsForQueryingWithSubscribedTagIDs:(id)ds mutedTagIDs:(id)iDs purchasedTagIDs:(id)tagIDs bundleSubscriptionProvider:(id)provider configuration:(id)configuration contentContext:(id)context fallbackToPresubscribedTagIDs:(BOOL)presubscribedTagIDs qualityOfService:(int64_t)self0 completionHandler:(id)self1;
+ (void)fetchTagsForQueryingWithSubscribedTags:(id)tags mutedTagIDs:(id)ds purchasedTagIDs:(id)iDs bundleSubscriptionProvider:(id)provider configuration:(id)configuration contentContext:(id)context fallbackToPresubscribedTagIDs:(BOOL)tagIDs qualityOfService:(int64_t)self0 completionHandler:(id)self1;
@end

@implementation FCForYouQueryUtilities

+ (void)fetchTagsForQueryingWithSubscribedTags:(id)tags mutedTagIDs:(id)ds purchasedTagIDs:(id)iDs bundleSubscriptionProvider:(id)provider configuration:(id)configuration contentContext:(id)context fallbackToPresubscribedTagIDs:(BOOL)tagIDs qualityOfService:(int64_t)self0 completionHandler:(id)self1
{
  v48 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  dsCopy = ds;
  iDsCopy = iDs;
  providerCopy = provider;
  configurationCopy = configuration;
  contextCopy = context;
  handlerCopy = handler;
  if (!tagsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscribedTags"];
    *buf = 136315906;
    v41 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v42 = 2080;
    v43 = "FCForYouQueryUtilities.m";
    v44 = 1024;
    v45 = 92;
    v46 = 2114;
    v47 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "mutedTagIDs"];
    *buf = 136315906;
    v41 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v42 = 2080;
    v43 = "FCForYouQueryUtilities.m";
    v44 = 1024;
    v45 = 93;
    v46 = 2114;
    v47 = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v41 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v42 = 2080;
    v43 = "FCForYouQueryUtilities.m";
    v44 = 1024;
    v45 = 94;
    v46 = 2114;
    v47 = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (handlerCopy)
    {
      goto LABEL_11;
    }
  }

  else if (handlerCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler"];
    *buf = 136315906;
    v41 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTags:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v42 = 2080;
    v43 = "FCForYouQueryUtilities.m";
    v44 = 1024;
    v45 = 95;
    v46 = 2114;
    v47 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  if ([tagsCopy count] || !tagIDs)
  {
    presubscribedFeedIDs = [self _filterTagsForQuerying:tagsCopy withMutedTagIDs:dsCopy];
    handlerCopy[2](handlerCopy, presubscribedFeedIDs, 0);
  }

  else
  {
    presubscribedFeedIDs = [configurationCopy presubscribedFeedIDs];
    if ([presubscribedFeedIDs count])
    {
      v25 = FCDispatchQueueForQualityOfService(service);
      tagController = [contextCopy tagController];
      selfCopy = self;
      v28 = contextCopy;
      v29 = configurationCopy;
      v30 = providerCopy;
      v31 = tagController;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __214__FCForYouQueryUtilities_fetchTagsForQueryingWithSubscribedTags_mutedTagIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_contentContext_fallbackToPresubscribedTagIDs_qualityOfService_completionHandler___block_invoke;
      v36[3] = &unk_1E7C39DD8;
      v39 = selfCopy;
      v37 = dsCopy;
      v38 = handlerCopy;
      [v31 fetchTagsForTagIDs:presubscribedFeedIDs qualityOfService:service callbackQueue:v25 completionHandler:v36];

      providerCopy = v30;
      configurationCopy = v29;
      contextCopy = v28;
    }

    else
    {
      handlerCopy[2](handlerCopy, MEMORY[0x1E695E0F0], 0);
    }
  }
}

void __214__FCForYouQueryUtilities_fetchTagsForQueryingWithSubscribedTags_mutedTagIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_contentContext_fallbackToPresubscribedTagIDs_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 allValues];
  v6 = [*(a1 + 48) _filterTagsForQuerying:v7 withMutedTagIDs:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

+ (void)fetchTagsForQueryingWithSubscribedTagIDs:(id)ds mutedTagIDs:(id)iDs purchasedTagIDs:(id)tagIDs bundleSubscriptionProvider:(id)provider configuration:(id)configuration contentContext:(id)context fallbackToPresubscribedTagIDs:(BOOL)presubscribedTagIDs qualityOfService:(int64_t)self0 completionHandler:(id)self1
{
  v56 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  tagIDsCopy = tagIDs;
  providerCopy = provider;
  configurationCopy = configuration;
  contextCopy = context;
  handlerCopy = handler;
  if (!dsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscribedTagIDs"];
    *buf = 136315906;
    v49 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v50 = 2080;
    v51 = "FCForYouQueryUtilities.m";
    v52 = 1024;
    v53 = 135;
    v54 = 2114;
    v55 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (iDsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "mutedTagIDs"];
    *buf = 136315906;
    v49 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v50 = 2080;
    v51 = "FCForYouQueryUtilities.m";
    v52 = 1024;
    v53 = 136;
    v54 = 2114;
    v55 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!contextCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v49 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v50 = 2080;
    v51 = "FCForYouQueryUtilities.m";
    v52 = 1024;
    v53 = 137;
    v54 = 2114;
    v55 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20 = handlerCopy;
  if (!handlerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completionHandler"];
    *buf = 136315906;
    v49 = "+[FCForYouQueryUtilities fetchTagsForQueryingWithSubscribedTagIDs:mutedTagIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:contentContext:fallbackToPresubscribedTagIDs:qualityOfService:completionHandler:]";
    v50 = 2080;
    v51 = "FCForYouQueryUtilities.m";
    v52 = 1024;
    v53 = 138;
    v54 = 2114;
    v55 = v32;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21 = FCDispatchQueueForQualityOfService(service);
  tagController = [contextCopy tagController];
  allObjects = [dsCopy allObjects];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __216__FCForYouQueryUtilities_fetchTagsForQueryingWithSubscribedTagIDs_mutedTagIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_contentContext_fallbackToPresubscribedTagIDs_qualityOfService_completionHandler___block_invoke;
  v38[3] = &unk_1E7C39E00;
  v39 = iDsCopy;
  v40 = tagIDsCopy;
  v41 = providerCopy;
  v42 = configurationCopy;
  v43 = contextCopy;
  v44 = v20;
  selfCopy = self;
  presubscribedTagIDsCopy = presubscribedTagIDs;
  serviceCopy = service;
  v37 = contextCopy;
  v24 = configurationCopy;
  v25 = providerCopy;
  v26 = tagIDsCopy;
  v27 = iDsCopy;
  v28 = v20;
  [tagController fetchTagsForTagIDs:allObjects qualityOfService:service callbackQueue:v21 completionHandler:v38];
}

void __216__FCForYouQueryUtilities_fetchTagsForQueryingWithSubscribedTagIDs_mutedTagIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_contentContext_fallbackToPresubscribedTagIDs_qualityOfService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 allValues];
  if (v5)
  {
    LOBYTE(v6) = *(a1 + 96);
    [*(a1 + 80) fetchTagsForQueryingWithSubscribedTags:v5 mutedTagIDs:*(a1 + 32) purchasedTagIDs:*(a1 + 40) bundleSubscriptionProvider:*(a1 + 48) configuration:*(a1 + 56) contentContext:*(a1 + 64) fallbackToPresubscribedTagIDs:v6 qualityOfService:*(a1 + 88) completionHandler:*(a1 + 72)];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

+ (id)feedRequestsForTags:(id)tags tagBinProvider:(id)provider hiddenFeedIDs:(id)ds purchasedTagIDs:(id)iDs bundleSubscriptionProvider:(id)subscriptionProvider configuration:(id)configuration maxCount:(unint64_t)count feedRange:(id)self0 sidecar:(id)self1 options:(unint64_t)self2
{
  v193 = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  providerCopy = provider;
  dsCopy = ds;
  iDsCopy = iDs;
  subscriptionProviderCopy = subscriptionProvider;
  configurationCopy = configuration;
  rangeCopy = range;
  sidecarCopy = sidecar;
  if (!tagsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tags"];
    *buf = 136315906;
    v186 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
    v187 = 2080;
    v188 = "FCForYouQueryUtilities.m";
    v189 = 1024;
    v190 = 213;
    v191 = 2114;
    v192 = v106;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (providerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (providerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v107 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagBinProvider"];
    *buf = 136315906;
    v186 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
    v187 = 2080;
    v188 = "FCForYouQueryUtilities.m";
    v189 = 1024;
    v190 = 214;
    v191 = 2114;
    v192 = v107;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!configurationCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v108 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v186 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
    v187 = 2080;
    v188 = "FCForYouQueryUtilities.m";
    v189 = 1024;
    v190 = 215;
    v191 = 2114;
    v192 = v108;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!rangeCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v109 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedRange"];
    *buf = 136315906;
    v186 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
    v187 = 2080;
    v188 = "FCForYouQueryUtilities.m";
    v189 = 1024;
    v190 = 216;
    v191 = 2114;
    v192 = v109;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  topStoriesConfig = [configurationCopy topStoriesConfig];
  channelID = [topStoriesConfig channelID];

  editorialChannelID = [configurationCopy editorialChannelID];
  editorialGemsSectionID = [configurationCopy editorialGemsSectionID];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __167__FCForYouQueryUtilities_feedRequestsForTags_tagBinProvider_hiddenFeedIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_maxCount_feedRange_sidecar_options___block_invoke;
  aBlock[3] = &unk_1E7C39E28;
  v119 = subscriptionProviderCopy;
  v175 = v119;
  v117 = iDsCopy;
  v176 = v117;
  v112 = configurationCopy;
  v177 = v112;
  v128 = _Block_copy(aBlock);
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  obj = tagsCopy;
  v23 = [obj countByEnumeratingWithState:&v170 objects:v184 count:16];
  v123 = providerCopy;
  if (v23)
  {
    v24 = v23;
    v25 = *v171;
    v114 = *v171;
    do
    {
      v26 = 0;
      v120 = v24;
      do
      {
        if (*v171 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v170 + 1) + 8 * v26);
        v136 = (*(providerCopy + 2))(providerCopy, v27);
        tagType = [v27 tagType];
        if (tagType == 1)
        {
          [FCFeedContext feedContextForTag:v27];
          v36 = v35 = v26;
          v37 = objc_alloc_init(FCFeedRequest);
          v38 = [v27 freeFeedIDForBin:v136];
          [(FCFeedRequest *)v37 setFeedID:v38];
          [(FCFeedRequest *)v37 setFeedRange:rangeCopy];
          [(FCFeedRequest *)v37 setMaxCount:count];
          [array3 addObject:v37];
          [dictionary setObject:v36 forKey:v38];

          v26 = v35;
        }

        else if (tagType == 2)
        {
          v122 = v26;
          asChannel = [v27 asChannel];
          identifier = [v27 identifier];
          v133 = [channelID isEqualToString:identifier];
          v125 = [editorialChannelID isEqualToString:identifier];
          v31 = [v117 containsObject:identifier];
          HasBundleSubscriptionToChannelInline = FCPaidAccessCheckerHasBundleSubscriptionToChannelInline(v119, identifier, 7);
          v161 = MEMORY[0x1E69E9820];
          v162 = 3221225472;
          v163 = __167__FCForYouQueryUtilities_feedRequestsForTags_tagBinProvider_hiddenFeedIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_maxCount_feedRange_sidecar_options___block_invoke_2;
          v164 = &unk_1E7C39E50;
          optionsCopy = options;
          v168 = v31;
          v169 = HasBundleSubscriptionToChannelInline;
          v129 = identifier;
          v165 = v129;
          v33 = editorialChannelID;
          v166 = v33;
          if ((options & 4) != 0 || (options & 2) == 0 && (((v31 | HasBundleSubscriptionToChannelInline) & 1) != 0 || [v129 isEqualToString:v33]))
          {
            sectionIDs = [asChannel sectionIDs];
          }

          else
          {
            sectionIDs = [asChannel defaultSectionID];

            if (sectionIDs)
            {
              defaultSectionID = [asChannel defaultSectionID];
              v183 = defaultSectionID;
              sectionIDs = [MEMORY[0x1E695DEC8] arrayWithObjects:&v183 count:1];
            }
          }

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v126 = sectionIDs;
          v41 = [v126 countByEnumeratingWithState:&v157 objects:v182 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v158;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v158 != v43)
                {
                  objc_enumerationMutation(v126);
                }

                v45 = *(*(&v157 + 1) + 8 * i);
                defaultSectionID2 = [asChannel defaultSectionID];
                v47 = [v45 isEqualToString:defaultSectionID2];

                v48 = array;
                if (!v47)
                {
                  v48 = array2;
                }

                v49 = v48;
                if (v133)
                {
                  v50 = [FCFeedContext feedContextForTopStoriesChannel:asChannel sectionID:v45];
                }

                else if (v125)
                {
                  if ([v45 isEqualToString:editorialGemsSectionID])
                  {
                    [FCFeedContext feedContextForEditorialChannel:asChannel editorialGemsSectionID:v45];
                  }

                  else
                  {
                    [FCFeedContext feedContextForEditorialChannel:asChannel sectionID:v45];
                  }
                  v50 = ;
                }

                else
                {
                  v50 = [FCFeedContext feedContextForChannel:asChannel sectionID:v45];
                }

                v51 = v50;
                v52 = [asChannel freeFeedIDForSection:v45 bin:v136];
                if (v52)
                {
                  v53 = objc_alloc_init(FCFeedRequest);
                  [(FCFeedRequest *)v53 setFeedID:v52];
                  [(FCFeedRequest *)v53 setFeedRange:rangeCopy];
                  [(FCFeedRequest *)v53 setMaxCount:count];
                  defaultSectionID3 = [asChannel defaultSectionID];
                  -[FCFeedRequest setIsExpendable:](v53, "setIsExpendable:", [v45 isEqualToString:defaultSectionID3] ^ 1);

                  [v49 addObject:v53];
                  [dictionary setObject:v51 forKey:v52];
                  if (v128[2](v128, v129))
                  {
                    v55 = [asChannel paidFeedIDForSection:v45 bin:v136];
                    v56 = v55;
                    if (v55 && ([v55 isEqualToString:v52] & 1) == 0)
                    {
                      v57 = [(FCFeedRequest *)v53 copy];
                      [v57 setFeedID:v56];
                      [v49 addObject:v57];
                      [dictionary setObject:v51 forKey:v56];
                    }
                  }
                }
              }

              v42 = [v126 countByEnumeratingWithState:&v157 objects:v182 count:16];
            }

            while (v42);
          }

          v26 = v122;
          providerCopy = v123;
          v24 = v120;
          v25 = v114;
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"only expected to build a For You query from channels and topics"];
          *buf = 136315906;
          v186 = "+[FCForYouQueryUtilities feedRequestsForTags:tagBinProvider:hiddenFeedIDs:purchasedTagIDs:bundleSubscriptionProvider:configuration:maxCount:feedRange:sidecar:options:]";
          v187 = 2080;
          v188 = "FCForYouQueryUtilities.m";
          v189 = 1024;
          v190 = 370;
          v191 = 2114;
          v192 = v39;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = [obj countByEnumeratingWithState:&v170 objects:v184 count:16];
    }

    while (v24);
  }

  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v58 = dsCopy;
  v59 = [v58 countByEnumeratingWithState:&v153 objects:v181 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v154;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v154 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v153 + 1) + 8 * j);
        v64 = objc_alloc_init(FCFeedRequest);
        [(FCFeedRequest *)v64 setFeedID:v63];
        [(FCFeedRequest *)v64 setFeedRange:rangeCopy];
        [(FCFeedRequest *)v64 setMaxCount:count];
        [array5 addObject:v64];
        v65 = +[FCFeedContext feedContextForHiddenFeed];
        [dictionary setObject:v65 forKeyedSubscript:v63];
      }

      v60 = [v58 countByEnumeratingWithState:&v153 objects:v181 count:16];
    }

    while (v60);
  }

  if ((options & 1) == 0)
  {
    bundleSubscription = [v119 bundleSubscription];
    v67 = objc_getAssociatedObject(bundleSubscription, (bundleSubscription + 1));
    unsignedIntegerValue = [v67 unsignedIntegerValue];
    v69 = unsignedIntegerValue;
    v70 = objc_getAssociatedObject(bundleSubscription, ~unsignedIntegerValue);
    v71 = [v70 unsignedIntegerValue] ^ v69;

    paidBundleConfig = [v112 paidBundleConfig];
    v73 = paidBundleConfig;
    if (v71)
    {
      [paidBundleConfig globalFeedIDForPaidUsers];
    }

    else
    {
      [paidBundleConfig globalFeedIDForFreeUsers];
    }
    v74 = ;

    if (v74)
    {
      paidBundleConfig2 = [v112 paidBundleConfig];
      areMagazinesEnabled = [paidBundleConfig2 areMagazinesEnabled];

      if (areMagazinesEnabled)
      {
        v77 = objc_alloc_init(FCFeedRequest);
        [(FCFeedRequest *)v77 setFeedID:v74];
        [(FCFeedRequest *)v77 setFeedRange:rangeCopy];
        [(FCFeedRequest *)v77 setMaxCount:count];
        [array4 addObject:v77];
        v78 = +[FCFeedContext feedContextForPaidBundleFeed];
        [dictionary setObject:v78 forKeyedSubscript:v74];
      }
    }
  }

  v127 = v58;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  additionalChannelsToQuery = [sidecarCopy additionalChannelsToQuery];
  v137 = [additionalChannelsToQuery countByEnumeratingWithState:&v149 objects:v180 count:16];
  if (v137)
  {
    v134 = *v150;
    do
    {
      for (k = 0; k != v137; ++k)
      {
        if (*v150 != v134)
        {
          objc_enumerationMutation(additionalChannelsToQuery);
        }

        v80 = *(*(&v149 + 1) + 8 * k);
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v81 = [sidecarCopy additionalSectionIDsToQueryForChannel:v80];
        v82 = [v81 countByEnumeratingWithState:&v145 objects:v179 count:16];
        if (v82)
        {
          v83 = v82;
          v84 = *v146;
          do
          {
            for (m = 0; m != v83; ++m)
            {
              if (*v146 != v84)
              {
                objc_enumerationMutation(v81);
              }

              v86 = *(*(&v145 + 1) + 8 * m);
              v87 = [FCFeedContext feedContextForChannel:v80 sectionID:v86];
              v88 = [v80 freeFeedIDForSection:v86 bin:3];
              if (v88)
              {
                v89 = [dictionary objectForKey:v88];

                if (!v89)
                {
                  v90 = objc_alloc_init(FCFeedRequest);
                  [(FCFeedRequest *)v90 setFeedID:v88];
                  [(FCFeedRequest *)v90 setFeedRange:rangeCopy];
                  [(FCFeedRequest *)v90 setMaxCount:count];
                  [(FCFeedRequest *)v90 setIsExpendable:1];
                  [array6 addObject:v90];
                  [dictionary setObject:v87 forKey:v88];
                }
              }

              if ([sidecarCopy shouldIncludePaidFeedForChannel:v80])
              {
                v91 = [v80 paidFeedIDForSection:v86 bin:3];
                if (v91)
                {
                  v92 = [dictionary objectForKey:v91];

                  if (!v92)
                  {
                    v93 = objc_alloc_init(FCFeedRequest);
                    [(FCFeedRequest *)v93 setFeedID:v91];
                    [(FCFeedRequest *)v93 setFeedRange:rangeCopy];
                    [(FCFeedRequest *)v93 setMaxCount:count];
                    [(FCFeedRequest *)v93 setIsExpendable:1];
                    [array6 addObject:v93];
                    [dictionary setObject:v87 forKey:v91];
                  }
                }
              }
            }

            v83 = [v81 countByEnumeratingWithState:&v145 objects:v179 count:16];
          }

          while (v83);
        }
      }

      v137 = [additionalChannelsToQuery countByEnumeratingWithState:&v149 objects:v180 count:16];
    }

    while (v137);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  additionalTopicsToQuery = [sidecarCopy additionalTopicsToQuery];
  v95 = [additionalTopicsToQuery countByEnumeratingWithState:&v141 objects:v178 count:16];
  if (v95)
  {
    v96 = v95;
    v97 = *v142;
    do
    {
      for (n = 0; n != v96; ++n)
      {
        if (*v142 != v97)
        {
          objc_enumerationMutation(additionalTopicsToQuery);
        }

        v99 = *(*(&v141 + 1) + 8 * n);
        v100 = [FCFeedContext feedContextForTag:v99];
        v101 = [v99 freeFeedIDForBin:{(v123)[2](v123, v99)}];
        if (v101)
        {
          v102 = [dictionary objectForKey:v101];

          if (!v102)
          {
            v103 = objc_alloc_init(FCFeedRequest);
            [(FCFeedRequest *)v103 setFeedID:v101];
            [(FCFeedRequest *)v103 setFeedRange:rangeCopy];
            [(FCFeedRequest *)v103 setMaxCount:count];
            [array6 addObject:v103];
            [dictionary setObject:v100 forKey:v101];
          }
        }
      }

      v96 = [additionalTopicsToQuery countByEnumeratingWithState:&v141 objects:v178 count:16];
    }

    while (v96);
  }

  v104 = [[FCForYouQueryResult alloc] initWithChannelDefaultSectionRequests:array channelOtherSectionsRequests:array2 topicRequests:array3 paidBundleRequests:array4 hiddenFeedRequests:array5 sidecarRequests:array6 feedContextByFeedID:dictionary];

  return v104;
}

uint64_t __167__FCForYouQueryUtilities_feedRequestsForTags_tagBinProvider_hiddenFeedIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_maxCount_feedRange_sidecar_options___block_invoke(void **a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 bundleSubscription];
  v6 = [v5 bundleChannelIDs];
  v7 = [v6 containsObject:v4];

  LOBYTE(v6) = [a1[5] containsObject:v4];
  HasBundleSubscriptionToChannelInline = FCPaidAccessCheckerHasBundleSubscriptionToChannelInline(a1[4], v4, 234);

  if (v6)
  {
    return 1;
  }

  if ((v7 & HasBundleSubscriptionToChannelInline) == 1)
  {
    v10 = [a1[6] paidBundleConfig];
    v11 = [v10 forYouIncludePaidSectionFeedsForPaidUsers];

    if (v11)
    {
      return 1;
    }
  }

  if ((v7 ^ 1 | HasBundleSubscriptionToChannelInline))
  {
    return 0;
  }

  v12 = [a1[6] paidBundleConfig];
  v13 = [v12 forYouIncludePaidSectionFeedsForFreeUsers];

  return v13;
}

uint64_t __167__FCForYouQueryUtilities_feedRequestsForTags_tagBinProvider_hiddenFeedIDs_purchasedTagIDs_bundleSubscriptionProvider_configuration_maxCount_feedRange_sidecar_options___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((v1 & 4) != 0)
  {
    return 1;
  }

  if ((v1 & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 56) & 1) != 0 || (*(a1 + 57))
  {
    return 1;
  }

  return [*(a1 + 32) isEqualToString:*(a1 + 40)];
}

+ (id)_filterTagsForQuerying:(id)querying withMutedTagIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  queryingCopy = querying;
  dsCopy = ds;
  if (!queryingCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tags"];
    *buf = 136315906;
    v18 = "+[FCForYouQueryUtilities _filterTagsForQuerying:withMutedTagIDs:]";
    v19 = 2080;
    v20 = "FCForYouQueryUtilities.m";
    v21 = 1024;
    v22 = 471;
    v23 = 2114;
    v24 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "mutedTagIDs"];
    *buf = 136315906;
    v18 = "+[FCForYouQueryUtilities _filterTagsForQuerying:withMutedTagIDs:]";
    v19 = 2080;
    v20 = "FCForYouQueryUtilities.m";
    v21 = 1024;
    v22 = 472;
    v23 = 2114;
    v24 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__FCForYouQueryUtilities__filterTagsForQuerying_withMutedTagIDs___block_invoke;
  v15[3] = &unk_1E7C39E78;
  v16 = dsCopy;
  v7 = dsCopy;
  v8 = [queryingCopy fc_arrayOfObjectsPassingTest:v15];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  return v10;
}

uint64_t __65__FCForYouQueryUtilities__filterTagsForQuerying_withMutedTagIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 asChannel];
  v5 = [v3 asSection];

  if (v4)
  {
    v6 = *(a1 + 32);
    v3 = [v4 identifier];
    if ([v6 containsObject:v3])
    {
      v7 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (!v5)
    {
      v7 = 1;
      goto LABEL_10;
    }

LABEL_7:
    v8 = *(a1 + 32);
    v9 = [v5 parentID];
    v7 = [v8 containsObject:v9] ^ 1;

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

@end