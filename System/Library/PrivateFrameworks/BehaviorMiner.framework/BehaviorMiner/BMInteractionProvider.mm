@interface BMInteractionProvider
- (BMInteractionProvider)init;
- (BMInteractionProvider)initWithBMMiningTaskConfig:(id)config;
- (BMInteractionProvider)initWithInteractionStore:(id)store bmMiningTaskConfig:(id)config;
- (id)batchFetchedPhotoSuggestionsForInteractions:(id)interactions;
- (id)getResultsForRequest:(id)request;
- (id)interactionEventsForTypes:(id)types error:(id *)error;
@end

@implementation BMInteractionProvider

- (BMInteractionProvider)initWithInteractionStore:(id)store bmMiningTaskConfig:(id)config
{
  storeCopy = store;
  configCopy = config;
  v17.receiver = self;
  v17.super_class = BMInteractionProvider;
  v9 = [(BMInteractionProvider *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_interactionStore, store);
    contextKitClient = v10->_contextKitClient;
    v10->_contextKitClient = 0;

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v12 = getCKContextClientClass_softClass;
    v22 = getCKContextClientClass_softClass;
    if (!getCKContextClientClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __getCKContextClientClass_block_invoke;
      v18[3] = &unk_278D066F0;
      v18[4] = &v19;
      __getCKContextClientClass_block_invoke(v18);
      v12 = v20[3];
    }

    v13 = v12;
    _Block_object_dispose(&v19, 8);
    v14 = [v12 clientWithDefaultRequestType:9];
    v15 = v10->_contextKitClient;
    v10->_contextKitClient = v14;

    objc_storeStrong(&v10->_bmMiningTaskConfig, config);
  }

  return v10;
}

- (BMInteractionProvider)init
{
  defaultDatabaseDirectory = [MEMORY[0x277CFE0C0] defaultDatabaseDirectory];
  v4 = [MEMORY[0x277CFE0C0] storeWithDirectory:defaultDatabaseDirectory readOnly:1];
  v5 = [(BMInteractionProvider *)self initWithInteractionStore:v4];

  return v5;
}

- (BMInteractionProvider)initWithBMMiningTaskConfig:(id)config
{
  v4 = MEMORY[0x277CFE0C0];
  configCopy = config;
  defaultDatabaseDirectory = [v4 defaultDatabaseDirectory];
  v7 = [MEMORY[0x277CFE0C0] storeWithDirectory:defaultDatabaseDirectory readOnly:1];
  v8 = [(BMInteractionProvider *)self initWithInteractionStore:v7 bmMiningTaskConfig:configCopy];

  return v8;
}

- (id)batchFetchedPhotoSuggestionsForInteractions:(id)interactions
{
  v34 = *MEMORY[0x277D85DE8];
  interactionsCopy = interactions;
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = interactionsCopy;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        attachments = [v9 attachments];
        v11 = [attachments countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(attachments);
              }

              v15 = *(*(&v24 + 1) + 8 * j);
              identifier = [v15 identifier];

              if (identifier)
              {
                identifier2 = [v15 identifier];
                uUIDString = [identifier2 UUIDString];
                [array addObject:uUIDString];
              }
            }

            v12 = [attachments countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v19 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:array options:0];
  v20 = objc_opt_new();
  [v20 setSharingStream:3];
  v21 = [MEMORY[0x277CD9938] batchFetchSuggestedRecipientsForAssets:v19 options:v20];

  return v21;
}

- (id)getResultsForRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v4 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__BMInteractionProvider_getResultsForRequest___block_invoke;
  v11[3] = &unk_278D06760;
  v13 = &v14;
  v5 = v4;
  v12 = v5;
  [requestCopy executeWithReply:v11];
  v6 = dispatch_time(0, 5000000000);
  v7 = dispatch_semaphore_wait(v5, v6);
  if (v7)
  {
    v8 = BMLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = &unk_2853B5AB0;
      _os_log_impl(&dword_241ACA000, v8, OS_LOG_TYPE_INFO, "Timeout after %@ msec waiting for an answer from ContextKit", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __46__BMInteractionProvider_getResultsForRequest___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)interactionEventsForTypes:(id)types error:(id *)error
{
  v392[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v6 = objc_autoreleasePoolPush();
  v7 = 0x278D06000uLL;
  v8 = +[BMItemType interactionItemTypes];
  v9 = [typesCopy intersectsSet:v8];

  if (v9)
  {
    defaultConfiguration = [MEMORY[0x277D3A0D8] defaultConfiguration];
    v287 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.PeopleSuggester"];
    [v287 BOOLForKey:@"_PSAllowNonSupportedBundleIDs"];
    v11 = _PSShareSheetSuggestionBundleIDs();
    selfCopy = self;
    v12 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.mobilemail", @"com.apple.UIKit.activity.Mail", 0}];
    v296 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.MobileSMS", @"com.apple.UIKit.activity.Message", 0}];
    v286 = v11;
    v13 = [v11 mutableCopy];
    v301 = v12;
    [v13 minusSet:v12];
    v295 = _PSShareSheetExtensionBundleIDToAppBundleIDMapping();
    v285 = v13;
    v14 = BMInteractionPredicate(4, v13, defaultConfiguration);
    v15 = MEMORY[0x277CBEB98];
    v377 = @"com.apple.UIKit.activity.Mail";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v377 count:1];
    v17 = [v15 setWithArray:v16];
    v18 = BMInteractionPredicate(1, v17, defaultConfiguration);

    v19 = MEMORY[0x277CCA920];
    v283 = v18;
    v284 = v14;
    v376[0] = v14;
    v376[1] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v376 count:2];
    v21 = [v19 orPredicateWithSubpredicates:v20];

    v22 = MEMORY[0x277CCAC30];
    v23 = MEMORY[0x277CBEB98];
    v288 = defaultConfiguration;
    suggestionModel = [defaultConfiguration suggestionModel];
    messageDirections = [suggestionModel messageDirections];
    v26 = [v23 setWithArray:messageDirections];
    v27 = [v22 predicateWithFormat:@"(direction IN %@)", v26];

    v28 = selfCopy;
    v29 = MEMORY[0x277CCA920];
    v281 = v27;
    v282 = v21;
    v375[0] = v27;
    v375[1] = v21;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v375 count:2];
    v31 = [v29 andPredicateWithSubpredicates:v30];

    interactionStore = [(BMInteractionProvider *)selfCopy interactionStore];
    v358 = 0;
    v279 = v31;
    v33 = [interactionStore queryInteractionsUsingPredicate:v31 sortDescriptors:0 limit:0 error:&v358];
    v280 = v358;

    if (v33)
    {
      v294 = [(BMInteractionProvider *)selfCopy batchFetchedPhotoSuggestionsForInteractions:v33];
      array = [MEMORY[0x277CBEB18] array];
      v354 = 0u;
      v355 = 0u;
      v356 = 0u;
      v357 = 0u;
      v278 = v33;
      obj = v33;
      v300 = [obj countByEnumeratingWithState:&v354 objects:v374 count:16];
      v34 = 0;
      if (!v300)
      {
        goto LABEL_201;
      }

      v299 = *v355;
      v35 = 0x278D06000uLL;
      v290 = *MEMORY[0x277CD9B10];
      v307 = typesCopy;
      v298 = v6;
      while (1)
      {
        for (i = 0; i != v300; ++i)
        {
          if (*v355 != v299)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v354 + 1) + 8 * i);
          v303 = objc_autoreleasePoolPush();
          if ([v37 mechanism] == 13)
          {
            [v37 targetBundleId];
          }

          else
          {
            [v37 bundleId];
          }
          v38 = ;

          v304 = v38;
          v305 = v37;
          if ([v301 containsObject:v38])
          {
            recipients = [v37 recipients];
            v40 = [recipients count];

            v41 = v40 > 1;
            v37 = v305;
            if (v41)
            {
              goto LABEL_199;
            }
          }

          startDate = [v37 startDate];
          endDate = [v37 endDate];
          v43 = endDate;
          if (endDate)
          {
            startDate2 = endDate;
          }

          else
          {
            startDate2 = [v37 startDate];
          }

          interactionMechanism = [*(v7 + 840) interactionMechanism];
          v45 = [typesCopy containsObject:interactionMechanism];

          if (v45)
          {
            v46 = *(v35 + 824);
            interactionMechanism2 = [*(v7 + 840) interactionMechanism];
            v48 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v305, "mechanism")}];
            v49 = [v46 itemWithType:interactionMechanism2 numberValue:v48];

            v50 = [[BMEvent alloc] initWithStartDate:startDate endDate:startDate2 item:v49];
            [array addObject:v50];
          }

          interactionDirection = [*(v7 + 840) interactionDirection];
          v52 = [typesCopy containsObject:interactionDirection];

          if (v52)
          {
            v53 = *(v35 + 824);
            interactionDirection2 = [*(v7 + 840) interactionDirection];
            v55 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v305, "direction")}];
            v56 = [v53 itemWithType:interactionDirection2 numberValue:v55];

            v57 = [BMEvent alloc];
            endDate2 = [v305 endDate];
            v59 = [(BMEvent *)v57 initWithStartDate:startDate endDate:endDate2 item:v56];

            [array addObject:v59];
          }

          interactionSharingSourceBundleID = [*(v7 + 840) interactionSharingSourceBundleID];
          v61 = [typesCopy containsObject:interactionSharingSourceBundleID];

          if (v61)
          {
            if ([v305 mechanism] == 13)
            {
              bundleId = [v305 bundleId];

              if (bundleId)
              {
                v63 = *(v35 + 824);
                interactionSharingSourceBundleID2 = [*(v7 + 840) interactionSharingSourceBundleID];
                bundleId2 = [v305 bundleId];
                v66 = [v63 itemWithType:interactionSharingSourceBundleID2 stringValue:bundleId2];

                v67 = [BMEvent alloc];
                endDate3 = [v305 endDate];
                v69 = [(BMEvent *)v67 initWithStartDate:startDate endDate:endDate3 item:v66];

                [array addObject:v69];
              }
            }
          }

          interactionTargetBundleID = [*(v7 + 840) interactionTargetBundleID];
          v71 = [typesCopy containsObject:interactionTargetBundleID];

          if (v71)
          {
            v72 = [v295 objectForKeyedSubscript:v304];
            v73 = v72;
            if (v72)
            {
              v74 = v72;
            }

            else
            {
              v74 = v304;
            }

            v75 = v74;

            if (v75)
            {
              v76 = *(v35 + 824);
              interactionTargetBundleID2 = [*(v7 + 840) interactionTargetBundleID];
              v78 = [v76 itemWithType:interactionTargetBundleID2 stringValue:v75];

              v79 = [[BMEvent alloc] initWithStartDate:startDate endDate:startDate2 item:v78];
              [array addObject:v79];
            }
          }

          v302 = i;
          sender = [v305 sender];
          identifier = [sender identifier];
          if (identifier)
          {
            v82 = identifier;
            interactionSender = [*(v7 + 840) interactionSender];
            v84 = [typesCopy containsObject:interactionSender];

            if (!v84)
            {
              goto LABEL_35;
            }

            v85 = *(v35 + 824);
            interactionSender2 = [*(v7 + 840) interactionSender];
            sender2 = [v305 sender];
            identifier2 = [sender2 identifier];
            sender = [v85 itemWithType:interactionSender2 stringValue:identifier2];

            v89 = [[BMEvent alloc] initWithStartDate:startDate endDate:startDate2 item:sender];
            [array addObject:v89];
          }

LABEL_35:
          interactionRecipients = [*(v7 + 840) interactionRecipients];
          v91 = [typesCopy containsObject:interactionRecipients];

          if (v91)
          {
            if ([v301 containsObject:v304])
            {
              recipients2 = [v305 recipients];
              v93 = [recipients2 count];

              if (v93 == 1)
              {
                v94 = *(v35 + 824);
                interactionRecipients2 = [*(v7 + 840) interactionRecipients];
                v96 = MEMORY[0x277CFE0A8];
                recipients3 = [v305 recipients];
                v98 = [v96 generateConversationIdFromInteractionRecipients:recipients3];
                v99 = [v94 itemWithType:interactionRecipients2 stringValue:v98];

                goto LABEL_49;
              }
            }

            if ([v296 containsObject:v304] && (objc_msgSend(v305, "domainIdentifier"), v100 = objc_claimAutoreleasedReturnValue(), v100, v100))
            {
              domainIdentifier = [v305 domainIdentifier];
              if ([domainIdentifier containsString:@"SMS"])
              {

LABEL_47:
                v105 = *(v35 + 824);
                interactionRecipients2 = [*(v7 + 840) interactionRecipients];
                domainIdentifier2 = [v305 domainIdentifier];
                goto LABEL_48;
              }

              domainIdentifier3 = [v305 domainIdentifier];
              v108 = [domainIdentifier3 containsString:@"iMessage"];

              if (v108)
              {
                goto LABEL_47;
              }
            }

            else
            {
              derivedIntentIdentifier = [v305 derivedIntentIdentifier];
              if (derivedIntentIdentifier)
              {
                v103 = derivedIntentIdentifier;
                v104 = [v296 containsObject:v304];

                if ((v104 & 1) == 0)
                {
                  v105 = *(v35 + 824);
                  interactionRecipients2 = [*(v7 + 840) interactionRecipients];
                  domainIdentifier2 = [v305 derivedIntentIdentifier];
LABEL_48:
                  recipients3 = domainIdentifier2;
                  v99 = [v105 itemWithType:interactionRecipients2 stringValue:domainIdentifier2];
LABEL_49:

                  if (v99)
                  {
                    v109 = [[BMEvent alloc] initWithStartDate:startDate endDate:startDate2 item:v99];
                    [array addObject:v109];
                  }
                }
              }
            }
          }

          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          attachments = [v305 attachments];
          v313 = v34;
          v319 = [attachments countByEnumeratingWithState:&v350 objects:v373 count:16];
          if (!v319)
          {
            goto LABEL_99;
          }

          v317 = *v351;
          do
          {
            v110 = 0;
            do
            {
              if (*v351 != v317)
              {
                objc_enumerationMutation(attachments);
              }

              context = v110;
              v111 = *(*(&v350 + 1) + 8 * v110);
              contentURL = [v111 contentURL];
              if (contentURL)
              {
                v113 = contentURL;
                contentURL2 = [v111 contentURL];
                host = [contentURL2 host];
                if (host)
                {
                  v116 = host;
                  v117 = +[BMItemType interactionContentURL];
                  v118 = [typesCopy containsObject:v117];

                  if (v118)
                  {
                    v119 = *(v35 + 824);
                    v120 = +[BMItemType interactionContentURL];
                    contentURL3 = [v111 contentURL];
                    host2 = [contentURL3 host];
                    v123 = [v119 itemWithType:v120 stringValue:host2];

                    v7 = 0x278D06000uLL;
                    v34 = v313;
                    goto LABEL_68;
                  }
                }

                else
                {
                }
              }

              v124 = [v111 uti];
              v7 = 0x278D06000uLL;
              if (v124)
              {
                v125 = v124;
                v126 = +[BMItemType interactionUTIType];
                v127 = [typesCopy containsObject:v126];

                if (v127)
                {
                  v128 = *(v35 + 824);
                  v120 = +[BMItemType interactionUTIType];
                  personInPhoto2 = [v111 uti];
                  goto LABEL_67;
                }
              }

              personInPhoto = [v111 personInPhoto];
              if (personInPhoto)
              {
                v131 = personInPhoto;
                v132 = +[BMItemType interactionPhotoContact];
                v133 = [typesCopy containsObject:v132];

                if (v133)
                {
                  v128 = *(v35 + 824);
                  v120 = +[BMItemType interactionPhotoContact];
                  personInPhoto2 = [v111 personInPhoto];
LABEL_67:
                  contentURL3 = personInPhoto2;
                  v123 = [v128 itemWithType:v120 stringValue:personInPhoto2];
LABEL_68:

                  v134 = [[BMEvent alloc] initWithStartDate:startDate endDate:startDate2 item:v123];
                  [array addObject:v134];
                }
              }

              contextKitClient = [(BMInteractionProvider *)v28 contextKitClient];
              if (contextKitClient)
              {
                v136 = contextKitClient;
                bmMiningTaskConfig = [(BMInteractionProvider *)v28 bmMiningTaskConfig];
                if (bmMiningTaskConfig)
                {
                  v138 = bmMiningTaskConfig;
                  bmMiningTaskConfig2 = [(BMInteractionProvider *)v28 bmMiningTaskConfig];
                  interactionExtractedTopicFromAttachmentFactorInUse = [bmMiningTaskConfig2 interactionExtractedTopicFromAttachmentFactorInUse];

                  if (interactionExtractedTopicFromAttachmentFactorInUse)
                  {
                    v141 = BMLog(contextKitClient);
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
                    {
                      [BMInteractionProvider interactionEventsForTypes:v349 error:?];
                    }

                    contentText = [v111 contentText];
                    if (contentText)
                    {
                      v143 = contentText;
                      v144 = +[BMItemType interactionExtractedTopicFromAttachment];
                      v145 = [typesCopy containsObject:v144];

                      if (v145)
                      {
                        contextKitClient2 = [(BMInteractionProvider *)v28 contextKitClient];
                        newRequest = [contextKitClient2 newRequest];

                        contentURL4 = [v111 contentURL];
                        absoluteString = [contentURL4 absoluteString];
                        [newRequest setUrl:absoluteString];

                        [newRequest setIncludeHigherLevelTopics:1];
                        v311 = newRequest;
                        v150 = [(BMInteractionProvider *)v28 getResultsForRequest:newRequest];
                        error = [v150 error];

                        if (error)
                        {
                          v153 = BMLog(v152);
                          if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                          {
                            [(BMInteractionProvider *)v371 interactionEventsForTypes:v150 error:&v372, v153];
                          }
                        }

                        v346 = 0u;
                        v347 = 0u;
                        v344 = 0u;
                        v345 = 0u;
                        v309 = v150;
                        level1Topics = [v150 level1Topics];
                        v155 = [level1Topics countByEnumeratingWithState:&v344 objects:v370 count:16];
                        if (v155)
                        {
                          v156 = v155;
                          v157 = *v345;
                          do
                          {
                            for (j = 0; j != v156; ++j)
                            {
                              if (*v345 != v157)
                              {
                                objc_enumerationMutation(level1Topics);
                              }

                              v159 = *(*(&v344 + 1) + 8 * j);
                              v160 = *(v35 + 824);
                              interactionExtractedTopicFromAttachment = [*(v7 + 840) interactionExtractedTopicFromAttachment];
                              topicId = [v159 topicId];
                              v163 = [v160 itemWithType:interactionExtractedTopicFromAttachment stringValue:topicId];

                              v164 = [[BMEvent alloc] initWithStartDate:startDate endDate:startDate2 item:v163];
                              v165 = BMLog(v164);
                              if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
                              {
                                title = [v159 title];
                                topicId2 = [v159 topicId];
                                *buf = 138412546;
                                v389 = title;
                                v390 = 2112;
                                v391 = topicId2;
                                _os_log_impl(&dword_241ACA000, v165, OS_LOG_TYPE_INFO, "Topic extracted from content URL via contextKit: %@, %@", buf, 0x16u);

                                v7 = 0x278D06000;
                              }

                              [array addObject:v164];
                            }

                            v156 = [level1Topics countByEnumeratingWithState:&v344 objects:v370 count:16];
                          }

                          while (v156);
                        }

                        typesCopy = v307;
                        v28 = selfCopy;
                        v168 = v311;
                        v34 = v313;
LABEL_96:

                        goto LABEL_97;
                      }
                    }

                    goto LABEL_97;
                  }
                }

                else
                {
                }
              }

              v169 = BMLog(contextKitClient);
              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
              {
                [BMInteractionProvider interactionEventsForTypes:v343 error:?];
              }

              bmMiningTaskConfig3 = [(BMInteractionProvider *)v28 bmMiningTaskConfig];

              if (!bmMiningTaskConfig3)
              {
                v168 = BMLog(v171);
                if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
                {
                  [BMInteractionProvider interactionEventsForTypes:v341 error:?];
                }

                goto LABEL_96;
              }

LABEL_97:
              v110 = context + 1;
            }

            while (context + 1 != v319);
            v319 = [attachments countByEnumeratingWithState:&v350 objects:v373 count:16];
          }

          while (v319);
LABEL_99:

          interactionPhotoScene = [*(v7 + 840) interactionPhotoScene];
          v173 = [typesCopy containsObject:interactionPhotoScene];

          if (v173)
          {
            v174 = MEMORY[0x277CBEB18];
            attachments2 = [v305 attachments];
            v176 = [v174 arrayWithCapacity:{objc_msgSend(attachments2, "count")}];

            v338 = 0u;
            v339 = 0u;
            v336 = 0u;
            v337 = 0u;
            attachments3 = [v305 attachments];
            v178 = [attachments3 countByEnumeratingWithState:&v336 objects:v369 count:16];
            if (v178)
            {
              v179 = v178;
              v180 = *v337;
              do
              {
                for (k = 0; k != v179; ++k)
                {
                  if (*v337 != v180)
                  {
                    objc_enumerationMutation(attachments3);
                  }

                  v182 = *(*(&v336 + 1) + 8 * k);
                  identifier3 = [v182 identifier];

                  if (identifier3)
                  {
                    identifier4 = [v182 identifier];
                    uUIDString = [identifier4 UUIDString];
                    [v176 addObject:uUIDString];
                  }
                }

                v179 = [attachments3 countByEnumeratingWithState:&v336 objects:v369 count:16];
              }

              while (v179);
            }

            if ([v176 count])
            {
              v186 = v176;
              v187 = v294;
              v188 = objc_autoreleasePoolPush();
              v310 = v176;
              if (v186 && [v186 count])
              {
                contexta = v188;
                array2 = [MEMORY[0x277CBEB18] array];
                v378 = 0u;
                v379 = 0u;
                v380 = 0u;
                v381 = 0u;
                v190 = v186;
                v191 = [v190 countByEnumeratingWithState:&v378 objects:buf count:16];
                if (v191)
                {
                  v192 = v191;
                  v193 = *v379;
                  do
                  {
                    for (m = 0; m != v192; ++m)
                    {
                      if (*v379 != v193)
                      {
                        objc_enumerationMutation(v190);
                      }

                      v195 = [MEMORY[0x277CD97A8] localIdentifierWithUUID:*(*(&v378 + 1) + 8 * m)];
                      v196 = [v187 objectForKeyedSubscript:v195];

                      [array2 addObjectsFromArray:v196];
                    }

                    v192 = [v190 countByEnumeratingWithState:&v378 objects:buf count:16];
                  }

                  while (v192);
                }

                array3 = [MEMORY[0x277CBEB18] array];
                v363 = 0u;
                v364 = 0u;
                v365 = 0u;
                v366 = 0u;
                v198 = array2;
                v199 = [v198 countByEnumeratingWithState:&v363 objects:v384 count:16];
                v34 = v313;
                if (v199)
                {
                  v200 = v199;
                  v201 = *v364;
LABEL_121:
                  v202 = 0;
                  while (1)
                  {
                    if (*v364 != v201)
                    {
                      objc_enumerationMutation(v198);
                    }

                    v203 = [*(*(&v363 + 1) + 8 * v202) objectForKeyedSubscript:@"localIdentifier"];
                    v204 = v203;
                    if (v203 && [v203 length])
                    {
                      [array3 addObject:v204];
                    }

                    v205 = [array3 count];

                    v248 = v205 == 4;
                    v34 = v313;
                    if (v248)
                    {
                      break;
                    }

                    if (v200 == ++v202)
                    {
                      v200 = [v198 countByEnumeratingWithState:&v363 objects:v384 count:16];
                      if (v200)
                      {
                        goto LABEL_121;
                      }

                      break;
                    }
                  }
                }

                v207 = BMLog(v206);
                if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
                {
                  v273 = [array3 count];
                  *v385 = 138412546;
                  *&v385[4] = array3;
                  *&v385[12] = 2048;
                  *&v385[14] = v273;
                  _os_log_debug_impl(&dword_241ACA000, v207, OS_LOG_TYPE_DEBUG, "People Array = %@,%lu", v385, 0x16u);
                }

                v208 = [array3 copy];
                v7 = 0x278D06000;
                v188 = contexta;
              }

              else
              {
                v208 = MEMORY[0x277CBEBF8];
              }

              objc_autoreleasePoolPop(v188);

              v332 = 0u;
              v333 = 0u;
              v334 = 0u;
              v335 = 0u;
              v320 = v208;
              v209 = [v320 countByEnumeratingWithState:&v332 objects:v368 count:16];
              if (v209)
              {
                v210 = v209;
                v211 = *v333;
                do
                {
                  for (n = 0; n != v210; ++n)
                  {
                    if (*v333 != v211)
                    {
                      objc_enumerationMutation(v320);
                    }

                    v213 = *(*(&v332 + 1) + 8 * n);
                    v214 = *(v35 + 824);
                    interactionPhotoContact = [*(v7 + 840) interactionPhotoContact];
                    v216 = [v214 itemWithType:interactionPhotoContact stringValue:v213];

                    v217 = [[BMEvent alloc] initWithStartDate:startDate endDate:startDate2 item:v216];
                    [array addObject:v217];
                  }

                  v210 = [v320 countByEnumeratingWithState:&v332 objects:v368 count:16];
                }

                while (v210);
              }

              if (![v320 count])
              {
                if (!v34)
                {
                  v218 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v219 = [v218 URLForResource:@"blacklistedPhotoScenes" withExtension:@"plist"];

                  v331 = 0;
                  v34 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:v219 error:&v331];
                  v220 = v331;
                  v221 = v220;
                  if (v220)
                  {
                    v222 = BMLog(v220);
                    if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v389 = v219;
                      v390 = 2112;
                      v391 = v221;
                      _os_log_error_impl(&dword_241ACA000, v222, OS_LOG_TYPE_ERROR, "Error loading photo scene blacklist from URL %@, %@", buf, 0x16u);
                    }
                  }
                }

                v223 = v186;
                v34 = v34;
                v224 = objc_autoreleasePoolPush();
                if (v186 && (v225 = [v223 count], v34))
                {
                  v226 = MEMORY[0x277CBEBF8];
                  if (v225)
                  {
                    v293 = v224;
                    v227 = MEMORY[0x277CD9880];
                    mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
                    v229 = [v227 fetchOptionsWithInclusiveDefaultsForPhotoLibrary:mEMORY[0x277CD9948]];

                    v392[0] = v290;
                    v230 = [MEMORY[0x277CBEA60] arrayWithObjects:v392 count:1];
                    [v229 setFetchPropertySets:v230];

                    v306 = v223;
                    v292 = v229;
                    v231 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v223 options:v229];
                    contextb = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
                    v363 = 0u;
                    v364 = 0u;
                    v365 = 0u;
                    v366 = 0u;
                    v291 = v231;
                    fetchedObjects = [v231 fetchedObjects];
                    v232 = 0x277D3B000uLL;
                    v316 = [fetchedObjects countByEnumeratingWithState:&v363 objects:buf count:16];
                    if (v316)
                    {
                      v314 = *v364;
                      do
                      {
                        v233 = 0;
                        do
                        {
                          if (*v364 != v314)
                          {
                            objc_enumerationMutation(fetchedObjects);
                          }

                          v318 = v233;
                          v234 = *(*(&v363 + 1) + 8 * v233);
                          memset(v385, 0, sizeof(v385));
                          v386 = 0u;
                          v387 = 0u;
                          sceneClassifications = [v234 sceneClassifications];
                          v236 = [sceneClassifications countByEnumeratingWithState:v385 objects:v384 count:16];
                          if (v236)
                          {
                            v237 = v236;
                            v238 = **&v385[16];
                            do
                            {
                              for (ii = 0; ii != v237; ++ii)
                              {
                                if (**&v385[16] != v238)
                                {
                                  objc_enumerationMutation(sceneClassifications);
                                }

                                v240 = *(*&v385[8] + 8 * ii);
                                [v240 confidence];
                                v242 = v241;
                                sceneIdentifier = [v240 sceneIdentifier];
                                sharedTaxonomy = [*(v232 + 1224) sharedTaxonomy];
                                v245 = [sharedTaxonomy nodeForSceneClassId:sceneIdentifier];

                                name = [v245 name];
                                v247 = name;
                                if (v245)
                                {
                                  v248 = name == 0;
                                }

                                else
                                {
                                  v248 = 1;
                                }

                                if (!v248 && ([v34 containsObject:name] & 1) == 0)
                                {
                                  [v245 highPrecisionThreshold];
                                  if (v242 >= v249)
                                  {
                                    [v245 highRecallThreshold];
                                    if (v242 >= v250)
                                    {
                                      v251 = v35;
                                      v252 = v34;
                                      v383[0] = v247;
                                      v382[0] = @"name";
                                      v382[1] = @"confidence";
                                      v253 = [MEMORY[0x277CCABB0] numberWithDouble:v242];
                                      v383[1] = v253;
                                      v254 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v383 forKeys:v382 count:2];

                                      v255 = [contextb indexOfObject:v254 inSortedRange:0 options:objc_msgSend(contextb usingComparator:{"count"), 1024, &__block_literal_global_12}];
                                      if (v255 != 0x7FFFFFFFFFFFFFFFLL)
                                      {
                                        [contextb insertObject:v254 atIndex:v255];
                                      }

                                      if ([contextb count] >= 5)
                                      {
                                        [contextb removeLastObject];
                                      }

                                      v34 = v252;
                                      v35 = v251;
                                      v232 = 0x277D3B000;
                                    }
                                  }
                                }
                              }

                              v237 = [sceneClassifications countByEnumeratingWithState:v385 objects:v384 count:16];
                            }

                            while (v237);
                          }

                          v233 = v318 + 1;
                        }

                        while ((v318 + 1) != v316);
                        v316 = [fetchedObjects countByEnumeratingWithState:&v363 objects:buf count:16];
                      }

                      while (v316);
                    }

                    v256 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(contextb, "count")}];
                    v359 = 0u;
                    v360 = 0u;
                    v361 = 0u;
                    v362 = 0u;
                    v257 = contextb;
                    v258 = [v257 countByEnumeratingWithState:&v359 objects:&v378 count:16];
                    v7 = 0x278D06000;
                    if (v258)
                    {
                      v259 = v258;
                      v260 = *v360;
                      do
                      {
                        for (jj = 0; jj != v259; ++jj)
                        {
                          if (*v360 != v260)
                          {
                            objc_enumerationMutation(v257);
                          }

                          v262 = [*(*(&v359 + 1) + 8 * jj) objectForKeyedSubscript:@"name"];
                          [v256 addObject:v262];
                        }

                        v259 = [v257 countByEnumeratingWithState:&v359 objects:&v378 count:16];
                      }

                      while (v259);
                    }

                    v226 = [v256 copy];
                    v223 = v306;
                    v224 = v293;
                  }
                }

                else
                {
                  v226 = MEMORY[0x277CBEBF8];
                }

                objc_autoreleasePoolPop(v224);

                v327 = 0u;
                v328 = 0u;
                v329 = 0u;
                v330 = 0u;
                v263 = v226;
                v264 = [v263 countByEnumeratingWithState:&v327 objects:v367 count:16];
                if (v264)
                {
                  v265 = v264;
                  v266 = *v328;
                  do
                  {
                    for (kk = 0; kk != v265; ++kk)
                    {
                      if (*v328 != v266)
                      {
                        objc_enumerationMutation(v263);
                      }

                      v268 = *(*(&v327 + 1) + 8 * kk);
                      v269 = *(v35 + 824);
                      interactionPhotoScene2 = [*(v7 + 840) interactionPhotoScene];
                      v271 = [v269 itemWithType:interactionPhotoScene2 stringValue:v268];

                      v272 = [[BMEvent alloc] initWithStartDate:startDate endDate:startDate2 item:v271];
                      [array addObject:v272];
                    }

                    v265 = [v263 countByEnumeratingWithState:&v327 objects:v367 count:16];
                  }

                  while (v265);
                }
              }

              typesCopy = v307;
              v28 = selfCopy;
              v176 = v310;
            }

            else
            {
              typesCopy = v307;
              v28 = selfCopy;
            }

            i = v302;
          }

          else
          {
            i = v302;
          }

          v6 = v298;
LABEL_199:

          objc_autoreleasePoolPop(v303);
        }

        v300 = [obj countByEnumeratingWithState:&v354 objects:v374 count:16];
        if (!v300)
        {
LABEL_201:

          v274 = [array copy];
          v33 = v278;
          goto LABEL_204;
        }
      }
    }

    v274 = 0;
LABEL_204:

    objc_autoreleasePoolPop(v6);
    if (error)
    {
      v276 = v280;
      *error = v280;
    }

    v275 = v274;
  }

  else
  {
    objc_autoreleasePoolPop(v6);
    v275 = MEMORY[0x277CBEBF8];
  }

  return v275;
}

- (void)interactionEventsForTypes:(void *)a3 error:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 error];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_241ACA000, a4, OS_LOG_TYPE_ERROR, "ContextKit topic extraction failed with error %@", a1, 0xCu);
}

@end