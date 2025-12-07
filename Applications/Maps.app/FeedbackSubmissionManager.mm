@interface FeedbackSubmissionManager
- (FeedbackSubmissionManager)init;
- (id)_feedbackUploaderForUploadPolicy:(int64_t)policy;
- (id)observers;
- (void)_logDiscardIfNeededForFeedback:(id)feedback userInfo:(id)info feedbackObjectToUpdate:(id)update;
- (void)_recordRAPSubmissionID:(id)d;
- (void)_sendTdmFraudNotificationWithFraudReportResponse:(id)response tdmRequestInfo:(id)info;
- (void)_startFraudScoreExchangeIfNeededWithResponse:(id)response request:(id)request;
- (void)_submitOrEnqueueFeedback:(id)feedback attachedImages:(id)images resolvedUserInfo:(id)info traits:(id)traits debugSettings:(id)settings uploadPolicy:(int64_t)policy feedbackObjectToUpdate:(id)update completion:(id)self0;
- (void)_submitOrEnqueueFeedback:(id)feedback resolvedUserInfo:(id)info traits:(id)traits debugSettings:(id)settings uploadPolicy:(int64_t)policy feedbackObjectToUpdate:(id)update completion:(id)completion;
- (void)_updateSpamStatusWithResponse:(id)response request:(id)request;
- (void)_updateUserInfo:(id)info requestParameters:(id)parameters completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)finishedCorrectionsUploadWithResponse:(id)response request:(id)request error:(id)error;
- (void)finishedUploadingImagesWithImageUpdate:(id)update correctionsRequest:(id)request completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)submitOrEnqueueFeedback:(id)feedback attachedImages:(id)images userInfo:(id)info traits:(id)traits debugSettings:(id)settings uploadPolicy:(int64_t)policy feedbackObjectToUpdate:(id)update completion:(id)self0;
- (void)submitOrEnqueueFeedback:(id)feedback userInfo:(id)info traits:(id)traits debugSettings:(id)settings uploadPolicy:(int64_t)policy feedbackObjectToUpdate:(id)update completion:(id)completion;
@end

@implementation FeedbackSubmissionManager

- (FeedbackSubmissionManager)init
{
  v12.receiver = self;
  v12.super_class = FeedbackSubmissionManager;
  v2 = [(FeedbackSubmissionManager *)&v12 init];
  if (v2)
  {
    v3 = [[InteractiveFeedbackUploader alloc] initWithUploadStepObserver:v2];
    interactiveFeedbackUploader = v2->_interactiveFeedbackUploader;
    v2->_interactiveFeedbackUploader = v3;

    v5 = [[BackgroundFeedbackUploader alloc] initWithUploadStepObserver:v2];
    backgroundFeedbackUploader = v2->_backgroundFeedbackUploader;
    v2->_backgroundFeedbackUploader = v5;

    v7 = objc_alloc_init(FeedbackSubmissionPostActionManager);
    feedbackSubmissionPostActionManager = v2->_feedbackSubmissionPostActionManager;
    v2->_feedbackSubmissionPostActionManager = v7;

    v9 = sub_10002E924();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Initializing FeedbackSubmissionManager...", v11, 2u);
    }
  }

  return v2;
}

- (id)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___FeedbackSubmissionManagerObserver queue:&_dispatch_main_q];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(FeedbackSubmissionManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(FeedbackSubmissionManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)_recordRAPSubmissionID:(id)d
{
  if (d)
  {
    dCopy = d;
    v14 = +[NSUserDefaults standardUserDefaults];
    v4 = [v14 mutableArrayValueForKey:@"RAPPreviouslySubmittedProblemIDs"];
    [v4 insertObject:dCopy atIndex:0];
    v5 = [v14 mutableArrayValueForKey:@"RAPPreviouslySubmittedProblemURLs"];
    v6 = GEOURLString();
    v7 = [NSURL URLWithString:v6];

    host = [v7 host];
    v9 = [host stringByReplacingOccurrencesOfString:@"sundew" withString:@"bluegrass"];
    v10 = [v9 stringByReplacingOccurrencesOfString:@"ls" withString:@"geo"];
    dCopy = [NSString stringWithFormat:@"https://%@/raps/%@", v10, dCopy];
    [v5 insertObject:dCopy atIndex:0];
    [v4 trimToLength:5];
    [v5 trimToLength:5];
    [v14 setObject:dCopy forKey:@"RAPLastSubmittedProblemID"];

    v12 = [NSArray arrayWithArray:v5];
    [v14 setObject:v12 forKey:@"RAPPreviouslySubmittedProblemURLs"];

    v13 = [NSArray arrayWithArray:v4];
    [v14 setObject:v13 forKey:@"RAPPreviouslySubmittedProblemIDs"];

    [v14 synchronize];
  }
}

- (void)_updateSpamStatusWithResponse:(id)response request:(id)request
{
  requestCopy = request;
  feedbackResult = [response feedbackResult];
  submissionResult = [feedbackResult submissionResult];
  tdmFraudRequestInfo = [submissionResult tdmFraudRequestInfo];

  if ([tdmFraudRequestInfo hasTdmUserMapsStatus] && objc_msgSend(requestCopy, "feedbackRequestType") == 1)
  {
    isPOIEnrichment = [requestCopy isPOIEnrichment];
    v9 = +[_TtC4Maps30ServerEvaluationStatusMapsSync shared];
    tdmUserMapsStatus = [tdmFraudRequestInfo tdmUserMapsStatus];
    isBlocked = [tdmUserMapsStatus isBlocked];
    tdmUserMapsStatus2 = [tdmFraudRequestInfo tdmUserMapsStatus];
    isTrusted = [tdmUserMapsStatus2 isTrusted];
    if (isPOIEnrichment)
    {
      [v9 setARPStatusWithIsBlocked:isBlocked isTrusted:isTrusted completion:0];
    }

    else
    {
      [v9 setRAPStatusWithIsBlocked:isBlocked isTrusted:isTrusted completion:0];
    }
  }
}

- (void)_sendTdmFraudNotificationWithFraudReportResponse:(id)response tdmRequestInfo:(id)info
{
  infoCopy = info;
  responseCopy = response;
  v7 = +[MKMapService sharedService];
  defaultTraits = [v7 defaultTraits];

  v9 = objc_alloc_init(GEORPTdmFraudNotificationParameters);
  anonymousId = [infoCopy anonymousId];
  [v9 setAnonymousId:anonymousId];

  nameSpace = [responseCopy nameSpace];
  [v9 setTdmNamespace:nameSpace];

  finalizedElement = [responseCopy finalizedElement];
  [v9 setToken:finalizedElement];

  reportedScore = [responseCopy reportedScore];
  newScore = [responseCopy newScore];

  v15 = [NSString stringWithFormat:@"rs=%ldns=%ld", reportedScore, newScore];;
  [v9 setFsrData:v15];

  transactionId = [infoCopy transactionId];

  [v9 setTransactionId:transactionId];
  v17 = objc_alloc_init(GEORPFeedbackRequestParameters);
  [v17 setTdmFraudNotificationParameters:v9];
  v18 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v17 userInfo:0 traits:defaultTraits debugSettings:0];
  v19 = sub_10002E924();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Send TDM Fraud Notification... requestParams: %@", buf, 0xCu);
  }

  v20 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:v18 traits:defaultTraits];
  [v20 submitWithHandler:&stru_101636C28 networkActivity:0];
}

- (void)_startFraudScoreExchangeIfNeededWithResponse:(id)response request:(id)request
{
  responseCopy = response;
  requestCopy = request;
  if ((MapsFeature_IsEnabled_RAPCommunityID() & 1) != 0 || MapsFeature_IsEnabled_ARPCommunityID())
  {
    feedbackResult = [responseCopy feedbackResult];
    submissionResult = [feedbackResult submissionResult];
    tdmFraudRequestInfo = [submissionResult tdmFraudRequestInfo];

    v11 = sub_10002E924();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = tdmFraudRequestInfo;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "tdmFraudRequestInfo in FeedbackResponse: %@", buf, 0xCu);
    }

    if (tdmFraudRequestInfo)
    {
      v12 = sub_10002E924();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Start Fraud Score Exchange Flow...", buf, 2u);
      }

      [(FeedbackSubmissionManager *)self _updateSpamStatusWithResponse:responseCopy request:requestCopy];
      v13 = +[GEOUserAccountInfo primaryICloudAccount];
      v14 = [AMSFraudReportOptions alloc];
      transactionId = [tdmFraudRequestInfo transactionId];
      tdmNamespace = [tdmFraudRequestInfo tdmNamespace];
      fsrData = [tdmFraudRequestInfo fsrData];
      v18 = [v14 initWithTransactionIdentifier:transactionId nameSpace:tdmNamespace fsrData:fsrData];

      [v18 setAccount:v13];
      keyId = [tdmFraudRequestInfo keyId];
      [v18 setKeyIdentifier:keyId];

      v20 = [AMSFraudReportTask performFraudReportRefreshWithOptions:v18];
      v21 = sub_10002E924();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Send a request to get Fraud Report...", buf, 2u);
      }

      objc_initWeak(buf, self);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100AA988C;
      v22[3] = &unk_101636BE8;
      objc_copyWeak(&v24, buf);
      v23 = tdmFraudRequestInfo;
      [v20 resultWithCompletion:v22];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

- (void)finishedCorrectionsUploadWithResponse:(id)response request:(id)request error:(id)error
{
  responseCopy = response;
  requestCopy = request;
  errorCopy = error;
  if (!errorCopy)
  {
    feedbackResult = [responseCopy feedbackResult];
    submissionResult = [feedbackResult submissionResult];
    feedbackId = [submissionResult feedbackId];

    v14 = sub_10002E924();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = feedbackId;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Received a GEORPFeedbackResponse object feedback id %@", &v27, 0xCu);
    }

    feedbackResult2 = [responseCopy feedbackResult];
    submissionResult2 = [feedbackResult2 submissionResult];
    feedbackId2 = [submissionResult2 feedbackId];
    [(FeedbackSubmissionManager *)self _recordRAPSubmissionID:feedbackId2];

    [(FeedbackSubmissionPostActionManager *)self->_feedbackSubmissionPostActionManager performActionWithFeedbackResponse:responseCopy feedbackRequest:requestCopy];
    feedbackRequestParameters = [requestCopy feedbackRequestParameters];
    submissionParameters = [feedbackRequestParameters submissionParameters];
    details = [submissionParameters details];
    poiEnrichmentUpdate = [details poiEnrichmentUpdate];

    placeContext = [poiEnrichmentUpdate placeContext];
    if (placeContext)
    {
      v23 = placeContext;
      placeContext2 = [poiEnrichmentUpdate placeContext];
      muid = [placeContext2 muid];

      if (muid)
      {
        [(GEOObserverHashTable *)self->_observers feedbackSubmissionManagerCompletedSubmissionWithMUID:muid withError:0];
      }
    }

    [(FeedbackSubmissionManager *)self _startFraudScoreExchangeIfNeededWithResponse:responseCopy request:requestCopy];
  }

  if ([responseCopy attestationNotFound])
  {
    v26 = sub_10002171C();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Received a GEORPFeedbackResponse with attestationNotFound", &v27, 2u);
    }

    [(GEOObserverHashTable *)self->_observers submissionDidFailAttestation];
  }
}

- (void)finishedUploadingImagesWithImageUpdate:(id)update correctionsRequest:(id)request completion:(id)completion
{
  updateCopy = update;
  requestCopy = request;
  completionCopy = completion;
  feedbackRequestParameters = [requestCopy feedbackRequestParameters];
  submissionParameters = [feedbackRequestParameters submissionParameters];
  isPOIEnrichment = [submissionParameters isPOIEnrichment];

  if (isPOIEnrichment)
  {
    feedbackRequestParameters2 = [requestCopy feedbackRequestParameters];
    submissionParameters2 = [feedbackRequestParameters2 submissionParameters];
    [submissionParameters2 updatePOIEnrichmentWithCloudKitReceipts:updateCopy];
  }

  completionCopy[2](completionCopy, requestCopy);
}

- (id)_feedbackUploaderForUploadPolicy:(int64_t)policy
{
  if (policy)
  {
    if (policy != 1)
    {
      goto LABEL_6;
    }

    v4 = 24;
  }

  else
  {
    v4 = 16;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (void)_logDiscardIfNeededForFeedback:(id)feedback userInfo:(id)info feedbackObjectToUpdate:(id)update
{
  feedbackCopy = feedback;
  updateCopy = update;
  if ([info hasUserCredentials] && objc_msgSend(feedbackCopy, "hasSubmissionParameters"))
  {
    submissionParameters = [feedbackCopy submissionParameters];
    [submissionParameters logDiscardTriggerType];

    v9 = sub_10002E924();
    submissionParameters2 = [feedbackCopy submissionParameters];
    clientSubmissionUuid = [submissionParameters2 clientSubmissionUuid];
    if ([clientSubmissionUuid length])
    {
      submissionParameters3 = [feedbackCopy submissionParameters];
      [submissionParameters3 clientSubmissionUuid];
    }

    else
    {
      submissionParameters3 = +[NSUUID UUID];
      [submissionParameters3 UUIDString];
    }
    v13 = ;

    MSPUGCPerformLogDiscardForCurrentSessionWithCompletion();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = updateCopy;
      if ([v14 hasDirections])
      {
        directions = [v14 directions];
        hasNavigationSessionID = [directions hasNavigationSessionID];

        if (hasNavigationSessionID)
        {
          directions2 = [v14 directions];
          [directions2 navigationSessionID];

          MSPUGCPerformLogDiscardForSessionWithCompletion();
        }
      }
    }
  }
}

- (void)_submitOrEnqueueFeedback:(id)feedback resolvedUserInfo:(id)info traits:(id)traits debugSettings:(id)settings uploadPolicy:(int64_t)policy feedbackObjectToUpdate:(id)update completion:(id)completion
{
  feedbackCopy = feedback;
  infoCopy = info;
  traitsCopy = traits;
  updateCopy = update;
  completionCopy = completion;
  settingsCopy = settings;
  v20 = [(FeedbackSubmissionManager *)self _feedbackUploaderForUploadPolicy:policy];
  v21 = [GEORPFeedbackRequest defaultDebugSettingsMergedWithSettings:settingsCopy];

  v39 = v21;
  v22 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:feedbackCopy userInfo:infoCopy traits:traitsCopy debugSettings:v21];
  v23 = v22;
  if (updateCopy)
  {
    v37 = v20;
    feedbackRequestParameters = [v22 feedbackRequestParameters];
    submissionParameters = [feedbackRequestParameters submissionParameters];
    clientSubmissionUuid = [submissionParameters clientSubmissionUuid];

    feedbackRequestParameters2 = [v23 feedbackRequestParameters];
    submissionParameters2 = [feedbackRequestParameters2 submissionParameters];
    hasClientSubmissionUuid = [submissionParameters2 hasClientSubmissionUuid];

    if (hasClientSubmissionUuid && clientSubmissionUuid)
    {
      [(FeedbackSubmissionPostActionManager *)self->_feedbackSubmissionPostActionManager saveFeedbackObject:updateCopy forSubmissionIdentifier:clientSubmissionUuid];
    }

    else
    {
      v30 = sub_10002E924();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "submissionIdentifier is nil", buf, 2u);
      }
    }

    v20 = v37;
  }

  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    submissionParameters3 = [feedbackCopy submissionParameters];
    type = [submissionParameters3 type];

    if (type == 11)
    {
      [v23 addFeedbackClientCapabilities:2];
    }
  }

  v33 = [NSProgress discreteProgressWithTotalUnitCount:1];
  currentProgress = self->_currentProgress;
  self->_currentProgress = v33;
  v35 = v33;

  [(FeedbackSubmissionManager *)self _logDiscardIfNeededForFeedback:feedbackCopy userInfo:infoCopy feedbackObjectToUpdate:updateCopy];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100AAA208;
  v40[3] = &unk_101636B20;
  v41 = completionCopy;
  v36 = completionCopy;
  [v20 submitCorrectionsRequest:v23 traits:traitsCopy parentProgress:v35 completion:v40];
}

- (void)submitOrEnqueueFeedback:(id)feedback userInfo:(id)info traits:(id)traits debugSettings:(id)settings uploadPolicy:(int64_t)policy feedbackObjectToUpdate:(id)update completion:(id)completion
{
  feedbackCopy = feedback;
  infoCopy = info;
  traitsCopy = traits;
  settingsCopy = settings;
  updateCopy = update;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100AAA3CC;
  v26[3] = &unk_101636BC0;
  objc_copyWeak(v32, &location);
  v21 = completionCopy;
  v31 = v21;
  v22 = feedbackCopy;
  v27 = v22;
  v23 = traitsCopy;
  v28 = v23;
  v24 = settingsCopy;
  v29 = v24;
  v32[1] = policy;
  v25 = updateCopy;
  v30 = v25;
  [(FeedbackSubmissionManager *)self _updateUserInfo:infoCopy requestParameters:v22 completion:v26];

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

- (void)_updateUserInfo:(id)info requestParameters:(id)parameters completion:(id)completion
{
  infoCopy = info;
  parametersCopy = parameters;
  completionCopy = completion;
  if (GEOConfigGetBOOL())
  {
    tdmUserInfo = [infoCopy tdmUserInfo];
    anonymousUserId = [tdmUserInfo anonymousUserId];

    if ([anonymousUserId length])
    {
      tdmUserInfo2 = [infoCopy tdmUserInfo];
      baaCertificates = [tdmUserInfo2 baaCertificates];
      v14 = [baaCertificates count];

      if (v14)
      {
        v15 = sub_10002E924();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v16 = "Already fetched BAA certificates so early exit.";
LABEL_11:
          v18 = v15;
          v19 = 2;
LABEL_12:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v16, buf, v19);
        }
      }

      else
      {
        if ([parametersCopy hasSubmissionParameters] & 1) != 0 || (objc_msgSend(parametersCopy, "hasImageUploadParameters") & 1) != 0 || (objc_msgSend(parametersCopy, "hasLogEventParameters"))
        {
          v20 = [anonymousUserId dataUsingEncoding:4];
          GEOConfigGetBOOL();
          GEOConfigGetDouble();
          v21 = infoCopy;
          v22 = completionCopy;
          MSPUGCFetchClientCertificate();

          goto LABEL_18;
        }

        v15 = sub_10002E924();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = parametersCopy;
          v16 = "Request parameters are not not writable so early exit.\n %@";
          v18 = v15;
          v19 = 12;
          goto LABEL_12;
        }
      }
    }

    else
    {
      v15 = sub_10002E924();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "No anonymous id so not fetching BAA certificates.";
        goto LABEL_11;
      }
    }

    (*(completionCopy + 2))(completionCopy, infoCopy, 0);
LABEL_18:

    goto LABEL_19;
  }

  v17 = sub_10002E924();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "GeoConfig is disabled so not fetching BAA certificates.", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, infoCopy, 0);
LABEL_19:
}

- (void)_submitOrEnqueueFeedback:(id)feedback attachedImages:(id)images resolvedUserInfo:(id)info traits:(id)traits debugSettings:(id)settings uploadPolicy:(int64_t)policy feedbackObjectToUpdate:(id)update completion:(id)self0
{
  feedbackCopy = feedback;
  imagesCopy = images;
  infoCopy = info;
  traitsCopy = traits;
  settingsCopy = settings;
  updateCopy = update;
  completionCopy = completion;
  policyCopy = policy;
  if (qword_10195E488 != -1)
  {
    dispatch_once(&qword_10195E488, &stru_1016373C0);
  }

  v18 = qword_10195E470;
  v19 = +[NSDate now];
  sub_100ACAD38(v18, 0, @"%@ <%@>[Maps][%@] : Transmitting photos or videos", v20, v21, v22, v23, v24, v19);

  v25 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v26 = objc_alloc_init(GEORPFeedbackImageUploadParameters);
  [v25 setImageUploadParameters:v26];

  submissionParameters = [feedbackCopy submissionParameters];
  isPOIEnrichment = [submissionParameters isPOIEnrichment];
  imageUploadParameters = [v25 imageUploadParameters];
  [imageUploadParameters setIsEnrichment:isPOIEnrichment];

  v80 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  v30 = imagesCopy;
  v31 = [v30 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v31)
  {
    v32 = *v78;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v78 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v77 + 1) + 8 * i);
        imageUploadParameters2 = [v25 imageUploadParameters];
        photoMetadata = [v34 photoMetadata];
        [imageUploadParameters2 addImage:photoMetadata];
      }

      v31 = [v30 countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v31);
  }

  if ((sub_100742958() & 1) == 0)
  {
    v37 = +[MKMapService sharedService];
    v38 = [v37 defaultTraitsWithTraits:traitsCopy];

    traitsCopy = v38;
  }

  v65 = [GEORPFeedbackRequest defaultDebugSettingsMergedWithSettings:settingsCopy];

  v64 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v25 userInfo:infoCopy traits:traitsCopy debugSettings:v65];
  v39 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:feedbackCopy userInfo:infoCopy traits:traitsCopy debugSettings:v65];
  v40 = v39;
  if (updateCopy)
  {
    feedbackRequestParameters = [v39 feedbackRequestParameters];
    submissionParameters2 = [feedbackRequestParameters submissionParameters];
    clientSubmissionUuid = [submissionParameters2 clientSubmissionUuid];

    feedbackRequestParameters2 = [v40 feedbackRequestParameters];
    submissionParameters3 = [feedbackRequestParameters2 submissionParameters];
    hasClientSubmissionUuid = [submissionParameters3 hasClientSubmissionUuid];
    if (clientSubmissionUuid)
    {
      v47 = hasClientSubmissionUuid;
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
      [(FeedbackSubmissionPostActionManager *)self->_feedbackSubmissionPostActionManager saveFeedbackObject:updateCopy forSubmissionIdentifier:clientSubmissionUuid];
    }

    else
    {
      v48 = sub_10002E924();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "submissionIdentifier is nil", buf, 2u);
      }
    }
  }

  v49 = +[NSProgress discreteProgressWithTotalUnitCount:](NSProgress, "discreteProgressWithTotalUnitCount:", ([v30 count] + 2));
  objc_storeStrong(&self->_currentProgress, v49);
  v50 = sub_10002E924();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    userCredentials = [infoCopy userCredentials];
    icloudUserPersonId = [userCredentials icloudUserPersonId];
    userCredentials2 = [infoCopy userCredentials];
    icloudUserMapsAuthToken = [userCredentials2 icloudUserMapsAuthToken];
    *buf = 138412546;
    v82 = icloudUserPersonId;
    v83 = 2112;
    v84 = icloudUserMapsAuthToken;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Submitting with icloud person id %@ and auth token %@", buf, 0x16u);
  }

  v55 = [MSPFeedbackSubmissionTicket ticketForFeedbackRequest:v64 traits:traitsCopy];
  fakeProgress = [v55 fakeProgress];
  [v49 addChild:fakeProgress withPendingUnitCount:1];

  [(FeedbackSubmissionManager *)self _logDiscardIfNeededForFeedback:feedbackCopy userInfo:infoCopy feedbackObjectToUpdate:updateCopy];
  objc_initWeak(buf, self);
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_100AAB014;
  v70[3] = &unk_101636B48;
  objc_copyWeak(v76, buf);
  v57 = completionCopy;
  v75 = v57;
  v58 = v30;
  v71 = v58;
  v59 = v40;
  v72 = v59;
  v76[1] = policyCopy;
  v60 = traitsCopy;
  v73 = v60;
  v61 = v49;
  v74 = v61;
  [v55 submitWithHandler:v70 networkActivity:0];

  objc_destroyWeak(v76);
  objc_destroyWeak(buf);
}

- (void)submitOrEnqueueFeedback:(id)feedback attachedImages:(id)images userInfo:(id)info traits:(id)traits debugSettings:(id)settings uploadPolicy:(int64_t)policy feedbackObjectToUpdate:(id)update completion:(id)self0
{
  feedbackCopy = feedback;
  imagesCopy = images;
  infoCopy = info;
  traitsCopy = traits;
  settingsCopy = settings;
  updateCopy = update;
  completionCopy = completion;
  if ([imagesCopy count])
  {
    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100AAB560;
    v23[3] = &unk_101636AD0;
    objc_copyWeak(v30, &location);
    v29 = completionCopy;
    v24 = feedbackCopy;
    v25 = imagesCopy;
    v26 = traitsCopy;
    v27 = settingsCopy;
    v30[1] = policy;
    v28 = updateCopy;
    [(FeedbackSubmissionManager *)self _updateUserInfo:infoCopy requestParameters:v24 completion:v23];

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }

  else
  {
    [(FeedbackSubmissionManager *)self submitOrEnqueueFeedback:feedbackCopy userInfo:infoCopy traits:traitsCopy debugSettings:settingsCopy uploadPolicy:policy feedbackObjectToUpdate:updateCopy completion:completionCopy];
  }
}

@end