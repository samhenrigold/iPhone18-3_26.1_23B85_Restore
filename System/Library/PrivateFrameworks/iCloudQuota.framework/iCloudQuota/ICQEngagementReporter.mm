@interface ICQEngagementReporter
+ (id)_createOpportunityBubbleFrom:(id)from bundleID:(id)d;
+ (id)_eventNameForEngagementType:(int64_t)type;
+ (id)_placementDictionary;
+ (void)_sendBubbleDisplayedEventFor:(id)for;
+ (void)_sendImpressionEventWithName:(id)name bundleID:(id)d;
+ (void)_sendSubscriptionChangedEvent;
+ (void)fetchBubbleContentWithBundleID:(id)d completion:(id)completion;
+ (void)sendEventFor:(int64_t)for withBundleID:(id)d link:(id)link;
+ (void)shouldShowOpportunityBubbleWithBundleID:(id)d completion:(id)completion;
@end

@implementation ICQEngagementReporter

+ (void)sendEventFor:(int64_t)for withBundleID:(id)d link:(id)link
{
  v12 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  v8 = [self _eventNameForEngagementType:for];
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Sending AMSMetricEvent for %@", &v10, 0xCu);
  }

  if (for == 2)
  {
    [self _sendBubbleDisplayedEventFor:linkCopy];
  }

  else if (for == 3)
  {
    [self _sendSubscriptionChangedEvent];
  }
}

+ (void)_sendImpressionEventWithName:(id)name bundleID:(id)d
{
  v22[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dCopy = d;
  v7 = dCopy;
  v8 = @"com.apple.iCloudQuotaUI";
  if (dCopy)
  {
    v8 = dCopy;
  }

  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277CEE5A8]);
  v21[0] = @"eventType";
  v21[1] = @"bundleId";
  v22[0] = nameCopy;
  v22[1] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v12 = [v10 initWithUnderlyingDictionary:v11];

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v7;
    _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Sending AMS metricEvent to start on-device journey with bundleID %@", &v19, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x277CEE498]);
  underlyingDictionary = [v12 underlyingDictionary];
  v16 = [v14 enqueueData:underlyingDictionary];

  v17 = _ICQGetLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    underlyingDictionary2 = [v12 underlyingDictionary];
    v19 = 138412290;
    v20 = underlyingDictionary2;
    _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent to AMSEngagement: %@", &v19, 0xCu);
  }
}

+ (void)shouldShowOpportunityBubbleWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CEE498]);
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"photosLibraryFooter", @"homeDashboardHeader", 0}];
  v10 = [objc_alloc(MEMORY[0x277CEE4A8]) initWithServiceType:@"iCloudQuotaUI" placements:v9];
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Enqueueing a messageEvent to amsengagementd to determine if we should show OpportunityBubble.", buf, 2u);
  }

  v12 = [v8 enqueueMessageEvent:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__ICQEngagementReporter_shouldShowOpportunityBubbleWithBundleID_completion___block_invoke;
  v17[3] = &unk_27A652A48;
  v21 = completionCopy;
  selfCopy = self;
  v18 = v9;
  v19 = dCopy;
  v20 = v8;
  v13 = v8;
  v14 = dCopy;
  v15 = v9;
  v16 = completionCopy;
  [v12 addFinishBlock:v17];
}

void __76__ICQEngagementReporter_shouldShowOpportunityBubbleWithBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__ICQEngagementReporter_shouldShowOpportunityBubbleWithBundleID_completion___block_invoke_cold_1(v5, v6);
    }

    goto LABEL_4;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [a2 messageActions];
  v33 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v33)
  {
    v7 = *v41;
    v35 = v6;
    v32 = *v41;
    do
    {
      v8 = 0;
      do
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v34 = v8;
        v9 = *(*(&v40 + 1) + 8 * v8);
        v10 = _ICQGetLogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Received response from amsngagementd.", buf, 2u);
        }

        v11 = [v9 placements];
        v12 = _ICQGetLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v11;
          _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "AMSEngagementMessageRequests: %@", buf, 0xCu);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v13 = *(a1 + 32);
        v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (!v14)
        {
          goto LABEL_22;
        }

        v15 = v14;
        v16 = *v37;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v36 + 1) + 8 * i);
            v19 = objc_msgSend_objectForKeyedSubscript_(v11);
            v20 = [*(a1 + 64) _placementDictionary];
            v21 = objc_msgSend_objectForKeyedSubscript_(v20);
            LODWORD(v18) = [v18 isEqualToString:v21];

            if (v18)
            {
              v22 = _ICQGetLogSystem();
              v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              if (v19)
              {
                v5 = 0;
                if (v23)
                {
                  *buf = 0;
                  v24 = "ICQTileView should be shown.";
                  goto LABEL_30;
                }
              }

              else
              {
                v5 = 0;
                if (v23)
                {
                  *buf = 0;
                  v24 = "ICQTileView shouldn't be shown.";
LABEL_30:
                  _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
                }
              }

              v25 = _ICQGetLogSystem();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v19 metricsEvent];
                v27 = [v26 underlyingDictionary];
                *buf = 138412290;
                v46 = v27;
                _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent from AMSEngagementMessageRequest to AMSEngagement: %@", buf, 0xCu);
              }

              v28 = *(a1 + 48);
              v29 = [v19 metricsEvent];
              v30 = [v29 underlyingDictionary];
              v31 = [v28 enqueueData:v30];

              (*(*(a1 + 56) + 16))();
              goto LABEL_34;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

LABEL_22:

        v8 = v34 + 1;
        v6 = v35;
        v5 = 0;
        v7 = v32;
      }

      while (v34 + 1 != v33);
      v33 = [v35 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v33);
  }

LABEL_4:

  (*(*(a1 + 56) + 16))();
LABEL_34:
}

+ (void)fetchBubbleContentWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277CEE498]);
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"photosLibraryFooter", @"homeDashboardHeader", 0}];
  v10 = [objc_alloc(MEMORY[0x277CEE4A8]) initWithServiceType:@"iCloudQuotaUI" placements:v9];
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Enqueueing a messageEvent to amsengagementd to pull bubble content from Mercury.", buf, 2u);
  }

  v12 = [v8 enqueueMessageEvent:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__ICQEngagementReporter_fetchBubbleContentWithBundleID_completion___block_invoke;
  v17[3] = &unk_27A652A70;
  v21 = completionCopy;
  selfCopy = self;
  v18 = v9;
  v19 = dCopy;
  v20 = v8;
  v13 = v8;
  v14 = completionCopy;
  v15 = dCopy;
  v16 = v9;
  [v12 addFinishBlock:v17];
}

void __67__ICQEngagementReporter_fetchBubbleContentWithBundleID_completion___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [a2 messageActions];
  v29 = [v3 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v29)
  {
    v4 = *v38;
    v31 = v3;
    v28 = *v38;
    do
    {
      v5 = 0;
      do
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v30 = v5;
        v6 = *(*(&v37 + 1) + 8 * v5);
        v7 = _ICQGetLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Received response from amsngagementd for bubble content.", buf, 2u);
        }

        v8 = [v6 placements];
        v9 = _ICQGetLogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v8;
          _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "AMSEngagementMessageRequests for bubble content: %@", buf, 0xCu);
        }

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = *(a1 + 32);
        v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v34 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v33 + 1) + 8 * i);
              v15 = objc_msgSend_objectForKeyedSubscript_(v8);
              v16 = [v15 makeDialogRequest];
              v17 = [*(a1 + 64) _placementDictionary];
              v18 = objc_msgSend_objectForKeyedSubscript_(v17);
              LODWORD(v14) = [v14 isEqualToString:v18];

              if (v14)
              {
                v19 = *(a1 + 56);
                v20 = [*(a1 + 64) _createOpportunityBubbleFrom:v16 bundleID:*(a1 + 40)];
                (*(v19 + 16))(v19, v20, 0);

                v21 = *(a1 + 48);
                v22 = [v16 metricsEvent];
                v23 = [v22 underlyingDictionary];
                v24 = [v21 enqueueData:v23];

                v25 = _ICQGetLogSystem();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = [v16 metricsEvent];
                  v27 = [v26 underlyingDictionary];
                  *buf = 138412290;
                  v43 = v27;
                  _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent from AMSDialogRequest to AMSEngagement after pulling for bubble content: %@", buf, 0xCu);
                }

                return;
              }
            }

            v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v5 = v30 + 1;
        v3 = v31;
        v4 = v28;
      }

      while (v30 + 1 != v29);
      v29 = [v31 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v29);
  }

  (*(*(a1 + 56) + 16))();
}

+ (id)_createOpportunityBubbleFrom:(id)from bundleID:(id)d
{
  v57[2] = *MEMORY[0x277D85DE8];
  v56[1] = @"opportunityBubbleDetails";
  v57[0] = d;
  v56[0] = @"appId";
  v54[0] = @"title";
  dCopy = d;
  fromCopy = from;
  title = [fromCopy title];
  v55[0] = title;
  v54[1] = @"message";
  message = [fromCopy message];
  v55[1] = message;
  v54[2] = @"imageDetails";
  v52[0] = @"3x";
  iconURL = [fromCopy iconURL];
  v53[0] = iconURL;
  v52[1] = @"2x";
  iconURL2 = [fromCopy iconURL];
  v53[1] = iconURL2;
  v52[2] = @"1x";
  iconURL3 = [fromCopy iconURL];
  v53[2] = iconURL3;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3];
  v55[2] = v36;
  v54[3] = @"actions";
  v49[0] = @"btnId";
  buttonActions = [fromCopy buttonActions];
  v34 = [buttonActions objectAtIndexedSubscript:0];
  identifier = [v34 identifier];
  v50[0] = identifier;
  v49[1] = @"btnTitle";
  buttonActions2 = [fromCopy buttonActions];
  v31 = [buttonActions2 objectAtIndexedSubscript:0];
  title2 = [v31 title];
  v50[1] = title2;
  v50[2] = @"LAUNCH_REMOTE_UI";
  v49[2] = @"btnAction";
  v49[3] = @"btnActParams";
  v47 = @"openUrl";
  buttonActions3 = [fromCopy buttonActions];
  v28 = [buttonActions3 objectAtIndexedSubscript:0];
  deepLink = [v28 deepLink];
  absoluteString = [deepLink absoluteString];
  v48 = absoluteString;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v50[3] = v25;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
  v51[0] = v24;
  v45[0] = @"btnId";
  buttonActions4 = [fromCopy buttonActions];
  v22 = [buttonActions4 objectAtIndexedSubscript:1];
  identifier2 = [v22 identifier];
  v46[0] = identifier2;
  v45[1] = @"btnTitle";
  buttonActions5 = [fromCopy buttonActions];
  v19 = [buttonActions5 objectAtIndexedSubscript:1];
  title3 = [v19 title];
  v46[1] = title3;
  v46[2] = @"HTTP_CALL";
  v45[2] = @"btnAction";
  v45[3] = @"btnActParams";
  v43 = @"openUrl";
  buttonActions6 = [fromCopy buttonActions];

  v8 = [buttonActions6 objectAtIndexedSubscript:1];
  deepLink2 = [v8 deepLink];
  absoluteString2 = [deepLink2 absoluteString];
  v44 = absoluteString2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v46[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
  v51[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v55[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
  v57[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];

  v16 = [ICQOpportunityBubbleSpecification alloc];
  v17 = [(ICQOpportunityBubbleSpecification *)v16 initWithOpportunityBubble:v15 andOpportunitySheet:0];

  return v17;
}

+ (void)_sendBubbleDisplayedEventFor:(id)for
{
  v3 = objc_alloc_init(MEMORY[0x277CEE498]);
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"photosLibraryFooter", @"homeDashboardHeader", 0}];
  v5 = [objc_alloc(MEMORY[0x277CEE4A8]) initWithServiceType:@"iCloudQuotaUI" placements:v4];
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Enqueueing a messageEvent to amsengagementd to send impression event.", buf, 2u);
  }

  v7 = [v3 enqueueMessageEvent:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ICQEngagementReporter__sendBubbleDisplayedEventFor___block_invoke;
  v10[3] = &unk_27A652A98;
  v11 = v4;
  v12 = v3;
  v8 = v3;
  v9 = v4;
  [v7 addFinishBlock:v10];
}

void __54__ICQEngagementReporter__sendBubbleDisplayedEventFor___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [a2 messageActions];
  v23 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v23)
  {
    v22 = *v31;
    do
    {
      v2 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v30 + 1) + 8 * v2);
        v4 = _ICQGetLogSystem();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Received response from amsngagementd.", buf, 2u);
        }

        v24 = v2;

        v5 = [v3 placements];
        v6 = _ICQGetLogSystem();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v5;
          _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "AMSEngagementMessageRequests: %@", buf, 0xCu);
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = *(a1 + 32);
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = objc_msgSend_objectForKeyedSubscript_(v5);
              v13 = [v12 makeDialogRequest];
              v14 = *(a1 + 40);
              v15 = [v13 metricsEvent];
              v16 = [v15 underlyingDictionary];
              v17 = [v14 enqueueData:v16];

              v18 = _ICQGetLogSystem();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [v13 metricsEvent];
                v20 = [v19 underlyingDictionary];
                *buf = 138412290;
                v36 = v20;
                _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent from AMSDialogRequest to AMSEngagement: %@", buf, 0xCu);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v9);
        }

        v2 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v23);
  }
}

+ (void)_sendSubscriptionChangedEvent
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__7;
  v16[4] = __Block_byref_object_dispose__7;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__7;
  v14[4] = __Block_byref_object_dispose__7;
  v15 = 0;
  v3 = dispatch_group_create();
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Requesting current storage level", buf, 2u);
  }

  dispatch_group_enter(v3);
  v5 = +[ICQOfferManager sharedOfferManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__ICQEngagementReporter__sendSubscriptionChangedEvent__block_invoke;
  v9[3] = &unk_27A652AC0;
  v11 = v16;
  v12 = v14;
  v6 = v3;
  v10 = v6;
  [v5 getPremiumOfferWithCompletion:v9];

  v7 = dispatch_get_global_queue(33, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ICQEngagementReporter__sendSubscriptionChangedEvent__block_invoke_79;
  v8[3] = &unk_27A652AE8;
  v8[5] = v14;
  v8[6] = self;
  v8[4] = v16;
  dispatch_group_notify(v6, v7, v8);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void __54__ICQEngagementReporter__sendSubscriptionChangedEvent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 commerceQuotaInfo];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v5 bundleQuotaInfo];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(*(a1 + 40) + 8) + 40);
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v19 = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v16 = "Current iCloudStorageLevel: %@ appleOneStorageLevel %@";
      v17 = v13;
      v18 = 22;
LABEL_6:
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, v16, &v19, v18);
    }
  }

  else
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      v16 = "No premium offer return with error: %@";
      v17 = v13;
      v18 = 12;
      goto LABEL_6;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __54__ICQEngagementReporter__sendSubscriptionChangedEvent__block_invoke_79(uint64_t a1)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 48) _eventNameForEngagementType:3];
  v16[0] = @"eventType";
  v16[1] = @"bundleId";
  v17[0] = v2;
  v17[1] = @"com.apple.iCloudQuotaUI";
  v16[2] = @"newiCloudStoragePlan";
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = v4;
  v16[3] = @"newAppleOneStoragePlan";
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v17[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v5)
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = [objc_alloc(MEMORY[0x277CEE5A8]) initWithUnderlyingDictionary:v7];
  v9 = objc_alloc_init(MEMORY[0x277CEE498]);
  v10 = [v8 underlyingDictionary];
  v11 = [v9 enqueueData:v10];

  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 underlyingDictionary];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Enqueued metricEvent to AMSEngagement: %@", &v14, 0xCu);
  }
}

+ (id)_eventNameForEngagementType:(int64_t)type
{
  if (type > 3)
  {
    return @"iCloudQuota:dismissal";
  }

  else
  {
    return off_27A652B08[type];
  }
}

+ (id)_placementDictionary
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.mobileslideshow";
  v4[1] = @"com.apple.Home";
  v5[0] = @"photosLibraryFooter";
  v5[1] = @"homeDashboardHeader";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void __76__ICQEngagementReporter_shouldShowOpportunityBubbleWithBundleID_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Received error from amsngagementd %@", &v4, 0xCu);
}

@end