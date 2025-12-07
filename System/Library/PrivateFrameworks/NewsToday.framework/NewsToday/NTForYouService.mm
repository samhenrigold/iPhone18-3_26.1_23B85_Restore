@interface NTForYouService
- (NTForYouService)initWithContentContext:(id)context;
- (void)fetchForYouWithRequest:(id)request configuration:(id)configuration fetchDate:(id)date completionHandler:(id)handler;
@end

@implementation NTForYouService

- (NTForYouService)initWithContentContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = NTForYouService;
  v6 = [(NTForYouService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, context);
  }

  return v7;
}

- (void)fetchForYouWithRequest:(id)request configuration:(id)configuration fetchDate:(id)date completionHandler:(id)handler
{
  requestCopy = request;
  configurationCopy = configuration;
  dateCopy = date;
  handlerCopy = handler;
  rankedSubscribedTagIDs = [requestCopy rankedSubscribedTagIDs];
  v15 = [rankedSubscribedTagIDs count];
  subscriptionsMinCount = [requestCopy subscriptionsMinCount];

  if (v15 >= subscriptionsMinCount)
  {
    contentContext = [(NTForYouService *)self contentContext];
    v20 = [MEMORY[0x277D30FE8] feedRequestContentEnvironmentTokenWithContext:?];
    contentContext2 = [(NTForYouService *)self contentContext];
    feedDatabase = [contentContext2 feedDatabase];
    version = [feedDatabase version];

    v24 = MEMORY[0x277CCACA8];
    throttlingIdentifier = [requestCopy throttlingIdentifier];
    v63 = v20;
    v26 = [v24 stringWithFormat:@"%@%@%@-%hu.plist", @"fy-fetchdate-", v20, throttlingIdentifier, version];

    contentContext3 = [(NTForYouService *)self contentContext];
    feedDatabase2 = [contentContext3 feedDatabase];
    parentDirectoryURL = [feedDatabase2 parentDirectoryURL];
    v30 = [parentDirectoryURL URLByAppendingPathComponent:v26];

    v61 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v30];
    v31 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v61 error:0];
    v60 = v31;
    if (v31)
    {
      [dateCopy timeIntervalSinceDate:v31];
      v33 = v32;
      [requestCopy minimumUpdateInterval];
      v55 = v34 >= v33;
    }

    else
    {
      v55 = 0;
    }

    v35 = handlerCopy;
    v36 = objc_alloc(MEMORY[0x277CBEB40]);
    rankedSubscribedTagIDs2 = [requestCopy rankedSubscribedTagIDs];
    v38 = [v36 initWithArray:rankedSubscribedTagIDs2];

    topStoriesChannelID = [requestCopy topStoriesChannelID];
    if (topStoriesChannelID)
    {
      [v38 removeObject:topStoriesChannelID];
    }

    v58 = topStoriesChannelID;
    v62 = v26;
    v40 = dateCopy;
    localNewsTagID = [requestCopy localNewsTagID];
    if (localNewsTagID)
    {
      [v38 insertObject:localNewsTagID atIndex:0];
    }

    v57 = localNewsTagID;
    v42 = configurationCopy;
    v54 = MEMORY[0x277D31080];
    v53 = [v38 set];
    mutedTagIDs = [requestCopy mutedTagIDs];
    purchasedTagIDs = [requestCopy purchasedTagIDs];
    [requestCopy bundleSubscriptionProvider];
    v45 = v64 = configurationCopy;
    v52 = FCCurrentQoS();
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_14;
    v65[3] = &unk_279983D00;
    v72 = v35;
    v66 = v40;
    v67 = requestCopy;
    v68 = v38;
    v69 = v42;
    v73 = v55;
    v70 = contentContext;
    v71 = v30;
    v56 = v30;
    v46 = contentContext;
    v47 = v42;
    v48 = v38;
    v49 = requestCopy;
    v50 = v35;
    LOBYTE(v51) = 0;
    [v54 fetchTagsForQueryingWithSubscribedTagIDs:v53 mutedTagIDs:mutedTagIDs purchasedTagIDs:purchasedTagIDs bundleSubscriptionProvider:v45 configuration:v47 contentContext:v46 fallbackToPresubscribedTagIDs:v51 qualityOfService:v52 completionHandler:v65];

    configurationCopy = v64;
    dateCopy = v40;

    v17 = v62;
    v18 = v63;
    v19 = v61;
  }

  else
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke;
    v74[3] = &unk_279983698;
    v75 = requestCopy;
    v76 = handlerCopy;
    v17 = requestCopy;
    v18 = handlerCopy;
    __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke(v74);

    v19 = v75;
  }
}

uint64_t __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = NTSharedLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) rankedSubscribedTagIDs];
    v4 = [v3 count];
    v5 = [*(a1 + 32) subscriptionsMinCount];
    v7 = 134218240;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_25BF21000, v2, OS_LOG_TYPE_DEFAULT, "Can't fetch For You because the number of subscriptions (%lu) is less than the minimum (%lu)", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v86[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_2;
    v68[3] = &unk_279983BF8;
    v70 = *(a1 + 80);
    v69 = v6;
    __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_2(v68);

    v7 = v70;
  }

  else
  {
    v47 = [objc_alloc(MEMORY[0x277D30F38]) initWithStartDate:*(a1 + 32) timeInterval:{-objc_msgSend(*(a1 + 40), "cutoffTime")}];
    v50 = [MEMORY[0x277D30FE0] feedRangeFromDateRange:?];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_3;
    aBlock[3] = &unk_279983C20;
    v67 = *(a1 + 40);
    v45 = v5;
    v46 = _Block_copy(aBlock);
    v8 = [v5 fc_dictionaryWithKeyBlock:&__block_literal_global_14];
    v9 = [*(a1 + 48) array];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_5;
    v64[3] = &unk_279983C68;
    v44 = v8;
    v65 = v44;
    v10 = [v9 fc_arrayByTransformingWithBlock:v64];

    v48 = MEMORY[0x277D31080];
    v11 = [*(a1 + 40) hiddenFeedIDs];
    v12 = [v11 allObjects];
    v13 = [*(a1 + 40) allowPaidBundleFeed];
    v14 = [*(a1 + 40) purchasedTagIDs];
    v15 = [*(a1 + 40) bundleSubscriptionProvider];
    v16 = *(a1 + 56);
    v17 = [*(a1 + 40) headlinesPerFeedFetchCount];
    v18 = [*(a1 + 64) pptContext];
    LOBYTE(v40) = [v18 isRunningPPT];
    v39 = v16;
    v19 = v46;
    v43 = v10;
    v20 = [v48 feedRequestsForTags:v10 tagBinProvider:v46 hiddenFeedIDs:v12 allowPaidBundleFeed:v13 purchasedTagIDs:v14 bundleSubscriptionProvider:v15 configuration:v39 maxCount:v17 feedRange:v50 sidecar:0 isRunningPPT:v40];

    v21 = [v20 channelDefaultSectionRequests];
    v86[0] = v21;
    v22 = [v20 topicRequests];
    v86[1] = v22;
    v23 = [v20 paidBundleRequests];
    v86[2] = v23;
    v24 = [v20 hiddenFeedRequests];
    v86[3] = v24;
    v25 = [v20 channelOtherSectionsRequests];
    v86[4] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:5];
    v27 = [v26 fc_arrayByFlattening];

    v49 = v27;
    if ([v27 count])
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_6;
      v61[3] = &unk_279983388;
      v62 = *(a1 + 40);
      v63 = v27;
      v28 = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_6(v61);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v57 objects:v85 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v58;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v58 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(&v57 + 1) + 8 * i) setCachedOnly:*(a1 + 88)];
          }

          v30 = [v28 countByEnumeratingWithState:&v57 objects:v85 count:16];
        }

        while (v30);
      }

      v33 = objc_alloc_init(MEMORY[0x277D30FE8]);
      [v33 setContext:*(a1 + 64)];
      [v33 setConfiguration:*(a1 + 56)];
      [v33 setFeedRequests:v28];
      [v33 setMaxCount:{objc_msgSend(*(a1 + 40), "feedItemMaxCount")}];
      [v33 setOptions:1];
      v34 = NTSharedLog([v33 setExpectedNetworkEventCount:1]);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v33 shortOperationDescription];
        v42 = [*(a1 + 40) headlinesPerFeedFetchCount];
        v41 = [*(a1 + 40) feedItemMaxCount];
        [*(a1 + 40) fetchingBin];
        v36 = FCStringFromFeedBin();
        if (*(a1 + 88))
        {
          v37 = @"YES";
        }

        else
        {
          v37 = @"NO";
        }

        v38 = [v28 fc_arrayByTransformingWithBlock:&__block_literal_global_30];
        *buf = 138544898;
        v72 = v35;
        v73 = 2114;
        v74 = v47;
        v75 = 2048;
        v76 = v42;
        v77 = 2048;
        v78 = v41;
        v79 = 2114;
        v80 = v36;
        v81 = 2114;
        v82 = v37;
        v19 = v46;
        v83 = 2114;
        v84 = v38;
        _os_log_impl(&dword_25BF21000, v34, OS_LOG_TYPE_DEFAULT, "Will issue For You request with operation=%{public}@, range=%{public}@, maxItemsPerFeed=%lu, maxItemsTotal=%lu, bin=%{public}@, cachedOnly=%{public}@, feedIDs=%{public}@", buf, 0x48u);
      }

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_31;
      v51[3] = &unk_279983CD8;
      v55 = *(a1 + 80);
      v56 = *(a1 + 88);
      v52 = *(a1 + 32);
      v53 = *(a1 + 72);
      v54 = v20;
      [v33 setRequestCompletionHandlerWithHeldRecords:v51];
      [v33 start];
    }

    else
    {
      (*(*(a1 + 80) + 16))();
    }

    v6 = 0;
    v5 = v45;
    v7 = v47;
  }
}

id __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_6(uint64_t a1)
{
  if ([*(a1 + 32) feedMaxCount])
  {
    v2 = [*(a1 + 40) fc_subarrayWithMaxCount:{objc_msgSend(*(a1 + 32), "feedMaxCount")}];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_7;
    v4[3] = &unk_279983C90;
    v5 = *(a1 + 40);
    v2 = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_7(v4);
  }

  return v2;
}

void __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_31(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_2_32;
    v16[3] = &unk_279983BF8;
    v18 = *(a1 + 56);
    v17 = v12;
    __84__NTForYouService_fetchForYouWithRequest_configuration_fetchDate_completionHandler___block_invoke_2_32(v16);
  }

  else
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
      [v13 writeToURL:*(a1 + 40) atomically:1];
    }

    v14 = *(a1 + 56);
    v15 = [*(a1 + 48) feedContextByFeedID];
    (*(v14 + 16))(v14, v10, v15, *(a1 + 64), 0);
  }
}

@end