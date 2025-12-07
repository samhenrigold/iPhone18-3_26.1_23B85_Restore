@interface CPSAnalyticsLogger
+ (id)sharedLogger;
- (CPSAnalyticsLogger)initWithQueue:(id)queue;
- (void)_sendEventLazyWithName:(id)name clipBundleIdentifier:(id)identifier payload:(id)payload;
- (void)didCancelInterstitialForClip:(id)clip withEvent:(int64_t)event didShowCardInline:(BOOL)inline;
- (void)didDiscoverClip:(id)clip event:(id)event alreadyInstalled:(BOOL)installed;
- (void)didManuallyDeleteClip:(id)clip withEvent:(int64_t)event;
- (void)didPresentInvocationCardForClip:(id)clip adamID:(id)d sourceBundleIdentifier:(id)identifier referrerBundleIdentifier:(id)bundleIdentifier event:(id)event url:(id)url didShowCardInline:(BOOL)inline;
- (void)didUseClip:(id)clip atLatitude:(double)latitude longitude:(double)longitude;
- (void)recordClientClipRequestWithBundleID:(id)d launchReason:(id)reason;
- (void)recordClientMetadataRequestWithBundleID:(id)d launchReason:(id)reason;
- (void)recordDidActivateCardWithBundleID:(id)d launchReason:(id)reason deviceLocked:(BOOL)locked didShowCardInline:(BOOL)inline isOutOfBoxURL:(BOOL)l;
- (void)recordDidInstallWithBundleID:(id)d succeeded:(BOOL)succeeded;
- (void)recordDidOpenAppClipWithBundleID:(id)d launchReason:(id)reason didShowCard:(BOOL)card didOpenFullApp:(BOOL)app didInstallAppClip:(BOOL)clip isOutOfBoxURL:(BOOL)l;
- (void)recordDidShowErrorWithBundleID:(id)d place:(id)place errorCode:(int64_t)code;
- (void)recordDidShowLocationConsentWithBundleID:(id)d response:(unint64_t)response;
- (void)recordDidTapOpenButtonInCardWithBundleID:(id)d metadata:(id)metadata launchReason:(id)reason launchOptions:(id)options didShowCardInline:(BOOL)inline;
- (void)recordReportProblemStepCompletedWithBundleID:(id)d problemLabel:(id)label event:(int64_t)event;
@end

@implementation CPSAnalyticsLogger

+ (id)sharedLogger
{
  if (sharedLogger_once != -1)
  {
    +[CPSAnalyticsLogger sharedLogger];
  }

  v3 = sharedLogger_shared;

  return v3;
}

void __34__CPSAnalyticsLogger_sharedLogger__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("com.apple.ClipServices.Analytics", v0);

  v1 = [[CPSAnalyticsLogger alloc] initWithQueue:v3];
  v2 = sharedLogger_shared;
  sharedLogger_shared = v1;
}

- (CPSAnalyticsLogger)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CPSAnalyticsLogger;
  v6 = [(CPSAnalyticsLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsSynchronizationQueue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)didDiscoverClip:(id)clip event:(id)event alreadyInstalled:(BOOL)installed
{
  installedCopy = installed;
  v15[2] = *MEMORY[0x277D85DE8];
  if (event)
  {
    eventCopy = event;
  }

  else
  {
    eventCopy = &stru_28567C2A8;
  }

  v14[0] = @"launchReason";
  v14[1] = @"alreadyInstalled";
  v15[0] = eventCopy;
  v9 = MEMORY[0x277CCABB0];
  eventCopy2 = event;
  clipCopy = clip;
  v12 = [v9 numberWithBool:installedCopy];
  v15[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidDiscoverClip" clipBundleIdentifier:clipCopy payload:v13];
}

- (void)didPresentInvocationCardForClip:(id)clip adamID:(id)d sourceBundleIdentifier:(id)identifier referrerBundleIdentifier:(id)bundleIdentifier event:(id)event url:(id)url didShowCardInline:(BOOL)inline
{
  clipCopy = clip;
  dCopy = d;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  eventCopy = event;
  urlCopy = url;
  v21 = +[CPSUtilities deviceIsLocked];
  cps_fallbackBundleIdentifier = [urlCopy cps_fallbackBundleIdentifier];
  [(CPSAnalyticsLogger *)self recordDidActivateCardWithBundleID:clipCopy launchReason:eventCopy deviceLocked:v21 didShowCardInline:inline isOutOfBoxURL:cps_fallbackBundleIdentifier != 0];

  v23 = [clipCopy length];
  if (v23 && (v23 = [dCopy intValue], v23) && (v23 = objc_msgSend(eventCopy, "length")) != 0 && (objc_msgSend(urlCopy, "absoluteString"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "length"), v25, v26))
  {
    analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke;
    v29[3] = &unk_278DCF398;
    v30 = clipCopy;
    v31 = dCopy;
    v32 = bundleIdentifierCopy;
    v33 = identifierCopy;
    v34 = eventCopy;
    v35 = urlCopy;
    dispatch_async(analyticsSynchronizationQueue, v29);
  }

  else
  {
    v28 = CPS_LOG_CHANNEL_PREFIXClipServices(v23, v24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [CPSAnalyticsLogger didPresentInvocationCardForClip:v28 adamID:? sourceBundleIdentifier:? referrerBundleIdentifier:? event:? url:? didShowCardInline:?];
    }
  }
}

void __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke(uint64_t a1)
{
  v7 = [objc_alloc(MEMORY[0x277CEC370]) initWithClipBundleID:*(a1 + 32)];
  [v7 setItemID:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (!v2)
  {
    v2 = *(a1 + 56);
  }

  [v7 setReferralSourceBundleID:v2];
  v3 = *(a1 + 64);
  if (([*(a1 + 64) isEqualToString:@"Safari"] & 1) != 0 || objc_msgSend(*(a1 + 64), "isEqualToString:", @"InApp"))
  {
    v4 = CPSSessionLaunchReasonAnalyticsAppReferral;
    if (!*(a1 + 48))
    {
      v4 = CPSSessionLaunchReasonAnalyticsWebReferral;
    }

    v5 = *v4;

    v3 = v5;
  }

  [v7 setReferrerType:v3];
  [v7 setSourceURL:*(a1 + 72)];
  v6 = objc_alloc_init(MEMORY[0x277CEC378]);
  [v6 sendClipCardMetricsEvent:v7 completionHandler:&__block_literal_global_67];
}

void __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  if ((a2 & 1) == 0)
  {
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke_2_cold_1(v7, v6);
    }
  }
}

- (void)recordDidInstallWithBundleID:(id)d succeeded:(BOOL)succeeded
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__CPSAnalyticsLogger_recordDidInstallWithBundleID_succeeded___block_invoke;
  v5[3] = &unk_278DCF3C0;
  v5[4] = self;
  succeededCopy = succeeded;
  dispatch_async(analyticsSynchronizationQueue, v5);
}

void __61__CPSAnalyticsLogger_recordDidInstallWithBundleID_succeeded___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_72];
  [v2 setPredicate:v3];

  v4 = [v2 allObjects];
  v5 = [v4 count];

  v6 = *(a1 + 32);
  v10[0] = @"success";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v10[1] = @"totalClips";
  v11[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v6 _sendEventLazyWithName:@"com.apple.ClipServices.DidInstallClip" clipBundleIdentifier:0 payload:v9];
}

BOOL __61__CPSAnalyticsLogger_recordDidInstallWithBundleID_succeeded___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 appClipMetadata];
  v3 = v2 != 0;

  return v3;
}

- (void)didUseClip:(id)clip atLatitude:(double)latitude longitude:(double)longitude
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"latitude";
  v8 = MEMORY[0x277CCABB0];
  clipCopy = clip;
  v10 = [v8 numberWithDouble:latitude];
  v13[1] = @"longitude";
  v14[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
  v14[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidUseClipAtLocation" clipBundleIdentifier:clipCopy payload:v12];
}

- (void)didManuallyDeleteClip:(id)clip withEvent:(int64_t)event
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = @"delete specific clip";
  if (event != 1)
  {
    v5 = @"unspecified";
  }

  if (event == 2)
  {
    v5 = @"clear all clips";
  }

  v9 = @"event";
  v10[0] = v5;
  v6 = MEMORY[0x277CBEAC0];
  v7 = v5;
  v8 = [v6 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidManuallyDeleteClip" clipBundleIdentifier:0 payload:v8];
}

- (void)didCancelInterstitialForClip:(id)clip withEvent:(int64_t)event didShowCardInline:(BOOL)inline
{
  inlineCopy = inline;
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"event";
  if ((event - 1) > 2)
  {
    v7 = @"unspecified";
  }

  else
  {
    v7 = off_278DCF408[event - 1];
  }

  v13[0] = v7;
  v12[1] = @"didShowCardInline";
  v8 = MEMORY[0x277CCABB0];
  clipCopy = clip;
  v10 = [v8 numberWithBool:inlineCopy];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidCancelInterstitial" clipBundleIdentifier:clipCopy payload:v11];
}

- (void)recordClientClipRequestWithBundleID:(id)d launchReason:(id)reason
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"launchReason";
  v11[0] = reason;
  v6 = MEMORY[0x277CBEAC0];
  reasonCopy = reason;
  dCopy = d;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ClientDidRequestClip" clipBundleIdentifier:dCopy payload:v9];
}

- (void)recordClientMetadataRequestWithBundleID:(id)d launchReason:(id)reason
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"launchReason";
  v11[0] = reason;
  v6 = MEMORY[0x277CBEAC0];
  reasonCopy = reason;
  dCopy = d;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ClientDidRequestMetadata" clipBundleIdentifier:dCopy payload:v9];
}

- (void)recordDidActivateCardWithBundleID:(id)d launchReason:(id)reason deviceLocked:(BOOL)locked didShowCardInline:(BOOL)inline isOutOfBoxURL:(BOOL)l
{
  lCopy = l;
  inlineCopy = inline;
  lockedCopy = locked;
  v20[4] = *MEMORY[0x277D85DE8];
  v20[0] = reason;
  v19[0] = @"launchReason";
  v19[1] = @"deviceLocked";
  v12 = MEMORY[0x277CCABB0];
  reasonCopy = reason;
  dCopy = d;
  v15 = [v12 numberWithBool:lockedCopy];
  v20[1] = v15;
  v19[2] = @"didShowCardInline";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:inlineCopy];
  v20[2] = v16;
  v19[3] = @"isOutOfBoxURL";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:lCopy];
  v20[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidActivateCard" clipBundleIdentifier:dCopy payload:v18];
}

- (void)recordDidTapOpenButtonInCardWithBundleID:(id)d metadata:(id)metadata launchReason:(id)reason launchOptions:(id)options didShowCardInline:(BOOL)inline
{
  inlineCopy = inline;
  v25[4] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v25[0] = reason;
  v24[0] = @"launchReason";
  v24[1] = @"locationConfirmation";
  reasonCopy = reason;
  metadataCopy = metadata;
  dCopy = d;
  clipRequestsLocationConfirmationPermission = [metadataCopy clipRequestsLocationConfirmationPermission];
  if (clipRequestsLocationConfirmationPermission)
  {
    locationConfirmationGranted = [optionsCopy locationConfirmationGranted];
  }

  else
  {
    locationConfirmationGranted = 0;
  }

  v16 = stringForUserDecision(locationConfirmationGranted);
  v25[1] = v16;
  v24[2] = @"ephemeralNotification";
  clipRequestsNotificationPermission = [metadataCopy clipRequestsNotificationPermission];

  if (clipRequestsNotificationPermission)
  {
    userNotificationGranted = [optionsCopy userNotificationGranted];
  }

  else
  {
    userNotificationGranted = 0;
  }

  v19 = stringForUserDecision(userNotificationGranted);
  v25[2] = v19;
  v24[3] = @"didShowCardInline";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:inlineCopy];
  v25[3] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidTapOpenButtonInCard" clipBundleIdentifier:dCopy payload:v21];
  if (clipRequestsNotificationPermission)
  {
  }

  if (clipRequestsLocationConfirmationPermission)
  {
  }
}

- (void)recordDidShowErrorWithBundleID:(id)d place:(id)place errorCode:(int64_t)code
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"place";
  v13[1] = @"errorCode";
  v14[0] = place;
  v8 = MEMORY[0x277CCABB0];
  placeCopy = place;
  dCopy = d;
  v11 = [v8 numberWithInteger:code];
  v14[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidShowError" clipBundleIdentifier:dCopy payload:v12];
}

- (void)recordDidShowLocationConsentWithBundleID:(id)d response:(unint64_t)response
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"locationConfirmationResponse";
  if (response - 1 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_278DCF420[response - 1];
  }

  v10[0] = v5;
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v8 = [v6 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidShowLocationConsent" clipBundleIdentifier:dCopy payload:v8];
}

- (void)recordDidOpenAppClipWithBundleID:(id)d launchReason:(id)reason didShowCard:(BOOL)card didOpenFullApp:(BOOL)app didInstallAppClip:(BOOL)clip isOutOfBoxURL:(BOOL)l
{
  lCopy = l;
  clipCopy = clip;
  appCopy = app;
  cardCopy = card;
  v24[5] = *MEMORY[0x277D85DE8];
  reasonCopy = @"Other";
  if (reason)
  {
    reasonCopy = reason;
  }

  v24[0] = reasonCopy;
  v23[0] = @"launchReason";
  v23[1] = @"showedCard";
  v15 = MEMORY[0x277CCABB0];
  reasonCopy2 = reason;
  dCopy = d;
  v18 = [v15 numberWithBool:cardCopy];
  v24[1] = v18;
  v23[2] = @"openedFullApp";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:appCopy];
  v24[2] = v19;
  v23[3] = @"installedAppClip";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:clipCopy];
  v24[3] = v20;
  v23[4] = @"isOutOfBoxURL";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:lCopy];
  v24[4] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.DidOpenAppClip" clipBundleIdentifier:dCopy payload:v22];
}

- (void)recordReportProblemStepCompletedWithBundleID:(id)d problemLabel:(id)label event:(int64_t)event
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (label)
  {
    labelCopy = label;
  }

  else
  {
    labelCopy = @"null";
  }

  v13[0] = @"problemLabel";
  v13[1] = @"event";
  v14[0] = labelCopy;
  if (event > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_278DCF438[event];
  }

  v14[1] = v8;
  v9 = MEMORY[0x277CBEAC0];
  labelCopy2 = label;
  dCopy = d;
  v12 = [v9 dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(CPSAnalyticsLogger *)self _sendEventLazyWithName:@"com.apple.ClipServices.ReportProblemStepCompleted" clipBundleIdentifier:dCopy payload:v12];
}

- (void)_sendEventLazyWithName:(id)name clipBundleIdentifier:(id)identifier payload:(id)payload
{
  nameCopy = name;
  identifierCopy = identifier;
  payloadCopy = payload;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CPSAnalyticsLogger__sendEventLazyWithName_clipBundleIdentifier_payload___block_invoke;
  block[3] = &unk_278DCE110;
  v16 = nameCopy;
  v17 = identifierCopy;
  v18 = payloadCopy;
  v12 = payloadCopy;
  v13 = identifierCopy;
  v14 = nameCopy;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __74__CPSAnalyticsLogger__sendEventLazyWithName_clipBundleIdentifier_payload___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  AnalyticsSendEventLazy();
}

id __74__CPSAnalyticsLogger__sendEventLazyWithName_clipBundleIdentifier_payload___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = @"null";
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  v6 = @"clipBundleIdentifier";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v3 mutableCopy];

  if ([*(a1 + 40) count])
  {
    [v4 addEntriesFromDictionary:*(a1 + 40)];
  }

  return v4;
}

void __137__CPSAnalyticsLogger_didPresentInvocationCardForClip_adamID_sourceBundleIdentifier_referrerBundleIdentifier_event_url_didShowCardInline___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_2436ED000, v3, OS_LOG_TYPE_ERROR, "Unable to send app clip card metrics due to error %{public}@", &v5, 0xCu);
}

@end